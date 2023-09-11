Delivery-date: Mon, 11 Sep 2023 17:26:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfind-00Bddx-Ps
	for lore@lore.pengutronix.de; Mon, 11 Sep 2023 17:26:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfinb-0007SV-CI
	for lore@pengutronix.de; Mon, 11 Sep 2023 17:26:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2RRUrDRCZhQbVMS2zXMagrQA/PHCr/FxLQHTFWXKL7s=; b=b69fsvxB2uVEQ3sM4pt9VkhpEW
	wseRjXV5njUOz9GZAqxJG7g41zkPmavPgPkbP8y5IJgT+iE26lqD6b7ewCy2pMnJHjPvtLWe/r9/F
	J/8Gppn/x78MdJOuzW5SnRC+kFTVQJcXjYpAKMC8rBBHprbelK1glQzmD6L/KksBTIt1UHRtbHO5y
	5/+2WO20k1Pevgz+KtN3xDD/i8zO8a3X1LPAp6F+j7/y3rMUYl34uxK8U/VMkFHo8bgLJZub6j0zu
	/RngXI5qcDamPqODc0QyfbJPkw+MOQSL+SW4dLLe2Ppkqc/Y6ycuw6TvB+KXbgxT1J7bBhrelgJmF
	HnydZWWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qfimT-000sCi-3C;
	Mon, 11 Sep 2023 15:24:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qfimO-000s9G-1r
	for barebox@lists.infradead.org;
	Mon, 11 Sep 2023 15:24:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qfimN-00071O-Ex; Mon, 11 Sep 2023 17:24:47 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qfimM-005a93-P3; Mon, 11 Sep 2023 17:24:46 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qfimL-00FHKg-2J;
	Mon, 11 Sep 2023 17:24:45 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 11 Sep 2023 17:24:30 +0200
Message-Id: <20230911152433.3640781-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230911152433.3640781-1-a.fatoum@pengutronix.de>
References: <20230911152433.3640781-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230911_082448_621687_F97943A8 
X-CRM114-Status: GOOD (  14.45  )
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
Subject: [PATCH v2 4/7] tlsf: give malloc 8-byte alignment on 32-bit as well
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The current alignment of 4 bytes is too low. Access to 64-bit data via
ldrd/strd requires at least an eight byte alignment:

  | Prior to ARMv6, if the memory address is not 64-bit aligned, the
  | data read from memory is UNPREDICTABLE. Alignment checking (taking
  | a data abort), and support for a big-endian (BE-32) data format are
  | implementation options.

We already have at least an 8 byte alignment for dlmalloc, so have TLSF
follow suit by aligning the accounting structures appropriately.

Instead of adding manual padding, we could also enlarge block_header_t::size
to an uint64_t unconditionally, but mark block_header_t __packed. This
comes with a runtime cost though or ugly __builtin_assume_aligned
annotations, so we stick to the simpler version.

Reported-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Link: https://lore.barebox.org/barebox/ly7d1z1qvs.fsf@ensc-pc.intern.sigma-chemnitz.de/
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/tlsf.c          | 12 ++++++------
 include/linux/bitops.h |  1 +
 2 files changed, 7 insertions(+), 6 deletions(-)

diff --git a/common/tlsf.c b/common/tlsf.c
index 0986c7c457e3..692dabbdedd9 100644
--- a/common/tlsf.c
+++ b/common/tlsf.c
@@ -30,13 +30,8 @@ enum tlsf_public
 /* Private constants: do not modify. */
 enum tlsf_private
 {
-#if defined (TLSF_64BIT)
 	/* All allocation sizes and addresses are aligned to 8 bytes. */
 	ALIGN_SIZE_LOG2 = 3,
-#else
-	/* All allocation sizes and addresses are aligned to 4 bytes. */
-	ALIGN_SIZE_LOG2 = 2,
-#endif
 	ALIGN_SIZE = (1 << ALIGN_SIZE_LOG2),
 
 	/*
@@ -122,6 +117,7 @@ typedef struct block_header_t
 
 	/* The size of this block, excluding the block header. */
 	size_t size;
+	u32 : BYTES_TO_BITS(ALIGN_SIZE - sizeof(size_t));
 
 	/* Next and previous free blocks. */
 	struct block_header_t* next_free;
@@ -142,7 +138,7 @@ typedef struct block_header_t
 ** The prev_phys_block field is stored *inside* the previous free block.
 */
 #define block_header_shift		offsetof(block_header_t, size)
-#define block_header_overhead		sizeof(size_t)
+#define block_header_overhead		ALIGN_SIZE
 
 /* User data starts directly after the size field in a used block. */
 #define block_start_offset		(block_header_shift + block_header_overhead)
@@ -155,6 +151,8 @@ typedef struct block_header_t
 #define block_size_min			(sizeof(block_header_t) - sizeof(block_header_t*))
 #define block_size_max			(tlsf_cast(size_t, 1) << FL_INDEX_MAX)
 
+tlsf_static_assert(block_size_min % ALIGN_SIZE == 0);
+tlsf_static_assert(block_size_max % ALIGN_SIZE == 0);
 
 /* The TLSF control structure. */
 typedef struct control_t
@@ -165,10 +163,12 @@ typedef struct control_t
 	/* Bitmaps for free lists. */
 	unsigned int fl_bitmap;
 	unsigned int sl_bitmap[FL_INDEX_COUNT];
+	u32 : BYTES_TO_BITS(ALIGN_SIZE - sizeof(size_t));
 
 	/* Head of free lists. */
 	block_header_t* blocks[FL_INDEX_COUNT][SL_INDEX_COUNT];
 } control_t;
+tlsf_static_assert(sizeof(control_t) % ALIGN_SIZE == 0);
 
 /* A type used for casting when doing pointer arithmetic. */
 typedef ptrdiff_t tlsfptr_t;
diff --git a/include/linux/bitops.h b/include/linux/bitops.h
index a5f6ac6545ee..b0d6ca6ac87f 100644
--- a/include/linux/bitops.h
+++ b/include/linux/bitops.h
@@ -19,6 +19,7 @@
 #define BITS_TO_U64(nr)		DIV_ROUND_UP(nr, BITS_PER_TYPE(u64))
 #define BITS_TO_U32(nr)		DIV_ROUND_UP(nr, BITS_PER_TYPE(u32))
 #define BITS_TO_BYTES(nr)	DIV_ROUND_UP(nr, BITS_PER_TYPE(char))
+#define BYTES_TO_BITS(nb)	(((BITS_PER_LONG * (nb)) / sizeof(long)))
 #endif
 
 /*
-- 
2.39.2



