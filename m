Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx1.emlix.com ([188.40.240.192])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jksnD-00070N-34
 for barebox@lists.infradead.org; Mon, 15 Jun 2020 17:21:09 +0000
From: =?UTF-8?q?Daniel=20Gl=C3=B6ckner?= <dg@emlix.com>
Date: Mon, 15 Jun 2020 19:20:45 +0200
Message-Id: <396a023759153b4e9fd04e1ac64601356faff653.1592241105.git.dg@emlix.com>
In-Reply-To: <cover.1592241105.git.dg@emlix.com>
References: <cover.1592241105.git.dg@emlix.com>
In-Reply-To: <cover.1592241105.git.dg@emlix.com>
References: <cover.1592241105.git.dg@emlix.com>
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
Subject: [PATCH v3 12/14] globalvar: Add helper for deprecated variable names
To: Barebox List <barebox@lists.infradead.org>

From: Sascha Hauer <s.hauer@pengutronix.de>

When globalvars are renamed across releases it's not nice when variables
in the persistent environment loose their meaning. This adds a helper
function which adds an alias for the old names. When the persistent
variables still use the old names then their values are automatically
written to variables with the new names.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/globalvar.c  | 41 +++++++++++++++++++++++++++++++++++++++--
 include/globalvar.h |  5 +++++
 2 files changed, 44 insertions(+), 2 deletions(-)

diff --git a/common/globalvar.c b/common/globalvar.c
index c87f2c933..5e91cc815 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -293,6 +293,40 @@ int nvvar_remove(const char *name)
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
@@ -308,6 +342,8 @@ int nvvar_load(void)
 		return -ENOENT;
 
 	while ((d = readdir(dir))) {
+		const char *n;
+
 		if (!strcmp(d->d_name, ".") || !strcmp(d->d_name, ".."))
 			continue;
 
@@ -316,10 +352,11 @@ int nvvar_load(void)
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
index fc85e93e1..db229e239 100644
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
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
