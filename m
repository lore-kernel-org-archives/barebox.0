Delivery-date: Thu, 21 Aug 2025 21:54:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1upBMr-0034Qv-1Y
	for lore@lore.pengutronix.de;
	Thu, 21 Aug 2025 21:54:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1upBMp-0004Sa-OB
	for lore@pengutronix.de; Thu, 21 Aug 2025 21:54:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=1PLvcLicRjszSc1OInjjUrqg3/7P/Rs0L8V2tpd3bK4=; b=osN4KQJoP1TgXEBqDjPxupUVZJ
	KrwSWOXFFYhajBDisgmUxZqHh2Atlz2BJJFqSnBqQcshVs7WC1tqlMPv5m8uJHWRPH4sm+vjYZlcL
	FJbPiZeZeUpXEVMGuLlXbbO+jSDvkPXhbX+hEd7BVdbTzei5V/MvlkENdqRu0Sv4Dl5WuWOKUGMTQ
	nXOe4jPFdNWFiZr3KLC8vAQgZG2vPvsmFQ/ldng7K/CLSeN/1iia9+RnKZkQfBoRuzRwmjI/SNnTq
	QW1KAP61Pxnj6gNixKGVWeBRRZd7XezUf+vKg7E3xGmbH0j46IF4NGtLry1qWYfXyrfhV7inXpL1m
	MFRct9PA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upBME-00000000Loj-0wY7;
	Thu, 21 Aug 2025 19:53:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1up7MG-0000000HQ4X-3lr6
	for barebox@lists.infradead.org;
	Thu, 21 Aug 2025 15:37:46 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1up7ME-0003vL-5p; Thu, 21 Aug 2025 17:37:42 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Thu, 21 Aug 2025 17:37:36 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250821-sign-rkimage-v1-1-910d74532724@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIAD89p2gC/x2MQQqAIBAAvyJ7TlBBkr4SHdRWWyKLFSKQ/p50H
 IaZBhWZsMIkGjDeVOksHfQgIG6+ZJS0dgajjFXOaFkpF8k7Hb47m0JUo04+OAc9uRgTPf9uXt7
 3A9eqpddeAAAA
X-Change-ID: 20250821-sign-rkimage-5fbc071fab88
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250821_083745_256378_5DBEFFCD 
X-CRM114-Status: GOOD (  30.43  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] scripts: rockchip: implement image signing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The header of a Rockchip signed images contains an RSA public key and
the signature generated with the corresponding RSA private key at the
end of the header.

Since barebox already creates the header for the Rockchip image, adding
the signature in the rkimage tool is very convenient and avoids the need
for a separate tool for signing.

Add the -k option to the rkimage tool to pass the path to a PEM file or
a PKCS#11 uri of the private RSA key that shall be used for signing.

Extend the barebox build system to set this parameter and pass
CONFIG_ARCH_ROCKCHIP_IMAGE_SIGN_KEY as key if
CONFIG_ARCH_ROCKCHIP_IMAGE_SIGNED is enabled. The option may be
overridden by an environment variable of the same name to allow an
easier integration into other build systems.

The generated and signed images can be verified by using the Rockchip
vendor tool [0] as:

	rk_sign_tool vb --idb <barebox-image>

The Rockchip vendor tool isn't used for signing the images. rk_sign_tool
is difficult to use in an automated environment, because it uses a
settings.ini file instead of command line parameters. Furthermore, the
integration of rk_sign_tool with an HSM or PKCS#11 is not documented.

As it is useful to be able to resign an existing Rockchip image with a
different key, extend the rkimage to accept Rockchip images as input and
skip the IDB creation in this case.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/mach-rockchip/Kconfig |  38 ++++++
 images/Makefile.rockchip       |  10 +-
 scripts/rkimage.c              | 266 ++++++++++++++++++++++++++++++++++++++++-
 scripts/rockchip.h             |  13 +-
 4 files changed, 320 insertions(+), 7 deletions(-)

diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
index 703fb1b6a7f8b2a6abb022c4634faca32e48e313..879080fdc904e831c411b55a5de00a60d4569cc5 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -174,4 +174,42 @@ config ARCH_ROCKCHIP_OPTEE
 	  With this option enabled the OP-TEE binary is compiled
 	  into barebox and started along with the BL31 trusted firmware.
 
+config ARCH_ROCKCHIP_IMAGE_SIGNED
+	bool "Create Rockchip signed images"
+	help
+	  Sign the created Rockchip images to allow the ROM code of devices
+	  that have secure boot enabled to boot the barebox images.
+
+	  The ROM code of the Rockchip SoCs accepts signed images on unlocked
+	  boards, too. Thus, if this option is enabled, all barebox images are
+	  signed.
+
+if ARCH_ROCKCHIP_IMAGE_SIGNED
+
+config ARCH_ROCKCHIP_IMAGE_SIGN_KEY_ENV
+	bool "Specify signing key in environment"
+	help
+	  If this option is enabled, the path to the bootloader signing key
+	  is taken from an environment variable. This allows for better
+	  integration in build systems.
+
+	  The environment variable has the same name as the corresponding
+	  Kconfig variable, which is CONFIG_ARCH_ROCKCHIP_IMAGE_SIGN_KEY.
+
+if !ARCH_ROCKCHIP_IMAGE_SIGN_KEY_ENV
+
+config ARCH_ROCKCHIP_IMAGE_SIGN_KEY
+	string "RSA private key for signing the images"
+	default "rk-development.key.pem"
+        help
+	  The private key that is used for signing the Rockchip images. The
+	  string may contain the path to a PEM file or a PKCS#11 URI.
+
+	  The key must be an RSA private key with 2048 or 4096 bits. It may be
+	  generated by the Rockchip rk_sign_tool or by OpenSSL.
+
+endif
+
+endif
+
 endmenu
diff --git a/images/Makefile.rockchip b/images/Makefile.rockchip
index 761c6b81498931e5f51b185ed9b2e4ebe16f78bc..b929b7fd73b98bd5f4cadaed10e5f1c94ba116dd 100644
--- a/images/Makefile.rockchip
+++ b/images/Makefile.rockchip
@@ -3,8 +3,16 @@
 # barebox image generation Makefile for Rockchip images
 #
 
+ifeq ($(CONFIG_ARCH_ROCKCHIP_IMAGE_SIGNED), y)
+ifeq ($(CONFIG_ARCH_ROCKCHIP_IMAGE_SIGN_KEY_ENV), y)
+RKIMAGE_OPTS += -k '$(shell echo '$(CONFIG_ARCH_ROCKCHIP_IMAGE_SIGN_KEY)')'
+else
+RKIMAGE_OPTS += -k $(CONFIG_ARCH_ROCKCHIP_IMAGE_SIGN_KEY)
+endif
+endif
+
 quiet_cmd_rkimg_image = RK-IMG $@
-      cmd_rkimg_image = $(objtree)/scripts/rkimage -o $@ $(word 2,$^) $(word 1,$^)
+      cmd_rkimg_image = $(objtree)/scripts/rkimage $(RKIMAGE_OPTS) -o $@ $(word 2,$^) $(word 1,$^)
 
 # params: CONFIG symbol, entry point, sdram-init.bin, board identifier string
 define build_rockchip_image =
diff --git a/scripts/rkimage.c b/scripts/rkimage.c
index d1a9f709c16ae5fb6277b4e02498209966594213..9b3ae8bbfff718500b5acceed039d7d704e756ef 100644
--- a/scripts/rkimage.c
+++ b/scripts/rkimage.c
@@ -9,10 +9,21 @@
 #include <stdint.h>
 #include <string.h>
 #include <time.h>
-#include <openssl/evp.h>
 #include <errno.h>
 #include <stdbool.h>
 
+#include <openssl/bn.h>
+#include <openssl/core_names.h>
+/*
+ * TODO Switch from the OpenSSL ENGINE API to the PKCS#11 provider and the
+ * PROVIDER API: https://github.com/latchset/pkcs11-provider
+ */
+#pragma GCC diagnostic ignored "-Wdeprecated-declarations"
+#include <openssl/engine.h>
+#include <openssl/evp.h>
+#include <openssl/pem.h>
+#include <openssl/rsa.h>
+
 #include "common.h"
 #include "common.c"
 #include "rockchip.h"
@@ -53,6 +64,53 @@ static void idb_hash(struct newidb *idb)
 		sha512(idbu8, size, idbu8 + size);
 }
 
+static EVP_PKEY *load_key_pkcs11(const char *path)
+{
+	const char *engine_id = "pkcs11";
+	ENGINE *e;
+	EVP_PKEY *pkey = NULL;
+
+	ENGINE_load_builtin_engines();
+
+	e = ENGINE_by_id(engine_id);
+	if (!e) {
+		fprintf(stderr, "Engine %s isn't available\n", engine_id);
+		goto err_engine_by_id;
+	}
+	if (!ENGINE_init(e)) {
+		fprintf(stderr, "Couldn't initialize engine\n");
+		goto err_engine_init;
+	}
+
+	pkey = ENGINE_load_private_key(e, path, NULL, NULL);
+
+	ENGINE_finish(e);
+err_engine_init:
+	ENGINE_free(e);
+err_engine_by_id:
+#if OPENSSL_VERSION_NUMBER < 0x10100000L || \
+	(defined(LIBRESSL_VERSION_NUMBER) && LIBRESSL_VERSION_NUMBER < 0x02070000fL)
+	ENGINE_cleanup();
+#endif
+	return pkey;
+}
+
+static EVP_PKEY *load_key_file(const char *path)
+{
+	BIO *key;
+	EVP_PKEY *pkey = NULL;
+
+	key = BIO_new_file(path, "r");
+	if (!key)
+		return NULL;
+
+	pkey = PEM_read_bio_PrivateKey(key, NULL, NULL, NULL);
+
+	BIO_free_all(key);
+
+	return pkey;
+}
+
 typedef enum {
 	HASH_TYPE_SHA256 = 1,
 	HASH_TYPE_SHA512 = 2,
@@ -67,6 +125,15 @@ struct rkcode {
 static int n_code;
 struct rkcode *code;
 
+static bool has_magic(void *buf)
+{
+	uint32_t magic;
+
+	magic = *(uint32_t *)buf;
+
+	return magic == NEWIDB_MAGIC_RKSS || magic == NEWIDB_MAGIC_RKNS;
+}
+
 static int create_newidb(struct newidb *idb)
 {
 	hash_type_t hash_type = HASH_TYPE_SHA256;
@@ -113,6 +180,183 @@ static int create_newidb(struct newidb *idb)
 	return 0;
 }
 
+static int rsa_get_params(EVP_PKEY *key, BIGNUM *e, BIGNUM *n, BIGNUM *np)
+{
+	BN_CTX *ctx = BN_CTX_new();
+	int ret;
+
+	ret = EVP_PKEY_get_bn_param(key, OSSL_PKEY_PARAM_RSA_E, &e);
+	if (ret != 1)
+		return ret;
+
+	ret = EVP_PKEY_get_bn_param(key, OSSL_PKEY_PARAM_RSA_N, &n);
+	if (ret != 1)
+		return ret;
+
+	/* Downstream U-Boot documents NP as an "acceleration factor" */
+	BN_set_bit(np, EVP_PKEY_get_bits(key) + 132);
+	BN_div(np, NULL, np, n, ctx);
+
+	BN_CTX_free(ctx);
+
+	return 0;
+}
+
+static int bin2lebin(const unsigned char *src, unsigned char *dst, size_t size)
+{
+	size_t i;
+
+	for (i = 0; i < size; i++)
+		dst[i] = src[size - 1 - i];
+
+	return i;
+}
+
+static int idb_sign(struct newidb *idb, EVP_PKEY *key)
+{
+	EVP_PKEY_CTX *ctx = NULL;
+	unsigned char *sig = NULL;
+	const EVP_MD *md;
+	size_t mdlen;
+	size_t siglen;
+	int ret = -1;
+
+	if (!!(idb->flags & NEWIDB_FLAGS_SHA256)) {
+		md = EVP_sha256();
+	} else if (!!(idb->flags & NEWIDB_FLAGS_SHA512)) {
+		md = EVP_sha512();
+	} else {
+		fprintf(stderr, "Unsupported hash function\n");
+		return -EINVAL;
+	}
+
+	ctx = EVP_PKEY_CTX_new_from_pkey(NULL, key, NULL);
+	if (!ctx)
+		return -1;
+
+	if (EVP_PKEY_sign_init(ctx) <= 0)
+		goto out;
+	if (EVP_PKEY_CTX_set_rsa_padding(ctx, RSA_PKCS1_PSS_PADDING) <= 0)
+		goto out;
+	if (EVP_PKEY_CTX_set_signature_md(ctx, md) <= 0)
+		goto out;
+	/* rk_sign_tool verification fails if saltlen != 32 with sha256 */
+	if (EVP_PKEY_CTX_set_rsa_pss_saltlen(ctx, RSA_PSS_SALTLEN_DIGEST) <= 0)
+		goto out;
+
+	mdlen = EVP_MD_get_size(md);
+	if (EVP_PKEY_sign(ctx, NULL, &siglen, idb->hash, mdlen) <= 0)
+		goto out;
+	if (siglen > sizeof(idb->hash))
+		goto out;
+
+	sig = OPENSSL_malloc(siglen);
+	if (!sig) {
+		ret = -ENOMEM;
+		goto out;
+	}
+
+	/* Finally update the header before adding the actual signature */
+	idb->magic = NEWIDB_MAGIC_RKSS;
+	idb->flags |= NEWIDB_FLAGS_SIGNED;
+	if (EVP_PKEY_get_bits(key) == 4096)
+		idb->flags |= NEWIDB_FLAGS_RSA4096;
+	else
+		idb->flags |= NEWIDB_FLAGS_RSA2048;
+	idb_hash(idb);
+
+	/* Non-deterministic signature due to random MGF initialization */
+	ret = EVP_PKEY_sign(ctx, sig, &siglen, idb->hash, mdlen);
+	if (ret <= 0) {
+		fprintf(stderr, "Failed to sign image: %s\n",
+			ERR_error_string(ERR_get_error(), 0));
+		goto out;
+	}
+
+	bin2lebin(sig, idb->hash, siglen);
+
+	ret = 0;
+out:
+	OPENSSL_free(sig);
+	EVP_PKEY_CTX_free(ctx);
+
+	return ret;
+}
+
+static int idb_add_pub_key(struct newidb *idb, EVP_PKEY *key)
+{
+	BIGNUM *e;
+	BIGNUM *n;
+	BIGNUM *np;
+	int ret;
+
+	e = BN_new();
+	n = BN_new();
+	np = BN_new();
+	if (!e || !n || !np) {
+		ret = -ENOMEM;
+		goto out;
+	}
+
+	ret = rsa_get_params(key, e, n, np);
+	if (ret) {
+		ret = -EINVAL;
+		goto out;
+	}
+
+	BN_bn2lebinpad(e, idb->key.exponent, sizeof(idb->key.exponent));
+	BN_bn2lebinpad(n, idb->key.modulus, sizeof(idb->key.modulus));
+	BN_bn2lebinpad(np, idb->key.np, sizeof(idb->key.np));
+
+	idb_hash(idb);
+
+out:
+	BN_free(np);
+	BN_free(n);
+	BN_free(e);
+
+	return ret;
+}
+
+static int sign_newidb(struct newidb *idb, const char *path)
+{
+	EVP_PKEY *pkey = NULL;
+	int ret = -1;
+
+	if (!path)
+		return -EINVAL;
+
+	if (strncmp(path, "pkcs11:", 7) == 0)
+		pkey = load_key_pkcs11(path);
+	else
+		pkey = load_key_file(path);
+	if (!pkey) {
+		fprintf(stderr, "Failed to load key %s\n", path);
+		return -EINVAL;
+	}
+	if (!EVP_PKEY_is_a(pkey, "RSA") && !EVP_PKEY_is_a(pkey, "RSA-PSS")) {
+		fprintf(stderr, "%s is not an RSA key\n", path);
+		ret = -EINVAL;
+		goto out;
+	}
+
+	ret = idb_add_pub_key(idb, pkey);
+	if (ret) {
+		fprintf(stderr, "Failed to add public key to header\n");
+		goto out;
+	}
+	ret = idb_sign(idb, pkey);
+	if (ret) {
+		fprintf(stderr, "Failed to sign image\n");
+		goto out;
+	}
+
+out:
+	EVP_PKEY_free(pkey);
+
+	return ret;
+}
+
 struct option cbootcmd[] = {
 	{"help", 0, NULL, 'h'},
 	{"o", 1, NULL, 'o'},
@@ -130,6 +374,7 @@ static void usage(const char *prgname)
 "\n"
 "Options:\n"
 "  -o <file>   Output image to <file>\n"
+"  -k <key>    Sign the image with <key> as PEM file or PKCS#11 uri\n"
 "  -h          This help\n",
 	prgname);
 }
@@ -138,13 +383,17 @@ int main(int argc, char *argv[])
 {
 	int opt, i, fd;
 	const char *outfile = NULL;
+	const char *key = NULL;
 	struct newidb idb = {};
 
-	while ((opt = getopt_long(argc, argv, "ho:", cbootcmd, NULL)) > 0) {
+	while ((opt = getopt_long(argc, argv, "ho:k:", cbootcmd, NULL)) > 0) {
 		switch (opt) {
 		case 'o':
 			outfile = optarg;
 			break;
+		case 'k':
+			key = optarg;
+			break;
 		case 'h':
 			usage(argv[0]);
 			exit(0);
@@ -187,7 +436,18 @@ int main(int argc, char *argv[])
 		close(fd);
 	}
 
-	create_newidb(&idb);
+	if (!(n_code == 1 && has_magic(code[0].buf)))
+		create_newidb(&idb);
+
+	if (key) {
+		int ret;
+
+		ret = sign_newidb(&idb, key);
+		if (ret) {
+			fprintf(stderr, "%s failed: Cannot sign image\n", outfile);
+			exit(1);
+		}
+	}
 
 	fd = creat(outfile, 0644);
 	if (fd < 0) {
diff --git a/scripts/rockchip.h b/scripts/rockchip.h
index ed915bdf593ca23aab2046b0997743babbbc371a..360349ce757afca7620772795da0c9f7f78a7bd1 100644
--- a/scripts/rockchip.h
+++ b/scripts/rockchip.h
@@ -6,6 +6,9 @@
 
 #define NEWIDB_FLAGS_SHA256	(1U << 0)
 #define NEWIDB_FLAGS_SHA512	(1U << 1)
+#define NEWIDB_FLAGS_RSA2048	(1U << 4)
+#define NEWIDB_FLAGS_RSA4096	(1U << 5)
+#define NEWIDB_FLAGS_SIGNED	(1U << 13)
 
 struct newidb_entry {
 	uint32_t sector;
@@ -16,6 +19,12 @@ struct newidb_entry {
 	unsigned char hash[64];
 };
 
+struct newidb_key {
+	unsigned char modulus[512];
+	unsigned char exponent[16];
+	unsigned char np[32];
+};
+
 struct newidb {
 	uint32_t magic;
 	unsigned char unknown1[4];
@@ -26,9 +35,7 @@ struct newidb {
 	unsigned char unknown4[88];
 	struct newidb_entry entries[4];
 	unsigned char unknown5[40];
-	unsigned char unknown6[512];
-	unsigned char unknown7[16];
-	unsigned char unknown8[32];
+	struct newidb_key key;
 	unsigned char unknown9[464];
 	unsigned char hash[512];
 };

---
base-commit: 284e9d9c4a7d3037c8cf97acc63c6153a83f8652
change-id: 20250821-sign-rkimage-5fbc071fab88

Best regards,
-- 
Michael Tretter <m.tretter@pengutronix.de>



