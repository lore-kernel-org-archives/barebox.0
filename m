Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NhOhW-0005fN-N3
	for barebox@lists.infradead.org; Tue, 16 Feb 2010 14:47:09 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Tue, 16 Feb 2010 15:46:26 +0100
Message-Id: <1266331586-11253-12-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1266331586-11253-11-git-send-email-mkl@pengutronix.de>
References: <1266331586-11253-1-git-send-email-mkl@pengutronix.de>
	<1266331586-11253-2-git-send-email-mkl@pengutronix.de>
	<1266331586-11253-3-git-send-email-mkl@pengutronix.de>
	<1266331586-11253-4-git-send-email-mkl@pengutronix.de>
	<1266331586-11253-5-git-send-email-mkl@pengutronix.de>
	<1266331586-11253-6-git-send-email-mkl@pengutronix.de>
	<1266331586-11253-7-git-send-email-mkl@pengutronix.de>
	<1266331586-11253-8-git-send-email-mkl@pengutronix.de>
	<1266331586-11253-9-git-send-email-mkl@pengutronix.de>
	<1266331586-11253-10-git-send-email-mkl@pengutronix.de>
	<1266331586-11253-11-git-send-email-mkl@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 11/11] common.h: add compile time check helper functions
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 include/common.h |   31 +++++++++++++++++++++++++++++--
 1 files changed, 29 insertions(+), 2 deletions(-)

diff --git a/include/common.h b/include/common.h
index 2b40954..76e9be9 100644
--- a/include/common.h
+++ b/include/common.h
@@ -45,7 +45,7 @@
 #ifdef DEBUG
 #define pr_debug(fmt, arg...)	printf(fmt, ##arg)
 #else
-#define pr_debug(fmt, arg...) do {} while(0)
+#define pr_debug(fmt, arg...)	do {} while(0)
 #endif
 
 #define debug(fmt, arg...)	pr_debug(fmt, ##arg)
@@ -138,7 +138,32 @@ int arch_execute(void *, int argc, char *argv[]);
 
 int run_shell(void);
 
-#define ARRAY_SIZE(x) (sizeof(x) / sizeof((x)[0]))
+/* Force a compilation error if condition is true */
+#define BUILD_BUG_ON(condition) ((void)BUILD_BUG_ON_ZERO(condition))
+
+/* Force a compilation error if condition is constant and true */
+#define MAYBE_BUILD_BUG_ON(cond) ((void)sizeof(char[1 - 2 * !!(cond)]))
+
+/* Force a compilation error if a constant expression is not a power of 2 */
+#define BUILD_BUG_ON_NOT_POWER_OF_2(n)			\
+	BUILD_BUG_ON((n) == 0 || (((n) & ((n) - 1)) != 0))
+
+/*
+ * Force a compilation error if condition is true, but also produce a
+ * result (of value 0 and type size_t), so the expression can be used
+ * e.g. in a structure initializer (or where-ever else comma
+ * expressions aren't permitted).
+ */
+#define BUILD_BUG_ON_ZERO(e) (sizeof(struct { int:-!!(e); }))
+#define BUILD_BUG_ON_NULL(e) ((void *)sizeof(struct { int:-!!(e); }))
+
+#define ALIGN(x,a)		__ALIGN_MASK(x,(typeof(x))(a)-1)
+#define __ALIGN_MASK(x,mask)	(((x)+(mask))&~(mask))
+#define PTR_ALIGN(p, a)		((typeof(p))ALIGN((unsigned long)(p), (a)))
+#define IS_ALIGNED(x, a)		(((x) & ((typeof(x))(a) - 1)) == 0)
+
+#define ARRAY_SIZE(arr)		(sizeof(arr) / sizeof((arr)[0]) + __must_be_array(arr))
+#define ARRAY_AND_SIZE(x)	(x), ARRAY_SIZE(x)
 
 /**
  * container_of - cast a member of a structure out to the containing structure
@@ -164,4 +189,6 @@ int run_shell(void);
 #define LLONG_MIN	(-LLONG_MAX - 1)
 #define ULLONG_MAX	(~0ULL)
 
+#define PAGE_SIZE	4096
+
 #endif	/* __COMMON_H_ */
-- 
1.6.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
