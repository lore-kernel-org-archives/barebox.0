Delivery-date: Thu, 01 Aug 2024 08:03:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZOug-0052JV-0i
	for lore@lore.pengutronix.de;
	Thu, 01 Aug 2024 08:03:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZOud-0001kq-N3
	for lore@pengutronix.de; Thu, 01 Aug 2024 08:03:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SLXB3IHLA2bClEt6puU9Omc06R6el1URxGYOuXCR7Ok=; b=qJlL1bWYiA7NF1n2D+ssvYD9cr
	KT3Yp+PuYp//9pwGbwmUu2P1LnF5FKUyQeM7xA7ta4SD1Ba8diM0Zuel1rBanrn+ZNfCPe+e4Nd53
	o4tiCyvyM0mTEq0cPzsf4ZLScvDWlz/0k9lt7Qlt92sFiin82b9aho7uj00SvZ1KsdJRazj/XKRWw
	nSA80icHEPDV7TaMt5QuteaPWE9gCpP1zK3FOvU6/mWwfM4up5s4jfPyitd104TGIsaX6994LFf1f
	EyEZMiXIFvOheT/c/HP7Aw1eWSbo+OPXyp1efS3D1Y05Hl9sHjHaLX/iCX2+3zPAlMOtF4aATC5o0
	Q9Nvh0bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZOu7-00000003qUC-0rYq;
	Thu, 01 Aug 2024 06:03:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZOu0-00000003qQ0-2iuj
	for barebox@lists.infradead.org;
	Thu, 01 Aug 2024 06:03:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sZOtz-0001Gr-Fa; Thu, 01 Aug 2024 08:03:03 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sZOtz-003hWp-1y; Thu, 01 Aug 2024 08:03:03 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sZOol-00DNum-02;
	Thu, 01 Aug 2024 07:57:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  1 Aug 2024 07:57:30 +0200
Message-Id: <20240801055737.3190132-13-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240801055737.3190132-1-s.hauer@pengutronix.de>
References: <20240801055737.3190132-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_230304_873347_52E615A0 
X-CRM114-Status: GOOD (  18.12  )
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
Subject: [PATCH v2 12/19] keytoc: add ecdsa support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This extends the keytoc utility to also handle ecdsa keys.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/keytoc.c | 191 +++++++++++++++++++++++++++++++++++++++--------
 1 file changed, 161 insertions(+), 30 deletions(-)

diff --git a/scripts/keytoc.c b/scripts/keytoc.c
index 891425cecc..0883ca64f7 100644
--- a/scripts/keytoc.c
+++ b/scripts/keytoc.c
@@ -20,6 +20,8 @@
 #include <openssl/engine.h>
 #include <openssl/provider.h>
 #include <openssl/core_names.h>
+#include <openssl/param_build.h>
+#include <openssl/store.h>
 
 static int dts, standalone;
 
@@ -377,44 +379,131 @@ static int print_bignum(BIGNUM *num, int num_bits)
 	return 0;
 }
 
-static int gen_key(const char *keyname, const char *path)
+/*
+ * When imported from a HSM the key doesn't have the EC point parameters,
+ * only the pubkey itself exists. Exporting the pubkey and creating a new
+ * pkey from it resolves this. This can likely (hopefully) be improved, but
+ * I don't have an idea how.
+ */
+static EVP_PKEY *reimport_key(EVP_PKEY *pkey)
 {
-	BIGNUM *modulus, *r_squared;
-	uint64_t exponent = 0;
-	uint32_t n0_inv;
+	char group[128] = {};
+	size_t outlen;
+	OSSL_PARAM *params;
+	OSSL_PARAM_BLD *param_bld = NULL;
+	unsigned char pub[128] = {};
+	size_t len;
+	EVP_PKEY *pkey_out = NULL;
+	EVP_PKEY_CTX *pkey_ctx;
 	int ret;
-	int bits;
-	EVP_PKEY *key;
-	char *tmp, *key_name_c;
 
-	tmp = key_name_c = strdup(keyname);
+	ret = EVP_PKEY_get_utf8_string_param(pkey, "group", group, sizeof(group), &outlen);
+	if (!ret)
+		return NULL;
 
-	while (*tmp) {
-		if (*tmp == '-')
-			*tmp = '_';
-		tmp++;
-	}
+	ret = EVP_PKEY_get_octet_string_param(pkey, OSSL_PKEY_PARAM_PUB_KEY,
+					      pub, sizeof(pub), &len);
+	if (ret <= 0)
+		return NULL;
 
-	if (!strncmp(path, "__ENV__", 7)) {
-		const char *var = getenv(path + 7);
-		if (!var) {
-			fprintf(stderr,
-				"environment variable \"%s\" is empty\n", path + 7);
-			exit(1);
-		}
-		path = var;
-	}
+	param_bld = OSSL_PARAM_BLD_new();
+	if (!param_bld)
+		return NULL;
 
-	if (!strncmp(path, "pkcs11:", 7)) {
-		ret = engine_get_pub_key(path, &key);
-		if (ret)
-			exit(1);
+	ret = OSSL_PARAM_BLD_push_utf8_string(param_bld, "group", group, 0);
+	if (ret <= 0)
+		return NULL;
+
+	ret = OSSL_PARAM_BLD_push_octet_string(param_bld, "pub", pub, len);
+	if (ret <= 0)
+		return NULL;
+
+	params = OSSL_PARAM_BLD_to_param(param_bld);
+	if (!params)
+		return NULL;
+
+	pkey_ctx = EVP_PKEY_CTX_new_from_pkey(NULL, pkey, NULL);
+	if (!pkey_ctx)
+		return NULL;
+
+	ret = EVP_PKEY_fromdata_init(pkey_ctx);
+	if (ret <= 0)
+		return NULL;
+
+	ret = EVP_PKEY_fromdata(pkey_ctx, &pkey_out, EVP_PKEY_PUBLIC_KEY, params);
+	if (ret <= 0)
+		return NULL;
+
+	return pkey_out;
+}
+
+static int gen_key_ecdsa(EVP_PKEY *key, const char *key_name, const char *key_name_c)
+{
+	char group[128];
+	size_t outlen;
+	int ret, bits;
+	BIGNUM *key_x = NULL, *key_y = NULL;
+
+	key = reimport_key(key);
+	if (!key)
+		return -EINVAL;
+
+	ret = EVP_PKEY_get_int_param(key, "bits", &bits);
+	if (!ret)
+		return -EINVAL;
+	ret = EVP_PKEY_get_utf8_string_param(key, "group", group, sizeof(group), &outlen);
+	if (!ret)
+		return -EINVAL;
+
+	ret = EVP_PKEY_get_bn_param(key, OSSL_PKEY_PARAM_EC_PUB_X, &key_x);
+	if (!ret)
+		return -EINVAL;
+
+	ret = EVP_PKEY_get_bn_param(key, OSSL_PKEY_PARAM_EC_PUB_Y, &key_y);
+	if (!ret)
+		return -EINVAL;
+
+	if (dts) {
+		fprintf(outfilep, "\t\tkey-%s {\n", key_name_c);
+		fprintf(outfilep, "\t\t\tecdsa,x-point = <");
+		print_bignum(key_x, bits);
+		fprintf(outfilep, ">;\n");
+		fprintf(outfilep, "\t\t\tecdsa,y-point = <");
+		print_bignum(key_y, bits);
+		fprintf(outfilep, ">;\n");
+		fprintf(outfilep, "\t\t\tecdsa,curve = \"%s\";\n", group);
+		fprintf(outfilep, "\t\t};\n");
 	} else {
-		ret = pem_get_pub_key(path, &key);
-		if (ret)
-			exit(1);
+		fprintf(outfilep, "\nstatic uint32_t %s_x[] = {", key_name_c);
+		print_bignum(key_x, bits);
+		fprintf(outfilep, "\n};\n\n");
+
+		fprintf(outfilep, "static uint32_t %s_y[] = {", key_name_c);
+		print_bignum(key_y, bits);
+		fprintf(outfilep, "\n};\n\n");
+
+		fprintf(outfilep, "static struct ecdsa_public_key %s = {\n", key_name_c);
+
+		fprintf(outfilep, "\t.curve_name = \"%s\",\n", group);
+		fprintf(outfilep, "\t.x = %s_x,\n", key_name_c);
+		fprintf(outfilep, "\t.y = %s_y,\n", key_name_c);
+		fprintf(outfilep, "};\n");
+		if (!standalone)
+			fprintf(outfilep, "\nstruct ecdsa_public_key *%s_ecdsa_p __attribute__((section(\".ecdsa_keys.rodata.%s\"))) = &%s;\n",
+				key_name_c, key_name_c, key_name_c);
 	}
 
+	return 0;
+}
+
+static int gen_key_rsa(EVP_PKEY *key, const char *key_name, const char *key_name_c)
+{
+	BIGNUM *modulus, *r_squared;
+	uint64_t exponent = 0;
+	uint32_t n0_inv;
+	int bits;
+	int ret;
+
 	ret = rsa_get_params(key, &exponent, &n0_inv, &modulus, &r_squared);
 	if (ret)
 		return ret;
@@ -457,7 +546,7 @@ static int gen_key(const char *keyname, const char *path)
 		fprintf(outfilep, "\t.modulus = %s_modulus,\n", key_name_c);
 		fprintf(outfilep, "\t.rr = %s_rr,\n", key_name_c);
 		fprintf(outfilep, "\t.exponent = 0x%0lx,\n", exponent);
-		fprintf(outfilep, "\t.key_name_hint = \"%s\",\n", keyname);
+		fprintf(outfilep, "\t.key_name_hint = \"%s\",\n", key_name);
 		fprintf(outfilep, "};\n");
 
 		if (!standalone)
@@ -468,6 +557,47 @@ static int gen_key(const char *keyname, const char *path)
 	return 0;
 }
 
+static int gen_key(const char *keyname, const char *path)
+{
+	int ret;
+	EVP_PKEY *key;
+	char *tmp, *key_name_c;
+
+	tmp = key_name_c = strdup(keyname);
+
+	while (*tmp) {
+		if (*tmp == '-')
+			*tmp = '_';
+		tmp++;
+	}
+
+	if (!strncmp(path, "__ENV__", 7)) {
+		const char *var = getenv(path + 7);
+		if (!var) {
+			fprintf(stderr,
+				"environment variable \"%s\" is empty\n", path + 7);
+			exit(1);
+		}
+		path = var;
+	}
+
+	if (!strncmp(path, "pkcs11:", 7)) {
+		ret = engine_get_pub_key(path, &key);
+		if (ret)
+			exit(1);
+	} else {
+		ret = pem_get_pub_key(path, &key);
+		if (ret)
+			exit(1);
+	}
+
+	ret = gen_key_ecdsa(key, keyname, key_name_c);
+	if (ret)
+		ret = gen_key_rsa(key, keyname, key_name_c);
+
+	return 0;
+}
+
 int main(int argc, char *argv[])
 {
 	char *path, *keyname;
@@ -515,6 +645,7 @@ int main(int argc, char *argv[])
 		else
 			fprintf(outfilep, "\tsignature {\n");
 	} else if (standalone) {
+		fprintf(outfilep, "#include <ecdsa.h>\n");
 		fprintf(outfilep, "#include <rsa.h>\n");
 	}
 
-- 
2.39.2



