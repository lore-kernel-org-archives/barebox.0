Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-f49.google.com ([74.125.82.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TBJ3U-0004Tt-OG
 for barebox@lists.infradead.org; Tue, 11 Sep 2012 05:30:37 +0000
Received: by wgbdt14 with SMTP id dt14so69702wgb.18
 for <barebox@lists.infradead.org>; Mon, 10 Sep 2012 22:30:33 -0700 (PDT)
From: Alexander Aring <alex.aring@googlemail.com>
Date: Tue, 11 Sep 2012 07:31:31 +0200
Message-Id: <1347341491-2647-1-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH] fs: fs.c fix cast
To: barebox@lists.infradead.org

Fix casting on min argument, to avoid warnings on 64bit build.

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 fs/fs.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index 38917bf..db4621a 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -1525,7 +1525,9 @@ ssize_t mem_read(struct cdev *cdev, void *buf, size_t count, loff_t offset, ulon
 		return -1;
 	dev = cdev->dev;
 
-	size = min((loff_t)count, resource_size(&dev->resource[0]) - offset);
+	size = min((resource_size_t)count,
+			resource_size(&dev->resource[0]) -
+			(resource_size_t)offset);
 	memcpy_sz(buf, dev_get_mem_region(dev, 0) + offset, size, flags & O_RWSIZE_MASK);
 	return size;
 }
@@ -1540,7 +1542,9 @@ ssize_t mem_write(struct cdev *cdev, const void *buf, size_t count, loff_t offse
 		return -1;
 	dev = cdev->dev;
 
-	size = min((loff_t)count, resource_size(&dev->resource[0]) - offset);
+	size = min((resource_size_t)count,
+			resource_size(&dev->resource[0]) -
+			(resource_size_t)offset);
 	memcpy_sz(dev_get_mem_region(dev, 0) + offset, buf, size, flags & O_RWSIZE_MASK);
 	return size;
 }
-- 
1.7.12


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
