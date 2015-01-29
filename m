Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.mei.co.jp ([133.183.100.20])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YGecq-000310-Mh
 for barebox@lists.infradead.org; Thu, 29 Jan 2015 02:14:34 +0000
Received: from mail-gw.jp.panasonic.com ([157.8.1.157])
 by smtp.mei.co.jp (8.12.11.20060614/3.7W/kc-maile13) with ESMTP id
 t0T2EBGE003185
 for <barebox@lists.infradead.org>; Thu, 29 Jan 2015 11:14:11 +0900 (JST)
Received: from epochmail.jp.panasonic.com ([157.8.1.130])
 by mail.jp.panasonic.com (8.11.6p2/3.7W/kc-maili12) with ESMTP id t0T2EBo15096
 for <barebox@lists.infradead.org>; Thu, 29 Jan 2015 11:14:11 +0900
From: Masahiro Yamada <yamada.m@jp.panasonic.com>
Date: Thu, 29 Jan 2015 11:14:06 +0900
Message-Id: <1422497647-28863-3-git-send-email-yamada.m@jp.panasonic.com>
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
Subject: [PATCH 2/3] asm-generic/bug.h: move BUG(), BUG_ON(), WARN(),
 WARN_ON() macros
To: barebox@lists.infradead.org

In Linux, these macros are defined in include/asm-generic/bug.h.
To tidy up common.h, move BUG(), BUG_ON(), WARN(), WARN_ON() there.

Signed-off-by: Masahiro Yamada <yamada.m@jp.panasonic.com>
---

 include/asm-generic/bug.h | 37 +++++++++++++++++++++++++++++++++++++
 include/common.h          | 32 --------------------------------
 include/linux/bug.h       |  2 ++
 3 files changed, 39 insertions(+), 32 deletions(-)
 create mode 100644 include/asm-generic/bug.h

diff --git a/include/asm-generic/bug.h b/include/asm-generic/bug.h
new file mode 100644
index 0000000..8583d24
--- /dev/null
+++ b/include/asm-generic/bug.h
@@ -0,0 +1,37 @@
+#ifndef _ASM_GENERIC_BUG_H
+#define _ASM_GENERIC_BUG_H
+
+#include <linux/compiler.h>
+
+#define BUG() do { \
+	printf("BUG: failure at %s:%d/%s()!\n", __FILE__, __LINE__, __FUNCTION__); \
+	panic("BUG!"); \
+} while (0)
+#define BUG_ON(condition) do { if (unlikely((condition)!=0)) BUG(); } while(0)
+
+
+#define __WARN() do { 								\
+	printf("WARNING: at %s:%d/%s()!\n", __FILE__, __LINE__, __FUNCTION__);	\
+} while (0)
+
+#ifndef WARN_ON
+#define WARN_ON(condition) ({						\
+	int __ret_warn_on = !!(condition);				\
+	if (unlikely(__ret_warn_on))					\
+		__WARN();						\
+	unlikely(__ret_warn_on);					\
+})
+#endif
+
+#ifndef WARN
+#define WARN(condition, format...) ({					\
+	int __ret_warn_on = !!(condition);				\
+	if (unlikely(__ret_warn_on)) {					\
+		__WARN();						\
+		puts("WARNING: ");					\
+		printf(format);						\
+	}								\
+	unlikely(__ret_warn_on);					\
+})
+#endif
+#endif
diff --git a/include/common.h b/include/common.h
index c30f6bd..289f7c9 100644
--- a/include/common.h
+++ b/include/common.h
@@ -50,38 +50,6 @@
 #error "None of __LITTLE_ENDIAN and __BIG_ENDIAN are defined"
 #endif
 
-#define BUG() do { \
-	printf("BUG: failure at %s:%d/%s()!\n", __FILE__, __LINE__, __FUNCTION__); \
-	panic("BUG!"); \
-} while (0)
-#define BUG_ON(condition) do { if (unlikely((condition)!=0)) BUG(); } while(0)
-
-
-#define __WARN() do { 								\
-	printf("WARNING: at %s:%d/%s()!\n", __FILE__, __LINE__, __FUNCTION__);	\
-} while (0)
-
-#ifndef WARN_ON
-#define WARN_ON(condition) ({						\
-	int __ret_warn_on = !!(condition);				\
-	if (unlikely(__ret_warn_on))					\
-		__WARN();						\
-	unlikely(__ret_warn_on);					\
-})
-#endif
-
-#ifndef WARN
-#define WARN(condition, format...) ({					\
-	int __ret_warn_on = !!(condition);				\
-	if (unlikely(__ret_warn_on)) {					\
-		__WARN();						\
-		puts("WARNING: ");					\
-		printf(format);						\
-	}								\
-	unlikely(__ret_warn_on);					\
-})
-#endif
-
 #include <asm/barebox.h> /* boot information for Linux kernel */
 
 /*
diff --git a/include/linux/bug.h b/include/linux/bug.h
index 3449837..7295618 100644
--- a/include/linux/bug.h
+++ b/include/linux/bug.h
@@ -1,6 +1,8 @@
 #ifndef _LINUX_BUG_H
 #define _LINUX_BUG_H
 
+#include <asm-generic/bug.h>
+
 #ifdef __CHECKER__
 #define BUILD_BUG_ON_NOT_POWER_OF_2(n) (0)
 #define BUILD_BUG_ON_ZERO(e) (0)
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
