Delivery-date: Fri, 20 Jun 2025 12:47:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uSZHe-009Fs9-1L
	for lore@lore.pengutronix.de;
	Fri, 20 Jun 2025 12:47:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uSZHd-0001sK-CH
	for lore@pengutronix.de; Fri, 20 Jun 2025 12:47:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jbc5bycBzxTJ1Lvi/8H3mmSpB1kQWgMwjdl+NFPYM2U=; b=yL91/rOthQkCQ7qRihjR9EWPWt
	doqWNv34FGfKcuVUVD9cKqnsehTsFf2zBzHxHViQCPupeM3d6041GGMUqp+3Lhzel0PGLLLLLYh34
	3533XGvThbCpTdYOnZ781Fz9Wdo4vRMDej2U5itNXg+e8Mi/MVbjEDtqHtpRIkefTbEfrz3SiWVww
	3nBczealzeAY7ZjNKo4Z5nU14tkuE4WIVJTKfGgRpyPxmTPXzt87/M3vlgrGaST+tQEh8b6yBtsB/
	Qv1JVYyrJpoOriLdCBq2YitPSS4+5YdnbatEh9+hPfIs7x5B046SHtYj6avtpDi7jelRljSLcnXg/
	LHV74Mpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSZH0-0000000FNqe-15E2;
	Fri, 20 Jun 2025 10:47:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSYKy-0000000FFOn-43Mv
	for barebox@lists.infradead.org;
	Fri, 20 Jun 2025 09:47:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uSYKv-0001fF-EG; Fri, 20 Jun 2025 11:47:05 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uSYKv-004RPh-0H;
	Fri, 20 Jun 2025 11:47:05 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uSYKu-005F2V-3A;
	Fri, 20 Jun 2025 11:47:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 20 Jun 2025 11:47:00 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250620-createnv-v2-2-7fd3cc286b9a@pengutronix.de>
References: <20250620-createnv-v2-0-7fd3cc286b9a@pengutronix.de>
In-Reply-To: <20250620-createnv-v2-0-7fd3cc286b9a@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750412824; l=5761;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=PywS+Bdtvs4QxaiAJqQBDydcIqExfLrp2QfbcPywqiA=;
 b=ZYNrk5+z4XDhTOFjB4xNyfqMiQ1j6sAorbpcI3K6r560zexuudOVEvJ7BEcI8Pjf6N22QFbbz
 if2hxehb+bzDRVKvZ9nfXNtM0iK7ZfGxLBA8XFlao3pcc93c+t+Mkoi
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250620_024709_032610_86EB2392 
X-CRM114-Status: GOOD (  19.69  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/5] partitions: Start partitions at 8MiB offset
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

There are many SoCs that store the bootloader on the raw eMMC/SD device
outside of partitions. Examples are all i.MX SoCs and Rockchip SoCs.
Until now the first partition starts at offset 1MiB and with this we
risk conflicting with the bootloader.

It's cumbersome to sort out all SoCs that have this problem. With
nowadays eMMC/SD card sizes it doesn't really matter anymore, so change
the 1MiB offset to 8MiB which is still only a small fraction of the
card size, but leaves enough space for putting the bootloader into.

Note the change in the GPT partition handling introduced with this
change. The layout previously was:

LBA0: MBR
LBA1: GPT header
LBA2-33: GPT partition entries

which now becomes:

LBA0: MBR
LBA1: GPT header
LBA16352-16383: GPT partition entries

This means the GPT partition entries moved from LBA2 to just below the
8MiB boundary and LBA2-16351 are now free for the bootloader. This helps
with with older SoCs on which the bootloader overlaps with the normal
location of the GPT partition entries, like i.MX7 and earlier.

For nowadays disk sizes a 8MiB offset is negligible. However, for very
size constraint environments the first usable LBA is configurable with
the globalvar global.partitions.first_usable_lba which defaults to 16384
aka 8MiB.

Link: https://lore.barebox.org/20250602-createnv-v1-2-c3239ff875d5@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/partitions.c     | 45 +++++++++++++++++++++++++++++++++++++++++++++
 common/partitions/efi.c |  8 ++++++--
 include/partitions.h    |  2 ++
 3 files changed, 53 insertions(+), 2 deletions(-)

diff --git a/common/partitions.c b/common/partitions.c
index 3f618119850df8f954b1f7f1255bac27132bb879..571b627d51f4bc3720fdb9ad0b73a75534899174 100644
--- a/common/partitions.c
+++ b/common/partitions.c
@@ -18,6 +18,8 @@
 #include <partitions.h>
 #include <range.h>
 #include <fuzz.h>
+#include <globalvar.h>
+#include <magicvar.h>
 
 static LIST_HEAD(partition_parser_list);
 
@@ -202,6 +204,9 @@ int partition_find_free_space(struct partition_desc *pdesc, uint64_t sectors, ui
 	struct partition *p;
 	uint64_t min_sec = PARTITION_ALIGN_SECTORS;
 
+	if (min_sec < partition_first_usable_lba())
+		min_sec = partition_first_usable_lba();
+
 	min_sec = ALIGN(min_sec, PARTITION_ALIGN_SECTORS);
 
 	if (partition_is_free(pdesc, min_sec, sectors)) {
@@ -239,6 +244,12 @@ int partition_create(struct partition_desc *pdesc, const char *name,
 		return -EINVAL;
 	}
 
+	if (lba_start < partition_first_usable_lba()) {
+		pr_err("partition starts before first usable lba: %llu < %llu\n",
+		       lba_start, partition_first_usable_lba());
+		return -EINVAL;
+	}
+
 	list_for_each_entry(part, &pdesc->partitions, list) {
 		if (region_overlap_end(part->first_sec,
 				       part->first_sec + part->size - 1,
@@ -411,3 +422,37 @@ loff_t cdev_unallocated_space(struct cdev *cdev)
 
 	return start;
 }
+
+static uint64_t first_usable_dma = SZ_8M / SECTOR_SIZE;
+
+uint64_t partition_first_usable_lba(void)
+{
+	return first_usable_dma;
+}
+
+static int set_first_usable_lba(struct param_d *p, void *priv)
+{
+	if (first_usable_dma < 1) {
+		pr_err("Minimum is 1\n");
+		return -EINVAL;
+	}
+
+	if (first_usable_dma % (SZ_1M / SECTOR_SIZE))
+		pr_warn("recommended to align to 1MiB\n");
+
+	return 0;
+}
+
+static int partitions_init(void)
+{
+	struct param_d *p;
+
+	p = dev_add_param_uint64(&global_device, "partitions.first_usable_lba",
+				 set_first_usable_lba, NULL,
+				 &first_usable_dma, "%llu", NULL);
+
+	return PTR_ERR_OR_ZERO(p);
+}
+core_initcall(partitions_init);
+
+BAREBOX_MAGICVAR(global.partitions.first_usable_lba, "first usable LBA used for creating partitions");
diff --git a/common/partitions/efi.c b/common/partitions/efi.c
index 92868e4a77e5688d547ee3f2cac3ab9534a4ebdb..d237f734df50987b2d8ae41f83edc3e744fcf604 100644
--- a/common/partitions/efi.c
+++ b/common/partitions/efi.c
@@ -585,7 +585,7 @@ static __maybe_unused struct partition_desc *efi_partition_create_table(struct b
 	gpt_header *gpt;
 	unsigned int num_partition_entries = 128;
 	unsigned int gpt_size = (sizeof(gpt_entry) * num_partition_entries) / SECTOR_SIZE;
-	unsigned int first_usable_lba = gpt_size + 2;
+	unsigned int first_usable_lba = partition_first_usable_lba();
 
 	partition_desc_init(&epd->pd, blk);
 
@@ -719,7 +719,11 @@ static int efi_protective_mbr(struct block_device *blk)
 		return PTR_ERR(pdesc);
 	}
 
-	ret = partition_create(pdesc, "primary", "0xee", 1, last_lba(blk));
+	/*
+	 * For the protective MBR call directly into the mkpart hook. partition_create()
+	 * does not allow us to create a partition starting at LBA1
+	 */
+	ret = pdesc->parser->mkpart(pdesc, "primary", "0xee", 1, last_lba(blk));
 	if (ret) {
 		pr_err("Cannot create partition: %pe\n", ERR_PTR(ret));
 		goto out;
diff --git a/include/partitions.h b/include/partitions.h
index dd3e631c5aa337d752312cd94be5e7dbb4f527a5..f73d028e2951d82e9afc31a3e80f01b024fd138f 100644
--- a/include/partitions.h
+++ b/include/partitions.h
@@ -8,6 +8,7 @@
 #define __PARTITIONS_PARSER_H__
 
 #include <block.h>
+#include <disks.h>
 #include <filetype.h>
 #include <linux/uuid.h>
 #include <linux/list.h>
@@ -70,5 +71,6 @@ int partition_remove(struct partition_desc *pdesc, int num);
 void partition_table_free(struct partition_desc *pdesc);
 bool partition_is_free(struct partition_desc *pdesc, uint64_t start, uint64_t size);
 int partition_find_free_space(struct partition_desc *pdesc, uint64_t sectors, uint64_t *start);
+uint64_t partition_first_usable_lba(void);
 
 #endif /* __PARTITIONS_PARSER_H__ */

-- 
2.39.5



