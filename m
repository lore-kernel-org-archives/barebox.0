Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1asQDj-00031X-5V
 for barebox@lists.infradead.org; Tue, 19 Apr 2016 07:37:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Apr 2016 09:36:49 +0200
Message-Id: <1461051412-25711-12-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1461051412-25711-1-git-send-email-s.hauer@pengutronix.de>
References: <1461051412-25711-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 11/14] stdio: rename getc to getchar
To: Barebox List <barebox@lists.infradead.org>

The function we have implemented as getc has the semantics of the
standard function getchar, so rename it accorgingly.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-at91/bootstrap.c  | 16 ++++++++--------
 commands/edit.c                 |  2 +-
 commands/loads.c                |  6 +++---
 commands/mmc_extcsd.c           |  4 ++--
 common/console.c                | 10 +++++-----
 common/console_countdown.c      |  2 +-
 common/console_simple.c         |  6 +++---
 common/password.c               |  2 +-
 drivers/mtd/nand/nand_imx_bbm.c |  2 +-
 include/stdio.h                 |  4 ++--
 lib/readkey.c                   |  8 ++++----
 lib/readline_simple.c           |  2 +-
 12 files changed, 32 insertions(+), 32 deletions(-)

diff --git a/arch/arm/mach-at91/bootstrap.c b/arch/arm/mach-at91/bootstrap.c
index 47e7896..8502bb0 100644
--- a/arch/arm/mach-at91/bootstrap.c
+++ b/arch/arm/mach-at91/bootstrap.c
@@ -99,49 +99,49 @@ static void boot_nand_barebox_action(struct menu *m, struct menu_entry *me)
 {
 	at91bootstrap_boot_nand(true);
 
-	getc();
+	getchar();
 }
 
 static void boot_nand_action(struct menu *m, struct menu_entry *me)
 {
 	at91bootstrap_boot_nand(false);
 
-	getc();
+	getchar();
 }
 
 static void boot_m25p80_barebox_action(struct menu *m, struct menu_entry *me)
 {
 	at91bootstrap_boot_nand(true);
 
-	getc();
+	getchar();
 }
 
 static void boot_m25p80_action(struct menu *m, struct menu_entry *me)
 {
 	at91bootstrap_boot_nand(false);
 
-	getc();
+	getchar();
 }
 
 static void boot_dataflash_barebox_action(struct menu *m, struct menu_entry *me)
 {
 	at91bootstrap_boot_dataflash(true);
 
-	getc();
+	getchar();
 }
 
 static void boot_dataflash_action(struct menu *m, struct menu_entry *me)
 {
 	at91bootstrap_boot_dataflash(false);
 
-	getc();
+	getchar();
 }
 
 static void boot_mmc_disk_action(struct menu *m, struct menu_entry *me)
 {
 	at91bootstrap_boot_mmc();
 
-	getc();
+	getchar();
 }
 
 static void boot_reset_action(struct menu *m, struct menu_entry *me)
@@ -234,7 +234,7 @@ static int at91_bootstrap(void)
 {
 	if (is_menu()) {
 		printf("press 'm' to start the menu\n");
-		if (tstc() && getc() == 'm')
+		if (tstc() && getchar() == 'm')
 			at91_bootstrap_menu();
 	}
 
diff --git a/commands/edit.c b/commands/edit.c
index c014892..a5415a6 100644
--- a/commands/edit.c
+++ b/commands/edit.c
@@ -367,7 +367,7 @@ static void getwinsize(void)
 
 	printf(ESC "7" ESC "[r" ESC "[999;999H" ESC "[6n");
 
-	while ((r = getc()) != 'R') {
+	while ((r = getchar()) != 'R') {
 		buf[i] = r;
 		i++;
 	}
diff --git a/commands/loads.c b/commands/loads.c
index aa3095e..eb3e109 100644
--- a/commands/loads.c
+++ b/commands/loads.c
@@ -59,7 +59,7 @@ static int do_load_serial(int argc, char *argv[])
 	 */
 	for (i=0; i<100; ++i) {
 		if (tstc()) {
-			(void) getc();
+			(void) getchar();
 		}
 		udelay(1000);
 	}
@@ -142,7 +142,7 @@ static int read_record(char *buf, ulong len)
 	--len;	/* always leave room for terminating '\0' byte */
 
 	for (p=buf; p < buf+len; ++p) {
-		c = getc();		/* read character		*/
+		c = getchar();		/* read character		*/
 		if (do_echo)
 			putchar(c);
 
@@ -180,7 +180,7 @@ static int do_save_serial(int argc, char *argv[])
 
 	printf ("## Ready for S-Record upload, press ENTER to proceed ...\n");
 	for (;;) {
-		if (getc() == '\r')
+		if (getchar() == '\r')
 			break;
 	}
 	if (save_serial(offset, size)) {
diff --git a/commands/mmc_extcsd.c b/commands/mmc_extcsd.c
index d05128c..fa4e29c 100644
--- a/commands/mmc_extcsd.c
+++ b/commands/mmc_extcsd.c
@@ -1867,14 +1867,14 @@ static int request_write_operation(void)
 	int c;
 
 	printf("This is a one time programmable field!\nDo you want to write? [y/N] ");
-	c = getc();
+	c = getchar();
 	/* default is N */
 	if (c == 0xD) {
 		printf("\n");
 		return 0;
 	}
 	printf("%c", c);
-	getc(); /* wait for carriage return */
+	getchar(); /* wait for carriage return */
 	printf("\n");
 	if (c == 'y' || c == 'Y')
 		return 1;
diff --git a/common/console.c b/common/console.c
index f0988b8..37574b9 100644
--- a/common/console.c
+++ b/common/console.c
@@ -164,7 +164,7 @@ int console_set_baudrate(struct console_device *cdev, unsigned baudrate)
 	if (cdev->f_active) {
 		mdelay(50);
 		do {
-			c = getc();
+			c = getchar();
 		} while (c != '\r' && c != '\n');
 	}
 
@@ -345,7 +345,7 @@ static int tstc_raw(void)
 	return 0;
 }
 
-int getc(void)
+int getchar(void)
 {
 	unsigned char ch;
 	uint64_t start;
@@ -380,14 +380,14 @@ int getc(void)
 
 	return ch;
 }
-EXPORT_SYMBOL(getc);
+EXPORT_SYMBOL(getchar);
 
 int fgetc(int fd)
 {
 	char c;
 
 	if (!fd)
-		return getc();
+		return getchar();
 	return read(fd, &c, 1);
 }
 EXPORT_SYMBOL(fgetc);
@@ -476,7 +476,7 @@ int ctrlc (void)
 {
 	poller_call();
 
-	if (tstc() && getc() == 3)
+	if (tstc() && getchar() == 3)
 		return 1;
 	return 0;
 }
diff --git a/common/console_countdown.c b/common/console_countdown.c
index ffbdb4f..c0c8c95 100644
--- a/common/console_countdown.c
+++ b/common/console_countdown.c
@@ -39,7 +39,7 @@ int console_countdown(int timeout_s, unsigned flags, char *out_key)
 
 	do {
 		if (tstc()) {
-			key = getc();
+			key = getchar();
 			if (flags & CONSOLE_COUNTDOWN_ANYKEY)
 				goto out;
 			if (flags & CONSOLE_COUNTDOWN_RETURN && key == '\n')
diff --git a/common/console_simple.c b/common/console_simple.c
index 69e7659..9675cbb 100644
--- a/common/console_simple.c
+++ b/common/console_simple.c
@@ -48,13 +48,13 @@ int tstc(void)
 }
 EXPORT_SYMBOL(tstc);
 
-int getc(void)
+int getchar(void)
 {
 	if (!console)
 		return -EINVAL;
 	return console->getc(console);
 }
-EXPORT_SYMBOL(getc);
+EXPORT_SYMBOL(getchar);
 
 void console_flush(void)
 {
@@ -67,7 +67,7 @@ EXPORT_SYMBOL(console_flush);
 /* test if ctrl-c was pressed */
 int ctrlc (void)
 {
-	if (tstc() && getc() == 3)
+	if (tstc() && getchar() == 3)
 		return 1;
 	return 0;
 }
diff --git a/common/password.c b/common/password.c
index 05e6180..d52b746 100644
--- a/common/password.c
+++ b/common/password.c
@@ -63,7 +63,7 @@ int password(unsigned char *passwd, size_t length, int flags, int timeout)
 
 	do {
 		if (tstc()) {
-			ch = getc();
+			ch = getchar();
 
 			switch (ch) {
 			case '\r':
diff --git a/drivers/mtd/nand/nand_imx_bbm.c b/drivers/mtd/nand/nand_imx_bbm.c
index 5caa0a2..251dfe5 100644
--- a/drivers/mtd/nand/nand_imx_bbm.c
+++ b/drivers/mtd/nand/nand_imx_bbm.c
@@ -188,7 +188,7 @@ static int do_imx_nand_bbm(int argc, char *argv[])
 		int c;
 
 		printf("create flash bbt (y/n)?");
-		c = getc();
+		c = getchar();
 		if (c == 'y')
 			yes = 1;
 		printf("\n");
diff --git a/include/stdio.h b/include/stdio.h
index 5334531..1ead0e6 100644
--- a/include/stdio.h
+++ b/include/stdio.h
@@ -28,7 +28,7 @@ int	tstc(void);
 
 /* stdout */
 void	console_putc(unsigned int ch, const char c);
-int	getc(void);
+int	getchar(void);
 int	console_puts(unsigned int ch, const char *s);
 void	console_flush(void);
 
@@ -44,7 +44,7 @@ static inline int console_puts(unsigned int ch, const char *str)
 	return 0;
 }
 
-static inline int getc(void)
+static inline int getchar(void)
 {
 	return -EINVAL;
 }
diff --git a/lib/readkey.c b/lib/readkey.c
index 2073a73..2870a5a 100644
--- a/lib/readkey.c
+++ b/lib/readkey.c
@@ -53,15 +53,15 @@ int read_key(void)
 {
 	char c;
 	char esc[5];
-	c = getc();
+	c = getchar();
 
 	if (c == 27) {
 		int i = 0;
-		esc[i++] = getc();
-		esc[i++] = getc();
+		esc[i++] = getchar();
+		esc[i++] = getchar();
 		if (isdigit(esc[1])) {
 			while(1) {
-				esc[i] = getc();
+				esc[i] = getchar();
 				if (esc[i++] == '~')
 					break;
 				if (i == ARRAY_SIZE(esc))
diff --git a/lib/readline_simple.c b/lib/readline_simple.c
index 1a40d11..c296066 100644
--- a/lib/readline_simple.c
+++ b/lib/readline_simple.c
@@ -70,7 +70,7 @@ int readline (const char *prompt, char *line, int len)
 			show_activity(0);
 		}
 #endif
-		c = getc();
+		c = getchar();
 
 		/*
 		 * Special character handling
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
