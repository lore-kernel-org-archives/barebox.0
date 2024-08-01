Delivery-date: Thu, 01 Aug 2024 07:58:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZOpa-0052AE-1y
	for lore@lore.pengutronix.de;
	Thu, 01 Aug 2024 07:58:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZOpZ-0008KH-Dx
	for lore@pengutronix.de; Thu, 01 Aug 2024 07:58:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QlTPpFfxQyqL3howPZOoPE6OA0yW5qMSNqNVERUg1nQ=; b=J575lQwHgJ8sD/pC56zKvuGI/9
	NKEvWZ/PjGJnLPfVQ4PH3r/z/PlaZnpo0DgLYPQhr13Z3EtvAWtrcwjR+9tR/11+iHht9bhyqUQ8e
	0Zo9HT1+qITMrYKU9eXm+lBpQ1xNwYCHIW3Ckidjcj5wFolx0zb6uKB6wCRwek1ldGLWlUf099m/3
	jq6IuaGg8LPKqHBueXt4X3VFvwFeoQcM4W14uHeHBqMFyQfkeLfHZI8IZJyplwaLQU8TcIvSMDNk2
	sR5Rr2iYBIxu64iaFYnQaaI+86W/n6e19Zzt04nEEwQ/Yg+KTx+q6dZ58cjyJ/3aPDGyXNpRXbxYn
	AWRVgEXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZOos-00000003pVY-3TQJ;
	Thu, 01 Aug 2024 05:57:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZOoo-00000003pS1-0jCW
	for barebox@lists.infradead.org;
	Thu, 01 Aug 2024 05:57:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sZOol-0007uE-5l; Thu, 01 Aug 2024 07:57:39 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sZOok-003hVp-NZ; Thu, 01 Aug 2024 07:57:38 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sZOok-00DNum-1z;
	Thu, 01 Aug 2024 07:57:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  1 Aug 2024 07:57:22 +0200
Message-Id: <20240801055737.3190132-5-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240801055737.3190132-1-s.hauer@pengutronix.de>
References: <20240801055737.3190132-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_225742_239271_27121132 
X-CRM114-Status: GOOD (  18.00  )
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
Subject: [PATCH v2 04/19] rsatoc: pass EVP_PKEY around
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

rsa_pem_get_pub_key() and rsa_engine_get_pub_key() both return a RSA *.
Return a EVP_PKEY * instead and only convert it into a RSA * in
rsa_get_params(). Also drop the rsa_ prefix from the function name as
they are no longer rsa specific. This is done in preparation for adding
ECDSA support later.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/rsatoc.c | 79 +++++++++++++++++-------------------------------
 1 file changed, 28 insertions(+), 51 deletions(-)

diff --git a/scripts/rsatoc.c b/scripts/rsatoc.c
index 37728899f8..462963424a 100644
--- a/scripts/rsatoc.c
+++ b/scripts/rsatoc.c
@@ -33,25 +33,24 @@ static int rsa_err(const char *msg)
 }
 
 /**
- * rsa_pem_get_pub_key() - read a public key from a .crt file
+ * pem_get_pub_key() - read a public key from a .crt file
  *
  * @keydir:	Directory containins the key
  * @name	Name of key file (will have a .crt extension)
- * @rsap	Returns RSA object, or NULL on failure
+ * @key		Returns key object, or NULL on failure
  * @return 0 if ok, -ve on error (in which case *rsap will be set to NULL)
  */
-static int rsa_pem_get_pub_key(const char *path, RSA **rsap)
+static int pem_get_pub_key(const char *path, EVP_PKEY **pkey)
 {
 	EVP_PKEY *key;
 	X509 *cert;
-	RSA *rsa;
 	FILE *f;
 	int ret;
 
-	*rsap = NULL;
+	*pkey = NULL;
 	f = fopen(path, "r");
 	if (!f) {
-		fprintf(stderr, "Couldn't open RSA certificate: '%s': %s\n",
+		fprintf(stderr, "Couldn't open certificate: '%s': %s\n",
 			path, strerror(errno));
 		return -EACCES;
 	}
@@ -76,22 +75,13 @@ static int rsa_pem_get_pub_key(const char *path, RSA **rsap)
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
+
+	*pkey = key;
 
 	return 0;
 
-err_rsa:
-	EVP_PKEY_free(key);
 err_pubkey:
 	X509_free(cert);
 err_cert:
@@ -100,43 +90,22 @@ static int rsa_pem_get_pub_key(const char *path, RSA **rsap)
 }
 
 /**
- * rsa_engine_get_pub_key() - read a public key from given engine
+ * engine_get_pub_key() - read a public key from given engine
  *
  * @keydir:	Key prefix
  * @name	Name of key
  * @engine	Engine to use
- * @rsap	Returns RSA object, or NULL on failure
+ * @key		Returns key object, or NULL on failure
  * @return 0 if ok, -ve on error (in which case *rsap will be set to NULL)
  */
-static int rsa_engine_get_pub_key(const char *key_id,
-				  ENGINE *engine, RSA **rsap)
+static int engine_get_pub_key(const char *key_id,
+				  ENGINE *engine, EVP_PKEY **key)
 {
-	EVP_PKEY *key;
-	RSA *rsa;
-	int ret;
-
-	*rsap = NULL;
-
-	key = ENGINE_load_public_key(engine, key_id, NULL, NULL);
-	if (!key)
+	*key = ENGINE_load_public_key(engine, key_id, NULL, NULL);
+	if (!*key)
 		return rsa_err("Failure loading public key from engine");
 
-	/* Convert to a RSA_style key. */
-	rsa = EVP_PKEY_get1_RSA(key);
-	if (!rsa) {
-		rsa_err("Couldn't convert to a RSA style key");
-		ret = -EINVAL;
-		goto err_rsa;
-	}
-
-	EVP_PKEY_free(key);
-	*rsap = rsa;
-
 	return 0;
-
-err_rsa:
-	EVP_PKEY_free(key);
-	return ret;
 }
 
 /*
@@ -191,15 +160,23 @@ static int rsa_get_exponent(RSA *key, uint64_t *e)
 /*
  * rsa_get_params(): - Get the important parameters of an RSA public key
  */
-static int rsa_get_params(RSA *key, uint64_t *exponent, uint32_t *n0_invp,
+static int rsa_get_params(EVP_PKEY *key, uint64_t *exponent, uint32_t *n0_invp,
 			  BIGNUM **modulusp, BIGNUM **r_squaredp)
 {
+	RSA *rsa;
 	BIGNUM *big1, *big2, *big32, *big2_32;
 	BIGNUM *n, *r, *r_squared, *tmp;
 	const BIGNUM *key_n;
 	BN_CTX *bn_ctx = BN_CTX_new();
 	int ret = 0;
 
+	/* Convert to a RSA_style key. */
+	rsa = EVP_PKEY_get1_RSA(key);
+	if (!rsa) {
+		rsa_err("Couldn't convert to a RSA style key");
+		return -EINVAL;
+	}
+
 	/* Initialize BIGNUMs */
 	big1 = BN_new();
 	big2 = BN_new();
@@ -215,10 +192,10 @@ static int rsa_get_params(RSA *key, uint64_t *exponent, uint32_t *n0_invp,
 		return -ENOMEM;
 	}
 
-	if (0 != rsa_get_exponent(key, exponent))
+	if (0 != rsa_get_exponent(rsa, exponent))
 		ret = -1;
 
-	RSA_get0_key(key, &key_n, NULL, NULL);
+	RSA_get0_key(rsa, &key_n, NULL, NULL);
 	if (!BN_copy(n, key_n) || !BN_set_word(big1, 1L) ||
 	    !BN_set_word(big2, 2L) || !BN_set_word(big32, 32L))
 		ret = -1;
@@ -384,7 +361,7 @@ static int gen_key(const char *keyname, const char *path)
 	uint32_t n0_inv;
 	int ret;
 	int bits;
-	RSA *rsa;
+	EVP_PKEY *key;
 	ENGINE *e = NULL;
 	char *tmp, *key_name_c;
 
@@ -410,16 +387,16 @@ static int gen_key(const char *keyname, const char *path)
 		ret = rsa_engine_init(&e);
 		if (ret)
 			exit(1);
-		ret = rsa_engine_get_pub_key(path, e, &rsa);
+		ret = engine_get_pub_key(path, e, &key);
 		if (ret)
 			exit(1);
 	} else {
-		ret = rsa_pem_get_pub_key(path, &rsa);
+		ret = pem_get_pub_key(path, &key);
 		if (ret)
 			exit(1);
 	}
 
-	ret = rsa_get_params(rsa, &exponent, &n0_inv, &modulus, &r_squared);
+	ret = rsa_get_params(key, &exponent, &n0_inv, &modulus, &r_squared);
 	if (ret)
 		return ret;
 
-- 
2.39.2



