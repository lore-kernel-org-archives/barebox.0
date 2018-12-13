Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXL92-00051m-OJ
 for barebox@lists.infradead.org; Thu, 13 Dec 2018 07:10:54 +0000
Received: by mail-pl1-x643.google.com with SMTP id g9so616421plo.3
 for <barebox@lists.infradead.org>; Wed, 12 Dec 2018 23:10:42 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 12 Dec 2018 23:10:32 -0800
Message-Id: <20181213071033.30932-2-andrew.smirnov@gmail.com>
In-Reply-To: <20181213071033.30932-1-andrew.smirnov@gmail.com>
References: <20181213071033.30932-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/3] mci: Rely on NULL being a dummy regulator
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Since NULL, is a dummy regulator, we can drop a bit of error checking
logic and simplify the code if we assing host->supply to NULL in case
we can't find an appropriate regulator during probing.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/mci/mci-core.c | 19 +++++++++----------
 1 file changed, 9 insertions(+), 10 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 3efd80a8a..c71d91fd0 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1650,13 +1650,11 @@ static int mci_card_probe(struct mci *mci)
 		return -ENODEV;
 	}
 
-	if (!IS_ERR(host->supply)) {
-		ret = regulator_enable(host->supply);
-		if (ret) {
-			dev_err(&mci->dev, "failed to enable regulator: %s\n",
-				strerror(-ret));
-			return ret;
-		}
+	ret = regulator_enable(host->supply);
+	if (ret) {
+		dev_err(&mci->dev, "failed to enable regulator: %s\n",
+			strerror(-ret));
+		return ret;
 	}
 
 	/* start with a host interface reset */
@@ -1728,8 +1726,7 @@ on_error:
 	if (rc != 0) {
 		host->clock = 0;	/* disable the MCI clock */
 		mci_set_ios(mci);
-		if (!IS_ERR(host->supply))
-			regulator_disable(host->supply);
+		regulator_disable(host->supply);
 	}
 
 	return rc;
@@ -1816,8 +1813,10 @@ int mci_register(struct mci_host *host)
 	mci->dev.detect = mci_detect;
 
 	host->supply = regulator_get(host->hw_dev, "vmmc");
-	if (IS_ERR(host->supply))
+	if (IS_ERR(host->supply)) {
 		dev_err(&mci->dev, "Failed to get 'vmmc' regulator.\n");
+		host->supply = NULL;
+	}
 
 	ret = register_device(&mci->dev);
 	if (ret)
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
