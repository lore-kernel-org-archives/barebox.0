Delivery-date: Mon, 07 Feb 2022 10:52:13 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nH0gv-0088tI-Rg
	for lore@lore.pengutronix.de; Mon, 07 Feb 2022 10:52:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nH0gt-0003cY-PR
	for lore@pengutronix.de; Mon, 07 Feb 2022 10:52:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G3rY61e87R0WNW/q34YDk742qk+5BA8cDl6DJCaAKDs=; b=T2e0mWExMJRsW/
	X7oh5RBVnRxN/wNn6Lh4Xj360O/SloRrrTy5UDHBQYOoPKFvSt3wg0mP/yLgGzTuagwULXQir2XP+
	P88kRd5t7uieEYy82bjp/vqjM4y/+Sn30uRHwT9dTwvIScKdw5pmwHLPmiIi7F/SAl7CJX/JYLCcF
	QkFsj16v+S7XG1pgE/f1QADomu35BHVxWOTY6JaAJswlwvLgbChi6ASflOPjk//FW+WQrW4YXs0Vl
	WW+6EuA2n5zW+2lpA7RVj+xqvZzR2OJ6bADGoF7m+SSg6ArkweL8m4gUaiZbEDHprNqtAvKc+8wjL
	hwg7epv3akcret+rOIjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nH0fc-009e6N-9c; Mon, 07 Feb 2022 09:50:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nH0eo-009dkc-M0
 for barebox@lists.infradead.org; Mon, 07 Feb 2022 09:50:06 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nH0en-0002tg-BK; Mon, 07 Feb 2022 10:50:01 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nH0em-0040M4-Mn; Mon, 07 Feb 2022 10:50:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon,  7 Feb 2022 10:49:51 +0100
Message-Id: <20220207094953.949868-6-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220207094953.949868-1-s.hauer@pengutronix.de>
References: <20220207094953.949868-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220207_015002_804492_17633FC7 
X-CRM114-Status: GOOD (  14.18  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Cc: Michael Olbrich <mol@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 6/8] cdev: Create missing cdev_* functions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We have several functions like cdev_read(), cdev_write() and others. For
consistency create the remaining functions: cdev_lseek(),
cdev_protect(), cdev_discard_range(), cdev_memmap() and cdev_truncate()

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/devfs-core.c  | 61 ++++++++++++++++++++++++++++++++++++++++++++++++
 fs/devfs.c       | 46 +++++-------------------------------
 include/driver.h |  5 ++++
 3 files changed, 72 insertions(+), 40 deletions(-)

diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index dd6a9585bc..c9a8529737 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -239,6 +239,67 @@ int cdev_erase(struct cdev *cdev, loff_t count, loff_t offset)
 	return cdev->ops->erase(cdev, count, cdev->offset + offset);
 }
 
+int cdev_lseek(struct cdev *cdev, loff_t pos)
+{
+	int ret;
+
+	if (cdev->ops->lseek) {
+		ret = cdev->ops->lseek(cdev, pos + cdev->offset);
+		if (ret < 0)
+			return ret;
+	}
+
+	return 0;
+}
+
+int cdev_protect(struct cdev *cdev, size_t count, loff_t offset, int prot)
+{
+	if (!cdev->ops->protect)
+		return -ENOSYS;
+
+	return cdev->ops->protect(cdev, count, offset + cdev->offset, prot);
+}
+
+int cdev_discard_range(struct cdev *cdev, loff_t count, loff_t offset)
+{
+	if (!cdev->ops->discard_range)
+		return -ENOSYS;
+
+	if (cdev->flags & DEVFS_PARTITION_READONLY)
+		return -EPERM;
+
+	if (offset >= cdev->size)
+		return 0;
+
+	if (count + offset > cdev->size)
+		count = cdev->size - offset;
+
+	return cdev->ops->discard_range(cdev, count, offset + cdev->offset);
+}
+
+int cdev_memmap(struct cdev *cdev, void **map, int flags)
+{
+	int ret = -ENOSYS;
+
+	if (!cdev->ops->memmap)
+		return -EINVAL;
+
+	ret = cdev->ops->memmap(cdev, map, flags);
+
+	if (!ret)
+		*map = (void *)((unsigned long)*map + (unsigned long)cdev->offset);
+
+	return ret;
+}
+
+int cdev_truncate(struct cdev *cdev, size_t size)
+{
+	if (cdev->ops->truncate)
+		return cdev->ops->truncate(cdev, size);
+
+	return -EPERM;
+}
+
 int devfs_create(struct cdev *new)
 {
 	struct cdev *cdev;
diff --git a/fs/devfs.c b/fs/devfs.c
index df229cca48..d205881765 100644
--- a/fs/devfs.c
+++ b/fs/devfs.c
@@ -57,15 +57,8 @@ static int devfs_write(struct device_d *_dev, FILE *f, const void *buf, size_t s
 static int devfs_lseek(struct device_d *_dev, FILE *f, loff_t pos)
 {
 	struct cdev *cdev = f->priv;
-	int ret;
 
-	if (cdev->ops->lseek) {
-		ret = cdev->ops->lseek(cdev, pos + cdev->offset);
-		if (ret < 0)
-			return ret;
-	}
-
-	return 0;
+	return cdev_lseek(cdev, pos);
 }
 
 static int devfs_erase(struct device_d *_dev, FILE *f, loff_t count, loff_t offset)
@@ -81,14 +74,11 @@ static int devfs_erase(struct device_d *_dev, FILE *f, loff_t count, loff_t offs
 	return cdev_erase(cdev, count, offset);
 }
 
-static int devfs_protect(struct device_d *_dev, FILE *f, size_t count, loff_t offset, int prot)
+static int devfs_protect(struct device_d *dev, FILE *f, size_t count, loff_t offset, int prot)
 {
 	struct cdev *cdev = f->priv;
 
-	if (!cdev->ops->protect)
-		return -ENOSYS;
-
-	return cdev->ops->protect(cdev, count, offset + cdev->offset, prot);
+	return cdev_protect(cdev, count, offset, prot);
 }
 
 static int devfs_discard_range(struct device_d *dev, FILE *f, loff_t count,
@@ -96,35 +86,14 @@ static int devfs_discard_range(struct device_d *dev, FILE *f, loff_t count,
 {
 	struct cdev *cdev = f->priv;
 
-	if (!cdev->ops->discard_range)
-		return -ENOSYS;
-
-	if (cdev->flags & DEVFS_PARTITION_READONLY)
-		return -EPERM;
-
-	if (offset >= cdev->size)
-		return 0;
-
-	if (count + offset > cdev->size)
-		count = cdev->size - offset;
-
-	return cdev->ops->discard_range(cdev, count, offset + cdev->offset);
+	return cdev_discard_range(cdev, count, offset);
 }
 
 static int devfs_memmap(struct device_d *_dev, FILE *f, void **map, int flags)
 {
 	struct cdev *cdev = f->priv;
-	int ret = -ENOSYS;
 
-	if (!cdev->ops->memmap)
-		return -EINVAL;
-
-	ret = cdev->ops->memmap(cdev, map, flags);
-
-	if (!ret)
-		*map = (void *)((unsigned long)*map + (unsigned long)cdev->offset);
-
-	return ret;
+	return cdev_memmap(cdev, map, flags);
 }
 
 static int devfs_open(struct device_d *_dev, FILE *f, const char *filename)
@@ -183,10 +152,7 @@ static int devfs_truncate(struct device_d *dev, FILE *f, loff_t size)
 {
 	struct cdev *cdev = f->priv;
 
-	if (cdev->ops->truncate)
-		return cdev->ops->truncate(cdev, size);
-
-	return -EPERM;
+	return cdev_truncate(cdev, size);
 }
 
 static struct inode *devfs_alloc_inode(struct super_block *sb)
diff --git a/include/driver.h b/include/driver.h
index 93de4f676e..b9b0b8497d 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -503,6 +503,11 @@ ssize_t cdev_read(struct cdev *cdev, void *buf, size_t count, loff_t offset, ulo
 ssize_t cdev_write(struct cdev *cdev, const void *buf, size_t count, loff_t offset, ulong flags);
 int cdev_ioctl(struct cdev *cdev, int cmd, void *buf);
 int cdev_erase(struct cdev *cdev, loff_t count, loff_t offset);
+int cdev_lseek(struct cdev*, loff_t);
+int cdev_protect(struct cdev*, size_t count, loff_t offset, int prot);
+int cdev_discard_range(struct cdev*, loff_t count, loff_t offset);
+int cdev_memmap(struct cdev*, void **map, int flags);
+int cdev_truncate(struct cdev*, size_t size);
 loff_t cdev_unallocated_space(struct cdev *cdev);
 
 #define DEVFS_PARTITION_FIXED		(1U << 0)
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

