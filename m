Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Ptze2-00085w-8K
	for barebox@lists.infradead.org; Mon, 28 Feb 2011 09:43:59 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 28 Feb 2011 10:43:50 +0100
Message-Id: <1298886235-1769-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1298886235-1769-1-git-send-email-s.hauer@pengutronix.de>
References: <1298886235-1769-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/7] mci mxs: put only once used function inline
To: barebox@lists.infradead.org

Also, rename mci_rename after the callback it implements: stm_mci_initialize.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mxs.c |   27 ++++++++-------------------
 1 files changed, 8 insertions(+), 19 deletions(-)

diff --git a/drivers/mci/mxs.c b/drivers/mci/mxs.c
index 94b0f4a..db789e7 100644
--- a/drivers/mci/mxs.c
+++ b/drivers/mci/mxs.c
@@ -595,13 +595,17 @@ static void stm_mci_reset(struct device_d *hw_dev)
 		;
 }
 
+/* ------------------------- MCI API -------------------------------------- */
+
 /**
- * Initialize the engine
- * @param hw_dev Host interface instance
+ * Keep the attached MMC/SD unit in a well know state
+ * @param mci_pdata MCI platform data
  * @param mci_dev MCI device instance
+ * @return 0 on success, negative value else
  */
-static int stm_mci_initialize(struct device_d *hw_dev, struct device_d *mci_dev)
+static int stm_mci_initialize(struct mci_host *mci_pdata, struct device_d *mci_dev)
 {
+	struct device_d *hw_dev = mci_pdata->hw_dev;
 	struct mci_host *host = GET_MCI_PDATA(mci_dev);
 	struct stm_mci_host *host_data = (struct stm_mci_host*)GET_HOST_DATA(hw_dev);
 
@@ -624,21 +628,6 @@ static int stm_mci_initialize(struct device_d *hw_dev, struct device_d *mci_dev)
 	return 0;
 }
 
-/* ------------------------- MCI API -------------------------------------- */
-
-/**
- * Keep the attached MMC/SD unit in a well know state
- * @param mci_pdata MCI platform data
- * @param mci_dev MCI device instance
- * @return 0 on success, negative value else
- */
-static int mci_reset(struct mci_host *mci_pdata, struct device_d *mci_dev)
-{
-	struct device_d *hw_dev = mci_pdata->hw_dev;
-
-	return stm_mci_initialize(hw_dev, mci_dev);
-}
-
 /**
  * Process one command to the MCI card
  * @param mci_pdata MCI platform data
@@ -733,7 +722,7 @@ static int stm_mci_probe(struct device_d *hw_dev)
 	host->hw_dev = hw_dev;
 	host->send_cmd = mci_request,
 	host->set_ios = mci_set_ios,
-	host->init = mci_reset,
+	host->init = stm_mci_initialize,
 
 	/* feed forward the platform specific values */
 	host->voltages = pd->voltages;
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
