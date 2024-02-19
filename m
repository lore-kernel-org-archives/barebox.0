Delivery-date: Mon, 19 Feb 2024 09:32:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rbz4b-00E48Z-1n
	for lore@lore.pengutronix.de;
	Mon, 19 Feb 2024 09:32:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rbz4X-0003TM-UF
	for lore@pengutronix.de; Mon, 19 Feb 2024 09:32:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EnbHuE5n3pgwTE22sHDt2LG2OX+qdlldM9r98DDPwF8=; b=FahsK67M9FSL6DSjOufbWFMZhm
	rSkj7LhwE9BUSxPudP51VRTZPmeYDMzVUom/Qt5lfB3aUwbDIWaolVzmxA5metJVg5s00M58MRn6v
	rgL0g++zshB85rqUSfUKsmbMerSqW23rp20gBSr0swZA6z4MOuO1310jckPfGLfA6eOM/3tz06pMM
	G4fjlAofQsUUtwUfJXq0W8G8us/1wGIRYUk/MbEXrpaGfozW14/zyh7KzjPL+DigcisSb0xEcJfAV
	aONiFr0wUGX4lpYrmHjb4+VtZLDQSjJ8aPwnE9CX5zaKUk/ZmLL+9fHh7kDssf2+cQ/90QVfq1Dcg
	UkJCzwfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbz40-00000009ad2-2Ron;
	Mon, 19 Feb 2024 08:31:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbz3v-00000009aZH-2DQi
	for barebox@lists.infradead.org;
	Mon, 19 Feb 2024 08:31:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rbz3u-000304-B7; Mon, 19 Feb 2024 09:31:42 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rbz3t-001bkp-UX; Mon, 19 Feb 2024 09:31:41 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rbz3t-00CNCk-2j;
	Mon, 19 Feb 2024 09:31:41 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 19 Feb 2024 09:31:30 +0100
Message-Id: <20240219083140.2713047-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240219083140.2713047-1-s.hauer@pengutronix.de>
References: <20240219083140.2713047-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240219_003143_617177_282A3B50 
X-CRM114-Status: GOOD (  17.36  )
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
Subject: [PATCH 02/12] partition: allocate struct partition_desc in parser
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Allocate struct partition_desc in parser rather than in the core. Doing
so allows the efi/dos partition code to embed the struct partition_desc
is a efi/dos specific struct type.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/partitions.c        | 10 ++++++----
 common/partitions/dos.c    | 14 ++++++++++++--
 common/partitions/efi.c    | 14 ++++++++++++--
 common/partitions/parser.h |  3 ++-
 4 files changed, 32 insertions(+), 9 deletions(-)

diff --git a/common/partitions.c b/common/partitions.c
index cfcd0e080b..05ebde7ca3 100644
--- a/common/partitions.c
+++ b/common/partitions.c
@@ -113,13 +113,12 @@ static struct partition_parser *partition_parser_get_by_filetype(uint8_t *buf)
  */
 int parse_partition_table(struct block_device *blk)
 {
-	struct partition_desc *pdesc;
+	struct partition_desc *pdesc = NULL;
 	int i;
 	int rc = 0;
 	struct partition_parser *parser;
 	uint8_t *buf;
 
-	pdesc = xzalloc(sizeof(*pdesc));
 	buf = malloc(2 * SECTOR_SIZE);
 
 	rc = block_read(blk, buf, 0, 2);
@@ -132,7 +131,9 @@ int parse_partition_table(struct block_device *blk)
 	if (!parser)
 		goto on_error;
 
-	parser->parse(buf, blk, pdesc);
+	pdesc = parser->parse(buf, blk);
+	if (!pdesc)
+		goto on_error;
 
 	if (!pdesc->used_entries)
 		goto on_error;
@@ -150,7 +151,8 @@ int parse_partition_table(struct block_device *blk)
 
 on_error:
 	free(buf);
-	free(pdesc);
+	if (pdesc)
+		parser->partition_free(pdesc);
 	return rc;
 }
 
diff --git a/common/partitions/dos.c b/common/partitions/dos.c
index 56ec1e3f48..01a251201e 100644
--- a/common/partitions/dos.c
+++ b/common/partitions/dos.c
@@ -171,8 +171,7 @@ static void dos_extended_partition(struct block_device *blk, struct partition_de
  * It seems at least on ARM this routine cannot use temp. stack space for the
  * sector. So, keep the malloc/free.
  */
-static void dos_partition(void *buf, struct block_device *blk,
-			  struct partition_desc *pd)
+static struct partition_desc *dos_partition(void *buf, struct block_device *blk)
 {
 	struct partition_entry *table;
 	struct partition pentry;
@@ -181,6 +180,7 @@ static void dos_partition(void *buf, struct block_device *blk,
 	int i;
 	struct disk_signature_priv *dsp;
 	uint32_t signature = get_unaligned_le32(buf + 0x1b8);
+	struct partition_desc *pd;
 
 	if (signature)
 		sprintf(blk->cdev.diskuuid, "%08x", signature);
@@ -189,6 +189,8 @@ static void dos_partition(void *buf, struct block_device *blk,
 
 	table = (struct partition_entry *)&buffer[446];
 
+	pd = xzalloc(sizeof(*pd));
+
 	for (i = 0; i < 4; i++) {
 		int n;
 
@@ -244,10 +246,18 @@ static void dos_partition(void *buf, struct block_device *blk,
 	dev_add_param_uint32(blk->dev, "nt_signature",
 			dos_set_disk_signature, dos_get_disk_signature,
 			&dsp->signature, "%08x", dsp);
+
+	return pd;
+}
+
+static void dos_partition_free(struct partition_desc *pd)
+{
+	free(pd);
 }
 
 static struct partition_parser dos = {
 	.parse = dos_partition,
+	.partition_free = dos_partition_free,
 	.type = filetype_mbr,
 };
 
diff --git a/common/partitions/efi.c b/common/partitions/efi.c
index d0e14d5abb..effe512949 100644
--- a/common/partitions/efi.c
+++ b/common/partitions/efi.c
@@ -431,14 +431,14 @@ static void part_set_efi_name(gpt_entry *pte, char *dest)
 	dest[i] = 0;
 }
 
-static void efi_partition(void *buf, struct block_device *blk,
-			  struct partition_desc *pd)
+static struct partition_desc *efi_partition(void *buf, struct block_device *blk)
 {
 	gpt_header *gpt = NULL;
 	gpt_entry *ptes = NULL;
 	int i = 0;
 	int nb_part;
 	struct partition *pentry;
+	struct partition_desc *pd;
 
 	if (!find_valid_gpt(buf, blk, &gpt, &ptes) || !gpt || !ptes)
 		goto out;
@@ -456,6 +456,8 @@ static void efi_partition(void *buf, struct block_device *blk,
 		nb_part = MAX_PARTITION;
 	}
 
+	pd = xzalloc(sizeof(*pd));
+
 	for (i = 0; i < nb_part; i++) {
 		if (!is_pte_valid(&ptes[i], last_lba(blk))) {
 			dev_dbg(blk->dev, "Invalid pte %d\n", i);
@@ -474,10 +476,18 @@ static void efi_partition(void *buf, struct block_device *blk,
 out:
 	kfree(gpt);
 	kfree(ptes);
+
+	return pd;
+}
+
+static void efi_partition_free(struct partition_desc *pd)
+{
+	free(pd);
 }
 
 static struct partition_parser efi_partition_parser = {
 	.parse = efi_partition,
+	.partition_free = efi_partition_free,
 	.type = filetype_gpt,
 };
 
diff --git a/common/partitions/parser.h b/common/partitions/parser.h
index 9cc41a7573..3eec2cdb21 100644
--- a/common/partitions/parser.h
+++ b/common/partitions/parser.h
@@ -32,7 +32,8 @@ struct partition_desc {
 };
 
 struct partition_parser {
-	void (*parse)(void *buf, struct block_device *blk, struct partition_desc *pd);
+	struct partition_desc *(*parse)(void *buf, struct block_device *blk);
+	void (*partition_free)(struct partition_desc *pd);
 	enum filetype type;
 
 	struct list_head list;
-- 
2.39.2



