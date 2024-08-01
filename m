Delivery-date: Thu, 01 Aug 2024 07:58:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZOpa-00529r-0d
	for lore@lore.pengutronix.de;
	Thu, 01 Aug 2024 07:58:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZOpY-0008JI-LL
	for lore@pengutronix.de; Thu, 01 Aug 2024 07:58:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=M6rVjt8GBKFMTAI/U5Z6Yxhm5jXpkisPkiuz1lhqix0=; b=i1s1nbtUgfzkuC0UnCcV9kGyV/
	8icTvTyeOVNvwEhmNZ4Sq2G6wGYlzEXEDdLhKG6mjG39Ll+POdd+qP8PkpTF6q6/QB4mYXfH5A4T0
	YcIy91bPtpGrWmMWOqqeOhE4vEcbOMkaw42PPOtaQV88ay0FYbecpwU+59NBxT1YnJvwqjHC7BygG
	aayuHn4qYgsTvHgPFKuThUB3g0MP94UEPR1AZVMMCV2jHjvVSjvhSgZOu0h3/7tbWK+UY75oYX/sh
	O4KQIhMPh4fBsPt9u/BlvS8g3JbDDXDWbVwjy9CIEBRffTymE86Ve7Uy/cXO5iJBCS1PAzzdcCuvt
	hUIq2kAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZOoz-00000003pY1-1Fwn;
	Thu, 01 Aug 2024 05:57:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZOoo-00000003pS5-1H21
	for barebox@lists.infradead.org;
	Thu, 01 Aug 2024 05:57:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sZOol-0007ut-9k; Thu, 01 Aug 2024 07:57:39 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sZOok-003hVy-SH; Thu, 01 Aug 2024 07:57:38 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sZOok-00DNum-2T;
	Thu, 01 Aug 2024 07:57:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  1 Aug 2024 07:57:25 +0200
Message-Id: <20240801055737.3190132-8-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240801055737.3190132-1-s.hauer@pengutronix.de>
References: <20240801055737.3190132-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_225742_476186_BA057C7D 
X-CRM114-Status: GOOD (  16.12  )
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
Subject: [PATCH v2 07/19] rsatoc: cleanup error handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

- In case of an error bail out immediately instead of continuing and
  just return an error at the end
- explicitly set 'ret' right before going to the cleanup label which
  makes the code more readable

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/rsatoc.c | 58 +++++++++++++++++++++++++++++++++---------------
 1 file changed, 40 insertions(+), 18 deletions(-)

diff --git a/scripts/rsatoc.c b/scripts/rsatoc.c
index 0faf41bca2..22f0318298 100644
--- a/scripts/rsatoc.c
+++ b/scripts/rsatoc.c
@@ -167,15 +167,16 @@ static int rsa_get_exponent(RSA *key, uint64_t *e)
 	const BIGNUM *key_e;
 	uint64_t te;
 
-	ret = -EINVAL;
 	bn_te = NULL;
 
 	if (!e)
 		goto cleanup;
 
 	RSA_get0_key(key, NULL, &key_e, NULL);
-	if (BN_num_bits(key_e) > 64)
+	if (BN_num_bits(key_e) > 64) {
+		ret = -EINVAL;
 		goto cleanup;
+	}
 
 	*e = BN_get_word(key_e);
 
@@ -185,14 +186,20 @@ static int rsa_get_exponent(RSA *key, uint64_t *e)
 	}
 
 	bn_te = BN_dup(key_e);
-	if (!bn_te)
+	if (!bn_te) {
+		ret = -EINVAL;
 		goto cleanup;
+	}
 
-	if (!BN_rshift(bn_te, bn_te, 32))
+	if (!BN_rshift(bn_te, bn_te, 32)) {
+		ret = -EINVAL;
 		goto cleanup;
+	}
 
-	if (!BN_mask_bits(bn_te, 32))
+	if (!BN_mask_bits(bn_te, 32)) {
+		ret = -EINVAL;
 		goto cleanup;
+	}
 
 	te = BN_get_word(bn_te);
 	te <<= 32;
@@ -217,7 +224,7 @@ static int rsa_get_params(EVP_PKEY *key, uint64_t *exponent, uint32_t *n0_invp,
 	BIGNUM *n, *r, *r_squared, *tmp;
 	const BIGNUM *key_n;
 	BN_CTX *bn_ctx = BN_CTX_new();
-	int ret = 0;
+	int ret;
 
 	/* Convert to a RSA_style key. */
 	rsa = EVP_PKEY_get1_RSA(key);
@@ -241,38 +248,53 @@ static int rsa_get_params(EVP_PKEY *key, uint64_t *exponent, uint32_t *n0_invp,
 		return -ENOMEM;
 	}
 
-	if (0 != rsa_get_exponent(rsa, exponent))
-		ret = -1;
+	ret = rsa_get_exponent(rsa, exponent);
+	if (ret)
+		goto cleanup;
 
 	RSA_get0_key(rsa, &key_n, NULL, NULL);
 	if (!BN_copy(n, key_n) || !BN_set_word(big1, 1L) ||
-	    !BN_set_word(big2, 2L) || !BN_set_word(big32, 32L))
-		ret = -1;
+	    !BN_set_word(big2, 2L) || !BN_set_word(big32, 32L)) {
+		ret = -EINVAL;
+		goto cleanup;
+	}
 
 	/* big2_32 = 2^32 */
-	if (!BN_exp(big2_32, big2, big32, bn_ctx))
-		ret = -1;
+	if (!BN_exp(big2_32, big2, big32, bn_ctx)) {
+		ret = -EINVAL;
+		goto cleanup;
+	}
 
 	/* Calculate n0_inv = -1 / n[0] mod 2^32 */
 	if (!BN_mod_inverse(tmp, n, big2_32, bn_ctx) ||
-	    !BN_sub(tmp, big2_32, tmp))
-		ret = -1;
+	    !BN_sub(tmp, big2_32, tmp)) {
+		ret = -EINVAL;
+		goto cleanup;
+	}
+
 	*n0_invp = BN_get_word(tmp);
 
 	/* Calculate R = 2^(# of key bits) */
 	if (!BN_set_word(tmp, BN_num_bits(n)) ||
-	    !BN_exp(r, big2, tmp, bn_ctx))
-		ret = -1;
+	    !BN_exp(r, big2, tmp, bn_ctx)) {
+		ret = -EINVAL;
+		goto cleanup;
+	}
 
 	/* Calculate r_squared = R^2 mod n */
 	if (!BN_copy(r_squared, r) ||
 	    !BN_mul(tmp, r_squared, r, bn_ctx) ||
-	    !BN_mod(r_squared, tmp, n, bn_ctx))
-		ret = -1;
+	    !BN_mod(r_squared, tmp, n, bn_ctx)) {
+		ret = -EINVAL;
+		goto cleanup;
+	}
 
 	*modulusp = n;
 	*r_squaredp = r_squared;
 
+	ret = 0;
+
+cleanup:
 	BN_free(big1);
 	BN_free(big2);
 	BN_free(big32);
-- 
2.39.2



