Delivery-date: Wed, 27 May 2026 12:56:11 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wSBvn-004MZn-0L
	for lore@lore.pengutronix.de;
	Wed, 27 May 2026 12:56:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wSBvl-0000Jp-E6
	for lore@pengutronix.de; Wed, 27 May 2026 12:56:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UYDhYUwgteiuAu163MvMPKx1ro8Cld7Ne3QydNu0iCk=; b=E0jWFWvsqSG8DFnjIatrubZHKV
	MRbjgY/nrPWarVSZT1d/FE2HP1QhThwk65wac+y7wpD3XD7IS1HYd9ubluICrzweocRzbYBkbz+vf
	IKsysTGM+0CHQsK9Q4ogQ2XJP3y3fpGx99PYNlQPaa7QeSumObRjBkF913BC6+RtjrDo15Ul28hcS
	YDE05Q/TgGWiX7v+y4S5nk7M4YwPTUh8/S+vX9Ihxn1kqgZDTQtd4K1CBYZ+ZcBiNBfdi5PR15kF8
	7bGsazfauMFez9O/TqlI452TnQ1tAkglijiNsu+KBtIPXnxLNsilWSQu+hivROw5dABtokh7ItT9M
	uvcPOSVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSBuT-00000003yHr-0dKS;
	Wed, 27 May 2026 10:54:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSBuP-00000003yFW-1wja
	for barebox@lists.infradead.org;
	Wed, 27 May 2026 10:54:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wSBuN-0008SV-3B; Wed, 27 May 2026 12:54:43 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wSBuM-0025vF-1P;
	Wed, 27 May 2026 12:54:43 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wSBuM-0000000EvQF-3n9G;
	Wed, 27 May 2026 12:54:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 27 May 2026 12:54:43 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260527-public-keys-v1-3-c87a1cc61d1b@pengutronix.de>
References: <20260527-public-keys-v1-0-c87a1cc61d1b@pengutronix.de>
In-Reply-To: <20260527-public-keys-v1-0-c87a1cc61d1b@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1779879282; l=21434;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=cEd5N191sjB7RoFLmdW819eSeNHYgA/anp8KI/qI9RQ=;
 b=YZEbBg0nWhkY3b4f7p2hK/Zkx4+r8oPPD6TO5YDA5UjhnC2MZ5uZ1WjDpVfWe764mDnq9J+ek
 stZxc2bC9NYDAHgV1f7BM7+iZOIZcw9FZZg4cAAiA1GpS6uCOG7uPj3
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260527_035445_807983_0E360763 
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/4] public keys: rework keyrings as nested containers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Until now a keyring was just a string-valued field on each
struct public_key, and a key could only belong to a single keyring.
Switching policy at runtime required changing that string in place.

Introduce explicit struct keyring / struct keyring_link types: a
keyring is a named container of links, and each link references
either a public_key or a sub-keyring. Sub-keyring links are live
references, so adding a key to fit-devel after linking fit-devel
into fit makes the key visible via fit too.

Drop the global public_keys IDR; keyrings are tracked in a flat
name registry instead, and iteration goes through the keyring tree.

Change the "keys" command to print the current keyring hierarchy.

As a nice side effect separating the public keys entirely from the keyring
they are in allows us to put the compiled in keys into RO data.

Assisted-by: Claude Opus 4.7
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/keys.c                   |  22 ++--
 common/image-fit.c                |  15 ++-
 common/tlv/parser.c               |  13 ++-
 crypto/public-keys.c              | 218 ++++++++++++++++++++++++++++++++++----
 crypto/rsa.c                      |   3 +-
 include/asm-generic/barebox.lds.h |  11 ++
 include/crypto/public_key.h       |  87 ++++++++++++---
 scripts/keytoc.c                  |  24 +++--
 8 files changed, 336 insertions(+), 57 deletions(-)

diff --git a/commands/keys.c b/commands/keys.c
index 12cb6ea2e3..06d289f18f 100644
--- a/commands/keys.c
+++ b/commands/keys.c
@@ -4,13 +4,23 @@
 
 static int do_keys(int argc, char *argv[])
 {
-	const struct public_key *key;
-	int id;
+	const struct keyring *kr;
+	const struct keyring_link *link;
 
-	for_each_public_key(key, id) {
-		printf("KEY: %*phN\tTYPE: %s\tKEYRING: %s\tHINT: %s\n", key->hashlen,
-		       key->hash, public_key_type_string(key->type), key->keyring,
-		       key->key_name_hint ?: "");
+	for_each_keyring(kr) {
+		printf("RING: %s\n", kr->name);
+		for_each_link_in_keyring(link, kr) {
+			if (link->type == KEYRING_LINK_KEY) {
+				const struct public_key *key = link->key;
+
+				printf("    KEY:    %*phN\tTYPE: %s\tHINT: %s\n",
+				       key->hashlen, key->hash,
+				       public_key_type_string(key->type),
+				       key->key_name_hint ?: "");
+			} else {
+				printf("    RING:   %s\n", link->keyring->name);
+			}
+		}
 	}
 
 	return 0;
diff --git a/common/image-fit.c b/common/image-fit.c
index f5356be33d..b7daf433c3 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -253,10 +253,11 @@ static int fit_check_signature(struct fit_handle *handle, struct device_node *si
 {
 	const char *fail_reason;
 	const struct public_key *key;
+	const struct keyring *fit_kr;
 	const char *key_name = NULL;
 	int sig_len;
 	const char *sig_value;
-	int id, ret;
+	int ret;
 
 	sig_value = of_get_property(sig_node, "value", &sig_len);
 	if (!sig_value) {
@@ -266,10 +267,16 @@ static int fit_check_signature(struct fit_handle *handle, struct device_node *si
 
 	fail_reason = "no matching keys";
 
+	fit_kr = keyring_find("fit");
+	if (!fit_kr) {
+		pr_err("fit keyring not registered\n");
+		return -ENOKEY;
+	}
+
 	of_property_read_string(sig_node, "key-name-hint", &key_name);
 	if (key_name) {
-		key = public_key_get(key_name, "fit");
-		if (key) {
+		key = keyring_find_key(fit_kr, key_name);
+		if (!IS_ERR(key)) {
 			fail_reason = "verification failed";
 			ret = public_key_verify(key, sig_value, sig_len, hash, algo);
 			if (handle->verbose)
@@ -280,7 +287,7 @@ static int fit_check_signature(struct fit_handle *handle, struct device_node *si
 		}
 	}
 
-	for_each_public_key_keyring(key, id, "fit") {
+	for_each_key_in_keyring(key, fit_kr) {
 
 		/* Don't recheck with same key as before */
 		if (key_name && streq_ptr(key->key_name_hint, key_name))
diff --git a/common/tlv/parser.c b/common/tlv/parser.c
index 4c0b6b5c6f..d61dfa2c47 100644
--- a/common/tlv/parser.c
+++ b/common/tlv/parser.c
@@ -49,15 +49,16 @@ static int tlv_verify_try_key(const struct public_key *key, const uint8_t *sig,
 	return ret;
 }
 
-static int tlv_verify(const struct tlv_header *header, const char *keyring)
+static int tlv_verify(const struct tlv_header *header, const char *keyring_name)
 {
 	const struct public_key *key;
+	const struct keyring *kr;
 	size_t payload_sz = tlv_spki_hash_offset(header);
 	const void *spki_tlv_ptr = (void *)header + payload_sz;
 	u32 spki_tlv = get_unaligned_le32(spki_tlv_ptr);
 	int SPKI_LEN = 4;
 	u32 sig_len = get_unaligned_be16(&header->length_sig);
-	int ret, id;
+	int ret;
 	int count_spki_matches = 0;
 
 	if (!IS_ENABLED(CONFIG_TLV_SIGNATURE)) {
@@ -68,7 +69,13 @@ static int tlv_verify(const struct tlv_header *header, const char *keyring)
 		return -EPROTO;
 	}
 
-	for_each_public_key_keyring(key, id, keyring) {
+	kr = keyring_find(keyring_name);
+	if (!kr) {
+		pr_warn("TLV keyring %s not found\n", keyring_name);
+		return -ENOKEY;
+	}
+
+	for_each_key_in_keyring(key, kr) {
 		u32 spki_key = get_unaligned_le32(key->hash);
 
 		if (spki_key == spki_tlv) {
diff --git a/crypto/public-keys.c b/crypto/public-keys.c
index 2b4bac55b7..84bc03e4e3 100644
--- a/crypto/public-keys.c
+++ b/crypto/public-keys.c
@@ -5,38 +5,216 @@
 #include <crypto/public_key.h>
 #include <crypto/rsa.h>
 #include <crypto/ecdsa.h>
+#include <linux/list.h>
+#include <malloc.h>
+#include <xfuncs.h>
 
-DEFINE_IDR(public_keys);
+LIST_HEAD(keyring_registry);
 
-const struct public_key *public_key_get(const char *name, const char *keyring)
+struct keyring *keyring_find(const char *name)
+{
+	struct keyring *kr;
+
+	if (!name)
+		return NULL;
+
+	list_for_each_entry(kr, &keyring_registry, node) {
+		if (!strcmp(kr->name, name))
+			return kr;
+	}
+	return NULL;
+}
+
+struct keyring *keyring_create(const char *name)
+{
+	struct keyring *kr;
+
+	if (!name || !*name)
+		return ERR_PTR(-EINVAL);
+
+	if (keyring_find(name))
+		return ERR_PTR(-EEXIST);
+
+	kr = xzalloc(sizeof(*kr));
+	kr->name = xstrdup(name);
+	INIT_LIST_HEAD(&kr->links);
+	INIT_LIST_HEAD(&kr->node);
+	list_add_tail(&kr->node, &keyring_registry);
+
+	return kr;
+}
+
+int keyring_link_key(struct keyring *kr, const struct public_key *key)
+{
+	struct keyring_link *link;
+
+	if (!kr || !key)
+		return -EINVAL;
+
+	link = xzalloc(sizeof(*link));
+	link->type = KEYRING_LINK_KEY;
+	link->key = key;
+	list_add_tail(&link->node, &kr->links);
+
+	return 0;
+}
+
+int keyring_unlink_key(struct keyring *kr, const struct public_key *key)
+{
+	struct keyring_link *link, *n;
+
+	if (!kr || !key)
+		return -EINVAL;
+
+	list_for_each_entry_safe(link, n, &kr->links, node) {
+		if (link->type == KEYRING_LINK_KEY && link->key == key) {
+			list_del(&link->node);
+			free(link);
+			return 0;
+		}
+	}
+	return -ENOENT;
+}
+
+static bool keyring_contains(const struct keyring *kr, const struct keyring *target)
+{
+	const struct keyring_link *link;
+
+	if (kr == target)
+		return true;
+
+	list_for_each_entry(link, &kr->links, node) {
+		if (link->type != KEYRING_LINK_KEYRING)
+			continue;
+		if (keyring_contains(link->keyring, target))
+			return true;
+	}
+	return false;
+}
+
+int keyring_link_keyring(struct keyring *kr, const struct keyring *sub)
+{
+	struct keyring_link *link;
+
+	if (!kr || !sub)
+		return -EINVAL;
+
+	/*
+	 * Refuse to create a cycle: if sub already (transitively) contains kr
+	 * — or sub is kr itself — adding sub as a child of kr would loop.
+	 * Assuming the graph was cycle-free before, this check is enough to
+	 * keep it that way.
+	 */
+	if (keyring_contains(sub, kr))
+		return -ELOOP;
+
+	link = xzalloc(sizeof(*link));
+	link->type = KEYRING_LINK_KEYRING;
+	link->keyring = sub;
+	list_add_tail(&link->node, &kr->links);
+
+	return 0;
+}
+
+int keyring_unlink_keyring(struct keyring *kr, const struct keyring *sub)
+{
+	struct keyring_link *link, *n;
+
+	if (!kr || !sub)
+		return -EINVAL;
+
+	list_for_each_entry_safe(link, n, &kr->links, node) {
+		if (link->type == KEYRING_LINK_KEYRING && link->keyring == sub) {
+			list_del(&link->node);
+			free(link);
+			return 0;
+		}
+	}
+	return -ENOENT;
+}
+
+const struct public_key *keyring_iter_next(struct keyring_iter *it,
+					   const struct keyring *root)
+{
+	if (it->depth < 0) {
+		if (!root)
+			return NULL;
+		it->depth = 0;
+		it->stack[0] = root;
+		it->cursor[0] = (struct list_head *)&root->links;
+	}
+
+	while (it->depth >= 0) {
+		struct list_head *head = (struct list_head *)&it->stack[it->depth]->links;
+		struct list_head *next = it->cursor[it->depth]->next;
+		struct keyring_link *link;
+
+		if (next == head) {
+			it->depth--;
+			continue;
+		}
+
+		it->cursor[it->depth] = next;
+		link = list_entry(next, struct keyring_link, node);
+
+		if (link->type == KEYRING_LINK_KEY)
+			return link->key;
+
+		if (it->depth + 1 >= KEYRING_MAX_DEPTH) {
+			pr_warn("keyring nesting too deep, skipping %s\n",
+				link->keyring->name);
+			continue;
+		}
+
+		it->depth++;
+		it->stack[it->depth] = link->keyring;
+		it->cursor[it->depth] = (struct list_head *)&link->keyring->links;
+	}
+
+	return NULL;
+}
+
+const struct public_key *keyring_find_key(const struct keyring *kr,
+					  const char *key_name_hint)
 {
 	const struct public_key *key;
-	int id;
 
-	for_each_public_key_keyring(key, id, keyring) {
+	if (!kr || !key_name_hint)
+		return ERR_PTR(-EINVAL);
+
+	for_each_key_in_keyring(key, kr) {
 		if (!key->key_name_hint)
 			continue;
-		if (!strcmp(key->key_name_hint, name))
+		if (!strcmp(key->key_name_hint, key_name_hint))
 			return key;
 	}
 
-	return NULL;
+	return ERR_PTR(-ENOENT);
 }
 
-int public_key_add(struct public_key *key)
+int public_key_add(const char *keyring, const struct public_key *key)
 {
-	if (!key->keyring || *key->keyring == '\0') {
-		pr_warn("Aborting addition of public key: No keyring specified\n");
+	struct keyring *kr;
+	const struct public_key *conflict;
+
+	if (!keyring || !*keyring)
 		return -EINVAL;
+
+	kr = keyring_find(keyring);
+	if (!kr) {
+		kr = keyring_create(keyring);
+		if (IS_ERR(kr))
+			return PTR_ERR(kr);
 	}
 
-	if (public_key_get(key->key_name_hint, key->keyring)) {
+	conflict = keyring_find_key(kr, key->key_name_hint);
+	if (!IS_ERR(conflict)) {
 		pr_warn("Cannot add key: key_name_hint %s already exists in keyring %s\n",
-			key->key_name_hint, key->keyring);
+			key->key_name_hint, keyring);
 		return -EEXIST;
 	}
 
-	return idr_alloc(&public_keys, key, 0, INT_MAX, GFP_NOWAIT);
+	return keyring_link_key(kr, key);
 }
 
 int public_key_verify(const struct public_key *key, const uint8_t *sig,
@@ -53,18 +231,20 @@ int public_key_verify(const struct public_key *key, const uint8_t *sig,
 	return -ENOKEY;
 }
 
-extern struct public_key * __public_keys_start[];
-extern struct public_key * __public_keys_end[];
+extern const struct public_key_record __public_keys_start[];
+extern const struct public_key_record __public_keys_end[];
 
 static int init_public_keys(void)
 {
-	struct public_key * const *iter;
+	const struct public_key_record *rec;
 	int ret;
 
-	for (iter = __public_keys_start; iter != __public_keys_end; iter++) {
-		ret = idr_alloc(&public_keys, *iter, 0, INT_MAX, GFP_NOWAIT);
-		if (ret < 0)
-			pr_warn("error while adding key\n");
+	for (rec = __public_keys_start; rec != __public_keys_end; rec++) {
+		ret = public_key_add(rec->keyring, rec->key);
+		if (ret)
+			pr_warn("error while adding key %s to %s: %pe\n",
+				rec->key->key_name_hint ?: "(noname)",
+				rec->keyring, ERR_PTR(ret));
 	}
 
 	return 0;
diff --git a/crypto/rsa.c b/crypto/rsa.c
index 0e752f11b4..0b20b59477 100644
--- a/crypto/rsa.c
+++ b/crypto/rsa.c
@@ -468,8 +468,7 @@ static void rsa_init_keys_of(void)
 			continue;
 		}
 
-		key->keyring = "fit";
-		ret = public_key_add(key);
+		ret = public_key_add("fit", key);
 		if (ret)
 			pr_err("Cannot add rsa key %s: %pe\n",
 				key->key_name_hint, ERR_PTR(ret));
diff --git a/include/asm-generic/barebox.lds.h b/include/asm-generic/barebox.lds.h
index 12082d567a..008217e808 100644
--- a/include/asm-generic/barebox.lds.h
+++ b/include/asm-generic/barebox.lds.h
@@ -129,7 +129,18 @@
 #endif
 
 
+/*
+ * GCC emits "const data with absolute relocations" into .data.rel.ro*
+ * (e.g. a `static const struct` that contains pointers to other symbols).
+ * In a statically linked image these are fully resolved at link time and
+ * never written at runtime, so place them with .rodata instead of letting
+ * them fall through into the writable .data section.
+ */
+#define BAREBOX_RELRO_DATA			\
+	*(.data.rel.ro .data.rel.ro.*)
+
 #define RO_DATA_SECTION				\
+	BAREBOX_RELRO_DATA			\
 	BAREBOX_INITCALLS			\
 	BAREBOX_EXITCALLS			\
 	BAREBOX_CMDS				\
diff --git a/include/crypto/public_key.h b/include/crypto/public_key.h
index 0fd8e1e304..3866b13a75 100644
--- a/include/crypto/public_key.h
+++ b/include/crypto/public_key.h
@@ -2,7 +2,7 @@
 #define __CRYPTO_PUBLIC_KEY_H
 
 #include <digest.h>
-#include <linux/idr.h>
+#include <linux/list.h>
 #include <string.h>
 
 struct rsa_public_key;
@@ -28,7 +28,6 @@ static inline const char *public_key_type_string(enum public_key_type type)
 struct public_key {
 	enum public_key_type type;
 	const char *key_name_hint;
-	char *keyring;
 	const unsigned char *hash;
 	unsigned int hashlen;
 
@@ -38,21 +37,83 @@ struct public_key {
 	};
 };
 
-int public_key_add(struct public_key *key);
-const struct public_key *public_key_get(const char *name, const char *keyring);
-const struct public_key *public_key_next(const struct public_key *prev);
+/*
+ * Linker-list entry assigning a compiled-in public_key to a named keyring.
+ * Emitted by scripts/keytoc into .public_keys.rodata.* and consumed at init.
+ */
+struct public_key_record {
+	const char *keyring;
+	const struct public_key *key;
+};
+
+/*
+ * A keyring is a named container that holds keyring_link entries. Each link
+ * references either a public_key or another keyring (sub-keyring), so keyrings
+ * can be nested. A given key may be linked into any number of keyrings.
+ */
+struct keyring {
+	const char *name;
+	struct list_head links;	/* list of struct keyring_link */
+	struct list_head node;	/* link in keyring_registry */
+};
+
+enum keyring_link_type {
+	KEYRING_LINK_KEY,
+	KEYRING_LINK_KEYRING,
+};
+
+struct keyring_link {
+	enum keyring_link_type type;
+	struct list_head node;
+	union {
+		const struct public_key *key;
+		const struct keyring *keyring;
+	};
+};
+
+struct keyring *keyring_create(const char *name);
+struct keyring *keyring_find(const char *name);
+
+int keyring_link_key(struct keyring *kr, const struct public_key *key);
+int keyring_unlink_key(struct keyring *kr, const struct public_key *key);
+
+int keyring_link_keyring(struct keyring *kr, const struct keyring *sub);
+int keyring_unlink_keyring(struct keyring *kr, const struct keyring *sub);
+
+const struct public_key *keyring_find_key(const struct keyring *kr,
+					  const char *key_name_hint);
+
+#define KEYRING_MAX_DEPTH 4
+
+struct keyring_iter {
+	const struct keyring *stack[KEYRING_MAX_DEPTH];
+	struct list_head *cursor[KEYRING_MAX_DEPTH];
+	int depth;
+};
+
+const struct public_key *keyring_iter_next(struct keyring_iter *it,
+					   const struct keyring *root);
+
+/*
+ * Iterate every key reachable from @kr, recursing into sub-keyrings.
+ * The same key may be yielded more than once if it is linked into multiple
+ * (sub-)keyrings; callers that care must dedup themselves.
+ */
+#define for_each_key_in_keyring(key, kr)					\
+	for (struct keyring_iter __it = { .depth = -1 };			\
+	     ((key) = keyring_iter_next(&__it, (kr))) != NULL;			\
+	    )
 
-extern struct idr public_keys;
+/* Iterate only the direct links of @kr (does not recurse into sub-keyrings) */
+#define for_each_link_in_keyring(link, kr) \
+	list_for_each_entry(link, &(kr)->links, node)
 
-#define for_each_public_key(key, id) \
-		idr_for_each_entry(&public_keys, key, id)
+extern struct list_head keyring_registry;
 
-#define for_each_public_key_keyring(key, id, _keyring)                    \
-	for_each_public_key(key, id)                                      \
-		if (!key->keyring || strcmp(key->keyring, _keyring) != 0) \
-			continue;                                         \
-		else
+#define for_each_keyring(kr) \
+	list_for_each_entry(kr, &keyring_registry, node)
 
+int public_key_add(const char *keyring, const struct public_key *key);
 int public_key_verify(const struct public_key *key, const uint8_t *sig,
 		      const uint32_t sig_len, const uint8_t *hash,
 		      enum hash_algo algo);
diff --git a/scripts/keytoc.c b/scripts/keytoc.c
index 40601827b7..7e910422a7 100644
--- a/scripts/keytoc.c
+++ b/scripts/keytoc.c
@@ -535,7 +535,7 @@ static int gen_key_ecdsa(EVP_PKEY *key, struct keyinfo *info)
 		fprintf(stderr, "ERROR: generating a dts snippet for ECDSA keys is not yet supported\n");
 		return -EOPNOTSUPP;
 	} else {
-		fprintf(outfilep, "\nstatic unsigned char %s_hash[] = {\n\t", info->name_c);
+		fprintf(outfilep, "\nstatic const unsigned char %s_hash[] = {\n\t", info->name_c);
 
 		ret = print_hash(key);
 		if (ret)
@@ -557,24 +557,26 @@ static int gen_key_ecdsa(EVP_PKEY *key, struct keyinfo *info)
 
 		fprintf(outfilep, "\n};\n\n");
 
-		fprintf(outfilep, "static struct ecdsa_public_key %s = {\n", info->name_c);
+		fprintf(outfilep, "static const struct ecdsa_public_key %s = {\n", info->name_c);
 
 		fprintf(outfilep, "\t.curve_name = \"%s\",\n", group);
 		fprintf(outfilep, "\t.x = %s_x,\n", info->name_c);
 		fprintf(outfilep, "\t.y = %s_y,\n", info->name_c);
 		fprintf(outfilep, "};\n");
 		if (!standalone) {
-			fprintf(outfilep, "\nstatic struct public_key %s_public_key = {\n", info->name_c);
+			fprintf(outfilep, "\nstatic const struct public_key %s_public_key = {\n", info->name_c);
 			fprintf(outfilep, "\t.type = PUBLIC_KEY_TYPE_ECDSA,\n");
 			if (info->name_hint)
 				fprintf(outfilep, "\t.key_name_hint = \"%s\",\n", info->name_hint);
-			fprintf(outfilep, "\t.keyring = \"%s\",\n", info->keyring);
 			fprintf(outfilep, "\t.hash = %s_hash,\n", info->name_c);
 			fprintf(outfilep, "\t.hashlen = %u,\n", SHA256_DIGEST_LENGTH);
 			fprintf(outfilep, "\t.ecdsa = &%s,\n", info->name_c);
 			fprintf(outfilep, "};\n");
 			fprintf(outfilep, "\n");
-			fprintf(outfilep, "const struct public_key *__%s_public_key __ll_elem(.public_keys.rodata.%s) = &%s_public_key;\n", info->name_c, info->name_c, info->name_c);
+			fprintf(outfilep, "static const struct public_key_record __%s_public_key __ll_elem(.public_keys.rodata.%s) = {\n", info->name_c, info->name_c);
+			fprintf(outfilep, "\t.keyring = \"%s\",\n", info->keyring);
+			fprintf(outfilep, "\t.key = &%s_public_key,\n", info->name_c);
+			fprintf(outfilep, "};\n");
 		}
 	}
 
@@ -635,7 +637,7 @@ static int gen_key_rsa(EVP_PKEY *key, struct keyinfo *info)
 		fprintf(outfilep, "\t\t\tkey-name-hint = \"%s\";\n", info->name_c);
 		fprintf(outfilep, "\t\t};\n");
 	} else {
-		fprintf(outfilep, "\nstatic unsigned char %s_hash[] = {\n\t", info->name_c);
+		fprintf(outfilep, "\nstatic const unsigned char %s_hash[] = {\n\t", info->name_c);
 
 		ret = print_hash(key);
 		if (ret)
@@ -661,7 +663,7 @@ static int gen_key_rsa(EVP_PKEY *key, struct keyinfo *info)
 			fprintf(outfilep, "struct rsa_public_key __key_%s;\n", info->name_c);
 			fprintf(outfilep, "struct rsa_public_key __key_%s = {\n", info->name_c);
 		} else {
-			fprintf(outfilep, "static struct rsa_public_key %s = {\n", info->name_c);
+			fprintf(outfilep, "static const struct rsa_public_key %s = {\n", info->name_c);
 		}
 
 		fprintf(outfilep, "\t.len = %d,\n", bits / 32);
@@ -672,17 +674,19 @@ static int gen_key_rsa(EVP_PKEY *key, struct keyinfo *info)
 		fprintf(outfilep, "};\n");
 
 		if (!standalone) {
-			fprintf(outfilep, "\nstatic struct public_key %s_public_key = {\n", info->name_c);
+			fprintf(outfilep, "\nstatic const struct public_key %s_public_key = {\n", info->name_c);
 			fprintf(outfilep, "\t.type = PUBLIC_KEY_TYPE_RSA,\n");
 			if (info->name_hint)
 				fprintf(outfilep, "\t.key_name_hint = \"%s\",\n", info->name_hint);
-			fprintf(outfilep, "\t.keyring = \"%s\",\n", info->keyring);
 			fprintf(outfilep, "\t.hash = %s_hash,\n", info->name_c);
 			fprintf(outfilep, "\t.hashlen = %u,\n", SHA256_DIGEST_LENGTH);
 			fprintf(outfilep, "\t.rsa = &%s,\n", info->name_c);
 			fprintf(outfilep, "};\n");
 			fprintf(outfilep, "\n");
-			fprintf(outfilep, "const struct public_key *__%s_public_key __ll_elem(.public_keys.rodata.%s) = &%s_public_key;\n", info->name_c, info->name_c, info->name_c);
+			fprintf(outfilep, "static const struct public_key_record __%s_public_key __ll_elem(.public_keys.rodata.%s) = {\n", info->name_c, info->name_c);
+			fprintf(outfilep, "\t.keyring = \"%s\",\n", info->keyring);
+			fprintf(outfilep, "\t.key = &%s_public_key,\n", info->name_c);
+			fprintf(outfilep, "};\n");
 		}
 	}
 

-- 
2.47.3



