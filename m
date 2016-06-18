Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp14.mail.ru ([94.100.181.95])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1bEGJS-0000wF-Tx
 for barebox@lists.infradead.org; Sat, 18 Jun 2016 13:29:28 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sat, 18 Jun 2016 16:28:57 +0300
Message-Id: <1466256538-4067-3-git-send-email-shc_work@mail.ru>
In-Reply-To: <1466256538-4067-1-git-send-email-shc_work@mail.ru>
References: <1466256538-4067-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 3/4] mci: core: Do not fail if vmmc regulator fail
To: barebox@lists.infradead.org

The vmmc regulator can be an usupported device for barebox,
the specific MFD regulator type, for example. Just lets think is all ok.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/mci/mci-core.c | 19 ++++++++++---------
 1 file changed, 10 insertions(+), 9 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 59f6675..086b564 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1585,11 +1585,13 @@ static int mci_card_probe(struct mci *mci)
 		return -ENODEV;
 	}
 
-	ret = regulator_enable(host->supply);
-	if (ret) {
-		dev_err(&mci->dev, "failed to enable regulator: %s\n",
+	if (!IS_ERR(host->supply)) {
+		ret = regulator_enable(host->supply);
+		if (ret) {
+			dev_err(&mci->dev, "failed to enable regulator: %s\n",
 				strerror(-ret));
-		return ret;
+			return ret;
+		}
 	}
 
 	/* start with a host interface reset */
@@ -1680,7 +1682,8 @@ on_error:
 	if (rc != 0) {
 		host->clock = 0;	/* disable the MCI clock */
 		mci_set_ios(mci);
-		regulator_disable(host->supply);
+		if (!IS_ERR(host->supply))
+			regulator_disable(host->supply);
 	}
 
 	return rc;
@@ -1767,10 +1770,8 @@ int mci_register(struct mci_host *host)
 	mci->dev.detect = mci_detect;
 
 	host->supply = regulator_get(host->hw_dev, "vmmc");
-	if (IS_ERR(host->supply)) {
-		ret = PTR_ERR(host->supply);
-		goto err_free;
-	}
+	if (IS_ERR(host->supply))
+		dev_err(&mci->dev, "Failed to get 'vmmc' regulator.\n");
 
 	ret = register_device(&mci->dev);
 	if (ret)
-- 
2.4.9


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
