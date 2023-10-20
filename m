Delivery-date: Fri, 20 Oct 2023 09:24:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qtjs5-00FGiK-OF
	for lore@lore.pengutronix.de; Fri, 20 Oct 2023 09:24:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qtjs3-0007ux-F1
	for lore@pengutronix.de; Fri, 20 Oct 2023 09:24:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=IpnmPjLbziRk1UE036vencH9qzQ4bJvIze4zNYLceqc=; b=AwmPxHkdxsJ3nKx7DfhyjxkryZ
	X7o8GYutyBUejoX+5yCV6O7zJAysI/3xQd1vRVfGZN+8wPZr9VHFJwx1ezjuNqki+sT8XR92+dvkX
	EzDr705tOnQ7Dt+ivu+gcleLk2NGdo+9U4iTB5odyTgBHMBZmpkgosrtyNbtNDStsQhIWJBOiZDwW
	rqnPs5t94t/PEMy5A7UoBBcbDAnK+XtP+qtW0guTCB8AQY3IPWEWCrDTYLyZ5KTc5Xv96SJKPDyaA
	RKTXymWI1qIGUkkBW33nMAShwRGzSjjAVtBbAPlm/SuwFFXQkuEENqKiJ1iYXtPPEKFJ65XkMXPxk
	nTFOJSlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qtjqv-001QoV-34;
	Fri, 20 Oct 2023 07:23:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qtjqq-001QmW-2g
	for barebox@lists.infradead.org;
	Fri, 20 Oct 2023 07:23:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qtjqp-0007by-Ku; Fri, 20 Oct 2023 09:23:19 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qtjqp-002yMj-7n; Fri, 20 Oct 2023 09:23:19 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qtjqp-00BsRB-0d;
	Fri, 20 Oct 2023 09:23:19 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 20 Oct 2023 09:23:14 +0200
Message-Id: <20231020072316.2830850-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231020_002321_176616_B987E8D1 
X-CRM114-Status: GOOD (  29.33  )
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
Subject: [PATCH master 1/3] include: linux/overflow.h: sync with upstream
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Newer versions of the header add a size_add macro for doing saturating
addition, which will be used in a follow-up fix, so sync the header with
Linux to make it available.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/overflow.h | 436 +++++++++++++++++++--------------------
 1 file changed, 214 insertions(+), 222 deletions(-)

diff --git a/include/linux/overflow.h b/include/linux/overflow.h
index 50c93ca0c3d6..f9b60313eaea 100644
--- a/include/linux/overflow.h
+++ b/include/linux/overflow.h
@@ -4,14 +4,12 @@
 
 #include <linux/compiler.h>
 #include <linux/limits.h>
+#include <linux/const.h>
 
 /*
- * In the fallback code below, we need to compute the minimum and
- * maximum values representable in a given type. These macros may also
- * be useful elsewhere, so we provide them outside the
- * COMPILER_HAS_GENERIC_BUILTIN_OVERFLOW block.
- *
- * It would seem more obvious to do something like
+ * We need to compute the minimum and maximum values representable in a given
+ * type. These macros may also be useful elsewhere. It would seem more obvious
+ * to do something like:
  *
  * #define type_min(T) (T)(is_signed_type(T) ? (T)1 << (8*sizeof(T)-1) : 0)
  * #define type_max(T) (T)(is_signed_type(T) ? ((T)1 << (8*sizeof(T)-1)) - 1 : ~(T)0)
@@ -32,7 +30,6 @@
  * https://mail-index.netbsd.org/tech-misc/2007/02/05/0000.html -
  * credit to Christian Biere.
  */
-#define is_signed_type(type)       (((type)(-1)) < (type)1)
 #define __type_half_max(type) ((type)1 << (8*sizeof(type) - 1 - is_signed_type(type)))
 #define type_max(T) ((T)((__type_half_max(T) - 1) + __type_half_max(T)))
 #define type_min(T) ((T)((T)-type_max(T)-(T)1))
@@ -44,191 +41,82 @@
 #define is_non_negative(a) ((a) > 0 || (a) == 0)
 #define is_negative(a) (!(is_non_negative(a)))
 
-#ifdef COMPILER_HAS_GENERIC_BUILTIN_OVERFLOW
 /*
- * For simplicity and code hygiene, the fallback code below insists on
- * a, b and *d having the same type (similar to the min() and max()
- * macros), whereas gcc's type-generic overflow checkers accept
- * different types. Hence we don't just make check_add_overflow an
- * alias for __builtin_add_overflow, but add type checks similar to
- * below.
+ * Allows for effectively applying __must_check to a macro so we can have
+ * both the type-agnostic benefits of the macros while also being able to
+ * enforce that the return value is, in fact, checked.
  */
-#define check_add_overflow(a, b, d) ({		\
-	typeof(a) __a = (a);			\
-	typeof(b) __b = (b);			\
-	typeof(d) __d = (d);			\
-	(void) (&__a == &__b);			\
-	(void) (&__a == __d);			\
-	__builtin_add_overflow(__a, __b, __d);	\
-})
+static inline bool __must_check __must_check_overflow(bool overflow)
+{
+	return unlikely(overflow);
+}
 
-#define check_sub_overflow(a, b, d) ({		\
-	typeof(a) __a = (a);			\
-	typeof(b) __b = (b);			\
-	typeof(d) __d = (d);			\
-	(void) (&__a == &__b);			\
-	(void) (&__a == __d);			\
-	__builtin_sub_overflow(__a, __b, __d);	\
-})
-
-#define check_mul_overflow(a, b, d) ({		\
-	typeof(a) __a = (a);			\
-	typeof(b) __b = (b);			\
-	typeof(d) __d = (d);			\
-	(void) (&__a == &__b);			\
-	(void) (&__a == __d);			\
-	__builtin_mul_overflow(__a, __b, __d);	\
-})
-
-#else
-
-
-/* Checking for unsigned overflow is relatively easy without causing UB. */
-#define __unsigned_add_overflow(a, b, d) ({	\
-	typeof(a) __a = (a);			\
-	typeof(b) __b = (b);			\
-	typeof(d) __d = (d);			\
-	(void) (&__a == &__b);			\
-	(void) (&__a == __d);			\
-	*__d = __a + __b;			\
-	*__d < __a;				\
-})
-#define __unsigned_sub_overflow(a, b, d) ({	\
-	typeof(a) __a = (a);			\
-	typeof(b) __b = (b);			\
-	typeof(d) __d = (d);			\
-	(void) (&__a == &__b);			\
-	(void) (&__a == __d);			\
-	*__d = __a - __b;			\
-	__a < __b;				\
-})
-/*
- * If one of a or b is a compile-time constant, this avoids a division.
- */
-#define __unsigned_mul_overflow(a, b, d) ({		\
-	typeof(a) __a = (a);				\
-	typeof(b) __b = (b);				\
-	typeof(d) __d = (d);				\
-	(void) (&__a == &__b);				\
-	(void) (&__a == __d);				\
-	*__d = __a * __b;				\
-	__builtin_constant_p(__b) ?			\
-	  __b > 0 && __a > type_max(typeof(__a)) / __b : \
-	  __a > 0 && __b > type_max(typeof(__b)) / __a;	 \
-})
-
-/*
- * For signed types, detecting overflow is much harder, especially if
- * we want to avoid UB. But the interface of these macros is such that
- * we must provide a result in *d, and in fact we must produce the
- * result promised by gcc's builtins, which is simply the possibly
- * wrapped-around value. Fortunately, we can just formally do the
- * operations in the widest relevant unsigned type (u64) and then
- * truncate the result - gcc is smart enough to generate the same code
- * with and without the (u64) casts.
- */
-
-/*
- * Adding two signed integers can overflow only if they have the same
- * sign, and overflow has happened iff the result has the opposite
- * sign.
- */
-#define __signed_add_overflow(a, b, d) ({	\
-	typeof(a) __a = (a);			\
-	typeof(b) __b = (b);			\
-	typeof(d) __d = (d);			\
-	(void) (&__a == &__b);			\
-	(void) (&__a == __d);			\
-	*__d = (u64)__a + (u64)__b;		\
-	(((~(__a ^ __b)) & (*__d ^ __a))	\
-		& type_min(typeof(__a))) != 0;	\
-})
-
-/*
- * Subtraction is similar, except that overflow can now happen only
- * when the signs are opposite. In this case, overflow has happened if
- * the result has the opposite sign of a.
- */
-#define __signed_sub_overflow(a, b, d) ({	\
-	typeof(a) __a = (a);			\
-	typeof(b) __b = (b);			\
-	typeof(d) __d = (d);			\
-	(void) (&__a == &__b);			\
-	(void) (&__a == __d);			\
-	*__d = (u64)__a - (u64)__b;		\
-	((((__a ^ __b)) & (*__d ^ __a))		\
-		& type_min(typeof(__a))) != 0;	\
-})
-
-/*
- * Signed multiplication is rather hard. gcc always follows C99, so
- * division is truncated towards 0. This means that we can write the
- * overflow check like this:
+/**
+ * check_add_overflow() - Calculate addition with overflow checking
+ * @a: first addend
+ * @b: second addend
+ * @d: pointer to store sum
  *
- * (a > 0 && (b > MAX/a || b < MIN/a)) ||
- * (a < -1 && (b > MIN/a || b < MAX/a) ||
- * (a == -1 && b == MIN)
+ * Returns 0 on success.
  *
- * The redundant casts of -1 are to silence an annoying -Wtype-limits
- * (included in -Wextra) warning: When the type is u8 or u16, the
- * __b_c_e in check_mul_overflow obviously selects
- * __unsigned_mul_overflow, but unfortunately gcc still parses this
- * code and warns about the limited range of __b.
+ * *@d holds the results of the attempted addition, but is not considered
+ * "safe for use" on a non-zero return value, which indicates that the
+ * sum has overflowed or been truncated.
  */
+#define check_add_overflow(a, b, d)	\
+	__must_check_overflow(__builtin_add_overflow(a, b, d))
 
-#define __signed_mul_overflow(a, b, d) ({				\
-	typeof(a) __a = (a);						\
-	typeof(b) __b = (b);						\
-	typeof(d) __d = (d);						\
-	typeof(a) __tmax = type_max(typeof(a));				\
-	typeof(a) __tmin = type_min(typeof(a));				\
-	(void) (&__a == &__b);						\
-	(void) (&__a == __d);						\
-	*__d = (u64)__a * (u64)__b;					\
-	(__b > 0   && (__a > __tmax/__b || __a < __tmin/__b)) ||	\
-	(__b < (typeof(__b))-1  && (__a > __tmin/__b || __a < __tmax/__b)) || \
-	(__b == (typeof(__b))-1 && __a == __tmin);			\
-})
-
-
-#define check_add_overflow(a, b, d)					\
-	__builtin_choose_expr(is_signed_type(typeof(a)),		\
-			__signed_add_overflow(a, b, d),			\
-			__unsigned_add_overflow(a, b, d))
-
-#define check_sub_overflow(a, b, d)					\
-	__builtin_choose_expr(is_signed_type(typeof(a)),		\
-			__signed_sub_overflow(a, b, d),			\
-			__unsigned_sub_overflow(a, b, d))
-
-#define check_mul_overflow(a, b, d)					\
-	__builtin_choose_expr(is_signed_type(typeof(a)),		\
-			__signed_mul_overflow(a, b, d),			\
-			__unsigned_mul_overflow(a, b, d))
-
-
-#endif /* COMPILER_HAS_GENERIC_BUILTIN_OVERFLOW */
-
-/** check_shl_overflow() - Calculate a left-shifted value and check overflow
+/**
+ * check_sub_overflow() - Calculate subtraction with overflow checking
+ * @a: minuend; value to subtract from
+ * @b: subtrahend; value to subtract from @a
+ * @d: pointer to store difference
  *
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
  * @a: Value to be shifted
  * @s: How many bits left to shift
  * @d: Pointer to where to store the result
  *
  * Computes *@d = (@a << @s)
  *
- * Returns true if '*d' cannot hold the result or when 'a << s' doesn't
+ * Returns true if '*@d' cannot hold the result or when '@a << @s' doesn't
  * make sense. Example conditions:
- * - 'a << s' causes bits to be lost when stored in *d.
- * - 's' is garbage (e.g. negative) or so large that the result of
- *   'a << s' is guaranteed to be 0.
- * - 'a' is negative.
- * - 'a << s' sets the sign bit, if any, in '*d'.
  *
- * '*d' will hold the results of the attempted shift, but is not
- * considered "safe for use" if false is returned.
+ * - '@a << @s' causes bits to be lost when stored in *@d.
+ * - '@s' is garbage (e.g. negative) or so large that the result of
+ *   '@a << @s' is guaranteed to be 0.
+ * - '@a' is negative.
+ * - '@a << @s' sets the sign bit, if any, in '*@d'.
+ *
+ * '*@d' will hold the results of the attempted shift, but is not
+ * considered "safe for use" if true is returned.
  */
-#define check_shl_overflow(a, s, d) ({					\
+#define check_shl_overflow(a, s, d) __must_check_overflow(({		\
 	typeof(a) _a = a;						\
 	typeof(s) _s = s;						\
 	typeof(d) _d = d;						\
@@ -238,11 +126,117 @@
 	*_d = (_a_full << _to_shift);					\
 	(_to_shift != _s || is_negative(*_d) || is_negative(_a) ||	\
 	(*_d >> _to_shift) != _a);					\
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
 })
 
 /**
- * array_size() - Calculate size of 2-dimensional array.
+ * overflows_type - helper for checking the overflows between value, variables,
+ *		    or data type
  *
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
  * @a: dimension one
  * @b: dimension two
  *
@@ -251,19 +245,10 @@
  * Returns: number of bytes needed to represent the array or SIZE_MAX on
  * overflow.
  */
-static inline __must_check size_t array_size(size_t a, size_t b)
-{
-	size_t bytes;
-
-	if (check_mul_overflow(a, b, &bytes))
-		return SIZE_MAX;
-
-	return bytes;
-}
+#define array_size(a, b)	size_mul(a, b)
 
 /**
  * array3_size() - Calculate size of 3-dimensional array.
- *
  * @a: dimension one
  * @b: dimension two
  * @c: dimension three
@@ -273,48 +258,55 @@ static inline __must_check size_t array_size(size_t a, size_t b)
  * Returns: number of bytes needed to represent the array or SIZE_MAX on
  * overflow.
  */
-static inline __must_check size_t array3_size(size_t a, size_t b, size_t c)
-{
-	size_t bytes;
-
-	if (check_mul_overflow(a, b, &bytes))
-		return SIZE_MAX;
-	if (check_mul_overflow(bytes, c, &bytes))
-		return SIZE_MAX;
-
-	return bytes;
-}
-
-/*
- * Compute a*b+c, returning SIZE_MAX on overflow. Internal helper for
- * struct_size() below.
- */
-static inline __must_check size_t __ab_c_size(size_t a, size_t b, size_t c)
-{
-	size_t bytes;
-
-	if (check_mul_overflow(a, b, &bytes))
-		return SIZE_MAX;
-	if (check_add_overflow(bytes, c, &bytes))
-		return SIZE_MAX;
-
-	return bytes;
-}
+#define array3_size(a, b, c)	size_mul(size_mul(a, b), c)
 
 /**
- * struct_size() - Calculate size of structure with trailing array.
+ * flex_array_size() - Calculate size of a flexible array member
+ *                     within an enclosing structure.
  * @p: Pointer to the structure.
- * @member: Name of the array member.
- * @n: Number of elements in the array.
+ * @member: Name of the flexible array member.
+ * @count: Number of elements in the array.
  *
- * Calculates size of memory needed for structure @p followed by an
- * array of @n @member elements.
+ * Calculates size of a flexible array of @count number of @member
+ * elements, at the end of structure @p.
  *
  * Return: number of bytes needed or SIZE_MAX on overflow.
  */
-#define struct_size(p, member, n)					\
-	__ab_c_size(n,							\
-		    sizeof(*(p)->member) + __must_be_array((p)->member),\
-		    sizeof(*(p)))
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
 
 #endif /* __LINUX_OVERFLOW_H */
-- 
2.39.2



