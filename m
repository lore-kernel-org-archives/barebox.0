Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKHgO-0008PO-Tp
 for barebox@lists.infradead.org; Tue, 15 Oct 2019 07:55:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 Oct 2019 09:55:47 +0200
Message-Id: <20191015075549.4380-4-s.hauer@pengutronix.de>
In-Reply-To: <20191015075549.4380-1-s.hauer@pengutronix.de>
References: <20191015075549.4380-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/5] rsa: let rsa_of_read_key() return a fully allocated key
To: Barebox List <barebox@lists.infradead.org>

Until now rsa_of_read_key() took a pointer to a key and filled the
struct rsa_public_key members with allocated values. So far we have
never freed these values. Change rsa_of_read_key() to always return
a fully allocated key and provide rsa_key_free() to free it. Let the
FIT image code free the key after usage.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/image-fit.c | 10 ++++++----
 crypto/rsa.c       | 26 ++++++++++++++++++++++----
 include/rsa.h      |  3 ++-
 3 files changed, 30 insertions(+), 9 deletions(-)

diff --git a/common/image-fit.c b/common/image-fit.c
index 6ac4644686..71053fbef5 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -269,7 +269,7 @@ static struct digest *fit_alloc_digest(struct device_node *sig_node,
 static int fit_check_rsa_signature(struct device_node *sig_node,
 				   enum hash_algo algo, void *hash)
 {
-	struct rsa_public_key key = {};
+	struct rsa_public_key *key;
 	const char *key_name;
 	char *key_path;
 	struct device_node *key_node;
@@ -296,18 +296,20 @@ static int fit_check_rsa_signature(struct device_node *sig_node,
 	}
 	free(key_path);
 
-	ret = rsa_of_read_key(key_node, &key);
-	if (ret) {
+	key = rsa_of_read_key(key_node);
+	if (IS_ERR(key)) {
 		pr_info("failed to read key in %s\n", key_node->full_name);
 		return -ENOENT;
 	}
 
-	ret = rsa_verify(&key, sig_value, sig_len, hash, algo);
+	ret = rsa_verify(key, sig_value, sig_len, hash, algo);
 	if (ret)
 		pr_err("image signature BAD\n");
 	else
 		pr_info("image signature OK\n");
 
+	rsa_key_free(key);
+
 	return ret;
 }
 
diff --git a/crypto/rsa.c b/crypto/rsa.c
index 591d15c415..2e70c8127d 100644
--- a/crypto/rsa.c
+++ b/crypto/rsa.c
@@ -380,11 +380,15 @@ static void rsa_convert_big_endian(uint32_t *dst, const uint32_t *src, int len)
 		dst[i] = fdt32_to_cpu(src[len - 1 - i]);
 }
 
-int rsa_of_read_key(struct device_node *node, struct rsa_public_key *key)
+struct rsa_public_key *rsa_of_read_key(struct device_node *node)
 {
 	const void *modulus, *rr;
 	const uint64_t *public_exponent;
 	int length;
+	struct rsa_public_key *key;
+	int err;
+
+	key = xzalloc(sizeof(*key));
 
 	of_property_read_u32(node, "rsa,num-bits", &key->len);
 	of_property_read_u32(node, "rsa,n0-inverse", &key->n0inv);
@@ -400,14 +404,16 @@ int rsa_of_read_key(struct device_node *node, struct rsa_public_key *key)
 
 	if (!key->len || !modulus || !rr) {
 		debug("%s: Missing RSA key info", __func__);
-		return -EFAULT;
+		err = -EFAULT;
+		goto out;
 	}
 
 	/* Sanity check for stack size */
 	if (key->len > RSA_MAX_KEY_BITS || key->len < RSA_MIN_KEY_BITS) {
 		debug("RSA key bits %u outside allowed range %d..%d\n",
 		      key->len, RSA_MIN_KEY_BITS, RSA_MAX_KEY_BITS);
-		return -EFAULT;
+		err = -EFAULT;
+		goto out;
 	}
 
 	key->len /= sizeof(uint32_t) * 8;
@@ -418,5 +424,17 @@ int rsa_of_read_key(struct device_node *node, struct rsa_public_key *key)
 	rsa_convert_big_endian(key->modulus, modulus, key->len);
 	rsa_convert_big_endian(key->rr, rr, key->len);
 
-	return 0;
+	err = 0;
+out:
+	if (err)
+		free(key);
+
+	return err ? ERR_PTR(err) : key;
+}
+
+void rsa_key_free(struct rsa_public_key *key)
+{
+	free(key->modulus);
+	free(key->rr);
+	free(key);
 }
diff --git a/include/rsa.h b/include/rsa.h
index feb8c31200..cf2e6c7e08 100644
--- a/include/rsa.h
+++ b/include/rsa.h
@@ -49,6 +49,7 @@ int rsa_verify(const struct rsa_public_key *key, const uint8_t *sig,
 /* This is the maximum signature length that we support, in bits */
 #define RSA_MAX_SIG_BITS	4096
 
-int rsa_of_read_key(struct device_node *node, struct rsa_public_key *key);
+struct rsa_public_key *rsa_of_read_key(struct device_node *node);
+void rsa_key_free(struct rsa_public_key *key);
 
 #endif
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
