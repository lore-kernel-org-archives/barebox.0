Delivery-date: Thu, 01 Aug 2024 08:03:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZOui-0052KF-16
	for lore@lore.pengutronix.de;
	Thu, 01 Aug 2024 08:03:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZOuf-0001mQ-Ne
	for lore@pengutronix.de; Thu, 01 Aug 2024 08:03:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ruN0iIWivA5gdhS52kY2oToMyhiIsv1GOpxdb7DGE3Q=; b=sMikLjOSGLoe4lNCZ4L/+0T4gG
	BDq1zx17OMpFuoC5rKEOKaUHUW8IEiFKr8hVm991Obo498OQ6fFMNmh1IQeDIlciObUTH85asfUTg
	f53UkiEBqmbuUBtTLbFBa9iy5wysm64yi7RHQMs4FrDK+TcxPJybxTUREy13Apn5EAFFleVkFcVaU
	S79EGOfghkbhIyOIkZuOcdW7N+NehPYPxt5wRxSxTyCI8gBx/ga4kQKQSrAyvP6aNBnPNC2hbjego
	UgHG69aO41Sn8qk3bDp0t0vogBUG1PwLPVGLJ4XnfFAQna7fkHaKRXSMN3FkV3lMm2zK6fv29KQeo
	M3emeCdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZOu9-00000003qVh-0bWL;
	Thu, 01 Aug 2024 06:03:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZOu0-00000003qQF-3rkw
	for barebox@lists.infradead.org;
	Thu, 01 Aug 2024 06:03:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sZOtz-0001I7-Ps; Thu, 01 Aug 2024 08:03:03 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sZOtz-003hX1-D0; Thu, 01 Aug 2024 08:03:03 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sZOol-00DNum-0v;
	Thu, 01 Aug 2024 07:57:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  1 Aug 2024 07:57:35 +0200
Message-Id: <20240801055737.3190132-18-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240801055737.3190132-1-s.hauer@pengutronix.de>
References: <20240801055737.3190132-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_230305_144278_F199E472 
X-CRM114-Status: GOOD (  25.15  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 17/19] crypto: add ECDSA support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds ECDSA signature verification support. The code is based on the
Linux code as of Linux-6.10. The Linux code expects the key to be in
ASN.1 encoded format. We don't need this in barebox as directly compile
the x and y key values into the binary, so this is left out.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 crypto/Kconfig                    |  20 ++++
 crypto/Makefile                   |  19 ++++
 crypto/ecdsa.c                    | 169 ++++++++++++++++++++++++++++++
 include/asm-generic/barebox.lds.h |   7 ++
 include/ecdsa.h                   |  21 ++++
 5 files changed, 236 insertions(+)
 create mode 100644 crypto/ecdsa.c
 create mode 100644 include/ecdsa.h

diff --git a/crypto/Kconfig b/crypto/Kconfig
index e953ef5e15..eeacd9ffb7 100644
--- a/crypto/Kconfig
+++ b/crypto/Kconfig
@@ -156,4 +156,24 @@ config JWT
 config CRYPTO_ECC
 	bool
 
+config CRYPTO_ECDSA
+	bool "ECDSA support"
+	select CRYPTO_ECC
+
+config CRYPTO_ECDSA_BUILTIN_KEYS
+	bool
+	default y if CRYPTO_ECDSA_KEY != ""
+	select KEYTOC
+
+config CRYPTO_ECDSA_KEY
+	depends on CRYPTO_ECDSA
+	string "ECDSA key to compile in"
+	help
+	  This option should be a filename of a PEM-formatted file containing
+	  X.509 certificates to be included into barebox. If the string starts
+	  with "pkcs11:" it is interpreted as a PKCS#11 URI rather than a file.
+
+	  This avoids the mkimage dependency of CONFIG_BOOTM_FITIMAGE_PUBKEY
+	  at the cost of an openssl build-time dependency.
+
 endmenu
diff --git a/crypto/Makefile b/crypto/Makefile
index 83c05761de..0bbd495378 100644
--- a/crypto/Makefile
+++ b/crypto/Makefile
@@ -37,3 +37,22 @@ endif
 $(obj)/rsa-keys.h: $(RSA_DEP) FORCE
 	$(call cmd,public_keys,$(CONFIG_CRYPTO_RSA_KEY_NAME_HINT):$(if $(RSA_DEP),$<,$(CONFIG_CRYPTO_RSA_KEY)))
 endif
+
+extra-$(CONFIG_CRYPTO_ECDSA_BUILTIN_KEYS) += ecdsa-keys.h
+
+ifdef CONFIG_CRYPTO_ECDSA_BUILTIN_KEYS
+
+$(obj)/ecdsa.o: $(obj)/ecdsa-keys.h
+
+CONFIG_CRYPTO_ECDSA_KEY := $(CONFIG_CRYPTO_ECDSA_KEY:"%"=%)
+
+ifneq ($(filter-out pkcs11:% __ENV__%, $(CONFIG_CRYPTO_ECDSA_KEY)),)
+ECDSA_DEP := $(CONFIG_CRYPTO_ECDSA_KEY)
+endif
+
+$(obj)/ecdsa-keys.h: $(ECDSA_DEP) FORCE
+	$(call cmd,public_keys,ecdsa_key:$(if $(ECDSA_DEP),$<,$(CONFIG_CRYPTO_ECDSA_KEY)))
+
+endif
+
+obj-$(CONFIG_CRYPTO_ECDSA) += ecdsa.o
diff --git a/crypto/ecdsa.c b/crypto/ecdsa.c
new file mode 100644
index 0000000000..d6b534be6d
--- /dev/null
+++ b/crypto/ecdsa.c
@@ -0,0 +1,169 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (c) 2021 IBM Corporation
+ */
+
+#include <common.h>
+
+#include <crypto/internal/ecc.h>
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
+static int ecdsa_key_add(struct ecdsa_public_key *key)
+{
+	list_add_tail(&key->list, &ecdsa_keys);
+
+	return 0;
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
+
+static struct ecdsa_public_key *ecdsa_key_dup(const struct ecdsa_public_key *key)
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
+extern const struct ecdsa_public_key * const __ecdsa_keys_start;
+extern const struct ecdsa_public_key * const __ecdsa_keys_end;
+
+static int ecdsa_init_keys(void)
+{
+	const struct ecdsa_public_key * const *iter;
+	struct ecdsa_public_key *key;
+	int ret;
+
+	for (iter = &__ecdsa_keys_start; iter != &__ecdsa_keys_end; iter++) {
+		key = ecdsa_key_dup(*iter);
+		if (!key) {
+			pr_err("Ignoring key with unknown curve_name %s\n", key->curve_name);
+			continue;
+		}
+
+		ret = ecdsa_key_add(key);
+		if (ret)
+			pr_err("Cannot add rsa key: %pe\n", ERR_PTR(ret));
+	}
+
+	return 0;
+}
+
+device_initcall(ecdsa_init_keys);
+
+#ifdef CONFIG_CRYPTO_ECDSA_BUILTIN_KEYS
+#include "ecdsa-keys.h"
+#endif
diff --git a/include/asm-generic/barebox.lds.h b/include/asm-generic/barebox.lds.h
index d3736ebaed..7f3b86f272 100644
--- a/include/asm-generic/barebox.lds.h
+++ b/include/asm-generic/barebox.lds.h
@@ -112,6 +112,12 @@
 	KEEP(*(.rsa_keys.rodata.*));		\
 	__rsa_keys_end = .;			\
 
+#define BAREBOX_ECDSA_KEYS			\
+	STRUCT_ALIGN();				\
+	__ecdsa_keys_start = .;			\
+	KEEP(*(.ecdsa_keys.rodata.*));		\
+	__ecdsa_keys_end = .;			\
+
 #define BAREBOX_DEEP_PROBE			\
 	STRUCT_ALIGN();				\
 	__barebox_deep_probe_start = .;		\
@@ -141,6 +147,7 @@
 	BAREBOX_CLK_TABLE			\
 	BAREBOX_DTB				\
 	BAREBOX_RSA_KEYS			\
+	BAREBOX_ECDSA_KEYS			\
 	BAREBOX_PCI_FIXUP			\
 	BAREBOX_DEEP_PROBE
 
diff --git a/include/ecdsa.h b/include/ecdsa.h
new file mode 100644
index 0000000000..e3df15a060
--- /dev/null
+++ b/include/ecdsa.h
@@ -0,0 +1,21 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#ifndef _ECDSA_H
+#define _ECDSA_H
+
+struct ecdsa_public_key {
+	const char *curve_name;	/* Name of curve, e.g. "prime256v1" */
+	const void *x;		/* x coordinate of public key */
+	const void *y;		/* y coordinate of public key */
+	unsigned int size_bits;	/* key size in bits, derived from curve name */
+	struct list_head list;
+};
+
+int ecdsa_verify(const struct ecdsa_public_key *key, const uint8_t *sig,
+		 const uint32_t sig_len, const uint8_t *hash);
+
+const struct ecdsa_public_key *ecdsa_key_next(const struct ecdsa_public_key *prev);
+
+#define for_each_ecdsa_key(key) \
+	for (key = ecdsa_key_next(NULL); key; key = ecdsa_key_next(key))
+
+#endif /* _ECDSA_H */
-- 
2.39.2



