Delivery-date: Thu, 24 Jun 2021 10:56:52 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwLAK-0007ME-AF
	for lore@lore.pengutronix.de; Thu, 24 Jun 2021 10:56:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwLAI-0002n1-1V
	for lore@pengutronix.de; Thu, 24 Jun 2021 10:56:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oSaYYSFuc40XVJnBpckkYQdwmdMeX3keN1R8PgyVv3I=; b=xz9eWBTTmW9bFY
	Um+7dwt3QzakbZylZWOWvb+44QdbCipwkhRRWnxv0M4EagjDer6KpIh2QbroVcCZiKWgSzfNPZ8t7
	+jUaZbYGtiY4rS5pBaeabmG9dOkSHjinPs5ISqBWZpjYmTD/TFduMJl0Oaex453+NxF4LyzCoNA3M
	qrFGN0vU/X92nioPxvCzi1Pb8yzbeHEG7aZ5dY4b93PqcGKCM4ZR08u9qqG1V7ROxJEjYhLkK5UHz
	HTe/06BF8uXKyOmlyX0Qf62tDoLEKt+u/OZIuY7WngncK4KFj+RGskzR4MEVINxZXtBwe7q/pKGFT
	05IMf/1DGZdymb9sDv4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwL8h-00DYsu-Ku; Thu, 24 Jun 2021 08:55:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwL6I-00DXPd-Mn
 for barebox@lists.infradead.org; Thu, 24 Jun 2021 08:52:45 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lwL61-0000sS-DB; Thu, 24 Jun 2021 10:52:25 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lwL60-0000cB-Ca; Thu, 24 Jun 2021 10:52:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 24 Jun 2021 10:52:19 +0200
Message-Id: <20210624085223.14616-15-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210624085223.14616-1-s.hauer@pengutronix.de>
References: <20210624085223.14616-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210624_015243_125132_5D68E4A3 
X-CRM114-Status: GOOD (  24.14  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 14/18] overlay: Add filters to choose which overlays to apply
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This adds a filter mechanism to choose which overlays to apply.
Filters can either match on the filename or on the content of an
overlay. Two generic filters are registered, one matching filename
patterns given in global.of.overlay.filepattern, the other matching
device tree compatibles given in global.of.overlay.compatible. Other
board or SoC specific filters can be registered and activated using
the global.of.overlay.filter variable.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/overlay.c | 314 ++++++++++++++++++++++++++++++++++++++++++-
 include/of.h         |  18 ++-
 2 files changed, 329 insertions(+), 3 deletions(-)

diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
index 26b5fee775..a1e0c48fb4 100644
--- a/drivers/of/overlay.c
+++ b/drivers/of/overlay.c
@@ -16,6 +16,8 @@
 #include <string.h>
 #include <libfile.h>
 #include <fs.h>
+#include <libbb.h>
+#include <fnmatch.h>
 
 static struct device_node *find_target(struct device_node *root,
 				       struct device_node *fragment)
@@ -165,6 +167,8 @@ static int of_overlay_apply_fragment(struct device_node *root,
 	return of_overlay_apply(target, overlay);
 }
 
+static char *of_overlay_compatible;
+
 /**
  * Apply the overlay on the passed devicetree root
  * @root: the devicetree onto which the overlay will be applied
@@ -201,13 +205,105 @@ out_err:
 	return err;
 }
 
-int of_overlay_apply_file(struct device_node *root, const char *filename)
+static char *of_overlay_filter;
+
+static LIST_HEAD(of_overlay_filters);
+
+static struct of_overlay_filter *of_overlay_find_filter(const char *name)
+{
+	struct of_overlay_filter *f;
+
+	list_for_each_entry(f, &of_overlay_filters, list)
+		if (!strcmp(f->name, name))
+			return f;
+	return NULL;
+}
+
+static bool of_overlay_matches_filter(const char *filename, struct device_node *ovl)
+{
+	struct of_overlay_filter *filter;
+	char *p, *path, *n;
+	bool apply = false;
+	bool have_filename_filter = false;
+	bool have_content_filter = false;
+
+	p = path = strdup(of_overlay_filter);
+
+	while ((n = strsep_unescaped(&p, " "))) {
+		int score = 0;
+
+		if (!*n)
+			continue;
+
+		filter = of_overlay_find_filter(n);
+		if (!filter) {
+			pr_err("Ignoring unknown filter %s\n", n);
+			continue;
+		}
+
+		if (filter->filter_filename)
+			have_filename_filter = true;
+		if (filter->filter_content)
+			have_content_filter = true;
+
+		if (filename) {
+			if (filter->filter_filename &&
+			    filter->filter_filename(filter, kbasename(filename)))
+				score++;
+		} else {
+			score++;
+		}
+
+		if (ovl) {
+			if (filter->filter_content &&
+			    filter->filter_content(filter, ovl))
+				score++;
+		} else {
+			score++;
+		}
+
+		if (score == 2) {
+			apply = true;
+			break;
+		}
+	}
+
+	free(path);
+
+	/* No filter found at all, no match */
+	if (!have_filename_filter && !have_content_filter)
+		return false;
+
+	/* Want to match filename, but we do not have a filename_filter */
+	if (filename && !have_filename_filter)
+		return true;
+
+	/* Want to match content, but we do not have a content_filter */
+	if (ovl && !have_content_filter)
+		return true;
+
+	if (apply)
+		pr_debug("filename %s, overlay %p: match against filter %s\n",
+			 filename ?: "<NONE>",
+			 ovl, filter->name);
+	else
+		pr_debug("filename %s, overlay %p: no match\n",
+			 filename ?: "<NONE>", ovl);
+
+	return apply;
+}
+
+int of_overlay_apply_file(struct device_node *root, const char *filename,
+			  bool filter)
 {
 	void *fdt;
 	struct device_node *ovl;
 	size_t size;
 	int ret;
 
+	if (filter && !of_overlay_matches_filter(filename, NULL))
+		return 0;
+
 	ret = read_file_2(filename, &size, &fdt, FILESIZE_MAX);
 	if (ret)
 		return ret;
@@ -221,6 +317,9 @@ int of_overlay_apply_file(struct device_node *root, const char *filename)
 		return PTR_ERR(ovl);
 	}
 
+	if (filter && !of_overlay_matches_filter(NULL, ovl))
+		return 0;
+
 	ret = of_overlay_apply_tree(root, ovl);
 	if (ret == -ENODEV)
 		pr_debug("Not applied %s (not compatible)\n", filename);
@@ -293,3 +392,216 @@ int of_register_overlay(struct device_node *overlay)
 {
 	return of_register_fixup(of_overlay_fixup, overlay);
 }
+
+static char *of_overlay_filepattern;
+static char *of_overlay_dir;
+static char *of_overlay_basedir;
+
+/**
+ * of_overlay_set_basedir - set the overlay basedir
+ * @path: The new overlay basedir
+ *
+ * This specifies the base directory where overlay files are expected. By
+ * default this is the root directory, but it is overwritten by blspec to
+ * point to the rootfs of the about-to-be-booted system.
+ */
+void of_overlay_set_basedir(const char *path)
+{
+	free(of_overlay_basedir);
+	of_overlay_basedir = strdup(path);
+}
+
+static int of_overlay_apply_dir(struct device_node *root, const char *dirname,
+				bool filter)
+{
+	char *p, *path;
+	int ret = 0;
+	DIR *dir;
+
+	if (!dirname || !*dirname)
+		return 0;
+
+	pr_debug("Applying overlays from %s\n", dirname);
+
+	dir = opendir(dirname);
+	if (!dir)
+		return -errno;
+
+	p = path = strdup(of_overlay_filepattern);
+
+	while (1) {
+		struct dirent *ent;
+		char *filename;
+
+		ent = readdir(dir);
+		if (!ent)
+			break;
+
+		if (!strcmp(dir->d.d_name, ".") || !strcmp(dir->d.d_name, ".."))
+			continue;
+
+		filename = basprintf("%s/%s", dirname, dir->d.d_name);
+
+		of_overlay_apply_file(root, filename, filter);
+
+		free(filename);
+	}
+
+	closedir(dir);
+
+	return ret;
+}
+
+static int of_overlay_global_fixup(struct device_node *root, void *data)
+{
+	char *dir;
+	int ret;
+
+	if (*of_overlay_dir == '/')
+		return of_overlay_apply_dir(root, of_overlay_dir, true);
+
+	dir = concat_path_file(of_overlay_basedir, of_overlay_dir);
+
+	ret = of_overlay_apply_dir(root, of_overlay_dir, true);
+
+	free(dir);
+
+	return ret;
+}
+
+/**
+ * of_overlay_register_filter - register a new overlay filter
+ * @filter: The new filter
+ *
+ * Register a new overlay filter. A filter can either match on
+ * the filename or on the content of an overlay, but not on both.
+ * If that's desired two filters have to be registered.
+ *
+ * @return: 0 for success, negative error code otherwise
+ */
+int of_overlay_register_filter(struct of_overlay_filter *filter)
+{
+	if (filter->filter_filename && filter->filter_content)
+		return -EINVAL;
+
+	list_add_tail(&filter->list, &of_overlay_filters);
+
+	return 0;
+}
+
+/**
+ * of_overlay_filter_filename - A filter that matches on the filename of
+ *                                an overlay
+ * @f: The filter
+ * @filename: The filename of the overlay
+ *
+ * This filter matches when the filename matches one of the patterns given
+ * in global.of.overlay.filepattern. global.of.overlay.filepattern shall
+ * contain a space separated list of wildcard patterns.
+ *
+ * @return: True when the overlay shall be applied, false otherwise.
+ */
+static bool of_overlay_filter_filename(struct of_overlay_filter *f,
+				       const char *filename)
+{
+	char *p, *path, *n;
+	int ret;
+	bool apply;
+
+	p = path = strdup(of_overlay_filepattern);
+
+	while ((n = strsep_unescaped(&p, " "))) {
+		if (!*n)
+			continue;
+
+		ret = fnmatch(n, filename, 0);
+
+		if (!ret) {
+			apply = true;
+			goto out;
+		}
+	}
+
+	apply = false;
+out:
+	free(path);
+
+	return apply;
+}
+
+static struct of_overlay_filter of_overlay_filepattern_filter = {
+	.name = "filepattern",
+	.filter_filename = of_overlay_filter_filename,
+};
+
+/**
+ * of_overlay_filter_compatible - A filter that matches on the compatible of
+ *                                an overlay
+ * @f: The filter
+ * @ovl: The overlay
+ *
+ * This filter matches when the compatible of an overlay matches to one
+ * of the compatibles given in global.of.overlay.compatible. When the
+ * overlay doesn't contain a compatible entry it is considered matching.
+ * Also when no compatibles are given in global.of.overlay.compatible
+ * all overlays will match.
+ *
+ * @return: True when the overlay shall be applied, false otherwise.
+ */
+static bool of_overlay_filter_compatible(struct of_overlay_filter *f,
+					struct device_node *ovl)
+{
+	char *p, *n, *compatibles;
+	bool res = false;
+
+	if (!of_overlay_compatible || !*of_overlay_compatible)
+		return true;
+	if (!of_find_property(ovl, "compatible", NULL))
+		return true;
+
+	p = compatibles = xstrdup(of_overlay_compatible);
+
+	while ((n = strsep_unescaped(&p, " "))) {
+		if (!*n)
+			continue;
+
+		if (of_device_is_compatible(ovl, n)) {
+			res = true;
+			break;
+		}
+	}
+
+	free(compatibles);
+
+	return res;
+}
+
+static struct of_overlay_filter of_overlay_compatible_filter = {
+	.name = "compatible",
+	.filter_content = of_overlay_filter_compatible,
+};
+
+static int of_overlay_init(void)
+{
+	of_overlay_filepattern = strdup("*");
+	of_overlay_filter = strdup("filepattern compatible");
+	of_overlay_set_basedir("/");
+
+	globalvar_add_simple_string("of.overlay.compatible", &of_overlay_compatible);
+	globalvar_add_simple_string("of.overlay.filepattern", &of_overlay_filepattern);
+	globalvar_add_simple_string("of.overlay.filter", &of_overlay_filter);
+	globalvar_add_simple_string("of.overlay.dir", &of_overlay_dir);
+
+	of_overlay_register_filter(&of_overlay_filepattern_filter);
+	of_overlay_register_filter(&of_overlay_compatible_filter);
+
+	of_register_fixup(of_overlay_global_fixup, NULL);
+
+	return 0;
+}
+device_initcall(of_overlay_init);
+
+BAREBOX_MAGICVAR(global.of.overlay.compatible, "space separated list of compatibles an overlay must match");
+BAREBOX_MAGICVAR(global.of.overlay.filepattern, "space separated list of filepatterns an overlay must match");
+BAREBOX_MAGICVAR(global.of.overlay.dir, "Directory to look for dt overlays");
+BAREBOX_MAGICVAR(global.of.overlay.filter, "space separated list of filters");
diff --git a/include/of.h b/include/of.h
index 59c1250fb2..b698220b1e 100644
--- a/include/of.h
+++ b/include/of.h
@@ -1022,12 +1022,20 @@ static inline struct device_node *of_find_root_node(struct device_node *node)
 	return node;
 }
 
+struct of_overlay_filter {
+	bool (*filter_filename)(struct of_overlay_filter *, const char *filename);
+	bool (*filter_content)(struct of_overlay_filter *, struct device_node *);
+	char *name;
+	struct list_head list;
+};
+
 #ifdef CONFIG_OF_OVERLAY
 struct device_node *of_resolve_phandles(struct device_node *root,
 					const struct device_node *overlay);
 int of_overlay_apply_tree(struct device_node *root,
 			  struct device_node *overlay);
-int of_overlay_apply_file(struct device_node *root, const char *filename);
+int of_overlay_apply_file(struct device_node *root, const char *filename,
+			  bool filter);
 int of_register_overlay(struct device_node *overlay);
 int of_process_overlay(struct device_node *root,
 		    struct device_node *overlay,
@@ -1038,6 +1046,8 @@ int of_process_overlay(struct device_node *root,
 int of_overlay_pre_load_firmware(struct device_node *root, struct device_node *overlay);
 int of_overlay_load_firmware(void);
 void of_overlay_load_firmware_clear(void);
+void of_overlay_set_basedir(const char *path);
+int of_overlay_register_filter(struct of_overlay_filter *);
 #else
 static inline struct device_node *of_resolve_phandles(struct device_node *root,
 					const struct device_node *overlay)
@@ -1052,7 +1062,7 @@ static inline int of_overlay_apply_tree(struct device_node *root,
 }
 
 static inline int of_overlay_apply_file(struct device_node *root,
-					const char *filename)
+					const char *filename, bool filter)
 {
 	return -ENOSYS;
 }
@@ -1086,6 +1096,10 @@ static inline void of_overlay_load_firmware_clear(void)
 {
 }
 
+static inline void of_overlay_set_basedir(const char *path)
+{
+}
+
 #endif
 
 #endif /* __OF_H */
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

