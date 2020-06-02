Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg1qt-0004ZP-Vu
 for barebox@lists.infradead.org; Tue, 02 Jun 2020 08:00:53 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  2 Jun 2020 10:00:47 +0200
Message-Id: <20200602080049.8451-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 1/3] mci: define fall-back hw_dev->detect for all MCIs
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

A barebox environment oftree node may reference its storage by a phandle
to a partition node under a MCI node. barebox will then call the
device's detect method to detect the card if this hasn't happened
before. Out of 17 MCI drivers, 8 host drivers already implement
a detect method, which just calls mci_detect_card.

Provide a generic implementation that does the same.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/mci-core.c | 22 +++++++++++++++++++---
 1 file changed, 19 insertions(+), 3 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index e8844a3c0007..09e66bad472e 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1811,6 +1811,18 @@ static int mci_detect(struct device_d *dev)
 	return mci_detect_card(mci->host);
 }
 
+static int mci_hw_detect(struct device_d *dev)
+{
+	struct mci *mci;
+
+	list_for_each_entry(mci, &mci_list, list) {
+		if (dev == &mci->dev || dev == mci->host->hw_dev)
+			return mci_detect_card(mci->host);
+	}
+
+	return -ENODEV;
+}
+
 /**
  * Create a new mci device (for convenience)
  * @param host mci_host for this MCI device
@@ -1819,6 +1831,7 @@ static int mci_detect(struct device_d *dev)
 int mci_register(struct mci_host *host)
 {
 	struct mci *mci;
+	struct device_d *hw_dev;
 	struct param_d *param_probe;
 	int ret;
 
@@ -1833,13 +1846,16 @@ int mci_register(struct mci_host *host)
 		mci->dev.id = DEVICE_ID_DYNAMIC;
 	}
 
+	hw_dev = host->hw_dev;
 	mci->dev.platform_data = host;
-	mci->dev.parent = host->hw_dev;
+	mci->dev.parent = hw_dev;
 	mci->host = host;
 	host->mci = mci;
 	mci->dev.detect = mci_detect;
+	if (!hw_dev->detect)
+		hw_dev->detect = mci_hw_detect;
 
-	host->supply = regulator_get(host->hw_dev, "vmmc");
+	host->supply = regulator_get(hw_dev, "vmmc");
 	if (IS_ERR(host->supply)) {
 		dev_err(&mci->dev, "Failed to get 'vmmc' regulator.\n");
 		host->supply = NULL;
@@ -1849,7 +1865,7 @@ int mci_register(struct mci_host *host)
 	if (ret)
 		goto err_free;
 
-	dev_info(mci->host->hw_dev, "registered as %s\n", dev_name(&mci->dev));
+	dev_info(hw_dev, "registered as %s\n", dev_name(&mci->dev));
 
 	param_probe = dev_add_param_bool(&mci->dev, "probe",
 			mci_set_probe, NULL, &mci->probe, mci);
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
