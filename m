Delivery-date: Tue, 04 Oct 2022 17:56:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ofkHy-005iFh-U7
	for lore@lore.pengutronix.de; Tue, 04 Oct 2022 17:56:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ofkHx-0006b7-8s
	for lore@pengutronix.de; Tue, 04 Oct 2022 17:56:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=952RA6Tlql0EXhpLgNrT1q5rgYJCrX7+0CTQ+EF49pA=; b=k1QnVdUKFHUcdGnhPcf0/bzOQB
	eMLycs+rOyKoDcMT8KIjlVLiulGAkzb0MdFVouOnmSqdLQP5G00aKjbTAshsLq1nVR53x8wybjc5t
	4H44hxg84PCESkBWWEZKXJvSxUjqFR+NIzSlEUMjCFpwxPR0nyjlp7MQONC341A3qAccg2jZ1jUVY
	hlZuv4t7iYqkNC9WR4k6YKpVXNRzDSjtme0B50SShgIFtlDBitiTnMyrUcd/kHfbG/d2lHDdTNxZN
	5X7ev7TcxUDHqJavW4O8VpoqouPcP48PCC1r2owuA8Ytg9IBPO4Mq1jp+VRHUoi7FRyAH9rJGXP6B
	b4i3GzXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofkGf-00A820-T8; Tue, 04 Oct 2022 15:55:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofkG7-00A7mG-6Q
	for barebox@lists.infradead.org; Tue, 04 Oct 2022 15:55:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1ofkG4-0005ge-Rw; Tue, 04 Oct 2022 17:55:00 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ofkG5-004als-Lg; Tue, 04 Oct 2022 17:55:00 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ofkG2-00EW8D-AU; Tue, 04 Oct 2022 17:54:58 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  4 Oct 2022 17:54:02 +0200
Message-Id: <20221004155405.3458479-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221004155405.3458479-1-a.fatoum@pengutronix.de>
References: <20221004155405.3458479-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221004_085503_328293_2A5C80CC 
X-CRM114-Status: GOOD (  17.12  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/9] tlsf: fix sizeof(size_t) == sizeof(void *) assumption
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

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
index f8892dafbb7f..83d469ae0a25 100644
--- a/common/tlsf.c
+++ b/common/tlsf.c
@@ -146,11 +146,12 @@ static const size_t block_header_prev_free_bit = 1 << 1;
 ** The size of the block header exposed to used blocks is the size field.
 ** The prev_phys_block field is stored *inside* the previous free block.
 */
+static const size_t block_header_shift = offsetof(block_header_t, size);
 static const size_t block_header_overhead = sizeof(size_t);
 
 /* User data starts directly after the size field in a used block. */
 static const size_t block_start_offset =
-	offsetof(block_header_t, size) + sizeof(size_t);
+	block_header_shift + block_header_overhead;
 
 /*
 ** A free block must be large enough to store its header minus the size of
@@ -258,7 +259,7 @@ static block_header_t* block_prev(const block_header_t* block)
 static block_header_t* block_next(const block_header_t* block)
 {
 	block_header_t* next = offset_to_block(block_to_ptr(block),
-		block_size(block) - block_header_overhead);
+		block_size(block) - block_header_shift);
 	tlsf_assert(!block_is_last(block));
 	return next;
 }
@@ -469,7 +470,7 @@ static block_header_t* block_split(block_header_t* block, size_t size)
 {
 	/* Calculate the amount of space left in the remaining block. */
 	block_header_t* remaining =
-		offset_to_block(block_to_ptr(block), size - block_header_overhead);
+		offset_to_block(block_to_ptr(block), size - block_header_shift);
 
 	const size_t remain_size = block_size(block) - (size + block_header_overhead);
 
@@ -735,7 +736,7 @@ void tlsf_walk_pool(pool_t pool, tlsf_walker walker, void* user)
 {
 	tlsf_walker pool_walker = walker ? walker : default_walker;
 	block_header_t* block =
-		offset_to_block(pool, -(int)block_header_overhead);
+		offset_to_block(pool, -(int)block_header_shift);
 
 	while (block && !block_is_last(block))
 	{
@@ -841,7 +842,7 @@ pool_t tlsf_add_pool(tlsf_t tlsf, void* mem, size_t bytes)
 	** so that the prev_phys_block field falls outside of the pool -
 	** it will never be used.
 	*/
-	block = offset_to_block(mem, -(tlsfptr_t)block_header_overhead);
+	block = offset_to_block(mem, -(tlsfptr_t)block_header_shift);
 	block_set_size(block, pool_bytes);
 	block_set_free(block);
 	block_set_prev_used(block);
@@ -859,7 +860,7 @@ pool_t tlsf_add_pool(tlsf_t tlsf, void* mem, size_t bytes)
 void tlsf_remove_pool(tlsf_t tlsf, pool_t pool)
 {
 	control_t* control = tlsf_cast(control_t*, tlsf);
-	block_header_t* block = offset_to_block(pool, -(int)block_header_overhead);
+	block_header_t* block = offset_to_block(pool, -(int)block_header_shift);
 
 	int fl = 0, sl = 0;
 
@@ -982,7 +983,7 @@ void* tlsf_memalign(tlsf_t tlsf, size_t align, size_t size)
 	block = block_locate_free(control, aligned_size);
 
 	/* This can't be a static assert. */
-	tlsf_assert(sizeof(block_header_t) == block_size_min + block_header_overhead);
+	tlsf_assert(sizeof(block_header_t) == block_size_min + block_header_shift);
 
 	if (block)
 	{
-- 
2.30.2



