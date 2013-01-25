Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo2.mail-out.ovh.net ([188.165.52.147]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tyl3m-0007pc-Uz
 for barebox@lists.infradead.org; Fri, 25 Jan 2013 15:19:29 +0000
Received: from mail436.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 00B00DC1CE8
 for <barebox@lists.infradead.org>; Fri, 25 Jan 2013 16:29:07 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 25 Jan 2013 16:17:44 +0100
Message-Id: <1359127067-30079-11-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 11/14] atmel_mci: support the SD highspeed since IP version
 0x300
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/mci/atmel_mci.c |   24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/drivers/mci/atmel_mci.c b/drivers/mci/atmel_mci.c
index 53df2e3..3f24217 100644
--- a/drivers/mci/atmel_mci.c
+++ b/drivers/mci/atmel_mci.c
@@ -28,6 +28,8 @@
 #include "atmel-mci-regs.h"
 
 struct atmel_mci_caps {
+	bool	has_cfg_reg;
+	bool	has_highspeed;
 	bool    has_rwproof;
 	bool	has_odd_clk_div;
 	bool	need_reset_after_xfer;
@@ -48,6 +50,7 @@ struct atmel_mci {
 
 	unsigned long		bus_hz;
 	u32			mode_reg;
+	u32			cfg_reg;
 	bool			need_reset;
 };
 
@@ -71,6 +74,8 @@ static void atmci_set_clk_rate(struct atmel_mci *host,
 	if (!host->mode_reg) {
 		clk_enable(host->clk);
 		atmci_writel(host, ATMCI_CR, ATMCI_CR_MCIEN);
+		if (host->caps.has_cfg_reg)
+			atmci_writel(host, ATMCI_CFG, host->cfg_reg);
 	}
 
 	if (host->caps.has_odd_clk_div) {
@@ -395,6 +400,16 @@ static void atmci_set_ios(struct mci_host *mci, struct mci_ios *ios)
 
 	if (ios->clock) {
 		atmci_set_clk_rate(host, ios->clock);
+
+		if (host->caps.has_cfg_reg) {
+			/* setup High Speed mode in relation with card capacity */
+			if (ios->timing == MMC_TIMING_SD_HS)
+				host->cfg_reg |= ATMCI_CFG_HSMODE;
+			else
+				host->cfg_reg &= ~ATMCI_CFG_HSMODE;
+
+			atmci_writel(host, ATMCI_CFG, host->cfg_reg);
+		}
 	} else {
 		atmci_writel(host, ATMCI_CR, ATMCI_CR_MCIDIS);
 		if (host->mode_reg) {
@@ -418,6 +433,8 @@ static int atmci_request(struct mci_host *mci, struct mci_cmd *cmd, struct mci_d
 		atmci_writel(host, ATMCI_CR, ATMCI_CR_SWRST);
 		atmci_writel(host, ATMCI_CR, ATMCI_CR_MCIEN);
 		atmci_writel(host, ATMCI_MR, host->mode_reg);
+		if (host->caps.has_cfg_reg)
+			atmci_writel(host, ATMCI_CFG, host->cfg_reg);
 		host->need_reset = false;
 	}
 
@@ -481,6 +498,8 @@ static void atmci_get_cap(struct atmel_mci *host)
 
 	dev_info(host->hw_dev, "version: 0x%x\n", version);
 
+	host->caps.has_cfg_reg = 0;
+	host->caps.has_highspeed = 0;
 	host->caps.need_reset_after_xfer = 1;
 
 	switch (version & 0xf00) {
@@ -488,6 +507,8 @@ static void atmci_get_cap(struct atmel_mci *host)
 		host->caps.has_odd_clk_div = 1;
 	case 0x400:
 	case 0x300:
+		host->caps.has_cfg_reg = 1;
+		host->caps.has_highspeed = 1;
 	case 0x200:
 		host->caps.has_rwproof = 1;
 	case 0x100:
@@ -547,6 +568,9 @@ static int atmci_probe(struct device_d *hw_dev)
 
 	atmci_get_cap(host);
 
+	if (host->caps.has_highspeed)
+		host->mci.host_caps |= MMC_MODE_HS;
+
 	mci_register(&host->mci);
 
 	return 0;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
