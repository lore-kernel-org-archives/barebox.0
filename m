Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gqfWV-0001RU-Sc
 for barebox@lists.infradead.org; Mon, 04 Feb 2019 14:47:01 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Feb 2019 15:46:40 +0100
Message-Id: <20190204144641.19600-5-s.hauer@pengutronix.de>
In-Reply-To: <20190204144641.19600-1-s.hauer@pengutronix.de>
References: <20190204144641.19600-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/5] fs: devfs: forbid truncation when cdev has no truncate
 operation
To: Barebox List <barebox@lists.infradead.org>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

When a cdev doesn't have a truncate callback then forbid truncation
and fail with -EPERM.
Before this we had always failed with -ENOSPC in this situation.
We checked for f->fsdev->dev.num_resources being nonzero, but this
check was absolutely meaningless. It goes back to ancient times when
the resources of a device were automatically added to devfs.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/devfs.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/fs/devfs.c b/fs/devfs.c
index aa44e32613..a7400df1c5 100644
--- a/fs/devfs.c
+++ b/fs/devfs.c
@@ -175,11 +175,7 @@ static int devfs_truncate(struct device_d *dev, FILE *f, loff_t size)
 	if (cdev->ops->truncate)
 		return cdev->ops->truncate(cdev, size);
 
-	if (f->fsdev->dev.num_resources < 1)
-		return -ENOSPC;
-	if (size > resource_size(&f->fsdev->dev.resource[0]))
-		return -ENOSPC;
-	return 0;
+	return -EPERM;
 }
 
 static struct inode *devfs_alloc_inode(struct super_block *sb)
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
