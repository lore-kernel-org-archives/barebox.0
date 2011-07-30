Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo4.mail-out.ovh.net ([188.165.54.143]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1Qn0KG-0001jD-FP
	for barebox@lists.infradead.org; Sat, 30 Jul 2011 03:34:59 +0000
Received: from mail182.ha.ovh.net (b6.ovh.net [213.186.33.56])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id 3507EFF9FD4
	for <barebox@lists.infradead.org>;
	Sat, 30 Jul 2011 05:35:46 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 30 Jul 2011 05:17:05 +0200
Message-Id: <1311995831-25350-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20110729155356.GF25658@game.jcrosoft.org>
References: <20110729155356.GF25658@game.jcrosoft.org>
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
Subject: [PATCH 17/23] fs: switch to resource
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 fs/devfs.c |    4 +++-
 fs/fs.c    |    8 ++++----
 2 files changed, 7 insertions(+), 5 deletions(-)

diff --git a/fs/devfs.c b/fs/devfs.c
index 07ca16c..66f7ca4 100644
--- a/fs/devfs.c
+++ b/fs/devfs.c
@@ -161,7 +161,9 @@ static int devfs_ioctl(struct device_d *_dev, FILE *f, int request, void *buf)
 
 static int devfs_truncate(struct device_d *dev, FILE *f, ulong size)
 {
-	if (size > f->dev->size)
+	if (f->dev->num_resources < 1)
+		return -ENOSPC;
+	if (size > f->dev->resource[0].size)
 		return -ENOSPC;
 	return 0;
 }
diff --git a/fs/fs.c b/fs/fs.c
index bcc6ff4..7d65ec8 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -1043,11 +1043,11 @@ ssize_t mem_read(struct cdev *cdev, void *buf, size_t count, ulong offset, ulong
 	ulong size;
 	struct device_d *dev;
 
-	if (!cdev->dev)
+	if (!cdev->dev || cdev->dev->num_resources < 1)
 		return -1;
 	dev = cdev->dev;
 
-	size = min((ulong)count, dev->size - offset);
+	size = min((ulong)count, dev->resource[0].size - offset);
 	memcpy_sz(buf, dev_get_mem_region(dev, 0) + offset, size, flags & O_RWSIZE_MASK);
 	return size;
 }
@@ -1058,11 +1058,11 @@ ssize_t mem_write(struct cdev *cdev, const void *buf, size_t count, ulong offset
 	ulong size;
 	struct device_d *dev;
 
-	if (!cdev->dev)
+	if (!cdev->dev || cdev->dev->num_resources < 1)
 		return -1;
 	dev = cdev->dev;
 
-	size = min((ulong)count, dev->size - offset);
+	size = min((ulong)count, dev->resource[0].size - offset);
 	memcpy_sz(dev_get_mem_region(dev, 0) + offset, buf, size, flags & O_RWSIZE_MASK);
 	return size;
 }
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
