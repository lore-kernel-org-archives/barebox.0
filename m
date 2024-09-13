Delivery-date: Fri, 13 Sep 2024 10:28:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sp1fE-0043Z6-15
	for lore@lore.pengutronix.de;
	Fri, 13 Sep 2024 10:28:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sp1fC-0001HS-If
	for lore@pengutronix.de; Fri, 13 Sep 2024 10:28:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UlQI+IvSo6+ZLp0KtxNDA93Cb4iLW0MEN9VgJDonxhY=; b=DsNMI+/7VfXTXY4MBXX1UNN2bB
	4YeblqZUPIuwt6eR73SokJQSWknxrl9gTC4NNPeI0UTpFONBfuD6JPfUyZ5EeyF8F81dgtp5M5MD5
	YAYAOr4Ke6F7OF3el15vTScEnc3JXXJWflOtG8RLc1UVPq9hD0pn4+Evl9szE03s6HBD/QAehdyP+
	mTCxiVTF9aykKYnMjQsFqMJvlJAzVF/lnRT7bQbnzi7zeY5di4838N+UEqssFJp08bXkSWzzc7JGn
	MP4/ssZ3ty1E7YJ+jGisQV7rNvObAyLXsII8Gn2Xd6Xij7jtgKgno5jq3QKpHUT9t6GIVe18J2Gst
	GxvW1YmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp1ef-0000000FKd7-2PAp;
	Fri, 13 Sep 2024 08:27:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp1eY-0000000FKZi-2UJT
	for barebox@lists.infradead.org;
	Fri, 13 Sep 2024 08:27:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sp1eW-0000p7-Vl; Fri, 13 Sep 2024 10:27:41 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sp1eW-007ZzV-II; Fri, 13 Sep 2024 10:27:40 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sp1DC-006w1Z-0R;
	Fri, 13 Sep 2024 09:59:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 13 Sep 2024 09:59:18 +0200
Message-Id: <20240913075924.1652866-11-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240913075924.1652866-1-s.hauer@pengutronix.de>
References: <20240913075924.1652866-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240913_012742_966251_703B67A2 
X-CRM114-Status: GOOD (  23.14  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v4 10/16] crypto: add public_key functions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Now that we have a struct public_key as a general container for keys
create and use functions making use of it. Move the list from struct
rsa_public_key to struct public_key, add public_key_verify() and use
it instead of rsa_verify(), move key_name_hint to struct public_key.

With this we do not need to bother the FIT image code when adding
support for ECDSA keys.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/image-fit.c          | 20 ++++----
 crypto/public-keys.c        | 92 ++++++++++++++++++++++++++++++-------
 crypto/rsa.c                | 74 +++++++++--------------------
 include/crypto/public_key.h | 15 ++++++
 include/rsa.h               | 16 +------
 scripts/keytoc.c            |  3 +-
 6 files changed, 126 insertions(+), 94 deletions(-)

diff --git a/common/image-fit.c b/common/image-fit.c
index 4a69049abc..c5d2196bda 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -20,7 +20,7 @@
 #include <errno.h>
 #include <linux/err.h>
 #include <stringlist.h>
-#include <rsa.h>
+#include <crypto/public_key.h>
 #include <uncompress.h>
 #include <image-fit.h>
 
@@ -253,10 +253,10 @@ static struct digest *fit_alloc_digest(struct device_node *sig_node,
 	return digest;
 }
 
-static int fit_check_rsa_signature(struct device_node *sig_node,
-				   enum hash_algo algo, void *hash)
+static int fit_check_signature(struct device_node *sig_node,
+			       enum hash_algo algo, void *hash)
 {
-	const struct rsa_public_key *key;
+	const struct public_key *key;
 	const char *key_name = NULL;
 	int sig_len;
 	const char *sig_value;
@@ -270,19 +270,19 @@ static int fit_check_rsa_signature(struct device_node *sig_node,
 
 	of_property_read_string(sig_node, "key-name-hint", &key_name);
 	if (key_name) {
-		key = rsa_get_key(key_name);
+		key = public_key_get(key_name);
 		if (key) {
-			ret = rsa_verify(key, sig_value, sig_len, hash, algo);
+			ret = public_key_verify(key, sig_value, sig_len, hash, algo);
 			if (!ret)
 				goto ok;
 		}
 	}
 
-	for_each_rsa_key(key) {
+	for_each_public_key(key) {
 		if (key_name && !strcmp(key->key_name_hint, key_name))
 			continue;
 
-		ret = rsa_verify(key, sig_value, sig_len, hash, algo);
+		ret = public_key_verify(key, sig_value, sig_len, hash, algo);
 		if (!ret)
 			goto ok;
 	}
@@ -341,7 +341,7 @@ static int fit_verify_signature(struct device_node *sig_node, const void *fit)
 	hash = xzalloc(digest_length(digest));
 	digest_final(digest, hash);
 
-	ret = fit_check_rsa_signature(sig_node, algo, hash);
+	ret = fit_check_signature(sig_node, algo, hash);
 	if (ret)
 		goto out_free_hash;
 
@@ -464,7 +464,7 @@ static int fit_image_verify_signature(struct fit_handle *handle,
 	hash = xzalloc(digest_length(digest));
 	digest_final(digest, hash);
 
-	ret = fit_check_rsa_signature(sig_node, algo, hash);
+	ret = fit_check_signature(sig_node, algo, hash);
 
 	free(hash);
 
diff --git a/crypto/public-keys.c b/crypto/public-keys.c
index a3ef3bafc8..36c308908d 100644
--- a/crypto/public-keys.c
+++ b/crypto/public-keys.c
@@ -2,31 +2,91 @@
 #include <crypto/public_key.h>
 #include <rsa.h>
 
+static LIST_HEAD(public_keys);
+
+const struct public_key *public_key_next(const struct public_key *prev)
+{
+	prev = list_prepare_entry(prev, &public_keys, list);
+	list_for_each_entry_continue(prev, &public_keys, list)
+		return prev;
+
+	return NULL;
+}
+
+const struct public_key *public_key_get(const char *name)
+{
+	const struct public_key *key;
+
+	list_for_each_entry(key, &public_keys, list) {
+		if (!strcmp(key->key_name_hint, name))
+			return key;
+	}
+
+	return NULL;
+}
+
+int public_key_add(struct public_key *key)
+{
+	if (public_key_get(key->key_name_hint))
+		return -EEXIST;
+
+	list_add_tail(&key->list, &public_keys);
+
+	return 0;
+}
+
+static struct public_key *public_key_dup(const struct public_key *key)
+{
+	struct public_key *k = xzalloc(sizeof(*k));
+
+	k->type = key->type;
+	if (key->key_name_hint)
+		k->key_name_hint = xstrdup(key->key_name_hint);
+
+	switch (key->type) {
+	case PUBLIC_KEY_TYPE_RSA:
+		k->rsa = rsa_key_dup(key->rsa);
+		if (!k->rsa)
+			goto err;
+		break;
+	default:
+		goto err;
+	}
+
+	return k;
+err:
+	free(k->key_name_hint);
+	free(k);
+
+	return NULL;
+}
+
+int public_key_verify(const struct public_key *key, const uint8_t *sig,
+		      const uint32_t sig_len, const uint8_t *hash,
+		      enum hash_algo algo)
+{
+	switch (key->type) {
+	case PUBLIC_KEY_TYPE_RSA:
+		return rsa_verify(key->rsa, sig, sig_len, hash, algo);
+	}
+
+	return -ENOKEY;
+}
+
 extern const struct public_key * const __public_keys_start;
 extern const struct public_key * const __public_keys_end;
 
 static int init_public_keys(void)
 {
 	const struct public_key * const *iter;
-	int ret;
 
 	for (iter = &__public_keys_start; iter != &__public_keys_end; iter++) {
-		struct rsa_public_key *rsa_key;
-
-		switch ((*iter)->type) {
-		case PUBLIC_KEY_TYPE_RSA:
-			rsa_key = rsa_key_dup((*iter)->rsa);
-			if (!rsa_key)
-				continue;
-
-			ret = rsa_key_add(rsa_key);
-			if (ret)
-				pr_err("Cannot add rsa key: %pe\n", ERR_PTR(ret));
-			break;
-		default:
-			pr_err("Ignoring unknown key type %u\n", (*iter)->type);
-		}
+		struct public_key *key = public_key_dup(*iter);
+
+		if (!key)
+			continue;
 
+		public_key_add(key);
 	}
 
 	return 0;
diff --git a/crypto/rsa.c b/crypto/rsa.c
index 8eab07beed..969dbfb32b 100644
--- a/crypto/rsa.c
+++ b/crypto/rsa.c
@@ -15,6 +15,7 @@
 #include <asm/byteorder.h>
 #include <errno.h>
 #include <rsa.h>
+#include <crypto/public_key.h>
 #include <asm/unaligned.h>
 
 #define UINT64_MULT32(v, multby)  (((uint64_t)(v)) * ((uint32_t)(multby)))
@@ -380,105 +381,74 @@ static void rsa_convert_big_endian(uint32_t *dst, const uint32_t *src, int len)
 		dst[i] = fdt32_to_cpu(src[len - 1 - i]);
 }
 
-struct rsa_public_key *rsa_of_read_key(struct device_node *node)
+struct public_key *rsa_of_read_key(struct device_node *node)
 {
 	const void *modulus, *rr;
 	const uint64_t *public_exponent;
 	int length;
-	struct rsa_public_key *key;
+	struct public_key *key;
+	struct rsa_public_key *rsa;
 	int err;
 
 	if (strncmp(node->name, "key-", 4))
 		return ERR_PTR(-EINVAL);
 
 	key = xzalloc(sizeof(*key));
+	rsa = key->rsa = xzalloc(sizeof(*rsa));
 
 	key->key_name_hint = xstrdup(node->name + 4);
 
-	of_property_read_u32(node, "rsa,num-bits", &key->len);
-	of_property_read_u32(node, "rsa,n0-inverse", &key->n0inv);
+	of_property_read_u32(node, "rsa,num-bits", &rsa->len);
+	of_property_read_u32(node, "rsa,n0-inverse", &rsa->n0inv);
 
 	public_exponent = of_get_property(node, "rsa,exponent", &length);
 	if (!public_exponent || length < sizeof(*public_exponent))
-		key->exponent = RSA_DEFAULT_PUBEXP;
+		rsa->exponent = RSA_DEFAULT_PUBEXP;
 	else
-		key->exponent = fdt64_to_cpu(*public_exponent);
+		rsa->exponent = fdt64_to_cpu(*public_exponent);
 
 	modulus = of_get_property(node, "rsa,modulus", NULL);
 	rr = of_get_property(node, "rsa,r-squared", NULL);
 
-	if (!key->len || !modulus || !rr) {
+	if (!rsa->len || !modulus || !rr) {
 		pr_debug("%s: Missing RSA key info", __func__);
 		err = -EFAULT;
 		goto out;
 	}
 
 	/* Sanity check for stack size */
-	if (key->len > RSA_MAX_KEY_BITS || key->len < RSA_MIN_KEY_BITS) {
+	if (rsa->len > RSA_MAX_KEY_BITS || rsa->len < RSA_MIN_KEY_BITS) {
 		pr_debug("RSA key bits %u outside allowed range %d..%d\n",
-			 key->len, RSA_MIN_KEY_BITS, RSA_MAX_KEY_BITS);
+			 rsa->len, RSA_MIN_KEY_BITS, RSA_MAX_KEY_BITS);
 		err = -EFAULT;
 		goto out;
 	}
 
-	key->len /= sizeof(uint32_t) * 8;
+	rsa->len /= sizeof(uint32_t) * 8;
 
-	key->modulus = xzalloc(RSA_MAX_KEY_BITS / 8);
-	key->rr = xzalloc(RSA_MAX_KEY_BITS / 8);
+	rsa->modulus = xzalloc(RSA_MAX_KEY_BITS / 8);
+	rsa->rr = xzalloc(RSA_MAX_KEY_BITS / 8);
 
-	rsa_convert_big_endian(key->modulus, modulus, key->len);
-	rsa_convert_big_endian(key->rr, rr, key->len);
+	rsa_convert_big_endian(rsa->modulus, modulus, rsa->len);
+	rsa_convert_big_endian(rsa->rr, rr, rsa->len);
 
 	err = 0;
 out:
-	if (err)
+	if (err) {
 		free(key);
+		free(rsa);
+	}
 
 	return err ? ERR_PTR(err) : key;
 }
 
 void rsa_key_free(struct rsa_public_key *key)
 {
-	list_del(&key->list);
-
 	free(key->modulus);
 	free(key->rr);
 	free(key);
 }
 
-static LIST_HEAD(rsa_keys);
-
-const struct rsa_public_key *rsa_key_next(const struct rsa_public_key *prev)
-{
-	prev = list_prepare_entry(prev, &rsa_keys, list);
-	list_for_each_entry_continue(prev, &rsa_keys, list)
-		return prev;
-
-	return NULL;
-}
-
-const struct rsa_public_key *rsa_get_key(const char *name)
-{
-	const struct rsa_public_key *key;
-
-	list_for_each_entry(key, &rsa_keys, list) {
-		if (!strcmp(key->key_name_hint, name))
-			return key;
-	}
-
-	return NULL;
-}
-
-int rsa_key_add(struct rsa_public_key *key)
-{
-	if (rsa_get_key(key->key_name_hint))
-		return -EEXIST;
-
-	list_add_tail(&key->list, &rsa_keys);
-
-	return 0;
-}
-
 struct rsa_public_key *rsa_key_dup(const struct rsa_public_key *key)
 {
 	struct rsa_public_key *new;
@@ -493,7 +463,7 @@ struct rsa_public_key *rsa_key_dup(const struct rsa_public_key *key)
 static void rsa_init_keys_of(void)
 {
 	struct device_node *sigs, *sig;
-	struct rsa_public_key *key;
+	struct public_key *key;
 	int ret;
 
 	if (!IS_ENABLED(CONFIG_OFTREE))
@@ -511,7 +481,7 @@ static void rsa_init_keys_of(void)
 			continue;
 		}
 
-		ret = rsa_key_add(key);
+		ret = public_key_add(key);
 		if (ret)
 			pr_err("Cannot add rsa key %s: %s\n",
 				key->key_name_hint, strerror(-ret));
diff --git a/include/crypto/public_key.h b/include/crypto/public_key.h
index 83e8401aed..1b91063042 100644
--- a/include/crypto/public_key.h
+++ b/include/crypto/public_key.h
@@ -1,6 +1,8 @@
 #ifndef __CRYPTO_PUBLIC_KEY_H
 #define __CRYPTO_PUBLIC_KEY_H
 
+#include <digest.h>
+
 struct rsa_public_key;
 struct ecdsa_public_key;
 
@@ -10,6 +12,8 @@ enum pulic_key_type {
 
 struct public_key {
 	enum pulic_key_type type;
+	struct list_head list;
+	char *key_name_hint;
 
 	union {
 		struct rsa_public_key *rsa;
@@ -17,4 +21,15 @@ struct public_key {
 	};
 };
 
+int public_key_add(struct public_key *key);
+const struct public_key *public_key_get(const char *name);
+const struct public_key *public_key_next(const struct public_key *prev);
+
+#define for_each_public_key(key) \
+		for (key = public_key_next(NULL); key; key = public_key_next(key))
+
+int public_key_verify(const struct public_key *key, const uint8_t *sig,
+		      const uint32_t sig_len, const uint8_t *hash,
+		      enum hash_algo algo);
+
 #endif /* __CRYPTO_PUBLIC_KEY_H */
diff --git a/include/rsa.h b/include/rsa.h
index ecb2f42957..ef03a925b8 100644
--- a/include/rsa.h
+++ b/include/rsa.h
@@ -29,8 +29,6 @@ struct rsa_public_key {
 	uint32_t *modulus;	/* modulus as little endian array */
 	uint32_t *rr;		/* R^2 as little endian array */
 	uint64_t exponent;	/* public exponent */
-	char *key_name_hint;
-	struct list_head list;
 };
 
 /**
@@ -54,24 +52,12 @@ int rsa_verify(const struct rsa_public_key *key, const uint8_t *sig,
 
 struct device_node;
 
-struct rsa_public_key *rsa_of_read_key(struct device_node *node);
+struct public_key *rsa_of_read_key(struct device_node *node);
 void rsa_key_free(struct rsa_public_key *key);
-const struct rsa_public_key *rsa_get_key(const char *name);
-
-const struct rsa_public_key *rsa_key_next(const struct rsa_public_key *prev);
-
-#define for_each_rsa_key(key) \
-		for (key = rsa_key_next(NULL); key; key = rsa_key_next(key))
 
 #ifdef CONFIG_CRYPTO_RSA
-int rsa_key_add(struct rsa_public_key *key);
 struct rsa_public_key *rsa_key_dup(const struct rsa_public_key *key);
 #else
-static inline int rsa_key_add(struct rsa_public_key *key)
-{
-	return -ENOSYS;
-}
-
 static inline struct rsa_public_key *rsa_key_dup(const struct rsa_public_key *key);
 {
 	return NULL;
diff --git a/scripts/keytoc.c b/scripts/keytoc.c
index e66c5989bf..8b29118c95 100644
--- a/scripts/keytoc.c
+++ b/scripts/keytoc.c
@@ -491,6 +491,7 @@ static int gen_key_ecdsa(EVP_PKEY *key, const char *key_name, const char *key_na
 		if (!standalone) {
 			fprintf(outfilep, "\nstatic struct public_key %s_public_key = {\n", key_name_c);
 			fprintf(outfilep, "\t.type = PUBLIC_KEY_TYPE_ECDSA,\n");
+			fprintf(outfilep, "\t.key_name_hint = \"%s\",\n", key_name);
 			fprintf(outfilep, "\t.ecdsa = &%s,\n", key_name_c);
 			fprintf(outfilep, "};");
 			fprintf(outfilep, "\nstruct public_key *%s_ecdsa_p __attribute__((section(\".public_keys.rodata.%s\"))) = &%s_public_key;\n",
@@ -551,12 +552,12 @@ static int gen_key_rsa(EVP_PKEY *key, const char *key_name, const char *key_name
 		fprintf(outfilep, "\t.modulus = %s_modulus,\n", key_name_c);
 		fprintf(outfilep, "\t.rr = %s_rr,\n", key_name_c);
 		fprintf(outfilep, "\t.exponent = 0x%0lx,\n", exponent);
-		fprintf(outfilep, "\t.key_name_hint = \"%s\",\n", key_name);
 		fprintf(outfilep, "};\n");
 
 		if (!standalone) {
 			fprintf(outfilep, "\nstatic struct public_key %s_public_key = {\n", key_name_c);
 			fprintf(outfilep, "\t.type = PUBLIC_KEY_TYPE_RSA,\n");
+			fprintf(outfilep, "\t.key_name_hint = \"%s\",\n", key_name);
 			fprintf(outfilep, "\t.rsa = &%s,\n", key_name_c);
 			fprintf(outfilep, "};");
 			fprintf(outfilep, "\nstruct public_key *%sp __attribute__((section(\".public_keys.rodata.%s\"))) = &%s_public_key;\n",
-- 
2.39.2



