Delivery-date: Tue, 10 Sep 2024 10:53:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1snwcv-0036OC-0q
	for lore@lore.pengutronix.de;
	Tue, 10 Sep 2024 10:53:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1snwct-0000ak-L6
	for lore@pengutronix.de; Tue, 10 Sep 2024 10:53:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8OZEJuMQHZk57lpxWoRiLEEOIseY18jTAo3W0qiGZAM=; b=gF3iO4+4DOg2J6jveNWOdFEElo
	gckZsvY/GimQioGvRM887pge9Ek2HYP8i0UuanwpirT3Ve7kqZvtNb9ddPG605sj8hA8FvWrlZiPa
	hbRL2zikNOyBxW0S+P0u/G/I1BgiZSUHhL94m2eSSgOK6Set1y5lGY/5DBDW9GS/26Q5KfD7C06hi
	Wax3abQhtjOn6Rlfb7ZKio4Tss9OlLeNyGtIZh34WBRSjgvioEAxJtqUNUNJiFUX6yTm6QFdKU80j
	e5CAP2oEsU72qlkHtind/A8CQbdthsAYV6ntMG37aWrJwoGXRf6HLrsbinwzpQMs376+YbjGx5zQC
	LYGj297g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snwcP-00000004tEI-13h7;
	Tue, 10 Sep 2024 08:53:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snwcJ-00000004t9v-3C6p
	for barebox@lists.infradead.org;
	Tue, 10 Sep 2024 08:52:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1snwcI-0000FG-Da; Tue, 10 Sep 2024 10:52:54 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1snwcI-006r7T-0k; Tue, 10 Sep 2024 10:52:54 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1snwcH-000CGs-1X;
	Tue, 10 Sep 2024 10:52:53 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 10 Sep 2024 10:52:53 +0200
Message-Id: <20240910085253.46286-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240910085253.46286-1-a.fatoum@pengutronix.de>
References: <20240910085253.46286-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240910_015256_062517_2064E5B9 
X-CRM114-Status: GOOD (  31.52  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] include: linux/math.h: sync with linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The <linux/math.h> header has evolved upstream since we last imported
it. Sync it with Linux to make available some more functions for use in
barebox.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/math.h | 173 ++++++++++++++++++++++++++++++++++++-------
 lib/math/Makefile    |   1 +
 lib/math/int_pow.c   |  32 ++++++++
 lib/math/int_sqrt.c  |  44 ++++++++---
 4 files changed, 212 insertions(+), 38 deletions(-)
 create mode 100644 lib/math/int_pow.c

diff --git a/include/linux/math.h b/include/linux/math.h
index 48417aca7635..e7c47fa404ab 100644
--- a/include/linux/math.h
+++ b/include/linux/math.h
@@ -10,12 +10,27 @@
  * get the type for the ~ right in round_down (it needs to be
  * as wide as the result!), and we want to evaluate the macro
  * arguments just once each.
- *
- * NOTE these functions only round to power-of-2 arguments. Use
- * roundup/rounddown for non power-of-2-arguments.
  */
 #define __round_mask(x, y) ((__typeof__(x))((y)-1))
+
+/**
+ * round_up - round up to next specified power of 2
+ * @x: the value to round
+ * @y: multiple to round up to (must be a power of 2)
+ *
+ * Rounds @x up to next multiple of @y (which must be a power of 2).
+ * To perform arbitrary rounding up, use roundup() below.
+ */
 #define round_up(x, y) ((((x)-1) | __round_mask(x, y))+1)
+
+/**
+ * round_down - round down to next specified power of 2
+ * @x: the value to round
+ * @y: multiple to round down to (must be a power of 2)
+ *
+ * Rounds @x down to next multiple of @y (which must be a power of 2).
+ * To perform arbitrary rounding down, use rounddown() below.
+ */
 #define round_down(x, y) ((x) & ~__round_mask(x, y))
 
 #define DIV_ROUND_UP(n,d) (((n) + (d) - 1) / (d))
@@ -26,10 +41,56 @@
 #define DIV_ROUND_UP_ULL(ll, d) \
 	DIV_ROUND_DOWN_ULL((unsigned long long)(ll) + (d) - 1, (d))
 
+#if BITS_PER_LONG == 32
+# define DIV_ROUND_UP_SECTOR_T(ll,d) DIV_ROUND_UP_ULL(ll, d)
+#else
+# define DIV_ROUND_UP_SECTOR_T(ll,d) DIV_ROUND_UP(ll,d)
+#endif
+
+/**
+ * roundup - round up to the next specified multiple
+ * @x: the value to up
+ * @y: multiple to round up to
+ *
+ * Rounds @x up to next multiple of @y. If @y will always be a power
+ * of 2, consider using the faster round_up().
+ */
+#define roundup(x, y) (					\
+{							\
+	typeof(y) __y = y;				\
+	(((x) + (__y - 1)) / __y) * __y;		\
+}							\
+)
+/**
+ * rounddown - round down to next specified multiple
+ * @x: the value to round
+ * @y: multiple to round down to
+ *
+ * Rounds @x down to next multiple of @y. If @y will always be a power
+ * of 2, consider using the faster round_down().
+ */
+#define rounddown(x, y) (				\
+{							\
+	typeof(x) __x = (x);				\
+	__x - (__x % (y));				\
+}							\
+)
+
+/*
+ * Divide positive or negative dividend by positive or negative divisor
+ * and round to closest integer. Result is undefined for negative
+ * divisors if the dividend variable type is unsigned and for negative
+ * dividends if the divisor variable type is unsigned.
+ */
 #define DIV_ROUND_CLOSEST(x, divisor)(			\
 {							\
-	typeof(divisor) __divisor = divisor;		\
-	(((x) + ((__divisor) / 2)) / (__divisor));	\
+	typeof(x) __x = x;				\
+	typeof(divisor) __d = divisor;			\
+	(((typeof(x))-1) > 0 ||				\
+	 ((typeof(divisor))-1) > 0 ||			\
+	 (((__x) > 0) == ((__d) > 0))) ?		\
+		(((__x) + ((__d) / 2)) / (__d)) :	\
+		(((__x) - ((__d) / 2)) / (__d));	\
 }							\
 )
 /*
@@ -45,19 +106,16 @@
 }							\
 )
 
-/* The `const' in roundup() prevents gcc-3.3 from calling __divdi3 */
-#define roundup(x, y) (					\
-{							\
-	const typeof(y) __y = y;			\
-	(((x) + (__y - 1)) / __y) * __y;		\
-}							\
-)
-#define rounddown(x, y) (				\
-{							\
-	typeof(x) __x = (x);				\
-	__x - (__x % (y));				\
-}							\
-)
+#define __STRUCT_FRACT(type)				\
+struct type##_fract {					\
+	__##type numerator;				\
+	__##type denominator;				\
+};
+__STRUCT_FRACT(s16)
+__STRUCT_FRACT(u16)
+__STRUCT_FRACT(s32)
+__STRUCT_FRACT(u32)
+#undef __STRUCT_FRACT
 
 /* Calculate "x * n / d" without unnecessary overflow or loss of precision. */
 #define mult_frac(x, n, d)	\
@@ -71,16 +129,79 @@
 	q * n_ + r * n_ / d_;	\
 })
 
-#define abs(x) ({                               \
-		long __x = (x);                 \
-		(__x < 0) ? -__x : __x;         \
-	})
+#define sector_div(a, b) do_div(a, b)
 
-#define abs64(x) ({                             \
-		s64 __x = (x);                  \
-		(__x < 0) ? -__x : __x;         \
-	})
+/**
+ * abs - return absolute value of an argument
+ * @x: the value.  If it is unsigned type, it is converted to signed type first.
+ *     char is treated as if it was signed (regardless of whether it really is)
+ *     but the macro's return type is preserved as char.
+ *
+ * Return: an absolute value of x.
+ */
+#define abs(x)	__abs_choose_expr(x, long long,				\
+		__abs_choose_expr(x, long,				\
+		__abs_choose_expr(x, int,				\
+		__abs_choose_expr(x, short,				\
+		__abs_choose_expr(x, char,				\
+		__builtin_choose_expr(					\
+			__builtin_types_compatible_p(typeof(x), char),	\
+			(char)({ signed char __x = (x); __x<0?-__x:__x; }), \
+			((void)0)))))))
 
+#define __abs_choose_expr(x, type, other) __builtin_choose_expr(	\
+	__builtin_types_compatible_p(typeof(x),   signed type) ||	\
+	__builtin_types_compatible_p(typeof(x), unsigned type),		\
+	({ signed type __x = (x); __x < 0 ? -__x : __x; }), other)
+
+/**
+ * abs_diff - return absolute value of the difference between the arguments
+ * @a: the first argument
+ * @b: the second argument
+ *
+ * @a and @b have to be of the same type. With this restriction we compare
+ * signed to signed and unsigned to unsigned. The result is the subtraction
+ * the smaller of the two from the bigger, hence result is always a positive
+ * value.
+ *
+ * Return: an absolute value of the difference between the @a and @b.
+ */
+#define abs_diff(a, b) ({			\
+	typeof(a) __a = (a);			\
+	typeof(b) __b = (b);			\
+	(void)(&__a == &__b);			\
+	__a > __b ? (__a - __b) : (__b - __a);	\
+})
+
+/**
+ * reciprocal_scale - "scale" a value into range [0, ep_ro)
+ * @val: value
+ * @ep_ro: right open interval endpoint
+ *
+ * Perform a "reciprocal multiplication" in order to "scale" a value into
+ * range [0, @ep_ro), where the upper interval endpoint is right-open.
+ * This is useful, e.g. for accessing a index of an array containing
+ * @ep_ro elements, for example. Think of it as sort of modulus, only that
+ * the result isn't that of modulo. ;) Note that if initial input is a
+ * small value, then result will return 0.
+ *
+ * Return: a result based on @val in interval [0, @ep_ro).
+ */
+static inline u32 reciprocal_scale(u32 val, u32 ep_ro)
+{
+	return (u32)(((u64) val * ep_ro) >> 32);
+}
+
+u64 int_pow(u64 base, unsigned int exp);
 unsigned long int_sqrt(unsigned long);
 
+#if BITS_PER_LONG < 64
+u32 int_sqrt64(u64 x);
+#else
+static inline u32 int_sqrt64(u64 x)
+{
+	return (u32)int_sqrt(x);
+}
 #endif
+
+#endif	/* _LINUX_MATH_H */
diff --git a/lib/math/Makefile b/lib/math/Makefile
index 71ab2b108689..197f92a097ed 100644
--- a/lib/math/Makefile
+++ b/lib/math/Makefile
@@ -3,4 +3,5 @@
 obj-y += div64.o
 pbl-y += div64.o
 obj-y += rational.o
+obj-y += int_pow.o
 obj-y += int_sqrt.o
diff --git a/lib/math/int_pow.c b/lib/math/int_pow.c
new file mode 100644
index 000000000000..0cf426e69bda
--- /dev/null
+++ b/lib/math/int_pow.c
@@ -0,0 +1,32 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * An integer based power function
+ *
+ * Derived from drivers/video/backlight/pwm_bl.c
+ */
+
+#include <linux/export.h>
+#include <linux/math.h>
+#include <linux/types.h>
+
+/**
+ * int_pow - computes the exponentiation of the given base and exponent
+ * @base: base which will be raised to the given power
+ * @exp: power to be raised to
+ *
+ * Computes: pow(base, exp), i.e. @base raised to the @exp power
+ */
+u64 int_pow(u64 base, unsigned int exp)
+{
+	u64 result = 1;
+
+	while (exp) {
+		if (exp & 1)
+			result *= base;
+		exp >>= 1;
+		base *= base;
+	}
+
+	return result;
+}
+EXPORT_SYMBOL_GPL(int_pow);
diff --git a/lib/math/int_sqrt.c b/lib/math/int_sqrt.c
index 105656d04661..f417e97003e1 100644
--- a/lib/math/int_sqrt.c
+++ b/lib/math/int_sqrt.c
@@ -1,17 +1,7 @@
-/*
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- */
+// SPDX-License-Identifier: GPL-2.0
 
 #include <linux/math.h>
+#include <linux/limits.h>
 #include <linux/export.h>
 
 /**
@@ -42,3 +32,33 @@ unsigned long int_sqrt(unsigned long x)
 	return y;
 }
 EXPORT_SYMBOL(int_sqrt);
+
+#if BITS_PER_LONG < 64
+/**
+ * int_sqrt64 - strongly typed int_sqrt function when minimum 64 bit input
+ * is expected.
+ * @x: 64bit integer of which to calculate the sqrt
+ */
+u32 int_sqrt64(u64 x)
+{
+	u64 b, m, y = 0;
+
+	if (x <= ULONG_MAX)
+		return int_sqrt((unsigned long) x);
+
+	m = 1ULL << ((fls64(x) - 1) & ~1ULL);
+	while (m != 0) {
+		b = y + m;
+		y >>= 1;
+
+		if (x >= b) {
+			x -= b;
+			y += m;
+		}
+		m >>= 2;
+	}
+
+	return y;
+}
+EXPORT_SYMBOL(int_sqrt64);
+#endif
-- 
2.39.2



