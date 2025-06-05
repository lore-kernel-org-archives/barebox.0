Delivery-date: Thu, 05 Jun 2025 13:39:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN8wD-003zrO-1H
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 13:39:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN8wB-0002eU-KC
	for lore@pengutronix.de; Thu, 05 Jun 2025 13:39:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=S9tE7Wi/Trx/hz+FETZ1xD2SkhzWf9exKyTnHiVpnwE=; b=reCNyxNxSA6IlhUHk2epzUi/QI
	D3eQ9tsQvlhCG6a1YwmuCasFEABVj0huaYC8yvQmNgOEZ4HLOBkoAuHQi/QCs2WItgxl9N2b+zQSo
	+Cmrsc9VuoHEn3CwDdscOgSmgq/JrgTm91HTaCuU1PubWn5l2aDLWCt4WGwl7nBjft2jbxuR4YsWX
	fs+/xFWsHhv73IJTFAXHLv6qg6GD51sNSolDWv//QyZpdv4NDnsK/gzmwTNa3KOoSs+xrglhAKvU9
	InvUXPtwMM5Y+zI1+URKrqrH84i81rapIKPa++7CkqszAljrRK2lY0mWc0oPaeEwXGx7LppoCrTFX
	gp1jGR5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN8ve-0000000FOcl-23mv;
	Thu, 05 Jun 2025 11:38:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN8vU-0000000FOPK-0JHK
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 11:38:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8vS-0001k1-T1; Thu, 05 Jun 2025 13:38:26 +0200
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8vS-001x13-2F;
	Thu, 05 Jun 2025 13:38:26 +0200
Received: from localhost ([::1] helo=dude06.red.stw.pengutronix.de)
	by dude06.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8sg-008mT4-0B;
	Thu, 05 Jun 2025 13:35:33 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  5 Jun 2025 13:35:23 +0200
Message-Id: <20250605113530.2076990-15-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250605113530.2076990-1-a.fatoum@pengutronix.de>
References: <20250605113530.2076990-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_043828_116310_4F489280 
X-CRM114-Status: GOOD (  13.07  )
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
Subject: [PATCH 14/21] block: mark underlying cdev with DEVFS_IS_BLOCK_DEV
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When given a cdev, we detect whether it's a block device by testing that
its ops are those of a block device.

This has the downside that any block device must use the block caching layer.
ramdisks don't benefit from the caching though, so let's add a new flag
bit to mark block devices and use it in preparation for adding ramdisk
support.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/block.c   |  9 +--------
 include/block.h  | 13 +++++++------
 include/driver.h |  1 +
 3 files changed, 9 insertions(+), 14 deletions(-)

diff --git a/common/block.c b/common/block.c
index d401e979abff..ca2ed37dbd3e 100644
--- a/common/block.c
+++ b/common/block.c
@@ -447,14 +447,6 @@ static struct cdev_operations block_ops = {
 	.discard_range = block_op_discard_range,
 };
 
-struct block_device *cdev_get_block_device(const struct cdev *cdev)
-{
-	if (!cdev || cdev->ops != &block_ops)
-		return NULL;
-
-	return cdev->priv;
-}
-
 int blockdevice_register(struct block_device *blk)
 {
 	loff_t size = (loff_t)blk->num_blocks * BLOCKSIZE(blk);
@@ -465,6 +457,7 @@ int blockdevice_register(struct block_device *blk)
 	blk->cdev.dev = blk->dev;
 	blk->cdev.ops = &block_ops;
 	blk->cdev.priv = blk;
+	blk->cdev.flags |= DEVFS_IS_BLOCK_DEV;
 	blk->rdbufsize = BUFSIZE >> blk->blockbits;
 
 	INIT_LIST_HEAD(&blk->buffered_blocks);
diff --git a/include/block.h b/include/block.h
index 5ce3eb7d7838..73b305cdb03f 100644
--- a/include/block.h
+++ b/include/block.h
@@ -82,14 +82,9 @@ static inline int block_flush(struct block_device *blk)
 }
 
 #ifdef CONFIG_BLOCK
-struct block_device *cdev_get_block_device(const struct cdev *cdev);
 unsigned file_list_add_blockdevs(struct file_list *files);
 char *cdev_get_linux_rootarg(const struct cdev *partcdev);
 #else
-static inline struct block_device *cdev_get_block_device(const struct cdev *cdev)
-{
-	return NULL;
-}
 static inline unsigned file_list_add_blockdevs(struct file_list *files)
 {
 	return 0;
@@ -102,7 +97,8 @@ static inline char *cdev_get_linux_rootarg(const struct cdev *partcdev)
 
 static inline bool cdev_is_block_device(const struct cdev *cdev)
 {
-	return cdev_get_block_device(cdev) != NULL;
+	return IS_ENABLED(CONFIG_BLOCK) && cdev &&
+		(cdev->flags & DEVFS_IS_BLOCK_DEV);
 }
 
 static inline bool cdev_is_block_partition(const struct cdev *cdev)
@@ -116,4 +112,9 @@ static inline bool cdev_is_block_disk(const struct cdev *cdev)
 	return cdev_is_block_device(cdev) && !cdev_is_partition(cdev);
 }
 
+static inline struct block_device *cdev_get_block_device(const struct cdev *cdev)
+{
+	return cdev_is_block_device(cdev) ? cdev->priv : NULL;
+}
+
 #endif /* __BLOCK_H */
diff --git a/include/driver.h b/include/driver.h
index e9a919f9bbb5..41e5dad724c3 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -581,6 +581,7 @@ extern struct list_head cdev_list;
 #define DEVFS_PARTITION_FIXED		(1U << 0)
 #define DEVFS_PARTITION_READONLY	(1U << 1)
 #define DEVFS_IS_CHARACTER_DEV		(1U << 3)
+#define DEVFS_IS_BLOCK_DEV		(1U << 4)
 #define DEVFS_PARTITION_FROM_OF		(1U << 5)
 #define DEVFS_PARTITION_FROM_TABLE	(1U << 6)
 #define DEVFS_IS_MBR_PARTITIONED	(1U << 7)
-- 
2.39.5



