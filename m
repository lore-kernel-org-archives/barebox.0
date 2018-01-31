Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1egqIc-0005bL-IM
 for barebox@lists.infradead.org; Wed, 31 Jan 2018 11:11:34 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 31 Jan 2018 12:11:13 +0100
Message-Id: <20180131111116.9638-6-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/8] FIT: move handle->verify check to fit_verify_hash()
To: Barebox List <barebox@lists.infradead.org>

Preparation for the next step which will allow to open
images which are not part of a configuration.

This has one change inside: We used to iterate over all
subnodes of a image expecting all of them containing a hash,
so it could happen that we check multiple hashes if more exist
or that we falsely interpret some unrelated subnode as hash node.
With this patch we expect the hash in a subnode named "hash@1"
as required by the FIT image format description.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/image-fit.c | 45 +++++++++++++++++++++++++--------------------
 1 file changed, 25 insertions(+), 20 deletions(-)

diff --git a/common/image-fit.c b/common/image-fit.c
index 21b547a1da..9948c1fa77 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -344,13 +344,33 @@ static int fit_verify_signature(struct device_node *sig_node, void *fit)
 	return ret;
 }
 
-static int fit_verify_hash(struct device_node *hash, const void *data, int data_len)
+static int fit_verify_hash(struct fit_handle *handle, struct device_node *image,
+			   const void *data, int data_len)
 {
 	struct digest *d;
 	const char *algo;
 	const char *value_read;
 	char *value_calc;
 	int hash_len, ret;
+	struct device_node *hash;
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
+	hash = of_get_child_by_name(image, "hash@1");
+	if (!hash) {
+		if (ret)
+			pr_err("image %s does not have hashes\n",
+			       image->full_name);
+		return ret;
+	}
 
 	value_read = of_get_property(hash, "value", &hash_len);
 	if (!value_read) {
@@ -416,7 +436,7 @@ int fit_open_image(struct fit_handle *handle, void *configuration,
 		   const char *name, const void **outdata,
 		   unsigned long *outsize)
 {
-	struct device_node *image, *hash;
+	struct device_node *image;
 	const char *unit, *type = NULL, *desc= "(no description)";
 	const void *data;
 	int data_len;
@@ -450,24 +470,9 @@ int fit_open_image(struct fit_handle *handle, void *configuration,
 		return -EINVAL;
 	}
 
-	if (handle->verify > BOOTM_VERIFY_NONE) {
-		if (handle->verify == BOOTM_VERIFY_AVAILABLE)
-			ret = 0;
-		else
-			ret = -EINVAL;
-		for_each_child_of_node(image, hash) {
-			if (handle->verbose)
-				of_print_nodes(hash, 0);
-			ret = fit_verify_hash(hash, data, data_len);
-			if (ret < 0)
-				return ret;
-		}
-
-		if (ret < 0) {
-			pr_err("image '%s': '%s' does not have hashes\n", unit, desc);
-			return ret;
-		}
-	}
+	ret = fit_verify_hash(handle, image, data, data_len);
+	if (ret < 0)
+		return ret;
 
 	*outdata = data;
 	*outsize = data_len;
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
