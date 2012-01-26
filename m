Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RqPLz-0000dH-CG
 for barebox@lists.infradead.org; Thu, 26 Jan 2012 13:27:05 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 26 Jan 2012 14:26:49 +0100
Message-Id: <1327584413-23055-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1327584413-23055-1-git-send-email-s.hauer@pengutronix.de>
References: <1327584413-23055-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/7] console: make it work without malloc
To: barebox@lists.infradead.org

This changes the dynamically allocated kfifos to statically initialized
ones. This makes the console work without malloc and thus safe to be
called before malloc is initialized.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/console.c |   49 ++++++++++++++++++++++++++++++++-----------------
 1 files changed, 32 insertions(+), 17 deletions(-)

diff --git a/common/console.c b/common/console.c
index 88c4010..abc0627 100644
--- a/common/console.c
+++ b/common/console.c
@@ -40,8 +40,9 @@
 LIST_HEAD(console_list);
 EXPORT_SYMBOL(console_list);
 
-#define CONSOLE_UNINITIALIZED	0
-#define CONSOLE_INIT_FULL	1
+#define CONSOLE_UNINITIALIZED		0
+#define CONSOLE_INITIALIZED_BUFFER	1
+#define CONSOLE_INIT_FULL		2
 
 static int initialized = 0;
 
@@ -109,17 +110,25 @@ static int console_baudrate_set(struct device_d *dev, struct param_d *param,
 	return 0;
 }
 
-static struct kfifo *console_input_buffer;
-static struct kfifo *console_output_buffer;
+#define CONSOLE_BUFFER_SIZE	1024
 
-static int getc_buffer_flush(void)
+static char console_input_buffer[CONSOLE_BUFFER_SIZE];
+static char console_output_buffer[CONSOLE_BUFFER_SIZE];
+
+static struct kfifo __console_input_fifo;
+static struct kfifo __console_output_fifo;
+static struct kfifo *console_input_fifo = &__console_input_fifo;
+static struct kfifo *console_output_fifo = &__console_output_fifo;
+
+static void console_init_early(void)
 {
-	console_input_buffer = kfifo_alloc(1024);
-	console_output_buffer = kfifo_alloc(1024);
-	return 0;
-}
+	kfifo_init(console_input_fifo, console_input_buffer,
+			CONSOLE_BUFFER_SIZE);
+	kfifo_init(console_output_fifo, console_output_buffer,
+			CONSOLE_BUFFER_SIZE);
 
-postcore_initcall(getc_buffer_flush);
+	initialized = CONSOLE_INITIALIZED_BUFFER;
+}
 
 int console_register(struct console_device *newcdev)
 {
@@ -127,6 +136,9 @@ int console_register(struct console_device *newcdev)
 	int first = 0;
 	char ch;
 
+	if (initialized == CONSOLE_UNINITIALIZED)
+		console_init_early();
+
 	dev->id = -1;
 	strcpy(dev->name, "cs");
 	dev->type_data = newcdev;
@@ -154,8 +166,7 @@ int console_register(struct console_device *newcdev)
 
 	list_add_tail(&newcdev->list, &console_list);
 
-
-	while (kfifo_getc(console_output_buffer, &ch) == 0)
+	while (kfifo_getc(console_output_fifo, &ch) == 0)
 		console_putc(CONSOLE_STDOUT, ch);
 	if (first)
 		barebox_banner();
@@ -226,16 +237,16 @@ int getc(void)
 	start = get_time_ns();
 	while (1) {
 		if (tstc_raw()) {
-			kfifo_putc(console_input_buffer, getc_raw());
+			kfifo_putc(console_input_fifo, getc_raw());
 
 			start = get_time_ns();
 		}
 		if (is_timeout(start, 100 * USECOND) &&
-				kfifo_len(console_input_buffer))
+				kfifo_len(console_input_fifo))
 			break;
 	}
 
-	kfifo_getc(console_input_buffer, &ch);
+	kfifo_getc(console_input_fifo, &ch);
 	return ch;
 }
 EXPORT_SYMBOL(getc);
@@ -252,7 +263,7 @@ EXPORT_SYMBOL(fgetc);
 
 int tstc(void)
 {
-	return kfifo_len(console_input_buffer) || tstc_raw();
+	return kfifo_len(console_input_fifo) || tstc_raw();
 }
 EXPORT_SYMBOL(tstc);
 
@@ -263,7 +274,11 @@ void console_putc(unsigned int ch, char c)
 
 	switch (init) {
 	case CONSOLE_UNINITIALIZED:
-		kfifo_putc(console_output_buffer, c);
+		console_init_early();
+		/* fall through */
+
+	case CONSOLE_INITIALIZED_BUFFER:
+		kfifo_putc(console_output_fifo, c);
 		return;
 
 	case CONSOLE_INIT_FULL:
-- 
1.7.8.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
