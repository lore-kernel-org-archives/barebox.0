Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VW0V1-0001D2-CM
 for barebox@lists.infradead.org; Tue, 15 Oct 2013 09:01:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 Oct 2013 11:00:39 +0200
Message-Id: <1381827640-4042-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1381827640-4042-1-git-send-email-s.hauer@pengutronix.de>
References: <1381827640-4042-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] mci: bcm2835: Add detect callback support for hardware
 device
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mci-bcm2835.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/mci/mci-bcm2835.c b/drivers/mci/mci-bcm2835.c
index abd38a3..a0c364d 100644
--- a/drivers/mci/mci-bcm2835.c
+++ b/drivers/mci/mci-bcm2835.c
@@ -511,6 +511,13 @@ static u32 bcm2835_mci_get_emmc_clock(struct msg_get_clock_rate *clk_data)
 	return 0;
 }
 
+static int bcm2835_mci_detect(struct device_d *dev)
+{
+	struct bcm2835_mci_host *host = dev->priv;
+
+	return mci_detect_card(&host->mci);
+}
+
 static int bcm2835_mci_probe(struct device_d *hw_dev)
 {
 	struct bcm2835_mci_host *host;
@@ -561,6 +568,9 @@ static int bcm2835_mci_probe(struct device_d *hw_dev)
 	host->mci.f_min = MIN_FREQ;
 	host->mci.f_max = host->max_clock;
 
+	hw_dev->priv = host;
+	hw_dev->detect = bcm2835_mci_detect,
+
 	/*
 	 * The Arasan has a bugette whereby it may lose the content of
 	 * successive writes to registers that are within two SD-card clock
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
