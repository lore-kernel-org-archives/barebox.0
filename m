Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zeljv-00008Z-IM
 for barebox@lists.infradead.org; Wed, 23 Sep 2015 15:13:48 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 23 Sep 2015 17:13:24 +0200
Message-Id: <1443021204-30567-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] introduce strerrorp
To: Barebox List <barebox@lists.infradead.org>

putting an error pointer into strerror can be a bit confusing since
strerror takes a positive error code but PTR_ERR returns a negative
number, so we have to do strerror(-PTR_ERR(errp)). Some places got
this wrong already, so introduce a strerrorp function which directly
takes an error pointer.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/blspec.c                    | 2 +-
 drivers/usb/imx/imx-usb-phy.c      | 2 +-
 drivers/video/imx-ipu-v3/imx-ldb.c | 8 ++++----
 fs/ubifs/ubifs.c                   | 2 +-
 include/errno.h                    | 6 ++++++
 5 files changed, 13 insertions(+), 7 deletions(-)

diff --git a/common/blspec.c b/common/blspec.c
index ab18602..d5ddb4f 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -646,7 +646,7 @@ static int blspec_append_root(struct blspec_entry *entry)
 	rootarg = path_get_linux_rootarg(entry->rootpath);
 	if (IS_ERR(rootarg)) {
 		pr_err("Getting root argument for %s failed with: %s\n",
-				entry->rootpath, strerror(-PTR_ERR(rootarg)));
+				entry->rootpath, strerrorp(rootarg));
 		return PTR_ERR(rootarg);
 	}
 
diff --git a/drivers/usb/imx/imx-usb-phy.c b/drivers/usb/imx/imx-usb-phy.c
index a573c7f..837c1b5 100644
--- a/drivers/usb/imx/imx-usb-phy.c
+++ b/drivers/usb/imx/imx-usb-phy.c
@@ -78,7 +78,7 @@ static int imx_usbphy_probe(struct device_d *dev)
 
 	imxphy->clk = clk_get(dev, NULL);
 	if (IS_ERR(imxphy->clk)) {
-		dev_err(dev, "could not get clk: %s\n", strerror(-PTR_ERR(imxphy->clk)));
+		dev_err(dev, "could not get clk: %s\n", strerrorp(imxphy->clk));
 		goto err_clk;
 	}
 
diff --git a/drivers/video/imx-ipu-v3/imx-ldb.c b/drivers/video/imx-ipu-v3/imx-ldb.c
index db5f8b6..9eac524 100644
--- a/drivers/video/imx-ipu-v3/imx-ldb.c
+++ b/drivers/video/imx-ipu-v3/imx-ldb.c
@@ -176,7 +176,7 @@ static int imx6q_ldb_prepare(struct imx_ldb_channel *imx_ldb_ch, int di)
 	diclk = clk_lookup(clkname);
 	free(clkname);
 	if (IS_ERR(diclk)) {
-		dev_err(ldb->dev, "failed to get di clk: %s\n", strerror(PTR_ERR(diclk)));
+		dev_err(ldb->dev, "failed to get di clk: %s\n", strerrorp(diclk));
 		return PTR_ERR(diclk);
 	}
 
@@ -184,7 +184,7 @@ static int imx6q_ldb_prepare(struct imx_ldb_channel *imx_ldb_ch, int di)
 	ldbclk = clk_lookup(clkname);
 	free(clkname);
 	if (IS_ERR(ldbclk)) {
-		dev_err(ldb->dev, "failed to get ldb clk: %s\n", strerror(PTR_ERR(ldbclk)));
+		dev_err(ldb->dev, "failed to get ldb clk: %s\n", strerrorp(ldbclk));
 		return PTR_ERR(ldbclk);
 	}
 
@@ -216,7 +216,7 @@ static int imx53_ldb_prepare(struct imx_ldb_channel *imx_ldb_ch, int di)
 	diclk = clk_lookup(clkname);
 	free(clkname);
 	if (IS_ERR(diclk)) {
-		dev_err(ldb->dev, "failed to get di clk: %s\n", strerror(PTR_ERR(diclk)));
+		dev_err(ldb->dev, "failed to get di clk: %s\n", strerrorp(diclk));
 		return PTR_ERR(diclk);
 	}
 
@@ -224,7 +224,7 @@ static int imx53_ldb_prepare(struct imx_ldb_channel *imx_ldb_ch, int di)
 	ldbclk = clk_lookup(clkname);
 	free(clkname);
 	if (IS_ERR(ldbclk)) {
-		dev_err(ldb->dev, "failed to get ldb clk: %s\n", strerror(PTR_ERR(ldbclk)));
+		dev_err(ldb->dev, "failed to get ldb clk: %s\n", strerrorp(ldbclk));
 		return PTR_ERR(ldbclk);
 	}
 
diff --git a/fs/ubifs/ubifs.c b/fs/ubifs/ubifs.c
index a9189f7..4368203 100644
--- a/fs/ubifs/ubifs.c
+++ b/fs/ubifs/ubifs.c
@@ -622,7 +622,7 @@ static int ubifs_probe(struct device_d *dev)
 	priv->ubi = ubi_open_volume_cdev(priv->cdev, UBI_READONLY);
 	if (IS_ERR(priv->ubi)) {
 		dev_err(dev, "failed to open ubi volume: %s\n",
-				strerror(-PTR_ERR(priv->ubi)));
+				strerrorp(priv->ubi));
 		ret = PTR_ERR(priv->ubi);
 		goto err_free;
 	}
diff --git a/include/errno.h b/include/errno.h
index 025816e..496ccab 100644
--- a/include/errno.h
+++ b/include/errno.h
@@ -2,6 +2,7 @@
 #define __ERRNO_H
 
 #include <asm-generic/errno.h>
+#include <linux/err.h>
 
 extern int errno;
 
@@ -9,4 +10,9 @@ void perror(const char *s);
 const char *errno_str(void);
 const char *strerror(int errnum);
 
+static inline const char *strerrorp(const void *errp)
+{
+	return strerror(-PTR_ERR(errp));
+}
+
 #endif /* __ERRNO_H */
-- 
2.5.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
