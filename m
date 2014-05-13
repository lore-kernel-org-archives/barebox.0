Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x231.google.com ([2a00:1450:4013:c00::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WkDOn-0001jA-E9
 for barebox@lists.infradead.org; Tue, 13 May 2014 14:09:45 +0000
Received: by mail-ee0-f49.google.com with SMTP id e53so464245eek.8
 for <barebox@lists.infradead.org>; Tue, 13 May 2014 07:09:19 -0700 (PDT)
From: Holger Schurig <holgerschurig@gmail.com>
Date: Tue, 13 May 2014 16:14:05 +0200
Message-Id: <1399990445-19691-1-git-send-email-holgerschurig@gmail.com>
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
Subject: [PATCH 01/19 v2] commands: group 'help' output
To: barebox@lists.infradead.org

The old output of "help" was just producing a long list, that usually
scrolled of the screen (even on a X11 terminal). This list is more
compact, and also sorted by groups.

The old output format (plus grouping) is now available with 'help -v'.

Example:

   Information commands:
     ?, devinfo, help, iomem, meminfo, version
   Boot commands:
     boot, bootm, go, loadb, loads, loadx, loady, saves, uimage
   ...

Signed-off-by: Holger Schurig <holgerschurig@gmail.com>
---

v2: doesn't touch drivers/of/base.c anymore

 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c |    1 +
 arch/arm/boards/guf-cupid/board.c                 |    1 +
 arch/arm/boards/phytec-phycore-imx35/pcm043.c     |    1 +
 arch/arm/cpu/cpuinfo.c                            |    1 +
 arch/arm/cpu/mmuinfo.c                            |    1 +
 arch/arm/lib/bootu.c                              |    1 +
 arch/arm/lib/bootz.c                              |    1 +
 arch/arm/mach-at91/boot_test_cmd.c                |    1 +
 arch/arm/mach-at91/clock.c                        |    1 +
 arch/arm/mach-at91/gpio.c                         |    1 +
 arch/arm/mach-mxs/bcb.c                           |    1 +
 arch/arm/mach-netx/generic.c                      |    1 +
 arch/arm/mach-omap/boot_order.c                   |    1 +
 arch/blackfin/boards/ipe337/cmd_alternate.c       |    1 +
 arch/mips/lib/cpuinfo.c                           |    1 +
 arch/openrisc/lib/cpuinfo.c                       |    1 +
 commands/2048.c                                   |    1 +
 commands/automount.c                              |    1 +
 commands/barebox-update.c                         |    1 +
 commands/basename.c                               |    1 +
 commands/boot.c                                   |    1 +
 commands/bootm.c                                  |    1 +
 commands/cat.c                                    |    1 +
 commands/cd.c                                     |    1 +
 commands/clear.c                                  |    1 +
 commands/clk.c                                    |    5 ++
 commands/cp.c                                     |    1 +
 commands/crc.c                                    |    1 +
 commands/detect.c                                 |    1 +
 commands/devinfo.c                                |    1 +
 commands/dfu.c                                    |    1 +
 commands/digest.c                                 |    4 +
 commands/dirname.c                                |    1 +
 commands/echo.c                                   |    1 +
 commands/edit.c                                   |    1 +
 commands/exec.c                                   |    1 +
 commands/export.c                                 |    1 +
 commands/false.c                                  |    1 +
 commands/filetype.c                               |    1 +
 commands/flash.c                                  |    3 +
 commands/global.c                                 |    1 +
 commands/go.c                                     |    1 +
 commands/gpio.c                                   |    4 +
 commands/help.c                                   |   87 ++++++++++++++++++---
 commands/i2c.c                                    |    3 +
 commands/insmod.c                                 |    3 +-
 commands/iomemport.c                              |    2 +
 commands/led.c                                    |    1 +
 commands/let.c                                    |    1 +
 commands/linux16.c                                |    1 +
 commands/linux_exec.c                             |    1 +
 commands/ln.c                                     |    1 +
 commands/loadb.c                                  |    1 +
 commands/loadenv.c                                |    1 +
 commands/loads.c                                  |    2 +
 commands/loadxy.c                                 |    2 +
 commands/login.c                                  |    1 +
 commands/ls.c                                     |    1 +
 commands/lsmod.c                                  |    1 +
 commands/magicvar.c                               |    1 +
 commands/md.c                                     |    1 +
 commands/memcmp.c                                 |    1 +
 commands/memcpy.c                                 |    1 +
 commands/meminfo.c                                |    1 +
 commands/memset.c                                 |    1 +
 commands/memtest.c                                |    1 +
 commands/menu.c                                   |    1 +
 commands/menutree.c                               |    1 +
 commands/miitool.c                                |    1 +
 commands/mkdir.c                                  |    1 +
 commands/mm.c                                     |    1 +
 commands/mount.c                                  |    1 +
 commands/msleep.c                                 |    1 +
 commands/mw.c                                     |    1 +
 commands/nand.c                                   |    1 +
 commands/nandtest.c                               |    1 +
 commands/net.c                                    |    1 +
 commands/of_node.c                                |    1 +
 commands/of_property.c                            |    1 +
 commands/oftree.c                                 |    1 +
 commands/partition.c                              |    2 +
 commands/passwd.c                                 |    1 +
 commands/poweroff.c                               |    1 +
 commands/printenv.c                               |    1 +
 commands/pwd.c                                    |    1 +
 commands/readf.c                                  |    1 +
 commands/readline.c                               |    1 +
 commands/readlink.c                               |    1 +
 commands/reginfo.c                                |    1 +
 commands/regulator.c                              |    1 +
 commands/reset.c                                  |    1 +
 commands/rm.c                                     |    1 +
 commands/rmdir.c                                  |    1 +
 commands/saveenv.c                                |    1 +
 commands/setenv.c                                 |    1 +
 commands/sleep.c                                  |    1 +
 commands/spi.c                                    |    1 +
 commands/splash.c                                 |    1 +
 commands/test.c                                   |    1 +
 commands/tftp.c                                   |    1 +
 commands/time.c                                   |    1 +
 commands/timeout.c                                |    1 +
 commands/trigger.c                                |    1 +
 commands/true.c                                   |    1 +
 commands/ubi.c                                    |    4 +
 commands/ubiformat.c                              |    1 +
 commands/uimage.c                                 |    1 +
 commands/umount.c                                 |    1 +
 commands/uncompress.c                             |    1 +
 commands/usb.c                                    |    1 +
 commands/usbserial.c                              |    1 +
 commands/version.c                                |    1 +
 commands/wd.c                                     |    1 +
 common/hush.c                                     |    4 +
 drivers/gpio/gpiolib.c                            |    1 +
 drivers/mtd/nand/nand_imx_bbm.c                   |    1 +
 drivers/mtd/nand/nand_s3c24xx.c                   |    1 +
 drivers/usb/gadget/u_serial.c                     |    1 +
 include/command.h                                 |   16 ++++
 net/dhcp.c                                        |    1 +
 net/dns.c                                         |    1 +
 net/ifup.c                                        |    1 +
 net/nfs.c                                         |    1 +
 net/ping.c                                        |    1 +
 124 files changed, 237 insertions(+), 14 deletions(-)

diff --git a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
index 9df2d64..f7b7a23 100644
--- a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
+++ b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
@@ -360,5 +360,6 @@ static const __maybe_unused char cmd_cpufreq_help[] =
 BAREBOX_CMD_START(cpufreq)
 	.cmd            = do_cpufreq,
 	.usage          = "adjust CPU frequency",
+	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_cpufreq_help)
 BAREBOX_CMD_END
diff --git a/arch/arm/boards/guf-cupid/board.c b/arch/arm/boards/guf-cupid/board.c
index 356bf56..793d845 100644
--- a/arch/arm/boards/guf-cupid/board.c
+++ b/arch/arm/boards/guf-cupid/board.c
@@ -354,5 +354,6 @@ static const __maybe_unused char cmd_cpufreq_help[] =
 BAREBOX_CMD_START(cpufreq)
 	.cmd            = do_cpufreq,
 	.usage          = "adjust CPU frequency",
+	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_cpufreq_help)
 BAREBOX_CMD_END
diff --git a/arch/arm/boards/phytec-phycore-imx35/pcm043.c b/arch/arm/boards/phytec-phycore-imx35/pcm043.c
index 6abfc92..f6e370f 100644
--- a/arch/arm/boards/phytec-phycore-imx35/pcm043.c
+++ b/arch/arm/boards/phytec-phycore-imx35/pcm043.c
@@ -332,6 +332,7 @@ static const __maybe_unused char cmd_cpufreq_help[] =
 BAREBOX_CMD_START(cpufreq)
 	.cmd            = do_cpufreq,
 	.usage          = "adjust CPU frequency",
+	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_cpufreq_help)
 BAREBOX_CMD_END
 
diff --git a/arch/arm/cpu/cpuinfo.c b/arch/arm/cpu/cpuinfo.c
index 260d47b..2cee48b 100644
--- a/arch/arm/cpu/cpuinfo.c
+++ b/arch/arm/cpu/cpuinfo.c
@@ -211,6 +211,7 @@ static int do_cpuinfo(int argc, char *argv[])
 BAREBOX_CMD_START(cpuinfo)
 	.cmd            = do_cpuinfo,
 	.usage          = "Show info about CPU",
+	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
 	BAREBOX_CMD_COMPLETE(empty_complete)
 BAREBOX_CMD_END
 
diff --git a/arch/arm/cpu/mmuinfo.c b/arch/arm/cpu/mmuinfo.c
index 6bea34e..032798e 100644
--- a/arch/arm/cpu/mmuinfo.c
+++ b/arch/arm/cpu/mmuinfo.c
@@ -107,5 +107,6 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(mmuinfo)
 	.cmd            = do_mmuinfo,
 	.usage		= "mmuinfo <address>",
+	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
 	BAREBOX_CMD_HELP(cmd_mmuinfo_help)
 BAREBOX_CMD_END
diff --git a/arch/arm/lib/bootu.c b/arch/arm/lib/bootu.c
index fdb0362..14a8566 100644
--- a/arch/arm/lib/bootu.c
+++ b/arch/arm/lib/bootu.c
@@ -37,6 +37,7 @@ static const __maybe_unused char cmd_bootu_help[] =
 BAREBOX_CMD_START(bootu)
 	.cmd            = do_bootu,
 	.usage          = "start a raw linux image",
+	BAREBOX_CMD_GROUP(CMD_GRP_BOOT)
 	BAREBOX_CMD_HELP(cmd_bootu_help)
 BAREBOX_CMD_END
 
diff --git a/arch/arm/lib/bootz.c b/arch/arm/lib/bootz.c
index e32a77b..7ddd882 100644
--- a/arch/arm/lib/bootz.c
+++ b/arch/arm/lib/bootz.c
@@ -134,6 +134,7 @@ static const __maybe_unused char cmd_bootz_help[] =
 BAREBOX_CMD_START(bootz)
 	.cmd            = do_bootz,
 	.usage          = "start a zImage",
+	BAREBOX_CMD_GROUP(CMD_GRP_BOOT)
 	BAREBOX_CMD_HELP(cmd_bootz_help)
 BAREBOX_CMD_END
 
diff --git a/arch/arm/mach-at91/boot_test_cmd.c b/arch/arm/mach-at91/boot_test_cmd.c
index aa5c020..5f80666 100644
--- a/arch/arm/mach-at91/boot_test_cmd.c
+++ b/arch/arm/mach-at91/boot_test_cmd.c
@@ -91,5 +91,6 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(at91_boot_test)
 	.cmd		= do_at91_boot_test,
 	.usage		= "upload the binary to sram and jump as will do the romcode",
+	BAREBOX_CMD_GROUP(CMD_GRP_BOOT)
 	BAREBOX_CMD_HELP(cmd_at91_boot_test_help)
 BAREBOX_CMD_END
diff --git a/arch/arm/mach-at91/clock.c b/arch/arm/mach-at91/clock.c
index a10d7f6..c4fc698 100644
--- a/arch/arm/mach-at91/clock.c
+++ b/arch/arm/mach-at91/clock.c
@@ -889,6 +889,7 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(at91clk)
 	.cmd		= do_at91clk,
 	.usage		= "dump current clock configuration",
+	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
 	BAREBOX_CMD_HELP(cmd_at91clk_help)
 	BAREBOX_CMD_COMPLETE(empty_complete)
 BAREBOX_CMD_END
diff --git a/arch/arm/mach-at91/gpio.c b/arch/arm/mach-at91/gpio.c
index 91de85d..c175cfd 100644
--- a/arch/arm/mach-at91/gpio.c
+++ b/arch/arm/mach-at91/gpio.c
@@ -516,6 +516,7 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(at91mux)
 	.cmd		= do_at91mux,
 	.usage		= "dump current mux configuration",
+	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
 	BAREBOX_CMD_HELP(cmd_at91mux_help)
 	BAREBOX_CMD_COMPLETE(empty_complete)
 BAREBOX_CMD_END
diff --git a/arch/arm/mach-mxs/bcb.c b/arch/arm/mach-mxs/bcb.c
index a7f4ba9..0da8d3b 100644
--- a/arch/arm/mach-mxs/bcb.c
+++ b/arch/arm/mach-mxs/bcb.c
@@ -395,5 +395,6 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(bcb)
 	.cmd = update_bcb,
 	.usage = "Writes a MX23/28 BCB data structure to flash",
+	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_bcb_help)
 BAREBOX_CMD_END
diff --git a/arch/arm/mach-netx/generic.c b/arch/arm/mach-netx/generic.c
index 866d6ae..0b6b3b2 100644
--- a/arch/arm/mach-netx/generic.c
+++ b/arch/arm/mach-netx/generic.c
@@ -146,5 +146,6 @@ void __noreturn reset_cpu(unsigned long addr)
 BAREBOX_CMD_START(loadxc)
 	.cmd		= do_loadxc,
 	.usage		= "load xmac/xpec engine with ethernet firmware",
+	BAREBOX_CMD_GROUP(CMD_GRP_NET)
 BAREBOX_CMD_END
 
diff --git a/arch/arm/mach-omap/boot_order.c b/arch/arm/mach-omap/boot_order.c
index 2f2846d..4af86e6 100644
--- a/arch/arm/mach-omap/boot_order.c
+++ b/arch/arm/mach-omap/boot_order.c
@@ -78,6 +78,7 @@ static const __maybe_unused char cmd_boot_order_help[] =
 BAREBOX_CMD_START(boot_order)
 	.cmd		= cmd_boot_order,
 	.usage		= "boot_order <device 1> [<device n>]",
+	BAREBOX_CMD_GROUP(CMD_GRP_BOOT)
 	BAREBOX_CMD_HELP(cmd_boot_order_help)
 	BAREBOX_CMD_COMPLETE(empty_complete)
 BAREBOX_CMD_END
diff --git a/arch/blackfin/boards/ipe337/cmd_alternate.c b/arch/blackfin/boards/ipe337/cmd_alternate.c
index 86eaa11..aee9560 100644
--- a/arch/blackfin/boards/ipe337/cmd_alternate.c
+++ b/arch/blackfin/boards/ipe337/cmd_alternate.c
@@ -51,6 +51,7 @@ static const __maybe_unused char cmd_alternate_help[] =
 BAREBOX_CMD_START(alternate)
 	.cmd		= do_alternate,
 	.usage		= "count zero bits in a file",
+	BAREBOX_CMD_GROUP(CMD_GRP_FILE)
 	BAREBOX_CMD_HELP(cmd_alternate_help)
 BAREBOX_CMD_END
 
diff --git a/arch/mips/lib/cpuinfo.c b/arch/mips/lib/cpuinfo.c
index de2055e..b541f70 100644
--- a/arch/mips/lib/cpuinfo.c
+++ b/arch/mips/lib/cpuinfo.c
@@ -55,4 +55,5 @@ static int do_cpuinfo(int argc, char *argv[])
 BAREBOX_CMD_START(cpuinfo)
 	.cmd            = do_cpuinfo,
 	.usage          = "Show info about CPU",
+	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
 BAREBOX_CMD_END
diff --git a/arch/openrisc/lib/cpuinfo.c b/arch/openrisc/lib/cpuinfo.c
index 1f137f0..2a055aa 100644
--- a/arch/openrisc/lib/cpuinfo.c
+++ b/arch/openrisc/lib/cpuinfo.c
@@ -149,4 +149,5 @@ static int do_cpuinfo(int argc, char *argv[])
 BAREBOX_CMD_START(cpuinfo)
 	.cmd            = do_cpuinfo,
 	.usage          = "Show info about CPU",
+	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
 BAREBOX_CMD_END
diff --git a/commands/2048.c b/commands/2048.c
index 5d6c766..6d4f927 100644
--- a/commands/2048.c
+++ b/commands/2048.c
@@ -385,5 +385,6 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(2048)
 	.cmd		= do_2048,
 	.usage		= "Usage: 2048",
+	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
 	BAREBOX_CMD_HELP(cmd_2048_help)
 BAREBOX_CMD_END
diff --git a/commands/automount.c b/commands/automount.c
index 511d18b..d1e5cb0 100644
--- a/commands/automount.c
+++ b/commands/automount.c
@@ -67,6 +67,7 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(automount)
 	.cmd		= do_automount,
 	.usage		= "automount [OPTIONS] <PATH> <cmd>",
+	BAREBOX_CMD_GROUP(CMD_GRP_PART)
 	BAREBOX_CMD_HELP(cmd_automount_help)
 BAREBOX_CMD_END
 
diff --git a/commands/barebox-update.c b/commands/barebox-update.c
index f550572..819bf4d 100644
--- a/commands/barebox-update.c
+++ b/commands/barebox-update.c
@@ -82,5 +82,6 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(barebox_update)
 	.cmd		= do_barebox_update,
 	.usage		= "update barebox",
+	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
 	BAREBOX_CMD_HELP(cmd_barebox_update_help)
 BAREBOX_CMD_END
diff --git a/commands/basename.c b/commands/basename.c
index b47ff8c..835c299 100644
--- a/commands/basename.c
+++ b/commands/basename.c
@@ -43,5 +43,6 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(basename)
 	.cmd		= do_basename,
 	.usage		= "strip directory and suffix from filenames",
+	BAREBOX_CMD_GROUP(CMD_GRP_FILE)
 	BAREBOX_CMD_HELP(cmd_basename_help)
 BAREBOX_CMD_END
diff --git a/commands/boot.c b/commands/boot.c
index 4a83979..1b88ffe 100644
--- a/commands/boot.c
+++ b/commands/boot.c
@@ -481,6 +481,7 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(boot)
 	.cmd	= do_boot,
 	.usage		= "boot the machine",
+	BAREBOX_CMD_GROUP(CMD_GRP_BOOT)
 	BAREBOX_CMD_HELP(cmd_boot_help)
 BAREBOX_CMD_END
 
diff --git a/commands/bootm.c b/commands/bootm.c
index 5dff7dd..af2cb69 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -162,6 +162,7 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(bootm)
 	.cmd		= do_bootm,
 	.usage		= "boot an application image",
+	BAREBOX_CMD_GROUP(CMD_GRP_BOOT)
 	BAREBOX_CMD_HELP(cmd_bootm_help)
 BAREBOX_CMD_END
 
diff --git a/commands/cat.c b/commands/cat.c
index 1c112fc..f51af4e 100644
--- a/commands/cat.c
+++ b/commands/cat.c
@@ -91,5 +91,6 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(cat)
 	.cmd		= do_cat,
 	.usage		= "concatenate file(s)",
+	BAREBOX_CMD_GROUP(CMD_GRP_FILE)
 	BAREBOX_CMD_HELP(cmd_cat_help)
 BAREBOX_CMD_END
diff --git a/commands/cd.c b/commands/cd.c
index 936fec8..caa368d 100644
--- a/commands/cd.c
+++ b/commands/cd.c
@@ -53,5 +53,6 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(cd)
 	.cmd		= do_cd,
 	.usage		= "change working directory",
+	BAREBOX_CMD_GROUP(CMD_GRP_FILE)
 	BAREBOX_CMD_HELP(cmd_cd_help)
 BAREBOX_CMD_END
diff --git a/commands/clear.c b/commands/clear.c
index e6d553d..a67ece8 100644
--- a/commands/clear.c
+++ b/commands/clear.c
@@ -37,5 +37,6 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(clear)
 	.cmd		= do_clear,
 	.usage		= "clear screen",
+	BAREBOX_CMD_GROUP(CMD_GRP_CONSOLE)
 	BAREBOX_CMD_COMPLETE(empty_complete)
 BAREBOX_CMD_END
diff --git a/commands/clk.c b/commands/clk.c
index 241dc79..6718ae8 100644
--- a/commands/clk.c
+++ b/commands/clk.c
@@ -26,6 +26,7 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(clk_enable)
 	.cmd		= do_clk_enable,
 	.usage		= "enable a clock",
+	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_clk_enable_help)
 BAREBOX_CMD_END
 
@@ -53,6 +54,7 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(clk_disable)
 	.cmd		= do_clk_disable,
 	.usage		= "disable a clock",
+	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_clk_disable_help)
 BAREBOX_CMD_END
 
@@ -81,6 +83,7 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(clk_set_rate)
 	.cmd		= do_clk_set_rate,
 	.usage		= "set a clocks rate",
+	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_clk_set_rate_help)
 BAREBOX_CMD_END
 
@@ -112,6 +115,7 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(clk_dump)
 	.cmd		= do_clk_dump,
 	.usage		= "show information about registered clocks",
+	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
 	BAREBOX_CMD_HELP(cmd_clk_dump_help)
 BAREBOX_CMD_END
 
@@ -140,5 +144,6 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(clk_set_parent)
 	.cmd		= do_clk_set_parent,
 	.usage		= "set a parent of a clock",
+	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_clk_set_parent_help)
 BAREBOX_CMD_END
diff --git a/commands/cp.c b/commands/cp.c
index 45f08d8..2a289f8 100644
--- a/commands/cp.c
+++ b/commands/cp.c
@@ -105,6 +105,7 @@ If you want to copy between memory blocks, use 'memcpy'.
 BAREBOX_CMD_START(cp)
 	.cmd		= do_cp,
 	.usage		= "copy files",
+	BAREBOX_CMD_GROUP(CMD_GRP_FILE)
 	BAREBOX_CMD_HELP(cmd_cp_help)
 BAREBOX_CMD_END
 
diff --git a/commands/crc.c b/commands/crc.c
index 824dda4..89b4fb2 100644
--- a/commands/crc.c
+++ b/commands/crc.c
@@ -121,5 +121,6 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(crc32)
 	.cmd		= do_crc,
 	.usage		= "crc32 checksum calculation",
+	BAREBOX_CMD_GROUP(CMD_GRP_MEM)
 	BAREBOX_CMD_HELP(cmd_crc_help)
 BAREBOX_CMD_END
diff --git a/commands/detect.c b/commands/detect.c
index 499994b..50317fe 100644
--- a/commands/detect.c
+++ b/commands/detect.c
@@ -89,6 +89,7 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(detect)
 	.cmd		= do_detect,
 	.usage		= "detect devices",
+	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_COMPLETE(device_complete)
 	BAREBOX_CMD_HELP(cmd_detect_help)
 BAREBOX_CMD_END
diff --git a/commands/devinfo.c b/commands/devinfo.c
index 806e45c..3aa8a94 100644
--- a/commands/devinfo.c
+++ b/commands/devinfo.c
@@ -153,6 +153,7 @@ Example from an MPC5200 based system:
 BAREBOX_CMD_START(devinfo)
 	.cmd		= do_devinfo,
 	.usage		= "Show information about devices and drivers.",
+	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
 	BAREBOX_CMD_HELP(cmd_devinfo_help)
 	BAREBOX_CMD_COMPLETE(device_complete)
 BAREBOX_CMD_END
diff --git a/commands/dfu.c b/commands/dfu.c
index 2513ed8..514c487 100644
--- a/commands/dfu.c
+++ b/commands/dfu.c
@@ -197,5 +197,6 @@ device1(name1)[sr],device2(name2)[sr]
 BAREBOX_CMD_START(dfu)
 	.cmd		= do_dfu,
 	.usage		= "Device firmware update",
+	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
 	BAREBOX_CMD_HELP(cmd_dfu_help)
 BAREBOX_CMD_END
diff --git a/commands/digest.c b/commands/digest.c
index c9bb132..9980740 100644
--- a/commands/digest.c
+++ b/commands/digest.c
@@ -90,6 +90,7 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(md5sum)
 	.cmd		= do_md5,
 	.usage		= "md5 checksum calculation",
+	BAREBOX_CMD_GROUP(CMD_GRP_FILE)
 	BAREBOX_CMD_HELP(cmd_md5sum_help)
 BAREBOX_CMD_END
 
@@ -110,6 +111,7 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(sha1sum)
 	.cmd		= do_sha1,
 	.usage		= "sha1 checksum calculation",
+	BAREBOX_CMD_GROUP(CMD_GRP_FILE)
 	BAREBOX_CMD_HELP(cmd_sha1sum_help)
 BAREBOX_CMD_END
 
@@ -130,6 +132,7 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(sha224sum)
 	.cmd		= do_sha224,
 	.usage		= "sha224 checksum calculation",
+	BAREBOX_CMD_GROUP(CMD_GRP_FILE)
 	BAREBOX_CMD_HELP(cmd_sha224sum_help)
 BAREBOX_CMD_END
 
@@ -150,6 +153,7 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(sha256sum)
 	.cmd		= do_sha256,
 	.usage		= "sha256 checksum calculation",
+	BAREBOX_CMD_GROUP(CMD_GRP_FILE)
 	BAREBOX_CMD_HELP(cmd_sha256sum_help)
 BAREBOX_CMD_END
 
diff --git a/commands/dirname.c b/commands/dirname.c
index f34d88d..aa7f183 100644
--- a/commands/dirname.c
+++ b/commands/dirname.c
@@ -61,5 +61,6 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(dirname)
 	.cmd		= do_dirname,
 	.usage		= "strip last component from file name",
+	BAREBOX_CMD_GROUP(CMD_GRP_SCRIPT)
 	BAREBOX_CMD_HELP(cmd_dirname_help)
 BAREBOX_CMD_END
diff --git a/commands/echo.c b/commands/echo.c
index 4dfd870..f9ce43e 100644
--- a/commands/echo.c
+++ b/commands/echo.c
@@ -122,6 +122,7 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(echo)
 	.cmd		= do_echo,
 	.usage		= "echo args to console",
+	BAREBOX_CMD_GROUP(CMD_GRP_CONSOLE)
 	BAREBOX_CMD_HELP(cmd_echo_help)
 BAREBOX_CMD_END
 
diff --git a/commands/edit.c b/commands/edit.c
index b0fcf69..c1a9815 100644
--- a/commands/edit.c
+++ b/commands/edit.c
@@ -565,6 +565,7 @@ BAREBOX_CMD_START(edit)
 	.cmd		= do_edit,
 	.aliases	= edit_aliases,
 	.usage		= "Usage: (s)edit <file>",
+	BAREBOX_CMD_GROUP(CMD_GRP_CONSOLE)
 	BAREBOX_CMD_HELP(cmd_edit_help)
 BAREBOX_CMD_END
 
diff --git a/commands/exec.c b/commands/exec.c
index 8d12b30..52b2ba3 100644
--- a/commands/exec.c
+++ b/commands/exec.c
@@ -53,4 +53,5 @@ out:
 BAREBOX_CMD_START(exec)
 	.cmd		= do_exec,
 	.usage		= "execute a script",
+	BAREBOX_CMD_GROUP(CMD_GRP_SCRIPT)
 BAREBOX_CMD_END
diff --git a/commands/export.c b/commands/export.c
index c6196e0..e27cf18 100644
--- a/commands/export.c
+++ b/commands/export.c
@@ -56,6 +56,7 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(export)
 	.cmd		= do_export,
 	.usage		= "export environment variables",
+	BAREBOX_CMD_GROUP(CMD_GRP_ENV)
 	BAREBOX_CMD_HELP(cmd_export_help)
 BAREBOX_CMD_END
 
diff --git a/commands/false.c b/commands/false.c
index 60d6989..6488b87 100644
--- a/commands/false.c
+++ b/commands/false.c
@@ -29,6 +29,7 @@ static int do_false(int argc, char *argv[])
 BAREBOX_CMD_START(false)
 	.cmd		= do_false,
 	.usage		= "do nothing, unsuccessfully",
+	BAREBOX_CMD_GROUP(CMD_GRP_SCRIPT)
 	BAREBOX_CMD_COMPLETE(empty_complete)
 BAREBOX_CMD_END
 
diff --git a/commands/filetype.c b/commands/filetype.c
index f82a461..1d6b047 100644
--- a/commands/filetype.c
+++ b/commands/filetype.c
@@ -93,5 +93,6 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(filetype)
 	.cmd		= do_filetype,
 	.usage		= "detect file type",
+	BAREBOX_CMD_GROUP(CMD_GRP_FILE)
 	BAREBOX_CMD_HELP(cmd_filetype_help)
 BAREBOX_CMD_END
diff --git a/commands/flash.c b/commands/flash.c
index d22d6a0..e6c30bf 100644
--- a/commands/flash.c
+++ b/commands/flash.c
@@ -82,6 +82,7 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(erase)
 	.cmd		= do_flerase,
 	.usage		= "erase FLASH memory",
+	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_erase_help)
 BAREBOX_CMD_END
 
@@ -156,6 +157,7 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(protect)
 	.cmd		= do_protect,
 	.usage		= "enable flash write protection",
+	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_protect_help)
 BAREBOX_CMD_END
 
@@ -184,6 +186,7 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(unprotect)
 	.cmd		= do_protect,
 	.usage		= "disable flash write protection",
+	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_unprotect_help)
 BAREBOX_CMD_END
 
diff --git a/commands/global.c b/commands/global.c
index c526e65..20a8623 100644
--- a/commands/global.c
+++ b/commands/global.c
@@ -69,5 +69,6 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(global)
 	.cmd		= do_global,
 	.usage		= "create or set global variables",
+	BAREBOX_CMD_GROUP(CMD_GRP_ENV)
 	BAREBOX_CMD_HELP(cmd_global_help)
 BAREBOX_CMD_END
diff --git a/commands/go.c b/commands/go.c
index 2e7bc1e..4a40608 100644
--- a/commands/go.c
+++ b/commands/go.c
@@ -87,6 +87,7 @@ static const __maybe_unused char cmd_go_help[] =
 BAREBOX_CMD_START(go)
 	.cmd		= do_go,
 	.usage		= "start application at address or file",
+	BAREBOX_CMD_GROUP(CMD_GRP_BOOT)
 	BAREBOX_CMD_HELP(cmd_go_help)
 	BAREBOX_CMD_COMPLETE(command_var_complete)
 BAREBOX_CMD_END
diff --git a/commands/gpio.c b/commands/gpio.c
index a91e6e0..9d0802c 100644
--- a/commands/gpio.c
+++ b/commands/gpio.c
@@ -40,6 +40,7 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(gpio_get_value)
 	.cmd		= do_gpio_get_value,
 	.usage		= "return value of a gpio pin",
+	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_gpio_get_value_help)
 BAREBOX_CMD_END
 
@@ -66,6 +67,7 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(gpio_set_value)
 	.cmd		= do_gpio_set_value,
 	.usage		= "set a gpio's output value",
+	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_gpio_set_value_help)
 BAREBOX_CMD_END
 
@@ -93,6 +95,7 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(gpio_direction_input)
 	.cmd		= do_gpio_direction_input,
 	.usage		= "set direction of a gpio pin to input",
+	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_gpio_direction_input_help)
 BAREBOX_CMD_END
 
@@ -121,6 +124,7 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(gpio_direction_output)
 	.cmd		= do_gpio_direction_output,
 	.usage		= "set direction of a gpio pin to output",
+	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_gpio_direction_output_help)
 BAREBOX_CMD_END
 
diff --git a/commands/help.c b/commands/help.c
index a12d9c3..7f31ce1 100644
--- a/commands/help.c
+++ b/commands/help.c
@@ -19,8 +19,68 @@
 
 #include <common.h>
 #include <command.h>
+#include <getopt.h>
 #include <complete.h>
 
+
+static void list_group(int verbose, const char *grpname, uint32_t group)
+{
+	struct command *cmdtp;
+	bool first = true;
+	int pos = 0;
+	int len;
+
+	for_each_command(cmdtp) {
+		if (cmdtp->group != group)
+			continue;
+		if (first) {
+			first = false;
+			printf("%s commands:\n", grpname);
+			if (!verbose) {
+				printf("  ");
+				pos = 2;
+			}
+		}
+		if (verbose) {
+			printf("  %-21s %s\n", cmdtp->name, cmdtp->usage);
+			continue;
+		}
+		len = strlen(cmdtp->name);
+		if (pos + len + 2 > 77) {
+			printf("\n  %s", cmdtp->name);
+			pos = len + 2;
+		} else {
+			if (pos != 2) {
+				printf(", ");
+				pos += 2;
+			}
+			printf(cmdtp->name);
+			pos += len;
+		}
+	}
+	if (!first)
+		printf("\n");
+}
+
+static void list_commands(int verbose)
+{
+	putchar('\n');
+	list_group(verbose, "Information",           CMD_GRP_INFO);
+	list_group(verbose, "Boot",                  CMD_GRP_BOOT);
+	list_group(verbose, "Environment",           CMD_GRP_ENV);
+	list_group(verbose, "Partition",             CMD_GRP_PART);
+	list_group(verbose, "File",                  CMD_GRP_FILE);
+	list_group(verbose, "Scripting",             CMD_GRP_SCRIPT);
+	list_group(verbose, "Network",               CMD_GRP_NET);
+	list_group(verbose, "Console",               CMD_GRP_CONSOLE);
+	list_group(verbose, "Memory",                CMD_GRP_MEM);
+	list_group(verbose, "Hardware manipulation", CMD_GRP_HWMANIP);
+	list_group(verbose, "Miscellaneous",         CMD_GRP_MISC);
+	list_group(verbose, "Ungrouped",             0);
+	printf("Use 'help COMMAND' for more details.\n\n");
+}
+
+
 /*
  * Use puts() instead of printf() to avoid printf buffer overflow
  * for long help messages
@@ -28,23 +88,23 @@
 static int do_help(int argc, char *argv[])
 {
 	struct command *cmdtp;
-	int max_length = 0;
-
-	if (argc == 1) {	/* show list of commands */
-		for_each_command(cmdtp)
-			if(strlen(cmdtp->name) > max_length)
-				max_length = strlen(cmdtp->name);
+	int opt, verbose = 0;
 
-		for_each_command(cmdtp) {
-			if (!cmdtp->usage)
-				continue;
-			printf("%*s - %s\n", max_length, cmdtp->name, cmdtp->usage);
+	while ((opt = getopt(argc, argv, "v")) > 0) {
+		switch (opt) {
+		case 'v':
+			verbose = 1;
+			break;
 		}
+	}
+
+	if (optind == argc) {	/* show list of commands */
+		list_commands(verbose);
 		return 0;
 	}
 
 	/* command help (long version) */
-	if ((cmdtp = find_cmd(argv[1])) != NULL) {
+	if ((cmdtp = find_cmd(argv[optind])) != NULL) {
 		barebox_cmd_usage(cmdtp);
 		return 0;
 	} else {
@@ -59,9 +119,9 @@ static int do_help(int argc, char *argv[])
 static const __maybe_unused char cmd_help_help[] =
 "Show help information (for 'command')\n"
 "'help' prints online help for the monitor commands.\n\n"
-"Without arguments, it prints a short usage message for all commands.\n\n"
+"Without arguments, it lists all all commands.\n\n"
 "To get detailed help information for specific commands you can type\n"
-"'help' with one or more command names as arguments.\n";
+"'help' with a command names as argument.\n";
 
 static const char *help_aliases[] = { "?", NULL};
 
@@ -69,6 +129,7 @@ BAREBOX_CMD_START(help)
 	.cmd		= do_help,
 	.aliases	= help_aliases,
 	.usage		= "print online help",
+	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
 	BAREBOX_CMD_HELP(cmd_help_help)
 	BAREBOX_CMD_COMPLETE(command_complete)
 BAREBOX_CMD_END
diff --git a/commands/i2c.c b/commands/i2c.c
index 626255d..137cd85 100644
--- a/commands/i2c.c
+++ b/commands/i2c.c
@@ -63,6 +63,7 @@ static const __maybe_unused char cmd_i2c_probe_help[] =
 BAREBOX_CMD_START(i2c_probe)
 	.cmd		= do_i2c_probe,
 	.usage		= "probe for an i2c device",
+	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_i2c_probe_help)
 BAREBOX_CMD_END
 
@@ -140,6 +141,7 @@ static const __maybe_unused char cmd_i2c_write_help[] =
 BAREBOX_CMD_START(i2c_write)
 	.cmd		= do_i2c_write,
 	.usage		= "write to an i2c device",
+	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_i2c_write_help)
 BAREBOX_CMD_END
 
@@ -214,5 +216,6 @@ static const __maybe_unused char cmd_i2c_read_help[] =
 BAREBOX_CMD_START(i2c_read)
 	.cmd		= do_i2c_read,
 	.usage		= "read from an i2c device",
+	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_i2c_read_help)
 BAREBOX_CMD_END
diff --git a/commands/insmod.c b/commands/insmod.c
index f547e9d..5c7c43e 100644
--- a/commands/insmod.c
+++ b/commands/insmod.c
@@ -33,10 +33,11 @@ static int do_insmod(int argc, char *argv[])
 }
 
 static const __maybe_unused char cmd_insmod_help[] =
-"Usage: insmod <module>\n"; 
+"Usage: insmod <module>\n";
 
 BAREBOX_CMD_START(insmod)
 	.cmd		= do_insmod,
 	.usage		= "insert a module",
+	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
 	BAREBOX_CMD_HELP(cmd_insmod_help)
 BAREBOX_CMD_END
diff --git a/commands/iomemport.c b/commands/iomemport.c
index 652708c..d4a1672 100644
--- a/commands/iomemport.c
+++ b/commands/iomemport.c
@@ -50,6 +50,7 @@ static int do_iomem(int argc, char *argv[])
 BAREBOX_CMD_START(iomem)
 	.cmd		= do_iomem,
 	.usage		= "show iomem usage",
+	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
 BAREBOX_CMD_END
 
 #if IO_SPACE_LIMIT > 0
@@ -63,5 +64,6 @@ static int do_ioport(int argc, char *argv[])
 BAREBOX_CMD_START(ioport)
 	.cmd		= do_ioport,
 	.usage		= "show ioport usage",
+	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
 BAREBOX_CMD_END
 #endif
diff --git a/commands/led.c b/commands/led.c
index a4f117b..0e57d7e 100644
--- a/commands/led.c
+++ b/commands/led.c
@@ -88,5 +88,6 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(led)
 	.cmd		= do_led,
 	.usage		= "led <led> <value>",
+	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_led_help)
 BAREBOX_CMD_END
diff --git a/commands/let.c b/commands/let.c
index 644ede5..68c98e3 100644
--- a/commands/let.c
+++ b/commands/let.c
@@ -89,5 +89,6 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(let)
 	.cmd            = do_let,
 	.usage          = "evaluate arithmetic expressions",
+	BAREBOX_CMD_GROUP(CMD_GRP_SCRIPT)
 	BAREBOX_CMD_HELP(cmd_let_help)
 BAREBOX_CMD_END
diff --git a/commands/linux16.c b/commands/linux16.c
index 30fa2de..ac1265a 100644
--- a/commands/linux16.c
+++ b/commands/linux16.c
@@ -338,6 +338,7 @@ x86_boot_preparation for more info about how to use this command.</p>
 BAREBOX_CMD_START(linux16)
 	.cmd		= do_linux16,
 	.usage		= "boot a linux kernel",
+	BAREBOX_CMD_GROUP(CMD_GRP_BOOT)
 	BAREBOX_CMD_HELP(cmd_linux16_help)
 BAREBOX_CMD_END
 
diff --git a/commands/linux_exec.c b/commands/linux_exec.c
index ef00ee7..a057fc5 100644
--- a/commands/linux_exec.c
+++ b/commands/linux_exec.c
@@ -53,5 +53,6 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(linux_exec)
 	.cmd		= do_linux_exec,
 	.usage		= "Execute a command on the host",
+	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
 	BAREBOX_CMD_HELP(cmd_linux_exec_help)
 BAREBOX_CMD_END
diff --git a/commands/ln.c b/commands/ln.c
index 0237447..f622819 100644
--- a/commands/ln.c
+++ b/commands/ln.c
@@ -47,5 +47,6 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(ln)
 	.cmd		= do_ln,
 	.usage		= "symlink - make a new name for a file",
+	BAREBOX_CMD_GROUP(CMD_GRP_FILE)
 	BAREBOX_CMD_HELP(cmd_ln_help)
 BAREBOX_CMD_END
diff --git a/commands/loadb.c b/commands/loadb.c
index b527e00..6ff36dc 100644
--- a/commands/loadb.c
+++ b/commands/loadb.c
@@ -708,5 +708,6 @@ static const __maybe_unused char cmd_loadb_help[] =
 BAREBOX_CMD_START(loadb)
 	.cmd = do_load_serial_bin,
 	.usage = "Load binary file over serial line (kermit mode)",
+	BAREBOX_CMD_GROUP(CMD_GRP_BOOT)
 	BAREBOX_CMD_HELP(cmd_loadb_help)
 BAREBOX_CMD_END
diff --git a/commands/loadenv.c b/commands/loadenv.c
index a39ca8c..ef7ad13 100644
--- a/commands/loadenv.c
+++ b/commands/loadenv.c
@@ -122,5 +122,6 @@ ENVFS can only handle files, directories are skipped silently.
 BAREBOX_CMD_START(loadenv)
 	.cmd		= do_loadenv,
 	.usage		= "Load environment from ENVFS into DIRECTORY (default: /dev/env0 -> /env).",
+	BAREBOX_CMD_GROUP(CMD_GRP_ENV)
 	BAREBOX_CMD_HELP(cmd_loadenv_help)
 BAREBOX_CMD_END
diff --git a/commands/loads.c b/commands/loads.c
index 58cd24b..d67372b 100644
--- a/commands/loads.c
+++ b/commands/loads.c
@@ -277,6 +277,7 @@ static const __maybe_unused char cmd_loads_help[] =
 BAREBOX_CMD_START(loads)
 	.cmd		= do_load_serial,
 	.usage		= "load S-Record file over serial line",
+	BAREBOX_CMD_GROUP(CMD_GRP_BOOT)
 	BAREBOX_CMD_HELP(cmd_loads_help)
 BAREBOX_CMD_END
 
@@ -293,6 +294,7 @@ static const __maybe_unused char cmd_saves_help[] =
 BAREBOX_CMD_START(saves)
 	.cmd		= do_save_serial,
 	.usage		= "save S-Record file over serial line",
+	BAREBOX_CMD_GROUP(CMD_GRP_BOOT)
 	BAREBOX_CMD_HELP(cmd_saves_help)
 BAREBOX_CMD_END
 #endif	/* CONFIG_CMD_SAVES */
diff --git a/commands/loadxy.c b/commands/loadxy.c
index 93a423c..acc800b 100644
--- a/commands/loadxy.c
+++ b/commands/loadxy.c
@@ -236,6 +236,7 @@ static const __maybe_unused char cmd_loadx_help[] =
 BAREBOX_CMD_START(loadx)
 	.cmd = do_loadx,
 	.usage = "Load binary file over serial line (X-Modem)",
+	BAREBOX_CMD_GROUP(CMD_GRP_BOOT)
 BAREBOX_CMD_HELP(cmd_loadx_help)
 BAREBOX_CMD_END
 
@@ -248,6 +249,7 @@ static const __maybe_unused char cmd_loady_help[] =
 BAREBOX_CMD_START(loady)
 	.cmd = do_loady,
 	.usage = "Load binary file over serial line (Y-Modem or Y-Modem/G)",
+	BAREBOX_CMD_GROUP(CMD_GRP_BOOT)
 BAREBOX_CMD_HELP(cmd_loady_help)
 BAREBOX_CMD_END
 #endif
diff --git a/commands/login.c b/commands/login.c
index d9297fa..35ab84a 100644
--- a/commands/login.c
+++ b/commands/login.c
@@ -87,6 +87,7 @@ static const __maybe_unused char cmd_login_help[] =
 BAREBOX_CMD_START(login)
 	.cmd		= do_login,
 	.usage		= "login",
+	BAREBOX_CMD_GROUP(CMD_GRP_CONSOLE)
 	BAREBOX_CMD_HELP(cmd_login_help)
 	BAREBOX_CMD_COMPLETE(empty_complete)
 BAREBOX_CMD_END
diff --git a/commands/ls.c b/commands/ls.c
index f2d9903..60bbfe3 100644
--- a/commands/ls.c
+++ b/commands/ls.c
@@ -212,5 +212,6 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(ls)
 	.cmd		= do_ls,
 	.usage		= "list a file or directory",
+	BAREBOX_CMD_GROUP(CMD_GRP_FILE)
 	BAREBOX_CMD_HELP(cmd_ls_help)
 BAREBOX_CMD_END
diff --git a/commands/lsmod.c b/commands/lsmod.c
index e54eadc..751ecfe 100644
--- a/commands/lsmod.c
+++ b/commands/lsmod.c
@@ -16,5 +16,6 @@ static int do_lsmod(int argc, char *argv[])
 BAREBOX_CMD_START(lsmod)
 	.cmd		= do_lsmod,
 	.usage		= "list modules",
+	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
 	BAREBOX_CMD_COMPLETE(empty_complete)
 BAREBOX_CMD_END
diff --git a/commands/magicvar.c b/commands/magicvar.c
index b208d33..8f93227 100644
--- a/commands/magicvar.c
+++ b/commands/magicvar.c
@@ -17,4 +17,5 @@ static int do_magicvar(int argc, char *argv[])
 BAREBOX_CMD_START(magicvar)
 	.cmd		= do_magicvar,
 	.usage		= "List information about magic variables",
+	BAREBOX_CMD_GROUP(CMD_GRP_ENV)
 BAREBOX_CMD_END
diff --git a/commands/md.c b/commands/md.c
index 03c5905..e5eb705 100644
--- a/commands/md.c
+++ b/commands/md.c
@@ -112,5 +112,6 @@ static const __maybe_unused char cmd_md_help[] =
 BAREBOX_CMD_START(md)
 	.cmd		= do_mem_md,
 	.usage		= "memory display",
+	BAREBOX_CMD_GROUP(CMD_GRP_MEM)
 	BAREBOX_CMD_HELP(cmd_md_help)
 BAREBOX_CMD_END
diff --git a/commands/memcmp.c b/commands/memcmp.c
index 4a03862..ea178c9 100644
--- a/commands/memcmp.c
+++ b/commands/memcmp.c
@@ -144,5 +144,6 @@ static const __maybe_unused char cmd_memcmp_help[] =
 BAREBOX_CMD_START(memcmp)
 	.cmd		= do_memcmp,
 	.usage		= "memory compare",
+	BAREBOX_CMD_GROUP(CMD_GRP_MEM)
 	BAREBOX_CMD_HELP(cmd_memcmp_help)
 BAREBOX_CMD_END
diff --git a/commands/memcpy.c b/commands/memcpy.c
index 98f099f..5a791b0 100644
--- a/commands/memcpy.c
+++ b/commands/memcpy.c
@@ -141,5 +141,6 @@ static const __maybe_unused char cmd_memcpy_help[] =
 BAREBOX_CMD_START(memcpy)
 	.cmd		= do_memcpy,
 	.usage		= "memory copy",
+	BAREBOX_CMD_GROUP(CMD_GRP_MEM)
 	BAREBOX_CMD_HELP(cmd_memcpy_help)
 BAREBOX_CMD_END
diff --git a/commands/meminfo.c b/commands/meminfo.c
index 6e1e8c3..a73c462 100644
--- a/commands/meminfo.c
+++ b/commands/meminfo.c
@@ -31,5 +31,6 @@ static int do_meminfo(int argc, char *argv[])
 BAREBOX_CMD_START(meminfo)
 	.cmd		= do_meminfo,
 	.usage		= "print info about memory usage",
+	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
 	BAREBOX_CMD_COMPLETE(empty_complete)
 BAREBOX_CMD_END
diff --git a/commands/memset.c b/commands/memset.c
index 48e55bc..d557b9e 100644
--- a/commands/memset.c
+++ b/commands/memset.c
@@ -97,5 +97,6 @@ static const __maybe_unused char cmd_memset_help[] =
 BAREBOX_CMD_START(memset)
 	.cmd		= do_memset,
 	.usage		= "memory fill",
+	BAREBOX_CMD_GROUP(CMD_GRP_MEM)
 	BAREBOX_CMD_HELP(cmd_memset_help)
 BAREBOX_CMD_END
diff --git a/commands/memtest.c b/commands/memtest.c
index 5854375..8308c6c 100644
--- a/commands/memtest.c
+++ b/commands/memtest.c
@@ -239,5 +239,6 @@ static const __maybe_unused char cmd_memtest_help[] =
 BAREBOX_CMD_START(memtest)
 	.cmd		= do_memtest,
 	.usage		= "Memory Test",
+	BAREBOX_CMD_GROUP(CMD_GRP_MEM)
 	BAREBOX_CMD_HELP(cmd_memtest_help)
 BAREBOX_CMD_END
diff --git a/commands/menu.c b/commands/menu.c
index 9b96942..99cb7cb 100644
--- a/commands/menu.c
+++ b/commands/menu.c
@@ -472,5 +472,6 @@ static const __maybe_unused char cmd_menu_help[] =
 BAREBOX_CMD_START(menu)
 	.cmd		= do_menu,
 	.usage		= "Menu Management",
+	BAREBOX_CMD_GROUP(CMD_GRP_CONSOLE)
 	BAREBOX_CMD_HELP(cmd_menu_help)
 BAREBOX_CMD_END
diff --git a/commands/menutree.c b/commands/menutree.c
index 3b1a263..4defa66 100644
--- a/commands/menutree.c
+++ b/commands/menutree.c
@@ -56,5 +56,6 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(menutree)
 	.cmd	= do_menutree,
 	.usage		= "create a menu from a directory structure",
+	BAREBOX_CMD_GROUP(CMD_GRP_CONSOLE)
 	BAREBOX_CMD_HELP(cmd_menutree_help)
 BAREBOX_CMD_END
diff --git a/commands/miitool.c b/commands/miitool.c
index 1e5d4eb..a382e67 100644
--- a/commands/miitool.c
+++ b/commands/miitool.c
@@ -298,5 +298,6 @@ adapters use an MII to autonegotiate link speed and duplex setting.
 BAREBOX_CMD_START(miitool)
 	.cmd		= do_miitool,
 	.usage		= "view media-independent interface status",
+	BAREBOX_CMD_GROUP(CMD_GRP_NET)
 	BAREBOX_CMD_HELP(cmd_miitool_help)
 BAREBOX_CMD_END
diff --git a/commands/mkdir.c b/commands/mkdir.c
index 55df379..3a55c0c 100644
--- a/commands/mkdir.c
+++ b/commands/mkdir.c
@@ -66,5 +66,6 @@ static const __maybe_unused char cmd_mkdir_help[] =
 BAREBOX_CMD_START(mkdir)
 	.cmd		= do_mkdir,
 	.usage		= "make directories",
+	BAREBOX_CMD_GROUP(CMD_GRP_FILE)
 	BAREBOX_CMD_HELP(cmd_mkdir_help)
 BAREBOX_CMD_END
diff --git a/commands/mm.c b/commands/mm.c
index f51fd27..b4565b9 100644
--- a/commands/mm.c
+++ b/commands/mm.c
@@ -113,5 +113,6 @@ static const __maybe_unused char cmd_mm_help[] =
 BAREBOX_CMD_START(mm)
 	.cmd		= do_mem_mm,
 	.usage		= "memory modify write with mask",
+	BAREBOX_CMD_GROUP(CMD_GRP_MEM)
 	BAREBOX_CMD_HELP(cmd_mm_help)
 BAREBOX_CMD_END
diff --git a/commands/mount.c b/commands/mount.c
index 8629bac..0996a6a 100644
--- a/commands/mount.c
+++ b/commands/mount.c
@@ -163,5 +163,6 @@ the filesystem has been unmounted.
 BAREBOX_CMD_START(mount)
 	.cmd		= do_mount,
 	.usage		= "Mount a filesystem of a given type to a mountpoint or list mounted filesystems.",
+	BAREBOX_CMD_GROUP(CMD_GRP_PART)
 	BAREBOX_CMD_HELP(cmd_mount_help)
 BAREBOX_CMD_END
diff --git a/commands/msleep.c b/commands/msleep.c
index c9fa23c..0ac8cf8 100644
--- a/commands/msleep.c
+++ b/commands/msleep.c
@@ -37,4 +37,5 @@ static int do_msleep(int argc, char *argv[])
 BAREBOX_CMD_START(msleep)
 	.cmd		= do_msleep,
 	.usage		= "delay execution for n milliseconds",
+	BAREBOX_CMD_GROUP(CMD_GRP_SCRIPT)
 BAREBOX_CMD_END
diff --git a/commands/mw.c b/commands/mw.c
index d7d73a8..5c0c992 100644
--- a/commands/mw.c
+++ b/commands/mw.c
@@ -100,5 +100,6 @@ static const __maybe_unused char cmd_mw_help[] =
 BAREBOX_CMD_START(mw)
 	.cmd		= do_mem_mw,
 	.usage		= "memory write (fill)",
+	BAREBOX_CMD_GROUP(CMD_GRP_MEM)
 	BAREBOX_CMD_HELP(cmd_mw_help)
 BAREBOX_CMD_END
diff --git a/commands/nand.c b/commands/nand.c
index 39fb64e..137fdac 100644
--- a/commands/nand.c
+++ b/commands/nand.c
@@ -110,5 +110,6 @@ static const __maybe_unused char cmd_nand_help[] =
 BAREBOX_CMD_START(nand)
 	.cmd		= do_nand,
 	.usage		= "NAND specific handling",
+	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_nand_help)
 BAREBOX_CMD_END
diff --git a/commands/nandtest.c b/commands/nandtest.c
index 373ee2c..8af75ba 100644
--- a/commands/nandtest.c
+++ b/commands/nandtest.c
@@ -349,5 +349,6 @@ static const __maybe_unused char cmd_nandtest_help[] =
 BAREBOX_CMD_START(nandtest)
 	.cmd		= do_nandtest,
 	.usage		= "NAND Test",
+	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_nandtest_help)
 BAREBOX_CMD_END
diff --git a/commands/net.c b/commands/net.c
index 49ffecc..19e4541 100644
--- a/commands/net.c
+++ b/commands/net.c
@@ -63,6 +63,7 @@ static const __maybe_unused char cmd_ethact_help[] =
 BAREBOX_CMD_START(ethact)
 	.cmd		= do_ethact,
 	.usage		= "set current ethernet device",
+	BAREBOX_CMD_GROUP(CMD_GRP_NET)
 	BAREBOX_CMD_HELP(cmd_ethact_help)
 	BAREBOX_CMD_COMPLETE(eth_complete)
 BAREBOX_CMD_END
diff --git a/commands/of_node.c b/commands/of_node.c
index b1894b1..17deb50 100644
--- a/commands/of_node.c
+++ b/commands/of_node.c
@@ -102,5 +102,6 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(of_node)
 	.cmd		= do_of_node,
 	.usage		= "handle of nodes",
+	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
 	BAREBOX_CMD_HELP(cmd_of_node_help)
 BAREBOX_CMD_END
diff --git a/commands/of_property.c b/commands/of_property.c
index 4518c72..dcb85ec 100644
--- a/commands/of_property.c
+++ b/commands/of_property.c
@@ -314,5 +314,6 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(of_property)
 	.cmd		= do_of_property,
 	.usage		= "handle of properties",
+	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
 	BAREBOX_CMD_HELP(cmd_of_property_help)
 BAREBOX_CMD_END
diff --git a/commands/oftree.c b/commands/oftree.c
index 3fa516c..a0e6802 100644
--- a/commands/oftree.c
+++ b/commands/oftree.c
@@ -204,5 +204,6 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(oftree)
 	.cmd		= do_oftree,
 	.usage		= "handle devicetrees",
+	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
 	BAREBOX_CMD_HELP(cmd_oftree_help)
 BAREBOX_CMD_END
diff --git a/commands/partition.c b/commands/partition.c
index 44b91d1..e33358a 100644
--- a/commands/partition.c
+++ b/commands/partition.c
@@ -187,6 +187,7 @@ kernel or cmdline mtd partitions.
 BAREBOX_CMD_START(addpart)
 	.cmd = do_addpart,
 	.usage = "adds a partition table to a device",
+	BAREBOX_CMD_GROUP(CMD_GRP_PART)
 	BAREBOX_CMD_HELP(cmd_addpart_help)
 BAREBOX_CMD_END
 
@@ -224,6 +225,7 @@ argument list is taken as a list of partitions to be deleted.
 BAREBOX_CMD_START(delpart)
 	.cmd = do_delpart,
 	.usage = "delete partition(s)",
+	BAREBOX_CMD_GROUP(CMD_GRP_PART)
 	BAREBOX_CMD_HELP(cmd_delpart_help)
 	BAREBOX_CMD_COMPLETE(devfs_partition_complete)
 BAREBOX_CMD_END
diff --git a/commands/passwd.c b/commands/passwd.c
index 368c401..47f7dab 100644
--- a/commands/passwd.c
+++ b/commands/passwd.c
@@ -92,6 +92,7 @@ static const __maybe_unused char cmd_passwd_help[] =
 BAREBOX_CMD_START(passwd)
 	.cmd		= do_passwd,
 	.usage		= "passwd",
+	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
 	BAREBOX_CMD_HELP(cmd_passwd_help)
 	BAREBOX_CMD_COMPLETE(empty_complete)
 BAREBOX_CMD_END
diff --git a/commands/poweroff.c b/commands/poweroff.c
index ebb146c..be749ff 100644
--- a/commands/poweroff.c
+++ b/commands/poweroff.c
@@ -34,4 +34,5 @@ static int cmd_poweroff(int argc, char *argv[])
 BAREBOX_CMD_START(poweroff)
 	.cmd		= cmd_poweroff,
 	.usage		= "Perform POWER OFF of the board",
+	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 BAREBOX_CMD_END
diff --git a/commands/printenv.c b/commands/printenv.c
index 10e882a..27ca10d 100644
--- a/commands/printenv.c
+++ b/commands/printenv.c
@@ -73,5 +73,6 @@ printed.</p>
 BAREBOX_CMD_START(printenv)
 	.cmd		= do_printenv,
 	.usage		= "Print value of one or all environment variables.",
+	BAREBOX_CMD_GROUP(CMD_GRP_ENV)
 	BAREBOX_CMD_HELP(cmd_printenv_help)
 BAREBOX_CMD_END
diff --git a/commands/pwd.c b/commands/pwd.c
index 6fe4cf3..fb652f5 100644
--- a/commands/pwd.c
+++ b/commands/pwd.c
@@ -30,5 +30,6 @@ static int do_pwd(int argc, char *argv[])
 BAREBOX_CMD_START(pwd)
 	.cmd		= do_pwd,
 	.usage		= "print working directory",
+	BAREBOX_CMD_GROUP(CMD_GRP_FILE)
 	BAREBOX_CMD_COMPLETE(empty_complete)
 BAREBOX_CMD_END
diff --git a/commands/readf.c b/commands/readf.c
index 6314c7e..be88dfa 100644
--- a/commands/readf.c
+++ b/commands/readf.c
@@ -59,5 +59,6 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(readf)
 	.cmd		= do_readf,
 	.usage		= "read file into variable",
+	BAREBOX_CMD_GROUP(CMD_GRP_SCRIPT)
 	BAREBOX_CMD_HELP(cmd_readf_help)
 BAREBOX_CMD_END
diff --git a/commands/readline.c b/commands/readline.c
index 60670fa..c1a2496 100644
--- a/commands/readline.c
+++ b/commands/readline.c
@@ -48,6 +48,7 @@ static const __maybe_unused char cmd_readline_help[] =
 BAREBOX_CMD_START(readline)
 	.cmd		= do_readline,
 	.usage		= "prompt for user input",
+	BAREBOX_CMD_GROUP(CMD_GRP_SCRIPT)
 	BAREBOX_CMD_HELP(cmd_readline_help)
 BAREBOX_CMD_END
 
diff --git a/commands/readlink.c b/commands/readlink.c
index d2671e0..8d2a191 100644
--- a/commands/readlink.c
+++ b/commands/readlink.c
@@ -76,5 +76,6 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(readlink)
 	.cmd		= do_readlink,
 	.usage		= "read value of a symbolic link",
+	BAREBOX_CMD_GROUP(CMD_GRP_FILE)
 	BAREBOX_CMD_HELP(cmd_readlink_help)
 BAREBOX_CMD_END
diff --git a/commands/reginfo.c b/commands/reginfo.c
index f5bc8a0..92108b9 100644
--- a/commands/reginfo.c
+++ b/commands/reginfo.c
@@ -30,5 +30,6 @@ static int do_reginfo(int argc, char *argv[])
 BAREBOX_CMD_START(reginfo)
 	.cmd		= do_reginfo,
 	.usage		= "print register information",
+	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
 	BAREBOX_CMD_COMPLETE(empty_complete)
 BAREBOX_CMD_END
diff --git a/commands/regulator.c b/commands/regulator.c
index 42dcd0a..bdf4d88 100644
--- a/commands/regulator.c
+++ b/commands/regulator.c
@@ -30,4 +30,5 @@ static int do_regulator(int argc, char *argv[])
 BAREBOX_CMD_START(regulator)
 	.cmd		= do_regulator,
 	.usage		= "list regulators",
+	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
 BAREBOX_CMD_END
diff --git a/commands/reset.c b/commands/reset.c
index 79885f4..9478618 100644
--- a/commands/reset.c
+++ b/commands/reset.c
@@ -54,6 +54,7 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(reset)
 	.cmd		= cmd_reset,
 	.usage		= "Perform RESET of the CPU",
+	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_reset_help)
 	BAREBOX_CMD_COMPLETE(empty_complete)
 BAREBOX_CMD_END
diff --git a/commands/rm.c b/commands/rm.c
index 5486005..39544f4 100644
--- a/commands/rm.c
+++ b/commands/rm.c
@@ -66,5 +66,6 @@ static const __maybe_unused char cmd_rm_help[] =
 BAREBOX_CMD_START(rm)
 	.cmd		= do_rm,
 	.usage		= "remove files",
+	BAREBOX_CMD_GROUP(CMD_GRP_FILE)
 	BAREBOX_CMD_HELP(cmd_rm_help)
 BAREBOX_CMD_END
diff --git a/commands/rmdir.c b/commands/rmdir.c
index 6034a10..f756537 100644
--- a/commands/rmdir.c
+++ b/commands/rmdir.c
@@ -28,5 +28,6 @@ static const __maybe_unused char cmd_rmdir_help[] =
 BAREBOX_CMD_START(rmdir)
 	.cmd		= do_rmdir,
 	.usage		= "remove directorie(s)",
+	BAREBOX_CMD_GROUP(CMD_GRP_FILE)
 	BAREBOX_CMD_HELP(cmd_rmdir_help)
 BAREBOX_CMD_END
diff --git a/commands/saveenv.c b/commands/saveenv.c
index cb2b01d..866c91f 100644
--- a/commands/saveenv.c
+++ b/commands/saveenv.c
@@ -55,6 +55,7 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(saveenv)
 	.cmd		= do_saveenv,
 	.usage		= "save environment to persistent storage",
+	BAREBOX_CMD_GROUP(CMD_GRP_ENV)
 	BAREBOX_CMD_HELP(cmd_saveenv_help)
 BAREBOX_CMD_END
 
diff --git a/commands/setenv.c b/commands/setenv.c
index 57ba71e..ff8ef9b 100644
--- a/commands/setenv.c
+++ b/commands/setenv.c
@@ -53,5 +53,6 @@ in use. Within the hush shell, \c setenv is not required.</p>
 BAREBOX_CMD_START(setenv)
 	.cmd		= do_setenv,
 	.usage		= "set environment variables",
+	BAREBOX_CMD_GROUP(CMD_GRP_ENV)
 	BAREBOX_CMD_HELP(cmd_setenv_help)
 BAREBOX_CMD_END
diff --git a/commands/sleep.c b/commands/sleep.c
index 2574804..e39e2d3 100644
--- a/commands/sleep.c
+++ b/commands/sleep.c
@@ -44,5 +44,6 @@ static int do_sleep(int argc, char *argv[])
 BAREBOX_CMD_START(sleep)
 	.cmd		= do_sleep,
 	.usage		= "delay execution for n seconds",
+	BAREBOX_CMD_GROUP(CMD_GRP_SCRIPT)
 	BAREBOX_CMD_COMPLETE(command_var_complete)
 BAREBOX_CMD_END
diff --git a/commands/spi.c b/commands/spi.c
index 79fc539..ff27a7b 100644
--- a/commands/spi.c
+++ b/commands/spi.c
@@ -128,5 +128,6 @@ static const __maybe_unused char cmd_spi_help[] =
 BAREBOX_CMD_START(spi)
 	.cmd		= do_spi,
 	.usage		= "write/read spi device",
+	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_spi_help)
 BAREBOX_CMD_END
diff --git a/commands/splash.c b/commands/splash.c
index 0955c01..24ef47a 100644
--- a/commands/splash.c
+++ b/commands/splash.c
@@ -101,5 +101,6 @@ color depth.
 BAREBOX_CMD_START(splash)
 	.cmd		= do_splash,
 	.usage		= "show a bmp image",
+	BAREBOX_CMD_GROUP(CMD_GRP_CONSOLE)
 	BAREBOX_CMD_HELP(cmd_splash_help)
 BAREBOX_CMD_END
diff --git a/commands/test.c b/commands/test.c
index b3cd164..3f652f4 100644
--- a/commands/test.c
+++ b/commands/test.c
@@ -237,5 +237,6 @@ BAREBOX_CMD_START(test)
 	.aliases	= test_aliases,
 	.cmd		= do_test,
 	.usage		= cmd_test_usage,
+	BAREBOX_CMD_GROUP(CMD_GRP_SCRIPT)
 	BAREBOX_CMD_HELP(cmd_test_help)
 BAREBOX_CMD_END
diff --git a/commands/tftp.c b/commands/tftp.c
index 64cab2f..84c69f9 100644
--- a/commands/tftp.c
+++ b/commands/tftp.c
@@ -99,5 +99,6 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(tftp)
 	.cmd		= do_tftpb,
 	.usage		= "(up-)Load file using tftp protocol",
+	BAREBOX_CMD_GROUP(CMD_GRP_NET)
 	BAREBOX_CMD_HELP(cmd_tftp_help)
 BAREBOX_CMD_END
diff --git a/commands/time.c b/commands/time.c
index ffd3062..6a696c2 100644
--- a/commands/time.c
+++ b/commands/time.c
@@ -53,5 +53,6 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(time)
 	.cmd		= do_time,
 	.usage		= "measure execution time of a command",
+	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
 	BAREBOX_CMD_HELP(cmd_time_help)
 BAREBOX_CMD_END
diff --git a/commands/timeout.c b/commands/timeout.c
index feb27f5..0e81583 100644
--- a/commands/timeout.c
+++ b/commands/timeout.c
@@ -114,6 +114,7 @@ static const __maybe_unused char cmd_timeout_help[] =
 BAREBOX_CMD_START(timeout)
 	.cmd		= do_timeout,
 	.usage		= "wait for a specified timeout",
+	BAREBOX_CMD_GROUP(CMD_GRP_CONSOLE)
 	BAREBOX_CMD_HELP(cmd_timeout_help)
 BAREBOX_CMD_END
 
diff --git a/commands/trigger.c b/commands/trigger.c
index de50bdd..93b4416 100644
--- a/commands/trigger.c
+++ b/commands/trigger.c
@@ -99,6 +99,7 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(trigger)
 	.cmd		= do_trigger,
 	.usage		= "handle LED triggers",
+	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_trigger_help)
 BAREBOX_CMD_END
 
diff --git a/commands/true.c b/commands/true.c
index a09776b..6ebbd72 100644
--- a/commands/true.c
+++ b/commands/true.c
@@ -29,6 +29,7 @@ static int do_true(int argc, char *argv[])
 BAREBOX_CMD_START(true)
 	.cmd		= do_true,
 	.usage		= "do nothing, successfully",
+	BAREBOX_CMD_GROUP(CMD_GRP_SCRIPT)
 	BAREBOX_CMD_COMPLETE(empty_complete)
 BAREBOX_CMD_END
 
diff --git a/commands/ubi.c b/commands/ubi.c
index 8a409c2..9a70db1 100644
--- a/commands/ubi.c
+++ b/commands/ubi.c
@@ -52,6 +52,7 @@ static const __maybe_unused char cmd_ubimkvol_help[] =
 BAREBOX_CMD_START(ubimkvol)
 	.cmd		= do_ubimkvol,
 	.usage		= "create an ubi volume",
+	BAREBOX_CMD_GROUP(CMD_GRP_PART)
 	BAREBOX_CMD_HELP(cmd_ubimkvol_help)
 BAREBOX_CMD_END
 
@@ -106,6 +107,7 @@ static const __maybe_unused char cmd_ubiattach_help[] =
 BAREBOX_CMD_START(ubiattach)
 	.cmd		= do_ubiattach,
 	.usage		= "attach a mtd dev to ubi",
+	BAREBOX_CMD_GROUP(CMD_GRP_PART)
 	BAREBOX_CMD_HELP(cmd_ubiattach_help)
 BAREBOX_CMD_END
 
@@ -132,6 +134,7 @@ static const __maybe_unused char cmd_ubidetach_help[] =
 BAREBOX_CMD_START(ubidetach)
 	.cmd		= do_ubidetach,
 	.usage		= "detach an ubi dev",
+	BAREBOX_CMD_GROUP(CMD_GRP_PART)
 	BAREBOX_CMD_HELP(cmd_ubidetach_help)
 BAREBOX_CMD_END
 
@@ -167,6 +170,7 @@ static const __maybe_unused char cmd_ubirmvol_help[] =
 BAREBOX_CMD_START(ubirmvol)
 	.cmd		= do_ubirmvol,
 	.usage		= "delete an ubi volume",
+	BAREBOX_CMD_GROUP(CMD_GRP_PART)
 	BAREBOX_CMD_HELP(cmd_ubirmvol_help)
 BAREBOX_CMD_END
 
diff --git a/commands/ubiformat.c b/commands/ubiformat.c
index 5b4e572..98e8c52 100644
--- a/commands/ubiformat.c
+++ b/commands/ubiformat.c
@@ -793,5 +793,6 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(ubiformat)
 	.cmd		= do_ubiformat,
 	.usage		= "format an ubi volume",
+	BAREBOX_CMD_GROUP(CMD_GRP_PART)
 	BAREBOX_CMD_HELP(cmd_ubiformat_help)
 BAREBOX_CMD_END
diff --git a/commands/uimage.c b/commands/uimage.c
index bdc7444..a4bc2cc 100644
--- a/commands/uimage.c
+++ b/commands/uimage.c
@@ -101,5 +101,6 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(uimage)
 	.cmd		= do_uimage,
 	.usage		= "extract/verify uImage",
+	BAREBOX_CMD_GROUP(CMD_GRP_BOOT)
 	BAREBOX_CMD_HELP(cmd_uimage_help)
 BAREBOX_CMD_END
diff --git a/commands/umount.c b/commands/umount.c
index f0f9fce..39ce56c 100644
--- a/commands/umount.c
+++ b/commands/umount.c
@@ -36,5 +36,6 @@ static const __maybe_unused char cmd_umount_help[] =
 BAREBOX_CMD_START(umount)
 	.cmd		= do_umount,
 	.usage		= "umount a filesystem",
+	BAREBOX_CMD_GROUP(CMD_GRP_PART)
 	BAREBOX_CMD_HELP(cmd_umount_help)
 BAREBOX_CMD_END
diff --git a/commands/uncompress.c b/commands/uncompress.c
index 58c8c96..0b4398f 100644
--- a/commands/uncompress.c
+++ b/commands/uncompress.c
@@ -62,6 +62,7 @@ static const __maybe_unused char cmd_uncompress_help[] =
 BAREBOX_CMD_START(uncompress)
         .cmd            = do_uncompress,
         .usage          = "uncompress a compressed file",
+        BAREBOX_CMD_GROUP(CMD_GRP_FILE)
         BAREBOX_CMD_HELP(cmd_uncompress_help)
 BAREBOX_CMD_END
 
diff --git a/commands/usb.c b/commands/usb.c
index 9aee430..6e40a60 100644
--- a/commands/usb.c
+++ b/commands/usb.c
@@ -49,6 +49,7 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(usb)
 	.cmd		= do_usb,
 	.usage		= "(re-)detect USB devices",
+	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_usb_help)
 	BAREBOX_CMD_COMPLETE(empty_complete)
 BAREBOX_CMD_END
diff --git a/commands/usbserial.c b/commands/usbserial.c
index 969fd25..ee4e83d 100644
--- a/commands/usbserial.c
+++ b/commands/usbserial.c
@@ -98,5 +98,6 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(usbserial)
 	.cmd		= do_usbserial,
 	.usage		= "Serial gadget enable/disable",
+	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_usbserial_help)
 BAREBOX_CMD_END
diff --git a/commands/version.c b/commands/version.c
index 6578fdd..e2f0f5f 100644
--- a/commands/version.c
+++ b/commands/version.c
@@ -30,6 +30,7 @@ static int do_version(int argc, char *argv[])
 BAREBOX_CMD_START(version)
 	.cmd		= do_version,
 	.usage		= "print monitor version",
+	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
 	BAREBOX_CMD_COMPLETE(empty_complete)
 BAREBOX_CMD_END
 
diff --git a/commands/wd.c b/commands/wd.c
index 080bab9..bc5587f 100644
--- a/commands/wd.c
+++ b/commands/wd.c
@@ -64,5 +64,6 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(wd)
 	.cmd = do_wd,
 	.usage = "enable/disable/trigger the watchdog",
+	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_wd_help)
 BAREBOX_CMD_END
diff --git a/common/hush.c b/common/hush.c
index 1447fdb..5893c51 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -1940,6 +1940,7 @@ static const __maybe_unused char cmd_sh_help[] =
 BAREBOX_CMD_START(sh)
 	.cmd		= do_sh,
 	.usage		= "run shell script",
+	BAREBOX_CMD_GROUP(CMD_GRP_SCRIPT)
 	BAREBOX_CMD_HELP(cmd_sh_help)
 BAREBOX_CMD_END
 
@@ -1983,6 +1984,7 @@ BAREBOX_CMD_START(source)
 	.aliases	= source_aliases,
 	.cmd		= do_source,
 	.usage		= cmd_source_usage,
+	BAREBOX_CMD_GROUP(CMD_GRP_SCRIPT)
 	BAREBOX_CMD_HELP(cmd_source_help)
 BAREBOX_CMD_END
 
@@ -2004,6 +2006,7 @@ static const __maybe_unused char cmd_exit_help[] =
 BAREBOX_CMD_START(exit)
 	.cmd		= do_dummy_command,
 	.usage		= "exit script",
+	BAREBOX_CMD_GROUP(CMD_GRP_SCRIPT)
 	BAREBOX_CMD_HELP(cmd_exit_help)
 BAREBOX_CMD_END
 
@@ -2020,6 +2023,7 @@ static const __maybe_unused char cmd_getopt_help[] =
 BAREBOX_CMD_START(getopt)
 	.cmd		= do_dummy_command,
 	.usage		= "getopt <optstring> <var>",
+	BAREBOX_CMD_GROUP(CMD_GRP_SCRIPT)
 	BAREBOX_CMD_HELP(cmd_getopt_help)
 BAREBOX_CMD_END
 #endif
diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index 193c36c..2068a1e 100644
--- a/drivers/gpio/gpiolib.c
+++ b/drivers/gpio/gpiolib.c
@@ -348,6 +348,7 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(gpiolib)
 	.cmd		= do_gpiolib,
 	.usage		= "dump current registered gpio",
+	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
 	BAREBOX_CMD_HELP(cmd_gpiolib_help)
 	BAREBOX_CMD_COMPLETE(empty_complete)
 BAREBOX_CMD_END
diff --git a/drivers/mtd/nand/nand_imx_bbm.c b/drivers/mtd/nand/nand_imx_bbm.c
index 135d74e..670a5e1 100644
--- a/drivers/mtd/nand/nand_imx_bbm.c
+++ b/drivers/mtd/nand/nand_imx_bbm.c
@@ -219,5 +219,6 @@ static const __maybe_unused char cmd_imx_nand_bbm_help[] =
 BAREBOX_CMD_START(imx_nand_bbm)
 	.cmd		= do_imx_nand_bbm,
 	.usage		= "create bbt for i.MX NAND",
+	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_imx_nand_bbm_help)
 BAREBOX_CMD_END
diff --git a/drivers/mtd/nand/nand_s3c24xx.c b/drivers/mtd/nand/nand_s3c24xx.c
index 4406352..883d7dd 100644
--- a/drivers/mtd/nand/nand_s3c24xx.c
+++ b/drivers/mtd/nand/nand_s3c24xx.c
@@ -644,6 +644,7 @@ static const __maybe_unused char cmd_nand_boot_test_help[] =
 BAREBOX_CMD_START(nand_boot_test)
 	.cmd		= do_nand_boot_test,
 	.usage		= "load an image from NAND",
+	BAREBOX_CMD_GROUP(CMD_GRP_BOOT)
 	BAREBOX_CMD_HELP(cmd_nand_boot_test_help)
 BAREBOX_CMD_END
 #endif
diff --git a/drivers/usb/gadget/u_serial.c b/drivers/usb/gadget/u_serial.c
index dbadbe4..c2072dc 100644
--- a/drivers/usb/gadget/u_serial.c
+++ b/drivers/usb/gadget/u_serial.c
@@ -511,6 +511,7 @@ static int do_mycdev(int argc, char *argv[])
 
 BAREBOX_CMD_START(mycdev)
 	.cmd		= do_mycdev,
+	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_COMPLETE(empty_complete)
 BAREBOX_CMD_END
 
diff --git a/include/command.h b/include/command.h
index ffc722c..15ce8d4 100644
--- a/include/command.h
+++ b/include/command.h
@@ -50,6 +50,7 @@ struct command {
 	const char	*usage;		/* Usage message	(short)	*/
 
 	struct list_head list;		/* List of commands		*/
+	uint32_t	group;
 #ifdef	CONFIG_LONGHELP
 	const char	*help;		/* Help  message	(long)	*/
 #endif
@@ -73,6 +74,19 @@ void barebox_cmd_usage(struct command *cmdtp);
 #define COMMAND_ERROR		1
 #define COMMAND_ERROR_USAGE	2
 
+/* Note: keep this list in sync with commands/command.c */
+#define CMD_GRP_INFO		1
+#define CMD_GRP_BOOT		2
+#define CMD_GRP_ENV		3
+#define CMD_GRP_FILE		4
+#define CMD_GRP_PART		5
+#define CMD_GRP_SCRIPT		6
+#define CMD_GRP_NET		7
+#define CMD_GRP_CONSOLE		8
+#define CMD_GRP_MEM		9
+#define CMD_GRP_HWMANIP		10
+#define CMD_GRP_MISC		11
+
 #endif	/* __ASSEMBLY__ */
 
 #ifndef DOXYGEN_SHOULD_SKIP_THIS
@@ -108,6 +122,8 @@ static const __maybe_unused char cmd_##_name##_help[] =
 #define BAREBOX_CMD_HELP(text)
 #endif
 
+#define BAREBOX_CMD_GROUP(grp)	.group = grp,
+
 #endif /* DOXYGEN_SHOULD_SKIP_THIS */
 
 int register_command(struct command *);
diff --git a/net/dhcp.c b/net/dhcp.c
index e0c231f..71d86d6 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -816,6 +816,7 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(dhcp)
 	.cmd		= do_dhcp,
 	.usage		= "invoke dhcp client to obtain ip/boot params",
+	BAREBOX_CMD_GROUP(CMD_GRP_NET)
 	BAREBOX_CMD_HELP(cmd_dhcp_help)
 	BAREBOX_CMD_COMPLETE(empty_complete)
 BAREBOX_CMD_END
diff --git a/net/dns.c b/net/dns.c
index afd2663..847458b 100644
--- a/net/dns.c
+++ b/net/dns.c
@@ -266,6 +266,7 @@ static const __maybe_unused char cmd_host_help[] =
 BAREBOX_CMD_START(host)
 	.cmd		= do_host,
 	.usage		= "resolve a hostname",
+	BAREBOX_CMD_GROUP(CMD_GRP_NET)
 	BAREBOX_CMD_HELP(cmd_host_help)
 BAREBOX_CMD_END
 
diff --git a/net/ifup.c b/net/ifup.c
index 409b338..7bb273b 100644
--- a/net/ifup.c
+++ b/net/ifup.c
@@ -179,6 +179,7 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(ifup)
 	.cmd		= do_ifup,
 	.usage		= "Bring up network interfaces",
+	BAREBOX_CMD_GROUP(CMD_GRP_NET)
 	BAREBOX_CMD_HELP(cmd_ifup_help)
 BAREBOX_CMD_END
 
diff --git a/net/nfs.c b/net/nfs.c
index 9cb7dc9..94260b9 100644
--- a/net/nfs.c
+++ b/net/nfs.c
@@ -732,6 +732,7 @@ static const __maybe_unused char cmd_nfs_help[] =
 BAREBOX_CMD_START(nfs)
 	.cmd		= do_nfs,
 	.usage		= "boot image via network using nfs protocol",
+	BAREBOX_CMD_GROUP(CMD_GRP_NET)
 	BAREBOX_CMD_HELP(cmd_nfs_help)
 BAREBOX_CMD_END
 
diff --git a/net/ping.c b/net/ping.c
index bc6cf2e..15cd692 100644
--- a/net/ping.c
+++ b/net/ping.c
@@ -118,4 +118,5 @@ out:
 BAREBOX_CMD_START(ping)
 	.cmd		= do_ping,
 	.usage		= "ping <destination>",
+	BAREBOX_CMD_GROUP(CMD_GRP_NET)
 BAREBOX_CMD_END
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
