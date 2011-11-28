Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RV9PG-0007ku-D5
 for barebox@lists.infradead.org; Mon, 28 Nov 2011 22:10:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 28 Nov 2011 23:10:06 +0100
Message-Id: <1322518209-2965-14-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1322518209-2965-1-git-send-email-s.hauer@pengutronix.de>
References: <1322518209-2965-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 13/16] add generic uncompress command
To: barebox@lists.infradead.org

Using the new uncompress function we can now implement a command which
can uncompress all known compression types. This supplements the unlzo
command.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/Kconfig                   |   10 +++++-----
 commands/Makefile                  |    2 +-
 commands/{unlzo.c => uncompress.c} |   23 ++++++++++++-----------
 3 files changed, 18 insertions(+), 17 deletions(-)
 rename commands/{unlzo.c => uncompress.c} (73%)

diff --git a/commands/Kconfig b/commands/Kconfig
index e5c0fb5..890be78 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -402,13 +402,13 @@ config CMD_GPIO
 	  include gpio_set_value, gpio_get_value, gpio_direction_input and
 	  gpio_direction_output commands to control gpios.
 
-config CMD_UNLZO
+config CMD_UNCOMPRESS
 	bool
-	select LZO_DECOMPRESS
-	prompt "unlzo"
+	prompt "uncompress"
 	help
-	  Say yes here to get the unlzo command. lzo is a fast compression
-	  algorithm by Markus Franz Xaver Johannes Oberhumer.
+	  Say yes here to get the uncompress command. uncompress handles
+	  lzo, gzip and bzip2 compressed files depending on the compiled
+	  in compression libraries
 
 config CMD_I2C
 	bool
diff --git a/commands/Makefile b/commands/Makefile
index 5c51916..0aae666 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -47,7 +47,7 @@ obj-$(CONFIG_CMD_INSMOD)	+= insmod.o
 obj-$(CONFIG_CMD_BMP)		+= bmp.o
 obj-$(CONFIG_USB_GADGET_DFU)	+= dfu.o
 obj-$(CONFIG_CMD_GPIO)		+= gpio.o
-obj-$(CONFIG_CMD_UNLZO)		+= unlzo.o
+obj-$(CONFIG_CMD_UNCOMPRESS)	+= uncompress.o
 obj-$(CONFIG_CMD_I2C)		+= i2c.o
 obj-$(CONFIG_CMD_UBI)		+= ubi.o
 obj-$(CONFIG_CMD_MENU)		+= menu.o
diff --git a/commands/unlzo.c b/commands/uncompress.c
similarity index 73%
rename from commands/unlzo.c
rename to commands/uncompress.c
index 0b6dd4b..fff6227 100644
--- a/commands/unlzo.c
+++ b/commands/uncompress.c
@@ -1,5 +1,5 @@
 /*
- * unlzo.c - uncompress a lzo compressed file
+ * uncompress.c - uncompress a lzo compressed file
  *
  * Copyright (c) 2010 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
  *
@@ -25,11 +25,11 @@
 #include <errno.h>
 #include <fcntl.h>
 #include <fs.h>
-#include <lzo.h>
+#include <uncompress.h>
 
-static int do_unlzo(struct command *cmdtp, int argc, char *argv[])
+static int do_uncompress(struct command *cmdtp, int argc, char *argv[])
 {
-	int from, to, ret, retlen;
+	int from, to, ret;
 
 	if (argc != 3)
 		return COMMAND_ERROR_USAGE;
@@ -47,7 +47,8 @@ static int do_unlzo(struct command *cmdtp, int argc, char *argv[])
 		goto exit_close;
 	}
 
-	ret = unlzo(from, to, &retlen);
+	ret = uncompress_fd_to_fd(from, to, uncompress_err_stdout);
+
 	if (ret)
 		printf("failed to decompress\n");
 
@@ -57,13 +58,13 @@ exit_close:
 	return ret;
 }
 
-static const __maybe_unused char cmd_unlzo_help[] =
-"Usage: unlzo <infile> <outfile>\n"
-"Uncompress a lzo compressed file\n";
+static const __maybe_unused char cmd_uncompress_help[] =
+"Usage: uncompress <infile> <outfile>\n"
+"Uncompress a compressed file\n";
 
-BAREBOX_CMD_START(unlzo)
-        .cmd            = do_unlzo,
+BAREBOX_CMD_START(uncompress)
+        .cmd            = do_uncompress,
         .usage          = "lzop <infile> <outfile>",
-        BAREBOX_CMD_HELP(cmd_unlzo_help)
+        BAREBOX_CMD_HELP(cmd_uncompress_help)
 BAREBOX_CMD_END
 
-- 
1.7.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
