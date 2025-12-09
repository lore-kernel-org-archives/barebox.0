Delivery-date: Tue, 09 Dec 2025 13:52:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vSxCH-009Yr8-1j
	for lore@lore.pengutronix.de;
	Tue, 09 Dec 2025 13:52:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vSxCF-0001De-UQ
	for lore@pengutronix.de; Tue, 09 Dec 2025 13:52:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=U153aSi/id31PKwQEbVRqj00oUYl0NCifm/7Xg78PVw=; b=RRq/J/fKEL3ybg/XhbD8T9ejrt
	5xUz1PVkjEYyzOeiVNOtE2MwS8m55Yujsytq3Di1VCR+IzKlcaJoAPn3ks4nnqqUrKxO24iRkiznW
	/c8gCj928SZzAmfE0KfPrBIbyJnbikaOhaD1S+W2p+g4mym9tbntssnGuu7fpPPgZFmKcNfSANAzk
	b5G2Tk1PcQm7M8iyMXZ3qtIjHvj0BLlHfCkIB2Et5lOwkhizh9UBp+FnVH2IwSN3KVSzsTWZNa4Aa
	boWkW0l5wtEtoATHyrs1BUX2C81kaqzWOOwl5dYhqhQ46t7aDVyn5GY1bqDT2D/ho/2JzOv1vgCC3
	YxO8ERYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSxBo-0000000EHQ5-1aRC;
	Tue, 09 Dec 2025 12:51:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSxBk-0000000EHL6-42G4
	for barebox@lists.infradead.org;
	Tue, 09 Dec 2025 12:51:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSxBb-0000oz-G8; Tue, 09 Dec 2025 13:51:23 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSxBb-004mua-0Q;
	Tue, 09 Dec 2025 13:51:23 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSxBa-0000000HSGm-48bW;
	Tue, 09 Dec 2025 13:51:22 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 09 Dec 2025 13:51:21 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251209-devfs-v2-2-62ae16698cff@pengutronix.de>
References: <20251209-devfs-v2-0-62ae16698cff@pengutronix.de>
In-Reply-To: <20251209-devfs-v2-0-62ae16698cff@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765284682; l=4154;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=Dj6asnopntx+UIY2LhL48Sd2U4UYa1yhsG2+7zmvIaU=;
 b=Dj74aAw1q4+moYOGsx4K1Bb0nd9sKtolKC6MBHuziXQzmu67hK7qGNXKu4an6ikKRC6Go0yur
 jiAL52v0cyzBjKxQ+Y5+jvUe43tUWPCWdc6Tsbmqcxv3ZGx85I5ETfh
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251209_045133_004994_6CA6EB73 
X-CRM114-Status: GOOD (  13.18  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 02/13] storage-by-alias: drop fake cdev
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

storage-by-alias creates its own cdev, but that is never used. The only
purpose is to create a cdev with its own device node which otherwise
links to the original cdev. This means we can drop all the cdev
operations and use the newly created devfs_create_link_node() with the
same effect.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/misc/storage-by-alias.c | 120 +++-------------------------------------
 1 file changed, 7 insertions(+), 113 deletions(-)

diff --git a/drivers/misc/storage-by-alias.c b/drivers/misc/storage-by-alias.c
index 2c498e0d0483ca71093612382c78372df399c437..6c759867ccbb7a7b4bc922152699eb346d42d271 100644
--- a/drivers/misc/storage-by-alias.c
+++ b/drivers/misc/storage-by-alias.c
@@ -24,102 +24,8 @@ static LIST_HEAD(sba_list);
 struct sba {
 	char *alias;
 	struct device *dev;
-	struct cdev *rcdev;
-	struct cdev cdev;
 	struct list_head list;
-};
-
-static ssize_t sba_read(struct cdev *cdev, void *buf, size_t count, loff_t offset, ulong flags)
-{
-	struct sba *sba = cdev->priv;
-
-	return cdev_read(sba->rcdev, buf, count, offset, flags);
-}
-
-static ssize_t sba_write(struct cdev *cdev, const void *buf, size_t count, loff_t offset, ulong flags)
-{
-	struct sba *sba = cdev->priv;
-
-	return cdev_write(sba->rcdev, buf, count, offset, flags);
-}
-
-static int sba_ioctl(struct cdev *cdev, unsigned int request, void *buf)
-{
-	struct sba *sba = cdev->priv;
-
-	return cdev_ioctl(sba->rcdev, request, buf);
-}
-
-static int sba_open(struct cdev *cdev, unsigned long flags)
-{
-	struct sba *sba = cdev->priv;
-
-	return cdev_open(sba->rcdev, flags);
-}
-
-static int sba_close(struct cdev *cdev)
-{
-	struct sba *sba = cdev->priv;
-
-	cdev_close(sba->rcdev);
-
-	return 0;
-}
-
-static int sba_flush(struct cdev *cdev)
-{
-	struct sba *sba = cdev->priv;
-
-	return cdev_flush(sba->rcdev);
-}
-
-static int sba_erase(struct cdev *cdev, loff_t count, loff_t offset)
-{
-	struct sba *sba = cdev->priv;
-
-	return cdev_erase(sba->rcdev, count, offset);
-}
-
-static int sba_protect(struct cdev *cdev, size_t count, loff_t offset, int prot)
-{
-	struct sba *sba = cdev->priv;
-
-	return cdev_protect(sba->rcdev, count, offset, prot);
-}
-
-static int sba_discard_range(struct cdev *cdev, loff_t count, loff_t offset)
-{
-	struct sba *sba = cdev->priv;
-
-	return cdev_discard_range(sba->rcdev, count, offset);
-}
-
-static int sba_memmap(struct cdev *cdev, void **map, int flags)
-{
-	struct sba *sba = cdev->priv;
-
-	return cdev_memmap(sba->rcdev, map, flags);
-}
-
-static int sba_truncate(struct cdev *cdev, size_t size)
-{
-	struct sba *sba = cdev->priv;
-
-	return cdev_truncate(sba->rcdev, size);
-}
-
-static struct cdev_operations sba_ops = {
-	.read = sba_read,
-	.write = sba_write,
-	.ioctl = sba_ioctl,
-	.open = sba_open,
-	.close = sba_close,
-	.flush = sba_flush,
-	.erase = sba_erase,
-	.protect = sba_protect,
-	.discard_range = sba_discard_range,
-	.memmap = sba_memmap,
-	.truncate = sba_truncate,
+	bool populated;
 };
 
 static int sba_add_partitions(struct cdev *rcdev, void *data)
@@ -127,29 +33,17 @@ static int sba_add_partitions(struct cdev *rcdev, void *data)
 	struct sba *sba = data;
 	int ret;
 
-	dev_dbg(sba->dev, "Adding %s -> %s\n", sba->alias, rcdev->name);
-
-	if (sba->rcdev)
+	if (sba->populated)
 		return 0;
 
-	sba->rcdev = rcdev;
-	sba->cdev.link = rcdev;
-	sba->cdev.name = sba->alias;
-	sba->cdev.size = rcdev->size;
-	sba->cdev.ops = &sba_ops;
-	sba->cdev.dev = sba->dev;
-	sba->cdev.priv = sba;
+	dev_info(sba->dev, "Adding %s -> %s\n", sba->alias, rcdev->name);
 
-	if (rcdev->flags & DEVFS_WRITE_AUTOERASE)
-		sba->cdev.flags |= DEVFS_WRITE_AUTOERASE;
+	ret = devfs_create_link_node(rcdev, sba->alias, sba->dev->device_node);
+	if (ret)
+		return ret;
 
-	ret = devfs_create(&sba->cdev);
-	if (ret) {
-		dev_err(sba->dev, "Failed to create cdev: %pe\n", ERR_PTR(ret));
-		return 0;
-	}
+	sba->populated = true;
 
-	of_parse_partitions(&sba->cdev, sba->dev->of_node);
 	return 0;
 }
 

-- 
2.47.3



