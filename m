Delivery-date: Mon, 20 Oct 2025 14:59:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vApTv-009tsQ-2p
	for lore@lore.pengutronix.de;
	Mon, 20 Oct 2025 14:59:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vApTn-000193-Nf
	for lore@pengutronix.de; Mon, 20 Oct 2025 14:59:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=h8cFxJUAtR9z18rikC7V5b1YQeUpHaLUtcHjxf0ppK4=; b=g1zuP2iA3waPdkMqkxuN+gCR60
	jAV8yxO3kRm9RuX75gvQ5iTIHyt4GYpF090wmJe1N63AXubTpyTEcx2HAyvZE0uho8St267b36APe
	B+IeMHWtkt6rAwj57FswuuxRhx0no80Xzazgqgu5+4weV1qhhLqiE1V7ekGxj+D6yhvHIC3zuWJhu
	dkd5TeSfz9GdEcn6ww7ym/snlI2wCNQDXrQmvaSVJo0nJ++QgOq1tlvSm0S9567LW4LqcLWdB17V0
	0rUwN/TiFw89+1IdedjmqqJF/Q8Dsw5zKkK6cf51uZc9Az1HYrroOdtccg0K8eOF40dacFezGswB9
	E89w9IAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApSz-0000000DfgS-17Qn;
	Mon, 20 Oct 2025 12:58:25 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApSo-0000000DfMY-2azK
	for barebox@bombadil.infradead.org;
	Mon, 20 Oct 2025 12:58:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Cc:To:In-Reply-To:References:Message-Id
	:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=h8cFxJUAtR9z18rikC7V5b1YQeUpHaLUtcHjxf0ppK4=; b=uxoY33G/z7E8C2MhMnZkW+rBYh
	nPg/ElnVuhS7m9wM4R/tT8JguaCQzw0tX1ybsuYtDyllxJ+gwMolYo16YKqPk49+i03AWyyYImhyz
	3DiLyyeUBEuJ7hAeOzghR9g84immhSzIjKUpKVi9oMr/Yl9rp1SsT+hkejZkfexw4AR2uWFiLcyCK
	g5vPrkU2K0InZHWE9OR3VseMj82+jGMD6qxKMVaT2nCF55/ec1gfldC8qWbRz3LNZiJNnNC95b/NZ
	M1OEYUMfbPRMzhWF9kg7jHghnoxN6YZidtMS6SKP9ETGMkWdbpqK98CpRt0jUpDnQ0MVc2PnSOkGr
	Vs36pMiw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApSi-00000007hdN-2Ckb
	for barebox@lists.infradead.org;
	Mon, 20 Oct 2025 12:58:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vApSf-0008EQ-0b
	for barebox@lists.infradead.org; Mon, 20 Oct 2025 14:58:05 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vAo6N-004XTo-1M;
	Mon, 20 Oct 2025 13:30:59 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vAo6N-0000000A67x-1HF2;
	Mon, 20 Oct 2025 13:30:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 20 Oct 2025 13:30:59 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251020-public-keys-const-v1-2-301de7918b06@pengutronix.de>
References: <20251020-public-keys-const-v1-0-301de7918b06@pengutronix.de>
In-Reply-To: <20251020-public-keys-const-v1-0-301de7918b06@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760959859; l=5725;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=VWfFLsPAQh1/ZFHTsziZRJzE5RkTwFAvgc/WbLlQHGI=;
 b=M7+8bkj+75EHwzTg8kdh6guVX4FRkPCGxqwLBNWBxuZS2wzLF6XfN7HMv9In3wQWcPrkvHmuB
 wxotD98OH05CPWh2io+dYEOD6NUrs59OnKCVzK0RVNSDpVOgq5pLrVa
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251020_135809_847666_96F28F41 
X-CRM114-Status: GOOD (  15.31  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/5] public-keys: move list out of struct public_key
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

struct public_key contains a list entry which prevents us from putting
the struct into the RO data section. Use idr to keep the list outside
the struct. With this we also no longer have to duplicate the keys but
can use them in place instead.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/keys.c             |  3 ++-
 common/image-fit.c          |  4 +--
 crypto/Kconfig              |  1 +
 crypto/public-keys.c        | 61 ++++++---------------------------------------
 include/crypto/public_key.h |  8 +++---
 5 files changed, 17 insertions(+), 60 deletions(-)

diff --git a/commands/keys.c b/commands/keys.c
index 2d85e8124ff57ecc8ef7364f083b3439e3b958e4..616d44c25a9bb092b6f3f1fb0f3ac8bd66c8f0df 100644
--- a/commands/keys.c
+++ b/commands/keys.c
@@ -5,8 +5,9 @@
 static int do_keys(int argc, char *argv[])
 {
 	const struct public_key *key;
+	int id;
 
-	for_each_public_key(key) {
+	for_each_public_key(key, id) {
 		printf("KEY: %*phN", key->hashlen, key->hash);
 
 		if (key->key_name_hint)
diff --git a/common/image-fit.c b/common/image-fit.c
index 6b44a79e9d1cb8528c08c40ea043e01364664320..a4a490b03e68acc0929ecf58b2f09f592450afc5 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -266,7 +266,7 @@ static int fit_check_signature(struct fit_handle *handle, struct device_node *si
 	const char *key_name = NULL;
 	int sig_len;
 	const char *sig_value;
-	int ret;
+	int id, ret;
 
 	sig_value = of_get_property(sig_node, "value", &sig_len);
 	if (!sig_value) {
@@ -287,7 +287,7 @@ static int fit_check_signature(struct fit_handle *handle, struct device_node *si
 		}
 	}
 
-	for_each_public_key(key) {
+	for_each_public_key(key, id) {
 		fail_reason = "verification failed";
 
 		if (key_name && !strcmp(key->key_name_hint, key_name))
diff --git a/crypto/Kconfig b/crypto/Kconfig
index a79525b4d4d1920e36b3fad367297bed1e2a5b76..dd14a2532ce630ab17f3ec195ff895297ecd09c7 100644
--- a/crypto/Kconfig
+++ b/crypto/Kconfig
@@ -129,6 +129,7 @@ config CRYPTO_ECDSA
 config CRYPTO_BUILTIN_KEYS
 	bool "builtin keys"
 	select KEYTOC
+	select IDR
 
 config CRYPTO_PUBLIC_KEYS
 	depends on CRYPTO_BUILTIN_KEYS
diff --git a/crypto/public-keys.c b/crypto/public-keys.c
index 8884e263b3655b023b17a7d3ba0e29bcf8e0ca65..6d86be8d34e164f46ccb2b53cc4c1c0ed5744987 100644
--- a/crypto/public-keys.c
+++ b/crypto/public-keys.c
@@ -6,22 +6,14 @@
 #include <crypto/rsa.h>
 #include <crypto/ecdsa.h>
 
-static LIST_HEAD(public_keys);
-
-const struct public_key *public_key_next(const struct public_key *prev)
-{
-	prev = list_prepare_entry(prev, &public_keys, list);
-	list_for_each_entry_continue(prev, &public_keys, list)
-		return prev;
-
-	return NULL;
-}
+DEFINE_IDR(public_keys);
 
 const struct public_key *public_key_get(const char *name)
 {
 	const struct public_key *key;
+	int id;
 
-	list_for_each_entry(key, &public_keys, list) {
+	for_each_public_key(key, id) {
 		if (!strcmp(key->key_name_hint, name))
 			return key;
 	}
@@ -34,42 +26,7 @@ int public_key_add(struct public_key *key)
 	if (public_key_get(key->key_name_hint))
 		return -EEXIST;
 
-	list_add_tail(&key->list, &public_keys);
-
-	return 0;
-}
-
-static struct public_key *public_key_dup(const struct public_key *key)
-{
-	struct public_key *k = xzalloc(sizeof(*k));
-
-	k->type = key->type;
-	if (key->key_name_hint)
-		k->key_name_hint = xstrdup(key->key_name_hint);
-	k->hash = xmemdup(key->hash, key->hashlen);
-	k->hashlen = key->hashlen;
-
-	switch (key->type) {
-	case PUBLIC_KEY_TYPE_RSA:
-		k->rsa = rsa_key_dup(key->rsa);
-		if (!k->rsa)
-			goto err;
-		break;
-	case PUBLIC_KEY_TYPE_ECDSA:
-		k->ecdsa = ecdsa_key_dup(key->ecdsa);
-		if (!k->ecdsa)
-			goto err;
-		break;
-	default:
-		goto err;
-	}
-
-	return k;
-err:
-	free(k->key_name_hint);
-	free(k);
-
-	return NULL;
+	return idr_alloc(&public_keys, key, 0, INT_MAX, GFP_NOWAIT);
 }
 
 int public_key_verify(const struct public_key *key, const uint8_t *sig,
@@ -92,16 +49,12 @@ extern struct public_key * __public_keys_end[];
 static int init_public_keys(void)
 {
 	struct public_key * const *iter;
+	int ret;
 
 	for (iter = __public_keys_start; iter != __public_keys_end; iter++) {
-		struct public_key *key = public_key_dup(*iter);
-
-		if (!key) {
+		ret = idr_alloc(&public_keys, *iter, 0, INT_MAX, GFP_NOWAIT);
+		if (ret)
 			pr_warn("error while adding key\n");
-			continue;
-		}
-
-		public_key_add(key);
 	}
 
 	return 0;
diff --git a/include/crypto/public_key.h b/include/crypto/public_key.h
index 7edea2d69190cb30f328510f905bab3054ad5845..3a484eced110b179c5c411c4e06c47770e965613 100644
--- a/include/crypto/public_key.h
+++ b/include/crypto/public_key.h
@@ -2,6 +2,7 @@
 #define __CRYPTO_PUBLIC_KEY_H
 
 #include <digest.h>
+#include <linux/idr.h>
 
 struct rsa_public_key;
 struct ecdsa_public_key;
@@ -13,7 +14,6 @@ enum public_key_type {
 
 struct public_key {
 	enum public_key_type type;
-	struct list_head list;
 	char *key_name_hint;
 	unsigned char *hash;
 	unsigned int hashlen;
@@ -28,8 +28,10 @@ int public_key_add(struct public_key *key);
 const struct public_key *public_key_get(const char *name);
 const struct public_key *public_key_next(const struct public_key *prev);
 
-#define for_each_public_key(key) \
-		for (key = public_key_next(NULL); key; key = public_key_next(key))
+extern struct idr public_keys;
+
+#define for_each_public_key(key, id) \
+		idr_for_each_entry(&public_keys, key, id)
 
 int public_key_verify(const struct public_key *key, const uint8_t *sig,
 		      const uint32_t sig_len, const uint8_t *hash,

-- 
2.47.3



