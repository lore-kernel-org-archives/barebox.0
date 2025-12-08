Delivery-date: Mon, 08 Dec 2025 11:32:59 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vSYY7-009BMX-1t
	for lore@lore.pengutronix.de;
	Mon, 08 Dec 2025 11:32:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vSYY6-0002me-W1
	for lore@pengutronix.de; Mon, 08 Dec 2025 11:32:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=r3y2WrPCqUxjbtGGWn4xeNOAl+SIYJDXpJKqiJBwbmY=; b=w03lCyrKvIZ3x1whLkuciqxqpw
	2E31HJGkrNKNXNGxMWjMl0jSKWZgbmhZvp+80OcSlwhPe53wAbnDwSJy1k7G/ppsg/OKCvdd8nbv3
	+MRXY1+stBCF9CTGLYhobSpD4Os3yNZXuF8VF4rRZZPaC0+aXDwMIIg9b3OSQ/CfHmXvX7/+lGFZe
	6+3NE/51tpJwrd1wre4BZ3Q9XN8W5xEvU/nZi2B9REXL1Xhsz7hBXjeyGNEPpO+PhNi56I8Q0R0WL
	rEPkL5/A9O0tpGL4XLlSFZ5Do6gFW9kqIbw2KALSy6OGpZth5Z8AHmexag2b4Pp/Kh/VE/OpwwYjr
	dLOs4Obw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSYXj-0000000CxKg-0Xgm;
	Mon, 08 Dec 2025 10:32:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSYXg-0000000CxK1-1qib
	for barebox@lists.infradead.org;
	Mon, 08 Dec 2025 10:32:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vSYXe-0002gY-QJ; Mon, 08 Dec 2025 11:32:30 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vSYXe-004b2A-21;
	Mon, 08 Dec 2025 11:32:30 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vSYXe-0000000HKiz-2DVb;
	Mon, 08 Dec 2025 11:32:30 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  8 Dec 2025 11:32:29 +0100
Message-ID: <20251208103229.4130820-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251208_023232_477129_E1BCB2B5 
X-CRM114-Status: GOOD (  12.55  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! environment: prefer non-removable over removable devices for autoprobe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Instead of ad-hoc determination in an inline function in the header, let
every user decide for itself, it the device is removable or not.

This changes the implementation slightly: SD-Cards with the
non-removable device tree property are now reported as such to the block
layer, whereas before, they were always removable.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/environment.c      |  2 +-
 drivers/mci/mci-core.c    |  4 ++++
 drivers/usb/storage/usb.c |  1 +
 include/block.h           | 12 +-----------
 4 files changed, 7 insertions(+), 12 deletions(-)

diff --git a/common/environment.c b/common/environment.c
index d7f5f51cfc6d..0e551c90352e 100644
--- a/common/environment.c
+++ b/common/environment.c
@@ -105,7 +105,7 @@ static struct cdev *default_environment_path_search(void)
 			continue;
 
 		/* Prefer eMMC over SD if neither is the boot medium */
-		if (blockdevice_is_removable(blk))
+		if (blk->removable)
 			score += 1;
 		else
 			score += 2;
diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 206147cb93e2..82864d710417 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -2795,6 +2795,10 @@ static int mci_register_partition(struct mci_part *part)
 	part->blk.type = IS_SD(mci) ? BLK_TYPE_SD : BLK_TYPE_MMC;
 	part->blk.rootwait = true;
 
+	part->blk.removable = IS_SD(mci);
+	if (host->non_removable)
+		part->blk.removable = false;
+
 	if (part->area_type == MMC_BLK_DATA_AREA_RPMB)
 		return 0;
 
diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index e106174f37d8..b3116dc6e6c2 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -422,6 +422,7 @@ static int usb_stor_add_blkdev(struct us_data *us, unsigned char lun)
 	pblk_dev->blk.cdev.name = basprintf("disk%d", result);
 	pblk_dev->blk.blockbits = SECTOR_SHIFT;
 	pblk_dev->blk.type = BLK_TYPE_USB;
+	pblk_dev->blk.removable = true;
 	pblk_dev->blk.rootwait = true;
 
 	result = blockdevice_register(&pblk_dev->blk);
diff --git a/include/block.h b/include/block.h
index 6810684ff49b..9f388ae67133 100644
--- a/include/block.h
+++ b/include/block.h
@@ -46,6 +46,7 @@ struct block_device {
 	u8 blockbits;
 	u8 type; /* holds enum blk_type */
 	u8 rootwait:1;
+	u8 removable:1;
 	blkcnt_t num_blocks;
 	int rdbufsize;
 	int blkmask;
@@ -82,17 +83,6 @@ static inline int block_flush(struct block_device *blk)
 	return cdev_flush(&blk->cdev);
 }
 
-static inline bool blockdevice_is_removable(struct block_device *blk)
-{
-	switch (blk->type) {
-	case BLK_TYPE_USB:
-	case BLK_TYPE_SD:
-		return true;
-	default:
-		return false;
-	}
-}
-
 #ifdef CONFIG_BLOCK
 unsigned file_list_add_blockdevs(struct file_list *files);
 char *cdev_get_linux_rootarg(const struct cdev *partcdev);
-- 
2.47.3



