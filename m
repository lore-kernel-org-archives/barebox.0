Delivery-date: Tue, 14 Oct 2025 13:03:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v8cor-007iHa-0l
	for lore@lore.pengutronix.de;
	Tue, 14 Oct 2025 13:03:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v8col-0003Ex-BM
	for lore@pengutronix.de; Tue, 14 Oct 2025 13:03:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=q47CWlgDC1JJO6+B0et+Ce+wbRFCeTIdsKwq2CFkzbk=; b=ch95zeExckXSUxOOhJjrCRdxTC
	Up4wkeWjz+WwUE4G8KkfQ5XSuVaDTNb5hHf6cmI/hVI6PI7DV//E9PMuzJ+CB25JBopbG6hvA/IzZ
	W344AbQIPkm7gXoFj/qY16DWRTvDxQMzmtR1qS8NekoKhQ1ynAj+6bS/F9YPsj8xsiC18+n0ixsub
	2E9Jf9hBUjVwLyNdqe4wy7CMjWlNs1EzVYcn/wLn/9IgWkOlrMSwzT+s6btAGOfTKrnA92ifOrcwb
	9xFlpCzGgz39n56kiDmBsnFCBPZZBZ2Oy4nY4+6wcyQk/cWKlPx1qNdX8GhyQX0G2zkQgKvx27W6T
	pa4bOiyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8co9-0000000G0MD-0lqA;
	Tue, 14 Oct 2025 11:03:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8co6-0000000G0I9-2zT9
	for barebox@lists.infradead.org;
	Tue, 14 Oct 2025 11:03:07 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1v8co5-0002Tj-7u; Tue, 14 Oct 2025 13:03:05 +0200
From: Jonas Rebmann <jre@pengutronix.de>
Date: Tue, 14 Oct 2025 13:02:54 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251014-tlv-signature-v1-3-7a8aaf95081c@pengutronix.de>
References: <20251014-tlv-signature-v1-0-7a8aaf95081c@pengutronix.de>
In-Reply-To: <20251014-tlv-signature-v1-0-7a8aaf95081c@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=5342; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=T15Lv5aKJvQVmdU3MktqEaUpvUqYc9K7HI8gHpkfAe4=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsh4p/v4CFP0z0Oiy79kpc7J3bHZ6OuBdO2n3Xzm11pCe
 J4uEXE61lHKwiDGxSArpsgSqyanIGTsf92s0i4WZg4rE8gQBi5OAZhIpCHDX4lGF9Pe7hnNWSKb
 dDe0BX/2njnx2v+wfQxd8Yx/vfXy/zP84WkUqc94tTzc6TjDshbu8skJ027Ezi3ffH5SxBS35uU
 buQE=
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251014_040306_763226_F52DB688 
X-CRM114-Status: GOOD (  15.59  )
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
Subject: [PATCH 03/15] fit: only accept keys from "fit"-keyring
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
index 3017ccb504..0cbe8baf6f 100644
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
 
-	for_each_public_key(key) {
-		fail_reason = "verification failed";
+	for_each_public_key_keyring(key, "fit") {
 
 		/* Don't recheck with same key as before */
-		if (streq_ptr(key->key_name_hint, key_name))
+		if (key_name && streq_ptr(key->key_name_hint, key_name))
 			continue;
 
+		fail_reason = "verification failed";
 		ret = public_key_verify(key, sig_value, sig_len, hash, algo);
 
 		if (handle->verbose)
diff --git a/crypto/public-keys.c b/crypto/public-keys.c
index a870ec5438..adc1f51d17 100644
--- a/crypto/public-keys.c
+++ b/crypto/public-keys.c
@@ -17,11 +17,11 @@ const struct public_key *public_key_next(const struct public_key *prev)
 	return NULL;
 }
 
-const struct public_key *public_key_get(const char *name)
+const struct public_key *public_key_get(const char *name, const char *keyring)
 {
 	const struct public_key *key;
 
-	list_for_each_entry(key, &public_keys, list) {
+	for_each_public_key_keyring(key, keyring) {
 		if (!strcmp(key->key_name_hint, name))
 			return key;
 	}
@@ -31,8 +31,15 @@ const struct public_key *public_key_get(const char *name)
 
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
 
 	list_add_tail(&key->list, &public_keys);
 
diff --git a/crypto/rsa.c b/crypto/rsa.c
index 13b6553c95..24cec70d31 100644
--- a/crypto/rsa.c
+++ b/crypto/rsa.c
@@ -481,6 +481,7 @@ static void rsa_init_keys_of(void)
 			continue;
 		}
 
+		key->keyring = "fit";
 		ret = public_key_add(key);
 		if (ret)
 			pr_err("Cannot add rsa key %s: %pe\n",
diff --git a/include/crypto/public_key.h b/include/crypto/public_key.h
index c9dd38cc33..44ae09e4d0 100644
--- a/include/crypto/public_key.h
+++ b/include/crypto/public_key.h
@@ -2,6 +2,7 @@
 #define __CRYPTO_PUBLIC_KEY_H
 
 #include <digest.h>
+#include <string.h>
 
 struct rsa_public_key;
 struct ecdsa_public_key;
@@ -26,12 +27,18 @@ struct public_key {
 };
 
 int public_key_add(struct public_key *key);
-const struct public_key *public_key_get(const char *name);
+const struct public_key *public_key_get(const char *name, const char *keyring);
 const struct public_key *public_key_next(const struct public_key *prev);
 
 #define for_each_public_key(key) \
 		for (key = public_key_next(NULL); key; key = public_key_next(key))
 
+#define for_each_public_key_keyring(key, _keyring)                        \
+	for_each_public_key(key)                                          \
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
2.51.0.297.gca2559c1d6



