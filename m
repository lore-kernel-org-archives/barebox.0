Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S26C2-00055O-UD
 for barebox@lists.infradead.org; Mon, 27 Feb 2012 19:25:12 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 27 Feb 2012 20:24:53 +0100
Message-Id: <1330370693-1591-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1330370693-1591-1-git-send-email-s.hauer@pengutronix.de>
References: <1330370693-1591-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] commands: remove struct command pointer from commands
To: barebox@lists.infradead.org

This is unused in all commands and thus can be removed.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c |    2 +-
 arch/arm/boards/guf-cupid/board.c                 |    2 +-
 arch/arm/boards/pcm043/pcm043.c                   |    2 +-
 arch/arm/cpu/cpuinfo.c                            |    2 +-
 arch/arm/lib/bootu.c                              |    2 +-
 arch/arm/lib/bootz.c                              |    2 +-
 arch/arm/mach-imx/clko.c                          |    2 +-
 arch/arm/mach-imx/internal-nand-boot.c            |    2 +-
 arch/arm/mach-imx/speed.c                         |    2 +-
 arch/arm/mach-mxs/imx.c                           |    2 +-
 arch/arm/mach-netx/generic.c                      |    2 +-
 arch/blackfin/boards/ipe337/cmd_alternate.c       |    2 +-
 arch/mips/lib/cpuinfo.c                           |    2 +-
 commands/bmp.c                                    |    2 +-
 commands/bootm.c                                  |    2 +-
 commands/cat.c                                    |    3 +--
 commands/cd.c                                     |    2 +-
 commands/clear.c                                  |    2 +-
 commands/cp.c                                     |    3 +--
 commands/crc.c                                    |    2 +-
 commands/dfu.c                                    |    2 +-
 commands/digest.c                                 |    8 ++++----
 commands/echo.c                                   |    2 +-
 commands/edit.c                                   |    2 +-
 commands/exec.c                                   |    2 +-
 commands/export.c                                 |    2 +-
 commands/false.c                                  |    2 +-
 commands/flash.c                                  |    4 ++--
 commands/go.c                                     |    2 +-
 commands/gpio.c                                   |    8 ++++----
 commands/help.c                                   |    4 +++-
 commands/i2c.c                                    |    6 +++---
 commands/insmod.c                                 |    2 +-
 commands/iomem.c                                  |    2 +-
 commands/led.c                                    |    2 +-
 commands/linux16.c                                |    3 +--
 commands/linux_exec.c                             |    2 +-
 commands/loadb.c                                  |    2 +-
 commands/loadenv.c                                |    2 +-
 commands/loads.c                                  |    4 ++--
 commands/login.c                                  |    2 +-
 commands/ls.c                                     |    2 +-
 commands/lsmod.c                                  |    2 +-
 commands/magicvar.c                               |    2 +-
 commands/mem.c                                    |   10 +++++-----
 commands/meminfo.c                                |    2 +-
 commands/memtest.c                                |    2 +-
 commands/menu.c                                   |    2 +-
 commands/mkdir.c                                  |    2 +-
 commands/mount.c                                  |    2 +-
 commands/nand.c                                   |    2 +-
 commands/net.c                                    |    4 ++--
 commands/oftree.c                                 |    2 +-
 commands/partition.c                              |    4 ++--
 commands/passwd.c                                 |    2 +-
 commands/printenv.c                               |    2 +-
 commands/pwd.c                                    |    2 +-
 commands/readline.c                               |    2 +-
 commands/reginfo.c                                |    2 +-
 commands/reset.c                                  |    2 +-
 commands/rm.c                                     |    2 +-
 commands/rmdir.c                                  |    2 +-
 commands/saveenv.c                                |    2 +-
 commands/setenv.c                                 |    2 +-
 commands/sleep.c                                  |    2 +-
 commands/test.c                                   |    2 +-
 commands/time.c                                   |    2 +-
 commands/timeout.c                                |    2 +-
 commands/trigger.c                                |    2 +-
 commands/true.c                                   |    2 +-
 commands/ubi.c                                    |    6 +++---
 commands/uimage.c                                 |    2 +-
 commands/umount.c                                 |    2 +-
 commands/uncompress.c                             |    2 +-
 commands/usb.c                                    |    2 +-
 commands/version.c                                |    2 +-
 common/command.c                                  |    4 ++--
 common/hush.c                                     |    8 ++++----
 drivers/base/driver.c                             |    2 +-
 drivers/mtd/nand/nand_s3c24xx.c                   |    2 +-
 drivers/usb/gadget/u_serial.c                     |    2 +-
 include/command.h                                 |    2 +-
 net/dhcp.c                                        |    2 +-
 net/dns.c                                         |    2 +-
 net/nfs.c                                         |    2 +-
 net/ping.c                                        |    2 +-
 net/tftp.c                                        |    2 +-
 87 files changed, 111 insertions(+), 112 deletions(-)

diff --git a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
index 249aaee..17da569 100644
--- a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
+++ b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
@@ -333,7 +333,7 @@ core_initcall(eukrea_cpuimx35_core_init);
 #define MPCTL_PARAM_399     (IMX_PLL_PD(0) | IMX_PLL_MFD(15) | IMX_PLL_MFI(8) | IMX_PLL_MFN(5))
 #define MPCTL_PARAM_532     ((1 << 31) | IMX_PLL_PD(0) | IMX_PLL_MFD(11) | IMX_PLL_MFI(11) | IMX_PLL_MFN(1))
 
-static int do_cpufreq(struct command *cmdtp, int argc, char *argv[])
+static int do_cpufreq(int argc, char *argv[])
 {
 	unsigned long freq;
 
diff --git a/arch/arm/boards/guf-cupid/board.c b/arch/arm/boards/guf-cupid/board.c
index 94692e7..577d80e 100644
--- a/arch/arm/boards/guf-cupid/board.c
+++ b/arch/arm/boards/guf-cupid/board.c
@@ -332,7 +332,7 @@ core_initcall(cupid_core_setup);
 #define MPCTL_PARAM_399     (IMX_PLL_PD(0) | IMX_PLL_MFD(15) | IMX_PLL_MFI(8) | IMX_PLL_MFN(5))
 #define MPCTL_PARAM_532     ((1 << 31) | IMX_PLL_PD(0) | IMX_PLL_MFD(11) | IMX_PLL_MFI(11) | IMX_PLL_MFN(1))
 
-static int do_cpufreq(struct command *cmdtp, int argc, char *argv[])
+static int do_cpufreq(int argc, char *argv[])
 {
 	unsigned long freq;
 
diff --git a/arch/arm/boards/pcm043/pcm043.c b/arch/arm/boards/pcm043/pcm043.c
index b7a7b2f..e0dd5fc 100644
--- a/arch/arm/boards/pcm043/pcm043.c
+++ b/arch/arm/boards/pcm043/pcm043.c
@@ -302,7 +302,7 @@ core_initcall(pcm043_core_setup);
 #define MPCTL_PARAM_399     (IMX_PLL_PD(0) | IMX_PLL_MFD(15) | IMX_PLL_MFI(8) | IMX_PLL_MFN(5))
 #define MPCTL_PARAM_532     ((1 << 31) | IMX_PLL_PD(0) | IMX_PLL_MFD(11) | IMX_PLL_MFI(11) | IMX_PLL_MFN(1))
 
-static int do_cpufreq(struct command *cmdtp, int argc, char *argv[])
+static int do_cpufreq(int argc, char *argv[])
 {
 	unsigned long freq;
 
diff --git a/arch/arm/cpu/cpuinfo.c b/arch/arm/cpu/cpuinfo.c
index 7be1671..09acb5f 100644
--- a/arch/arm/cpu/cpuinfo.c
+++ b/arch/arm/cpu/cpuinfo.c
@@ -50,7 +50,7 @@ static char *crbits[] = {"M", "A", "C", "W", "P", "D", "L", "B", "S", "R",
 	"F", "Z", "I", "V", "RR", "L4", "DT", "", "IT", "ST", "", "FI", "U", "XP",
 	"VE", "EE", "L2", "", "TRE", "AFE", "TE"};
 
-static int do_cpuinfo(struct command *cmdtp, int argc, char *argv[])
+static int do_cpuinfo(int argc, char *argv[])
 {
 	unsigned long mainid, cache, cr;
 	char *architecture, *implementer;
diff --git a/arch/arm/lib/bootu.c b/arch/arm/lib/bootu.c
index d93c5fa..0d155cb 100644
--- a/arch/arm/lib/bootu.c
+++ b/arch/arm/lib/bootu.c
@@ -6,7 +6,7 @@
 #include <of.h>
 #include <asm/armlinux.h>
 
-static int do_bootu(struct command *cmdtp, int argc, char *argv[])
+static int do_bootu(int argc, char *argv[])
 {
 	int fd;
 	void *kernel = NULL;
diff --git a/arch/arm/lib/bootz.c b/arch/arm/lib/bootz.c
index dcfedbc..f394a6b 100644
--- a/arch/arm/lib/bootz.c
+++ b/arch/arm/lib/bootz.c
@@ -21,7 +21,7 @@ struct zimage_header {
 
 #define ZIMAGE_MAGIC 0x016F2818
 
-static int do_bootz(struct command *cmdtp, int argc, char *argv[])
+static int do_bootz(int argc, char *argv[])
 {
 	int fd, ret, swap = 0;
 	struct zimage_header __header, *header;
diff --git a/arch/arm/mach-imx/clko.c b/arch/arm/mach-imx/clko.c
index 37e17fe..0e4fbcc 100644
--- a/arch/arm/mach-imx/clko.c
+++ b/arch/arm/mach-imx/clko.c
@@ -4,7 +4,7 @@
 #include <mach/imx-regs.h>
 #include <mach/clock.h>
 
-static int do_clko(struct command *cmdtp, int argc, char *argv[])
+static int do_clko(int argc, char *argv[])
 {
 	int opt, div = 0, src = -2, ret;
 
diff --git a/arch/arm/mach-imx/internal-nand-boot.c b/arch/arm/mach-imx/internal-nand-boot.c
index c55a0e7..e72a944 100644
--- a/arch/arm/mach-imx/internal-nand-boot.c
+++ b/arch/arm/mach-imx/internal-nand-boot.c
@@ -240,7 +240,7 @@ void __bare_init imx_nand_load_image(void *dest, int size)
 #ifdef CONFIG_NAND_IMX_BOOT_DEBUG
 #include <command.h>
 
-static int do_nand_boot_test(struct command *cmdtp, int argc, char *argv[])
+static int do_nand_boot_test(int argc, char *argv[])
 {
 	void *dest;
 	int size;
diff --git a/arch/arm/mach-imx/speed.c b/arch/arm/mach-imx/speed.c
index 750ace0..63e24b4 100644
--- a/arch/arm/mach-imx/speed.c
+++ b/arch/arm/mach-imx/speed.c
@@ -70,7 +70,7 @@ unsigned int imx_decode_pll(unsigned int reg_val, unsigned int freq)
 
 extern void imx_dump_clocks(void);
 
-static int do_clocks(struct command *cmdtp, int argc, char *argv[])
+static int do_clocks(int argc, char *argv[])
 {
 	imx_dump_clocks();
 
diff --git a/arch/arm/mach-mxs/imx.c b/arch/arm/mach-mxs/imx.c
index 14a4249..a4dae20 100644
--- a/arch/arm/mach-mxs/imx.c
+++ b/arch/arm/mach-mxs/imx.c
@@ -22,7 +22,7 @@
 
 extern void imx_dump_clocks(void);
 
-static int do_clocks(struct command *cmdtp, int argc, char *argv[])
+static int do_clocks(int argc, char *argv[])
 {
 	imx_dump_clocks();
 
diff --git a/arch/arm/mach-netx/generic.c b/arch/arm/mach-netx/generic.c
index 6966def..8810e6d 100644
--- a/arch/arm/mach-netx/generic.c
+++ b/arch/arm/mach-netx/generic.c
@@ -116,7 +116,7 @@ int loadxc(int xcno) {
 	return 0;
 }
 
-int do_loadxc(struct command *cmdtp, int argc, char *argv[])
+int do_loadxc(int argc, char *argv[])
 {
 	int xcno;
 
diff --git a/arch/blackfin/boards/ipe337/cmd_alternate.c b/arch/blackfin/boards/ipe337/cmd_alternate.c
index 116f910..86eaa11 100644
--- a/arch/blackfin/boards/ipe337/cmd_alternate.c
+++ b/arch/blackfin/boards/ipe337/cmd_alternate.c
@@ -6,7 +6,7 @@
 
 #define MAGIC		0x19691228
 
-static int do_alternate(struct command *cmdtp, int argc, char *argv[])
+static int do_alternate(int argc, char *argv[])
 {
 	void *buf;
 	size_t size;
diff --git a/arch/mips/lib/cpuinfo.c b/arch/mips/lib/cpuinfo.c
index 7bdb02b..fc8fb00 100644
--- a/arch/mips/lib/cpuinfo.c
+++ b/arch/mips/lib/cpuinfo.c
@@ -24,7 +24,7 @@
 #include <command.h>
 #include <asm/mipsregs.h>
 
-static int do_cpuinfo(struct command *cmdtp, int argc, char *argv[])
+static int do_cpuinfo(int argc, char *argv[])
 {
 	printf("CP0_PRID = 0x%08x\n", read_c0_prid());
 	printf("CP0_CONFIG = 0x%08x\n", read_c0_config());
diff --git a/commands/bmp.c b/commands/bmp.c
index 644a977..4130474 100644
--- a/commands/bmp.c
+++ b/commands/bmp.c
@@ -30,7 +30,7 @@ static inline void set_pixel(struct fb_info *info, void *adr, int r, int g, int
 	}
 }
 
-static int do_bmp(struct command *cmdtp, int argc, char *argv[])
+static int do_bmp(int argc, char *argv[])
 {
 	int ret, opt, fd;
 	char *fbdev = "/dev/fb0";
diff --git a/commands/bootm.c b/commands/bootm.c
index e96665a..4f174db 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -252,7 +252,7 @@ static void bootm_image_name_and_no(char *name, int *no)
 	*no = simple_strtoul(at, NULL, 10);
 }
 
-static int do_bootm(struct command *cmdtp, int argc, char *argv[])
+static int do_bootm(int argc, char *argv[])
 {
 	int opt;
 	struct image_handler *handler;
diff --git a/commands/cat.c b/commands/cat.c
index 37e6505..d65a024 100644
--- a/commands/cat.c
+++ b/commands/cat.c
@@ -35,11 +35,10 @@
 #define BUFSIZE 1024
 
 /**
- * @param[in] cmdtp FIXME
  * @param[in] argc Argument count from command line
  * @param[in] argv List of input arguments
  */
-static int do_cat(struct command *cmdtp, int argc, char *argv[])
+static int do_cat(int argc, char *argv[])
 {
 	int ret;
 	int fd, i;
diff --git a/commands/cd.c b/commands/cd.c
index d73be32..ab5c417 100644
--- a/commands/cd.c
+++ b/commands/cd.c
@@ -30,7 +30,7 @@
 #include <fs.h>
 #include <errno.h>
 
-static int do_cd(struct command *cmdtp, int argc, char *argv[])
+static int do_cd(int argc, char *argv[])
 {
 	int ret;
 
diff --git a/commands/clear.c b/commands/clear.c
index 6a6b6c5..9e5da10 100644
--- a/commands/clear.c
+++ b/commands/clear.c
@@ -24,7 +24,7 @@
 #include <command.h>
 #include <readkey.h>
 
-static int do_clear(struct command *cmdtp, int argc, char *argv[])
+static int do_clear(int argc, char *argv[])
 {
 	printf(ANSI_CLEAR_SCREEN);
 
diff --git a/commands/cp.c b/commands/cp.c
index 565eca0..a0434cb 100644
--- a/commands/cp.c
+++ b/commands/cp.c
@@ -35,11 +35,10 @@
 #include <getopt.h>
 
 /**
- * @param[in] cmdtp FIXME
  * @param[in] argc Argument count from command line
  * @param[in] argv List of input arguments
  */
-static int do_cp(struct command *cmdtp, int argc, char *argv[])
+static int do_cp(int argc, char *argv[])
 {
 	int ret = 1;
 	struct stat statbuf;
diff --git a/commands/crc.c b/commands/crc.c
index 8ce97da..df22941 100644
--- a/commands/crc.c
+++ b/commands/crc.c
@@ -82,7 +82,7 @@ out:
 	return ret;
 }
 
-static int do_crc(struct command *cmdtp, int argc, char *argv[])
+static int do_crc(int argc, char *argv[])
 {
 	ulong start = 0, size = ~0, total = 0;
 	ulong crc = 0, vcrc = 0;
diff --git a/commands/dfu.c b/commands/dfu.c
index 7f2dfed..eab65e5 100644
--- a/commands/dfu.c
+++ b/commands/dfu.c
@@ -95,7 +95,7 @@ static int dfu_do_parse_one(char *partstr, char **endstr, struct usb_dfu_dev *df
  * s = save mode (download whole image before flashing)
  * r = read back (firmware image can be downloaded back from host)
  */
-static int do_dfu(struct command *cmdtp, int argc, char *argv[])
+static int do_dfu(int argc, char *argv[])
 {
 	int opt, n = 0;
 	struct usb_dfu_pdata pdata;
diff --git a/commands/digest.c b/commands/digest.c
index fbeadf9..8432914 100644
--- a/commands/digest.c
+++ b/commands/digest.c
@@ -78,7 +78,7 @@ static int do_digest(char *algorithm, int argc, char *argv[])
 
 #ifdef CONFIG_CMD_MD5SUM
 
-static int do_md5(struct command *cmdtp, int argc, char *argv[])
+static int do_md5(int argc, char *argv[])
 {
 	return do_digest("md5", argc, argv);
 }
@@ -98,7 +98,7 @@ BAREBOX_CMD_END
 
 #ifdef CONFIG_CMD_SHA1SUM
 
-static int do_sha1(struct command *cmdtp, int argc, char *argv[])
+static int do_sha1(int argc, char *argv[])
 {
 	return do_digest("sha1", argc, argv);
 }
@@ -118,7 +118,7 @@ BAREBOX_CMD_END
 
 #ifdef CONFIG_CMD_SHA224SUM
 
-static int do_sha224(struct command *cmdtp, int argc, char *argv[])
+static int do_sha224(int argc, char *argv[])
 {
 	return do_digest("sha224", argc, argv);
 }
@@ -138,7 +138,7 @@ BAREBOX_CMD_END
 
 #ifdef CONFIG_CMD_SHA256SUM
 
-static int do_sha256(struct command *cmdtp, int argc, char *argv[])
+static int do_sha256(int argc, char *argv[])
 {
 	return do_digest("sha256", argc, argv);
 }
diff --git a/commands/echo.c b/commands/echo.c
index 3e098df..114c1ba 100644
--- a/commands/echo.c
+++ b/commands/echo.c
@@ -27,7 +27,7 @@
 #include <errno.h>
 #include <libbb.h>
 
-static int do_echo(struct command *cmdtp, int argc, char *argv[])
+static int do_echo(int argc, char *argv[])
 {
 	int i, optind = 1;
 	int fd = stdout, opt, newline = 1;
diff --git a/commands/edit.c b/commands/edit.c
index 3519b09..db2f89a 100644
--- a/commands/edit.c
+++ b/commands/edit.c
@@ -387,7 +387,7 @@ static void getwinsize(void) {
 }
 #endif
 
-static int do_edit(struct command * cmdtp, int argc, char *argv[])
+static int do_edit(int argc, char *argv[])
 {
 	int lastscrcol;
 	int i;
diff --git a/commands/exec.c b/commands/exec.c
index 5f093b7..a25e8cf 100644
--- a/commands/exec.c
+++ b/commands/exec.c
@@ -29,7 +29,7 @@
 #include <malloc.h>
 #include <xfuncs.h>
 
-static int do_exec(struct command * cmdtp, int argc, char *argv[])
+static int do_exec(int argc, char *argv[])
 {
 	int i;
 	char *script;
diff --git a/commands/export.c b/commands/export.c
index 98b1e1a..ebf7723 100644
--- a/commands/export.c
+++ b/commands/export.c
@@ -28,7 +28,7 @@
 #include <errno.h>
 #include <environment.h>
 
-static int do_export(struct command *cmdtp, int argc, char *argv[])
+static int do_export(int argc, char *argv[])
 {
 	int i = 1;
 	char *ptr;
diff --git a/commands/false.c b/commands/false.c
index a90eadc..6ba3823 100644
--- a/commands/false.c
+++ b/commands/false.c
@@ -24,7 +24,7 @@
 #include <common.h>
 #include <command.h>
 
-static int do_false(struct command *cmdtp, int argc, char *argv[])
+static int do_false(int argc, char *argv[])
 {
 	return 1;
 }
diff --git a/commands/flash.c b/commands/flash.c
index 85efd06..1fcb1cf 100644
--- a/commands/flash.c
+++ b/commands/flash.c
@@ -36,7 +36,7 @@
 #include <fcntl.h>
 #include <linux/stat.h>
 
-static int do_flerase(struct command *cmdtp, int argc, char *argv[])
+static int do_flerase(int argc, char *argv[])
 {
 	int fd;
 	char *filename = NULL;
@@ -103,7 +103,7 @@ devinfo_command for partition handling.
 
  */
 
-static int do_protect(struct command *cmdtp, int argc, char *argv[])
+static int do_protect(int argc, char *argv[])
 {
 	int fd;
 	char *filename = NULL;
diff --git a/commands/go.c b/commands/go.c
index 6082fe5..b97fcef 100644
--- a/commands/go.c
+++ b/commands/go.c
@@ -30,7 +30,7 @@
 #include <linux/ctype.h>
 #include <errno.h>
 
-static int do_go(struct command *cmdtp, int argc, char *argv[])
+static int do_go(int argc, char *argv[])
 {
 	void	*addr;
 	int     rcode = 1;
diff --git a/commands/gpio.c b/commands/gpio.c
index 073c9d3..fe37665 100644
--- a/commands/gpio.c
+++ b/commands/gpio.c
@@ -20,7 +20,7 @@
 #include <errno.h>
 #include <gpio.h>
 
-static int do_gpio_get_value(struct command *cmdtp, int argc, char *argv[])
+static int do_gpio_get_value(int argc, char *argv[])
 {
 	int gpio, value;
 
@@ -47,7 +47,7 @@ BAREBOX_CMD_START(gpio_get_value)
 	BAREBOX_CMD_HELP(cmd_gpio_get_value_help)
 BAREBOX_CMD_END
 
-static int do_gpio_set_value(struct command *cmdtp, int argc, char *argv[])
+static int do_gpio_set_value(int argc, char *argv[])
 {
 	int gpio, value;
 
@@ -73,7 +73,7 @@ BAREBOX_CMD_START(gpio_set_value)
 	BAREBOX_CMD_HELP(cmd_gpio_set_value_help)
 BAREBOX_CMD_END
 
-static int do_gpio_direction_input(struct command *cmdtp, int argc, char *argv[])
+static int do_gpio_direction_input(int argc, char *argv[])
 {
 	int gpio, ret;
 
@@ -100,7 +100,7 @@ BAREBOX_CMD_START(gpio_direction_input)
 	BAREBOX_CMD_HELP(cmd_gpio_direction_input_help)
 BAREBOX_CMD_END
 
-static int do_gpio_direction_output(struct command *cmdtp, int argc, char *argv[])
+static int do_gpio_direction_output(int argc, char *argv[])
 {
 	int gpio, value, ret;
 
diff --git a/commands/help.c b/commands/help.c
index f8387bd..706b905 100644
--- a/commands/help.c
+++ b/commands/help.c
@@ -28,8 +28,10 @@
  * Use puts() instead of printf() to avoid printf buffer overflow
  * for long help messages
  */
-static int do_help(struct command * cmdtp, int argc, char *argv[])
+static int do_help(int argc, char *argv[])
 {
+	struct command *cmdtp;
+
 	if (argc == 1) {	/* show list of commands */
 		for_each_command(cmdtp) {
 			if (!cmdtp->usage)
diff --git a/commands/i2c.c b/commands/i2c.c
index d38e779..b3d09dc 100644
--- a/commands/i2c.c
+++ b/commands/i2c.c
@@ -26,7 +26,7 @@
 #include <getopt.h>
 #include <i2c/i2c.h>
 
-static int do_i2c_probe(struct command *cmdtp, int argc, char *argv[])
+static int do_i2c_probe(int argc, char *argv[])
 {
 	struct i2c_adapter *adapter;
 	struct i2c_client client;
@@ -70,7 +70,7 @@ BAREBOX_CMD_START(i2c_probe)
 	BAREBOX_CMD_HELP(cmd_i2c_probe_help)
 BAREBOX_CMD_END
 
-static int do_i2c_write(struct command *cmdtp, int argc, char *argv[])
+static int do_i2c_write(int argc, char *argv[])
 {
 	struct i2c_adapter *adapter = NULL;
 	struct i2c_client client;
@@ -143,7 +143,7 @@ BAREBOX_CMD_START(i2c_write)
 	BAREBOX_CMD_HELP(cmd_i2c_write_help)
 BAREBOX_CMD_END
 
-static int do_i2c_read(struct command *cmdtp, int argc, char *argv[])
+static int do_i2c_read(int argc, char *argv[])
 {
 	struct i2c_adapter *adapter = NULL;
 	struct i2c_client client;
diff --git a/commands/insmod.c b/commands/insmod.c
index d3b4d1a..f547e9d 100644
--- a/commands/insmod.c
+++ b/commands/insmod.c
@@ -5,7 +5,7 @@
 #include <fs.h>
 #include <malloc.h>
 
-static int do_insmod(struct command *cmdtp, int argc, char *argv[])
+static int do_insmod(int argc, char *argv[])
 {
 	struct module *module;
 	void *buf;
diff --git a/commands/iomem.c b/commands/iomem.c
index 78566c1..96b03ba 100644
--- a/commands/iomem.c
+++ b/commands/iomem.c
@@ -43,7 +43,7 @@ static void print_resources(struct resource *res)
 	__print_resources(res, 0);
 }
 
-static int do_iomem(struct command *cmdtp, int argc, char *argv[])
+static int do_iomem(int argc, char *argv[])
 {
 	print_resources(&iomem_resource);
 
diff --git a/commands/led.c b/commands/led.c
index 7fd9d44..14fb2aa 100644
--- a/commands/led.c
+++ b/commands/led.c
@@ -28,7 +28,7 @@
 #include <getopt.h>
 #include <errno.h>
 
-static int do_led(struct command *cmdtp, int argc, char *argv[])
+static int do_led(int argc, char *argv[])
 {
 	unsigned long value;
 	struct led *led;
diff --git a/commands/linux16.c b/commands/linux16.c
index 8a1b5fe..20413b6 100644
--- a/commands/linux16.c
+++ b/commands/linux16.c
@@ -147,7 +147,6 @@ struct linux_kernel_header {
 
 /**
  * Load an x86 Linux kernel bzImage and start it
- * @param cmdtp FIXME
  * @param argc parameter count
  * @param argv list of parameter
  *
@@ -155,7 +154,7 @@ struct linux_kernel_header {
  * (setup = 'real mode code' and kernel = 'protected mode code') to their
  * default locations, switches back to real mode and runs the setup code.
  */
-static int do_linux16(struct command *cmdtp, int argc, char *argv[])
+static int do_linux16(int argc, char *argv[])
 {
 	struct linux_kernel_header *lh = NULL;
 	int rc, opt;
diff --git a/commands/linux_exec.c b/commands/linux_exec.c
index 00c7e80..201d7a1 100644
--- a/commands/linux_exec.c
+++ b/commands/linux_exec.c
@@ -22,7 +22,7 @@
 #include <command.h>
 #include <mach/linux.h>
 
-static int do_linux_exec(struct command *cmdtp, int argc, char *argv[])
+static int do_linux_exec(int argc, char *argv[])
 {
 	int ret;
 	char **newargv;
diff --git a/commands/loadb.c b/commands/loadb.c
index 439a83a..9a697dd 100644
--- a/commands/loadb.c
+++ b/commands/loadb.c
@@ -686,7 +686,7 @@ static struct console_device *get_current_console(void)
  *
  * @return success or failure
  */
-static int do_load_serial_bin(struct command *cmdtp, int argc, char *argv[])
+static int do_load_serial_bin(int argc, char *argv[])
 {
 	ulong offset = 0;
 	ulong addr;
diff --git a/commands/loadenv.c b/commands/loadenv.c
index 5568ace..99ad542 100644
--- a/commands/loadenv.c
+++ b/commands/loadenv.c
@@ -27,7 +27,7 @@
 #include <command.h>
 #include <environment.h>
 
-static int do_loadenv(struct command *cmdtp, int argc, char *argv[])
+static int do_loadenv(int argc, char *argv[])
 {
 	char *filename, *dirname;
 
diff --git a/commands/loads.c b/commands/loads.c
index 68a44d4..1727be7 100644
--- a/commands/loads.c
+++ b/commands/loads.c
@@ -40,7 +40,7 @@ static int save_serial(ulong offset, ulong size);
 static int write_record(char *buf);
 #endif /* CONFIG_CMD_SAVES */
 
-static int do_load_serial(struct command *cmdtp, int argc, char *argv[])
+static int do_load_serial(int argc, char *argv[])
 {
 	ulong offset = 0;
 	ulong addr;
@@ -175,7 +175,7 @@ static int read_record(char *buf, ulong len)
 }
 
 #ifdef CONFIG_CMD_SAVES
-static int do_save_serial(struct command *cmdtp, int argc, char *argv[])
+static int do_save_serial(int argc, char *argv[])
 {
 	ulong offset = 0;
 	ulong size   = 0;
diff --git a/commands/login.c b/commands/login.c
index 3f6d308..2f3d766 100644
--- a/commands/login.c
+++ b/commands/login.c
@@ -33,7 +33,7 @@
 #define LOGIN_MODE HIDE
 #endif
 
-static int do_login(struct command *cmdtp, int argc, char *argv[])
+static int do_login(int argc, char *argv[])
 {
 	unsigned char passwd[PASSWD_MAX_LENGTH];
 	int passwd_len, opt;
diff --git a/commands/ls.c b/commands/ls.c
index 070aa90..c98d2da 100644
--- a/commands/ls.c
+++ b/commands/ls.c
@@ -111,7 +111,7 @@ out:
 	return 0;
 }
 
-static int do_ls(struct command *cmdtp, int argc, char *argv[])
+static int do_ls(int argc, char *argv[])
 {
 	int ret, opt, o;
 	struct stat s;
diff --git a/commands/lsmod.c b/commands/lsmod.c
index 26d2fe4..f7da1d0 100644
--- a/commands/lsmod.c
+++ b/commands/lsmod.c
@@ -2,7 +2,7 @@
 #include <command.h>
 #include <module.h>
 
-static int do_lsmod(struct command *cmdtp, int argc, char *argv[])
+static int do_lsmod(int argc, char *argv[])
 {
 	struct module *mod;
 
diff --git a/commands/magicvar.c b/commands/magicvar.c
index 31606d2..b208d33 100644
--- a/commands/magicvar.c
+++ b/commands/magicvar.c
@@ -2,7 +2,7 @@
 #include <command.h>
 #include <magicvar.h>
 
-static int do_magicvar(struct command *cmdtp, int argc, char *argv[])
+static int do_magicvar(int argc, char *argv[])
 {
 	struct magicvar *m;
 
diff --git a/commands/mem.c b/commands/mem.c
index 36495e1..d8e90e0 100644
--- a/commands/mem.c
+++ b/commands/mem.c
@@ -161,7 +161,7 @@ static int mem_parse_options(int argc, char *argv[], char *optstr, int *mode,
 	return 0;
 }
 
-static int do_mem_md(struct command *cmdtp, int argc, char *argv[])
+static int do_mem_md(int argc, char *argv[])
 {
 	ulong	start = 0, size = 0x100;
 	int	r, now;
@@ -235,7 +235,7 @@ BAREBOX_CMD_START(md)
 	BAREBOX_CMD_HELP(cmd_md_help)
 BAREBOX_CMD_END
 
-static int do_mem_mw(struct command *cmdtp, int argc, char *argv[])
+static int do_mem_mw(int argc, char *argv[])
 {
 	int ret = 0;
 	int fd;
@@ -300,7 +300,7 @@ BAREBOX_CMD_START(mw)
 	BAREBOX_CMD_HELP(cmd_mw_help)
 BAREBOX_CMD_END
 
-static int do_mem_cmp(struct command *cmdtp, int argc, char *argv[])
+static int do_mem_cmp(int argc, char *argv[])
 {
 	ulong	addr1, addr2, count = ~0;
 	int	mode  = O_RWSIZE_1;
@@ -409,7 +409,7 @@ BAREBOX_CMD_START(memcmp)
 	BAREBOX_CMD_HELP(cmd_memcmp_help)
 BAREBOX_CMD_END
 
-static int do_mem_cp(struct command *cmdtp, int argc, char *argv[])
+static int do_mem_cp(int argc, char *argv[])
 {
 	ulong count;
 	ulong	dest, src;
@@ -516,7 +516,7 @@ BAREBOX_CMD_START(memcpy)
 	BAREBOX_CMD_HELP(cmd_memcpy_help)
 BAREBOX_CMD_END
 
-static int do_memset(struct command *cmdtp, int argc, char *argv[])
+static int do_memset(int argc, char *argv[])
 {
 	ulong	s, c, n;
 	int     fd;
diff --git a/commands/meminfo.c b/commands/meminfo.c
index abbaf9c..b412744 100644
--- a/commands/meminfo.c
+++ b/commands/meminfo.c
@@ -23,7 +23,7 @@
 #include <command.h>
 #include <malloc.h>
 
-static int do_meminfo(struct command *cmdtp, int argc, char *argv[])
+static int do_meminfo(int argc, char *argv[])
 {
 	malloc_stats();
 
diff --git a/commands/memtest.c b/commands/memtest.c
index d9c8b3d..651a195 100644
--- a/commands/memtest.c
+++ b/commands/memtest.c
@@ -322,7 +322,7 @@ static int mem_test(ulong _start, ulong _end, ulong pattern)
 }
 #endif
 
-static int do_mem_mtest(struct command *cmdtp, int argc, char *argv[])
+static int do_mem_mtest(int argc, char *argv[])
 {
 	ulong start, end, pattern = 0;
 
diff --git a/commands/menu.c b/commands/menu.c
index c3e0901..e5ce5a9 100644
--- a/commands/menu.c
+++ b/commands/menu.c
@@ -306,7 +306,7 @@ static int do_menu_entry(struct cmd_menu *cm)
 }
 #endif
 
-static int do_menu(struct command *cmdtp, int argc, char *argv[])
+static int do_menu(int argc, char *argv[])
 {
 	struct cmd_menu cm;
 	int opt;
diff --git a/commands/mkdir.c b/commands/mkdir.c
index 45e7408..6501369 100644
--- a/commands/mkdir.c
+++ b/commands/mkdir.c
@@ -26,7 +26,7 @@
 #include <errno.h>
 #include <getopt.h>
 
-static int do_mkdir(struct command *cmdtp, int argc, char *argv[])
+static int do_mkdir(int argc, char *argv[])
 {
 	int opt, parent = 0, ret;
 
diff --git a/commands/mount.c b/commands/mount.c
index 926cd3f..dd1ae63 100644
--- a/commands/mount.c
+++ b/commands/mount.c
@@ -30,7 +30,7 @@
 #include <fs.h>
 #include <errno.h>
 
-static int do_mount(struct command *cmdtp, int argc, char *argv[])
+static int do_mount(int argc, char *argv[])
 {
 	int ret = 0;
 	struct mtab_entry *entry;
diff --git a/commands/nand.c b/commands/nand.c
index 88f242d..34aa07b 100644
--- a/commands/nand.c
+++ b/commands/nand.c
@@ -36,7 +36,7 @@
 #define NAND_DEL (1 << 1)
 #define NAND_MARKBAD (1 << 2)
 
-static int do_nand(struct command *cmdtp, int argc, char *argv[])
+static int do_nand(int argc, char *argv[])
 {
 	int opt;
 	int command = 0, badblock = 0;
diff --git a/commands/net.c b/commands/net.c
index 938463c..c5c6373 100644
--- a/commands/net.c
+++ b/commands/net.c
@@ -38,7 +38,7 @@
 #ifdef CONFIG_NET_RARP
 extern void RarpRequest(void);
 
-static int do_rarpb(struct command *cmdtp, int argc, char *argv[])
+static int do_rarpb(int argc, char *argv[])
 {
 	int size;
 
@@ -64,7 +64,7 @@ BAREBOX_CMD_START(rarpboot)
 BAREBOX_CMD_END
 #endif /* CONFIG_NET_RARP */
 
-static int do_ethact(struct command *cmdtp, int argc, char *argv[])
+static int do_ethact(int argc, char *argv[])
 {
 	struct eth_device *edev;
 
diff --git a/commands/oftree.c b/commands/oftree.c
index d8deb36..77afbc5 100644
--- a/commands/oftree.c
+++ b/commands/oftree.c
@@ -40,7 +40,7 @@
 #include <getopt.h>
 #include <init.h>
 
-static int do_oftree(struct command *cmdtp, int argc, char *argv[])
+static int do_oftree(int argc, char *argv[])
 {
 	struct fdt_header *fdt;
 	int size;
diff --git a/commands/partition.c b/commands/partition.c
index db9b9fb..acd1609 100644
--- a/commands/partition.c
+++ b/commands/partition.c
@@ -107,7 +107,7 @@ static int mtd_part_do_parse_one(char *devname, const char *partstr,
 	return ret;
 }
 
-static int do_addpart(struct command * cmdtp, int argc, char *argv[])
+static int do_addpart(int argc, char *argv[])
 {
 	char *devname;
 	char *endp;
@@ -174,7 +174,7 @@ BAREBOX_CMD_START(addpart)
 	BAREBOX_CMD_HELP(cmd_addpart_help)
 BAREBOX_CMD_END
 
-static int do_delpart(struct command * cmdtp, int argc, char *argv[])
+static int do_delpart(int argc, char *argv[])
 {
 	int i, err;
 
diff --git a/commands/passwd.c b/commands/passwd.c
index 9a07873..cdbcdf5 100644
--- a/commands/passwd.c
+++ b/commands/passwd.c
@@ -33,7 +33,7 @@
 #define PASSWD_MODE HIDE
 #endif
 
-static int do_passwd(struct command *cmdtp, int argc, char *argv[])
+static int do_passwd(int argc, char *argv[])
 {
 	unsigned char passwd2[PASSWD_MAX_LENGTH];
 	unsigned char passwd1[PASSWD_MAX_LENGTH];
diff --git a/commands/printenv.c b/commands/printenv.c
index 4078bbc..071a2d3 100644
--- a/commands/printenv.c
+++ b/commands/printenv.c
@@ -28,7 +28,7 @@
 #include <errno.h>
 #include <environment.h>
 
-static int do_printenv(struct command *cmdtp, int argc, char *argv[])
+static int do_printenv(int argc, char *argv[])
 {
 	struct variable_d *var;
 	struct env_context *c, *current_c;
diff --git a/commands/pwd.c b/commands/pwd.c
index d51fa1a..4afe2d4 100644
--- a/commands/pwd.c
+++ b/commands/pwd.c
@@ -23,7 +23,7 @@
 #include <command.h>
 #include <fs.h>
 
-static int do_pwd(struct command *cmdtp, int argc, char *argv[])
+static int do_pwd(int argc, char *argv[])
 {
 	printf("%s\n", getcwd());
 	return 0;
diff --git a/commands/readline.c b/commands/readline.c
index cf2625f..d1ce7ea 100644
--- a/commands/readline.c
+++ b/commands/readline.c
@@ -27,7 +27,7 @@
 #include <xfuncs.h>
 #include <environment.h>
 
-static int do_readline(struct command *cmdtp, int argc, char *argv[])
+static int do_readline(int argc, char *argv[])
 {
 	char *buf = xzalloc(CONFIG_CBSIZE);
 
diff --git a/commands/reginfo.c b/commands/reginfo.c
index 90651d5..009a065 100644
--- a/commands/reginfo.c
+++ b/commands/reginfo.c
@@ -23,7 +23,7 @@
 #include <common.h>
 #include <command.h>
 
-static int do_reginfo(struct command *cmdtp, int argc, char *argv[])
+static int do_reginfo(int argc, char *argv[])
 {
 	reginfo();
 	return 0;
diff --git a/commands/reset.c b/commands/reset.c
index 46ab901..9f242d1 100644
--- a/commands/reset.c
+++ b/commands/reset.c
@@ -23,7 +23,7 @@
 #include <common.h>
 #include <command.h>
 
-static int cmd_reset(struct command *cmdtp, int argc, char *argv[])
+static int cmd_reset(int argc, char *argv[])
 {
 	reset_cpu(0);
 
diff --git a/commands/rm.c b/commands/rm.c
index 3437ae5..ab8bca8 100644
--- a/commands/rm.c
+++ b/commands/rm.c
@@ -24,7 +24,7 @@
 #include <fs.h>
 #include <errno.h>
 
-static int do_rm(struct command *cmdtp, int argc, char *argv[])
+static int do_rm(int argc, char *argv[])
 {
 	int i = 1;
 
diff --git a/commands/rmdir.c b/commands/rmdir.c
index 83a0b02..6034a10 100644
--- a/commands/rmdir.c
+++ b/commands/rmdir.c
@@ -3,7 +3,7 @@
 #include <fs.h>
 #include <errno.h>
 
-static int do_rmdir(struct command *cmdtp, int argc, char *argv[])
+static int do_rmdir(int argc, char *argv[])
 {
 	int i = 1;
 
diff --git a/commands/saveenv.c b/commands/saveenv.c
index c63080b..a4b2796 100644
--- a/commands/saveenv.c
+++ b/commands/saveenv.c
@@ -30,7 +30,7 @@
 #include <fcntl.h>
 #include <environment.h>
 
-static int do_saveenv(struct command *cmdtp, int argc, char *argv[])
+static int do_saveenv(int argc, char *argv[])
 {
 	int ret, fd;
 	char *filename, *dirname;
diff --git a/commands/setenv.c b/commands/setenv.c
index e39db20..4bcdd51 100644
--- a/commands/setenv.c
+++ b/commands/setenv.c
@@ -28,7 +28,7 @@
 #include <errno.h>
 #include <environment.h>
 
-static int do_setenv(struct command *cmdtp, int argc, char *argv[])
+static int do_setenv(int argc, char *argv[])
 {
 	if (argc < 2)
 		return COMMAND_ERROR_USAGE;
diff --git a/commands/sleep.c b/commands/sleep.c
index 40a3a47..f772e87 100644
--- a/commands/sleep.c
+++ b/commands/sleep.c
@@ -24,7 +24,7 @@
 #include <command.h>
 #include <clock.h>
 
-static int do_sleep(struct command *cmdtp, int argc, char *argv[])
+static int do_sleep(int argc, char *argv[])
 {
 	uint64_t start;
 	ulong delay;
diff --git a/commands/test.c b/commands/test.c
index 4af3515..9ffa892 100644
--- a/commands/test.c
+++ b/commands/test.c
@@ -76,7 +76,7 @@ static int parse_opt(const char *opt)
 	return -1;
 }
 
-static int do_test(struct command *cmdtp, int argc, char *argv[])
+static int do_test(int argc, char *argv[])
 {
 	char **ap;
 	int left, adv, expr, last_expr, neg, last_cmp, opt, zero;
diff --git a/commands/time.c b/commands/time.c
index c2633ba..987c25e 100644
--- a/commands/time.c
+++ b/commands/time.c
@@ -4,7 +4,7 @@
 #include <asm-generic/div64.h>
 #include <malloc.h>
 
-static int do_time(struct command *cmdtp, int argc, char *argv[])
+static int do_time(int argc, char *argv[])
 {
 	int i;
 	unsigned char *buf;
diff --git a/commands/timeout.c b/commands/timeout.c
index 5f2ab9a..01ece52 100644
--- a/commands/timeout.c
+++ b/commands/timeout.c
@@ -31,7 +31,7 @@
 #define TIMEOUT_ANYKEY	(1 << 2)
 #define TIMEOUT_SILENT	(1 << 3)
 
-static int do_timeout(struct command *cmdtp, int argc, char *argv[])
+static int do_timeout(int argc, char *argv[])
 {
 	int timeout = 3, ret = 1;
 	int flags = 0, opt, countdown;
diff --git a/commands/trigger.c b/commands/trigger.c
index 095f96d..1d2dec1 100644
--- a/commands/trigger.c
+++ b/commands/trigger.c
@@ -40,7 +40,7 @@ static char *trigger_names[] = {
 	[LED_TRIGGER_NET_TXRX] = "net",
 };
 
-static int do_trigger(struct command *cmdtp, int argc, char *argv[])
+static int do_trigger(int argc, char *argv[])
 {
 	struct led *led;
 	int i, opt, ret = 0;
diff --git a/commands/true.c b/commands/true.c
index 8c77dec..773ddef 100644
--- a/commands/true.c
+++ b/commands/true.c
@@ -24,7 +24,7 @@
 #include <common.h>
 #include <command.h>
 
-static int do_true(struct command *cmdtp, int argc, char *argv[])
+static int do_true(int argc, char *argv[])
 {
 	return 0;
 }
diff --git a/commands/ubi.c b/commands/ubi.c
index 3da0835..bf70071 100644
--- a/commands/ubi.c
+++ b/commands/ubi.c
@@ -11,7 +11,7 @@
 #include <mtd/ubi-user.h>
 #include <ubi-media.h>
 
-static int do_ubimkvol(struct command *cmdtp, int argc, char *argv[])
+static int do_ubimkvol(int argc, char *argv[])
 {
 	struct ubi_mkvol_req req;
 	int fd, ret;
@@ -56,7 +56,7 @@ BAREBOX_CMD_START(ubimkvol)
 BAREBOX_CMD_END
 
 
-static int do_ubiattach(struct command *cmdtp, int argc, char *argv[])
+static int do_ubiattach(int argc, char *argv[])
 {
 	struct mtd_info_user user;
 	int fd, ret;
@@ -92,7 +92,7 @@ BAREBOX_CMD_START(ubiattach)
 	BAREBOX_CMD_HELP(cmd_ubiattach_help)
 BAREBOX_CMD_END
 
-static int do_ubirmvol(struct command *cmdtp, int argc, char *argv[])
+static int do_ubirmvol(int argc, char *argv[])
 {
 	struct ubi_mkvol_req req;
 	int fd, ret;
diff --git a/commands/uimage.c b/commands/uimage.c
index 82efd78..345e496 100644
--- a/commands/uimage.c
+++ b/commands/uimage.c
@@ -19,7 +19,7 @@ static int uimage_flush(void *buf, unsigned int len)
 	return ret;
 }
 
-static int do_uimage(struct command *cmdtp, int argc, char *argv[])
+static int do_uimage(int argc, char *argv[])
 {
 	struct uimage_handle *handle;
 	int ret;
diff --git a/commands/umount.c b/commands/umount.c
index 6ae5844..9731cfc 100644
--- a/commands/umount.c
+++ b/commands/umount.c
@@ -24,7 +24,7 @@
 #include <fs.h>
 #include <errno.h>
 
-static int do_umount(struct command *cmdtp, int argc, char *argv[])
+static int do_umount(int argc, char *argv[])
 {
 	int ret = 0;
 
diff --git a/commands/uncompress.c b/commands/uncompress.c
index fff6227..e96928b 100644
--- a/commands/uncompress.c
+++ b/commands/uncompress.c
@@ -27,7 +27,7 @@
 #include <fs.h>
 #include <uncompress.h>
 
-static int do_uncompress(struct command *cmdtp, int argc, char *argv[])
+static int do_uncompress(int argc, char *argv[])
 {
 	int from, to, ret;
 
diff --git a/commands/usb.c b/commands/usb.c
index 0aac78e..6605e03 100644
--- a/commands/usb.c
+++ b/commands/usb.c
@@ -23,7 +23,7 @@
 #include <command.h>
 #include <usb/usb.h>
 
-static int do_usb(struct command *cmdtp, int argc, char *argv[])
+static int do_usb(int argc, char *argv[])
 {
 	usb_rescan();
 
diff --git a/commands/version.c b/commands/version.c
index 2b3ac05..8901fae 100644
--- a/commands/version.c
+++ b/commands/version.c
@@ -24,7 +24,7 @@
 #include <common.h>
 #include <command.h>
 
-static int do_version(struct command *cmdtp, int argc, char *argv[])
+static int do_version(int argc, char *argv[])
 {
 	printf ("\n%s\n", version_string);
 	return 0;
diff --git a/common/command.c b/common/command.c
index c9bab2a..f21bcc2 100644
--- a/common/command.c
+++ b/common/command.c
@@ -40,7 +40,7 @@ EXPORT_SYMBOL(command_list);
 
 #ifdef CONFIG_SHELL_HUSH
 
-static int do_exit(struct command *cmdtp, int argc, char *argv[])
+static int do_exit(int argc, char *argv[])
 {
 	int r;
 
@@ -98,7 +98,7 @@ int execute_command(int argc, char **argv)
 	/* Look up command in command table */
 	if ((cmdtp = find_cmd(argv[0]))) {
 		/* OK - call function to do the command */
-		ret = cmdtp->cmd(cmdtp, argc, argv);
+		ret = cmdtp->cmd(argc, argv);
 		if (ret == COMMAND_ERROR_USAGE) {
 			barebox_cmd_usage(cmdtp);
 			ret = COMMAND_ERROR;
diff --git a/common/hush.c b/common/hush.c
index 97dc13c..1dae0e8 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -126,7 +126,7 @@
 #include <linux/list.h>
 
 /*cmd_boot.c*/
-extern int do_bootd(struct command *cmdtp, int flag, int argc, char *argv[]);      /* do_bootd */
+extern int do_bootd(int flag, int argc, char *argv[]);      /* do_bootd */
 #define SPECIAL_VAR_SYMBOL 03
 
 
@@ -1657,7 +1657,7 @@ int run_shell(void)
 	return rcode;
 }
 
-static int do_sh(struct command *cmdtp, int argc, char *argv[])
+static int do_sh(int argc, char *argv[])
 {
 	if (argc < 2)
 		return COMMAND_ERROR_USAGE;
@@ -1676,7 +1676,7 @@ BAREBOX_CMD_START(sh)
 	BAREBOX_CMD_HELP(cmd_sh_help)
 BAREBOX_CMD_END
 
-static int do_source(struct command *cmdtp, int argc, char *argv[])
+static int do_source(int argc, char *argv[])
 {
 	if (argc < 2)
 		return COMMAND_ERROR_USAGE;
@@ -1705,7 +1705,7 @@ BAREBOX_CMD_START(source)
 BAREBOX_CMD_END
 
 #ifdef CONFIG_HUSH_GETOPT
-static int do_getopt(struct command *cmdtp, int argc, char *argv[])
+static int do_getopt(int argc, char *argv[])
 {
 	/*
 	 * This function is never reached. The 'getopt' command is
diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 3777f82..a2674d6 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -351,7 +351,7 @@ static int do_devinfo_subtree(struct device_d *dev, int depth)
 	return 0;
 }
 
-static int do_devinfo(struct command *cmdtp, int argc, char *argv[])
+static int do_devinfo(int argc, char *argv[])
 {
 	struct device_d *dev;
 	struct driver_d *drv;
diff --git a/drivers/mtd/nand/nand_s3c24xx.c b/drivers/mtd/nand/nand_s3c24xx.c
index e55aef0..dbf2e14 100644
--- a/drivers/mtd/nand/nand_s3c24xx.c
+++ b/drivers/mtd/nand/nand_s3c24xx.c
@@ -606,7 +606,7 @@ void __nand_boot_init s3c24x0_nand_load_image(void *dest, int size, int page)
 #ifdef CONFIG_NAND_S3C24XX_BOOT_DEBUG
 #include <command.h>
 
-static int do_nand_boot_test(struct command *cmdtp, int argc, char *argv[])
+static int do_nand_boot_test(int argc, char *argv[])
 {
 	void *dest;
 	int size;
diff --git a/drivers/usb/gadget/u_serial.c b/drivers/usb/gadget/u_serial.c
index 980b527..c5e7387 100644
--- a/drivers/usb/gadget/u_serial.c
+++ b/drivers/usb/gadget/u_serial.c
@@ -486,7 +486,7 @@ fail_out:
 }
 #include <command.h>
 
-static int do_mycdev(struct command *cmdtp, int argc, char *argv[])
+static int do_mycdev(int argc, char *argv[])
 {
 
 	int i,j;
diff --git a/include/command.h b/include/command.h
index 9a90e0b..b2e8449 100644
--- a/include/command.h
+++ b/include/command.h
@@ -47,7 +47,7 @@ struct command {
 	const char	*name;		/* Command Name			*/
 	const char	**aliases;
 					/* Implementation function	*/
-	int		(*cmd)(struct command *, int, char *[]);
+	int		(*cmd)(int, char *[]);
 	const char	*usage;		/* Usage message	(short)	*/
 
 	struct list_head list;		/* List of commands		*/
diff --git a/net/dhcp.c b/net/dhcp.c
index 2ce9090..d86f9a9 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -436,7 +436,7 @@ static void dhcp_handler(void *ctx, char *packet, unsigned int len)
 	}
 }
 
-static int do_dhcp(struct command *cmdtp, int argc, char *argv[])
+static int do_dhcp(int argc, char *argv[])
 {
 	int ret;
 
diff --git a/net/dns.c b/net/dns.c
index 4db5bbc..3c7aa5f 100644
--- a/net/dns.c
+++ b/net/dns.c
@@ -234,7 +234,7 @@ IPaddr_t resolv(char *host)
 	return dns_ip;
 }
 
-static int do_host(struct command *cmdtp, int argc, char *argv[])
+static int do_host(int argc, char *argv[])
 {
 	IPaddr_t ip;
 
diff --git a/net/nfs.c b/net/nfs.c
index f6cbc7c..9cb7dc9 100644
--- a/net/nfs.c
+++ b/net/nfs.c
@@ -668,7 +668,7 @@ static void nfs_start(char *p)
 	nfs_send();
 }
 
-static int do_nfs(struct command *cmdtp, int argc, char *argv[])
+static int do_nfs(int argc, char *argv[])
 {
 	char  *localfile;
 	char  *remotefile;
diff --git a/net/ping.c b/net/ping.c
index 8aad7af..b90e5af 100644
--- a/net/ping.c
+++ b/net/ping.c
@@ -52,7 +52,7 @@ static void ping_handler(void *ctx, char *pkt, unsigned len)
 	ping_state = PING_STATE_SUCCESS;
 }
 
-static int do_ping(struct command *cmdtp, int argc, char *argv[])
+static int do_ping(int argc, char *argv[])
 {
 	int ret;
 	uint64_t ping_start = 0;
diff --git a/net/tftp.c b/net/tftp.c
index ee11468..45ac7ad 100644
--- a/net/tftp.c
+++ b/net/tftp.c
@@ -267,7 +267,7 @@ static void tftp_handler(void *ctx, char *packet, unsigned len)
 	}
 }
 
-static int do_tftpb(struct command *cmdtp, int argc, char *argv[])
+static int do_tftpb(int argc, char *argv[])
 {
 	char *localfile, *remotefile, *file1, *file2;
 	char ip1[16];
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
