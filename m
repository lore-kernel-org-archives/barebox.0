Delivery-date: Mon, 19 Feb 2024 09:36:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rbz8E-00E4U3-30
	for lore@lore.pengutronix.de;
	Mon, 19 Feb 2024 09:36:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rbz8D-00047Y-QX
	for lore@pengutronix.de; Mon, 19 Feb 2024 09:36:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AS+8PxPhtHbo1WkU/t9Rwk38xeaDsPJIZokKk9yF8pQ=; b=3kUQO7hla6QD0O7iMea8HA8450
	rGT55M2p/OPQ92EPPk/Q15rLzZA/p2KBwNl5TFsy3SLHbiMe3R7DJ4jbJbEridALpY2vD4BbYKSVu
	GX+6aycEob/TvYYtoVksG7oUS0MfuT0YuVXbgnnKVpcpH34yCiLbKhUQJHbPAta6XabFoCcCsJAb3
	H07I76tJNXkjEU9KWIpDNVeFQXZNqfmJJZK4KOaLumFQtxLRZ/WjspIcaAx3PWWxokp1tqZu9C9M+
	F84rv4C1sSk4gZewo2n5i4wOuAsPvkrYJhcoD3pZiKH72W05QCoaZ5xF+IDjEzyCmvyKzNadhDDxB
	86vGazaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbz7q-00000009bhR-04zu;
	Mon, 19 Feb 2024 08:35:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbz7i-00000009bdD-1mcF
	for barebox@lists.infradead.org;
	Mon, 19 Feb 2024 08:35:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rbz7h-0003vN-AA; Mon, 19 Feb 2024 09:35:37 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rbz7g-001bof-TE; Mon, 19 Feb 2024 09:35:36 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rbz3u-00CNCk-0z;
	Mon, 19 Feb 2024 09:31:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 19 Feb 2024 09:31:39 +0100
Message-Id: <20240219083140.2713047-12-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240219083140.2713047-1-s.hauer@pengutronix.de>
References: <20240219083140.2713047-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240219_003538_691280_4C2F6D5F 
X-CRM114-Status: GOOD (  24.72  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 11/12] partitions: efi: implement partition manipulation support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This fills in the partition manipulation function hooks to add/remove
efi (GPT) partitions and to write a GPT partition table. This depends on
te msdos partition writing support for generating a protective MBR.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/partitions/Kconfig |   1 +
 common/partitions/efi.c   | 277 ++++++++++++++++++++++++++++++++++++--
 2 files changed, 265 insertions(+), 13 deletions(-)

diff --git a/common/partitions/Kconfig b/common/partitions/Kconfig
index 7f12383082..3bbcceedc1 100644
--- a/common/partitions/Kconfig
+++ b/common/partitions/Kconfig
@@ -19,6 +19,7 @@ config PARTITION_DISK_EFI
 	depends on PARTITION_DISK
 	select CRC32
 	select PRINTF_UUID
+	select PARTITION_DISK_DOS if PARTITION_MANIPULATION
 	bool "EFI: GPT partition support"
 	help
 	  Add support to handle partitions in GUID Partition Table style.
diff --git a/common/partitions/efi.c b/common/partitions/efi.c
index 407c1a4d08..67d4978244 100644
--- a/common/partitions/efi.c
+++ b/common/partitions/efi.c
@@ -23,13 +23,14 @@
 #include <partitions.h>
 
 struct efi_partition_desc {
-	struct partition_desc pd; /* must be first */
-	gpt_header gpt;
+	struct partition_desc pd;
+	gpt_header *gpt;
+	gpt_entry *ptes;
 };
 
 struct efi_partition {
-	struct partition part; /* must be first */
-	gpt_entry pte;
+	struct partition part;
+	gpt_entry *pte;
 };
 
 static const int force_gpt = IS_ENABLED(CONFIG_PARTITION_DISK_EFI_GPT_NO_FORCE);
@@ -90,6 +91,7 @@ static gpt_entry *alloc_read_gpt_entries(struct block_device *blk,
 
 	if (!count)
 		return NULL;
+
 	pte = kzalloc(count, GFP_KERNEL);
 	if (!pte)
 		return NULL;
@@ -216,7 +218,8 @@ static int is_gpt_valid(struct block_device *blk, u64 lba,
 		le32_to_cpu((*gpt)->sizeof_partition_entry));
 
 	if (crc != le32_to_cpu((*gpt)->partition_entry_array_crc32)) {
-		dev_dbg(blk->dev, "GUID Partitition Entry Array CRC check failed.\n");
+		dev_dbg(blk->dev, "GUID Partitition Entry Array CRC check failed: 0x%08x 0x%08x\n",
+			crc, le32_to_cpu((*gpt)->partition_entry_array_crc32));
 		goto fail_ptes;
 	}
 
@@ -441,6 +444,19 @@ static void part_set_efi_name(gpt_entry *pte, char *dest)
 	dest[i] = 0;
 }
 
+static void part_get_efi_name(gpt_entry *pte, const char *src)
+{
+	int i;
+	int len = strlen(src);
+
+	for (i = 0; i < GPT_PARTNAME_MAX_SIZE ; i++) {
+		if (i <= len)
+			pte->partition_name[i] = src[i];
+		else
+			pte->partition_name[i] = 0;
+	}
+}
+
 static struct partition_desc *efi_partition(void *buf, struct block_device *blk)
 {
 	gpt_header *gpt = NULL;
@@ -468,8 +484,10 @@ static struct partition_desc *efi_partition(void *buf, struct block_device *blk)
 	}
 
 	epd = xzalloc(sizeof(*epd));
-	INIT_LIST_HEAD(&epd->pd.partitions);
-	epd->gpt = *gpt;
+	partition_desc_init(&epd->pd, blk);
+
+	epd->gpt = gpt;
+	epd->ptes = ptes;
 
 	for (i = 0; i < nb_part; i++) {
 		if (!is_pte_valid(&ptes[i], last_lba(blk))) {
@@ -478,6 +496,7 @@ static struct partition_desc *efi_partition(void *buf, struct block_device *blk)
 		}
 
 		epart = xzalloc(sizeof(*epart));
+		epart->pte = &ptes[i];
 		pentry = &epart->part;
 		pentry->first_sec = le64_to_cpu(ptes[i].starting_lba);
 		pentry->size = le64_to_cpu(ptes[i].ending_lba) - pentry->first_sec;
@@ -485,30 +504,262 @@ static struct partition_desc *efi_partition(void *buf, struct block_device *blk)
 		part_set_efi_name(&ptes[i], pentry->name);
 		snprintf(pentry->partuuid, sizeof(pentry->partuuid), "%pUl", &ptes[i].unique_partition_guid);
 		pentry->typeuuid = ptes[i].partition_type_guid;
-		pentry->num = i;
+		pentry->num = i + 1;
 		list_add_tail(&pentry->list, &epd->pd.partitions);
 	}
 out:
-	kfree(gpt);
-	kfree(ptes);
 
 	return &epd->pd;
 }
 
 static void efi_partition_free(struct partition_desc *pd)
 {
+	struct efi_partition_desc *epd = container_of(pd, struct efi_partition_desc, pd);
 	struct partition *part, *tmp;
 
-	list_for_each_entry_safe(part, tmp, &pd->partitions, list)
-		free(part);
+	list_for_each_entry_safe(part, tmp, &pd->partitions, list) {
+		struct efi_partition *epart = container_of(part, struct efi_partition, part);
+
+		free(epart);
+	}
+
+	free(epd->ptes);
+	free(epd->gpt);
+	free(epd);
+}
+
+static __maybe_unused struct partition_desc *efi_partition_create_table(struct block_device *blk)
+{
+	struct efi_partition_desc *epd = xzalloc(sizeof(*epd));
+	gpt_header *gpt;
+
+	partition_desc_init(&epd->pd, blk);
+
+	epd->gpt = xzalloc(512);
+	gpt = epd->gpt;
+
+	gpt->signature = cpu_to_le64(GPT_HEADER_SIGNATURE);
+	gpt->revision = cpu_to_le32(0x100);
+	gpt->header_size = cpu_to_le32(sizeof(*gpt));
+	gpt->my_lba = cpu_to_le64(1);
+	gpt->alternate_lba = cpu_to_le64(last_lba(blk));
+	gpt->first_usable_lba = cpu_to_le64(34);
+	gpt->last_usable_lba = cpu_to_le64(last_lba(blk) - 34);;
+	generate_random_guid((unsigned char *)&gpt->disk_guid);
+	gpt->partition_entry_lba = cpu_to_le64(2);
+	gpt->num_partition_entries = cpu_to_le32(128);
+	gpt->sizeof_partition_entry = cpu_to_le32(sizeof(gpt_entry));
+
+	pr_info("Created new disk label with GUID %pU\n", &gpt->disk_guid);
+
+	epd->ptes = xzalloc(128 * sizeof(gpt_entry));
+
+	return &epd->pd;
+}
+
+static guid_t partition_linux_data_guid = PARTITION_LINUX_DATA_GUID;
+static guid_t partition_basic_data_guid = PARTITION_BASIC_DATA_GUID;
+
+static const guid_t *fs_type_to_guid(const char *fstype)
+{
+	if (!strcmp(fstype, "ext2"))
+		return &partition_linux_data_guid;
+	if (!strcmp(fstype, "ext3"))
+		return &partition_linux_data_guid;
+	if (!strcmp(fstype, "ext4"))
+		return &partition_linux_data_guid;
+	if (!strcmp(fstype, "fat16"))
+		return &partition_basic_data_guid;
+	if (!strcmp(fstype, "fat32"))
+		return &partition_basic_data_guid;
+
+	return NULL;
+}
+
+static __maybe_unused int efi_partition_mkpart(struct partition_desc *pd,
+					       const char *name, const char *fs_type,
+					       uint64_t start_lba, uint64_t end_lba)
+{
+	struct efi_partition_desc *epd = container_of(pd, struct efi_partition_desc, pd);
+	struct efi_partition *epart;
+	struct partition *part;
+	gpt_header *gpt = epd->gpt;
+	int num_parts = le32_to_cpu(gpt->num_partition_entries);
+	gpt_entry *pte;
+	int i;
+	const guid_t *guid;
+
+	if (start_lba < 34) {
+		pr_err("invalid start LBA %lld, minimum is 34\n", start_lba);
+		return -EINVAL;
+	}
+
+	if (end_lba >= last_lba(pd->blk) - 33) {
+		pr_err("invalid end LBA %lld, maximum is %lld\n", start_lba,
+		       last_lba(pd->blk) - 33);
+		return -EINVAL;
+	}
+
+	for (i = 0; i < num_parts; i++) {
+		if (!is_pte_valid(&epd->ptes[i], last_lba(pd->blk)))
+			break;
+	}
+
+	if (i == num_parts) {
+		pr_err("partition table is full\n");
+		return -ENOSPC;
+	}
+
+	guid = fs_type_to_guid(fs_type);
+	if (!guid) {
+		pr_err("Unknown fs type %s\n", fs_type);
+		return -EINVAL;
+	}
+
+	pte = &epd->ptes[i];
+	epart = xzalloc(sizeof(*epart));
+	part = &epart->part;
+
+	part->first_sec = start_lba;
+	part->size = end_lba - start_lba + 1;
+	part->typeuuid = *guid;
+
+	pte->partition_type_guid = *guid;
+	generate_random_guid((unsigned char *)&pte->unique_partition_guid);
+	pte->starting_lba = cpu_to_le64(start_lba);
+	pte->ending_lba = cpu_to_le64(end_lba);
+	part_get_efi_name(pte, name);
+	part_set_efi_name(pte, part->name);
+	part->num = i;
+
+	list_add_tail(&part->list, &pd->partitions);
+
+	return 0;
+}
+
+static __maybe_unused int efi_partition_rmpart(struct partition_desc *pd, struct partition *part)
+{
+	struct efi_partition *epart = container_of(part, struct efi_partition, part);
+
+	memset(epart->pte, 0, sizeof(*epart->pte));
+
+	list_del(&part->list);
+	free(epart);
+
+	return 0;
+}
+
+static int efi_protective_mbr(struct block_device *blk)
+{
+	struct partition_desc *pdesc;
+	int ret;
+
+	pdesc = partition_table_new(blk, "msdos");
+	if (IS_ERR(pdesc)) {
+		printf("Error: Cannot create partition table: %pe\n", pdesc);
+		return PTR_ERR(pdesc);
+	}
+
+	ret = partition_create(pdesc, "primary", "0xee", 1, last_lba(blk));
+	if (ret) {
+		pr_err("Cannot create partition: %pe\n", ERR_PTR(ret));
+		goto out;
+	}
+
+	ret = partition_table_write(pdesc);
+	if (ret) {
+		pr_err("Cannot write partition: %pe\n", ERR_PTR(ret));
+		goto out;
+	}
+out:
+	partition_table_free(pdesc);
+
+	return ret;
+}
+
+static __maybe_unused int efi_partition_write(struct partition_desc *pd)
+{
+	struct block_device *blk = pd->blk;
+	struct efi_partition_desc *epd = container_of(pd, struct efi_partition_desc, pd);
+	gpt_header *gpt = epd->gpt, *altgpt;
+	int ret;
+	uint32_t count;
+	uint64_t from, size;
+
+	if (le32_to_cpu(gpt->num_partition_entries) != 128) {
+		/*
+		 * This is not yet properly implemented. At least writing of the
+		 * alternative GPT is not correctly implemented for this case as
+		 * we can't assume that the partition entries are written at
+		 * last_lba() - 32, we would have to calculate that from the number
+		 * of partition entries.
+		 */
+		pr_err("num_partition_entries is != 128. This is not yet supported for writing\n");
+		return -EINVAL;
+	}
+
+	count = le32_to_cpu(gpt->num_partition_entries) *
+		le32_to_cpu(gpt->sizeof_partition_entry);
+
+	gpt->my_lba = cpu_to_le64(1);
+	gpt->partition_entry_array_crc32 = cpu_to_le32(efi_crc32(
+			(const unsigned char *)epd->ptes, count));
+	gpt->header_crc32 = 0;
+	gpt->header_crc32 = cpu_to_le32(efi_crc32((const unsigned char *)gpt,
+						  le32_to_cpu(gpt->header_size)));
+
+	ret = efi_protective_mbr(blk);
+	if (ret)
+		return ret;
+
+	ret = block_write(blk, gpt, 1, 1);
+	if (ret)
+		goto err_block_write;
+
+	from = le64_to_cpu(gpt->partition_entry_lba);
+	size = count / GPT_BLOCK_SIZE;
+
+	ret = block_write(blk, epd->ptes, from, size);
+	if (ret)
+		goto err_block_write;
+
+	altgpt = xmemdup(gpt, SECTOR_SIZE);
+
+	altgpt->alternate_lba = cpu_to_le64(1);
+	altgpt->my_lba = cpu_to_le64(last_lba(blk));
+	altgpt->partition_entry_lba = cpu_to_le64(last_lba(blk) - 32);
+	altgpt->header_crc32 = 0;
+	altgpt->header_crc32 = cpu_to_le32(efi_crc32((const unsigned char *)altgpt,
+						  le32_to_cpu(altgpt->header_size)));
+	ret = block_write(blk, altgpt, last_lba(blk), 1);
+
+	free(altgpt);
+
+	if (ret)
+		goto err_block_write;
+	ret = block_write(blk, epd->ptes, last_lba(blk) - 32, 32);
+	if (ret)
+		goto err_block_write;
+
+	return 0;
+
+err_block_write:
+	pr_err("Cannot write to block device: %pe\n", ERR_PTR(ret));
 
-	free(pd);
+	return ret;
 }
 
 static struct partition_parser efi_partition_parser = {
 	.parse = efi_partition,
 	.partition_free = efi_partition_free,
+#ifdef CONFIG_PARTITION_MANIPULATION
+	.create = efi_partition_create_table,
+	.mkpart = efi_partition_mkpart,
+	.rmpart = efi_partition_rmpart,
+	.write = efi_partition_write,
+#endif
 	.type = filetype_gpt,
+	.name = "gpt",
 };
 
 static int efi_partition_init(void)
-- 
2.39.2



