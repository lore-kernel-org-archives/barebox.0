Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X737J-0006so-G7
 for barebox@lists.infradead.org; Tue, 15 Jul 2014 13:50:02 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 Jul 2014 15:49:33 +0200
Message-Id: <1405432173-22448-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1405432173-22448-1-git-send-email-s.hauer@pengutronix.de>
References: <1405432173-22448-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 5/5] include: update bitop functions from kernel
To: barebox@lists.infradead.org

Updates the bitop functions from v3.16-rc4

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/asm-generic/bitops/hweight.h |  15 +++
 include/linux/bitops.h               | 214 ++++++++++++++++++++++++++++++++++-
 2 files changed, 228 insertions(+), 1 deletion(-)

diff --git a/include/asm-generic/bitops/hweight.h b/include/asm-generic/bitops/hweight.h
index af9770d..7268c8b 100644
--- a/include/asm-generic/bitops/hweight.h
+++ b/include/asm-generic/bitops/hweight.h
@@ -32,4 +32,19 @@ static inline unsigned int hweight8(unsigned int w)
 	return (res & 0x0F) + ((res >> 4) & 0x0F);
 }
 
+static inline unsigned long hweight64(__u64 w)
+{
+#if BITS_PER_LONG == 32
+	return hweight32((unsigned int)(w >> 32)) +
+		hweight32((unsigned int)w);
+#elif BITS_PER_LONG == 64
+	__u64 res = w - ((w >> 1) & 0x5555555555555555ul);
+	res = (res & 0x3333333333333333ul) + ((res >> 2) & 0x3333333333333333ul);
+	res = (res + (res >> 4)) & 0x0F0F0F0F0F0F0F0Ful;
+	res = res + (res >> 8);
+	res = res + (res >> 16);
+	return (res + (res >> 32)) & 0x00000000000000FFul;
+#endif
+}
+
 #endif				/* _ASM_GENERIC_BITOPS_HWEIGHT_H_ */
diff --git a/include/linux/bitops.h b/include/linux/bitops.h
index 127c161..be5fd38 100644
--- a/include/linux/bitops.h
+++ b/include/linux/bitops.h
@@ -1,15 +1,227 @@
 #ifndef _LINUX_BITOPS_H
 #define _LINUX_BITOPS_H
+#include <asm/types.h>
 
-#ifdef __BAREBOX__
+#ifdef	__KERNEL__
 #define BIT(nr)			(1UL << (nr))
+#define BIT_ULL(nr)		(1ULL << (nr))
 #define BIT_MASK(nr)		(1UL << ((nr) % BITS_PER_LONG))
 #define BIT_WORD(nr)		((nr) / BITS_PER_LONG)
+#define BIT_ULL_MASK(nr)	(1ULL << ((nr) % BITS_PER_LONG_LONG))
+#define BIT_ULL_WORD(nr)	((nr) / BITS_PER_LONG_LONG)
 #define BITS_PER_BYTE		8
 #define BITS_TO_LONGS(nr)	DIV_ROUND_UP(nr, BITS_PER_BYTE * sizeof(long))
 #endif
 
+/*
+ * Create a contiguous bitmask starting at bit position @l and ending at
+ * position @h. For example
+ * GENMASK_ULL(39, 21) gives us the 64bit vector 0x000000ffffe00000.
+ */
+#define GENMASK(h, l)		(((U32_C(1) << ((h) - (l) + 1)) - 1) << (l))
+#define GENMASK_ULL(h, l)	(((U64_C(1) << ((h) - (l) + 1)) - 1) << (l))
+
+extern unsigned int __sw_hweight8(unsigned int w);
+extern unsigned int __sw_hweight16(unsigned int w);
+extern unsigned int __sw_hweight32(unsigned int w);
+extern unsigned long __sw_hweight64(__u64 w);
+
+/*
+ * Include this here because some architectures need generic_ffs/fls in
+ * scope
+ */
 #include <asm/bitops.h>
 
+#define for_each_set_bit(bit, addr, size) \
+	for ((bit) = find_first_bit((addr), (size));		\
+	     (bit) < (size);					\
+	     (bit) = find_next_bit((addr), (size), (bit) + 1))
+
+/* same as for_each_set_bit() but use bit as value to start with */
+#define for_each_set_bit_from(bit, addr, size) \
+	for ((bit) = find_next_bit((addr), (size), (bit));	\
+	     (bit) < (size);					\
+	     (bit) = find_next_bit((addr), (size), (bit) + 1))
+
+#define for_each_clear_bit(bit, addr, size) \
+	for ((bit) = find_first_zero_bit((addr), (size));	\
+	     (bit) < (size);					\
+	     (bit) = find_next_zero_bit((addr), (size), (bit) + 1))
+
+/* same as for_each_clear_bit() but use bit as value to start with */
+#define for_each_clear_bit_from(bit, addr, size) \
+	for ((bit) = find_next_zero_bit((addr), (size), (bit));	\
+	     (bit) < (size);					\
+	     (bit) = find_next_zero_bit((addr), (size), (bit) + 1))
+
+static __inline__ int get_bitmask_order(unsigned int count)
+{
+	int order;
+
+	order = fls(count);
+	return order;	/* We could be slightly more clever with -1 here... */
+}
+
+static __inline__ int get_count_order(unsigned int count)
+{
+	int order;
+
+	order = fls(count) - 1;
+	if (count & (count - 1))
+		order++;
+	return order;
+}
+
+static inline unsigned long hweight_long(unsigned long w)
+{
+	return sizeof(w) == 4 ? hweight32(w) : hweight64(w);
+}
+
+/**
+ * rol64 - rotate a 64-bit value left
+ * @word: value to rotate
+ * @shift: bits to roll
+ */
+static inline __u64 rol64(__u64 word, unsigned int shift)
+{
+	return (word << shift) | (word >> (64 - shift));
+}
+
+/**
+ * ror64 - rotate a 64-bit value right
+ * @word: value to rotate
+ * @shift: bits to roll
+ */
+static inline __u64 ror64(__u64 word, unsigned int shift)
+{
+	return (word >> shift) | (word << (64 - shift));
+}
+
+/**
+ * rol32 - rotate a 32-bit value left
+ * @word: value to rotate
+ * @shift: bits to roll
+ */
+static inline __u32 rol32(__u32 word, unsigned int shift)
+{
+	return (word << shift) | (word >> (32 - shift));
+}
+
+/**
+ * ror32 - rotate a 32-bit value right
+ * @word: value to rotate
+ * @shift: bits to roll
+ */
+static inline __u32 ror32(__u32 word, unsigned int shift)
+{
+	return (word >> shift) | (word << (32 - shift));
+}
+
+/**
+ * rol16 - rotate a 16-bit value left
+ * @word: value to rotate
+ * @shift: bits to roll
+ */
+static inline __u16 rol16(__u16 word, unsigned int shift)
+{
+	return (word << shift) | (word >> (16 - shift));
+}
+
+/**
+ * ror16 - rotate a 16-bit value right
+ * @word: value to rotate
+ * @shift: bits to roll
+ */
+static inline __u16 ror16(__u16 word, unsigned int shift)
+{
+	return (word >> shift) | (word << (16 - shift));
+}
+
+/**
+ * rol8 - rotate an 8-bit value left
+ * @word: value to rotate
+ * @shift: bits to roll
+ */
+static inline __u8 rol8(__u8 word, unsigned int shift)
+{
+	return (word << shift) | (word >> (8 - shift));
+}
+
+/**
+ * ror8 - rotate an 8-bit value right
+ * @word: value to rotate
+ * @shift: bits to roll
+ */
+static inline __u8 ror8(__u8 word, unsigned int shift)
+{
+	return (word >> shift) | (word << (8 - shift));
+}
+
+/**
+ * sign_extend32 - sign extend a 32-bit value using specified bit as sign-bit
+ * @value: value to sign extend
+ * @index: 0 based bit index (0<=index<32) to sign bit
+ */
+static inline __s32 sign_extend32(__u32 value, int index)
+{
+	__u8 shift = 31 - index;
+	return (__s32)(value << shift) >> shift;
+}
+
+static inline unsigned fls_long(unsigned long l)
+{
+	if (sizeof(l) == 4)
+		return fls(l);
+	return fls64(l);
+}
+
+/**
+ * __ffs64 - find first set bit in a 64 bit word
+ * @word: The 64 bit word
+ *
+ * On 64 bit arches this is a synomyn for __ffs
+ * The result is not defined if no bits are set, so check that @word
+ * is non-zero before calling this.
+ */
+static inline unsigned long __ffs64(u64 word)
+{
+#if BITS_PER_LONG == 32
+	if (((u32)word) == 0UL)
+		return __ffs((u32)(word >> 32)) + 32;
+#elif BITS_PER_LONG != 64
+#error BITS_PER_LONG not 32 or 64
+#endif
+	return __ffs((unsigned long)word);
+}
+
+#ifdef __KERNEL__
+
+#ifndef set_mask_bits
+#define set_mask_bits(ptr, _mask, _bits)	\
+({								\
+	const typeof(*ptr) mask = (_mask), bits = (_bits);	\
+	typeof(*ptr) old, new;					\
+								\
+	do {							\
+		old = ACCESS_ONCE(*ptr);			\
+		new = (old & ~mask) | bits;			\
+	} while (cmpxchg(ptr, old, new) != old);		\
+								\
+	new;							\
+})
+#endif
+
+#ifndef find_last_bit
+/**
+ * find_last_bit - find the last set bit in a memory region
+ * @addr: The address to start the search at
+ * @size: The maximum size to search
+ *
+ * Returns the bit number of the first set bit, or size.
+ */
+extern unsigned long find_last_bit(const unsigned long *addr,
+				   unsigned long size);
+#endif
 
+#endif /* __KERNEL__ */
 #endif
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
