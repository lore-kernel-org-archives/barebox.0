Delivery-date: Tue, 30 Jul 2024 09:20:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYh9W-004O7r-2C
	for lore@lore.pengutronix.de;
	Tue, 30 Jul 2024 09:20:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYh9V-0007Ce-PW
	for lore@pengutronix.de; Tue, 30 Jul 2024 09:20:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=W/yJDQ7hZE6OI5OdZ9hLFfaGx9/uzEqtiskkeUjZv7Y=; b=mil2HwSWyS8rsj2MyIs3kBdJeb
	NDVE4xUAo0B5bv8qoUcPu/rCxjWmu8ythsanDjM66seX8eL51XJB3VyqRawhxSf9zsibYrQcwQEHH
	ooFZpWJfw/2UE7QO5HqUY60L5nI9dCQLwKKarbX/9LGQltL9x7F3LnYu5MUq0ZrKHec8ykulUS0Nq
	LrgdF0iHV7gJJzDk3utYMqbR6o9qAry3gjv+zv9R/Ny/2uJUjkV4os2R50zOy06RkZKEmUjkD/Bzq
	ERb2L/aBQxdu4BjHLH/RfhDUx+vVOR+UJYkF7Yhbf3UqhgJrRCYYKEyzaI9RgBGhESnkfL4YeIqKM
	szHweasQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYh92-0000000Dyzr-1akT;
	Tue, 30 Jul 2024 07:19:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYh8u-0000000Dyuw-24rA
	for barebox@lists.infradead.org;
	Tue, 30 Jul 2024 07:19:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sYh8s-0006nP-Ji; Tue, 30 Jul 2024 09:19:30 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sYh8s-003EJA-5X; Tue, 30 Jul 2024 09:19:30 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sYh8s-008TRQ-0F;
	Tue, 30 Jul 2024 09:19:30 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 30 Jul 2024 09:19:22 +0200
Message-Id: <20240730071929.2016537-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240730071929.2016537-1-a.fatoum@pengutronix.de>
References: <20240730071929.2016537-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240730_001932_630190_F13407EE 
X-CRM114-Status: GOOD (  16.61  )
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
Subject: [PATCH 03/10] block: allow block devices to implement the cdev erase operation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We mainly implement cdev erase for raw flashes. Many block devices, like
NVMe, SSD or SD/MMC are also flash-based and expose a mechanism or
multiple to trigger an erase on hardware or flash translation layer
level without an accompanied write.

To make it possible to use this functionality elsewhere in barebox,
let's have the common block device layer pass through the erase
operation, so it may be implemented in a device-specific manner.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/block.c  | 43 +++++++++++++++++++++++++++++++++++++++++++
 include/block.h |  1 +
 2 files changed, 44 insertions(+)

diff --git a/common/block.c b/common/block.c
index f55da775a797..b43fcbe6927b 100644
--- a/common/block.c
+++ b/common/block.c
@@ -380,10 +380,45 @@ static int block_op_discard_range(struct cdev *cdev, loff_t count, loff_t offset
 	return 0;
 }
 
+static bool region_overlap(loff_t starta, loff_t lena,
+                           loff_t startb, loff_t lenb)
+{
+        if (starta + lena <= startb)
+                return 0;
+        if (startb + lenb <= starta)
+                return 0;
+        return 1;
+}
+
+static __maybe_unused int block_op_erase(struct cdev *cdev, loff_t count, loff_t offset)
+{
+	struct block_device *blk = cdev->priv;
+	struct chunk *chunk, *tmp;
+	int ret;
+
+	if (!blk->ops->erase)
+		return -EOPNOTSUPP;
+
+	count >>= blk->blockbits;
+	offset >>= blk->blockbits;
+
+	list_for_each_entry_safe(chunk, tmp, &blk->buffered_blocks, list) {
+		if (region_overlap(offset, count, chunk->block_start, blk->rdbufsize)) {
+			ret = chunk_flush(blk, chunk);
+			if (ret < 0)
+				return ret;
+			list_move(&chunk->list, &blk->idle_blocks);
+		}
+	}
+
+	return blk->ops->erase(blk, offset, count);
+}
+
 static struct cdev_operations block_ops = {
 	.read	= block_op_read,
 #ifdef CONFIG_BLOCK_WRITE
 	.write	= block_op_write,
+	.erase = block_op_erase,
 #endif
 	.close	= block_op_close,
 	.flush	= block_op_flush,
@@ -429,6 +464,14 @@ int blockdevice_register(struct block_device *blk)
 		list_add_tail(&chunk->list, &blk->idle_blocks);
 	}
 
+	/* TODO: We currently set this to ignore ERASE_TO_FLASH, but it could
+	 * be useful to propagate the enum erase_type down into the erase
+	 * callbacks and then map ERASE_TO_FLASH here to a discard operation.
+	 * Before doing that though, we need to optimize the hardware drivers
+	 * (currently eMMC) to erase bigger regions at once
+	 */
+	blk->cdev.flags |= DEVFS_WRITE_AUTOERASE;
+
 	ret = devfs_create(&blk->cdev);
 	if (ret)
 		return ret;
diff --git a/include/block.h b/include/block.h
index a0f226c7649f..eb319b953d32 100644
--- a/include/block.h
+++ b/include/block.h
@@ -12,6 +12,7 @@ struct file_list;
 struct block_device_ops {
 	int (*read)(struct block_device *, void *buf, sector_t block, blkcnt_t num_blocks);
 	int (*write)(struct block_device *, const void *buf, sector_t block, blkcnt_t num_blocks);
+	int (*erase)(struct block_device *blk, sector_t block, blkcnt_t num_blocks);
 	int (*flush)(struct block_device *);
 };
 
-- 
2.39.2



