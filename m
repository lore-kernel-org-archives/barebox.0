Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKHgO-0008PP-Tn
 for barebox@lists.infradead.org; Tue, 15 Oct 2019 07:55:56 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 Oct 2019 09:55:48 +0200
Message-Id: <20191015075549.4380-5-s.hauer@pengutronix.de>
In-Reply-To: <20191015075549.4380-1-s.hauer@pengutronix.de>
References: <20191015075549.4380-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 4/5] rsa: Allow to directly compile in rsa public keys
To: Barebox List <barebox@lists.infradead.org>

So far we relied on the U-Boot mkimage tool to generate us device tree
snippets containing rsa public keys which we then compiled into barebox.
Make this easier and allow to directly specify a filename or PKCS#11 URI
in Kconfig. With this we no longer need the U-Boot mkimage tool here and
no more external steps to prepare device tree snippets.

With this rsa public keys can be directly compiled as C structs into
barebox which is much more direct than putting it into the device tree.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 crypto/.gitignore                 |  2 ++
 crypto/Kconfig                    | 19 ++++++++++++++++++
 crypto/Makefile                   | 10 ++++++++++
 crypto/rsa.c                      | 33 +++++++++++++++++++++++++++++++
 include/asm-generic/barebox.lds.h |  6 ++++++
 include/rsa.h                     |  2 ++
 scripts/Makefile.lib              | 18 +++++++++++++++++
 7 files changed, 90 insertions(+)
 create mode 100644 crypto/.gitignore

diff --git a/crypto/.gitignore b/crypto/.gitignore
new file mode 100644
index 0000000000..92d8af3cf4
--- /dev/null
+++ b/crypto/.gitignore
@@ -0,0 +1,2 @@
+rsa-keys.h
+rsa-keys.h.tmp
diff --git a/crypto/Kconfig b/crypto/Kconfig
index c06d3c054e..42b018b296 100644
--- a/crypto/Kconfig
+++ b/crypto/Kconfig
@@ -94,6 +94,25 @@ config CRYPTO_PBKDF2
 config CRYPTO_RSA
 	bool
 
+config CRYPTO_RSA_BUILTIN_KEYS
+	bool
+	default y if CRYPTO_RSA_KEYS != ""
+
+config CRYPTO_RSA_KEY
+	depends on CRYPTO_RSA
+	string "RSA key to compile in"
+	help
+	  This option should be a filename of a PEM-formatted file containing
+	  X.509 certificates to be included into barebox. If the string starts
+	  with "pkcs11:" it is interpreted as a PKCS#11 URI rather than a file.
+
+config CRYPTO_RSA_KEY_NAME_HINT
+	depends on CRYPTO_RSA
+	string "FIT image key name hint"
+	help
+	  In FIT images keys are identified by a key name hint string. Provide
+	  the key name hint here.
+
 config CRYPTO_KEYSTORE
 	bool "Keystore"
 	help
diff --git a/crypto/Makefile b/crypto/Makefile
index d6fb74aad9..018f85e253 100644
--- a/crypto/Makefile
+++ b/crypto/Makefile
@@ -16,3 +16,13 @@ obj-$(CONFIG_DIGEST_SHA512_GENERIC)	+= sha4.o
 obj-$(CONFIG_CRYPTO_PBKDF2)	+= pbkdf2.o
 obj-$(CONFIG_CRYPTO_RSA)	+= rsa.o
 obj-$(CONFIG_CRYPTO_KEYSTORE)	+= keystore.o
+
+extra-y += rsa-keys.h
+
+ifdef CONFIG_CRYPTO_RSA_BUILTIN_KEYS
+
+$(obj)/rsa.o: $(obj)/rsa-keys.h
+$(eval $(call config_filename,CRYPTO_RSA_KEY))
+$(obj)/rsa-keys.h: FORCE
+	$(call cmd,rsa_keys,$(CONFIG_CRYPTO_RSA_KEY_NAME_HINT):$(CRYPTO_RSA_KEY_SRCPREFIX)$(CRYPTO_RSA_KEY_FILENAME))
+endif
diff --git a/crypto/rsa.c b/crypto/rsa.c
index 2e70c8127d..64241854c8 100644
--- a/crypto/rsa.c
+++ b/crypto/rsa.c
@@ -438,3 +438,36 @@ void rsa_key_free(struct rsa_public_key *key)
 	free(key->rr);
 	free(key);
 }
+
+#ifdef CONFIG_CRYPTO_RSA_BUILTIN_KEYS
+#include "rsa-keys.h"
+
+extern const struct rsa_public_key * const __rsa_keys_start;
+extern const struct rsa_public_key * const __rsa_keys_end;
+
+struct rsa_public_key *rsa_get_key(const char *name)
+{
+	const struct rsa_public_key *key;
+	struct rsa_public_key *new;
+	const struct rsa_public_key * const *iter;
+
+	for (iter = &__rsa_keys_start; iter != &__rsa_keys_end; iter++) {
+		key = *iter;
+		if (!strcmp(name, key->key_name_hint))
+			goto found;
+	}
+
+	return ERR_PTR(-ENOENT);
+found:
+	new = xmemdup(key, sizeof(*key));
+	new->modulus = xmemdup(key->modulus, key->len * sizeof(uint32_t));
+	new->rr = xmemdup(key->rr, key->len  * sizeof(uint32_t));
+
+	return new;
+}
+#else
+struct rsa_public_key *rsa_get_key(const char *name)
+{
+	return ERR_PTR(-ENOENT);
+}
+#endif
diff --git a/include/asm-generic/barebox.lds.h b/include/asm-generic/barebox.lds.h
index 8e8ae183db..b6ca8eb2be 100644
--- a/include/asm-generic/barebox.lds.h
+++ b/include/asm-generic/barebox.lds.h
@@ -98,6 +98,11 @@
 #define BAREBOX_PCI_FIXUP
 #endif
 
+#define BAREBOX_RSA_KEYS			\
+	__rsa_keys_start = .;			\
+	KEEP(*(.rsa_keys.rodata.*));		\
+	__rsa_keys_end = .;			\
+
 #define RO_DATA_SECTION				\
 	BAREBOX_INITCALLS			\
 	BAREBOX_EXITCALLS			\
@@ -107,6 +112,7 @@
 	BAREBOX_MAGICVARS			\
 	BAREBOX_CLK_TABLE			\
 	BAREBOX_DTB				\
+	BAREBOX_RSA_KEYS			\
 	BAREBOX_PCI_FIXUP
 
 #if defined(CONFIG_ARCH_BAREBOX_MAX_BARE_INIT_SIZE) && \
diff --git a/include/rsa.h b/include/rsa.h
index cf2e6c7e08..803660d19a 100644
--- a/include/rsa.h
+++ b/include/rsa.h
@@ -28,6 +28,7 @@ struct rsa_public_key {
 	uint32_t *modulus;	/* modulus as little endian array */
 	uint32_t *rr;		/* R^2 as little endian array */
 	uint64_t exponent;	/* public exponent */
+	char *key_name_hint;
 };
 
 /**
@@ -51,5 +52,6 @@ int rsa_verify(const struct rsa_public_key *key, const uint8_t *sig,
 
 struct rsa_public_key *rsa_of_read_key(struct device_node *node);
 void rsa_key_free(struct rsa_public_key *key);
+struct rsa_public_key *rsa_get_key(const char *name);
 
 #endif
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index c4d307ae30..ecaf5e1e7b 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -526,5 +526,23 @@ quiet_cmd_stm32_image = STM32-IMG $@
 quiet_cmd_b64dec = B64DEC  $@
       cmd_b64dec = base64 -d $< > $@
 
+# rsa_keys
+# ---------------------------------------------------------------------------
+# Build a header file containing a rsa public key.
+#
+# The keys can change without the build system noticing, so we always
+# have to call rsatoc. To avoid unnecessary rebuilds of barebox compare
+# its output to the last rsatoc output. Only if it differs overwrite the
+# target file.
+quiet_cmd_rsa_keys = RSAKEY  $@
+cmd_rsa_keys = \
+	$(srctree)/scripts/rsatoc $2 \
+		> $@.tmp &&						\
+	if cmp -s $@.tmp $@; then					\
+		rm $@.tmp;						\
+	else								\
+		mv $@.tmp $@;						\
+	fi
+
 %: %.base64
 	$(call cmd,b64dec)
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
