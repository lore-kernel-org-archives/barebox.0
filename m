Delivery-date: Mon, 19 Feb 2024 09:32:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rbz4b-00E48l-2A
	for lore@lore.pengutronix.de;
	Mon, 19 Feb 2024 09:32:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rbz4X-0003TK-Ou
	for lore@pengutronix.de; Mon, 19 Feb 2024 09:32:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AHSmxyLn+7PylYG0lIy0Kt6Uk64d/B34toKeUUIBl7A=; b=crEMPRV6LFPsfuNL6EDqeJKy7N
	0yv30jNyI7sIOx/nOXz81oEPpYqvDVMYwx8Y4dYMZExF1axPlMfQ9qUIw94LfnYA7myXpqEtAL4c9
	ciadJoSA0p/4YQN/RGM+rPpkVIP0aXVNQuxHYd9cHTUEzd22nqhPkqhXf7UtoTtzf/Mr6tA3Yy7rL
	HXz9jKA0Kxob+X0E1OgyUJ3YmIJFJuN8NPdAYzW9VzWSIK280bAsSOfx3bHAQCVUy7qQIEQ9fXc0q
	PpeuM5FopdYwoD0jUowFI+oFrzvpvLAhdH36lH+N19ZU8Qi2ZyoIlkHXe/O8naNcmlqumxZTFK5FR
	hHdF9ELg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbz44-00000009aew-1blw;
	Mon, 19 Feb 2024 08:31:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbz3v-00000009aZI-2YPg
	for barebox@lists.infradead.org;
	Mon, 19 Feb 2024 08:31:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rbz3u-000305-D8; Mon, 19 Feb 2024 09:31:42 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rbz3t-001bks-Vz; Mon, 19 Feb 2024 09:31:42 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rbz3t-00CNCk-2t;
	Mon, 19 Feb 2024 09:31:41 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 19 Feb 2024 09:31:31 +0100
Message-Id: <20240219083140.2713047-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240219083140.2713047-1-s.hauer@pengutronix.de>
References: <20240219083140.2713047-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240219_003143_962401_C7384576 
X-CRM114-Status: GOOD (  20.32  )
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
Subject: [PATCH 03/12] partition: allocate struct partition in parser
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Allocate struct partition in the parser rather than in the core
partition code. Doing so allows the parser to embed struct partition
in an implementation specific struct type.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/partitions.c        | 12 ++++----
 common/partitions/dos.c    | 56 ++++++++++++++++++++++----------------
 common/partitions/efi.c    | 13 +++++++--
 common/partitions/parser.h |  5 ++--
 4 files changed, 51 insertions(+), 35 deletions(-)

diff --git a/common/partitions.c b/common/partitions.c
index 05ebde7ca3..0d8c2849ab 100644
--- a/common/partitions.c
+++ b/common/partitions.c
@@ -27,8 +27,7 @@ static LIST_HEAD(partition_parser_list);
  * @param no Partition number
  * @return 0 on success
  */
-static int register_one_partition(struct block_device *blk,
-					struct partition *part, int no)
+static int register_one_partition(struct block_device *blk, struct partition *part)
 {
 	char *partition_name;
 	int ret;
@@ -38,7 +37,7 @@ static int register_one_partition(struct block_device *blk,
 		.size = part->size * SECTOR_SIZE,
 	};
 
-	partition_name = basprintf("%s.%d", blk->cdev.name, no);
+	partition_name = basprintf("%s.%d", blk->cdev.name, part->num);
 	if (!partition_name)
 		return -ENOMEM;
 
@@ -117,6 +116,7 @@ int parse_partition_table(struct block_device *blk)
 	int i;
 	int rc = 0;
 	struct partition_parser *parser;
+	struct partition *part;
 	uint8_t *buf;
 
 	buf = malloc(2 * SECTOR_SIZE);
@@ -135,12 +135,12 @@ int parse_partition_table(struct block_device *blk)
 	if (!pdesc)
 		goto on_error;
 
-	if (!pdesc->used_entries)
+	if (list_empty(&pdesc->partitions))
 		goto on_error;
 
 	/* at least one partition description found */
-	for (i = 0; i < pdesc->used_entries; i++) {
-		rc = register_one_partition(blk, &pdesc->parts[i], i);
+	list_for_each_entry(part, &pdesc->partitions, list) {
+		rc = register_one_partition(blk, part);
 		if (rc != 0)
 			dev_err(blk->dev,
 				"Failed to register partition %d on %s (%d)\n",
diff --git a/common/partitions/dos.c b/common/partitions/dos.c
index 01a251201e..7ca3c4e37e 100644
--- a/common/partitions/dos.c
+++ b/common/partitions/dos.c
@@ -113,10 +113,10 @@ static void dos_extended_partition(struct block_device *blk, struct partition_de
 	uint32_t ebr_sector = partition->first_sec;
 	struct partition_entry *table = (struct partition_entry *)&buf[0x1be];
 	unsigned partno = 5;
+	struct partition *pentry;
 
-	while (pd->used_entries < ARRAY_SIZE(pd->parts)) {
+	while (1) {
 		int rc, i;
-		int n = pd->used_entries;
 
 		dev_dbg(blk->dev, "expect EBR in sector %x\n", ebr_sector);
 
@@ -139,15 +139,19 @@ static void dos_extended_partition(struct block_device *blk, struct partition_de
 			}
 		/* /sanity checks */
 
+		pentry = xzalloc(sizeof(*pentry));
+
 		/* the first entry defines the extended partition */
-		pd->parts[n].first_sec = ebr_sector +
+		pentry->first_sec = ebr_sector +
 			get_unaligned_le32(&table[0].partition_start);
-		pd->parts[n].size = get_unaligned_le32(&table[0].partition_size);
-		pd->parts[n].dos_partition_type = table[0].type;
+		pentry->size = get_unaligned_le32(&table[0].partition_size);
+		pentry->dos_partition_type = table[0].type;
+		pentry->num = partno;
 		if (signature)
-			sprintf(pd->parts[n].partuuid, "%08x-%02u",
+			sprintf(pentry->partuuid, "%08x-%02u",
 				signature, partno);
-		pd->used_entries++;
+
+		list_add_tail(&pentry->list, &pd->partitions);
 		partno++;
 
 		/* the second entry defines the start of the next ebr if != 0 */
@@ -174,7 +178,7 @@ static void dos_extended_partition(struct block_device *blk, struct partition_de
 static struct partition_desc *dos_partition(void *buf, struct block_device *blk)
 {
 	struct partition_entry *table;
-	struct partition pentry;
+	struct partition *pentry;
 	struct partition *extended_partition = NULL;
 	uint8_t *buffer = buf;
 	int i;
@@ -190,33 +194,30 @@ static struct partition_desc *dos_partition(void *buf, struct block_device *blk)
 	table = (struct partition_entry *)&buffer[446];
 
 	pd = xzalloc(sizeof(*pd));
+	INIT_LIST_HEAD(&pd->partitions);
 
 	for (i = 0; i < 4; i++) {
-		int n;
+		uint64_t first_sec = get_unaligned_le32(&table[i].partition_start);
 
-		pentry.first_sec = get_unaligned_le32(&table[i].partition_start);
-		pentry.size = get_unaligned_le32(&table[i].partition_size);
-		pentry.dos_partition_type = table[i].type;
-
-		if (pentry.first_sec == 0) {
+		if (first_sec == 0) {
 			dev_dbg(blk->dev, "Skipping empty partition %d\n", i);
 			continue;
 		}
 
-		n = pd->used_entries;
-		pd->parts[n].first_sec = pentry.first_sec;
-		pd->parts[n].size = pentry.size;
-		pd->parts[n].dos_partition_type = pentry.dos_partition_type;
+		pentry = xzalloc(sizeof(*pentry));
+
+		pentry->first_sec = first_sec;
+		pentry->size = get_unaligned_le32(&table[i].partition_size);
+		pentry->dos_partition_type = table[i].type;
+
 		if (signature)
-			sprintf(pd->parts[n].partuuid, "%08x-%02d",
-					signature, i + 1);
-		pd->used_entries++;
+			sprintf(pentry->partuuid, "%08x-%02d", signature, i + 1);
 
-		if (is_extended_partition(&pentry)) {
-			pd->parts[n].size = 2;
+		if (is_extended_partition(pentry)) {
+			pentry->size = 2;
 
 			if (!extended_partition)
-				extended_partition = &pd->parts[n];
+				extended_partition = pentry;
 			else
 				/*
 				 * An DOS MBR must only contain a single
@@ -225,6 +226,8 @@ static struct partition_desc *dos_partition(void *buf, struct block_device *blk)
 				 */
 				dev_warn(blk->dev, "Skipping additional extended partition\n");
 		}
+
+		list_add_tail(&pentry->list, &pd->partitions);
 	}
 
 	if (extended_partition)
@@ -252,6 +255,11 @@ static struct partition_desc *dos_partition(void *buf, struct block_device *blk)
 
 static void dos_partition_free(struct partition_desc *pd)
 {
+	struct partition *part, *tmp;
+
+	list_for_each_entry_safe(part, tmp, &pd->partitions, list)
+		free(part);
+
 	free(pd);
 }
 
diff --git a/common/partitions/efi.c b/common/partitions/efi.c
index effe512949..5612f6261b 100644
--- a/common/partitions/efi.c
+++ b/common/partitions/efi.c
@@ -438,7 +438,7 @@ static struct partition_desc *efi_partition(void *buf, struct block_device *blk)
 	int i = 0;
 	int nb_part;
 	struct partition *pentry;
-	struct partition_desc *pd;
+	struct partition_desc *pd = NULL;
 
 	if (!find_valid_gpt(buf, blk, &gpt, &ptes) || !gpt || !ptes)
 		goto out;
@@ -457,6 +457,7 @@ static struct partition_desc *efi_partition(void *buf, struct block_device *blk)
 	}
 
 	pd = xzalloc(sizeof(*pd));
+	INIT_LIST_HEAD(&pd->partitions);
 
 	for (i = 0; i < nb_part; i++) {
 		if (!is_pte_valid(&ptes[i], last_lba(blk))) {
@@ -464,14 +465,15 @@ static struct partition_desc *efi_partition(void *buf, struct block_device *blk)
 			continue;
 		}
 
-		pentry = &pd->parts[pd->used_entries];
+		pentry = xzalloc(sizeof(*pentry));
 		pentry->first_sec = le64_to_cpu(ptes[i].starting_lba);
 		pentry->size = le64_to_cpu(ptes[i].ending_lba) - pentry->first_sec;
 		pentry->size++;
 		part_set_efi_name(&ptes[i], pentry->name);
 		snprintf(pentry->partuuid, sizeof(pentry->partuuid), "%pUl", &ptes[i].unique_partition_guid);
 		pentry->typeuuid = ptes[i].partition_type_guid;
-		pd->used_entries++;
+		pentry->num = i;
+		list_add_tail(&pentry->list, &pd->partitions);
 	}
 out:
 	kfree(gpt);
@@ -482,6 +484,11 @@ static struct partition_desc *efi_partition(void *buf, struct block_device *blk)
 
 static void efi_partition_free(struct partition_desc *pd)
 {
+	struct partition *part, *tmp;
+
+	list_for_each_entry_safe(part, tmp, &pd->partitions, list)
+		free(part);
+
 	free(pd);
 }
 
diff --git a/common/partitions/parser.h b/common/partitions/parser.h
index 3eec2cdb21..ab593109e6 100644
--- a/common/partitions/parser.h
+++ b/common/partitions/parser.h
@@ -24,11 +24,12 @@ struct partition {
 		u8 dos_partition_type;
 		guid_t typeuuid;
 	};
+	struct list_head list;
+	int num;
 };
 
 struct partition_desc {
-	int used_entries;
-	struct partition parts[MAX_PARTITION];
+	struct list_head partitions;
 };
 
 struct partition_parser {
-- 
2.39.2



