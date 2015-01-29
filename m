Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.mei.co.jp ([133.183.100.20])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YGecq-00030x-Mg
 for barebox@lists.infradead.org; Thu, 29 Jan 2015 02:14:33 +0000
Received: from mail-gw.jp.panasonic.com ([157.8.1.157])
 by smtp.mei.co.jp (8.12.11.20060614/3.7W/kc-maile12) with ESMTP id
 t0T2EBj5016426
 for <barebox@lists.infradead.org>; Thu, 29 Jan 2015 11:14:11 +0900 (JST)
Received: from epochmail.jp.panasonic.com ([157.8.1.130])
 by mail.jp.panasonic.com (8.11.6p2/3.7W/kc-maili15) with ESMTP id t0T2EBB25974
 for <barebox@lists.infradead.org>; Thu, 29 Jan 2015 11:14:11 +0900
From: Masahiro Yamada <yamada.m@jp.panasonic.com>
Date: Thu, 29 Jan 2015 11:14:07 +0900
Message-Id: <1422497647-28863-4-git-send-email-yamada.m@jp.panasonic.com>
In-Reply-To: <1422497647-28863-1-git-send-email-yamada.m@jp.panasonic.com>
References: <1422497647-28863-1-git-send-email-yamada.m@jp.panasonic.com>
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
Subject: [PATCH 3/3] linux/kernel.h: move some macros and prototypes
To: barebox@lists.infradead.org

The include/common.h is still cluttered (although much better than
U-Boot).  It contains various utility macros that originates
in Linux.  Move them to the original place, include/linux/kernel.h,
to slim down include/common.h.

Signed-off-by: Masahiro Yamada <yamada.m@jp.panasonic.com>
---

 include/common.h       | 58 -----------------------------------------------
 include/linux/kernel.h | 61 ++++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 61 insertions(+), 58 deletions(-)

diff --git a/include/common.h b/include/common.h
index 289f7c9..eef371c 100644
--- a/include/common.h
+++ b/include/common.h
@@ -27,7 +27,6 @@
 #include <linux/types.h>
 #include <linux/string.h>
 #include <linux/kernel.h>
-#include <linux/bug.h>
 #include <linux/stddef.h>
 #include <asm/common.h>
 #include <printk.h>
@@ -58,7 +57,6 @@
 void reginfo(void);
 
 void __noreturn hang (void);
-void __noreturn panic(const char *fmt, ...);
 
 char *size_human_readable(unsigned long long size);
 
@@ -76,11 +74,6 @@ void __noreturn poweroff(void);
 void	udelay (unsigned long);
 void	mdelay (unsigned long);
 
-/* lib_generic/vsprintf.c */
-ulong	simple_strtoul(const char *cp,char **endp,unsigned int base);
-unsigned long long	simple_strtoull(const char *cp,char **endp,unsigned int base);
-long	simple_strtol(const char *cp,char **endp,unsigned int base);
-
 /* lib_generic/crc32.c */
 uint32_t crc32(uint32_t, const void*, unsigned int);
 uint32_t crc32_no_comp(uint32_t, const void*, unsigned int);
@@ -144,13 +137,8 @@ static inline char *shell_expand(char *str)
 }
 #endif
 
-#define ALIGN(x, a)		__ALIGN_MASK(x, (typeof(x))(a) - 1)
-#define __ALIGN_MASK(x, mask)	(((x) + (mask)) & ~(mask))
 #define ALIGN_DOWN(x, a)	((x) & ~((typeof(x))(a) - 1))
-#define PTR_ALIGN(p, a)		((typeof(p))ALIGN((unsigned long)(p), (a)))
-#define IS_ALIGNED(x, a)		(((x) & ((typeof(x))(a) - 1)) == 0)
 
-#define ARRAY_SIZE(arr)		(sizeof(arr) / sizeof((arr)[0]) + __must_be_array(arr))
 #define ARRAY_AND_SIZE(x)	(x), ARRAY_SIZE(x)
 
 /*
@@ -164,17 +152,6 @@ static inline char *shell_expand(char *str)
 	char __##name[sizeof(type) * (size) + (align) - 1];	\
 	type *name = (type *)ALIGN((uintptr_t)__##name, align)
 
-/**
- * container_of - cast a member of a structure out to the containing structure
- * @ptr:	the pointer to the member.
- * @type:	the type of the container struct this is embedded in.
- * @member:	the name of the member within the struct.
- *
- */
-#define container_of(ptr, type, member) ({			\
-	const typeof( ((type *)0)->member ) *__mptr = (ptr);	\
-	(type *)( (char *)__mptr - offsetof(type,member) );})
-
 #define PAGE_SIZE	4096
 #define PAGE_SHIFT	12
 #define PAGE_ALIGN(s) (((s) + PAGE_SIZE - 1) & ~(PAGE_SIZE - 1))
@@ -216,41 +193,6 @@ void barebox_set_hostname(const char *);
 #define IOMEM(addr)	((void __force __iomem *)(addr))
 #endif
 
-#define DIV_ROUND_UP(n,d)	(((n) + (d) - 1) / (d))
-
-#define DIV_ROUND_CLOSEST(x, divisor)(			\
-{							\
-	typeof(divisor) __divisor = divisor;		\
-	(((x) + ((__divisor) / 2)) / (__divisor));	\
-}							\
-)
-
-/**
- * upper_32_bits - return bits 32-63 of a number
- * @n: the number we're accessing
- *
- * A basic shift-right of a 64- or 32-bit quantity.  Use this to suppress
- * the "right shift count >= width of type" warning when that quantity is
- * 32-bits.
- */
-#define upper_32_bits(n)	((u32)(((n) >> 16) >> 16))
-
-/**
- * lower_32_bits - return bits 0-31 of a number
- * @n: the number we're accessing
- */
-#define lower_32_bits(n)	((u32)(n))
-
-#define abs(x) ({                               \
-		long __x = (x);                 \
-		(__x < 0) ? -__x : __x;         \
-	})
-
-#define abs64(x) ({                             \
-		s64 __x = (x);                  \
-		(__x < 0) ? -__x : __x;         \
-	})
-
 /*
  * Check if two regions overlap. returns true if they do, false otherwise
  */
diff --git a/include/linux/kernel.h b/include/linux/kernel.h
index a039590..3f2644c 100644
--- a/include/linux/kernel.h
+++ b/include/linux/kernel.h
@@ -2,6 +2,7 @@
 #define _LINUX_KERNEL_H
 
 #include <linux/compiler.h>
+#include <linux/bug.h>
 #include <linux/barebox-wrapper.h>
 
 #define USHRT_MAX	((u16)(~0U))
@@ -31,6 +32,13 @@
 #define S64_MAX		((s64)(U64_MAX>>1))
 #define S64_MIN		((s64)(-S64_MAX - 1))
 
+#define ALIGN(x, a)		__ALIGN_MASK(x, (typeof(x))(a) - 1)
+#define __ALIGN_MASK(x, mask)	(((x) + (mask)) & ~(mask))
+#define PTR_ALIGN(p, a)		((typeof(p))ALIGN((unsigned long)(p), (a)))
+#define IS_ALIGNED(x, a)		(((x) & ((typeof(x))(a) - 1)) == 0)
+
+#define ARRAY_SIZE(arr) (sizeof(arr) / sizeof((arr)[0]) + __must_be_array(arr))
+
 /*
  * This looks more complex than it should be. But we need to
  * get the type for the ~ right in round_down (it needs to be
@@ -44,6 +52,47 @@
 #define round_up(x, y) ((((x)-1) | __round_mask(x, y))+1)
 #define round_down(x, y) ((x) & ~__round_mask(x, y))
 
+#define DIV_ROUND_UP(n,d) (((n) + (d) - 1) / (d))
+
+#define DIV_ROUND_CLOSEST(x, divisor)(			\
+{							\
+	typeof(divisor) __divisor = divisor;		\
+	(((x) + ((__divisor) / 2)) / (__divisor));	\
+}							\
+)
+
+/**
+ * upper_32_bits - return bits 32-63 of a number
+ * @n: the number we're accessing
+ *
+ * A basic shift-right of a 64- or 32-bit quantity.  Use this to suppress
+ * the "right shift count >= width of type" warning when that quantity is
+ * 32-bits.
+ */
+#define upper_32_bits(n) ((u32)(((n) >> 16) >> 16))
+
+/**
+ * lower_32_bits - return bits 0-31 of a number
+ * @n: the number we're accessing
+ */
+#define lower_32_bits(n) ((u32)(n))
+
+#define abs(x) ({                               \
+		long __x = (x);                 \
+		(__x < 0) ? -__x : __x;         \
+	})
+
+#define abs64(x) ({                             \
+		s64 __x = (x);                  \
+		(__x < 0) ? -__x : __x;         \
+	})
+
+void __noreturn panic(const char *fmt, ...);
+
+extern unsigned long simple_strtoul(const char *,char **,unsigned int);
+extern long simple_strtol(const char *,char **,unsigned int);
+extern unsigned long long simple_strtoull(const char *,char **,unsigned int);
+
 /*
  * min()/max()/clamp() macros that also do
  * strict type-checking.. See the
@@ -197,4 +246,16 @@ static inline char *hex_byte_pack_upper(char *buf, u8 byte)
 	return buf;
 }
 
+/**
+ * container_of - cast a member of a structure out to the containing structure
+ * @ptr:	the pointer to the member.
+ * @type:	the type of the container struct this is embedded in.
+ * @member:	the name of the member within the struct.
+ *
+ */
+#define container_of(ptr, type, member) ({			\
+	const typeof( ((type *)0)->member ) *__mptr = (ptr);	\
+	(type *)( (char *)__mptr - offsetof(type,member) );})
+
+
 #endif /* _LINUX_KERNEL_H */
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
