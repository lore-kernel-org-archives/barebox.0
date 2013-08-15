Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V9rzp-0000A9-Gz
 for barebox@lists.infradead.org; Thu, 15 Aug 2013 07:29:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 15 Aug 2013 09:28:58 +0200
Message-Id: <1376551741-16438-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1376551741-16438-1-git-send-email-s.hauer@pengutronix.de>
References: <1376551741-16438-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/8] introduce barebox_set_model
To: barebox@lists.infradead.org

Instead of calling of_get_model() in barebox_get_model() add a
barebox_set_model() and use it to set the boardinfo once it's
available from the devicetree.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/misc.c     | 23 +++++++++++++++--------
 drivers/of/base.c |  3 +++
 include/common.h  |  1 +
 3 files changed, 19 insertions(+), 8 deletions(-)

diff --git a/common/misc.c b/common/misc.c
index 14c3304..bb7d447 100644
--- a/common/misc.c
+++ b/common/misc.c
@@ -18,6 +18,7 @@
 
 #include <common.h>
 #include <errno.h>
+#include <malloc.h>
 
 int errno;
 EXPORT_SYMBOL(errno);
@@ -126,19 +127,25 @@ EXPORT_SYMBOL(perror);
 void (*do_execute)(void *func, int argc, char *argv[]);
 EXPORT_SYMBOL(do_execute);
 
-static const char *model;
+static char *model;
+
+/*
+ * The model is the verbose name of a board. It can contain
+ * whitespaces, uppercase/lowcer letters, digits, ',', '.'
+ * '-', '_'
+ */
+void barebox_set_model(const char *__model)
+{
+	free(model);
+	model = xstrdup(__model);
+}
+EXPORT_SYMBOL(barebox_set_model);
 
 const char *barebox_get_model(void)
 {
 	if (model)
 		return model;
 
-	model = of_get_model();
-	if (model)
-		model = xstrdup(model);
-	else
-		model = CONFIG_BOARDINFO;
-
-	return model;
+	return CONFIG_BOARDINFO;
 }
 EXPORT_SYMBOL(barebox_get_model);
diff --git a/drivers/of/base.c b/drivers/of/base.c
index 4770421..8af51d4 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -1610,6 +1610,9 @@ int of_probe(void)
 	of_chosen = of_find_node_by_path("/chosen");
 	of_property_read_string(root_node, "model", &of_model);
 
+	if (of_model)
+		barebox_set_model(of_model);
+
 	__of_parse_phandles(root_node);
 
 	memory = of_find_node_by_path("/memory");
diff --git a/include/common.h b/include/common.h
index 09b8c39..7d05d8b 100644
--- a/include/common.h
+++ b/include/common.h
@@ -235,6 +235,7 @@ static inline void barebox_banner(void) {}
 #endif
 
 const char *barebox_get_model(void);
+void barebox_set_model(const char *);
 
 #define IOMEM(addr)	((void __force __iomem *)(addr))
 
-- 
1.8.4.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
