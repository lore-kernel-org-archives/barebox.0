Delivery-date: Mon, 22 Jul 2024 10:24:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sVoLq-001kpL-16
	for lore@lore.pengutronix.de;
	Mon, 22 Jul 2024 10:24:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sVoLn-0000CY-S4
	for lore@pengutronix.de; Mon, 22 Jul 2024 10:24:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zzc4Xd95vPud7EGFm+EioTFF2B3ufdbqqv9v9NBbIkw=; b=cTOZe5lg43DVbpKgt0cGscNbDa
	KhetQGInp0TqwlC4THf917COjaOiC1IpdQK5/yLzhgkZwgxwJ6BHQnbXTKo5f7iTr9XsdnfiF1urj
	88wNu0imxRlPybshZX2dOwNyI1S7xaKGzfP/Uq0NG7RwoSwHa9wBk/TfnLjse6v4LacTsgsAdjHF/
	CYWw8gq3W9sVyGZWoDySnkguZAxiDaK3W20VSAcEcKUEj+qj3T/ZzuYaf+1AUwXw3AiZy/Z8B63mJ
	N6RZI9R3sBC2zFv6I/ya2CC3ya8fH3/GLB4hk7ru8OYmAJUn31ZjmDs1KqFiqWCHYtK38vch+M5Mx
	4fKWBa0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVoLB-00000008rla-1O5e;
	Mon, 22 Jul 2024 08:24:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVoL6-00000008ric-1BGP
	for barebox@lists.infradead.org;
	Mon, 22 Jul 2024 08:24:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sVoL2-0008Fp-Hw; Mon, 22 Jul 2024 10:24:08 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sVoL2-001L9g-4U; Mon, 22 Jul 2024 10:24:08 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sVoL2-00629B-05;
	Mon, 22 Jul 2024 10:24:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 22 Jul 2024 10:24:00 +0200
Message-Id: <20240722082405.926111-5-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240722082405.926111-1-s.hauer@pengutronix.de>
References: <20240722082405.926111-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240722_012412_348327_40AAA27F 
X-CRM114-Status: GOOD (  14.39  )
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
Subject: [PATCH 4/9] keytoc: add ecdsa support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This extends the keytoc utility to also handle ecdsa keys.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/keytoc.c | 130 ++++++++++++++++++++++++++++++++++++-----------
 1 file changed, 99 insertions(+), 31 deletions(-)

diff --git a/scripts/keytoc.c b/scripts/keytoc.c
index be50ec86b9..b8ad386f9b 100644
--- a/scripts/keytoc.c
+++ b/scripts/keytoc.c
@@ -339,44 +339,70 @@ static int print_bignum(BIGNUM *num, int num_bits)
 	return 0;
 }
 
-static int gen_key(const char *keyname, const char *path)
+static int gen_key_ecdsa(EVP_PKEY *key, const char *key_name, const char *key_name_c)
 {
-	BIGNUM *modulus, *r_squared;
-	uint64_t exponent = 0;
-	uint32_t n0_inv;
-	int ret;
-	int bits;
-	EVP_PKEY *key;
-	char *tmp, *key_name_c;
+	char group[128];
+	size_t outlen;
+	int ret, bits;
+	BIGNUM *key_x = NULL, *key_y = NULL;
 
-	tmp = key_name_c = strdup(keyname);
+	ret = EVP_PKEY_get_int_param(key, "bits", &bits);
+	if (!ret)
+		return -EINVAL;
 
-	while (*tmp) {
-		if (*tmp == '-')
-			*tmp = '_';
-		tmp++;
-	}
+	ret = EVP_PKEY_get_utf8_string_param(key, "group", group, sizeof(group), &outlen);
+	if (!ret)
+		return -EINVAL;
 
-	if (!strncmp(path, "__ENV__", 7)) {
-		const char *var = getenv(path + 7);
-		if (!var) {
-			fprintf(stderr,
-				"environment variable \"%s\" is empty\n", path + 7);
-			exit(1);
-		}
-		path = var;
-	}
+	ret = EVP_PKEY_get_bn_param(key, OSSL_PKEY_PARAM_EC_PUB_X, &key_x);
+	if (!ret)
+		return -EINVAL;
 
-	if (!strncmp(path, "pkcs11:", 7)) {
-		ret = rsa_engine_get_pub_key(path, "pkcs11", &key);
-		if (ret)
-			exit(1);
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
-		ret = rsa_pem_get_pub_key(path, &key);
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
@@ -419,7 +445,7 @@ static int gen_key(const char *keyname, const char *path)
 		fprintf(outfilep, "\t.modulus = %s_modulus,\n", key_name_c);
 		fprintf(outfilep, "\t.rr = %s_rr,\n", key_name_c);
 		fprintf(outfilep, "\t.exponent = 0x%0lx,\n", exponent);
-		fprintf(outfilep, "\t.key_name_hint = \"%s\",\n", keyname);
+		fprintf(outfilep, "\t.key_name_hint = \"%s\",\n", key_name);
 		fprintf(outfilep, "};\n");
 
 		if (!standalone)
@@ -430,6 +456,47 @@ static int gen_key(const char *keyname, const char *path)
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
+		ret = rsa_engine_get_pub_key(path, "pkcs11", &key);
+		if (ret)
+			exit(1);
+	} else {
+		ret = rsa_pem_get_pub_key(path, &key);
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
@@ -477,6 +544,7 @@ int main(int argc, char *argv[])
 		else
 			fprintf(outfilep, "\tsignature {\n");
 	} else if (standalone) {
+		fprintf(outfilep, "#include <ecdsa.h>\n");
 		fprintf(outfilep, "#include <rsa.h>\n");
 	}
 
-- 
2.39.2



