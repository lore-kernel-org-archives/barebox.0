Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uws0h-0000L3-Tv
 for barebox@lists.infradead.org; Wed, 10 Jul 2013 10:52:38 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 10 Jul 2013 12:52:04 +0200
Message-Id: <1373453528-3723-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1373453528-3723-1-git-send-email-s.hauer@pengutronix.de>
References: <1373453528-3723-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/9] cdev: allow to open a struct cdev
To: barebox@lists.infradead.org

cdev_open() opens a cdev by name. This introduces cdev_do_open which
allows to open a cdev when the cdev is already found by other means.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/devfs-core.c  | 16 +++++++++++-----
 include/driver.h |  1 +
 2 files changed, 12 insertions(+), 5 deletions(-)

diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index a2bea93..816f244 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -70,6 +70,14 @@ int cdev_find_free_index(const char *basename)
 	return -EBUSY;	/* all indexes are used */
 }
 
+int cdev_do_open(struct cdev *cdev, unsigned long flags)
+{
+	if (cdev->ops->open)
+		return cdev->ops->open(cdev, flags);
+
+	return 0;
+}
+
 struct cdev *cdev_open(const char *name, unsigned long flags)
 {
 	struct cdev *cdev = cdev_by_name(name);
@@ -78,11 +86,9 @@ struct cdev *cdev_open(const char *name, unsigned long flags)
 	if (!cdev)
 		return NULL;
 
-	if (cdev->ops->open) {
-		ret = cdev->ops->open(cdev, flags);
-		if (ret)
-			return NULL;
-	}
+	ret = cdev_do_open(cdev, flags);
+	if (ret)
+		return NULL;
 
 	return cdev;
 }
diff --git a/include/driver.h b/include/driver.h
index 353af3a..7ac2eef 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -460,6 +460,7 @@ int devfs_remove(struct cdev *);
 int cdev_find_free_index(const char *);
 struct cdev *cdev_by_name(const char *filename);
 struct cdev *cdev_open(const char *name, unsigned long flags);
+int cdev_do_open(struct cdev *, unsigned long flags);
 void cdev_close(struct cdev *cdev);
 int cdev_flush(struct cdev *cdev);
 ssize_t cdev_read(struct cdev *cdev, void *buf, size_t count, loff_t offset, ulong flags);
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
