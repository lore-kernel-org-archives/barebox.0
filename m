Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo3.mail-out.ovh.net ([87.98.172.249]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RkyOA-0004cT-E9
 for barebox@lists.infradead.org; Wed, 11 Jan 2012 13:38:52 +0000
Received: from mail617.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id CDC68FFAFEB
 for <barebox@lists.infradead.org>; Wed, 11 Jan 2012 14:40:07 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 11 Jan 2012 14:31:55 +0100
Message-Id: <1326288716-1342-5-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120111132914.GB958@game.jcrosoft.org>
References: <20120111132914.GB958@game.jcrosoft.org>
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
Subject: [PATCH 5/6] param: add config to disable it
To: barebox@lists.infradead.org

this will allow to save 992 Bytes for TI xlaoder or AT91 bootstrap

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/Kconfig     |    2 +
 drivers/mtd/core.c |   18 +++++++++-------
 include/param.h    |   53 ++++++++++++++++++++++++++++++++++++++++++++++++++++
 lib/Kconfig        |    3 ++
 lib/Makefile       |    2 +-
 5 files changed, 69 insertions(+), 9 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index 20e4050..382e591 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -258,6 +258,7 @@ choice
 		bool "hush parser"
 		select ENVIRONMENT_VARIABLES
 		select COMMAND_SUPPORT
+		select PARAMETER
 		help
 		  Enable hush support. This is the most advanced shell available
 		  for barebox.
@@ -266,6 +267,7 @@ choice
 		bool "Simple parser"
 		select ENVIRONMENT_VARIABLES
 		select COMMAND_SUPPORT
+		select PARAMETER
 		help
 		  simple shell. No if/then, no return values from commands, no loops
 
diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index f25863d..491cc1f 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -204,14 +204,16 @@ int add_mtd_device(struct mtd_info *mtd, char *devname)
 	mtd->cdev.dev = &mtd->class_dev;
 	mtd->cdev.mtd = mtd;
 
-	sprintf(str, "%u", mtd->size);
-	dev_add_param_fixed(&mtd->class_dev, "size", str);
-	sprintf(str, "%u", mtd->erasesize);
-	dev_add_param_fixed(&mtd->class_dev, "erasesize", str);
-	sprintf(str, "%u", mtd->writesize);
-	dev_add_param_fixed(&mtd->class_dev, "writesize", str);
-	sprintf(str, "%u", mtd->oobsize);
-	dev_add_param_fixed(&mtd->class_dev, "oobsize", str);
+	if (IS_ENABLED(CONFIG_PARAMETER)) {
+		sprintf(str, "%u", mtd->size);
+		dev_add_param_fixed(&mtd->class_dev, "size", str);
+		sprintf(str, "%u", mtd->erasesize);
+		dev_add_param_fixed(&mtd->class_dev, "erasesize", str);
+		sprintf(str, "%u", mtd->writesize);
+		dev_add_param_fixed(&mtd->class_dev, "writesize", str);
+		sprintf(str, "%u", mtd->oobsize);
+		dev_add_param_fixed(&mtd->class_dev, "oobsize", str);
+	}
 
 	devfs_create(&mtd->cdev);
 
diff --git a/include/param.h b/include/param.h
index 207ad50..4a39dc7 100644
--- a/include/param.h
+++ b/include/param.h
@@ -19,6 +19,7 @@ struct param_d {
 	struct list_head list;
 };
 
+#ifdef CONFIG_PARAMETER
 const char *dev_get_param(struct device_d *dev, const char *name);
 int dev_set_param(struct device_d *dev, const char *name, const char *val);
 struct param_d *get_param_by_name(struct device_d *dev, const char *name);
@@ -40,6 +41,58 @@ int dev_set_param_ip(struct device_d *dev, char *name, IPaddr_t ip);
 IPaddr_t dev_get_param_ip(struct device_d *dev, char *name);
 
 int global_add_parameter(struct param_d *param);
+#else
+static inline const char *dev_get_param(struct device_d *dev, const char *name)
+{
+	return NULL;
+}
+static inline int dev_set_param(struct device_d *dev, const char *name,
+				const char *val)
+{
+	return 0;
+}
+static inline struct param_d *get_param_by_name(struct device_d *dev,
+						const char *name)
+{
+	return NULL;
+}
+
+static inline int dev_add_param(struct device_d *dev, char *name,
+		int (*set)(struct device_d *dev, struct param_d *p, const char *val),
+		char *(*get)(struct device_d *, struct param_d *p),
+		unsigned long flags)
+{
+	return 0;
+}
+
+static inline int dev_add_param_fixed(struct device_d *dev, char *name, char *value)
+{
+	return 0;
+}
+
+static inline void dev_remove_parameters(struct device_d *dev) {}
+
+static inline int dev_param_set_generic(struct device_d *dev, struct param_d *p,
+		const char *val)
+{
+	return 0;
+}
+
+/* Convenience functions to handle a parameter as an ip address */
+static inline int dev_set_param_ip(struct device_d *dev, char *name, IPaddr_t ip)
+{
+	return 0;
+}
+static inline IPaddr_t dev_get_param_ip(struct device_d *dev, char *name)
+{
+	return 0;
+}
+
+static inline int global_add_parameter(struct param_d *param)
+{
+	return 0;
+}
+#endif
 
 #endif /* PARAM_H */
 
diff --git a/lib/Kconfig b/lib/Kconfig
index 6b4063d..f886e6e 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -1,4 +1,7 @@
 menu "Library routines"
+config PARAMETER
+	bool
+
 config UNCOMPRESS
 	bool
 	select FILETYPE
diff --git a/lib/Makefile b/lib/Makefile
index c273c58..01a01b5 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -5,7 +5,7 @@ obj-y			+= string.o
 obj-y			+= vsprintf.o
 obj-y			+= div64.o
 obj-y			+= misc.o
-obj-y			+= parameter.o
+obj-$(CONFIG_PARAMETER)	+= parameter.o
 obj-y			+= xfuncs.o
 obj-y			+= getopt.o
 obj-y 			+= readkey.o
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
