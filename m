Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fkS9F-00084y-5N
 for barebox@lists.infradead.org; Tue, 31 Jul 2018 10:45:17 +0000
Received: from unicorn.hi.pengutronix.de
 ([2001:67c:670:100:a61f:72ff:fe69:16d] helo=unicorn)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1fkS91-0001Cb-Ts
 for barebox@lists.infradead.org; Tue, 31 Jul 2018 12:44:47 +0200
Received: from str by unicorn with local (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1fkS99-0000f1-9k
 for barebox@lists.infradead.org; Tue, 31 Jul 2018 12:44:55 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Tue, 31 Jul 2018 12:44:39 +0200
Message-Id: <20180731104442.2451-17-s.trumtrar@pengutronix.de>
In-Reply-To: <20180731104442.2451-1-s.trumtrar@pengutronix.de>
References: <20180731104442.2451-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 16/19] ARM: socfpga: Arria10: support programming FPGA in PBL
To: Barebox List <barebox@lists.infradead.org>

Some Arria10 boards don't have the FPGA programmed externally.
Instead barebox needs to do that. As the Arria10 has the SDRAM
controller in the FPGA, the first thing we need to do is,
configure the FPGA before the SDRAM can even be used.

It works like this:
  1. boot ROM fetches the PBL from MMC
  2. read the MBR from MMC (this depends on the setup done by the boot ROM)
  3. read the Bitstream from the MMC and program the FPGA
  4. re-read the barebox image from MMC, this time with the full barebox
     that is appended to the PBL
  5. jump into the full barebox

Only supported boot device is eMMC.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/Kconfig                                   |   4 -
 arch/arm/mach-socfpga/Kconfig                      |   8 +-
 arch/arm/mach-socfpga/Makefile                     |  12 +-
 arch/arm/mach-socfpga/arria10-xload-emmc.c         | 222 ++++++++++
 arch/arm/mach-socfpga/arria10-xload.c              | 457 +++++++++++++++++++++
 arch/arm/mach-socfpga/include/mach/arria10-fpga.h  |  86 ++++
 .../include/mach/arria10-system-manager.h          |   2 +
 arch/arm/mach-socfpga/include/mach/arria10-xload.h |  13 +
 arch/arm/mach-socfpga/include/mach/debug_ll.h      |   2 -
 arch/arm/mach-socfpga/include/mach/generic.h       |  36 ++
 images/Makefile.socfpga                            |  11 +
 11 files changed, 844 insertions(+), 9 deletions(-)
 create mode 100644 arch/arm/mach-socfpga/arria10-xload-emmc.c
 create mode 100644 arch/arm/mach-socfpga/arria10-xload.c
 create mode 100644 arch/arm/mach-socfpga/include/mach/arria10-fpga.h
 create mode 100644 arch/arm/mach-socfpga/include/mach/arria10-xload.h

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 3555b4ee53c0..702b2fe6ef15 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -179,10 +179,6 @@ config ARCH_SOCFPGA
 	select CPU_V7
 	select COMMON_CLK
 	select CLKDEV_LOOKUP
-	select GPIOLIB
-	select HAVE_PBL_MULTI_IMAGES
-	select OFDEVICE if !(ARCH_SOCFPGA_XLOAD && ARCH_SOCFPGA_CYCLONE5)
-	select OFTREE if !(ARCH_SOCFPGA_XLOAD && ARCH_SOCFPGA_CYCLONE5)
 
 config ARCH_S3C24xx
 	bool "Samsung S3C2410, S3C2440"
diff --git a/arch/arm/mach-socfpga/Kconfig b/arch/arm/mach-socfpga/Kconfig
index 4715e11434a6..65097b676a6f 100644
--- a/arch/arm/mach-socfpga/Kconfig
+++ b/arch/arm/mach-socfpga/Kconfig
@@ -18,11 +18,17 @@ comment "Altera SoCFPGA System-on-Chip"
 config ARCH_SOCFPGA_CYCLONE5
 	bool
 	select CPU_V7
+	select HAVE_PBL_MULTI_IMAGES
+	select OFDEVICE if !ARCH_SOCFPGA_XLOAD
+	select OFTREE if !ARCH_SOCFPGA_XLOAD
 
 config ARCH_SOCFPGA_ARRIA10
 	bool
 	select CPU_V7
-	select HAVE_MACH_ARM_HEAD
+	select RESET_CONTROLLER
+	select HAVE_PBL_MULTI_IMAGES
+	select OFDEVICE
+	select OFTREE
 
 config MACH_SOCFPGA_ALTERA_SOCDK
 	select ARCH_SOCFPGA_CYCLONE5
diff --git a/arch/arm/mach-socfpga/Makefile b/arch/arm/mach-socfpga/Makefile
index cbb47fa206f2..3a3a2fc57dd3 100644
--- a/arch/arm/mach-socfpga/Makefile
+++ b/arch/arm/mach-socfpga/Makefile
@@ -2,7 +2,15 @@ pbl-$(CONFIG_ARCH_SOCFPGA_CYCLONE5) += cyclone5-init.o cyclone5-freeze-controlle
 pbl-$(CONFIG_ARCH_SOCFPGA_CYCLONE5) += cyclone5-clock-manager.o
 obj-$(CONFIG_ARCH_SOCFPGA_CYCLONE5) += cyclone5-generic.o nic301.o cyclone5-bootsource.o cyclone5-reset-manager.o
 
-pbl-$(CONFIG_ARCH_SOCFPGA_ARRIA10) += arria10-init.o arria10-clock-manager.o arria10-sdram.o arria10-reset-manager.o arria10-bootsource.o
-obj-$(CONFIG_ARCH_SOCFPGA_ARRIA10) += arria10-bootsource.o arria10-generic.o arria10-reset-manager.o
+pbl-$(CONFIG_ARCH_SOCFPGA_ARRIA10) += arria10-xload.o \
+				      arria10-xload-emmc.o
+obj-pbl-$(CONFIG_ARCH_SOCFPGA_ARRIA10) += arria10-bootsource.o \
+	    				  arria10-clock-manager.o \
+					  arria10-generic.o \
+					  arria10-reset-manager.o \
+					  arria10-init.o \
+					  arria10-sdram.o
 
+ifdef CONFIG_ARCH_SOCFPGA_CYCLONE5
 obj-$(CONFIG_ARCH_SOCFPGA_XLOAD) += xload.o
+endif
diff --git a/arch/arm/mach-socfpga/arria10-xload-emmc.c b/arch/arm/mach-socfpga/arria10-xload-emmc.c
new file mode 100644
index 000000000000..dcc38cf4a237
--- /dev/null
+++ b/arch/arm/mach-socfpga/arria10-xload-emmc.c
@@ -0,0 +1,222 @@
+#include <common.h>
+#include <init.h>
+#include <linux/sizes.h>
+#include <mach/generic.h>
+#include <mach/arria10-regs.h>
+#include <mach/arria10-system-manager.h>
+#include <mach/arria10-xload.h>
+#include <mci.h>
+#include "../../../drivers/mci/sdhci.h"
+#include "../../../drivers/mci/dw_mmc.h"
+
+#define SECTOR_SIZE 512
+
+static int dwmci_wait_reset(uint32_t value)
+{
+	uint32_t ctrl;
+	int32_t timeout;
+
+	timeout = 10000;
+
+	writel(value, ARRIA10_SDMMC_ADDR + DWMCI_CTRL);
+
+	while (timeout-- > 0) {
+		ctrl = readl(ARRIA10_SDMMC_ADDR + DWMCI_CTRL);
+		if (!(ctrl & DWMCI_RESET_ALL))
+			return 0;
+	}
+
+	return -EIO;
+}
+
+static int dwmci_prepare_data(struct mci_data *data)
+{
+	unsigned long ctrl;
+
+	dwmci_wait_reset(DWMCI_CTRL_FIFO_RESET);
+
+	writel(DWMCI_INTMSK_TXDR | DWMCI_INTMSK_RXDR,
+	       ARRIA10_SDMMC_ADDR + DWMCI_RINTSTS);
+
+	ctrl = readl(ARRIA10_SDMMC_ADDR + DWMCI_INTMASK);
+	ctrl |= DWMCI_INTMSK_TXDR | DWMCI_INTMSK_RXDR;
+	writel(ctrl, ARRIA10_SDMMC_ADDR + DWMCI_INTMASK);
+
+	ctrl = readl(ARRIA10_SDMMC_ADDR + DWMCI_CTRL);
+	ctrl &= ~(DWMCI_IDMAC_EN | DWMCI_DMA_EN);
+	writel(ctrl, ARRIA10_SDMMC_ADDR + DWMCI_CTRL);
+
+	writel(0x1, ARRIA10_SDMMC_ADDR + DWMCI_FIFOTH);
+	writel(0xffffffff, ARRIA10_SDMMC_ADDR + DWMCI_TMOUT);
+	writel(0x0, ARRIA10_SDMMC_ADDR + DWMCI_IDINTEN);
+
+	return 0;
+}
+
+static int dwmci_read_data_pio(struct mci_data *data)
+{
+	u32 *pdata = (u32 *)data->dest;
+	u32 val, status, timeout;
+	u32 rcnt, rlen = 0;
+
+	for (rcnt = (data->blocksize * data->blocks)>>2; rcnt; rcnt--) {
+		timeout = 20000;
+		status = readl(ARRIA10_SDMMC_ADDR + DWMCI_STATUS);
+		while (--timeout > 0
+		       && (status & DWMCI_STATUS_FIFO_EMPTY)) {
+			__udelay(200);
+			status = readl(ARRIA10_SDMMC_ADDR + DWMCI_STATUS);
+		}
+		if (!timeout)
+			break;
+
+		val = readl(ARRIA10_SDMMC_ADDR + DWMCI_DATA);
+		*pdata++ = val;
+		rlen += 4;
+	}
+	writel(DWMCI_INTMSK_RXDR, ARRIA10_SDMMC_ADDR + DWMCI_RINTSTS);
+
+	return rlen;
+}
+
+static int dwmci_cmd(struct mci_cmd *cmd, struct mci_data *data)
+{
+	int flags = 0;
+	uint32_t mask;
+	int timeout;
+
+	timeout = 100000;
+	while (readl(ARRIA10_SDMMC_ADDR + DWMCI_STATUS) & DWMCI_STATUS_BUSY) {
+		if (timeout-- <= 0)
+			return -ETIMEDOUT;
+
+	}
+
+	writel(DWMCI_INTMSK_ALL, ARRIA10_SDMMC_ADDR + DWMCI_RINTSTS);
+
+	if (data) {
+		writel(data->blocksize, ARRIA10_SDMMC_ADDR + DWMCI_BLKSIZ);
+		writel(data->blocksize * data->blocks, ARRIA10_SDMMC_ADDR +
+		       DWMCI_BYTCNT);
+
+		dwmci_prepare_data(data);
+	}
+
+	writel(cmd->cmdarg, ARRIA10_SDMMC_ADDR + DWMCI_CMDARG);
+
+	if (data)
+		flags = DWMCI_CMD_DATA_EXP;
+
+	if ((cmd->resp_type & MMC_RSP_136) && (cmd->resp_type & MMC_RSP_BUSY))
+		return -EINVAL;
+
+	if (cmd->cmdidx == MMC_CMD_STOP_TRANSMISSION)
+		flags |= DWMCI_CMD_ABORT_STOP;
+	else
+		flags |= DWMCI_CMD_PRV_DAT_WAIT;
+
+	if (cmd->resp_type & MMC_RSP_PRESENT) {
+		flags |= DWMCI_CMD_RESP_EXP;
+		if (cmd->resp_type & MMC_RSP_136)
+			flags |= DWMCI_CMD_RESP_LENGTH;
+	}
+
+	if (cmd->resp_type & MMC_RSP_CRC)
+		flags |= DWMCI_CMD_CHECK_CRC;
+
+	flags |= (cmd->cmdidx | DWMCI_CMD_START | DWMCI_CMD_USE_HOLD_REG);
+
+	writel(flags, ARRIA10_SDMMC_ADDR + DWMCI_CMD);
+
+	for (timeout = 10000; timeout > 0; timeout--) {
+		mask = readl(ARRIA10_SDMMC_ADDR + DWMCI_RINTSTS);
+		if (mask & DWMCI_INTMSK_CDONE) {
+			if (!data)
+				writel(mask, ARRIA10_SDMMC_ADDR + DWMCI_RINTSTS);
+			break;
+		}
+	}
+
+	if (timeout <= 0)
+		return -ETIMEDOUT;
+
+	if (mask & DWMCI_INTMSK_RTO)
+		return -ETIMEDOUT;
+	else if (mask & DWMCI_INTMSK_RE)
+		return -EIO;
+
+	if (cmd->resp_type & MMC_RSP_PRESENT) {
+		if (cmd->resp_type & MMC_RSP_136) {
+			cmd->response[0] = readl(ARRIA10_SDMMC_ADDR + DWMCI_RESP3);
+			cmd->response[1] = readl(ARRIA10_SDMMC_ADDR + DWMCI_RESP2);
+			cmd->response[2] = readl(ARRIA10_SDMMC_ADDR + DWMCI_RESP1);
+			cmd->response[3] = readl(ARRIA10_SDMMC_ADDR + DWMCI_RESP0);
+		} else {
+			cmd->response[0] = readl(ARRIA10_SDMMC_ADDR + DWMCI_RESP0);
+		}
+	}
+
+	if (data) {
+		do {
+			mask = readl(ARRIA10_SDMMC_ADDR + DWMCI_RINTSTS);
+			if (mask & (DWMCI_DATA_ERR))
+				return -EIO;
+
+			if (mask & DWMCI_INTMSK_RXDR) {
+				dwmci_read_data_pio(data);
+				mask = readl(ARRIA10_SDMMC_ADDR + DWMCI_RINTSTS);
+			}
+		} while (!(mask & DWMCI_INTMSK_DTO));
+
+		writel(mask, ARRIA10_SDMMC_ADDR + DWMCI_RINTSTS);
+	}
+
+	return 0;
+}
+
+int arria10_read_blocks(void *dst, int blocknum, size_t len)
+{
+	struct mci_cmd cmd;
+	struct mci_data data;
+	int ret;
+	int blocks;
+
+	blocks = len / SECTOR_SIZE;
+
+	if (blocks > 1)
+		cmd.cmdidx = MMC_CMD_READ_MULTIPLE_BLOCK;
+	else
+		cmd.cmdidx = MMC_CMD_READ_SINGLE_BLOCK;
+
+	cmd.cmdarg = blocknum;
+	cmd.resp_type = MMC_RSP_R1;
+
+	data.dest = dst;
+	data.blocks = blocks;
+	data.blocksize = SECTOR_SIZE;
+	data.flags = MMC_DATA_READ;
+
+	ret = dwmci_cmd(&cmd, &data);
+
+	if (ret || blocks > 1) {
+		cmd.cmdidx = MMC_CMD_STOP_TRANSMISSION;
+		cmd.cmdarg = 0;
+		cmd.resp_type = MMC_RSP_R1b;
+
+		dwmci_cmd(&cmd, NULL);
+	}
+
+	return ret;
+}
+
+void arria10_init_mmc(void)
+{
+	writel(ARRIA10_SYSMGR_SDMMC_DRVSEL(3) |
+	       ARRIA10_SYSMGR_SDMMC_SMPLSEL(2),
+	       ARRIA10_SYSMGR_SDMMC);
+
+	/* enable power to card */
+	writel(0x1, ARRIA10_SDMMC_ADDR + DWMCI_PWREN);
+
+	writel(DWMCI_CTYPE_1BIT, ARRIA10_SDMMC_ADDR + DWMCI_CTYPE);
+}
diff --git a/arch/arm/mach-socfpga/arria10-xload.c b/arch/arm/mach-socfpga/arria10-xload.c
new file mode 100644
index 000000000000..f665ba474284
--- /dev/null
+++ b/arch/arm/mach-socfpga/arria10-xload.c
@@ -0,0 +1,457 @@
+#include <common.h>
+#include <asm/sections.h>
+#include <debug_ll.h>
+#include <disks.h>
+#include <init.h>
+#include <filetype.h>
+#include <io.h>
+#include <asm/unaligned.h>
+#include <mach/arria10-pinmux.h>
+#include <mach/arria10-regs.h>
+#include <mach/arria10-system-manager.h>
+#include <mach/arria10-fpga.h>
+#include <mach/arria10-xload.h>
+#include <mach/generic.h>
+#include <linux/sizes.h>
+
+int a10_update_bits(unsigned int reg, unsigned int mask,
+		    unsigned int val)
+{
+	unsigned int tmp, orig;
+	int ret = 0;
+
+	orig = readl(ARRIA10_FPGAMGRREGS_ADDR + reg);
+	tmp = orig & ~mask;
+	tmp |= val & mask;
+
+	if (tmp != orig)
+		ret = writel(tmp, ARRIA10_FPGAMGRREGS_ADDR + reg);
+
+	return ret;
+}
+
+static uint32_t socfpga_a10_fpga_read_stat(void)
+{
+	return readl(ARRIA10_FPGAMGRREGS_ADDR + A10_FPGAMGR_IMGCFG_STAT_OFST);
+}
+
+static int a10_fpga_wait_for_condone(void)
+{
+	u32 reg, i;
+
+	for (i = 0; i < 0x1000000 ; i++) {
+		reg = socfpga_a10_fpga_read_stat();
+
+		if (reg & A10_FPGAMGR_IMGCFG_STAT_F2S_CONDONE_PIN)
+			return 0;
+
+		if ((reg & A10_FPGAMGR_IMGCFG_STAT_F2S_NSTATUS_PIN) == 0)
+			return -EIO;
+	}
+
+	return -ETIMEDOUT;
+}
+
+static void a10_fpga_generate_dclks(uint32_t count)
+{
+	int32_t timeout;
+
+	/* Clear any existing DONE status. */
+	writel(A10_FPGAMGR_DCLKSTAT_DCLKDONE, ARRIA10_FPGAMGRREGS_ADDR +
+	       A10_FPGAMGR_DCLKSTAT_OFST);
+
+	/* Issue the DCLK regmap. */
+	writel(count, ARRIA10_FPGAMGRREGS_ADDR + A10_FPGAMGR_DCLKCNT_OFST);
+
+	/* wait till the dclkcnt done */
+	timeout = 10000000;
+
+	while (!readl(ARRIA10_FPGAMGRREGS_ADDR + A10_FPGAMGR_DCLKSTAT_OFST)) {
+		if (timeout-- < 0)
+			return;
+	}
+
+	/* Clear DONE status. */
+	writel(A10_FPGAMGR_DCLKSTAT_DCLKDONE, ARRIA10_FPGAMGRREGS_ADDR +
+	       A10_FPGAMGR_DCLKSTAT_OFST);
+}
+
+static unsigned int a10_fpga_get_cd_ratio(unsigned int cfg_width,
+					  bool encrypt, bool compress)
+{
+	unsigned int cd_ratio;
+
+	/*
+	 * cd ratio is dependent on cfg width and whether the bitstream
+	 * is encrypted and/or compressed.
+	 *
+	 * | width | encr. | compr. | cd ratio | value |
+	 * |  16   |   0   |   0    |     1    |   0   |
+	 * |  16   |   0   |   1    |     4    |   2   |
+	 * |  16   |   1   |   0    |     2    |   1   |
+	 * |  16   |   1   |   1    |     4    |   2   |
+	 * |  32   |   0   |   0    |     1    |   0   |
+	 * |  32   |   0   |   1    |     8    |   3   |
+	 * |  32   |   1   |   0    |     4    |   2   |
+	 * |  32   |   1   |   1    |     8    |   3   |
+	 */
+	if (!compress && !encrypt)
+		return CDRATIO_x1;
+
+	if (compress)
+		cd_ratio = CDRATIO_x4;
+	else
+		cd_ratio = CDRATIO_x2;
+
+	/* If 32 bit, double the cd ratio by incrementing the field  */
+	if (cfg_width == CFGWDTH_32)
+		cd_ratio += 1;
+
+	return cd_ratio;
+}
+
+static int a10_fpga_set_cdratio(unsigned int cfg_width,
+				const void *buf)
+{
+	unsigned int cd_ratio;
+	int encrypt, compress;
+	u32 *rbf_data = (u32 *)buf;
+
+	encrypt = (rbf_data[69] >> 2) & 3;
+	encrypt = encrypt != 0;
+
+	compress = (rbf_data[229] >> 1) & 1;
+	compress = !compress;
+
+	cd_ratio = a10_fpga_get_cd_ratio(cfg_width, encrypt, compress);
+
+	a10_update_bits(A10_FPGAMGR_IMGCFG_CTL_02_OFST,
+			A10_FPGAMGR_IMGCFG_CTL_02_CDRATIO_MASK,
+			cd_ratio << A10_FPGAMGR_IMGCFG_CTL_02_CDRATIO_SHIFT);
+
+	return 0;
+}
+
+static int a10_fpga_init(void *buf)
+{
+	uint32_t stat, mask;
+	uint32_t val;
+	uint32_t timeout;
+
+	val = CFGWDTH_32 << A10_FPGAMGR_IMGCFG_CTL_02_CFGWIDTH_SHIFT;
+	a10_update_bits(A10_FPGAMGR_IMGCFG_CTL_02_OFST,
+			A10_FPGAMGR_IMGCFG_CTL_02_CFGWIDTH, val);
+
+	a10_fpga_set_cdratio(CFGWDTH_32, buf);
+
+	mask = A10_FPGAMGR_IMGCFG_STAT_F2S_NCONFIG_PIN |
+		A10_FPGAMGR_IMGCFG_STAT_F2S_NSTATUS_PIN;
+	/* Make sure no external devices are interfering */
+	timeout = 10000;
+	while ((socfpga_a10_fpga_read_stat() & mask) != mask) {
+		if (timeout-- < 0)
+			return -ETIMEDOUT;
+	}
+
+	/* S2F_NCE = 1 */
+	a10_update_bits(A10_FPGAMGR_IMGCFG_CTL_01_OFST,
+			A10_FPGAMGR_IMGCFG_CTL_01_S2F_NCE,
+			A10_FPGAMGR_IMGCFG_CTL_01_S2F_NCE);
+	/* S2F_PR_REQUEST = 0 */
+	a10_update_bits(A10_FPGAMGR_IMGCFG_CTL_01_OFST,
+			A10_FPGAMGR_IMGCFG_CTL_01_S2F_PR_REQUEST, 0);
+	/* EN_CFG_CTRL = 0 */
+	a10_update_bits(A10_FPGAMGR_IMGCFG_CTL_02_OFST,
+			A10_FPGAMGR_IMGCFG_CTL_02_EN_CFG_CTRL, 0);
+	/* S2F_NCONFIG = 1 */
+	a10_update_bits(A10_FPGAMGR_IMGCFG_CTL_00_OFST,
+			A10_FPGAMGR_IMGCFG_CTL_00_S2F_NCONFIG,
+			A10_FPGAMGR_IMGCFG_CTL_00_S2F_NCONFIG);
+	/* S2F_NSTATUS_OE = 0 and S2f_CONDONE_OE = 0 */
+	a10_update_bits(A10_FPGAMGR_IMGCFG_CTL_00_OFST,
+			A10_FPGAMGR_IMGCFG_CTL_00_S2F_NSTATUS_OE |
+			A10_FPGAMGR_IMGCFG_CTL_00_S2F_CONDONE_OE,
+			   0);
+	/* Enable overrides: S2F_NENABLE_CONFIG = 0 */
+	a10_update_bits(A10_FPGAMGR_IMGCFG_CTL_01_OFST,
+			A10_FPGAMGR_IMGCFG_CTL_01_S2F_NENABLE_CONFIG, 0);
+	/* Enable overrides: S2F_NENABLE_NCONFIG = 0 */
+	a10_update_bits(A10_FPGAMGR_IMGCFG_CTL_00_OFST,
+			A10_FPGAMGR_IMGCFG_CTL_00_S2F_NENABLE_NCONFIG, 0);
+	/* Disable unused overrides: S2F_NENABLE_NSTATUS = 1 and S2F_NENABLE_CONDONE = 1 */
+	a10_update_bits(A10_FPGAMGR_IMGCFG_CTL_00_OFST,
+			A10_FPGAMGR_IMGCFG_CTL_00_S2F_NENABLE_NSTATUS |
+			A10_FPGAMGR_IMGCFG_CTL_00_S2F_NENABLE_CONDONE,
+			A10_FPGAMGR_IMGCFG_CTL_00_S2F_NENABLE_NSTATUS |
+			A10_FPGAMGR_IMGCFG_CTL_00_S2F_NENABLE_CONDONE);
+	/* Drive chip select S2F_NCE = 0 */
+	a10_update_bits(A10_FPGAMGR_IMGCFG_CTL_01_OFST,
+			A10_FPGAMGR_IMGCFG_CTL_01_S2F_NCE, 0);
+
+	mask = A10_FPGAMGR_IMGCFG_STAT_F2S_NCONFIG_PIN |
+	       A10_FPGAMGR_IMGCFG_STAT_F2S_NSTATUS_PIN;
+
+	timeout = 100000;
+	while ((socfpga_a10_fpga_read_stat() & mask) != mask) {
+		if (timeout-- < 0)
+			return -ETIMEDOUT;
+	}
+
+	/* reset the configuration */
+	a10_update_bits(A10_FPGAMGR_IMGCFG_CTL_00_OFST,
+			A10_FPGAMGR_IMGCFG_CTL_00_S2F_NCONFIG, 0);
+
+	timeout = 1000000;
+	while ((socfpga_a10_fpga_read_stat() &
+		       A10_FPGAMGR_IMGCFG_STAT_F2S_NSTATUS_PIN) != 0) {
+		if (timeout-- < 0)
+			return -ETIMEDOUT;
+	}
+
+	a10_update_bits(A10_FPGAMGR_IMGCFG_CTL_00_OFST,
+			A10_FPGAMGR_IMGCFG_CTL_00_S2F_NCONFIG,
+			A10_FPGAMGR_IMGCFG_CTL_00_S2F_NCONFIG);
+
+	mask = A10_FPGAMGR_IMGCFG_STAT_F2S_NSTATUS_PIN;
+	/* wait for nstatus == 1 */
+	timeout = 1000000;
+	while ((socfpga_a10_fpga_read_stat() & mask) != mask) {
+		if (timeout-- < 0) {
+			writel(socfpga_a10_fpga_read_stat(), 0xFFD06238);
+			return -ETIMEDOUT;
+		}
+	}
+
+	stat = socfpga_a10_fpga_read_stat();
+	if ((stat & A10_FPGAMGR_IMGCFG_STAT_F2S_CONDONE_PIN) != 0)
+		return -EINVAL;
+	if ((stat & A10_FPGAMGR_IMGCFG_STAT_F2S_CONDONE_OE) == 0)
+		return -EINVAL;
+
+	a10_update_bits(A10_FPGAMGR_IMGCFG_CTL_02_OFST,
+			A10_FPGAMGR_IMGCFG_CTL_02_EN_CFG_CTRL |
+			A10_FPGAMGR_IMGCFG_CTL_02_EN_CFG_DATA,
+			A10_FPGAMGR_IMGCFG_CTL_02_EN_CFG_DATA |
+			A10_FPGAMGR_IMGCFG_CTL_02_EN_CFG_CTRL);
+
+	/* Check fpga_usermode */
+	if ((socfpga_a10_fpga_read_stat() & 0x6) == 0x6)
+		return -EIO;
+
+	return 0;
+}
+
+static int a10_fpga_write(void *buf, size_t count)
+{
+	const uint32_t *buf32 = buf;
+	uint32_t reg;
+
+	/* Stop if FPGA is configured */
+	reg = socfpga_a10_fpga_read_stat();
+
+	if (reg & A10_FPGAMGR_IMGCFG_STAT_F2S_CONDONE_PIN)
+		return -ENOSPC;
+
+	/* Write out the complete 32-bit chunks */
+	while (count >= sizeof(uint32_t)) {
+		writel(*buf32, ARRIA10_FPGAMGRDATA_ADDR);
+		buf32++;
+		count -= sizeof(u32);
+	}
+
+	/* Write out remaining non 32-bit chunks */
+	if (count) {
+		const uint8_t *buf8 = (const uint8_t *)buf32;
+		uint32_t word = 0;
+
+		while (count--) {
+			word |= *buf8;
+			word <<= 8;
+			buf8++;
+		}
+
+		writel(word, ARRIA10_FPGAMGRDATA_ADDR);
+	}
+
+	return 0;
+}
+
+static int a10_fpga_write_complete(void)
+{
+	u32 reg;
+	int ret;
+
+	/* Wait for condone */
+	ret = a10_fpga_wait_for_condone();
+
+	/* Send some clocks to clear out any errors */
+	a10_fpga_generate_dclks(256);
+
+	/* Disable s2f dclk and data */
+	a10_update_bits(A10_FPGAMGR_IMGCFG_CTL_02_OFST,
+			A10_FPGAMGR_IMGCFG_CTL_02_EN_CFG_CTRL, 0);
+
+	/* Deassert chip select */
+	a10_update_bits(A10_FPGAMGR_IMGCFG_CTL_01_OFST,
+			A10_FPGAMGR_IMGCFG_CTL_01_S2F_NCE,
+			A10_FPGAMGR_IMGCFG_CTL_01_S2F_NCE);
+
+	/* Disable data, dclk, nce, and pr_request override to CSS */
+	a10_update_bits(A10_FPGAMGR_IMGCFG_CTL_01_OFST,
+			A10_FPGAMGR_IMGCFG_CTL_01_S2F_NENABLE_CONFIG,
+			A10_FPGAMGR_IMGCFG_CTL_01_S2F_NENABLE_CONFIG);
+
+	/* Return any errors regarding pr_done or pr_error */
+	if (ret)
+		return ret;
+
+	/* wait for fpga_usermode */
+	a10_wait_for_usermode(0x1000000);
+
+	/* Final check */
+	reg = socfpga_a10_fpga_read_stat();
+
+	if (((reg & A10_FPGAMGR_IMGCFG_STAT_F2S_USERMODE) == 0) ||
+	    ((reg & A10_FPGAMGR_IMGCFG_STAT_F2S_CONDONE_PIN) == 0) ||
+	    ((reg & A10_FPGAMGR_IMGCFG_STAT_F2S_NSTATUS_PIN) == 0))
+		return -ETIMEDOUT;
+
+	return 0;
+}
+
+static struct partition bitstream;
+static struct partition bootloader;
+
+int arria10_prepare_mmc(int barebox_part, int rbf_part)
+{
+	void *buf = (void *)0xffe00000 + SZ_256K - 128 - SECTOR_SIZE;
+	struct partition_entry *table;
+	uint32_t i;
+	int ret;
+
+	arria10_init_mmc();
+
+	/* read partition table */
+	ret = arria10_read_blocks(buf, 0x0, SECTOR_SIZE);
+	if (ret)
+		return ret;
+
+	table = (struct partition_entry *)&buf[446];
+
+	for (i = 0; i < 4; i++) {
+		bootloader.type = get_unaligned_le32(&table[i].type);
+		if (bootloader.type ==  0xa2) {
+			bootloader.first_sec = get_unaligned_le32(&table[i].partition_start);
+			break;
+		}
+	}
+
+	bitstream.first_sec = get_unaligned_le32(&table[rbf_part].partition_start);
+
+	return 0;
+}
+
+int arria10_load_fpga(int offset, int bitstream_size)
+{
+	void *buf = (void *)0xffe00000 + SZ_256K - 256 - SZ_16K;
+	int ret;
+	uint32_t count;
+	uint32_t size = bitstream_size / SECTOR_SIZE;
+
+	if (offset)
+		offset = offset / SECTOR_SIZE;
+
+	count = offset;
+
+	arria10_read_blocks(buf, count + bitstream.first_sec, SZ_16K);
+
+	count += SZ_16K / SECTOR_SIZE;
+
+	ret = a10_fpga_init(buf);
+	if (ret)
+		hang();
+
+	while (count <= size) {
+		ret = a10_fpga_write(buf, SZ_16K);
+		if (ret == -ENOSPC)
+			break;
+		count += SZ_16K / SECTOR_SIZE;
+		ret = arria10_read_blocks(buf, count, SZ_16K);
+	}
+
+	ret = a10_fpga_write_complete();
+	if (ret)
+		hang();
+
+	return 0;
+}
+
+static int image_size(void)
+{
+	uint32_t *image_end = (void *)__image_end;
+	uint32_t payload_len;
+	uint32_t pbl_len;
+	uint32_t arria10_header_len;
+	uint32_t sizep;
+	uint32_t arria10_crc;
+
+	/* arria10 header is 512 byte */
+	arria10_header_len = 512;
+	/* pbl is appended with 4 byte CRC for boot rom */
+	arria10_crc = 4;
+
+	/* The length of the PBL image */
+	pbl_len = __image_end - _text;
+
+	sizep = 4;
+
+	/* The length of the payload is appended directly behind the PBL */
+	payload_len = *(image_end);
+
+	return pbl_len + arria10_header_len + sizep + arria10_crc + payload_len;
+}
+
+void arria10_start_image(int offset)
+{
+	void *buf = (void *)0x0;
+	void *in_buf = (void *)SZ_1M;
+	uint32_t start;
+	int size = 0;
+	int ret;
+	void __noreturn (*bb)(void);
+	uint32_t pbl_len = __image_end - _text;
+	uint32_t *image_end = (void *)__image_end;
+	uint32_t arria10_header_len;
+	uint32_t sizep;
+	uint32_t arria10_crc;
+
+	size = image_size();
+
+	start = bootloader.first_sec + offset / SECTOR_SIZE;
+
+	ret = arria10_read_blocks(buf, start, ALIGN(size, SECTOR_SIZE));
+	if (ret) {
+		puts_ll("Loading image failed\n");
+		hang();
+	}
+
+	/* arria10 header is 512 byte */
+	arria10_header_len = 512;
+	sizep = 4;
+
+	/* copy PBL */
+	memcpy(in_buf, buf, pbl_len + sizep + arria10_header_len);
+
+	/* pbl is appended with 4 byte CRC for boot rom */
+	arria10_crc = 4;
+
+	/* copy payload, skip the Arria10 CRC */
+	memcpy(in_buf + pbl_len + sizep + arria10_header_len,
+	       buf + pbl_len + sizep + arria10_header_len + arria10_crc, *(image_end));
+
+	bb = in_buf;
+
+	bb();
+
+	hang();
+}
diff --git a/arch/arm/mach-socfpga/include/mach/arria10-fpga.h b/arch/arm/mach-socfpga/include/mach/arria10-fpga.h
new file mode 100644
index 000000000000..0d957dedcf78
--- /dev/null
+++ b/arch/arm/mach-socfpga/include/mach/arria10-fpga.h
@@ -0,0 +1,86 @@
+/*
+ * FPGA Manager Driver for Altera Arria10 SoCFPGA
+ *
+ * Copyright (C) 2015-2016 Altera Corporation
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms and conditions of the GNU General Public License,
+ * version 2, as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope it will be useful, but WITHOUT
+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
+ * more details.
+ *
+ * You should have received a copy of the GNU General Public License along with
+ * this program.  If not, see <http://www.gnu.org/licenses/>.
+ */
+
+#ifndef  __A10_FPGAMGR_H__
+#define	__A10_FPGAMGR_H__
+
+#include <linux/bitops.h>
+#include <mach/arria10-regs.h>
+
+#define A10_FPGAMGR_DCLKCNT_OFST				0x08
+#define A10_FPGAMGR_DCLKSTAT_OFST				0x0c
+#define A10_FPGAMGR_IMGCFG_CTL_00_OFST				0x70
+#define A10_FPGAMGR_IMGCFG_CTL_01_OFST				0x74
+#define A10_FPGAMGR_IMGCFG_CTL_02_OFST				0x78
+#define A10_FPGAMGR_IMGCFG_STAT_OFST				0x80
+
+#define A10_FPGAMGR_DCLKSTAT_DCLKDONE				BIT(0)
+
+#define A10_FPGAMGR_IMGCFG_CTL_00_S2F_NENABLE_NCONFIG		BIT(0)
+#define A10_FPGAMGR_IMGCFG_CTL_00_S2F_NENABLE_NSTATUS		BIT(1)
+#define A10_FPGAMGR_IMGCFG_CTL_00_S2F_NENABLE_CONDONE		BIT(2)
+#define A10_FPGAMGR_IMGCFG_CTL_00_S2F_NCONFIG			BIT(8)
+#define A10_FPGAMGR_IMGCFG_CTL_00_S2F_NSTATUS_OE		BIT(16)
+#define A10_FPGAMGR_IMGCFG_CTL_00_S2F_CONDONE_OE		BIT(24)
+
+#define A10_FPGAMGR_IMGCFG_CTL_01_S2F_NENABLE_CONFIG		BIT(0)
+#define A10_FPGAMGR_IMGCFG_CTL_01_S2F_PR_REQUEST		BIT(16)
+#define A10_FPGAMGR_IMGCFG_CTL_01_S2F_NCE			BIT(24)
+
+#define A10_FPGAMGR_IMGCFG_CTL_02_EN_CFG_CTRL			BIT(0)
+#define A10_FPGAMGR_IMGCFG_CTL_02_EN_CFG_DATA			BIT(8)
+#define A10_FPGAMGR_IMGCFG_CTL_02_CDRATIO_MASK			(BIT(16) | BIT(17))
+#define A10_FPGAMGR_IMGCFG_CTL_02_CDRATIO_SHIFT			16
+#define A10_FPGAMGR_IMGCFG_CTL_02_CFGWIDTH			BIT(24)
+#define A10_FPGAMGR_IMGCFG_CTL_02_CFGWIDTH_SHIFT		24
+
+#define A10_FPGAMGR_IMGCFG_STAT_F2S_CRC_ERROR			BIT(0)
+#define A10_FPGAMGR_IMGCFG_STAT_F2S_EARLY_USERMODE		BIT(1)
+#define A10_FPGAMGR_IMGCFG_STAT_F2S_USERMODE			BIT(2)
+#define A10_FPGAMGR_IMGCFG_STAT_F2S_NSTATUS_PIN			BIT(4)
+#define A10_FPGAMGR_IMGCFG_STAT_F2S_CONDONE_PIN			BIT(6)
+#define A10_FPGAMGR_IMGCFG_STAT_F2S_CONDONE_OE			BIT(7)
+#define A10_FPGAMGR_IMGCFG_STAT_F2S_PR_READY			BIT(9)
+#define A10_FPGAMGR_IMGCFG_STAT_F2S_PR_DONE			BIT(10)
+#define A10_FPGAMGR_IMGCFG_STAT_F2S_PR_ERROR			BIT(11)
+#define A10_FPGAMGR_IMGCFG_STAT_F2S_NCONFIG_PIN			BIT(12)
+#define A10_FPGAMGR_IMGCFG_STAT_F2S_MSEL_MASK			(BIT(16) | BIT(17) | BIT(18))
+#define A10_FPGAMGR_IMGCFG_STAT_F2S_MSEL_SHIFT		        16
+
+/* FPGA CD Ratio Value */
+#define CDRATIO_x1						0x0
+#define CDRATIO_x2						0x1
+#define CDRATIO_x4						0x2
+#define CDRATIO_x8						0x3
+
+/* Configuration width 16/32 bit */
+#define CFGWDTH_32						1
+#define CFGWDTH_16						0
+
+int inline a10_wait_for_usermode(int timeout) {
+	while ((readl(ARRIA10_FPGAMGRREGS_ADDR +
+		      A10_FPGAMGR_IMGCFG_STAT_OFST) &
+		(A10_FPGAMGR_IMGCFG_STAT_F2S_EARLY_USERMODE |
+		 A10_FPGAMGR_IMGCFG_STAT_F2S_USERMODE)) == 0)
+		if (timeout-- <= 0)
+			return -ETIMEDOUT;
+
+	return 0;
+}
+
+#endif
diff --git a/arch/arm/mach-socfpga/include/mach/arria10-system-manager.h b/arch/arm/mach-socfpga/include/mach/arria10-system-manager.h
index 20bd35270aed..9117a93b188e 100644
--- a/arch/arm/mach-socfpga/include/mach/arria10-system-manager.h
+++ b/arch/arm/mach-socfpga/include/mach/arria10-system-manager.h
@@ -52,6 +52,8 @@
 #define ARRIA10_SYSMGR_NOC_IDLESTATUS		(ARRIA10_SYSMGR_ADDR + 0xd4)
 #define ARRIA10_SYSMGR_FPGA2SOC_CTRL		(ARRIA10_SYSMGR_ADDR + 0xd8)
 
+#define ARRIA10_SYSMGR_ROM_INITSWLASTLD		(ARRIA10_SYSMGR_ADDR + 0x10)
+
 
 #define ARRIA10_SYSMGR_BOOTINFO_BSEL_MASK	0x00007000
 #define ARRIA10_SYSMGR_BOOTINFO_BSEL_SHIFT	12
diff --git a/arch/arm/mach-socfpga/include/mach/arria10-xload.h b/arch/arm/mach-socfpga/include/mach/arria10-xload.h
new file mode 100644
index 000000000000..71f839736230
--- /dev/null
+++ b/arch/arm/mach-socfpga/include/mach/arria10-xload.h
@@ -0,0 +1,13 @@
+#ifndef __MACH_ARRIA10_XLOAD_H
+#define __MACH_ARRIA10_XLOAD_H
+
+void arria10_init_mmc(void);
+int arria10_prepare_mmc(int barebox_part, int rbf_part);
+int arria10_read_blocks(void *dst, int blocknum, size_t len);
+
+struct partition {
+	uint64_t first_sec;
+	uint8_t type;
+};
+
+#endif /* __MACH_ARRIA10_XLOAD_H */
diff --git a/arch/arm/mach-socfpga/include/mach/debug_ll.h b/arch/arm/mach-socfpga/include/mach/debug_ll.h
index f41258c504ae..3264934e6d1a 100644
--- a/arch/arm/mach-socfpga/include/mach/debug_ll.h
+++ b/arch/arm/mach-socfpga/include/mach/debug_ll.h
@@ -40,8 +40,6 @@ static inline void INIT_LL(void)
 	unsigned int div = ns16550_calc_divisor(CONFIG_DEBUG_SOCFPGA_UART_CLOCK,
 						115200);
 
-	while ((readl(UART_BASE + LSR) & LSR_TEMT) == 0);
-
 	writel(0x00, UART_BASE + IER);
 
 	writel(LCR_BKSE, UART_BASE + LCR);
diff --git a/arch/arm/mach-socfpga/include/mach/generic.h b/arch/arm/mach-socfpga/include/mach/generic.h
index 5fcbc9ecf5ac..72391f35529f 100644
--- a/arch/arm/mach-socfpga/include/mach/generic.h
+++ b/arch/arm/mach-socfpga/include/mach/generic.h
@@ -46,7 +46,43 @@ static inline void socfpga_cyclone5_qspi_init(void)
 }
 #endif
 #if defined(CONFIG_ARCH_SOCFPGA_ARRIA10)
+void socfpga_arria10_mmc_init(void);
+void socfpga_arria10_timer_init(void);
+int arria10_prepare_mmc(int barebox, int bitstream);
+void arria10_start_image(int offset);
+int arria10_load_fpga(int offset, int size);
+int arria10_device_init(struct arria10_mainpll_cfg *mainpll,
+			struct arria10_perpll_cfg *perpll,
+			uint32_t *pinmux);
 enum bootsource arria10_get_bootsource(void);
+#else
+static inline void socfpga_arria10_mmc_init(void)
+{
+	return;
+}
+
+static inline void socfpga_arria10_timer_init(void)
+{
+	return;
+}
+static void arria10_prepare_mmc(int barebox, int bitstream)
+{
+	return;
+}
+static void arria10_start_image(int offset)
+{
+	return;
+}
+static int arria10_load_fpga(int offset, int size)
+{
+	return;
+}
+static int arria10_device_init(struct arria10_mainpll_cfg *mainpll,
+			struct arria10_perpll_cfg *perpll,
+			uint32_t *pinmux)
+{
+	return 0;
+}
 #endif
 
 static inline void __udelay(unsigned us)
diff --git a/images/Makefile.socfpga b/images/Makefile.socfpga
index 60b98d1ef2ef..bba01a38b29f 100644
--- a/images/Makefile.socfpga
+++ b/images/Makefile.socfpga
@@ -13,6 +13,17 @@ quiet_cmd_socfpga_image = SOCFPGA-IMG $@
 $(obj)/%.socfpgaimg: $(obj)/% FORCE
 	$(call if_changed,socfpga_image)
 
+ocram-tmp = $(subst $(comma),_,$(dot-target).ocram.tmp)
+
+quiet_cmd_socfpga_ocram_img ?= SOCFPGA-OCRAM-IMG    $@
+      cmd_socfpga_ocram_img ?= cat $(obj)/$(patsubst %.socfpga-ocram-img,%.pblb,$(2)) > $(ocram-tmp); \
+		  $(call size_append, $(obj)/barebox.z) >> $(ocram-tmp); \
+		  $(objtree)/scripts/socfpga_mkimage -v1 -b -s -o $@ $(ocram-tmp); \
+		  cat $(obj)/barebox.z >> $@
+
+$(obj)/%.socfpga-ocram-img: $(obj)/%.pblb $(obj)/barebox.z FORCE
+	$(call if_changed,socfpga_ocram_img,$(@F))
+
 # ----------------------- Cyclone5 based boards ---------------------------
 pblx-$(CONFIG_MACH_SOCFPGA_ALTERA_SOCDK) += start_socfpga_socdk_xload
 FILE_barebox-socfpga-socdk-xload.img = start_socfpga_socdk_xload.pblx.socfpgaimg
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
