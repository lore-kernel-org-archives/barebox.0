Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1egqIc-0005bP-IO
 for barebox@lists.infradead.org; Wed, 31 Jan 2018 11:11:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 31 Jan 2018 12:11:12 +0100
Message-Id: <20180131111116.9638-5-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/8] FIT: store device_nodes in fit_handle
To: Barebox List <barebox@lists.infradead.org>

We need the /images and /configurations nodes more than once,
so store them in the fit_handle rather than searching for them
each time again.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/image-fit.c  | 20 ++++++++++++--------
 include/image-fit.h |  2 ++
 2 files changed, 14 insertions(+), 8 deletions(-)

diff --git a/common/image-fit.c b/common/image-fit.c
index 138696ab78..21b547a1da 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -416,7 +416,7 @@ int fit_open_image(struct fit_handle *handle, void *configuration,
 		   const char *name, const void **outdata,
 		   unsigned long *outsize)
 {
-	struct device_node *image = NULL, *hash;
+	struct device_node *image, *hash;
 	const char *unit, *type = NULL, *desc= "(no description)";
 	const void *data;
 	int data_len;
@@ -431,11 +431,7 @@ int fit_open_image(struct fit_handle *handle, void *configuration,
 		return -ENOENT;
 	}
 
-	image = of_get_child_by_name(handle->root, "images");
-	if (!image)
-		return -ENOENT;
-
-	image = of_get_child_by_name(image, unit);
+	image = of_get_child_by_name(handle->images, unit);
 	if (!image)
 		return -ENOENT;
 
@@ -561,11 +557,10 @@ default_unit:
  */
 void *fit_open_configuration(struct fit_handle *handle, const char *name)
 {
-	struct device_node *conf_node = NULL;
+	struct device_node *conf_node = handle->configurations;
 	const char *unit, *desc = "(no description)";
 	int ret;
 
-	conf_node = of_get_child_by_name(handle->root, "configurations");
 	if (!conf_node)
 		return ERR_PTR(-ENOENT);
 
@@ -622,6 +617,15 @@ struct fit_handle *fit_open(const char *filename, bool verbose,
 	handle->root = root;
 	handle->verify = verify;
 
+	handle->images = of_get_child_by_name(handle->root, "images");
+	if (!handle->images) {
+		ret = -ENOENT;
+		goto err;
+	}
+
+	handle->configurations = of_get_child_by_name(handle->root,
+						      "configurations");
+
 	of_property_read_string(handle->root, "description", &desc);
 	pr_info("'%s': %s\n", filename, desc);
 
diff --git a/include/image-fit.h b/include/image-fit.h
index 31e23b235a..79b8101b83 100644
--- a/include/image-fit.h
+++ b/include/image-fit.h
@@ -29,6 +29,8 @@ struct fit_handle {
 	enum bootm_verify verify;
 
 	struct device_node *root;
+	struct device_node *images;
+	struct device_node *configurations;
 };
 
 struct fit_handle *fit_open(const char *filename, bool verbose,
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
