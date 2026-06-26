Delivery-date: Fri, 26 Jun 2026 10:47:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wd2Dx-00A16L-01
	for lore@lore.pengutronix.de;
	Fri, 26 Jun 2026 10:47:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wd2Dw-0007TU-35
	for lore@pengutronix.de; Fri, 26 Jun 2026 10:47:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=J75MkHSMHLnVWwPEcpO/uGdq3mHmY8LdpNKy9qDhqyA=; b=elCKlvfAj4yWwP9TB7JcpkYCQ5
	IrM43CrAxLRT9XTySs1cZ9DzZOgbOOKTCzY2SpfjaYQFPzpWOAZoyFg7DDT7o68QFJax/XPUKSgTn
	m4IgtUuBt98NyhXxKjVI7iM0DmdyGaLQjlXodru8PDXEVAN5UeLUxlJQTrHZRMaXSVTW46wTaI8Ew
	CFS4lHK7jw3BMfn+4yGDI4AoEvt+ocumNqrRYX4cQu7BRvDiUOXpHECdz+UOmnunIwVGBC4ad838M
	lN6h1ERCVpj1QaCh39zGhE8COQ9j/sQgsvOeIprZjDdNqeE4fOfhhEt3ores71dX2FB+9OqN6I7bL
	a27JyHGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd2Cl-0000000AtVF-0O4z;
	Fri, 26 Jun 2026 08:46:31 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd2Ce-0000000AtG6-2MW5
	for barebox@bombadil.infradead.org;
	Fri, 26 Jun 2026 08:46:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=J75MkHSMHLnVWwPEcpO/uGdq3mHmY8LdpNKy9qDhqyA=; b=gmCaGybo7Sp/t3a0oEIdf+dOqJ
	F8JVPevtMoaVqcOip1ps6Fz8fLNMZNNqtkp27u5sup4ZGhCBIuid1z/ayllqGt7WJydDoLbAJQP3I
	YfXnRaMrRYX5EbWxbwO7wL8M2y9oLvZae7Tutwl0ggW9FrtVha/AUgRVdbhRAkMQPNyAOLUA0xyLn
	SkoLntqdXT1D+uKJj9LW/bAqPpFwg4mx9rUiRIvaIEOpElmSthGKmahTU/LSxVrzmEG3M6h91sKU4
	iSzSjivOz5xt3JNX/8kHssSHK65SaXNVCfei08U2SacIoXqwY9QnWN8Zo53+zungsL4V/JPCW4ewV
	34yU5QBg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wd2CY-00000004cm0-2aFy
	for barebox@lists.infradead.org;
	Fri, 26 Jun 2026 08:46:23 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wd2CV-0003ZP-GU; Fri, 26 Jun 2026 10:46:15 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri, 26 Jun 2026 10:42:29 +0200
Message-ID: <20260626084608.1388806-19-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260626084608.1388806-1-a.fatoum@barebox.org>
References: <20260626084608.1388806-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260626_094619_717997_9D696CC2 
X-CRM114-Status: GOOD (  18.37  )
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
Subject: [PATCH 18/26] partitions: use byte offset for first partition policy
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

global.partitions.first_usable_lba was added to keep some initial free
space for the bootloader image before partitions begin.

As the name suggests, the unit is sectors, which is not so useful, the
next most common sector size after 512 is 4K, so the default 8 MiB
partition offset becomes 64M, which is quite a bit of waste.

Replace it with global.partitions.first_partition_offset, which has a
unit of bytes instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 .../migration-guides/migration-master.rst     | 11 ++++++
 common/partitions.c                           | 37 +++++++++----------
 common/partitions/efi.c                       |  2 +-
 include/partitions.h                          |  2 +-
 4 files changed, 31 insertions(+), 21 deletions(-)

diff --git a/Documentation/migration-guides/migration-master.rst b/Documentation/migration-guides/migration-master.rst
index 455863357d1d..d2499fb799bd 100644
--- a/Documentation/migration-guides/migration-master.rst
+++ b/Documentation/migration-guides/migration-master.rst
@@ -6,3 +6,14 @@ ARCH=arm64
 Use of ``ARCH=arm`` for 64-bit ARM builds is deprecated and now emits
 a warning. Users should change build scripts to use ``ARCH=arm64``
 instead when targetting ARMv8.
+
+global.partitions.first_usable_lba removed
+------------------------------------------
+
+The ``global.partitions.first_usable_lba`` variable has been removed.
+Use ``global.partitions.first_partition_offset`` instead.
+
+The new variable is a byte offset used by free-space searches for new
+partitions, for example ``parted mkpart_size``. The default is
+``8388608`` bytes (8 MiB). To keep an old configuration, multiply the
+old ``first_usable_lba`` value by 512.
diff --git a/common/partitions.c b/common/partitions.c
index ff977516aa1f..8637b54b1708 100644
--- a/common/partitions.c
+++ b/common/partitions.c
@@ -22,6 +22,7 @@
 #include <magicvar.h>
 
 static LIST_HEAD(partition_parser_list);
+static uint64_t first_partition_offset = SZ_8M;
 
 /**
  * Register one partition on the given block device
@@ -203,12 +204,12 @@ bool partition_is_free(struct partition_desc *pdesc, uint64_t start, uint64_t si
 int partition_find_free_space(struct partition_desc *pdesc, uint64_t sectors, uint64_t *start)
 {
 	struct partition *p;
-	uint64_t min_sec = PARTITION_ALIGN_SECTORS;
+	uint64_t align = PARTITION_ALIGN_SECTORS;
+	uint64_t min_sec;
 
-	if (min_sec < partition_first_usable_lba())
-		min_sec = partition_first_usable_lba();
+	min_sec = max(align, partition_first_usable_lba(pdesc->blk));
 
-	min_sec = ALIGN(min_sec, PARTITION_ALIGN_SECTORS);
+	min_sec = ALIGN(min_sec, align);
 
 	if (partition_is_free(pdesc, min_sec, sectors)) {
 		*start = min_sec;
@@ -216,7 +217,7 @@ int partition_find_free_space(struct partition_desc *pdesc, uint64_t sectors, ui
 	}
 
 	list_for_each_entry(p, &pdesc->partitions, list) {
-		uint64_t s = ALIGN(p->first_sec + p->size, PARTITION_ALIGN_SECTORS);
+		uint64_t s = ALIGN(p->first_sec + p->size, align);
 
 		if (partition_is_free(pdesc, s, sectors)) {
 			*start = s;
@@ -245,9 +246,9 @@ int partition_create(struct partition_desc *pdesc, const char *name,
 		return -EINVAL;
 	}
 
-	if (lba_start < partition_first_usable_lba()) {
+	if (lba_start < partition_first_usable_lba(pdesc->blk)) {
 		pr_err("partition starts before first usable lba: %llu < %llu\n",
-		       lba_start, partition_first_usable_lba());
+		       lba_start, partition_first_usable_lba(pdesc->blk));
 		return -EINVAL;
 	}
 
@@ -424,21 +425,19 @@ loff_t cdev_unallocated_space(struct cdev *cdev)
 	return start;
 }
 
-static uint64_t first_usable_dma = SZ_8M / SECTOR_SIZE;
-
-uint64_t partition_first_usable_lba(void)
+sector_t partition_first_usable_lba(const struct block_device *blk)
 {
-	return first_usable_dma;
+	return blockdevice_round_nblocks(blk, first_partition_offset);
 }
 
-static int set_first_usable_lba(struct param_d *p, void *priv)
+static int set_first_partition_offset(struct param_d *p, void *priv)
 {
-	if (first_usable_dma < 1) {
-		pr_err("Minimum is 1\n");
+	if (first_partition_offset < MIN_SECTOR_SIZE) {
+		pr_err("Minimum is 512 bytes\n");
 		return -EINVAL;
 	}
 
-	if (first_usable_dma % (SZ_1M / SECTOR_SIZE))
+	if (first_partition_offset % SZ_1M)
 		pr_warn("recommended to align to 1MiB\n");
 
 	return 0;
@@ -449,12 +448,12 @@ static int partitions_init(void)
 	struct param_d *p = NULL;
 
 	if (IS_ENABLED(CONFIG_GLOBALVAR))
-		p = dev_add_param_uint64(&global_device, "partitions.first_usable_lba",
-					 set_first_usable_lba, NULL,
-					 &first_usable_dma, "%llu", NULL);
+		p = dev_add_param_uint64(&global_device, "partitions.first_partition_offset",
+					 set_first_partition_offset, NULL,
+					 &first_partition_offset, "%llu", NULL);
 
 	return PTR_ERR_OR_ZERO(p);
 }
 core_initcall(partitions_init);
 
-BAREBOX_MAGICVAR(global.partitions.first_usable_lba, "first usable LBA used for creating partitions");
+BAREBOX_MAGICVAR(global.partitions.first_partition_offset, "byte offset used by free-space searches for new partitions");
diff --git a/common/partitions/efi.c b/common/partitions/efi.c
index 4847f88fa551..295c26a5a491 100644
--- a/common/partitions/efi.c
+++ b/common/partitions/efi.c
@@ -690,7 +690,7 @@ static __maybe_unused struct partition_desc *efi_partition_create_table(struct b
 	gpt_header *gpt;
 	unsigned int num_partition_entries = 128;
 	unsigned int gpt_size = (sizeof(gpt_entry) * num_partition_entries) / SECTOR_SIZE;
-	unsigned int first_usable_lba = partition_first_usable_lba();
+	unsigned int first_usable_lba = partition_first_usable_lba(blk);
 
 	partition_desc_init(&epd->pd, blk);
 
diff --git a/include/partitions.h b/include/partitions.h
index f73d028e2951..398813eca58c 100644
--- a/include/partitions.h
+++ b/include/partitions.h
@@ -71,6 +71,6 @@ int partition_remove(struct partition_desc *pdesc, int num);
 void partition_table_free(struct partition_desc *pdesc);
 bool partition_is_free(struct partition_desc *pdesc, uint64_t start, uint64_t size);
 int partition_find_free_space(struct partition_desc *pdesc, uint64_t sectors, uint64_t *start);
-uint64_t partition_first_usable_lba(void);
+sector_t partition_first_usable_lba(const struct block_device *blk);
 
 #endif /* __PARTITIONS_PARSER_H__ */
-- 
2.47.3



