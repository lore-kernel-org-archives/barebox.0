Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NZJRA-0005qC-KR
	for barebox@lists.infradead.org; Mon, 25 Jan 2010 07:32:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 25 Jan 2010 08:32:25 +0100
Message-Id: <1264404750-11596-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1264404750-11596-7-git-send-email-s.hauer@pengutronix.de>
References: <1264404750-11596-1-git-send-email-s.hauer@pengutronix.de>
	<1264404750-11596-2-git-send-email-s.hauer@pengutronix.de>
	<1264404750-11596-3-git-send-email-s.hauer@pengutronix.de>
	<1264404750-11596-4-git-send-email-s.hauer@pengutronix.de>
	<1264404750-11596-5-git-send-email-s.hauer@pengutronix.de>
	<1264404750-11596-6-git-send-email-s.hauer@pengutronix.de>
	<1264404750-11596-7-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/12] remove typedef cmd_tbl_t and replace it with struct
	command
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/cpu.c                 |    2 +-
 arch/arm/cpu/cpuinfo.c             |    2 +-
 arch/arm/lib/armlinux.c            |    4 ++--
 arch/arm/mach-imx/clko.c           |    2 +-
 arch/arm/mach-imx/speed.c          |    2 +-
 arch/arm/mach-netx/generic.c       |    2 +-
 arch/ppc/mach-mpc5xxx/interrupts.c |    2 +-
 board/ipe337/cmd_alternate.c       |    2 +-
 board/pcm043/pcm043.c              |    2 +-
 commands/bmp.c                     |    2 +-
 commands/bootm.c                   |    6 +++---
 commands/cat.c                     |    2 +-
 commands/cd.c                      |    2 +-
 commands/clear.c                   |    2 +-
 commands/cp.c                      |    2 +-
 commands/crc.c                     |    2 +-
 commands/dfu.c                     |    2 +-
 commands/echo.c                    |    2 +-
 commands/edit.c                    |    2 +-
 commands/exec.c                    |    2 +-
 commands/export.c                  |    2 +-
 commands/false.c                   |    2 +-
 commands/flash.c                   |    4 ++--
 commands/go.c                      |    2 +-
 commands/gpio.c                    |    8 ++++----
 commands/help.c                    |    2 +-
 commands/insmod.c                  |    2 +-
 commands/loadb.c                   |    2 +-
 commands/loadenv.c                 |    2 +-
 commands/loads.c                   |    4 ++--
 commands/ls.c                      |    2 +-
 commands/lsmod.c                   |    2 +-
 commands/mem.c                     |   10 +++++-----
 commands/meminfo.c                 |    2 +-
 commands/memtest.c                 |    2 +-
 commands/mkdir.c                   |    2 +-
 commands/mount.c                   |    2 +-
 commands/nand.c                    |    2 +-
 commands/net.c                     |    4 ++--
 commands/partition.c               |    4 ++--
 commands/printenv.c                |    2 +-
 commands/pwd.c                     |    2 +-
 commands/readline.c                |    2 +-
 commands/reginfo.c                 |    2 +-
 commands/reset.c                   |    2 +-
 commands/rm.c                      |    2 +-
 commands/rmdir.c                   |    2 +-
 commands/saveenv.c                 |    2 +-
 commands/setenv.c                  |    2 +-
 commands/sleep.c                   |    2 +-
 commands/test.c                    |    2 +-
 commands/timeout.c                 |    2 +-
 commands/true.c                    |    2 +-
 commands/umount.c                  |    2 +-
 commands/version.c                 |    2 +-
 common/command.c                   |   26 +++++++++++++-------------
 common/complete.c                  |    2 +-
 common/hush.c                      |    6 +++---
 common/module.c                    |    4 ++--
 drivers/nand/nand_imx.c            |    2 +-
 drivers/nand/nand_s3c2410.c        |    2 +-
 drivers/usb/gadget/u_serial.c      |    2 +-
 drivers/usb/usb.c                  |    2 +-
 include/command.h                  |   20 ++++++++------------
 lib/driver.c                       |    2 +-
 net/dhcp.c                         |    2 +-
 net/nfs.c                          |    2 +-
 net/ping.c                         |    2 +-
 net/tftp.c                         |    2 +-
 69 files changed, 105 insertions(+), 109 deletions(-)

diff --git a/arch/arm/cpu/cpu.c b/arch/arm/cpu/cpu.c
index 501e9b9..1b8fc97 100644
--- a/arch/arm/cpu/cpu.c
+++ b/arch/arm/cpu/cpu.c
@@ -162,7 +162,7 @@ int cleanup_before_linux (void)
  * required.
  */
 
-static int do_icache(cmd_tbl_t *cmdtp, int argc, char *argv[])
+static int do_icache(struct command *cmdtp, int argc, char *argv[])
 {
 	if (argc == 1) {
 		printf("icache is %sabled\n", icache_status() ? "en" : "dis");
diff --git a/arch/arm/cpu/cpuinfo.c b/arch/arm/cpu/cpuinfo.c
index e7bcda9..e19b8de 100644
--- a/arch/arm/cpu/cpuinfo.c
+++ b/arch/arm/cpu/cpuinfo.c
@@ -41,7 +41,7 @@ static char *crbits[] = {"M", "A", "C", "W", "P", "D", "L", "B", "S", "R",
 	"F", "Z", "I", "V", "RR", "L4", "", "", "", "", "", "FI", "U", "XP",
 	"VE", "EE", "L2"};
 
-static int do_cpuinfo(cmd_tbl_t *cmdtp, int argc, char *argv[])
+static int do_cpuinfo(struct command *cmdtp, int argc, char *argv[])
 {
 	unsigned long mainid, cache, cr;
 	char *architecture, *implementer;
diff --git a/arch/arm/lib/armlinux.c b/arch/arm/lib/armlinux.c
index 25b7744..2415c29 100644
--- a/arch/arm/lib/armlinux.c
+++ b/arch/arm/lib/armlinux.c
@@ -235,7 +235,7 @@ struct zimage_header {
 	u32	end;
 };
 
-static int do_bootz(cmd_tbl_t *cmdtp, int argc, char *argv[])
+static int do_bootz(struct command *cmdtp, int argc, char *argv[])
 {
 	void (*theKernel)(int zero, int arch, void *params);
 	const char *commandline = getenv("bootargs");
@@ -308,7 +308,7 @@ BAREBOX_CMD_END
 #endif /* CONFIG_CMD_BOOTZ */
 
 #ifdef CONFIG_CMD_BOOTU
-static int do_bootu(cmd_tbl_t *cmdtp, int argc, char *argv[])
+static int do_bootu(struct command *cmdtp, int argc, char *argv[])
 {
 	void (*theKernel)(int zero, int arch, void *params);
 	const char *commandline = getenv("bootargs");
diff --git a/arch/arm/mach-imx/clko.c b/arch/arm/mach-imx/clko.c
index b6efe87..37e17fe 100644
--- a/arch/arm/mach-imx/clko.c
+++ b/arch/arm/mach-imx/clko.c
@@ -4,7 +4,7 @@
 #include <mach/imx-regs.h>
 #include <mach/clock.h>
 
-static int do_clko (cmd_tbl_t *cmdtp, int argc, char *argv[])
+static int do_clko(struct command *cmdtp, int argc, char *argv[])
 {
 	int opt, div = 0, src = -2, ret;
 
diff --git a/arch/arm/mach-imx/speed.c b/arch/arm/mach-imx/speed.c
index 76ab6b9..e024733 100644
--- a/arch/arm/mach-imx/speed.c
+++ b/arch/arm/mach-imx/speed.c
@@ -69,7 +69,7 @@ unsigned int imx_decode_pll(unsigned int reg_val, unsigned int freq)
 
 extern void imx_dump_clocks(void);
 
-static int do_clocks (cmd_tbl_t *cmdtp, int argc, char *argv[])
+static int do_clocks(struct command *cmdtp, int argc, char *argv[])
 {
 	imx_dump_clocks();
 
diff --git a/arch/arm/mach-netx/generic.c b/arch/arm/mach-netx/generic.c
index 76ae6bd..69cf196 100644
--- a/arch/arm/mach-netx/generic.c
+++ b/arch/arm/mach-netx/generic.c
@@ -116,7 +116,7 @@ int loadxc(int xcno) {
 	return 0;
 }
 
-int do_loadxc (cmd_tbl_t *cmdtp, int argc, char *argv[])
+int do_loadxc(struct command *cmdtp, int argc, char *argv[])
 {
 	int xcno;
 
diff --git a/arch/ppc/mach-mpc5xxx/interrupts.c b/arch/ppc/mach-mpc5xxx/interrupts.c
index 58f4530..e484b6e 100644
--- a/arch/ppc/mach-mpc5xxx/interrupts.c
+++ b/arch/ppc/mach-mpc5xxx/interrupts.c
@@ -314,7 +314,7 @@ void irq_free_handler(int irq)
 /****************************************************************************/
 
 #if (CONFIG_COMMANDS & CFG_CMD_IRQ)
-void do_irqinfo(cmd_tbl_t * cmdtp, bd_t * bd, int flag, int argc, char *argv[])
+void do_irqinfo(struct command * cmdtp, bd_t * bd, int flag, int argc, char *argv[])
 {
 	int irq, re_enable;
 	u32 intr_ctrl;
diff --git a/board/ipe337/cmd_alternate.c b/board/ipe337/cmd_alternate.c
index 538f0bf..2883c77 100644
--- a/board/ipe337/cmd_alternate.c
+++ b/board/ipe337/cmd_alternate.c
@@ -6,7 +6,7 @@
 
 #define MAGIC		0x19691228
 
-static int do_alternate (cmd_tbl_t *cmdtp, int argc, char *argv[])
+static int do_alternate(struct command *cmdtp, int argc, char *argv[])
 {
 	void *buf;
 	size_t size;
diff --git a/board/pcm043/pcm043.c b/board/pcm043/pcm043.c
index 0e7f6d3..7b0bad1 100644
--- a/board/pcm043/pcm043.c
+++ b/board/pcm043/pcm043.c
@@ -353,7 +353,7 @@ core_initcall(pcm043_core_setup);
 #define MPCTL_PARAM_399     (IMX_PLL_PD(0) | IMX_PLL_MFD(15) | IMX_PLL_MFI(8) | IMX_PLL_MFN(5))
 #define MPCTL_PARAM_532     ((1 << 31) | IMX_PLL_PD(0) | IMX_PLL_MFD(11) | IMX_PLL_MFI(11) | IMX_PLL_MFN(1))
 
-static int do_cpufreq(cmd_tbl_t *cmdtp, int argc, char *argv[])
+static int do_cpufreq(struct command *cmdtp, int argc, char *argv[])
 {
 	unsigned long freq;
 
diff --git a/commands/bmp.c b/commands/bmp.c
index 51989e1..6e17200 100644
--- a/commands/bmp.c
+++ b/commands/bmp.c
@@ -29,7 +29,7 @@ static inline void set_pixel(struct fb_info *info, void *adr, int r, int g, int
 	}
 }
 
-static int do_bmp(cmd_tbl_t *cmdtp, int argc, char *argv[])
+static int do_bmp(struct command *cmdtp, int argc, char *argv[])
 {
 	int ret, opt, fd;
 	char *fbdev = "/dev/fb0";
diff --git a/commands/bootm.c b/commands/bootm.c
index 849d4c2..11325dc 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -52,7 +52,7 @@
  *  - loaded (first part of) image to header load address,
  *  - disabled interrupts.
  */
-typedef void boot_os_Fcn (cmd_tbl_t *cmdtp, int flag,
+typedef void boot_os_Fcn(struct command *cmdtp, int flag,
 			  int	argc, char *argv[],
 			  ulong	addr,		/* of image to boot */
 			  ulong	*len_ptr,	/* multi-file image length table */
@@ -364,7 +364,7 @@ static int handler_parse_options(struct image_data *data, int opt, char *optarg)
 	return -1;
 }
 
-static int do_bootm (cmd_tbl_t *cmdtp, int argc, char *argv[])
+static int do_bootm(struct command *cmdtp, int argc, char *argv[])
 {
 	ulong	iflag;
 	int	opt;
@@ -464,7 +464,7 @@ BAREBOX_CMD_START(bootm)
 BAREBOX_CMD_END
 
 #ifdef CONFIG_CMD_IMI
-static int do_iminfo ( cmd_tbl_t *cmdtp, int argc, char *argv[])
+static int do_iminfo(struct command *cmdtp, int argc, char *argv[])
 {
 	int	arg;
 	ulong	addr;
diff --git a/commands/cat.c b/commands/cat.c
index c0a93d8..41b3324 100644
--- a/commands/cat.c
+++ b/commands/cat.c
@@ -39,7 +39,7 @@
  * @param[in] argc Argument count from command line
  * @param[in] argv List of input arguments
  */
-static int do_cat(cmd_tbl_t *cmdtp, int argc, char *argv[])
+static int do_cat(struct command *cmdtp, int argc, char *argv[])
 {
 	int ret;
 	int fd, i;
diff --git a/commands/cd.c b/commands/cd.c
index 50e40b6..a842f4d 100644
--- a/commands/cd.c
+++ b/commands/cd.c
@@ -30,7 +30,7 @@
 #include <fs.h>
 #include <errno.h>
 
-static int do_cd (cmd_tbl_t *cmdtp, int argc, char *argv[])
+static int do_cd(struct command *cmdtp, int argc, char *argv[])
 {
 	int ret;
 
diff --git a/commands/clear.c b/commands/clear.c
index 1788428..7589a0c 100644
--- a/commands/clear.c
+++ b/commands/clear.c
@@ -24,7 +24,7 @@
 #include <command.h>
 #include <readkey.h>
 
-static int do_clear (cmd_tbl_t *cmdtp, int argc, char *argv[])
+static int do_clear(struct command *cmdtp, int argc, char *argv[])
 {
 	printf(ANSI_CLEAR_SCREEN);
 
diff --git a/commands/cp.c b/commands/cp.c
index aa7b410..a0c7c84 100644
--- a/commands/cp.c
+++ b/commands/cp.c
@@ -37,7 +37,7 @@
  * @param[in] argc Argument count from command line
  * @param[in] argv List of input arguments
  */
-static int do_cp ( cmd_tbl_t *cmdtp, int argc, char *argv[])
+static int do_cp(struct command *cmdtp, int argc, char *argv[])
 {
 	int ret = 1;
 	struct stat statbuf;
diff --git a/commands/crc.c b/commands/crc.c
index 17188c7..4842cdc 100644
--- a/commands/crc.c
+++ b/commands/crc.c
@@ -30,7 +30,7 @@
 #include <malloc.h>
 #include <linux/ctype.h>
 
-static int do_crc (cmd_tbl_t *cmdtp, int argc, char *argv[])
+static int do_crc(struct command *cmdtp, int argc, char *argv[])
 {
 	ulong start = 0, size = ~0, total = 0;
 	ulong crc = 0, vcrc = 0;
diff --git a/commands/dfu.c b/commands/dfu.c
index fe865ef..66fd6ea 100644
--- a/commands/dfu.c
+++ b/commands/dfu.c
@@ -95,7 +95,7 @@ static int dfu_do_parse_one(char *partstr, char **endstr, struct usb_dfu_dev *df
  * s = save mode (download whole image before flashing)
  * r = read back (firmware image can be downloaded back from host)
  */
-static int do_dfu(cmd_tbl_t *cmdtp, int argc, char *argv[])
+static int do_dfu(struct command *cmdtp, int argc, char *argv[])
 {
 	int opt, n = 0;
 	struct usb_dfu_pdata pdata;
diff --git a/commands/echo.c b/commands/echo.c
index 49bd44e..d5640a0 100644
--- a/commands/echo.c
+++ b/commands/echo.c
@@ -26,7 +26,7 @@
 #include <fcntl.h>
 #include <errno.h>
 
-static int do_echo (cmd_tbl_t *cmdtp, int argc, char *argv[])
+static int do_echo(struct command *cmdtp, int argc, char *argv[])
 {
 	int i, optind = 1;
 	int fd = stdout, opt, newline = 1;
diff --git a/commands/edit.c b/commands/edit.c
index d292a52..e851f0f 100644
--- a/commands/edit.c
+++ b/commands/edit.c
@@ -389,7 +389,7 @@ static void getwinsize(void) {
 }
 #endif
 
-static int do_edit(cmd_tbl_t * cmdtp, int argc, char *argv[])
+static int do_edit(struct command * cmdtp, int argc, char *argv[])
 {
 	int lastscrcol;
 	int i;
diff --git a/commands/exec.c b/commands/exec.c
index ce0a0a9..5f093b7 100644
--- a/commands/exec.c
+++ b/commands/exec.c
@@ -29,7 +29,7 @@
 #include <malloc.h>
 #include <xfuncs.h>
 
-static int do_exec(cmd_tbl_t * cmdtp, int argc, char *argv[])
+static int do_exec(struct command * cmdtp, int argc, char *argv[])
 {
 	int i;
 	char *script;
diff --git a/commands/export.c b/commands/export.c
index 3e2f84d..31259cc 100644
--- a/commands/export.c
+++ b/commands/export.c
@@ -28,7 +28,7 @@
 #include <errno.h>
 #include <environment.h>
 
-static int do_export ( cmd_tbl_t *cmdtp, int argc, char *argv[])
+static int do_export(struct command *cmdtp, int argc, char *argv[])
 {
 	int i = 1;
 	char *ptr;
diff --git a/commands/false.c b/commands/false.c
index fec3fdf..a90eadc 100644
--- a/commands/false.c
+++ b/commands/false.c
@@ -24,7 +24,7 @@
 #include <common.h>
 #include <command.h>
 
-static int do_false (cmd_tbl_t *cmdtp, int argc, char *argv[])
+static int do_false(struct command *cmdtp, int argc, char *argv[])
 {
 	return 1;
 }
diff --git a/commands/flash.c b/commands/flash.c
index ec793c5..f92b604 100644
--- a/commands/flash.c
+++ b/commands/flash.c
@@ -37,7 +37,7 @@
 #include <fcntl.h>
 #include <linux/stat.h>
 
-static int do_flerase (cmd_tbl_t *cmdtp, int argc, char *argv[])
+static int do_flerase(struct command *cmdtp, int argc, char *argv[])
 {
 	int fd;
 	char *filename = NULL;
@@ -107,7 +107,7 @@ BAREBOX_CMD_END
  * Refer \b addpart, \b delpart and \b devinfo for partition handling.
  */
 
-static int do_protect (cmd_tbl_t *cmdtp, int argc, char *argv[])
+static int do_protect(struct command *cmdtp, int argc, char *argv[])
 {
 	int fd;
 	char *filename = NULL;
diff --git a/commands/go.c b/commands/go.c
index e720e32..588d6fc 100644
--- a/commands/go.c
+++ b/commands/go.c
@@ -30,7 +30,7 @@
 #include <linux/ctype.h>
 #include <errno.h>
 
-static int do_go (cmd_tbl_t *cmdtp, int argc, char *argv[])
+static int do_go(struct command *cmdtp, int argc, char *argv[])
 {
 	void	*addr;
 	int     rcode = 1;
diff --git a/commands/gpio.c b/commands/gpio.c
index 58bf8b6..2575c1e 100644
--- a/commands/gpio.c
+++ b/commands/gpio.c
@@ -20,7 +20,7 @@
 #include <errno.h>
 #include <gpio.h>
 
-static int do_gpio_get_value(cmd_tbl_t *cmdtp, int argc, char *argv[])
+static int do_gpio_get_value(struct command *cmdtp, int argc, char *argv[])
 {
 	int gpio, value;
 
@@ -45,7 +45,7 @@ BAREBOX_CMD_START(gpio_get_value)
 	BAREBOX_CMD_HELP(cmd_gpio_get_value_help)
 BAREBOX_CMD_END
 
-static int do_gpio_set_value(cmd_tbl_t *cmdtp, int argc, char *argv[])
+static int do_gpio_set_value(struct command *cmdtp, int argc, char *argv[])
 {
 	int gpio, value;
 
@@ -69,7 +69,7 @@ BAREBOX_CMD_START(gpio_set_value)
 	BAREBOX_CMD_HELP(cmd_gpio_set_value_help)
 BAREBOX_CMD_END
 
-static int do_gpio_direction_input(cmd_tbl_t *cmdtp, int argc, char *argv[])
+static int do_gpio_direction_input(struct command *cmdtp, int argc, char *argv[])
 {
 	int gpio, ret;
 
@@ -94,7 +94,7 @@ BAREBOX_CMD_START(gpio_direction_input)
 	BAREBOX_CMD_HELP(cmd_do_gpio_direction_input_help)
 BAREBOX_CMD_END
 
-static int do_gpio_direction_output(cmd_tbl_t *cmdtp, int argc, char *argv[])
+static int do_gpio_direction_output(struct command *cmdtp, int argc, char *argv[])
 {
 	int gpio, value, ret;
 
diff --git a/commands/help.c b/commands/help.c
index d8c67cd..f8387bd 100644
--- a/commands/help.c
+++ b/commands/help.c
@@ -28,7 +28,7 @@
  * Use puts() instead of printf() to avoid printf buffer overflow
  * for long help messages
  */
-static int do_help (cmd_tbl_t * cmdtp, int argc, char *argv[])
+static int do_help(struct command * cmdtp, int argc, char *argv[])
 {
 	if (argc == 1) {	/* show list of commands */
 		for_each_command(cmdtp) {
diff --git a/commands/insmod.c b/commands/insmod.c
index e14af49..d3b4d1a 100644
--- a/commands/insmod.c
+++ b/commands/insmod.c
@@ -5,7 +5,7 @@
 #include <fs.h>
 #include <malloc.h>
 
-static int do_insmod (cmd_tbl_t *cmdtp, int argc, char *argv[])
+static int do_insmod(struct command *cmdtp, int argc, char *argv[])
 {
 	struct module *module;
 	void *buf;
diff --git a/commands/loadb.c b/commands/loadb.c
index efb1a3c..6740ef4 100644
--- a/commands/loadb.c
+++ b/commands/loadb.c
@@ -688,7 +688,7 @@ static struct console_device *get_current_console(void)
  *
  * @return success or failure
  */
-static int do_load_serial_bin(cmd_tbl_t *cmdtp, int argc, char *argv[])
+static int do_load_serial_bin(struct command *cmdtp, int argc, char *argv[])
 {
 	ulong offset = 0;
 	ulong addr;
diff --git a/commands/loadenv.c b/commands/loadenv.c
index 8b885ab..14fbf1e 100644
--- a/commands/loadenv.c
+++ b/commands/loadenv.c
@@ -27,7 +27,7 @@
 #include <command.h>
 #include <environment.h>
 
-static int do_loadenv(cmd_tbl_t *cmdtp, int argc, char *argv[])
+static int do_loadenv(struct command *cmdtp, int argc, char *argv[])
 {
 	char *filename, *dirname;
 
diff --git a/commands/loads.c b/commands/loads.c
index 2578c15..8269af1 100644
--- a/commands/loads.c
+++ b/commands/loads.c
@@ -42,7 +42,7 @@ static int save_serial (ulong offset, ulong size);
 static int write_record (char *buf);
 # endif /* CFG_CMD_SAVES */
 
-int do_load_serial (cmd_tbl_t *cmdtp, int argc, char *argv[])
+int do_load_serial(struct command *cmdtp, int argc, char *argv[])
 {
 	ulong offset = 0;
 	ulong addr;
@@ -233,7 +233,7 @@ read_record (char *buf, ulong len)
 
 #if (CONFIG_COMMANDS & CFG_CMD_SAVES)
 
-int do_save_serial (cmd_tbl_t *cmdtp, int flag, int argc, char *argv[])
+int do_save_serial(struct command *cmdtp, int flag, int argc, char *argv[])
 {
 	ulong offset = 0;
 	ulong size   = 0;
diff --git a/commands/ls.c b/commands/ls.c
index 4d880e5..a02ccfe 100644
--- a/commands/ls.c
+++ b/commands/ls.c
@@ -111,7 +111,7 @@ out:
 	return 0;
 }
 
-static int do_ls (cmd_tbl_t *cmdtp, int argc, char *argv[])
+static int do_ls(struct command *cmdtp, int argc, char *argv[])
 {
 	int ret, opt, o;
 	struct stat s;
diff --git a/commands/lsmod.c b/commands/lsmod.c
index 696304d..26d2fe4 100644
--- a/commands/lsmod.c
+++ b/commands/lsmod.c
@@ -2,7 +2,7 @@
 #include <command.h>
 #include <module.h>
 
-static int do_lsmod (cmd_tbl_t *cmdtp, int argc, char *argv[])
+static int do_lsmod(struct command *cmdtp, int argc, char *argv[])
 {
 	struct module *mod;
 
diff --git a/commands/mem.c b/commands/mem.c
index f06bc64..6192466 100644
--- a/commands/mem.c
+++ b/commands/mem.c
@@ -163,7 +163,7 @@ static int mem_parse_options(int argc, char *argv[], char *optstr, int *mode,
 	return 0;
 }
 
-static int do_mem_md(cmd_tbl_t *cmdtp, int argc, char *argv[])
+static int do_mem_md(struct command *cmdtp, int argc, char *argv[])
 {
 	ulong	start = 0, size = 0x100;
 	int	r, now;
@@ -238,7 +238,7 @@ BAREBOX_CMD_START(md)
 	BAREBOX_CMD_HELP(cmd_md_help)
 BAREBOX_CMD_END
 
-static int do_mem_mw ( cmd_tbl_t *cmdtp, int argc, char *argv[])
+static int do_mem_mw(struct command *cmdtp, int argc, char *argv[])
 {
 	int ret = 0;
 	int fd;
@@ -301,7 +301,7 @@ BAREBOX_CMD_START(mw)
 	BAREBOX_CMD_HELP(cmd_mw_help)
 BAREBOX_CMD_END
 
-static int do_mem_cmp(cmd_tbl_t *cmdtp, int argc, char *argv[])
+static int do_mem_cmp(struct command *cmdtp, int argc, char *argv[])
 {
 	ulong	addr1, addr2, count = ~0;
 	int	mode  = O_RWSIZE_1;
@@ -410,7 +410,7 @@ BAREBOX_CMD_START(memcmp)
 	BAREBOX_CMD_HELP(cmd_memcmp_help)
 BAREBOX_CMD_END
 
-static int do_mem_cp(cmd_tbl_t *cmdtp, int argc, char *argv[])
+static int do_mem_cp(struct command *cmdtp, int argc, char *argv[])
 {
 	ulong count;
 	ulong	dest, src;
@@ -506,7 +506,7 @@ BAREBOX_CMD_START(memcpy)
 	BAREBOX_CMD_HELP(cmd_memcpy_help)
 BAREBOX_CMD_END
 
-static int do_memset(cmd_tbl_t *cmdtp, int argc, char *argv[])
+static int do_memset(struct command *cmdtp, int argc, char *argv[])
 {
 	ulong	s, c, n;
 	int     fd;
diff --git a/commands/meminfo.c b/commands/meminfo.c
index 76caf0a..abbaf9c 100644
--- a/commands/meminfo.c
+++ b/commands/meminfo.c
@@ -23,7 +23,7 @@
 #include <command.h>
 #include <malloc.h>
 
-static int do_meminfo (cmd_tbl_t *cmdtp, int argc, char *argv[])
+static int do_meminfo(struct command *cmdtp, int argc, char *argv[])
 {
 	malloc_stats();
 
diff --git a/commands/memtest.c b/commands/memtest.c
index 4038ace..d9c8b3d 100644
--- a/commands/memtest.c
+++ b/commands/memtest.c
@@ -322,7 +322,7 @@ static int mem_test(ulong _start, ulong _end, ulong pattern)
 }
 #endif
 
-static int do_mem_mtest (cmd_tbl_t *cmdtp, int argc, char *argv[])
+static int do_mem_mtest(struct command *cmdtp, int argc, char *argv[])
 {
 	ulong start, end, pattern = 0;
 
diff --git a/commands/mkdir.c b/commands/mkdir.c
index d5f58f0..b66795b 100644
--- a/commands/mkdir.c
+++ b/commands/mkdir.c
@@ -26,7 +26,7 @@
 #include <errno.h>
 #include <getopt.h>
 
-static int do_mkdir (cmd_tbl_t *cmdtp, int argc, char *argv[])
+static int do_mkdir(struct command *cmdtp, int argc, char *argv[])
 {
 	int opt, parent = 0, ret;
 
diff --git a/commands/mount.c b/commands/mount.c
index 41735c8..8e4388e 100644
--- a/commands/mount.c
+++ b/commands/mount.c
@@ -30,7 +30,7 @@
 #include <fs.h>
 #include <errno.h>
 
-static int do_mount (cmd_tbl_t *cmdtp, int argc, char *argv[])
+static int do_mount(struct command *cmdtp, int argc, char *argv[])
 {
 	int ret = 0;
 	struct mtab_entry *entry = NULL;
diff --git a/commands/nand.c b/commands/nand.c
index 55b89af..7a4e995 100644
--- a/commands/nand.c
+++ b/commands/nand.c
@@ -279,7 +279,7 @@ out1:
 #define NAND_DEL (1 << 1)
 #define NAND_MARKBAD (1 << 2)
 
-static int do_nand(cmd_tbl_t *cmdtp, int argc, char *argv[])
+static int do_nand(struct command *cmdtp, int argc, char *argv[])
 {
 	int opt;
 	struct nand_bb *bb;
diff --git a/commands/net.c b/commands/net.c
index 5fa49cf..815a566 100644
--- a/commands/net.c
+++ b/commands/net.c
@@ -76,7 +76,7 @@ void netboot_update_env(void)
 #ifdef CONFIG_NET_RARP
 extern void RarpRequest(void);
 
-static int do_rarpb (cmd_tbl_t *cmdtp, int argc, char *argv[])
+static int do_rarpb(struct command *cmdtp, int argc, char *argv[])
 {
 	int size;
 
@@ -102,7 +102,7 @@ BAREBOX_CMD_START(rarpboot)
 BAREBOX_CMD_END
 #endif /* CONFIG_NET_RARP */
 
-static int do_ethact (cmd_tbl_t *cmdtp, int argc, char *argv[])
+static int do_ethact(struct command *cmdtp, int argc, char *argv[])
 {
 	struct eth_device *edev;
 
diff --git a/commands/partition.c b/commands/partition.c
index 3cb7b61..e4645e8 100755
--- a/commands/partition.c
+++ b/commands/partition.c
@@ -99,7 +99,7 @@ static int mtd_part_do_parse_one(char *devname, const char *partstr,
 	return ret;
 }
 
-static int do_addpart(cmd_tbl_t * cmdtp, int argc, char *argv[])
+static int do_addpart(struct command * cmdtp, int argc, char *argv[])
 {
 	char *devname;
 	char *endp;
@@ -180,7 +180,7 @@ BAREBOX_CMD_END
  * @note This command has to be reworked and will probably change it's API.
  */
 
-static int do_delpart(cmd_tbl_t * cmdtp, int argc, char *argv[])
+static int do_delpart(struct command * cmdtp, int argc, char *argv[])
 {
 	int i, err;
 
diff --git a/commands/printenv.c b/commands/printenv.c
index 5490980..e6fc0e4 100644
--- a/commands/printenv.c
+++ b/commands/printenv.c
@@ -28,7 +28,7 @@
 #include <errno.h>
 #include <environment.h>
 
-static int do_printenv (cmd_tbl_t *cmdtp, int argc, char *argv[])
+static int do_printenv(struct command *cmdtp, int argc, char *argv[])
 {
 	struct variable_d *var;
 	struct env_context *c, *current_c;
diff --git a/commands/pwd.c b/commands/pwd.c
index 6c3cbb9..d51fa1a 100644
--- a/commands/pwd.c
+++ b/commands/pwd.c
@@ -23,7 +23,7 @@
 #include <command.h>
 #include <fs.h>
 
-static int do_pwd (cmd_tbl_t *cmdtp, int argc, char *argv[])
+static int do_pwd(struct command *cmdtp, int argc, char *argv[])
 {
 	printf("%s\n", getcwd());
 	return 0;
diff --git a/commands/readline.c b/commands/readline.c
index 55c288c..cf2625f 100644
--- a/commands/readline.c
+++ b/commands/readline.c
@@ -27,7 +27,7 @@
 #include <xfuncs.h>
 #include <environment.h>
 
-static int do_readline (cmd_tbl_t *cmdtp, int argc, char *argv[])
+static int do_readline(struct command *cmdtp, int argc, char *argv[])
 {
 	char *buf = xzalloc(CONFIG_CBSIZE);
 
diff --git a/commands/reginfo.c b/commands/reginfo.c
index f11a73c..90651d5 100644
--- a/commands/reginfo.c
+++ b/commands/reginfo.c
@@ -23,7 +23,7 @@
 #include <common.h>
 #include <command.h>
 
-static int do_reginfo (cmd_tbl_t *cmdtp, int argc, char *argv[])
+static int do_reginfo(struct command *cmdtp, int argc, char *argv[])
 {
 	reginfo();
 	return 0;
diff --git a/commands/reset.c b/commands/reset.c
index f148623..46ab901 100644
--- a/commands/reset.c
+++ b/commands/reset.c
@@ -23,7 +23,7 @@
 #include <common.h>
 #include <command.h>
 
-static int cmd_reset (cmd_tbl_t *cmdtp, int argc, char *argv[])
+static int cmd_reset(struct command *cmdtp, int argc, char *argv[])
 {
 	reset_cpu(0);
 
diff --git a/commands/rm.c b/commands/rm.c
index 8694606..3437ae5 100644
--- a/commands/rm.c
+++ b/commands/rm.c
@@ -24,7 +24,7 @@
 #include <fs.h>
 #include <errno.h>
 
-static int do_rm (cmd_tbl_t *cmdtp, int argc, char *argv[])
+static int do_rm(struct command *cmdtp, int argc, char *argv[])
 {
 	int i = 1;
 
diff --git a/commands/rmdir.c b/commands/rmdir.c
index 3531f32..83a0b02 100644
--- a/commands/rmdir.c
+++ b/commands/rmdir.c
@@ -3,7 +3,7 @@
 #include <fs.h>
 #include <errno.h>
 
-static int do_rmdir (cmd_tbl_t *cmdtp, int argc, char *argv[])
+static int do_rmdir(struct command *cmdtp, int argc, char *argv[])
 {
 	int i = 1;
 
diff --git a/commands/saveenv.c b/commands/saveenv.c
index 6a9da5c..42ea58f 100644
--- a/commands/saveenv.c
+++ b/commands/saveenv.c
@@ -30,7 +30,7 @@
 #include <fcntl.h>
 #include <environment.h>
 
-static int do_saveenv(cmd_tbl_t *cmdtp, int argc, char *argv[])
+static int do_saveenv(struct command *cmdtp, int argc, char *argv[])
 {
 	int ret, fd;
 	char *filename, *dirname;
diff --git a/commands/setenv.c b/commands/setenv.c
index 16b8177..257348f 100644
--- a/commands/setenv.c
+++ b/commands/setenv.c
@@ -28,7 +28,7 @@
 #include <errno.h>
 #include <environment.h>
 
-static int do_setenv ( cmd_tbl_t *cmdtp, int argc, char *argv[])
+static int do_setenv(struct command *cmdtp, int argc, char *argv[])
 {
 	if (argc < 2)
 		return COMMAND_ERROR_USAGE;
diff --git a/commands/sleep.c b/commands/sleep.c
index d88f39e..40a3a47 100644
--- a/commands/sleep.c
+++ b/commands/sleep.c
@@ -24,7 +24,7 @@
 #include <command.h>
 #include <clock.h>
 
-static int do_sleep (cmd_tbl_t *cmdtp, int argc, char *argv[])
+static int do_sleep(struct command *cmdtp, int argc, char *argv[])
 {
 	uint64_t start;
 	ulong delay;
diff --git a/commands/test.c b/commands/test.c
index afabe12..4af3515 100644
--- a/commands/test.c
+++ b/commands/test.c
@@ -76,7 +76,7 @@ static int parse_opt(const char *opt)
 	return -1;
 }
 
-static int do_test (cmd_tbl_t *cmdtp, int argc, char *argv[])
+static int do_test(struct command *cmdtp, int argc, char *argv[])
 {
 	char **ap;
 	int left, adv, expr, last_expr, neg, last_cmp, opt, zero;
diff --git a/commands/timeout.c b/commands/timeout.c
index dfbefc9..5f2ab9a 100644
--- a/commands/timeout.c
+++ b/commands/timeout.c
@@ -31,7 +31,7 @@
 #define TIMEOUT_ANYKEY	(1 << 2)
 #define TIMEOUT_SILENT	(1 << 3)
 
-static int do_timeout(cmd_tbl_t *cmdtp, int argc, char *argv[])
+static int do_timeout(struct command *cmdtp, int argc, char *argv[])
 {
 	int timeout = 3, ret = 1;
 	int flags = 0, opt, countdown;
diff --git a/commands/true.c b/commands/true.c
index 4697a81..8c77dec 100644
--- a/commands/true.c
+++ b/commands/true.c
@@ -24,7 +24,7 @@
 #include <common.h>
 #include <command.h>
 
-static int do_true (cmd_tbl_t *cmdtp, int argc, char *argv[])
+static int do_true(struct command *cmdtp, int argc, char *argv[])
 {
 	return 0;
 }
diff --git a/commands/umount.c b/commands/umount.c
index 0dc517a..6ae5844 100644
--- a/commands/umount.c
+++ b/commands/umount.c
@@ -24,7 +24,7 @@
 #include <fs.h>
 #include <errno.h>
 
-static int do_umount (cmd_tbl_t *cmdtp, int argc, char *argv[])
+static int do_umount(struct command *cmdtp, int argc, char *argv[])
 {
 	int ret = 0;
 
diff --git a/commands/version.c b/commands/version.c
index 425f430..6c683d9 100644
--- a/commands/version.c
+++ b/commands/version.c
@@ -24,7 +24,7 @@
 #include <common.h>
 #include <command.h>
 
-static int do_version (cmd_tbl_t *cmdtp, int argc, char *argv[])
+static int do_version(struct command *cmdtp, int argc, char *argv[])
 {
 	extern char version_string[];
 	printf ("\n%s\n", version_string);
diff --git a/common/command.c b/common/command.c
index e21e80d..8ed1072 100644
--- a/common/command.c
+++ b/common/command.c
@@ -44,7 +44,7 @@ EXPORT_SYMBOL(command_list);
 
 #ifdef CONFIG_SHELL_HUSH
 
-static int do_exit (cmd_tbl_t *cmdtp, int argc, char *argv[])
+static int do_exit(struct command *cmdtp, int argc, char *argv[])
 {
 	int r;
 
@@ -62,7 +62,7 @@ BAREBOX_CMD_END
 
 #endif
 
-void barebox_cmd_usage(cmd_tbl_t *cmdtp)
+void barebox_cmd_usage(struct command *cmdtp)
 {
 #ifdef	CONFIG_LONGHELP
 		/* found - print (long) help info */
@@ -85,15 +85,15 @@ EXPORT_SYMBOL(barebox_cmd_usage);
 
 static int compare(struct list_head *a, struct list_head *b)
 {
-	char *na = (char*)list_entry(a, cmd_tbl_t, list)->name;
-	char *nb = (char*)list_entry(b, cmd_tbl_t, list)->name;
+	char *na = (char*)list_entry(a, struct command, list)->name;
+	char *nb = (char*)list_entry(b, struct command, list)->name;
 
 	return strcmp(na, nb);
 }
 
 int execute_command(int argc, char **argv)
 {
-	cmd_tbl_t *cmdtp;
+	struct command *cmdtp;
 	int ret;
 
 	getopt_reset();
@@ -117,7 +117,7 @@ int execute_command(int argc, char **argv)
 	}
 }
 
-int register_command(cmd_tbl_t *cmd)
+int register_command(struct command *cmd)
 {
 	/*
 	 * We do not check if the command already exists.
@@ -133,9 +133,9 @@ int register_command(cmd_tbl_t *cmd)
 		char **aliases = (char**)cmd->aliases;
 		while(*aliases) {
 			char *usage = "alias for ";
-			cmd_tbl_t *c = xzalloc(sizeof(cmd_tbl_t));
+			struct command *c = xzalloc(sizeof(struct command));
 
-			memcpy(c, cmd, sizeof(cmd_tbl_t));
+			memcpy(c, cmd, sizeof(struct command));
 
 			c->name = *aliases;
 			c->usage = xmalloc(strlen(usage) + strlen(cmd->name) + 1);
@@ -156,15 +156,15 @@ EXPORT_SYMBOL(register_command);
 /*
  * find command table entry for a command
  */
-cmd_tbl_t *find_cmd (const char *cmd)
+struct command *find_cmd (const char *cmd)
 {
-	cmd_tbl_t *cmdtp;
-	cmd_tbl_t *cmdtp_temp = &__barebox_cmd_start;	/*Init value */
+	struct command *cmdtp;
+	struct command *cmdtp_temp = &__barebox_cmd_start;	/*Init value */
 	int len;
 	int n_found = 0;
 	len = strlen (cmd);
 
-	cmdtp = list_entry(&command_list, cmd_tbl_t, list);
+	cmdtp = list_entry(&command_list, struct command, list);
 
 	for_each_command(cmdtp) {
 		if (strncmp (cmd, cmdtp->name, len) == 0) {
@@ -191,7 +191,7 @@ cmd_tbl_t *find_cmd (const char *cmd)
  */
 static int init_command_list(void)
 {
-	cmd_tbl_t *cmdtp;
+	struct command *cmdtp;
 
 	for (cmdtp = &__barebox_cmd_start;
 			cmdtp != &__barebox_cmd_end;
diff --git a/common/complete.c b/common/complete.c
index 87435ee..46ba871 100644
--- a/common/complete.c
+++ b/common/complete.c
@@ -69,7 +69,7 @@ out:
 
 static int command_complete(struct string_list *sl, char *instr)
 {
-	cmd_tbl_t *cmdtp;
+	struct command *cmdtp;
 	char cmd[128];
 
 	for_each_command(cmdtp) {
diff --git a/common/hush.c b/common/hush.c
index e7a13c2..cf6704b 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -122,7 +122,7 @@
 #include <glob.h>
 
 /*cmd_boot.c*/
-extern int do_bootd (cmd_tbl_t *cmdtp, int flag, int argc, char *argv[]);      /* do_bootd */
+extern int do_bootd(struct command *cmdtp, int flag, int argc, char *argv[]);      /* do_bootd */
 #define SPECIAL_VAR_SYMBOL 03
 
 
@@ -1583,7 +1583,7 @@ int run_shell(void)
 	return rcode;
 }
 
-static int do_sh(cmd_tbl_t *cmdtp, int argc, char *argv[])
+static int do_sh(struct command *cmdtp, int argc, char *argv[])
 {
 	if (argc < 2)
 		return COMMAND_ERROR_USAGE;
@@ -1602,7 +1602,7 @@ BAREBOX_CMD_START(sh)
 	BAREBOX_CMD_HELP(cmd_sh_help)
 BAREBOX_CMD_END
 
-static int do_source(cmd_tbl_t *cmdtp, int argc, char *argv[])
+static int do_source(struct command *cmdtp, int argc, char *argv[])
 {
 	if (argc < 2)
 		return COMMAND_ERROR_USAGE;
diff --git a/common/module.c b/common/module.c
index cedd702..29f3eb7 100644
--- a/common/module.c
+++ b/common/module.c
@@ -297,8 +297,8 @@ struct module * load_module(void *mod_image, unsigned long len)
 #ifdef CONFIG_COMMAND
 	cmdindex = find_sec(ehdr, sechdrs, secstrings, ".barebox_cmd");
 	if (cmdindex) {
-		cmd_tbl_t *cmd = (cmd_tbl_t *)sechdrs[cmdindex].sh_addr;
-		for (i = 0; i < sechdrs[cmdindex].sh_size / sizeof(cmd_tbl_t); i++) {
+		struct command *cmd =(struct command *)sechdrs[cmdindex].sh_addr;
+		for (i = 0; i < sechdrs[cmdindex].sh_size / sizeof(struct command); i++) {
 			register_command(cmd);
 			cmd++;
 		}
diff --git a/drivers/nand/nand_imx.c b/drivers/nand/nand_imx.c
index 5811e27..5b3b002 100644
--- a/drivers/nand/nand_imx.c
+++ b/drivers/nand/nand_imx.c
@@ -1129,7 +1129,7 @@ void __nand_boot_init imx_nand_load_image(void *dest, int size)
 #ifdef CONFIG_NAND_IMX_BOOT_DEBUG
 #include <command.h>
 
-static int do_nand_boot_test(cmd_tbl_t *cmdtp, int argc, char *argv[])
+static int do_nand_boot_test(struct command *cmdtp, int argc, char *argv[])
 {
 	void *dest;
 	int size;
diff --git a/drivers/nand/nand_s3c2410.c b/drivers/nand/nand_s3c2410.c
index 2f98c76..b989583 100644
--- a/drivers/nand/nand_s3c2410.c
+++ b/drivers/nand/nand_s3c2410.c
@@ -484,7 +484,7 @@ void __nand_boot_init s3c24x0_nand_load_image(void *dest, int size, int page, in
 #ifdef CONFIG_NAND_S3C24XX_BOOT_DEBUG
 #include <command.h>
 
-static int do_nand_boot_test(cmd_tbl_t *cmdtp, int argc, char *argv[])
+static int do_nand_boot_test(struct command *cmdtp, int argc, char *argv[])
 {
 	void *dest;
 	int size, pagesize;
diff --git a/drivers/usb/gadget/u_serial.c b/drivers/usb/gadget/u_serial.c
index d3b49ed..cb65b19 100644
--- a/drivers/usb/gadget/u_serial.c
+++ b/drivers/usb/gadget/u_serial.c
@@ -470,7 +470,7 @@ fail_out:
 }
 #include <command.h>
 
-static int do_mycdev (cmd_tbl_t *cmdtp, int argc, char *argv[])
+static int do_mycdev(struct command *cmdtp, int argc, char *argv[])
 {
 
 	int i,j;
diff --git a/drivers/usb/usb.c b/drivers/usb/usb.c
index decdbdd..1ad4bab 100644
--- a/drivers/usb/usb.c
+++ b/drivers/usb/usb.c
@@ -478,7 +478,7 @@ static int __usb_init(void)
 	return 0;
 }
 
-static int do_usb(cmd_tbl_t *cmdtp, int argc, char *argv[])
+static int do_usb(struct command *cmdtp, int argc, char *argv[])
 {
 	__usb_init();
 
diff --git a/include/command.h b/include/command.h
index 393438d..a612d65 100644
--- a/include/command.h
+++ b/include/command.h
@@ -42,12 +42,11 @@ extern struct list_head command_list;
 /*
  * Monitor Command Table
  */
-
-struct cmd_tbl_s {
+struct command {
 	const char	*name;		/* Command Name			*/
 	const char	**aliases;
 					/* Implementation function	*/
-	int		(*cmd)(struct cmd_tbl_s *, int, char *[]);
+	int		(*cmd)(struct command *, int, char *[]);
 	const char	*usage;		/* Usage message	(short)	*/
 
 	struct list_head list;		/* List of commands		*/
@@ -61,17 +60,14 @@ __attribute__((aligned(64)))
 #endif
 ;
 
-
-typedef struct cmd_tbl_s	cmd_tbl_t;
-
-extern cmd_tbl_t  __barebox_cmd_start;
-extern cmd_tbl_t  __barebox_cmd_end;
+extern struct command __barebox_cmd_start;
+extern struct command __barebox_cmd_end;
 
 
 /* common/command.c */
-cmd_tbl_t *find_cmd(const char *cmd);
+struct command *find_cmd(const char *cmd);
 int execute_command(int argc, char **argv);
-void barebox_cmd_usage(cmd_tbl_t *cmdtp);
+void barebox_cmd_usage(struct command *cmdtp);
 
 #define COMMAND_SUCCESS		0
 #define COMMAND_ERROR		1
@@ -86,7 +82,7 @@ void barebox_cmd_usage(cmd_tbl_t *cmdtp);
 #define Struct_Section  __attribute__ ((unused,section (".barebox_cmd")))
 
 #define BAREBOX_CMD_START(_name)				\
-const cmd_tbl_t __barebox_cmd_##_name	\
+const struct command __barebox_cmd_##_name	\
 	__attribute__ ((unused,section (".barebox_cmd_" __stringify(_name)))) = {				\
 	.name		= #_name,
 
@@ -99,6 +95,6 @@ const cmd_tbl_t __barebox_cmd_##_name	\
 #define BAREBOX_CMD_HELP(text)
 #endif
 
-int register_command(cmd_tbl_t *);
+int register_command(struct command *);
 
 #endif	/* __COMMAND_H */
diff --git a/lib/driver.c b/lib/driver.c
index b3115de..f433c3e 100644
--- a/lib/driver.c
+++ b/lib/driver.c
@@ -280,7 +280,7 @@ void devices_shutdown(void)
 
 #ifdef CONFIG_CMD_DEVINFO
 
-static int do_devinfo ( cmd_tbl_t *cmdtp, int argc, char *argv[])
+static int do_devinfo(struct command *cmdtp, int argc, char *argv[])
 {
 	struct device_d *dev;
 	struct driver_d *drv;
diff --git a/net/dhcp.c b/net/dhcp.c
index 1c479cf..f27a696 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -589,7 +589,7 @@ DhcpHandler(uchar * pkt, unsigned dest, unsigned src, unsigned len)
 
 }
 
-static int do_dhcp (cmd_tbl_t *cmdtp, int argc, char *argv[])
+static int do_dhcp(struct command *cmdtp, int argc, char *argv[])
 {
 	int size;
 
diff --git a/net/nfs.c b/net/nfs.c
index f68741a..15f91ab 100644
--- a/net/nfs.c
+++ b/net/nfs.c
@@ -706,7 +706,7 @@ NfsStart (char *p)
 	NfsSend ();
 }
 
-static int do_nfs (cmd_tbl_t *cmdtp, int argc, char *argv[])
+static int do_nfs(struct command *cmdtp, int argc, char *argv[])
 {
 	int   rcode = 0;
 	char  *localfile;
diff --git a/net/ping.c b/net/ping.c
index 7a1fda2..8759fd7 100644
--- a/net/ping.c
+++ b/net/ping.c
@@ -81,7 +81,7 @@ PingHandler (uchar * pkt, unsigned dest, unsigned src, unsigned len)
 	NetState = NETLOOP_SUCCESS;
 }
 
-int do_ping (cmd_tbl_t *cmdtp, int argc, char *argv[])
+int do_ping(struct command *cmdtp, int argc, char *argv[])
 {
 	if (argc < 2 || string_to_ip(argv[1], &NetPingIP))
 		return COMMAND_ERROR_USAGE;
diff --git a/net/tftp.c b/net/tftp.c
index b9c6fdd..897bc48 100644
--- a/net/tftp.c
+++ b/net/tftp.c
@@ -256,7 +256,7 @@ void TftpStart(char *filename)
 	TftpSend();
 }
 
-static int do_tftpb (cmd_tbl_t *cmdtp, int argc, char *argv[])
+static int do_tftpb(struct command *cmdtp, int argc, char *argv[])
 {
 	int   rcode = 0;
 	char  *localfile;
-- 
1.6.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
