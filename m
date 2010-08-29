Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 29.mail-out.ovh.net ([87.98.216.213])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OpavT-0005UW-1M
	for barebox@lists.infradead.org; Sun, 29 Aug 2010 05:59:32 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 29 Aug 2010 07:52:25 +0200
Message-Id: <1283061145-27417-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH] module: move EXPORT_SYMBOL_GPL define to module.h
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/mtd/ubi/ubi-barebox.h |    1 -
 include/module.h              |    4 ++++
 2 files changed, 4 insertions(+), 1 deletions(-)

diff --git a/drivers/mtd/ubi/ubi-barebox.h b/drivers/mtd/ubi/ubi-barebox.h
index 84c589f..d23228f 100644
--- a/drivers/mtd/ubi/ubi-barebox.h
+++ b/drivers/mtd/ubi/ubi-barebox.h
@@ -172,7 +172,6 @@ struct cdev_ {
 #define module_put(...)		do { } while (0)
 #define module_init(...)
 #define module_exit(...)
-#define EXPORT_SYMBOL_GPL(...)
 #define module_param_call(...)
 #define MODULE_PARM_DESC(...)
 #define MODULE_VERSION(...)
diff --git a/include/module.h b/include/module.h
index 9d0e803..228a543 100644
--- a/include/module.h
+++ b/include/module.h
@@ -36,6 +36,9 @@ struct module * load_module(void *mod_image, unsigned long len);
 #define EXPORT_SYMBOL(sym)					\
 	__EXPORT_SYMBOL(sym, "")
 
+#define EXPORT_SYMBOL_GPL(sym)					\
+	__EXPORT_SYMBOL(sym, "")
+
 struct module {
 	/* Unique handle for this module */
 	char name[MODULE_NAME_LEN];
@@ -71,6 +74,7 @@ int apply_relocate_add(Elf_Shdr *sechdrs,
 		       struct module *mod);
 #else
 #define EXPORT_SYMBOL(sym)
+#define EXPORT_SYMBOL_GPL(sym)
 #endif /* CONFIG_MODULES */
 
 extern struct list_head module_list;
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
