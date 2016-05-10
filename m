Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b08Kv-0007KU-MB
 for barebox@lists.infradead.org; Tue, 10 May 2016 14:08:36 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 10 May 2016 16:08:09 +0200
Message-Id: <1462889289-24215-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1462889289-24215-1-git-send-email-s.hauer@pengutronix.de>
References: <1462889289-24215-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/6] bootm: Add verify mode "available"
To: Barebox List <barebox@lists.infradead.org>

The verify "available" mode checks whatever is available in the
booted image, so when an image has a signature, it is checked and
must be correct and when an image is hashed, it is also checked
for correctness.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/bootm.c     |  1 +
 common/image-fit.c | 64 ++++++++++++++++++++++++++++++++++++++----------------
 include/boot.h     |  1 +
 3 files changed, 47 insertions(+), 19 deletions(-)

diff --git a/common/bootm.c b/common/bootm.c
index 53edc71..bf1b344 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -74,6 +74,7 @@ static const char * const bootm_verify_names[] = {
 #ifndef CONFIG_BOOTM_FORCE_SIGNED_IMAGES
 	[BOOTM_VERIFY_NONE] = "none",
 	[BOOTM_VERIFY_HASH] = "hash",
+	[BOOTM_VERIFY_AVAILABLE] = "available",
 #endif
 	[BOOTM_VERIFY_SIGNATURE] = "signature",
 };
diff --git a/common/image-fit.c b/common/image-fit.c
index ceb55c2..9b6c40f 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -428,7 +428,10 @@ static int fit_open_image(struct fit_handle *handle, const char *unit, const voi
 	}
 
 	if (handle->verify > BOOTM_VERIFY_NONE) {
-		ret = -EINVAL;
+		if (handle->verify == BOOTM_VERIFY_AVAILABLE)
+			ret = 0;
+		else
+			ret = -EINVAL;
 		for_each_child_of_node(image, hash) {
 			if (handle->verbose)
 				of_print_nodes(hash, 0);
@@ -449,9 +452,46 @@ static int fit_open_image(struct fit_handle *handle, const char *unit, const voi
 	return 0;
 }
 
+static int fit_config_verify_signature(struct fit_handle *handle, struct device_node *conf_node)
+{
+	struct device_node *sig_node;
+	int ret = -EINVAL;
+
+	if (!IS_ENABLED(CONFIG_FITIMAGE_SIGNATURE))
+		return 0;
+
+	switch (handle->verify) {
+	case BOOTM_VERIFY_NONE:
+	case BOOTM_VERIFY_HASH:
+		return 0;
+	case BOOTM_VERIFY_SIGNATURE:
+		ret = -EINVAL;
+		break;
+	case BOOTM_VERIFY_AVAILABLE:
+		ret = 0;
+		break;
+	}
+
+	for_each_child_of_node(conf_node, sig_node) {
+		if (handle->verbose)
+			of_print_nodes(sig_node, 0);
+		ret = fit_verify_signature(sig_node, handle->fit);
+		if (ret < 0)
+			return ret;
+	}
+
+	if (ret < 0) {
+		pr_err("configuration '%s' does not have a signature\n",
+		       conf_node->full_name);
+		return ret;
+	}
+
+	return ret;
+}
+
 static int fit_open_configuration(struct fit_handle *handle, const char *name)
 {
-	struct device_node *conf_node = NULL, *sig_node;
+	struct device_node *conf_node = NULL;
 	const char *unit, *desc = "(no description)";
 	int ret;
 
@@ -474,23 +514,9 @@ static int fit_open_configuration(struct fit_handle *handle, const char *name)
 	of_property_read_string(conf_node, "description", &desc);
 	pr_info("configuration '%s': %s\n", unit, desc);
 
-	if (IS_ENABLED(CONFIG_FITIMAGE_SIGNATURE) &&
-	    handle->verify == BOOTM_VERIFY_SIGNATURE) {
-		ret = -EINVAL;
-		for_each_child_of_node(conf_node, sig_node) {
-			if (handle->verbose)
-				of_print_nodes(sig_node, 0);
-			ret = fit_verify_signature(sig_node, handle->fit);
-			if (ret < 0)
-				return ret;
-		}
-
-		if (ret < 0) {
-			pr_err("configuration '%s': %s does not have a signature\n",
-			       unit, desc);
-			return ret;
-		}
-	}
+	ret = fit_config_verify_signature(handle, conf_node);
+	if (ret)
+		return ret;
 
 	if (of_property_read_string(conf_node, "kernel", &unit) == 0) {
 		ret = fit_open_image(handle, unit, &handle->kernel, &handle->kernel_size);
diff --git a/include/boot.h b/include/boot.h
index 2683d72..8e7a9f1 100644
--- a/include/boot.h
+++ b/include/boot.h
@@ -11,6 +11,7 @@ enum bootm_verify {
 	BOOTM_VERIFY_NONE,
 	BOOTM_VERIFY_HASH,
 	BOOTM_VERIFY_SIGNATURE,
+	BOOTM_VERIFY_AVAILABLE,
 };
 
 struct bootm_data {
-- 
2.8.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
