Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.mei.co.jp ([133.183.100.20])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YGecq-00030q-Mi
 for barebox@lists.infradead.org; Thu, 29 Jan 2015 02:14:33 +0000
Received: from mail-gw.jp.panasonic.com ([157.8.1.157])
 by smtp.mei.co.jp (8.12.11.20060614/3.7W/kc-maile11) with ESMTP id
 t0T2EB3O024682
 for <barebox@lists.infradead.org>; Thu, 29 Jan 2015 11:14:11 +0900 (JST)
Received: from epochmail.jp.panasonic.com ([157.8.1.130])
 by mail.jp.panasonic.com (8.11.6p2/3.7W/kc-maili15) with ESMTP id t0T2EBB25961
 for <barebox@lists.infradead.org>; Thu, 29 Jan 2015 11:14:11 +0900
From: Masahiro Yamada <yamada.m@jp.panasonic.com>
Date: Thu, 29 Jan 2015 11:14:05 +0900
Message-Id: <1422497647-28863-2-git-send-email-yamada.m@jp.panasonic.com>
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
Subject: [PATCH 1/3] linux/bug.h: move BUILD_BUG_ON*() macros
To: barebox@lists.infradead.org

In Linux, the macros BUILD_BUG_ON* are defined in include/linux/bug.h.
To tidy up common.h, move BUILD_BUG_* there.

MAYBE_BUILD_BUG_ON is not used in barebox and it was removed from Linux
long time ago.  Drop it from barebox, too.

Signed-off-by: Masahiro Yamada <yamada.m@jp.panasonic.com>
---

 include/common.h    | 20 +-------------------
 include/linux/bug.h | 28 ++++++++++++++++++++++++++++
 2 files changed, 29 insertions(+), 19 deletions(-)
 create mode 100644 include/linux/bug.h

diff --git a/include/common.h b/include/common.h
index f3f5c0f..c30f6bd 100644
--- a/include/common.h
+++ b/include/common.h
@@ -27,6 +27,7 @@
 #include <linux/types.h>
 #include <linux/string.h>
 #include <linux/kernel.h>
+#include <linux/bug.h>
 #include <linux/stddef.h>
 #include <asm/common.h>
 #include <printk.h>
@@ -175,25 +176,6 @@ static inline char *shell_expand(char *str)
 }
 #endif
 
-/* Force a compilation error if condition is true */
-#define BUILD_BUG_ON(condition) ((void)BUILD_BUG_ON_ZERO(condition))
-
-/* Force a compilation error if condition is constant and true */
-#define MAYBE_BUILD_BUG_ON(cond) ((void)sizeof(char[1 - 2 * !!(cond)]))
-
-/* Force a compilation error if a constant expression is not a power of 2 */
-#define BUILD_BUG_ON_NOT_POWER_OF_2(n)			\
-	BUILD_BUG_ON((n) == 0 || (((n) & ((n) - 1)) != 0))
-
-/*
- * Force a compilation error if condition is true, but also produce a
- * result (of value 0 and type size_t), so the expression can be used
- * e.g. in a structure initializer (or where-ever else comma
- * expressions aren't permitted).
- */
-#define BUILD_BUG_ON_ZERO(e) (sizeof(struct { int:-!!(e); }))
-#define BUILD_BUG_ON_NULL(e) ((void *)sizeof(struct { int:-!!(e); }))
-
 #define ALIGN(x, a)		__ALIGN_MASK(x, (typeof(x))(a) - 1)
 #define __ALIGN_MASK(x, mask)	(((x) + (mask)) & ~(mask))
 #define ALIGN_DOWN(x, a)	((x) & ~((typeof(x))(a) - 1))
diff --git a/include/linux/bug.h b/include/linux/bug.h
new file mode 100644
index 0000000..3449837
--- /dev/null
+++ b/include/linux/bug.h
@@ -0,0 +1,28 @@
+#ifndef _LINUX_BUG_H
+#define _LINUX_BUG_H
+
+#ifdef __CHECKER__
+#define BUILD_BUG_ON_NOT_POWER_OF_2(n) (0)
+#define BUILD_BUG_ON_ZERO(e) (0)
+#define BUILD_BUG_ON_NULL(e) ((void*)0)
+#define BUILD_BUG_ON(condition) (0)
+#else /* __CHECKER__ */
+
+/* Force a compilation error if a constant expression is not a power of 2 */
+#define BUILD_BUG_ON_NOT_POWER_OF_2(n)			\
+	BUILD_BUG_ON((n) == 0 || (((n) & ((n) - 1)) != 0))
+
+/* Force a compilation error if condition is true, but also produce a
+   result (of value 0 and type size_t), so the expression can be used
+   e.g. in a structure initializer (or where-ever else comma expressions
+   aren't permitted). */
+#define BUILD_BUG_ON_ZERO(e) (sizeof(struct { int:-!!(e); }))
+#define BUILD_BUG_ON_NULL(e) ((void *)sizeof(struct { int:-!!(e); }))
+
+/* Force a compilation error if condition is true */
+#define BUILD_BUG_ON(condition) ((void)BUILD_BUG_ON_ZERO(condition))
+
+#endif
+
+
+#endif	/* _LINUX_BUG_H */
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
