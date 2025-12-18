Delivery-date: Thu, 18 Dec 2025 10:47:18 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWAbN-00CmcI-3B
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 10:47:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWAbN-0004yz-EJ
	for lore@pengutronix.de; Thu, 18 Dec 2025 10:47:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=BcXLBhDKZlk5FnG3ozWhRbRKvEpgAqRjvYcZBIQ+HRY=; b=P61+YIP65ZJtggIAFc16X4uVR9
	TnRpa4Qot/QVZKXEwgvZZA1EdyF03iJk1OvhMnnWC6tmY844dL9tA79YSCwoXcHp4DLfS/Imosve8
	/BaBrbLieGbCMdoWY7Z3UjNC3CL1sA0xIjWwnqv0EbJxt/FAeCoV1qHLJTOYCmQhylzjtREb9ZSFN
	5nEQUFtuT2yB+BlwTQ08+xBFtthU8tY8kltiHAEE1vJ6VuRsL2c+oJcNgwcDiBp2HRqLojPzf4ZbO
	FWc48xF3zoih4/Xs1+oj1Zp9qK+TNxWFjwhT6aqL21QvhRh2dZSq0ynhmfqYxgEvBj0Glh9LlMOQb
	h5SLHRsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWAaw-00000008AnC-3MQU;
	Thu, 18 Dec 2025 09:46:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWAau-00000008Amc-1oli
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 09:46:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWAas-0004tM-Ko; Thu, 18 Dec 2025 10:46:46 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWAas-006FwI-1T;
	Thu, 18 Dec 2025 10:46:46 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWAas-00000000EIh-1WLy;
	Thu, 18 Dec 2025 10:46:46 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Dec 2025 10:46:35 +0100
Message-ID: <20251218094645.49668-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_014648_475914_D6D2B2EA 
X-CRM114-Status: GOOD (  15.14  )
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
Subject: [PATCH] mci: use partition table index for Linux mmcblkdev fixup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

If we have invalid PTEs, there will be gaps in the partition numbering
both in barebox and in Linux, but if we only iterate through the
partition list, we will not account for this.

Use the new cdev::partition_table_index to fix this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/mci-core.c | 29 ++++++-----------------------
 1 file changed, 6 insertions(+), 23 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 82864d710417..37d864b3d02f 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -2657,20 +2657,13 @@ static void mci_parse_cid(struct mci *mci)
 	dev_add_param_uint32_fixed(dev, "cid_month", mci->cid.month, "%0u");
 }
 
-static bool cdev_partname_equal(const struct cdev *a,
-				const struct cdev *b)
-{
-	return a->partname && b->partname &&
-		!strcmp(a->partname, b->partname);
-}
-
 static char *mci_get_linux_mmcblkdev(struct block_device *blk,
 				     const struct cdev *partcdev)
 
 {
 	struct mci_part *mci_part = container_of(blk, struct mci_part, blk);
-	struct cdev *cdevm = partcdev->master, *cdev;
-	int id, partnum;
+	struct cdev *cdevm = partcdev->master;
+	int id;
 
 	if (mci_part->area_type != MMC_BLK_DATA_AREA_MAIN)
 		return NULL;
@@ -2682,21 +2675,11 @@ static char *mci_get_linux_mmcblkdev(struct block_device *blk,
 	if (id < 0)
 		return NULL;
 
-	partnum = 1; /* linux partitions are 1 based */
-	list_for_each_entry(cdev, &cdevm->partitions, partition_entry) {
+	if (!(partcdev->flags & DEVFS_PARTITION_FROM_TABLE))
+		return NULL;
 
-		/*
-		 * Partname is not guaranteed but this partition cdev is listed
-		 * in the partitions list so we need to count it instead of
-		 * skipping it.
-		 */
-		if (cdev_partname_equal(partcdev, cdev))
-			return basprintf("/dev/mmcblk%dp%d", id, partnum);
-		if (cdev->flags & DEVFS_PARTITION_FROM_TABLE)
-			partnum++;
-	}
-
-	return NULL;
+	return basprintf("/dev/mmcblk%dp%d", id,
+			 partcdev->partition_table_index + 1);
 }
 
 static struct block_device_ops mci_ops = {
-- 
2.47.3



