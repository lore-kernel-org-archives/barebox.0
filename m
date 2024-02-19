Delivery-date: Mon, 19 Feb 2024 09:32:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rbz4g-00E4BP-2S
	for lore@lore.pengutronix.de;
	Mon, 19 Feb 2024 09:32:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rbz4c-0003Wa-Cx
	for lore@pengutronix.de; Mon, 19 Feb 2024 09:32:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jdVmGoG067vMcPfBS9J+ipWapIWKGnr26qtSxvwCq2s=; b=re+YaMptwN3gNH6uvYdqne+69p
	RxCv74bfy8Tvk2AhUNf/hZWK3zg5BsJ9xjRNmlkd5vZzi8Vt5X3m3TlUu8JctqsDR3QLrtgtkzND8
	me+/8sH3SDdwxH9GZ/QiAfITxzbtShBm7SPU5+sluD7C8cB3JsGF1+OAXwM8r8sTJNwYG7MHJTvyJ
	9TJe1zG3j4TMcyAgfCnlu3hOs+7S6u/b4P8ICUH2rHK+DA8rkjJVUh8erlaklwQyEuvqde0ANF1UY
	NkB0GfeZ7RSe6eu2CSkr/8wX25P7MiiZIoBQwUUj+IHUvyqolb3z9lqeI+jGAcxeUB6mkbt1RD3RY
	w5ihignQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbz46-00000009agK-3fOm;
	Mon, 19 Feb 2024 08:31:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbz3v-00000009aZQ-3pnZ
	for barebox@lists.infradead.org;
	Mon, 19 Feb 2024 08:31:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rbz3u-00031Z-On; Mon, 19 Feb 2024 09:31:42 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rbz3u-001blA-9y; Mon, 19 Feb 2024 09:31:42 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rbz3u-00CNCk-0e;
	Mon, 19 Feb 2024 09:31:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 19 Feb 2024 09:31:37 +0100
Message-Id: <20240219083140.2713047-10-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240219083140.2713047-1-s.hauer@pengutronix.de>
References: <20240219083140.2713047-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240219_003144_135674_531FBB7C 
X-CRM114-Status: GOOD (  18.24  )
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
Subject: [PATCH 09/12] partitions: implement partition manipulation support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds a function API to manipulate partition tables. Basically
partition_table_new() and partition_table_read() are factored out from
existing code. Apart from that we will have partition_create() to
create a new partition and partition_remove() to remove a partition.
These functions do basic sanity checks like partition overlap checking,
access beyond device cheks and call into not yet existing efi or msdos
specific function hooks.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Kconfig       |   3 +
 common/partitions.c  | 156 ++++++++++++++++++++++++++++++++++++-------
 include/partitions.h |  22 ++++++
 3 files changed, 157 insertions(+), 24 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index ddca1e913b..d16c8696da 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -841,6 +841,9 @@ config PARTITION
 	bool
 	prompt "Enable Partitions"
 
+config PARTITION_MANIPULATION
+	bool
+
 source "common/partitions/Kconfig"
 
 config ENV_HANDLING
diff --git a/common/partitions.c b/common/partitions.c
index abbe31ed11..7bcd0973b8 100644
--- a/common/partitions.c
+++ b/common/partitions.c
@@ -102,6 +102,133 @@ static struct partition_parser *partition_parser_get_by_filetype(uint8_t *buf)
 	return NULL;
 }
 
+struct partition_desc *partition_table_new(struct block_device *blk, const char *type)
+{
+	struct partition_desc *pdesc;
+	struct partition_parser *parser;
+
+	list_for_each_entry(parser, &partition_parser_list, list) {
+		if (!strcmp(parser->name, type))
+			goto found;
+	}
+
+	pr_err("Cannot find partition parser \"%s\"\n", type);
+
+	return ERR_PTR(-ENOSYS);
+
+found:
+	pdesc = parser->create(blk);
+	if (IS_ERR(pdesc))
+		return ERR_CAST(pdesc);
+
+	pdesc->parser = parser;
+
+	return pdesc;
+}
+
+struct partition_desc *partition_table_read(struct block_device *blk)
+{
+	struct partition_parser *parser;
+	struct partition_desc *pdesc = NULL;
+	uint8_t *buf;
+	int ret;
+
+	buf = malloc(2 * SECTOR_SIZE);
+
+	ret = block_read(blk, buf, 0, 2);
+	if (ret != 0) {
+		dev_err(blk->dev, "Cannot read MBR/partition table: %pe\n", ERR_PTR(ret));
+		goto err;
+	}
+
+	parser = partition_parser_get_by_filetype(buf);
+	if (!parser)
+		goto err;
+
+	pdesc = parser->parse(buf, blk);
+	pdesc->parser = parser;
+err:
+	free(buf);
+
+	return pdesc;
+}
+
+int partition_table_write(struct partition_desc *pdesc)
+{
+	if (!pdesc->parser->write)
+		return -ENOSYS;
+
+	return pdesc->parser->write(pdesc);
+}
+
+static bool overlap(uint64_t s1, uint64_t e1, uint64_t s2, uint64_t e2)
+{
+	if (e1 < s2)
+		return false;
+	if (s1 > e2)
+		return false;
+	return true;
+}
+
+int partition_create(struct partition_desc *pdesc, const char *name,
+		     const char *fs_type, uint64_t lba_start, uint64_t lba_end)
+{
+	struct partition *part;
+
+	if (!pdesc->parser->mkpart)
+		return -ENOSYS;
+
+	if (lba_end < lba_start) {
+		pr_err("lba_end < lba_start: %llu < %llu\n", lba_end, lba_start);
+		return -EINVAL;
+	}
+
+	if (lba_end >= pdesc->blk->num_blocks) {
+		pr_err("lba_end exceeds device: %llu >= %llu\n", lba_end, pdesc->blk->num_blocks);
+		return -EINVAL;
+	}
+
+	list_for_each_entry(part, &pdesc->partitions, list) {
+		if (overlap(part->first_sec,
+				part->first_sec + part->size - 1,
+				lba_start, lba_end)) {
+			pr_err("new partition %llu-%llu overlaps with partition %s (%llu-%llu)\n",
+			       lba_start, lba_end, part->name, part->first_sec,
+				part->first_sec + part->size - 1);
+			return -EINVAL;
+		}
+	}
+
+	return pdesc->parser->mkpart(pdesc, name, fs_type, lba_start, lba_end);
+}
+
+int partition_remove(struct partition_desc *pdesc, int num)
+{
+	struct partition *part;
+
+	if (!pdesc->parser->rmpart)
+		return -ENOSYS;
+
+	list_for_each_entry(part, &pdesc->partitions, list) {
+		if (part->num == num)
+			return pdesc->parser->rmpart(pdesc, part);
+	}
+
+	pr_err("Partition %d doesn't exist\n", num);
+	return -ENOENT;
+}
+
+void partition_table_free(struct partition_desc *pdesc)
+{
+	pdesc->parser->partition_free(pdesc);
+}
+
+void partition_desc_init(struct partition_desc *pd, struct block_device *blk)
+{
+	pd->blk = blk;
+	INIT_LIST_HEAD(&pd->partitions);
+}
+
 /**
  * Try to collect partition information on the given block device
  * @param blk Block device to examine
@@ -111,31 +238,14 @@ static struct partition_parser *partition_parser_get_by_filetype(uint8_t *buf)
  */
 int parse_partition_table(struct block_device *blk)
 {
-	struct partition_desc *pdesc = NULL;
 	int i;
 	int rc = 0;
-	struct partition_parser *parser;
 	struct partition *part;
-	uint8_t *buf;
-
-	buf = malloc(2 * SECTOR_SIZE);
+	struct partition_desc *pdesc;
 
-	rc = block_read(blk, buf, 0, 2);
-	if (rc != 0) {
-		dev_err(blk->dev, "Cannot read MBR/partition table: %pe\n", ERR_PTR(rc));
-		goto on_error;
-	}
-
-	parser = partition_parser_get_by_filetype(buf);
-	if (!parser)
-		goto on_error;
-
-	pdesc = parser->parse(buf, blk);
+	pdesc = partition_table_read(blk);
 	if (!pdesc)
-		goto on_error;
-
-	if (list_empty(&pdesc->partitions))
-		goto on_error;
+		return 0;
 
 	/* at least one partition description found */
 	list_for_each_entry(part, &pdesc->partitions, list) {
@@ -148,10 +258,8 @@ int parse_partition_table(struct block_device *blk)
 			rc = 0;
 	}
 
-on_error:
-	free(buf);
-	if (pdesc)
-		parser->partition_free(pdesc);
+	partition_table_free(pdesc);
+
 	return rc;
 }
 
diff --git a/include/partitions.h b/include/partitions.h
index ab593109e6..b5379db92a 100644
--- a/include/partitions.h
+++ b/include/partitions.h
@@ -28,18 +28,40 @@ struct partition {
 	int num;
 };
 
+struct partition_parser;
+
 struct partition_desc {
 	struct list_head partitions;
+	struct partition_parser *parser;
+	struct block_device *blk;
 };
 
 struct partition_parser {
 	struct partition_desc *(*parse)(void *buf, struct block_device *blk);
 	void (*partition_free)(struct partition_desc *pd);
+	struct partition_desc *(*create)(struct block_device *blk);
+	int (*mkpart)(struct partition_desc *pd, const char *name, const char *fs_type,
+		      uint64_t start, uint64_t end);
+	int (*rmpart)(struct partition_desc *pd, struct partition *part);
+	int (*write)(struct partition_desc *pd);
+	int (*rename)(struct partition *part, const char *name);
+	int (*setguid)(struct partition *part, guid_t *guid);
 	enum filetype type;
 
 	struct list_head list;
+
+	const char *name;
 };
 
+void partition_desc_init(struct partition_desc *pd, struct block_device *blk);
 int partition_parser_register(struct partition_parser *p);
+struct partition_desc *partition_table_read(struct block_device *blk);
+struct partition_desc *partition_table_new(struct block_device *blk, const char *type);
+int partition_table_write(struct partition_desc *pdesc);
+int partition_create(struct partition_desc *pdesc, const char *name,
+		     const char *fs_type, uint64_t lba_start, uint64_t lba_end);
+int partition_remove(struct partition_desc *pdesc, int num);
+void partition_table_free(struct partition_desc *pdesc);
+
 
 #endif /* __PARTITIONS_PARSER_H__ */
-- 
2.39.2



