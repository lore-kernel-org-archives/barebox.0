Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1egqIc-0005bQ-IL
 for barebox@lists.infradead.org; Wed, 31 Jan 2018 11:11:38 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 31 Jan 2018 12:11:16 +0100
Message-Id: <20180131111116.9638-9-s.hauer@pengutronix.de>
In-Reply-To: <20180131111116.9638-1-s.hauer@pengutronix.de>
References: <20180131111116.9638-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 8/8] FIT: Allow to open buffer as FIT image
To: Barebox List <barebox@lists.infradead.org>

This adds fit_open_buf() which can open a buffer as FIT image.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/image-fit.c  | 113 +++++++++++++++++++++++++++++++++++++---------------
 include/image-fit.h |   5 ++-
 2 files changed, 85 insertions(+), 33 deletions(-)

diff --git a/common/image-fit.c b/common/image-fit.c
index 4ebd4b8c42..3fab52db2e 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -74,11 +74,11 @@ static int of_read_string_list(struct device_node *np, const char *name, struct
 	return prop ? 0 : -EINVAL;
 }
 
-static int fit_digest(void *fit, struct digest *digest,
+static int fit_digest(const void *fit, struct digest *digest,
 		      struct string_list *inc_nodes, struct string_list *exc_props,
 		      uint32_t hashed_strings_start, uint32_t hashed_strings_size)
 {
-	struct fdt_header *fdt = fit;
+	const struct fdt_header *fdt = fit;
 	uint32_t dt_struct;
 	void *dt_strings;
 	struct fdt_header f = {};
@@ -313,7 +313,7 @@ static int fit_check_rsa_signature(struct device_node *sig_node,
 /*
  * The consistency of the FTD structure was already checked by of_unflatten_dtb()
  */
-static int fit_verify_signature(struct device_node *sig_node, void *fit)
+static int fit_verify_signature(struct device_node *sig_node, const void *fit)
 {
 	uint32_t hashed_strings_start, hashed_strings_size;
 	struct string_list inc_nodes, exc_props;
@@ -690,61 +690,110 @@ void *fit_open_configuration(struct fit_handle *handle, const char *name)
 	return conf_node;
 }
 
-struct fit_handle *fit_open(const char *filename, bool verbose,
-			    enum bootm_verify verify)
+static int fit_do_open(struct fit_handle *handle)
 {
-	struct fit_handle *handle = NULL;
 	const char *desc = "(no description)";
 	struct device_node *root;
+
+	root = of_unflatten_dtb(handle->fit);
+	if (IS_ERR(root))
+		return PTR_ERR(root);
+
+	handle->root = root;
+
+	handle->images = of_get_child_by_name(handle->root, "images");
+	if (!handle->images)
+		return -ENOENT;
+
+	handle->configurations = of_get_child_by_name(handle->root,
+						      "configurations");
+
+	of_property_read_string(handle->root, "description", &desc);
+	pr_info("Opened FIT image: %s\n", desc);
+
+	return 0;
+}
+
+/**
+ * fit_open_buf - open a FIT image from a buffer
+ * @buf:	The buffer containing the FIT image
+ * @size:	Size of the FIT image
+ * @verbose:	If true, be more verbose
+ * @verify:	The verify mode
+ *
+ * This opens a FIT image found in buf. The returned handle is used as
+ * context for the other FIT functions.
+ *
+ * Return: A handle to a FIT image or a ERR_PTR
+ */
+struct fit_handle *fit_open_buf(const void *buf, size_t size, bool verbose,
+				enum bootm_verify verify)
+{
+	struct fit_handle *handle;
 	int ret;
 
 	handle = xzalloc(sizeof(struct fit_handle));
 
 	handle->verbose = verbose;
+	handle->fit = buf;
+	handle->size = size;
+	handle->verify = verify;
 
-	ret = read_file_2(filename, &handle->size, &handle->fit, FILESIZE_MAX);
+	ret = fit_do_open(handle);
 	if (ret) {
-		pr_err("unable to read %s: %s\n", filename, strerror(-ret));
-		goto err;
+		fit_close(handle);
+		return ERR_PTR(ret);
 	}
 
-	root = of_unflatten_dtb(handle->fit);
-	if (IS_ERR(root)) {
-		ret = PTR_ERR(root);
-		goto err;
-	}
+	return handle;
+}
 
-	handle->root = root;
+/**
+ * fit_open - open a FIT image
+ * @filename:	The filename of the FIT image
+ * @verbose:	If true, be more verbose
+ * @verify:	The verify mode
+ *
+ * This opens a FIT image found in @filename. The returned handle is used as
+ * context for the other FIT functions.
+ *
+ * Return: A handle to a FIT image or a ERR_PTR
+ */
+struct fit_handle *fit_open(const char *filename, bool verbose,
+			    enum bootm_verify verify)
+{
+	struct fit_handle *handle;
+	int ret;
+
+	handle = xzalloc(sizeof(struct fit_handle));
+
+	handle->verbose = verbose;
 	handle->verify = verify;
 
-	handle->images = of_get_child_by_name(handle->root, "images");
-	if (!handle->images) {
-		ret = -ENOENT;
-		goto err;
+	ret = read_file_2(filename, &handle->size, &handle->fit_alloc,
+			  FILESIZE_MAX);
+	if (ret) {
+		pr_err("unable to read %s: %s\n", filename, strerror(-ret));
+		return ERR_PTR(ret);
 	}
 
-	handle->configurations = of_get_child_by_name(handle->root,
-						      "configurations");
+	handle->fit = handle->fit_alloc;
 
-	of_property_read_string(handle->root, "description", &desc);
-	pr_info("'%s': %s\n", filename, desc);
+	ret = fit_do_open(handle);
+	if (ret) {
+		fit_close(handle);
+		return ERR_PTR(ret);
+	}
 
 	return handle;
- err:
-	if (handle->root)
-		of_delete_node(handle->root);
-	free(handle->fit);
-	free(handle);
-
-	return ERR_PTR(ret);
 }
 
 void fit_close(struct fit_handle *handle)
 {
 	if (handle->root)
 		of_delete_node(handle->root);
-	if (handle->fit)
-		free(handle->fit);
+
+	free(handle->fit_alloc);
 	free(handle);
 }
 
diff --git a/include/image-fit.h b/include/image-fit.h
index 79b8101b83..fc0883b5dc 100644
--- a/include/image-fit.h
+++ b/include/image-fit.h
@@ -22,7 +22,8 @@
 #include <bootm.h>
 
 struct fit_handle {
-	void *fit;
+	const void *fit;
+	void *fit_alloc;
 	size_t size;
 
 	bool verbose;
@@ -35,6 +36,8 @@ struct fit_handle {
 
 struct fit_handle *fit_open(const char *filename, bool verbose,
 			    enum bootm_verify verify);
+struct fit_handle *fit_open_buf(const void *buf, size_t len, bool verbose,
+				enum bootm_verify verify);
 void *fit_open_configuration(struct fit_handle *handle, const char *name);
 int fit_has_image(struct fit_handle *handle, void *configuration,
 		  const char *name);
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
