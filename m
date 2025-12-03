Delivery-date: Wed, 03 Dec 2025 16:19:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQodr-007YQr-0I
	for lore@lore.pengutronix.de;
	Wed, 03 Dec 2025 16:19:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQodq-0003Uf-9i
	for lore@pengutronix.de; Wed, 03 Dec 2025 16:19:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=b/TJ9L4Xyn0NodE2wCy4TuOGIZFTWJaTWa9ivwjewuY=; b=rexCuWYyVkrIy8AVRk2z060wiu
	c7pzGbMOUi6pM+AEGlBP+HUvLsIdaxj+lAXqRsrniBKoNNH+ZWMfVhsVdUarV2iVdVoOGTxF0LTbz
	bQAKORAu8e4PSjeTOdlR3TN7pXDkwZEWVwUuzuiuCKMByjqORxmtjO7HR2TtPJwmh+tFLyc1nGV7e
	pinwzrLHrLYfq3wRIcqkv0h2u0hk21PzrEwAfatppD93Ta21MhmtJ1yOva3Gv6+t5Y0ufwWdolkGS
	hk4Wc8vEyg5WYSyuY7EhbtYkJWfjesM80fnDVEPN1nYz+Dwl50jFurzWxxhtgR1I0luazsZBvZ9dL
	9JLJFxbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQodT-00000006gpA-0lsg;
	Wed, 03 Dec 2025 15:19:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQodQ-00000006gku-1o1L
	for barebox@lists.infradead.org;
	Wed, 03 Dec 2025 15:19:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQodH-0003AF-0Y; Wed, 03 Dec 2025 16:19:07 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQodG-003nYP-2N;
	Wed, 03 Dec 2025 16:19:06 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQodG-00000009MJM-2efB;
	Wed, 03 Dec 2025 16:19:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 03 Dec 2025 16:19:10 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251203-efi-partition-refresh-v1-6-f0b6e79b5fa0@pengutronix.de>
References: <20251203-efi-partition-refresh-v1-0-f0b6e79b5fa0@pengutronix.de>
In-Reply-To: <20251203-efi-partition-refresh-v1-0-f0b6e79b5fa0@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764775146; l=5910;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=eJ4x2hjL9Wbu5HycSbD0CUqX9QGVMWIngDIVCUIKh0o=;
 b=2dfmZXdvvd5ZfcatiaocyzQPECXEdSBfsQ0eG70w/fdVymsw/KOYWr9O7BX9nlnOXPhonlbzf
 6sAVd+vFRHvAyjG82lth7N9B6G74mhYQxNE279ARZCmBwMDAbCpo1Sa
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251203_071916_483008_5DEE2D2B 
X-CRM114-Status: GOOD (  23.55  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 6/6] partitions: gpt: refresh partition tables when
 necessary
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

Link: https://lore.barebox.org/20251128111929.2463263-1-s.hauer@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/partitions/Kconfig |  14 ++++++
 common/partitions/efi.c   | 109 ++++++++++++++++++++++++++++++++++++++++++++--
 2 files changed, 120 insertions(+), 3 deletions(-)

diff --git a/common/partitions/Kconfig b/common/partitions/Kconfig
index 3bbcceedc191be783fa0a5ca0031c9fb24a85b1b..1007dbbe19d26f9b8008a41e227fc0ee93acf5cc 100644
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
index 0fd60c9fd0442c3c571c685a5b0b41b8f33db7bd..e4293e0e9ccae128ee8d0d8b08ab82a463d8a10b 100644
--- a/common/partitions/efi.c
+++ b/common/partitions/efi.c
@@ -15,8 +15,11 @@
 #include <common.h>
 #include <disks.h>
 #include <init.h>
+#include <magicvar.h>
+#include <globalvar.h>
 #include <asm/unaligned.h>
 #include <crc.h>
+#include <fcntl.h>
 #include <linux/ctype.h>
 
 #include <efi/partition.h>
@@ -38,6 +41,93 @@ struct efi_partition {
 
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
@@ -290,9 +380,11 @@ is_pte_valid(const gpt_entry *pte, const u64 lastlba)
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
@@ -376,8 +468,11 @@ compare_gpts(struct device *dev, gpt_header *pgpt, gpt_header *agpt,
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
 
@@ -424,7 +519,7 @@ static int find_valid_gpt(struct efi_partition_desc *epd, void *buf)
 		goto fail;
 
 	if (IS_ENABLED(CONFIG_PARTITION_DISK_EFI_GPT_COMPARE))
-		compare_gpts(blk->dev, pgpt, agpt, lastlba);
+		compare_gpts(blk, pgpt, agpt, lastlba);
 
 	epd->good_pgpt = good_pgpt;
 	epd->good_agpt = good_agpt;
@@ -874,8 +969,16 @@ static struct partition_parser efi_partition_parser = {
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



