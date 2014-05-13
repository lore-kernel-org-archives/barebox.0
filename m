Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x235.google.com ([2a00:1450:4013:c00::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wk80s-0001gw-Aj
 for barebox@lists.infradead.org; Tue, 13 May 2014 08:24:54 +0000
Received: by mail-ee0-f53.google.com with SMTP id c13so127021eek.12
 for <barebox@lists.infradead.org>; Tue, 13 May 2014 01:24:15 -0700 (PDT)
From: Holger Schurig <holgerschurig@gmail.com>
Date: Tue, 13 May 2014 10:28:42 +0200
Message-Id: <1399969739-10355-3-git-send-email-holgerschurig@gmail.com>
In-Reply-To: <1399969739-10355-1-git-send-email-holgerschurig@gmail.com>
References: <1399969739-10355-1-git-send-email-holgerschurig@gmail.com>
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
Subject: [PATCH 02/19] commands: harmonize in-barebox documentation
To: barebox@lists.infradead.org

This patch does probably too much, but it's hard (and very
cumbersome/time consuming) to break it out. What is does is this:

* each command has one short description, e.g. "list MUX configuration"
* made sure the short descriptions start lowercase
* each command has one usage. That string contains just the
  options, e.g. "[-npn]". It's not part of the long help text.
* that is, it doesn't say "[OPTIONS]" anymore, every usable option
  is listed by character in this (short) option string (the long
  description is in the long help text, as before)
* help texts have been reworked, to make them
  - sometimes smaller
  - sometimes describe the options better
  - more often present themselves in a nicer format
* all long help texts are now created with BUSYBOX_CMD_HELP_
  macros, no more 'static const __maybe_unused char cmd_foobar_help[]'
* made sure the long help texts starts uppercase
* because cmdtp->name and cmdtp->opts together provide the new usage,
  all "Usage: foobar" texts have been removed from the long help texts
* BUSYBOX_CMD_HELP_TEXT() provides the trailing newline by itself, this
  is nicer in the source code
* BUSYBOX_CMD_HELP_OPT() provides the trailing newline by itself
* made sure no line gets longer than 77 characters
* delibertely renamed cmdtp->usage, so that we can get compile-time
  errors (e.g. in out-of-tree modules that use register_command()
* the 'help' command can now always emit the usage, even without
  compiled long help texts
* 'help -v' gives a list of commands with their short description, this
  is similar like the old "help" command before my patchset
* 'help -a' gives out help of all commands

Signed-off-by: Holger Schurig <holgerschurig@gmail.com>
---
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c |    8 +--
 arch/arm/boards/guf-cupid/board.c                 |    9 +---
 arch/arm/boards/phytec-phycore-imx35/pcm043.c     |    9 +---
 arch/arm/cpu/cpuinfo.c                            |    2 +-
 arch/arm/cpu/mmuinfo.c                            |    9 +---
 arch/arm/lib/bootu.c                              |    3 +-
 arch/arm/lib/bootz.c                              |    8 +--
 arch/arm/mach-at91/boot_test_cmd.c                |    8 +--
 arch/arm/mach-at91/clock.c                        |    8 +--
 arch/arm/mach-at91/gpio.c                         |   11 +++--
 arch/arm/mach-mxs/bcb.c                           |    8 +--
 arch/arm/mach-netx/generic.c                      |    3 +-
 arch/arm/mach-omap/boot_order.c                   |   12 ++---
 arch/blackfin/boards/ipe337/cmd_alternate.c       |    9 +---
 arch/mips/lib/cpuinfo.c                           |    2 +-
 arch/openrisc/lib/cpuinfo.c                       |    2 +-
 commands/2048.c                                   |    6 +--
 commands/automount.c                              |   12 ++---
 commands/barebox-update.c                         |   17 +++----
 commands/basename.c                               |    6 +--
 commands/boot.c                                   |   44 +++++++++--------
 commands/bootm.c                                  |   33 ++++++++-----
 commands/cat.c                                    |    8 ++-
 commands/cd.c                                     |    7 ++-
 commands/clear.c                                  |    6 +--
 commands/clk.c                                    |   38 +++++---------
 commands/cp.c                                     |    9 ++--
 commands/crc.c                                    |   20 +++++---
 commands/detect.c                                 |   11 +++--
 commands/devinfo.c                                |   16 ++++--
 commands/dfu.c                                    |   27 +++++-----
 commands/digest.c                                 |   24 ++++-----
 commands/dirname.c                                |   12 +++--
 commands/echo.c                                   |   16 +++---
 commands/edit.c                                   |    6 +--
 commands/exec.c                                   |    2 +-
 commands/export.c                                 |    6 +--
 commands/false.c                                  |    2 +-
 commands/filetype.c                               |   14 +++---
 commands/flash.c                                  |   40 ++++++++++-----
 commands/global.c                                 |   10 ++--
 commands/go.c                                     |   14 +++---
 commands/gpio.c                                   |   35 +++----------
 commands/help.c                                   |   39 ++++++++++-----
 commands/i2c.c                                    |   48 ++++++++++--------
 commands/insmod.c                                 |    7 +--
 commands/iomemport.c                              |    4 +-
 commands/led.c                                    |   11 +++--
 commands/let.c                                    |   43 ++++++++--------
 commands/linux16.c                                |   16 ++++--
 commands/linux_exec.c                             |    9 +---
 commands/ln.c                                     |    9 +---
 commands/loadb.c                                  |   19 ++++---
 commands/loadenv.c                                |   15 +++---
 commands/loads.c                                  |   19 +++----
 commands/loadxy.c                                 |   53 ++++++++++----------
 commands/login.c                                  |   16 +++---
 commands/ls.c                                     |   12 +++--
 commands/lsmod.c                                  |    2 +-
 commands/magicvar.c                               |    2 +-
 commands/md.c                                     |   37 +++++++-------
 commands/memcmp.c                                 |   28 ++++++-----
 commands/memcpy.c                                 |   22 +++++----
 commands/meminfo.c                                |    2 +-
 commands/memset.c                                 |   20 ++++----
 commands/memtest.c                                |   14 +++---
 commands/menu.c                                   |   54 ++++++++++----------
 commands/menutree.c                               |   36 +++++++-------
 commands/miitool.c                                |   11 +++--
 commands/mkdir.c                                  |   12 +++--
 commands/mm.c                                     |   19 ++++---
 commands/mount.c                                  |   26 +++++-----
 commands/msleep.c                                 |    3 +-
 commands/mw.c                                     |   18 ++++---
 commands/nand.c                                   |   15 +++---
 commands/nandtest.c                               |   21 ++++----
 commands/net.c                                    |    7 +--
 commands/of_node.c                                |    9 ++--
 commands/of_property.c                            |   20 ++++----
 commands/oftree.c                                 |   15 +++---
 commands/partition.c                              |   25 ++++++----
 commands/passwd.c                                 |   15 +++---
 commands/poweroff.c                               |    2 +-
 commands/printenv.c                               |    8 +--
 commands/pwd.c                                    |    2 +-
 commands/readf.c                                  |   10 ++--
 commands/readline.c                               |   12 +++--
 commands/readlink.c                               |   10 ++--
 commands/reginfo.c                                |    2 +-
 commands/regulator.c                              |    2 +-
 commands/reset.c                                  |   10 ++--
 commands/rm.c                                     |   11 +++--
 commands/rmdir.c                                  |   10 ++--
 commands/saveenv.c                                |   12 +++--
 commands/setenv.c                                 |    9 ++--
 commands/sleep.c                                  |    3 +-
 commands/spi.c                                    |   24 ++++-----
 commands/splash.c                                 |   19 ++++---
 commands/test.c                                   |   14 +++---
 commands/tftp.c                                   |    9 ++--
 commands/time.c                                   |    8 +--
 commands/timeout.c                                |   20 ++++----
 commands/trigger.c                                |   12 +++--
 commands/true.c                                   |    2 +-
 commands/ubi.c                                    |   39 ++++++++-------
 commands/ubiformat.c                              |   47 +++++++++---------
 commands/uimage.c                                 |   15 +++---
 commands/umount.c                                 |   10 ++--
 commands/uncompress.c                             |   12 ++---
 commands/usb.c                                    |   10 ++--
 commands/usbserial.c                              |   28 ++++++-----
 commands/version.c                                |    2 +-
 commands/wd.c                                     |   10 ++--
 common/command.c                                  |   34 ++++++-------
 common/hush.c                                     |   55 +++++++++------------
 drivers/gpio/gpiolib.c                            |    8 +--
 drivers/mtd/nand/nand_imx_bbm.c                   |    5 +-
 drivers/mtd/nand/nand_s3c24xx.c                   |    7 +--
 include/command.h                                 |   13 +++--
 net/dhcp.c                                        |   31 ++++--------
 net/dns.c                                         |    7 +--
 net/ifup.c                                        |   14 ++++--
 net/nfs.c                                         |    8 +--
 net/ping.c                                        |    3 +-
 124 files changed, 967 insertions(+), 907 deletions(-)

diff --git a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
index f7b7a23..f6ed084 100644
--- a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
+++ b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
@@ -352,14 +352,10 @@ static int do_cpufreq(int argc, char *argv[])
 	return 0;
 }
 
-static const __maybe_unused char cmd_cpufreq_help[] =
-"Usage: cpufreq 399|532\n"
-"\n"
-"Set CPU frequency to <freq> MHz\n";
-
 BAREBOX_CMD_START(cpufreq)
 	.cmd            = do_cpufreq,
-	.usage          = "adjust CPU frequency",
+	BAREBOX_CMD_DESC("adjust CPU frequency")
+	BAREBOX_CMD_OPTS("399|532")
 	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_cpufreq_help)
 BAREBOX_CMD_END
diff --git a/arch/arm/boards/guf-cupid/board.c b/arch/arm/boards/guf-cupid/board.c
index 793d845..90f1627 100644
--- a/arch/arm/boards/guf-cupid/board.c
+++ b/arch/arm/boards/guf-cupid/board.c
@@ -346,14 +346,9 @@ static int do_cpufreq(int argc, char *argv[])
 	return 0;
 }
 
-static const __maybe_unused char cmd_cpufreq_help[] =
-"Usage: cpufreq 399|532\n"
-"\n"
-"Set CPU frequency to <freq> MHz\n";
-
 BAREBOX_CMD_START(cpufreq)
 	.cmd            = do_cpufreq,
-	.usage          = "adjust CPU frequency",
+	BAREBOX_CMD_DESC("adjust CPU frequency")
+	BAREBOX_CMD_OPTS("399|532")
 	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
-	BAREBOX_CMD_HELP(cmd_cpufreq_help)
 BAREBOX_CMD_END
diff --git a/arch/arm/boards/phytec-phycore-imx35/pcm043.c b/arch/arm/boards/phytec-phycore-imx35/pcm043.c
index f6e370f..d1dd28f 100644
--- a/arch/arm/boards/phytec-phycore-imx35/pcm043.c
+++ b/arch/arm/boards/phytec-phycore-imx35/pcm043.c
@@ -324,15 +324,10 @@ static int do_cpufreq(int argc, char *argv[])
 	return 0;
 }
 
-static const __maybe_unused char cmd_cpufreq_help[] =
-"Usage: cpufreq 399|532\n"
-"\n"
-"Set CPU frequency to <freq> MHz\n";
-
 BAREBOX_CMD_START(cpufreq)
 	.cmd            = do_cpufreq,
-	.usage          = "adjust CPU frequency",
+	BAREBOX_CMD_DESC("adjust CPU frequency")
+	BAREBOX_CMD_OPTS("399|532")
 	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
-	BAREBOX_CMD_HELP(cmd_cpufreq_help)
 BAREBOX_CMD_END
 
diff --git a/arch/arm/cpu/cpuinfo.c b/arch/arm/cpu/cpuinfo.c
index 2cee48b..8b22e9b 100644
--- a/arch/arm/cpu/cpuinfo.c
+++ b/arch/arm/cpu/cpuinfo.c
@@ -210,7 +210,7 @@ static int do_cpuinfo(int argc, char *argv[])
 
 BAREBOX_CMD_START(cpuinfo)
 	.cmd            = do_cpuinfo,
-	.usage          = "Show info about CPU",
+	BAREBOX_CMD_DESC("show info about CPU")
 	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
 	BAREBOX_CMD_COMPLETE(empty_complete)
 BAREBOX_CMD_END
diff --git a/arch/arm/cpu/mmuinfo.c b/arch/arm/cpu/mmuinfo.c
index 032798e..79f539f 100644
--- a/arch/arm/cpu/mmuinfo.c
+++ b/arch/arm/cpu/mmuinfo.c
@@ -99,14 +99,9 @@ static int do_mmuinfo(int argc, char *argv[])
 	return 0;
 }
 
-BAREBOX_CMD_HELP_START(mmuinfo)
-BAREBOX_CMD_HELP_USAGE("mmuinfo <address>\n")
-BAREBOX_CMD_HELP_SHORT("Show MMU/cache information for an address.\n")
-BAREBOX_CMD_HELP_END
-
 BAREBOX_CMD_START(mmuinfo)
 	.cmd            = do_mmuinfo,
-	.usage		= "mmuinfo <address>",
+	BAREBOX_CMD_DESC("show MMU/cache information of an address")
+	BAREBOX_CMD_OPTS("ADDRESS")
 	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
-	BAREBOX_CMD_HELP(cmd_mmuinfo_help)
 BAREBOX_CMD_END
diff --git a/arch/arm/lib/bootu.c b/arch/arm/lib/bootu.c
index 14a8566..19009c8 100644
--- a/arch/arm/lib/bootu.c
+++ b/arch/arm/lib/bootu.c
@@ -36,7 +36,8 @@ static const __maybe_unused char cmd_bootu_help[] =
 
 BAREBOX_CMD_START(bootu)
 	.cmd            = do_bootu,
-	.usage          = "start a raw linux image",
+	BAREBOX_CMD_DESC("boot into already loaded Linux kernel")
+	BAREBOX_CMD_OPTS("ADDRESS")
 	BAREBOX_CMD_GROUP(CMD_GRP_BOOT)
 	BAREBOX_CMD_HELP(cmd_bootu_help)
 BAREBOX_CMD_END
diff --git a/arch/arm/lib/bootz.c b/arch/arm/lib/bootz.c
index 7ddd882..377f18a 100644
--- a/arch/arm/lib/bootz.c
+++ b/arch/arm/lib/bootz.c
@@ -127,14 +127,10 @@ err_out:
 	return 1;
 }
 
-static const __maybe_unused char cmd_bootz_help[] =
-"Usage: bootz [FILE]\n"
-"Boot a Linux zImage\n";
-
 BAREBOX_CMD_START(bootz)
 	.cmd            = do_bootz,
-	.usage          = "start a zImage",
+	BAREBOX_CMD_DESC("boot Linux zImage")
+	BAREBOX_CMD_OPTS("FILE")
 	BAREBOX_CMD_GROUP(CMD_GRP_BOOT)
-	BAREBOX_CMD_HELP(cmd_bootz_help)
 BAREBOX_CMD_END
 
diff --git a/arch/arm/mach-at91/boot_test_cmd.c b/arch/arm/mach-at91/boot_test_cmd.c
index 5f80666..66c598b 100644
--- a/arch/arm/mach-at91/boot_test_cmd.c
+++ b/arch/arm/mach-at91/boot_test_cmd.c
@@ -84,13 +84,15 @@ err:
 }
 
 BAREBOX_CMD_HELP_START(at91_boot_test)
-BAREBOX_CMD_HELP_USAGE("at91_boot_test [-j <jump addr>] [-s <sram>] file\n")
-BAREBOX_CMD_HELP_SHORT("upload the binary to sram and jump as will do the romcode\n")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-j ADDR", "jump address")
+BAREBOX_CMD_HELP_OPT ("-s SRAM", "SRAM device (default /dev/sram0)")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(at91_boot_test)
 	.cmd		= do_at91_boot_test,
-	.usage		= "upload the binary to sram and jump as will do the romcode",
+	BAREBOX_CMD_DESC("load and execute from SRAM")
+	BAREBOX_CMD_OPTS("at91_boot_test [-js] FILE")
 	BAREBOX_CMD_GROUP(CMD_GRP_BOOT)
 	BAREBOX_CMD_HELP(cmd_at91_boot_test_help)
 BAREBOX_CMD_END
diff --git a/arch/arm/mach-at91/clock.c b/arch/arm/mach-at91/clock.c
index c4fc698..59c4d11 100644
--- a/arch/arm/mach-at91/clock.c
+++ b/arch/arm/mach-at91/clock.c
@@ -881,16 +881,10 @@ static int do_at91clk(int argc, char *argv[])
 	return 0;
 }
 
-BAREBOX_CMD_HELP_START(at91clk)
-BAREBOX_CMD_HELP_USAGE("at91clk\n")
-BAREBOX_CMD_HELP_SHORT("dump current clock configuration\n");
-BAREBOX_CMD_HELP_END
-
 BAREBOX_CMD_START(at91clk)
 	.cmd		= do_at91clk,
-	.usage		= "dump current clock configuration",
+	BAREBOX_CMD_DESC("list clock configuration")
 	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
-	BAREBOX_CMD_HELP(cmd_at91clk_help)
 	BAREBOX_CMD_COMPLETE(empty_complete)
 BAREBOX_CMD_END
 #endif
diff --git a/arch/arm/mach-at91/gpio.c b/arch/arm/mach-at91/gpio.c
index c175cfd..d354625 100644
--- a/arch/arm/mach-at91/gpio.c
+++ b/arch/arm/mach-at91/gpio.c
@@ -509,13 +509,18 @@ static int do_at91mux(int argc, char *argv[])
 }
 
 BAREBOX_CMD_HELP_START(at91mux)
-BAREBOX_CMD_HELP_USAGE("at91mux [-p <pin> -b <bank>]\n")
-BAREBOX_CMD_HELP_SHORT("dump current mux configuration if bank/pin specified dump pin details\n");
+BAREBOX_CMD_HELP_TEXT("Dump current MIX configuration. If a BANK or PIN has been")
+BAREBOX_CMD_HELP_TEXT("specified dump pin details.");
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-p PIN", "pin number")
+BAREBOX_CMD_HELP_OPT ("-b BANK", "bank number")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(at91mux)
 	.cmd		= do_at91mux,
-	.usage		= "dump current mux configuration",
+	BAREBOX_CMD_DESC("list MUX configuration")
+	BAREBOX_CMD_OPTS("[-pn]")
 	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
 	BAREBOX_CMD_HELP(cmd_at91mux_help)
 	BAREBOX_CMD_COMPLETE(empty_complete)
diff --git a/arch/arm/mach-mxs/bcb.c b/arch/arm/mach-mxs/bcb.c
index 0da8d3b..c945726 100644
--- a/arch/arm/mach-mxs/bcb.c
+++ b/arch/arm/mach-mxs/bcb.c
@@ -387,14 +387,14 @@ int update_bcb(int argc, char *argv[])
 }
 
 BAREBOX_CMD_HELP_START(bcb)
-BAREBOX_CMD_HELP_USAGE("bcb <first_bootstream> [second_bootstream]\n")
-BAREBOX_CMD_HELP_SHORT("Write a BCB to NAND flash which an MX23/28 needs to boot.\n")
-BAREBOX_CMD_HELP_TEXT ("Example: bcb nand0.bootstream\n")
+BAREBOX_CMD_HELP_TEXT("Write a BCB to NAND flash which an MX23/28 needs to boot.")
+BAREBOX_CMD_HELP_TEXT("Example: bcb nand0.bootstream")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(bcb)
 	.cmd = update_bcb,
-	.usage = "Writes a MX23/28 BCB data structure to flash",
+	BAREBOX_CMD_DESC("writes a i.MX23/28 BCB data structure to flash")
+	BAREBOX_CMD_OPTS("BOOTSTREAM [BOOTSTREAM]")
 	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_bcb_help)
 BAREBOX_CMD_END
diff --git a/arch/arm/mach-netx/generic.c b/arch/arm/mach-netx/generic.c
index 0b6b3b2..6127dde 100644
--- a/arch/arm/mach-netx/generic.c
+++ b/arch/arm/mach-netx/generic.c
@@ -145,7 +145,6 @@ void __noreturn reset_cpu(unsigned long addr)
 
 BAREBOX_CMD_START(loadxc)
 	.cmd		= do_loadxc,
-	.usage		= "load xmac/xpec engine with ethernet firmware",
+	BAREBOX_CMD_DESC("load XMAC/XPEC engine with ethernet firmware")
 	BAREBOX_CMD_GROUP(CMD_GRP_NET)
 BAREBOX_CMD_END
-
diff --git a/arch/arm/mach-omap/boot_order.c b/arch/arm/mach-omap/boot_order.c
index 4af86e6..db22513 100644
--- a/arch/arm/mach-omap/boot_order.c
+++ b/arch/arm/mach-omap/boot_order.c
@@ -69,15 +69,15 @@ static int cmd_boot_order(int argc, char *argv[])
 	return 0;
 }
 
-static const __maybe_unused char cmd_boot_order_help[] =
-"Usage: boot_order <device 1> [<device n>]\n"
-"Set warm boot order of up to four devices.\n"
-"Each device can be one of:\n"
-"xip xipwait nand onenand mmc1 mmc2_1 mmc2_2 uart usb_1 usb_ulpi usb_2\n";
+BAREBOX_CMD_HELP_START(boot_order)
+BAREBOX_CMD_HELP_TEXT("Set warm boot order of up to four devices. Each device can be one of:")
+BAREBOX_CMD_HELP_TEXT("xip xipwait nand onenand mmc1 mmc2_1 mmc2_2 uart usb_1 usb_ulpi usb_2")
+BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(boot_order)
 	.cmd		= cmd_boot_order,
-	.usage		= "boot_order <device 1> [<device n>]",
+	BAREBOX_CMD_DESC("set warm boot order")
+	BAREBOX_CMD_OPTS("DEVICE...")
 	BAREBOX_CMD_GROUP(CMD_GRP_BOOT)
 	BAREBOX_CMD_HELP(cmd_boot_order_help)
 	BAREBOX_CMD_COMPLETE(empty_complete)
diff --git a/arch/blackfin/boards/ipe337/cmd_alternate.c b/arch/blackfin/boards/ipe337/cmd_alternate.c
index aee9560..992d274 100644
--- a/arch/blackfin/boards/ipe337/cmd_alternate.c
+++ b/arch/blackfin/boards/ipe337/cmd_alternate.c
@@ -44,14 +44,9 @@ static int do_alternate(int argc, char *argv[])
 	return (bitcount & 1) ? 3 : 2;
 }
 
-static const __maybe_unused char cmd_alternate_help[] =
-"Usage: alternate <file>"
-"\n";
-
 BAREBOX_CMD_START(alternate)
 	.cmd		= do_alternate,
-	.usage		= "count zero bits in a file",
+	BAREBOX_CMD_DESC("count zero bits in a file")
+	BAREBOX_CMD_OPTS("FILE")
 	BAREBOX_CMD_GROUP(CMD_GRP_FILE)
-	BAREBOX_CMD_HELP(cmd_alternate_help)
 BAREBOX_CMD_END
-
diff --git a/arch/mips/lib/cpuinfo.c b/arch/mips/lib/cpuinfo.c
index b541f70..1b17169 100644
--- a/arch/mips/lib/cpuinfo.c
+++ b/arch/mips/lib/cpuinfo.c
@@ -54,6 +54,6 @@ static int do_cpuinfo(int argc, char *argv[])
 
 BAREBOX_CMD_START(cpuinfo)
 	.cmd            = do_cpuinfo,
-	.usage          = "Show info about CPU",
+	BAREBOX_CMD_DESC("show CPU information")
 	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
 BAREBOX_CMD_END
diff --git a/arch/openrisc/lib/cpuinfo.c b/arch/openrisc/lib/cpuinfo.c
index 2a055aa..32fb47d 100644
--- a/arch/openrisc/lib/cpuinfo.c
+++ b/arch/openrisc/lib/cpuinfo.c
@@ -148,6 +148,6 @@ static int do_cpuinfo(int argc, char *argv[])
 
 BAREBOX_CMD_START(cpuinfo)
 	.cmd            = do_cpuinfo,
-	.usage          = "Show info about CPU",
+	BAREBOX_CMD_DESC("show CPU information")
 	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
 BAREBOX_CMD_END
diff --git a/commands/2048.c b/commands/2048.c
index 6d4f927..26c9e6c 100644
--- a/commands/2048.c
+++ b/commands/2048.c
@@ -378,13 +378,13 @@ static int do_2048(int argc, char *argv[])
 }
 
 BAREBOX_CMD_HELP_START(2048)
-BAREBOX_CMD_HELP_USAGE("2048\n")
-BAREBOX_CMD_HELP_SHORT("The 2048 game\n")
+BAREBOX_CMD_HELP_TEXT("Use your arrow keys to move the tiles. When two tiles with")
+BAREBOX_CMD_HELP_TEXT("the same number touch, they merge into one!")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(2048)
 	.cmd		= do_2048,
-	.usage		= "Usage: 2048",
+	BAREBOX_CMD_DESC("the 2048 game")
 	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
 	BAREBOX_CMD_HELP(cmd_2048_help)
 BAREBOX_CMD_END
diff --git a/commands/automount.c b/commands/automount.c
index d1e5cb0..0afe4d2 100644
--- a/commands/automount.c
+++ b/commands/automount.c
@@ -57,16 +57,16 @@ static int do_automount(int argc, char *argv[])
 }
 
 BAREBOX_CMD_HELP_START(automount)
-BAREBOX_CMD_HELP_USAGE("automount [OPTIONS] <PATH> <cmd>\n")
-BAREBOX_CMD_HELP_SHORT("execute <cmd> when <PATH> is first accessed\n")
-BAREBOX_CMD_HELP_OPT("-l", "List currently registered automountpoints\n")
-BAREBOX_CMD_HELP_OPT("-d", "Create the mount path\n")
-BAREBOX_CMD_HELP_OPT("-r <PATH>", "remove an automountpoint\n")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT("-l", "list registered automount-points")
+BAREBOX_CMD_HELP_OPT("-d", "create the mount directory")
+BAREBOX_CMD_HELP_OPT("-r", "remove an automountpoint")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(automount)
 	.cmd		= do_automount,
-	.usage		= "automount [OPTIONS] <PATH> <cmd>",
+	BAREBOX_CMD_DESC("execute (mount) COMMAND when PATH ist first accessed")
+	BAREBOX_CMD_OPTS("[-ldr] PATH [COMMAND]")
 	BAREBOX_CMD_GROUP(CMD_GRP_PART)
 	BAREBOX_CMD_HELP(cmd_automount_help)
 BAREBOX_CMD_END
diff --git a/commands/barebox-update.c b/commands/barebox-update.c
index 819bf4d..a24dc3e 100644
--- a/commands/barebox-update.c
+++ b/commands/barebox-update.c
@@ -69,19 +69,18 @@ static int do_barebox_update(int argc, char *argv[])
 }
 
 BAREBOX_CMD_HELP_START(barebox_update)
-BAREBOX_CMD_HELP_USAGE("barebox_update [OPTIONS] <image>\n")
-BAREBOX_CMD_HELP_SHORT("Update barebox to persistent media\n")
-BAREBOX_CMD_HELP_OPT("-t <target>", "\n")
-BAREBOX_CMD_HELP_OPT("-d <device>", "write image to <device> instead of handler default\n")
-BAREBOX_CMD_HELP_OPT("           ", "Can be used for debugging purposes (-d /tmpfile)\n")
-BAREBOX_CMD_HELP_OPT("-y\t", "yes. Do not ask for confirmation\n")
-BAREBOX_CMD_HELP_OPT("-f <level>", "Set force level\n")
-BAREBOX_CMD_HELP_OPT("-l\t", "list registered targets\n")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT("-l\t", "list registered targets")
+BAREBOX_CMD_HELP_OPT("-t TARGET", "specify data target handler name")
+BAREBOX_CMD_HELP_OPT("-d DEVICE", "write image to DEVICE")
+BAREBOX_CMD_HELP_OPT("-y\t", "autom. use 'yes' when asking confirmations")
+BAREBOX_CMD_HELP_OPT("-f LEVEL", "set force level")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(barebox_update)
 	.cmd		= do_barebox_update,
-	.usage		= "update barebox",
+	BAREBOX_CMD_DESC("update barebox to persistent media")
+	BAREBOX_CMD_OPTS("[-ltdyf] [IMAGE]")
 	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
 	BAREBOX_CMD_HELP(cmd_barebox_update_help)
 BAREBOX_CMD_END
diff --git a/commands/basename.c b/commands/basename.c
index 835c299..00daa5f 100644
--- a/commands/basename.c
+++ b/commands/basename.c
@@ -36,13 +36,13 @@ static int do_basename(int argc, char *argv[])
 }
 
 BAREBOX_CMD_HELP_START(basename)
-BAREBOX_CMD_HELP_USAGE("basename NAME BASENAME\n")
-BAREBOX_CMD_HELP_SHORT("strip NAME and store into $BASENAME\n")
+BAREBOX_CMD_HELP_TEXT("Remove directory part from the PATH and store result into variable VAR.")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(basename)
 	.cmd		= do_basename,
-	.usage		= "strip directory and suffix from filenames",
+	BAREBOX_CMD_DESC("strip directory and suffix from filenames")
+	BAREBOX_CMD_OPTS("PATH VAR")
 	BAREBOX_CMD_GROUP(CMD_GRP_FILE)
 	BAREBOX_CMD_HELP(cmd_basename_help)
 BAREBOX_CMD_END
diff --git a/commands/boot.c b/commands/boot.c
index 1b88ffe..7a956a2 100644
--- a/commands/boot.c
+++ b/commands/boot.c
@@ -457,30 +457,34 @@ out:
 }
 
 BAREBOX_CMD_HELP_START(boot)
-BAREBOX_CMD_HELP_USAGE("boot [OPTIONS] [BOOTSRC...]\n")
-BAREBOX_CMD_HELP_SHORT("Boot an operating system.\n")
-BAREBOX_CMD_HELP_SHORT("[BOOTSRC...] can be:\n")
-BAREBOX_CMD_HELP_SHORT("- a filename under /env/boot/\n")
-BAREBOX_CMD_HELP_SHORT("- a full path to a boot script\n")
-BAREBOX_CMD_HELP_SHORT("- a device name\n")
-BAREBOX_CMD_HELP_SHORT("- a partition name under /dev/\n")
-BAREBOX_CMD_HELP_SHORT("- a full path to a directory which\n")
-BAREBOX_CMD_HELP_SHORT("   - contains boot scripts, or\n")
-BAREBOX_CMD_HELP_SHORT("   - contains a loader/entries/ directory containing bootspec entries\n")
-BAREBOX_CMD_HELP_SHORT("\n")
-BAREBOX_CMD_HELP_SHORT("Multiple bootsources may be given which are probed in order until\n")
-BAREBOX_CMD_HELP_SHORT("one succeeds.\n")
-BAREBOX_CMD_HELP_SHORT("\nOptions:\n")
-BAREBOX_CMD_HELP_OPT  ("-v","Increase verbosity\n")
-BAREBOX_CMD_HELP_OPT  ("-d","Dryrun. See what happens but do no actually boot\n")
-BAREBOX_CMD_HELP_OPT  ("-l","List available boot sources\n")
-BAREBOX_CMD_HELP_OPT  ("-m","Show a menu with boot options\n")
-BAREBOX_CMD_HELP_OPT  ("-t <timeout>","specify timeout for the menu\n")
+BAREBOX_CMD_HELP_TEXT("This is for booting based on scripts. Unlike the bootm command which")
+BAREBOX_CMD_HELP_TEXT("can boot a single image this command offers the possibility to boot with")
+BAREBOX_CMD_HELP_TEXT("scripts (by default placed under /env/boot/).")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("BOOTSRC can be:")
+BAREBOX_CMD_HELP_TEXT("- a filename under /env/boot/")
+BAREBOX_CMD_HELP_TEXT("- a full path to a boot script")
+BAREBOX_CMD_HELP_TEXT("- a device name")
+BAREBOX_CMD_HELP_TEXT("- a partition name under /dev/")
+BAREBOX_CMD_HELP_TEXT("- a full path to a directory which")
+BAREBOX_CMD_HELP_TEXT("   - contains boot scripts, or")
+BAREBOX_CMD_HELP_TEXT("   - contains a loader/entries/ directory containing bootspec entries")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Multiple bootsources may be given which are probed in order until")
+BAREBOX_CMD_HELP_TEXT("one succeeds.")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-v","Increase verbosity")
+BAREBOX_CMD_HELP_OPT ("-d","Dryrun. See what happens but do no actually boot")
+BAREBOX_CMD_HELP_OPT ("-l","List available boot sources")
+BAREBOX_CMD_HELP_OPT ("-m","Show a menu with boot options")
+BAREBOX_CMD_HELP_OPT ("-t SECS","specify timeout in SECS")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(boot)
 	.cmd	= do_boot,
-	.usage		= "boot the machine",
+	BAREBOX_CMD_DESC("boot from script, device, ...")
+	BAREBOX_CMD_OPTS("[-vdlmt] [BOOTSRC...]")
 	BAREBOX_CMD_GROUP(CMD_GRP_BOOT)
 	BAREBOX_CMD_HELP(cmd_boot_help)
 BAREBOX_CMD_END
diff --git a/commands/bootm.c b/commands/bootm.c
index af2cb69..5801f44 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -141,27 +141,38 @@ err_out:
 }
 
 BAREBOX_CMD_HELP_START(bootm)
-BAREBOX_CMD_HELP_USAGE("bootm [OPTIONS] image\n")
-BAREBOX_CMD_HELP_SHORT("Boot an application image.\n")
-BAREBOX_CMD_HELP_OPT  ("-c",  "crc check uImage data\n")
-BAREBOX_CMD_HELP_OPT  ("-d",  "dryrun. Check data, but do not run\n")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-c",  "crc check uImage data")
+BAREBOX_CMD_HELP_OPT ("-d",  "dryrun. Check data, but do not run")
 #ifdef CONFIG_CMD_BOOTM_INITRD
-BAREBOX_CMD_HELP_OPT  ("-r <initrd>","specify an initrd image\n")
-BAREBOX_CMD_HELP_OPT  ("-L <load addr>","specify initrd load address\n")
+BAREBOX_CMD_HELP_OPT ("-r INITRD","specify an initrd image")
+BAREBOX_CMD_HELP_OPT ("-L ADDR","specify initrd load address")
 #endif
-BAREBOX_CMD_HELP_OPT  ("-a <load addr>","specify os load address\n")
-BAREBOX_CMD_HELP_OPT  ("-e <ofs>","entry point to the image relative to start (0)\n")
+BAREBOX_CMD_HELP_OPT ("-a ADDR","specify os load address")
+BAREBOX_CMD_HELP_OPT ("-e OFFS","entry point to the image relative to start (0)")
 #ifdef CONFIG_OFTREE
-BAREBOX_CMD_HELP_OPT  ("-o <oftree>","specify oftree\n")
+BAREBOX_CMD_HELP_OPT ("-o DTS","specify device tree")
 #endif
 #ifdef CONFIG_CMD_BOOTM_VERBOSE
-BAREBOX_CMD_HELP_OPT  ("-v","verbose\n")
+BAREBOX_CMD_HELP_OPT ("-v\t","verbose")
 #endif
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(bootm)
 	.cmd		= do_bootm,
-	.usage		= "boot an application image",
+	BAREBOX_CMD_DESC("boot an application image")
+	BAREBOX_CMD_OPTS("[-cd"
+#ifdef CONFIG_CMD_BOOTM_INITRD
+					  "rL"
+#endif
+					  "ae"
+#ifdef CONFIG_OFTREE
+					  "o"
+#endif
+#ifdef CONFIG_CMD_BOOTM_VERBOSE
+					  "v"
+#endif
+					  "] IMAGE")
 	BAREBOX_CMD_GROUP(CMD_GRP_BOOT)
 	BAREBOX_CMD_HELP(cmd_bootm_help)
 BAREBOX_CMD_END
diff --git a/commands/cat.c b/commands/cat.c
index f51af4e..c01710c 100644
--- a/commands/cat.c
+++ b/commands/cat.c
@@ -82,15 +82,13 @@ out:
 }
 
 BAREBOX_CMD_HELP_START(cat)
-BAREBOX_CMD_HELP_USAGE("cat [FILES]\n")
-BAREBOX_CMD_HELP_SHORT("Concatenate files on stdout.\n")
-BAREBOX_CMD_HELP_TEXT ("Currently only printable characters and \\ n and \\ t are printed,\n")
-BAREBOX_CMD_HELP_TEXT ("but this should be optional.\n")
+BAREBOX_CMD_HELP_TEXT("Currently only printable characters and NL, TAB are printed.")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(cat)
 	.cmd		= do_cat,
-	.usage		= "concatenate file(s)",
+	BAREBOX_CMD_DESC("concatenate file(s) to stdout")
+	BAREBOX_CMD_OPTS("FILE...")
 	BAREBOX_CMD_GROUP(CMD_GRP_FILE)
 	BAREBOX_CMD_HELP(cmd_cat_help)
 BAREBOX_CMD_END
diff --git a/commands/cd.c b/commands/cd.c
index caa368d..5611e9a 100644
--- a/commands/cd.c
+++ b/commands/cd.c
@@ -45,14 +45,13 @@ static int do_cd(int argc, char *argv[])
 }
 
 BAREBOX_CMD_HELP_START(cd)
-BAREBOX_CMD_HELP_USAGE("cd [directory]\n")
-BAREBOX_CMD_HELP_SHORT("Change to directory.\n")
-BAREBOX_CMD_HELP_TEXT ("If called without an argument, change to the root directory /.\n")
+BAREBOX_CMD_HELP_TEXT("If called without an argument, change to the root directory '/'.")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(cd)
 	.cmd		= do_cd,
-	.usage		= "change working directory",
+	BAREBOX_CMD_DESC("change working directory")
+	BAREBOX_CMD_OPTS("DIRECTORY")
 	BAREBOX_CMD_GROUP(CMD_GRP_FILE)
 	BAREBOX_CMD_HELP(cmd_cd_help)
 BAREBOX_CMD_END
diff --git a/commands/clear.c b/commands/clear.c
index a67ece8..3be2119 100644
--- a/commands/clear.c
+++ b/commands/clear.c
@@ -30,13 +30,13 @@ static int do_clear(int argc, char *argv[])
 }
 
 BAREBOX_CMD_HELP_START(clear)
-BAREBOX_CMD_HELP_USAGE("clear\n")
-BAREBOX_CMD_HELP_SHORT("Clear the screen.\n")
+BAREBOX_CMD_HELP_TEXT("Send ANSI ESC sequence to clear the screen.")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(clear)
 	.cmd		= do_clear,
-	.usage		= "clear screen",
+	BAREBOX_CMD_DESC("clear screen")
 	BAREBOX_CMD_GROUP(CMD_GRP_CONSOLE)
 	BAREBOX_CMD_COMPLETE(empty_complete)
+	BAREBOX_CMD_HELP(cmd_clear_help)
 BAREBOX_CMD_END
diff --git a/commands/clk.c b/commands/clk.c
index 6718ae8..31f4e0d 100644
--- a/commands/clk.c
+++ b/commands/clk.c
@@ -18,14 +18,10 @@ static int do_clk_enable(int argc, char *argv[])
 	return clk_enable(clk);
 }
 
-BAREBOX_CMD_HELP_START(clk_enable)
-BAREBOX_CMD_HELP_USAGE("clk_enable <clk>\n")
-BAREBOX_CMD_HELP_SHORT("enable <clk>\n")
-BAREBOX_CMD_HELP_END
-
 BAREBOX_CMD_START(clk_enable)
 	.cmd		= do_clk_enable,
-	.usage		= "enable a clock",
+	BAREBOX_CMD_DESC("enable a clock")
+	BAREBOX_CMD_OPTS("CLK")
 	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_clk_enable_help)
 BAREBOX_CMD_END
@@ -46,14 +42,10 @@ static int do_clk_disable(int argc, char *argv[])
 	return 0;
 }
 
-BAREBOX_CMD_HELP_START(clk_disable)
-BAREBOX_CMD_HELP_USAGE("clk_disable <clk>\n")
-BAREBOX_CMD_HELP_SHORT("disable <clk>\n")
-BAREBOX_CMD_HELP_END
-
 BAREBOX_CMD_START(clk_disable)
 	.cmd		= do_clk_disable,
-	.usage		= "disable a clock",
+	BAREBOX_CMD_DESC("disable a clock")
+	BAREBOX_CMD_OPTS("CLK")
 	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_clk_disable_help)
 BAREBOX_CMD_END
@@ -76,13 +68,13 @@ static int do_clk_set_rate(int argc, char *argv[])
 }
 
 BAREBOX_CMD_HELP_START(clk_set_rate)
-BAREBOX_CMD_HELP_USAGE("clk_set_rate <clk> <rate_hz>\n")
-BAREBOX_CMD_HELP_SHORT("Set clock <clk> to <rate>\n")
+BAREBOX_CMD_HELP_TEXT("Set clock CLK to RATE")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(clk_set_rate)
 	.cmd		= do_clk_set_rate,
-	.usage		= "set a clocks rate",
+	BAREBOX_CMD_DESC("set a clocks rate")
+	BAREBOX_CMD_OPTS("CLK HZ")
 	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_clk_set_rate_help)
 BAREBOX_CMD_END
@@ -108,13 +100,14 @@ static int do_clk_dump(int argc, char *argv[])
 }
 
 BAREBOX_CMD_HELP_START(clk_dump)
-BAREBOX_CMD_HELP_USAGE("clk_dump [-v]\n")
-BAREBOX_CMD_HELP_OPT  ("-v",  "verbose\n")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-v",  "verbose")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(clk_dump)
 	.cmd		= do_clk_dump,
-	.usage		= "show information about registered clocks",
+	BAREBOX_CMD_DESC("show information about registered clocks")
+	BAREBOX_CMD_OPTS("[-v]")
 	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
 	BAREBOX_CMD_HELP(cmd_clk_dump_help)
 BAREBOX_CMD_END
@@ -136,14 +129,9 @@ static int do_clk_set_parent(int argc, char *argv[])
 	return clk_set_parent(clk, parent);
 }
 
-BAREBOX_CMD_HELP_START(clk_set_parent)
-BAREBOX_CMD_HELP_USAGE("clk_set_parent <clk> <parent>\n")
-BAREBOX_CMD_HELP_SHORT("Set parent of <clk> to <parent>\n")
-BAREBOX_CMD_HELP_END
-
 BAREBOX_CMD_START(clk_set_parent)
 	.cmd		= do_clk_set_parent,
-	.usage		= "set a parent of a clock",
+	BAREBOX_CMD_DESC("set parent of a clock")
+	BAREBOX_CMD_OPTS("CLK PARENT")
 	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
-	BAREBOX_CMD_HELP(cmd_clk_set_parent_help)
 BAREBOX_CMD_END
diff --git a/commands/cp.c b/commands/cp.c
index 2a289f8..8ecde91 100644
--- a/commands/cp.c
+++ b/commands/cp.c
@@ -89,8 +89,10 @@ out:
 }
 
 BAREBOX_CMD_HELP_START(cp)
-BAREBOX_CMD_HELP_USAGE("cp [-v] <source> <destination>\n")
-BAREBOX_CMD_HELP_SHORT("copy file from <source> to <destination>.\n")
+BAREBOX_CMD_HELP_TEXT("Copy file from SRC to DEST.")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-v", "verbose")
 BAREBOX_CMD_HELP_END
 
 /**
@@ -104,7 +106,8 @@ If you want to copy between memory blocks, use 'memcpy'.
 
 BAREBOX_CMD_START(cp)
 	.cmd		= do_cp,
-	.usage		= "copy files",
+	BAREBOX_CMD_DESC("copy files")
+	BAREBOX_CMD_OPTS("[-v] SRC DEST")
 	BAREBOX_CMD_GROUP(CMD_GRP_FILE)
 	BAREBOX_CMD_HELP(cmd_cp_help)
 BAREBOX_CMD_END
diff --git a/commands/crc.c b/commands/crc.c
index 89b4fb2..3612162 100644
--- a/commands/crc.c
+++ b/commands/crc.c
@@ -108,19 +108,25 @@ static int do_crc(int argc, char *argv[])
 }
 
 BAREBOX_CMD_HELP_START(crc)
-BAREBOX_CMD_HELP_USAGE("crc32 [OPTION] [AREA]\n")
-BAREBOX_CMD_HELP_SHORT("Calculate a crc32 checksum of a memory area.\n")
-BAREBOX_CMD_HELP_OPT  ("-f <file>", "Use file instead of memory.\n")
+BAREBOX_CMD_HELP_TEXT("Calculate a CRC32 checksum of a memory area.")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-f FILE", "Use file instead of memory.")
 #ifdef CONFIG_CMD_CRC_CMP
-BAREBOX_CMD_HELP_OPT  ("-F <file>", "Use file to compare.\n")
+BAREBOX_CMD_HELP_OPT ("-F FILE", "Use file to compare.")
 #endif
-BAREBOX_CMD_HELP_OPT  ("-v <crc>",  "Verify\n")
-BAREBOX_CMD_HELP_OPT  ("-V <file>", "Verify with crc read from <file>\n")
+BAREBOX_CMD_HELP_OPT ("-v CRC",  "Verify")
+BAREBOX_CMD_HELP_OPT ("-V FILE", "Verify with CRC read from FILE")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(crc32)
 	.cmd		= do_crc,
-	.usage		= "crc32 checksum calculation",
+	BAREBOX_CMD_DESC("CRC32 checksum calculation")
+	BAREBOX_CMD_OPTS("[-f"
+#ifdef CONFIG_CMD_CRC_CMP
+					  "F"
+#endif
+					  "vV] AREA")
 	BAREBOX_CMD_GROUP(CMD_GRP_MEM)
 	BAREBOX_CMD_HELP(cmd_crc_help)
 BAREBOX_CMD_END
diff --git a/commands/detect.c b/commands/detect.c
index 50317fe..d8e0afc 100644
--- a/commands/detect.c
+++ b/commands/detect.c
@@ -80,15 +80,16 @@ static int do_detect(int argc, char *argv[])
 }
 
 BAREBOX_CMD_HELP_START(detect)
-BAREBOX_CMD_HELP_USAGE("detect [OPTIONS] [devices]\n")
-BAREBOX_CMD_HELP_OPT  ("-l",  "list detectable devices\n")
-BAREBOX_CMD_HELP_OPT  ("-e",  "bail out if one device fails to detect\n")
-BAREBOX_CMD_HELP_OPT  ("-a",  "detect all devices\n")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-l",  "list detectable devices")
+BAREBOX_CMD_HELP_OPT ("-e",  "bail out if one device fails to detect")
+BAREBOX_CMD_HELP_OPT ("-a",  "detect all devices")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(detect)
 	.cmd		= do_detect,
-	.usage		= "detect devices",
+	BAREBOX_CMD_DESC("detect devices")
+	BAREBOX_CMD_OPTS("[-lea] [devices]")
 	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_COMPLETE(device_complete)
 	BAREBOX_CMD_HELP(cmd_detect_help)
diff --git a/commands/devinfo.c b/commands/devinfo.c
index 3aa8a94..c229984 100644
--- a/commands/devinfo.c
+++ b/commands/devinfo.c
@@ -118,10 +118,6 @@ static int do_devinfo(int argc, char *argv[])
 	return 0;
 }
 
-BAREBOX_CMD_HELP_START(devinfo)
-BAREBOX_CMD_HELP_USAGE("devinfo [DEVICE]\n")
-BAREBOX_CMD_HELP_SHORT("Output device information.\n")
-BAREBOX_CMD_HELP_END
 
 /**
  * @page devinfo_command
@@ -150,9 +146,19 @@ Example from an MPC5200 based system:
 @endverbatim
  */
 
+BAREBOX_CMD_HELP_START(devinfo)
+BAREBOX_CMD_HELP_TEXT("If called without arguments, devinfo shows a summary of the known")
+BAREBOX_CMD_HELP_TEXT("devices and drivers.")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("If called with a device path being the argument, devinfo shows more")
+BAREBOX_CMD_HELP_TEXT("default information about this device and its parameters.")
+BAREBOX_CMD_HELP_END
+
+
 BAREBOX_CMD_START(devinfo)
 	.cmd		= do_devinfo,
-	.usage		= "Show information about devices and drivers.",
+	BAREBOX_CMD_DESC("show information about devices and drivers")
+	BAREBOX_CMD_OPTS("[DEVICE]")
 	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
 	BAREBOX_CMD_HELP(cmd_devinfo_help)
 	BAREBOX_CMD_COMPLETE(device_complete)
diff --git a/commands/dfu.c b/commands/dfu.c
index 514c487..b71cc16 100644
--- a/commands/dfu.c
+++ b/commands/dfu.c
@@ -171,17 +171,19 @@ out:
 }
 
 BAREBOX_CMD_HELP_START(dfu)
-BAREBOX_CMD_HELP_USAGE("dfu [OPTIONS] <description>\n")
-BAREBOX_CMD_HELP_SHORT("Start firmware update with the Device Firmware Update (DFU) protocol.\n")
-BAREBOX_CMD_HELP_OPT  ("-m <str>",  "Manufacturer string (barebox)\n")
-BAREBOX_CMD_HELP_OPT  ("-p <str>",  "product string\n")
-BAREBOX_CMD_HELP_OPT  ("-V <id>",   "vendor id\n")
-BAREBOX_CMD_HELP_OPT  ("-P <id>",   "product id\n")
-BAREBOX_CMD_HELP_OPT  ("<description>",
-	"device1(name1)[sr],device2(name2)[src]\n"
-	"'s' means 'safe mode' (download the complete image before flashing) and\n"
-	"'r' that readback of the firmware is allowed.\n"
-	"'c' if given, the file will be created (for use with regular files)\n")
+BAREBOX_CMD_HELP_TEXT("Turn's the USB host into DFU mode (Device Firmware Mode) and accepts")
+BAREBOX_CMD_HELP_TEXT("a new firmware. The destination is described by DESC in the this format:")
+BAREBOX_CMD_HELP_TEXT("  DEVICE(NAME)[src]...")
+BAREBOX_CMD_HELP_TEXT("Specify the '(') and ')' literal, the [] however denote this optional modes:")
+BAREBOX_CMD_HELP_TEXT("- 's' safe mode (download the complete image before flashing)")
+BAREBOX_CMD_HELP_TEXT("- 'r' readback of the firmware is allowed")
+BAREBOX_CMD_HELP_TEXT("- 'c' the file will be created (for use with regular files)")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-m STR", "Manufacturer string (barebox)")
+BAREBOX_CMD_HELP_OPT ("-p STR", "product string")
+BAREBOX_CMD_HELP_OPT ("-V ID",  "vendor id")
+BAREBOX_CMD_HELP_OPT ("-P ID",  "product id")
 BAREBOX_CMD_HELP_END
 
 /**
@@ -196,7 +198,8 @@ device1(name1)[sr],device2(name2)[sr]
 
 BAREBOX_CMD_START(dfu)
 	.cmd		= do_dfu,
-	.usage		= "Device firmware update",
+	BAREBOX_CMD_DESC("device firmware update")
+	BAREBOX_CMD_OPTS("[-mpVP] DESC")
 	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
 	BAREBOX_CMD_HELP(cmd_dfu_help)
 BAREBOX_CMD_END
diff --git a/commands/digest.c b/commands/digest.c
index 9980740..092fda2 100644
--- a/commands/digest.c
+++ b/commands/digest.c
@@ -83,13 +83,13 @@ static int do_md5(int argc, char *argv[])
 }
 
 BAREBOX_CMD_HELP_START(md5sum)
-BAREBOX_CMD_HELP_USAGE("md5sum [[FILE] [AREA]]...\n")
-BAREBOX_CMD_HELP_SHORT("Calculate a md5 checksum of a memory area.\n")
+BAREBOX_CMD_HELP_TEXT("Calculate a MD5 digest over a FILE or a memory area.")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(md5sum)
 	.cmd		= do_md5,
-	.usage		= "md5 checksum calculation",
+	BAREBOX_CMD_DESC("calculate MD5 checksum")
+	BAREBOX_CMD_OPTS("FILE|AREA...")
 	BAREBOX_CMD_GROUP(CMD_GRP_FILE)
 	BAREBOX_CMD_HELP(cmd_md5sum_help)
 BAREBOX_CMD_END
@@ -104,13 +104,13 @@ static int do_sha1(int argc, char *argv[])
 }
 
 BAREBOX_CMD_HELP_START(sha1sum)
-BAREBOX_CMD_HELP_USAGE("sha1sum [[FILE] [AREA]]...\n")
-BAREBOX_CMD_HELP_SHORT("Calculate a sha1 checksum of a memory area.\n")
+BAREBOX_CMD_HELP_TEXT("Calculate a SHA1 digest over a FILE or a memory area.")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(sha1sum)
 	.cmd		= do_sha1,
-	.usage		= "sha1 checksum calculation",
+	BAREBOX_CMD_DESC("calculate SHA1 digest")
+	BAREBOX_CMD_OPTS("FILE|AREA")
 	BAREBOX_CMD_GROUP(CMD_GRP_FILE)
 	BAREBOX_CMD_HELP(cmd_sha1sum_help)
 BAREBOX_CMD_END
@@ -125,13 +125,13 @@ static int do_sha224(int argc, char *argv[])
 }
 
 BAREBOX_CMD_HELP_START(sha224sum)
-BAREBOX_CMD_HELP_USAGE("sha224sum [[FILE] [AREA]]...\n")
-BAREBOX_CMD_HELP_SHORT("Calculate a sha224 checksum of a memory area.\n")
+BAREBOX_CMD_HELP_TEXT("Calculate a SHA224 digest over a FILE or a memory area.")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(sha224sum)
 	.cmd		= do_sha224,
-	.usage		= "sha224 checksum calculation",
+	BAREBOX_CMD_DESC("calculate SHA224 digest")
+	BAREBOX_CMD_OPTS("FILE|AREA")
 	BAREBOX_CMD_GROUP(CMD_GRP_FILE)
 	BAREBOX_CMD_HELP(cmd_sha224sum_help)
 BAREBOX_CMD_END
@@ -146,13 +146,13 @@ static int do_sha256(int argc, char *argv[])
 }
 
 BAREBOX_CMD_HELP_START(sha256sum)
-BAREBOX_CMD_HELP_USAGE("sha256sum [[FILE] [AREA]]...\n")
-BAREBOX_CMD_HELP_SHORT("Calculate a sha256 checksum of a memory area.\n")
+BAREBOX_CMD_HELP_TEXT("Calculate a SHA256 digest over a FILE or a memory area.")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(sha256sum)
 	.cmd		= do_sha256,
-	.usage		= "sha256 checksum calculation",
+	BAREBOX_CMD_DESC("calculate SHA256 digest")
+	BAREBOX_CMD_OPTS("FILE|AREA")
 	BAREBOX_CMD_GROUP(CMD_GRP_FILE)
 	BAREBOX_CMD_HELP(cmd_sha256sum_help)
 BAREBOX_CMD_END
diff --git a/commands/dirname.c b/commands/dirname.c
index aa7f183..527f167 100644
--- a/commands/dirname.c
+++ b/commands/dirname.c
@@ -53,14 +53,16 @@ static int do_dirname(int argc, char *argv[])
 }
 
 BAREBOX_CMD_HELP_START(dirname)
-BAREBOX_CMD_HELP_USAGE("dirname [-V] NAME DIRNAME\n")
-BAREBOX_CMD_HELP_SHORT("strip last componext of NAME and store into $DIRNAME\n")
-BAREBOX_CMD_HELP_SHORT("-V return the path relative to the mountpoint.\n")
+BAREBOX_CMD_HELP_TEXT("Strip last componext of NAME and store into $DIRNAME")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT("-V", "return the path relative to the mountpoint.")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(dirname)
 	.cmd		= do_dirname,
-	.usage		= "strip last component from file name",
-	BAREBOX_CMD_GROUP(CMD_GRP_SCRIPT)
+	BAREBOX_CMD_DESC("strip last component from a path")
+	BAREBOX_CMD_OPTS("[-V] NAME DIRNAME")
+	BAREBOX_CMD_GROUP(CMD_GRP_FILE)
 	BAREBOX_CMD_HELP(cmd_dirname_help)
 BAREBOX_CMD_END
diff --git a/commands/echo.c b/commands/echo.c
index f9ce43e..9b3e21e 100644
--- a/commands/echo.c
+++ b/commands/echo.c
@@ -104,12 +104,13 @@ no_optarg_out:
 }
 
 BAREBOX_CMD_HELP_START(echo)
-BAREBOX_CMD_HELP_USAGE("echo [OPTIONS] [STRING]\n")
-BAREBOX_CMD_HELP_SHORT("Display a line of text.\n")
-BAREBOX_CMD_HELP_OPT  ("-n",  "do not output the trailing newline\n")
-BAREBOX_CMD_HELP_OPT  ("-a <file>",  "instead of outputting to stdout append to <file>\n")
-BAREBOX_CMD_HELP_OPT  ("-o <file>",  "instead of outputting to stdout overwrite <file>\n")
-BAREBOX_CMD_HELP_OPT  ("-e",  "recognize escape sequences\n")
+BAREBOX_CMD_HELP_TEXT("Display a line of TEXT on the console.")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-n",     "do not output the trailing newline")
+BAREBOX_CMD_HELP_OPT ("-e",     "recognize escape sequences")
+BAREBOX_CMD_HELP_OPT ("-a FILE", "append to FILE instead of using stdout")
+BAREBOX_CMD_HELP_OPT ("-o FILE", "overwrite FILE instead of using stdout")
 BAREBOX_CMD_HELP_END
 
 /**
@@ -121,7 +122,8 @@ BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(echo)
 	.cmd		= do_echo,
-	.usage		= "echo args to console",
+	BAREBOX_CMD_DESC("echo args to console")
+	BAREBOX_CMD_OPTS("[-neao] STRING")
 	BAREBOX_CMD_GROUP(CMD_GRP_CONSOLE)
 	BAREBOX_CMD_HELP(cmd_echo_help)
 BAREBOX_CMD_END
diff --git a/commands/edit.c b/commands/edit.c
index c1a9815..f6b9d40 100644
--- a/commands/edit.c
+++ b/commands/edit.c
@@ -547,8 +547,7 @@ out:
 static const char *edit_aliases[] = { "sedit", NULL};
 
 BAREBOX_CMD_HELP_START(edit)
-BAREBOX_CMD_HELP_USAGE("(s)edit <file>\n")
-BAREBOX_CMD_HELP_SHORT("A small editor. <ctrl-c> is exit, <ctrl-d> exit-with-save.\n")
+BAREBOX_CMD_HELP_TEXT("Use cursor keys, Ctrl-C to exit and Ctrl-D to exit-with-save.")
 BAREBOX_CMD_HELP_END
 
 /**
@@ -564,7 +563,8 @@ If called as sedit, the editor uses ansi codes to scroll the screen.
 BAREBOX_CMD_START(edit)
 	.cmd		= do_edit,
 	.aliases	= edit_aliases,
-	.usage		= "Usage: (s)edit <file>",
+	BAREBOX_CMD_DESC("a small full-screen editor")
+	BAREBOX_CMD_OPTS("FILE")
 	BAREBOX_CMD_GROUP(CMD_GRP_CONSOLE)
 	BAREBOX_CMD_HELP(cmd_edit_help)
 BAREBOX_CMD_END
diff --git a/commands/exec.c b/commands/exec.c
index 52b2ba3..635f65e 100644
--- a/commands/exec.c
+++ b/commands/exec.c
@@ -52,6 +52,6 @@ out:
 
 BAREBOX_CMD_START(exec)
 	.cmd		= do_exec,
-	.usage		= "execute a script",
+	BAREBOX_CMD_DESC("execute a script")
 	BAREBOX_CMD_GROUP(CMD_GRP_SCRIPT)
 BAREBOX_CMD_END
diff --git a/commands/export.c b/commands/export.c
index e27cf18..2e8bb49 100644
--- a/commands/export.c
+++ b/commands/export.c
@@ -49,13 +49,13 @@ static int do_export(int argc, char *argv[])
 }
 
 BAREBOX_CMD_HELP_START(export)
-BAREBOX_CMD_HELP_USAGE("export <var>[=value]\n")
-BAREBOX_CMD_HELP_SHORT("export an environment variable to subsequently executed scripts\n")
+BAREBOX_CMD_HELP_TEXT("Export an environment variable to subsequently executed scripts.")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(export)
 	.cmd		= do_export,
-	.usage		= "export environment variables",
+	BAREBOX_CMD_DESC("export environment variables")
+	BAREBOX_CMD_OPTS("VAR[=VALUE]")
 	BAREBOX_CMD_GROUP(CMD_GRP_ENV)
 	BAREBOX_CMD_HELP(cmd_export_help)
 BAREBOX_CMD_END
diff --git a/commands/false.c b/commands/false.c
index 6488b87..6ef9af3 100644
--- a/commands/false.c
+++ b/commands/false.c
@@ -28,7 +28,7 @@ static int do_false(int argc, char *argv[])
 
 BAREBOX_CMD_START(false)
 	.cmd		= do_false,
-	.usage		= "do nothing, unsuccessfully",
+	BAREBOX_CMD_DESC("do nothing, unsuccessfully")
 	BAREBOX_CMD_GROUP(CMD_GRP_SCRIPT)
 	BAREBOX_CMD_COMPLETE(empty_complete)
 BAREBOX_CMD_END
diff --git a/commands/filetype.c b/commands/filetype.c
index 1d6b047..4e016dd 100644
--- a/commands/filetype.c
+++ b/commands/filetype.c
@@ -83,16 +83,18 @@ static int do_filetype(int argc, char *argv[])
 }
 
 BAREBOX_CMD_HELP_START(filetype)
-BAREBOX_CMD_HELP_USAGE("filetype [OPTIONS] <file>\n")
-BAREBOX_CMD_HELP_SHORT("detect type of a file and export result to a variable\n")
-BAREBOX_CMD_HELP_OPT("-v", "verbose\n")
-BAREBOX_CMD_HELP_OPT("-s <v>", "set <v> to shortname\n")
-BAREBOX_CMD_HELP_OPT("-l", "list known filetypes\n")
+BAREBOX_CMD_HELP_TEXT("Detect type of a file and export result to a variable.")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT("-v", "verbose")
+BAREBOX_CMD_HELP_OPT("-s VAR", "set variable VAR to shortname")
+BAREBOX_CMD_HELP_OPT("-l", "list known filetypes")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(filetype)
 	.cmd		= do_filetype,
-	.usage		= "detect file type",
+	BAREBOX_CMD_DESC("detect file type")
+	BAREBOX_CMD_OPTS("[-vsl] FILE")
 	BAREBOX_CMD_GROUP(CMD_GRP_FILE)
 	BAREBOX_CMD_HELP(cmd_filetype_help)
 BAREBOX_CMD_END
diff --git a/commands/flash.c b/commands/flash.c
index e6c30bf..b50a327 100644
--- a/commands/flash.c
+++ b/commands/flash.c
@@ -75,13 +75,19 @@ out:
 }
 
 BAREBOX_CMD_HELP_START(erase)
-BAREBOX_CMD_HELP_USAGE("erase <device> [area]\n")
-BAREBOX_CMD_HELP_SHORT("Erase a flash device or parts of a device if an area specification is given.\n")
+BAREBOX_CMD_HELP_TEXT("Erase the flash memory handled by DEVICE. Which AREA will be erased")
+BAREBOX_CMD_HELP_TEXT("depends on the device: If the device represents the whole flash")
+BAREBOX_CMD_HELP_TEXT("memory, the whole memory will be erased. If the device represents a")
+BAREBOX_CMD_HELP_TEXT("partition on a main flash memory, only this partition part will be")
+BAREBOX_CMD_HELP_TEXT("erased.")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Use 'addpart' and 'delpart' to manage partitions.")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(erase)
 	.cmd		= do_flerase,
-	.usage		= "erase FLASH memory",
+	BAREBOX_CMD_DESC("erase flash memory")
+	BAREBOX_CMD_OPTS("DEVICE [AREA]")
 	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_erase_help)
 BAREBOX_CMD_END
@@ -150,13 +156,19 @@ out:
 }
 
 BAREBOX_CMD_HELP_START(protect)
-BAREBOX_CMD_HELP_USAGE("protect <device> [area]\n")
-BAREBOX_CMD_HELP_SHORT("protect a flash device (or parts of a device, if an area is specified)\n")
+BAREBOX_CMD_HELP_TEXT("Protect the flash memory behind the device. It depends on the device")
+BAREBOX_CMD_HELP_TEXT("given, what area will be protected. If the device represents the whole")
+BAREBOX_CMD_HELP_TEXT("flash memory, the whole memory will be protected. If the device")
+BAREBOX_CMD_HELP_TEXT("represents a partition on a main flash memory, only this partition part")
+BAREBOX_CMD_HELP_TEXT("will be protected.")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Use 'addpart' and 'delpart' to manage partitions.")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(protect)
 	.cmd		= do_protect,
-	.usage		= "enable flash write protection",
+	BAREBOX_CMD_DESC("enable flash write protection")
+	BAREBOX_CMD_OPTS("DEVICE [AREA]")
 	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_protect_help)
 BAREBOX_CMD_END
@@ -164,8 +176,8 @@ BAREBOX_CMD_END
 /**
  * @page protect_command
 
-Protect the flash memory behind the device. It depends on the device
-given, what area will be protected. If the device represents the whole
+
+If the device represents the whole
 flash memory the whole memory will be protected. If the device
 represents a partition on a main flash memory, only this partition part
 will be protected.
@@ -179,13 +191,17 @@ flashes here.
  */
 
 BAREBOX_CMD_HELP_START(unprotect)
-BAREBOX_CMD_HELP_USAGE("unprotect <device> [area]\n")
-BAREBOX_CMD_HELP_SHORT("unprotect a flash device (or parts of a device, if an area is specified)\n")
+BAREBOX_CMD_HELP_TEXT("Unprotect the flash memory behind the device. It depends on the device")
+BAREBOX_CMD_HELP_TEXT("given, what area will be unprotected. If the device represents the whole")
+BAREBOX_CMD_HELP_TEXT("flash memory, the whole memory will be unprotected. If the device")
+BAREBOX_CMD_HELP_TEXT("represents a partition on a main flash memory, only this partition part")
+BAREBOX_CMD_HELP_TEXT("will be unprotected.")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(unprotect)
 	.cmd		= do_protect,
-	.usage		= "disable flash write protection",
+	BAREBOX_CMD_DESC("disable flash write protection")
+	BAREBOX_CMD_OPTS("DEVICE [AREA]")
 	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_unprotect_help)
 BAREBOX_CMD_END
@@ -193,7 +209,7 @@ BAREBOX_CMD_END
 /**
  * @page unprotect_command
 
-Unprotect the flash memory behind the device. It depends on the device given,
+It depends on the device given,
 what area will be unprotected. If the device represents the whole flash memory
 the whole memory will be unprotected. If the device represents a partition
 on a main flash memory, only this partition part will be unprotected.
diff --git a/commands/global.c b/commands/global.c
index 20a8623..f14df38 100644
--- a/commands/global.c
+++ b/commands/global.c
@@ -61,14 +61,16 @@ static int do_global(int argc, char *argv[])
 }
 
 BAREBOX_CMD_HELP_START(global)
-BAREBOX_CMD_HELP_USAGE("global [-r] <var>[=<value]\n")
-BAREBOX_CMD_HELP_SHORT("add a new global variable named <var>, optionally set to <value>\n")
-BAREBOX_CMD_HELP_SHORT("-r to set a value to of all globalvars beginning with 'match'")
+BAREBOX_CMD_HELP_TEXT("Add a new global variable named VAR, optionally set to VALUE.")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT("-r", "set value of all global variables beginning with 'match'")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(global)
 	.cmd		= do_global,
-	.usage		= "create or set global variables",
+	BAREBOX_CMD_DESC("create or set global variables")
+	BAREBOX_CMD_OPTS("[-r] VAR[=VALUE]")
 	BAREBOX_CMD_GROUP(CMD_GRP_ENV)
 	BAREBOX_CMD_HELP(cmd_global_help)
 BAREBOX_CMD_END
diff --git a/commands/go.c b/commands/go.c
index 4a40608..f25db48 100644
--- a/commands/go.c
+++ b/commands/go.c
@@ -78,15 +78,17 @@ out:
 	return rcode;
 }
 
-static const __maybe_unused char cmd_go_help[] =
-"Usage: go addr [arg ...]\n"
-"Start application at address 'addr' passing 'arg' as arguments.\n"
-"If addr does not start with a digit it is interpreted as a filename\n"
-"in which case the file is memmapped and executed\n";
+BAREBOX_CMD_HELP_START(go)
+BAREBOX_CMD_HELP_TEXT("Start application at ADDR passing ARG as arguments.")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("If addr does not start with a digit it is interpreted as a filename")
+BAREBOX_CMD_HELP_TEXT("in which case the file is memmapped and executed")
+BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(go)
 	.cmd		= do_go,
-	.usage		= "start application at address or file",
+	BAREBOX_CMD_DESC("start application at address or file")
+	BAREBOX_CMD_OPTS("ADDR [ARG...]")
 	BAREBOX_CMD_GROUP(CMD_GRP_BOOT)
 	BAREBOX_CMD_HELP(cmd_go_help)
 	BAREBOX_CMD_COMPLETE(command_var_complete)
diff --git a/commands/gpio.c b/commands/gpio.c
index 9d0802c..105b768 100644
--- a/commands/gpio.c
+++ b/commands/gpio.c
@@ -32,16 +32,11 @@ static int do_gpio_get_value(int argc, char *argv[])
 	return value;
 }
 
-BAREBOX_CMD_HELP_START(gpio_get_value)
-BAREBOX_CMD_HELP_USAGE("gpio_get_value <gpio>\n")
-BAREBOX_CMD_HELP_SHORT("get the value of an gpio input pin\n")
-BAREBOX_CMD_HELP_END
-
 BAREBOX_CMD_START(gpio_get_value)
 	.cmd		= do_gpio_get_value,
-	.usage		= "return value of a gpio pin",
+	BAREBOX_CMD_DESC("return value of a GPIO pin")
+	BAREBOX_CMD_OPTS("GPIO")
 	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
-	BAREBOX_CMD_HELP(cmd_gpio_get_value_help)
 BAREBOX_CMD_END
 
 static int do_gpio_set_value(int argc, char *argv[])
@@ -59,16 +54,11 @@ static int do_gpio_set_value(int argc, char *argv[])
 	return 0;
 }
 
-BAREBOX_CMD_HELP_START(gpio_set_value)
-BAREBOX_CMD_HELP_USAGE("gpio_set_value <gpio> <value>\n")
-BAREBOX_CMD_HELP_SHORT("set the value of an gpio output pin\n")
-BAREBOX_CMD_HELP_END
-
 BAREBOX_CMD_START(gpio_set_value)
 	.cmd		= do_gpio_set_value,
-	.usage		= "set a gpio's output value",
+	BAREBOX_CMD_DESC("set a GPIO's output value")
+	BAREBOX_CMD_OPTS("GPIO VALUE")
 	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
-	BAREBOX_CMD_HELP(cmd_gpio_set_value_help)
 BAREBOX_CMD_END
 
 static int do_gpio_direction_input(int argc, char *argv[])
@@ -87,16 +77,11 @@ static int do_gpio_direction_input(int argc, char *argv[])
 	return 0;
 }
 
-BAREBOX_CMD_HELP_START(gpio_direction_input)
-BAREBOX_CMD_HELP_USAGE("gpio_direction_input <gpio>\n")
-BAREBOX_CMD_HELP_SHORT("set direction of a gpio pin to input\n")
-BAREBOX_CMD_HELP_END
-
 BAREBOX_CMD_START(gpio_direction_input)
 	.cmd		= do_gpio_direction_input,
-	.usage		= "set direction of a gpio pin to input",
+	BAREBOX_CMD_DESC("set direction of a GPIO pin to input")
+	BAREBOX_CMD_OPTS("GPIO")
 	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
-	BAREBOX_CMD_HELP(cmd_gpio_direction_input_help)
 BAREBOX_CMD_END
 
 static int do_gpio_direction_output(int argc, char *argv[])
@@ -116,14 +101,10 @@ static int do_gpio_direction_output(int argc, char *argv[])
 	return 0;
 }
 
-BAREBOX_CMD_HELP_START(gpio_direction_output)
-BAREBOX_CMD_HELP_USAGE("gpio_direction_output <gpio> <value>\n")
-BAREBOX_CMD_HELP_SHORT("set direction of a gpio pin to output\n")
-BAREBOX_CMD_HELP_END
-
 BAREBOX_CMD_START(gpio_direction_output)
 	.cmd		= do_gpio_direction_output,
-	.usage		= "set direction of a gpio pin to output",
+	BAREBOX_CMD_DESC("set direction of a GPIO pin to output")
+	BAREBOX_CMD_OPTS("GPIO")
 	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_gpio_direction_output_help)
 BAREBOX_CMD_END
diff --git a/commands/help.c b/commands/help.c
index 7f31ce1..9c33807 100644
--- a/commands/help.c
+++ b/commands/help.c
@@ -42,7 +42,7 @@ static void list_group(int verbose, const char *grpname, uint32_t group)
 			}
 		}
 		if (verbose) {
-			printf("  %-21s %s\n", cmdtp->name, cmdtp->usage);
+			printf("  %-21s %s\n", cmdtp->name, cmdtp->desc);
 			continue;
 		}
 		len = strlen(cmdtp->name);
@@ -67,8 +67,8 @@ static void list_commands(int verbose)
 	putchar('\n');
 	list_group(verbose, "Information",           CMD_GRP_INFO);
 	list_group(verbose, "Boot",                  CMD_GRP_BOOT);
-	list_group(verbose, "Environment",           CMD_GRP_ENV);
 	list_group(verbose, "Partition",             CMD_GRP_PART);
+	list_group(verbose, "Environment",           CMD_GRP_ENV);
 	list_group(verbose, "File",                  CMD_GRP_FILE);
 	list_group(verbose, "Scripting",             CMD_GRP_SCRIPT);
 	list_group(verbose, "Network",               CMD_GRP_NET);
@@ -88,21 +88,31 @@ static void list_commands(int verbose)
 static int do_help(int argc, char *argv[])
 {
 	struct command *cmdtp;
-	int opt, verbose = 0;
+	int opt, verbose = 0, all = 0;
 
-	while ((opt = getopt(argc, argv, "v")) > 0) {
+	while ((opt = getopt(argc, argv, "va")) > 0) {
 		switch (opt) {
 		case 'v':
 			verbose = 1;
 			break;
+		case 'a':
+			all = 1;
+			break;
 		}
 	}
 
+	if (all) {
+		for_each_command(cmdtp)
+			barebox_cmd_usage(cmdtp);
+		return 0;
+	}
+
 	if (optind == argc) {	/* show list of commands */
 		list_commands(verbose);
 		return 0;
 	}
 
+
 	/* command help (long version) */
 	if ((cmdtp = find_cmd(argv[optind])) != NULL) {
 		barebox_cmd_usage(cmdtp);
@@ -110,25 +120,30 @@ static int do_help(int argc, char *argv[])
 	} else {
 		printf ("Unknown command '%s' - try 'help'"
 			" without arguments for list of all"
-			" known commands\n\n", argv[1]
+			" known commands\n\n", argv[optind]
 				);
 		return 1;
 	}
 }
 
-static const __maybe_unused char cmd_help_help[] =
-"Show help information (for 'command')\n"
-"'help' prints online help for the monitor commands.\n\n"
-"Without arguments, it lists all all commands.\n\n"
-"To get detailed help information for specific commands you can type\n"
-"'help' with a command names as argument.\n";
+
+BAREBOX_CMD_HELP_START(help)
+BAREBOX_CMD_HELP_TEXT("Without arguments, lists all all commands. With an argument, print help")
+BAREBOX_CMD_HELP_TEXT("about the specified command. If the argument is 'all', then output help")
+BAREBOX_CMD_HELP_TEXT("for all commands.")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-a", "output help on all commands")
+BAREBOX_CMD_HELP_OPT ("-v", "verbose")
+BAREBOX_CMD_HELP_END
 
 static const char *help_aliases[] = { "?", NULL};
 
 BAREBOX_CMD_START(help)
 	.cmd		= do_help,
 	.aliases	= help_aliases,
-	.usage		= "print online help",
+	BAREBOX_CMD_DESC("print online help")
+	BAREBOX_CMD_OPTS("[-v] [COMMAND]")
 	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
 	BAREBOX_CMD_HELP(cmd_help_help)
 	BAREBOX_CMD_COMPLETE(command_complete)
diff --git a/commands/i2c.c b/commands/i2c.c
index 137cd85..2811f6a 100644
--- a/commands/i2c.c
+++ b/commands/i2c.c
@@ -56,13 +56,14 @@ static int do_i2c_probe(int argc, char *argv[])
 	return 0;
 }
 
-static const __maybe_unused char cmd_i2c_probe_help[] =
-"Usage: i2c_probe bus 0xstartaddr 0xstopaddr\n"
-"probe a range of i2c addresses.\n";
+BAREBOX_CMD_HELP_START(i2c_probe)
+BAREBOX_CMD_HELP_TEXT("Probe the i2c bus BUS, address range from START to END for devices.")
+BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(i2c_probe)
 	.cmd		= do_i2c_probe,
-	.usage		= "probe for an i2c device",
+	BAREBOX_CMD_DESC("probe for an i2c device")
+	BAREBOX_CMD_OPTS("BUS START END")
 	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_i2c_probe_help)
 BAREBOX_CMD_END
@@ -130,17 +131,19 @@ out:
 	return ret;
 }
 
-static const __maybe_unused char cmd_i2c_write_help[] =
-"Usage: i2c_write [OPTION] ... hexdatas\n"
-"write to i2c device.\n"
-"  -a 0x<addr>   i2c device address\n"
-"  -b <bus_num>  i2c bus number (default = 0)\n"
-"  -r 0x<reg>    start register\n"
-"  -w            use 16bit-wide address access\n";
+BAREBOX_CMD_HELP_START(i2c_write)
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-b BUS\t", "i2c bus number (default 0)")
+BAREBOX_CMD_HELP_OPT ("-a ADDR\t", "i2c device address")
+BAREBOX_CMD_HELP_OPT ("-r START", "start register")
+BAREBOX_CMD_HELP_OPT ("-w\t",       "use word (16 bit) wide access")
+BAREBOX_CMD_HELP_OPT ("-v\t",       "verbose")
+BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(i2c_write)
 	.cmd		= do_i2c_write,
-	.usage		= "write to an i2c device",
+	BAREBOX_CMD_DESC("write to an i2c device")
+	BAREBOX_CMD_OPTS("[-barwv] DATA...")
 	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_i2c_write_help)
 BAREBOX_CMD_END
@@ -204,18 +207,21 @@ static int do_i2c_read(int argc, char *argv[])
 	return ret;
 }
 
-static const __maybe_unused char cmd_i2c_read_help[] =
-"Usage: i2c_read [OPTION]\n"
-"read i2c device.\n"
-"  -a 0x<addr>   i2c device address\n"
-"  -b <bus_num>  i2c bus number (default = 0)\n"
-"  -r 0x<reg>    start register\n"
-"  -w            use 16bit-wide address access\n"
-"  -c <count>    byte count\n";
+BAREBOX_CMD_HELP_START(i2c_read)
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT("-b BUS\t", "i2c bus number (default 0)")
+BAREBOX_CMD_HELP_OPT("-a ADDR\t", "i2c device address")
+BAREBOX_CMD_HELP_OPT("-r START", "start register")
+BAREBOX_CMD_HELP_OPT("-w\t",       "use word (16 bit) wide access")
+BAREBOX_CMD_HELP_OPT("-c COUNT", "byte count")
+BAREBOX_CMD_HELP_OPT("-v\t",       "verbose")
+BAREBOX_CMD_HELP_END
+
 
 BAREBOX_CMD_START(i2c_read)
 	.cmd		= do_i2c_read,
-	.usage		= "read from an i2c device",
+	BAREBOX_CMD_DESC("read from an i2c device")
+	BAREBOX_CMD_OPTS("[-bacrwv] DATA...")
 	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_i2c_read_help)
 BAREBOX_CMD_END
diff --git a/commands/insmod.c b/commands/insmod.c
index 5c7c43e..176437e 100644
--- a/commands/insmod.c
+++ b/commands/insmod.c
@@ -32,12 +32,9 @@ static int do_insmod(int argc, char *argv[])
 	return 0;
 }
 
-static const __maybe_unused char cmd_insmod_help[] =
-"Usage: insmod <module>\n";
-
 BAREBOX_CMD_START(insmod)
 	.cmd		= do_insmod,
-	.usage		= "insert a module",
+	BAREBOX_CMD_DESC("load a barebox module")
+	BAREBOX_CMD_OPTS("[MODULE]")
 	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
-	BAREBOX_CMD_HELP(cmd_insmod_help)
 BAREBOX_CMD_END
diff --git a/commands/iomemport.c b/commands/iomemport.c
index d4a1672..5294c13 100644
--- a/commands/iomemport.c
+++ b/commands/iomemport.c
@@ -49,7 +49,7 @@ static int do_iomem(int argc, char *argv[])
 
 BAREBOX_CMD_START(iomem)
 	.cmd		= do_iomem,
-	.usage		= "show iomem usage",
+	BAREBOX_CMD_DESC("show IO memory usage")
 	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
 BAREBOX_CMD_END
 
@@ -63,7 +63,7 @@ static int do_ioport(int argc, char *argv[])
 
 BAREBOX_CMD_START(ioport)
 	.cmd		= do_ioport,
-	.usage		= "show ioport usage",
+	BAREBOX_CMD_DESC("show IO port usage")
 	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
 BAREBOX_CMD_END
 #endif
diff --git a/commands/led.c b/commands/led.c
index 0e57d7e..62c72a3 100644
--- a/commands/led.c
+++ b/commands/led.c
@@ -80,14 +80,17 @@ is allowed.
 */
 
 BAREBOX_CMD_HELP_START(led)
-BAREBOX_CMD_HELP_USAGE("led <led> <value>\n")
-BAREBOX_CMD_HELP_SHORT("control the value of a LED. a value of 0 means disabled\n")
-BAREBOX_CMD_HELP_SHORT("without arguments the available LEDs are listed\n")
+BAREBOX_CMD_HELP_TEXT("Control the value of a LED. The exact meaning of VALUE is unspecified,")
+BAREBOX_CMD_HELP_TEXT("it can be a brightness, or a color. Most often a value of '1' means on")
+BAREBOX_CMD_HELP_TEXT("and '0' means off.")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Without arguments the available LEDs are listed.")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(led)
 	.cmd		= do_led,
-	.usage		= "led <led> <value>",
+	BAREBOX_CMD_DESC("control LEDs")
+	BAREBOX_CMD_OPTS("LED VALUE")
 	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_led_help)
 BAREBOX_CMD_END
diff --git a/commands/let.c b/commands/let.c
index 68c98e3..3c84d27 100644
--- a/commands/let.c
+++ b/commands/let.c
@@ -63,32 +63,31 @@ static int do_let(int argc, char *argv[])
 }
 
 BAREBOX_CMD_HELP_START(let)
-BAREBOX_CMD_HELP_USAGE("let expr [expr ...]\n")
-BAREBOX_CMD_HELP_SHORT("evaluate arithmetic expressions\n")
-BAREBOX_CMD_HELP_TEXT ("supported operations are in order of decreasing precedence:\n")
-BAREBOX_CMD_HELP_TEXT ("	X++, X--\n")
-BAREBOX_CMD_HELP_TEXT ("	++X, --X\n")
-BAREBOX_CMD_HELP_TEXT ("	+X, -X\n")
-BAREBOX_CMD_HELP_TEXT ("	!X, ~X\n")
-BAREBOX_CMD_HELP_TEXT ("	X**Y\n")
-BAREBOX_CMD_HELP_TEXT ("	X*Y, X/Y, X%Y\n")
-BAREBOX_CMD_HELP_TEXT ("	X+Y, X-Y\n")
-BAREBOX_CMD_HELP_TEXT ("	X<<Y, X>>Y\n")
-BAREBOX_CMD_HELP_TEXT ("	X<Y, X<=Y, X>=Y, X>Y\n")
-BAREBOX_CMD_HELP_TEXT ("	X==Y, X!=Y\n")
-BAREBOX_CMD_HELP_TEXT ("	X&Y\n")
-BAREBOX_CMD_HELP_TEXT ("	X^Y\n")
-BAREBOX_CMD_HELP_TEXT ("	X|Y\n")
-BAREBOX_CMD_HELP_TEXT ("	X&&Y\n")
-BAREBOX_CMD_HELP_TEXT ("	X||Y\n")
-BAREBOX_CMD_HELP_TEXT ("	X?Y:Z\n")
-BAREBOX_CMD_HELP_TEXT ("	X*=Y, X/=Y, X%=Y\n")
-BAREBOX_CMD_HELP_TEXT ("	X=Y, X&=Y, X|=Y, X^=Y, X+=Y, X-=Y, X<<=Y, X>>=Y\n")
+BAREBOX_CMD_HELP_TEXT ("Supported operations are in order of decreasing precedence:")
+BAREBOX_CMD_HELP_TEXT ("	X++, X--")
+BAREBOX_CMD_HELP_TEXT ("	++X, --X")
+BAREBOX_CMD_HELP_TEXT ("	+X, -X")
+BAREBOX_CMD_HELP_TEXT ("	!X, ~X")
+BAREBOX_CMD_HELP_TEXT ("	X**Y")
+BAREBOX_CMD_HELP_TEXT ("	X*Y, X/Y, X%Y")
+BAREBOX_CMD_HELP_TEXT ("	X+Y, X-Y")
+BAREBOX_CMD_HELP_TEXT ("	X<<Y, X>>Y")
+BAREBOX_CMD_HELP_TEXT ("	X<Y, X<=Y, X>=Y, X>Y")
+BAREBOX_CMD_HELP_TEXT ("	X==Y, X!=Y")
+BAREBOX_CMD_HELP_TEXT ("	X&Y")
+BAREBOX_CMD_HELP_TEXT ("	X^Y")
+BAREBOX_CMD_HELP_TEXT ("	X|Y")
+BAREBOX_CMD_HELP_TEXT ("	X&&Y")
+BAREBOX_CMD_HELP_TEXT ("	X||Y")
+BAREBOX_CMD_HELP_TEXT ("	X?Y:Z")
+BAREBOX_CMD_HELP_TEXT ("	X*=Y, X/=Y, X%=Y")
+BAREBOX_CMD_HELP_TEXT ("	X=Y, X&=Y, X|=Y, X^=Y, X+=Y, X-=Y, X<<=Y, X>>=Y")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(let)
 	.cmd            = do_let,
-	.usage          = "evaluate arithmetic expressions",
+	BAREBOX_CMD_DESC("evaluate arithmetic expressions")
+	BAREBOX_CMD_OPTS("EXPR [EXPR ...]")
 	BAREBOX_CMD_GROUP(CMD_GRP_SCRIPT)
 	BAREBOX_CMD_HELP(cmd_let_help)
 BAREBOX_CMD_END
diff --git a/commands/linux16.c b/commands/linux16.c
index ac1265a..65814f4 100644
--- a/commands/linux16.c
+++ b/commands/linux16.c
@@ -318,9 +318,16 @@ on_error:
 }
 
 BAREBOX_CMD_HELP_START(linux16)
-BAREBOX_CMD_HELP_USAGE("linux16 <file> [-v <mode>]\n")
-BAREBOX_CMD_HELP_SHORT("Boot a kernel <file> on x86 via real mode code.\n")
-BAREBOX_CMD_HELP_OPT  ("-v <mode>",   "VESA video mode number or 'ask'\n")
+BAREBOX_CMD_HELP_TEXT("Load kernel from FILE and boot on x86 in real-mode.")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Only kernel images in bzImage format are supported by now.")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("For the video mode refer the Linux kernel documentation")
+BAREBOX_CMD_HELP_TEXT("'Documentation/fb/vesafb.txt' for correct VESA mode numbers. Use 'ask'")
+BAREBOX_CMD_HELP_TEXT("instead of a number to make Linux for options..")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-v VESAMODE",   "set VESAMODE")
 BAREBOX_CMD_HELP_END
 
 /**
@@ -337,7 +344,8 @@ x86_boot_preparation for more info about how to use this command.</p>
 
 BAREBOX_CMD_START(linux16)
 	.cmd		= do_linux16,
-	.usage		= "boot a linux kernel",
+	BAREBOX_CMD_DESC("boot a linux kernel on x86 via real-mode code")
+	BAREBOX_CMD_OPTS("[-v VESAMODE] FILE")
 	BAREBOX_CMD_GROUP(CMD_GRP_BOOT)
 	BAREBOX_CMD_HELP(cmd_linux16_help)
 BAREBOX_CMD_END
diff --git a/commands/linux_exec.c b/commands/linux_exec.c
index a057fc5..741168a 100644
--- a/commands/linux_exec.c
+++ b/commands/linux_exec.c
@@ -45,14 +45,9 @@ static int do_linux_exec(int argc, char *argv[])
 	return 0;
 }
 
-BAREBOX_CMD_HELP_START(linux_exec)
-BAREBOX_CMD_HELP_USAGE("linux_exec ...\n")
-BAREBOX_CMD_HELP_SHORT("Execute a command on the host\n")
-BAREBOX_CMD_HELP_END
-
 BAREBOX_CMD_START(linux_exec)
 	.cmd		= do_linux_exec,
-	.usage		= "Execute a command on the host",
+	BAREBOX_CMD_DESC("execute a command on the host")
+	BAREBOX_CMD_OPTS("COMMAND")
 	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
-	BAREBOX_CMD_HELP(cmd_linux_exec_help)
 BAREBOX_CMD_END
diff --git a/commands/ln.c b/commands/ln.c
index f622819..28e524e 100644
--- a/commands/ln.c
+++ b/commands/ln.c
@@ -39,14 +39,9 @@ static int do_ln(int argc, char *argv[])
 	return 0;
 }
 
-BAREBOX_CMD_HELP_START(ln)
-BAREBOX_CMD_HELP_USAGE("ln SRC DEST\n")
-BAREBOX_CMD_HELP_SHORT("symlink - make a new name for a file\n")
-BAREBOX_CMD_HELP_END
-
 BAREBOX_CMD_START(ln)
 	.cmd		= do_ln,
-	.usage		= "symlink - make a new name for a file",
+	BAREBOX_CMD_DESC("create symlink (make a new name for a file)")
+	BAREBOX_CMD_OPTS("SRC DEST")
 	BAREBOX_CMD_GROUP(CMD_GRP_FILE)
-	BAREBOX_CMD_HELP(cmd_ln_help)
 BAREBOX_CMD_END
diff --git a/commands/loadb.c b/commands/loadb.c
index 6ff36dc..28eebf4 100644
--- a/commands/loadb.c
+++ b/commands/loadb.c
@@ -698,16 +698,19 @@ static int do_load_serial_bin(int argc, char *argv[])
 	return rcode;
 }
 
-static const __maybe_unused char cmd_loadb_help[] =
-    "[OPTIONS]\n"
-    "  -f file   - where to download to - defaults to " DEF_FILE "\n"
-    "  -o offset - what offset to download - defaults to 0\n"
-    "  -b baud   - baudrate at which to download - defaults to "
-    "console baudrate\n"
-    "  -c        - Create file if it is not present - default disabled";
+BAREBOX_CMD_HELP_START(loadb)
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT("-f FILE", "download to FILE (default " DEF_FILE ")")
+BAREBOX_CMD_HELP_OPT("-o OFFS", "destination file OFFSet (default 0)")
+BAREBOX_CMD_HELP_OPT("-b BAUD", "baudrate for download (default: console baudrate")
+BAREBOX_CMD_HELP_OPT("-c",      "create file if not present")
+BAREBOX_CMD_HELP_END
+
 BAREBOX_CMD_START(loadb)
 	.cmd = do_load_serial_bin,
-	.usage = "Load binary file over serial line (kermit mode)",
+	BAREBOX_CMD_DESC("load binary file over serial line (Kermit)")
+	BAREBOX_CMD_OPTS(" FILE")
 	BAREBOX_CMD_GROUP(CMD_GRP_BOOT)
 	BAREBOX_CMD_HELP(cmd_loadb_help)
 BAREBOX_CMD_END
diff --git a/commands/loadenv.c b/commands/loadenv.c
index ef7ad13..ba92613 100644
--- a/commands/loadenv.c
+++ b/commands/loadenv.c
@@ -103,11 +103,13 @@ static int do_loadenv(int argc, char *argv[])
 }
 
 BAREBOX_CMD_HELP_START(loadenv)
-BAREBOX_CMD_HELP_USAGE("loadenv OPTIONS [ENVFS] [DIRECTORY]\n")
-BAREBOX_CMD_HELP_OPT("-n", "do not overwrite existing files\n")
-BAREBOX_CMD_HELP_OPT("-s", "scrub old environment\n")
-BAREBOX_CMD_HELP_OPT("-d", "load default environment\n")
-BAREBOX_CMD_HELP_SHORT("Load environment from ENVFS into DIRECTORY (default: /dev/env0 -> /env).\n")
+BAREBOX_CMD_HELP_TEXT("Load environment from files in ENVFS (default /dev/env0) in")
+BAREBOX_CMD_HELP_TEXT("DIRECTORY (default /env")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT("-n", "do not overwrite existing files")
+BAREBOX_CMD_HELP_OPT("-s", "scrub old environment")
+BAREBOX_CMD_HELP_OPT("-d", "load default environment")
 BAREBOX_CMD_HELP_END
 
 /**
@@ -121,7 +123,8 @@ ENVFS can only handle files, directories are skipped silently.
 
 BAREBOX_CMD_START(loadenv)
 	.cmd		= do_loadenv,
-	.usage		= "Load environment from ENVFS into DIRECTORY (default: /dev/env0 -> /env).",
+	BAREBOX_CMD_DESC("load environment from ENVFS")
+	BAREBOX_CMD_OPTS("{-nsd] [ENVFS] [DIRECTORY]")
 	BAREBOX_CMD_GROUP(CMD_GRP_ENV)
 	BAREBOX_CMD_HELP(cmd_loadenv_help)
 BAREBOX_CMD_END
diff --git a/commands/loads.c b/commands/loads.c
index d67372b..24093e1 100644
--- a/commands/loads.c
+++ b/commands/loads.c
@@ -270,13 +270,14 @@ static int write_record(char *buf)
 }
 #endif /* CONFIG_CMD_SAVES */
 
-static const __maybe_unused char cmd_loads_help[] =
-	"[ off ]\n"
-	"    - load S-Record file over serial line with offset 'off'\n";
+BAREBOX_CMD_HELP_START(loads)
+BAREBOX_CMD_HELP_TEXT("Load S-Record file over serial line with offset OFFS.")
+BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(loads)
 	.cmd		= do_load_serial,
-	.usage		= "load S-Record file over serial line",
+	BAREBOX_CMD_DESC("load binary file over serial line (S-Records)")
+	BAREBOX_CMD_OPTS("OFFS")
 	BAREBOX_CMD_GROUP(CMD_GRP_BOOT)
 	BAREBOX_CMD_HELP(cmd_loads_help)
 BAREBOX_CMD_END
@@ -286,14 +287,14 @@ BAREBOX_CMD_END
  */
 
 #ifdef CONFIG_CMD_SAVES
-static const __maybe_unused char cmd_saves_help[] =
-	"[ off ] [size]\n"
-	"    - save S-Record file over serial line with offset 'off' "
-	"and size 'size'\n";
+BAREBOX_CMD_HELP_START(saves)
+BAREBOX_CMD_HELP_TEXT("Save S-Record file to serial line with offset OFFS and length LEN.")
+BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(saves)
 	.cmd		= do_save_serial,
-	.usage		= "save S-Record file over serial line",
+	BAREBOX_CMD_DESC("save file over serial line (S-Records)")
+	BAREBOX_CMD_OPTS("OFFS LEN")
 	BAREBOX_CMD_GROUP(CMD_GRP_BOOT)
 	BAREBOX_CMD_HELP(cmd_saves_help)
 BAREBOX_CMD_END
diff --git a/commands/loadxy.c b/commands/loadxy.c
index acc800b..0557951 100644
--- a/commands/loadxy.c
+++ b/commands/loadxy.c
@@ -140,6 +140,22 @@ static int do_loady(int argc, char *argv[])
 	return rcode;
 }
 
+BAREBOX_CMD_HELP_START(loady)
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT("-g", "use Y-Modem/G (use on lossless tty such as USB)")
+BAREBOX_CMD_HELP_OPT("-b BAUD", "baudrate for download (default: console baudrate")
+BAREBOX_CMD_HELP_OPT("-t NAME", "console name to use (default: current)")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(loady)
+	.cmd = do_loady,
+	BAREBOX_CMD_DESC("load binary file over serial line (Y-Modem)")
+	BAREBOX_CMD_OPTS("[-gtb]")
+	BAREBOX_CMD_GROUP(CMD_GRP_BOOT)
+	BAREBOX_CMD_HELP(cmd_loady_help)
+BAREBOX_CMD_END
+
+
 /**
  * @brief provide the loadx(X-Modem) support
  *
@@ -184,7 +200,7 @@ static int do_loadx(int argc, char *argv[])
 	else
 		cdev = console_get_first_active();
 	if (!cdev) {
-		printf("%s:No console device %s with STDIN and STDOUT\n",
+		printf("%s:No console device %s with STDIN and STDOUT",
 		       argv[0], cname ? cname : "default");
 		return -ENODEV;
 	}
@@ -224,32 +240,19 @@ static int do_loadx(int argc, char *argv[])
 	return rcode;
 }
 
-static const __maybe_unused char cmd_loadx_help[] =
-	"[OPTIONS]\n"
-	"  -f file   - where to download to - defaults to " DEF_FILE "\n"
-	"  -o offset - what offset to download - defaults to 0\n"
-	"  -t name   - console device name to use - defaults to current console\n"
-	"  -b baud   - baudrate at which to download - defaults to console baudrate\n"
-	"  -c        - Create file if it is not present - default disabled";
+BAREBOX_CMD_HELP_START(loadx)
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT("-f FILE", "download to FILE (default " DEF_FILE ")")
+BAREBOX_CMD_HELP_OPT("-o OFFS", "destination file OFFSet (default 0)")
+BAREBOX_CMD_HELP_OPT("-b BAUD", "baudrate for download (default: console baudrate")
+BAREBOX_CMD_HELP_OPT("-t NAME", "console name to use (default: current)")
+BAREBOX_CMD_HELP_OPT("-c",      "create file if not present")
+BAREBOX_CMD_HELP_END
 
-#ifdef CONFIG_CMD_LOADY
 BAREBOX_CMD_START(loadx)
 	.cmd = do_loadx,
-	.usage = "Load binary file over serial line (X-Modem)",
-	BAREBOX_CMD_GROUP(CMD_GRP_BOOT)
-BAREBOX_CMD_HELP(cmd_loadx_help)
-BAREBOX_CMD_END
-
-static const __maybe_unused char cmd_loady_help[] =
-	"[OPTIONS]\n"
-	"  -g        - use Y-Modem/G (only for lossless tty as USB)\n"
-	"  -t name   - console device name to use - defaults to current console\n"
-	"  -b baud   - baudrate at which to download - defaults to console baudrate\n";
-
-BAREBOX_CMD_START(loady)
-	.cmd = do_loady,
-	.usage = "Load binary file over serial line (Y-Modem or Y-Modem/G)",
+	BAREBOX_CMD_DESC("load binary file over serial line (X-Modem)")
+	BAREBOX_CMD_OPTS("[-fptbc]")
 	BAREBOX_CMD_GROUP(CMD_GRP_BOOT)
-BAREBOX_CMD_HELP(cmd_loady_help)
+	BAREBOX_CMD_HELP(cmd_loadx_help)
 BAREBOX_CMD_END
-#endif
diff --git a/commands/login.c b/commands/login.c
index 35ab84a..210eb20 100644
--- a/commands/login.c
+++ b/commands/login.c
@@ -78,15 +78,19 @@ static int do_login(int argc, char *argv[])
 	return 0;
 }
 
-static const __maybe_unused char cmd_login_help[] =
-"Usage: login [-t timeout [<command>]]\n"
-"If a timeout is specified and expired the command will be executed;\n"
-"\"boot\" by default\n"
-;
+BAREBOX_CMD_HELP_START(login)
+BAREBOX_CMD_HELP_TEXT("Asks for a password from the console before script execution continues.")
+BAREBOX_CMD_HELP_TEXT("The password can be set with the 'passwd' command. Instead of specifying")
+BAREBOX_CMD_HELP_TEXT("a TIMEOUT the magic variable 'global.login.timeout' could be set.")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT("-t TIMEOUT", "Execute COMMAND if no login withing TIMEOUT seconds")
+BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(login)
 	.cmd		= do_login,
-	.usage		= "login",
+	BAREBOX_CMD_DESC("ask for a password")
+	BAREBOX_CMD_OPTS("[-t TIMEOUT] COMMAND")
 	BAREBOX_CMD_GROUP(CMD_GRP_CONSOLE)
 	BAREBOX_CMD_HELP(cmd_login_help)
 	BAREBOX_CMD_COMPLETE(empty_complete)
diff --git a/commands/ls.c b/commands/ls.c
index 60bbfe3..3440790 100644
--- a/commands/ls.c
+++ b/commands/ls.c
@@ -204,14 +204,18 @@ static int do_ls(int argc, char *argv[])
 }
 
 BAREBOX_CMD_HELP_START(ls)
-BAREBOX_CMD_HELP_USAGE("ls [OPTIONS] [FILES]\n")
-BAREBOX_CMD_HELP_SHORT("List information about the FILEs (the current directory by default).\n")
-BAREBOX_CMD_HELP_OPT  ("-R",  "list subdirectories recursively\n")
+BAREBOX_CMD_HELP_TEXT("List information about the specified files or directories.")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-l",  "long format")
+BAREBOX_CMD_HELP_OPT ("-C",  "column format (opposite of long format)")
+BAREBOX_CMD_HELP_OPT ("-R",  "list subdirectories recursively")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(ls)
 	.cmd		= do_ls,
-	.usage		= "list a file or directory",
+	BAREBOX_CMD_DESC("list a file or directory")
+	BAREBOX_CMD_OPTS("[-lCR] [FILEDIR...]")
 	BAREBOX_CMD_GROUP(CMD_GRP_FILE)
 	BAREBOX_CMD_HELP(cmd_ls_help)
 BAREBOX_CMD_END
diff --git a/commands/lsmod.c b/commands/lsmod.c
index 751ecfe..711c1c6 100644
--- a/commands/lsmod.c
+++ b/commands/lsmod.c
@@ -15,7 +15,7 @@ static int do_lsmod(int argc, char *argv[])
 
 BAREBOX_CMD_START(lsmod)
 	.cmd		= do_lsmod,
-	.usage		= "list modules",
+	BAREBOX_CMD_DESC("list loaded barebox modules")
 	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
 	BAREBOX_CMD_COMPLETE(empty_complete)
 BAREBOX_CMD_END
diff --git a/commands/magicvar.c b/commands/magicvar.c
index 8f93227..d92788a 100644
--- a/commands/magicvar.c
+++ b/commands/magicvar.c
@@ -16,6 +16,6 @@ static int do_magicvar(int argc, char *argv[])
 
 BAREBOX_CMD_START(magicvar)
 	.cmd		= do_magicvar,
-	.usage		= "List information about magic variables",
+	BAREBOX_CMD_DESC("list information about magic variables")
 	BAREBOX_CMD_GROUP(CMD_GRP_ENV)
 BAREBOX_CMD_END
diff --git a/commands/md.c b/commands/md.c
index e5eb705..c1361a6 100644
--- a/commands/md.c
+++ b/commands/md.c
@@ -89,29 +89,28 @@ out:
 	return ret ? 1 : 0;
 }
 
-static const __maybe_unused char cmd_md_help[] =
-"Usage md [OPTIONS] <region>\n"
-"display (hexdump) a memory region.\n"
-"options:\n"
-"  -s <file>   display file (default /dev/mem)\n"
-"  -b          output in bytes\n"
-"  -w          output in halfwords (16bit)\n"
-"  -l          output in words (32bit)\n"
-"  -x          swap bytes at output\n"
-"\n"
-"Memory regions:\n"
-"Memory regions can be specified in two different forms: start+size\n"
-"or start-end, If <start> is omitted it defaults to 0. If end is omitted it\n"
-"defaults to the end of the device, except for interactive commands like md\n"
-"and mw for which it defaults to 0x100.\n"
-"Sizes can be specified as decimal, or if prefixed with 0x as hexadecimal.\n"
-"an optional suffix of k, M or G is for kibibytes, Megabytes or Gigabytes,\n"
-"respectively\n";
+
+BAREBOX_CMD_HELP_START(md)
+BAREBOX_CMD_HELP_TEXT("Display (hex dump) a memory region.")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-b",  "byte access")
+BAREBOX_CMD_HELP_OPT ("-w",  "word access (16 bit)")
+BAREBOX_CMD_HELP_OPT ("-l",  "long access (32 bit)")
+BAREBOX_CMD_HELP_OPT ("-s FILE",  "display file (default /dev/mem)")
+BAREBOX_CMD_HELP_OPT ("-x",       "swap bytes at output")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Memory regions can be specified in two different forms: START+SIZE")
+BAREBOX_CMD_HELP_TEXT("or START-END, If START is omitted it defaults to 0x100")
+BAREBOX_CMD_HELP_TEXT("Sizes can be specified as decimal, or if prefixed with 0x as hexadecimal.")
+BAREBOX_CMD_HELP_TEXT("An optional suffix of k, M or G is for kbytes, Megabytes or Gigabytes.")
+BAREBOX_CMD_HELP_END
 
 
 BAREBOX_CMD_START(md)
 	.cmd		= do_mem_md,
-	.usage		= "memory display",
+	BAREBOX_CMD_DESC("memory display")
+	BAREBOX_CMD_OPTS("[-bwlsx] REGION")
 	BAREBOX_CMD_GROUP(CMD_GRP_MEM)
 	BAREBOX_CMD_HELP(cmd_md_help)
 BAREBOX_CMD_END
diff --git a/commands/memcmp.c b/commands/memcmp.c
index ea178c9..d048150 100644
--- a/commands/memcmp.c
+++ b/commands/memcmp.c
@@ -128,22 +128,24 @@ out:
 	return ret;
 }
 
-static const __maybe_unused char cmd_memcmp_help[] =
-"Usage: memcmp [OPTIONS] <addr1> <addr2> <count>\n"
-"\n"
-"options:\n"
-"  -b, -w, -l	use byte, halfword, or word accesses\n"
-"  -s <file>    source file (default /dev/mem)\n"
-"  -d <file>    destination file (default /dev/mem)\n"
-"\n"
-"Compare memory regions specified with addr1 and addr2\n"
-"of size <count> bytes. If source is a file count can\n"
-"be left unspecified in which case the whole file is\n"
-"compared\n";
+BAREBOX_CMD_HELP_START(memcmp)
+BAREBOX_CMD_HELP_TEXT("Compare memory regions specified with ADDR and ADDR2")
+BAREBOX_CMD_HELP_TEXT("of size COUNT bytes. If source is a file COUNT can")
+BAREBOX_CMD_HELP_TEXT("be left unspecified, in which case the whole file is")
+BAREBOX_CMD_HELP_TEXT("compared.")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-b",  "byte access")
+BAREBOX_CMD_HELP_OPT ("-w",  "word access (16 bit)")
+BAREBOX_CMD_HELP_OPT ("-l",  "long access (32 bit)")
+BAREBOX_CMD_HELP_OPT ("-s FILE", "source file (default /dev/mem)")
+BAREBOX_CMD_HELP_OPT ("-d FILE", "destination file (default /dev/mem)")
+BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(memcmp)
 	.cmd		= do_memcmp,
-	.usage		= "memory compare",
+	BAREBOX_CMD_DESC("memory compare")
+	BAREBOX_CMD_OPTS("[-bwlsd] ADDR1 ADDR2 COUNT")
 	BAREBOX_CMD_GROUP(CMD_GRP_MEM)
 	BAREBOX_CMD_HELP(cmd_memcmp_help)
 BAREBOX_CMD_END
diff --git a/commands/memcpy.c b/commands/memcpy.c
index 5a791b0..78716b1 100644
--- a/commands/memcpy.c
+++ b/commands/memcpy.c
@@ -128,19 +128,21 @@ out:
 	return ret;
 }
 
-static const __maybe_unused char cmd_memcpy_help[] =
-"Usage: memcpy [OPTIONS] <src> <dst> <count>\n"
-"\n"
-"options:\n"
-"  -b, -w, -l   use byte, halfword, or word accesses\n"
-"  -s <file>    source file (default /dev/mem)\n"
-"  -d <file>    destination file (default /dev/mem)\n"
-"\n"
-"Copy memory at <src> of <count> bytes to <dst>\n";
+BAREBOX_CMD_HELP_START(memcpy)
+BAREBOX_CMD_HELP_TEXT("Copy memory at SRC of COUNT bytes to DEST")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-b", "byte access")
+BAREBOX_CMD_HELP_OPT ("-w", "word access (16 bit)")
+BAREBOX_CMD_HELP_OPT ("-l", "long access (32 bit)")
+BAREBOX_CMD_HELP_OPT ("-s FILE", "source file (default /dev/mem)")
+BAREBOX_CMD_HELP_OPT ("-d FILE", "write file (default /dev/mem)")
+BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(memcpy)
 	.cmd		= do_memcpy,
-	.usage		= "memory copy",
+	BAREBOX_CMD_DESC("memory copy")
+	BAREBOX_CMD_OPTS("[-bwlsd] SRC DEST COUNT")
 	BAREBOX_CMD_GROUP(CMD_GRP_MEM)
 	BAREBOX_CMD_HELP(cmd_memcpy_help)
 BAREBOX_CMD_END
diff --git a/commands/meminfo.c b/commands/meminfo.c
index a73c462..87c76fc 100644
--- a/commands/meminfo.c
+++ b/commands/meminfo.c
@@ -30,7 +30,7 @@ static int do_meminfo(int argc, char *argv[])
 
 BAREBOX_CMD_START(meminfo)
 	.cmd		= do_meminfo,
-	.usage		= "print info about memory usage",
+	BAREBOX_CMD_DESC("print info about memory usage")
 	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
 	BAREBOX_CMD_COMPLETE(empty_complete)
 BAREBOX_CMD_END
diff --git a/commands/memset.c b/commands/memset.c
index d557b9e..f869306 100644
--- a/commands/memset.c
+++ b/commands/memset.c
@@ -85,18 +85,20 @@ out:
 	return ret;
 }
 
-static const __maybe_unused char cmd_memset_help[] =
-"Usage: memset [OPTIONS] <addr> <c> <n>\n"
-"\n"
-"options:\n"
-"  -b, -w, -l   use byte, halfword, or word accesses\n"
-"  -d <file>    destination file (default /dev/mem)\n"
-"\n"
-"Fill the first <n> bytes at offset <addr> with byte <c>\n";
+BAREBOX_CMD_HELP_START(memset)
+BAREBOX_CMD_HELP_TEXT("Fills the first COUNT bytes at offset ADDR with byte DATA,")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-b",  "byte access")
+BAREBOX_CMD_HELP_OPT ("-w",  "word access (16 bit)")
+BAREBOX_CMD_HELP_OPT ("-l",  "long access (32 bit)")
+BAREBOX_CMD_HELP_OPT ("-d FILE",  "write file (default /dev/mem)")
+BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(memset)
 	.cmd		= do_memset,
-	.usage		= "memory fill",
+	BAREBOX_CMD_DESC("memory fill")
+	BAREBOX_CMD_OPTS("[-bwld] ADDR COUNT DATA")
 	BAREBOX_CMD_GROUP(CMD_GRP_MEM)
 	BAREBOX_CMD_HELP(cmd_memset_help)
 BAREBOX_CMD_END
diff --git a/commands/memtest.c b/commands/memtest.c
index 8308c6c..c1ffc64 100644
--- a/commands/memtest.c
+++ b/commands/memtest.c
@@ -230,15 +230,17 @@ out:
 	return 0;
 }
 
-static const __maybe_unused char cmd_memtest_help[] =
-"Usage: memtest [OPTION]...\n"
-"memtest related commands\n"
-"	-i	<iterations>	iterations [default=1, endless=0].\n"
-"	-b			perform only a test on buslines.";
+
+BAREBOX_CMD_HELP_START(memtest)
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT("-i ITERATIONS", "perform number of iterations (default 1, 0 is endless)")
+BAREBOX_CMD_HELP_OPT("-b", "perform only a test on bus lines")
+BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(memtest)
 	.cmd		= do_memtest,
-	.usage		= "Memory Test",
+	BAREBOX_CMD_DESC("extensive memory test")
+	BAREBOX_CMD_OPTS("[-ib]")
 	BAREBOX_CMD_GROUP(CMD_GRP_MEM)
 	BAREBOX_CMD_HELP(cmd_memtest_help)
 BAREBOX_CMD_END
diff --git a/commands/menu.c b/commands/menu.c
index 99cb7cb..2008aa5 100644
--- a/commands/menu.c
+++ b/commands/menu.c
@@ -407,71 +407,67 @@ end:
 }
 
 static const __maybe_unused char cmd_menu_help[] =
-"Usage: menu [OPTION]... \n"
-"Manage Menu\n"
+"Manage Menu:\n"
 "  -m  menu\n"
 "  -l  list\n"
 "  -s  show\n"
 #if defined(CONFIG_CMD_MENU_MANAGEMENT)
-"Advanced\n"
+"Advanced menu management:\n"
 "  -e  menu entry\n"
 "  -a  add\n"
 "  -r  remove\n"
 "  -S  select\n"
 #endif
 "\n"
-"How to\n"
-"\n"
-"Show menu\n"
+"Show menu:\n"
 "  (-A auto select delay)\n"
 "  (-d auto select description)\n"
-"  menu -s -m <menu> [-A delay] [-d auto_display]\n"
+"  menu -s -m MENU [-A delay] [-d auto_display]\n"
 "\n"
-"List menu\n"
+"List menu:\n"
 "  menu -l\n"
 "\n"
 #if defined(CONFIG_CMD_MENU_MANAGEMENT)
-"Add a menu\n"
-"  menu -a -m <name> -d <description>\n"
+"Add a menu:\n"
+"  menu -a -m NAME -d DESC\n"
 "\n"
-"Remove a menu\n"
-"  menu -r -m <name>\n"
+"Remove a menu:\n"
+"  menu -r -m NAME\n"
 "\n"
-"Add an entry\n"
+"Add an entry:\n"
 "  (-R for do no exit the menu after executing the command)\n"
 "  (-b for box style 1 for selected)\n"
 "  (and optional -c for the command to run when we change the state)\n"
-"  menu -e -a -m <menu> -c <command> [-R] [-b 0|1] -d <description>\n"
+"  menu -e -a -m MENU -c COMMAND [-R] [-b 0|1] -d DESC\n"
 
-"Add a submenu entry\n"
+"Add a submenu entry:\n"
 "  (-R is not needed)\n"
 "  (-b for box style 1 for selected)\n"
 "  (and -c is not needed)\n"
-"  menu -e -a -m <menu> -u submenu -d [-b 0|1] <description>\n"
+"  menu -e -a -m MENU -u submenu -d [-b 0|1] DESC\n"
 "\n"
-"Remove an entry\n"
-"  menu -e -r -m <name> -n <num>\n"
+"Remove an entry:\n"
+"  menu -e -r -m NAME -n ENTRY\n"
 "\n"
-"Select an entry\n"
-"  menu -m <menu> -S -n <entry num starting at 1>\n"
+"Select an entry:\n"
+"  menu -m <menu> -S -n ENTRY\n"
 "\n"
-"List menu\n"
+"List menu:\n"
 "  menu -e -l [menu]\n"
 "\n"
-"Menu example\n"
-"menu -a -m boot -d \"Boot Menu\"\n"
-"menu -e -a -m boot -c boot -d \"Boot\"\n"
-"menu -e -a -m boot -c reset -d \"Reset\"\n"
-"menu -s -m boot\n"
+"Menu examples:\n"
+"  menu -a -m boot -d \"Boot Menu\"\n"
+"  menu -e -a -m boot -c boot -d \"Boot\"\n"
+"  menu -e -a -m boot -c reset -d \"Reset\"\n"
 #else
-"Menu example\n"
-"menu -s -m boot\n"
+"Menu example:\n"
 #endif
+"  menu -s -m boot\n"
 ;
 
 BAREBOX_CMD_START(menu)
 	.cmd		= do_menu,
-	.usage		= "Menu Management",
+	BAREBOX_CMD_DESC("create and display menus")
 	BAREBOX_CMD_GROUP(CMD_GRP_CONSOLE)
 	BAREBOX_CMD_HELP(cmd_menu_help)
 BAREBOX_CMD_END
diff --git a/commands/menutree.c b/commands/menutree.c
index 4defa66..5d30b67 100644
--- a/commands/menutree.c
+++ b/commands/menutree.c
@@ -32,30 +32,28 @@ static int do_menutree(int argc, char *argv[])
 }
 
 BAREBOX_CMD_HELP_START(menutree)
-BAREBOX_CMD_HELP_USAGE("menutree [OPTIONS]\n")
-"\n"
-"Create a menu from a directory structure\n"
-"Each menu entry is described by a subdirectory. Each subdirectory\n"
-"can contain the following files which further describe the entry:\n"
-"\n"
-"title -  A file containing the title of the entry as shown in the menu\n"
-"box -    If present, the entry is a 'bool' entry. The file contains a variable\n"
-"         name from which the current state of the bool is taken from and saved\n"
-"         to.\n"
-"action - if present this file contains a shell script which is executed when\n"
-"         when the entry is selected.\n"
-"If neither 'box' or 'action' are present this entry is considered a submenu\n"
-"containing more entries.\n"
-"\n"
-"Options:\n"
-" -m <dir>     directory where the menu starts (/env/menu)\n"
-
+BAREBOX_CMD_HELP_TEXT("Each menu entry is described by a subdirectory. Each subdirectory")
+BAREBOX_CMD_HELP_TEXT("can contain the following files which further describe the entry:")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("title  A file containing the title of the entry as shown in the menu")
+BAREBOX_CMD_HELP_TEXT("box    If present, the entry is a 'bool' entry. The file contains a")
+BAREBOX_CMD_HELP_TEXT("       name from which the current state of the bool is taken from and saved")
+BAREBOX_CMD_HELP_TEXT("       to.")
+BAREBOX_CMD_HELP_TEXT("action if present this file contains a shell script which is executed when")
+BAREBOX_CMD_HELP_TEXT("       when the entry is selected.")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("If neither 'box' or 'action' are present, this entry is considered a submenu")
+BAREBOX_CMD_HELP_TEXT("containing more entries.")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-m DIR", "directory where the menu starts (Default: /env/menu)")
 BAREBOX_CMD_HELP_END
 
 
 BAREBOX_CMD_START(menutree)
 	.cmd	= do_menutree,
-	.usage		= "create a menu from a directory structure",
+	BAREBOX_CMD_DESC("create menu from directory structure")
+	BAREBOX_CMD_OPTS("[-m] DIR")
 	BAREBOX_CMD_GROUP(CMD_GRP_CONSOLE)
 	BAREBOX_CMD_HELP(cmd_menutree_help)
 BAREBOX_CMD_END
diff --git a/commands/miitool.c b/commands/miitool.c
index a382e67..5a5278d 100644
--- a/commands/miitool.c
+++ b/commands/miitool.c
@@ -285,8 +285,12 @@ static int do_miitool(int argc, char *argv[])
 }
 
 BAREBOX_CMD_HELP_START(miitool)
-BAREBOX_CMD_HELP_USAGE("miitool [[[-v] -v] -v] <phy>\n")
-BAREBOX_CMD_HELP_SHORT("view status for MII <phy>.\n")
+BAREBOX_CMD_HELP_TEXT("This utility checks or sets the status of a network interface's")
+BAREBOX_CMD_HELP_TEXT("Media Independent Interface (MII) unit. Most fast ethernet")
+BAREBOX_CMD_HELP_TEXT("adapters use an MII to autonegotiate link speed and duplex setting.")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT("-v", "increase verbosity")
 BAREBOX_CMD_HELP_END
 
 /**
@@ -297,7 +301,8 @@ adapters use an MII to autonegotiate link speed and duplex setting.
  */
 BAREBOX_CMD_START(miitool)
 	.cmd		= do_miitool,
-	.usage		= "view media-independent interface status",
+	BAREBOX_CMD_DESC("view media-independent interface status")
+	BAREBOX_CMD_OPTS("[-v] PHY")
 	BAREBOX_CMD_GROUP(CMD_GRP_NET)
 	BAREBOX_CMD_HELP(cmd_miitool_help)
 BAREBOX_CMD_END
diff --git a/commands/mkdir.c b/commands/mkdir.c
index 3a55c0c..1f97886 100644
--- a/commands/mkdir.c
+++ b/commands/mkdir.c
@@ -59,13 +59,17 @@ static int do_mkdir(int argc, char *argv[])
 	return 0;
 }
 
-static const __maybe_unused char cmd_mkdir_help[] =
-"Usage: mkdir [directories]\n"
-"Create new directories\n";
+BAREBOX_CMD_HELP_START(mkdir)
+BAREBOX_CMD_HELP_TEXT("Create new directories")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT("-p", "make parent directories as needed")
+BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(mkdir)
 	.cmd		= do_mkdir,
-	.usage		= "make directories",
+	BAREBOX_CMD_DESC("make directories")
+	BAREBOX_CMD_OPTS("[DIRECTORY ...]")
 	BAREBOX_CMD_GROUP(CMD_GRP_FILE)
 	BAREBOX_CMD_HELP(cmd_mkdir_help)
 BAREBOX_CMD_END
diff --git a/commands/mm.c b/commands/mm.c
index b4565b9..ff2e746 100644
--- a/commands/mm.c
+++ b/commands/mm.c
@@ -103,16 +103,21 @@ out_write:
 	return 1;
 }
 
-static const __maybe_unused char cmd_mm_help[] =
-"Usage: mm [OPTIONS] <adr> <val> <mask>\n"
-"set/clear bits specified with <mask> in <adr> to <value>\n"
-"options:\n"
-"  -b, -w, -l	use byte, halfword, or word accesses\n"
-"  -d <file>	write file (default /dev/mem)\n";
+BAREBOX_CMD_HELP_START(mm)
+BAREBOX_CMD_HELP_TEXT("Set/clear bits specified with MASK in ADDR to VALUE")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-b",  "byte access")
+BAREBOX_CMD_HELP_OPT ("-w",  "word access (16 bit)")
+BAREBOX_CMD_HELP_OPT ("-l",  "long access (32 bit)")
+BAREBOX_CMD_HELP_OPT ("-d FILE",  "write file (default /dev/mem)")
+BAREBOX_CMD_HELP_END
+
 
 BAREBOX_CMD_START(mm)
 	.cmd		= do_mem_mm,
-	.usage		= "memory modify write with mask",
+	BAREBOX_CMD_DESC("memory modify with mask")
+	BAREBOX_CMD_OPTS("[-bwld] ADDR VAL MASK")
 	BAREBOX_CMD_GROUP(CMD_GRP_MEM)
 	BAREBOX_CMD_HELP(cmd_mm_help)
 BAREBOX_CMD_END
diff --git a/commands/mount.c b/commands/mount.c
index 0996a6a..7aa155e 100644
--- a/commands/mount.c
+++ b/commands/mount.c
@@ -116,17 +116,18 @@ static int do_mount(int argc, char *argv[])
 }
 
 BAREBOX_CMD_HELP_START(mount)
-BAREBOX_CMD_HELP_USAGE("mount [[OPTIONS] <device> [mountpoint]]\n")
-BAREBOX_CMD_HELP_OPT("-t <type>", "specify filesystem type\n")
-BAREBOX_CMD_HELP_OPT("-a", "Mount all blockdevices.\n")
-BAREBOX_CMD_HELP_OPT("-v", "be more verbose\n")
-BAREBOX_CMD_HELP_SHORT("Mount a filesystem of a given type to a mountpoint.\n")
-BAREBOX_CMD_HELP_SHORT("If no fstype is specified, try to detect it automatically.\n")
-BAREBOX_CMD_HELP_SHORT("If no argument is given, list mounted filesystems.\n")
-BAREBOX_CMD_HELP_SHORT("With -a the mount command mounts all block devices whose filesystem\n")
-BAREBOX_CMD_HELP_SHORT("can be detected automatically to /mnt/<partname>\n")
-BAREBOX_CMD_HELP_SHORT("If mountpoint is not given a standard mountpoint of /mnt/devname>\n")
-BAREBOX_CMD_HELP_SHORT("is used. This directoy is created automatically if necessary.\n")
+BAREBOX_CMD_HELP_TEXT("If no argument is given, list mounted filesystems.")
+BAREBOX_CMD_HELP_TEXT("If no FSTYPE is specified, try to detect it automatically.")
+BAREBOX_CMD_HELP_TEXT("With -a the mount command mounts all block devices whose filesystem")
+BAREBOX_CMD_HELP_TEXT("can be detected automatically to /mnt/PARTNAME")
+BAREBOX_CMD_HELP_TEXT("If mountpoint is not given, a standard mountpoint of /mnt/DEVICE")
+BAREBOX_CMD_HELP_TEXT("is used. This directoy is created automatically if necessary.")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT("-a\t", "mount all blockdevices")
+BAREBOX_CMD_HELP_OPT("-t FSTYPE", "specify filesystem type")
+BAREBOX_CMD_HELP_OPT("-o OPTIONS", "set file system OPTIONS")
+BAREBOX_CMD_HELP_OPT("-v\t", "verbose")
 BAREBOX_CMD_HELP_END
 
 /**
@@ -162,7 +163,8 @@ the filesystem has been unmounted.
 
 BAREBOX_CMD_START(mount)
 	.cmd		= do_mount,
-	.usage		= "Mount a filesystem of a given type to a mountpoint or list mounted filesystems.",
+	BAREBOX_CMD_DESC("mount a filesystem or list mounted filesystems")
+	BAREBOX_CMD_OPTS("[[-atov] [DEVICE] [MOUNTPOINT]]")
 	BAREBOX_CMD_GROUP(CMD_GRP_PART)
 	BAREBOX_CMD_HELP(cmd_mount_help)
 BAREBOX_CMD_END
diff --git a/commands/msleep.c b/commands/msleep.c
index 0ac8cf8..4aee3c3 100644
--- a/commands/msleep.c
+++ b/commands/msleep.c
@@ -36,6 +36,7 @@ static int do_msleep(int argc, char *argv[])
 
 BAREBOX_CMD_START(msleep)
 	.cmd		= do_msleep,
-	.usage		= "delay execution for n milliseconds",
+	BAREBOX_CMD_DESC("delay execution for n milli-seconds")
+	BAREBOX_CMD_OPTS("MILLISECONDS")
 	BAREBOX_CMD_GROUP(CMD_GRP_SCRIPT)
 BAREBOX_CMD_END
diff --git a/commands/mw.c b/commands/mw.c
index 5c0c992..f0384f6 100644
--- a/commands/mw.c
+++ b/commands/mw.c
@@ -90,16 +90,20 @@ static int do_mem_mw(int argc, char *argv[])
 	return ret ? 1 : 0;
 }
 
-static const __maybe_unused char cmd_mw_help[] =
-"Usage: mw [OPTIONS] <region> <value(s)>\n"
-"Write value(s) to the specifies region.\n"
-"options:\n"
-"  -b, -w, -l	use byte, halfword, or word accesses\n"
-"  -d <file>	write file (default /dev/mem)\n";
+BAREBOX_CMD_HELP_START(mw)
+BAREBOX_CMD_HELP_TEXT("Write DATA value(s) to the specified REGION.")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-b",  "byte access")
+BAREBOX_CMD_HELP_OPT ("-w",  "word access (16 bit)")
+BAREBOX_CMD_HELP_OPT ("-l",  "long access (32 bit)")
+BAREBOX_CMD_HELP_OPT ("-d FILE",  "write file (default /dev/mem)")
+BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(mw)
 	.cmd		= do_mem_mw,
-	.usage		= "memory write (fill)",
+	BAREBOX_CMD_DESC("memory write")
+	BAREBOX_CMD_OPTS("[-bwld] REGION DATA...")
 	BAREBOX_CMD_GROUP(CMD_GRP_MEM)
 	BAREBOX_CMD_HELP(cmd_mw_help)
 BAREBOX_CMD_END
diff --git a/commands/nand.c b/commands/nand.c
index 137fdac..ad1c8c9 100644
--- a/commands/nand.c
+++ b/commands/nand.c
@@ -100,16 +100,17 @@ static int do_nand(int argc, char *argv[])
 	return 0;
 }
 
-static const __maybe_unused char cmd_nand_help[] =
-"Usage: nand [OPTION]...\n"
-"nand related commands\n"
-"  -a  <dev>  register a bad block aware device ontop of a normal nand device\n"
-"  -d  <dev>  deregister a bad block aware device\n"
-"  -b  <ofs> <dev> mark block at offset ofs as bad\n";
+BAREBOX_CMD_HELP_START(nand)
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-a",  "register a bad block aware device ontop of a normal NAND device")
+BAREBOX_CMD_HELP_OPT ("-d",  "deregister a bad block aware device")
+BAREBOX_CMD_HELP_OPT ("-b OFFS",  "mark block at OFFSet as bad")
+BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(nand)
 	.cmd		= do_nand,
-	.usage		= "NAND specific handling",
+	BAREBOX_CMD_DESC("NAND flash handling")
+	BAREBOX_CMD_OPTS("[-adb] NANDDEV")
 	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_nand_help)
 BAREBOX_CMD_END
diff --git a/commands/nandtest.c b/commands/nandtest.c
index 8af75ba..ee7725d 100644
--- a/commands/nandtest.c
+++ b/commands/nandtest.c
@@ -336,19 +336,20 @@ err:
 	return 1;
 }
 
-/* String for usage of nandtest */
-static const __maybe_unused char cmd_nandtest_help[] =
-"Usage: nandtest [OPTION] <device>\n"
-		"  -t,  Really do a nandtest on device.\n"
-		"  -m,  Mark blocks bad if they appear so.\n"
-		"  -s   <seed>, Supply random seed.\n"
-		"  -i   <iterations>, Number of iterations.\n"
-		"  -o   <offset>, Start offset on flash.\n"
-		"  -l   <length>, Length of flash to test.\n";
+BAREBOX_CMD_HELP_START(nandtest)
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-t",  "Really do a nandtest on device")
+BAREBOX_CMD_HELP_OPT ("-m",  "Mark blocks bad if they appear so")
+BAREBOX_CMD_HELP_OPT ("-s SEED",   "supply random seed")
+BAREBOX_CMD_HELP_OPT ("-i ITERATIONS",  "nNumber of iterations")
+BAREBOX_CMD_HELP_OPT ("-o OFFS",  "start offset on flash")
+BAREBOX_CMD_HELP_OPT ("-l LEN",   "length of flash to test")
+BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(nandtest)
 	.cmd		= do_nandtest,
-	.usage		= "NAND Test",
+	BAREBOX_CMD_DESC("NAND flash memory test")
+	BAREBOX_CMD_OPTS("[-tmsiol] NANDDEVICE")
 	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_nandtest_help)
 BAREBOX_CMD_END
diff --git a/commands/net.c b/commands/net.c
index 19e4541..7508c99 100644
--- a/commands/net.c
+++ b/commands/net.c
@@ -57,14 +57,11 @@ static int do_ethact(int argc, char *argv[])
 	return 0;
 }
 
-static const __maybe_unused char cmd_ethact_help[] =
-"Usage: ethact [ethx]\n";
-
 BAREBOX_CMD_START(ethact)
 	.cmd		= do_ethact,
-	.usage		= "set current ethernet device",
+	BAREBOX_CMD_DESC("get or set current ethernet device")
+	BAREBOX_CMD_OPTS("[ETHX]")
 	BAREBOX_CMD_GROUP(CMD_GRP_NET)
-	BAREBOX_CMD_HELP(cmd_ethact_help)
 	BAREBOX_CMD_COMPLETE(eth_complete)
 BAREBOX_CMD_END
 
diff --git a/commands/of_node.c b/commands/of_node.c
index 17deb50..901da88 100644
--- a/commands/of_node.c
+++ b/commands/of_node.c
@@ -94,14 +94,15 @@ static int do_of_node(int argc, char *argv[])
 }
 
 BAREBOX_CMD_HELP_START(of_node)
-BAREBOX_CMD_HELP_USAGE("of_node [OPTIONS] [NODE] [NAME]\n")
-BAREBOX_CMD_HELP_OPT  ("-c",  "create a new node\n")
-BAREBOX_CMD_HELP_OPT  ("-d",  "delete a node\n")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-c",  "create a new node")
+BAREBOX_CMD_HELP_OPT ("-d",  "delete a node")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(of_node)
 	.cmd		= do_of_node,
-	.usage		= "handle of nodes",
+	BAREBOX_CMD_DESC("create/delete nodes in the device tree")
+	BAREBOX_CMD_OPTS("[-cd] NODE NAME")
 	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
 	BAREBOX_CMD_HELP(cmd_of_node_help)
 BAREBOX_CMD_END
diff --git a/commands/of_property.c b/commands/of_property.c
index dcb85ec..f9f35b2 100644
--- a/commands/of_property.c
+++ b/commands/of_property.c
@@ -301,19 +301,21 @@ static int do_of_property(int argc, char *argv[])
 }
 
 BAREBOX_CMD_HELP_START(of_property)
-BAREBOX_CMD_HELP_USAGE("of_property [OPTIONS] [NODE] [PROPERTY] [VALUES]\n")
-BAREBOX_CMD_HELP_OPT  ("-s",  "set property to value\n")
-BAREBOX_CMD_HELP_OPT  ("-d",  "delete property\n")
-BAREBOX_CMD_HELP_TEXT ("\nvalid formats for values:\n")
-BAREBOX_CMD_HELP_TEXT ("<0x00112233 4 05> - an array of cells. cells not beginning with a digit are\n")
-BAREBOX_CMD_HELP_TEXT ("                    interpreted as node pathes and converted to phandles\n")
-BAREBOX_CMD_HELP_TEXT ("[00 11 22 .. nn]  - byte stream\n")
-BAREBOX_CMD_HELP_TEXT ("If the value does not start with '<' or '[' it is interpreted as strings\n")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-s",  "set property to value")
+BAREBOX_CMD_HELP_OPT ("-d",  "delete property")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Valid formats for values:")
+BAREBOX_CMD_HELP_TEXT("<0x00112233 4 05> - an array of cells. cells not beginning with a digit are")
+BAREBOX_CMD_HELP_TEXT("                    interpreted as node pathes and converted to phandles")
+BAREBOX_CMD_HELP_TEXT("[00 11 22 .. nn]  - byte stream")
+BAREBOX_CMD_HELP_TEXT("If the value does not start with '<' or '[' it is interpreted as string")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(of_property)
 	.cmd		= do_of_property,
-	.usage		= "handle of properties",
+	BAREBOX_CMD_DESC("handle device tree properties")
+	BAREBOX_CMD_OPTS("[-sd] NODE [PROPERTY] [VALUES]")
 	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
 	BAREBOX_CMD_HELP(cmd_of_property_help)
 BAREBOX_CMD_END
diff --git a/commands/oftree.c b/commands/oftree.c
index a0e6802..3253cf1 100644
--- a/commands/oftree.c
+++ b/commands/oftree.c
@@ -193,17 +193,18 @@ out:
 }
 
 BAREBOX_CMD_HELP_START(oftree)
-BAREBOX_CMD_HELP_USAGE("oftree [OPTIONS] [DTB]\n")
-BAREBOX_CMD_HELP_OPT  ("-l",  "Load [DTB] to internal devicetree\n")
-BAREBOX_CMD_HELP_OPT  ("-p",  "probe devices from stored devicetree\n")
-BAREBOX_CMD_HELP_OPT  ("-d",  "dump oftree from [DTB] or the parsed tree if no dtb is given\n")
-BAREBOX_CMD_HELP_OPT  ("-f",  "free stored devicetree\n")
-BAREBOX_CMD_HELP_OPT  ("-n <node>",  "specify root devicenode to dump for -d\n")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-l",  "Load DTB to internal device tree")
+BAREBOX_CMD_HELP_OPT ("-p",  "probe devices from stored device tree")
+BAREBOX_CMD_HELP_OPT ("-f",  "free stored device tree")
+BAREBOX_CMD_HELP_OPT ("-d",  "dump device tree from DTB or the parsed tree if no DTB is given")
+BAREBOX_CMD_HELP_OPT ("-n NODE",  "specify root device NODE to dump for -d")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(oftree)
 	.cmd		= do_oftree,
-	.usage		= "handle devicetrees",
+	BAREBOX_CMD_DESC("handle device trees")
+	BAREBOX_CMD_OPTS("[-lpfdn] [DTB]")
 	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
 	BAREBOX_CMD_HELP(cmd_oftree_help)
 BAREBOX_CMD_END
diff --git a/commands/partition.c b/commands/partition.c
index e33358a..946cf2d 100644
--- a/commands/partition.c
+++ b/commands/partition.c
@@ -165,11 +165,17 @@ static int do_addpart(int argc, char *argv[])
 }
 
 BAREBOX_CMD_HELP_START(addpart)
-BAREBOX_CMD_HELP_USAGE("addpart <device> <part_desc>\n")
-BAREBOX_CMD_HELP_SHORT("Add a partition description to a device.\n")
-BAREBOX_CMD_HELP_OPT  ("-n", "no prefix. Do not prepend the device name as prefix before the partition name\n")
-BAREBOX_CMD_HELP_OPT  ("<device>",    "device being worked on\n")
-BAREBOX_CMD_HELP_OPT  ("<part_desc>", "size1[@offset1](name1)[ro],size2[@offset2](name2)[ro],...\n")
+
+BAREBOX_CMD_HELP_TEXT("The size and the offset can be given in decimal (without any prefix) and")
+BAREBOX_CMD_HELP_TEXT("in hex (prefixed with 0x). Both can have an optional suffix K, M or G.")
+BAREBOX_CMD_HELP_TEXT("The size of the last partition can be specified as '-' for the remaining")
+BAREBOX_CMD_HELP_TEXT("space on the device.  This format is the same as used by the Linux")
+BAREBOX_CMD_HELP_TEXT("kernel or cmdline mtd partitions.")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-n", "do not use the device name as prefix of the partition name")
+BAREBOX_CMD_HELP_OPT ("DEVICE",    "device being worked on")
+BAREBOX_CMD_HELP_OPT ("PART", "SIZE1[@OFFSET1](NAME1)[RO],SIZE2[@OFFSET2](NAME2)[RO],...")
 BAREBOX_CMD_HELP_END
 
 /**
@@ -186,7 +192,8 @@ kernel or cmdline mtd partitions.
 
 BAREBOX_CMD_START(addpart)
 	.cmd = do_addpart,
-	.usage = "adds a partition table to a device",
+	BAREBOX_CMD_DESC("add a partition description to a device")
+	BAREBOX_CMD_OPTS("[-n] DEVICE PART")
 	BAREBOX_CMD_GROUP(CMD_GRP_PART)
 	BAREBOX_CMD_HELP(cmd_addpart_help)
 BAREBOX_CMD_END
@@ -207,8 +214,7 @@ static int do_delpart(int argc, char *argv[])
 }
 
 BAREBOX_CMD_HELP_START(delpart)
-BAREBOX_CMD_HELP_USAGE("delpart <part 1> [<part n>] \n")
-BAREBOX_CMD_HELP_SHORT("Delete partitions previously added to a device with addpart.\n")
+BAREBOX_CMD_HELP_TEXT("Delete partitions previously added to a device with addpart.")
 BAREBOX_CMD_HELP_END
 
 /**
@@ -224,7 +230,8 @@ argument list is taken as a list of partitions to be deleted.
 
 BAREBOX_CMD_START(delpart)
 	.cmd = do_delpart,
-	.usage = "delete partition(s)",
+	BAREBOX_CMD_DESC("delete partition(s)")
+	BAREBOX_CMD_OPTS("PART...")
 	BAREBOX_CMD_GROUP(CMD_GRP_PART)
 	BAREBOX_CMD_HELP(cmd_delpart_help)
 	BAREBOX_CMD_COMPLETE(devfs_partition_complete)
diff --git a/commands/passwd.c b/commands/passwd.c
index 47f7dab..6f68700 100644
--- a/commands/passwd.c
+++ b/commands/passwd.c
@@ -83,16 +83,17 @@ disable:
 	return ret;
 }
 
-static const __maybe_unused char cmd_passwd_help[] =
-"Usage: passwd\n"
-"passwd allow you to specify a password in the env\n"
-"to disable it put an empty password will still use the default password if set\n"
-;
+BAREBOX_CMD_HELP_START(passwd)
+BAREBOX_CMD_HELP_TEXT("'Interactively asks for a password. The digest of this password will be")
+BAREBOX_CMD_HELP_TEXT("stored in " PASSWD_DIR "/passwd. This is then used by the 'login' command.")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Entering an empty string will disable the password function.")
+BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(passwd)
 	.cmd		= do_passwd,
-	.usage		= "passwd",
-	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
+	BAREBOX_CMD_DESC("set password")
+	BAREBOX_CMD_GROUP(CMD_GRP_CONSOLE)
 	BAREBOX_CMD_HELP(cmd_passwd_help)
 	BAREBOX_CMD_COMPLETE(empty_complete)
 BAREBOX_CMD_END
diff --git a/commands/poweroff.c b/commands/poweroff.c
index be749ff..e0ec04f 100644
--- a/commands/poweroff.c
+++ b/commands/poweroff.c
@@ -33,6 +33,6 @@ static int cmd_poweroff(int argc, char *argv[])
 
 BAREBOX_CMD_START(poweroff)
 	.cmd		= cmd_poweroff,
-	.usage		= "Perform POWER OFF of the board",
+	BAREBOX_CMD_DESC("turn the power off")
 	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 BAREBOX_CMD_END
diff --git a/commands/printenv.c b/commands/printenv.c
index 27ca10d..83353ae 100644
--- a/commands/printenv.c
+++ b/commands/printenv.c
@@ -57,8 +57,9 @@ static int do_printenv(int argc, char *argv[])
 }
 
 BAREBOX_CMD_HELP_START(printenv)
-BAREBOX_CMD_HELP_USAGE("printenv [variable]\n")
-BAREBOX_CMD_HELP_SHORT("Print value of one or all environment variables.\n")
+BAREBOX_CMD_HELP_TEXT("If an argument is given, printenv prints the content of an environment")
+BAREBOX_CMD_HELP_TEXT("variable to the terminal. If no argument is specified, all variables are")
+BAREBOX_CMD_HELP_TEXT("printed.")
 BAREBOX_CMD_HELP_END
 
 /**
@@ -72,7 +73,8 @@ printed.</p>
 
 BAREBOX_CMD_START(printenv)
 	.cmd		= do_printenv,
-	.usage		= "Print value of one or all environment variables.",
+	BAREBOX_CMD_DESC("print value of environment variables")
+	BAREBOX_CMD_OPTS("[VARIABLE]")
 	BAREBOX_CMD_GROUP(CMD_GRP_ENV)
 	BAREBOX_CMD_HELP(cmd_printenv_help)
 BAREBOX_CMD_END
diff --git a/commands/pwd.c b/commands/pwd.c
index fb652f5..d5dd161 100644
--- a/commands/pwd.c
+++ b/commands/pwd.c
@@ -29,7 +29,7 @@ static int do_pwd(int argc, char *argv[])
 
 BAREBOX_CMD_START(pwd)
 	.cmd		= do_pwd,
-	.usage		= "print working directory",
+	BAREBOX_CMD_DESC("print working directory")
 	BAREBOX_CMD_GROUP(CMD_GRP_FILE)
 	BAREBOX_CMD_COMPLETE(empty_complete)
 BAREBOX_CMD_END
diff --git a/commands/readf.c b/commands/readf.c
index be88dfa..c8cc574 100644
--- a/commands/readf.c
+++ b/commands/readf.c
@@ -50,15 +50,15 @@ out:
 }
 
 BAREBOX_CMD_HELP_START(readf)
-BAREBOX_CMD_HELP_USAGE("readf <file> <variable>\n")
-BAREBOX_CMD_HELP_SHORT("Read a single line of a file into a shell variable. Leading and trailing whitespaces\n")
-BAREBOX_CMD_HELP_SHORT("are removed, nonvisible characters are stripped. Input is limited to 1024\n")
-BAREBOX_CMD_HELP_SHORT("characters.\n")
+BAREBOX_CMD_HELP_TEXT("Read a single line from FILE into a VARiable. Leading and trailing")
+BAREBOX_CMD_HELP_TEXT("whitespaces are removed, nonvisible characters are stripped. Input is")
+BAREBOX_CMD_HELP_TEXT("limited to 1024 characters.")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(readf)
 	.cmd		= do_readf,
-	.usage		= "read file into variable",
+	BAREBOX_CMD_DESC("read file into variable")
+	BAREBOX_CMD_OPTS("FILE VAR")
 	BAREBOX_CMD_GROUP(CMD_GRP_SCRIPT)
 	BAREBOX_CMD_HELP(cmd_readf_help)
 BAREBOX_CMD_END
diff --git a/commands/readline.c b/commands/readline.c
index c1a2496..e537498 100644
--- a/commands/readline.c
+++ b/commands/readline.c
@@ -41,14 +41,16 @@ static int do_readline(int argc, char *argv[])
 	return 0;
 }
 
-static const __maybe_unused char cmd_readline_help[] =
-"Usage: readline <prompt> VAR\n"
-"readline reads a line of user input into variable VAR.\n";
+BAREBOX_CMD_HELP_START(readline)
+BAREBOX_CMD_HELP_TEXT("First it displays the PROMPT, then it reads a line of user input into")
+BAREBOX_CMD_HELP_TEXT("variable VAR.")
+BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(readline)
 	.cmd		= do_readline,
-	.usage		= "prompt for user input",
-	BAREBOX_CMD_GROUP(CMD_GRP_SCRIPT)
+	BAREBOX_CMD_DESC("prompt for user input")
+	BAREBOX_CMD_OPTS("PROMPT VAR")
+	BAREBOX_CMD_GROUP(CMD_GRP_CONSOLE)
 	BAREBOX_CMD_HELP(cmd_readline_help)
 BAREBOX_CMD_END
 
diff --git a/commands/readlink.c b/commands/readlink.c
index 8d2a191..f17f9e8 100644
--- a/commands/readlink.c
+++ b/commands/readlink.c
@@ -68,14 +68,16 @@ err:
 }
 
 BAREBOX_CMD_HELP_START(readlink)
-BAREBOX_CMD_HELP_USAGE("readlink [-f] FILE REALNAME\n")
-BAREBOX_CMD_HELP_SHORT("read value of a symbolic link and store into $REALNAME\n")
-BAREBOX_CMD_HELP_SHORT("-f canonicalize by following first symlink");
+BAREBOX_CMD_HELP_TEXT("Read value of a symbolic link and store it into VARIABLE.")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-f", "canonicalize by following first symlink");
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(readlink)
 	.cmd		= do_readlink,
-	.usage		= "read value of a symbolic link",
+	BAREBOX_CMD_DESC("read value of a symbolic link")
+	BAREBOX_CMD_OPTS("[-f] FILE VARIABLE")
 	BAREBOX_CMD_GROUP(CMD_GRP_FILE)
 	BAREBOX_CMD_HELP(cmd_readlink_help)
 BAREBOX_CMD_END
diff --git a/commands/reginfo.c b/commands/reginfo.c
index 92108b9..37816cb 100644
--- a/commands/reginfo.c
+++ b/commands/reginfo.c
@@ -29,7 +29,7 @@ static int do_reginfo(int argc, char *argv[])
 
 BAREBOX_CMD_START(reginfo)
 	.cmd		= do_reginfo,
-	.usage		= "print register information",
+	BAREBOX_CMD_DESC("print register information")
 	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
 	BAREBOX_CMD_COMPLETE(empty_complete)
 BAREBOX_CMD_END
diff --git a/commands/regulator.c b/commands/regulator.c
index bdf4d88..e0b704f 100644
--- a/commands/regulator.c
+++ b/commands/regulator.c
@@ -29,6 +29,6 @@ static int do_regulator(int argc, char *argv[])
 
 BAREBOX_CMD_START(regulator)
 	.cmd		= do_regulator,
-	.usage		= "list regulators",
+	BAREBOX_CMD_DESC("list regulators")
 	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
 BAREBOX_CMD_END
diff --git a/commands/reset.c b/commands/reset.c
index 9478618..4f42b91 100644
--- a/commands/reset.c
+++ b/commands/reset.c
@@ -46,15 +46,15 @@ static int cmd_reset(int argc, char *argv[])
 }
 
 BAREBOX_CMD_HELP_START(reset)
-BAREBOX_CMD_HELP_USAGE("reset [-f]\n")
-BAREBOX_CMD_HELP_SHORT("Perform RESET of the CPU.\n")
-BAREBOX_CMD_HELP_OPT("-f",  "force RESET, don't call shutdown\n")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT("-f",  "force RESET, don't call shutdown")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(reset)
 	.cmd		= cmd_reset,
-	.usage		= "Perform RESET of the CPU",
-	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
+	BAREBOX_CMD_DESC("perform RESET of the CPU")
+	BAREBOX_CMD_OPTS("[-f]")
+	BAREBOX_CMD_GROUP(CMD_GRP_BOOT)
 	BAREBOX_CMD_HELP(cmd_reset_help)
 	BAREBOX_CMD_COMPLETE(empty_complete)
 BAREBOX_CMD_END
diff --git a/commands/rm.c b/commands/rm.c
index 39544f4..5f1f582 100644
--- a/commands/rm.c
+++ b/commands/rm.c
@@ -58,14 +58,15 @@ static int do_rm(int argc, char *argv[])
 	return 0;
 }
 
-static const __maybe_unused char cmd_rm_help[] =
-"Usage: rm [OPTIONS] [FILES]\n"
-"Remove files\n"
-"-r  remove directories and their contents recursively\n";
+BAREBOX_CMD_HELP_START(rm)
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-r", "remove directories and their contents recursively")
+BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(rm)
 	.cmd		= do_rm,
-	.usage		= "remove files",
+	BAREBOX_CMD_DESC("remove files")
+	BAREBOX_CMD_OPTS("[-r] FILES...")
 	BAREBOX_CMD_GROUP(CMD_GRP_FILE)
 	BAREBOX_CMD_HELP(cmd_rm_help)
 BAREBOX_CMD_END
diff --git a/commands/rmdir.c b/commands/rmdir.c
index f756537..e1cd5dc 100644
--- a/commands/rmdir.c
+++ b/commands/rmdir.c
@@ -21,13 +21,15 @@ static int do_rmdir(int argc, char *argv[])
 	return 0;
 }
 
-static const __maybe_unused char cmd_rmdir_help[] =
-"Usage: rmdir [directories]\n"
-"Remove directories. The directories have to be empty.\n";
+
+BAREBOX_CMD_HELP_START(rmdir)
+BAREBOX_CMD_HELP_TEXT("Remove directories. The directories have to be empty.")
+BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(rmdir)
 	.cmd		= do_rmdir,
-	.usage		= "remove directorie(s)",
+	BAREBOX_CMD_DESC("remove empty directory(s)")
+	BAREBOX_CMD_OPTS("DIRECTORY...")
 	BAREBOX_CMD_GROUP(CMD_GRP_FILE)
 	BAREBOX_CMD_HELP(cmd_rmdir_help)
 BAREBOX_CMD_END
diff --git a/commands/saveenv.c b/commands/saveenv.c
index 866c91f..d629a94 100644
--- a/commands/saveenv.c
+++ b/commands/saveenv.c
@@ -48,13 +48,19 @@ static int do_saveenv(int argc, char *argv[])
 }
 
 BAREBOX_CMD_HELP_START(saveenv)
-BAREBOX_CMD_HELP_USAGE("saveenv [envfs] [directory]\n")
-BAREBOX_CMD_HELP_SHORT("Save the files in <directory> to the persistent storage device <envfs>.\n")
+BAREBOX_CMD_HELP_TEXT("Save the files in DIRECTORY to the persistent storage device ENVFS.")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("ENVFS is usually a block in flash but can be any other file. If")
+BAREBOX_CMD_HELP_TEXT("omitted, DIRECTORY defaults to /env and ENVFS defaults to")
+BAREBOX_CMD_HELP_TEXT("/dev/env0. Note that envfs can only handle files, directories are being")
+BAREBOX_CMD_HELP_TEXT("skipped silently.")
+
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(saveenv)
 	.cmd		= do_saveenv,
-	.usage		= "save environment to persistent storage",
+	BAREBOX_CMD_DESC("save environment to persistent storage")
+	BAREBOX_CMD_OPTS("[ENVFS] [DIRECTORY]")
 	BAREBOX_CMD_GROUP(CMD_GRP_ENV)
 	BAREBOX_CMD_HELP(cmd_saveenv_help)
 BAREBOX_CMD_END
diff --git a/commands/setenv.c b/commands/setenv.c
index ff8ef9b..9e21cce 100644
--- a/commands/setenv.c
+++ b/commands/setenv.c
@@ -36,8 +36,8 @@ static int do_setenv(int argc, char *argv[])
 }
 
 BAREBOX_CMD_HELP_START(setenv)
-BAREBOX_CMD_HELP_USAGE("setenv <name> [<value>]\n")
-BAREBOX_CMD_HELP_SHORT("Set environment variable to a value or delete if value is avoided.\n")
+BAREBOX_CMD_HELP_TEXT("Set environment variable NAME to VALUE.")
+BAREBOX_CMD_HELP_TEXT("If VALUE is ommitted, then the variable is deleted.")
 BAREBOX_CMD_HELP_END
 
 /**
@@ -46,13 +46,12 @@ BAREBOX_CMD_HELP_END
 <p> This command is only available if the simple command line parser is
 in use. Within the hush shell, \c setenv is not required.</p>
 
-\todo Check if kconfig does this correctly.
-
  */
 
 BAREBOX_CMD_START(setenv)
 	.cmd		= do_setenv,
-	.usage		= "set environment variables",
+	BAREBOX_CMD_DESC("set environment variable")
+	BAREBOX_CMD_OPTS("NAME [VALUE]")
 	BAREBOX_CMD_GROUP(CMD_GRP_ENV)
 	BAREBOX_CMD_HELP(cmd_setenv_help)
 BAREBOX_CMD_END
diff --git a/commands/sleep.c b/commands/sleep.c
index e39e2d3..2491dc2 100644
--- a/commands/sleep.c
+++ b/commands/sleep.c
@@ -43,7 +43,8 @@ static int do_sleep(int argc, char *argv[])
 
 BAREBOX_CMD_START(sleep)
 	.cmd		= do_sleep,
-	.usage		= "delay execution for n seconds",
+	BAREBOX_CMD_DESC("delay execution for n seconds")
+	BAREBOX_CMD_OPTS("SECONDS")
 	BAREBOX_CMD_GROUP(CMD_GRP_SCRIPT)
 	BAREBOX_CMD_COMPLETE(command_var_complete)
 BAREBOX_CMD_END
diff --git a/commands/spi.c b/commands/spi.c
index ff27a7b..21db9ae 100644
--- a/commands/spi.c
+++ b/commands/spi.c
@@ -114,20 +114,22 @@ out:
 	return ret;
 }
 
-static const __maybe_unused char cmd_spi_help[] =
-"Usage: spi [OPTION] [data to write 0xXX]\n"
-"write/read spi device.\n"
-"  -b <bus_num>  spi bus number (default = 0)\n"
-"  -r <count>    to read\n"
-"  -c <cs>       chip select (default = 0)\n"
-"  -m <mode>     spi mode (default = 0)\n"
-"  -f <hz>       max_speed_hz (default = 1MHz)\n"
-"  -w <bit>      bits_per_word (default = 8)\n"
-"  -v            verbose\n";
+
+BAREBOX_CMD_HELP_START(spi)
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-b BUS\t",  "SPI bus number (default 0)")
+BAREBOX_CMD_HELP_OPT ("-r COUNT",  "bytes to read")
+BAREBOX_CMD_HELP_OPT ("-c\t",      "chip select (default 0)")
+BAREBOX_CMD_HELP_OPT ("-m MODE\t", "SPI mode (default 0)")
+BAREBOX_CMD_HELP_OPT ("-f HZ\t",   "max speed frequency, in Hz (default 1 MHz)")
+BAREBOX_CMD_HELP_OPT ("-w BIT\t",  "bits per word (default 8)")
+BAREBOX_CMD_HELP_OPT ("-v\t",      "verbose")
+BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(spi)
 	.cmd		= do_spi,
-	.usage		= "write/read spi device",
+	BAREBOX_CMD_DESC("write/read from SPI device")
+	BAREBOX_CMD_OPTS("[-brcmfwv] DATA...")
 	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_spi_help)
 BAREBOX_CMD_END
diff --git a/commands/splash.c b/commands/splash.c
index 24ef47a..c61a1d7 100644
--- a/commands/splash.c
+++ b/commands/splash.c
@@ -78,13 +78,15 @@ static int do_splash(int argc, char *argv[])
 }
 
 BAREBOX_CMD_HELP_START(splash)
-BAREBOX_CMD_HELP_USAGE("splash [OPTIONS] FILE\n")
-BAREBOX_CMD_HELP_SHORT("Show the bitmap FILE on the framebuffer.\n")
-BAREBOX_CMD_HELP_OPT  ("-f <fb>",   "framebuffer device (/dev/fb0)\n")
-BAREBOX_CMD_HELP_OPT  ("-x <xofs>", "x offset (default center)\n")
-BAREBOX_CMD_HELP_OPT  ("-y <yofs>", "y offset (default center)\n")
-BAREBOX_CMD_HELP_OPT  ("-b <color>", "background color in 0xttrrggbb\n")
-BAREBOX_CMD_HELP_OPT  ("-o",        "render offscreen\n")
+BAREBOX_CMD_HELP_TEXT("This command displays a graphics in the bitmap (.bmp) format on the")
+BAREBOX_CMD_HELP_TEXT("framebuffer. Currently images with 8 and 24 bit color depth are supported.")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-f FB\t",    "framebuffer device (default /dev/fb0)")
+BAREBOX_CMD_HELP_OPT ("-x XOFFS", "x offset (default center)")
+BAREBOX_CMD_HELP_OPT ("-y YOFFS", "y offset (default center)")
+BAREBOX_CMD_HELP_OPT ("-b COLOR", "background color in 0xttrrggbb")
+BAREBOX_CMD_HELP_OPT ("-o\t",       "render offscreen")
 BAREBOX_CMD_HELP_END
 
 /**
@@ -100,7 +102,8 @@ color depth.
 
 BAREBOX_CMD_START(splash)
 	.cmd		= do_splash,
-	.usage		= "show a bmp image",
+	BAREBOX_CMD_DESC("display a BMP image")
+	BAREBOX_CMD_OPTS("[-fxyno] FILE")
 	BAREBOX_CMD_GROUP(CMD_GRP_CONSOLE)
 	BAREBOX_CMD_HELP(cmd_splash_help)
 BAREBOX_CMD_END
diff --git a/commands/test.c b/commands/test.c
index 3f652f4..d0f63c1 100644
--- a/commands/test.c
+++ b/commands/test.c
@@ -226,17 +226,17 @@ out:
 
 static const char *test_aliases[] = { "[", NULL};
 
-static const __maybe_unused char cmd_test_help[] =
-"Usage: test [OPTIONS]\n"
-"options: !, =, !=, -eq, -ne, -ge, -gt, -le, -lt, -o, -a, -z, -n, -d, -e, -f, -L\n"
-"see 'man test' on your PC for more information.\n";
-
-static const __maybe_unused char cmd_test_usage[] = "minimal test like /bin/sh";
+BAREBOX_CMD_HELP_START(test)
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_TEXT("\t!, =, !=, -eq, -ne, -ge, -gt, -le, -lt, -o, -a, -z, -n, -d, -e,")
+BAREBOX_CMD_HELP_TEXT("\t-f, -L; see 'man test' on your PC for more information.")
+BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(test)
 	.aliases	= test_aliases,
 	.cmd		= do_test,
-	.usage		= cmd_test_usage,
+	BAREBOX_CMD_DESC("minimal test command like in /bin/sh")
+	BAREBOX_CMD_OPTS("[EXPR]")
 	BAREBOX_CMD_GROUP(CMD_GRP_SCRIPT)
 	BAREBOX_CMD_HELP(cmd_test_help)
 BAREBOX_CMD_END
diff --git a/commands/tftp.c b/commands/tftp.c
index 84c69f9..c066631 100644
--- a/commands/tftp.c
+++ b/commands/tftp.c
@@ -92,13 +92,16 @@ err_free:
 }
 
 BAREBOX_CMD_HELP_START(tftp)
-BAREBOX_CMD_HELP_USAGE("tftp [-p] <source> [dest]\n")
-BAREBOX_CMD_HELP_SHORT("Load a file from or upload to TFTP server.\n")
+BAREBOX_CMD_HELP_TEXT("Load (or save) a file via TFTP.")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-p", "push to TFTP server")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(tftp)
 	.cmd		= do_tftpb,
-	.usage		= "(up-)Load file using tftp protocol",
+	BAREBOX_CMD_DESC("load (or save) a file using TFTP")
+	BAREBOX_CMD_OPTS("[-p] SOURCE [DEST]")
 	BAREBOX_CMD_GROUP(CMD_GRP_NET)
 	BAREBOX_CMD_HELP(cmd_tftp_help)
 BAREBOX_CMD_END
diff --git a/commands/time.c b/commands/time.c
index 6a696c2..29000d9 100644
--- a/commands/time.c
+++ b/commands/time.c
@@ -45,14 +45,14 @@ static int do_time(int argc, char *argv[])
 }
 
 BAREBOX_CMD_HELP_START(time)
-BAREBOX_CMD_HELP_USAGE("time <command>\n")
-BAREBOX_CMD_HELP_SHORT("note: This command depends on <command> being interruptible,\n")
-BAREBOX_CMD_HELP_SHORT("Otherwise the timer may overrun resulting in incorrect results\n")
+BAREBOX_CMD_HELP_TEXT("Note: This command depends on COMMAND being interruptible,")
+BAREBOX_CMD_HELP_TEXT("otherwise the timer may overrun resulting in incorrect results")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(time)
 	.cmd		= do_time,
-	.usage		= "measure execution time of a command",
+	BAREBOX_CMD_DESC("measure execution duration of a command")
+	BAREBOX_CMD_OPTS("COMMAND")
 	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
 	BAREBOX_CMD_HELP(cmd_time_help)
 BAREBOX_CMD_END
diff --git a/commands/timeout.c b/commands/timeout.c
index 0e81583..feca714 100644
--- a/commands/timeout.c
+++ b/commands/timeout.c
@@ -102,18 +102,20 @@ out:
 	return ret;
 }
 
-static const __maybe_unused char cmd_timeout_help[] =
-"Usage: timeout [OPTION]... <timeout>\n"
-"Wait <timeout> seconds for a timeout. Return 1 if the user intervented\n"
-"or 0 if a timeout occured\n"
-"  -a  interrupt on any key\n"
-"  -c  interrupt on ctrl-c\n"
-"  -r  interrupt on return\n"
-"  -s  silent mode\n";
+BAREBOX_CMD_HELP_START(timeout)
+BAREBOX_CMD_HELP_TEXT("Wait SECONDS for a timeout. Return 1 if the user intervented.")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT("-a", "interrupt on any key")
+BAREBOX_CMD_HELP_OPT("-c", "interrupt on Ctrl-C")
+BAREBOX_CMD_HELP_OPT("-r", "interrupt on RETURN")
+BAREBOX_CMD_HELP_OPT("-s", "silent mode")
+BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(timeout)
 	.cmd		= do_timeout,
-	.usage		= "wait for a specified timeout",
+	BAREBOX_CMD_DESC("wait for a specified timeout")
+	BAREBOX_CMD_OPTS("[-acrs] SECONDS")
 	BAREBOX_CMD_GROUP(CMD_GRP_CONSOLE)
 	BAREBOX_CMD_HELP(cmd_timeout_help)
 BAREBOX_CMD_END
diff --git a/commands/trigger.c b/commands/trigger.c
index 93b4416..17c8411 100644
--- a/commands/trigger.c
+++ b/commands/trigger.c
@@ -90,15 +90,17 @@ static int do_trigger(int argc, char *argv[])
 }
 
 BAREBOX_CMD_HELP_START(trigger)
-BAREBOX_CMD_HELP_USAGE("trigger [OPTIONS]\n")
-BAREBOX_CMD_HELP_SHORT("control a LED trigger. Without options the currently assigned triggers are shown.\n")
-BAREBOX_CMD_HELP_OPT  ("-t <trigger> <led>",  "set a trigger for a led\n")
-BAREBOX_CMD_HELP_OPT  ("-d <trigger>",  "disable a trigger\n")
+BAREBOX_CMD_HELP_TEXT("Control a LED trigger. Without options assigned triggers are shown.")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-t",  "set a trigger (needs LED argument)")
+BAREBOX_CMD_HELP_OPT ("-d",  "disable a trigger")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(trigger)
 	.cmd		= do_trigger,
-	.usage		= "handle LED triggers",
+	BAREBOX_CMD_DESC("handle LED triggers")
+	BAREBOX_CMD_OPTS("[-td] TRIGGER [LED]")
 	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_trigger_help)
 BAREBOX_CMD_END
diff --git a/commands/true.c b/commands/true.c
index 6ebbd72..fbb34e7 100644
--- a/commands/true.c
+++ b/commands/true.c
@@ -28,7 +28,7 @@ static int do_true(int argc, char *argv[])
 
 BAREBOX_CMD_START(true)
 	.cmd		= do_true,
-	.usage		= "do nothing, successfully",
+	BAREBOX_CMD_DESC("do nothing, successfully")
 	BAREBOX_CMD_GROUP(CMD_GRP_SCRIPT)
 	BAREBOX_CMD_COMPLETE(empty_complete)
 BAREBOX_CMD_END
diff --git a/commands/ubi.c b/commands/ubi.c
index 9a70db1..d593e71 100644
--- a/commands/ubi.c
+++ b/commands/ubi.c
@@ -44,14 +44,16 @@ static int do_ubimkvol(int argc, char *argv[])
 	return ret ? 1 : 0;
 }
 
-static const __maybe_unused char cmd_ubimkvol_help[] =
-"Usage: ubimkvol <ubidev> <name> <size>\n"
-"Create an ubi volume on <ubidev> with name <name> and size <size>\n"
-"If size is zero all available space is used for the volume\n";
+
+BAREBOX_CMD_HELP_START(ubimkvol)
+BAREBOX_CMD_HELP_TEXT("Create an UBI volume on UBIDEV with NAME and SIZE.")
+BAREBOX_CMD_HELP_TEXT("If SIZE is 0 all available space is used for the volume.")
+BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(ubimkvol)
 	.cmd		= do_ubimkvol,
-	.usage		= "create an ubi volume",
+	BAREBOX_CMD_DESC("create an UBI volume")
+	BAREBOX_CMD_OPTS("UBIDEV NAME SIZE")
 	BAREBOX_CMD_GROUP(CMD_GRP_PART)
 	BAREBOX_CMD_HELP(cmd_ubimkvol_help)
 BAREBOX_CMD_END
@@ -100,13 +102,15 @@ err:
 	return ret ? 1 : 0;
 }
 
-static const __maybe_unused char cmd_ubiattach_help[] =
-"Usage: ubiattach [-O vid-hdr-offset] <mtddev>\n"
-"Attach <mtddev> to ubi\n";
+BAREBOX_CMD_HELP_START(ubiattach)
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-O OFFS",  "VID header offset")
+BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(ubiattach)
 	.cmd		= do_ubiattach,
-	.usage		= "attach a mtd dev to ubi",
+	BAREBOX_CMD_DESC("attach mtd device to UBI")
+	BAREBOX_CMD_OPTS("[-O] MTDDEV")
 	BAREBOX_CMD_GROUP(CMD_GRP_PART)
 	BAREBOX_CMD_HELP(cmd_ubiattach_help)
 BAREBOX_CMD_END
@@ -127,15 +131,11 @@ static int do_ubidetach(int argc, char *argv[])
 	return ret;
 }
 
-static const __maybe_unused char cmd_ubidetach_help[] =
-"Usage: ubidetach <ubinum>\n"
-"Detach <ubinum> from ubi\n";
-
 BAREBOX_CMD_START(ubidetach)
 	.cmd		= do_ubidetach,
-	.usage		= "detach an ubi dev",
+	BAREBOX_CMD_DESC("detach an UBI device")
+	BAREBOX_CMD_OPTS("UBINUM")
 	BAREBOX_CMD_GROUP(CMD_GRP_PART)
-	BAREBOX_CMD_HELP(cmd_ubidetach_help)
 BAREBOX_CMD_END
 
 static int do_ubirmvol(int argc, char *argv[])
@@ -163,13 +163,14 @@ static int do_ubirmvol(int argc, char *argv[])
 	return ret ? 1 : 0;
 }
 
-static const __maybe_unused char cmd_ubirmvol_help[] =
-"Usage: ubirmvol <ubidev> <name>\n"
-"Delete ubi volume <name> from <ubidev>\n";
+BAREBOX_CMD_HELP_START(ubirmvol)
+BAREBOX_CMD_HELP_TEXT("Delete UBI volume NAME from UBIDEV")
+BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(ubirmvol)
 	.cmd		= do_ubirmvol,
-	.usage		= "delete an ubi volume",
+	BAREBOX_CMD_DESC("delete an UBI volume")
+	BAREBOX_CMD_OPTS("UBIDEV NAME")
 	BAREBOX_CMD_GROUP(CMD_GRP_PART)
 	BAREBOX_CMD_HELP(cmd_ubirmvol_help)
 BAREBOX_CMD_END
diff --git a/commands/ubiformat.c b/commands/ubiformat.c
index 98e8c52..5c8a363 100644
--- a/commands/ubiformat.c
+++ b/commands/ubiformat.c
@@ -764,35 +764,32 @@ out_close_mtd:
 }
 
 BAREBOX_CMD_HELP_START(ubiformat)
-BAREBOX_CMD_HELP_USAGE(PROGRAM_NAME " <MTD device file name> [-s <bytes>] [-O <offs>] [-n]\n"
-	"\t[-f <file>] [-e <value>] [-x <num>] [-Q <num>] [-y] [-q] [-v]\n")
-BAREBOX_CMD_HELP_SHORT("A tool to format MTD devices and flash UBI images\n")
-BAREBOX_CMD_HELP_OPT("-s <bytes>", "minimum input/output unit used for UBI headers, "
-"e.g. sub-page size in case of NAND flash (equivalent to the minimum input/output "
-"unit size by default)\n")
-BAREBOX_CMD_HELP_OPT("-O <offs>", "offset if the VID header from start of the "
-"physical eraseblock (default is the next minimum I/O unit or sub-page after the EC "
-"header)\n")
-BAREBOX_CMD_HELP_OPT("-n", "only erase all eraseblock and preserve erase "
-"counters, do not write empty volume table\n")
-BAREBOX_CMD_HELP_OPT("-f <file>", "flash image file\n")
-BAREBOX_CMD_HELP_OPT("-e <value>", "use <value> as the erase counter value for all eraseblocks\n")
-BAREBOX_CMD_HELP_OPT("-x <num>", "UBI version number to put to EC headers "
-"(default is 1)\n")
-BAREBOX_CMD_HELP_OPT("-Q <num>", "32-bit UBI image sequence number to use "
-"(by default a random number is picked)\n")
-BAREBOX_CMD_HELP_OPT("-q", "suppress progress percentage information\n")
-BAREBOX_CMD_HELP_OPT("-v", "be verbose\n")
-BAREBOX_CMD_HELP_TEXT(
-"Example 1: " PROGRAM_NAME " /dev/nand0 -y - format nand0 and assume yes\n"
-"Example 2: " PROGRAM_NAME " /dev/nand0 -q -e 0 - format nand0,\n"
-"           be quiet and force erase counter value 0.\n";
-)
+BAREBOX_CMD_HELP_TEXT("A tool to format MTD devices and flash UBI images")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT("-s BYTES", "minimum input/output unit used for UBI headers")
+BAREBOX_CMD_HELP_OPT("\t", "e.g. sub-page size in case of NAND flash")
+BAREBOX_CMD_HELP_OPT("-O OFFS\t", "offset if the VID header from start of the")
+BAREBOX_CMD_HELP_OPT("\t", "physical eraseblock (default is the next minimum I/O unit or")
+BAREBOX_CMD_HELP_OPT("\t", "sub-page after the EC header)")
+BAREBOX_CMD_HELP_OPT("-n\t", "only erase all eraseblock and preserve erase")
+BAREBOX_CMD_HELP_OPT("\t", "counters, do not write empty volume table")
+BAREBOX_CMD_HELP_OPT("-f FILE\t", "flash image file")
+BAREBOX_CMD_HELP_OPT("-e VALUE", "use VALUE as erase counter value for all eraseblocks")
+BAREBOX_CMD_HELP_OPT("-x NUM\t", "UBI version number to put to EC headers (default 1)")
+BAREBOX_CMD_HELP_OPT("-Q NUM\t", "32-bit UBI image sequence number to use")
+BAREBOX_CMD_HELP_OPT("-q\t", "suppress progress percentage information")
+BAREBOX_CMD_HELP_OPT("-v\t", "be verbose")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Example 1: " PROGRAM_NAME " /dev/nand0 -y - format nand0 and assume yes")
+BAREBOX_CMD_HELP_TEXT("Example 2: " PROGRAM_NAME " /dev/nand0 -q -e 0 - format nand0,")
+BAREBOX_CMD_HELP_TEXT("\tbe quiet and force erase counter value 0.")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(ubiformat)
 	.cmd		= do_ubiformat,
-	.usage		= "format an ubi volume",
+	BAREBOX_CMD_DESC("format an ubi volume")
+	BAREBOX_CMD_OPTS("[-sOnfexQqv] MTDEVICE")
 	BAREBOX_CMD_GROUP(CMD_GRP_PART)
 	BAREBOX_CMD_HELP(cmd_ubiformat_help)
 BAREBOX_CMD_END
diff --git a/commands/uimage.c b/commands/uimage.c
index a4bc2cc..33523d7 100644
--- a/commands/uimage.c
+++ b/commands/uimage.c
@@ -60,7 +60,7 @@ static int do_uimage(int argc, char *argv[])
 	}
 
 	if (verify) {
-		printf("verifying data crc... ");
+		printf("verifying data CRC... ");
 		ret = uimage_verify(handle);
 		if (ret)
 			goto err;
@@ -91,16 +91,17 @@ err:
 }
 
 BAREBOX_CMD_HELP_START(uimage)
-BAREBOX_CMD_HELP_USAGE("uimage [OPTIONS] <file>\n")
-BAREBOX_CMD_HELP_OPT  ("-i",  "show information about image\n")
-BAREBOX_CMD_HELP_OPT  ("-v",  "verify image\n")
-BAREBOX_CMD_HELP_OPT  ("-e <outfile>",  "extract image to <outfile>\n")
-BAREBOX_CMD_HELP_OPT  ("-n <no>",  "use image number <no> in multifile images\n")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-i\t",  "show information about image")
+BAREBOX_CMD_HELP_OPT ("-v\t",  "verify image")
+BAREBOX_CMD_HELP_OPT ("-e OUTFILE",  "extract image to OUTFILE")
+BAREBOX_CMD_HELP_OPT ("-n NO\t",  "use image number NO in multifile image")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(uimage)
 	.cmd		= do_uimage,
-	.usage		= "extract/verify uImage",
+	BAREBOX_CMD_DESC("extract/verify uImage")
+	BAREBOX_CMD_OPTS("[-vien] FILE")
 	BAREBOX_CMD_GROUP(CMD_GRP_BOOT)
 	BAREBOX_CMD_HELP(cmd_uimage_help)
 BAREBOX_CMD_END
diff --git a/commands/umount.c b/commands/umount.c
index 39ce56c..84c84e4 100644
--- a/commands/umount.c
+++ b/commands/umount.c
@@ -29,13 +29,15 @@ static int do_umount(int argc, char *argv[])
 	return umount(argv[1]);
 }
 
-static const __maybe_unused char cmd_umount_help[] =
-"Usage: umount <mountpoint>\n"
-"umount a filesystem mounted on a specific mountpoint\n";
+
+BAREBOX_CMD_HELP_START(umount)
+BAREBOX_CMD_HELP_TEXT("Unmount a filesystem mounted on a specific MOINTPOINT")
+BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(umount)
 	.cmd		= do_umount,
-	.usage		= "umount a filesystem",
+	BAREBOX_CMD_DESC("umount a filesystem")
+	BAREBOX_CMD_OPTS("MOUNTPOINT")
 	BAREBOX_CMD_GROUP(CMD_GRP_PART)
 	BAREBOX_CMD_HELP(cmd_umount_help)
 BAREBOX_CMD_END
diff --git a/commands/uncompress.c b/commands/uncompress.c
index 0b4398f..38d53e7 100644
--- a/commands/uncompress.c
+++ b/commands/uncompress.c
@@ -55,14 +55,10 @@ exit_close:
 	return ret;
 }
 
-static const __maybe_unused char cmd_uncompress_help[] =
-"Usage: uncompress <infile> <outfile>\n"
-"Uncompress a compressed file\n";
 
 BAREBOX_CMD_START(uncompress)
-        .cmd            = do_uncompress,
-        .usage          = "uncompress a compressed file",
-        BAREBOX_CMD_GROUP(CMD_GRP_FILE)
-        BAREBOX_CMD_HELP(cmd_uncompress_help)
+	.cmd            = do_uncompress,
+	BAREBOX_CMD_DESC("uncompress a compressed file")
+	BAREBOX_CMD_OPTS("INFILE OUTFILE")
+	BAREBOX_CMD_GROUP(CMD_GRP_FILE)
 BAREBOX_CMD_END
-
diff --git a/commands/usb.c b/commands/usb.c
index 6e40a60..073c79c 100644
--- a/commands/usb.c
+++ b/commands/usb.c
@@ -41,14 +41,16 @@ static int do_usb(int argc, char *argv[])
 }
 
 BAREBOX_CMD_HELP_START(usb)
-BAREBOX_CMD_HELP_USAGE("usb [-f]\n")
-BAREBOX_CMD_HELP_SHORT("Scan for USB devices.\n")
-BAREBOX_CMD_HELP_OPT("-f", "force. Rescan although scanned already\n")
+BAREBOX_CMD_HELP_TEXT("Scan for USB devices.")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT("-f", "force rescan")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(usb)
 	.cmd		= do_usb,
-	.usage		= "(re-)detect USB devices",
+	BAREBOX_CMD_DESC("(re-)detect USB devices")
+	BAREBOX_CMD_OPTS("[-f]")
 	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_usb_help)
 	BAREBOX_CMD_COMPLETE(empty_complete)
diff --git a/commands/usbserial.c b/commands/usbserial.c
index ee4e83d..1c26246 100644
--- a/commands/usbserial.c
+++ b/commands/usbserial.c
@@ -77,18 +77,19 @@ static int do_usbserial(int argc, char *argv[])
 }
 
 BAREBOX_CMD_HELP_START(usbserial)
-BAREBOX_CMD_HELP_USAGE("usbserial [OPTIONS] <description>\n")
-BAREBOX_CMD_HELP_SHORT("Enable/disable a serial gadget on the USB device interface.\n")
-BAREBOX_CMD_HELP_OPT  ("-m <str>",  "Manufacturer string (barebox)\n")
-BAREBOX_CMD_HELP_OPT  ("-p <str>",  "product string\n")
-BAREBOX_CMD_HELP_OPT  ("-V <id>",   "vendor id\n")
-BAREBOX_CMD_HELP_OPT  ("-P <id>",   "product id\n")
-BAREBOX_CMD_HELP_OPT  ("-a",   "CDC ACM (default)\n")
+BAREBOX_CMD_HELP_TEXT("Enable / disable a serial gadget on the USB device interface.")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-m STR",  "Manufacturer string (barebox)")
+BAREBOX_CMD_HELP_OPT ("-p STR",  "product string")
+BAREBOX_CMD_HELP_OPT ("-V ID",   "vendor id")
+BAREBOX_CMD_HELP_OPT ("-P ID",   "product id")
+BAREBOX_CMD_HELP_OPT ("-a",   "CDC ACM (default)")
 #ifdef HAVE_OBEX
-BAREBOX_CMD_HELP_OPT  ("-o",   "CDC OBEX\n")
+BAREBOX_CMD_HELP_OPT ("-o",   "CDC OBEX")
 #endif
-BAREBOX_CMD_HELP_OPT  ("-s",   "Generic Serial\n")
-BAREBOX_CMD_HELP_OPT  ("-d",   "Disable the serial gadget\n")
+BAREBOX_CMD_HELP_OPT ("-s",   "Generic Serial")
+BAREBOX_CMD_HELP_OPT ("-d",   "Disable the serial gadget")
 BAREBOX_CMD_HELP_END
 
 /**
@@ -97,7 +98,12 @@ BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(usbserial)
 	.cmd		= do_usbserial,
-	.usage		= "Serial gadget enable/disable",
+	BAREBOX_CMD_DESC("serial gadget enable/disable")
+	BAREBOX_CMD_OPTS("[-mpVPa"
+#ifdef HAVE_OBEX
+					  "o"
+#endif
+					  "sd] <description>")
 	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_usbserial_help)
 BAREBOX_CMD_END
diff --git a/commands/version.c b/commands/version.c
index e2f0f5f..898c719 100644
--- a/commands/version.c
+++ b/commands/version.c
@@ -29,7 +29,7 @@ static int do_version(int argc, char *argv[])
 
 BAREBOX_CMD_START(version)
 	.cmd		= do_version,
-	.usage		= "print monitor version",
+	BAREBOX_CMD_DESC("print barebox version")
 	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
 	BAREBOX_CMD_COMPLETE(empty_complete)
 BAREBOX_CMD_END
diff --git a/commands/wd.c b/commands/wd.c
index bc5587f..26823f8 100644
--- a/commands/wd.c
+++ b/commands/wd.c
@@ -55,15 +55,15 @@ static int do_wd(int argc, char *argv[])
 }
 
 BAREBOX_CMD_HELP_START(wd)
-BAREBOX_CMD_HELP_USAGE("wd [<time>]\n")
-BAREBOX_CMD_HELP_SHORT("enable the watchdog to bark in <time> seconds. "
-		"When <time> is 0, the watchdog gets disabled,\n"
-		"without a parameter the watchdog will be re-triggered\n")
+BAREBOX_CMD_HELP_TEXT("Enable the watchdog to bark in TIME seconds.")
+BAREBOX_CMD_HELP_TEXT("When TIME is 0, the watchdog gets disabled,")
+BAREBOX_CMD_HELP_TEXT("Without a parameter the watchdog will be re-triggered.")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(wd)
 	.cmd = do_wd,
-	.usage = "enable/disable/trigger the watchdog",
+	BAREBOX_CMD_DESC("enable/disable/trigger the watchdog")
+	BAREBOX_CMD_OPTS("[TIME]")
 	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_wd_help)
 BAREBOX_CMD_END
diff --git a/common/command.c b/common/command.c
index 7f2b777..61191c2 100644
--- a/common/command.c
+++ b/common/command.c
@@ -36,22 +36,18 @@ EXPORT_SYMBOL(command_list);
 
 void barebox_cmd_usage(struct command *cmdtp)
 {
-#ifdef	CONFIG_LONGHELP
-		/* found - print (long) help info */
-		if (cmdtp->help) {
-			puts (cmdtp->help);
-		} else {
-			puts (cmdtp->name);
-			putchar (' ');
-			puts ("- No help available.\n");
-		}
-		putchar ('\n');
-#else	/* no long help available */
-		if (cmdtp->usage) {
-			puts (cmdtp->usage);
-			puts("\n");
-		}
-#endif	/* CONFIG_LONGHELP */
+	putchar('\n');
+	if (cmdtp->desc)
+		printf("%s - %s\n\n", cmdtp->name, cmdtp->desc);
+	if (cmdtp->opts)
+		printf("Usage: %s %s\n\n", cmdtp->name, cmdtp->opts);
+#ifdef CONFIG_LONGHELP
+	/* found - print (long) help info */
+	if (cmdtp->help) {
+		puts(cmdtp->help);
+		putchar('\n');
+	}
+#endif
 }
 EXPORT_SYMBOL(barebox_cmd_usage);
 
@@ -108,14 +104,13 @@ int register_command(struct command *cmd)
 	if (cmd->aliases) {
 		char **aliases = (char**)cmd->aliases;
 		while(*aliases) {
-			char *usage = "alias for ";
 			struct command *c = xzalloc(sizeof(struct command));
 
 			memcpy(c, cmd, sizeof(struct command));
 
 			c->name = *aliases;
-			c->usage = xmalloc(strlen(usage) + strlen(cmd->name) + 1);
-			sprintf((char*)c->usage, "%s%s", usage, cmd->name);
+			c->desc = cmd->desc;
+			c->opts = cmd->opts;
 
 			c->aliases = NULL;
 
@@ -163,4 +158,3 @@ static int init_command_list(void)
 }
 
 late_initcall(init_command_list);
-
diff --git a/common/hush.c b/common/hush.c
index 5893c51..92f9576 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -1932,16 +1932,11 @@ static int do_sh(int argc, char *argv[])
 	return execute_script(argv[1], argc - 1, argv + 1);
 }
 
-static const __maybe_unused char cmd_sh_help[] =
-"Usage: sh filename [arguments]\n"
-"\n"
-"Execute a shell script\n";
-
 BAREBOX_CMD_START(sh)
 	.cmd		= do_sh,
-	.usage		= "run shell script",
+	BAREBOX_CMD_DESC("execute a shell script")
+	BAREBOX_CMD_OPTS("FILE [ARGUMENT...]")
 	BAREBOX_CMD_GROUP(CMD_GRP_SCRIPT)
-	BAREBOX_CMD_HELP(cmd_sh_help)
 BAREBOX_CMD_END
 
 static int do_source(int argc, char *argv[])
@@ -1969,21 +1964,16 @@ static int do_source(int argc, char *argv[])
 
 static const char *source_aliases[] = { ".", NULL};
 
-static const __maybe_unused char cmd_source_help[] =
-"Usage: .  filename [arguments]\n"
-"or     source filename [arguments]\n"
-"\n"
-"Read  and  execute  commands  from filename in the current shell\n"
-"environment and return the exit status of the last command  exe-\n"
-"cuted from filename\n";
-
-static const __maybe_unused char cmd_source_usage[] =
-"execute shell script in current shell environment";
+BAREBOX_CMD_HELP_START(source)
+BAREBOX_CMD_HELP_TEXT("Read and execute commands from FILE in the current shell environment.")
+BAREBOX_CMD_HELP_TEXT("and return the exit status of the last command executed.")
+BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(source)
 	.aliases	= source_aliases,
 	.cmd		= do_source,
-	.usage		= cmd_source_usage,
+	BAREBOX_CMD_DESC("execute shell script in current shell environment")
+	BAREBOX_CMD_OPTS("FILE [ARGUMENT...]")
 	BAREBOX_CMD_GROUP(CMD_GRP_SCRIPT)
 	BAREBOX_CMD_HELP(cmd_source_help)
 BAREBOX_CMD_END
@@ -1997,32 +1987,31 @@ static int do_dummy_command(int argc, char *argv[])
 	return 0;
 }
 
-static const __maybe_unused char cmd_exit_help[] =
-"Usage: exit [n]\n"
-"\n"
-"exit script with a status of n. If n is omitted, the exit status is that\n"
-"of the last command executed\n";
+BAREBOX_CMD_HELP_START(exit)
+BAREBOX_CMD_HELP_TEXT("Exit script with status ERRLVL n. If ERRLVL is omitted, the exit status is")
+BAREBOX_CMD_HELP_TEXT("of the last command executed")
+BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(exit)
 	.cmd		= do_dummy_command,
-	.usage		= "exit script",
+	BAREBOX_CMD_DESC("exit script")
+	BAREBOX_CMD_OPTS("[ERRLVL]")
 	BAREBOX_CMD_GROUP(CMD_GRP_SCRIPT)
 	BAREBOX_CMD_HELP(cmd_exit_help)
 BAREBOX_CMD_END
 
 #ifdef CONFIG_HUSH_GETOPT
-static const __maybe_unused char cmd_getopt_help[] =
-"Usage: getopt <optstring> <var>\n"
-"\n"
-"hush option parser. <optstring> is a string with valid options. Add\n"
-"a colon to an options if this option has a required argument or two\n"
-"colons for an optional argument. The current option is saved in <var>,\n"
-"arguments are saved in OPTARG. After this command additional nonopts\n"
-"can be accessed starting from $1\n";
+BAREBOX_CMD_HELP_START(getopt)
+BAREBOX_CMD_HELP_TEXT("OPTSTRING contains the option letters. Add a colon to an options if this")
+BAREBOX_CMD_HELP_TEXT("option has a required argument or two colons for an optional argument. The")
+BAREBOX_CMD_HELP_TEXT("current option is saved in VAR, arguments are saved in $OPTARG. Any")
+BAREBOX_CMD_HELP_TEXT("non-option arguments can be accessed starting from $1.")
+BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(getopt)
 	.cmd		= do_dummy_command,
-	.usage		= "getopt <optstring> <var>",
+	BAREBOX_CMD_DESC("parse option arguments")
+	BAREBOX_CMD_OPTS("OPTSTRING VAR")
 	BAREBOX_CMD_GROUP(CMD_GRP_SCRIPT)
 	BAREBOX_CMD_HELP(cmd_getopt_help)
 BAREBOX_CMD_END
diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index 2068a1e..54ec5a6 100644
--- a/drivers/gpio/gpiolib.c
+++ b/drivers/gpio/gpiolib.c
@@ -340,16 +340,10 @@ static int do_gpiolib(int argc, char *argv[])
 	return 0;
 }
 
-BAREBOX_CMD_HELP_START(gpiolib)
-BAREBOX_CMD_HELP_USAGE("gpiolib\n")
-BAREBOX_CMD_HELP_SHORT("dump current registered gpio\n");
-BAREBOX_CMD_HELP_END
-
 BAREBOX_CMD_START(gpiolib)
 	.cmd		= do_gpiolib,
-	.usage		= "dump current registered gpio",
+	BAREBOX_CMD_DESC("list registered GPIOs")
 	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
-	BAREBOX_CMD_HELP(cmd_gpiolib_help)
 	BAREBOX_CMD_COMPLETE(empty_complete)
 BAREBOX_CMD_END
 #endif
diff --git a/drivers/mtd/nand/nand_imx_bbm.c b/drivers/mtd/nand/nand_imx_bbm.c
index 670a5e1..e9ce3b1 100644
--- a/drivers/mtd/nand/nand_imx_bbm.c
+++ b/drivers/mtd/nand/nand_imx_bbm.c
@@ -213,12 +213,9 @@ out:
 	return ret;
 }
 
-static const __maybe_unused char cmd_imx_nand_bbm_help[] =
-"Usage: imx_nand_bbm\n";
-
 BAREBOX_CMD_START(imx_nand_bbm)
 	.cmd		= do_imx_nand_bbm,
-	.usage		= "create bbt for i.MX NAND",
+	BAREBOX_CMD_DESC("create BBT for i.MX NAND")
 	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_imx_nand_bbm_help)
 BAREBOX_CMD_END
diff --git a/drivers/mtd/nand/nand_s3c24xx.c b/drivers/mtd/nand/nand_s3c24xx.c
index 883d7dd..bee037b 100644
--- a/drivers/mtd/nand/nand_s3c24xx.c
+++ b/drivers/mtd/nand/nand_s3c24xx.c
@@ -638,14 +638,11 @@ static int do_nand_boot_test(int argc, char *argv[])
 	return 0;
 }
 
-static const __maybe_unused char cmd_nand_boot_test_help[] =
-"Usage: nand_boot_test <dest> <size>\n";
-
 BAREBOX_CMD_START(nand_boot_test)
 	.cmd		= do_nand_boot_test,
-	.usage		= "load an image from NAND",
+	BAREBOX_CMD_DESC("load an image from NAND")
+	BAREBOX_CMD_OPTS("DEST SIZE")
 	BAREBOX_CMD_GROUP(CMD_GRP_BOOT)
-	BAREBOX_CMD_HELP(cmd_nand_boot_test_help)
 BAREBOX_CMD_END
 #endif
 
diff --git a/include/command.h b/include/command.h
index 15ce8d4..e5b7788 100644
--- a/include/command.h
+++ b/include/command.h
@@ -47,7 +47,8 @@ struct command {
 					/* Implementation function	*/
 	int		(*cmd)(int, char *[]);
 	int		(*complete)(struct string_list *sl, char *instr);
-	const char	*usage;		/* Usage message	(short)	*/
+	const char	*desc;		/* Short command description, start with lowercase */
+	const char	*opts;		/* command options */
 
 	struct list_head list;		/* List of commands		*/
 	uint32_t	group;
@@ -110,10 +111,8 @@ const struct command __barebox_cmd_##_name						\
 #define BAREBOX_CMD_HELP_START(_name) \
 static const __maybe_unused char cmd_##_name##_help[] =
 
-#define BAREBOX_CMD_HELP_USAGE(_name) "Usage: " _name
-#define BAREBOX_CMD_HELP_SHORT(_text) _text
-#define BAREBOX_CMD_HELP_OPT(_opt, _desc) _opt "\t" _desc
-#define BAREBOX_CMD_HELP_TEXT(_text) _text
+#define BAREBOX_CMD_HELP_OPT(_opt, _desc) "\t" _opt "\t" _desc "\n"
+#define BAREBOX_CMD_HELP_TEXT(_text) _text "\n"
 #define BAREBOX_CMD_HELP_END ;
 
 #ifdef CONFIG_LONGHELP
@@ -124,6 +123,10 @@ static const __maybe_unused char cmd_##_name##_help[] =
 
 #define BAREBOX_CMD_GROUP(grp)	.group = grp,
 
+#define BAREBOX_CMD_DESC(text)	.desc = text,
+
+#define BAREBOX_CMD_OPTS(text)	.opts = text,
+
 #endif /* DOXYGEN_SHOULD_SKIP_THIS */
 
 int register_command(struct command *);
diff --git a/net/dhcp.c b/net/dhcp.c
index 71d86d6..070e3bc 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -790,32 +790,19 @@ out:
 }
 
 BAREBOX_CMD_HELP_START(dhcp)
-BAREBOX_CMD_HELP_USAGE("dhcp [OPTIONS]\n")
-BAREBOX_CMD_HELP_SHORT("Invoke dhcp client to obtain ip/boot params.\n")
-BAREBOX_CMD_HELP_OPT  ("-H <hostname>",
-"Hostname to send to the DHCP server\n")
-BAREBOX_CMD_HELP_OPT  ("-v <vendor_id>",
-"DHCP Vendor ID (code 60) submitted in DHCP requests. It can\n"
-"be used in the DHCP server's configuration to select options\n"
-"(e.g. bootfile or server) which are valid for barebox clients only.\n")
-BAREBOX_CMD_HELP_OPT  ("-c <client_id>",
-"DHCP Client ID (code 61) submitted in DHCP requests. It can\n"
-"be used in the DHCP server's configuration to select options\n"
-"(e.g. bootfile or server) which are valid for barebox clients only.\n")
-BAREBOX_CMD_HELP_OPT  ("-u <client_uuid>",
-"DHCP Client UUID (code 97) submitted in DHCP requests. It can\n"
-"be used in the DHCP server's configuration to select options\n"
-"(e.g. bootfile or server) which are valid for barebox clients only.\n")
-BAREBOX_CMD_HELP_OPT  ("-U <user_class>",
-"DHCP User class (code 77) submitted in DHCP requests. It can\n"
-"be used in the DHCP server's configuration to select options\n"
-"(e.g. bootfile or server) which are valid for barebox clients only.\n")
-BAREBOX_CMD_HELP_OPT  ("-r <retry>", "retry limit by default "__stringify(DHCP_DEFAULT_RETRY)"\n");
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-H HOSTNAME", "hostname to send to the DHCP server")
+BAREBOX_CMD_HELP_OPT ("-v ID\t", "DHCP Vendor ID (code 60) submitted in DHCP requests")
+BAREBOX_CMD_HELP_OPT ("-c ID\t", "DHCP Client ID (code 61) submitted in DHCP requests")
+BAREBOX_CMD_HELP_OPT ("-u UUID\t", "DHCP Client UUID (code 97) submitted in DHCP requests")
+BAREBOX_CMD_HELP_OPT ("-U CLASS", "DHCP User class (code 77) submitted in DHCP requests")
+BAREBOX_CMD_HELP_OPT ("-r RETRY", "retry limit (default "__stringify(DHCP_DEFAULT_RETRY)")");
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(dhcp)
 	.cmd		= do_dhcp,
-	.usage		= "invoke dhcp client to obtain ip/boot params",
+	BAREBOX_CMD_DESC("DHCP client to obtain IP or boot params")
+	BAREBOX_CMD_OPTS("[-HvcuUr]")
 	BAREBOX_CMD_GROUP(CMD_GRP_NET)
 	BAREBOX_CMD_HELP(cmd_dhcp_help)
 	BAREBOX_CMD_COMPLETE(empty_complete)
diff --git a/net/dns.c b/net/dns.c
index 847458b..4506baf 100644
--- a/net/dns.c
+++ b/net/dns.c
@@ -260,13 +260,10 @@ static int do_host(int argc, char *argv[])
 	return 0;
 }
 
-static const __maybe_unused char cmd_host_help[] =
-"Usage: host <hostname>\n";
-
 BAREBOX_CMD_START(host)
 	.cmd		= do_host,
-	.usage		= "resolve a hostname",
+	BAREBOX_CMD_DESC("resolve a hostname")
+	BAREBOX_CMD_OPTS("HOSTNAME")
 	BAREBOX_CMD_GROUP(CMD_GRP_NET)
-	BAREBOX_CMD_HELP(cmd_host_help)
 BAREBOX_CMD_END
 
diff --git a/net/ifup.c b/net/ifup.c
index 7bb273b..2315952 100644
--- a/net/ifup.c
+++ b/net/ifup.c
@@ -171,14 +171,20 @@ static int do_ifup(int argc, char *argv[])
 }
 
 BAREBOX_CMD_HELP_START(ifup)
-BAREBOX_CMD_HELP_USAGE("ifup [OPTIONS] <interface>\n")
-BAREBOX_CMD_HELP_OPT  ("-a",  "bring up all interfaces\n")
-BAREBOX_CMD_HELP_OPT  ("-f",  "Force. Configure even if ip already set\n")
+BAREBOX_CMD_HELP_TEXT("Each INTF must have a script /env/network/INTF that set the variables")
+BAREBOX_CMD_HELP_TEXT("ip (to 'static' or 'dynamic'), ipaddr, netmask, gateway, serverip and/or")
+BAREBOX_CMD_HELP_TEXT("ethaddr. A script /env/network/INTF-discover can contains for discovering")
+BAREBOX_CMD_HELP_TEXT("the ethernet device, e.g. 'usb'.")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-a",  "bring up all interfaces")
+BAREBOX_CMD_HELP_OPT ("-f",  "Force. Configure even if ip already set")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(ifup)
 	.cmd		= do_ifup,
-	.usage		= "Bring up network interfaces",
+	BAREBOX_CMD_DESC("bring a network interface up")
+	BAREBOX_CMD_OPTS("[-af] [INTF]")
 	BAREBOX_CMD_GROUP(CMD_GRP_NET)
 	BAREBOX_CMD_HELP(cmd_ifup_help)
 BAREBOX_CMD_END
diff --git a/net/nfs.c b/net/nfs.c
index 94260b9..2753330 100644
--- a/net/nfs.c
+++ b/net/nfs.c
@@ -725,14 +725,10 @@ err_udp:
 	return nfs_err == 0 ? 0 : 1;
 }
 
-static const __maybe_unused char cmd_nfs_help[] =
-"Usage: nfs <file> [localfile]\n"
-"Load a file via network using nfs protocol.\n";
-
 BAREBOX_CMD_START(nfs)
 	.cmd		= do_nfs,
-	.usage		= "boot image via network using nfs protocol",
+	BAREBOX_CMD_DESC("boot image over NFS")
+	BAREBOX_CMD_OPTS("FILE [LOCALFILE]")
 	BAREBOX_CMD_GROUP(CMD_GRP_NET)
-	BAREBOX_CMD_HELP(cmd_nfs_help)
 BAREBOX_CMD_END
 
diff --git a/net/ping.c b/net/ping.c
index 15cd692..2349f4b 100644
--- a/net/ping.c
+++ b/net/ping.c
@@ -117,6 +117,7 @@ out:
 
 BAREBOX_CMD_START(ping)
 	.cmd		= do_ping,
-	.usage		= "ping <destination>",
+	BAREBOX_CMD_DESC("send ICMP echo requests")
+	BAREBOX_CMD_OPTS("DESTINATION")
 	BAREBOX_CMD_GROUP(CMD_GRP_NET)
 BAREBOX_CMD_END
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
