Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-fx0-f49.google.com ([209.85.161.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QvZVQ-0003vc-0K
	for barebox@lists.infradead.org; Mon, 22 Aug 2011 18:45:54 +0000
Received: by mail-fx0-f49.google.com with SMTP id 20so4552908fxd.36
	for <barebox@lists.infradead.org>; Mon, 22 Aug 2011 11:45:51 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 22 Aug 2011 22:45:35 +0400
Message-Id: <1314038738-32189-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1314038738-32189-1-git-send-email-antonynpavlov@gmail.com>
References: <1314038738-32189-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 2/5] commands/loads.c: make it compile again
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 commands/Kconfig  |    2 -
 commands/Makefile |    1 -
 commands/loads.c  |   60 ++++++++++++++++++++++++----------------------------
 common/Makefile   |    1 +
 4 files changed, 29 insertions(+), 35 deletions(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index e922260..39bdb0f 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -203,12 +203,10 @@ config CMD_LOADY
 	prompt "loady"
 
 config CMD_LOADS
-	depends on BROKEN
 	tristate
 	prompt "loads"
 
 config CMD_SAVES
-	depends on BROKEN
 	tristate
 	depends on CMD_LOADS
 	prompt "saves"
diff --git a/commands/Makefile b/commands/Makefile
index 7c88b48..40fb26c 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -5,7 +5,6 @@ obj-$(CONFIG_CMD_LOADY)		+= loadb.o xyzModem.o
 obj-$(CONFIG_CMD_LOADS)		+= loads.o
 obj-$(CONFIG_CMD_ECHO)		+= echo.o
 obj-$(CONFIG_CMD_MEMORY)	+= mem.o
-obj-$(CONFIG_CMD_LOADS)		+= s_record.o
 obj-$(CONFIG_CMD_MTEST)		+= memtest.o
 obj-$(CONFIG_CMD_EDIT)		+= edit.o
 obj-$(CONFIG_CMD_EXEC)		+= exec.o
diff --git a/commands/loads.c b/commands/loads.c
index 2672c39..71fdeba 100644
--- a/commands/loads.c
+++ b/commands/loads.c
@@ -26,19 +26,19 @@
  */
 #include <common.h>
 #include <command.h>
+#include <environment.h>
 #include <s_record.h>
 #include <net.h>
-#include <exports.h>
 #include <xyzModem.h>
 
 static ulong load_serial (ulong offset);
 static int read_record (char *buf, ulong len);
 static int do_echo = 1;
 
-# if (CONFIG_COMMANDS & CFG_CMD_SAVES)
+#ifdef CONFIG_CMD_SAVES
 static int save_serial (ulong offset, ulong size);
 static int write_record (char *buf);
-# endif /* CFG_CMD_SAVES */
+#endif /* CONFIG_CMD_SAVES */
 
 int do_load_serial(struct command *cmdtp, int argc, char *argv[])
 {
@@ -79,7 +79,6 @@ int do_load_serial(struct command *cmdtp, int argc, char *argv[])
 		rcode = 1;
 	} else {
 		printf ("## Start Addr      = 0x%08lX\n", addr);
-		load_addr = addr;
 	}
 
 	return rcode;
@@ -139,7 +138,7 @@ load_serial (ulong offset)
 		}
 		if (!do_echo) {	/* print a '.' every 100 lines */
 			if ((++line_count % 100) == 0)
-				putc ('.');
+				console_putc(CONSOLE_STDOUT, '.');
 		}
 	}
 
@@ -157,7 +156,7 @@ read_record (char *buf, ulong len)
 	for (p=buf; p < buf+len; ++p) {
 		c = getc();		/* read character		*/
 		if (do_echo)
-			putc (c);	/* ... and echo it		*/
+			console_putc(CONSOLE_STDOUT, c);
 
 		switch (c) {
 		case '\r':
@@ -170,13 +169,6 @@ read_record (char *buf, ulong len)
 		default:
 			*p = c;
 		}
-
-	    /* Check for the console hangup (if any different from serial) */
-	    if (gd->jt[XF_getc] != getc) {
-		if (ctrlc()) {
-		    return (-1);
-		}
-	    }
 	}
 
 	/* line too long - truncate */
@@ -184,9 +176,8 @@ read_record (char *buf, ulong len)
 	return (p - buf);
 }
 
-#if (CONFIG_COMMANDS & CFG_CMD_SAVES)
-
-int do_save_serial(struct command *cmdtp, int flag, int argc, char *argv[])
+#ifdef CONFIG_CMD_SAVES
+int do_save_serial(struct command *cmdtp, int argc, char *argv[])
 {
 	ulong offset = 0;
 	ulong size   = 0;
@@ -279,7 +270,7 @@ write_record (char *buf)
 	char c;
 
 	while((c = *buf++))
-		putc(c);
+		console_putc(CONSOLE_STDOUT, c);
 
 	/* Check for the console hangup (if any different from serial) */
 
@@ -288,26 +279,31 @@ write_record (char *buf)
 	}
 	return (0);
 }
-# endif /* CFG_CMD_SAVES */
+#endif /* CONFIG_CMD_SAVES */
 
-BAREBOX_CMD(
-	loads, 2, 0,	do_load_serial,
-	"loads   - load S-Record file over serial line\n",
+static const __maybe_unused char cmd_loads_help[] =
 	"[ off ]\n"
-	"    - load S-Record file over serial line with offset 'off'\n"
-);
+	"    - load S-Record file over serial line with offset 'off'\n";
+
+BAREBOX_CMD_START(loads)
+	.cmd		= do_load_serial,
+	.usage		= "load S-Record file over serial line",
+	BAREBOX_CMD_HELP(cmd_loads_help)
+BAREBOX_CMD_END
 
 /*
  * SAVES always requires LOADS support, but not vice versa
  */
 
-
-#if (CONFIG_COMMANDS & CFG_CMD_SAVES)
-BAREBOX_CMD(
-	saves, 3, 0,	do_save_serial,
-	"saves   - save S-Record file over serial line\n",
+#ifdef CONFIG_CMD_SAVES
+static const __maybe_unused char cmd_saves_help[] =
 	"[ off ] [size]\n"
-	"    - save S-Record file over serial line with offset 'off' and size 'size'\n"
-);
-#endif	/* CFG_CMD_SAVES */
-
+	"    - save S-Record file over serial line with offset 'off' "
+	"and size 'size'\n";
+
+BAREBOX_CMD_START(saves)
+	.cmd		= do_save_serial,
+	.usage		= "save S-Record file over serial line",
+	BAREBOX_CMD_HELP(cmd_saves_help)
+BAREBOX_CMD_END
+#endif	/* CONFIG_CMD_SAVES */
diff --git a/common/Makefile b/common/Makefile
index 9fed2ae..74946e9 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -7,6 +7,7 @@ obj-$(CONFIG_ENV_HANDLING)	+= environment.o
 obj-$(CONFIG_AUTO_COMPLETE)	+= complete.o
 obj-$(CONFIG_POLLER)		+= poller.o
 obj-$(CONFIG_BLOCK)		+= block.o
+obj-$(CONFIG_CMD_LOADS)		+= s_record.o
 
 obj-y += memory.o
 obj-$(CONFIG_MALLOC_DLMALLOC) += dlmalloc.o
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
