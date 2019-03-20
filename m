Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-08.nifty.com ([210.131.2.75])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h6Vxz-0002tW-Am
 for barebox@lists.infradead.org; Wed, 20 Mar 2019 07:48:53 +0000
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Wed, 20 Mar 2019 16:48:33 +0900
Message-Id: <1553068113-13704-1-git-send-email-yamada.masahiro@socionext.com>
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
Subject: [PATCH] linux/kernel.h: split *_MAX and *_MIN macros into
 <linux/limits.h>
To: barebox@lists.infradead.org

Copy include/linuxlimits.h from Linux 5.1-rc1
(removing #include <uapi/linux/limits.h>).

While we are here, add SPDX License tag to <linux/kernel.h>.

Based on the following Linux commits:

 - 54d50897d544 ("linux/kernel.h: split *_MAX and *_MIN macros
   into <linux/limits.h>")

 - 2dc0e68d5ada ("linux/kernel.h: use 'short' to define USHRT_MAX,
   SHRT_MAX, SHRT_MIN")

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 include/linux/kernel.h | 29 ++---------------------------
 include/linux/limits.h | 35 +++++++++++++++++++++++++++++++++++
 2 files changed, 37 insertions(+), 27 deletions(-)
 create mode 100644 include/linux/limits.h

diff --git a/include/linux/kernel.h b/include/linux/kernel.h
index 849c079..b320f7e 100644
--- a/include/linux/kernel.h
+++ b/include/linux/kernel.h
@@ -1,36 +1,11 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 #ifndef _LINUX_KERNEL_H
 #define _LINUX_KERNEL_H
 
 #include <linux/compiler.h>
 #include <linux/bug.h>
 #include <linux/barebox-wrapper.h>
-
-#define USHRT_MAX	((u16)(~0U))
-#define SHRT_MAX	((s16)(USHRT_MAX>>1))
-#define SHRT_MIN	((s16)(-SHRT_MAX - 1))
-#define INT_MAX		((int)(~0U>>1))
-#define INT_MIN		(-INT_MAX - 1)
-#define UINT_MAX	(~0U)
-#define LONG_MAX	((long)(~0UL>>1))
-#define LONG_MIN	(-LONG_MAX - 1)
-#define ULONG_MAX	(~0UL)
-#define LLONG_MAX	((long long)(~0ULL>>1))
-#define LLONG_MIN	(-LLONG_MAX - 1)
-#define ULLONG_MAX	(~0ULL)
-#define SIZE_MAX	(~(size_t)0)
-
-#define U8_MAX		((u8)~0U)
-#define S8_MAX		((s8)(U8_MAX>>1))
-#define S8_MIN		((s8)(-S8_MAX - 1))
-#define U16_MAX		((u16)~0U)
-#define S16_MAX		((s16)(U16_MAX>>1))
-#define S16_MIN		((s16)(-S16_MAX - 1))
-#define U32_MAX		((u32)~0U)
-#define S32_MAX		((s32)(U32_MAX>>1))
-#define S32_MIN		((s32)(-S32_MAX - 1))
-#define U64_MAX		((u64)~0ULL)
-#define S64_MAX		((s64)(U64_MAX>>1))
-#define S64_MIN		((s64)(-S64_MAX - 1))
+#include <linux/limits.h>
 
 #define ALIGN(x, a)		__ALIGN_MASK(x, (typeof(x))(a) - 1)
 #define ALIGN_DOWN(x, a)	ALIGN((x) - ((a) - 1), (a))
diff --git a/include/linux/limits.h b/include/linux/limits.h
new file mode 100644
index 0000000..bda9c94
--- /dev/null
+++ b/include/linux/limits.h
@@ -0,0 +1,35 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _LINUX_LIMITS_H
+#define _LINUX_LIMITS_H
+
+#include <linux/types.h>
+
+#define USHRT_MAX	((unsigned short)~0U)
+#define SHRT_MAX	((short)(USHRT_MAX >> 1))
+#define SHRT_MIN	((short)(-SHRT_MAX - 1))
+#define INT_MAX		((int)(~0U >> 1))
+#define INT_MIN		(-INT_MAX - 1)
+#define UINT_MAX	(~0U)
+#define LONG_MAX	((long)(~0UL >> 1))
+#define LONG_MIN	(-LONG_MAX - 1)
+#define ULONG_MAX	(~0UL)
+#define LLONG_MAX	((long long)(~0ULL >> 1))
+#define LLONG_MIN	(-LLONG_MAX - 1)
+#define ULLONG_MAX	(~0ULL)
+#define SIZE_MAX	(~(size_t)0)
+#define PHYS_ADDR_MAX	(~(phys_addr_t)0)
+
+#define U8_MAX		((u8)~0U)
+#define S8_MAX		((s8)(U8_MAX >> 1))
+#define S8_MIN		((s8)(-S8_MAX - 1))
+#define U16_MAX		((u16)~0U)
+#define S16_MAX		((s16)(U16_MAX >> 1))
+#define S16_MIN		((s16)(-S16_MAX - 1))
+#define U32_MAX		((u32)~0U)
+#define S32_MAX		((s32)(U32_MAX >> 1))
+#define S32_MIN		((s32)(-S32_MAX - 1))
+#define U64_MAX		((u64)~0ULL)
+#define S64_MAX		((s64)(U64_MAX >> 1))
+#define S64_MIN		((s64)(-S64_MAX - 1))
+
+#endif /* _LINUX_LIMITS_H */
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
