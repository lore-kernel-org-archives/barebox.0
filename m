Delivery-date: Wed, 19 Mar 2025 16:45:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuvbJ-001VjQ-1N
	for lore@lore.pengutronix.de;
	Wed, 19 Mar 2025 16:45:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuvbG-00048b-3b
	for lore@pengutronix.de; Wed, 19 Mar 2025 16:45:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IKvO3wegC17FqVOfYz2LYLpDKA6d6cEV6qcEDqTcuqM=; b=pcPOA3/2opnOg0CmMTxzl+StrZ
	YaGY1z+kp0zJ2KP3kjYiDH62o++qkvdw6OybtbUajQtsFm2PLoz4AqRaD5S4N9eLxZFbpRsVmQsC1
	Ei8pP8G0uvlAT0iDdARaCIBQ5vKaQZ/lVT7yBwM0SuSGA6eJYsqOII7+ULgAEdd8Ip0mpbNNUq6rC
	aXWEnlPW55ymTpsnKZ96kjxaDrnFrsA+/272/Wmeewv9TnvR4VNuCyH7qWcEcFGnPeF4bTskE56i2
	mcrNkBnvjC2tmDqNwlSuuC7jCEciLC8ExmtvbjnffhFRtNAuzAtO7uTbX4/RCtiBlRoLIU7xQVgG3
	91hAQhTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuvaf-00000009QYy-32T7;
	Wed, 19 Mar 2025 15:44:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuvNm-00000009OAC-2KOP
	for barebox@lists.infradead.org;
	Wed, 19 Mar 2025 15:31:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tuvNl-0000z7-A9; Wed, 19 Mar 2025 16:31:01 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tuvNk-000cAf-1O;
	Wed, 19 Mar 2025 16:31:00 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tuvNk-00Awy1-2O;
	Wed, 19 Mar 2025 16:31:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 19 Mar 2025 16:30:54 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250319-rpmb-v2-3-a8801fb35cd4@pengutronix.de>
References: <20250319-rpmb-v2-0-a8801fb35cd4@pengutronix.de>
In-Reply-To: <20250319-rpmb-v2-0-a8801fb35cd4@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1742398260; l=3376;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=4IwTlpi0Wbd7hr9sRBtgthjVK5n0otad74vzfKCt2LE=;
 b=xXLalItAPrkXjOgeDViKyYbjl7yj9uoljwWfOVzYMjbughKkRlAKsAPVw4+7gyosD6G8WC+6G
 c+o+PM245ADDqYLoBfKg0/7vqJOMHDAStj7vO2OhPRb7Pstdj93CLQU
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250319_083102_640021_929185DE 
X-CRM114-Status: GOOD (  19.17  )
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
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 03/10] mci: detect RPMB partitions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Detect RPMB partitions and initialize a struct mci_part for them. We do
not actually register the RPMB partitions as we can't access them with
regular mci_do_block_op() and we would only access encrypted data anyway.

Right now we assume that only one RPMB is present in a system which
covers the 99% case. Should there be multiple RPMBs found we issue a
warning message as there is no way to specify which one shall be used,
the first one found will be used which may vary depending on probe
order.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mci-core.c | 20 ++++++++++++++++++++
 include/mci.h          |  7 ++++++-
 2 files changed, 26 insertions(+), 1 deletion(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index b7ea0df3cb..3bf0f15def 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -671,6 +671,9 @@ static void mci_part_add(struct mci *mci, uint64_t size,
 	part->part_cfg = part_cfg;
 	part->idx = idx;
 
+	if (area_type == MMC_BLK_DATA_AREA_RPMB)
+		mci->rpmb_part = part;
+
 	if (area_type == MMC_BLK_DATA_AREA_MAIN) {
 		cdev_set_of_node(&part->blk.cdev, mci->host->hw_dev->of_node);
 		part->blk.cdev.flags |= DEVFS_IS_MCI_MAIN_PART_DEV;
@@ -822,6 +825,20 @@ static int mmc_change_freq(struct mci *mci)
 		mci->boot_ack_enable = (mci->ext_csd_part_config >> 6) & 0x1;
 	}
 
+	if (mci->ext_csd[EXT_CSD_REV] >= 5) {
+		if (mci->ext_csd[EXT_CSD_RPMB_SIZE_MULT]) {
+			char *name, *partname;
+
+			partname = basprintf("rpmb");
+			name = basprintf("%s.%s", mci->cdevname, partname);
+
+			mci_part_add(mci, mci->ext_csd[EXT_CSD_RPMB_SIZE_MULT] << 17,
+				EXT_CSD_PART_CONFIG_ACC_RPMB,
+				name, partname, 0, false,
+				MMC_BLK_DATA_AREA_RPMB);
+		}
+	}
+
 	if (IS_ENABLED(CONFIG_MCI_MMC_GPP_PARTITIONS))
 		mmc_extract_gpp_partitions(mci);
 
@@ -2601,6 +2618,9 @@ static int mci_register_partition(struct mci_part *part)
 	part->blk.ops = &mci_ops;
 	part->blk.type = IS_SD(mci) ? BLK_TYPE_SD : BLK_TYPE_MMC;
 
+	if (part->area_type == MMC_BLK_DATA_AREA_RPMB)
+		return 0;
+
 	rc = blockdevice_register(&part->blk);
 	if (rc != 0) {
 		dev_err(&mci->dev, "Failed to register MCI/SD blockdevice\n");
diff --git a/include/mci.h b/include/mci.h
index 8084df813a..08a3e46f7d 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -347,6 +347,7 @@
  */
 #define EXT_CSD_PART_CONFIG_ACC_MASK	(0x7)
 #define EXT_CSD_PART_CONFIG_ACC_BOOT0	(0x1)
+#define EXT_CSD_PART_CONFIG_ACC_RPMB	(0x3)
 #define EXT_CSD_PART_CONFIG_ACC_GPP0	(0x4)
 
 #define EXT_CSD_CMD_SET_NORMAL		(1<<0)
@@ -606,9 +607,11 @@ struct mci_host {
 #define MMC_NUM_BOOT_PARTITION	2
 #define MMC_NUM_GP_PARTITION	4
 #define MMC_NUM_USER_PARTITION	1
+#define MMC_NUM_RPMB_PARTITION	1
 #define MMC_NUM_PHY_PARTITION	(MMC_NUM_BOOT_PARTITION + \
                                  MMC_NUM_GP_PARTITION + \
-                                 MMC_NUM_USER_PARTITION)
+                                 MMC_NUM_USER_PARTITION + \
+                                 MMC_NUM_RPMB_PARTITION)
 
 struct mci_part {
 	struct block_device	blk;		/**< the blockdevice for the card */
@@ -674,6 +677,8 @@ struct mci {
 	int boot_ack_enable;
 
 	struct mci_part part[MMC_NUM_PHY_PARTITION];
+	struct mci_part *rpmb_part;
+
 	int nr_parts;
 	char *cdevname;
 

-- 
2.39.5



