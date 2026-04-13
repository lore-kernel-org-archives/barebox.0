Delivery-date: Mon, 13 Apr 2026 12:11:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCEGq-00BgJX-0x
	for lore@lore.pengutronix.de;
	Mon, 13 Apr 2026 12:11:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCEGp-0001e9-5a
	for lore@pengutronix.de; Mon, 13 Apr 2026 12:11:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xPgy8m/7vNm5vhSqkEsVI+CGZ96vHqkgMPcQKp5KsMc=; b=zl6DLUBhP8Y9KdvCZP+que6hrl
	cGuamjHm1JpaxKejij690T3VqlK49ou4w0slOCRdRE+10NPeUgQNCE2xFOfcWuOZIgJzK8rz3aSK5
	0A+SRA4ExI92HKXRq2TQyvpAqYONYpwKzc3JBP8T6KmTG+eD3AqR6n8kdNp5fn9DoWPVrQS6X4y8N
	j3R/Y/yTiOmU18TeUmaSPO0HypxXgISeGXogZjnz63GZyWmcCl4OXo2igS3xKM/LQuI73TZTSTXsz
	fuBVo1ZoVb1nVx31CAO7o45cUSbwimNuouwbN0vfKzAp041Ob0EHLkqSAZSzBTbV4cko+gj9jEb+b
	Czko5M/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCEGQ-0000000FSBf-3Q8i;
	Mon, 13 Apr 2026 10:11:30 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCEGL-0000000FS5M-0P5o
	for barebox@bombadil.infradead.org;
	Mon, 13 Apr 2026 10:11:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=xPgy8m/7vNm5vhSqkEsVI+CGZ96vHqkgMPcQKp5KsMc=; b=audDQO2X/P1aEhVC3pIUPGCYfh
	yit834rXBYiAKSXES6ZEldOUBS00Dl+tzETok5ZpqhfBpAX4NAtIZidxFxnj0gbnN8xxh62EggIBK
	csjnqdwwLIwa+v9xRIRPTGsqwkAcLoRp46sXKJMSzSv51fjkbYKuYAya8f3/LpfXB/J1TrsuqVY+C
	wC4v2zSXdBH6CT/uTJ/iZ03v2GQ11hjOLEriBP2prGORpAc/aYYHQo5No0+DYC1DI2NDP97dVmIR/
	x3I/OwwWX19nQBtzSEhvDVLFjQDJxbKq08XTzHEVpUYegWRzHfvp4ssKuGFKtURa7Zdc55nWKE5F0
	/hBMvrKA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCEGH-0000000GZ6h-16jw
	for barebox@lists.infradead.org;
	Mon, 13 Apr 2026 10:11:23 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wCEGG-0001Is-PJ; Mon, 13 Apr 2026 12:11:20 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 13 Apr 2026 12:09:39 +0200
Message-ID: <20260413101118.1462119-4-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260413101118.1462119-1-a.fatoum@barebox.org>
References: <20260413101118.1462119-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_111122_156048_36587C67 
X-CRM114-Status: GOOD (  18.69  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/7] console: make console_puts and friends accept a console_device
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Ideally, stdout, stderr and stdin would be real consoles wit a custom
implementation that multiplexes onto all registered consoles that
are active for a given stream.

This will need some more carefulness though as not to increase size too
much for uninterested users.

We can already switch the API to a console_device-centric ones and reap
the benefits though by special casing the stdout/stderr/stdin types, so
do just that.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 common/console.c               | 49 ++++++++++++++++++++++------------
 common/console_common.c        | 14 +++++-----
 common/console_simple.c        |  4 +--
 efi/loader/protocols/console.c |  2 +-
 include/console.h              | 21 +++++++++++----
 include/stdio.h                |  4 +--
 pbl/console.c                  | 12 ++++-----
 7 files changed, 66 insertions(+), 40 deletions(-)

diff --git a/common/console.c b/common/console.c
index d7013e72e358..014ce2916835 100644
--- a/common/console.c
+++ b/common/console.c
@@ -116,7 +116,7 @@ int console_set_active(struct console_device *cdev, unsigned flag)
 		puts_ll("]\n");
 		barebox_banner();
 		while (kfifo_getc(console_output_fifo, &ch) == 0)
-			console_putc(CONSOLE_STDOUT, ch);
+			console_putc(CONSOLE_DEV_STDOUT, ch);
 	} else if (IS_ENABLED(CONFIG_BANNER) && cdev->puts &&
 		   flag_new == CONSOLE_STDIOE) {
 		cdev->puts(cdev, version_string, strlen(version_string));
@@ -571,10 +571,18 @@ int tstc(void)
 }
 EXPORT_SYMBOL(tstc);
 
-int console_putc(unsigned int ch, char c)
+int console_putc(struct console_device *con, char c)
 {
 	int init = initialized;
 	bool crlf = c == '\n';
+	unsigned int ch;
+
+	ch = console_dev_is_std(con);
+	if (!ch) {
+		if (crlf)
+			con->putc(con, '\r');
+		con->putc(con, c);
+	}
 
 	switch (init) {
 	case CONSOLE_UNINITIALIZED:
@@ -589,11 +597,8 @@ int console_putc(unsigned int ch, char c)
 
 	case CONSOLE_INIT_FULL:
 		for_each_console(cdev) {
-			if (cdev->f_active & ch) {
-				if (crlf)
-					cdev->putc(cdev, '\r');
-				cdev->putc(cdev, c);
-			}
+			if (cdev->f_active & ch)
+				console_putc(cdev, c);
 		}
 		return 1 + crlf;
 	default:
@@ -605,16 +610,20 @@ int console_putc(unsigned int ch, char c)
 }
 EXPORT_SYMBOL(console_putc);
 
-int console_puts(unsigned int ch, const char *str)
+int console_puts(struct console_device *con, const char *str)
 {
 	const char *s = str;
+	unsigned int ch;
 	int n = 0;
 
+	ch = console_dev_is_std(con);
+	if (!ch)
+		return con->puts(con, str, strlen(str));
+
 	if (initialized == CONSOLE_INIT_FULL) {
 		for_each_console(cdev) {
-			if (cdev->f_active & ch) {
-				n = cdev->puts(cdev, str, strlen(str));
-			}
+			if (cdev->f_active & ch)
+				n = console_puts(cdev, str);
 		}
 		return n;
 	}
@@ -627,8 +636,17 @@ int console_puts(unsigned int ch, const char *str)
 }
 EXPORT_SYMBOL(console_puts);
 
-void console_putbin(unsigned int ch, const u8 *str, size_t len)
+void console_putbin(struct console_device *con, const u8 *str, size_t len)
 {
+	unsigned int ch;
+
+	ch = console_dev_is_std(con);
+	if (!ch) {
+		for (size_t i = 0; i < len; i++)
+			con->putc(con, str[i]);
+		return;
+	}
+
 	switch (initialized) {
 	case CONSOLE_UNINITIALIZED:
 		console_init_early();
@@ -640,11 +658,8 @@ void console_putbin(unsigned int ch, const u8 *str, size_t len)
 		return;
 	case CONSOLE_INIT_FULL:
 		for_each_console(cdev) {
-			if (!(cdev->f_active & ch))
-				continue;
-
-			for (size_t i = 0; i < len; i++)
-				cdev->putc(cdev, str[i]);
+			if (cdev->f_active & ch)
+				console_putbin(cdev, str, len);
 		}
 		return;
 	default:
diff --git a/common/console_common.c b/common/console_common.c
index 1d98e4ec1bcc..86d9f523b1c5 100644
--- a/common/console_common.c
+++ b/common/console_common.c
@@ -73,7 +73,7 @@ void log_clean(unsigned int limit)
 	}
 }
 
-static void print_colored_log_level(unsigned int ch, const int level)
+static void print_colored_log_level(struct console_device *con, const int level)
 {
 	if (!console_allow_color())
 		return;
@@ -82,7 +82,7 @@ static void print_colored_log_level(unsigned int ch, const int level)
 	if (!colored_log_level[level])
 		return;
 
-	console_puts(ch, colored_log_level[level]);
+	console_puts(con, colored_log_level[level]);
 }
 
 static void pr_puts(int level, const char *str)
@@ -116,8 +116,8 @@ static void pr_puts(int level, const char *str)
 	if (level > barebox_loglevel)
 		return;
 
-	print_colored_log_level(CONSOLE_STDERR, level);
-	console_puts(CONSOLE_STDERR, str);
+	print_colored_log_level(CONSOLE_DEV_STDERR, level);
+	console_puts(CONSOLE_DEV_STDERR, str);
 }
 
 int pr_print(int level, const char *fmt, ...)
@@ -237,7 +237,7 @@ int log_print(unsigned flags, unsigned levels)
 
 		if (!(flags & (BAREBOX_LOG_PRINT_RAW | BAREBOX_LOG_PRINT_TIME
 			       | BAREBOX_LOG_DIFF_TIME)))
-			print_colored_log_level(CONSOLE_STDOUT, log->level);
+			print_colored_log_level(CONSOLE_DEV_STDOUT, log->level);
 
 		if (flags & BAREBOX_LOG_PRINT_RAW)
 			printf("<%i>", log->level);
@@ -407,7 +407,7 @@ int dputs(int fd, const char *s)
 	if (fd == 1)
 		return puts(s);
 	else if (fd == 2)
-		return console_puts(CONSOLE_STDERR, s);
+		return console_puts(CONSOLE_DEV_STDERR, s);
 	else
 		return write(fd, s, strlen(s));
 }
@@ -418,7 +418,7 @@ int dputc(int fd, char c)
 	if (fd == 1)
 		putchar(c);
 	else if (fd == 2)
-		return console_putc(CONSOLE_STDERR, c);
+		return console_putc(CONSOLE_DEV_STDERR, c);
 	else
 		return write(fd, &c, 1);
 
diff --git a/common/console_simple.c b/common/console_simple.c
index dfc180e70f98..563fc542be58 100644
--- a/common/console_simple.c
+++ b/common/console_simple.c
@@ -11,7 +11,7 @@ LIST_HEAD(console_list);
 EXPORT_SYMBOL(console_list);
 static struct console_device *console;
 
-int console_puts(unsigned int ch, const char *str)
+int console_puts(struct console_device *con, const char *str)
 {
 	const char *s = str;
 	int i = 0;
@@ -25,7 +25,7 @@ int console_puts(unsigned int ch, const char *str)
 }
 EXPORT_SYMBOL(console_puts);
 
-int console_putc(unsigned int ch, char c)
+int console_putc(struct console_device *con, char c)
 {
 	bool crlf = c == '\n';
 	if (!console) {
diff --git a/efi/loader/protocols/console.c b/efi/loader/protocols/console.c
index 4545d94c6fae..a7395a24ad18 100644
--- a/efi/loader/protocols/console.c
+++ b/efi/loader/protocols/console.c
@@ -124,7 +124,7 @@ static efi_status_t EFIAPI efi_cout_output_string(
 		end = utf16_to_utf8(utf8, p, is_high_surrogate ? 2 : 1);
 
 		/* console_puts turns \n into \r\n, which we want to avoid */
-		console_putbin(CONSOLE_STDOUT, utf8, end - utf8);
+		console_putbin(CONSOLE_DEV_STDOUT, utf8, end - utf8);
 
 		switch (*p) {
 		case '\b':	/* U+0008, backspace */
diff --git a/include/console.h b/include/console.h
index 082d1ac8a924..5a4dbcdf1327 100644
--- a/include/console.h
+++ b/include/console.h
@@ -21,6 +21,10 @@
 
 #define CONSOLE_STDIOE          (CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR)
 
+#define CONSOLE_DEV_STDIN       ((void *)CONSOLE_STDIN)
+#define CONSOLE_DEV_STDOUT      ((void *)CONSOLE_STDOUT)
+#define CONSOLE_DEV_STDERR      ((void *)CONSOLE_STDERR)
+
 enum console_mode {
 	CONSOLE_MODE_NORMAL,
 	CONSOLE_MODE_RS485,
@@ -88,6 +92,13 @@ console_is_serdev_node(struct console_device *cdev)
 	return NULL;
 }
 
+static inline unsigned int console_dev_is_std(struct console_device *con)
+{
+	if ((uintptr_t)con > CONSOLE_STDERR)
+		return 0;
+	return (uintptr_t)con & CONSOLE_STDIOE;
+}
+
 int console_register(struct console_device *cdev);
 int console_unregister(struct console_device *cdev);
 
@@ -232,9 +243,9 @@ int arch_ctrlc(void);
 
 #ifndef CONFIG_CONSOLE_NONE
 /* stdout */
-int console_putc(unsigned int ch, const char c);
-int console_puts(unsigned int ch, const char *s);
-void console_putbin(unsigned int ch, const u8 *str, size_t len);
+int console_putc(struct console_device *con, const char c);
+int console_puts(struct console_device *con, const char *s);
+void console_putbin(struct console_device *con, const u8 *str, size_t len);
 void console_flush(void);
 
 int ctrlc(void);
@@ -243,8 +254,8 @@ void ctrlc_handled(void);
 void console_ctrlc_allow(void);
 void console_ctrlc_forbid(void);
 #else
-static inline int console_puts(unsigned int ch, const char *str) { return 0; }
-static inline int console_putc(unsigned int ch, char c) { return 0;}
+static inline int console_puts(struct console_device *con, const char *str) { return 0; }
+static inline int console_putc(struct console_device *con, char c) { return 0; }
 static inline void console_flush(void) {}
 
 /* test if ctrl-c was pressed */
diff --git a/include/stdio.h b/include/stdio.h
index 4c0dff0c0084..f5b23140adde 100644
--- a/include/stdio.h
+++ b/include/stdio.h
@@ -22,8 +22,8 @@ int readline(const char *prompt, char *buf, int len);
 #if (IN_PROPER && !defined(CONFIG_CONSOLE_NONE)) || \
 	(IN_PBL && defined(CONFIG_PBL_CONSOLE))
 int vprintf(const char *fmt, va_list args);
-static inline int puts(const char *s) { return console_puts(CONSOLE_STDOUT, s); }
-static inline void putchar(char c) { console_putc(CONSOLE_STDOUT, c); }
+static inline int puts(const char *s) { return console_puts(CONSOLE_DEV_STDOUT, s); }
+static inline void putchar(char c) { console_putc(CONSOLE_DEV_STDOUT, c); }
 #else
 static inline int puts(const char *s) { return 0; }
 static inline void putchar(char c) {}
diff --git a/pbl/console.c b/pbl/console.c
index 1274552b2088..54da10a8e9ae 100644
--- a/pbl/console.c
+++ b/pbl/console.c
@@ -32,7 +32,7 @@ static void __putc(void *ctx, int c)
 	putc(ctx, c);
 }
 
-int console_putc(unsigned int ch, char c)
+int console_putc(struct console_device *con, char c)
 {
 	if (putc_offset)
 		__putc(putc_ctx, c);
@@ -42,17 +42,17 @@ int console_putc(unsigned int ch, char c)
 	return 1;
 }
 
-int console_puts(unsigned int ch, const char *str)
+int console_puts(struct console_device *con, const char *str)
 {
 	int n = 0;
 
 	while (*str) {
 		if (*str == '\n') {
-			console_putc(ch, '\r');
+			console_putc(con, '\r');
 			n++;
 		}
 
-		console_putc(ch, *str);
+		console_putc(con, *str);
 		str++;
 		n++;
 	}
@@ -72,7 +72,7 @@ int vprintf(const char *fmt, va_list args)
 	i = vsnprintf(printbuffer, sizeof(printbuffer), fmt, args);
 
 	/* Print the string */
-	console_puts(CONSOLE_STDOUT, printbuffer);
+	console_puts(CONSOLE_DEV_STDOUT, printbuffer);
 
 	return i;
 }
@@ -99,7 +99,7 @@ int pr_print(int level, const char *fmt, ...)
 	i = vsnprintf(printbuffer, sizeof(printbuffer), fmt, args);
 	va_end(args);
 
-	console_puts(CONSOLE_STDERR, printbuffer);
+	console_puts(CONSOLE_DEV_STDERR, printbuffer);
 
 	return i;
 }
-- 
2.47.3



