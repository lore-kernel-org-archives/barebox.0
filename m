Delivery-date: Mon, 19 Feb 2024 09:36:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rbz89-00E4T6-0x
	for lore@lore.pengutronix.de;
	Mon, 19 Feb 2024 09:36:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rbz88-00045I-0J
	for lore@pengutronix.de; Mon, 19 Feb 2024 09:36:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LZy2yLau54vY5IaSwvo/HLwaQMS6WmJH97DL5bjTp1E=; b=HhXs2fSMPfN3RaqS26ac4OaStv
	PTPc5zyqPqTwcx+ys1esvQvcvjx0IdcrtA4NgBWrd8w+7/yl7V5YT1tExYnPbaxVu35o8sTGqXWDT
	8CWcKFL/WtAr8WjajeXKb677t/W2bgLp9H8gLMb+RnGw2IzLZWdZb8iU+l40khfti01blPdNx3Crz
	Di9KkVZmmCJRpm+NXHE6Bs65vr96vBVTgfG7nonAI1IXOougVzeKF94hDg9lYRlmPgiP2UPqUCbXY
	AVpaDBrLnyh4hVUn/SrjqwhcLSxipzHc5K7oc93pCjGf3zKHwBbRzjbuB1U4R2Lp4SBKobxz9N6Ox
	m+ZCY8og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbz7n-00000009bfn-0gKI;
	Mon, 19 Feb 2024 08:35:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbz7i-00000009bd8-1R8S
	for barebox@lists.infradead.org;
	Mon, 19 Feb 2024 08:35:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rbz7h-0003vL-50; Mon, 19 Feb 2024 09:35:37 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rbz7g-001boZ-OZ; Mon, 19 Feb 2024 09:35:36 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rbz3u-00CNCk-0o;
	Mon, 19 Feb 2024 09:31:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 19 Feb 2024 09:31:38 +0100
Message-Id: <20240219083140.2713047-11-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240219083140.2713047-1-s.hauer@pengutronix.de>
References: <20240219083140.2713047-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240219_003538_580101_DE279960 
X-CRM114-Status: GOOD (  22.82  )
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
Subject: [PATCH 10/12] partitions: dos: implement partition manipulation support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This fills in the msdos specific function hooks to add/remove
partitions.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/partitions/dos.c | 256 ++++++++++++++++++++++++++++++++++++++--
 1 file changed, 243 insertions(+), 13 deletions(-)

diff --git a/common/partitions/dos.c b/common/partitions/dos.c
index e5ff59f71a..9bb51bce85 100644
--- a/common/partitions/dos.c
+++ b/common/partitions/dos.c
@@ -15,10 +15,26 @@
 #include <common.h>
 #include <disks.h>
 #include <init.h>
+#include <stdlib.h>
 #include <asm/unaligned.h>
 #include <linux/err.h>
 #include <partitions.h>
 
+struct dos_partition_desc {
+	struct partition_desc pd;
+	uint32_t signature;
+};
+
+struct dos_partition {
+	struct partition part;
+	bool extended;
+	bool logical;
+
+	uint8_t boot_indicator;
+	uint8_t chs_begin[3];
+	uint8_t type;
+	uint8_t chs_end[3];
+};
 
 enum {
 /* These three have identical behaviour; use the second one if DOS FDISK gets
@@ -105,13 +121,14 @@ static int dos_get_disk_signature(struct param_d *p, void *_priv)
 	return 0;
 }
 
-static void dos_extended_partition(struct block_device *blk, struct partition_desc *pd,
+static void dos_extended_partition(struct block_device *blk, struct dos_partition_desc *dpd,
 		struct partition *partition, uint32_t signature)
 {
 	uint8_t *buf = malloc(SECTOR_SIZE);
 	uint32_t ebr_sector = partition->first_sec;
 	struct partition_entry *table = (struct partition_entry *)&buf[0x1be];
 	unsigned partno = 5;
+	struct dos_partition *dpart;
 	struct partition *pentry;
 
 	while (1) {
@@ -138,7 +155,14 @@ static void dos_extended_partition(struct block_device *blk, struct partition_de
 			}
 		/* /sanity checks */
 
-		pentry = xzalloc(sizeof(*pentry));
+		dpart = xzalloc(sizeof(*dpart));
+		dpart->logical = true;
+		dpart->boot_indicator = table[0].boot_indicator;
+		memcpy(dpart->chs_begin, table[0].chs_begin, sizeof(table[0].chs_begin));
+		dpart->type = table[0].type;
+		memcpy(dpart->chs_end, table[0].chs_end, sizeof(table[0].chs_end));
+
+		pentry = &dpart->part;
 
 		/* the first entry defines the extended partition */
 		pentry->first_sec = ebr_sector +
@@ -150,7 +174,7 @@ static void dos_extended_partition(struct block_device *blk, struct partition_de
 			sprintf(pentry->partuuid, "%08x-%02u",
 				signature, partno);
 
-		list_add_tail(&pentry->list, &pd->partitions);
+		list_add_tail(&pentry->list, &dpd->pd.partitions);
 		partno++;
 
 		/* the second entry defines the start of the next ebr if != 0 */
@@ -177,13 +201,14 @@ static void dos_extended_partition(struct block_device *blk, struct partition_de
 static struct partition_desc *dos_partition(void *buf, struct block_device *blk)
 {
 	struct partition_entry *table;
+	struct dos_partition *dpart;
 	struct partition *pentry;
 	struct partition *extended_partition = NULL;
 	uint8_t *buffer = buf;
 	int i;
 	struct disk_signature_priv *dsp;
 	uint32_t signature = get_unaligned_le32(buf + 0x1b8);
-	struct partition_desc *pd;
+	struct dos_partition_desc *dpd;
 
 	if (signature)
 		sprintf(blk->cdev.diskuuid, "%08x", signature);
@@ -192,8 +217,8 @@ static struct partition_desc *dos_partition(void *buf, struct block_device *blk)
 
 	table = (struct partition_entry *)&buffer[446];
 
-	pd = xzalloc(sizeof(*pd));
-	INIT_LIST_HEAD(&pd->partitions);
+	dpd = xzalloc(sizeof(*dpd));
+	partition_desc_init(&dpd->pd, blk);
 
 	for (i = 0; i < 4; i++) {
 		uint64_t first_sec = get_unaligned_le32(&table[i].partition_start);
@@ -203,16 +228,26 @@ static struct partition_desc *dos_partition(void *buf, struct block_device *blk)
 			continue;
 		}
 
-		pentry = xzalloc(sizeof(*pentry));
+		dpart = xzalloc(sizeof(*dpart));
+		dpart->boot_indicator = table[i].boot_indicator;
+		memcpy(dpart->chs_begin, table[i].chs_begin, sizeof(table[i].chs_begin));
+		dpart->type = table[i].type;
+		memcpy(dpart->chs_end, table[i].chs_end, sizeof(table[i].chs_end));
+
+		pentry = &dpart->part;
 
 		pentry->first_sec = first_sec;
 		pentry->size = get_unaligned_le32(&table[i].partition_size);
 		pentry->dos_partition_type = table[i].type;
+		pentry->num = i + 1;
 
-		if (signature)
+		if (signature) {
 			sprintf(pentry->partuuid, "%08x-%02d", signature, i + 1);
+			dpd->signature = signature;
+		}
 
 		if (is_extended_partition(pentry)) {
+			dpart->extended = true;
 			pentry->size = 2;
 
 			if (!extended_partition)
@@ -226,11 +261,11 @@ static struct partition_desc *dos_partition(void *buf, struct block_device *blk)
 				dev_warn(blk->dev, "Skipping additional extended partition\n");
 		}
 
-		list_add_tail(&pentry->list, &pd->partitions);
+		list_add_tail(&pentry->list, &dpd->pd.partitions);
 	}
 
 	if (extended_partition)
-		dos_extended_partition(blk, pd, extended_partition, signature);
+		dos_extended_partition(blk, dpd, extended_partition, signature);
 
 	dsp = xzalloc(sizeof(*dsp));
 	dsp->blk = blk;
@@ -249,23 +284,218 @@ static struct partition_desc *dos_partition(void *buf, struct block_device *blk)
 			dos_set_disk_signature, dos_get_disk_signature,
 			&dsp->signature, "%08x", dsp);
 
-	return pd;
+	return &dpd->pd;
 }
 
 static void dos_partition_free(struct partition_desc *pd)
 {
 	struct partition *part, *tmp;
 
-	list_for_each_entry_safe(part, tmp, &pd->partitions, list)
-		free(part);
+	list_for_each_entry_safe(part, tmp, &pd->partitions, list) {
+		struct dos_partition *dpart = container_of(part, struct dos_partition, part);
+
+		free(dpart);
+	}
 
 	free(pd);
 }
 
+static __maybe_unused struct partition_desc *dos_partition_create_table(struct block_device *blk)
+{
+	struct dos_partition_desc *dpd = xzalloc(512);
+
+	partition_desc_init(&dpd->pd, blk);
+
+	dpd->signature = random32();
+
+	return &dpd->pd;
+}
+
+static int fs_type_to_type(const char *fstype)
+{
+	unsigned long type;
+	int ret;
+
+	if (!strcmp(fstype, "ext2"))
+		return 0x83;
+	if (!strcmp(fstype, "ext3"))
+		return 0x83;
+	if (!strcmp(fstype, "ext4"))
+		return 0x83;
+	if (!strcmp(fstype, "fat16"))
+		return 0xe;
+	if (!strcmp(fstype, "fat32"))
+		return 0xc;
+
+	ret = kstrtoul(fstype, 16, &type);
+	if (ret)
+		return ret;
+
+	if (type > 0xff)
+		return -EINVAL;
+
+	return type;
+}
+
+static __maybe_unused int dos_partition_mkpart(struct partition_desc *pd,
+					       const char *name, const char *fs_type,
+					       uint64_t start_lba, uint64_t end_lba)
+{
+	struct dos_partition *dpart;
+	struct partition *part, *part_extended = NULL;
+	int npart = 0, npart_logical = 0;
+	uint64_t size;
+	int mask_free = 0xf;
+	int type = fs_type_to_type(fs_type);
+
+	if (type < 0) {
+		pr_err("invalid fs_type \"%s\"\n", fs_type);
+		return -EINVAL;
+	}
+
+	if (start_lba < 1) {
+		pr_err("invalid start LBA, minimum is 1\n");
+		return -EINVAL;
+	}
+
+	list_for_each_entry(part, &pd->partitions, list) {
+		dpart = container_of(part, struct dos_partition, part);
+
+		mask_free &= ~(1 << npart);
+
+		if (dpart->extended)
+			part_extended = part;
+		if (dpart->logical)
+			npart_logical++;
+		else
+			npart++;
+	}
+
+	if (!strcmp(name, "extended")) {
+		if (part_extended) {
+			pr_err("extended partition already exists\n");
+			return -ENOSPC;
+		}
+		goto create;
+	} else if (!strcmp(name, "primary")) {
+		if (npart == 4) {
+			pr_err("Can't create any more partitions\n");
+			return -ENOSPC;
+		}
+
+		goto create;
+	} else if (!strcmp(name, "logical")) {
+		if (!part_extended) {
+			pr_err("No extended partition\n");
+			return -EINVAL;
+		}
+
+		if (npart_logical >= 4) {
+			pr_err("Can't create any more partitions\n");
+			return -ENOSPC;
+		}
+
+		pr_err("Can't create logical partitions yet\n");
+		return -EINVAL;
+	} else {
+		pr_err("Invalid name \"%s\"\n", name);
+		return -EINVAL;
+	}
+
+	return 0;
+
+create:
+	dpart = xzalloc(sizeof(*dpart));
+	part = &dpart->part;
+
+	if (start_lba > UINT_MAX)
+		return -ENOSPC;
+	size = end_lba - start_lba + 1;
+
+	if (size > UINT_MAX)
+		return -ENOSPC;
+
+	dpart->type = fs_type_to_type(fs_type);
+
+	part->first_sec = start_lba;
+	part->size = size;
+	part->num = ffs(mask_free);
+
+	list_add_tail(&part->list, &pd->partitions);
+
+	return 0;
+}
+
+static __maybe_unused int dos_partition_rmpart(struct partition_desc *pd, struct partition *part)
+{
+	struct dos_partition *dpart = container_of(part, struct dos_partition, part);
+
+	list_del(&part->list);
+	free(dpart);
+
+	return 0;
+}
+
+static __maybe_unused int dos_partition_write(struct partition_desc *pd)
+{
+	struct dos_partition_desc *dpd = container_of(pd, struct dos_partition_desc, pd);
+	struct dos_partition *dpart;
+	struct partition *part;
+	void *buf;
+	struct partition_entry *table, *entry;
+	int ret;
+
+	list_for_each_entry(part, &pd->partitions, list) {
+		dpart = container_of(part, struct dos_partition, part);
+		if (dpart->logical) {
+			pr_err("Cannot write tables with logical partitions yet\n");
+			return -EINVAL;
+		}
+	}
+
+	buf = read_mbr(pd->blk);
+	if (!buf)
+		return -EIO;
+
+	put_unaligned_le32(dpd->signature, buf + 0x1b8);
+
+	table = buf + 0x1be;
+	memset(table, 0x0, sizeof(*table) * 4);
+
+	*(u8 *)(buf + 0x1fe) = 0x55;
+	*(u8 *)(buf + 0x1ff) = 0xaa;
+
+	list_for_each_entry(part, &pd->partitions, list) {
+		dpart = container_of(part, struct dos_partition, part);
+
+		entry = &table[part->num - 1];
+
+		entry->boot_indicator = dpart->boot_indicator;
+		memcpy(entry->chs_begin, dpart->chs_begin, sizeof(entry->chs_begin));
+		entry->type = dpart->type;
+		memcpy(entry->chs_end, dpart->chs_end, sizeof(entry->chs_end));
+		put_unaligned_le32(part->first_sec, &entry->partition_start);
+		put_unaligned_le32(part->size, &entry->partition_size);
+	}
+
+	ret = block_write(pd->blk, buf, 0, 1);
+
+	free(buf);
+
+	return ret;
+}
+
 static struct partition_parser dos = {
 	.parse = dos_partition,
 	.partition_free = dos_partition_free,
+#ifdef CONFIG_PARTITION_MANIPULATION
+	.create = dos_partition_create_table,
+	.mkpart = dos_partition_mkpart,
+	.rmpart = dos_partition_rmpart,
+	.write = dos_partition_write,
+#endif
 	.type = filetype_mbr,
+	.name = "msdos",
 };
 
 static int dos_partition_init(void)
-- 
2.39.2



