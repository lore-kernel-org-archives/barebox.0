Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UOq9U-0001MJ-1C
 for barebox@lists.infradead.org; Sun, 07 Apr 2013 14:01:14 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun,  7 Apr 2013 16:00:44 +0200
Message-Id: <1365343255-26497-11-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1365343255-26497-1-git-send-email-s.hauer@pengutronix.de>
References: <1365343255-26497-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/21] mci: Use dev_add_param_int for probe parameter
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mci-core.c | 38 ++++++++++----------------------------
 include/mci.h          |  2 ++
 2 files changed, 12 insertions(+), 28 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index c8598c2..059e635 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -34,6 +34,7 @@
 #include <asm/byteorder.h>
 #include <block.h>
 #include <disks.h>
+#include <linux/err.h>
 
 #define MAX_BUFFER_NUMBER 0xffffffff
 
@@ -1455,43 +1456,22 @@ on_error:
  * @param val "0" does nothing, a "1" will probe for a MCI card
  * @return 0 on success
  */
-static int mci_set_probe(struct device_d *mci_dev, struct param_d *param,
-				const char *val)
+static int mci_set_probe(struct param_d *param, void *priv)
 {
-	struct mci *mci = mci_dev->priv;
-	int rc, probe;
+	struct mci *mci = priv;
+	int rc;
 
 	rc = mci_check_if_already_initialized(mci);
 	if (rc != 0)
 		return 0;
 
-	probe = simple_strtoul(val, NULL, 0);
-	if (probe != 0) {
+	if (mci->probe) {
 		rc = mci_card_probe(mci);
 		if (rc != 0)
 			return rc;
 	}
 
-	return dev_param_set_generic(mci_dev, param, val);
-}
-
-/**
- * Add parameter to the MCI device on demand
- * @param mci_dev MCI device instance
- * @return 0 on success
- *
- * This parameter is only available (or usefull) if MCI card probing is delayed
- */
-static int add_mci_parameter(struct device_d *mci_dev)
-{
-	int rc;
-
-	/* provide a 'probing right now' parameter for the user */
-	rc = dev_add_param(mci_dev, "probe", mci_set_probe, NULL, 0);
-	if (rc != 0)
-		return rc;
-
-	return dev_set_param(mci_dev, "probe", "0");
+	return 0;
 }
 
 /**
@@ -1514,8 +1494,10 @@ static int mci_probe(struct device_d *mci_dev)
 
 	dev_info(mci->host->hw_dev, "registered as %s\n", dev_name(mci_dev));
 
-	rc = add_mci_parameter(mci_dev);
-	if (rc != 0) {
+	mci->param_probe = dev_add_param_int(mci_dev, "probe",
+			mci_set_probe, NULL, &mci->probe, "%d", mci);
+
+	if (IS_ERR(mci->param_probe)) {
 		dev_dbg(mci->mci_dev, "Failed to add 'probe' parameter to the MCI device\n");
 		goto on_error;
 	}
diff --git a/include/mci.h b/include/mci.h
index cf9582d..eca48a5 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -328,6 +328,8 @@ struct mci {
 	uint64_t capacity;	/**< Card's data capacity in bytes */
 	int ready_for_use;	/** true if already probed */
 	char *ext_csd;
+	int probe;
+	struct param_d *param_probe;
 };
 
 int mci_register(struct mci_host*);
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
