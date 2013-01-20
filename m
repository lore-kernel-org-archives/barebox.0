Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Twrfq-0006Fp-UT
 for barebox@lists.infradead.org; Sun, 20 Jan 2013 09:58:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 20 Jan 2013 10:58:40 +0100
Message-Id: <1358675923-13628-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1358675923-13628-1-git-send-email-s.hauer@pengutronix.de>
References: <1358675923-13628-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/5] mci: Always add probe parameter for cards
To: barebox@lists.infradead.org

Always add the 'probe' parameter to cards so that scripts can
rely on the parameter to be present.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mci-core.c |   26 +++++---------------------
 1 file changed, 5 insertions(+), 21 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 711f74b..7d43fe3 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1499,34 +1499,18 @@ static int mci_probe(struct device_d *mci_dev)
 
 	dev_info(mci->host->hw_dev, "registered as %s\n", dev_name(mci_dev));
 
-#ifdef CONFIG_MCI_STARTUP
-	/* if enabled, probe the attached card immediately */
-	rc = mci_card_probe(mci);
-	if (rc) {
-		/*
-		 * If it fails, add the 'probe' parameter to give the user
-		 * a chance to insert a card and try again. Note: This may fail
-		 * systems that rely on the MCI card for startup (for the
-		 * persistant environment for example)
-		 */
-		rc = add_mci_parameter(mci_dev);
-		if (rc != 0) {
-			dev_dbg(mci->mci_dev, "Failed to add 'probe' parameter to the MCI device\n");
-			goto on_error;
-		}
-	}
-#endif
-
-#ifndef CONFIG_MCI_STARTUP
-	/* add params on demand */
 	rc = add_mci_parameter(mci_dev);
 	if (rc != 0) {
 		dev_dbg(mci->mci_dev, "Failed to add 'probe' parameter to the MCI device\n");
 		goto on_error;
 	}
+
+#ifdef CONFIG_MCI_STARTUP
+	/* if enabled, probe the attached card immediately */
+	mci_card_probe(mci);
 #endif
 
-	return rc;
+	return 0;
 
 on_error:
 	free(mci);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
