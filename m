Delivery-date: Tue, 22 Apr 2025 07:27:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u76AN-003utw-0u
	for lore@lore.pengutronix.de;
	Tue, 22 Apr 2025 07:27:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u76AI-0004MG-Ki
	for lore@pengutronix.de; Tue, 22 Apr 2025 07:27:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iA1Lu3L2wBGa5VptM0KTpWeaWl1NNAg76w4ny7QUcMU=; b=CLfje+2/0MYQFbjPqiSmXp9JN0
	1HXdMoj5VW7waK2f7q6ATYyyS6oduILTvAswJEJ7sBWhvXR1En8EHtu4Z1nnrKAt53wCHiqaXl5kJ
	tZYtRufUkYHYN2145WS27rAhvsArPXE9Sp/tDSCor3ZXYcGteYTtCmKy3dyrVR1ojpeSOVtkuj91A
	pWwS/e4YHroKBit3vBn6L1X8+bh4DSSrwoPPdaNxiyFCZ7nzaalsS0iCbkHqjB2k3zrBQP8mggx3d
	tEAUsHRpUFLS/Ule2JJWD9w0N2V8T7n+SfSYQgCGob7BiWkQjccXZdHrc9Ej17BH/v5SV+a4BNrvv
	C1+PXkDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u769f-00000005rHB-07gG;
	Tue, 22 Apr 2025 05:26:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u769X-00000005r9X-0ncm
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 05:26:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u769W-0003jC-0I; Tue, 22 Apr 2025 07:26:38 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u769V-001UvE-2O;
	Tue, 22 Apr 2025 07:26:37 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u769V-00EN4R-24;
	Tue, 22 Apr 2025 07:26:37 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 22 Apr 2025 07:26:32 +0200
Message-Id: <20250422052635.3423961-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250422052635.3423961-1-a.fatoum@pengutronix.de>
References: <20250422052635.3423961-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250421_222639_541370_54078429 
X-CRM114-Status: GOOD (  20.88  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 6/9] mci: omap_hsmmc: split out common code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In preparation for calling into the OMAP HSMMC driver at prebootloader
time, separate the driver model bits from the actual hardware driver.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/Makefile            |   2 +-
 drivers/mci/omap_hsmmc.c        | 509 +-----------------------------
 drivers/mci/omap_hsmmc.h        |  17 +
 drivers/mci/omap_hsmmc_common.c | 530 ++++++++++++++++++++++++++++++++
 4 files changed, 553 insertions(+), 505 deletions(-)
 create mode 100644 drivers/mci/omap_hsmmc.h
 create mode 100644 drivers/mci/omap_hsmmc_common.c

diff --git a/drivers/mci/Makefile b/drivers/mci/Makefile
index 8f54107e46c1..b209a86d8873 100644
--- a/drivers/mci/Makefile
+++ b/drivers/mci/Makefile
@@ -15,7 +15,7 @@ obj-$(CONFIG_MCI_IMX)		+= imx.o
 obj-$(CONFIG_MCI_IMX_ESDHC)	+= imx-esdhc.o imx-esdhc-common.o
 pbl-$(CONFIG_MCI_IMX_ESDHC_PBL)	+= imx-esdhc-pbl.o imx-esdhc-common.o
 obj-$(CONFIG_MCI_MXS)		+= mxs.o
-obj-$(CONFIG_MCI_OMAP_HSMMC)	+= omap_hsmmc.o
+obj-$(CONFIG_MCI_OMAP_HSMMC)	+= omap_hsmmc.o omap_hsmmc_common.o
 obj-$(CONFIG_MCI_PXA)		+= pxamci.o
 obj-$(CONFIG_MCI_ROCKCHIP_DWCMSHC)	+= rockchip-dwcmshc-sdhci.o
 obj-$(CONFIG_MCI_TEGRA)		+= tegra-sdmmc.o
diff --git a/drivers/mci/omap_hsmmc.c b/drivers/mci/omap_hsmmc.c
index 7a5135131cda..616d57bffdac 100644
--- a/drivers/mci/omap_hsmmc.c
+++ b/drivers/mci/omap_hsmmc.c
@@ -12,6 +12,8 @@
 #include <io.h>
 #include <linux/err.h>
 
+#include "omap_hsmmc.h"
+
 #include <mach/omap/omap_hsmmc.h>
 
 #if defined(CONFIG_MFD_TWL6030) && \
@@ -20,30 +22,6 @@
 #include <mach/omap/omap4_twl6030_mmc.h>
 #endif
 
-struct hsmmc {
-	unsigned char res1[0x10];
-	unsigned int sysconfig;		/* 0x10 */
-	unsigned int sysstatus;		/* 0x14 */
-	unsigned char res2[0x14];
-	unsigned int con;		/* 0x2C */
-	unsigned char res3[0xD4];
-	unsigned int blk;		/* 0x104 */
-	unsigned int arg;		/* 0x108 */
-	unsigned int cmd;		/* 0x10C */
-	unsigned int rsp10;		/* 0x110 */
-	unsigned int rsp32;		/* 0x114 */
-	unsigned int rsp54;		/* 0x118 */
-	unsigned int rsp76;		/* 0x11C */
-	unsigned int data;		/* 0x120 */
-	unsigned int pstate;		/* 0x124 */
-	unsigned int hctl;		/* 0x128 */
-	unsigned int sysctl;		/* 0x12C */
-	unsigned int stat;		/* 0x130 */
-	unsigned int ie;		/* 0x134 */
-	unsigned char res4[0x8];
-	unsigned int capa;		/* 0x140 */
-};
-
 struct omap_mmc_driver_data {
 	unsigned long reg_ofs;
 };
@@ -56,164 +34,11 @@ static struct omap_mmc_driver_data omap4_data = {
 	.reg_ofs = 0x100,
 };
 
-/*
- * OMAP HS MMC Bit definitions
- */
-#define MMC_SOFTRESET			(0x1 << 1)
-#define RESETDONE			(0x1 << 0)
-#define NOOPENDRAIN			(0x0 << 0)
-#define OPENDRAIN			(0x1 << 0)
-#define OD				(0x1 << 0)
-#define INIT_NOINIT			(0x0 << 1)
-#define INIT_INITSTREAM			(0x1 << 1)
-#define HR_NOHOSTRESP			(0x0 << 2)
-#define STR_BLOCK			(0x0 << 3)
-#define MODE_FUNC			(0x0 << 4)
-#define DW8_1_4BITMODE			(0x0 << 5)
-#define MIT_CTO				(0x0 << 6)
-#define CDP_ACTIVEHIGH			(0x0 << 7)
-#define WPP_ACTIVEHIGH			(0x0 << 8)
-#define RESERVED_MASK			(0x3 << 9)
-#define CTPL_MMC_SD			(0x0 << 11)
-#define BLEN_512BYTESLEN		(0x200 << 0)
-#define NBLK_STPCNT			(0x0 << 16)
-#define DE_DISABLE			(0x0 << 0)
-#define BCE_DISABLE			(0x0 << 1)
-#define BCE_ENABLE			(0x1 << 1)
-#define ACEN_DISABLE			(0x0 << 2)
-#define DDIR_OFFSET			(4)
-#define DDIR_MASK			(0x1 << 4)
-#define DDIR_WRITE			(0x0 << 4)
-#define DDIR_READ			(0x1 << 4)
-#define MSBS_SGLEBLK			(0x0 << 5)
-#define MSBS_MULTIBLK			(0x1 << 5)
-#define RSP_TYPE_OFFSET			(16)
-#define RSP_TYPE_MASK			(0x3 << 16)
-#define RSP_TYPE_NORSP			(0x0 << 16)
-#define RSP_TYPE_LGHT136		(0x1 << 16)
-#define RSP_TYPE_LGHT48			(0x2 << 16)
-#define RSP_TYPE_LGHT48B		(0x3 << 16)
-#define CCCE_NOCHECK			(0x0 << 19)
-#define CCCE_CHECK			(0x1 << 19)
-#define CICE_NOCHECK			(0x0 << 20)
-#define CICE_CHECK			(0x1 << 20)
-#define DP_OFFSET			(21)
-#define DP_MASK				(0x1 << 21)
-#define DP_NO_DATA			(0x0 << 21)
-#define DP_DATA				(0x1 << 21)
-#define CMD_TYPE_NORMAL			(0x0 << 22)
-#define INDEX_OFFSET			(24)
-#define INDEX_MASK			(0x3f << 24)
-#define INDEX(i)			(i << 24)
-#define DATI_MASK			(0x1 << 1)
-#define DATI_CMDDIS			(0x1 << 1)
-#define DTW_1_BITMODE			(0x0 << 1)
-#define DTW_4_BITMODE			(0x1 << 1)
-#define DTW_8_BITMODE                   (0x1 << 5) /* CON[DW8]*/
-#define SDBP_PWROFF			(0x0 << 8)
-#define SDBP_PWRON			(0x1 << 8)
-#define SDVS_1V8			(0x5 << 9)
-#define SDVS_3V0			(0x6 << 9)
-#define ICE_MASK			(0x1 << 0)
-#define ICE_STOP			(0x0 << 0)
-#define ICS_MASK			(0x1 << 1)
-#define ICS_NOTREADY			(0x0 << 1)
-#define ICE_OSCILLATE			(0x1 << 0)
-#define CEN_MASK			(0x1 << 2)
-#define CEN_DISABLE			(0x0 << 2)
-#define CEN_ENABLE			(0x1 << 2)
-#define CLKD_OFFSET			(6)
-#define CLKD_MASK			(0x3FF << 6)
-#define DTO_MASK			(0xF << 16)
-#define DTO_15THDTO			(0xE << 16)
-#define SOFTRESETALL			(0x1 << 24)
-#define CC_MASK				(0x1 << 0)
-#define TC_MASK				(0x1 << 1)
-#define BWR_MASK			(0x1 << 4)
-#define BRR_MASK			(0x1 << 5)
-#define ERRI_MASK			(0x1 << 15)
-#define IE_CC				(0x01 << 0)
-#define IE_TC				(0x01 << 1)
-#define IE_BWR				(0x01 << 4)
-#define IE_BRR				(0x01 << 5)
-#define IE_CTO				(0x01 << 16)
-#define IE_CCRC				(0x01 << 17)
-#define IE_CEB				(0x01 << 18)
-#define IE_CIE				(0x01 << 19)
-#define IE_DTO				(0x01 << 20)
-#define IE_DCRC				(0x01 << 21)
-#define IE_DEB				(0x01 << 22)
-#define IE_CERR				(0x01 << 28)
-#define IE_BADA				(0x01 << 29)
-
-#define VS30_3V0SUP			(1 << 25)
-#define VS18_1V8SUP			(1 << 26)
-
-/* Driver definitions */
-#define MMCSD_SECTOR_SIZE		512
-#define MMC_CARD			0
-#define SD_CARD				1
-#define BYTE_MODE			0
-#define SECTOR_MODE			1
-#define CLK_INITSEQ			0
-#define CLK_400KHZ			1
-#define CLK_MISC			2
-
-#define RSP_TYPE_NONE	(RSP_TYPE_NORSP   | CCCE_NOCHECK | CICE_NOCHECK)
-#define MMC_CMD0	(INDEX(0)  | RSP_TYPE_NONE | DP_NO_DATA | DDIR_WRITE)
-
-/* Clock Configurations and Macros */
-#define MMC_CLOCK_REFERENCE	96 /* MHz */
-
-#define mmc_reg_out(addr, mask, val)\
-	writel((readl(addr) & (~(mask))) | ((val) & (mask)), (addr))
-
-struct omap_hsmmc {
-	struct mci_host		mci;
-	struct device		*dev;
-	struct hsmmc		*base;
-	void __iomem		*iobase;
-};
-
 #define to_hsmmc(mci)	container_of(mci, struct omap_hsmmc, mci)
 
-static int mmc_init_stream(struct omap_hsmmc *hsmmc)
-{
-	uint64_t start;
-	struct hsmmc *mmc_base = hsmmc->base;
-
-	writel(readl(&mmc_base->con) | INIT_INITSTREAM, &mmc_base->con);
-
-	writel(MMC_CMD0, &mmc_base->cmd);
-	start = get_time_ns();
-	while (!(readl(&mmc_base->stat) & CC_MASK)) {
-		if (is_timeout(start, SECOND)) {
-			dev_dbg(hsmmc->dev, "timedout waiting for cc!\n");
-			return -ETIMEDOUT;
-		}
-	}
-	writel(CC_MASK, &mmc_base->stat);
-	writel(MMC_CMD0, &mmc_base->cmd);
-
-	start = get_time_ns();
-	while (!(readl(&mmc_base->stat) & CC_MASK)) {
-		if (is_timeout(start, SECOND)) {
-			dev_dbg(hsmmc->dev, "timedout waiting for cc2!\n");
-			return -ETIMEDOUT;
-		}
-	}
-	writel(readl(&mmc_base->con) & ~INIT_INITSTREAM, &mmc_base->con);
-
-	return 0;
-}
-
 static int mmc_init_setup(struct mci_host *mci, struct device *dev)
 {
 	struct omap_hsmmc *hsmmc = to_hsmmc(mci);
-	struct hsmmc *mmc_base = hsmmc->base;
-	unsigned int reg_val;
-	unsigned int dsor;
-	uint64_t start;
 
 /*
  * Fix voltage for mmc, if booting from nand.
@@ -226,346 +51,22 @@ static int mmc_init_setup(struct mci_host *mci, struct device *dev)
 	set_up_mmc_voltage_omap4();
 #endif
 
-	writel(readl(&mmc_base->sysconfig) | MMC_SOFTRESET,
-		&mmc_base->sysconfig);
-
-	start = get_time_ns();
-	while ((readl(&mmc_base->sysstatus) & RESETDONE) == 0) {
-		if (is_timeout(start, SECOND)) {
-			dev_dbg(hsmmc->dev, "timeout waiting for reset done\n");
-			return -ETIMEDOUT;
-		}
-	}
-
-	writel(readl(&mmc_base->sysctl) | SOFTRESETALL, &mmc_base->sysctl);
-
-	start = get_time_ns();
-	while ((readl(&mmc_base->sysctl) & SOFTRESETALL) != 0x0) {
-		if (is_timeout(start, SECOND)) {
-			dev_dbg(hsmmc->dev, "timedout waiting for softresetall!\n");
-			return -ETIMEDOUT;
-		}
-	}
-
-	writel(DTW_1_BITMODE | SDBP_PWROFF | SDVS_3V0, &mmc_base->hctl);
-	writel(readl(&mmc_base->capa) | VS30_3V0SUP | VS18_1V8SUP,
-		&mmc_base->capa);
-
-	reg_val = readl(&mmc_base->con) & RESERVED_MASK;
-
-	writel(CTPL_MMC_SD | reg_val | WPP_ACTIVEHIGH | CDP_ACTIVEHIGH |
-		MIT_CTO | DW8_1_4BITMODE | MODE_FUNC | STR_BLOCK |
-		HR_NOHOSTRESP | INIT_NOINIT | NOOPENDRAIN, &mmc_base->con);
-
-	dsor = 240;
-	mmc_reg_out(&mmc_base->sysctl, (ICE_MASK | DTO_MASK | CEN_MASK),
-		(ICE_STOP | DTO_15THDTO | CEN_DISABLE));
-	mmc_reg_out(&mmc_base->sysctl, ICE_MASK | CLKD_MASK,
-		(dsor << CLKD_OFFSET) | ICE_OSCILLATE);
-
-	start = get_time_ns();
-	while ((readl(&mmc_base->sysctl) & ICS_MASK) == ICS_NOTREADY) {
-		if (is_timeout(start, SECOND)) {
-			dev_dbg(hsmmc->dev, "timedout waiting for ics!\n");
-			return -ETIMEDOUT;
-		}
-	}
-
-	writel(readl(&mmc_base->sysctl) | CEN_ENABLE, &mmc_base->sysctl);
-
-	writel(readl(&mmc_base->hctl) | SDBP_PWRON, &mmc_base->hctl);
-
-	writel(IE_BADA | IE_CERR | IE_DEB | IE_DCRC | IE_DTO | IE_CIE |
-		IE_CEB | IE_CCRC | IE_CTO | IE_BRR | IE_BWR | IE_TC | IE_CC,
-		&mmc_base->ie);
-
-	return mmc_init_stream(hsmmc);
-}
-
-static int mmc_read_data(struct omap_hsmmc *hsmmc, char *buf, unsigned int size)
-{
-	struct hsmmc *mmc_base = hsmmc->base;
-	unsigned int *output_buf = (unsigned int *)buf;
-	unsigned int mmc_stat;
-	unsigned int count;
-
-	/*
-	 * Start Polled Read
-	 */
-	count = (size > MMCSD_SECTOR_SIZE) ? MMCSD_SECTOR_SIZE : size;
-	count /= 4;
-
-	while (size) {
-		uint64_t start = get_time_ns();
-		do {
-			mmc_stat = readl(&mmc_base->stat);
-			if (is_timeout(start, SECOND)) {
-				dev_err(hsmmc->dev, "timedout waiting for status!\n");
-				return -ETIMEDOUT;
-			}
-		} while (mmc_stat == 0);
-
-		if ((mmc_stat & ERRI_MASK) != 0) {
-			dev_err(hsmmc->dev, "Error while reading data. status: 0x%08x\n",
-				mmc_stat);
-			return -EIO;
-		}
-
-		if (mmc_stat & BRR_MASK) {
-			unsigned int k;
-
-			writel(readl(&mmc_base->stat) | BRR_MASK,
-				&mmc_base->stat);
-			for (k = 0; k < count; k++) {
-				*output_buf = readl(&mmc_base->data);
-				output_buf++;
-			}
-			size -= (count*4);
-		}
-
-		if (mmc_stat & BWR_MASK)
-			writel(readl(&mmc_base->stat) | BWR_MASK,
-				&mmc_base->stat);
-
-		if (mmc_stat & TC_MASK) {
-			writel(readl(&mmc_base->stat) | TC_MASK,
-				&mmc_base->stat);
-			break;
-		}
-	}
-	return 0;
-}
-
-static int mmc_write_data(struct omap_hsmmc *hsmmc, const char *buf, unsigned int size)
-{
-	struct hsmmc *mmc_base = hsmmc->base;
-	unsigned int *input_buf = (unsigned int *)buf;
-	unsigned int mmc_stat;
-	unsigned int count;
-
-	/*
-	 * Start Polled Read
-	 */
-	count = (size > MMCSD_SECTOR_SIZE) ? MMCSD_SECTOR_SIZE : size;
-	count /= 4;
-
-	while (size) {
-		uint64_t start = get_time_ns();
-		do {
-			mmc_stat = readl(&mmc_base->stat);
-			if (is_timeout(start, SECOND)) {
-				dev_dbg(hsmmc->dev, "timedout waiting for status!\n");
-				return -ETIMEDOUT;
-			}
-		} while (mmc_stat == 0);
-
-		if ((mmc_stat & ERRI_MASK) != 0) {
-			dev_err(hsmmc->dev, "Error while reading data. status: 0x%08x\n",
-				mmc_stat);
-			return -EIO;
-		}
-
-		if (mmc_stat & BWR_MASK) {
-			unsigned int k;
-
-			writel(readl(&mmc_base->stat) | BWR_MASK,
-					&mmc_base->stat);
-			for (k = 0; k < count; k++) {
-				writel(*input_buf, &mmc_base->data);
-				input_buf++;
-			}
-			size -= (count * 4);
-		}
-
-		if (mmc_stat & BRR_MASK)
-			writel(readl(&mmc_base->stat) | BRR_MASK,
-				&mmc_base->stat);
-
-		if (mmc_stat & TC_MASK) {
-			writel(readl(&mmc_base->stat) | TC_MASK,
-				&mmc_base->stat);
-			break;
-		}
-	}
-	return 0;
+	return omap_hsmmc_init(hsmmc);
 }
 
 static int mmc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 		struct mci_data *data)
 {
 	struct omap_hsmmc *hsmmc = to_hsmmc(mci);
-	struct hsmmc *mmc_base = hsmmc->base;
-	unsigned int flags, mmc_stat;
-	uint64_t start;
 
-	start = get_time_ns();
-	while ((readl(&mmc_base->pstate) & DATI_MASK) == DATI_CMDDIS) {
-		if (is_timeout(start, SECOND)) {
-			dev_dbg(hsmmc->dev, "timedout waiting for cmddis!\n");
-			return -ETIMEDOUT;
-		}
-	}
-
-	writel(0xFFFFFFFF, &mmc_base->stat);
-	start = get_time_ns();
-	while (readl(&mmc_base->stat)) {
-		if (is_timeout(start, SECOND)) {
-			dev_dbg(hsmmc->dev, "timedout waiting for stat!\n");
-			return -ETIMEDOUT;
-		}
-	}
-
-	/*
-	 * CMDREG
-	 * CMDIDX[13:8]	: Command index
-	 * DATAPRNT[5]	: Data Present Select
-	 * ENCMDIDX[4]	: Command Index Check Enable
-	 * ENCMDCRC[3]	: Command CRC Check Enable
-	 * RSPTYP[1:0]
-	 *	00 = No Response
-	 *	01 = Length 136
-	 *	10 = Length 48
-	 *	11 = Length 48 Check busy after response
-	 */
-	/* Delay added before checking the status of frq change
-	 * retry not supported by mmc.c(core file)
-	 */
-	if (cmd->cmdidx == SD_CMD_APP_SEND_SCR)
-		udelay(50000); /* wait 50 ms */
-
-	if (!(cmd->resp_type & MMC_RSP_PRESENT))
-		flags = 0;
-	else if (cmd->resp_type & MMC_RSP_136)
-		flags = RSP_TYPE_LGHT136 | CICE_NOCHECK;
-	else if (cmd->resp_type & MMC_RSP_BUSY)
-		flags = RSP_TYPE_LGHT48B;
-	else
-		flags = RSP_TYPE_LGHT48;
-
-	/* enable default flags */
-	flags =	flags | (CMD_TYPE_NORMAL | CICE_NOCHECK | CCCE_NOCHECK |
-			MSBS_SGLEBLK | ACEN_DISABLE | BCE_DISABLE | DE_DISABLE);
-
-	if (cmd->resp_type & MMC_RSP_CRC)
-		flags |= CCCE_CHECK;
-	if (cmd->resp_type & MMC_RSP_OPCODE)
-		flags |= CICE_CHECK;
-
-	if (data) {
-		if ((cmd->cmdidx == MMC_CMD_READ_MULTIPLE_BLOCK) ||
-			 (cmd->cmdidx == MMC_CMD_WRITE_MULTIPLE_BLOCK)) {
-			flags |= (MSBS_MULTIBLK | BCE_ENABLE);
-			data->blocksize = 512;
-			writel(data->blocksize | (data->blocks << 16),
-							&mmc_base->blk);
-		} else
-			writel(data->blocksize | NBLK_STPCNT, &mmc_base->blk);
-
-		if (data->flags & MMC_DATA_READ)
-			flags |= (DP_DATA | DDIR_READ);
-		else
-			flags |= (DP_DATA | DDIR_WRITE);
-	}
-
-	writel(cmd->cmdarg, &mmc_base->arg);
-	writel((cmd->cmdidx << 24) | flags, &mmc_base->cmd);
-
-	start = get_time_ns();
-	do {
-		mmc_stat = readl(&mmc_base->stat);
-		if (is_timeout(start, SECOND)) {
-			dev_dbg(hsmmc->dev, "timeout: No status update\n");
-			return -ETIMEDOUT;
-		}
-	} while (!mmc_stat);
-
-	if ((mmc_stat & IE_CTO) != 0)
-		return -ETIMEDOUT;
-	else if ((mmc_stat & ERRI_MASK) != 0)
-		return -1;
-
-	if (mmc_stat & CC_MASK) {
-		writel(CC_MASK, &mmc_base->stat);
-		if (cmd->resp_type & MMC_RSP_PRESENT) {
-			if (cmd->resp_type & MMC_RSP_136) {
-				/* response type 2 */
-				cmd->response[3] = readl(&mmc_base->rsp10);
-				cmd->response[2] = readl(&mmc_base->rsp32);
-				cmd->response[1] = readl(&mmc_base->rsp54);
-				cmd->response[0] = readl(&mmc_base->rsp76);
-			} else
-				/* response types 1, 1b, 3, 4, 5, 6 */
-				cmd->response[0] = readl(&mmc_base->rsp10);
-		}
-	}
-
-	if (!data)
-		return 0;
-
-	if (data->flags & MMC_DATA_READ)
-		return mmc_read_data(hsmmc, data->dest,
-				     data->blocksize * data->blocks);
-
-	if (IS_ENABLED(CONFIG_MCI_WRITE))
-		return mmc_write_data(hsmmc, data->src,
-				      data->blocksize * data->blocks);
-
-	return -ENOSYS;
+	return omap_hsmmc_send_cmd(hsmmc, cmd, data);
 }
 
 static void mmc_set_ios(struct mci_host *mci, struct mci_ios *ios)
 {
 	struct omap_hsmmc *hsmmc = to_hsmmc(mci);
-	struct hsmmc *mmc_base = hsmmc->base;
-	unsigned int dsor = 0;
-	uint64_t start;
 
-	/* configue bus width */
-	switch (ios->bus_width) {
-	case MMC_BUS_WIDTH_8:
-		writel(readl(&mmc_base->con) | DTW_8_BITMODE,
-			&mmc_base->con);
-		break;
-
-	case MMC_BUS_WIDTH_4:
-		writel(readl(&mmc_base->con) & ~DTW_8_BITMODE,
-			&mmc_base->con);
-		writel(readl(&mmc_base->hctl) | DTW_4_BITMODE,
-			&mmc_base->hctl);
-		break;
-
-	case MMC_BUS_WIDTH_1:
-		writel(readl(&mmc_base->con) & ~DTW_8_BITMODE,
-			&mmc_base->con);
-		writel(readl(&mmc_base->hctl) & ~DTW_4_BITMODE,
-			&mmc_base->hctl);
-		break;
-	default:
-		return;
-	}
-
-	/* configure clock with 96Mhz system clock.
-	 */
-	if (ios->clock != 0) {
-		dsor = (MMC_CLOCK_REFERENCE * 1000000 / ios->clock);
-		if ((MMC_CLOCK_REFERENCE * 1000000) / dsor > ios->clock)
-			dsor++;
-	}
-
-	mmc_reg_out(&mmc_base->sysctl, (ICE_MASK | DTO_MASK | CEN_MASK),
-				(ICE_STOP | DTO_15THDTO | CEN_DISABLE));
-
-	mmc_reg_out(&mmc_base->sysctl, ICE_MASK | CLKD_MASK,
-				(dsor << CLKD_OFFSET) | ICE_OSCILLATE);
-
-	start = get_time_ns();
-	while ((readl(&mmc_base->sysctl) & ICS_MASK) == ICS_NOTREADY) {
-		if (is_timeout(start, SECOND)) {
-			dev_dbg(hsmmc->dev, "timedout waiting for ics!\n");
-			return;
-		}
-	}
-	writel(readl(&mmc_base->sysctl) | CEN_ENABLE, &mmc_base->sysctl);
+	return omap_hsmmc_set_ios(hsmmc, ios);
 }
 
 static const struct mci_ops omap_mmc_ops = {
diff --git a/drivers/mci/omap_hsmmc.h b/drivers/mci/omap_hsmmc.h
new file mode 100644
index 000000000000..2de3f8f31d8c
--- /dev/null
+++ b/drivers/mci/omap_hsmmc.h
@@ -0,0 +1,17 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <mci.h>
+
+struct omap_hsmmc {
+	struct mci_host		mci;
+	struct device		*dev;
+	struct hsmmc		*base;
+	void __iomem		*iobase;
+};
+
+int omap_hsmmc_init(struct omap_hsmmc *hsmmc);
+
+int omap_hsmmc_send_cmd(struct omap_hsmmc *hsmmc, struct mci_cmd *cmd,
+			struct mci_data *data);
+
+void omap_hsmmc_set_ios(struct omap_hsmmc *hsmmc, struct mci_ios *ios);
diff --git a/drivers/mci/omap_hsmmc_common.c b/drivers/mci/omap_hsmmc_common.c
new file mode 100644
index 000000000000..04c712460622
--- /dev/null
+++ b/drivers/mci/omap_hsmmc_common.c
@@ -0,0 +1,530 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// SPDX-FileCopyrightText: 2008 Texas Instruments (http://www.ti.com/, Sukumar Ghorai <s-ghorai@ti.com>)
+
+/* #define DEBUG */
+#include <config.h>
+#include <common.h>
+#include <init.h>
+#include <driver.h>
+#include <mci.h>
+#include <clock.h>
+#include <errno.h>
+#include <io.h>
+#include <linux/err.h>
+
+#include "omap_hsmmc.h"
+
+struct hsmmc {
+	unsigned char res1[0x10];
+	unsigned int sysconfig;		/* 0x10 */
+	unsigned int sysstatus;		/* 0x14 */
+	unsigned char res2[0x14];
+	unsigned int con;		/* 0x2C */
+	unsigned char res3[0xD4];
+	unsigned int blk;		/* 0x104 */
+	unsigned int arg;		/* 0x108 */
+	unsigned int cmd;		/* 0x10C */
+	unsigned int rsp10;		/* 0x110 */
+	unsigned int rsp32;		/* 0x114 */
+	unsigned int rsp54;		/* 0x118 */
+	unsigned int rsp76;		/* 0x11C */
+	unsigned int data;		/* 0x120 */
+	unsigned int pstate;		/* 0x124 */
+	unsigned int hctl;		/* 0x128 */
+	unsigned int sysctl;		/* 0x12C */
+	unsigned int stat;		/* 0x130 */
+	unsigned int ie;		/* 0x134 */
+	unsigned char res4[0x8];
+	unsigned int capa;		/* 0x140 */
+};
+
+/*
+ * OMAP HS MMC Bit definitions
+ */
+#define MMC_SOFTRESET			(0x1 << 1)
+#define RESETDONE			(0x1 << 0)
+#define NOOPENDRAIN			(0x0 << 0)
+#define OPENDRAIN			(0x1 << 0)
+#define OD				(0x1 << 0)
+#define INIT_NOINIT			(0x0 << 1)
+#define INIT_INITSTREAM			(0x1 << 1)
+#define HR_NOHOSTRESP			(0x0 << 2)
+#define STR_BLOCK			(0x0 << 3)
+#define MODE_FUNC			(0x0 << 4)
+#define DW8_1_4BITMODE			(0x0 << 5)
+#define MIT_CTO				(0x0 << 6)
+#define CDP_ACTIVEHIGH			(0x0 << 7)
+#define WPP_ACTIVEHIGH			(0x0 << 8)
+#define RESERVED_MASK			(0x3 << 9)
+#define CTPL_MMC_SD			(0x0 << 11)
+#define BLEN_512BYTESLEN		(0x200 << 0)
+#define NBLK_STPCNT			(0x0 << 16)
+#define DE_DISABLE			(0x0 << 0)
+#define BCE_DISABLE			(0x0 << 1)
+#define BCE_ENABLE			(0x1 << 1)
+#define ACEN_DISABLE			(0x0 << 2)
+#define DDIR_OFFSET			(4)
+#define DDIR_MASK			(0x1 << 4)
+#define DDIR_WRITE			(0x0 << 4)
+#define DDIR_READ			(0x1 << 4)
+#define MSBS_SGLEBLK			(0x0 << 5)
+#define MSBS_MULTIBLK			(0x1 << 5)
+#define RSP_TYPE_OFFSET			(16)
+#define RSP_TYPE_MASK			(0x3 << 16)
+#define RSP_TYPE_NORSP			(0x0 << 16)
+#define RSP_TYPE_LGHT136		(0x1 << 16)
+#define RSP_TYPE_LGHT48			(0x2 << 16)
+#define RSP_TYPE_LGHT48B		(0x3 << 16)
+#define CCCE_NOCHECK			(0x0 << 19)
+#define CCCE_CHECK			(0x1 << 19)
+#define CICE_NOCHECK			(0x0 << 20)
+#define CICE_CHECK			(0x1 << 20)
+#define DP_OFFSET			(21)
+#define DP_MASK				(0x1 << 21)
+#define DP_NO_DATA			(0x0 << 21)
+#define DP_DATA				(0x1 << 21)
+#define CMD_TYPE_NORMAL			(0x0 << 22)
+#define INDEX_OFFSET			(24)
+#define INDEX_MASK			(0x3f << 24)
+#define INDEX(i)			(i << 24)
+#define DATI_MASK			(0x1 << 1)
+#define DATI_CMDDIS			(0x1 << 1)
+#define DTW_1_BITMODE			(0x0 << 1)
+#define DTW_4_BITMODE			(0x1 << 1)
+#define DTW_8_BITMODE                   (0x1 << 5) /* CON[DW8]*/
+#define SDBP_PWROFF			(0x0 << 8)
+#define SDBP_PWRON			(0x1 << 8)
+#define SDVS_1V8			(0x5 << 9)
+#define SDVS_3V0			(0x6 << 9)
+#define ICE_MASK			(0x1 << 0)
+#define ICE_STOP			(0x0 << 0)
+#define ICS_MASK			(0x1 << 1)
+#define ICS_NOTREADY			(0x0 << 1)
+#define ICE_OSCILLATE			(0x1 << 0)
+#define CEN_MASK			(0x1 << 2)
+#define CEN_DISABLE			(0x0 << 2)
+#define CEN_ENABLE			(0x1 << 2)
+#define CLKD_OFFSET			(6)
+#define CLKD_MASK			(0x3FF << 6)
+#define DTO_MASK			(0xF << 16)
+#define DTO_15THDTO			(0xE << 16)
+#define SOFTRESETALL			(0x1 << 24)
+#define CC_MASK				(0x1 << 0)
+#define TC_MASK				(0x1 << 1)
+#define BWR_MASK			(0x1 << 4)
+#define BRR_MASK			(0x1 << 5)
+#define ERRI_MASK			(0x1 << 15)
+#define IE_CC				(0x01 << 0)
+#define IE_TC				(0x01 << 1)
+#define IE_BWR				(0x01 << 4)
+#define IE_BRR				(0x01 << 5)
+#define IE_CTO				(0x01 << 16)
+#define IE_CCRC				(0x01 << 17)
+#define IE_CEB				(0x01 << 18)
+#define IE_CIE				(0x01 << 19)
+#define IE_DTO				(0x01 << 20)
+#define IE_DCRC				(0x01 << 21)
+#define IE_DEB				(0x01 << 22)
+#define IE_CERR				(0x01 << 28)
+#define IE_BADA				(0x01 << 29)
+
+#define VS30_3V0SUP			(1 << 25)
+#define VS18_1V8SUP			(1 << 26)
+
+/* Driver definitions */
+#define MMCSD_SECTOR_SIZE		512
+#define MMC_CARD			0
+#define SD_CARD				1
+#define BYTE_MODE			0
+#define SECTOR_MODE			1
+#define CLK_INITSEQ			0
+#define CLK_400KHZ			1
+#define CLK_MISC			2
+
+#define RSP_TYPE_NONE	(RSP_TYPE_NORSP   | CCCE_NOCHECK | CICE_NOCHECK)
+#define MMC_CMD0	(INDEX(0)  | RSP_TYPE_NONE | DP_NO_DATA | DDIR_WRITE)
+
+/* Clock Configurations and Macros */
+#define MMC_CLOCK_REFERENCE	96 /* MHz */
+
+#define mmc_reg_out(addr, mask, val)\
+	writel((readl(addr) & (~(mask))) | ((val) & (mask)), (addr))
+
+#define to_hsmmc(mci)	container_of(mci, struct omap_hsmmc, mci)
+
+static int mmc_init_stream(struct omap_hsmmc *hsmmc)
+{
+	uint64_t start;
+	struct hsmmc *mmc_base = hsmmc->base;
+
+	writel(readl(&mmc_base->con) | INIT_INITSTREAM, &mmc_base->con);
+
+	writel(MMC_CMD0, &mmc_base->cmd);
+	start = get_time_ns();
+	while (!(readl(&mmc_base->stat) & CC_MASK)) {
+		if (is_timeout(start, SECOND)) {
+			dev_dbg(hsmmc->dev, "timedout waiting for cc!\n");
+			return -ETIMEDOUT;
+		}
+	}
+	writel(CC_MASK, &mmc_base->stat);
+	writel(MMC_CMD0, &mmc_base->cmd);
+
+	start = get_time_ns();
+	while (!(readl(&mmc_base->stat) & CC_MASK)) {
+		if (is_timeout(start, SECOND)) {
+			dev_dbg(hsmmc->dev, "timedout waiting for cc2!\n");
+			return -ETIMEDOUT;
+		}
+	}
+	writel(readl(&mmc_base->con) & ~INIT_INITSTREAM, &mmc_base->con);
+
+	return 0;
+}
+
+int omap_hsmmc_init(struct omap_hsmmc *hsmmc)
+{
+	struct hsmmc *mmc_base = hsmmc->base;
+	unsigned int reg_val;
+	unsigned int dsor;
+	uint64_t start;
+
+	writel(readl(&mmc_base->sysconfig) | MMC_SOFTRESET,
+		&mmc_base->sysconfig);
+
+	start = get_time_ns();
+	while ((readl(&mmc_base->sysstatus) & RESETDONE) == 0) {
+		if (is_timeout(start, SECOND)) {
+			dev_dbg(hsmmc->dev, "timeout waiting for reset done\n");
+			return -ETIMEDOUT;
+		}
+	}
+
+	writel(readl(&mmc_base->sysctl) | SOFTRESETALL, &mmc_base->sysctl);
+
+	start = get_time_ns();
+	while ((readl(&mmc_base->sysctl) & SOFTRESETALL) != 0x0) {
+		if (is_timeout(start, SECOND)) {
+			dev_dbg(hsmmc->dev, "timedout waiting for softresetall!\n");
+			return -ETIMEDOUT;
+		}
+	}
+
+	writel(DTW_1_BITMODE | SDBP_PWROFF | SDVS_3V0, &mmc_base->hctl);
+	writel(readl(&mmc_base->capa) | VS30_3V0SUP | VS18_1V8SUP,
+		&mmc_base->capa);
+
+	reg_val = readl(&mmc_base->con) & RESERVED_MASK;
+
+	writel(CTPL_MMC_SD | reg_val | WPP_ACTIVEHIGH | CDP_ACTIVEHIGH |
+		MIT_CTO | DW8_1_4BITMODE | MODE_FUNC | STR_BLOCK |
+		HR_NOHOSTRESP | INIT_NOINIT | NOOPENDRAIN, &mmc_base->con);
+
+	dsor = 240;
+	mmc_reg_out(&mmc_base->sysctl, (ICE_MASK | DTO_MASK | CEN_MASK),
+		(ICE_STOP | DTO_15THDTO | CEN_DISABLE));
+	mmc_reg_out(&mmc_base->sysctl, ICE_MASK | CLKD_MASK,
+		(dsor << CLKD_OFFSET) | ICE_OSCILLATE);
+
+	start = get_time_ns();
+	while ((readl(&mmc_base->sysctl) & ICS_MASK) == ICS_NOTREADY) {
+		if (is_timeout(start, SECOND)) {
+			dev_dbg(hsmmc->dev, "timedout waiting for ics!\n");
+			return -ETIMEDOUT;
+		}
+	}
+
+	writel(readl(&mmc_base->sysctl) | CEN_ENABLE, &mmc_base->sysctl);
+
+	writel(readl(&mmc_base->hctl) | SDBP_PWRON, &mmc_base->hctl);
+
+	writel(IE_BADA | IE_CERR | IE_DEB | IE_DCRC | IE_DTO | IE_CIE |
+		IE_CEB | IE_CCRC | IE_CTO | IE_BRR | IE_BWR | IE_TC | IE_CC,
+		&mmc_base->ie);
+
+	return mmc_init_stream(hsmmc);
+}
+
+static int mmc_read_data(struct omap_hsmmc *hsmmc, char *buf, unsigned int size)
+{
+	struct hsmmc *mmc_base = hsmmc->base;
+	unsigned int *output_buf = (unsigned int *)buf;
+	unsigned int mmc_stat;
+	unsigned int count;
+
+	/*
+	 * Start Polled Read
+	 */
+	count = (size > MMCSD_SECTOR_SIZE) ? MMCSD_SECTOR_SIZE : size;
+	count /= 4;
+
+	while (size) {
+		uint64_t start = get_time_ns();
+		do {
+			mmc_stat = readl(&mmc_base->stat);
+			if (is_timeout(start, SECOND)) {
+				dev_err(hsmmc->dev, "timedout waiting for status!\n");
+				return -ETIMEDOUT;
+			}
+		} while (mmc_stat == 0);
+
+		if ((mmc_stat & ERRI_MASK) != 0) {
+			dev_err(hsmmc->dev, "Error while reading data. status: 0x%08x\n",
+				mmc_stat);
+			return -EIO;
+		}
+
+		if (mmc_stat & BRR_MASK) {
+			unsigned int k;
+
+			writel(readl(&mmc_base->stat) | BRR_MASK,
+				&mmc_base->stat);
+			for (k = 0; k < count; k++) {
+				*output_buf = readl(&mmc_base->data);
+				output_buf++;
+			}
+			size -= (count*4);
+		}
+
+		if (mmc_stat & BWR_MASK)
+			writel(readl(&mmc_base->stat) | BWR_MASK,
+				&mmc_base->stat);
+
+		if (mmc_stat & TC_MASK) {
+			writel(readl(&mmc_base->stat) | TC_MASK,
+				&mmc_base->stat);
+			break;
+		}
+	}
+	return 0;
+}
+
+static int mmc_write_data(struct omap_hsmmc *hsmmc, const char *buf, unsigned int size)
+{
+	struct hsmmc *mmc_base = hsmmc->base;
+	unsigned int *input_buf = (unsigned int *)buf;
+	unsigned int mmc_stat;
+	unsigned int count;
+
+	/*
+	 * Start Polled Read
+	 */
+	count = (size > MMCSD_SECTOR_SIZE) ? MMCSD_SECTOR_SIZE : size;
+	count /= 4;
+
+	while (size) {
+		uint64_t start = get_time_ns();
+		do {
+			mmc_stat = readl(&mmc_base->stat);
+			if (is_timeout(start, SECOND)) {
+				dev_dbg(hsmmc->dev, "timedout waiting for status!\n");
+				return -ETIMEDOUT;
+			}
+		} while (mmc_stat == 0);
+
+		if ((mmc_stat & ERRI_MASK) != 0) {
+			dev_err(hsmmc->dev, "Error while reading data. status: 0x%08x\n",
+				mmc_stat);
+			return -EIO;
+		}
+
+		if (mmc_stat & BWR_MASK) {
+			unsigned int k;
+
+			writel(readl(&mmc_base->stat) | BWR_MASK,
+					&mmc_base->stat);
+			for (k = 0; k < count; k++) {
+				writel(*input_buf, &mmc_base->data);
+				input_buf++;
+			}
+			size -= (count * 4);
+		}
+
+		if (mmc_stat & BRR_MASK)
+			writel(readl(&mmc_base->stat) | BRR_MASK,
+				&mmc_base->stat);
+
+		if (mmc_stat & TC_MASK) {
+			writel(readl(&mmc_base->stat) | TC_MASK,
+				&mmc_base->stat);
+			break;
+		}
+	}
+	return 0;
+}
+
+int omap_hsmmc_send_cmd(struct omap_hsmmc *hsmmc, struct mci_cmd *cmd,
+			struct mci_data *data)
+{
+	struct hsmmc *mmc_base = hsmmc->base;
+	unsigned int flags, mmc_stat;
+	uint64_t start;
+
+	start = get_time_ns();
+	while ((readl(&mmc_base->pstate) & DATI_MASK) == DATI_CMDDIS) {
+		if (is_timeout(start, SECOND)) {
+			dev_dbg(hsmmc->dev, "timedout waiting for cmddis!\n");
+			return -ETIMEDOUT;
+		}
+	}
+
+	writel(0xFFFFFFFF, &mmc_base->stat);
+	start = get_time_ns();
+	while (readl(&mmc_base->stat)) {
+		if (is_timeout(start, SECOND)) {
+			dev_dbg(hsmmc->dev, "timedout waiting for stat!\n");
+			return -ETIMEDOUT;
+		}
+	}
+
+	/*
+	 * CMDREG
+	 * CMDIDX[13:8]	: Command index
+	 * DATAPRNT[5]	: Data Present Select
+	 * ENCMDIDX[4]	: Command Index Check Enable
+	 * ENCMDCRC[3]	: Command CRC Check Enable
+	 * RSPTYP[1:0]
+	 *	00 = No Response
+	 *	01 = Length 136
+	 *	10 = Length 48
+	 *	11 = Length 48 Check busy after response
+	 */
+	/* Delay added before checking the status of frq change
+	 * retry not supported by mmc.c(core file)
+	 */
+	if (cmd->cmdidx == SD_CMD_APP_SEND_SCR)
+		udelay(50000); /* wait 50 ms */
+
+	if (!(cmd->resp_type & MMC_RSP_PRESENT))
+		flags = 0;
+	else if (cmd->resp_type & MMC_RSP_136)
+		flags = RSP_TYPE_LGHT136 | CICE_NOCHECK;
+	else if (cmd->resp_type & MMC_RSP_BUSY)
+		flags = RSP_TYPE_LGHT48B;
+	else
+		flags = RSP_TYPE_LGHT48;
+
+	/* enable default flags */
+	flags =	flags | (CMD_TYPE_NORMAL | CICE_NOCHECK | CCCE_NOCHECK |
+			MSBS_SGLEBLK | ACEN_DISABLE | BCE_DISABLE | DE_DISABLE);
+
+	if (cmd->resp_type & MMC_RSP_CRC)
+		flags |= CCCE_CHECK;
+	if (cmd->resp_type & MMC_RSP_OPCODE)
+		flags |= CICE_CHECK;
+
+	if (data) {
+		if ((cmd->cmdidx == MMC_CMD_READ_MULTIPLE_BLOCK) ||
+			 (cmd->cmdidx == MMC_CMD_WRITE_MULTIPLE_BLOCK)) {
+			flags |= (MSBS_MULTIBLK | BCE_ENABLE);
+			data->blocksize = 512;
+			writel(data->blocksize | (data->blocks << 16),
+							&mmc_base->blk);
+		} else
+			writel(data->blocksize | NBLK_STPCNT, &mmc_base->blk);
+
+		if (data->flags & MMC_DATA_READ)
+			flags |= (DP_DATA | DDIR_READ);
+		else
+			flags |= (DP_DATA | DDIR_WRITE);
+	}
+
+	writel(cmd->cmdarg, &mmc_base->arg);
+	writel((cmd->cmdidx << 24) | flags, &mmc_base->cmd);
+
+	start = get_time_ns();
+	do {
+		mmc_stat = readl(&mmc_base->stat);
+		if (is_timeout(start, SECOND)) {
+			dev_dbg(hsmmc->dev, "timeout: No status update\n");
+			return -ETIMEDOUT;
+		}
+	} while (!mmc_stat);
+
+	if ((mmc_stat & IE_CTO) != 0)
+		return -ETIMEDOUT;
+	else if ((mmc_stat & ERRI_MASK) != 0)
+		return -1;
+
+	if (mmc_stat & CC_MASK) {
+		writel(CC_MASK, &mmc_base->stat);
+		if (cmd->resp_type & MMC_RSP_PRESENT) {
+			if (cmd->resp_type & MMC_RSP_136) {
+				/* response type 2 */
+				cmd->response[3] = readl(&mmc_base->rsp10);
+				cmd->response[2] = readl(&mmc_base->rsp32);
+				cmd->response[1] = readl(&mmc_base->rsp54);
+				cmd->response[0] = readl(&mmc_base->rsp76);
+			} else
+				/* response types 1, 1b, 3, 4, 5, 6 */
+				cmd->response[0] = readl(&mmc_base->rsp10);
+		}
+	}
+
+	if (!data)
+		return 0;
+
+	if (data->flags & MMC_DATA_READ)
+		return mmc_read_data(hsmmc, data->dest,
+				     data->blocksize * data->blocks);
+
+	if (IS_ENABLED(CONFIG_MCI_WRITE))
+		return mmc_write_data(hsmmc, data->src,
+				      data->blocksize * data->blocks);
+
+	return -ENOSYS;
+}
+
+void omap_hsmmc_set_ios(struct omap_hsmmc *hsmmc, struct mci_ios *ios)
+{
+	struct hsmmc *mmc_base = hsmmc->base;
+	unsigned int dsor = 0;
+	uint64_t start;
+
+	/* configue bus width */
+	switch (ios->bus_width) {
+	case MMC_BUS_WIDTH_8:
+		writel(readl(&mmc_base->con) | DTW_8_BITMODE,
+			&mmc_base->con);
+		break;
+
+	case MMC_BUS_WIDTH_4:
+		writel(readl(&mmc_base->con) & ~DTW_8_BITMODE,
+			&mmc_base->con);
+		writel(readl(&mmc_base->hctl) | DTW_4_BITMODE,
+			&mmc_base->hctl);
+		break;
+
+	case MMC_BUS_WIDTH_1:
+		writel(readl(&mmc_base->con) & ~DTW_8_BITMODE,
+			&mmc_base->con);
+		writel(readl(&mmc_base->hctl) & ~DTW_4_BITMODE,
+			&mmc_base->hctl);
+		break;
+	default:
+		return;
+	}
+
+	/* configure clock with 96Mhz system clock.
+	 */
+	if (ios->clock != 0) {
+		dsor = (MMC_CLOCK_REFERENCE * 1000000 / ios->clock);
+		if ((MMC_CLOCK_REFERENCE * 1000000) / dsor > ios->clock)
+			dsor++;
+	}
+
+	mmc_reg_out(&mmc_base->sysctl, (ICE_MASK | DTO_MASK | CEN_MASK),
+				(ICE_STOP | DTO_15THDTO | CEN_DISABLE));
+
+	mmc_reg_out(&mmc_base->sysctl, ICE_MASK | CLKD_MASK,
+				(dsor << CLKD_OFFSET) | ICE_OSCILLATE);
+
+	start = get_time_ns();
+	while ((readl(&mmc_base->sysctl) & ICS_MASK) == ICS_NOTREADY) {
+		if (is_timeout(start, SECOND)) {
+			dev_dbg(hsmmc->dev, "timedout waiting for ics!\n");
+			return;
+		}
+	}
+	writel(readl(&mmc_base->sysctl) | CEN_ENABLE, &mmc_base->sysctl);
+}
-- 
2.39.5



