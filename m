Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ui2A7-0006de-I7
 for barebox@lists.infradead.org; Thu, 30 May 2013 12:41:00 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 30 May 2013 14:40:30 +0200
Message-Id: <1369917631-31436-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1369917631-31436-1-git-send-email-s.hauer@pengutronix.de>
References: <1369917631-31436-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] mci: implement detect driver callback
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mci-core.c | 21 +++++++++++++++++++++
 include/mci.h          |  6 ++++--
 2 files changed, 25 insertions(+), 2 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 416168f..50068a7 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1596,6 +1596,24 @@ static int mci_init(void)
 
 device_initcall(mci_init);
 
+int mci_detect_card(struct mci_host *host)
+{
+	int rc;
+
+	rc = mci_check_if_already_initialized(host->mci);
+	if (rc != 0)
+		return 0;
+
+	return mci_card_probe(host->mci);
+}
+
+static int mci_detect(struct device_d *dev)
+{
+	struct mci *mci = container_of(dev, struct mci, dev);
+
+	return mci_detect_card(mci->host);
+}
+
 /**
  * Create a new mci device (for convenience)
  * @param host mci_host for this MCI device
@@ -1619,6 +1637,9 @@ int mci_register(struct mci_host *host)
 
 	mci->dev.platform_data = host;
 	mci->dev.parent = host->hw_dev;
+	mci->host = host;
+	host->mci = mci;
+	mci->dev.detect = mci_detect;
 
 	ret = register_device(&mci->dev);
 	if (ret)
diff --git a/include/mci.h b/include/mci.h
index 1eb967d..eb8a195 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -285,9 +285,12 @@ struct mci_ios {
 #define MMC_1_8V_SDR_MODE	4
 };
 
+struct mci;
+
 /** host information */
 struct mci_host {
 	struct device_d *hw_dev;	/**< the host MCI hardware device */
+	struct mci *mci;
 	char *devname;			/**< the devicename for the card, defaults to disk%d */
 	unsigned voltages;
 	unsigned host_caps;	/**< Host's interface capabilities, refer MMC_VDD_* */
@@ -308,8 +311,6 @@ struct mci_host {
 	int (*card_write_protected)(struct mci_host *);
 };
 
-struct mci;
-
 #define MMC_NUM_BOOT_PARTITION	2
 #define MMC_NUM_GP_PARTITION	4
 #define MMC_NUM_PHY_PARTITION	6
@@ -362,5 +363,6 @@ struct mci {
 };
 
 int mci_register(struct mci_host*);
+int mci_detect_card(struct mci_host *);
 
 #endif /* _MCI_H_ */
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
