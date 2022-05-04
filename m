Delivery-date: Wed, 04 May 2022 15:17:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmEsX-001g6Z-Nz
	for lore@lore.pengutronix.de; Wed, 04 May 2022 15:17:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmEsU-0001jD-SO
	for lore@pengutronix.de; Wed, 04 May 2022 15:17:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oIedCrO5DnAmqi8HnyMX/x1QNC/+v9xtJzlErgpQiuE=; b=qpDEavY/Fsbv7E
	OVtEwfQ8OXS86/Xdtyqa09K4Jnq9nWxz7Lg6iaxOrbPo4uGtggCK3zhfka3vUidvd2Dr6qcAgiAXb
	8EWaW35/i5A3IwzxvVqosOIITm2LYozkE8GUpd+X7vihNwiHAXIIALKVsvA8lgRj1pjOuR1tFHPYH
	16CyubK5PRa6jLiAON1dcIdB85slWReHyoy6NWh28UsOpTzS8sc2wB5SbKMsvwefBSzCsN9aTr7LZ
	WasrCW4q+wt+Fo4A3wBush4UYb6EmMuWs3YL44MG7o7rnv5A7/6HJPAPEs7HycbVwFKVpYhN+BGoL
	Etk5Z0gUOyQA9536ygBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmEqy-00AzAh-MZ; Wed, 04 May 2022 13:15:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmEpp-00Ayfd-Bv
 for barebox@lists.infradead.org; Wed, 04 May 2022 13:14:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nmEpg-00010Y-3r; Wed, 04 May 2022 15:14:20 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nmEpg-000Jqe-PU; Wed, 04 May 2022 15:14:19 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nmEpd-00GEhz-KF; Wed, 04 May 2022 15:14:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed,  4 May 2022 15:14:12 +0200
Message-Id: <20220504131416.3869736-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220504131416.3869736-1-s.hauer@pengutronix.de>
References: <20220504131416.3869736-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220504_061429_474866_1A39297C 
X-CRM114-Status: GOOD (  18.04  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 4/8] rsa: Collect keys on list
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Currently there is no way to iterate over all available RSA keys.
This patch collects all keys on a list so we can add an iterator
in the next step.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/image-fit.c | 25 ++----------
 crypto/rsa.c       | 97 ++++++++++++++++++++++++++++++++++++++--------
 include/rsa.h      |  3 +-
 3 files changed, 86 insertions(+), 39 deletions(-)

diff --git a/common/image-fit.c b/common/image-fit.c
index 38a372ff52..152d066f47 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -255,10 +255,8 @@ static struct digest *fit_alloc_digest(struct device_node *sig_node,
 static int fit_check_rsa_signature(struct device_node *sig_node,
 				   enum hash_algo algo, void *hash)
 {
-	struct rsa_public_key *key;
+	const struct rsa_public_key *key;
 	const char *key_name;
-	char *key_path;
-	struct device_node *key_node;
 	int sig_len;
 	const char *sig_value;
 	int ret;
@@ -275,22 +273,9 @@ static int fit_check_rsa_signature(struct device_node *sig_node,
 	}
 
 	key = rsa_get_key(key_name);
-	if (IS_ERR(key)) {
-		key_path = xasprintf("/signature/key-%s", key_name);
-		key_node = of_find_node_by_path(key_path);
-		if (!key_node) {
-			pr_info("failed to find key node %s\n", key_path);
-			free(key_path);
-			return -ENOENT;
-		}
-		free(key_path);
-
-		key = rsa_of_read_key(key_node);
-
-		if (IS_ERR(key)) {
-			pr_info("failed to read key in %s\n", key_node->full_name);
-			return -ENOENT;
-		}
+	if (!key) {
+		pr_err("No such key: %s\n", key_name);
+		return -ENOENT;
 	}
 
 	ret = rsa_verify(key, sig_value, sig_len, hash, algo);
@@ -299,8 +284,6 @@ static int fit_check_rsa_signature(struct device_node *sig_node,
 	else
 		pr_info("image signature OK\n");
 
-	rsa_key_free(key);
-
 	return ret;
 }
 
diff --git a/crypto/rsa.c b/crypto/rsa.c
index 1aea738e52..4e2d463b54 100644
--- a/crypto/rsa.c
+++ b/crypto/rsa.c
@@ -388,8 +388,13 @@ struct rsa_public_key *rsa_of_read_key(struct device_node *node)
 	struct rsa_public_key *key;
 	int err;
 
+	if (strncmp(node->name, "key-", 4))
+		return ERR_PTR(-EINVAL);
+
 	key = xzalloc(sizeof(*key));
 
+	key->key_name_hint = xstrdup(node->name + 4);
+
 	of_property_read_u32(node, "rsa,num-bits", &key->len);
 	of_property_read_u32(node, "rsa,n0-inverse", &key->n0inv);
 
@@ -439,35 +444,93 @@ void rsa_key_free(struct rsa_public_key *key)
 	free(key);
 }
 
-#ifdef CONFIG_CRYPTO_RSA_BUILTIN_KEYS
-#include "rsa-keys.h"
-
-extern const struct rsa_public_key * const __rsa_keys_start;
-extern const struct rsa_public_key * const __rsa_keys_end;
+static LIST_HEAD(rsa_keys);
 
-struct rsa_public_key *rsa_get_key(const char *name)
+const struct rsa_public_key *rsa_get_key(const char *name)
 {
 	const struct rsa_public_key *key;
-	struct rsa_public_key *new;
-	const struct rsa_public_key * const *iter;
 
-	for (iter = &__rsa_keys_start; iter != &__rsa_keys_end; iter++) {
-		key = *iter;
-		if (!strcmp(name, key->key_name_hint))
-			goto found;
+	list_for_each_entry(key, &rsa_keys, list) {
+		if (!strcmp(key->key_name_hint, name))
+			return key;
 	}
 
-	return ERR_PTR(-ENOENT);
-found:
+	return NULL;
+}
+
+static int rsa_key_add(struct rsa_public_key *key)
+{
+	if (rsa_get_key(key->key_name_hint))
+		return -EEXIST;
+
+	list_add_tail(&key->list, &rsa_keys);
+
+	return 0;
+}
+
+static struct rsa_public_key *rsa_key_dup(const struct rsa_public_key *key)
+{
+	struct rsa_public_key *new;
+
 	new = xmemdup(key, sizeof(*key));
 	new->modulus = xmemdup(key->modulus, key->len * sizeof(uint32_t));
 	new->rr = xmemdup(key->rr, key->len  * sizeof(uint32_t));
 
 	return new;
 }
-#else
-struct rsa_public_key *rsa_get_key(const char *name)
+
+extern const struct rsa_public_key * const __rsa_keys_start;
+extern const struct rsa_public_key * const __rsa_keys_end;
+
+static void rsa_init_keys_of(void)
 {
-	return ERR_PTR(-ENOENT);
+	struct device_node *sigs, *sig;
+	struct rsa_public_key *key;
+	int ret;
+
+	if (!IS_ENABLED(CONFIG_OFTREE))
+		return;
+
+	sigs = of_find_node_by_path("/signature");
+	if (!sigs)
+		return;
+
+	for_each_child_of_node(sigs, sig) {
+		key = rsa_of_read_key(sig);
+		if (IS_ERR(key)) {
+			pr_err("Cannot read rsa key from %s: %pe\n",
+			       sig->full_name, key);
+			continue;
+		}
+
+		ret = rsa_key_add(key);
+		if (ret)
+			pr_err("Cannot add rsa key %s: %s\n",
+				key->key_name_hint, strerror(-ret));
+	}
 }
+
+static int rsa_init_keys(void)
+{
+	const struct rsa_public_key * const *iter;
+	struct rsa_public_key *key;
+	int ret;
+
+	for (iter = &__rsa_keys_start; iter != &__rsa_keys_end; iter++) {
+		key = rsa_key_dup(*iter);
+		ret = rsa_key_add(key);
+		if (ret)
+			pr_err("Cannot add rsa key %s: %s\n",
+			       key->key_name_hint, strerror(-ret));
+	}
+
+	rsa_init_keys_of();
+
+	return 0;
+}
+
+device_initcall(rsa_init_keys);
+
+#ifdef CONFIG_CRYPTO_RSA_BUILTIN_KEYS
+#include "rsa-keys.h"
 #endif
diff --git a/include/rsa.h b/include/rsa.h
index 803660d19a..4ef16ea5a8 100644
--- a/include/rsa.h
+++ b/include/rsa.h
@@ -29,6 +29,7 @@ struct rsa_public_key {
 	uint32_t *rr;		/* R^2 as little endian array */
 	uint64_t exponent;	/* public exponent */
 	char *key_name_hint;
+	struct list_head list;
 };
 
 /**
@@ -52,6 +53,6 @@ int rsa_verify(const struct rsa_public_key *key, const uint8_t *sig,
 
 struct rsa_public_key *rsa_of_read_key(struct device_node *node);
 void rsa_key_free(struct rsa_public_key *key);
-struct rsa_public_key *rsa_get_key(const char *name);
+const struct rsa_public_key *rsa_get_key(const char *name);
 
 #endif
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

