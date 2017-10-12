Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e2ai1-0004dl-AS
 for barebox@lists.infradead.org; Thu, 12 Oct 2017 10:27:23 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
 (envelope-from <l.stach@pengutronix.de>) id 1e2ahe-0003Lx-Fe
 for barebox@lists.infradead.org; Thu, 12 Oct 2017 12:26:58 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu, 12 Oct 2017 12:26:51 +0200
Message-Id: <20171012102658.17104-5-l.stach@pengutronix.de>
In-Reply-To: <20171012102658.17104-1-l.stach@pengutronix.de>
References: <20171012102658.17104-1-l.stach@pengutronix.de>
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
Subject: [PATCH v2 05/12] mci: mmci: add DT support
To: barebox@lists.infradead.org

Just adds the minimal implementation to fill platform_data from
the DT properties with Linux binding. As all MMC controllers are
supposed to support at least the 3.3V signalling level, this gets
exposed regardless of the platform data, just as other controller
drivers in Barebox handle this.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/mci/mmci.c | 39 ++++++++++++++++++++++++++++++++++++---
 1 file changed, 36 insertions(+), 3 deletions(-)

diff --git a/drivers/mci/mmci.c b/drivers/mci/mmci.c
index 7489ee03a13c..f45557d4f7be 100644
--- a/drivers/mci/mmci.c
+++ b/drivers/mci/mmci.c
@@ -532,9 +532,37 @@ static void mci_set_ios(struct mci_host *mci, struct mci_ios *ios)
 	udelay(CLK_CHANGE_DELAY);
 }
 
+static int mmci_of_parse(struct device_node *np,
+			 struct mmci_platform_data *plat)
+{
+	if (!IS_ENABLED(CONFIG_OFDEVICE))
+		return 0;
+
+	if (of_get_property(np, "st,sig-dir-dat0", NULL))
+		plat->sigdir |= MCI_ST_DATA0DIREN;
+	if (of_get_property(np, "st,sig-dir-dat2", NULL))
+		plat->sigdir |= MCI_ST_DATA2DIREN;
+	if (of_get_property(np, "st,sig-dir-dat31", NULL))
+		plat->sigdir |= MCI_ST_DATA31DIREN;
+	if (of_get_property(np, "st,sig-dir-dat74", NULL))
+		plat->sigdir |= MCI_ST_DATA74DIREN;
+	if (of_get_property(np, "st,sig-dir-cmd", NULL))
+		plat->sigdir |= MCI_ST_CMDDIREN;
+	if (of_get_property(np, "st,sig-pin-fbclk", NULL))
+		plat->sigdir |= MCI_ST_FBCLKEN;
+
+	if (of_get_property(np, "mmc-cap-mmc-highspeed", NULL))
+		plat->capabilities |= MMC_CAP_MMC_HIGHSPEED;
+	if (of_get_property(np, "mmc-cap-sd-highspeed", NULL))
+		plat->capabilities |= MMC_CAP_SD_HIGHSPEED;
+
+	return 0;
+}
+
 static int mmci_probe(struct amba_device *dev, const struct amba_id *id)
 {
 	struct device_d *hw_dev = &dev->dev;
+	struct device_node *np = hw_dev->device_node;
 	struct mmci_platform_data *plat = hw_dev->platform_data;
 	struct variant_data *variant = id->data;
 	u32 sdi_u32;
@@ -542,11 +570,16 @@ static int mmci_probe(struct amba_device *dev, const struct amba_id *id)
 	struct clk *clk;
 	int ret;
 
-	if (!plat) {
-		dev_err(hw_dev, "missing platform data\n");
+	if (!plat && !np) {
+		dev_err(hw_dev, "missing platform data or DT node\n");
 		return -EINVAL;
 	}
 
+	if (!plat)
+		plat = xzalloc(sizeof(*plat));
+
+	mmci_of_parse(np, plat);
+
 	host = xzalloc(sizeof(*host));
 
 	host->base = amba_get_mem_region(dev);
@@ -625,7 +658,7 @@ static int mmci_probe(struct amba_device *dev, const struct amba_id *id)
 	host->mci.max_req_size = (1 << variant->datalength_bits) - 1;
 
 	host->mci.host_caps = plat->capabilities;
-	host->mci.voltages = plat->ocr_mask;
+	host->mci.voltages = MMC_VDD_32_33 | MMC_VDD_33_34 | plat->ocr_mask;
 
 	mci_register(&host->mci);
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
