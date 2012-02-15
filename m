Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rxa8i-0002gt-LK
 for barebox@lists.infradead.org; Wed, 15 Feb 2012 08:23:01 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 15 Feb 2012 09:22:41 +0100
Message-Id: <1329294165-12089-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1329294165-12089-1-git-send-email-s.hauer@pengutronix.de>
References: <1329294165-12089-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/12] fs: remove only once used variable
To: barebox@lists.infradead.org

dev is used only once, so make the code a tiny bit simpler by
not using an extra variable but dereference it when needed directly.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c |    6 ++----
 1 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index 121bf6f..7bb5d8e 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -718,7 +718,7 @@ int mount(const char *device, const char *fsname, const char *_path)
 	struct fs_driver_d *fs_drv = NULL, *f;
 	struct mtab_entry *entry;
 	struct fs_device_d *fsdev;
-	struct device_d *dev, *parent_device = NULL;
+	struct device_d *parent_device = NULL;
 	struct cdev *cdev = NULL;
 	int ret;
 	char *path = normalise_path(_path);
@@ -789,12 +789,10 @@ int mount(const char *device, const char *fsname, const char *_path)
 	if (parent_device)
 		dev_add_child(parent_device, &fsdev->dev);
 
-	dev = &fsdev->dev;
-
 	/* add mtab entry */
 	entry = &fsdev->mtab;
 	entry->path = xstrdup(path);
-	entry->dev = dev;
+	entry->dev = &fsdev->dev;
 	entry->parent_device = parent_device;
 
 	list_add_tail(&entry->list, &mtab_list);
-- 
1.7.9


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
