Delivery-date: Tue, 04 Oct 2022 17:56:52 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ofkHs-005iEu-O4
	for lore@lore.pengutronix.de; Tue, 04 Oct 2022 17:56:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ofkHr-0006Yb-B5
	for lore@pengutronix.de; Tue, 04 Oct 2022 17:56:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4tPn5vO2XO6+ndvnl8VhI1a93sQdg8xGFozwQP4/guU=; b=gKE7YjgBp+T5fbqZlvanb4bDQ8
	Yd8+9pB2Y013EQ5X3PkfdMvh8XF1G6rB/XAt/7Rg0Tx2LpeKmUf9/wvZBdL5AqUEo/pQgCcOB6eoN
	/+5Ze7dydJxcXE0wXo6YEkbLPH8vx8D/eXOe7G6KdlW6xxg6JXmpEVKlT32fWt4yAzT9XteawncJv
	MFbW1262YGl2mH9BINFXaPfhfIi6Yx69DpjzSM0ZtC1xd2XSCVSgqN77qFD1kaOf5dUUccSHnVyNg
	V0/7I56R3AyQo7TlruRGDtE7f4deBJOpBrzfmKktCWavWbZ3tzJ5s2m9+3TJYk41Zbt0luKN+BRJc
	qjLyKkgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofkGd-00A7xI-0g; Tue, 04 Oct 2022 15:55:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofkG7-00A7mJ-6O
	for barebox@lists.infradead.org; Tue, 04 Oct 2022 15:55:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1ofkG5-0005h0-8R; Tue, 04 Oct 2022 17:55:01 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ofkG6-004am1-2J; Tue, 04 Oct 2022 17:55:00 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ofkG2-00EW8G-Av; Tue, 04 Oct 2022 17:54:58 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  4 Oct 2022 17:54:03 +0200
Message-Id: <20221004155405.3458479-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221004155405.3458479-1-a.fatoum@pengutronix.de>
References: <20221004155405.3458479-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221004_085503_332301_603828FA 
X-CRM114-Status: GOOD (  14.32  )
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
Subject: [PATCH 5/9] tlsf: decouple maximum allocation size from sizeof(size_t)
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Previous commit ensures that the first block is aligned to ALIGN_SIZE
and the implementation already ensured that sizes are rounded up to
multiples of ALIGN_SIZE.

However, each block starts with a size_t holding the block size. On
systems with sizeof(size_t) == 4, this means even if ALIGN_SIZE were
8, we would end up with an unaligned buffer.

The straight-forward fix for that is to increase the TLSF per-block
overhead to be 8 bytes per allocation, even on 32-bit systems.
That way alignment is naturally maintained. Prepare for this by
replacing references to the block size size_t type with new
tlsf_size_t.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/tlsf.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/common/tlsf.c b/common/tlsf.c
index 83d469ae0a25..16682435e492 100644
--- a/common/tlsf.c
+++ b/common/tlsf.c
@@ -95,10 +95,12 @@ enum tlsf_private
 #define tlsf_static_assert(exp) \
 	typedef char _tlsf_glue(static_assert, __LINE__) [(exp) ? 1 : -1]
 
+typedef size_t tlsf_size_t;
+
 /* This code has been tested on 32- and 64-bit (LP/LLP) architectures. */
 tlsf_static_assert(sizeof(int) * CHAR_BIT == 32);
-tlsf_static_assert(sizeof(size_t) * CHAR_BIT >= 32);
-tlsf_static_assert(sizeof(size_t) * CHAR_BIT <= 64);
+tlsf_static_assert(sizeof(tlsf_size_t) * CHAR_BIT >= 32);
+tlsf_static_assert(sizeof(tlsf_size_t) * CHAR_BIT <= 64);
 
 /* SL_INDEX_COUNT must be <= number of bits in sl_bitmap's storage type. */
 tlsf_static_assert(sizeof(unsigned int) * CHAR_BIT >= SL_INDEX_COUNT);
@@ -126,7 +128,7 @@ typedef struct block_header_t
 	struct block_header_t* prev_phys_block;
 
 	/* The size of this block, excluding the block header. */
-	size_t size;
+	tlsf_size_t size;
 
 	/* Next and previous free blocks. */
 	struct block_header_t* next_free;
@@ -147,7 +149,7 @@ static const size_t block_header_prev_free_bit = 1 << 1;
 ** The prev_phys_block field is stored *inside* the previous free block.
 */
 static const size_t block_header_shift = offsetof(block_header_t, size);
-static const size_t block_header_overhead = sizeof(size_t);
+static const size_t block_header_overhead = sizeof(tlsf_size_t);
 
 /* User data starts directly after the size field in a used block. */
 static const size_t block_start_offset =
@@ -989,7 +991,7 @@ void* tlsf_memalign(tlsf_t tlsf, size_t align, size_t size)
 	{
 		void* ptr = block_to_ptr(block);
 		void* aligned = align_ptr(ptr, align);
-		size_t gap = tlsf_cast(size_t,
+		tlsf_size_t gap = tlsf_cast(tlsf_size_t,
 			tlsf_cast(tlsfptr_t, aligned) - tlsf_cast(tlsfptr_t, ptr));
 
 		/* If gap size is too small, offset to next aligned boundary. */
@@ -1001,7 +1003,7 @@ void* tlsf_memalign(tlsf_t tlsf, size_t align, size_t size)
 				tlsf_cast(tlsfptr_t, aligned) + offset);
 
 			aligned = align_ptr(next_aligned, align);
-			gap = tlsf_cast(size_t,
+			gap = tlsf_cast(tlsf_size_t,
 				tlsf_cast(tlsfptr_t, aligned) - tlsf_cast(tlsfptr_t, ptr));
 		}
 
-- 
2.30.2



