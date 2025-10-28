Delivery-date: Tue, 28 Oct 2025 19:04:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDo3g-00Clma-2p
	for lore@lore.pengutronix.de;
	Tue, 28 Oct 2025 19:04:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDo3d-0001HI-Ed
	for lore@pengutronix.de; Tue, 28 Oct 2025 19:04:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KsDmb8AcrevjEZ43zxmlkNpPMj454KMQXA25hmOeJSw=; b=0PlfFsCVoJtUYnGLppLcSdDZ9W
	SMq47aV37PU4ZPECEhpU0QdN8fs0mPPYjh8dywEShMNRC/61i+ymdq77NcbUnKWM+p4tn+4XFgnYX
	k3FL8k0e2bh8w+5+IxzwqHmTwP0QBQdkIpVHk2O92RNbJrFOVImrksOPC/4gwnXolnYNGBr2t0SUC
	Q/AuIDxnTgKrN5g5LFM51rilTpSXpXW4Dqy1VfQNG1iYLWHpPFEJaWTYx41JvzRpucicoB2HYe1w9
	B2BI0r79b4Fvsj27Wvvy5PAqIl64wLxJpgcVaV09y0wjypgZQUBGnCZxPUFK5yZgoi1//NTtyCalo
	A1QsDuKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDo2m-0000000GSAA-3fyH;
	Tue, 28 Oct 2025 18:03:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDo2j-0000000GS7j-0T4Q
	for barebox@lists.infradead.org;
	Tue, 28 Oct 2025 18:03:40 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1vDo2h-0000PX-1p; Tue, 28 Oct 2025 19:03:35 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Tue, 28 Oct 2025 19:03:09 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251028-tlv-signature-v2-4-3bafce636ad7@pengutronix.de>
References: <20251028-tlv-signature-v2-0-3bafce636ad7@pengutronix.de>
In-Reply-To: <20251028-tlv-signature-v2-0-3bafce636ad7@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=5364; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=HPw6JicJPHSun5qPJ6RuZ2d84Ie7++vre6aCJzij5gk=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYshkZC2IdTKOu/pQUvB4s2OOXP9Etc5LFRHmgpNSb0bs/
 pkh/PFTRykLgxgXg6yYIkusmpyCkLH/dbNKu1iYOaxMIEMYuDgFYCJxrAx/eDiKLm/U6L3EWRb5
 utR6Y/8MYas9wUZ7lrM47BGfs/KoOyNDX5OEh/WHkidLM7+eNHsicfP/q8feaQ+5F277edCneoc
 sOwA=
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251028_110337_156265_EDA01E4F 
X-CRM114-Status: GOOD (  15.39  )
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
Subject: [PATCH v2 04/17] fit: only accept keys from "fit"-keyring
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Separate keys shall be used for fitimage verification and the upcoming
TLV verification.

Based on the newly introduced keyring feature, limit fitimage
verification to the keys in the keyring literally named "fit", which is
also the current default keyring name in keytoc for backwards
compatibility.

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 common/image-fit.c          | 13 ++++++++-----
 crypto/public-keys.c        | 13 ++++++++++---
 crypto/rsa.c                |  1 +
 include/crypto/public_key.h |  9 ++++++++-
 include/tlv/tlv.h           |  1 +
 5 files changed, 28 insertions(+), 9 deletions(-)

diff --git a/common/image-fit.c b/common/image-fit.c
index a072339798..5c3a3e8f23 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -261,7 +261,7 @@ static struct digest *fit_alloc_digest(struct device_node *sig_node,
 static int fit_check_signature(struct fit_handle *handle, struct device_node *sig_node,
 			       enum hash_algo algo, void *hash)
 {
-	const char *fail_reason = "no built-in keys";
+	const char *fail_reason;
 	const struct public_key *key;
 	const char *key_name = NULL;
 	int sig_len;
@@ -274,10 +274,13 @@ static int fit_check_signature(struct fit_handle *handle, struct device_node *si
 		return -EINVAL;
 	}
 
+	fail_reason = "no matching keys";
+
 	of_property_read_string(sig_node, "key-name-hint", &key_name);
 	if (key_name) {
-		key = public_key_get(key_name);
+		key = public_key_get(key_name, "fit");
 		if (key) {
+			fail_reason = "verification failed";
 			ret = public_key_verify(key, sig_value, sig_len, hash, algo);
 			if (handle->verbose)
 				pr_info("Key %*phN (%s) -> signature %s\n", key->hashlen,
@@ -287,13 +290,13 @@ static int fit_check_signature(struct fit_handle *handle, struct device_node *si
 		}
 	}
 
-	for_each_public_key(key, id) {
-		fail_reason = "verification failed";
+	for_each_public_key_keyring(key, id, "fit") {
 
-		/* Don't recheck with same key_name as before */
+		/* Don't recheck with same key as before */
 		if (key_name && streq_ptr(key->key_name_hint, key_name))
 			continue;
 
+		fail_reason = "verification failed";
 		ret = public_key_verify(key, sig_value, sig_len, hash, algo);
 
 		if (handle->verbose)
diff --git a/crypto/public-keys.c b/crypto/public-keys.c
index 6d86be8d34..496970cc72 100644
--- a/crypto/public-keys.c
+++ b/crypto/public-keys.c
@@ -8,12 +8,12 @@
 
 DEFINE_IDR(public_keys);
 
-const struct public_key *public_key_get(const char *name)
+const struct public_key *public_key_get(const char *name, const char *keyring)
 {
 	const struct public_key *key;
 	int id;
 
-	for_each_public_key(key, id) {
+	for_each_public_key_keyring(key, id, keyring) {
 		if (!strcmp(key->key_name_hint, name))
 			return key;
 	}
@@ -23,8 +23,15 @@ const struct public_key *public_key_get(const char *name)
 
 int public_key_add(struct public_key *key)
 {
-	if (public_key_get(key->key_name_hint))
+	if (!key->keyring || *key->keyring == '\0') {
+		pr_warn("Aborting addition of public key: No keyring specified\n");
+		return -EINVAL;
+	}
+
+	if (public_key_get(key->key_name_hint, key->keyring)) {
+		pr_warn("Aborting addition of public key: Duplicate fit name hint\n");
 		return -EEXIST;
+	}
 
 	return idr_alloc(&public_keys, key, 0, INT_MAX, GFP_NOWAIT);
 }
diff --git a/crypto/rsa.c b/crypto/rsa.c
index ec5bd45115..0e752f11b4 100644
--- a/crypto/rsa.c
+++ b/crypto/rsa.c
@@ -468,6 +468,7 @@ static void rsa_init_keys_of(void)
 			continue;
 		}
 
+		key->keyring = "fit";
 		ret = public_key_add(key);
 		if (ret)
 			pr_err("Cannot add rsa key %s: %pe\n",
diff --git a/include/crypto/public_key.h b/include/crypto/public_key.h
index 612efa8f38..4954fab089 100644
--- a/include/crypto/public_key.h
+++ b/include/crypto/public_key.h
@@ -3,6 +3,7 @@
 
 #include <digest.h>
 #include <linux/idr.h>
+#include <string.h>
 
 struct rsa_public_key;
 struct ecdsa_public_key;
@@ -26,7 +27,7 @@ struct public_key {
 };
 
 int public_key_add(struct public_key *key);
-const struct public_key *public_key_get(const char *name);
+const struct public_key *public_key_get(const char *name, const char *keyring);
 const struct public_key *public_key_next(const struct public_key *prev);
 
 extern struct idr public_keys;
@@ -34,6 +35,12 @@ extern struct idr public_keys;
 #define for_each_public_key(key, id) \
 		idr_for_each_entry(&public_keys, key, id)
 
+#define for_each_public_key_keyring(key, id, _keyring)                    \
+	for_each_public_key(key, id)                                      \
+		if (!key->keyring || strcmp(key->keyring, _keyring) != 0) \
+			continue;                                         \
+		else
+
 int public_key_verify(const struct public_key *key, const uint8_t *sig,
 		      const uint32_t sig_len, const uint8_t *hash,
 		      enum hash_algo algo);
diff --git a/include/tlv/tlv.h b/include/tlv/tlv.h
index 2a3fb14392..536f61646c 100644
--- a/include/tlv/tlv.h
+++ b/include/tlv/tlv.h
@@ -42,6 +42,7 @@ extern int tlv_handle_eth_address_seq(struct tlv_device *dev, struct tlv_mapping
 
 struct tlv_decoder {
 	u32 magic;
+	const char *signature_keyring;
 	void *driverata;
 	struct tlv_mapping **mappings;
 	struct driver driver;

-- 
2.51.2.535.g419c72cb8a



