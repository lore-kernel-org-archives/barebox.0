Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VLUU8-0005Ow-8s
 for barebox@lists.infradead.org; Mon, 16 Sep 2013 08:48:59 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 16 Sep 2013 10:48:17 +0200
Message-Id: <1379321300-8085-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1379321300-8085-1-git-send-email-s.hauer@pengutronix.de>
References: <1379321300-8085-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/11] ARM: socfpga: Add FPGA programming command
To: barebox@lists.infradead.org

This adds a simple socfpga specific 'fpga' command to load a firmware
to the FPGA. For the moment this is enough, but should we get more
FPGA support it might be a good idea to introduce some generic framework
and command.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-socfpga/Kconfig                     |   5 +
 arch/arm/mach-socfpga/Makefile                    |   1 +
 arch/arm/mach-socfpga/fpga.c                      | 422 ++++++++++++++++++++++
 arch/arm/mach-socfpga/include/mach/socfpga-regs.h |   2 +
 4 files changed, 430 insertions(+)
 create mode 100644 arch/arm/mach-socfpga/fpga.c

diff --git a/arch/arm/mach-socfpga/Kconfig b/arch/arm/mach-socfpga/Kconfig
index e6c4c34..eb99ef7 100644
--- a/arch/arm/mach-socfpga/Kconfig
+++ b/arch/arm/mach-socfpga/Kconfig
@@ -4,6 +4,11 @@ config ARCH_SOCFPGA_XLOAD
 	bool
 	prompt "Build preloader image"
 
+config ARCH_SOCFPGA_FPGA
+	depends on COMMAND_SUPPORT
+	bool
+	prompt "Enable FPGA load command"
+
 config ARCH_TEXT_BASE
 	hex
 	default 0x00100000 if MACH_SOCFPGA_CYCLONE5
diff --git a/arch/arm/mach-socfpga/Makefile b/arch/arm/mach-socfpga/Makefile
index d8bf067..12585c5 100644
--- a/arch/arm/mach-socfpga/Makefile
+++ b/arch/arm/mach-socfpga/Makefile
@@ -2,3 +2,4 @@ obj-y += generic.o nic301.o bootsource.o reset-manager.o
 pbl-y += init.o freeze-controller.o scan-manager.o system-manager.o
 pbl-y += clock-manager.o iocsr-config-cyclone5.o
 obj-$(CONFIG_ARCH_SOCFPGA_XLOAD) += xload.o
+obj-$(CONFIG_ARCH_SOCFPGA_FPGA) += fpga.o
diff --git a/arch/arm/mach-socfpga/fpga.c b/arch/arm/mach-socfpga/fpga.c
new file mode 100644
index 0000000..6828001
--- /dev/null
+++ b/arch/arm/mach-socfpga/fpga.c
@@ -0,0 +1,422 @@
+/*
+ *
+ * Copyright (C) 2012 Altera Corporation <www.altera.com>
+ * All rights reserved.
+ *
+ * Redistribution and use in source and binary forms, with or without
+ * modification, are permitted provided that the following conditions are met:
+ *  - Redistributions of source code must retain the above copyright
+ *    notice, this list of conditions and the following disclaimer.
+ *  - Redistributions in binary form must reproduce the above copyright
+ *    notice, this list of conditions and the following disclaimer in the
+ *    documentation and/or other materials provided with the distribution.
+ *  - Neither the name of the Altera Corporation nor the
+ *    names of its contributors may be used to endorse or promote products
+ *    derived from this software without specific prior written permission.
+ *
+ * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
+ * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
+ * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
+ * ARE DISCLAIMED. IN NO EVENT SHALL ALTERA CORPORATION BE LIABLE FOR ANY
+ * DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
+ * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
+ * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
+ * ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
+ * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
+ * THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
+ */
+#define pr_fmt(fmt) "fpgamgr: " fmt
+
+#include <command.h>
+#include <common.h>
+#include <malloc.h>
+#include <clock.h>
+#include <fcntl.h>
+#include <fs.h>
+#include <io.h>
+#include <mach/socfpga-regs.h>
+#include <mach/reset-manager.h>
+#include <mach/system-manager.h>
+#include <mach/sdram.h>
+
+#define FPGAMGRREGS_STAT			0x0
+#define FPGAMGRREGS_CTRL			0x4
+#define FPGAMGRREGS_DCLKCNT			0x8
+#define FPGAMGRREGS_DCLKSTAT			0xc
+
+#define FPGAMGRREGS_MON_GPIO_PORTA_EOI_ADDRESS	0x84c
+#define FPGAMGRREGS_MON_GPIO_EXT_PORTA_ADDRESS	0x850
+
+#define FPGAMGRREGS_CTRL_CFGWDTH_MASK		0x200
+#define FPGAMGRREGS_CTRL_AXICFGEN_MASK		0x100
+#define FPGAMGRREGS_CTRL_NCONFIGPULL_MASK	0x4
+#define FPGAMGRREGS_CTRL_NCE_MASK		0x2
+#define FPGAMGRREGS_CTRL_EN_MASK		0x1
+#define FPGAMGRREGS_CTRL_CDRATIO_LSB		6
+
+#define FPGAMGRREGS_STAT_MODE_MASK		0x7
+#define FPGAMGRREGS_STAT_MSEL_MASK		0xf8
+#define FPGAMGRREGS_STAT_MSEL_LSB		3
+
+#define FPGAMGRREGS_MON_GPIO_EXT_PORTA_CRC_MASK	0x8
+#define FPGAMGRREGS_MON_GPIO_EXT_PORTA_ID_MASK	0x4
+#define FPGAMGRREGS_MON_GPIO_EXT_PORTA_CD_MASK	0x2
+#define FPGAMGRREGS_MON_GPIO_EXT_PORTA_NS_MASK	0x1
+
+/* FPGA Mode */
+#define FPGAMGRREGS_MODE_FPGAOFF	0x0
+#define FPGAMGRREGS_MODE_RESETPHASE	0x1
+#define FPGAMGRREGS_MODE_CFGPHASE	0x2
+#define FPGAMGRREGS_MODE_INITPHASE	0x3
+#define FPGAMGRREGS_MODE_USERMODE	0x4
+#define FPGAMGRREGS_MODE_UNKNOWN	0x5
+
+/* FPGA CD Ratio Value */
+#define CDRATIO_x1	0x0
+#define CDRATIO_x2	0x1
+#define CDRATIO_x4	0x2
+#define CDRATIO_x8	0x3
+
+static void __iomem *fpgamgr_base = (void *)CYCLONE5_FPGAMGRREGS_ADDRESS;
+
+/* Get the FPGA mode */
+static uint32_t fpgamgr_get_mode(void)
+{
+	return readl(fpgamgr_base + FPGAMGRREGS_STAT) & FPGAMGRREGS_STAT_MODE_MASK;
+}
+
+static int fpgamgr_dclkcnt_set(unsigned long cnt)
+{
+	uint64_t start;
+
+	/* clear any existing done status */
+	if (readl(fpgamgr_base + FPGAMGRREGS_DCLKSTAT))
+		writel(0x1, fpgamgr_base + FPGAMGRREGS_DCLKSTAT);
+
+	writel(cnt, fpgamgr_base + FPGAMGRREGS_DCLKCNT);
+
+	/* wait till the dclkcnt done */
+	start = get_time_ns();
+	while (1) {
+		if (readl(fpgamgr_base + FPGAMGRREGS_DCLKSTAT)) {
+			writel(0x1, fpgamgr_base + FPGAMGRREGS_DCLKSTAT);
+			return 0;
+		}
+
+		if (is_timeout(start, 100 * MSECOND))
+			return -ETIMEDOUT;
+	}
+}
+
+/* Start the FPGA programming by initialize the FPGA Manager */
+static int fpgamgr_program_init(void)
+{
+	unsigned long reg;
+	uint32_t ctrl = 0, ratio;
+	uint64_t start;
+
+	/* get the MSEL value */
+	reg = readl(fpgamgr_base + FPGAMGRREGS_STAT);
+	reg = ((reg & FPGAMGRREGS_STAT_MSEL_MASK) >> FPGAMGRREGS_STAT_MSEL_LSB);
+
+	if (reg & 0x8)
+		ctrl |= FPGAMGRREGS_CTRL_CFGWDTH_MASK;
+	else
+		ctrl &= ~FPGAMGRREGS_CTRL_CFGWDTH_MASK;
+
+	switch (reg & 0xb) {
+	case 0xa:
+		ratio = CDRATIO_x8;
+		break;
+	case 0x2:
+	case 0x9:
+		ratio = CDRATIO_x4;
+		break;
+	case 0x1:
+		ratio = CDRATIO_x2;
+		break;
+	case 0x8:
+	case 0xb:
+	default:
+		ratio = CDRATIO_x1;
+		break;
+	}
+
+	ctrl |= ratio << FPGAMGRREGS_CTRL_CDRATIO_LSB;
+
+	/* to enable FPGA Manager drive over configuration line */
+	ctrl |= FPGAMGRREGS_CTRL_EN_MASK;
+
+	/* put FPGA into reset phase */
+	ctrl |= FPGAMGRREGS_CTRL_NCONFIGPULL_MASK;
+
+	writel(ctrl, fpgamgr_base + FPGAMGRREGS_CTRL);
+
+	/* (1) wait until FPGA enter reset phase */
+	start = get_time_ns();
+	while (1) {
+		if (fpgamgr_get_mode() == FPGAMGRREGS_MODE_RESETPHASE)
+			break;
+		if (is_timeout(start, 100 * MSECOND))
+			return -ETIMEDOUT;
+	}
+
+	/* release FPGA from reset phase */
+	ctrl = readl(fpgamgr_base + FPGAMGRREGS_CTRL);
+	ctrl &= ~FPGAMGRREGS_CTRL_NCONFIGPULL_MASK;
+	writel(ctrl, fpgamgr_base + FPGAMGRREGS_CTRL);
+
+	/* (2) wait until FPGA enter configuration phase */
+	start = get_time_ns();
+	while (1) {
+		if (fpgamgr_get_mode() == FPGAMGRREGS_MODE_CFGPHASE)
+			break;
+		if (is_timeout(start, 100 * MSECOND))
+			return -ETIMEDOUT;
+	}
+
+	/* clear all interrupt in CB Monitor */
+	writel(0xFFF, (fpgamgr_base + FPGAMGRREGS_MON_GPIO_PORTA_EOI_ADDRESS));
+
+	/* enable AXI configuration */
+	ctrl = readl(fpgamgr_base + FPGAMGRREGS_CTRL);
+	ctrl |= FPGAMGRREGS_CTRL_AXICFGEN_MASK;
+	writel(ctrl, fpgamgr_base + FPGAMGRREGS_CTRL);
+
+	return 0;
+}
+
+/* Write the RBF data to FPGA Manager */
+static void fpgamgr_program_write_buf(const void *buf, int size)
+{
+	const uint32_t *buf32 = buf;
+
+	/* write to FPGA Manager AXI data */
+	while (size) {
+		writel(*buf32, CYCLONE5_FPGAMGRDATA_ADDRESS);
+		readl(fpgamgr_base + FPGAMGRREGS_MON_GPIO_EXT_PORTA_ADDRESS);
+		buf32++;
+		size -= sizeof(uint32_t);
+	}
+}
+
+/* Ensure the FPGA entering config done */
+static int fpgamgr_program_poll_cd(void)
+{
+	unsigned long reg;
+	uint32_t val;
+	uint64_t start;
+
+	/* (3) wait until full config done */
+	start = get_time_ns();
+	while (1) {
+		reg = readl(fpgamgr_base + FPGAMGRREGS_MON_GPIO_EXT_PORTA_ADDRESS);
+
+		/* config error */
+		if (!(reg & FPGAMGRREGS_MON_GPIO_EXT_PORTA_NS_MASK) &&
+			!(reg & FPGAMGRREGS_MON_GPIO_EXT_PORTA_CD_MASK))
+			return -EIO;
+
+		/* config done without error */
+		if ((reg & FPGAMGRREGS_MON_GPIO_EXT_PORTA_NS_MASK) &&
+			(reg & FPGAMGRREGS_MON_GPIO_EXT_PORTA_CD_MASK))
+			break;
+
+		if (is_timeout(start, 100 * MSECOND))
+			return -ETIMEDOUT;
+	}
+
+	/* disable AXI configuration */
+	val = readl(fpgamgr_base + FPGAMGRREGS_CTRL);
+	val &= ~FPGAMGRREGS_CTRL_AXICFGEN_MASK;
+	writel(val, fpgamgr_base + FPGAMGRREGS_CTRL);
+
+	return 0;
+}
+
+/* Ensure the FPGA entering init phase */
+static int fpgamgr_program_poll_initphase(void)
+{
+	uint64_t start;
+
+	/* additional clocks for the CB to enter initialization phase */
+	if (fpgamgr_dclkcnt_set(0x4) != 0)
+		return -5;
+
+	/* (4) wait until FPGA enter init phase or user mode */
+	start = get_time_ns();
+	while (1) {
+		int mode = fpgamgr_get_mode();
+
+		if (mode == FPGAMGRREGS_MODE_INITPHASE ||
+				mode == FPGAMGRREGS_MODE_USERMODE)
+			break;
+
+		if (is_timeout(start, 100 * MSECOND))
+			return -ETIMEDOUT;
+	}
+
+	return 0;
+}
+
+/* Ensure the FPGA entering user mode */
+static int fpgamgr_program_poll_usermode(void)
+{
+	uint32_t val;
+	uint64_t start;
+
+	/* additional clocks for the CB to exit initialization phase */
+	if (fpgamgr_dclkcnt_set(0x5000) != 0)
+		return -7;
+
+	/* (5) wait until FPGA enter user mode */
+	start = get_time_ns();
+	while (1) {
+		if (fpgamgr_get_mode() == FPGAMGRREGS_MODE_USERMODE)
+			break;
+		if (is_timeout(start, 100 * MSECOND))
+			return -ETIMEDOUT;
+	}
+
+	/* to release FPGA Manager drive over configuration line */
+	val = readl(fpgamgr_base + FPGAMGRREGS_CTRL);
+	val &= ~FPGAMGRREGS_CTRL_EN_MASK;
+	writel(val, fpgamgr_base + FPGAMGRREGS_CTRL);
+
+	return 0;
+}
+
+/*
+ * Using FPGA Manager to program the FPGA
+ * Return 0 for sucess
+ */
+static int fpgamgr_program_start(void)
+{
+	int status;
+
+	/* prior programming the FPGA, all bridges need to be shut off */
+
+	/* disable all signals from hps peripheral controller to fpga */
+	writel(0, SYSMGR_FPGAINTF_MODULE);
+
+	/* disable all signals from fpga to hps sdram */
+	writel(0, (CYCLONE5_SDR_ADDRESS + SDR_CTRLGRP_FPGAPORTRST_ADDRESS));
+
+	/* disable all axi bridge (hps2fpga, lwhps2fpga & fpga2hps) */
+	writel(~0, CYCLONE5_RSTMGR_ADDRESS + RESET_MGR_BRG_MOD_RESET_OFS);
+
+	/* unmap the bridges from NIC-301 */
+	writel(0x1, CYCLONE5_L3REGS_ADDRESS);
+
+	pr_debug("start programming...\n");
+
+	/* initialize the FPGA Manager */
+	status = fpgamgr_program_init();
+	if (status) {
+		pr_err("program init failed with: %s\n",
+				strerror(-status));
+		return status;
+	}
+
+	return 0;
+}
+
+static int fpgamgr_program_finish(void)
+{
+	int status;
+
+	/* Ensure the FPGA entering config done */
+	status = fpgamgr_program_poll_cd();
+	if (status) {
+		pr_err("poll for config done failed with: %s\n",
+				strerror(-status));
+		return status;
+	}
+
+	pr_debug("waiting for init phase...\n");
+
+	/* Ensure the FPGA entering init phase */
+	status = fpgamgr_program_poll_initphase();
+	if (status) {
+		pr_err("poll for init phase failed with: %s\n",
+				strerror(-status));
+		return status;
+	}
+
+	pr_debug("waiting for user mode...\n");
+
+	/* Ensure the FPGA entering user mode */
+	status = fpgamgr_program_poll_usermode();
+	if (status) {
+		pr_err("poll for user mode with: %s\n", strerror(-status));
+		return status;
+	}
+
+	return 0;
+}
+
+static int fpgamgr_program_file(const char *filename)
+{
+	int ret, fd;
+	void *buf;
+	int bufsiz = 4096;
+
+	fd = open(filename, O_RDONLY);
+	if (fd < 0)
+		return fd;
+
+	buf = xzalloc(bufsiz);
+
+	ret = fpgamgr_program_start();
+	if (ret)
+		goto err;
+
+	while (1) {
+		int now = read(fd, buf, bufsiz);
+		if (now < 0) {
+			ret = now;
+			goto err;
+		}
+
+		if (!now)
+			break;
+
+		fpgamgr_program_write_buf(buf, now);
+	}
+
+	ret = fpgamgr_program_finish();
+	if (ret)
+		goto err;
+
+	ret = 0;
+err:
+	close(fd);
+	free(buf);
+
+	return ret;
+}
+
+static int do_fpga(int argc, char *argv[])
+{
+	int ret;
+
+	if (argc != 2)
+		return COMMAND_ERROR_USAGE;
+
+	ret = fpgamgr_program_file(argv[1]);
+	if (!ret)
+		printf("FPGA successfully programmed\n");
+
+	return ret;
+}
+
+BAREBOX_CMD_HELP_START(fpga)
+BAREBOX_CMD_HELP_USAGE("fpga <firmware>\n")
+BAREBOX_CMD_HELP_USAGE("firmware is a file in RBF format\n")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(fpga)
+	.cmd		= do_fpga,
+	.usage		= "load FPGA firmware",
+	BAREBOX_CMD_HELP(cmd_fpga_help)
+BAREBOX_CMD_END
diff --git a/arch/arm/mach-socfpga/include/mach/socfpga-regs.h b/arch/arm/mach-socfpga/include/mach/socfpga-regs.h
index 9d1e677..b124ed6 100644
--- a/arch/arm/mach-socfpga/include/mach/socfpga-regs.h
+++ b/arch/arm/mach-socfpga/include/mach/socfpga-regs.h
@@ -2,10 +2,12 @@
 #define __MACH_SOCFPGA_REGS_H
 
 #define CYCLONE5_SDMMC_ADDRESS		0xff704000
+#define CYCLONE5_FPGAMGRREGS_ADDRESS	0xff706000
 #define CYCLONE5_GPIO0_BASE		0xff708000
 #define CYCLONE5_GPIO1_BASE		0xff709000
 #define CYCLONE5_GPIO2_BASE		0xff70A000
 #define CYCLONE5_L3REGS_ADDRESS		0xff800000
+#define CYCLONE5_FPGAMGRDATA_ADDRESS	0xffb90000
 #define CYCLONE5_UART0_ADDRESS		0xffc02000
 #define CYCLONE5_UART1_ADDRESS		0xffc03000
 #define CYCLONE5_SDR_ADDRESS		0xffc20000
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
