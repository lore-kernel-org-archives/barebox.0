Delivery-date: Fri, 26 Jun 2026 10:47:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wd2DO-00A137-1P
	for lore@lore.pengutronix.de;
	Fri, 26 Jun 2026 10:47:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wd2DN-00063v-Au
	for lore@pengutronix.de; Fri, 26 Jun 2026 10:47:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=No3zuZ36sKQqzskud11DVECbivk853SAaRqSsCnsjkc=; b=djw4xd1yDp5bAs8zGGPXjym2Vy
	7AcFqvdzIpKF+QOpasHaC7j7PY+Mx5RQQhkjUXr10UIh0njkS9jEZXuQ1E0nkZm0dgCssE3kHWqcG
	sNZpG22zrh1FMHCzbKXWsu2hbKMrzhQxmV91SxMpQg+V30eKny5yUzoli/Sqo03/l9AtuoffX4r3D
	hf/XshPQR+zuQnnhkMTh1BYABwsRocgIlpeZDoVcl76SJDvR1GFFUo1yBTbEQfIt3DQPHp88xFQZL
	32p1N5yiPqU4pHozXmpFoajENtTUS29ZxFTuWI159wu1+cuEDyLhzYRkPSpxouCsr/cUq0gI5XGWU
	GXcCtRzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd2Ce-0000000AtGC-0YAB;
	Fri, 26 Jun 2026 08:46:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd2CW-0000000At8U-0Kef
	for barebox@lists.infradead.org;
	Fri, 26 Jun 2026 08:46:20 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wd2CU-0003ZP-8a; Fri, 26 Jun 2026 10:46:14 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri, 26 Jun 2026 10:42:23 +0200
Message-ID: <20260626084608.1388806-13-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260626084608.1388806-1-a.fatoum@barebox.org>
References: <20260626084608.1388806-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260626_014616_142207_1CB8FEB8 
X-CRM114-Status: GOOD (  11.51  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 12/26] block: define helpers for non-512-byte sector support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Instead of opencoding the checks at the various direct and indirect (via
cdev API) block device users that are going to be switched away from
hardcoding the 512 byte sector assumption, define some helpers.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 common/block.c  | 11 +++++++++++
 include/block.h | 34 ++++++++++++++++++++++++++++++++++
 2 files changed, 45 insertions(+)

diff --git a/common/block.c b/common/block.c
index 9d3865626555..5f509bfb9df3 100644
--- a/common/block.c
+++ b/common/block.c
@@ -14,6 +14,7 @@
 #include <range.h>
 #include <bootargs.h>
 #include <file-list.h>
+#include <linux/log2.h>
 
 LIST_HEAD(block_device_list);
 EXPORT_SYMBOL(block_device_list);
@@ -53,6 +54,16 @@ static void blk_stats_record_write(struct block_device *blk, blkcnt_t count) { }
 static void blk_stats_record_erase(struct block_device *blk, blkcnt_t count) { }
 #endif
 
+int block_size_bits(struct device *dev, unsigned block_size)
+{
+       if (block_size < MIN_SECTOR_SIZE || !is_power_of_2(block_size)) {
+               dev_err(dev, "unsupported block size %u\n", block_size);
+               return -ENOTSUPP;
+       }
+
+       return ffs(block_size) - 1;
+}
+
 static int chunk_flush(struct block_device *blk, struct chunk *chunk)
 {
 	blkcnt_t len;
diff --git a/include/block.h b/include/block.h
index fa916f8d4ee7..9a0102db1565 100644
--- a/include/block.h
+++ b/include/block.h
@@ -3,6 +3,7 @@
 #define __BLOCK_H
 
 #include <driver.h>
+#include <disks.h>
 #include <linux/list.h>
 #include <linux/types.h>
 
@@ -68,6 +69,28 @@ struct block_device {
 
 #define BLOCKSIZE(blk)	(1u << (blk)->blockbits)
 
+int block_size_bits(struct device *dev, unsigned block_size);
+
+static inline u64 blockdevice_size(const struct block_device *blk)
+{
+	return blk->num_blocks << blk->blockbits;
+}
+
+static inline blkcnt_t
+blockdevice_round_nblocks(const struct block_device *blk, u64 nbytes)
+{
+	if (nbytes == 0)
+		return 0;
+
+	return (((u64)nbytes - 1) >> blk->blockbits) + 1;
+}
+
+static inline u64
+blockdevice_round_block_nbytes(const struct block_device *blk, u64 nbytes)
+{
+	return blockdevice_round_nblocks(blk, nbytes) << blk->blockbits;
+}
+
 extern struct list_head block_device_list;
 
 #define for_each_block_device(bdev) list_for_each_entry(bdev, &block_device_list, list)
@@ -126,4 +149,15 @@ static inline struct block_device *cdev_get_block_device(const struct cdev *cdev
 	return cdev_is_block_device(cdev) ? cdev->priv : NULL;
 }
 
+static inline unsigned cdev_blockbits(const struct cdev *cdev)
+{
+	struct block_device *bdev = cdev_get_block_device(cdev);
+	return bdev ? bdev->blockbits : SECTOR_SHIFT;
+}
+
+static inline unsigned cdev_blocksize(const struct cdev *cdev)
+{
+	return 1u << cdev_blockbits(cdev);
+}
+
 #endif /* __BLOCK_H */
-- 
2.47.3



