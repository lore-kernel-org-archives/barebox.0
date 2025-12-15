Delivery-date: Mon, 15 Dec 2025 15:22:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV9Sr-00Blww-2n
	for lore@lore.pengutronix.de;
	Mon, 15 Dec 2025 15:22:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV9So-0002jA-P5
	for lore@pengutronix.de; Mon, 15 Dec 2025 15:22:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yKwAN4c/0N7bVBrKPgl24lv24ukQqcolcl2AzIxAwps=; b=e6m+Yi/gdme4DmMWq5n7v9mndK
	KADU8VZ8Z96Mp0wjTHnV1gqd/g6nRTPOy+zlJCKSQbWfgg9VczfNRNr3mIZgiCTNSdu5FHSH5e1ZM
	wPjWfAUYQqfal8KifRmkPHG04//yuxenjzdT626e3nKNU2W7JlMzmdIGQW16kckX0tb2ffkzlWBGU
	IsJ1q/m5acJM/WkUm3SZt7yqUWoHhgDueozr0dnryZo+9ebqy2t5SGTTAfQP+xJj7fPIzyhqVODLN
	P5zvpz2JQkuzDVo7aUrFhiw6rTbf+cUBfhWqd5xz3aF7RdG7gV8DttVzd5bB3nIHbH/EhHhaSBD4Y
	Z9y4CtFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV9SA-00000003mlh-1GBi;
	Mon, 15 Dec 2025 14:21:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV9S4-00000003mhe-2hBP
	for barebox@lists.infradead.org;
	Mon, 15 Dec 2025 14:21:31 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1vV9S3-0002Gv-3B; Mon, 15 Dec 2025 15:21:27 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 15 Dec 2025 15:21:27 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251215-v2025-11-0-topic-socfpga-agilex5-sdhci-v1-5-11eea1b2ef41@pengutronix.de>
References: <20251215-v2025-11-0-topic-socfpga-agilex5-sdhci-v1-0-11eea1b2ef41@pengutronix.de>
In-Reply-To: <20251215-v2025-11-0-topic-socfpga-agilex5-sdhci-v1-0-11eea1b2ef41@pengutronix.de>
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_062129_193112_0A2E1F21 
X-CRM114-Status: GOOD (  23.14  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 5/5] mci: cadence: add support for version 6
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

There is a v4 and a v6 of the Cadence SDHCI. The Agilex actually has the
v6 version on the SoC.

Port the driver from Alteras Linux tree [1]

[1]: https://github.com/altera-fpga/linux-socfpga.git socfpga-6.12.33-lts

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/mci/Makefile         |   2 +-
 drivers/mci/cadence-sdhci.c  | 714 ++++++++++++++++++++-----------------------
 drivers/mci/cadence-sdhci.h  | 118 +++++++
 drivers/mci/cadence-sdhci6.c | 373 ++++++++++++++++++++++
 4 files changed, 818 insertions(+), 389 deletions(-)

diff --git a/drivers/mci/Makefile b/drivers/mci/Makefile
index 6a3af532a0..f82e31320e 100644
--- a/drivers/mci/Makefile
+++ b/drivers/mci/Makefile
@@ -8,7 +8,7 @@ obj-$(CONFIG_MCI_ATMEL)		+= atmel_mci.o atmel_mci_common.o
 obj-$(CONFIG_MCI_ATMEL_SDHCI)	+= atmel-sdhci.o atmel-sdhci-common.o
 obj-$(CONFIG_MCI_BCM283X)	+= mci-bcm2835.o
 obj-$(CONFIG_MCI_BCM283X_SDHOST)	+= bcm2835-sdhost.o
-obj-$(CONFIG_MCI_CADENCE_SDHCI) += cadence-sdhci.o
+obj-$(CONFIG_MCI_CADENCE_SDHCI) += cadence-sdhci.o cadence-sdhci6.o
 obj-$(CONFIG_MCI_DOVE)		+= dove-sdhci.o
 pbl-$(CONFIG_MCI_ATMEL_PBL)	+= atmel_mci_pbl.o atmel_mci_common.o
 pbl-$(CONFIG_MCI_ATMEL_SDHCI_PBL)	+= atmel-sdhci-pbl.o atmel-sdhci-common.o
diff --git a/drivers/mci/cadence-sdhci.c b/drivers/mci/cadence-sdhci.c
index d59ee04665..b8e795ea78 100644
--- a/drivers/mci/cadence-sdhci.c
+++ b/drivers/mci/cadence-sdhci.c
@@ -15,11 +15,10 @@
 #include <linux/iopoll.h>
 #include <linux/reset.h>
 
+#include "cadence-sdhci.h"
 #include "sdhci.h"
 
 /* HRS - Host Register Set (specific to Cadence) */
-#define SDHCI_CDNS_HRS04		0x10		/* PHY access port */
-#define SDHCI_CDNS_HRS05        0x14        /* PHY data access port */
 #define   SDHCI_CDNS_HRS04_ACK			BIT(26)
 #define   SDHCI_CDNS_HRS04_RD			BIT(25)
 #define   SDHCI_CDNS_HRS04_WR			BIT(24)
@@ -27,7 +26,7 @@
 #define   SDHCI_CDNS_HRS04_WDATA		GENMASK(15, 8)
 #define   SDHCI_CDNS_HRS04_ADDR			GENMASK(5, 0)
 
-#define SDHCI_CDNS_HRS06		0x18		/* eMMC control */
+#define SDHCI_CDNS_HRS06			0x18		/* eMMC control */
 #define   SDHCI_CDNS_HRS06_TUNE_UP		BIT(15)
 #define   SDHCI_CDNS_HRS06_TUNE			GENMASK(13, 8)
 #define   SDHCI_CDNS_HRS06_MODE			GENMASK(2, 0)
@@ -38,129 +37,29 @@
 #define   SDHCI_CDNS_HRS06_MODE_MMC_HS400	0x5
 #define   SDHCI_CDNS_HRS06_MODE_MMC_HS400ES	0x6
 
-/* PHY specific register */
-/* HRS register to set after SDMMC reset */
-#define SDHCI_CDNS_HRS00	0x0
-#define SDHCI_CDNS_HRS07	0x1C        /* IO_DELAY_INFO_REG */
-#define SDHCI_CDNS_HRS07_RW_COMPENSATE  GENMASK(20, 16) /* RW_COMPENSATE */
-#define SDHCI_CDNS_HRS07_IDELAY_VAL     GENMASK(4, 0)   /* IDELAY_VAL */
-/* TODO: check DV dfi_init val=9 */
-#define SDHCI_CDNS_HRS07_RW_COMPENSATE_DATA 0x9
-/* TODO: check DV dfi_init val=8 ; DDR Mode */
-#define SDHCI_CDNS_HRS07_RW_COMPENSATE_DATA_DDR 0x8
-#define SDHCI_CDNS_HRS07_IDELAY_VAL_DATA    0x0
-
-#define SDHCI_CDNS_HRS09	0x024
-#define SDHCI_CDNS_HRS09_PHY_SW_RESET       BIT(0)  /* PHY_SW_RESET */
-#define SDHCI_CDNS_HRS09_PHY_INIT_COMPLETE  BIT(1)  /* PHY_INIT_COMPLETE */
-#define SDHCI_CDNS_HRS09_RDDATA_EN  BIT(16) /* RDDATA_EN */
-#define SDHCI_CDNS_HRS09_RDCMD_EN   BIT(15) /* RDCMD_EN */
-#define SDHCI_CDNS_HRS09_EXTENDED_WR_MODE   BIT(3)  /* EXTENDED_WR_MODE */
-#define SDHCI_CDNS_HRS09_EXTENDED_RD_MODE   BIT(2)  /* EXTENDED_RD_MODE */
-
-#define SDHCI_CDNS_HRS10        0x28        /* PHY reset port */
-#define SDHCI_CDNS_HRS10_HCSDCLKADJ     GENMASK(19, 16) /* HCSDCLKADJ */
-#define SDHCI_CDNS_HRS10_HCSDCLKADJ_DATA    0x0         /* HCSDCLKADJ DATA */
-/* HCSDCLKADJ DATA; DDR Mode */
-#define SDHCI_CDNS_HRS10_HCSDCLKADJ_DATA_DDR    0x2
-#define SDHCI_CDNS_HRS16        0x40        /* CMD_DATA_OUTPUT */
-
 /* SRS - Slot Register Set (SDHCI-compatible) */
-#define SDHCI_CDNS_SRS_BASE	0x200
-#define SDHCI_CDNS_SRS09	0x224
-#define SDHCI_CDNS_SRS10	0x228
-#define SDHCI_CDNS_SRS11	0x22c
-#define SDHCI_CDNS_SRS12	0x230
-#define SDHCI_CDNS_SRS13	0x234
-#define SDHCI_CDNS_SRS09_CI	BIT(16)
-#define SDHCI_CDNS_SRS13_DATA	0xffffffff
-#define SD_HOST_CLK 200000000
+#define SDHCI_CDNS_SRS_BASE			0x200
 
 /* PHY */
-#define SDHCI_CDNS_PHY_DLY_SD_HS	0x00
-#define SDHCI_CDNS_PHY_DLY_SD_DEFAULT	0x01
-#define SDHCI_CDNS_PHY_DLY_UHS_SDR12	0x02
-#define SDHCI_CDNS_PHY_DLY_UHS_SDR25	0x03
-#define SDHCI_CDNS_PHY_DLY_UHS_SDR50	0x04
-#define SDHCI_CDNS_PHY_DLY_UHS_DDR50	0x05
-#define SDHCI_CDNS_PHY_DLY_EMMC_LEGACY	0x06
-#define SDHCI_CDNS_PHY_DLY_EMMC_SDR	0x07
-#define SDHCI_CDNS_PHY_DLY_EMMC_DDR	0x08
-#define SDHCI_CDNS_PHY_DLY_SDCLK	0x0b
-#define SDHCI_CDNS_PHY_DLY_HSMMC	0x0c
-#define SDHCI_CDNS_PHY_DLY_STROBE	0x0d
-/* PHY register values */
-#define PHY_DQ_TIMING_REG			0x2000
-#define PHY_DQS_TIMING_REG			0x2004
-#define PHY_GATE_LPBK_CTRL_REG			0x2008
-#define PHY_DLL_MASTER_CTRL_REG			0x200C
-#define PHY_DLL_SLAVE_CTRL_REG			0x2010
-#define PHY_CTRL_REG				0x2080
-#define USE_EXT_LPBK_DQS			BIT(22)
-#define USE_LPBK_DQS				BIT(21)
-#define USE_PHONY_DQS				BIT(20)
-#define USE_PHONY_DQS_CMD			BIT(19)
-#define SYNC_METHOD				BIT(31)
-#define SW_HALF_CYCLE_SHIFT			BIT(28)
-#define RD_DEL_SEL				GENMASK(24, 19)
-#define RD_DEL_SEL_DATA				0x34
-#define GATE_CFG_ALWAYS_ON			BIT(6)
-#define UNDERRUN_SUPPRESS			BIT(18)
-#define PARAM_DLL_BYPASS_MODE			BIT(23)
-#define PARAM_PHASE_DETECT_SEL			GENMASK(22, 20)
-#define PARAM_DLL_START_POINT			GENMASK(7, 0)
-#define PARAM_PHASE_DETECT_SEL_DATA		0x2
-#define PARAM_DLL_START_POINT_DATA		0x4
-#define PARAM_DLL_START_POINT_DATA_SDR50	254
-
-#define READ_DQS_CMD_DELAY		GENMASK(31, 24)
-#define CLK_WRDQS_DELAY			GENMASK(23, 16)
-#define CLK_WR_DELAY			GENMASK(15, 8)
-#define READ_DQS_DELAY			GENMASK(7, 0)
-#define READ_DQS_CMD_DELAY_DATA		0x0
-#define CLK_WRDQS_DELAY_DATA		0x0
-#define CLK_WR_DELAY_DATA		0x0
-#define READ_DQS_DELAY_DATA		0x0
-
-#define PHONY_DQS_TIMING		GENMASK(9, 4)
-#define PHONY_DQS_TIMING_DATA		0x0
-
-#define IO_MASK_ALWAYS_ON		BIT(31)
-#define IO_MASK_END			GENMASK(29, 27)
-#define IO_MASK_START			GENMASK(26, 24)
-#define DATA_SELECT_OE_END		GENMASK(2, 0)
-#define IO_MASK_END_DATA		0x5
-/* DDR Mode */
-#define IO_MASK_END_DATA_DDR		0x2
-#define IO_MASK_START_DATA		0x0
-#define DATA_SELECT_OE_END_DATA 	0x1
-
-/*
- * The tuned val register is 6 bit-wide, but not the whole of the range is
- * available.  The range 0-42 seems to be available (then 43 wraps around to 0)
- * but I am not quite sure if it is official.  Use only 0 to 39 for safety.
- */
-#define SDHCI_CDNS_MAX_TUNING_LOOP	40
-
-struct sdhci_cdns_phy_param {
-	u32 addr;
-	u32 data;
-	u32 offset;
-};
-
-struct sdhci_cdns_priv {
-	struct mci_host mci;
-	struct sdhci sdhci;
-	void __iomem *hrs_addr;
-	bool enhanced_strobe;
-	unsigned int nr_phy_params;
-	struct sdhci_cdns_phy_param phy_params[];
-};
+#define SDHCI_CDNS_PHY_DLY_SD_HS		0x00
+#define SDHCI_CDNS_PHY_DLY_SD_DEFAULT		0x01
+#define SDHCI_CDNS_PHY_DLY_UHS_SDR12		0x02
+#define SDHCI_CDNS_PHY_DLY_UHS_SDR25		0x03
+#define SDHCI_CDNS_PHY_DLY_UHS_SDR50		0x04
+#define SDHCI_CDNS_PHY_DLY_UHS_DDR50		0x05
+#define SDHCI_CDNS_PHY_DLY_EMMC_LEGACY		0x06
+#define SDHCI_CDNS_PHY_DLY_EMMC_SDR		0x07
+#define SDHCI_CDNS_PHY_DLY_EMMC_DDR		0x08
+#define SDHCI_CDNS_PHY_DLY_SDCLK		0x0b
+#define SDHCI_CDNS_PHY_DLY_HSMMC		0x0c
+#define SDHCI_CDNS_PHY_DLY_STROBE		0x0d
+
+#define MAIN_CLOCK_INDEX			0
+#define SD_MASTER_CLOCK_INDEX			1
 
 struct sdhci_cdns_phy_cfg {
 	const char *property;
-	u32 addr;
-	u32 offset;
+	u8 addr;
 };
 
 static const struct sdhci_cdns_phy_cfg sdhci_cdns_phy_cfgs[] = {
@@ -175,42 +74,6 @@ static const struct sdhci_cdns_phy_cfg sdhci_cdns_phy_cfgs[] = {
 	{ "cdns,phy-dll-delay-sdclk", SDHCI_CDNS_PHY_DLY_SDCLK, },
 	{ "cdns,phy-dll-delay-sdclk-hsmmc", SDHCI_CDNS_PHY_DLY_HSMMC, },
 	{ "cdns,phy-dll-delay-strobe", SDHCI_CDNS_PHY_DLY_STROBE, },
-	{ "cdns,phy-use-ext-lpbk-dqs", PHY_DQS_TIMING_REG, 22,},
-	{ "cdns,phy-use-lpbk-dqs", PHY_DQS_TIMING_REG, 21,},
-	{ "cdns,phy-use-phony-dqs", PHY_DQS_TIMING_REG, 20,},
-	{ "cdns,phy-use-phony-dqs-cmd", PHY_DQS_TIMING_REG, 19,},
-	{ "cdns,phy-io-mask-always-on", PHY_DQ_TIMING_REG, 31,},
-	{ "cdns,phy-io-mask-end", PHY_DQ_TIMING_REG, 27,},
-	{ "cdns,phy-io-mask-start", PHY_DQ_TIMING_REG, 24,},
-	{ "cdns,phy-data-select-oe-end", PHY_DQ_TIMING_REG, 0,},
-	{ "cdns,phy-sync-method", PHY_GATE_LPBK_CTRL_REG, 31,},
-	{ "cdns,phy-sw-half-cycle-shift", PHY_GATE_LPBK_CTRL_REG, 28,},
-	{ "cdns,phy-rd-del-sel", PHY_GATE_LPBK_CTRL_REG, 19,},
-	{ "cdns,phy-underrun-suppress", PHY_GATE_LPBK_CTRL_REG, 18,},
-	{ "cdns,phy-gate-cfg-always-on", PHY_GATE_LPBK_CTRL_REG, 6,},
-	{ "cdns,phy-param-dll-bypass-mode", PHY_DLL_MASTER_CTRL_REG, 23,},
-	{ "cdns,phy-param-phase-detect-sel", PHY_DLL_MASTER_CTRL_REG, 20,},
-	{ "cdns,phy-param-dll-start-point", PHY_DLL_MASTER_CTRL_REG, 0,},
-	{ "cdns,phy-read-dqs-cmd-delay", PHY_DLL_SLAVE_CTRL_REG, 24,},
-	{ "cdns,phy-clk-wrdqs-delay", PHY_DLL_SLAVE_CTRL_REG, 16,},
-	{ "cdns,phy-clk-wr-delay", PHY_DLL_SLAVE_CTRL_REG, 8,},
-	{ "cdns,phy-read-dqs-delay", PHY_DLL_SLAVE_CTRL_REG, 0,},
-	{ "cdns,phy-phony-dqs-timing", PHY_CTRL_REG, 4,},
-	{ "cdns,hrs09-rddata-en", SDHCI_CDNS_HRS09, 16,},
-	{ "cdns,hrs09-rdcmd-en", SDHCI_CDNS_HRS09, 15,},
-	{ "cdns,hrs09-extended-wr-mode", SDHCI_CDNS_HRS09, 3,},
-	{ "cdns,hrs09-extended-rd-mode", SDHCI_CDNS_HRS09, 2,},
-	{ "cdns,hrs10-hcsdclkadj", SDHCI_CDNS_HRS10, 16,},
-	{ "cdns,hrs16-wrdata1-sdclk-dly", SDHCI_CDNS_HRS16, 28,},
-	{ "cdns,hrs16-wrdata0-sdclk-dly", SDHCI_CDNS_HRS16, 24,},
-	{ "cdns,hrs16-wrcmd1-sdclk-dly", SDHCI_CDNS_HRS16, 20,},
-	{ "cdns,hrs16-wrcmd0-sdclk-dly", SDHCI_CDNS_HRS16, 16,},
-	{ "cdns,hrs16-wrdata1-dly", SDHCI_CDNS_HRS16, 12,},
-	{ "cdns,hrs16-wrdata0-dly", SDHCI_CDNS_HRS16, 8,},
-	{ "cdns,hrs16-wrcmd1-dly", SDHCI_CDNS_HRS16, 4,},
-	{ "cdns,hrs16-wrcmd0-dly", SDHCI_CDNS_HRS16, 0,},
-	{ "cdns,hrs07-rw-compensate", SDHCI_CDNS_HRS07, 16,},
-	{ "cdns,hrs07-idelay-val", SDHCI_CDNS_HRS07, 0,},
 };
 
 static int sdhci_cdns_write_phy_reg(struct sdhci_cdns_priv *priv,
@@ -243,247 +106,157 @@ static int sdhci_cdns_write_phy_reg(struct sdhci_cdns_priv *priv,
 	return ret;
 }
 
-static int sdhci_cdns_write_phy_reg_mask(struct sdhci_cdns_priv *priv,
-			u32 addr, u32 data, u32 mask)
+static unsigned int sdhci_cdns_phy_param_count(struct device_node *np)
 {
-	u32 tmp;
-
-	tmp = addr;
-
-	/* get PHY address */
-	writel(tmp, priv->hrs_addr + SDHCI_CDNS_HRS04);
-
-	/* read current PHY register value, before write */
-	tmp = readl(priv->hrs_addr + SDHCI_CDNS_HRS05);
-
-	tmp &= ~mask;
-	tmp |= data;
-
-	/* write operation */
-	writel(tmp, priv->hrs_addr + SDHCI_CDNS_HRS05);
-
-	/* re-read PHY address */
-	writel(addr, priv->hrs_addr + SDHCI_CDNS_HRS04);
+	unsigned int count = 0;
+	int i;
 
-	/* re-read current PHY register value, check */
-	tmp = readl(priv->hrs_addr + SDHCI_CDNS_HRS05);
+	for (i = 0; i < ARRAY_SIZE(sdhci_cdns_phy_cfgs); i++)
+		if (of_property_read_bool(np, sdhci_cdns_phy_cfgs[i].property))
+			count++;
 
-	return 0;
+	return count;
 }
 
-static u32 sdhci_cdns_read_phy_reg(struct sdhci_cdns_priv *priv,
-			u32 addr)
+static void sdhci_cdns_phy_param_parse(struct device_node *np,
+				       struct sdhci_cdns_priv *priv)
 {
-	u32 tmp;
-
-	tmp = addr;
-
-	/* get PHY address */
-	writel(tmp, priv->hrs_addr + SDHCI_CDNS_HRS04);
+	struct sdhci_cdns4_phy_param *p = priv->phy_params;
+	u32 val;
+	int ret, i;
 
-	/* read current PHY register value, before write */
-	tmp = readl(priv->hrs_addr + SDHCI_CDNS_HRS05);
+	for (i = 0; i < ARRAY_SIZE(sdhci_cdns_phy_cfgs); i++) {
+		ret = of_property_read_u32(np, sdhci_cdns_phy_cfgs[i].property,
+					   &val);
+		if (ret)
+			continue;
 
-	return tmp;
+		p->addr = sdhci_cdns_phy_cfgs[i].addr;
+		p->data = val;
+		p++;
+	}
 }
 
-static int sdhci_cdns_dfi_phy_val(struct sdhci_cdns_priv *priv, u32 reg)
+static int sdhci_cdns_phy_init(struct sdhci_cdns_priv *priv)
 {
-	int i;
-	u32 tmp;
-
-	tmp = 0;
+	int ret, i;
 
 	for (i = 0; i < priv->nr_phy_params; i++) {
-		if (priv->phy_params[i].addr == reg)
-			tmp |= priv->phy_params[i].data << priv->phy_params[i].offset;
+		ret = sdhci_cdns_write_phy_reg(priv, priv->phy_params[i].addr,
+					       priv->phy_params[i].data);
+		if (ret)
+			return ret;
 	}
 
-	return tmp;
+	return 0;
 }
 
-static int sdhci_cdns_combophy_init_sd_dfi_init(struct sdhci_cdns_priv *priv)
+static void sdhci_cdns_set_emmc_mode(struct sdhci_cdns_priv *priv, u32 mode)
 {
-	int ret = 0;
-	u32 mask = 0x0;
-	u32 tmp = 0;
-
-	writel(0x0, priv->hrs_addr + SDHCI_CDNS_SRS11);
-	writel(1<<0, priv->hrs_addr + SDHCI_CDNS_HRS00);
-	while ((readl(priv->hrs_addr + SDHCI_CDNS_HRS00) & 1<<0) == 1)
-
-	tmp = readl(priv->hrs_addr + SDHCI_CDNS_HRS09) & ~1;
-	writel(tmp, priv->hrs_addr + SDHCI_CDNS_HRS09);
-
-	tmp = (1 << 22) | (1 << 21) | (1 << 20) | (1 << 19);
-	ret = sdhci_cdns_write_phy_reg_mask(priv, PHY_DQS_TIMING_REG, tmp, tmp);
-
-	tmp = (1 << 31) | (0 << 28) | (52 << 19) | (1 << 18) | (1 << 6);
-	mask = SYNC_METHOD | SW_HALF_CYCLE_SHIFT | RD_DEL_SEL | UNDERRUN_SUPPRESS |
-			GATE_CFG_ALWAYS_ON;
-	ret = sdhci_cdns_write_phy_reg_mask(priv, PHY_GATE_LPBK_CTRL_REG, tmp,
-			mask);
+	u32 tmp;
 
-	tmp = (1 << 23) | (2 << 20) | (4 << 0);
-	mask = PARAM_DLL_BYPASS_MODE | PARAM_PHASE_DETECT_SEL |
-			PARAM_DLL_START_POINT;
-	ret = sdhci_cdns_write_phy_reg_mask(priv, PHY_DLL_MASTER_CTRL_REG, tmp,
-			mask);
+	/* The speed mode for eMMC is selected by HRS06 register */
+	tmp = readl(priv->hrs_addr + SDHCI_CDNS_HRS06);
+	tmp &= ~SDHCI_CDNS_HRS06_MODE;
+	tmp |= FIELD_PREP(SDHCI_CDNS_HRS06_MODE, mode);
+	writel(tmp, priv->hrs_addr + SDHCI_CDNS_HRS06);
+}
 
-	tmp = (0 << 24) | (0 << 16) | (0 << 8) | (0 << 0);
-	mask = READ_DQS_CMD_DELAY | CLK_WRDQS_DELAY | CLK_WR_DELAY | READ_DQS_DELAY;
-	ret = sdhci_cdns_write_phy_reg_mask(priv, PHY_DLL_SLAVE_CTRL_REG, tmp,
-			mask);
+static int sdhci_cdns_init(struct mci_host *host, struct device *dev)
+{
+	struct sdhci_cdns_priv *priv = sdhci_cdns_priv(host);
+	int ret;
 
-	writel(0x2080, priv->hrs_addr + SDHCI_CDNS_HRS04);
-	tmp &= ~(0x3f << 4);
-	mask = PHONY_DQS_TIMING;
-	ret = sdhci_cdns_write_phy_reg_mask(priv, PHY_CTRL_REG, tmp, mask);
+	ret = sdhci_reset(&priv->sdhci, SDHCI_RESET_ALL);
+	if (ret)
+		return ret;
 
-	tmp = readl(priv->hrs_addr + SDHCI_CDNS_HRS09) | 1;
-	writel(tmp, priv->hrs_addr + SDHCI_CDNS_HRS09);
+	sdhci_write8(&priv->sdhci, SDHCI_POWER_CONTROL,
+		     SDHCI_BUS_VOLTAGE_330 | SDHCI_BUS_POWER_EN);
+	udelay(400);
 
-	while (~readl(priv->hrs_addr + SDHCI_CDNS_HRS09) & (1 << 1))
+	sdhci_write32(&priv->sdhci, SDHCI_INT_ENABLE, SDHCI_INT_CMD_COMPLETE |
+			SDHCI_INT_XFER_COMPLETE | SDHCI_INT_CARD_INT |
+			SDHCI_INT_TIMEOUT | SDHCI_INT_CRC | SDHCI_INT_END_BIT |
+			SDHCI_INT_INDEX | SDHCI_INT_DATA_TIMEOUT |
+			SDHCI_INT_DATA_CRC | SDHCI_INT_DATA_END_BIT | SDHCI_INT_DMA);
+	sdhci_write32(&priv->sdhci, SDHCI_SIGNAL_ENABLE, 0);
 
-	tmp = sdhci_cdns_read_phy_reg(priv, PHY_DQ_TIMING_REG) & 0x07FFFF8;
-	tmp |= (0 << 31) | (0 << 27) | (0 << 24) | (1 << 0);
-	mask = IO_MASK_ALWAYS_ON | IO_MASK_END | IO_MASK_START | DATA_SELECT_OE_END;
+	sdhci_enable_v4_mode(&priv->sdhci);
 
-	ret = sdhci_cdns_write_phy_reg_mask(priv, PHY_DQ_TIMING_REG, tmp, mask);
+	return 0;
+}
 
-	tmp = readl(priv->hrs_addr + SDHCI_CDNS_HRS09) & 0xFFFE7FF3;
+static void sdhci_cdns_set_ios(struct mci_host *host, struct mci_ios *ios)
+{
+	struct sdhci_cdns_priv *priv = sdhci_cdns_priv(host);
+	u16 val;
 
-	tmp |= (1 << 16) | (1 << 15) | (1 << 3) | (1 << 2);
-	writel(tmp, priv->hrs_addr + SDHCI_CDNS_HRS09);
+	debug("%s: clock = %u, f_max = %u, bus-width = %d, timing = %02x\n", __func__,
+	      ios->clock, host->f_max, ios->bus_width, ios->timing);
 
-	tmp = readl(priv->hrs_addr + SDHCI_CDNS_HRS10) & 0xFFF0FFFF;
+	if (ios->clock)
+		sdhci_set_clock(&priv->sdhci, ios->clock, priv->sdhci.max_clk);
 
-	tmp |= (0 << 16);
-	writel(tmp, priv->hrs_addr + SDHCI_CDNS_HRS10);
+	sdhci_set_bus_width(&priv->sdhci, ios->bus_width);
 
-	tmp = (0 << 28) | (0 << 24) | (0 << 20) | (0 << 16) | (0 << 12) | (1 << 8) |
-			(0 << 4) | (1 << 0);
-	writel(tmp, priv->hrs_addr + SDHCI_CDNS_HRS16);
+	val = sdhci_read8(&priv->sdhci, SDHCI_HOST_CONTROL);
 
-	tmp = (9 << 16) | (0 << 0);
-	writel(tmp, priv->hrs_addr + SDHCI_CDNS_HRS07);
+	if (ios->clock > 26000000)
+		val |= SDHCI_CTRL_HISPD;
+	else
+		val &= ~SDHCI_CTRL_HISPD;
 
-	return ret;
+	sdhci_write8(&priv->sdhci, SDHCI_HOST_CONTROL, val);
 }
 
-static int sdhci_cdns_combophy_init_sd_gen(struct sdhci_cdns_priv *priv)
+static int sdhci_cdns_send_cmd(struct mci_host *host, struct mci_cmd *cmd,
+			       struct mci_data *data)
 {
-	u32 tmp;
-	int ret = 0;
-	u32 mask = 0x0;
-
-	/* step 1, switch on DLL_RESET */
-	tmp = readl(priv->hrs_addr + SDHCI_CDNS_HRS09) & ~1;
-	writel(tmp, priv->hrs_addr + SDHCI_CDNS_HRS09);
-
-	/* step 2, program PHY_DQS_TIMING_REG */
-	tmp = sdhci_cdns_dfi_phy_val(priv, PHY_DQS_TIMING_REG);
-	ret = sdhci_cdns_write_phy_reg_mask(priv, PHY_DQS_TIMING_REG, tmp, tmp);
-
-	/* step 3, program PHY_GATE_LPBK_CTRL_REG */
-	tmp = sdhci_cdns_dfi_phy_val(priv, PHY_GATE_LPBK_CTRL_REG);
-	mask = SYNC_METHOD | SW_HALF_CYCLE_SHIFT | RD_DEL_SEL | UNDERRUN_SUPPRESS |
-	GATE_CFG_ALWAYS_ON;
-	ret = sdhci_cdns_write_phy_reg_mask(priv, PHY_GATE_LPBK_CTRL_REG, tmp,
-	mask);
-
-	/* step 4, program PHY_DLL_MASTER_CTRL_REG */
-	tmp = sdhci_cdns_dfi_phy_val(priv, PHY_DLL_MASTER_CTRL_REG);
-	mask = PARAM_DLL_BYPASS_MODE | PARAM_PHASE_DETECT_SEL |
-	PARAM_DLL_START_POINT;
-	ret = sdhci_cdns_write_phy_reg_mask(priv, PHY_DLL_MASTER_CTRL_REG, tmp,
-	mask);
-
-	/* step 5, program PHY_DLL_SLAVE_CTRL_REG */
-	tmp = sdhci_cdns_dfi_phy_val(priv, PHY_DLL_SLAVE_CTRL_REG);
-	mask = READ_DQS_CMD_DELAY | CLK_WRDQS_DELAY | CLK_WR_DELAY | READ_DQS_DELAY;
-	ret = sdhci_cdns_write_phy_reg_mask(priv, PHY_DLL_SLAVE_CTRL_REG, tmp,
-	mask);
-
-	/* step 7, switch off DLL_RESET */
-	tmp = readl(priv->hrs_addr + SDHCI_CDNS_HRS09) | 1;
-	writel(tmp, priv->hrs_addr + SDHCI_CDNS_HRS09);
-
-	/* step 8, polling PHY_INIT_COMPLETE */
-	while (~readl(priv->hrs_addr + SDHCI_CDNS_HRS09) & (1 << 1))
-	/* polling for PHY_INIT_COMPLETE bit */
-
-	/* step 9, program PHY_DQ_TIMING_REG */
-	tmp = sdhci_cdns_read_phy_reg(priv, PHY_DQ_TIMING_REG) & 0x07FFFF8;
-	tmp |= sdhci_cdns_dfi_phy_val(priv, PHY_DQ_TIMING_REG);
-	mask = IO_MASK_ALWAYS_ON | IO_MASK_END | IO_MASK_START | DATA_SELECT_OE_END;
-	ret = sdhci_cdns_write_phy_reg_mask(priv, PHY_DQ_TIMING_REG, tmp, mask);
-
-	/* step 10, program HRS09, register 42 */
-	tmp = readl(priv->hrs_addr + SDHCI_CDNS_HRS09) & 0xFFFE7FF3;
-
-	tmp |= sdhci_cdns_dfi_phy_val(priv, SDHCI_CDNS_HRS09);
-	writel(tmp, priv->hrs_addr + SDHCI_CDNS_HRS09);
-
-	/* step 11, program HRS10, register 43 */
-	tmp = readl(priv->hrs_addr + SDHCI_CDNS_HRS10) & 0xFFF0FFFF;
-	tmp |= sdhci_cdns_dfi_phy_val(priv, SDHCI_CDNS_HRS10);
-	writel(tmp, priv->hrs_addr + SDHCI_CDNS_HRS10);
-
-	/* step 12, program HRS16, register 48 */
-	tmp = sdhci_cdns_dfi_phy_val(priv, SDHCI_CDNS_HRS16);
-	writel(tmp, priv->hrs_addr + SDHCI_CDNS_HRS16);
-
-	/* step 13, program HRS07, register 40 */
-	tmp = sdhci_cdns_dfi_phy_val(priv, SDHCI_CDNS_HRS07);
-	writel(tmp, priv->hrs_addr + SDHCI_CDNS_HRS07);
-	/* end of combophy init */
-
-	return ret;
-}
+	struct sdhci_cdns_priv *priv = sdhci_cdns_priv(host);
+	int timeout = 10; /* Approx. 10 ms */
 
+	cmd->data = data;
 
-static unsigned int sdhci_cdns_phy_param_count(struct device_node *np)
-{
-	unsigned int count = 0;
-	int i;
-
-	for (i = 0; i < ARRAY_SIZE(sdhci_cdns_phy_cfgs); i++)
-		if (of_property_read_bool(np, sdhci_cdns_phy_cfgs[i].property))
-			count++;
+	while (!sdhci_send_command(&priv->sdhci, cmd)) {
+		if (!timeout--) {
+			sdhci_dumpregs(&priv->sdhci);
+			return -EIO;
+		}
 
-	return count;
+		mdelay(1);
+	}
+	return 0;
 }
 
-static void sdhci_cdns_phy_param_parse(struct device_node *np,
-				       struct sdhci_cdns_priv *priv)
+static int sdhci_cdns_set_tune_val(struct mci_host *host, unsigned int val)
 {
-	struct sdhci_cdns_phy_param *p = priv->phy_params;
-	u32 val;
-	int ret, i;
+	struct sdhci_cdns_priv *priv = sdhci_cdns_priv(host);
+	void __iomem *reg = priv->hrs_addr + SDHCI_CDNS_HRS06;
+	u32 tmp;
+	int i, ret;
 
-	for (i = 0; i < ARRAY_SIZE(sdhci_cdns_phy_cfgs); i++) {
-		ret = of_property_read_u32(np, sdhci_cdns_phy_cfgs[i].property,
-					   &val);
-		if (ret)
-			continue;
+	if (priv->sdhci.version >= SDHCI_SPEC_420)
+		return sdhci_cdns6_set_tune_val(host, val);
 
-		p->addr = sdhci_cdns_phy_cfgs[i].addr;
-		p->data = val;
-		p->offset = sdhci_cdns_phy_cfgs[i].offset;
-		p++;
-	}
-}
+	if (WARN_ON(!FIELD_FIT(SDHCI_CDNS_HRS06_TUNE, val)))
+		return -EINVAL;
 
-static int sdhci_cdns_phy_init(struct sdhci_cdns_priv *priv)
-{
-	int ret, i;
+	tmp = readl(reg);
+	tmp &= ~SDHCI_CDNS_HRS06_TUNE;
+	tmp |= FIELD_PREP(SDHCI_CDNS_HRS06_TUNE, val);
 
-	for (i = 0; i < priv->nr_phy_params; i++) {
-		if (priv->phy_params[i].offset)
-			break;
-		ret = sdhci_cdns_write_phy_reg(priv, priv->phy_params[i].addr,
-					       priv->phy_params[i].data);
+	/*
+	 * Workaround for IP errata:
+	 * The IP6116 SD/eMMC PHY design has a timing issue on receive data
+	 * path. Send tune request twice.
+	 */
+	for (i = 0; i < 2; i++) {
+		tmp |= SDHCI_CDNS_HRS06_TUNE_UP;
+		writel(tmp, reg);
+
+		ret = readl_poll_timeout(reg, tmp,
+					 !(tmp & SDHCI_CDNS_HRS06_TUNE_UP), 0);
 		if (ret)
 			return ret;
 	}
@@ -491,105 +264,270 @@ static int sdhci_cdns_phy_init(struct sdhci_cdns_priv *priv)
 	return 0;
 }
 
-static void sdhci_cdns_set_clock(struct mci_host *host, unsigned int clock)
+/*
+ * In SD mode, software must not use the hardware tuning and instead perform
+ * an almost identical procedure to eMMC.
+ */
+static int sdhci_cdns_execute_tuning(struct mci_host *host, u32 opcode)
 {
-	struct sdhci_cdns_priv *priv = host->hw_dev->priv;
+	int cur_streak = 0;
+	int max_streak = 0;
+	int end_of_streak = 0;
+	int i;
 	int ret;
 
-	ret = sdhci_cdns_combophy_init_sd_gen(priv);
+	/*
+	 * Do not execute tuning for UHS_SDR50 or UHS_DDR50.
+	 * The delay is set by probe, based on the DT properties.
+	 */
+	if (host->ios.timing != MMC_TIMING_MMC_HS200 &&
+	    host->ios.timing != MMC_TIMING_UHS_SDR104) {
+		dev_dbg(host->hw_dev, "Tuning skipped (timing: %d)\n",
+			host->ios.timing);
+		return 0;
+	}
+
+	for (i = 0; i < SDHCI_CDNS_MAX_TUNING_LOOP; i++) {
+		if (sdhci_cdns_set_tune_val(host, i) ||
+		    mmc_send_tuning(host->mci, opcode)) { /* bad */
+			cur_streak = 0;
+		} else { /* good */
+			cur_streak++;
+			if (cur_streak > max_streak) {
+				max_streak = cur_streak;
+				end_of_streak = i;
+			}
+		}
+	}
+
+	if (!max_streak) {
+		dev_err(host->hw_dev, "no tuning point found\n");
+		return -EIO;
+	}
 
-	sdhci_set_clock(&priv->sdhci, clock, host->f_max);
+	ret = sdhci_cdns_set_tune_val(host, end_of_streak - max_streak / 2);
+	if (ret)
+		return ret;
+
+	return 0;
 }
 
-static void sdhci_cdns_set_ios(struct mci_host *host, struct mci_ios *ios)
+static void sdhci_cdns_set_uhs_signaling(struct mci_host *host,
+					 unsigned int timing)
 {
-	struct sdhci_cdns_priv *priv = host->hw_dev->priv;
+	struct sdhci_cdns_priv *priv = sdhci_cdns_priv(host);
+	u32 mode;
+
+	switch (timing) {
+	case MMC_TIMING_MMC_HS:
+		mode = SDHCI_CDNS_HRS06_MODE_MMC_SDR;
+		break;
+	case MMC_TIMING_MMC_DDR52:
+		mode = SDHCI_CDNS_HRS06_MODE_MMC_DDR;
+		break;
+	case MMC_TIMING_MMC_HS200:
+		mode = SDHCI_CDNS_HRS06_MODE_MMC_HS200;
+		break;
+	case MMC_TIMING_MMC_HS400:
+		if (priv->enhanced_strobe)
+			mode = SDHCI_CDNS_HRS06_MODE_MMC_HS400ES;
+		else
+			mode = SDHCI_CDNS_HRS06_MODE_MMC_HS400;
+		break;
+	default:
+		mode = SDHCI_CDNS_HRS06_MODE_SD;
+		break;
+	}
 
-	if (ios->clock)
-		sdhci_cdns_set_clock(host, ios->clock);
+	sdhci_cdns_set_emmc_mode(priv, mode);
 
-	sdhci_set_bus_width(&priv->sdhci, ios->bus_width);
+	/* For SD, fall back to the default handler */
+	if (mode == SDHCI_CDNS_HRS06_MODE_SD)
+		sdhci_set_uhs_signaling(&priv->sdhci, timing);
+
+	/* For host controller V6, set SDHCI and PHY registers for UHS signaling */
+	if (priv->sdhci.version >= SDHCI_SPEC_420)
+		sdhci_cdns6_phy_adj(host, timing);
 }
 
 static const struct mci_ops sdhci_cdns_ops = {
 	.set_ios = sdhci_cdns_set_ios,
+	.init = sdhci_cdns_init,
+	.send_cmd = sdhci_cdns_send_cmd,
+	.set_uhs_signaling = sdhci_cdns_set_uhs_signaling,
 };
 
+static const struct sdhci_cdns_drv_data sdhci_cdns6_agilex5_drv_data = {
+	.ops = &sdhci_cdns_ops,
+};
+
+static const struct sdhci_cdns_drv_data sdhci_cdns4_drv_data = {
+	.ops = &sdhci_cdns_ops,
+};
+
+static int sdhci_cdns4_phy_probe(struct device *dev,
+				 struct sdhci_cdns_priv *priv)
+{
+	sdhci_cdns_phy_param_parse(dev->of_node, priv);
+
+	return sdhci_cdns_phy_init(priv);
+}
+
+static struct clk **sdhci_cdns_enable_clocks(struct device *dev, bool is_sd4hc)
+{
+	struct clk **clks = NULL;
+
+	if (is_sd4hc) {
+		/* For SDHCI V4 controllers, enable only the default clock */
+		clks = xzalloc(sizeof(struct clk *));
+		clks[MAIN_CLOCK_INDEX] = clk_get_enabled(dev, NULL);
+		if (IS_ERR(clks[MAIN_CLOCK_INDEX])) {
+			dev_err(dev, "Failed to get/enable clock\n");
+			return ERR_CAST(clks[MAIN_CLOCK_INDEX]);
+		}
+	} else {
+		clks = xzalloc(sizeof(struct clk *) * 2);
+
+		/* Enable main clock ("biu") */
+		clks[MAIN_CLOCK_INDEX] = clk_get_enabled(dev, "biu");
+		if (IS_ERR(clks[MAIN_CLOCK_INDEX])) {
+			dev_err(dev, "%s: request of Main clock failed (%ld)\n",
+				__func__, PTR_ERR(clks[MAIN_CLOCK_INDEX]));
+			return ERR_CAST(clks[MAIN_CLOCK_INDEX]);
+		}
+
+		/* Enable SD master clock ("ciu") */
+		clks[SD_MASTER_CLOCK_INDEX] = clk_get_enabled(dev, "ciu");
+		if (IS_ERR(clks[SD_MASTER_CLOCK_INDEX])) {
+			dev_err(dev,
+				"%s: request of SD master clock failed (%ld)\n",
+				__func__, PTR_ERR(clks[SD_MASTER_CLOCK_INDEX]));
+			return ERR_CAST(clks[SD_MASTER_CLOCK_INDEX]);
+		}
+	}
+	return clks;
+}
+
 static int sdhci_cdns_probe(struct device *dev)
 {
 	struct sdhci_cdns_priv *priv;
 	struct mci_host *mci;
-	struct clk *clk;
+	struct clk **clks;
 	struct resource *iores;
-	struct reset_control *rst;
 	unsigned int nr_phy_params;
 	int ret;
+	bool is_sd4hc = of_device_is_compatible(dev->device_node, "cdns,sd4hc");
 
 	priv = xzalloc(sizeof(*priv));
 	mci = &priv->mci;
 
-	clk = clk_get(dev, "biu");
-	if (IS_ERR(clk))
-		return PTR_ERR(clk);
+	priv->rst = reset_control_get(dev, "sdhc-reset");
+	if (IS_ERR(priv->rst)) {
+		dev_err(dev, "Invalid reset line 'sdhc-reset'.\n");
+		return PTR_ERR(priv->rst);
+	}
+
+	priv->softphy_rst = reset_control_get(dev, "softphy-reset");
+	if (IS_ERR(priv->softphy_rst)) {
+		dev_err(dev, "Invalid reset line 'softphy-reset'.\n");
+		return PTR_ERR(priv->softphy_rst);
+	}
+
+	priv->sdmmc_ocp_rst = reset_control_get(dev, "sdmmc-ocp");
+	if (IS_ERR(priv->sdmmc_ocp_rst)) {
+		dev_err(dev, "Invalid reset line 'sdmmc-ocp-reset'.\n");
+		return PTR_ERR(priv->sdmmc_ocp_rst);
+	}
+	reset_control_assert(priv->rst);
+	reset_control_deassert(priv->rst);
+
+	reset_control_assert(priv->softphy_rst);
+	reset_control_deassert(priv->softphy_rst);
+
+	reset_control_assert(priv->sdmmc_ocp_rst);
+	reset_control_deassert(priv->sdmmc_ocp_rst);
+
+	clks = sdhci_cdns_enable_clocks(dev, is_sd4hc);
+	if (IS_ERR(clks)) {
+		dev_err(dev, "Failed to enable controller clocks: %ld\n", PTR_ERR(clks));
+		return PTR_ERR(clks);
+	}
 
 	iores = dev_request_mem_resource(dev, 0);
 	if (IS_ERR(iores))
 		return PTR_ERR(iores);
 
-	rst = reset_control_get(dev, "reset");
-	if (IS_ERR(rst)) {
-		dev_err(dev, "Invalid reset line 'reset'.\n");
-		return PTR_ERR(rst);
-	}
-	reset_control_deassert(rst);
-	ret = clk_prepare_enable(clk);
-	if (ret)
-		return ret;
-
 	mci->ops = sdhci_cdns_ops;
 	mci->hw_dev = dev;
 
 	nr_phy_params = sdhci_cdns_phy_param_count(dev->of_node);
 
+	priv->biu_clk = clks[MAIN_CLOCK_INDEX];
+
 	priv->nr_phy_params = nr_phy_params;
 	priv->hrs_addr = IOMEM(iores->start);
 	priv->enhanced_strobe = false;
 	priv->sdhci.base = IOMEM(iores->start + SDHCI_CDNS_SRS_BASE);
-	priv->sdhci.quirks2 = SDHCI_QUIRK2_40_BIT_DMA_MASK;
 	priv->sdhci.mci = mci;
+	priv->sdhci.max_clk = clk_get_rate(priv->biu_clk);
+	priv->sdhci.quirks2 = SDHCI_QUIRK2_BROKEN_HS200;
 
-	mci_of_parse(mci);
-
-	sdhci_cdns_phy_param_parse(dev->of_node, priv);
+	dev->priv = priv;
 
-	ret = sdhci_cdns_phy_init(priv);
+	priv->mci.f_max = clk_get_rate(priv->biu_clk);
+	mci_of_parse(mci);
+	priv->mci.f_min = priv->mci.f_max / SDHCI_MAX_DIV_SPEC_300;
+
+	priv->mci.voltages = MMC_VDD_32_33 | MMC_VDD_33_34;
+	priv->mci.host_caps = MMC_CAP_4_BIT_DATA | MMC_CAP_8_BIT_DATA;
+	priv->mci.host_caps |= MMC_CAP_MMC_HIGHSPEED_52MHZ;
+	if (is_sd4hc) {
+		ret = sdhci_cdns4_phy_probe(dev, priv);
+	} else {
+		priv->ciu_clk = clks[SD_MASTER_CLOCK_INDEX];
+		ret = sdhci_cdns6_phy_probe(mci);
+	}
 	if (ret)
 		goto disable_clk;
 
-	ret = sdhci_cdns_combophy_init_sd_dfi_init(priv);
+	if (IS_ENABLED(CONFIG_MCI_TUNING))
+		mci->ops.execute_tuning = sdhci_cdns_execute_tuning;
+  
+	ret = sdhci_setup_host(&priv->sdhci);
 	if (ret)
 		goto disable_clk;
 
-	dev->priv = priv;
+	if (priv->sdhci.caps & SDHCI_CAN_64BIT_V4) {
+		dma_set_mask(dev, DMA_BIT_MASK(40));
+		dev_dbg(priv->mci.hw_dev, "set DMA mask to 40-bit\n");
+	} else {
+		dma_set_mask(dev, DMA_BIT_MASK(32));
+		dev_dbg(priv->mci.hw_dev, "set DMA mask to 32-bit\n");
+	}
 
-	ret = sdhci_setup_host(&priv->sdhci);
+	dev_dbg(priv->mci.hw_dev, "host controller version: %u\n",
+		priv->sdhci.version);
+
+	ret = mci_register(priv->sdhci.mci);
 	if (ret)
-		goto disable_clk;
+		return ret;
 
 	return 0;
 
 disable_clk:
-	clk_disable_unprepare(clk);
+	clk_disable_unprepare(priv->biu_clk);
 
 	return ret;
 }
 
 static __maybe_unused struct of_device_id sdhci_cdns_match[] = {
 	{
-		.compatible = "cdns,sd4hc"
+		.compatible = "cdns,sd4hc",
+		.data = &sdhci_cdns4_drv_data,
 	},
 	{
-		.compatible = "intel,agilex5-sd4hc",
+		.compatible = "altr,agilex5-sd6hc",
+		.data = &sdhci_cdns6_agilex5_drv_data,
 	},
 	{ /* sentinel */ }
 };
diff --git a/drivers/mci/cadence-sdhci.h b/drivers/mci/cadence-sdhci.h
new file mode 100644
index 0000000000..23fd446d5d
--- /dev/null
+++ b/drivers/mci/cadence-sdhci.h
@@ -0,0 +1,118 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (C) 2016 Socionext Inc.
+ *   Author: Masahiro Yamada <yamada.masahiro@socionext.com>
+ */
+
+#ifndef SDHCI_CADENCE_H_
+#define SDHCI_CADENCE_H_
+
+#include <common.h>
+#include <clock.h>
+#include <linux/clk.h>
+#include <linux/bitfield.h>
+#include <linux/bits.h>
+#include <linux/iopoll.h>
+#include <linux/reset.h>
+
+#include "sdhci.h"
+
+/* HRS - Host Register Set (specific to Cadence) */
+#define SDHCI_CDNS_HRS04	0x10		/* PHY access port */
+#define SDHCI_CDNS_HRS05        0x14		/* PHY data access port */
+
+/*
+ * The tuned val register is 6 bit-wide, but not the whole of the range is
+ * available. The range 0-42 seems to be available (then 43 wraps around to 0)
+ * but I am not quite sure if it is official.  Use only 0 to 39 for safety.
+ */
+#define SDHCI_CDNS_MAX_TUNING_LOOP	40
+
+struct sdhci_cdns_drv_data {
+	const struct mci_ops *ops;
+	unsigned int quirks;
+	unsigned int quirks2;
+};
+
+/**
+ * struct sdhci_cdns4_phy_param - PHY parameter/address pair
+ * @addr: PHY register address.
+ * @data: Value to write to the PHY register.
+ *
+ * Used for passing a list of PHY configuration parameters to the
+ * Cadence SDHCI V4 controller.
+ */
+struct sdhci_cdns4_phy_param {
+	u8 addr;
+	u8 data;
+};
+
+/**
+ * struct sdhci_cdns_priv - Cadence SDHCI private controller data
+ * @hrs_addr: Base address of Cadence Host Register Set (HRS) registers.
+ * @ctl_addr: Base address for write control registers.
+ *            Used only for "amd,pensando-elba-sd4hc" compatible controllers
+ *            to enable byte-lane writes.
+ * @wrlock: Spinlock for protecting register writes (Elba only).
+ * @enhanced_strobe: Flag indicating if Enhanced Strobe (HS400ES) is enabled.
+ * @priv_writel: Optional SoC-specific write function for register access.
+ *               Used for Elba to ensure correct byte-lane enable.
+ * @rst_hw: Hardware reset control for the controller.
+ * @ciu_clk: Card Interface Unit (CIU) clock handle.
+ *           Used only for V6 (SDHCI spec >= 4.20) controllers.
+ * @nr_phy_params: Number of PHY parameter entries parsed from DT (V4 only).
+ * @phy_params: Array of PHY parameter/address pairs for PHY initialization (V4 only).
+ */
+struct sdhci_cdns_priv {
+	struct mci_host mci;
+	struct sdhci sdhci;
+	struct reset_control *rst;
+	struct reset_control *softphy_rst;
+	struct reset_control *sdmmc_ocp_rst;
+	void __iomem *hrs_addr;
+	void __iomem *ctl_addr; /* write control */
+	bool enhanced_strobe;
+	struct clk *biu_clk; /* Card Interface Unit clock */
+	struct clk *ciu_clk; /* Card Interface Unit clock */
+	unsigned int nr_phy_params;
+	struct sdhci_cdns4_phy_param phy_params[];
+};
+
+/*
+ * sdhci_cdns_priv - Helper to retrieve Cadence private data from sdhci_host
+ * @host: Pointer to struct sdhci_host.
+ *
+ * Returns: Pointer to struct sdhci_cdns_priv.
+ */
+static inline void *sdhci_cdns_priv(struct mci_host *host)
+{
+	return host->hw_dev->priv;
+}
+
+/**
+ * sdhci_cdns6_phy_probe - Initialize the Cadence PHY using device tree.
+ * @host: Pointer to struct sdhci_host.
+ *
+ * Returns 0 on success or a negative error code.
+ */
+int sdhci_cdns6_phy_probe(struct mci_host *host);
+
+/**
+ * sdhci_cdns6_phy_adj - Program PHY registers for a specific timing mode.
+ * @host: Pointer to struct sdhci_host.
+ * @timing: MMC timing mode (MMC_TIMING_*).
+ *
+ * Returns 0 on success or a negative error code.
+ */
+int sdhci_cdns6_phy_adj(struct mci_host *host, unsigned char timing);
+
+/**
+ * sdhci_cdns6_set_tune_val - Set the PHY tuning value.
+ * @host: Pointer to struct sdhci_host.
+ * @val: Tuning value to program.
+ *
+ * Returns 0 on success or a negative error code.
+ */
+int sdhci_cdns6_set_tune_val(struct mci_host *host, unsigned int val);
+
+#endif // SDHCI_CADENCE_H_
diff --git a/drivers/mci/cadence-sdhci6.c b/drivers/mci/cadence-sdhci6.c
new file mode 100644
index 0000000000..031c589f78
--- /dev/null
+++ b/drivers/mci/cadence-sdhci6.c
@@ -0,0 +1,373 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * PHY support for Cadence version 6 SDHCI
+ *
+ * Copyright (C) 2025 Altera Corporation
+ *   Author: Tanmay Kathpalia <tanmay.kathpalia@altera.com>
+ */
+
+#include "cadence-sdhci.h"
+
+/* IO Delay Information */
+#define SDHCI_CDNS_HRS07			0X1C
+
+/* PHY Control and Status */
+#define SDHCI_CDNS_HRS09			0x24
+#define   SDHCI_CDNS_HRS09_RDDATA_EN		BIT(16)
+#define   SDHCI_CDNS_HRS09_RDCMD_EN		BIT(15)
+#define   SDHCI_CDNS_HRS09_EXTENDED_WR_MODE	BIT(3)
+#define   SDHCI_CDNS_HRS09_EXTENDED_RD_MODE	BIT(2)
+#define   SDHCI_CDNS_HRS09_PHY_INIT_COMPLETE	BIT(1)
+#define   SDHCI_CDNS_HRS09_PHY_SW_RESET		BIT(0)
+
+/* SDCLK start point adjustment */
+#define SDHCI_CDNS_HRS10			0x28
+
+/* eMMC Control */
+#define SDHCI_CDNS_HRS11			0x2C
+#define   SDHCI_CDNS_HRS11_EMMC_RST		BIT(0)	/* eMMC reset */
+
+/* CMD/DAT output delay */
+#define SDHCI_CDNS_HRS16			0x40
+
+/* PHY Special Function Registers */
+/* DQ timing */
+#define PHY_DQ_TIMING_REG_ADDR			0x2000
+
+/* DQS timing */
+#define PHY_DQS_TIMING_REG_ADDR			0x2004
+
+/* Gate and loopback control */
+#define PHY_GATE_LPBK_CTRL_REG_ADDR		0x2008
+
+/* Master DLL logic */
+#define PHY_DLL_MASTER_CTRL_REG_ADDR		0x200C
+
+/* Slave DLL logic */
+#define PHY_DLL_SLAVE_CTRL_REG_ADDR			0x2010
+#define   PHY_DLL_SLAVE_CTRL_REG_READ_DQS_CMD_DELAY	GENMASK(31, 24)
+#define   PHY_DLL_SLAVE_CTRL_REG_READ_DQS_DELAY		GENMASK(7, 0)
+
+/* Global control settings */
+#define PHY_CTRL_REG_ADDR			0x2080
+
+/*
+ * Supports MMC_TIMING_LEGACY to MMC_TIMING_MMC_HS400 and additionally
+ * MMC_TIMING_MMC_HS400ES, as defined in include/linux/mmc/host.h.
+ */
+#define MAX_TIMING_MODES			12
+
+/* Index register configuration arrays for Cadence SDHCI V6 controller and PHY setup */
+enum sdhci_cdns6_reg_index {
+	REG_CFG_HRS07 = 0,
+	REG_CFG_HRS09,
+	REG_CFG_HRS10,
+	REG_CFG_HRS16,
+	REG_CFG_PHY_DQS,
+	REG_CFG_PHY_GATE_LPBK_CTRL,
+	REG_CFG_PHY_DLL_MASTER_CTRL,
+	REG_CFG_PHY_DLL_SLAVE_CTRL,
+	REG_CFG_PHY_DQ,
+	REG_CFG_MAX
+};
+
+/**
+ * struct sdhci_cdns6_ctrl_cfg - Controller/PHY register property and value pair
+ * @property: Device tree property name for the register configuration
+ * @value: Value to be programmed into the register
+ *
+ * Store register configuration values parsed from the device tree
+ * for Cadence SDHCI V6 controller and PHY initialization.
+ */
+struct sdhci_cdns6_ctrl_cfg {
+	const char *property;
+	u32 value;
+};
+
+static const struct sdhci_cdns6_ctrl_cfg reg_cfg[REG_CFG_MAX][MAX_TIMING_MODES] = {
+	/* [0] SD Host Controller: HRS07 */
+	{
+		{ "cdns,ctrl-hrs07-timing-delay-default", 0x00090000 }, // MMC legacy or SD default
+		{ "cdns,ctrl-hrs07-timing-delay-mmc-hs", 0x00090000 }, // MMC High Speed
+		{ "cdns,ctrl-hrs07-timing-delay-sd-hs", 0x000A0001 }, // SD High Speed
+		{ "cdns,ctrl-hrs07-timing-delay-sd-sdr12", 0x000A0001 }, // SD UHS1 SDR12
+		{ "cdns,ctrl-hrs07-timing-delay-sd-sdr25", 0x000A0001 }, // SD UHS1 SDR25
+		{ "cdns,ctrl-hrs07-timing-delay-sd-sdr50", 0x00090005 }, // SD UHS1 SDR50
+		{ "cdns,ctrl-hrs07-timing-delay-sd-sdr104", 0x00090005 }, // SD UHS1 SDR104
+		{ "cdns,ctrl-hrs07-timing-delay-sd-ddr50", 0x00090001 }, // SD UHS1 DDR50
+		{ "cdns,ctrl-hrs07-timing-delay-mmc-ddr52", 0x00090001 }, // MMC DDR52
+		{ "cdns,ctrl-hrs07-timing-delay-mmc-hs200", 0x00090000 }, // MMC HS200
+		{ "cdns,ctrl-hrs07-timing-delay-mmc-hs400", 0x00090001 }, // MMC HS400
+		{ "cdns,ctrl-hrs07-timing-delay-mmc-hs400es", 0x00090001 }, // MMC HS400ES
+	},
+	/* [1] SD Host Controller: HRS09 */
+	{
+		{ "cdns,ctrl-hrs09-timing-delay-default", 0x0001800C },
+		{ "cdns,ctrl-hrs09-timing-delay-mmc-hs", 0x0001800C },
+		{ "cdns,ctrl-hrs09-timing-delay-sd-hs", 0x0001800C },
+		{ "cdns,ctrl-hrs09-timing-delay-sd-sdr12", 0x0001800C },
+		{ "cdns,ctrl-hrs09-timing-delay-sd-sdr25", 0x0001800C },
+		{ "cdns,ctrl-hrs09-timing-delay-sd-sdr50", 0xf1c1800c },
+		{ "cdns,ctrl-hrs09-timing-delay-sd-sdr104", 0xf1c18000 },
+		{ "cdns,ctrl-hrs09-timing-delay-sd-ddr50", 0x0001800C },
+		{ "cdns,ctrl-hrs09-timing-delay-mmc-ddr52", 0x0001800C },
+		{ "cdns,ctrl-hrs09-timing-delay-mmc-hs200", 0xf1c18000 },
+		{ "cdns,ctrl-hrs09-timing-delay-mmc-hs400", 0xf1c18000 },
+		{ "cdns,ctrl-hrs09-timing-delay-mmc-hs400es", 0xf1c18000 },
+	},
+	/* [2] SD Host Controller: HRS10 */
+	{
+		{ "cdns,ctrl-hrs10-timing-delay-default", 0x00020000 },
+		{ "cdns,ctrl-hrs10-timing-delay-mmc-hs", 0x00020000 },
+		{ "cdns,ctrl-hrs10-timing-delay-sd-hs", 0x00030000 },
+		{ "cdns,ctrl-hrs10-timing-delay-sd-sdr12", 0x00030000 },
+		{ "cdns,ctrl-hrs10-timing-delay-sd-sdr25", 0x00030000 },
+		{ "cdns,ctrl-hrs10-timing-delay-sd-sdr50", 0x00020000 },
+		{ "cdns,ctrl-hrs10-timing-delay-sd-sdr104", 0x00090000 },
+		{ "cdns,ctrl-hrs10-timing-delay-sd-ddr50", 0x00020000 },
+		{ "cdns,ctrl-hrs10-timing-delay-mmc-ddr52", 0x00020000 },
+		{ "cdns,ctrl-hrs10-timing-delay-mmc-hs200", 0x00090000 },
+		{ "cdns,ctrl-hrs10-timing-delay-mmc-hs400", 0x00080000 },
+		{ "cdns,ctrl-hrs10-timing-delay-mmc-hs400es", 0x00080000 },
+	},
+	/* [3] SD Host Controller: HRS16 */
+	{
+		{ "cdns,ctrl-hrs16-timing-delay-default", 0x00000000 },
+		{ "cdns,ctrl-hrs16-timing-delay-mmc-hs", 0x0000010a },
+		{ "cdns,ctrl-hrs16-timing-delay-sd-hs", 0x00000101 },
+		{ "cdns,ctrl-hrs16-timing-delay-sd-sdr12", 0x00000000 },
+		{ "cdns,ctrl-hrs16-timing-delay-sd-sdr25", 0x00000101 },
+		{ "cdns,ctrl-hrs16-timing-delay-sd-sdr50", 0x00000101 },
+		{ "cdns,ctrl-hrs16-timing-delay-sd-sdr104", 0x00000101 },
+		{ "cdns,ctrl-hrs16-timing-delay-sd-ddr50", 0x11000000 },
+		{ "cdns,ctrl-hrs16-timing-delay-mmc-ddr52", 0x11000001 },
+		{ "cdns,ctrl-hrs16-timing-delay-mmc-hs200", 0x00007777 },
+		{ "cdns,ctrl-hrs16-timing-delay-mmc-hs400", 0x11000001 },
+		{ "cdns,ctrl-hrs16-timing-delay-mmc-hs400es", 0x11000001 },
+	},
+	/* [4] ComboPHY: DQS timing */
+	{
+		{ "cdns,phy-dqs-timing-delay-default", 0x00780000 },
+		{ "cdns,phy-dqs-timing-delay-mmc-hs", 0x00780000 },
+		{ "cdns,phy-dqs-timing-delay-sd-hs", 0x00780001 },
+		{ "cdns,phy-dqs-timing-delay-sd-sdr12", 0x00780000 },
+		{ "cdns,phy-dqs-timing-delay-sd-sdr25", 0x00780001 },
+		{ "cdns,phy-dqs-timing-delay-sd-sdr50", 0x00780004 },
+		{ "cdns,phy-dqs-timing-delay-sd-sdr104", 0x00780004 },
+		{ "cdns,phy-dqs-timing-delay-sd-ddr50", 0x00780004 },
+		{ "cdns,phy-dqs-timing-delay-mmc-ddr52", 0x00780001 },
+		{ "cdns,phy-dqs-timing-delay-mmc-hs200", 0x00780004 },
+		{ "cdns,phy-dqs-timing-delay-mmc-hs400", 0x00680004 },
+		{ "cdns,phy-dqs-timing-delay-mmc-hs400es", 0x00680004 },
+	},
+	/* [5] ComboPHY: PHY Gate Loopback Control */
+	{
+		{ "cdns,phy-gate-lpbk-ctrl-delay-default", 0x81a40040 },
+		{ "cdns,phy-gate-lpbk-ctrl-delay-mmc-hs", 0x81a40040 },
+		{ "cdns,phy-gate-lpbk-ctrl-delay-sd-hs", 0x81a40040 },
+		{ "cdns,phy-gate-lpbk-ctrl-delay-sd-sdr12", 0x81a40040 },
+		{ "cdns,phy-gate-lpbk-ctrl-delay-sd-sdr25", 0x81a40040 },
+		{ "cdns,phy-gate-lpbk-ctrl-delay-sd-sdr50", 0x80a40040 },
+		{ "cdns,phy-gate-lpbk-ctrl-delay-sd-sdr104", 0x81a40040 },
+		{ "cdns,phy-gate-lpbk-ctrl-delay-sd-ddr50", 0x80a40040 },
+		{ "cdns,phy-gate-lpbk-ctrl-delay-mmc-ddr52", 0x81a40040 },
+		{ "cdns,phy-gate-lpbk-ctrl-delay-mmc-hs200", 0x81a40040 },
+		{ "cdns,phy-gate-lpbk-ctrl-delay-mmc-hs400", 0x81fc0040 },
+		{ "cdns,phy-gate-lpbk-ctrl-delay-mmc-hs400es", 0x81fc0040 },
+	},
+	/* [6] ComboPHY: PHY DLL Master Control */
+	{
+		{ "cdns,phy-dll-master-ctrl-default", 0x00800004 },
+		{ "cdns,phy-dll-master-ctrl-mmc-hs", 0x00800004 },
+		{ "cdns,phy-dll-master-ctrl-sd-hs", 0x00800004 },
+		{ "cdns,phy-dll-master-ctrl-sd-sdr12", 0x00800004 },
+		{ "cdns,phy-dll-master-ctrl-sd-sdr25", 0x00800004 },
+		{ "cdns,phy-dll-master-ctrl-sd-sdr50", 0x00800004 },
+		{ "cdns,phy-dll-master-ctrl-sd-sdr104", 0x00204d00 },
+		{ "cdns,phy-dll-master-ctrl-sd-ddr50", 0x00800000 },
+		{ "cdns,phy-dll-master-ctrl-mmc-ddr52", 0x00800000 },
+		{ "cdns,phy-dll-master-ctrl-mmc-hs200", 0x00000004 },
+		{ "cdns,phy-dll-master-ctrl-mmc-hs400", 0x00000004 },
+		{ "cdns,phy-dll-master-ctrl-mmc-hs400es", 0x00000004 },
+	},
+	/* [7] ComboPHY: PHY DLL Slave Control */
+	{
+		{ "cdns,phy-dll-slave-ctrl-default", 0x00000000 },
+		{ "cdns,phy-dll-slave-ctrl-mmc-hs", 0x00000000 },
+		{ "cdns,phy-dll-slave-ctrl-sd-hs", 0x00000000 },
+		{ "cdns,phy-dll-slave-ctrl-sd-sdr12", 0x00000000 },
+		{ "cdns,phy-dll-slave-ctrl-sd-sdr25", 0x00000000 },
+		{ "cdns,phy-dll-slave-ctrl-sd-sdr50", 0x04000004 },
+		{ "cdns,phy-dll-slave-ctrl-sd-sdr104", 0x04000004 },
+		{ "cdns,phy-dll-slave-ctrl-sd-ddr50", 0x00000000 },
+		{ "cdns,phy-dll-slave-ctrl-mmc-ddr52", 0x00000000 },
+		{ "cdns,phy-dll-slave-ctrl-mmc-hs200", 0x004d4d00 },
+		{ "cdns,phy-dll-slave-ctrl-mmc-hs400", 0x004d4b40 },
+		{ "cdns,phy-dll-slave-ctrl-mmc-hs400es", 0x004d4b40 },
+	},
+	/* [8] ComboPHY: DQ timing delay */
+	{
+		{ "cdns,phy-dq-timing-delay-default", 0x28000001 },
+		{ "cdns,phy-dq-timing-delay-mmc-hs", 0x00000001 },
+		{ "cdns,phy-dq-timing-delay-sd-hs", 0x10000001 },
+		{ "cdns,phy-dq-timing-delay-sd-sdr12", 0x28000001 },
+		{ "cdns,phy-dq-timing-delay-sd-sdr25", 0x10000001 },
+		{ "cdns,phy-dq-timing-delay-sd-sdr50", 0x38000001 },
+		{ "cdns,phy-dq-timing-delay-sd-sdr104", 0x38000001 },
+		{ "cdns,phy-dq-timing-delay-sd-ddr50", 0x38000001 },
+		{ "cdns,phy-dq-timing-delay-mmc-ddr52", 0x10000001 },
+		{ "cdns,phy-dq-timing-delay-mmc-hs200", 0x10000001 },
+		{ "cdns,phy-dq-timing-delay-mmc-hs400", 0x10000001 },
+		{ "cdns,phy-dq-timing-delay-mmc-hs400es", 0x10000001 },
+	}
+};
+
+static unsigned int sdhci_cdns6_read_phy_reg(struct sdhci_cdns_priv *priv,
+					     const u32 address)
+{
+	writel(address, priv->hrs_addr + SDHCI_CDNS_HRS04);
+	return readl(priv->hrs_addr + SDHCI_CDNS_HRS05);
+}
+
+static void sdhci_cdns6_write_phy_reg(struct sdhci_cdns_priv *priv,
+				      const u32 address, const u32 value)
+{
+	writel(address, priv->hrs_addr + SDHCI_CDNS_HRS04);
+	writel(value, priv->hrs_addr + SDHCI_CDNS_HRS05);
+}
+
+static int sdhci_cdns6_reset_phy_dll(struct mci_host *host, unsigned int reset)
+{
+	struct sdhci_cdns_priv *priv = sdhci_cdns_priv(host);
+	void __iomem *reg = priv->hrs_addr + SDHCI_CDNS_HRS09;
+	u32 tmp;
+	int ret = 0;
+
+	tmp = readl(reg);
+	/* Switch On DLL Reset */
+	tmp &= ~SDHCI_CDNS_HRS09_PHY_SW_RESET;
+
+	if (!reset)
+		/* Switch Off DLL Reset */
+		tmp |= SDHCI_CDNS_HRS09_PHY_SW_RESET;
+
+	writel(tmp, reg);
+
+	/* After reset, wait until HRS09.PHY_INIT_COMPLETE is set to 1 within 3000us*/
+	if (!reset) {
+		ret = readl_poll_timeout(
+			reg, tmp, (tmp & SDHCI_CDNS_HRS09_PHY_INIT_COMPLETE),
+			3000);
+	}
+
+	return ret;
+}
+
+int sdhci_cdns6_phy_adj(struct mci_host *host, unsigned char timing)
+{
+	struct sdhci_cdns_priv *priv = sdhci_cdns_priv(host);
+	struct device_node *np = host->hw_dev->of_node;
+	struct sdhci_cdns6_ctrl_cfg timing_cfg[REG_CFG_MAX];
+	u32 dt_value;
+	void __iomem *reg;
+	u32 tmp;
+	int i;
+
+	if (timing >= MAX_TIMING_MODES) {
+		pr_err("Invalid timing mode: %d\n", timing);
+		return -EINVAL;
+	}
+
+	/* Override values from device tree */
+	for (i = 0; i < REG_CFG_MAX; i++) {
+		const char *prop = reg_cfg[i][timing].property;
+
+		if (!of_property_read_u32(np, prop, &dt_value)) {
+			timing_cfg[i].value = dt_value;
+			pr_debug("Overriding %s to 0x%08x from DT\n", prop,
+				 dt_value);
+		} else {
+			timing_cfg[i].value = reg_cfg[i][timing].value;
+		}
+	}
+
+	/* Switch On the DLL Reset */
+	sdhci_cdns6_reset_phy_dll(host, true);
+
+	sdhci_cdns6_write_phy_reg(priv, PHY_DQS_TIMING_REG_ADDR,
+				  timing_cfg[REG_CFG_PHY_DQS].value);
+	sdhci_cdns6_write_phy_reg(priv, PHY_GATE_LPBK_CTRL_REG_ADDR,
+				  timing_cfg[REG_CFG_PHY_GATE_LPBK_CTRL].value);
+	sdhci_cdns6_write_phy_reg(
+		priv, PHY_DLL_MASTER_CTRL_REG_ADDR,
+		timing_cfg[REG_CFG_PHY_DLL_MASTER_CTRL].value);
+	sdhci_cdns6_write_phy_reg(priv, PHY_DLL_SLAVE_CTRL_REG_ADDR,
+				  timing_cfg[REG_CFG_PHY_DLL_SLAVE_CTRL].value);
+
+	/* Switch Off the DLL Reset */
+	sdhci_cdns6_reset_phy_dll(host, false);
+
+	/* Set PHY DQ TIMING control register */
+	sdhci_cdns6_write_phy_reg(priv, PHY_DQ_TIMING_REG_ADDR,
+				  timing_cfg[REG_CFG_PHY_DQ].value);
+
+	/* Set HRS09 register */
+	reg = priv->hrs_addr + SDHCI_CDNS_HRS09;
+	tmp = readl(reg);
+	tmp &= ~(SDHCI_CDNS_HRS09_EXTENDED_WR_MODE |
+		 SDHCI_CDNS_HRS09_EXTENDED_RD_MODE |
+		 SDHCI_CDNS_HRS09_RDDATA_EN | SDHCI_CDNS_HRS09_RDCMD_EN);
+	tmp |= timing_cfg[REG_CFG_HRS09].value;
+	writel(tmp, reg);
+
+	/* Set HRS10 register */
+	writel(timing_cfg[REG_CFG_HRS10].value,
+	       priv->hrs_addr + SDHCI_CDNS_HRS10);
+
+	/* Set HRS16 register */
+	writel(timing_cfg[REG_CFG_HRS16].value,
+	       priv->hrs_addr + SDHCI_CDNS_HRS16);
+
+	/* Set HRS07 register */
+	writel(timing_cfg[REG_CFG_HRS07].value,
+	       priv->hrs_addr + SDHCI_CDNS_HRS07);
+
+	return 0;
+}
+
+int sdhci_cdns6_set_tune_val(struct mci_host *host, unsigned int val)
+{
+	struct sdhci_cdns_priv *priv = sdhci_cdns_priv(host);
+	u32 tmp, tuneval;
+
+	/**
+	 * Scale the tuning tap (0..39) to the 8-bit PHY DLL delay field (0..255),
+	 * as required by the read_dqs_cmd_delay and read_dqs_delay fields.
+	 * This ensures each tuning step maps linearly to the hardware delay range.
+	 */
+#define SDHCI_CDNS6_PHY_DLL_FIELD_SIZE 256
+
+	tuneval = (val * SDHCI_CDNS6_PHY_DLL_FIELD_SIZE) /
+		  SDHCI_CDNS_MAX_TUNING_LOOP;
+
+	tmp = sdhci_cdns6_read_phy_reg(priv, PHY_DLL_SLAVE_CTRL_REG_ADDR);
+	tmp &= ~(PHY_DLL_SLAVE_CTRL_REG_READ_DQS_CMD_DELAY |
+		 PHY_DLL_SLAVE_CTRL_REG_READ_DQS_DELAY);
+	tmp |= FIELD_PREP(PHY_DLL_SLAVE_CTRL_REG_READ_DQS_CMD_DELAY, tuneval) |
+	       FIELD_PREP(PHY_DLL_SLAVE_CTRL_REG_READ_DQS_DELAY, tuneval);
+
+	/* Switch On the DLL Reset */
+	sdhci_cdns6_reset_phy_dll(host, true);
+
+	sdhci_cdns6_write_phy_reg(priv, PHY_DLL_SLAVE_CTRL_REG_ADDR, tmp);
+
+	/* Switch Off the DLL Reset */
+	sdhci_cdns6_reset_phy_dll(host, false);
+
+	return 0;
+}
+
+int sdhci_cdns6_phy_probe(struct mci_host *host)
+{
+	return sdhci_cdns6_phy_adj(host, MMC_TIMING_LEGACY);
+}

-- 
2.51.0



