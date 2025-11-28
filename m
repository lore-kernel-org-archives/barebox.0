Delivery-date: Fri, 28 Nov 2025 12:20:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOwWI-005ldw-2d
	for lore@lore.pengutronix.de;
	Fri, 28 Nov 2025 12:20:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOwWI-0004Ua-3P
	for lore@pengutronix.de; Fri, 28 Nov 2025 12:20:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=P9sGSm7jczxOVsTK70Zo2qdJ7WpIP06cDuP6zh19nBY=; b=BKp20pOOAQ4AbEwoeZs8UgudjB
	3/pZWe2xe58tdwdWoT+DszyXRxMNLrsXPzx/proMLvhY+Zbu01D1DU6QxGOtucYHJjM9WQQavyQ6m
	jyfK/ybiF5wRbKklt3Bx2SriiQSRsFv4cI4zmcAGmdwYSZGaHmtM0S7kjQxg91rIRvCXJZq8abRG3
	yeX2NXkeupICGjcXqPyY20jnDN/ofwBeJPzQHCJIiVPG/EGFX9YpKOERMRKik23KKMispQX5yi/V3
	oRoGi0s9xVpS5C6C/a4TX08dy6sr52ndjdJHaPRFzbOwzGlyq9drNOFvjC3rjnQSHTd9D03FvEX9H
	gaZNaJgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOwVi-00000000Lop-3iJM;
	Fri, 28 Nov 2025 11:19:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOwVg-00000000Lo7-0LrW
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 11:19:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOwVe-0004Pu-II; Fri, 28 Nov 2025 12:19:30 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOwVe-002wfY-1D;
	Fri, 28 Nov 2025 12:19:30 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOwVe-0000000AKoF-2z90;
	Fri, 28 Nov 2025 12:19:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 28 Nov 2025 12:19:29 +0100
Message-ID: <20251128111929.2463263-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251128_031932_122034_0769B570 
X-CRM114-Status: GOOD (  23.75  )
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
Subject: [PATCH] partitions: gpt: refresh partition tables when necessary
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The GPT alternative header must be at the end of the device. When disk
images are written to a device this often is not the case which results
in warnings:

WARNING: mmc0: GPT:Primary header thinks Alt. header is not at the end of the disk.
WARNING: mmc0: GPT:6561831 != 62160895
WARNING: mmc0: GPT:Alternate GPT header not at the end of the disk.
WARNING: mmc0: GPT:6561831 != 62160895
WARNING: mmc0: GPT: Use parted to correct GPT errors.

This patch adds support for automatically rewriting the partition table
when this happens. This behaviour is optional and needs to be enabled at
compile time with CONFIG_PARTITION_DISK_EFI_REFRESH. Also this is
runtime configurable with global.system.gpt_refresh

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/partitions/Kconfig |  14 +++++
 common/partitions/efi.c   | 108 ++++++++++++++++++++++++++++++++++++--
 2 files changed, 119 insertions(+), 3 deletions(-)

diff --git a/common/partitions/Kconfig b/common/partitions/Kconfig
index 3bbcceedc1..1007dbbe19 100644
--- a/common/partitions/Kconfig
+++ b/common/partitions/Kconfig
@@ -24,6 +24,20 @@ config PARTITION_DISK_EFI
 	help
 	  Add support to handle partitions in GUID Partition Table style.
 
+config PARTITION_DISK_EFI_REFRESH
+	depends on PARTITION_DISK_EFI && PARTITION_MANIPULATION
+	bool "refresh GPT partition on demand"
+	help
+	  The GPT alternative header must be at the end of the device. When disk
+	  images are written to a device this often is not the case which results
+	  in warnings:
+
+	  GPT:Primary header thinks Alt. header is not at the end of the disk.
+
+	  Enable this option and set global.system.gpt_refresh to true to refresh
+	  GPT partition tables when necessary. Only erroneous partition tables will
+	  be rewritten, once fixed up partition tables will not be touched.
+
 config PARTITION_DISK_EFI_GPT_NO_FORCE
 	depends on PARTITION_DISK_EFI
 	default y
diff --git a/common/partitions/efi.c b/common/partitions/efi.c
index 88d8a2d739..9d62a63918 100644
--- a/common/partitions/efi.c
+++ b/common/partitions/efi.c
@@ -15,8 +15,10 @@
 #include <common.h>
 #include <disks.h>
 #include <init.h>
+#include <globalvar.h>
 #include <asm/unaligned.h>
 #include <crc.h>
+#include <fcntl.h>
 #include <linux/ctype.h>
 
 #include <efi/partition.h>
@@ -36,6 +38,93 @@ struct efi_partition {
 
 static const int force_gpt = IS_ENABLED(CONFIG_PARTITION_DISK_EFI_GPT_NO_FORCE);
 
+struct gpt_refresh {
+	struct block_device *blk;
+	struct list_head list;
+};
+
+static LIST_HEAD(gpt_refreshes);
+
+static unsigned int global_gpt_refresh;
+
+static int gpt_refresh_one(struct block_device *blk)
+{
+	struct partition_desc *pdesc;
+	int ret;
+
+	if (!global_gpt_refresh)
+		return 0;
+
+	ret = cdev_open(&blk->cdev, O_RDWR);
+	if (ret)
+		return ret;
+
+	pdesc = partition_table_read(blk);
+	if (!pdesc) {
+		ret = -EINVAL;
+		goto out;
+	}
+
+	ret = partition_table_write(pdesc);
+	if (ret)
+		goto out;
+
+	ret = 0;
+
+	partition_table_free(pdesc);
+out:
+	cdev_close(&blk->cdev);
+
+	if (ret)
+		dev_err(blk->dev, "Refreshing partition table failed: %pe\n",
+			ERR_PTR(ret));
+
+	return ret;
+}
+
+static bool gpt_refresh_done;
+
+static int do_gpt_refreshes(void)
+{
+	struct gpt_refresh *r, *tmp;
+
+	if (!IS_ENABLED(CONFIG_PARTITION_DISK_EFI_REFRESH))
+		return 0;
+
+	if (!global_gpt_refresh)
+		return 0;
+
+	list_for_each_entry_safe(r, tmp, &gpt_refreshes, list) {
+		gpt_refresh_one(r->blk);
+		list_del(&r->list);
+		free(r);
+	}
+
+	gpt_refresh_done = true;
+
+	return 0;
+}
+postenvironment_initcall(do_gpt_refreshes);
+
+static void add_gpt_refresh(struct block_device *blk)
+{
+	struct gpt_refresh *r;
+
+	if (!IS_ENABLED(CONFIG_PARTITION_DISK_EFI_REFRESH))
+		return;
+
+	if (gpt_refresh_done) {
+		gpt_refresh_one(blk);
+		return;
+	}
+
+	r = xzalloc(sizeof(*r));
+
+	r->blk = blk;
+
+	list_add_tail(&r->list, &gpt_refreshes);
+}
+
 /**
 * compute_partitions_entries_size() - return the size of all partitions
 * @gpt: GPT header
@@ -288,9 +377,11 @@ is_pte_valid(const gpt_entry *pte, const u64 lastlba)
  *
  */
 static void
-compare_gpts(struct device *dev, gpt_header *pgpt, gpt_header *agpt,
+compare_gpts(struct block_device *blk, gpt_header *pgpt, gpt_header *agpt,
 	     u64 lastlba)
 {
+	struct device *dev = blk->dev;
+
 	int error_found = 0;
 	if (!pgpt || !agpt)
 		return;
@@ -374,8 +465,11 @@ compare_gpts(struct device *dev, gpt_header *pgpt, gpt_header *agpt,
 		error_found++;
 	}
 
-	if (error_found)
+	if (error_found) {
+		add_gpt_refresh(blk);
 		dev_warn(dev, "GPT: Use parted to correct GPT errors.\n");
+	}
+
 	return;
 }
 
@@ -426,7 +520,7 @@ static int find_valid_gpt(void *buf, struct block_device *blk, gpt_header **gpt,
 		goto fail;
 
 	if (IS_ENABLED(CONFIG_PARTITION_DISK_EFI_GPT_COMPARE))
-		compare_gpts(blk->dev, pgpt, agpt, lastlba);
+		compare_gpts(blk, pgpt, agpt, lastlba);
 
 	/* The good cases */
 	if (good_pgpt) {
@@ -826,8 +920,16 @@ static struct partition_parser efi_partition_parser = {
 	.name = "gpt",
 };
 
+#ifdef CONFIG_PARTITION_DISK_EFI_REFRESH
+BAREBOX_MAGICVAR(global.system.gpt_refresh, "When true, refresh GPT partitions when necessary");
+#endif
+
 static int efi_partition_init(void)
 {
+	if (IS_ENABLED(CONFIG_PARTITION_DISK_EFI_REFRESH))
+		globalvar_add_simple_bool("system.gpt_refresh",
+					  &global_gpt_refresh);
+
 	return partition_parser_register(&efi_partition_parser);
 }
 postconsole_initcall(efi_partition_init);
-- 
2.47.3



