Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo2.mail-out.ovh.net ([188.165.53.149]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tyl3o-0007pl-76
 for barebox@lists.infradead.org; Fri, 25 Jan 2013 15:19:32 +0000
Received: from mail436.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 15D6CDC1D02
 for <barebox@lists.infradead.org>; Fri, 25 Jan 2013 16:29:08 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 25 Jan 2013 16:17:45 +0100
Message-Id: <1359127067-30079-12-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1359127067-30079-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130125151448.GD26329@game.jcrosoft.org>
 <1359127067-30079-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 12/14] atmel_mci: update the SD/SDIO Card Register at request
 time
To: barebox@lists.infradead.org

as we need to reset the IP

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/mci/atmel_mci.c |   16 +++++++++++-----
 1 file changed, 11 insertions(+), 5 deletions(-)

diff --git a/drivers/mci/atmel_mci.c b/drivers/mci/atmel_mci.c
index 3f24217..8ad0e8a 100644
--- a/drivers/mci/atmel_mci.c
+++ b/drivers/mci/atmel_mci.c
@@ -51,6 +51,7 @@ struct atmel_mci {
 	unsigned long		bus_hz;
 	u32			mode_reg;
 	u32			cfg_reg;
+	u32			sdc_reg;
 	bool			need_reset;
 };
 
@@ -382,21 +383,20 @@ static void atmci_set_ios(struct mci_host *mci, struct mci_ios *ios)
 	dev_dbg(host->hw_dev, "atmel_mci_set_ios: bus_width=%d clk=%d\n",
 		ios->bus_width, ios->clock);
 
+	host->sdc_reg &= ~ATMCI_SDCBUS_MASK;
 	switch (ios->bus_width) {
 	case MMC_BUS_WIDTH_4:
-		atmci_writel(host, ATMCI_SDCR, ATMCI_SDCBUS_4BIT);
+		host->sdc_reg |= ATMCI_SDCBUS_4BIT;
 		break;
 	case MMC_BUS_WIDTH_8:
-		atmci_writel(host, ATMCI_SDCR, ATMCI_SDCBUS_8BIT);
+		host->sdc_reg |= ATMCI_SDCBUS_8BIT;
 		break;
 	case MMC_BUS_WIDTH_1:
-		atmci_writel(host, ATMCI_SDCR, ATMCI_SDCBUS_1BIT);
+		host->sdc_reg |= ATMCI_SDCBUS_1BIT;
 		break;
 	default:
 		return;
 	}
-	atmci_writel(host, ATMCI_SDCR, atmci_readl(host, ATMCI_SDCR)
-		| host->slot_b);
 
 	if (ios->clock) {
 		atmci_set_clk_rate(host, ios->clock);
@@ -437,6 +437,7 @@ static int atmci_request(struct mci_host *mci, struct mci_cmd *cmd, struct mci_d
 			atmci_writel(host, ATMCI_CFG, host->cfg_reg);
 		host->need_reset = false;
 	}
+	atmci_writel(host, ATMCI_SDCR, host->sdc_reg);
 
 	if (cmd->resp_type != MMC_RSP_NONE)
 		cmdat |= ATMCI_CMDR_MAXLAT_64CYC;
@@ -571,6 +572,11 @@ static int atmci_probe(struct device_d *hw_dev)
 	if (host->caps.has_highspeed)
 		host->mci.host_caps |= MMC_MODE_HS;
 
+	if (host->slot_b)
+		host->sdc_reg = ATMCI_SDCSEL_SLOT_B;
+	else
+		host->sdc_reg = ATMCI_SDCSEL_SLOT_A;
+
 	mci_register(&host->mci);
 
 	return 0;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
