Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S9H4b-0006Pn-3t
 for barebox@lists.infradead.org; Sun, 18 Mar 2012 14:27:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 18 Mar 2012 15:26:42 +0100
Message-Id: <1332080804-13132-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1332080804-13132-1-git-send-email-s.hauer@pengutronix.de>
References: <1332080804-13132-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/8] FAT: Fix error path
To: barebox@lists.infradead.org

- forward the return value of chk_mounted to detect whether mount succeeded
- free resources on mount failure

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fat/fat.c |   18 +++++++++++++++---
 fs/fat/ff.c  |    4 +---
 2 files changed, 16 insertions(+), 6 deletions(-)

diff --git a/fs/fat/fat.c b/fs/fat/fat.c
index 7d6e37a..21464bd 100644
--- a/fs/fat/fat.c
+++ b/fs/fat/fat.c
@@ -376,6 +376,7 @@ static int fat_probe(struct device_d *dev)
 	struct fs_device_d *fsdev = dev_to_fs_device(dev);
 	struct fat_priv *priv = xzalloc(sizeof(struct fat_priv));
 	char *backingstore = fsdev->backingstore;
+	int ret;
 
 	dev->priv = priv;
 
@@ -383,13 +384,24 @@ static int fat_probe(struct device_d *dev)
 		backingstore += 5;
 
 	priv->cdev = cdev_open(backingstore, O_RDWR);
-	if (!priv->cdev)
-		return -EINVAL;
+	if (!priv->cdev) {
+		ret = -ENOENT;
+		goto err_open;
+	}
 
 	priv->fat.userdata = priv;
-	f_mount(&priv->fat);
+	ret = f_mount(&priv->fat);
+	if (ret)
+		goto err_mount;
 
 	return 0;
+
+err_mount:
+	cdev_close(priv->cdev);
+err_open:
+	free(priv);
+
+	return ret;
 }
 
 static void fat_remove(struct device_d *dev)
diff --git a/fs/fat/ff.c b/fs/fat/ff.c
index a720389..2d476ee 100644
--- a/fs/fat/ff.c
+++ b/fs/fat/ff.c
@@ -1699,9 +1699,7 @@ int f_mount (
 {
 	fs->fs_type = 0; /* Clear new fs object */
 
-	chk_mounted(fs, 0);
-
-	return 0;
+	return chk_mounted(fs, 0);
 }
 
 /*
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
