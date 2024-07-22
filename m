Delivery-date: Mon, 22 Jul 2024 10:25:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sVoLw-001krI-00
	for lore@lore.pengutronix.de;
	Mon, 22 Jul 2024 10:25:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sVoLt-0000Gq-Ds
	for lore@pengutronix.de; Mon, 22 Jul 2024 10:25:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+Gq7a125VcSto3YVWoztqQ7gCxKUDInSESRTxFPp1ao=; b=AfSR88ooKMKo7SI3aUqXBYtOZP
	M4B4g/iu8TEsq5vFVDRxhbvnlySIyuAdbYyc6FFr8/Y/jGeWomPYJ1jZH59oguuNdHhhs8dbwOdI1
	KdgxhRbrm3WP9tXIM1d1eZobX5NUywlDybfduq46t8AjArl0SW6PcJVUulhSt1T6Il31sXwLbWUQN
	BS92EeCrV8gev5GWztgGmVkNAzxWpLAzepl4/Gljs+/KSIvYf9IKMz1qWg5kfbdfYhxP3TWAhhs+a
	hO+k7NCzY4QyJZWMAkr+fF2EH7WoJH549+AhEfqVF+8/9m3PiWuIj5tEWokLz8u4yinDf6caUM88Q
	XrcnhYaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVoLF-00000008rnA-1tOI;
	Mon, 22 Jul 2024 08:24:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVoL6-00000008riY-1eRR
	for barebox@lists.infradead.org;
	Mon, 22 Jul 2024 08:24:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sVoL2-0008Fn-Ea; Mon, 22 Jul 2024 10:24:08 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sVoL2-001L9a-1C; Mon, 22 Jul 2024 10:24:08 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sVoL1-00629B-30;
	Mon, 22 Jul 2024 10:24:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 22 Jul 2024 10:23:58 +0200
Message-Id: <20240722082405.926111-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240722082405.926111-1-s.hauer@pengutronix.de>
References: <20240722082405.926111-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240722_012412_690608_820110B2 
X-CRM114-Status: GOOD (  24.52  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/9] rsatoc: switch to non deprecated openssl API
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The ENGINE API has been deprecated as of openSSL-3.0. Switch to modern
API to be future proof and to get rid of compile warnings.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/rsatoc.c | 201 ++++++++++++++++++-----------------------------
 1 file changed, 77 insertions(+), 124 deletions(-)

diff --git a/scripts/rsatoc.c b/scripts/rsatoc.c
index d5943d4a11..9f8aaf8c36 100644
--- a/scripts/rsatoc.c
+++ b/scripts/rsatoc.c
@@ -16,7 +16,8 @@
 #include <openssl/err.h>
 #include <openssl/ssl.h>
 #include <openssl/evp.h>
-#include <openssl/engine.h>
+#include <openssl/provider.h>
+#include <openssl/core_names.h>
 
 static int dts, standalone;
 
@@ -34,20 +35,16 @@ static int rsa_err(const char *msg)
 /**
  * rsa_pem_get_pub_key() - read a public key from a .crt file
  *
- * @keydir:	Directory containins the key
- * @name	Name of key file (will have a .crt extension)
- * @rsap	Returns RSA object, or NULL on failure
+ * @path: Path to the key file
+ * @key: Returns the key object
  * @return 0 if ok, -ve on error (in which case *rsap will be set to NULL)
  */
-static int rsa_pem_get_pub_key(const char *path, RSA **rsap)
+static int rsa_pem_get_pub_key(const char *path, EVP_PKEY **key)
 {
-	EVP_PKEY *key;
-	X509 *cert;
-	RSA *rsa;
+	X509 *cert = NULL;
 	FILE *f;
 	int ret;
 
-	*rsap = NULL;
 	f = fopen(path, "r");
 	if (!f) {
 		fprintf(stderr, "Couldn't open RSA certificate: '%s': %s\n",
@@ -56,41 +53,29 @@ static int rsa_pem_get_pub_key(const char *path, RSA **rsap)
 	}
 
 	/* Read the certificate */
-	cert = NULL;
 	if (!PEM_read_X509(f, &cert, NULL, NULL)) {
 		rewind(f);
-		key = PEM_read_PUBKEY(f, NULL, NULL, NULL);
-		if (!key) {
+		*key = PEM_read_PUBKEY(f, NULL, NULL, NULL);
+		if (!*key) {
 			rsa_err("Couldn't read certificate");
 			ret = -EINVAL;
 			goto err_cert;
 		}
 	} else {
 		/* Get the public key from the certificate. */
-		key = X509_get_pubkey(cert);
-		if (!key) {
+		*key = X509_get_pubkey(cert);
+		if (!*key) {
 			rsa_err("Couldn't read public key\n");
 			ret = -EINVAL;
 			goto err_pubkey;
 		}
 	}
 
-	/* Convert to a RSA_style key. */
-	rsa = EVP_PKEY_get1_RSA(key);
-	if (!rsa) {
-		rsa_err("Couldn't convert to a RSA style key");
-		ret = -EINVAL;
-		goto err_rsa;
-	}
 	fclose(f);
-	EVP_PKEY_free(key);
 	X509_free(cert);
-	*rsap = rsa;
 
 	return 0;
 
-err_rsa:
-	EVP_PKEY_free(key);
 err_pubkey:
 	X509_free(cert);
 err_cert:
@@ -101,60 +86,81 @@ static int rsa_pem_get_pub_key(const char *path, RSA **rsap)
 /**
  * rsa_engine_get_pub_key() - read a public key from given engine
  *
- * @keydir:	Key prefix
- * @name	Name of key
- * @engine	Engine to use
- * @rsap	Returns RSA object, or NULL on failure
+ * @key_id: Key ID
+ * @provider: Provider to use
+ * @key: Returns key object
  * @return 0 if ok, -ve on error (in which case *rsap will be set to NULL)
  */
 static int rsa_engine_get_pub_key(const char *key_id,
-				  ENGINE *engine, RSA **rsap)
+				  const char *provider, EVP_PKEY **key)
 {
-	EVP_PKEY *key;
-	RSA *rsa;
-	int ret;
+	EVP_PKEY_CTX *ctx = NULL;
+	int ret = -1;
+
+	OSSL_LIB_CTX *libctx = OSSL_LIB_CTX_new();
+	if (!libctx) {
+		rsa_err("Failed to create OpenSSL library context");
+		return ret;
+	}
 
-	*rsap = NULL;
+	if (OSSL_LIB_CTX_load_config(libctx, provider) <= 0) {
+		rsa_err("Failed to load provider");
+		OSSL_LIB_CTX_free(libctx);
+		return ret;
+	}
 
-	key = ENGINE_load_public_key(engine, key_id, NULL, NULL);
-	if (!key)
-		return rsa_err("Failure loading public key from engine");
+	ctx = EVP_PKEY_CTX_new_from_name(libctx, "RSA", NULL);
+	if (!ctx) {
+		rsa_err("Failed to create EVP_PKEY_CTX");
+		goto err_ctx;
+	}
 
-	/* Convert to a RSA_style key. */
-	rsa = EVP_PKEY_get1_RSA(key);
-	if (!rsa) {
-		rsa_err("Couldn't convert to a RSA style key");
-		ret = -EINVAL;
-		goto err_rsa;
+	if (EVP_PKEY_fromdata_init(ctx) <= 0) {
+		rsa_err("Failed to initialize EVP_PKEY from data");
+		goto err_ctx;
 	}
 
-	EVP_PKEY_free(key);
-	*rsap = rsa;
+	OSSL_PARAM params[] = {
+		OSSL_PARAM_construct_utf8_string("uri", (char *)key_id, 0),
+		OSSL_PARAM_END
+	};
+
+	if (EVP_PKEY_fromdata(ctx, key, EVP_PKEY_PUBLIC_KEY, params) <= 0) {
+		rsa_err("Failed to load public key from engine");
+		goto err_ctx;
+	}
+
+	EVP_PKEY_free(*key);
+	EVP_PKEY_CTX_free(ctx);
+	OSSL_LIB_CTX_free(libctx);
 
 	return 0;
 
-err_rsa:
-	EVP_PKEY_free(key);
+err_ctx:
+	EVP_PKEY_CTX_free(ctx);
+	OSSL_LIB_CTX_free(libctx);
 	return ret;
 }
 
 /*
  * rsa_get_exponent(): - Get the public exponent from an RSA key
  */
-static int rsa_get_exponent(RSA *key, uint64_t *e)
+static int rsa_get_exponent(EVP_PKEY *key, uint64_t *e)
 {
 	int ret;
-	BIGNUM *bn_te;
-	const BIGNUM *key_e;
+	BIGNUM *bn_te = NULL;
+	BIGNUM *key_e = NULL;
 	uint64_t te;
 
-	ret = -EINVAL;
-	bn_te = NULL;
-
 	if (!e)
 		goto cleanup;
 
-	RSA_get0_key(key, NULL, &key_e, NULL);
+	ret = EVP_PKEY_get_bn_param(key, OSSL_PKEY_PARAM_RSA_E, &key_e);
+	if (!ret)
+		return -EINVAL;
+
+	ret = -EINVAL;
+
 	if (BN_num_bits(key_e) > 64)
 		goto cleanup;
 
@@ -181,8 +187,7 @@ static int rsa_get_exponent(RSA *key, uint64_t *e)
 	ret = 0;
 
 cleanup:
-	if (bn_te)
-		BN_free(bn_te);
+	BN_free(bn_te);
 
 	return ret;
 }
@@ -190,12 +195,12 @@ static int rsa_get_exponent(RSA *key, uint64_t *e)
 /*
  * rsa_get_params(): - Get the important parameters of an RSA public key
  */
-static int rsa_get_params(RSA *key, uint64_t *exponent, uint32_t *n0_invp,
+static int rsa_get_params(EVP_PKEY *key, uint64_t *exponent, uint32_t *n0_invp,
 			  BIGNUM **modulusp, BIGNUM **r_squaredp)
 {
 	BIGNUM *big1, *big2, *big32, *big2_32;
 	BIGNUM *n, *r, *r_squared, *tmp;
-	const BIGNUM *key_n;
+	BIGNUM *key_n = NULL;
 	BN_CTX *bn_ctx = BN_CTX_new();
 	int ret = 0;
 
@@ -207,9 +212,7 @@ static int rsa_get_params(RSA *key, uint64_t *exponent, uint32_t *n0_invp,
 	r_squared = BN_new();
 	tmp = BN_new();
 	big2_32 = BN_new();
-	n = BN_new();
-	if (!big1 || !big2 || !big32 || !r || !r_squared || !tmp || !big2_32 ||
-	    !n) {
+	if (!big1 || !big2 || !big32 || !r || !r_squared || !tmp || !big2_32) {
 		fprintf(stderr, "Out of memory (bignum)\n");
 		return -ENOMEM;
 	}
@@ -217,8 +220,13 @@ static int rsa_get_params(RSA *key, uint64_t *exponent, uint32_t *n0_invp,
 	if (0 != rsa_get_exponent(key, exponent))
 		ret = -1;
 
-	RSA_get0_key(key, &key_n, NULL, NULL);
-	if (!BN_copy(n, key_n) || !BN_set_word(big1, 1L) ||
+	ret = EVP_PKEY_get_bn_param(key, OSSL_PKEY_PARAM_RSA_N, &key_n);
+	if (!ret)
+		return -EINVAL;
+	ret = 0;
+
+	n = BN_dup(key_n);
+	if (!n || !BN_set_word(big1, 1L) ||
 	    !BN_set_word(big2, 2L) || !BN_set_word(big32, 32L))
 		ret = -1;
 
@@ -233,8 +241,7 @@ static int rsa_get_params(RSA *key, uint64_t *exponent, uint32_t *n0_invp,
 	*n0_invp = BN_get_word(tmp);
 
 	/* Calculate R = 2^(# of key bits) */
-	if (!BN_set_word(tmp, BN_num_bits(n)) ||
-	    !BN_exp(r, big2, tmp, bn_ctx))
+	if (!BN_set_word(tmp, BN_num_bits(n)) || !BN_exp(r, big2, tmp, bn_ctx))
 		ret = -1;
 
 	/* Calculate r_squared = R^2 mod n */
@@ -260,56 +267,6 @@ static int rsa_get_params(RSA *key, uint64_t *exponent, uint32_t *n0_invp,
 	return ret;
 }
 
-static int rsa_engine_init(ENGINE **pe)
-{
-	ENGINE *e;
-	int ret;
-	const char *key_pass = getenv("KBUILD_SIGN_PIN");
-
-	ENGINE_load_builtin_engines();
-
-	e = ENGINE_by_id("pkcs11");
-	if (!e) {
-		fprintf(stderr, "Engine isn't available\n");
-		ret = -1;
-		goto err_engine_by_id;
-	}
-
-	if (!ENGINE_init(e)) {
-		fprintf(stderr, "Couldn't initialize engine\n");
-		ret = -1;
-		goto err_engine_init;
-	}
-
-	if (key_pass) {
-		if (!ENGINE_ctrl_cmd_string(e, "PIN", key_pass, 0)) {
-			fprintf(stderr, "Cannot set PKCS#11 PIN\n");
-			goto err_set_rsa;
-		}
-	}
-
-	if (!ENGINE_set_default_RSA(e)) {
-		fprintf(stderr, "Couldn't set engine as default for RSA\n");
-		ret = -1;
-		goto err_set_rsa;
-	}
-
-	*pe = e;
-
-	return 0;
-
-err_set_rsa:
-	ENGINE_finish(e);
-err_engine_init:
-	ENGINE_free(e);
-err_engine_by_id:
-#if OPENSSL_VERSION_NUMBER < 0x10100000L || \
-	(defined(LIBRESSL_VERSION_NUMBER) && LIBRESSL_VERSION_NUMBER < 0x02070000fL)
-	ENGINE_cleanup();
-#endif
-	return ret;
-}
-
 static FILE *outfilep;
 
 static int print_bignum(BIGNUM *num, int num_bits)
@@ -328,7 +285,7 @@ static int print_bignum(BIGNUM *num, int num_bits)
 	 * Note: This code assumes that all of the above succeed, or all fail.
 	 * In practice memory allocations generally do not fail (unless the
 	 * process is killed), so it does not seem worth handling each of these
-	 * as a separate case. Technicaly this could leak memory on failure,
+	 * as a separate case. Technically this could leak memory on failure,
 	 * but a) it won't happen in practice, and b) it doesn't matter as we
 	 * will immediately exit with a failure code.
 	 */
@@ -389,8 +346,7 @@ static int gen_key(const char *keyname, const char *path)
 	uint32_t n0_inv;
 	int ret;
 	int bits;
-	RSA *rsa;
-	ENGINE *e = NULL;
+	EVP_PKEY *key;
 	char *tmp, *key_name_c;
 
 	tmp = key_name_c = strdup(keyname);
@@ -412,19 +368,16 @@ static int gen_key(const char *keyname, const char *path)
 	}
 
 	if (!strncmp(path, "pkcs11:", 7)) {
-		ret = rsa_engine_init(&e);
-		if (ret)
-			exit(1);
-		ret = rsa_engine_get_pub_key(path, e, &rsa);
+		ret = rsa_engine_get_pub_key(path, "pkcs11", &key);
 		if (ret)
 			exit(1);
 	} else {
-		ret = rsa_pem_get_pub_key(path, &rsa);
+		ret = rsa_pem_get_pub_key(path, &key);
 		if (ret)
 			exit(1);
 	}
 
-	ret = rsa_get_params(rsa, &exponent, &n0_inv, &modulus, &r_squared);
+	ret = rsa_get_params(key, &exponent, &n0_inv, &modulus, &r_squared);
 	if (ret)
 		return ret;
 
-- 
2.39.2



