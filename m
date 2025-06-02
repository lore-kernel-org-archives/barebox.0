Delivery-date: Mon, 02 Jun 2025 10:52:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM0u2-002tsR-2o
	for lore@lore.pengutronix.de;
	Mon, 02 Jun 2025 10:52:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM0u2-00015s-64
	for lore@pengutronix.de; Mon, 02 Jun 2025 10:52:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZQVAbwZWDwsq8BUObfhCo1iMNeSkABfMqbDUPdIZb7s=; b=SXHfaor3mB6uPN9Oug7yxHi3Hu
	RaoVvgTJ+Pm2I/5GtS6edcESl36awsp7kx2uR6WMPoFgC1riggq8LtO5prANtqhhfrj7WNP/q37de
	b987GuF02vD90fNe5U7bnFDZQyrac1xLfmpefeYOgPYjvf19m9F9+/xAy9oUBzrH/zONMv6pqjSnv
	lXdQTcBEHJgTrbSyH+pkoWSNPS0uyTeXQBHt4TMgvNVrvkbKlzPw0KJa8tDhpNSjI1qzV5OWxbO+W
	4/YZFLyk7gF/rsSNMUY0mmZc7TwB43uLqK5IdqOLNV7FnDK9D4J+BdG6EFOuPFCg7mo74jOtZdq3F
	sK08puDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM0tV-0000000715S-32Dd;
	Mon, 02 Jun 2025 08:51:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM0tS-0000000714b-3Gyh
	for barebox@lists.infradead.org;
	Mon, 02 Jun 2025 08:51:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uM0tJ-0000kL-L9; Mon, 02 Jun 2025 10:51:33 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uM0tJ-001QOd-1Q;
	Mon, 02 Jun 2025 10:51:33 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uM0tJ-003dab-1C;
	Mon, 02 Jun 2025 10:51:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 02 Jun 2025 10:51:31 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250602-cdev-part-fixes-v1-1-814d9aa195ed@pengutronix.de>
References: <20250602-cdev-part-fixes-v1-0-814d9aa195ed@pengutronix.de>
In-Reply-To: <20250602-cdev-part-fixes-v1-0-814d9aa195ed@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1748854293; l=5146;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=BooOVeFeA9Vwxe83ePGcMBqDTBJc8+2fPf/qP3ilZVc=;
 b=NIo0CH3fCRTVE9kxgUH2EhCdwrKlEU7rQxJZ6yRb2Kz43nPHjddpfz53SYVF8IH0MuoFnsGsj
 R3+USwIAuSoAdrNv5HHWdfkiReFSWumJzhoX+3jmjSkeBIWNJ6sCW4a
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250602_015142_829534_B4DFDAA5 
X-CRM114-Status: GOOD (  15.89  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] cdev: pass master cdev to cdev ops
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

cdev partitions are cdevs themselves, but they are handled internally in
the devfs-core. cdev partitions should not be passed as context pointers
to the cdev ops though, because the drivers might do a container_of() on
them to retrieve their driver data. Pass the original cdev the driver
has registered as context to the ops. With this we can drop some quirks
in the nvmem core in the next step.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/devfs-core.c | 53 +++++++++++++++++++++++++++++++++++++++++------------
 1 file changed, 41 insertions(+), 12 deletions(-)

diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index 5fafcaecc70d63287e0b716cc0133198c28e79e9..73a13be7336df1eb4e24e8a936986b6069f3783c 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -224,12 +224,21 @@ int cdev_find_free_index(const char *basename)
 	return -EBUSY;	/* all indexes are used */
 }
 
+static struct cdev *cdev_get_master(struct cdev *cdev)
+{
+	while (cdev && cdev_is_partition(cdev))
+		cdev = cdev->master;
+
+	return cdev;
+}
+
 int cdev_open(struct cdev *cdev, unsigned long flags)
 {
+	struct cdev *master = cdev_get_master(cdev);
 	int ret;
 
 	if (cdev->ops->open) {
-		ret = cdev->ops->open(cdev, flags);
+		ret = cdev->ops->open(master, flags);
 		if (ret)
 			return ret;
 	}
@@ -275,8 +284,10 @@ struct cdev *cdev_open_by_name(const char *name, unsigned long flags)
 
 int cdev_close(struct cdev *cdev)
 {
+	struct cdev *master = cdev_get_master(cdev);
+
 	if (cdev->ops->close) {
-		int ret = cdev->ops->close(cdev);
+		int ret = cdev->ops->close(master);
 		if (ret)
 			return ret;
 	}
@@ -288,50 +299,61 @@ int cdev_close(struct cdev *cdev)
 
 ssize_t cdev_read(struct cdev *cdev, void *buf, size_t count, loff_t offset, ulong flags)
 {
+	struct cdev *master = cdev_get_master(cdev);
+
 	if (!cdev->ops->read)
 		return -ENOSYS;
 
-	return cdev->ops->read(cdev, buf, count, cdev->offset +offset, flags);
+	return cdev->ops->read(master, buf, count, cdev->offset +offset, flags);
 }
 
 ssize_t cdev_write(struct cdev *cdev, const void *buf, size_t count, loff_t offset, ulong flags)
 {
+	struct cdev *master = cdev_get_master(cdev);
+
 	if (!cdev->ops->write)
 		return -ENOSYS;
 
-	return cdev->ops->write(cdev, buf, count, cdev->offset + offset, flags);
+	return cdev->ops->write(master, buf, count, cdev->offset + offset, flags);
 }
 
 int cdev_flush(struct cdev *cdev)
 {
+	struct cdev *master = cdev_get_master(cdev);
+
 	if (!cdev->ops->flush)
 		return 0;
 
-	return cdev->ops->flush(cdev);
+	return cdev->ops->flush(master);
 }
 
 int cdev_ioctl(struct cdev *cdev, unsigned int request, void *buf)
 {
+	struct cdev *master = cdev_get_master(cdev);
+
 	if (!cdev->ops->ioctl)
 		return -EINVAL;
 
-	return cdev->ops->ioctl(cdev, request, buf);
+	return cdev->ops->ioctl(master, request, buf);
 }
 
 int cdev_erase(struct cdev *cdev, loff_t count, loff_t offset)
 {
+	struct cdev *master = cdev_get_master(cdev);
+
 	if (!cdev->ops->erase)
 		return -ENOSYS;
 
-	return cdev->ops->erase(cdev, count, cdev->offset + offset);
+	return cdev->ops->erase(master, count, cdev->offset + offset);
 }
 
 int cdev_lseek(struct cdev *cdev, loff_t pos)
 {
+	struct cdev *master = cdev_get_master(cdev);
 	int ret;
 
 	if (cdev->ops->lseek) {
-		ret = cdev->ops->lseek(cdev, pos + cdev->offset);
+		ret = cdev->ops->lseek(master, pos + cdev->offset);
 		if (ret < 0)
 			return ret;
 	}
@@ -341,14 +363,18 @@ int cdev_lseek(struct cdev *cdev, loff_t pos)
 
 int cdev_protect(struct cdev *cdev, size_t count, loff_t offset, int prot)
 {
+	struct cdev *master = cdev_get_master(cdev);
+
 	if (!cdev->ops->protect)
 		return -ENOSYS;
 
-	return cdev->ops->protect(cdev, count, offset + cdev->offset, prot);
+	return cdev->ops->protect(master, count, offset + cdev->offset, prot);
 }
 
 int cdev_discard_range(struct cdev *cdev, loff_t count, loff_t offset)
 {
+	struct cdev *master = cdev_get_master(cdev);
+
 	if (!cdev->ops->discard_range)
 		return -ENOSYS;
 
@@ -361,17 +387,18 @@ int cdev_discard_range(struct cdev *cdev, loff_t count, loff_t offset)
 	if (count + offset > cdev->size)
 		count = cdev->size - offset;
 
-	return cdev->ops->discard_range(cdev, count, offset + cdev->offset);
+	return cdev->ops->discard_range(master, count, offset + cdev->offset);
 }
 
 int cdev_memmap(struct cdev *cdev, void **map, int flags)
 {
+	struct cdev *master = cdev_get_master(cdev);
 	int ret = -ENOSYS;
 
 	if (!cdev->ops->memmap)
 		return -EINVAL;
 
-	ret = cdev->ops->memmap(cdev, map, flags);
+	ret = cdev->ops->memmap(master, map, flags);
 
 	if (!ret)
 		*map = (void *)((unsigned long)*map + (unsigned long)cdev->offset);
@@ -381,8 +408,10 @@ int cdev_memmap(struct cdev *cdev, void **map, int flags)
 
 int cdev_truncate(struct cdev *cdev, size_t size)
 {
+	struct cdev *master = cdev_get_master(cdev);
+
 	if (cdev->ops->truncate)
-		return cdev->ops->truncate(cdev, size);
+		return cdev->ops->truncate(master, size);
 
 	return -EPERM;
 }

-- 
2.39.5



