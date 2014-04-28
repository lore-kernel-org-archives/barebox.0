Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WegmG-0000by-7P
 for barebox@lists.infradead.org; Mon, 28 Apr 2014 08:19:05 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 28 Apr 2014 10:18:41 +0200
Message-Id: <1398673121-6075-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1398673121-6075-1-git-send-email-s.hauer@pengutronix.de>
References: <1398673121-6075-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] mci: Add regulator support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mci-core.c | 18 ++++++++++++++++--
 include/mci.h          |  2 ++
 2 files changed, 18 insertions(+), 2 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 1dca0c0..282d239 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1570,18 +1570,25 @@ static const char *mci_boot_names[] = {
 static int mci_card_probe(struct mci *mci)
 {
 	struct mci_host *host = mci->host;
-	int i, rc, disknum;
+	int i, rc, disknum, ret;
 
 	if (host->card_present && !host->card_present(host)) {
 		dev_err(&mci->dev, "no card inserted\n");
 		return -ENODEV;
 	}
 
+	ret = regulator_enable(host->supply);
+	if (ret) {
+		dev_err(&mci->dev, "failed to enable regulator: %s\n",
+				strerror(-ret));
+		return ret;
+	}
+
 	/* start with a host interface reset */
 	rc = (host->init)(host, &mci->dev);
 	if (rc) {
 		dev_err(&mci->dev, "Cannot reset the SD/MMC interface\n");
-		return rc;
+		goto on_error;
 	}
 
 	mci_set_bus_width(mci, MMC_BUS_WIDTH_1);
@@ -1665,6 +1672,7 @@ on_error:
 	if (rc != 0) {
 		host->clock = 0;	/* disable the MCI clock */
 		mci_set_ios(mci);
+		regulator_disable(host->supply);
 	}
 
 	return rc;
@@ -1750,6 +1758,12 @@ int mci_register(struct mci_host *host)
 	host->mci = mci;
 	mci->dev.detect = mci_detect;
 
+	host->supply = regulator_get(host->hw_dev, "vmmc");
+	if (IS_ERR(host->supply)) {
+		ret = PTR_ERR(host->supply);
+		goto err_free;
+	}
+
 	ret = register_device(&mci->dev);
 	if (ret)
 		goto err_free;
diff --git a/include/mci.h b/include/mci.h
index cd3e2c2..f2c6fd1 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -28,6 +28,7 @@
 
 #include <linux/list.h>
 #include <block.h>
+#include <regulator.h>
 
 /* Firmware revisions for SD cards */
 #define SD_VERSION_SD		0x20000
@@ -301,6 +302,7 @@ struct mci_host {
 	unsigned max_req_size;
 	unsigned dsr_val;	/**< optional dsr value */
 	int use_dsr;		/**< optional dsr usage flag */
+	struct regulator *supply;
 
 	/** init the host interface */
 	int (*init)(struct mci_host*, struct device_d*);
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
