Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ft2J0-00028e-1T
 for barebox@lists.infradead.org; Fri, 24 Aug 2018 02:58:35 +0000
Received: by mail-pg1-x544.google.com with SMTP id b129-v6so3592172pga.13
 for <barebox@lists.infradead.org>; Thu, 23 Aug 2018 19:58:26 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 23 Aug 2018 19:58:13 -0700
Message-Id: <20180824025814.20886-5-andrew.smirnov@gmail.com>
In-Reply-To: <20180824025814.20886-1-andrew.smirnov@gmail.com>
References: <20180824025814.20886-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 4/5] linux/log2.h: fix kernel-doc notation
To: barebox@lists.infradead.org
Cc: andrew.smirnov@gmail.com

From: Randy Dunlap <rdunlap@infradead.org>

Fix <linux/log2.h> kernel-doc:
- Add kernel-doc notation to some functions.
- Fix kernel-doc notation in function parameters.

Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
Signed-off-by: Jonathan Corbet <corbet@lwn.net>
[andrew.smirnov@gmail.com: Applied kernel patch to Barebox as-is]
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 include/linux/log2.h | 42 +++++++++++++++++++++++-------------------
 1 file changed, 23 insertions(+), 19 deletions(-)

diff --git a/include/linux/log2.h b/include/linux/log2.h
index c373295f3..41a1ae010 100644
--- a/include/linux/log2.h
+++ b/include/linux/log2.h
@@ -37,19 +37,23 @@ int __ilog2_u64(u64 n)
 }
 #endif
 
-/*
- *  Determine whether some value is a power of two, where zero is
+/**
+ * is_power_of_2() - check if a value is a power of two
+ * @n: the value to check
+ *
+ * Determine whether some value is a power of two, where zero is
  * *not* considered a power of two.
+ * Return: true if @n is a power of 2, otherwise false.
  */
-
 static inline __attribute__((const))
 bool is_power_of_2(unsigned long n)
 {
 	return (n != 0 && ((n & (n - 1)) == 0));
 }
 
-/*
- * round up to nearest power of two
+/**
+ * __roundup_pow_of_two() - round up to nearest power of two
+ * @n: value to round up
  */
 static inline __attribute__((const))
 unsigned long __roundup_pow_of_two(unsigned long n)
@@ -57,8 +61,9 @@ unsigned long __roundup_pow_of_two(unsigned long n)
 	return 1UL << fls_long(n - 1);
 }
 
-/*
- * round down to nearest power of two
+/**
+ * __rounddown_pow_of_two() - round down to nearest power of two
+ * @n: value to round down
  */
 static inline __attribute__((const))
 unsigned long __rounddown_pow_of_two(unsigned long n)
@@ -67,12 +72,12 @@ unsigned long __rounddown_pow_of_two(unsigned long n)
 }
 
 /**
- * ilog2 - log of base 2 of 32-bit or a 64-bit unsigned value
- * @n - parameter
+ * ilog2 - log base 2 of 32-bit or a 64-bit unsigned value
+ * @n: parameter
  *
  * constant-capable log of base 2 calculation
  * - this can be used to initialise global variables from constant data, hence
- *   the massive ternary operator construction
+ * the massive ternary operator construction
  *
  * selects the appropriately-sized optimised version depending on sizeof(n)
  */
@@ -150,7 +155,7 @@ unsigned long __rounddown_pow_of_two(unsigned long n)
 
 /**
  * roundup_pow_of_two - round the given value up to nearest power of two
- * @n - parameter
+ * @n: parameter
  *
  * round the given value up to the nearest power of two
  * - the result is undefined when n == 0
@@ -167,7 +172,7 @@ unsigned long __rounddown_pow_of_two(unsigned long n)
 
 /**
  * rounddown_pow_of_two - round the given value down to nearest power of two
- * @n - parameter
+ * @n: parameter
  *
  * round the given value down to the nearest power of two
  * - the result is undefined when n == 0
@@ -180,6 +185,12 @@ unsigned long __rounddown_pow_of_two(unsigned long n)
 	__rounddown_pow_of_two(n)		\
  )
 
+static inline __attribute_const__
+int __order_base_2(unsigned long n)
+{
+	return n > 1 ? ilog2(n - 1) + 1 : 0;
+}
+
 /**
  * order_base_2 - calculate the (rounded up) base 2 order of the argument
  * @n: parameter
@@ -193,13 +204,6 @@ unsigned long __rounddown_pow_of_two(unsigned long n)
  *  ob2(5) = 3
  *  ... and so on.
  */
-
-static inline __attribute_const__
-int __order_base_2(unsigned long n)
-{
-	return n > 1 ? ilog2(n - 1) + 1 : 0;
-}
-
 #define order_base_2(n)				\
 (						\
 	__builtin_constant_p(n) ? (		\
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
