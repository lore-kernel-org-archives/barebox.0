Delivery-date: Mon, 11 Sep 2023 17:26:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfinc-00Bddi-SH
	for lore@lore.pengutronix.de; Mon, 11 Sep 2023 17:26:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfina-0007SA-Sj
	for lore@pengutronix.de; Mon, 11 Sep 2023 17:26:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=M/+bpPq+EaWpICQ/S1S6mddF+ti9inbB5zGH9RJt3hs=; b=aTpI5VZc/pQS0LLIwMHnDGzM3L
	z4rEmxTJd4apxCJgEy03ogQzzZMyUV5u4zmh3Jz6X51ujCX+vTFUnZVH327BAlJkeIxQR+11vun1O
	qLF3qMUpglS3EG5yAVwxiHbGJ+cfExKuuv444GZz2aePiQ7ov+diClpFEvD+X2sCTC/ASUUJ1I0VB
	MObkM6FFxCAqy+730iXp+HEmwghoGxEwSdCwUn//BSDqMS/+giVKZBK9ZuGk1ASCDNYOTiwsPSRds
	K33uEoYoKdImQ58aUFQuTAH+i4/+xbyBn9eeA6mbdybfcI0QzJ28o8saqmxoQUm8NcPZOdjnjgUOj
	IZ1POlZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qfimW-000sER-2h;
	Mon, 11 Sep 2023 15:24:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qfimO-000s9J-2U
	for barebox@lists.infradead.org;
	Mon, 11 Sep 2023 15:24:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qfimN-00071k-Lx; Mon, 11 Sep 2023 17:24:47 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qfimN-005a9B-8h; Mon, 11 Sep 2023 17:24:47 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qfimL-00FHKc-2G;
	Mon, 11 Sep 2023 17:24:45 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 11 Sep 2023 17:24:29 +0200
Message-Id: <20230911152433.3640781-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230911152433.3640781-1-a.fatoum@pengutronix.de>
References: <20230911152433.3640781-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230911_082448_806808_975F409E 
X-CRM114-Status: GOOD (  17.19  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 3/7] tlsf: fix sizeof(size_t) == sizeof(void *) assumption
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

TLSF struct block_header_t doesn't describe a single block, but
instead its first member covers the previous block:

                              .~~~~~~~~~~~~~~~~~~~.
                              |  prev_phys_block  |
    End of previous block --> |———————————————————| <-- Start of a free block
                              |       size        |
                              |— — — — — — — — — —|
                              | < Start of Data > |
                              '———————————————————'

This works because if the previous block is free, there is no harm in
using its last word to store the prev_phys_block.

We thus need pointer arithmetic to:

  - arrive from start of data to size, i.e. decrement offset
    by sizeof(size_t)

  - arrive from size to prev_phys_block, i.e. decrement offset
    by sizeof(struct block_header_t *)

Across the TLSF implementation, we conflate the two though and use
block_header_shift to mean both.  This works as long as
sizeof(size_t) == sizeof(struct block_header_t *), which is true
for both 32-bit and 64-bit configuration currently.

To facilitate having an 8-byte minimum allocation alignment for 32-bit
systems as well, we will increase sizeof(struct block_header_t::size)
to 8 bytes, which will break the implicit assumption. Fix it by adding
an additional const block_header_shift and use it where appropriate.

No functional change just yet.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/tlsf.c | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/common/tlsf.c b/common/tlsf.c
index 784012a1f7ab..0986c7c457e3 100644
--- a/common/tlsf.c
+++ b/common/tlsf.c
@@ -141,10 +141,11 @@ typedef struct block_header_t
 ** The size of the block header exposed to used blocks is the size field.
 ** The prev_phys_block field is stored *inside* the previous free block.
 */
+#define block_header_shift		offsetof(block_header_t, size)
 #define block_header_overhead		sizeof(size_t)
 
 /* User data starts directly after the size field in a used block. */
-#define block_start_offset		(offsetof(block_header_t, size) + sizeof(size_t))
+#define block_start_offset		(block_header_shift + block_header_overhead)
 
 /*
 ** A free block must be large enough to store its header minus the size of
@@ -251,7 +252,7 @@ static block_header_t* block_prev(const block_header_t* block)
 static block_header_t* block_next(const block_header_t* block)
 {
 	block_header_t* next = offset_to_block(block_to_ptr(block),
-		block_size(block) - block_header_overhead);
+		block_size(block) - block_header_shift);
 	tlsf_assert(!block_is_last(block));
 	return next;
 }
@@ -462,7 +463,7 @@ static block_header_t* block_split(block_header_t* block, size_t size)
 {
 	/* Calculate the amount of space left in the remaining block. */
 	block_header_t* remaining =
-		offset_to_block(block_to_ptr(block), size - block_header_overhead);
+		offset_to_block(block_to_ptr(block), size - block_header_shift);
 
 	const size_t remain_size = block_size(block) - (size + block_header_overhead);
 
@@ -728,7 +729,7 @@ void tlsf_walk_pool(pool_t pool, tlsf_walker walker, void* user)
 {
 	tlsf_walker pool_walker = walker ? walker : default_walker;
 	block_header_t* block =
-		offset_to_block(pool, -(int)block_header_overhead);
+		offset_to_block(pool, -(int)block_header_shift);
 
 	while (block && !block_is_last(block))
 	{
@@ -834,7 +835,7 @@ pool_t tlsf_add_pool(tlsf_t tlsf, void* mem, size_t bytes)
 	** so that the prev_phys_block field falls outside of the pool -
 	** it will never be used.
 	*/
-	block = offset_to_block(mem, -(tlsfptr_t)block_header_overhead);
+	block = offset_to_block(mem, -(tlsfptr_t)block_header_shift);
 	block_set_size(block, pool_bytes);
 	block_set_free(block);
 	block_set_prev_used(block);
@@ -852,7 +853,7 @@ pool_t tlsf_add_pool(tlsf_t tlsf, void* mem, size_t bytes)
 void tlsf_remove_pool(tlsf_t tlsf, pool_t pool)
 {
 	control_t* control = tlsf_cast(control_t*, tlsf);
-	block_header_t* block = offset_to_block(pool, -(int)block_header_overhead);
+	block_header_t* block = offset_to_block(pool, -(int)block_header_shift);
 
 	int fl = 0, sl = 0;
 
@@ -980,7 +981,7 @@ void* tlsf_memalign(tlsf_t tlsf, size_t align, size_t size)
 	block = block_locate_free(control, aligned_size);
 
 	/* This can't be a static assert. */
-	tlsf_assert(sizeof(block_header_t) == block_size_min + block_header_overhead);
+	tlsf_assert(sizeof(block_header_t) == block_size_min + block_header_shift);
 
 	if (block)
 	{
-- 
2.39.2



