Delivery-date: Wed, 12 Mar 2025 14:06:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsLnE-00D8An-1h
	for lore@lore.pengutronix.de;
	Wed, 12 Mar 2025 14:06:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsLnB-00021z-4i
	for lore@pengutronix.de; Wed, 12 Mar 2025 14:06:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AMsHm9zyQ3iXyRsHoyuzWny3N0VUbAehh8LpMZNeQ94=; b=CDlsBNd1csxsFGMlhoiryI8VAP
	0PZq66SYGgR7NPt7KUvUfv/9nFkRf1mJ5tq9fIe6VJ/rmo81tAsVUw6jIpapArbZBdz/mZZx2+P0q
	LwhoH6GN2O5IhCTkmB8W9XVM0fxLsuGoCLtaz8W2OKF8ntY6PsDzYE4Ei7/KcnZ8bmXMqPClrBpBf
	9XW54xwX3Gx3aRAp1EaxaMt2s9BifWihlIqOUXiA8IWLgnO9O/9Tn2H9um6BRe8WdaP+D8KEBAvR1
	CISRzkNXzUSoNkcMsmZGRAvo3ux4Ktr7PvJRSEzZMK/FShsQkCivR+mc3gvn4d1mm7zT+hB1M/78R
	HLGb/NaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsLmf-00000008Urf-29Vl;
	Wed, 12 Mar 2025 13:06:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsL0e-00000008NSx-0kg1
	for barebox@lists.infradead.org;
	Wed, 12 Mar 2025 12:16:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tsL0V-0003sL-0R; Wed, 12 Mar 2025 13:16:19 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tsL0U-005M8Z-1z;
	Wed, 12 Mar 2025 13:16:18 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tsL0U-00AdfG-1e;
	Wed, 12 Mar 2025 13:16:18 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 12 Mar 2025 13:16:18 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250312-rpmb-v1-3-0f213382a3f3@pengutronix.de>
References: <20250312-rpmb-v1-0-0f213382a3f3@pengutronix.de>
In-Reply-To: <20250312-rpmb-v1-0-0f213382a3f3@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1741781778; l=4314;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=NXN8mgGqA3/c8w37/F2C9k1WIfWmkpyO/fLQQdCOa3w=;
 b=AiOSBSElt1ZqPjqBpXaf1OzMdNJ+7xN9TDT1RxS9HXlwTCSDrZFGYzYI6zX95R+PFB9SQuOKV
 g1VOXJAGMFFCSOA1dptvaoeHuRxBDP2+YMdpQgNUeU2PVXNSv7MIjiW
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250312_051628_227746_89E82A53 
X-CRM114-Status: GOOD (  19.50  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/9] mci: detect RPMB partitions
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
 drivers/mci/mci-core.c | 36 ++++++++++++++++++++++++++++++++++++
 include/mci.h          |  7 ++++++-
 2 files changed, 42 insertions(+), 1 deletion(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index b7ea0df3cb..18c910c4c3 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -647,6 +647,15 @@ static blkcnt_t mci_calc_blk_cnt(blkcnt_t cap, unsigned shift)
 	return ret;
 }
 
+/*
+ * We currently only support a single RPMB partition. Most systems only have a
+ * single eMMC and thus only one RPMB partition, so we are fine on most systems.
+ * When multiple RPMB partitions are found we issue a warning message as the
+ * first RPMB found will be used. There currently is no way to specify which one
+ * shall be used.
+ */
+static struct mci_part *rpmb_partition;
+
 static void mci_part_add(struct mci *mci, uint64_t size,
                         unsigned int part_cfg, char *name, char *partname, int idx, bool ro,
                         int area_type)
@@ -671,6 +680,16 @@ static void mci_part_add(struct mci *mci, uint64_t size,
 	part->part_cfg = part_cfg;
 	part->idx = idx;
 
+	if (area_type == MMC_BLK_DATA_AREA_RPMB) {
+		mci->rpmb_part = part;
+		if (rpmb_partition) {
+			dev_warn(&mci->dev, "Multiple RPMB partitions found. Only %s will be used\n",
+				 rpmb_partition->mci->host->devname);
+		} else {
+			rpmb_partition = mci->rpmb_part;
+		}
+	}
+
 	if (area_type == MMC_BLK_DATA_AREA_MAIN) {
 		cdev_set_of_node(&part->blk.cdev, mci->host->hw_dev->of_node);
 		part->blk.cdev.flags |= DEVFS_IS_MCI_MAIN_PART_DEV;
@@ -822,6 +841,20 @@ static int mmc_change_freq(struct mci *mci)
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
 
@@ -2601,6 +2634,9 @@ static int mci_register_partition(struct mci_part *part)
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



