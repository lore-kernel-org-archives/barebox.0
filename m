Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo2.mail-out.ovh.net ([178.32.228.2])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tyl3m-0007oc-8T
 for barebox@lists.infradead.org; Fri, 25 Jan 2013 15:19:25 +0000
Received: from mail436.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id EE0BDDC1CFE
 for <barebox@lists.infradead.org>; Fri, 25 Jan 2013 16:29:05 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 25 Jan 2013 16:17:40 +0100
Message-Id: <1359127067-30079-7-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 07/14] atmel_mci: fix host init
To: barebox@lists.infradead.org

disable interrupt and reset the IP at the probe
set timout at the host init

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/mci/atmel_mci.c |   14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/mci/atmel_mci.c b/drivers/mci/atmel_mci.c
index 72d92dc..d5fdd1d 100644
--- a/drivers/mci/atmel_mci.c
+++ b/drivers/mci/atmel_mci.c
@@ -60,13 +60,6 @@ struct atmel_mci {
 				| ATMCI_OVRE  \
 				| ATMCI_UNRE)
 
-static void atmci_ip_reset(struct atmel_mci *host)
-{
-	atmci_writel(host, ATMCI_CR, ATMCI_CR_SWRST | ATMCI_CR_MCIDIS);
-	atmci_writel(host, ATMCI_DTOR, 0x7f);
-	atmci_writel(host, ATMCI_IDR, ~0UL);
-}
-
 static void atmci_set_clk_rate(struct atmel_mci *host,
 			       unsigned int clock_min)
 {
@@ -360,7 +353,8 @@ static int atmci_reset(struct mci_host *mci, struct device_d *mci_dev)
 		return -ENODEV;
 
 	clk_enable(host->clk);
-	atmci_ip_reset(host);
+	atmci_writel(host, ATMCI_DTOR, 0x7f);
+	clk_disable(host->clk);
 
 	return 0;
 }
@@ -519,7 +513,11 @@ static int atmci_probe(struct device_d *hw_dev)
 		return PTR_ERR(host->clk);
 	}
 
+	clk_enable(host->clk);
+	atmci_writel(host, ATMCI_CR, ATMCI_CR_SWRST);
+	atmci_writel(host, ATMCI_IDR, ~0UL);
 	host->bus_hz = clk_get_rate(host->clk);
+	clk_disable(host->clk);
 
 	host->mci.voltages = MMC_VDD_32_33 | MMC_VDD_33_34;
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
