Delivery-date: Wed, 03 Dec 2025 16:19:39 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQodn-007YOl-0h
	for lore@lore.pengutronix.de;
	Wed, 03 Dec 2025 16:19:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQodm-0003RT-E7
	for lore@pengutronix.de; Wed, 03 Dec 2025 16:19:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=I7BYvBZHgM1dtaC8hBcLg2o5eVKpLA6WF0l4/5GFMcE=; b=J9K4sbP1QL2768YXYWSUCjcTc5
	aHhzB8CjLQ2CJlPoWG2+Ys2f0VExQ+2hlWGCihYr/jRu5Zn01Hqzxp+bMjyp8PKSWcGZOa4Y5to87
	Pof0fbtoafV6+NroM9GtIKazhNAKJzCtRp4MC8fQbwk/SYAh9dp1DiEd/6sqYAIZb/94+ymDi/Rm1
	fMaSJKLtcctw93uJxk2eEee8W05xp5qWpdacQN3oPjA8KRrF0UoNmgB6Df3CIZE2x8qX6mC/RVU3V
	BzuqLElrThMAK0Y0Dxqr6rkWTx+K+UTQGeazDr+jcSXKHoWzQR5/XWDZfhDaiwM8kw4jCyEdVmTZI
	z897bI2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQodO-00000006gjy-1tf4;
	Wed, 03 Dec 2025 15:19:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQodI-00000006ghJ-3sZJ
	for barebox@lists.infradead.org;
	Wed, 03 Dec 2025 15:19:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQodG-0003AB-TI; Wed, 03 Dec 2025 16:19:06 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQodG-003nYK-2F;
	Wed, 03 Dec 2025 16:19:06 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQodG-00000009MJM-2Wp0;
	Wed, 03 Dec 2025 16:19:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 03 Dec 2025 16:19:05 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251203-efi-partition-refresh-v1-1-f0b6e79b5fa0@pengutronix.de>
References: <20251203-efi-partition-refresh-v1-0-f0b6e79b5fa0@pengutronix.de>
In-Reply-To: <20251203-efi-partition-refresh-v1-0-f0b6e79b5fa0@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764775146; l=4392;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=vFeXshLScwxBWn76uVP9VzECN+eedptqjvbv1o6Bl+g=;
 b=bC7zXSxox5ii0QSFYqOxIFnS1OhCB5ek9yiiUST6YMrtEgmzjq5Ol651EK0jcMpbD3QzRVvuw
 zn8H3PqTgJzAkmK9n0uBJwuNrU15zq8V41gI8QLjA/VHsrp8zxwMimw
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251203_071909_009704_6BECC07C 
X-CRM114-Status: GOOD (  17.85  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/6] partitions: gpt: pass epd context pointer to
 find_valid_gpt()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Pass the epd context pointer to find_valid_gpt() which we'll use in a
followup patch. This makes other arguments unnecessary, so they are
dropped. While at it change the return value of find_valid_gpt() to
standard 0 for success and negative error code otherwise.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/partitions/efi.c | 58 ++++++++++++++++++++++++-------------------------
 1 file changed, 29 insertions(+), 29 deletions(-)

diff --git a/common/partitions/efi.c b/common/partitions/efi.c
index 88d8a2d739c4e545952684f5647d105d9f38b028..da9c2d89c1c68ae1acebc1f8eaea8da48243f0d6 100644
--- a/common/partitions/efi.c
+++ b/common/partitions/efi.c
@@ -381,11 +381,10 @@ compare_gpts(struct device *dev, gpt_header *pgpt, gpt_header *agpt,
 
 /**
  * find_valid_gpt() - Search disk for valid GPT headers and PTEs
- * @state
- * @gpt is a GPT header ptr, filled on return.
- * @ptes is a PTEs ptr, filled on return.
- * Description: Returns 1 if valid, 0 on error.
- * If valid, returns pointers to newly allocated GPT header and PTEs.
+ * @buf buffer containing the first lba
+ * @epd the efi partition descriptor context pointer
+ * Description: Returns 0 for success, negative error code otherwise.
+ * If valid, epd is filled with pointers to newly allocated GPT header and PTEs.
  * Validity depends on PMBR being valid (or being overridden by the
  * 'gpt' kernel command line option) and finding either the Primary
  * GPT header and PTEs valid, or the Alternate GPT header and PTEs
@@ -394,17 +393,14 @@ compare_gpts(struct device *dev, gpt_header *pgpt, gpt_header *agpt,
  * This protects against devices which misreport their size, and forces
  * the user to decide to use the Alternate GPT.
  */
-static int find_valid_gpt(void *buf, struct block_device *blk, gpt_header **gpt,
-			  gpt_entry **ptes)
+static int find_valid_gpt(struct efi_partition_desc *epd, void *buf)
 {
+	struct block_device *blk = epd->pd.blk;
 	int good_pgpt = 0, good_agpt = 0;
 	gpt_header *pgpt = NULL, *agpt = NULL;
 	gpt_entry *pptes = NULL, *aptes = NULL;
 	u64 lastlba;
 
-	if (!ptes)
-		return 0;
-
 	lastlba = last_lba(blk);
 	if (force_gpt) {
 		/* This will be added to the EFI Spec. per Intel after v1.02. */
@@ -430,21 +426,20 @@ static int find_valid_gpt(void *buf, struct block_device *blk, gpt_header **gpt,
 
 	/* The good cases */
 	if (good_pgpt) {
-		*gpt  = pgpt;
-		*ptes = pptes;
+		epd->gpt  = pgpt;
+		epd->ptes = pptes;
 		free(agpt);
 		free(aptes);
 		if (!good_agpt)
 			dev_warn(blk->dev, "Alternate GPT is invalid, using primary GPT.\n");
-		return 1;
-	}
-	else if (good_agpt) {
-		*gpt  = agpt;
-		*ptes = aptes;
+		return 0;
+	} else {
+		epd->gpt  = agpt;
+		epd->ptes = aptes;
 		free(pgpt);
 		free(pptes);
 		dev_warn(blk->dev, "Primary GPT is invalid, using alternate GPT.\n");
-		return 1;
+		return 0;
 	}
 
  fail:
@@ -452,9 +447,8 @@ static int find_valid_gpt(void *buf, struct block_device *blk, gpt_header **gpt,
 	free(agpt);
 	free(pptes);
 	free(aptes);
-	*gpt = NULL;
-	*ptes = NULL;
-	return 0;
+
+	return -EINVAL;
 }
 
 static void part_set_efi_name(gpt_entry *pte, char *dest)
@@ -516,9 +510,17 @@ static struct partition_desc *efi_partition(void *buf, struct block_device *blk)
 	struct efi_partition *epart;
 	struct partition *pentry;
 	struct efi_partition_desc *epd;
+	int ret;
 
-	if (!find_valid_gpt(buf, blk, &gpt, &ptes) || !gpt || !ptes)
-		return NULL;
+	epd = xzalloc(sizeof(*epd));
+	partition_desc_init(&epd->pd, blk);
+
+	ret = find_valid_gpt(epd, buf);
+	if (ret)
+		goto err;
+
+	gpt = epd->gpt;
+	ptes = epd->ptes;
 
 	blk->cdev.flags |= DEVFS_IS_GPT_PARTITIONED;
 
@@ -530,12 +532,6 @@ static struct partition_desc *efi_partition(void *buf, struct block_device *blk)
 		nb_part = MAX_PARTITION;
 	}
 
-	epd = xzalloc(sizeof(*epd));
-	partition_desc_init(&epd->pd, blk);
-
-	epd->gpt = gpt;
-	epd->ptes = ptes;
-
 	snprintf(blk->cdev.diskuuid, sizeof(blk->cdev.diskuuid), "%pUl", &gpt->disk_guid);
 	add_gpt_diskuuid_param(epd, blk);
 
@@ -560,6 +556,10 @@ static struct partition_desc *efi_partition(void *buf, struct block_device *blk)
 	}
 
 	return &epd->pd;
+err:
+	free(epd);
+
+	return NULL;
 }
 
 static void efi_partition_free(struct partition_desc *pd)

-- 
2.47.3



