Delivery-date: Tue, 14 Oct 2025 13:03:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v8cos-007iHw-18
	for lore@lore.pengutronix.de;
	Tue, 14 Oct 2025 13:03:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v8con-0003HD-Ct
	for lore@pengutronix.de; Tue, 14 Oct 2025 13:03:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zWRhZqnVI5gk5OwG9i0Hr//9aoTU84I781MulSHbwSI=; b=Fv8Xyrsg5fJoq5a6ZLPQRPT0UH
	9CFmRelXPd488rZ5aSuAtMhMZQu1yRrMD1RagPtcURd64JNgZxSqLv3jk/PYjOfpSlpDwJEUBRXqM
	GZe0E2DCt0JWOjwE0DqWmhArwOEPJlwffP1KcL7saY9boBneerKIO5htH4HMEm0jDAvBM6KCbIE25
	RfRo0NeFBLrsoN0zPiqpMf7lEZF7ILrUQcVZu8Wtf8VTgQ0sKh2AqHcVHY6Ewc33hKCtGexi6wSjU
	x1xhC6mr7Wo4JBTvDP0AR1RJe9MlTVJggpyD1cYz3TdRpx7Rb/SmcBKo5gtwSjt0MOhog97XK5ZUw
	8PQSAXsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8coB-0000000G0Nu-0qo3;
	Tue, 14 Oct 2025 11:03:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8co6-0000000G0I8-2zlP
	for barebox@lists.infradead.org;
	Tue, 14 Oct 2025 11:03:09 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1v8co5-0002Tj-6q; Tue, 14 Oct 2025 13:03:05 +0200
From: Jonas Rebmann <jre@pengutronix.de>
Date: Tue, 14 Oct 2025 13:02:53 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251014-tlv-signature-v1-2-7a8aaf95081c@pengutronix.de>
References: <20251014-tlv-signature-v1-0-7a8aaf95081c@pengutronix.de>
In-Reply-To: <20251014-tlv-signature-v1-0-7a8aaf95081c@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=10745; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=ZrIEqrh0y+w87bX0m0v6Yueyxw9+W9+cp+hp5KFk7/k=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsh4p/tIfd+pDxP6/9WcKdkQ99PjadTZCfy9y4M3B1Qyl
 r1/5qVr3lHKwiDGxSArpsgSqyanIGTsf92s0i4WZg4rE8gQBi5OAZjIh1KGfzbn554o1Xm2WfmT
 zYaLex88P/hK10+mVbrv/u1YzeJiu7+MDA3TQvf5R0dN53VMZ1bWDvj/svSdtd8Hq5brP9o3f3N
 l4wYA
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251014_040306_913739_759ED7A2 
X-CRM114-Status: GOOD (  22.06  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 02/15] crypto: Add support for keyrings
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
 crypto/public-keys.c        |   2 +
 include/crypto/public_key.h |   1 +
 scripts/keytoc.c            | 186 +++++++++++++++++++++++++++++++++-----------
 3 files changed, 145 insertions(+), 44 deletions(-)

diff --git a/crypto/public-keys.c b/crypto/public-keys.c
index 8884e263b3..a870ec5438 100644
--- a/crypto/public-keys.c
+++ b/crypto/public-keys.c
@@ -46,6 +46,8 @@ static struct public_key *public_key_dup(const struct public_key *key)
 	k->type = key->type;
 	if (key->key_name_hint)
 		k->key_name_hint = xstrdup(key->key_name_hint);
+	if (key->keyring)
+		k->keyring = xstrdup(key->keyring);
 	k->hash = xmemdup(key->hash, key->hashlen);
 	k->hashlen = key->hashlen;
 
diff --git a/include/crypto/public_key.h b/include/crypto/public_key.h
index 7edea2d691..c9dd38cc33 100644
--- a/include/crypto/public_key.h
+++ b/include/crypto/public_key.h
@@ -15,6 +15,7 @@ struct public_key {
 	enum public_key_type type;
 	struct list_head list;
 	char *key_name_hint;
+	char *keyring;
 	unsigned char *hash;
 	unsigned int hashlen;
 
diff --git a/scripts/keytoc.c b/scripts/keytoc.c
index 074af6f0b4..a2b508bf49 100644
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
2.51.0.297.gca2559c1d6



