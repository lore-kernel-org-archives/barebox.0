Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WrvNb-0004I4-Pf
 for barebox@lists.infradead.org; Tue, 03 Jun 2014 20:32:20 +0000
Received: from tellur.localdomain (p57B5FCD3.dip0.t-ipconnect.de
 [87.181.252.211]) by lynxeye.de (Postfix) with ESMTPA id 1428C18B425A
 for <barebox@lists.infradead.org>; Tue,  3 Jun 2014 22:31:23 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Tue,  3 Jun 2014 22:34:48 +0200
Message-Id: <1401827717-6420-2-git-send-email-dev@lynxeye.de>
In-Reply-To: <1401827717-6420-1-git-send-email-dev@lynxeye.de>
References: <1401827717-6420-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 01/30] mci: implement non-removable property
To: barebox@lists.infradead.org

There is no need to check the card-detect status
for non-removable devices.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/mci/mci-core.c | 5 ++++-
 include/mci.h          | 1 +
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 282d239..ce6e590 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1572,7 +1572,8 @@ static int mci_card_probe(struct mci *mci)
 	struct mci_host *host = mci->host;
 	int i, rc, disknum, ret;
 
-	if (host->card_present && !host->card_present(host)) {
+	if (host->card_present && !host->card_present(host) &&
+	    !host->non_removable) {
 		dev_err(&mci->dev, "no card inserted\n");
 		return -ENODEV;
 	}
@@ -1839,4 +1840,6 @@ void mci_of_parse(struct mci_host *host)
 			host->dsr_val = dsr_val;
 		}
 	}
+
+	host->non_removable = of_property_read_bool(np, "non-removable");
 }
diff --git a/include/mci.h b/include/mci.h
index f2c6fd1..c5ab5b3 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -302,6 +302,7 @@ struct mci_host {
 	unsigned max_req_size;
 	unsigned dsr_val;	/**< optional dsr value */
 	int use_dsr;		/**< optional dsr usage flag */
+	bool non_removable;	/**< device is non removable */
 	struct regulator *supply;
 
 	/** init the host interface */
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
