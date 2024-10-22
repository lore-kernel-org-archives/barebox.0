Delivery-date: Tue, 22 Oct 2024 10:35:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t3AMi-007ObE-2i
	for lore@lore.pengutronix.de;
	Tue, 22 Oct 2024 10:35:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t3AMi-0006UJ-7R
	for lore@pengutronix.de; Tue, 22 Oct 2024 10:35:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=QPOCX2Ooz6fTiAhjFpXzIPcnAMEp3RGvbKkqjxDgDmI=; b=Z9M9XyrzRPe2Br6D9GTgJ5ZNuV
	QnlFCwqaVHISNeNsIytMDvmF8Ym+xfKyZvcE7MolEISMWbQlTpPygHwWqu00fs1/BHreEecSpLlpL
	6K8iZMFLLkzZ/Jxygq/Nx2arME54OixGGbfxepqqqAC4jyqKZ6b0cH3r3l39gSypiTwbQFMPBmeR9
	x9/pSWP3gLyVsTGOX/iwPtbUkQUyYm3VR87f+gnrzAY59f/EAvMu/WtaaFCdCfmeJOXayoWHXMsop
	pYcurzEFBQ6k9D+rDoYCkAO4CVPZ6f5PS5HgzeOC+yj9Spdxd3cCEfrriY+PvWgenFQ5vRbsw5cwl
	6ZYqSWCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3AME-0000000ABDS-0rzL;
	Tue, 22 Oct 2024 08:35:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3AKv-0000000AB2j-04H5
	for barebox@lists.infradead.org;
	Tue, 22 Oct 2024 08:33:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t3AKs-0006Iy-2A; Tue, 22 Oct 2024 10:33:50 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t3AKr-000phq-2n;
	Tue, 22 Oct 2024 10:33:49 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t3AKr-00Dd2O-2W;
	Tue, 22 Oct 2024 10:33:49 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 22 Oct 2024 10:33:46 +0200
Message-Id: <20241022083347.3248311-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241022_013353_093351_33C18A83 
X-CRM114-Status: GOOD (  10.20  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] partitions: efi: use calloc instead of kzalloc
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

kzalloc() uses at least DMA_ALIGNMENT as alignment, which is more than
we need for the data structures that are used to hold the partition info.

Use the normal allocator to be more efficient with memory.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/partitions/efi.c | 28 ++++++++++++++--------------
 1 file changed, 14 insertions(+), 14 deletions(-)

diff --git a/common/partitions/efi.c b/common/partitions/efi.c
index 829360da6e1f..07944109ac89 100644
--- a/common/partitions/efi.c
+++ b/common/partitions/efi.c
@@ -92,7 +92,7 @@ static gpt_entry *alloc_read_gpt_entries(struct block_device *blk,
 	if (!count)
 		return NULL;
 
-	pte = kzalloc(count, GFP_KERNEL);
+	pte = calloc(count, 1);
 	if (!pte)
 		return NULL;
 
@@ -100,7 +100,7 @@ static gpt_entry *alloc_read_gpt_entries(struct block_device *blk,
 	size = count / GPT_BLOCK_SIZE;
 	ret = block_read(blk, pte, from, size);
 	if (ret) {
-		kfree(pte);
+		free(pte);
 		pte=NULL;
 		return NULL;
 	}
@@ -129,13 +129,13 @@ static gpt_header *alloc_read_gpt_header(struct block_device *blk,
 	unsigned ssz = bdev_logical_block_size(blk);
 	int ret;
 
-	gpt = kzalloc(ssz, GFP_KERNEL);
+	gpt = calloc(ssz, 1);
 	if (!gpt)
 		return NULL;
 
 	ret = block_read(blk, gpt, lba, 1);
 	if (ret) {
-		kfree(gpt);
+		free(gpt);
 		gpt=NULL;
 		return NULL;
 	}
@@ -227,10 +227,10 @@ static int is_gpt_valid(struct block_device *blk, u64 lba,
 	return 1;
 
  fail_ptes:
-	kfree(*ptes);
+	free(*ptes);
 	*ptes = NULL;
  fail:
-	kfree(*gpt);
+	free(*gpt);
 	*gpt = NULL;
 	return 0;
 }
@@ -406,8 +406,8 @@ static int find_valid_gpt(void *buf, struct block_device *blk, gpt_header **gpt,
 	if (good_pgpt) {
 		*gpt  = pgpt;
 		*ptes = pptes;
-		kfree(agpt);
-		kfree(aptes);
+		free(agpt);
+		free(aptes);
 		if (!good_agpt)
 			dev_warn(blk->dev, "Alternate GPT is invalid, using primary GPT.\n");
 		return 1;
@@ -415,17 +415,17 @@ static int find_valid_gpt(void *buf, struct block_device *blk, gpt_header **gpt,
 	else if (good_agpt) {
 		*gpt  = agpt;
 		*ptes = aptes;
-		kfree(pgpt);
-		kfree(pptes);
+		free(pgpt);
+		free(pptes);
 		dev_warn(blk->dev, "Primary GPT is invalid, using alternate GPT.\n");
 		return 1;
 	}
 
  fail:
-	kfree(pgpt);
-	kfree(agpt);
-	kfree(pptes);
-	kfree(aptes);
+	free(pgpt);
+	free(agpt);
+	free(pptes);
+	free(aptes);
 	*gpt = NULL;
 	*ptes = NULL;
 	return 0;
-- 
2.39.5



