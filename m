Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 31.mail-out.ovh.net ([213.186.62.10])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Opkgd-0000AI-Dn
	for barebox@lists.infradead.org; Sun, 29 Aug 2010 16:24:52 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 29 Aug 2010 18:24:22 +0200
Message-Id: <1283099062-20675-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH] add WARN_ON and WARN support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 include/common.h |   25 +++++++++++++++++++++++++
 1 files changed, 25 insertions(+), 0 deletions(-)

diff --git a/include/common.h b/include/common.h
index 0edc778..64f49db 100644
--- a/include/common.h
+++ b/include/common.h
@@ -56,6 +56,31 @@
 } while (0)
 #define BUG_ON(condition) do { if (unlikely((condition)!=0)) BUG(); } while(0)
 
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
+	if (unlikely(__ret_warn_on))					\
+		__WARN();						\
+		puts("WARNING: ");					\
+		printf(format);						\
+	unlikely(__ret_warn_on);					\
+})
+#endif
+
 typedef void (interrupt_handler_t)(void *);
 
 #include <asm/barebox.h> /* boot information for Linux kernel */
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
