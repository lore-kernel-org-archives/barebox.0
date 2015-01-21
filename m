Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.mei.co.jp ([133.183.100.20])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YDnY0-00052j-21
 for barebox@lists.infradead.org; Wed, 21 Jan 2015 05:09:45 +0000
Received: from mail-gw.jp.panasonic.com ([157.8.1.157])
 by smtp.mei.co.jp (8.12.11.20060614/3.7W/kc-maile12) with ESMTP id
 t0L59MVY018772
 for <barebox@lists.infradead.org>; Wed, 21 Jan 2015 14:09:22 +0900 (JST)
Received: from epochmail.jp.panasonic.com ([157.8.1.130])
 by mail.jp.panasonic.com (8.11.6p2/3.7W/kc-maili17) with ESMTP id t0L59MA24750
 for <barebox@lists.infradead.org>; Wed, 21 Jan 2015 14:09:22 +0900
From: Masahiro Yamada <yamada.m@jp.panasonic.com>
Date: Wed, 21 Jan 2015 14:09:17 +0900
Message-Id: <1421816959-19004-4-git-send-email-yamada.m@jp.panasonic.com>
In-Reply-To: <1421816959-19004-1-git-send-email-yamada.m@jp.panasonic.com>
References: <1421816959-19004-1-git-send-email-yamada.m@jp.panasonic.com>
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
Subject: [PATCH 3/5] linux/kernel.h: move *_MAX, *_MIN macros
To: barebox@lists.infradead.org

Linux defines *_MAX, *_MIN macros in include/linux/kernel.h.
Let's follow this way to slim down the common.h.

This change should have no impact because include/common.h already
includes <linux/kernel.h>.

Signed-off-by: Masahiro Yamada <yamada.m@jp.panasonic.com>
---

 include/common.h       | 13 -------------
 include/linux/kernel.h | 13 +++++++++++++
 2 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/include/common.h b/include/common.h
index fca9798..f3f5c0f 100644
--- a/include/common.h
+++ b/include/common.h
@@ -225,19 +225,6 @@ static inline char *shell_expand(char *str)
 	const typeof( ((type *)0)->member ) *__mptr = (ptr);	\
 	(type *)( (char *)__mptr - offsetof(type,member) );})
 
-#define USHORT_MAX	((u16)(~0U))
-#define SHORT_MAX	((s16)(USHORT_MAX>>1))
-#define SHORT_MIN	(-SHORT_MAX - 1)
-#define INT_MAX		((int)(~0U>>1))
-#define INT_MIN		(-INT_MAX - 1)
-#define UINT_MAX	(~0U)
-#define LONG_MAX	((long)(~0UL>>1))
-#define LONG_MIN	(-LONG_MAX - 1)
-#define ULONG_MAX	(~0UL)
-#define LLONG_MAX	((long long)(~0ULL>>1))
-#define LLONG_MIN	(-LLONG_MAX - 1)
-#define ULLONG_MAX	(~0ULL)
-
 #define PAGE_SIZE	4096
 #define PAGE_SHIFT	12
 #define PAGE_ALIGN(s) (((s) + PAGE_SIZE - 1) & ~(PAGE_SIZE - 1))
diff --git a/include/linux/kernel.h b/include/linux/kernel.h
index 98f12e1..33cf62e 100644
--- a/include/linux/kernel.h
+++ b/include/linux/kernel.h
@@ -4,6 +4,19 @@
 #include <linux/compiler.h>
 #include <linux/barebox-wrapper.h>
 
+#define USHORT_MAX	((u16)(~0U))
+#define SHORT_MAX	((s16)(USHORT_MAX>>1))
+#define SHORT_MIN	(-SHORT_MAX - 1)
+#define INT_MAX		((int)(~0U>>1))
+#define INT_MIN		(-INT_MAX - 1)
+#define UINT_MAX	(~0U)
+#define LONG_MAX	((long)(~0UL>>1))
+#define LONG_MIN	(-LONG_MAX - 1)
+#define ULONG_MAX	(~0UL)
+#define LLONG_MAX	((long long)(~0ULL>>1))
+#define LLONG_MIN	(-LLONG_MAX - 1)
+#define ULLONG_MAX	(~0ULL)
+
 /*
  * This looks more complex than it should be. But we need to
  * get the type for the ~ right in round_down (it needs to be
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
