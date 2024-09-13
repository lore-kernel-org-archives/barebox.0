Delivery-date: Fri, 13 Sep 2024 10:00:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sp1E3-0043Eg-2Q
	for lore@lore.pengutronix.de;
	Fri, 13 Sep 2024 10:00:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sp1E1-0007Ht-QT
	for lore@pengutronix.de; Fri, 13 Sep 2024 10:00:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8igUNT2lTtOK4xWARHQgVBGfEs1NFi1Ug1OeXz43CHk=; b=pjU2PCoPRrcXCcrxpIYGUlfIHK
	wrktD0/xjBbGO0woZ63EoPUi4NRyT5s9/bsUirYBAXU2p5cOjPxKVspEbCd6v+bOUrUkso7Va3Qxp
	7FcmhEqS3hEehAZt2njSISlnpxKsXOygP/t0QhYZyxV9HW5Dy1DbD6YRNVk9iW1PlTkXm5JEfUFuC
	VQKQ8DCPOBqHem7yJ3gwXp1LbKZxSDa27nlGIOsJjOqSnbwMsM/afkau5Ea2fauYn98ruw1HUEVk9
	Ag39euVRoxEMZkxi2KNmPsz7ypFTtxxK5LMXBktas6LFzMz3EllkgkqUOdcpvfW1u6hYJreKpU69m
	HFo0LkUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp1DV-0000000FFyx-3hvK;
	Fri, 13 Sep 2024 07:59:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp1DD-0000000FFlV-3Acw
	for barebox@lists.infradead.org;
	Fri, 13 Sep 2024 07:59:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sp1DC-0006ZH-Ja; Fri, 13 Sep 2024 09:59:26 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sp1DC-007Zb2-5k; Fri, 13 Sep 2024 09:59:26 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sp1DC-006w1Z-0G;
	Fri, 13 Sep 2024 09:59:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 13 Sep 2024 09:59:17 +0200
Message-Id: <20240913075924.1652866-10-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240913075924.1652866-1-s.hauer@pengutronix.de>
References: <20240913075924.1652866-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240913_005927_978607_B58FAA31 
X-CRM114-Status: GOOD (  21.68  )
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
Subject: [PATCH v4 09/16] crypto: rsa: encapsulate rsa keys in public keys struct
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This encapsulates struct rsa_public_key into a struct public_key. So far
RSA keys are the only supported key type. With adding ECDSA keys we need
a container struct so that we can add ECDSA keys using the same
mechanisms.

Also we rename CONFIG_CRYPTO_RSA_KEY to CONFIG_CRYPTO_PUBLIC_KEYS and
CONFIG_CRYPTO_RSA_BUILTIN_KEYS to CONFIG_CRYPTO_BUILTIN_KEYS as these
variables will be used for all types of keys, not only RSA keys.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 crypto/Kconfig                    | 11 ++++-----
 crypto/Makefile                   | 14 ++++++-----
 crypto/public-keys.c              | 39 +++++++++++++++++++++++++++++++
 crypto/rsa.c                      | 23 ++----------------
 include/asm-generic/barebox.lds.h | 10 ++++----
 include/crypto/public_key.h       | 20 ++++++++++++++++
 include/rsa.h                     | 16 +++++++++++++
 scripts/keytoc.c                  | 18 ++++++++++----
 8 files changed, 109 insertions(+), 42 deletions(-)
 create mode 100644 crypto/public-keys.c
 create mode 100644 include/crypto/public_key.h

diff --git a/crypto/Kconfig b/crypto/Kconfig
index 64a016eb2c..612e6f33fc 100644
--- a/crypto/Kconfig
+++ b/crypto/Kconfig
@@ -118,14 +118,13 @@ config CRYPTO_PBKDF2
 config CRYPTO_RSA
 	bool
 
-config CRYPTO_RSA_BUILTIN_KEYS
-	bool
-	default y if CRYPTO_RSA_KEY != ""
+config CRYPTO_BUILTIN_KEYS
+	bool "builtin keys"
 	select KEYTOC
 
-config CRYPTO_RSA_KEY
-	depends on CRYPTO_RSA
-	string "RSA key to compile in"
+config CRYPTO_PUBLIC_KEYS
+	depends on CRYPTO_BUILTIN_KEYS
+	string "public keys to compile in"
 	help
 	  This option should be a filename of a PEM-formatted file containing
 	  X.509 certificates to be included into barebox. If the string starts
diff --git a/crypto/Makefile b/crypto/Makefile
index b2bd7fae6a..d6ce50b386 100644
--- a/crypto/Makefile
+++ b/crypto/Makefile
@@ -18,17 +18,19 @@ obj-y	+= memneq.o
 obj-$(CONFIG_CRYPTO_PBKDF2)	+= pbkdf2.o
 obj-$(CONFIG_CRYPTO_RSA)	+= rsa.o
 obj-$(CONFIG_CRYPTO_KEYSTORE)	+= keystore.o
+obj-$(CONFIG_CRYPTO_BUILTIN_KEYS)      += public-keys.o
 
 obj-$(CONFIG_JWT)		+= jwt.o
 
-extra-$(CONFIG_CRYPTO_RSA_BUILTIN_KEYS) += rsa-keys.h
+extra-$(CONFIG_CRYPTO_BUILTIN_KEYS) += public-keys.h
 
-ifdef CONFIG_CRYPTO_RSA_BUILTIN_KEYS
+ifdef CONFIG_CRYPTO_BUILTIN_KEYS
 
-$(obj)/rsa.o: $(obj)/rsa-keys.h
+$(obj)/public-keys.o: $(obj)/public-keys.h
 
-CONFIG_CRYPTO_RSA_KEY := $(CONFIG_CRYPTO_RSA_KEY:"%"=%)
+CONFIG_CRYPTO_PUBLIC_KEYS := $(CONFIG_CRYPTO_PUBLIC_KEYS:"%"=%)
+
+$(obj)/public-keys.h: FORCE
+	$(call cmd,public_keys,$(CONFIG_CRYPTO_PUBLIC_KEYS))
 
-$(obj)/rsa-keys.h: FORCE
-	$(call cmd,public_keys,$(CONFIG_CRYPTO_RSA_KEY))
 endif
diff --git a/crypto/public-keys.c b/crypto/public-keys.c
new file mode 100644
index 0000000000..a3ef3bafc8
--- /dev/null
+++ b/crypto/public-keys.c
@@ -0,0 +1,39 @@
+#include <common.h>
+#include <crypto/public_key.h>
+#include <rsa.h>
+
+extern const struct public_key * const __public_keys_start;
+extern const struct public_key * const __public_keys_end;
+
+static int init_public_keys(void)
+{
+	const struct public_key * const *iter;
+	int ret;
+
+	for (iter = &__public_keys_start; iter != &__public_keys_end; iter++) {
+		struct rsa_public_key *rsa_key;
+
+		switch ((*iter)->type) {
+		case PUBLIC_KEY_TYPE_RSA:
+			rsa_key = rsa_key_dup((*iter)->rsa);
+			if (!rsa_key)
+				continue;
+
+			ret = rsa_key_add(rsa_key);
+			if (ret)
+				pr_err("Cannot add rsa key: %pe\n", ERR_PTR(ret));
+			break;
+		default:
+			pr_err("Ignoring unknown key type %u\n", (*iter)->type);
+		}
+
+	}
+
+	return 0;
+}
+
+device_initcall(init_public_keys);
+
+#ifdef CONFIG_CRYPTO_BUILTIN_KEYS
+#include "public-keys.h"
+#endif
diff --git a/crypto/rsa.c b/crypto/rsa.c
index a379b77c9a..8eab07beed 100644
--- a/crypto/rsa.c
+++ b/crypto/rsa.c
@@ -469,7 +469,7 @@ const struct rsa_public_key *rsa_get_key(const char *name)
 	return NULL;
 }
 
-static int rsa_key_add(struct rsa_public_key *key)
+int rsa_key_add(struct rsa_public_key *key)
 {
 	if (rsa_get_key(key->key_name_hint))
 		return -EEXIST;
@@ -479,7 +479,7 @@ static int rsa_key_add(struct rsa_public_key *key)
 	return 0;
 }
 
-static struct rsa_public_key *rsa_key_dup(const struct rsa_public_key *key)
+struct rsa_public_key *rsa_key_dup(const struct rsa_public_key *key)
 {
 	struct rsa_public_key *new;
 
@@ -490,9 +490,6 @@ static struct rsa_public_key *rsa_key_dup(const struct rsa_public_key *key)
 	return new;
 }
 
-extern const struct rsa_public_key * const __rsa_keys_start;
-extern const struct rsa_public_key * const __rsa_keys_end;
-
 static void rsa_init_keys_of(void)
 {
 	struct device_node *sigs, *sig;
@@ -523,25 +520,9 @@ static void rsa_init_keys_of(void)
 
 static int rsa_init_keys(void)
 {
-	const struct rsa_public_key * const *iter;
-	struct rsa_public_key *key;
-	int ret;
-
-	for (iter = &__rsa_keys_start; iter != &__rsa_keys_end; iter++) {
-		key = rsa_key_dup(*iter);
-		ret = rsa_key_add(key);
-		if (ret)
-			pr_err("Cannot add rsa key %s: %s\n",
-			       key->key_name_hint, strerror(-ret));
-	}
-
 	rsa_init_keys_of();
 
 	return 0;
 }
 
 device_initcall(rsa_init_keys);
-
-#ifdef CONFIG_CRYPTO_RSA_BUILTIN_KEYS
-#include "rsa-keys.h"
-#endif
diff --git a/include/asm-generic/barebox.lds.h b/include/asm-generic/barebox.lds.h
index d3736ebaed..eb4c42ca5b 100644
--- a/include/asm-generic/barebox.lds.h
+++ b/include/asm-generic/barebox.lds.h
@@ -106,11 +106,11 @@
 #define BAREBOX_PCI_FIXUP
 #endif
 
-#define BAREBOX_RSA_KEYS			\
+#define BAREBOX_PUBLIC_KEYS			\
 	STRUCT_ALIGN();				\
-	__rsa_keys_start = .;			\
-	KEEP(*(.rsa_keys.rodata.*));		\
-	__rsa_keys_end = .;			\
+	__public_keys_start = .;		\
+	KEEP(*(.public_keys.rodata.*));		\
+	__public_keys_end = .;			\
 
 #define BAREBOX_DEEP_PROBE			\
 	STRUCT_ALIGN();				\
@@ -140,7 +140,7 @@
 	BAREBOX_MAGICVARS			\
 	BAREBOX_CLK_TABLE			\
 	BAREBOX_DTB				\
-	BAREBOX_RSA_KEYS			\
+	BAREBOX_PUBLIC_KEYS			\
 	BAREBOX_PCI_FIXUP			\
 	BAREBOX_DEEP_PROBE
 
diff --git a/include/crypto/public_key.h b/include/crypto/public_key.h
new file mode 100644
index 0000000000..83e8401aed
--- /dev/null
+++ b/include/crypto/public_key.h
@@ -0,0 +1,20 @@
+#ifndef __CRYPTO_PUBLIC_KEY_H
+#define __CRYPTO_PUBLIC_KEY_H
+
+struct rsa_public_key;
+struct ecdsa_public_key;
+
+enum pulic_key_type {
+	PUBLIC_KEY_TYPE_RSA,
+};
+
+struct public_key {
+	enum pulic_key_type type;
+
+	union {
+		struct rsa_public_key *rsa;
+		struct ecdsa_public_key *ecdsa;
+	};
+};
+
+#endif /* __CRYPTO_PUBLIC_KEY_H */
diff --git a/include/rsa.h b/include/rsa.h
index f1e3c1b6c3..ecb2f42957 100644
--- a/include/rsa.h
+++ b/include/rsa.h
@@ -62,4 +62,20 @@ const struct rsa_public_key *rsa_key_next(const struct rsa_public_key *prev);
 
 #define for_each_rsa_key(key) \
 		for (key = rsa_key_next(NULL); key; key = rsa_key_next(key))
+
+#ifdef CONFIG_CRYPTO_RSA
+int rsa_key_add(struct rsa_public_key *key);
+struct rsa_public_key *rsa_key_dup(const struct rsa_public_key *key);
+#else
+static inline int rsa_key_add(struct rsa_public_key *key)
+{
+	return -ENOSYS;
+}
+
+static inline struct rsa_public_key *rsa_key_dup(const struct rsa_public_key *key);
+{
+	return NULL;
+}
+#endif
+
 #endif
diff --git a/scripts/keytoc.c b/scripts/keytoc.c
index 85a7cd7319..e66c5989bf 100644
--- a/scripts/keytoc.c
+++ b/scripts/keytoc.c
@@ -488,9 +488,14 @@ static int gen_key_ecdsa(EVP_PKEY *key, const char *key_name, const char *key_na
 		fprintf(outfilep, "\t.x = %s_x,\n", key_name_c);
 		fprintf(outfilep, "\t.y = %s_y,\n", key_name_c);
 		fprintf(outfilep, "};\n");
-		if (!standalone)
-			fprintf(outfilep, "\nstruct ecdsa_public_key *%s_ecdsa_p __attribute__((section(\".ecdsa_keys.rodata.%s\"))) = &%s;\n",
+		if (!standalone) {
+			fprintf(outfilep, "\nstatic struct public_key %s_public_key = {\n", key_name_c);
+			fprintf(outfilep, "\t.type = PUBLIC_KEY_TYPE_ECDSA,\n");
+			fprintf(outfilep, "\t.ecdsa = &%s,\n", key_name_c);
+			fprintf(outfilep, "};");
+			fprintf(outfilep, "\nstruct public_key *%s_ecdsa_p __attribute__((section(\".public_keys.rodata.%s\"))) = &%s_public_key;\n",
 				key_name_c, key_name_c, key_name_c);
+		}
 	}
 
 	return 0;
@@ -549,9 +554,14 @@ static int gen_key_rsa(EVP_PKEY *key, const char *key_name, const char *key_name
 		fprintf(outfilep, "\t.key_name_hint = \"%s\",\n", key_name);
 		fprintf(outfilep, "};\n");
 
-		if (!standalone)
-			fprintf(outfilep, "\nstruct rsa_public_key *%sp __attribute__((section(\".rsa_keys.rodata.%s\"))) = &%s;\n",
+		if (!standalone) {
+			fprintf(outfilep, "\nstatic struct public_key %s_public_key = {\n", key_name_c);
+			fprintf(outfilep, "\t.type = PUBLIC_KEY_TYPE_RSA,\n");
+			fprintf(outfilep, "\t.rsa = &%s,\n", key_name_c);
+			fprintf(outfilep, "};");
+			fprintf(outfilep, "\nstruct public_key *%sp __attribute__((section(\".public_keys.rodata.%s\"))) = &%s_public_key;\n",
 				key_name_c, key_name_c, key_name_c);
+		}
 	}
 
 	return 0;
-- 
2.39.2



