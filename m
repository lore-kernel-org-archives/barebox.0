Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1egqIc-0005bM-IJ
 for barebox@lists.infradead.org; Wed, 31 Jan 2018 11:11:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 31 Jan 2018 12:11:15 +0100
Message-Id: <20180131111116.9638-8-s.hauer@pengutronix.de>
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
Subject: [PATCH 7/8] FIT: Implement opening images with no configuration
To: Barebox List <barebox@lists.infradead.org>

different images can be grouped together to build a FIT configuration.
So far we only supported opening images as parts of configurations.
This patch adds support for opening images that are not part of a
configuration. This mode is used when the configuration parameter of
fit_open_image is NULL.

The main difference is in the way the RSA signature is checked. When
being part of a configuration all involved nodes (including the hash
nodes of the images, but not the image itself) are covered by the
signature, thus during opening an image only the validity of the image
data hash has to be checked. When not being part of a configuration,
the image data itself is signed and must be checked.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/image-fit.c | 82 +++++++++++++++++++++++++++++++++++++++++++++++++-----
 1 file changed, 75 insertions(+), 7 deletions(-)

diff --git a/common/image-fit.c b/common/image-fit.c
index 86516f0ba9..4ebd4b8c42 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -444,6 +444,52 @@ err_digest_free:
 	return ret;
 }
 
+static int fit_image_verify_signature(struct fit_handle *handle,
+				      struct device_node *image,
+				      const void *data, int data_len)
+{
+	struct digest *digest;
+	struct device_node *sig_node;
+	enum hash_algo algo = 0;
+	void *hash;
+	int ret;
+
+	if (!IS_ENABLED(CONFIG_FITIMAGE_SIGNATURE))
+		return 0;
+
+	switch (handle->verify) {
+	case BOOTM_VERIFY_NONE:
+		return 0;
+	case BOOTM_VERIFY_AVAILABLE:
+		ret = 0;
+		break;
+	default:
+		ret = -EINVAL;
+	}
+
+	sig_node = of_get_child_by_name(image, "signature@1");
+	if (!sig_node) {
+		pr_err("Image %s has no signature\n", image->full_name);
+		return ret;
+	}
+
+	digest = fit_alloc_digest(sig_node, &algo);
+	if (IS_ERR(digest))
+		return PTR_ERR(digest);
+
+	digest_update(digest, data, data_len);
+	hash = xzalloc(digest_length(digest));
+	digest_final(digest, hash);
+
+	ret = fit_check_rsa_signature(sig_node, algo, hash);
+
+	free(hash);
+
+	digest_free(digest);
+
+	return ret;
+}
+
 int fit_has_image(struct fit_handle *handle, void *configuration,
 		  const char *name)
 {
@@ -459,6 +505,23 @@ int fit_has_image(struct fit_handle *handle, void *configuration,
 	return 1;
 }
 
+/**
+ * fit_open_image - Open an image in a FIT image
+ * @handle: The FIT image handle
+ * @name: The name of the image to open
+ * @outdata: The returned image
+ * @outsize: Size of the returned image
+ *
+ * Open an image in a FIT image. The returned image is freed during fit_close().
+ * @configuration holds the cookie returned from fit_open_configuration() if
+ * the image is opened as part of a configuration, or NULL if the image is
+ * opened without a configuration. If @configuration is NULL then the RSA
+ * signature of the image is checked if desired, if @configuration is non NULL,
+ * then only the hash is checked (because opening the configuration already
+ * checks the RSA signature of all involved nodes).
+ *
+ * Return: 0 for success, negative error code otherwise
+ */
 int fit_open_image(struct fit_handle *handle, void *configuration,
 		   const char *name, const void **outdata,
 		   unsigned long *outsize)
@@ -470,12 +533,13 @@ int fit_open_image(struct fit_handle *handle, void *configuration,
 	int ret = 0;
 	struct device_node *conf_node = configuration;
 
-	if (!conf_node)
-		return -EINVAL;
-
-	if (of_property_read_string(conf_node, name, &unit)) {
-		pr_err("No image named '%s'\n", name);
-		return -ENOENT;
+	if (conf_node) {
+		if (of_property_read_string(conf_node, name, &unit)) {
+			pr_err("No image named '%s'\n", name);
+			return -ENOENT;
+		}
+	} else {
+		unit = name;
 	}
 
 	image = of_get_child_by_name(handle->images, unit);
@@ -497,7 +561,11 @@ int fit_open_image(struct fit_handle *handle, void *configuration,
 		return -EINVAL;
 	}
 
-	ret = fit_verify_hash(handle, image, data, data_len);
+	if (conf_node)
+		ret = fit_verify_hash(handle, image, data, data_len);
+	else
+		ret = fit_image_verify_signature(handle, image, data, data_len);
+
 	if (ret < 0)
 		return ret;
 
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
