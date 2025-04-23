Delivery-date: Wed, 23 Apr 2025 19:41:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7e6A-004c29-14
	for lore@lore.pengutronix.de;
	Wed, 23 Apr 2025 19:41:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7e69-0003Pq-4m
	for lore@pengutronix.de; Wed, 23 Apr 2025 19:41:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=0UypLBdZFsudBCZNdbD/tGeKmAfre4ugdaO/pd7hj4c=; b=ELYZG7t4wSRbTxaj9l96xntbyo
	60qxGXGxJ8ZgQqH1w4vzBiShUdlhbm38JCXqgr33ST1P4WNnyj625q4kf7Cpu2llzMOPduuVL0oeI
	1TvXYGJ1qb3kVr5YYwM9sAy8rNZPI01bBXYVd8j+r9sF1phlaZdpcOSP9OYs1LH4pnlZESYsZRIah
	IZFOnWomNn0Ay0ARitcjJ7aOWo1ODaacJdCcRP0xaEIXnVSfuubpTLW1JFspART7v3ZCV4d3DZ/O7
	XfKeRnkWPPiygVeUGwtsNyy7Dv36VlbL3enT3GUL81XtGFsM/grL9cbkC/mo1VX+jgMMZKKvBHMaQ
	3EfQcmfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7e5P-0000000BIQ7-3Cp8;
	Wed, 23 Apr 2025 17:40:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7amy-0000000AmGn-0YbU
	for barebox@lists.infradead.org;
	Wed, 23 Apr 2025 14:09:26 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1u7amu-0003Wg-Uf
	for barebox@lists.infradead.org; Wed, 23 Apr 2025 16:09:20 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 23 Apr 2025 16:09:10 +0200
Message-Id: <20250423140913.1530237-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250423_070924_203827_967AD1B0 
X-CRM114-Status: GOOD (  12.19  )
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
Subject: [PATCH v2 1/4] partitions: efi: add support to specify gpt-location
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The actual GPT partition entries array can be placed everywhere, only
the GPT header needs to be placed at LBA1. Add support for this feature
to allow platform like i.MX3/5/6 to create a GPT partition table without
overriding the actual barebox image.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
v2:
- new

 commands/parted.c       |  3 ++-
 common/partitions.c     |  5 +++--
 common/partitions/dos.c |  3 ++-
 common/partitions/efi.c | 15 +++++++++++----
 include/partitions.h    |  5 +++--
 5 files changed, 21 insertions(+), 10 deletions(-)

diff --git a/commands/parted.c b/commands/parted.c
index 68b056a0758a..90cee1ede10e 100644
--- a/commands/parted.c
+++ b/commands/parted.c
@@ -217,13 +217,14 @@ static int do_rmpart(struct block_device *blk, int argc, char *argv[])
 static int do_mklabel(struct block_device *blk, int argc, char *argv[])
 {
 	struct partition_desc *pdesc;
+	uint64_t gpt_location = 2;
 
 	if (argc < 2) {
 		printf("Error: Expecting a disk label type.\n");
 		return -EINVAL;
 	}
 
-	pdesc = partition_table_new(blk, argv[1]);
+	pdesc = partition_table_new(blk, argv[1], gpt_location);
 	if (IS_ERR(pdesc)) {
 		printf("Error: Cannot create partition table: %pe\n", pdesc);
 		return PTR_ERR(pdesc);
diff --git a/common/partitions.c b/common/partitions.c
index bc90f51f6112..ec50368c3e98 100644
--- a/common/partitions.c
+++ b/common/partitions.c
@@ -101,7 +101,8 @@ static struct partition_parser *partition_parser_get_by_filetype(uint8_t *buf)
 	return NULL;
 }
 
-struct partition_desc *partition_table_new(struct block_device *blk, const char *type)
+struct partition_desc *
+partition_table_new(struct block_device *blk, const char *type, sector_t gpt_location)
 {
 	struct partition_desc *pdesc;
 	struct partition_parser *parser;
@@ -116,7 +117,7 @@ struct partition_desc *partition_table_new(struct block_device *blk, const char
 	return ERR_PTR(-ENOSYS);
 
 found:
-	pdesc = parser->create(blk);
+	pdesc = parser->create(blk, gpt_location);
 	if (IS_ERR(pdesc))
 		return ERR_CAST(pdesc);
 
diff --git a/common/partitions/dos.c b/common/partitions/dos.c
index 6204fdabc81f..fcd43bf6aaa8 100644
--- a/common/partitions/dos.c
+++ b/common/partitions/dos.c
@@ -316,7 +316,8 @@ static void dos_partition_free(struct partition_desc *pd)
 	free(pd);
 }
 
-static __maybe_unused struct partition_desc *dos_partition_create_table(struct block_device *blk)
+static __maybe_unused struct partition_desc *
+dos_partition_create_table(struct block_device *blk, sector_t gpt_location)
 {
 	struct dos_partition_desc *dpd = xzalloc(512);
 
diff --git a/common/partitions/efi.c b/common/partitions/efi.c
index 840d6a83b795..8f9f9665c75b 100644
--- a/common/partitions/efi.c
+++ b/common/partitions/efi.c
@@ -579,11 +579,18 @@ static void efi_partition_free(struct partition_desc *pd)
 	free(epd);
 }
 
-static __maybe_unused struct partition_desc *efi_partition_create_table(struct block_device *blk)
+static __maybe_unused struct partition_desc *
+efi_partition_create_table(struct block_device *blk, sector_t gpt_location)
 {
 	struct efi_partition_desc *epd = xzalloc(sizeof(*epd));
 	gpt_header *gpt;
 
+	if (gpt_location < 2) {
+		pr_err("Invalid starting LBA (%llu) of array of partition entries\n",
+		       gpt_location);
+		return ERR_PTR(-EINVAL);
+	}
+
 	partition_desc_init(&epd->pd, blk);
 
 	epd->gpt = xzalloc(512);
@@ -594,10 +601,10 @@ static __maybe_unused struct partition_desc *efi_partition_create_table(struct b
 	gpt->header_size = cpu_to_le32(sizeof(*gpt));
 	gpt->my_lba = cpu_to_le64(1);
 	gpt->alternate_lba = cpu_to_le64(last_lba(blk));
-	gpt->first_usable_lba = cpu_to_le64(34);
+	gpt->first_usable_lba = cpu_to_le64(gpt_location + 32);
 	gpt->last_usable_lba = cpu_to_le64(last_lba(blk) - 34);;
 	generate_random_guid((unsigned char *)&gpt->disk_guid);
-	gpt->partition_entry_lba = cpu_to_le64(2);
+	gpt->partition_entry_lba = cpu_to_le64(gpt_location);
 	gpt->num_partition_entries = cpu_to_le32(128);
 	gpt->sizeof_partition_entry = cpu_to_le32(sizeof(gpt_entry));
 
@@ -710,7 +717,7 @@ static int efi_protective_mbr(struct block_device *blk)
 	struct partition_desc *pdesc;
 	int ret;
 
-	pdesc = partition_table_new(blk, "msdos");
+	pdesc = partition_table_new(blk, "msdos", 0);
 	if (IS_ERR(pdesc)) {
 		printf("Error: Cannot create partition table: %pe\n", pdesc);
 		return PTR_ERR(pdesc);
diff --git a/include/partitions.h b/include/partitions.h
index 785fb77ab167..f893f94b259f 100644
--- a/include/partitions.h
+++ b/include/partitions.h
@@ -41,7 +41,7 @@ struct partition_desc {
 struct partition_parser {
 	struct partition_desc *(*parse)(void *buf, struct block_device *blk);
 	void (*partition_free)(struct partition_desc *pd);
-	struct partition_desc *(*create)(struct block_device *blk);
+	struct partition_desc *(*create)(struct block_device *blk, sector_t gpt_location);
 	int (*mkpart)(struct partition_desc *pd, const char *name, const char *fs_type,
 		      uint64_t start, uint64_t end);
 	int (*rmpart)(struct partition_desc *pd, struct partition *part);
@@ -58,7 +58,8 @@ struct partition_parser {
 void partition_desc_init(struct partition_desc *pd, struct block_device *blk);
 int partition_parser_register(struct partition_parser *p);
 struct partition_desc *partition_table_read(struct block_device *blk);
-struct partition_desc *partition_table_new(struct block_device *blk, const char *type);
+struct partition_desc *
+partition_table_new(struct block_device *blk, const char *type, sector_t gpt_location);
 int partition_table_write(struct partition_desc *pdesc);
 int partition_create(struct partition_desc *pdesc, const char *name,
 		     const char *fs_type, uint64_t lba_start, uint64_t lba_end);
-- 
2.39.5



