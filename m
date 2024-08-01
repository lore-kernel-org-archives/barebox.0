Delivery-date: Thu, 01 Aug 2024 07:58:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZOpZ-00529T-2e
	for lore@lore.pengutronix.de;
	Thu, 01 Aug 2024 07:58:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZOpY-0008JA-FE
	for lore@pengutronix.de; Thu, 01 Aug 2024 07:58:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XBJlsPHyVbKBjHVmyoY0FlTWAPnQkXnyaTe6hJEUg40=; b=DycEQ//3mMD8hV0OsaPqIML+bc
	NcarzdfFHBAFORYrKrPQTEyo5m/fdj1R/3nqpzy24KTSB1ErHhosw+hwDo81cYjcDYNH22W9CRnN9
	I4q97K2qrCXU/SJKvqhpBQ1XzJqQrbe1I+/hR/xEdursL8xh52N8KtQearubrYBmetP1BkBcGZTzJ
	V3Pjc++wr1aqesIjR/YMWvA1C5DUlMhoJcOnYR6Mw6QYsXzrFVu8ecoSbNHGBK9zspRARcHfCs9hm
	VuDP2KBSXy+/B0otYmiJK+nBy3NuHM7sh+pV5jFMsF4eqbg75bf+jf/AGtRvkjdWFwYaRbL8ao031
	S8EJDcQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZOot-00000003pVy-3ah0;
	Thu, 01 Aug 2024 05:57:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZOoo-00000003pS7-17Zn
	for barebox@lists.infradead.org;
	Thu, 01 Aug 2024 05:57:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sZOol-0007v8-Cr; Thu, 01 Aug 2024 07:57:39 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sZOok-003hW4-VP; Thu, 01 Aug 2024 07:57:38 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sZOok-00DNum-2o;
	Thu, 01 Aug 2024 07:57:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  1 Aug 2024 07:57:27 +0200
Message-Id: <20240801055737.3190132-10-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240801055737.3190132-1-s.hauer@pengutronix.de>
References: <20240801055737.3190132-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_225742_451808_6D75BDB9 
X-CRM114-Status: GOOD (  13.03  )
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
Subject: [PATCH v2 09/19] rsatoc: use non deprecated openssl functions to retrieve RSA params
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

EVP_PKEY_get1_RSA() and RSA_get0_key() are deprecated. Use
EVP_PKEY_get_bn_param() instead.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/rsatoc.c | 29 +++++++++++++++--------------
 1 file changed, 15 insertions(+), 14 deletions(-)

diff --git a/scripts/rsatoc.c b/scripts/rsatoc.c
index afef6212d0..c7bc4ba843 100644
--- a/scripts/rsatoc.c
+++ b/scripts/rsatoc.c
@@ -18,6 +18,8 @@
 #include <openssl/ssl.h>
 #include <openssl/evp.h>
 #include <openssl/engine.h>
+#include <openssl/provider.h>
+#include <openssl/core_names.h>
 
 static int dts, standalone;
 
@@ -160,14 +162,17 @@ static int engine_get_pub_key(const char *key_id, EVP_PKEY **key)
 /*
  * rsa_get_exponent(): - Get the public exponent from an RSA key
  */
-static int rsa_get_exponent(RSA *key, uint64_t *e)
+static int rsa_get_exponent(EVP_PKEY *key, uint64_t *e)
 {
 	int ret;
 	BIGNUM *bn_te = NULL;
-	const BIGNUM *key_e;
+	BIGNUM *key_e = NULL;
 	uint64_t te;
 
-	RSA_get0_key(key, NULL, &key_e, NULL);
+	ret = EVP_PKEY_get_bn_param(key, OSSL_PKEY_PARAM_RSA_E, &key_e);
+	if (!ret)
+		return -EINVAL;
+
 	if (BN_num_bits(key_e) > 64) {
 		ret = -EINVAL;
 		goto cleanup;
@@ -204,6 +209,7 @@ static int rsa_get_exponent(RSA *key, uint64_t *e)
 cleanup:
 	if (bn_te)
 		BN_free(bn_te);
+	BN_free(key_e);
 
 	return ret;
 }
@@ -214,20 +220,12 @@ static int rsa_get_exponent(RSA *key, uint64_t *e)
 static int rsa_get_params(EVP_PKEY *key, uint64_t *exponent, uint32_t *n0_invp,
 			  BIGNUM **modulusp, BIGNUM **r_squaredp)
 {
-	RSA *rsa;
 	BIGNUM *big1, *big2, *big32, *big2_32;
 	BIGNUM *n, *r, *r_squared, *tmp;
-	const BIGNUM *key_n;
+	BIGNUM *key_n = NULL;
 	BN_CTX *bn_ctx = BN_CTX_new();
 	int ret;
 
-	/* Convert to a RSA_style key. */
-	rsa = EVP_PKEY_get1_RSA(key);
-	if (!rsa) {
-		openssl_error("Couldn't convert to a RSA style key");
-		return -EINVAL;
-	}
-
 	/* Initialize BIGNUMs */
 	big1 = BN_new();
 	big2 = BN_new();
@@ -243,11 +241,14 @@ static int rsa_get_params(EVP_PKEY *key, uint64_t *exponent, uint32_t *n0_invp,
 		return -ENOMEM;
 	}
 
-	ret = rsa_get_exponent(rsa, exponent);
+	ret = rsa_get_exponent(key, exponent);
 	if (ret)
 		goto cleanup;
 
-	RSA_get0_key(rsa, &key_n, NULL, NULL);
+	ret = EVP_PKEY_get_bn_param(key, OSSL_PKEY_PARAM_RSA_N, &key_n);
+	if (!ret)
+		return -EINVAL;
+
 	if (!BN_copy(n, key_n) || !BN_set_word(big1, 1L) ||
 	    !BN_set_word(big2, 2L) || !BN_set_word(big32, 32L)) {
 		ret = -EINVAL;
-- 
2.39.2



