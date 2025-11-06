Delivery-date: Thu, 06 Nov 2025 16:19:04 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vH1lQ-00Fyox-2v
	for lore@lore.pengutronix.de;
	Thu, 06 Nov 2025 16:19:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vH1lM-0006iv-Rr
	for lore@pengutronix.de; Thu, 06 Nov 2025 16:19:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=f2iWKMoLcL72qUUvoBWGcNNp8tJmGAmZK89W3F4h1YA=; b=iciX+ZAijFxl16TyNBX3FXaB11
	4EIxcLpRXnzj0GFylYNhHGt5WYqdkdb0mztsfAK+dzsV2470g2HRxy0o4zTW84Ht/jESHK9D/CSqe
	K7cZzYIAQ9wMGHO8C6xK9mpW4oPIKP5cyeK/QN5t0ejyxA1h3hVubDM7tOmce5uQVOFlkJMWWUsy2
	NlGhYHYu8gYWO8TNbk94otbtpXpJ20gzG+Ub/0KBQrIh0nEqn7Xg4G3HjXZK2vJHbtcQrSAStdHQ0
	xTU0zn0DYWcuT1rhA+/jE6DWu7xa/LDUPhkvOmIx1RyJXeflJYrS4XrLzLwsx34zcSf/fyHx49RgL
	k8TBVKcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH1ki-0000000FnIu-0o3o;
	Thu, 06 Nov 2025 15:18:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH1kc-0000000FnAV-1AT9
	for barebox@lists.infradead.org;
	Thu, 06 Nov 2025 15:18:17 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1vH1kY-0005tl-SE; Thu, 06 Nov 2025 16:18:10 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Thu, 06 Nov 2025 16:18:01 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251106-tlv-signature-v3-4-5d00ed378e75@pengutronix.de>
References: <20251106-tlv-signature-v3-0-5d00ed378e75@pengutronix.de>
In-Reply-To: <20251106-tlv-signature-v3-0-5d00ed378e75@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=4935; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=HED5uY7odRKzrHQW6Fxb3FFXoy+oEs/cOZMANCB677s=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsjk2aPz8Nhbh+KQtUKvmba8nb256vr3Wf9OvSjv+/wyo
 F4wcKldXUcpC4MYF4OsmCJLrJqcgpCx/3WzSrtYmDmsTCBDGLg4BWAixTWMDDsWVH/LtGXyfNj+
 UFf2E7vE2yp9ZqHqD32mvcUSt1ri3RgZpupxWt98eM5g/t+iqjsaN8N5YhwmsQnE3Zv9ICCineE
 ePwA=
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251106_071814_389698_66AE08B5 
X-CRM114-Status: GOOD (  14.68  )
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 04/17] fit: only accept keys from "fit"-keyring
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
 4 files changed, 27 insertions(+), 9 deletions(-)

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

-- 
2.51.2.535.g419c72cb8a



