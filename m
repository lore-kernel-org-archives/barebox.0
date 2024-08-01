Delivery-date: Thu, 01 Aug 2024 07:58:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZOpa-0052Aa-2q
	for lore@lore.pengutronix.de;
	Thu, 01 Aug 2024 07:58:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZOpa-0008L5-2l
	for lore@pengutronix.de; Thu, 01 Aug 2024 07:58:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=u9SSeYV24gdFfOJicqNImZ/gtKsPjfYp/gDpxyylCfw=; b=r0bM2Xb50Jl52nBsB9Qx8F8PEf
	VMbh9gnktWODFmwMtFjtAOJORTrnHNWMInp51LjZmT9wSUCa1wKmGQLah+MEbscsRcZJHCtD8Bekk
	vVhcTUizby6ZtlMEoN+NvZ56UGmLtmtHy/onZJ5PjCXXi17MTfrMUzHPnkHnokvxc/M61BFTzTWVY
	N10Sn/piozUpgmOkJF5QPNaWyuman9tG0BEGwo6eh6k2baW8Ru9NPBgmokzEkup74zVeN7V5Dfhz5
	yM9FHu1behpTIje8zYvjERU8R6PPqMPrfvgs1lA0OUvd/ddbyaTC6fz41ZPfyTwY9sPpCb0M05hDJ
	70uo0GZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZOp0-00000003pYc-3JK1;
	Thu, 01 Aug 2024 05:57:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZOou-00000003pW1-1ihO
	for barebox@lists.infradead.org;
	Thu, 01 Aug 2024 05:57:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sZOol-0007ud-7r; Thu, 01 Aug 2024 07:57:39 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sZOok-003hVv-Qh; Thu, 01 Aug 2024 07:57:38 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sZOok-00DNum-2J;
	Thu, 01 Aug 2024 07:57:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  1 Aug 2024 07:57:24 +0200
Message-Id: <20240801055737.3190132-7-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240801055737.3190132-1-s.hauer@pengutronix.de>
References: <20240801055737.3190132-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_225748_477678_61EF1EFB 
X-CRM114-Status: GOOD (  16.71  )
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
Subject: [PATCH v2 06/19] rsatoc: move engine initialization to engine_get_pub_key()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The openssl engine is only used in engine_get_pub_key(), so initialize
is there instead of in the caller. This is done in preparation of
replacing the deprecated engine code with a provider.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/rsatoc.c | 107 ++++++++++++++++++++++++-----------------------
 1 file changed, 54 insertions(+), 53 deletions(-)

diff --git a/scripts/rsatoc.c b/scripts/rsatoc.c
index 1d2eb48d08..0faf41bca2 100644
--- a/scripts/rsatoc.c
+++ b/scripts/rsatoc.c
@@ -89,19 +89,68 @@ static int pem_get_pub_key(const char *path, EVP_PKEY **pkey)
 	return ret;
 }
 
+static int engine_init(ENGINE **pe)
+{
+	ENGINE *e;
+	int ret;
+	const char *key_pass = getenv("KBUILD_SIGN_PIN");
+
+	ENGINE_load_builtin_engines();
+
+	e = ENGINE_by_id("pkcs11");
+	if (!e) {
+		fprintf(stderr, "Engine isn't available\n");
+		ret = -1;
+		goto err_engine_by_id;
+	}
+
+	if (!ENGINE_init(e)) {
+		fprintf(stderr, "Couldn't initialize engine\n");
+		ret = -1;
+		goto err_engine_init;
+	}
+
+	if (key_pass) {
+		if (!ENGINE_ctrl_cmd_string(e, "PIN", key_pass, 0)) {
+			fprintf(stderr, "Cannot set PKCS#11 PIN\n");
+			goto err_set_rsa;
+		}
+	}
+
+	*pe = e;
+
+	return 0;
+
+err_set_rsa:
+	ENGINE_finish(e);
+err_engine_init:
+	ENGINE_free(e);
+err_engine_by_id:
+#if OPENSSL_VERSION_NUMBER < 0x10100000L || \
+	(defined(LIBRESSL_VERSION_NUMBER) && LIBRESSL_VERSION_NUMBER < 0x02070000fL)
+	ENGINE_cleanup();
+#endif
+	return ret;
+}
+
 /**
  * engine_get_pub_key() - read a public key from given engine
  *
  * @keydir:	Key prefix
  * @name	Name of key
- * @engine	Engine to use
  * @key		Returns key object, or NULL on failure
  * @return 0 if ok, -ve on error (in which case *rsap will be set to NULL)
  */
-static int engine_get_pub_key(const char *key_id,
-				  ENGINE *engine, EVP_PKEY **key)
+static int engine_get_pub_key(const char *key_id, EVP_PKEY **key)
 {
-	*key = ENGINE_load_public_key(engine, key_id, NULL, NULL);
+	ENGINE *e;
+	int ret;
+
+	ret = engine_init(&e);
+	if (ret)
+		return ret;
+
+	*key = ENGINE_load_public_key(e, key_id, NULL, NULL);
 	if (!*key)
 		return openssl_error("Failure loading public key from engine");
 
@@ -238,50 +287,6 @@ static int rsa_get_params(EVP_PKEY *key, uint64_t *exponent, uint32_t *n0_invp,
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
@@ -362,7 +367,6 @@ static int gen_key(const char *keyname, const char *path)
 	int ret;
 	int bits;
 	EVP_PKEY *key;
-	ENGINE *e = NULL;
 	char *tmp, *key_name_c;
 
 	tmp = key_name_c = strdup(keyname);
@@ -384,10 +388,7 @@ static int gen_key(const char *keyname, const char *path)
 	}
 
 	if (!strncmp(path, "pkcs11:", 7)) {
-		ret = rsa_engine_init(&e);
-		if (ret)
-			exit(1);
-		ret = engine_get_pub_key(path, e, &key);
+		ret = engine_get_pub_key(path, &key);
 		if (ret)
 			exit(1);
 	} else {
-- 
2.39.2



