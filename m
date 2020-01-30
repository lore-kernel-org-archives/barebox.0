Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixDFO-0007vi-7L
 for barebox@lists.infradead.org; Thu, 30 Jan 2020 17:04:56 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 30 Jan 2020 18:04:48 +0100
Message-Id: <20200130170449.9761-5-a.fatoum@pengutronix.de>
In-Reply-To: <20200130170449.9761-1-a.fatoum@pengutronix.de>
References: <20200130170449.9761-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 4/5] mci: stm32_sdmmc2: compare ios ->bus_width with correct
 constants
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>, Ahmad Fatoum <a.fatoum@pengutronix.de>

MMC_BUS_WIDTH_4 != 4 && MMC_BUS_WIDTH_8 != 8.

This enables driver support for 4-bit SD-Cards and 8-bit MMCs,
which before was disabled because of CRC errors:

  ERROR: error SDMMC_STA_DCRCFAIL (0x81042) for cmd 18
  ERROR: stm32_sdmmc2_end_cmd: error SDMMC_STA_CTIMEOUT (0x4) for cmd 12

These happened because the card was correctly instructed to use the new
bus width, but the controller wasn't.

Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Fixes: ce99d0c86b32ec ("mci: add support for stm32mp sd/mmc controller")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/stm32_sdmmc2.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/mci/stm32_sdmmc2.c b/drivers/mci/stm32_sdmmc2.c
index 7f22a90668e4..fdd0e7858f9e 100644
--- a/drivers/mci/stm32_sdmmc2.c
+++ b/drivers/mci/stm32_sdmmc2.c
@@ -574,9 +574,9 @@ static void stm32_sdmmc2_set_ios(struct mci_host *mci, struct mci_ios *ios)
 			clk = SDMMC_CLKCR_CLKDIV_MAX;
 	}
 
-	if (mci->bus_width == 4)
+	if (mci->bus_width == MMC_BUS_WIDTH_4)
 		clk |= SDMMC_CLKCR_WIDBUS_4;
-	if (mci->bus_width == 8)
+	if (mci->bus_width == MMC_BUS_WIDTH_8)
 		clk |= SDMMC_CLKCR_WIDBUS_8;
 
 	writel(clk | priv->clk_reg_msk | SDMMC_CLKCR_HWFC_EN,
@@ -631,11 +631,6 @@ static int stm32_sdmmc2_probe(struct amba_device *adev,
 
 	mci_of_parse(&priv->mci);
 
-	if (mci->host_caps & (MMC_CAP_4_BIT_DATA | MMC_CAP_8_BIT_DATA)) {
-		dev_notice(dev, "Fixing bus-width to 1 due to driver limitation\n");
-		mci->host_caps &= ~(MMC_CAP_4_BIT_DATA | MMC_CAP_8_BIT_DATA);
-	}
-
 	return mci_register(&priv->mci);
 
 priv_free:
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
