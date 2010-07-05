Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OVlXN-0000kr-BG
	for barebox@lists.infradead.org; Mon, 05 Jul 2010 13:16:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  5 Jul 2010 15:16:31 +0200
Message-Id: <1278335795-16289-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1278335795-16289-1-git-send-email-s.hauer@pengutronix.de>
References: <1278335795-16289-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/12] devfs: only check for ioctl function when needed
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/devfs.c |   15 +++++++--------
 1 files changed, 7 insertions(+), 8 deletions(-)

diff --git a/fs/devfs.c b/fs/devfs.c
index 9ce9117..7019c8d 100644
--- a/fs/devfs.c
+++ b/fs/devfs.c
@@ -193,6 +193,8 @@ static int partition_ioctl(struct cdev *cdev, int request, void *buf)
 			user->eccsize	= 0;
 			return 0;
 		}
+		if (!cdev->ops->ioctl)
+			return -EINVAL;
 		return cdev->ops->ioctl(cdev, request, buf);
 	default:
 		return -EINVAL;
@@ -202,17 +204,14 @@ static int partition_ioctl(struct cdev *cdev, int request, void *buf)
 static int devfs_ioctl(struct device_d *_dev, FILE *f, int request, void *buf)
 {
 	struct cdev *cdev = f->inode;
-	int ret = -EINVAL;
+
+	if (cdev->flags & DEVFS_IS_PARTITION)
+		return partition_ioctl(cdev, request, buf);
 
 	if (!cdev->ops->ioctl)
-		goto out;
+		return -EINVAL;
 
-	if (cdev->flags & DEVFS_IS_PARTITION)
-		ret = partition_ioctl(cdev, request, buf);
-	else
-		ret = cdev->ops->ioctl(cdev, request, buf);
-out:
-	return ret;
+	return cdev->ops->ioctl(cdev, request, buf);
 }
 
 static int devfs_truncate(struct device_d *dev, FILE *f, ulong size)
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
