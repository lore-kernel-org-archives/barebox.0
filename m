Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaNtC-0006pB-RR
 for barebox@lists.infradead.org; Sun, 17 May 2020 18:19:56 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sun, 17 May 2020 20:19:39 +0200
Message-Id: <20200517181941.6982-1-a.fatoum@pengutronix.de>
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
Cc: Lucas Stach <lst@pengutronix.de>, Ahmad Fatoum <a.fatoum@pengutronix.de>

A barebox environment oftree node may reference its storage by a phandle
to a partition node under a MCI node. barebox will then call the
device's detect method to detect the card if this hasn't happened
before. Out of 17 MCI drivers, 8 host drivers already implement
a detect method, which just calls mci_detect_card.

Provide a generic implementation that does the same.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Cc: Lucas Stach <lst@pengutronix.de>
---
 drivers/mci/mci-core.c | 19 ++++++++++++++-----
 1 file changed, 14 insertions(+), 5 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index e8844a3c0007..ab80c4d5ba5c 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1806,9 +1806,14 @@ int mci_detect_card(struct mci_host *host)
 
 static int mci_detect(struct device_d *dev)
 {
-	struct mci *mci = container_of(dev, struct mci, dev);
+	struct mci *mci;
+
+	list_for_each_entry(mci, &mci_list, list) {
+		if (dev == &mci->dev || dev == mci->host->hw_dev)
+			return mci_detect_card(mci->host);
+	}
 
-	return mci_detect_card(mci->host);
+	return -ENODEV;
 }
 
 /**
@@ -1819,6 +1824,7 @@ static int mci_detect(struct device_d *dev)
 int mci_register(struct mci_host *host)
 {
 	struct mci *mci;
+	struct device_d *hw_dev;
 	struct param_d *param_probe;
 	int ret;
 
@@ -1833,13 +1839,16 @@ int mci_register(struct mci_host *host)
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
+		hw_dev->detect = mci_detect;
 
-	host->supply = regulator_get(host->hw_dev, "vmmc");
+	host->supply = regulator_get(hw_dev, "vmmc");
 	if (IS_ERR(host->supply)) {
 		dev_err(&mci->dev, "Failed to get 'vmmc' regulator.\n");
 		host->supply = NULL;
@@ -1849,7 +1858,7 @@ int mci_register(struct mci_host *host)
 	if (ret)
 		goto err_free;
 
-	dev_info(mci->host->hw_dev, "registered as %s\n", dev_name(&mci->dev));
+	dev_info(hw_dev, "registered as %s\n", dev_name(&mci->dev));
 
 	param_probe = dev_add_param_bool(&mci->dev, "probe",
 			mci_set_probe, NULL, &mci->probe, mci);
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
