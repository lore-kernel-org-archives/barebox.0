Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Timyj-0007yN-Si
 for barebox@lists.infradead.org; Wed, 12 Dec 2012 14:08:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 12 Dec 2012 15:07:50 +0100
Message-Id: <1355321271-27915-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1355321271-27915-1-git-send-email-s.hauer@pengutronix.de>
References: <1355321271-27915-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] fs: move dev_add_child before device_register
To: barebox@lists.infradead.org

Biology tells us that the parent is known before the child is born.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c |   10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index dc3a6e3..4c8c61a 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -1107,11 +1107,6 @@ static int fs_probe(struct device_d *dev)
 	if (ret)
 		return ret;
 
-	if (fsdev->cdev) {
-		dev_add_child(fsdev->cdev->dev, &fsdev->dev);
-		fsdev->parent_device = fsdev->cdev->dev;
-	}
-
 	fsdev->driver = fsdrv;
 
 	list_add_tail(&fsdev->list, &fs_device_list);
@@ -1231,6 +1226,11 @@ int mount(const char *device, const char *fsname, const char *_path)
 	if (!strncmp(device, "/dev/", 5))
 		fsdev->cdev = cdev_by_name(device + 5);
 
+	if (fsdev->cdev) {
+		dev_add_child(fsdev->cdev->dev, &fsdev->dev);
+		fsdev->parent_device = fsdev->cdev->dev;
+	}
+
 	ret = register_device(&fsdev->dev);
 	if (ret)
 		goto err_register;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
