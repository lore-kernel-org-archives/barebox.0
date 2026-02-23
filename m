Delivery-date: Mon, 23 Feb 2026 09:36:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuRQT-004lbt-1v
	for lore@lore.pengutronix.de;
	Mon, 23 Feb 2026 09:36:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuRQT-0004Ko-AK
	for lore@pengutronix.de; Mon, 23 Feb 2026 09:36:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=27Ctz23cA+pPwpLPMuvv0V9UfbypcCJGP8TGZRNO4Ws=; b=Kf4Clps6PG/0uLb7i7d9xVe/aQ
	3qVEbN1mW6oV4+9ppXlf/MHsUNPfVNH0xTwOS7+M1dKeec+67lwyXxcrmZ5RKMsN2s0zr0Dye/JE5
	3RlHiEE6lU9ieZ2PuCbHxsbkyRv1UNf2+f3bZZdzVHbbASM2efa5pRJAOcCLipSHpGZCNeJlLRh9p
	rOdnEJ6pEoutaSa1wuaKZZ+G04fLEtc5euy3CJZH/zrwz2XNC1/4K1Xf00ZMJwGd9Bg+Fn+feRWnv
	n12TN5h2PtVdfWwX3dt+bWwW204JJXF5qxFhmwkytNt/3x8e/PabbYKmI5U2ghCN61IYgJWLDtlTA
	ero7jgnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuRPj-0000000HQoc-1pky;
	Mon, 23 Feb 2026 08:35:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuRPg-0000000HQnp-0ZcH
	for barebox@lists.infradead.org;
	Mon, 23 Feb 2026 08:35:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuRPe-0004F9-N4; Mon, 23 Feb 2026 09:35:30 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuRPd-002CMQ-0Y;
	Mon, 23 Feb 2026 09:35:30 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuRPe-00000000lpx-1iWd;
	Mon, 23 Feb 2026 09:35:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 23 Feb 2026 09:35:29 +0100
Message-ID: <20260223083529.183876-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_003532_494903_686A0325 
X-CRM114-Status: GOOD (  26.34  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] mci: dw_mmc: Add pbl support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

PBL support for the dw_mmc driver is already present for the SoCFPGA
Arria10. Move it over from architecture code to drivers/mci/ to make
it re-usable for other SoCs. While at it switch over to pbl_bio support
as it's the new hot stuff for block device access in PBL and will allow
for example future FAT support.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-socfpga/Kconfig              |   1 +
 arch/arm/mach-socfpga/arria10-xload-emmc.c | 204 +-------------------
 drivers/mci/Kconfig                        |   3 +
 drivers/mci/Makefile                       |   1 +
 drivers/mci/dw_mmc-pbl.c                   | 206 +++++++++++++++++++++
 include/pbl/mci.h                          |   2 +
 6 files changed, 222 insertions(+), 195 deletions(-)
 create mode 100644 drivers/mci/dw_mmc-pbl.c

diff --git a/arch/arm/mach-socfpga/Kconfig b/arch/arm/mach-socfpga/Kconfig
index 6f50ff36e3..9818e7d9be 100644
--- a/arch/arm/mach-socfpga/Kconfig
+++ b/arch/arm/mach-socfpga/Kconfig
@@ -27,6 +27,7 @@ config ARCH_SOCFPGA_ARRIA10
 	select RESET_CONTROLLER
 	select OFDEVICE
 	select OFTREE
+	select MCI_DW_PBL
 
 comment "Cyclone5 boards"
 
diff --git a/arch/arm/mach-socfpga/arria10-xload-emmc.c b/arch/arm/mach-socfpga/arria10-xload-emmc.c
index 61774c6174..bd7cf00019 100644
--- a/arch/arm/mach-socfpga/arria10-xload-emmc.c
+++ b/arch/arm/mach-socfpga/arria10-xload-emmc.c
@@ -7,218 +7,32 @@
 #include <mach/socfpga/arria10-regs.h>
 #include <mach/socfpga/arria10-system-manager.h>
 #include <mach/socfpga/arria10-xload.h>
+#include <disks.h>
 #include <mci.h>
-#include "../../../drivers/mci/sdhci.h"
+#include <pbl/mci.h>
+#include <pbl/bio.h>
 #include "../../../drivers/mci/dw_mmc.h"
 
-#define SECTOR_SIZE 512
-
-static int dwmci_wait_reset(uint32_t value)
-{
-	uint32_t ctrl;
-	int32_t timeout;
-
-	timeout = 10000;
-
-	writel(value, ARRIA10_SDMMC_ADDR + DWMCI_CTRL);
-
-	while (timeout-- > 0) {
-		ctrl = readl(ARRIA10_SDMMC_ADDR + DWMCI_CTRL);
-		if (!(ctrl & DWMCI_RESET_ALL))
-			return 0;
-	}
-
-	return -EIO;
-}
-
-static int dwmci_prepare_data(struct mci_data *data)
-{
-	unsigned long ctrl;
-
-	dwmci_wait_reset(DWMCI_CTRL_FIFO_RESET);
-
-	writel(DWMCI_INTMSK_TXDR | DWMCI_INTMSK_RXDR,
-	       ARRIA10_SDMMC_ADDR + DWMCI_RINTSTS);
-
-	ctrl = readl(ARRIA10_SDMMC_ADDR + DWMCI_INTMASK);
-	ctrl |= DWMCI_INTMSK_TXDR | DWMCI_INTMSK_RXDR;
-	writel(ctrl, ARRIA10_SDMMC_ADDR + DWMCI_INTMASK);
-
-	ctrl = readl(ARRIA10_SDMMC_ADDR + DWMCI_CTRL);
-	ctrl &= ~(DWMCI_IDMAC_EN | DWMCI_DMA_EN);
-	writel(ctrl, ARRIA10_SDMMC_ADDR + DWMCI_CTRL);
-
-	writel(0x1, ARRIA10_SDMMC_ADDR + DWMCI_FIFOTH);
-	writel(0xffffffff, ARRIA10_SDMMC_ADDR + DWMCI_TMOUT);
-	writel(0x0, ARRIA10_SDMMC_ADDR + DWMCI_IDINTEN);
-
-	return 0;
-}
-
-static int dwmci_read_data_pio(struct mci_data *data)
-{
-	u32 *pdata = (u32 *)data->dest;
-	u32 val, status, timeout;
-	u32 rcnt, rlen = 0;
-
-	for (rcnt = (data->blocksize * data->blocks)>>2; rcnt; rcnt--) {
-		timeout = 20000;
-		status = readl(ARRIA10_SDMMC_ADDR + DWMCI_STATUS);
-		while (--timeout > 0
-		       && (status & DWMCI_STATUS_FIFO_EMPTY)) {
-			__udelay(200);
-			status = readl(ARRIA10_SDMMC_ADDR + DWMCI_STATUS);
-		}
-		if (!timeout)
-			break;
-
-		val = readl(ARRIA10_SDMMC_ADDR + DWMCI_DATA);
-		*pdata++ = val;
-		rlen += 4;
-	}
-	writel(DWMCI_INTMSK_RXDR, ARRIA10_SDMMC_ADDR + DWMCI_RINTSTS);
-
-	return rlen;
-}
-
-static int dwmci_cmd(struct mci_cmd *cmd, struct mci_data *data)
-{
-	int flags = 0;
-	uint32_t mask;
-	int timeout;
-
-	timeout = 100000;
-	while (readl(ARRIA10_SDMMC_ADDR + DWMCI_STATUS) & DWMCI_STATUS_BUSY) {
-		if (timeout-- <= 0)
-			return -ETIMEDOUT;
-
-	}
-
-	writel(DWMCI_INTMSK_ALL, ARRIA10_SDMMC_ADDR + DWMCI_RINTSTS);
-
-	if (data) {
-		writel(data->blocksize, ARRIA10_SDMMC_ADDR + DWMCI_BLKSIZ);
-		writel(data->blocksize * data->blocks, ARRIA10_SDMMC_ADDR +
-		       DWMCI_BYTCNT);
-
-		dwmci_prepare_data(data);
-	}
-
-	writel(cmd->cmdarg, ARRIA10_SDMMC_ADDR + DWMCI_CMDARG);
-
-	if (data)
-		flags = DWMCI_CMD_DATA_EXP;
-
-	if ((cmd->resp_type & MMC_RSP_136) && (cmd->resp_type & MMC_RSP_BUSY))
-		return -EINVAL;
-
-	if (cmd->cmdidx == MMC_CMD_STOP_TRANSMISSION)
-		flags |= DWMCI_CMD_ABORT_STOP;
-	else
-		flags |= DWMCI_CMD_PRV_DAT_WAIT;
-
-	if (cmd->resp_type & MMC_RSP_PRESENT) {
-		flags |= DWMCI_CMD_RESP_EXP;
-		if (cmd->resp_type & MMC_RSP_136)
-			flags |= DWMCI_CMD_RESP_LENGTH;
-	}
-
-	if (cmd->resp_type & MMC_RSP_CRC)
-		flags |= DWMCI_CMD_CHECK_CRC;
-
-	flags |= (cmd->cmdidx | DWMCI_CMD_START | DWMCI_CMD_USE_HOLD_REG);
-
-	writel(flags, ARRIA10_SDMMC_ADDR + DWMCI_CMD);
-
-	for (timeout = 10000; timeout > 0; timeout--) {
-		mask = readl(ARRIA10_SDMMC_ADDR + DWMCI_RINTSTS);
-		if (mask & DWMCI_INTMSK_CDONE) {
-			if (!data)
-				writel(mask, ARRIA10_SDMMC_ADDR + DWMCI_RINTSTS);
-			break;
-		}
-	}
-
-	if (timeout <= 0)
-		return -ETIMEDOUT;
-
-	if (mask & DWMCI_INTMSK_RTO)
-		return -ETIMEDOUT;
-	else if (mask & DWMCI_INTMSK_RE)
-		return -EIO;
-
-	if (cmd->resp_type & MMC_RSP_PRESENT) {
-		if (cmd->resp_type & MMC_RSP_136) {
-			cmd->response[0] = readl(ARRIA10_SDMMC_ADDR + DWMCI_RESP3);
-			cmd->response[1] = readl(ARRIA10_SDMMC_ADDR + DWMCI_RESP2);
-			cmd->response[2] = readl(ARRIA10_SDMMC_ADDR + DWMCI_RESP1);
-			cmd->response[3] = readl(ARRIA10_SDMMC_ADDR + DWMCI_RESP0);
-		} else {
-			cmd->response[0] = readl(ARRIA10_SDMMC_ADDR + DWMCI_RESP0);
-		}
-	}
-
-	if (data) {
-		do {
-			mask = readl(ARRIA10_SDMMC_ADDR + DWMCI_RINTSTS);
-			if (mask & (DWMCI_DATA_ERR))
-				return -EIO;
-
-			if (mask & DWMCI_INTMSK_RXDR) {
-				dwmci_read_data_pio(data);
-				mask = readl(ARRIA10_SDMMC_ADDR + DWMCI_RINTSTS);
-			}
-		} while (!(mask & DWMCI_INTMSK_DTO));
-
-		writel(mask, ARRIA10_SDMMC_ADDR + DWMCI_RINTSTS);
-	}
-
-	return 0;
-}
+static struct pbl_bio bio;
 
 int arria10_read_blocks(void *dst, int blocknum, size_t len)
 {
-	struct mci_cmd cmd = {};
-	struct mci_data data;
-	int ret;
 	int blocks;
 
 	blocks = len / SECTOR_SIZE;
 
-	if (blocks > 1)
-		cmd.cmdidx = MMC_CMD_READ_MULTIPLE_BLOCK;
-	else
-		cmd.cmdidx = MMC_CMD_READ_SINGLE_BLOCK;
-
-	cmd.cmdarg = blocknum;
-	cmd.resp_type = MMC_RSP_R1;
-
-	data.dest = dst;
-	data.blocks = blocks;
-	data.blocksize = SECTOR_SIZE;
-	data.flags = MMC_DATA_READ;
-
-	ret = dwmci_cmd(&cmd, &data);
-
-	if (ret || blocks > 1) {
-		cmd.cmdidx = MMC_CMD_STOP_TRANSMISSION;
-		cmd.cmdarg = 0;
-		cmd.resp_type = MMC_RSP_R1b;
-
-		dwmci_cmd(&cmd, NULL);
-	}
-
-	return ret;
+	return pbl_bio_read(&bio, blocknum, dst, blocks);
 }
 
 void arria10_init_mmc(void)
 {
+	void __iomem *base = IOMEM(ARRIA10_SDMMC_ADDR);
+
 	writel(ARRIA10_SYSMGR_SDMMC_DRVSEL(3) |
 	       ARRIA10_SYSMGR_SDMMC_SMPLSEL(2),
 	       ARRIA10_SYSMGR_SDMMC);
 
-	/* enable power to card */
-	writel(0x1, ARRIA10_SDMMC_ADDR + DWMCI_PWREN);
+	writel(DWMCI_CTYPE_1BIT, base + DWMCI_CTYPE);
 
-	writel(DWMCI_CTYPE_1BIT, ARRIA10_SDMMC_ADDR + DWMCI_CTYPE);
+	dw_mmc_pbl_bio_init(&bio, base);
 }
diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
index 6736e7421c..b61f8003bd 100644
--- a/drivers/mci/Kconfig
+++ b/drivers/mci/Kconfig
@@ -112,6 +112,9 @@ config MCI_DW_PIO
 	help
 	  Use PIO mode (instead of IDMAC) in DW MMC driver.
 
+config MCI_DW_PBL
+	bool
+
 config MCI_SUNXI_SMHC
 	bool "Allwinner SD-MMC Memory Card Host Controller"
 	help
diff --git a/drivers/mci/Makefile b/drivers/mci/Makefile
index f76059e7b5..dcbf8a84f8 100644
--- a/drivers/mci/Makefile
+++ b/drivers/mci/Makefile
@@ -22,6 +22,7 @@ obj-$(CONFIG_MCI_ROCKCHIP_DWCMSHC)	+= rockchip-dwcmshc-sdhci.o
 obj-$(CONFIG_MCI_TEGRA)		+= tegra-sdmmc.o
 obj-$(CONFIG_MCI_SPI)		+= mci_spi.o
 obj-$(CONFIG_MCI_DW)		+= dw_mmc.o
+pbl-$(CONFIG_MCI_DW_PBL)	+= dw_mmc-pbl.o
 obj-$(CONFIG_MCI_DWC_MSHC)	+= dwcmshc-sdhci.o
 obj-$(CONFIG_MCI_MMCI)		+= mmci.o
 obj-$(CONFIG_MCI_STM32_SDMMC2)	+= stm32_sdmmc2.o
diff --git a/drivers/mci/dw_mmc-pbl.c b/drivers/mci/dw_mmc-pbl.c
new file mode 100644
index 0000000000..5d44b617b8
--- /dev/null
+++ b/drivers/mci/dw_mmc-pbl.c
@@ -0,0 +1,206 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <linux/sizes.h>
+#include <io.h>
+#include <mci.h>
+#include <pbl/bio.h>
+#include <pbl/mci.h>
+
+#include "dw_mmc.h"
+
+#define SECTOR_SIZE 512
+
+struct dw_mmc {
+	void __iomem *base;
+};
+
+static inline void __udelay(unsigned us)
+{
+	volatile unsigned int i;
+
+	for (i = 0; i < us * 3; i++);
+}
+
+static int dwmci_wait_reset(struct dw_mmc *dw_mmc, uint32_t value)
+{
+	void __iomem *base = dw_mmc->base;
+	uint32_t ctrl;
+	int32_t timeout;
+
+	timeout = 10000;
+
+	writel(value, base + DWMCI_CTRL);
+
+	while (timeout-- > 0) {
+		ctrl = readl(base + DWMCI_CTRL);
+		if (!(ctrl & DWMCI_RESET_ALL))
+			return 0;
+	}
+
+	return -EIO;
+}
+
+static int dwmci_prepare_data(struct dw_mmc *dw_mmc, struct mci_data *data)
+{
+	void __iomem *base = dw_mmc->base;
+	unsigned long ctrl;
+
+	dwmci_wait_reset(dw_mmc, DWMCI_CTRL_FIFO_RESET);
+
+	writel(DWMCI_INTMSK_TXDR | DWMCI_INTMSK_RXDR,
+	       base + DWMCI_RINTSTS);
+
+	ctrl = readl(base + DWMCI_INTMASK);
+	ctrl |= DWMCI_INTMSK_TXDR | DWMCI_INTMSK_RXDR;
+	writel(ctrl, base + DWMCI_INTMASK);
+
+	ctrl = readl(base + DWMCI_CTRL);
+	ctrl &= ~(DWMCI_IDMAC_EN | DWMCI_DMA_EN);
+	writel(ctrl, base + DWMCI_CTRL);
+
+	writel(0x1, base + DWMCI_FIFOTH);
+	writel(0xffffffff, base + DWMCI_TMOUT);
+	writel(0x0, base + DWMCI_IDINTEN);
+
+	return 0;
+}
+
+static int dwmci_read_data_pio(struct dw_mmc *dw_mmc, struct mci_data *data)
+{
+	void __iomem *base = dw_mmc->base;
+	u32 *pdata = (u32 *)data->dest;
+	u32 val, status, timeout;
+	u32 rcnt, rlen = 0;
+
+	for (rcnt = (data->blocksize * data->blocks)>>2; rcnt; rcnt--) {
+		timeout = 20000;
+		status = readl(base + DWMCI_STATUS);
+		while (--timeout > 0
+		       && (status & DWMCI_STATUS_FIFO_EMPTY)) {
+			__udelay(200);
+			status = readl(base + DWMCI_STATUS);
+		}
+		if (!timeout)
+			break;
+
+		val = readl(base + DWMCI_DATA);
+		*pdata++ = val;
+		rlen += 4;
+	}
+	writel(DWMCI_INTMSK_RXDR, base + DWMCI_RINTSTS);
+
+	return rlen;
+}
+
+static int pbl_dw_mmc_send_cmd(struct pbl_mci *mci,
+			       struct mci_cmd *cmd, struct mci_data *data)
+{
+	struct dw_mmc *dw_mmc = mci->priv;
+	void __iomem *base = dw_mmc->base;
+	int flags = 0;
+	uint32_t mask;
+	int timeout;
+
+	timeout = 100000;
+	while (readl(base + DWMCI_STATUS) & DWMCI_STATUS_BUSY) {
+		if (timeout-- <= 0)
+			return -ETIMEDOUT;
+	}
+
+	writel(DWMCI_INTMSK_ALL, base + DWMCI_RINTSTS);
+
+	if (data) {
+		writel(data->blocksize, base + DWMCI_BLKSIZ);
+		writel(data->blocksize * data->blocks, base +
+		       DWMCI_BYTCNT);
+
+		dwmci_prepare_data(dw_mmc, data);
+	}
+
+	writel(cmd->cmdarg, base + DWMCI_CMDARG);
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
+	writel(flags, base + DWMCI_CMD);
+
+	for (timeout = 10000; timeout > 0; timeout--) {
+		mask = readl(base + DWMCI_RINTSTS);
+		if (mask & DWMCI_INTMSK_CDONE) {
+			if (!data)
+				writel(mask, base + DWMCI_RINTSTS);
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
+			cmd->response[0] = readl(base + DWMCI_RESP3);
+			cmd->response[1] = readl(base + DWMCI_RESP2);
+			cmd->response[2] = readl(base + DWMCI_RESP1);
+			cmd->response[3] = readl(base + DWMCI_RESP0);
+		} else {
+			cmd->response[0] = readl(base + DWMCI_RESP0);
+		}
+	}
+
+	if (data) {
+		do {
+			mask = readl(base + DWMCI_RINTSTS);
+			if (mask & (DWMCI_DATA_ERR))
+				return -EIO;
+
+			if (mask & DWMCI_INTMSK_RXDR) {
+				dwmci_read_data_pio(dw_mmc, data);
+				mask = readl(base + DWMCI_RINTSTS);
+			}
+		} while (!(mask & DWMCI_INTMSK_DTO));
+
+		writel(mask, base + DWMCI_RINTSTS);
+	}
+
+	return 0;
+}
+
+static struct pbl_mci mci;
+static struct dw_mmc dw_mmc;
+
+int dw_mmc_pbl_bio_init(struct pbl_bio *bio, void __iomem *dw_mmc_base)
+{
+	dw_mmc.base = dw_mmc_base;
+
+	/* enable power to card */
+	writel(0x1, dw_mmc_base + DWMCI_PWREN);
+
+	mci.priv = &dw_mmc;
+	mci.send_cmd = pbl_dw_mmc_send_cmd;
+
+	return pbl_mci_bio_init(&mci, bio);
+}
diff --git a/include/pbl/mci.h b/include/pbl/mci.h
index dd4fcac541..c9ef567a93 100644
--- a/include/pbl/mci.h
+++ b/include/pbl/mci.h
@@ -34,4 +34,6 @@ static inline int pbl_mci_send_cmd(struct pbl_mci *mci,
 
 int pbl_mci_bio_init(struct pbl_mci *mci, struct pbl_bio *bio);
 
+int dw_mmc_pbl_bio_init(struct pbl_bio *bio, void __iomem *dw_mmc_base);
+
 #endif /* __PBL_MCI_H__ */
-- 
2.47.3



