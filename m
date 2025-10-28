Delivery-date: Tue, 28 Oct 2025 19:04:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDo3k-00Clof-0n
	for lore@lore.pengutronix.de;
	Tue, 28 Oct 2025 19:04:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDo3h-0001LI-Fz
	for lore@pengutronix.de; Tue, 28 Oct 2025 19:04:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YPgglnrpaFBrBywy+682ZSjen8ecfIVm6zDl2D70iSo=; b=CCpjQryYVwUOefg9kFD6O0pFph
	KIYRDC+xqQKVZqwZZCxvj8ikBSaywQ1/jAGZyTPGKlQkBWVFB6qTiswtnrkGi92pWUx/0CFhjvpSw
	2+seUgsOT2wL6SF788Zl1Vf2upttLHNUjeFI3SfSPDxqIR76IuM0+gD/KGlwe9LNM+7gdc6ks2IOw
	U8bU3xPkThGAn2N+dOwoyoGgl3E09E8wAxguEC3QMJJJESNWSle5k+4jSLTCpwarsXXsTZ8pFPQWn
	PMukx1j1HsiUFLDWzsYRW0bFX745ZlBxE6xMSAy6c3cwBCsl8gICr7+7VD3r1mHgqM3RpN+oSKYSQ
	Gxv1VslQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDo2z-0000000GSP8-23xb;
	Tue, 28 Oct 2025 18:03:53 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDo2s-0000000GSDf-2af4
	for barebox@bombadil.infradead.org;
	Tue, 28 Oct 2025 18:03:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=YPgglnrpaFBrBywy+682ZSjen8ecfIVm6zDl2D70iSo=; b=ZUSQvJGpevcPKzva2YTFzS9tdS
	hVagAx6XtWAZOfJiMze7VeNQKtK7j4IBp6qHPmQEGoSWBHcl48Qq0LLG+CQQT9d7DD70/mnU2Rhuh
	/dG75/S75hI33pHLc70Duy28dlQsJj3iPG43yNHMptDl6u0qH07pPq9kqjC+JnaLAaV8tUaSUVKDX
	QR4XUAoLhBb2j9AH+3FzheZqjecUeoxMupjwvXbBWfHYQ/kWNJnt8nyGpMxcHbyofupn+hDGQ1ZbK
	Id9yJZgjdIgHJkleZg6hR27xc5tGWITIuOxN8v7oy0bywDzb5fXtPebTzA2dZCO77gQDPfUN9olob
	7niWd85Q==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDnB6-000000050HB-0xUx
	for barebox@lists.infradead.org;
	Tue, 28 Oct 2025 17:08:13 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1vDo2h-0000PX-0l; Tue, 28 Oct 2025 19:03:35 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Tue, 28 Oct 2025 19:03:08 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251028-tlv-signature-v2-3-3bafce636ad7@pengutronix.de>
References: <20251028-tlv-signature-v2-0-3bafce636ad7@pengutronix.de>
In-Reply-To: <20251028-tlv-signature-v2-0-3bafce636ad7@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=13279; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=yCkQ2XP316vi7i65N01wYtNQ3mvYGc0NnSLqa/Pl/No=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYshkZC0Qc7vz6NRE3YX253r/neOqFXxqZle1qEf3p/mRw
 ukfOP18O0pZGMS4GGTFFFli1eQUhIz9r5tV2sXCzGFlAhnCwMUpABM5ocLwT7Heco9jZX3Ruv3f
 Jlv1K3KVFeoLiMYvf6lV8txmhW6UNSPDhauOs9qTFpTwSbZk+4k+DPa4q9yfUim3Icvkks+9WZ6
 MAA==
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251028_170812_458103_533F8211 
X-CRM114-Status: GOOD (  28.39  )
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
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 03/17] crypto: Add support for keyrings
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Public keys for TLV verification will be handled with the mechanism used
in the existing fitimage verification where scripts/keytoc.c generates
public_keys.h based on CONFIG_CRYPTO_PUBLIC_KEYS.

Expand the existing keyspec parser to support a new syntax of
  keyring=<keyring>[,fit-hint=<fit_hint>]:<crt>
in addition to the legacy syntax of
  [<fit_hint>:]<crt>

With the new keyspec parsing, keyring name and fit hint need to confirm
to the regular expression
  [a-zA-Z][a-zA-Z0-9_-]*

For backwards compatibility, the old syntax stays supported with the
keyring defaulting to "fit" and a warning emitted.

Note however that the restriction of fit name hints to above regex
applies even when supplied in the legacy syntax.

To be able to error out when encountering an invalid keyspec, some
refactoring of keytoc.c was necessary.

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 crypto/Kconfig              |  37 +++++----
 include/crypto/public_key.h |   1 +
 scripts/keytoc.c            | 186 +++++++++++++++++++++++++++++++++-----------
 3 files changed, 166 insertions(+), 58 deletions(-)

diff --git a/crypto/Kconfig b/crypto/Kconfig
index dd14a2532c..528e9a0d22 100644
--- a/crypto/Kconfig
+++ b/crypto/Kconfig
@@ -135,33 +135,42 @@ config CRYPTO_PUBLIC_KEYS
 	depends on CRYPTO_BUILTIN_KEYS
 	string "public keys to compile in"
 	help
-	  This option should be a space separated list of filenames of
-	  PEM-formatted files containing X.509 certificates to be included into
-	  barebox. If an entry starts with "pkcs11:" it is interpreted as a
-	  PKCS#11 URI rather than a file. If an entry starts with a <hint>:
-	  prefix, <hint> is used as a key name hint to find a key without
-	  iterating over all keys.
+	  This option should be a space separated list of filenames of public
+	  key specifications. While other syntaxes are supported for legacy
+	  reasons, each entry should have the format
+	  keyring=<keyring>[,fit-hint=<hint>]:<crt>
+
+	  <keyring> specifies the keyring for the key to be included in (e.g.
+	  "fit" if this key is to be used for fitimage verification).
+
+	  <fit-hint> is used as a key name hint for fitimage verificaiton to
+	  find a key without iterating over all keys.
+
+	  <crt> specifies the path of a public key to be included in barebox.
+	  It can be a PEM-formatted file containing an X.509 certificate. If a
+	  certificate path starts with "pkcs11:" it is interpreted as a PKCS#11
+	  URI rather than a file.
 
 	  Placeholders such as __ENV__VAR_NAME can be used to look up the
-	  corresponding value in the environment variable VAR_NAME for both
-	  public key paths/URIs as well as key name hints.
+	  corresponding value in the environment variable VAR_NAME for public
+	  key paths/URIs as well as key name hints.
 
 	  Examples specified directly:
 
-	  - CONFIG_CRYPTO_PUBLIC_KEYS="pkcs11:object=foo"
-	  - CONFIG_CRYPTO_PUBLIC_KEYS="myhint:pkcs11:object=foo"
-	  - CONFIG_CRYPTO_PUBLIC_KEYS="myhint:pkcs11:object=foo /foobar/baz.der"
-	  - CONFIG_CRYPTO_PUBLIC_KEYS="myhint:pkcs11:object=foo myotherhint:/foobar/baz.der"
+	  - CONFIG_CRYPTO_PUBLIC_KEYS="keyring=fit:pkcs11:object=foo"
+	  - CONFIG_CRYPTO_PUBLIC_KEYS="keyring=fit,fit-hint=myhint:pkcs11:object=foo"
+	  - CONFIG_CRYPTO_PUBLIC_KEYS="keyring=fit,fit-hint=myhint:pkcs11:object=foo keyring=fit:/foobar/baz.der"
+	  - CONFIG_CRYPTO_PUBLIC_KEYS="keyring=fit,fit-hint=myhint:pkcs11:object=foo keyring=fit,fit-hint=myotherhint:/foobar/baz.der"
 
 	  Example specified indirectly by two environment variables:
 
 	  - myhint="myhint"
 	  - myname="pkcs11:object=foo" (.der could be used too)
-	  - CONFIG_CRYPTO_PUBLIC_KEYS="__ENV__myhint:__ENV__myname"
+	  - CONFIG_CRYPTO_PUBLIC_KEYS="keyring=fit,fit-hint=__ENV__myhint:__ENV__myname"
 
 	  Example specified indirectly by a single environment variable:
 
-	  - mykey="myhint:pkcs11:object=foo" (.der could be used too)
+	  - mykey="keyring=fit,fit-hint=myhint:pkcs11:object=foo" (.der could be used too)
 	  - CONFIG_CRYPTO_PUBLIC_KEYS="__ENV__mykey"
 
 endmenu
diff --git a/include/crypto/public_key.h b/include/crypto/public_key.h
index 5c0234acc0..612efa8f38 100644
--- a/include/crypto/public_key.h
+++ b/include/crypto/public_key.h
@@ -15,6 +15,7 @@ enum public_key_type {
 struct public_key {
 	enum public_key_type type;
 	const char *key_name_hint;
+	char *keyring;
 	const unsigned char *hash;
 	unsigned int hashlen;
 
diff --git a/scripts/keytoc.c b/scripts/keytoc.c
index 9d6ec376c1..78e56930bc 100644
--- a/scripts/keytoc.c
+++ b/scripts/keytoc.c
@@ -25,6 +25,15 @@
 #include <openssl/param_build.h>
 #include <openssl/store.h>
 
+#include <stdbool.h>
+#include <ctype.h>
+
+struct keyinfo {
+	char *keyname;
+	char *keyring;
+	char *path;
+};
+
 static int dts, standalone;
 
 static void enomem_exit(const char *func)
@@ -491,7 +500,7 @@ static int print_hash(EVP_PKEY *key)
 	return ret ? -EINVAL : 0;
 }
 
-static int gen_key_ecdsa(EVP_PKEY *key, const char *key_name, const char *key_name_c)
+static int gen_key_ecdsa(EVP_PKEY *key, const char *key_name, const char *keyring, const char *key_name_c)
 {
 	char group[128];
 	size_t outlen;
@@ -553,6 +562,7 @@ static int gen_key_ecdsa(EVP_PKEY *key, const char *key_name, const char *key_na
 			fprintf(outfilep, "\nstatic struct public_key %s_public_key = {\n", key_name_c);
 			fprintf(outfilep, "\t.type = PUBLIC_KEY_TYPE_ECDSA,\n");
 			fprintf(outfilep, "\t.key_name_hint = \"%s\",\n", key_name);
+			fprintf(outfilep, "\t.keyring = \"%s\",\n", keyring);
 			fprintf(outfilep, "\t.hash = %s_hash,\n", key_name_c);
 			fprintf(outfilep, "\t.hashlen = %u,\n", SHA256_DIGEST_LENGTH);
 			fprintf(outfilep, "\t.ecdsa = &%s,\n", key_name_c);
@@ -565,9 +575,9 @@ static int gen_key_ecdsa(EVP_PKEY *key, const char *key_name, const char *key_na
 	return 0;
 }
 
-static const char *try_resolve_env(const char *input)
+static char *try_resolve_env(char *input)
 {
-	const char *var;
+	char *var;
 
 	if (strncmp(input, "__ENV__", 7))
 		return input;
@@ -583,7 +593,7 @@ static const char *try_resolve_env(const char *input)
 	return var;
 }
 
-static int gen_key_rsa(EVP_PKEY *key, const char *key_name, const char *key_name_c)
+static int gen_key_rsa(EVP_PKEY *key, const char *key_name, const char *keyring, const char *key_name_c)
 {
 	BIGNUM *modulus, *r_squared;
 	uint64_t exponent = 0;
@@ -659,6 +669,7 @@ static int gen_key_rsa(EVP_PKEY *key, const char *key_name, const char *key_name
 			fprintf(outfilep, "\nstatic struct public_key %s_public_key = {\n", key_name_c);
 			fprintf(outfilep, "\t.type = PUBLIC_KEY_TYPE_RSA,\n");
 			fprintf(outfilep, "\t.key_name_hint = \"%s\",\n", key_name);
+			fprintf(outfilep, "\t.keyring = \"%s\",\n", keyring);
 			fprintf(outfilep, "\t.hash = %s_hash,\n", key_name_c);
 			fprintf(outfilep, "\t.hashlen = %u,\n", SHA256_DIGEST_LENGTH);
 			fprintf(outfilep, "\t.rsa = &%s,\n", key_name_c);
@@ -671,18 +682,18 @@ static int gen_key_rsa(EVP_PKEY *key, const char *key_name, const char *key_name
 	return 0;
 }
 
-static int gen_key(const char *keyname, const char *path)
+static int gen_key(struct keyinfo *info)
 {
 	int ret;
 	EVP_PKEY *key;
 	char *tmp, *key_name_c;
 
 	/* key name handling */
-	keyname = try_resolve_env(keyname);
-	if (!keyname)
+	info->keyname = try_resolve_env(info->keyname);
+	if (!info->keyname)
 		exit(1);
 
-	tmp = key_name_c = strdup(keyname);
+	tmp = key_name_c = strdup(info->keyname);
 
 	while (*tmp) {
 		if (*tmp == '-')
@@ -691,32 +702,104 @@ static int gen_key(const char *keyname, const char *path)
 	}
 
 	/* path/URI handling */
-	path = try_resolve_env(path);
-	if (!path)
+	info->path = try_resolve_env(info->path);
+	if (!info->path)
 		exit(1);
 
-	if (!strncmp(path, "pkcs11:", 7)) {
-		ret = engine_get_pub_key(path, &key);
+	if (!strncmp(info->path, "pkcs11:", 7)) {
+		ret = engine_get_pub_key(info->path, &key);
 		if (ret)
 			exit(1);
 	} else {
-		ret = pem_get_pub_key(path, &key);
+		ret = pem_get_pub_key(info->path, &key);
 		if (ret)
 			exit(1);
 	}
 
 	/* generate built-in keys */
-	ret = gen_key_ecdsa(key, keyname, key_name_c);
+	ret = gen_key_ecdsa(key, info->keyname, info->keyring, key_name_c);
 	if (ret == -EOPNOTSUPP)
 		return ret;
 
 	if (ret)
-		ret = gen_key_rsa(key, keyname, key_name_c);
+		ret = gen_key_rsa(key, info->keyname, info->keyring, key_name_c);
 
 	return ret;
 }
 
-static void get_name_path(const char *keyspec, char **keyname, char **path)
+static bool is_identifier(char **s)
+{
+	char *p = *s;
+
+	/* [a-zA-Z] */
+	if (!isalpha(*p))
+		return false;
+	p++;
+
+	/* [a-zA-Z0-9_-]* */
+	while (isalnum(*p) || *p == '_' || *p == '-')
+		p++;
+
+	*s = p;
+	return true;
+}
+
+static bool parse_info(char *p, struct keyinfo *out)
+{
+	char *k = p;
+	char *v;
+
+	if (*p == '\0') /* spec starts with colon. This is valid. */
+		return true;
+
+	if (!is_identifier(&p))
+		return false;
+
+	if (*p == '\0') {
+		out->keyname = strdup(k);
+		if (!k)
+			enomem_exit(__func__);
+		return true; /* legacy syntax */
+	}
+
+	/* new syntax: `<k>=<v>[,k=v[...]]` */
+	for (;;) {
+		if (*p != '=')
+			return false;
+		*p = '\0';
+
+		p++;
+		/* read `<k>=`, excepting <v> */
+		v = p;
+		if (!is_identifier(&p))
+			return false;
+
+		if (*p == '\0' || *p == ',') {
+			char d = *p;
+			*p = '\0';
+			v = strdup(v);
+			if (!v)
+				enomem_exit(__func__);
+			if (strcmp(k, "keyring") == 0)
+				out->keyring = strdup(v);
+			else if (strcmp(k, "hint") == 0)
+				out->keyname = strdup(v);
+			else
+				return false;
+
+			if (d == '\0')
+				return true;
+		} else {
+			return false;
+		}
+		p++;
+		k = p;
+		if (!is_identifier(&p))
+			return true;
+	}
+}
+
+static bool get_name_path(const char *keyspec, struct keyinfo *out)
 {
 	char *sep, *spec;
 
@@ -724,24 +807,24 @@ static void get_name_path(const char *keyspec, char **keyname, char **path)
 	if (!spec)
 		enomem_exit(__func__);
 
-	/* Split <key-hint>:<key-path> pair, <key-hint> is optional */
 	sep = strchr(spec, ':');
 	if (!sep) {
-		*path = spec;
-		return;
+		out->path = spec;
+		return true;
 	}
 
 	*sep = 0;
-	*keyname = strdup(spec);
-	if (!*keyname)
-		enomem_exit(__func__);
-
+	if (!parse_info(spec, out)) {
+		free(spec);
+		return false;
+	}
 	sep++;
-	*path = strdup(sep);
-	if (!*path)
+	out->path = strdup(sep);
+	if (!out->path)
 		enomem_exit(__func__);
 
 	free(spec);
+	return true;
 }
 
 int main(int argc, char *argv[])
@@ -749,6 +832,8 @@ int main(int argc, char *argv[])
 	int i, opt, ret;
 	char *outfile = NULL;
 	int keynum = 1;
+	int keycount;
+	struct keyinfo *keylist;
 
 	outfilep = stdout;
 
@@ -776,13 +861,33 @@ int main(int argc, char *argv[])
 	}
 
 	if (optind == argc) {
-		fprintf(stderr, "Usage: %s [-ods] <key_name_hint>:<crt> ...\n", argv[0]);
+		fprintf(stderr, "Usage: %s [-ods] keyring=<keyring>,hint=<hint>:<crt> ...\n", argv[0]);
 		fprintf(stderr, "\t-o FILE\twrite output into FILE instead of stdout\n");
 		fprintf(stderr, "\t-d\tgenerate device tree snippet instead of C code\n");
 		fprintf(stderr, "\t-s\tgenerate standalone key outside FIT image keyring\n");
 		exit(1);
 	}
 
+	keycount = argc - optind;
+	keylist = calloc(sizeof(struct keyinfo), keycount);
+
+	for (i = 0; i < keycount; i++) {
+		const char *keyspec = argv[optind + i];
+		struct keyinfo *info = &keylist[i];
+
+		if (!keyspec)
+			exit(1);
+
+		if (!strncmp(keyspec, "pkcs11:", 7)) { // legacy format of pkcs11 URI
+			info->path = strdup(keyspec);
+		} else {
+			if (!get_name_path(keyspec, info)) {
+				fprintf(stderr, "invalid keyspec %i: %s\n", optind, keyspec);
+				exit(1);
+			}
+		}
+	}
+
 	if (dts) {
 		fprintf(outfilep, "/dts-v1/;\n");
 		fprintf(outfilep, "/ {\n");
@@ -795,32 +900,24 @@ int main(int argc, char *argv[])
 		fprintf(outfilep, "#include <crypto/rsa.h>\n");
 	}
 
-	for (i = optind; i < argc; i++) {
-		const char *keyspec = argv[i];
-		char *keyname = NULL;
-		char *path = NULL;
-
-		keyspec = try_resolve_env(keyspec);
-		if (!keyspec)
-			exit(1);
 
-		if (!strncmp(keyspec, "pkcs11:", 7))
-			path = strdup(keyspec);
-		else
-			get_name_path(keyspec, &keyname, &path);
+	for (i = 0; i < keycount; i++) {
+		struct keyinfo *info = &keylist[i];
 
-		if (!keyname) {
-			ret = asprintf(&keyname, "key_%d", keynum++);
+		if (!info->keyname) {
+			ret = asprintf(&info->keyname, "key_%d", keynum++);
 			if (ret < 0)
 				enomem_exit("asprintf");
 		}
 
-		ret = gen_key(keyname, path);
+		if (!info->keyring) {
+			info->keyring = strdup("fit");
+			fprintf(stderr, "Warning: No keyring provided in keyspec, defaulting to keyring=fit for %s\n", argv[optind + i]);
+		}
+
+		ret = gen_key(info);
 		if (ret)
 			exit(1);
-
-		free(keyname);
-		free(path);
 	}
 
 	if (dts) {
@@ -828,5 +925,6 @@ int main(int argc, char *argv[])
 		fprintf(outfilep, "};\n");
 	}
 
+	/* all keyinfo fields freed on exit */
 	exit(0);
 }

-- 
2.51.2.535.g419c72cb8a



