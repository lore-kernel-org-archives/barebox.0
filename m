Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo3.mail-out.ovh.net ([46.105.57.200]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T9yK0-0002d8-Ns
 for barebox@lists.infradead.org; Fri, 07 Sep 2012 13:10:18 +0000
Received: from mail91.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 8FB82FF93DE
 for <barebox@lists.infradead.org>; Fri,  7 Sep 2012 15:17:47 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri,  7 Sep 2012 15:10:15 +0200
Message-Id: <1347023425-22462-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120907130700.GS20330@game.jcrosoft.org>
References: <20120907130700.GS20330@game.jcrosoft.org>
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
Subject: [PATCH 01/11] bmp: rename it to splash
To: barebox@lists.infradead.org

so be can add more format support

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 Documentation/commands.dox                         |    2 +-
 arch/arm/boards/eukrea_cpuimx25/env/bin/init_board |    4 ++--
 arch/arm/boards/eukrea_cpuimx27/env/bin/init       |    4 ++--
 arch/arm/boards/eukrea_cpuimx35/env/bin/init_board |    4 ++--
 arch/arm/boards/eukrea_cpuimx51/env/bin/init_board |    4 ++--
 arch/arm/boards/karo-tx25/env/bin/init_board       |    2 +-
 arch/arm/boards/mioa701/env/bin/init               |    2 +-
 arch/arm/configs/chumbyone_defconfig               |    2 +-
 arch/arm/configs/cupid_defconfig                   |    2 +-
 arch/arm/configs/eukrea_cpuimx25_defconfig         |    2 +-
 arch/arm/configs/eukrea_cpuimx27_defconfig         |    2 +-
 arch/arm/configs/eukrea_cpuimx35_defconfig         |    2 +-
 arch/arm/configs/freescale_mx35_3stack_defconfig   |    2 +-
 arch/arm/configs/imx28evk_defconfig                |    2 +-
 arch/arm/configs/mioa701_defconfig                 |    2 +-
 arch/arm/configs/neso_defconfig                    |    2 +-
 arch/arm/configs/pcm027_defconfig                  |    2 +-
 arch/arm/configs/pcm038_defconfig                  |    2 +-
 arch/arm/configs/tx25stk5_defconfig                |    2 +-
 arch/arm/configs/tx28stk5_defconfig                |    2 +-
 commands/Kconfig                                   |    4 ++--
 commands/Makefile                                  |    2 +-
 commands/{bmp.c => splash.c}                       |   12 ++++++------
 23 files changed, 33 insertions(+), 33 deletions(-)
 rename commands/{bmp.c => splash.c} (95%)

diff --git a/Documentation/commands.dox b/Documentation/commands.dox
index 5ef7829..d8cfa6b 100644
--- a/Documentation/commands.dox
+++ b/Documentation/commands.dox
@@ -18,7 +18,6 @@ available in @a Barebox:
 @li @subpage _name
 @li @subpage addpart_command
 @li @subpage alternate
-@li @subpage bmp_command
 @li @subpage bootm_command
 @li @subpage bootu
 @li @subpage bootz
@@ -95,6 +94,7 @@ available in @a Barebox:
 @li @subpage sh
 @li @subpage sleep
 @li @subpage source
+@li @subpage splash_command
 @li @subpage test
 @li @subpage timeout
 @li @subpage true
diff --git a/arch/arm/boards/eukrea_cpuimx25/env/bin/init_board b/arch/arm/boards/eukrea_cpuimx25/env/bin/init_board
index ff3365d..58e07e0 100644
--- a/arch/arm/boards/eukrea_cpuimx25/env/bin/init_board
+++ b/arch/arm/boards/eukrea_cpuimx25/env/bin/init_board
@@ -1,11 +1,11 @@
 #!/bin/sh
 
 if [ -f /env/logo.bmp ]; then
-	bmp /env/logo.bmp
+	splash /env/logo.bmp
 	fb0.enable=1
 elif [ -f /env/logo.bmp.lzo ]; then
 	uncompress /env/logo.bmp.lzo /logo.bmp
-	bmp /logo.bmp
+	splash /logo.bmp
 	fb0.enable=1
 fi
 
diff --git a/arch/arm/boards/eukrea_cpuimx27/env/bin/init b/arch/arm/boards/eukrea_cpuimx27/env/bin/init
index f84ace9..cd74974 100644
--- a/arch/arm/boards/eukrea_cpuimx27/env/bin/init
+++ b/arch/arm/boards/eukrea_cpuimx27/env/bin/init
@@ -17,11 +17,11 @@ if [ -e /dev/nand0 ]; then
 fi
 
 if [ -f /env/logo.bmp ]; then
-	bmp /env/logo.bmp
+	splash /env/logo.bmp
 	fb0.enable=1
 elif [ -f /env/logo.bmp.lzo ]; then
 	uncompress /env/logo.bmp.lzo /logo.bmp
-	bmp /logo.bmp
+	splash /logo.bmp
 	fb0.enable=1
 fi
 
diff --git a/arch/arm/boards/eukrea_cpuimx35/env/bin/init_board b/arch/arm/boards/eukrea_cpuimx35/env/bin/init_board
index 89fd9a9..2a07a84 100644
--- a/arch/arm/boards/eukrea_cpuimx35/env/bin/init_board
+++ b/arch/arm/boards/eukrea_cpuimx35/env/bin/init_board
@@ -1,12 +1,12 @@
 #!/bin/sh
 
 if [ -f /env/logo.bmp ]; then
-	bmp /env/logo.bmp
+	splash /env/logo.bmp
 	fb0.enable=1
 	gpio_set_value 1 1
 elif [ -f /env/logo.bmp.lzo ]; then
 	uncompress /env/logo.bmp.lzo /logo.bmp
-	bmp /logo.bmp
+	splash /logo.bmp
 	fb0.enable=1
 	gpio_set_value 1 1
 fi
diff --git a/arch/arm/boards/eukrea_cpuimx51/env/bin/init_board b/arch/arm/boards/eukrea_cpuimx51/env/bin/init_board
index cb624e5..0af6582 100644
--- a/arch/arm/boards/eukrea_cpuimx51/env/bin/init_board
+++ b/arch/arm/boards/eukrea_cpuimx51/env/bin/init_board
@@ -1,12 +1,12 @@
 #!/bin/sh
 
 if [ -f /env/logo.bmp ]; then
-	bmp /env/logo.bmp
+	splash /env/logo.bmp
 	fb0.enable=1
 	gpio_set_value 1 1
 elif [ -f /env/logo.bmp.lzo ]; then
 	uncompress /env/logo.bmp.lzo /logo.bmp
-	bmp /logo.bmp
+	splash /logo.bmp
 	fb0.enable=1
 	gpio_set_value 1 1
 fi
diff --git a/arch/arm/boards/karo-tx25/env/bin/init_board b/arch/arm/boards/karo-tx25/env/bin/init_board
index b17c55d..1f35c96 100644
--- a/arch/arm/boards/karo-tx25/env/bin/init_board
+++ b/arch/arm/boards/karo-tx25/env/bin/init_board
@@ -1,6 +1,6 @@
 
 if [ -e /dev/fb0 -a -e /env/splash.bmp ]; then
-	bmp /env/splash.bmp
+	splash /env/splash.bmp
 	fb0.enable=1
 fi
 
diff --git a/arch/arm/boards/mioa701/env/bin/init b/arch/arm/boards/mioa701/env/bin/init
index 494d067..ab5d84d 100644
--- a/arch/arm/boards/mioa701/env/bin/init
+++ b/arch/arm/boards/mioa701/env/bin/init
@@ -12,7 +12,7 @@ led keyboard 0
 sdcard_override
 
 fb0.enable=1
-bmp /dev/mtd0.barebox-logo
+splash /dev/mtd0.barebox-logo
 
 mtd_env_override
 if [ $? = 0 ]; then
diff --git a/arch/arm/configs/chumbyone_defconfig b/arch/arm/configs/chumbyone_defconfig
index 33d83a8..1b03530 100644
--- a/arch/arm/configs/chumbyone_defconfig
+++ b/arch/arm/configs/chumbyone_defconfig
@@ -30,7 +30,7 @@ CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
-CONFIG_CMD_BMP=y
+CONFIG_CMD_SPLASH=y
 CONFIG_CMD_GPIO=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
diff --git a/arch/arm/configs/cupid_defconfig b/arch/arm/configs/cupid_defconfig
index 28d199b..d7716ea 100644
--- a/arch/arm/configs/cupid_defconfig
+++ b/arch/arm/configs/cupid_defconfig
@@ -45,7 +45,7 @@ CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_MAGICVAR=y
 CONFIG_CMD_MAGICVAR_HELP=y
-CONFIG_CMD_BMP=y
+CONFIG_CMD_SPLASH=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_UNCOMPRESS=y
 CONFIG_NET=y
diff --git a/arch/arm/configs/eukrea_cpuimx25_defconfig b/arch/arm/configs/eukrea_cpuimx25_defconfig
index f7207e8..5eb4ff3 100644
--- a/arch/arm/configs/eukrea_cpuimx25_defconfig
+++ b/arch/arm/configs/eukrea_cpuimx25_defconfig
@@ -43,7 +43,7 @@ CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_MAGICVAR=y
 CONFIG_CMD_MAGICVAR_HELP=y
-CONFIG_CMD_BMP=y
+CONFIG_CMD_SPLASH=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_UNCOMPRESS=y
 CONFIG_CMD_I2C=y
diff --git a/arch/arm/configs/eukrea_cpuimx27_defconfig b/arch/arm/configs/eukrea_cpuimx27_defconfig
index 93de428..2b95156 100644
--- a/arch/arm/configs/eukrea_cpuimx27_defconfig
+++ b/arch/arm/configs/eukrea_cpuimx27_defconfig
@@ -31,7 +31,7 @@ CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
-CONFIG_CMD_BMP=y
+CONFIG_CMD_SPLASH=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_UNCOMPRESS=y
 CONFIG_CMD_I2C=y
diff --git a/arch/arm/configs/eukrea_cpuimx35_defconfig b/arch/arm/configs/eukrea_cpuimx35_defconfig
index 880beb6..16ef4cc 100644
--- a/arch/arm/configs/eukrea_cpuimx35_defconfig
+++ b/arch/arm/configs/eukrea_cpuimx35_defconfig
@@ -44,7 +44,7 @@ CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_MAGICVAR=y
 CONFIG_CMD_MAGICVAR_HELP=y
-CONFIG_CMD_BMP=y
+CONFIG_CMD_SPLASH=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_UNCOMPRESS=y
 CONFIG_CMD_I2C=y
diff --git a/arch/arm/configs/freescale_mx35_3stack_defconfig b/arch/arm/configs/freescale_mx35_3stack_defconfig
index a60658d..4052325 100644
--- a/arch/arm/configs/freescale_mx35_3stack_defconfig
+++ b/arch/arm/configs/freescale_mx35_3stack_defconfig
@@ -42,7 +42,7 @@ CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_MAGICVAR=y
 CONFIG_CMD_MAGICVAR_HELP=y
-CONFIG_CMD_BMP=y
+CONFIG_CMD_SPLASH=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_UNCOMPRESS=y
 CONFIG_CMD_I2C=y
diff --git a/arch/arm/configs/imx28evk_defconfig b/arch/arm/configs/imx28evk_defconfig
index 1b44cf4..f4d4661 100644
--- a/arch/arm/configs/imx28evk_defconfig
+++ b/arch/arm/configs/imx28evk_defconfig
@@ -33,7 +33,7 @@ CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
-CONFIG_CMD_BMP=y
+CONFIG_CMD_SPLASH=y
 CONFIG_CMD_GPIO=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
diff --git a/arch/arm/configs/mioa701_defconfig b/arch/arm/configs/mioa701_defconfig
index 2bb3cec..5f06b3c 100644
--- a/arch/arm/configs/mioa701_defconfig
+++ b/arch/arm/configs/mioa701_defconfig
@@ -38,7 +38,7 @@ CONFIG_CMD_BOOTM_INITRD=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
-CONFIG_CMD_BMP=y
+CONFIG_CMD_SPLASH=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_UNCOMPRESS=y
 CONFIG_CMD_LED=y
diff --git a/arch/arm/configs/neso_defconfig b/arch/arm/configs/neso_defconfig
index 5744dc1..3ea6891 100644
--- a/arch/arm/configs/neso_defconfig
+++ b/arch/arm/configs/neso_defconfig
@@ -45,7 +45,7 @@ CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_MAGICVAR=y
 CONFIG_CMD_MAGICVAR_HELP=y
-CONFIG_CMD_BMP=y
+CONFIG_CMD_SPLASH=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_UNCOMPRESS=y
 CONFIG_NET=y
diff --git a/arch/arm/configs/pcm027_defconfig b/arch/arm/configs/pcm027_defconfig
index 9760e66..5a65a72 100644
--- a/arch/arm/configs/pcm027_defconfig
+++ b/arch/arm/configs/pcm027_defconfig
@@ -43,7 +43,7 @@ CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_MAGICVAR=y
 CONFIG_CMD_MAGICVAR_HELP=y
-CONFIG_CMD_BMP=y
+CONFIG_CMD_SPLASH=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_UNCOMPRESS=y
 CONFIG_NET=y
diff --git a/arch/arm/configs/pcm038_defconfig b/arch/arm/configs/pcm038_defconfig
index 5ce4f7a..bab4002 100644
--- a/arch/arm/configs/pcm038_defconfig
+++ b/arch/arm/configs/pcm038_defconfig
@@ -49,7 +49,7 @@ CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_MAGICVAR=y
 CONFIG_CMD_MAGICVAR_HELP=y
-CONFIG_CMD_BMP=y
+CONFIG_CMD_SPLASH=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_UNCOMPRESS=y
 CONFIG_NET=y
diff --git a/arch/arm/configs/tx25stk5_defconfig b/arch/arm/configs/tx25stk5_defconfig
index 99057c2..e098ef8 100644
--- a/arch/arm/configs/tx25stk5_defconfig
+++ b/arch/arm/configs/tx25stk5_defconfig
@@ -45,7 +45,7 @@ CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_MAGICVAR=y
 CONFIG_CMD_MAGICVAR_HELP=y
-CONFIG_CMD_BMP=y
+CONFIG_CMD_SPLASH=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_UNCOMPRESS=y
 CONFIG_NET=y
diff --git a/arch/arm/configs/tx28stk5_defconfig b/arch/arm/configs/tx28stk5_defconfig
index b4e3747..49a0ab3 100644
--- a/arch/arm/configs/tx28stk5_defconfig
+++ b/arch/arm/configs/tx28stk5_defconfig
@@ -41,7 +41,7 @@ CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_MAGICVAR=y
 CONFIG_CMD_MAGICVAR_HELP=y
-CONFIG_CMD_BMP=y
+CONFIG_CMD_SPLASH=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_UNCOMPRESS=y
 CONFIG_NET=y
diff --git a/commands/Kconfig b/commands/Kconfig
index f2756cc..c4623fa 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -535,10 +535,10 @@ config CMD_LSMOD
 	depends on MODULES
 	prompt "lsmod"
 
-config CMD_BMP
+config CMD_SPLASH
 	bool
 	depends on VIDEO
-	prompt "bmp"
+	prompt "splash"
 	help
 	  show bmp files on framebuffer devices
 
diff --git a/commands/Makefile b/commands/Makefile
index ccebd7f..24bf46a 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -49,7 +49,7 @@ obj-$(CONFIG_CMD_VERSION)	+= version.o
 obj-$(CONFIG_CMD_HELP)		+= help.o
 obj-$(CONFIG_CMD_LSMOD)		+= lsmod.o
 obj-$(CONFIG_CMD_INSMOD)	+= insmod.o
-obj-$(CONFIG_CMD_BMP)		+= bmp.o
+obj-$(CONFIG_CMD_SPLASH)	+= splash.o
 obj-$(CONFIG_USB_GADGET_DFU)	+= dfu.o
 obj-$(CONFIG_USB_GADGET_SERIAL)	+= usbserial.o
 obj-$(CONFIG_CMD_GPIO)		+= gpio.o
diff --git a/commands/bmp.c b/commands/splash.c
similarity index 95%
rename from commands/bmp.c
rename to commands/splash.c
index 4130474..6526b20 100644
--- a/commands/bmp.c
+++ b/commands/splash.c
@@ -30,7 +30,7 @@ static inline void set_pixel(struct fb_info *info, void *adr, int r, int g, int
 	}
 }
 
-static int do_bmp(int argc, char *argv[])
+static int do_splash(int argc, char *argv[])
 {
 	int ret, opt, fd;
 	char *fbdev = "/dev/fb0";
@@ -194,8 +194,8 @@ failed_memmap:
 	return 1;
 }
 
-BAREBOX_CMD_HELP_START(bmp)
-BAREBOX_CMD_HELP_USAGE("bmp [OPTIONS] FILE\n")
+BAREBOX_CMD_HELP_START(splash)
+BAREBOX_CMD_HELP_USAGE("splash [OPTIONS] FILE\n")
 BAREBOX_CMD_HELP_SHORT("Show the bitmap FILE on the framebuffer.\n")
 BAREBOX_CMD_HELP_OPT  ("-f <fb>",   "framebuffer device (/dev/fb0)\n")
 BAREBOX_CMD_HELP_OPT  ("-x <xofs>", "x offset (default center)\n")
@@ -214,8 +214,8 @@ color depth.
 
  */
 
-BAREBOX_CMD_START(bmp)
-	.cmd		= do_bmp,
+BAREBOX_CMD_START(splash)
+	.cmd		= do_splash,
 	.usage		= "show a bmp image",
-	BAREBOX_CMD_HELP(cmd_bmp_help)
+	BAREBOX_CMD_HELP(cmd_splash_help)
 BAREBOX_CMD_END
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
