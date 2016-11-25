Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.tricorecenter.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cABWk-0004Mm-3l
 for barebox@lists.infradead.org; Fri, 25 Nov 2016 08:06:42 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id A9329A00437
 for <barebox@lists.infradead.org>; Fri, 25 Nov 2016 09:06:50 +0100 (CET)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Fri, 25 Nov 2016 09:06:03 +0100
Message-Id: <1480061167-21590-3-git-send-email-t.remmet@phytec.de>
In-Reply-To: <1480061167-21590-1-git-send-email-t.remmet@phytec.de>
References: <1480061167-21590-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 2/6] devfs: Add optional truncate callback for device files
To: barebox@lists.infradead.org

Not all device files have trivial fix device sizes like static
ubi volumes. Here the device file size equals the image size it contains.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 fs/devfs.c       | 5 +++++
 include/driver.h | 1 +
 2 files changed, 6 insertions(+)

diff --git a/fs/devfs.c b/fs/devfs.c
index 6fabcf8..2a7b1b3 100644
--- a/fs/devfs.c
+++ b/fs/devfs.c
@@ -168,6 +168,11 @@ static int devfs_ioctl(struct device_d *_dev, FILE *f, int request, void *buf)
 
 static int devfs_truncate(struct device_d *dev, FILE *f, ulong size)
 {
+	struct cdev *cdev = f->priv;
+
+	if (cdev->ops->truncate)
+		return cdev->ops->truncate(cdev, size);
+
 	if (f->fsdev->dev.num_resources < 1)
 		return -ENOSPC;
 	if (size > resource_size(&f->fsdev->dev.resource[0]))
diff --git a/include/driver.h b/include/driver.h
index 80aa8d8..6abaaad 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -434,6 +434,7 @@ struct file_operations {
 	int (*erase)(struct cdev*, loff_t count, loff_t offset);
 	int (*protect)(struct cdev*, size_t count, loff_t offset, int prot);
 	int (*memmap)(struct cdev*, void **map, int flags);
+	int (*truncate)(struct cdev*, size_t size);
 };
 
 #define MAX_PARTUUID_STR	sizeof("00112233-4455-6677-8899-AABBCCDDEEFF")
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
