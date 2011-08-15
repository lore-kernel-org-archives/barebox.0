Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qssof-00069H-ML
	for barebox@lists.infradead.org; Mon, 15 Aug 2011 08:46:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 15 Aug 2011 10:46:26 +0200
Message-Id: <1313397992-3065-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1313397992-3065-1-git-send-email-s.hauer@pengutronix.de>
References: <1313397992-3065-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/7] mci: embed mci_dev into mci_host instead of allocating it
	seperately
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mci-core.c |    4 +---
 include/mci.h          |    1 +
 2 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index fea2691..6a29619 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1359,9 +1359,7 @@ device_initcall(mci_init);
  */
 int mci_register(struct mci_host *host)
 {
-	struct device_d *mci_dev;
-
-	mci_dev = xzalloc(sizeof(struct device_d));
+	struct device_d *mci_dev = &host->dev;
 
 	strcpy(mci_dev->name, mci_driver.name);
 	mci_dev->platform_data = (void*)host;
diff --git a/include/mci.h b/include/mci.h
index 8c669ca..69cffe8 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -194,6 +194,7 @@ struct mci_data {
 /** host information */
 struct mci_host {
 	struct device_d *hw_dev;	/**< the host MCI hardware device */
+	struct device_d dev;		/**< our device */
 	unsigned voltages;
 	unsigned host_caps;	/**< Host's interface capabilities, refer MMC_VDD_* */
 	unsigned f_min;		/**< host interface lower limit */
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
