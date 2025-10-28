Delivery-date: Tue, 28 Oct 2025 19:04:34 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDo3e-00CllO-17
	for lore@lore.pengutronix.de;
	Tue, 28 Oct 2025 19:04:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDo3Y-0001CO-07
	for lore@pengutronix.de; Tue, 28 Oct 2025 19:04:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0pln20L0xXJpg8LZEpYKb1KeAbBLJqrfitvXsSSnEwI=; b=iFcL/01MQOca3qKAb+8Ddhpws2
	5Z+tuSk0FVE+i33ItjOJrAUp/HEuEvRvXJjCDFaUeLL7Y6To+xh6Qtp9t1tlQOhnzujbiNe55+U/B
	ADjJnLeWDahC+1NPQ8DeROO2m9zzZBNvjTB+QC+6hhjWoo4p32XJF/m5Qv0EfpcaqzFgOUnz4iCTE
	HLk2GcZyKoayODmSrN9lhCwcVKGnr3pJ/W78zH0cDITOqp+HpXI0Vsq0PKobffIe/pOXgmMpWhyzm
	jnZwSOInSYfqZIlunLp6CCnYltKwoJKYtx4lOqCCtz4k3q1ge2LJPREjPYWj1IhdqS8MWY8L4dHdD
	PyPEz0Zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDo2r-0000000GSD2-3Bif;
	Tue, 28 Oct 2025 18:03:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDo2j-0000000GS7i-0TWk
	for barebox@lists.infradead.org;
	Tue, 28 Oct 2025 18:03:40 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1vDo2g-0000PX-Vk; Tue, 28 Oct 2025 19:03:34 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Tue, 28 Oct 2025 19:03:07 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251028-tlv-signature-v2-2-3bafce636ad7@pengutronix.de>
References: <20251028-tlv-signature-v2-0-3bafce636ad7@pengutronix.de>
In-Reply-To: <20251028-tlv-signature-v2-0-3bafce636ad7@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=14306; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=tJPkTM3Dswqk7iV1UqYjk1ne+7tNe2IveaSgdjBMJLo=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYshkZM2vPX7IZKHit4WiJ6wj5H6+M/K/5aBXvuVX4OKyB
 jtbC0W9jlIWBjEuBlkxRZZYNTkFIWP/62aVdrEwc1iZQIYwcHEKwETEWBkZZmqu72oMNFrxJuyh
 +gp5y52l9yRKDj6fF72tUtD/+gbhCEaGb6mytYzTu1/GHC/5nrrO/aHf/WzfQ2Un7t6zLfD88O0
 ZFwA=
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251028_110337_464098_B06EB648 
X-CRM114-Status: GOOD (  33.35  )
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
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 02/17] common: clean up TLV code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This is a preparatory commit for TLV signature verification:

 - Include overflow checks for TLV sizes
 - Be careful with narrowing conversions
 - Add and improve comments

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 common/tlv/parser.c              |  18 ++-
 include/tlv/format.h             |  12 +-
 scripts/include/linux/overflow.h | 312 +++++++++++++++++++++++++++++++++++++++
 3 files changed, 337 insertions(+), 5 deletions(-)

diff --git a/common/tlv/parser.c b/common/tlv/parser.c
index fc46092650..f74ada99d7 100644
--- a/common/tlv/parser.c
+++ b/common/tlv/parser.c
@@ -16,15 +16,20 @@ int tlv_parse(struct tlv_device *tlvdev,
 	const struct tlv *tlv = NULL;
 	struct tlv_mapping *map = NULL;
 	struct tlv_header *header = tlv_device_header(tlvdev);
-	u32 magic, size;
+	u32 magic;
+	size_t size;
 	int ret = 0;
 	u32 crc = ~0;
 
-
 	magic = be32_to_cpu(header->magic);
 
 	size = tlv_total_len(header);
 
+	if (size == SIZE_MAX) {
+		pr_warn("Invalid TLV header, overflows\n");
+		return -EOVERFLOW;
+	}
+
 	crc = crc32_be(crc, header, size - 4);
 	if (crc != tlv_crc(header)) {
 		pr_warn("Invalid CRC32. Should be %08x\n", crc);
@@ -133,7 +138,8 @@ void tlv_of_unregister_fixup(struct tlv_device *tlvdev)
 struct tlv_header *tlv_read(const char *filename, size_t *nread)
 {
 	struct tlv_header *header = NULL, *tmpheader;
-	int size, fd, ret;
+	size_t size;
+	int fd, ret;
 
 	fd = open(filename, O_RDONLY);
 	if (fd < 0)
@@ -153,6 +159,12 @@ struct tlv_header *tlv_read(const char *filename, size_t *nread)
 
 	size = tlv_total_len(header);
 
+	if (size == SIZE_MAX) {
+		pr_warn("Invalid TLV header, overflows\n");
+		ret = -EOVERFLOW;
+		goto err;
+	}
+
 	tmpheader = realloc(header, size);
 	if (!tmpheader) {
 		struct stat st;
diff --git a/include/tlv/format.h b/include/tlv/format.h
index 29c8a6d42d..c4521c3131 100644
--- a/include/tlv/format.h
+++ b/include/tlv/format.h
@@ -18,6 +18,7 @@
 
 #include <linux/compiler.h>
 #include <linux/types.h>
+#include <linux/overflow.h>
 #include <asm/unaligned.h>
 #include <linux/build_bug.h>
 
@@ -48,6 +49,8 @@ struct tlv_header {
 	__be32 length_tlv; /* in bytes */
 	__be32 length_sig; /* in bytes */
 	struct tlv tlvs[];
+	/* __be32 crc; */
+	/* u8 sig[]; */
 };
 static_assert(sizeof(struct tlv_header) == 3 * 4);
 
@@ -56,8 +59,13 @@ static_assert(sizeof(struct tlv_header) == 3 * 4);
 
 static inline size_t tlv_total_len(const struct tlv_header *header)
 {
-	return sizeof(struct tlv_header) + get_unaligned_be32(&header->length_tlv)
-		+ get_unaligned_be32(&header->length_sig) + 4;
+	size_t ret;
+
+	ret = size_add(sizeof(struct tlv_header), get_unaligned_be32(&header->length_tlv));
+	ret = size_add(ret, sizeof(__be32)); /* CRC appended after TLVs */
+	ret = size_add(ret, get_unaligned_be32(&header->length_sig)); /* optional signature appended after CRC */
+
+	return ret; /* SIZE_MAX on overflow */
 }
 
 /*
diff --git a/scripts/include/linux/overflow.h b/scripts/include/linux/overflow.h
new file mode 100644
index 0000000000..f9b60313ea
--- /dev/null
+++ b/scripts/include/linux/overflow.h
@@ -0,0 +1,312 @@
+/* SPDX-License-Identifier: GPL-2.0 OR MIT */
+#ifndef __LINUX_OVERFLOW_H
+#define __LINUX_OVERFLOW_H
+
+#include <linux/compiler.h>
+#include <linux/limits.h>
+#include <linux/const.h>
+
+/*
+ * We need to compute the minimum and maximum values representable in a given
+ * type. These macros may also be useful elsewhere. It would seem more obvious
+ * to do something like:
+ *
+ * #define type_min(T) (T)(is_signed_type(T) ? (T)1 << (8*sizeof(T)-1) : 0)
+ * #define type_max(T) (T)(is_signed_type(T) ? ((T)1 << (8*sizeof(T)-1)) - 1 : ~(T)0)
+ *
+ * Unfortunately, the middle expressions, strictly speaking, have
+ * undefined behaviour, and at least some versions of gcc warn about
+ * the type_max expression (but not if -fsanitize=undefined is in
+ * effect; in that case, the warning is deferred to runtime...).
+ *
+ * The slightly excessive casting in type_min is to make sure the
+ * macros also produce sensible values for the exotic type _Bool. [The
+ * overflow checkers only almost work for _Bool, but that's
+ * a-feature-not-a-bug, since people shouldn't be doing arithmetic on
+ * _Bools. Besides, the gcc builtins don't allow _Bool* as third
+ * argument.]
+ *
+ * Idea stolen from
+ * https://mail-index.netbsd.org/tech-misc/2007/02/05/0000.html -
+ * credit to Christian Biere.
+ */
+#define __type_half_max(type) ((type)1 << (8*sizeof(type) - 1 - is_signed_type(type)))
+#define type_max(T) ((T)((__type_half_max(T) - 1) + __type_half_max(T)))
+#define type_min(T) ((T)((T)-type_max(T)-(T)1))
+
+/*
+ * Avoids triggering -Wtype-limits compilation warning,
+ * while using unsigned data types to check a < 0.
+ */
+#define is_non_negative(a) ((a) > 0 || (a) == 0)
+#define is_negative(a) (!(is_non_negative(a)))
+
+/*
+ * Allows for effectively applying __must_check to a macro so we can have
+ * both the type-agnostic benefits of the macros while also being able to
+ * enforce that the return value is, in fact, checked.
+ */
+static inline bool __must_check __must_check_overflow(bool overflow)
+{
+	return unlikely(overflow);
+}
+
+/**
+ * check_add_overflow() - Calculate addition with overflow checking
+ * @a: first addend
+ * @b: second addend
+ * @d: pointer to store sum
+ *
+ * Returns 0 on success.
+ *
+ * *@d holds the results of the attempted addition, but is not considered
+ * "safe for use" on a non-zero return value, which indicates that the
+ * sum has overflowed or been truncated.
+ */
+#define check_add_overflow(a, b, d)	\
+	__must_check_overflow(__builtin_add_overflow(a, b, d))
+
+/**
+ * check_sub_overflow() - Calculate subtraction with overflow checking
+ * @a: minuend; value to subtract from
+ * @b: subtrahend; value to subtract from @a
+ * @d: pointer to store difference
+ *
+ * Returns 0 on success.
+ *
+ * *@d holds the results of the attempted subtraction, but is not considered
+ * "safe for use" on a non-zero return value, which indicates that the
+ * difference has underflowed or been truncated.
+ */
+#define check_sub_overflow(a, b, d)	\
+	__must_check_overflow(__builtin_sub_overflow(a, b, d))
+
+/**
+ * check_mul_overflow() - Calculate multiplication with overflow checking
+ * @a: first factor
+ * @b: second factor
+ * @d: pointer to store product
+ *
+ * Returns 0 on success.
+ *
+ * *@d holds the results of the attempted multiplication, but is not
+ * considered "safe for use" on a non-zero return value, which indicates
+ * that the product has overflowed or been truncated.
+ */
+#define check_mul_overflow(a, b, d)	\
+	__must_check_overflow(__builtin_mul_overflow(a, b, d))
+
+/**
+ * check_shl_overflow() - Calculate a left-shifted value and check overflow
+ * @a: Value to be shifted
+ * @s: How many bits left to shift
+ * @d: Pointer to where to store the result
+ *
+ * Computes *@d = (@a << @s)
+ *
+ * Returns true if '*@d' cannot hold the result or when '@a << @s' doesn't
+ * make sense. Example conditions:
+ *
+ * - '@a << @s' causes bits to be lost when stored in *@d.
+ * - '@s' is garbage (e.g. negative) or so large that the result of
+ *   '@a << @s' is guaranteed to be 0.
+ * - '@a' is negative.
+ * - '@a << @s' sets the sign bit, if any, in '*@d'.
+ *
+ * '*@d' will hold the results of the attempted shift, but is not
+ * considered "safe for use" if true is returned.
+ */
+#define check_shl_overflow(a, s, d) __must_check_overflow(({		\
+	typeof(a) _a = a;						\
+	typeof(s) _s = s;						\
+	typeof(d) _d = d;						\
+	u64 _a_full = _a;						\
+	unsigned int _to_shift =					\
+		is_non_negative(_s) && _s < 8 * sizeof(*d) ? _s : 0;	\
+	*_d = (_a_full << _to_shift);					\
+	(_to_shift != _s || is_negative(*_d) || is_negative(_a) ||	\
+	(*_d >> _to_shift) != _a);					\
+}))
+
+#define __overflows_type_constexpr(x, T) (			\
+	is_unsigned_type(typeof(x)) ?				\
+		(x) > type_max(typeof(T)) :			\
+	is_unsigned_type(typeof(T)) ?				\
+		(x) < 0 || (x) > type_max(typeof(T)) :		\
+	(x) < type_min(typeof(T)) || (x) > type_max(typeof(T)))
+
+#define __overflows_type(x, T)		({	\
+	typeof(T) v = 0;			\
+	check_add_overflow((x), v, &v);		\
+})
+
+/**
+ * overflows_type - helper for checking the overflows between value, variables,
+ *		    or data type
+ *
+ * @n: source constant value or variable to be checked
+ * @T: destination variable or data type proposed to store @x
+ *
+ * Compares the @x expression for whether or not it can safely fit in
+ * the storage of the type in @T. @x and @T can have different types.
+ * If @x is a constant expression, this will also resolve to a constant
+ * expression.
+ *
+ * Returns: true if overflow can occur, false otherwise.
+ */
+#define overflows_type(n, T)					\
+	__builtin_choose_expr(__is_constexpr(n),		\
+			      __overflows_type_constexpr(n, T),	\
+			      __overflows_type(n, T))
+
+/**
+ * castable_to_type - like __same_type(), but also allows for casted literals
+ *
+ * @n: variable or constant value
+ * @T: variable or data type
+ *
+ * Unlike the __same_type() macro, this allows a constant value as the
+ * first argument. If this value would not overflow into an assignment
+ * of the second argument's type, it returns true. Otherwise, this falls
+ * back to __same_type().
+ */
+#define castable_to_type(n, T)						\
+	__builtin_choose_expr(__is_constexpr(n),			\
+			      !__overflows_type_constexpr(n, T),	\
+			      __same_type(n, T))
+
+/**
+ * size_mul() - Calculate size_t multiplication with saturation at SIZE_MAX
+ * @factor1: first factor
+ * @factor2: second factor
+ *
+ * Returns: calculate @factor1 * @factor2, both promoted to size_t,
+ * with any overflow causing the return value to be SIZE_MAX. The
+ * lvalue must be size_t to avoid implicit type conversion.
+ */
+static inline size_t __must_check size_mul(size_t factor1, size_t factor2)
+{
+	size_t bytes;
+
+	if (check_mul_overflow(factor1, factor2, &bytes))
+		return SIZE_MAX;
+
+	return bytes;
+}
+
+/**
+ * size_add() - Calculate size_t addition with saturation at SIZE_MAX
+ * @addend1: first addend
+ * @addend2: second addend
+ *
+ * Returns: calculate @addend1 + @addend2, both promoted to size_t,
+ * with any overflow causing the return value to be SIZE_MAX. The
+ * lvalue must be size_t to avoid implicit type conversion.
+ */
+static inline size_t __must_check size_add(size_t addend1, size_t addend2)
+{
+	size_t bytes;
+
+	if (check_add_overflow(addend1, addend2, &bytes))
+		return SIZE_MAX;
+
+	return bytes;
+}
+
+/**
+ * size_sub() - Calculate size_t subtraction with saturation at SIZE_MAX
+ * @minuend: value to subtract from
+ * @subtrahend: value to subtract from @minuend
+ *
+ * Returns: calculate @minuend - @subtrahend, both promoted to size_t,
+ * with any overflow causing the return value to be SIZE_MAX. For
+ * composition with the size_add() and size_mul() helpers, neither
+ * argument may be SIZE_MAX (or the result with be forced to SIZE_MAX).
+ * The lvalue must be size_t to avoid implicit type conversion.
+ */
+static inline size_t __must_check size_sub(size_t minuend, size_t subtrahend)
+{
+	size_t bytes;
+
+	if (minuend == SIZE_MAX || subtrahend == SIZE_MAX ||
+	    check_sub_overflow(minuend, subtrahend, &bytes))
+		return SIZE_MAX;
+
+	return bytes;
+}
+
+/**
+ * array_size() - Calculate size of 2-dimensional array.
+ * @a: dimension one
+ * @b: dimension two
+ *
+ * Calculates size of 2-dimensional array: @a * @b.
+ *
+ * Returns: number of bytes needed to represent the array or SIZE_MAX on
+ * overflow.
+ */
+#define array_size(a, b)	size_mul(a, b)
+
+/**
+ * array3_size() - Calculate size of 3-dimensional array.
+ * @a: dimension one
+ * @b: dimension two
+ * @c: dimension three
+ *
+ * Calculates size of 3-dimensional array: @a * @b * @c.
+ *
+ * Returns: number of bytes needed to represent the array or SIZE_MAX on
+ * overflow.
+ */
+#define array3_size(a, b, c)	size_mul(size_mul(a, b), c)
+
+/**
+ * flex_array_size() - Calculate size of a flexible array member
+ *                     within an enclosing structure.
+ * @p: Pointer to the structure.
+ * @member: Name of the flexible array member.
+ * @count: Number of elements in the array.
+ *
+ * Calculates size of a flexible array of @count number of @member
+ * elements, at the end of structure @p.
+ *
+ * Return: number of bytes needed or SIZE_MAX on overflow.
+ */
+#define flex_array_size(p, member, count)				\
+	__builtin_choose_expr(__is_constexpr(count),			\
+		(count) * sizeof(*(p)->member) + __must_be_array((p)->member),	\
+		size_mul(count, sizeof(*(p)->member) + __must_be_array((p)->member)))
+
+/**
+ * struct_size() - Calculate size of structure with trailing flexible array.
+ * @p: Pointer to the structure.
+ * @member: Name of the array member.
+ * @count: Number of elements in the array.
+ *
+ * Calculates size of memory needed for structure of @p followed by an
+ * array of @count number of @member elements.
+ *
+ * Return: number of bytes needed or SIZE_MAX on overflow.
+ */
+#define struct_size(p, member, count)					\
+	__builtin_choose_expr(__is_constexpr(count),			\
+		sizeof(*(p)) + flex_array_size(p, member, count),	\
+		size_add(sizeof(*(p)), flex_array_size(p, member, count)))
+
+/**
+ * struct_size_t() - Calculate size of structure with trailing flexible array
+ * @type: structure type name.
+ * @member: Name of the array member.
+ * @count: Number of elements in the array.
+ *
+ * Calculates size of memory needed for structure @type followed by an
+ * array of @count number of @member elements. Prefer using struct_size()
+ * when possible instead, to keep calculations associated with a specific
+ * instance variable of type @type.
+ *
+ * Return: number of bytes needed or SIZE_MAX on overflow.
+ */
+#define struct_size_t(type, member, count)					\
+	struct_size((type *)NULL, member, count)
+
+#endif /* __LINUX_OVERFLOW_H */

-- 
2.51.2.535.g419c72cb8a



