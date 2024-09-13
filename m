Delivery-date: Fri, 13 Sep 2024 10:28:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sp1f9-0043Xr-33
	for lore@lore.pengutronix.de;
	Fri, 13 Sep 2024 10:28:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sp1f7-0001DQ-VA
	for lore@pengutronix.de; Fri, 13 Sep 2024 10:28:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZLDvnaGTqI0bTU/uovbSCUax82OeI5rIsdgNuhUyqVg=; b=fA4MSbgmpBGF9Agu8KTe+yGrd3
	qBXcrpE+hKFcjyc/TBBDuAWHZIF9w+lgV3LMZG/OBSUCIUzmRtYbYaivZXYMG4cqBwxZyYkDwzsmc
	wLM4XVd35rQ6Bw0qxqobTuU4o6ySxEdKU0bCLussdN+/tgmQpOkhFmAYdzBORCCHD+bW/iGTBddrh
	ERW343cMLilYfv5UufxGCUsnkAlMYWPq0s6cMh0THhzYC+JutWfzdt6gK/BZn1T4HYwABsFDdmglM
	8I2uSiIHX8AMQjyq0yoqircwh8Vu/cbYkfimlO45aGa8vNpRoFdZNRnpH+oizpOdlANmHdz7dT2Xi
	kVDPTUlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp1eg-0000000FKdQ-0nRd;
	Fri, 13 Sep 2024 08:27:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp1eY-0000000FKZe-0cSN
	for barebox@lists.infradead.org;
	Fri, 13 Sep 2024 08:27:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sp1eW-0000oK-R9; Fri, 13 Sep 2024 10:27:40 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sp1eW-007ZzQ-DE; Fri, 13 Sep 2024 10:27:40 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sp1DC-006w1Z-1S;
	Fri, 13 Sep 2024 09:59:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 13 Sep 2024 09:59:23 +0200
Message-Id: <20240913075924.1652866-16-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240913075924.1652866-1-s.hauer@pengutronix.de>
References: <20240913075924.1652866-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240913_012742_664897_283C9775 
X-CRM114-Status: GOOD (  24.64  )
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
Subject: [PATCH v4 15/16] crypto: add ECDSA support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds ECDSA signature verification support. The code is based on the
Linux code as of Linux-6.10. The Linux code expects the key to be in
ASN.1 encoded format. We don't need this in barebox as directly compile
the x and y key values into the binary, so this is left out.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 crypto/Kconfig              |   4 ++
 crypto/Makefile             |   1 +
 crypto/ecdsa.c              | 140 ++++++++++++++++++++++++++++++++++++
 crypto/public-keys.c        |   8 +++
 include/crypto/public_key.h |   1 +
 include/ecdsa.h             |  42 +++++++++++
 6 files changed, 196 insertions(+)
 create mode 100644 crypto/ecdsa.c
 create mode 100644 include/ecdsa.h

diff --git a/crypto/Kconfig b/crypto/Kconfig
index 7935af3da8..a90e3e1005 100644
--- a/crypto/Kconfig
+++ b/crypto/Kconfig
@@ -151,4 +151,8 @@ config JWT
 config CRYPTO_ECC
 	bool
 
+config CRYPTO_ECDSA
+	bool "ECDSA support"
+	select CRYPTO_ECC
+
 endmenu
diff --git a/crypto/Makefile b/crypto/Makefile
index 570930c2cd..da96dd2c21 100644
--- a/crypto/Makefile
+++ b/crypto/Makefile
@@ -20,6 +20,7 @@ obj-$(CONFIG_CRYPTO_RSA)	+= rsa.o
 obj-$(CONFIG_CRYPTO_KEYSTORE)	+= keystore.o
 obj-$(CONFIG_CRYPTO_BUILTIN_KEYS)      += public-keys.o
 obj-$(CONFIG_CRYPTO_ECC)	+= ecc.o
+obj-$(CONFIG_CRYPTO_ECDSA) 	+= ecdsa.o
 
 obj-$(CONFIG_JWT)		+= jwt.o
 
diff --git a/crypto/ecdsa.c b/crypto/ecdsa.c
new file mode 100644
index 0000000000..3025410df3
--- /dev/null
+++ b/crypto/ecdsa.c
@@ -0,0 +1,140 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (c) 2021 IBM Corporation
+ */
+
+#include <common.h>
+
+#include <crypto/internal/ecc.h>
+#include <crypto/public_key.h>
+#include <crypto/ecdh.h>
+#include <ecdsa.h>
+
+struct ecc_ctx {
+	unsigned int curve_id;
+	const struct ecc_curve *curve;
+
+	bool pub_key_set;
+	u64 x[ECC_MAX_DIGITS]; /* pub key x and y coordinates */
+	u64 y[ECC_MAX_DIGITS];
+	struct ecc_point pub_key;
+};
+
+static int _ecdsa_verify(struct ecc_ctx *ctx, const u64 *hash, const u64 *r, const u64 *s)
+{
+	const struct ecc_curve *curve = ctx->curve;
+	unsigned int ndigits = curve->g.ndigits;
+	u64 s1[ECC_MAX_DIGITS];
+	u64 u1[ECC_MAX_DIGITS];
+	u64 u2[ECC_MAX_DIGITS];
+	u64 x1[ECC_MAX_DIGITS];
+	u64 y1[ECC_MAX_DIGITS];
+	struct ecc_point res = ECC_POINT_INIT(x1, y1, ndigits);
+
+	/* 0 < r < n  and 0 < s < n */
+	if (vli_is_zero(r, ndigits) || vli_cmp(r, curve->n, ndigits) >= 0 ||
+	    vli_is_zero(s, ndigits) || vli_cmp(s, curve->n, ndigits) >= 0)
+		return -EBADMSG;
+
+	/* hash is given */
+	pr_debug("hash : %016llx %016llx ... %016llx\n",
+		 hash[ndigits - 1], hash[ndigits - 2], hash[0]);
+
+	/* s1 = (s^-1) mod n */
+	vli_mod_inv(s1, s, curve->n, ndigits);
+	/* u1 = (hash * s1) mod n */
+	vli_mod_mult_slow(u1, hash, s1, curve->n, ndigits);
+	/* u2 = (r * s1) mod n */
+	vli_mod_mult_slow(u2, r, s1, curve->n, ndigits);
+	/* res = u1*G + u2 * pub_key */
+	ecc_point_mult_shamir(&res, u1, &curve->g, u2, &ctx->pub_key, curve);
+
+	/* res.x = res.x mod n (if res.x > order) */
+	if (unlikely(vli_cmp(res.x, curve->n, ndigits) == 1))
+		/* faster alternative for NIST p521, p384, p256 & p192 */
+		vli_sub(res.x, res.x, curve->n, ndigits);
+
+	if (!vli_cmp(res.x, r, ndigits))
+		return 0;
+
+	return -EKEYREJECTED;
+}
+
+static int ecdsa_key_size(const char *curve_name)
+{
+	if (!strcmp(curve_name, "prime256v1"))
+		return 256;
+	else
+		return 0;
+}
+
+int ecdsa_verify(const struct ecdsa_public_key *key, const uint8_t *sig,
+		 const uint32_t sig_len, const uint8_t *hash)
+{
+	struct ecc_ctx _ctx = {};
+	struct ecc_ctx *ctx = &_ctx;
+	unsigned int curve_id = ECC_CURVE_NIST_P256;
+	int ret;
+	const void *r, *s;
+	u64 rh[4], sh[4];
+	u64 mhash[ECC_MAX_DIGITS];
+	int key_size_bytes = key->size_bits / 8;
+
+	ctx->curve_id = curve_id;
+	ctx->curve = ecc_get_curve(curve_id);
+	if (!ctx->curve)
+		return -EINVAL;
+
+	ctx->pub_key = ECC_POINT_INIT(ctx->x, ctx->y, ctx->curve->g.ndigits);
+	memcpy(ctx->pub_key.x, key->x, key_size_bytes);
+	memcpy(ctx->pub_key.y, key->y, key_size_bytes);
+
+	ret = ecc_is_pubkey_valid_full(ctx->curve, &ctx->pub_key);
+	if (ret)
+		return ret;
+
+	r = sig;
+	s = sig + key_size_bytes;
+
+	ecc_swap_digits((u64 *)r, rh, ctx->curve->g.ndigits);
+	ecc_swap_digits((u64 *)s, sh, ctx->curve->g.ndigits);
+
+	ecc_swap_digits((u64 *)hash, mhash, ctx->curve->g.ndigits);
+
+	return _ecdsa_verify(ctx, (void *)mhash, rh, sh);
+}
+
+static LIST_HEAD(ecdsa_keys);
+
+int ecdsa_key_add(struct ecdsa_public_key *key)
+{
+	list_add_tail(&key->list, &ecdsa_keys);
+
+	return 0;
+}
+
+struct ecdsa_public_key *ecdsa_key_dup(const struct ecdsa_public_key *key)
+{
+	struct ecdsa_public_key *new;
+	int key_size_bits;
+
+	key_size_bits = ecdsa_key_size(key->curve_name);
+	if (!key_size_bits)
+		return NULL;
+
+	new = xmemdup(key, sizeof(*key));
+	new->x = xmemdup(key->x, key_size_bits / 8);
+	new->y = xmemdup(key->y, key_size_bits / 8);
+	new->size_bits = key_size_bits;
+
+	return new;
+}
+
+const struct ecdsa_public_key *ecdsa_key_next(const struct ecdsa_public_key *prev)
+{
+	prev = list_prepare_entry(prev, &ecdsa_keys, list);
+	list_for_each_entry_continue(prev, &ecdsa_keys, list)
+		return prev;
+
+	return NULL;
+}
diff --git a/crypto/public-keys.c b/crypto/public-keys.c
index dc51ef18f8..bab608be17 100644
--- a/crypto/public-keys.c
+++ b/crypto/public-keys.c
@@ -1,6 +1,7 @@
 #include <common.h>
 #include <crypto/public_key.h>
 #include <rsa.h>
+#include <ecdsa.h>
 
 static LIST_HEAD(public_keys);
 
@@ -49,6 +50,11 @@ static struct public_key *public_key_dup(const struct public_key *key)
 		if (!k->rsa)
 			goto err;
 		break;
+	case PUBLIC_KEY_TYPE_ECDSA:
+		k->ecdsa = ecdsa_key_dup(key->ecdsa);
+		if (!k->ecdsa)
+			goto err;
+		break;
 	default:
 		goto err;
 	}
@@ -68,6 +74,8 @@ int public_key_verify(const struct public_key *key, const uint8_t *sig,
 	switch (key->type) {
 	case PUBLIC_KEY_TYPE_RSA:
 		return rsa_verify(key->rsa, sig, sig_len, hash, algo);
+	case PUBLIC_KEY_TYPE_ECDSA:
+		return ecdsa_verify(key->ecdsa, sig, sig_len, hash);
 	}
 
 	return -ENOKEY;
diff --git a/include/crypto/public_key.h b/include/crypto/public_key.h
index 1b91063042..ed7c74859f 100644
--- a/include/crypto/public_key.h
+++ b/include/crypto/public_key.h
@@ -8,6 +8,7 @@ struct ecdsa_public_key;
 
 enum pulic_key_type {
 	PUBLIC_KEY_TYPE_RSA,
+	PUBLIC_KEY_TYPE_ECDSA,
 };
 
 struct public_key {
diff --git a/include/ecdsa.h b/include/ecdsa.h
new file mode 100644
index 0000000000..1d6340c645
--- /dev/null
+++ b/include/ecdsa.h
@@ -0,0 +1,42 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#ifndef _ECDSA_H
+#define _ECDSA_H
+
+struct ecdsa_public_key {
+	const char *curve_name;	/* Name of curve, e.g. "prime256v1" */
+	const uint64_t *x;	/* x coordinate of public key */
+	const uint64_t *y;	/* y coordinate of public key */
+	unsigned int size_bits;	/* key size in bits, derived from curve name */
+	struct list_head list;
+};
+
+const struct ecdsa_public_key *ecdsa_key_next(const struct ecdsa_public_key *prev);
+
+#define for_each_ecdsa_key(key) \
+	for (key = ecdsa_key_next(NULL); key; key = ecdsa_key_next(key))
+
+#ifdef CONFIG_CRYPTO_ECDSA
+int ecdsa_verify(const struct ecdsa_public_key *key, const uint8_t *sig,
+		 const uint32_t sig_len, const uint8_t *hash);
+int ecdsa_key_add(struct ecdsa_public_key *key);
+struct ecdsa_public_key *ecdsa_key_dup(const struct ecdsa_public_key *key);
+#else
+static inline int ecdsa_verify(const struct ecdsa_public_key *key, const uint8_t *sig,
+		 const uint32_t sig_len, const uint8_t *hash)
+{
+	return -ENOSYS;
+}
+
+static inline int ecdsa_key_add(struct ecdsa_public_key *key)
+{
+	return -ENOSYS;
+}
+
+static inline struct ecdsa_public_key *ecdsa_key_dup(const struct ecdsa_public_key *key)
+{
+	return NULL;
+}
+
+#endif
+
+#endif /* _ECDSA_H */
-- 
2.39.2



