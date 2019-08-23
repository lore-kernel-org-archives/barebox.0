Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i15pA-0003oq-SU
 for barebox@lists.infradead.org; Fri, 23 Aug 2019 09:25:38 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 23 Aug 2019 11:25:31 +0200
Message-Id: <20190823092531.6673-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v3] console: fix out-of-bounds read in dputc(/dev/*, ...)
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Bastian Krause <bst@pengutronix.de>

Trying to output a single character via
	echo -a /dev/serial0-1
currently results in garbage output after the newline, because console.c's
fops_write discards the buffer length and passes the buffer to
(struct cdev)::puts which only handles NUL-terminated strings.

Fix this by amending (struct cdev)::puts with a new nbytes parameter,
which is correctly propagated. All this functions now return at most the
nbytes parameter they were passed in. This fixes __console_puts, which
used to count new lines twice in its return value. 

Fixes: b4f55fcf35 ("console: expose consoles in devfs")
Cc: Bastian Krause <bst@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Changes in v3:
	- Dropped ratp return 0 on busy patch after discussion with
	  Sascha
Changes in v2:
	- Corrected wrongly referenced commit noticed by Bastian
	- Fixed erroneous skipping of new lines in __console_puts
	  in some circumstances
	- Added a new commit
 common/console.c            | 19 +++++++++----------
 common/ratp/ratp.c          | 10 ++++------
 drivers/serial/efi-stdio.c  |  5 +++--
 drivers/serial/serial_efi.c |  5 +++--
 fs/pstore/platform.c        | 29 +++++++++++++++++++++++++++++
 include/console.h           |  2 +-
 6 files changed, 49 insertions(+), 21 deletions(-)

diff --git a/common/console.c b/common/console.c
index 406722a1dab2..6b7b14aed990 100644
--- a/common/console.c
+++ b/common/console.c
@@ -253,20 +253,19 @@ static void console_set_stdoutpath(struct console_device *cdev)
 	free(str);
 }
 
-static int __console_puts(struct console_device *cdev, const char *s)
+static int __console_puts(struct console_device *cdev, const char *s,
+			  size_t nbytes)
 {
-	int n = 0;
+	size_t i;
 
-	while (*s) {
-		if (*s == '\n') {
+	for (i = 0; i < nbytes; i++) {
+		if (*s == '\n')
 			cdev->putc(cdev, '\r');
-			n++;
-		}
+
 		cdev->putc(cdev, *s);
-		n++;
 		s++;
 	}
-	return n;
+	return i;
 }
 
 static int fops_open(struct cdev *cdev, unsigned long flags)
@@ -298,7 +297,7 @@ static ssize_t fops_write(struct cdev* dev, const void* buf, size_t count,
 {
 	struct console_device *priv = dev->priv;
 
-	priv->puts(priv, buf);
+	priv->puts(priv, buf, count);
 
 	return 0;
 }
@@ -545,7 +544,7 @@ int console_puts(unsigned int ch, const char *str)
 	if (initialized == CONSOLE_INIT_FULL) {
 		for_each_console(cdev) {
 			if (cdev->f_active & ch) {
-				n = cdev->puts(cdev, str);
+				n = cdev->puts(cdev, str, strlen(str));
 			}
 		}
 		return n;
diff --git a/common/ratp/ratp.c b/common/ratp/ratp.c
index 9aea1786d684..bc607985359a 100644
--- a/common/ratp/ratp.c
+++ b/common/ratp/ratp.c
@@ -259,19 +259,17 @@ static int ratp_console_tstc(struct console_device *cdev)
 	return kfifo_len(ctx->console_recv_fifo) ? 1 : 0;
 }
 
-static int ratp_console_puts(struct console_device *cdev, const char *s)
+static int ratp_console_puts(struct console_device *cdev, const char *s,
+			     size_t nbytes)
 {
 	struct ratp_ctx *ctx = container_of(cdev, struct ratp_ctx, ratp_console);
-	int len = 0;
-
-	len = strlen(s);
 
 	if (ratp_busy(&ctx->ratp))
 		return len;
 
-	kfifo_put(ctx->console_transmit_fifo, s, len);
+	kfifo_put(ctx->console_transmit_fifo, s, nbytes);
 
-	return len;
+	return nbytes;
 }
 
 static void ratp_console_putc(struct console_device *cdev, char c)
diff --git a/drivers/serial/efi-stdio.c b/drivers/serial/efi-stdio.c
index 0703f727e766..2ca89fa4f861 100644
--- a/drivers/serial/efi-stdio.c
+++ b/drivers/serial/efi-stdio.c
@@ -243,12 +243,13 @@ static int efi_process_key(struct efi_console_priv *priv, const char *inp)
 	return 1;
 }
 
-static int efi_console_puts(struct console_device *cdev, const char *s)
+static int efi_console_puts(struct console_device *cdev, const char *s,
+			    size_t nbytes)
 {
 	struct efi_console_priv *priv = to_efi(cdev);
 	int n = 0;
 
-	while (*s) {
+	while (nbytes--) {
 		if (*s == 27) {
 			priv->efi_console_buffer[n] = 0;
 			priv->out->output_string(priv->out,
diff --git a/drivers/serial/serial_efi.c b/drivers/serial/serial_efi.c
index f0a2b22c2bc2..667d51f622ec 100644
--- a/drivers/serial/serial_efi.c
+++ b/drivers/serial/serial_efi.c
@@ -130,13 +130,14 @@ static void efi_serial_putc(struct console_device *cdev, char c)
 	serial->write(serial, &buffersize, &c);
 }
 
-static int efi_serial_puts(struct console_device *cdev, const char *s)
+static int efi_serial_puts(struct console_device *cdev, const char *s,
+			   size_t nbytes)
 {
 	struct efi_serial_port *uart = to_efi_serial_port(cdev);
 	struct efi_serial_io_protocol *serial = uart->serial;
 	uint32_t control;
 	efi_status_t efiret;
-	unsigned long buffersize = strlen(s) * sizeof(char);
+	unsigned long buffersize = nbytes;
 
 	do {
 		efiret = serial->getcontrol(serial, &control);
diff --git a/fs/pstore/platform.c b/fs/pstore/platform.c
index 0a6fa38edca9..15c0174b1f37 100644
--- a/fs/pstore/platform.c
+++ b/fs/pstore/platform.c
@@ -46,6 +46,35 @@ void pstore_set_kmsg_bytes(int bytes)
 
 static int pstore_ready;
 
+static void pstore_console_write(const char *s, unsigned c)
+{
+	const char *e = s + c;
+
+	while (s < e) {
+		struct pstore_record record = {
+			.type = PSTORE_TYPE_CONSOLE,
+			.psi = psinfo,
+		};
+
+		if (c > psinfo->bufsize)
+			c = psinfo->bufsize;
+
+		record.buf = (char *)s;
+		record.size = c;
+		psinfo->write_buf(PSTORE_TYPE_CONSOLE, 0, &record.id, 0,
+				  record.buf, 0, record.size, psinfo);
+		s += c;
+		c = e - s;
+	}
+}
+
+static int pstore_console_puts(struct console_device *cdev, const char *s,
+			       size_t nbytes)
+{
+	pstore_console_write(s, nbytes);
+	return nbytes;
+}
+
 void pstore_log(const char *str)
 {
 	uint64_t id;
diff --git a/include/console.h b/include/console.h
index 4062e5abf636..7afe59e93a27 100644
--- a/include/console.h
+++ b/include/console.h
@@ -42,7 +42,7 @@ struct console_device {
 
 	int (*tstc)(struct console_device *cdev);
 	void (*putc)(struct console_device *cdev, char c);
-	int (*puts)(struct console_device *cdev, const char *s);
+	int (*puts)(struct console_device *cdev, const char *s, size_t nbytes);
 	int  (*getc)(struct console_device *cdev);
 	int (*setbrg)(struct console_device *cdev, int baudrate);
 	void (*flush)(struct console_device *cdev);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
