Delivery-date: Fri, 26 Jun 2026 10:51:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wd2Hb-00A1Bm-37
	for lore@lore.pengutronix.de;
	Fri, 26 Jun 2026 10:51:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wd2Ha-0002Gf-M9
	for lore@pengutronix.de; Fri, 26 Jun 2026 10:51:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=g6mQpLIBwpvQ8VYc5g27aTUKwEJaAfc3MRloC5Nf19o=; b=oEdww5Xe+IkL+BmNvnhFCZZbfQ
	2rK91lUf8BE/mW5dsmLvXDOncJ6N35AyZOf8NgYZPXTPdyzPIMg8wb6ivdNE6NHpJE+8zheWlAg7M
	A3P6O+vrG2U8aTerBgUJ7COtbIBbskYWr18ZXkA8Bq3/36Psk1oHX8z+JYyBEssj1qgbs0F8G+dVz
	asm8mYwRGiODNPXZEhsuoveaWLYbc/4sanuM4bqetO9r319TOFMAx6z0uyNG39bXVRE7FGuJRmIzd
	ig+sNimr9DZ4+BoJu6JXhMTjTX/NFhicvhfUxb7koY3GMHnKSDCBKoCcedx3MVFXOaW0R3ZedZgev
	oTf66Q6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd2Cf-0000000AtIv-22Pi;
	Fri, 26 Jun 2026 08:46:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd2CY-0000000AtBJ-0Zox
	for barebox@lists.infradead.org;
	Fri, 26 Jun 2026 08:46:21 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wd2CV-0003ZP-Tf; Fri, 26 Jun 2026 10:46:16 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri, 26 Jun 2026 10:42:31 +0200
Message-ID: <20260626084608.1388806-21-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260626084608.1388806-1-a.fatoum@barebox.org>
References: <20260626084608.1388806-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260626_014618_382502_CB721332 
X-CRM114-Status: GOOD (  21.01  )
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
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH 20/26] partition: support non-512 byte sectors
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Partition parsing still mixed LBAs with hardcoded 512-byte sectors
all over the place.

Carry the block device logical block size through all read paths.

Assisted-by: Codex:gpt-5.5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 common/partitions.c     | 55 +++++++++++++++++++++++++++--------------
 common/partitions/dos.c |  4 +--
 common/partitions/efi.c | 21 ++++++----------
 include/partitions.h    |  2 +-
 4 files changed, 47 insertions(+), 35 deletions(-)

diff --git a/common/partitions.c b/common/partitions.c
index 8637b54b1708..617c2770eadf 100644
--- a/common/partitions.c
+++ b/common/partitions.c
@@ -36,10 +36,10 @@ static int register_one_partition(struct block_device *blk, struct partition *pa
 	char *partition_name;
 	int ret;
 	struct cdev *cdev;
-	struct devfs_partition partinfo = {
-		.offset = part->first_sec * SECTOR_SIZE,
-		.size = part->size * SECTOR_SIZE,
-	};
+	struct devfs_partition partinfo = {};
+
+	partinfo.offset = part->first_sec * BLOCKSIZE(blk);
+	partinfo.size = part->size * BLOCKSIZE(blk);
 
 	partition_name = xasprintf("%s.%d", blk->cdev.name, part->num);
 
@@ -92,24 +92,26 @@ static int remove_one_partition(struct block_device *blk, int no)
 	return ret;
 }
 
-static struct partition_parser *partition_parser_get_by_filetype(uint8_t *buf)
+static struct partition_parser *partition_parser_get_by_filetype(uint8_t *buf,
+								 unsigned int blocksize)
 {
 	enum filetype type;
 	struct partition_parser *parser;
 
 	/* first new partition table as EFI GPT */
-	type = file_detect_partition_table(buf, SECTOR_SIZE * 2, SECTOR_SIZE);
+	type = file_detect_partition_table(buf, blocksize * 2, blocksize);
 
 	list_for_each_entry(parser, &partition_parser_list, list) {
 		if (parser->type == type)
 			return parser;
 	}
 
-	/* if not parser found search for old one
-	 * so if EFI GPT not enable take it as MBR
-	 * useful for compatibility
+	/* If no parser found search for old one, so if EFI GPT i
+	 * not enabled, probe for MBR. useful for compatibility.
+	 * 512 is hardcoded here as the MBR detection is not
+	 * block-size dependent.
 	 */
-	type = file_detect_partition_table(buf, SECTOR_SIZE, SECTOR_SIZE);
+	type = file_detect_partition_table(buf, 512, 512);
 	if (type == filetype_fat && !is_fat_boot_sector(buf))
 		type = filetype_mbr;
 
@@ -150,9 +152,11 @@ struct partition_desc *partition_table_read(struct block_device *blk)
 	struct partition_parser *parser;
 	struct partition_desc *pdesc = NULL;
 	uint8_t *buf;
+	unsigned int blocksize;
 	int ret;
 
-	buf = malloc(2 * SECTOR_SIZE);
+	blocksize = BLOCKSIZE(blk);
+	buf = malloc(2 * blocksize);
 
 	ret = block_read(blk, buf, 0, 2);
 	if (ret != 0) {
@@ -160,7 +164,7 @@ struct partition_desc *partition_table_read(struct block_device *blk)
 		goto err;
 	}
 
-	parser = partition_parser_get_by_filetype(buf);
+	parser = partition_parser_get_by_filetype(buf, blocksize);
 	if (!parser)
 		goto err;
 
@@ -187,7 +191,7 @@ bool partition_is_free(struct partition_desc *pdesc, uint64_t start, uint64_t si
 {
 	struct partition *p;
 
-	if (start < PARTITION_ALIGN_SECTORS)
+	if (start < partition_align_lba(pdesc->blk))
 		return false;
 
 	if (start + size >= pdesc->blk->num_blocks)
@@ -204,7 +208,7 @@ bool partition_is_free(struct partition_desc *pdesc, uint64_t start, uint64_t si
 int partition_find_free_space(struct partition_desc *pdesc, uint64_t sectors, uint64_t *start)
 {
 	struct partition *p;
-	uint64_t align = PARTITION_ALIGN_SECTORS;
+	uint64_t align = partition_align_lba(pdesc->blk);
 	uint64_t min_sec;
 
 	min_sec = max(align, partition_first_usable_lba(pdesc->blk));
@@ -371,19 +375,25 @@ static int fuzz_partition_table_parser(struct block_device *ramdisk)
 	struct partition *part;
 	int rc = 0;
 	struct partition_parser *parser;
-	u8 buf[2 * SECTOR_SIZE] __aligned(8);
+	u8 *buf;
+	unsigned int blocksize;
+
+	blocksize = BLOCKSIZE(ramdisk);
+	buf = malloc(2 * blocksize);
+	if (!buf)
+		return 0;
 
 	rc = block_read(ramdisk, buf, 0, 2);
 	if (rc != 0)
-		return 0;
+		goto out;
 
-	parser = partition_parser_get_by_filetype(buf);
+	parser = partition_parser_get_by_filetype(buf, blocksize);
 	if (!parser)
-		return 0;
+		goto out;
 
 	pdesc = parser->parse(buf, ramdisk);
 	if (!pdesc)
-		return 0;
+		goto out;
 
 	pdesc->parser = parser;
 
@@ -394,6 +404,8 @@ static int fuzz_partition_table_parser(struct block_device *ramdisk)
 
 	partition_table_free(pdesc);
 
+out:
+	free(buf);
 	return 0;
 }
 fuzz_test_ramdisk("partitions", fuzz_partition_table_parser);
@@ -430,6 +442,11 @@ sector_t partition_first_usable_lba(const struct block_device *blk)
 	return blockdevice_round_nblocks(blk, first_partition_offset);
 }
 
+sector_t partition_align_lba(const struct block_device *blk)
+{
+	return blockdevice_round_nblocks(blk, PARTITION_ALIGN_SIZE);
+}
+
 static int set_first_partition_offset(struct param_d *p, void *priv)
 {
 	if (first_partition_offset < MIN_SECTOR_SIZE) {
diff --git a/common/partitions/dos.c b/common/partitions/dos.c
index 1526b97dec67..e5286cb6eb1f 100644
--- a/common/partitions/dos.c
+++ b/common/partitions/dos.c
@@ -60,7 +60,7 @@ static inline int is_extended_partition(struct partition *p)
 
 static void *read_mbr(struct block_device *blk)
 {
-	void *buf = xmalloc(SECTOR_SIZE);
+	void *buf = xmalloc(BLOCKSIZE(blk));
 	int ret;
 
 	ret = block_read(blk, buf, 0, 1);
@@ -126,7 +126,7 @@ static int dos_get_disk_signature(struct param_d *p, void *_priv)
 static void dos_extended_partition(struct block_device *blk, struct dos_partition_desc *dpd,
 		struct partition *partition, uint32_t signature)
 {
-	uint8_t *buf = xmalloc(SECTOR_SIZE);
+	uint8_t *buf = xmalloc(BLOCKSIZE(blk));
 	uint32_t ebr_sector = partition->first_sec;
 	struct partition_entry *table = (struct partition_entry *)&buf[0x1be];
 	unsigned partno = 4;
diff --git a/common/partitions/efi.c b/common/partitions/efi.c
index 295c26a5a491..33d9a1df9e83 100644
--- a/common/partitions/efi.c
+++ b/common/partitions/efi.c
@@ -199,19 +199,20 @@ static gpt_entry *alloc_read_gpt_entries(struct block_device *blk,
 {
 	u32 count = 0;
 	gpt_entry *pte = NULL;
-	unsigned long from, size;
+	unsigned long from;
+	blkcnt_t size;
 	int ret;
 
 	count = compute_partitions_entries_size(pgpt_head);
 	if (!count)
 		return NULL;
 
-	pte = calloc(count, 1);
+	pte = calloc(blockdevice_round_block_nbytes(blk, count), 1);
 	if (!pte)
 		return NULL;
 
 	from = le64_to_cpu(pgpt_head->partition_entry_lba);
-	size = count / GPT_BLOCK_SIZE;
+	size = blockdevice_round_nblocks(blk, count);
 	ret = block_read(blk, pte, from, size);
 	if (ret) {
 		free(pte);
@@ -220,12 +221,6 @@ static gpt_entry *alloc_read_gpt_entries(struct block_device *blk,
 	return pte;
 }
 
-static inline unsigned short bdev_logical_block_size(struct block_device
-*bdev)
-{
-	return SECTOR_SIZE;
-}
-
 /**
  * alloc_read_gpt_header(): Allocates GPT header, reads into it from disk
  * @state
@@ -239,7 +234,7 @@ static gpt_header *alloc_read_gpt_header(struct block_device *blk,
 					 u64 lba)
 {
 	gpt_header *gpt;
-	unsigned ssz = bdev_logical_block_size(blk);
+	unsigned ssz = BLOCKSIZE(blk);
 	int ret;
 
 	gpt = calloc(ssz, 1);
@@ -286,7 +281,7 @@ static int is_gpt_valid(struct block_device *blk, u64 lba,
 	}
 
 	if (le32_to_cpu((*gpt)->header_size) < sizeof(struct _gpt_header) ||
-        le32_to_cpu((*gpt)->header_size) > bdev_logical_block_size(blk))
+	    le32_to_cpu((*gpt)->header_size) > BLOCKSIZE(blk))
 		goto fail;
 
 	/* Check the GUID Partition Table CRC */
@@ -505,8 +500,8 @@ static int find_valid_gpt(struct efi_partition_desc *epd, void *buf)
 	lastlba = last_lba(blk);
 	if (force_gpt) {
 		/* This will be added to the EFI Spec. per Intel after v1.02. */
-		if (file_detect_partition_table(buf, SECTOR_SIZE * 2,
-						SECTOR_SIZE) != filetype_gpt)
+		if (file_detect_partition_table(buf, 2 * BLOCKSIZE(blk),
+						BLOCKSIZE(blk)) != filetype_gpt)
 			goto fail;
 	}
 
diff --git a/include/partitions.h b/include/partitions.h
index 398813eca58c..7eb8b1e6e228 100644
--- a/include/partitions.h
+++ b/include/partitions.h
@@ -58,7 +58,6 @@ struct partition_parser {
 };
 
 #define PARTITION_ALIGN_SIZE	SZ_1M
-#define PARTITION_ALIGN_SECTORS	(PARTITION_ALIGN_SIZE >> SECTOR_SHIFT)
 
 void partition_desc_init(struct partition_desc *pd, struct block_device *blk);
 int partition_parser_register(struct partition_parser *p);
@@ -72,5 +71,6 @@ void partition_table_free(struct partition_desc *pdesc);
 bool partition_is_free(struct partition_desc *pdesc, uint64_t start, uint64_t size);
 int partition_find_free_space(struct partition_desc *pdesc, uint64_t sectors, uint64_t *start);
 sector_t partition_first_usable_lba(const struct block_device *blk);
+sector_t partition_align_lba(const struct block_device *blk);
 
 #endif /* __PARTITIONS_PARSER_H__ */
-- 
2.47.3



