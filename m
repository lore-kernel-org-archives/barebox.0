Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1egqIc-0005bZ-IQ
 for barebox@lists.infradead.org; Wed, 31 Jan 2018 11:11:32 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 31 Jan 2018 12:11:14 +0100
Message-Id: <20180131111116.9638-7-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/8] FIT: factor out some helper functions
To: Barebox List <barebox@lists.infradead.org>

Create and use fit_alloc_digest() and fit_read_rsa_public_key()
which we can use a second time in the next step.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/image-fit.c | 121 ++++++++++++++++++++++++++++++++---------------------
 1 file changed, 74 insertions(+), 47 deletions(-)

diff --git a/common/image-fit.c b/common/image-fit.c
index 9948c1fa77..86516f0ba9 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -230,28 +230,18 @@ static int fit_digest(void *fit, struct digest *digest,
 	return 0;
 }
 
-/*
- * The consistency of the FTD structure was already checked by of_unflatten_dtb()
- */
-static int fit_verify_signature(struct device_node *sig_node, void *fit)
+static struct digest *fit_alloc_digest(struct device_node *sig_node,
+				       enum hash_algo *algo_out)
 {
-	uint32_t hashed_strings_start, hashed_strings_size;
-	struct string_list inc_nodes, exc_props;
-	struct rsa_public_key key = {};
 	struct digest *digest;
-	int sig_len;
-	const char *algo_name, *key_name, *sig_value;
-	char *key_path;
-	struct device_node *key_node;
 	enum hash_algo algo;
-	void *hash;
-	int ret;
+	const char *algo_name;
 
 	if (of_property_read_string(sig_node, "algo", &algo_name)) {
-		pr_err("algo not found\n");
-		ret = -EINVAL;
-		goto out;
+		pr_err("algo property not found\n");
+		return ERR_PTR(-EINVAL);
 	}
+
 	if (strcmp(algo_name, "sha1,rsa2048") == 0) {
 		algo = HASH_ALGO_SHA1;
 	} else if (strcmp(algo_name, "sha256,rsa2048") == 0) {
@@ -260,53 +250,87 @@ static int fit_verify_signature(struct device_node *sig_node, void *fit)
 		algo = HASH_ALGO_SHA256;
 	} else	{
 		pr_err("unknown algo %s\n", algo_name);
-		ret = -EINVAL;
-		goto out;
+		return ERR_PTR(-EINVAL);
 	}
+
 	digest = digest_alloc_by_algo(algo);
 	if (!digest) {
 		pr_err("unsupported algo %s\n", algo_name);
-		ret = -EINVAL;
-		goto out;
+		return ERR_PTR(-EINVAL);
 	}
 
+	digest_init(digest);
+
+	*algo_out = algo;
+
+	return digest;
+}
+
+static int fit_check_rsa_signature(struct device_node *sig_node,
+				   enum hash_algo algo, void *hash)
+{
+	struct rsa_public_key key = {};
+	const char *key_name;
+	char *key_path;
+	struct device_node *key_node;
+	int sig_len;
+	const char *sig_value;
+	int ret;
+
 	sig_value = of_get_property(sig_node, "value", &sig_len);
 	if (!sig_value) {
 		pr_err("signature value not found in %s\n", sig_node->full_name);
-		ret = -EINVAL;
-		goto out_free_digest;
+		return -EINVAL;
 	}
 
 	if (of_property_read_string(sig_node, "key-name-hint", &key_name)) {
 		pr_err("key name not found in %s\n", sig_node->full_name);
-		ret = -EINVAL;
-		goto out_free_digest;
+		return -EINVAL;
 	}
 	key_path = xasprintf("/signature/key-%s", key_name);
 	key_node = of_find_node_by_path(key_path);
 	free(key_path);
 	if (!key_node) {
 		pr_info("failed to find key node\n");
-		ret = -ENOENT;
-		goto out_free_digest;
+		return -ENOENT;
 	}
 
 	ret = rsa_of_read_key(key_node, &key);
 	if (ret) {
 		pr_info("failed to read key in %s\n", key_node->full_name);
-		ret = -ENOENT;
-		goto out_free_digest;
+		return -ENOENT;
 	}
 
-	if (of_property_read_u32_index(sig_node, "hashed-strings", 0, &hashed_strings_start)) {
+	ret = rsa_verify(&key, sig_value, sig_len, hash, algo);
+	if (ret)
+		pr_err("image signature BAD\n");
+	else
+		pr_info("image signature OK\n");
+
+	return ret;
+}
+
+/*
+ * The consistency of the FTD structure was already checked by of_unflatten_dtb()
+ */
+static int fit_verify_signature(struct device_node *sig_node, void *fit)
+{
+	uint32_t hashed_strings_start, hashed_strings_size;
+	struct string_list inc_nodes, exc_props;
+	struct digest *digest;
+	void *hash;
+	enum hash_algo algo = 0;
+	int ret;
+
+	if (of_property_read_u32_index(sig_node, "hashed-strings", 0,
+	    &hashed_strings_start)) {
 		pr_err("hashed-strings start not found in %s\n", sig_node->full_name);
-		ret = -EINVAL;
-		goto out_free_digest;
+		return -EINVAL;
 	}
-	if (of_property_read_u32_index(sig_node, "hashed-strings", 1, &hashed_strings_size)) {
+	if (of_property_read_u32_index(sig_node, "hashed-strings", 1,
+	    &hashed_strings_size)) {
 		pr_err("hashed-strings size not found in %s\n", sig_node->full_name);
-		ret = -EINVAL;
-		goto out_free_digest;
+		return -EINVAL;
 	}
 
 	string_list_init(&inc_nodes);
@@ -320,27 +344,30 @@ static int fit_verify_signature(struct device_node *sig_node, void *fit)
 
 	string_list_add(&exc_props, "data");
 
-	digest_init(digest);
-	ret = fit_digest(fit, digest, &inc_nodes, &exc_props, hashed_strings_start, hashed_strings_size);
+	digest = fit_alloc_digest(sig_node, &algo);
+	if (IS_ERR(digest)) {
+		ret = PTR_ERR(digest);
+		goto out_sl;
+	}
+
+	ret = fit_digest(fit, digest, &inc_nodes, &exc_props, hashed_strings_start,
+			 hashed_strings_size);
 	hash = xzalloc(digest_length(digest));
 	digest_final(digest, hash);
 
-	ret = rsa_verify(&key, sig_value, sig_len, hash, algo);
-	if (ret) {
-		pr_info("image signature BAD\n");
-		ret = -EBADMSG;
-	} else {
-		pr_info("image signature OK\n");
-		ret = 0;
-	}
+	ret = fit_check_rsa_signature(sig_node, algo, hash);
+	if (ret)
+		goto out_free_hash;
 
+	ret = 0;
+
+ out_free_hash:
 	free(hash);
+	digest_free(digest);
  out_sl:
 	string_list_free(&inc_nodes);
 	string_list_free(&exc_props);
- out_free_digest:
-	digest_free(digest);
- out:
+ 
 	return ret;
 }
 
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
