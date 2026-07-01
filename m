Delivery-date: Wed, 01 Jul 2026 11:29:03 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1werFf-00Bohj-0o
	for lore@lore.pengutronix.de;
	Wed, 01 Jul 2026 11:29:03 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id B990F2019BD
	for <lore@pengutronix.de>; Wed, 01 Jul 2026 11:29:02 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=b6Ej2RCI;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+zWBgFDVsJlSM++M/YE4LD8oeqMXI19j0/xzVBsXzGs=; b=b6Ej2RCITFzP2XkrG3/NnfkSmw
	ip0Y8oTaGYaD7vBrhGEbAkcUYm70XEGjE3BbE8/ztvS4sAV0HKwoqLdfNi+bem9xR4T13Zp5PzJbO
	XStUfuO4czzIRg0BA6ySAFRkBE6Xz1M95CIzKeEOJQZDMIjesBZbpye3mgGglWDcNjlhQ+LC2mIOc
	zp22Jy3huDYocKv9PEoFKI/Tda5DbBRWkHKP6QqOLZj148e+l6WhoZXSIDoTeUKUJrnyUN8/9vGBU
	y4Wiezh0FOxL3yeg749Tc/108cCGJ0NPZIYjQVu2CY1ElBK3tRSJK4oDcgtvRTSeTDlE6M0p8nUOM
	bDhOdAsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1werES-00000001CEJ-2fbX;
	Wed, 01 Jul 2026 09:27:48 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1werEO-00000001CBs-3zYz
	for barebox@lists.infradead.org;
	Wed, 01 Jul 2026 09:27:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id CE383201AA3;
	Wed, 01 Jul 2026 11:27:38 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1werEI-005YRo-1w;
	Wed, 01 Jul 2026 11:27:38 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1werEI-00000003pCn-20bZ;
	Wed, 01 Jul 2026 11:27:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 01 Jul 2026 11:27:37 +0200
Subject: [PATCH 4/6] partitions: check new partitions against usable LBAs,
 not device size
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260701-gpt-size-fixes-v1-4-aec2e5641a19@pengutronix.de>
References: <20260701-gpt-size-fixes-v1-0-aec2e5641a19@pengutronix.de>
In-Reply-To: <20260701-gpt-size-fixes-v1-0-aec2e5641a19@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1782898058; l=6674;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=q6lda3N/cx3fOUbGgUMfGp5qgJQmBZ9XNELGwjYtutU=;
 b=LjevkV4IPuKHwX4JseDmyetHAUMHH9YIc0lwGBGQ4yEGxdf8E37kAus8JuNKthkJGbNUzGqPE
 XPer6S70i7uAt70BEJSBpvFXoFiQEAeAgOHTmqI7narUE9XHUoqjxyH
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260701_022745_162782_34C701B1 
X-CRM114-Status: GOOD (  21.67  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  parted could create partitions using the raw device size instead
    of the partition table's usable LBA range. Two paths were affected: - "mkpart
    ... max" computed the end as blk->num_blocks - 35 (GPT) or blk->num_blocks
    - 1 (MBR), hardcoding GPT geometry instead of using the table's last_usable_lba.
    
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
Cc: Sascha Hauer <sascha@saschahauer.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Rspamd-Queue-Id: B990F2019BD
X-Spamd-Result: default: False [-6.71 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::28:received,2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	DMARC_NA(0.00)[pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_ALL(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: qnq8kuyjf7hpf8n8zwo1x1rq4zqj49ae
X-Rspamd-Server: mx1

parted could create partitions using the raw device size instead of the
partition table's usable LBA range. Two paths were affected:

  - "mkpart ... max" computed the end as blk->num_blocks - 35 (GPT) or
    blk->num_blocks - 1 (MBR), hardcoding GPT geometry instead of using
    the table's last_usable_lba.

  - "mkpart_size" placed partitions via partition_find_free_space() /
    partition_is_free(), which bounded against blk->num_blocks.

For GPT these device-size bounds can exceed last_usable_lba (e.g. for a
table read from a device larger than the one it was created for, whose
last_usable_lba still reflects the smaller size, or a table reserving a
larger partition entry array). A partition placed there overlaps the
backup GPT header and partition entry array at the end of the device.
Linux does not reject such a partition - is_pte_valid() only bounds
entries against the physical device end - so the overlap surfaces as
silent corruption once the backup GPT is written.

Expose first_usable_lba/last_usable_lba on struct partition_desc,
populated by each parser from its own table geometry (GPT from the
header, others defaulting to the whole device), and validate partition
placement against them in partition_create(), partition_is_free(),
partition_find_free_space() and the parted "max" handler.

The lower bound remains the maximum of the table's first_usable_lba and
the global partitions.first_usable_lba, so space reserved at the start
of the device is still honoured even when the table would allow a lower
start.

Signed-off-by: Sascha Hauer <sascha@saschahauer.de>
---
 commands/parted.c       |  8 +-------
 common/partitions.c     | 28 +++++++++++++++++++++-------
 common/partitions/efi.c |  6 ++++++
 include/partitions.h    |  2 ++
 4 files changed, 30 insertions(+), 14 deletions(-)

diff --git a/commands/parted.c b/commands/parted.c
index dd79def62a..423eff7aa0 100644
--- a/commands/parted.c
+++ b/commands/parted.c
@@ -165,13 +165,7 @@ static int do_mkpart(struct block_device *blk, int argc, char *argv[])
 	start >>= SECTOR_SHIFT;
 
 	if (!strcmp(argv[4], "max")) {
-		/* gpt requires 34 blocks at the end */
-		if (pdesc->parser->type == filetype_gpt)
-			end = blk->num_blocks - 35;
-		else if (pdesc->parser->type == filetype_mbr)
-			end = blk->num_blocks - 1;
-		else
-			return -ENOSYS;
+		end = pdesc->last_usable_lba;
 	} else {
 		ret = parted_strtoull(argv[4], &end, &mult);
 		if (ret)
diff --git a/common/partitions.c b/common/partitions.c
index 40f4c629e1..82dadd515b 100644
--- a/common/partitions.c
+++ b/common/partitions.c
@@ -189,7 +189,10 @@ bool partition_is_free(struct partition_desc *pdesc, uint64_t start, uint64_t si
 	if (start < PARTITION_ALIGN_SECTORS)
 		return false;
 
-	if (start + size >= pdesc->blk->num_blocks)
+	if (start < pdesc->first_usable_lba)
+		return false;
+
+	if (start + size - 1 > pdesc->last_usable_lba)
 		return false;
 
 	list_for_each_entry(p, &pdesc->partitions, list) {
@@ -204,9 +207,10 @@ int partition_find_free_space(struct partition_desc *pdesc, uint64_t sectors, ui
 {
 	struct partition *p;
 	uint64_t min_sec = PARTITION_ALIGN_SECTORS;
+	uint64_t first_usable = max(partition_first_usable_lba(), pdesc->first_usable_lba);
 
-	if (min_sec < partition_first_usable_lba())
-		min_sec = partition_first_usable_lba();
+	if (min_sec < first_usable)
+		min_sec = first_usable;
 
 	min_sec = ALIGN(min_sec, PARTITION_ALIGN_SECTORS);
 
@@ -231,6 +235,7 @@ int partition_create(struct partition_desc *pdesc, const char *name,
 		     const char *fs_type, uint64_t lba_start, uint64_t lba_end)
 {
 	struct partition *part;
+	uint64_t first_usable;
 
 	if (!pdesc->parser->mkpart)
 		return -ENOSYS;
@@ -240,14 +245,16 @@ int partition_create(struct partition_desc *pdesc, const char *name,
 		return -EINVAL;
 	}
 
-	if (lba_end >= pdesc->blk->num_blocks) {
-		pr_err("lba_end exceeds device: %llu >= %llu\n", lba_end, pdesc->blk->num_blocks);
+	if (lba_end > pdesc->last_usable_lba) {
+		pr_err("lba_end exceeds last usable lba: %llu > %llu\n",
+		       lba_end, pdesc->last_usable_lba);
 		return -EINVAL;
 	}
 
-	if (lba_start < partition_first_usable_lba()) {
+	first_usable = max(partition_first_usable_lba(), pdesc->first_usable_lba);
+	if (lba_start < first_usable) {
 		pr_err("partition starts before first usable lba: %llu < %llu\n",
-		       lba_start, partition_first_usable_lba());
+		       lba_start, first_usable);
 		return -EINVAL;
 	}
 
@@ -289,6 +296,13 @@ void partition_table_free(struct partition_desc *pdesc)
 void partition_desc_init(struct partition_desc *pd, struct block_device *blk)
 {
 	pd->blk = blk;
+	/*
+	 * Default usable range spanning the whole device. Parsers that know
+	 * better (e.g. GPT reserves space for its headers and partition entry
+	 * arrays) override these from the on-disk table geometry.
+	 */
+	pd->first_usable_lba = partition_first_usable_lba();
+	pd->last_usable_lba = blk->num_blocks - 1;
 	INIT_LIST_HEAD(&pd->partitions);
 }
 
diff --git a/common/partitions/efi.c b/common/partitions/efi.c
index 59b9fa9b55..e58f86cd9d 100644
--- a/common/partitions/efi.c
+++ b/common/partitions/efi.c
@@ -636,6 +636,9 @@ static struct partition_desc *efi_partition(void *buf, struct block_device *blk)
 	gpt = epd->gpt;
 	ptes = epd->ptes;
 
+	epd->pd.first_usable_lba = le64_to_cpu(gpt->first_usable_lba);
+	epd->pd.last_usable_lba = le64_to_cpu(gpt->last_usable_lba);
+
 	blk->cdev.flags |= DEVFS_IS_GPT_PARTITIONED;
 
 	nb_part = le32_to_cpu(gpt->num_partition_entries);
@@ -713,6 +716,9 @@ static __maybe_unused struct partition_desc *efi_partition_create_table(struct b
 	gpt->alternate_lba = cpu_to_le64(last_lba(blk));
 	gpt->first_usable_lba = cpu_to_le64(first_usable_lba);
 	gpt->last_usable_lba = cpu_to_le64(last_lba(blk) - (gpt_size + 2));;
+
+	epd->pd.first_usable_lba = le64_to_cpu(gpt->first_usable_lba);
+	epd->pd.last_usable_lba = le64_to_cpu(gpt->last_usable_lba);
 	generate_random_guid((unsigned char *)&gpt->disk_guid);
 	gpt->partition_entry_lba = cpu_to_le64(first_usable_lba - gpt_size);
 	gpt->num_partition_entries = cpu_to_le32(num_partition_entries);
diff --git a/include/partitions.h b/include/partitions.h
index f73d028e29..3376731334 100644
--- a/include/partitions.h
+++ b/include/partitions.h
@@ -38,6 +38,8 @@ struct partition_desc {
 	struct list_head partitions;
 	struct partition_parser *parser;
 	struct block_device *blk;
+	uint64_t first_usable_lba;
+	uint64_t last_usable_lba;
 };
 
 struct partition_parser {

-- 
2.47.3



