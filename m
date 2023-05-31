Delivery-date: Wed, 31 May 2023 08:30:30 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4FLs-003sEt-5j
	for lore@lore.pengutronix.de; Wed, 31 May 2023 08:30:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4FLo-0007TG-Ra
	for lore@pengutronix.de; Wed, 31 May 2023 08:30:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2Ye4SAx0HzIbgcKlpwJKWEY58bMD9Iq9hCqtz7pSrnI=; b=Py51Lk5RI2k4vRbktcEgCCbxQ2
	zED0yaruG6htuIdJWfGSv2GvnA7pPvRVYmHTuvgtOPvub/xv6JBp3dDA0VHb2yI6ZcLj6pqCcuD2W
	4qL4qmelrUIFPEFT4LOnuh7a1L0CQ5jF5Wc1M5nyXvPvUgNXnv9RIlgOldx+cF+BaB0qigpwPVN+B
	tqZdc4RRAU1NBuuZrH7ibB6wjSgdR/wEHrgfd9DoeTMqwh3ffdQboMHstELgBkNByFbWWLsNESDjr
	YWzFR9jymUguU1lHfiJCs2EgjSnyGZqZebCOBjPnh3czLzsxmzdiOOp1xZ//Y7qKrrGuanlBmZMhh
	EZlCGtCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4FKc-00GI4p-2r;
	Wed, 31 May 2023 06:29:14 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4FKW-00GI1m-1E
	for barebox@lists.infradead.org;
	Wed, 31 May 2023 06:29:11 +0000
X-GND-Sasl: ahmad@a3f.at
X-GND-Sasl: ahmad@a3f.at
Received: by mail.gandi.net (Postfix) with ESMTPSA id EBBCD6000C;
	Wed, 31 May 2023 06:29:03 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Wed, 31 May 2023 08:28:51 +0200
Message-Id: <20230531062853.670751-2-ahmad@a3f.at>
X-Mailer: git-send-email 2.38.5
In-Reply-To: <20230531062853.670751-1-ahmad@a3f.at>
References: <20230531062853.670751-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230530_232908_683686_43B56CC7 
X-CRM114-Status: GOOD (  22.35  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/3] include: sync min/max definitions with Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

By syncing to Linux, min/max and friends now return constant expressions
if possible, which makes them suitable for use as non-VLA array length.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 include/linux/const.h  |   9 +++
 include/linux/kernel.h | 123 +-----------------------------
 include/linux/minmax.h | 169 +++++++++++++++++++++++++++++++++++++++++
 3 files changed, 179 insertions(+), 122 deletions(-)
 create mode 100644 include/linux/minmax.h

diff --git a/include/linux/const.h b/include/linux/const.h
index 07f886d27155..0acddd3a0ed6 100644
--- a/include/linux/const.h
+++ b/include/linux/const.h
@@ -26,4 +26,13 @@
 #define _BITUL(x)	(_AC(1,UL) << (x))
 #define _BITULL(x)	(_AC(1,ULL) << (x))
 
+
+/*
+ * This returns a constant expression while determining if an argument is
+ * a constant expression, most importantly without evaluating the argument.
+ * Glory to Martin Uecker <Martin.Uecker@med.uni-goettingen.de>
+ */
+#define __is_constexpr(x) \
+	(sizeof(int) == sizeof(*(8 ? ((void *)((long)(x) * 0l)) : (int *)8)))
+
 #endif /* !(_LINUX_CONST_H) */
diff --git a/include/linux/kernel.h b/include/linux/kernel.h
index 0eb7bd21fe93..bf820de22ca7 100644
--- a/include/linux/kernel.h
+++ b/include/linux/kernel.h
@@ -8,6 +8,7 @@
 #include <linux/limits.h>
 #include <linux/math64.h>
 #include <linux/container_of.h>
+#include <linux/minmax.h>
 
 #define ALIGN(x, a)		__ALIGN_MASK(x, (typeof(x))(a) - 1)
 #define ALIGN_DOWN(x, a)	ALIGN((x) - ((a) - 1), (a))
@@ -88,121 +89,6 @@ extern long simple_strtol(const char *,char **,unsigned int);
 extern unsigned long long simple_strtoull(const char *,char **,unsigned int);
 extern long long simple_strtoll(const char *,char **,unsigned int);
 
-/*
- * min()/max()/clamp() macros that also do
- * strict type-checking.. See the
- * "unnecessary" pointer comparison.
- */
-#define min(x, y) ({				\
-	typeof(x) _min1 = (x);			\
-	typeof(y) _min2 = (y);			\
-	(void) (&_min1 == &_min2);		\
-	_min1 < _min2 ? _min1 : _min2; })
-
-#define max(x, y) ({				\
-	typeof(x) _max1 = (x);			\
-	typeof(y) _max2 = (y);			\
-	(void) (&_max1 == &_max2);		\
-	_max1 > _max2 ? _max1 : _max2; })
-
-#define min3(x, y, z) ({			\
-	typeof(x) _min1 = (x);			\
-	typeof(y) _min2 = (y);			\
-	typeof(z) _min3 = (z);			\
-	(void) (&_min1 == &_min2);		\
-	(void) (&_min1 == &_min3);		\
-	_min1 < _min2 ? (_min1 < _min3 ? _min1 : _min3) :	\
-		(_min2 < _min3 ? _min2 : _min3); })
-
-#define max3(x, y, z) ({			\
-	typeof(x) _max1 = (x);			\
-	typeof(y) _max2 = (y);			\
-	typeof(z) _max3 = (z);			\
-	(void) (&_max1 == &_max2);		\
-	(void) (&_max1 == &_max3);		\
-	_max1 > _max2 ? (_max1 > _max3 ? _max1 : _max3) :	\
-		(_max2 > _max3 ? _max2 : _max3); })
-
-/**
- * min_not_zero - return the minimum that is _not_ zero, unless both are zero
- * @x: value1
- * @y: value2
- */
-#define min_not_zero(x, y) ({			\
-	typeof(x) __x = (x);			\
-	typeof(y) __y = (y);			\
-	__x == 0 ? __y : ((__y == 0) ? __x : min(__x, __y)); })
-
-/**
- * clamp - return a value clamped to a given range with strict typechecking
- * @val: current value
- * @min: minimum allowable value
- * @max: maximum allowable value
- *
- * This macro does strict typechecking of min/max to make sure they are of the
- * same type as val.  See the unnecessary pointer comparisons.
- */
-#define clamp(val, min, max) ({			\
-	typeof(val) __val = (val);		\
-	typeof(min) __min = (min);		\
-	typeof(max) __max = (max);		\
-	(void) (&__val == &__min);		\
-	(void) (&__val == &__max);		\
-	__val = __val < __min ? __min: __val;	\
-	__val > __max ? __max: __val; })
-
-/*
- * ..and if you can't take the strict
- * types, you can specify one yourself.
- *
- * Or not use min/max/clamp at all, of course.
- */
-#define min_t(type, x, y) ({			\
-	type __min1 = (x);			\
-	type __min2 = (y);			\
-	__min1 < __min2 ? __min1: __min2; })
-
-#define max_t(type, x, y) ({			\
-	type __max1 = (x);			\
-	type __max2 = (y);			\
-	__max1 > __max2 ? __max1: __max2; })
-
-/**
- * clamp_t - return a value clamped to a given range using a given type
- * @type: the type of variable to use
- * @val: current value
- * @min: minimum allowable value
- * @max: maximum allowable value
- *
- * This macro does no typechecking and uses temporary variables of type
- * 'type' to make all the comparisons.
- */
-#define clamp_t(type, val, min, max) ({		\
-	type __val = (val);			\
-	type __min = (min);			\
-	type __max = (max);			\
-	__val = __val < __min ? __min: __val;	\
-	__val > __max ? __max: __val; })
-
-/**
- * clamp_val - return a value clamped to a given range using val's type
- * @val: current value
- * @min: minimum allowable value
- * @max: maximum allowable value
- *
- * This macro does no typechecking and uses temporary variables of whatever
- * type the input argument 'val' is.  This is useful when val is an unsigned
- * type and min and max are literals that will otherwise be assigned a signed
- * integer type.
- */
-#define clamp_val(val, min, max) ({		\
-	typeof(val) __val = (val);		\
-	typeof(val) __min = (min);		\
-	typeof(val) __max = (max);		\
-	__val = __val < __min ? __min: __val;	\
-	__val > __max ? __max: __val; })
-
-
 /* The `const' in roundup() prevents gcc-3.3 from calling __divdi3 */
 #define roundup(x, y) (					\
 {							\
@@ -257,13 +143,6 @@ extern int hex_to_bin(char ch);
 extern int __must_check hex2bin(u8 *dst, const char *src, size_t count);
 extern char *bin2hex(char *dst, const void *src, size_t count);
 
-/*
- * swap - swap value of @a and @b
- */
-#define swap(a, b) \
-	do { typeof(a) __tmp = (a); (a) = (b); (b) = __tmp; } while (0)
-
-
 /* Internal, do not use. */
 int __must_check _kstrtoul(const char *s, unsigned int base, unsigned long *res);
 int __must_check _kstrtol(const char *s, unsigned int base, long *res);
diff --git a/include/linux/minmax.h b/include/linux/minmax.h
new file mode 100644
index 000000000000..396df1121bff
--- /dev/null
+++ b/include/linux/minmax.h
@@ -0,0 +1,169 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _LINUX_MINMAX_H
+#define _LINUX_MINMAX_H
+
+#include <linux/const.h>
+
+/*
+ * min()/max()/clamp() macros must accomplish three things:
+ *
+ * - avoid multiple evaluations of the arguments (so side-effects like
+ *   "x++" happen only once) when non-constant.
+ * - perform strict type-checking (to generate warnings instead of
+ *   nasty runtime surprises). See the "unnecessary" pointer comparison
+ *   in __typecheck().
+ * - retain result as a constant expressions when called with only
+ *   constant expressions (to avoid tripping VLA warnings in stack
+ *   allocation usage).
+ */
+#define __typecheck(x, y) \
+	(!!(sizeof((typeof(x) *)1 == (typeof(y) *)1)))
+
+#define __no_side_effects(x, y) \
+		(__is_constexpr(x) && __is_constexpr(y))
+
+#define __safe_cmp(x, y) \
+		(__typecheck(x, y) && __no_side_effects(x, y))
+
+#define __cmp(x, y, op)	((x) op (y) ? (x) : (y))
+
+#define __cmp_once(x, y, unique_x, unique_y, op) ({	\
+		typeof(x) unique_x = (x);		\
+		typeof(y) unique_y = (y);		\
+		__cmp(unique_x, unique_y, op); })
+
+#define __careful_cmp(x, y, op) \
+	__builtin_choose_expr(__safe_cmp(x, y), \
+		__cmp(x, y, op), \
+		__cmp_once(x, y, __UNIQUE_ID(__x), __UNIQUE_ID(__y), op))
+
+#define __clamp(val, lo, hi)	\
+	((val) >= (hi) ? (hi) : ((val) <= (lo) ? (lo) : (val)))
+
+#define __clamp_once(val, lo, hi, unique_val, unique_lo, unique_hi) ({	\
+		typeof(val) unique_val = (val);				\
+		typeof(lo) unique_lo = (lo);				\
+		typeof(hi) unique_hi = (hi);				\
+		__clamp(unique_val, unique_lo, unique_hi); })
+
+#define __clamp_input_check(lo, hi)					\
+        (BUILD_BUG_ON_ZERO(__builtin_choose_expr(			\
+                __is_constexpr((lo) > (hi)), (lo) > (hi), false)))
+
+#define __careful_clamp(val, lo, hi) ({					\
+	__clamp_input_check(lo, hi) +					\
+	__builtin_choose_expr(__typecheck(val, lo) && __typecheck(val, hi) && \
+			      __typecheck(hi, lo) && __is_constexpr(val) && \
+			      __is_constexpr(lo) && __is_constexpr(hi),	\
+		__clamp(val, lo, hi),					\
+		__clamp_once(val, lo, hi, __UNIQUE_ID(__val),		\
+			     __UNIQUE_ID(__lo), __UNIQUE_ID(__hi))); })
+
+/**
+ * min - return minimum of two values of the same or compatible types
+ * @x: first value
+ * @y: second value
+ */
+#define min(x, y)	__careful_cmp(x, y, <)
+
+/**
+ * max - return maximum of two values of the same or compatible types
+ * @x: first value
+ * @y: second value
+ */
+#define max(x, y)	__careful_cmp(x, y, >)
+
+/**
+ * min3 - return minimum of three values
+ * @x: first value
+ * @y: second value
+ * @z: third value
+ */
+#define min3(x, y, z) min((typeof(x))min(x, y), z)
+
+/**
+ * max3 - return maximum of three values
+ * @x: first value
+ * @y: second value
+ * @z: third value
+ */
+#define max3(x, y, z) max((typeof(x))max(x, y), z)
+
+/**
+ * min_not_zero - return the minimum that is _not_ zero, unless both are zero
+ * @x: value1
+ * @y: value2
+ */
+#define min_not_zero(x, y) ({			\
+	typeof(x) __x = (x);			\
+	typeof(y) __y = (y);			\
+	__x == 0 ? __y : ((__y == 0) ? __x : min(__x, __y)); })
+
+/**
+ * clamp - return a value clamped to a given range with strict typechecking
+ * @val: current value
+ * @lo: lowest allowable value
+ * @hi: highest allowable value
+ *
+ * This macro does strict typechecking of @lo/@hi to make sure they are of the
+ * same type as @val.  See the unnecessary pointer comparisons.
+ */
+#define clamp(val, lo, hi) __careful_clamp(val, lo, hi)
+
+/*
+ * ..and if you can't take the strict
+ * types, you can specify one yourself.
+ *
+ * Or not use min/max/clamp at all, of course.
+ */
+
+/**
+ * min_t - return minimum of two values, using the specified type
+ * @type: data type to use
+ * @x: first value
+ * @y: second value
+ */
+#define min_t(type, x, y)	__careful_cmp((type)(x), (type)(y), <)
+
+/**
+ * max_t - return maximum of two values, using the specified type
+ * @type: data type to use
+ * @x: first value
+ * @y: second value
+ */
+#define max_t(type, x, y)	__careful_cmp((type)(x), (type)(y), >)
+
+/**
+ * clamp_t - return a value clamped to a given range using a given type
+ * @type: the type of variable to use
+ * @val: current value
+ * @lo: minimum allowable value
+ * @hi: maximum allowable value
+ *
+ * This macro does no typechecking and uses temporary variables of type
+ * @type to make all the comparisons.
+ */
+#define clamp_t(type, val, lo, hi) __careful_clamp((type)(val), (type)(lo), (type)(hi))
+
+/**
+ * clamp_val - return a value clamped to a given range using val's type
+ * @val: current value
+ * @lo: minimum allowable value
+ * @hi: maximum allowable value
+ *
+ * This macro does no typechecking and uses temporary variables of whatever
+ * type the input argument @val is.  This is useful when @val is an unsigned
+ * type and @lo and @hi are literals that will otherwise be assigned a signed
+ * integer type.
+ */
+#define clamp_val(val, lo, hi) clamp_t(typeof(val), val, lo, hi)
+
+/**
+ * swap - swap values of @a and @b
+ * @a: first value
+ * @b: second value
+ */
+#define swap(a, b) \
+	do { typeof(a) __tmp = (a); (a) = (b); (b) = __tmp; } while (0)
+
+#endif	/* _LINUX_MINMAX_H */
-- 
2.38.5



