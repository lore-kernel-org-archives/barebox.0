Delivery-date: Thu, 22 Jun 2023 09:25:16 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qCEgv-00GhPC-QE
	for lore@lore.pengutronix.de; Thu, 22 Jun 2023 09:25:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qCEgt-0001YM-1j
	for lore@pengutronix.de; Thu, 22 Jun 2023 09:25:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vhRguhmBodqcOx3NAC8kWkKR0F3ssSK+X8jdErWzbw4=; b=pik/HrJhmB3QMMK3u3NT7+Mdk0
	Nnqdh62Og7S2BLt/l2uQIi10dili6XvH6EPbazFP7RVshimUPZyeycx/Gh8RP1Wdxqrk1LIuERrN8
	GGPsZe0ZKqYw0pD2GNaeFlB7isq1Qm8VHmI67FnLJ1ezWKE36dFmerSX260dlmnyJeP2d0QfeEUZf
	cTPIGRZdCYFMRr2+4BgZ57q1bWlnMfaGlZRB2mNkHnwozNt09PpOjuvER77o0Moi5ZkEAONDGVSzQ
	qvNr3/PsZa3o3TkU0LdGepI1lHWscp8jwwkdEmCR/ISbbIHgNXeYk6QJBl8I/ymKNRaMpjiYAMkDr
	POtoIIEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qCEfa-00HDvI-0U;
	Thu, 22 Jun 2023 07:23:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qCEfR-00HDq0-2d
	for barebox@lists.infradead.org;
	Thu, 22 Jun 2023 07:23:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qCEfN-0000z7-1Q; Thu, 22 Jun 2023 09:23:41 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qCEfL-009DjS-Ig; Thu, 22 Jun 2023 09:23:39 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qCEfL-005cRd-0J;
	Thu, 22 Jun 2023 09:23:39 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Marco Felsch <m.felsch@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 22 Jun 2023 09:23:26 +0200
Message-Id: <20230622072329.1339317-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230622072329.1339317-1-a.fatoum@pengutronix.de>
References: <20230622072329.1339317-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230622_002346_030309_5CE87AEC 
X-CRM114-Status: GOOD (  19.72  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 6/9] bitmap: implement bitmap_{to,from}_arr{32,64}
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Converting from a bitmap to a u32 or u64 array of bits and back can
involve endianness conversions depending on platform. Import the Linux
functions that take care of this.

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/bitmap.h | 101 ++++++++++++++++++++++++++++++++++++++++
 lib/bitmap.c           | 103 +++++++++++++++++++++++++++++++++++++++++
 2 files changed, 204 insertions(+)

diff --git a/include/linux/bitmap.h b/include/linux/bitmap.h
index 7d06fac68d08..9ec1ee2d1422 100644
--- a/include/linux/bitmap.h
+++ b/include/linux/bitmap.h
@@ -56,6 +56,10 @@
  * bitmap_find_free_region(bitmap, bits, order)	Find and allocate bit region
  * bitmap_release_region(bitmap, pos, order)	Free specified bit region
  * bitmap_allocate_region(bitmap, pos, order)	Allocate specified bit region
+ * bitmap_from_arr32(dst, buf, nbits)           Copy nbits from u32[] buf to dst
+ * bitmap_from_arr64(dst, buf, nbits)           Copy nbits from u64[] buf to dst
+ * bitmap_to_arr32(buf, src, nbits)             Copy nbits from buf to u32[] dst
+ * bitmap_to_arr64(buf, src, nbits)             Copy nbits from buf to u64[] dst
  */
 
 /*
@@ -178,6 +182,103 @@ static inline void bitmap_copy(unsigned long *dst, const unsigned long *src,
 	}
 }
 
+/*
+ * Copy bitmap and clear tail bits in last word.
+ */
+static inline void bitmap_copy_clear_tail(unsigned long *dst,
+		const unsigned long *src, unsigned int nbits)
+{
+	bitmap_copy(dst, src, nbits);
+	if (nbits % BITS_PER_LONG)
+		dst[nbits / BITS_PER_LONG] &= BITMAP_LAST_WORD_MASK(nbits);
+}
+
+/*
+ * On 32-bit systems bitmaps are represented as u32 arrays internally. On LE64
+ * machines the order of hi and lo parts of numbers match the bitmap structure.
+ * In both cases conversion is not needed when copying data from/to arrays of
+ * u32. But in LE64 case, typecast in bitmap_copy_clear_tail() may lead
+ * to out-of-bound access. To avoid that, both LE and BE variants of 64-bit
+ * architectures are not using bitmap_copy_clear_tail().
+ */
+#if BITS_PER_LONG == 64
+void bitmap_from_arr32(unsigned long *bitmap, const u32 *buf,
+							unsigned int nbits);
+void bitmap_to_arr32(u32 *buf, const unsigned long *bitmap,
+							unsigned int nbits);
+#else
+#define bitmap_from_arr32(bitmap, buf, nbits)			\
+	bitmap_copy_clear_tail((unsigned long *) (bitmap),	\
+			(const unsigned long *) (buf), (nbits))
+#define bitmap_to_arr32(buf, bitmap, nbits)			\
+	bitmap_copy_clear_tail((unsigned long *) (buf),		\
+			(const unsigned long *) (bitmap), (nbits))
+#endif
+
+/*
+ * On 64-bit systems bitmaps are represented as u64 arrays internally. On LE32
+ * machines the order of hi and lo parts of numbers match the bitmap structure.
+ * In both cases conversion is not needed when copying data from/to arrays of
+ * u64.
+ */
+#if (BITS_PER_LONG == 32) && defined(__BIG_ENDIAN)
+void bitmap_from_arr64(unsigned long *bitmap, const u64 *buf, unsigned int nbits);
+void bitmap_to_arr64(u64 *buf, const unsigned long *bitmap, unsigned int nbits);
+#else
+#define bitmap_from_arr64(bitmap, buf, nbits)			\
+	bitmap_copy_clear_tail((unsigned long *)(bitmap), (const unsigned long *)(buf), (nbits))
+#define bitmap_to_arr64(buf, bitmap, nbits)			\
+	bitmap_copy_clear_tail((unsigned long *)(buf), (const unsigned long *)(bitmap), (nbits))
+#endif
+
+/**
+ * BITMAP_FROM_U64() - Represent u64 value in the format suitable for bitmap.
+ * @n: u64 value
+ *
+ * Linux bitmaps are internally arrays of unsigned longs, i.e. 32-bit
+ * integers in 32-bit environment, and 64-bit integers in 64-bit one.
+ *
+ * There are four combinations of endianness and length of the word in linux
+ * ABIs: LE64, BE64, LE32 and BE32.
+ *
+ * On 64-bit kernels 64-bit LE and BE numbers are naturally ordered in
+ * bitmaps and therefore don't require any special handling.
+ *
+ * On 32-bit kernels 32-bit LE ABI orders lo word of 64-bit number in memory
+ * prior to hi, and 32-bit BE orders hi word prior to lo. The bitmap on the
+ * other hand is represented as an array of 32-bit words and the position of
+ * bit N may therefore be calculated as: word #(N/32) and bit #(N%32) in that
+ * word.  For example, bit #42 is located at 10th position of 2nd word.
+ * It matches 32-bit LE ABI, and we can simply let the compiler store 64-bit
+ * values in memory as it usually does. But for BE we need to swap hi and lo
+ * words manually.
+ *
+ * With all that, the macro BITMAP_FROM_U64() does explicit reordering of hi and
+ * lo parts of u64.  For LE32 it does nothing, and for BE environment it swaps
+ * hi and lo words, as is expected by bitmap.
+ */
+#if BITS_PER_LONG == 64
+#define BITMAP_FROM_U64(n) (n)
+#else
+#define BITMAP_FROM_U64(n) ((unsigned long) ((u64)(n) & ULONG_MAX)), \
+				((unsigned long) ((u64)(n) >> 32))
+#endif
+
+/**
+ * bitmap_from_u64 - Check and swap words within u64.
+ *  @mask: source bitmap
+ *  @dst:  destination bitmap
+ *
+ * In 32-bit Big Endian kernel, when using ``(u32 *)(&val)[*]``
+ * to read u64 mask, we will get the wrong word.
+ * That is ``(u32 *)(&val)[0]`` gets the upper 32 bits,
+ * but we expect the lower 32-bits of u64.
+ */
+static inline void bitmap_from_u64(unsigned long *dst, u64 mask)
+{
+	bitmap_from_arr64(dst, &mask, 64);
+}
+
 static inline int bitmap_and(unsigned long *dst, const unsigned long *src1,
 			const unsigned long *src2, int nbits)
 {
diff --git a/lib/bitmap.c b/lib/bitmap.c
index dfc0f06b13c4..7614c4d21337 100644
--- a/lib/bitmap.c
+++ b/lib/bitmap.c
@@ -847,3 +847,106 @@ unsigned long *bitmap_xzalloc(unsigned int nbits)
 {
 	return xzalloc(BITS_TO_LONGS(nbits) * sizeof(unsigned long));
 }
+
+#if BITS_PER_LONG == 64
+/**
+ * bitmap_from_arr32 - copy the contents of u32 array of bits to bitmap
+ *	@bitmap: array of unsigned longs, the destination bitmap
+ *	@buf: array of u32 (in host byte order), the source bitmap
+ *	@nbits: number of bits in @bitmap
+ */
+void bitmap_from_arr32(unsigned long *bitmap, const u32 *buf, unsigned int nbits)
+{
+	unsigned int i, halfwords;
+
+	halfwords = DIV_ROUND_UP(nbits, 32);
+	for (i = 0; i < halfwords; i++) {
+		bitmap[i/2] = (unsigned long) buf[i];
+		if (++i < halfwords)
+			bitmap[i/2] |= ((unsigned long) buf[i]) << 32;
+	}
+
+	/* Clear tail bits in last word beyond nbits. */
+	if (nbits % BITS_PER_LONG)
+		bitmap[(halfwords - 1) / 2] &= BITMAP_LAST_WORD_MASK(nbits);
+}
+EXPORT_SYMBOL(bitmap_from_arr32);
+
+/**
+ * bitmap_to_arr32 - copy the contents of bitmap to a u32 array of bits
+ *	@buf: array of u32 (in host byte order), the dest bitmap
+ *	@bitmap: array of unsigned longs, the source bitmap
+ *	@nbits: number of bits in @bitmap
+ */
+void bitmap_to_arr32(u32 *buf, const unsigned long *bitmap, unsigned int nbits)
+{
+	unsigned int i, halfwords;
+
+	halfwords = DIV_ROUND_UP(nbits, 32);
+	for (i = 0; i < halfwords; i++) {
+		buf[i] = (u32) (bitmap[i/2] & UINT_MAX);
+		if (++i < halfwords)
+			buf[i] = (u32) (bitmap[i/2] >> 32);
+	}
+
+	/* Clear tail bits in last element of array beyond nbits. */
+	if (nbits % BITS_PER_LONG)
+		buf[halfwords - 1] &= (u32) (UINT_MAX >> ((-nbits) & 31));
+}
+EXPORT_SYMBOL(bitmap_to_arr32);
+#endif
+
+#if (BITS_PER_LONG == 32) && defined(__BIG_ENDIAN)
+/**
+ * bitmap_from_arr64 - copy the contents of u64 array of bits to bitmap
+ *	@bitmap: array of unsigned longs, the destination bitmap
+ *	@buf: array of u64 (in host byte order), the source bitmap
+ *	@nbits: number of bits in @bitmap
+ */
+void bitmap_from_arr64(unsigned long *bitmap, const u64 *buf, unsigned int nbits)
+{
+	int n;
+
+	for (n = nbits; n > 0; n -= 64) {
+		u64 val = *buf++;
+
+		*bitmap++ = val;
+		if (n > 32)
+			*bitmap++ = val >> 32;
+	}
+
+	/*
+	 * Clear tail bits in the last word beyond nbits.
+	 *
+	 * Negative index is OK because here we point to the word next
+	 * to the last word of the bitmap, except for nbits == 0, which
+	 * is tested implicitly.
+	 */
+	if (nbits % BITS_PER_LONG)
+		bitmap[-1] &= BITMAP_LAST_WORD_MASK(nbits);
+}
+EXPORT_SYMBOL(bitmap_from_arr64);
+
+/**
+ * bitmap_to_arr64 - copy the contents of bitmap to a u64 array of bits
+ *	@buf: array of u64 (in host byte order), the dest bitmap
+ *	@bitmap: array of unsigned longs, the source bitmap
+ *	@nbits: number of bits in @bitmap
+ */
+void bitmap_to_arr64(u64 *buf, const unsigned long *bitmap, unsigned int nbits)
+{
+	const unsigned long *end = bitmap + BITS_TO_LONGS(nbits);
+
+	while (bitmap < end) {
+		*buf = *bitmap++;
+		if (bitmap < end)
+			*buf |= (u64)(*bitmap++) << 32;
+		buf++;
+	}
+
+	/* Clear tail bits in the last element of array beyond nbits. */
+	if (nbits % 64)
+		buf[-1] &= GENMASK_ULL((nbits - 1) % 64, 0);
+}
+EXPORT_SYMBOL(bitmap_to_arr64);
+#endif
-- 
2.39.2



