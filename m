Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k6DVd-0003sB-BI
 for barebox@lists.infradead.org; Thu, 13 Aug 2020 13:43:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Aug 2020 15:42:48 +0200
Message-Id: <20200813134257.24627-12-s.hauer@pengutronix.de>
In-Reply-To: <20200813134257.24627-1-s.hauer@pengutronix.de>
References: <20200813134257.24627-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 11/20] globalvar: Add helper for deprecated variable names
To: Barebox List <barebox@lists.infradead.org>
Cc: Edmund Henniges <eh@emlix.com>, =?UTF-8?q?Daniel=20Gl=C3=B6ckner?= <dg@emlix.com>

When globalvars are renamed across releases it's not nice when variables
in the persistent environment loose their meaning. This adds a helper
function which adds an alias for the old names. When the persistent
variables still use the old names then their values are automatically
written to variables with the new names.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/globalvar.c  | 54 +++++++++++++++++++++++++++++++++++++++++++--
 include/globalvar.h |  5 +++++
 2 files changed, 57 insertions(+), 2 deletions(-)

diff --git a/common/globalvar.c b/common/globalvar.c
index 98a028a68a..e9379085f2 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -293,6 +293,53 @@ int nvvar_remove(const char *name)
 	return ret;
 }
 
+struct globalvar_deprecated {
+	char *newname;
+	char *oldname;
+	struct list_head list;
+};
+
+static LIST_HEAD(globalvar_deprecated_list);
+
+/*
+ * globalvar_alias_deprecated - add an alias
+ *
+ * @oldname: The old name for the variable
+ * @newname: The new name for the variable
+ *
+ * This function is a helper for globalvars that are renamed from one
+ * release to another. when a variable @oldname is found in the persistent
+ * environment a warning is issued and its value is written to @newname.
+ *
+ * Note that when both @oldname and @newname contain values then the values
+ * existing in @newname are overwritten.
+ */
+void globalvar_alias_deprecated(const char *oldname, const char *newname)
+{
+	struct globalvar_deprecated *gd;
+
+	gd = xzalloc(sizeof(*gd));
+	gd->newname = xstrdup(newname);
+	gd->oldname = xstrdup(oldname);
+	list_add_tail(&gd->list, &globalvar_deprecated_list);
+}
+
+static const char *globalvar_new_name(const char *oldname)
+{
+	struct globalvar_deprecated *gd;
+
+	list_for_each_entry(gd, &globalvar_deprecated_list, list) {
+		if (!strcmp(oldname, gd->oldname)) {
+			pr_warn("nv.%s is deprecated, converting to nv.%s\n", oldname,
+				gd->newname);
+			nv_dirty = 1;
+			return gd->newname;
+		}
+	}
+
+	return oldname;
+}
+
 int nvvar_load(void)
 {
 	char *val;
@@ -308,6 +355,8 @@ int nvvar_load(void)
 		return -ENOENT;
 
 	while ((d = readdir(dir))) {
+		const char *n;
+
 		if (!strcmp(d->d_name, ".") || !strcmp(d->d_name, ".."))
 			continue;
 
@@ -316,10 +365,11 @@ int nvvar_load(void)
 		pr_debug("%s: Setting \"%s\" to \"%s\"\n",
 				__func__, d->d_name, val);
 
-		ret = __nvvar_add(d->d_name, val);
+		n = globalvar_new_name(d->d_name);
+		ret = __nvvar_add(n, val);
 		if (ret)
 			pr_err("failed to create nv variable %s: %s\n",
-					d->d_name, strerror(-ret));
+					n, strerror(-ret));
 	}
 
 	closedir(dir);
diff --git a/include/globalvar.h b/include/globalvar.h
index fc85e93e14..db229e239c 100644
--- a/include/globalvar.h
+++ b/include/globalvar.h
@@ -33,6 +33,7 @@ int nvvar_remove(const char *name);
 void globalvar_print(void);
 
 void dev_param_init_from_nv(struct device_d *dev, const char *name);
+void globalvar_alias_deprecated(const char *newname, const char *oldname);
 
 #else
 static inline int globalvar_add_simple(const char *name, const char *value)
@@ -114,6 +115,10 @@ static inline void dev_param_init_from_nv(struct device_d *dev, const char *name
 {
 }
 
+static inline void globalvar_alias_deprecated(const char *newname, const char *oldname)
+{
+}
+
 #endif
 
 void nv_var_set_clean(void);
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
