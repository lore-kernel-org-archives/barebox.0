Delivery-date: Mon, 22 Jul 2024 10:25:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sVoLt-001kq4-01
	for lore@lore.pengutronix.de;
	Mon, 22 Jul 2024 10:25:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sVoLq-0000EV-Kb
	for lore@pengutronix.de; Mon, 22 Jul 2024 10:25:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wj8NGqJQCiF8OTdxpLNmWgCOr+U1z2mYmzCki/w886U=; b=T0Vc/ywz5dF2K4g64tChI9lAuj
	Z8UeHH1Fbxe2aIHiMpl5sOaFDuyTBamZTSFChBsiiEE21cF2HW16A91eI1Si/HO0WwolPpu04/KKb
	q7WEH1HJ8Kjw/pgKKYOOKxMBsZ5kZrzJr6ev/gXE3pVlIWAXurR8WCWhd2ojvlOp96Lj306JxJocN
	S/jJnj1lwTvwp2w5UHT4w/ixGwL2ooqG7PAFXv3TJyS4jomUsPeDIdAT5lhQxikR+LkVlakWuREf5
	266BW+ANnOoH9noJYDd1TGltDxc2vc5sHllv+n9i2oP+SCtwrKT76nb3vvZJ/inUJ3ZMdwzz03Mm4
	bxM7EwBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVoLE-00000008rme-0yGn;
	Mon, 22 Jul 2024 08:24:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVoL6-00000008rib-1gVL
	for barebox@lists.infradead.org;
	Mon, 22 Jul 2024 08:24:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sVoL2-0008Fo-GJ; Mon, 22 Jul 2024 10:24:08 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sVoL2-001L9d-2n; Mon, 22 Jul 2024 10:24:08 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sVoL1-00629B-39;
	Mon, 22 Jul 2024 10:24:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 22 Jul 2024 10:23:59 +0200
Message-Id: <20240722082405.926111-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240722082405.926111-1-s.hauer@pengutronix.de>
References: <20240722082405.926111-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240722_012412_545581_F782803D 
X-CRM114-Status: GOOD (  15.21  )
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
Subject: [PATCH 3/9] rsatoc: rename to keytoc
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The rsatoc tool will be extended to also handle ecdsa keys, so change
'rsa' to a more generic name 'key'.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 crypto/Kconfig                 |  2 +-
 crypto/Makefile                |  2 +-
 scripts/.gitignore             |  2 +-
 scripts/Kconfig                |  4 ++--
 scripts/Makefile               |  6 +++---
 scripts/Makefile.lib           | 12 ++++++------
 scripts/{rsatoc.c => keytoc.c} |  4 ++--
 test/self/Makefile             |  2 +-
 8 files changed, 17 insertions(+), 17 deletions(-)
 rename scripts/{rsatoc.c => keytoc.c} (98%)

diff --git a/crypto/Kconfig b/crypto/Kconfig
index d1360a2101..78b499f646 100644
--- a/crypto/Kconfig
+++ b/crypto/Kconfig
@@ -121,7 +121,7 @@ config CRYPTO_RSA
 config CRYPTO_RSA_BUILTIN_KEYS
 	bool
 	default y if CRYPTO_RSA_KEY != ""
-	select RSATOC
+	select KEYTOC
 
 config CRYPTO_RSA_KEY
 	depends on CRYPTO_RSA
diff --git a/crypto/Makefile b/crypto/Makefile
index cf041dd6b3..e84360a8c7 100644
--- a/crypto/Makefile
+++ b/crypto/Makefile
@@ -34,5 +34,5 @@ RSA_DEP := $(CONFIG_CRYPTO_RSA_KEY)
 endif
 
 $(obj)/rsa-keys.h: $(RSA_DEP) FORCE
-	$(call cmd,rsa_keys,$(CONFIG_CRYPTO_RSA_KEY_NAME_HINT):$(if $(RSA_DEP),$<,$(CONFIG_CRYPTO_RSA_KEY)))
+	$(call cmd,public_keys,$(CONFIG_CRYPTO_RSA_KEY_NAME_HINT):$(if $(RSA_DEP),$<,$(CONFIG_CRYPTO_RSA_KEY)))
 endif
diff --git a/scripts/.gitignore b/scripts/.gitignore
index 8c653d184f..6ee81e8998 100644
--- a/scripts/.gitignore
+++ b/scripts/.gitignore
@@ -33,7 +33,7 @@ rk-usb-loader
 rk-usb-loader-target
 rkimage
 mips-relocs
-rsatoc
+keytoc
 stm32image
 mvebuimg
 prelink-riscv
diff --git a/scripts/Kconfig b/scripts/Kconfig
index 4034f020d0..62bf0298ec 100644
--- a/scripts/Kconfig
+++ b/scripts/Kconfig
@@ -110,10 +110,10 @@ config QOICONV
 	help
 	  This enable converting png to qoi images to generate boot logo.
 
-config RSATOC
+config KEYTOC
 	bool "RSA to C converter" if COMPILE_HOST_TOOLS
 	help
-	  This utility converts RSA keys in PEM format to either C or
+	  This utility converts public keys in PEM format to either C or
 	  device tree snippets. This requires OpenSSL on the build host
 	  and will be selected by the build system if required.
 
diff --git a/scripts/Makefile b/scripts/Makefile
index 20da6fc5e7..a780f05bd9 100644
--- a/scripts/Makefile
+++ b/scripts/Makefile
@@ -10,9 +10,9 @@ hostprogs-always-y					+= bareboxenv
 hostprogs-always-y					+= bareboxcrc32
 hostprogs-always-y					+= kernel-install
 hostprogs-always-$(CONFIG_QOICONV)			+= qoiconv
-hostprogs-always-$(CONFIG_RSATOC)			+= rsatoc
-HOSTCFLAGS_rsatoc.o = `$(PKG_CONFIG) --cflags openssl`
-HOSTLDLIBS_rsatoc = `$(PKG_CONFIG) --libs openssl`
+hostprogs-always-$(CONFIG_KEYTOC)			+= keytoc
+HOSTCFLAGS_keytoc.o = `$(PKG_CONFIG) --cflags openssl`
+HOSTLDLIBS_keytoc = `$(PKG_CONFIG) --libs openssl`
 hostprogs-always-$(CONFIG_IMD)				+= bareboximd
 hostprogs-always-$(CONFIG_KALLSYMS)			+= kallsyms
 hostprogs-always-$(CONFIG_MIPS)				+= mips-relocs
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 6b1f0ccbc0..1881e3c139 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -604,17 +604,17 @@ quiet_cmd_stm32_image = STM32-IMG $@
 quiet_cmd_b64dec = B64DEC  $@
       cmd_b64dec = base64 -d $< > $@
 
-# rsa_keys
+# public_keys
 # ---------------------------------------------------------------------------
 # Build a header file containing a rsa public key.
 #
 # The keys can change without the build system noticing, so we always
-# have to call rsatoc. To avoid unnecessary rebuilds of barebox compare
-# its output to the last rsatoc output. Only if it differs overwrite the
+# have to call keytoc. To avoid unnecessary rebuilds of barebox compare
+# its output to the last keytoc output. Only if it differs overwrite the
 # target file.
-quiet_cmd_rsa_keys = RSAKEY  $@
-cmd_rsa_keys = \
-	$(objtree)/scripts/rsatoc -o $@.tmp "$(2)" $(3) &&		\
+quiet_cmd_public_keys = KEY     $@
+cmd_public_keys = \
+	$(objtree)/scripts/keytoc -o $@.tmp "$(2)" $(3) &&		\
 	if cmp -s $@.tmp $@; then					\
 		rm $@.tmp;						\
 	else								\
diff --git a/scripts/rsatoc.c b/scripts/keytoc.c
similarity index 98%
rename from scripts/rsatoc.c
rename to scripts/keytoc.c
index 9f8aaf8c36..be50ec86b9 100644
--- a/scripts/rsatoc.c
+++ b/scripts/keytoc.c
@@ -1,8 +1,8 @@
 // SPDX-License-Identifier: GPL-2.0-or-later WITH LicenseRef-OpenSSL-exception
 /*
- * rsatoc - utility to convert an RSA key to a C struct
+ * keytoc - utility to convert a public key to a C struct
  *
- * This tool converts an RSA key given as file or PKCS#11
+ * This tool converts an public key given as file or PKCS#11
  * URI to a C struct suitable to compile with barebox.
  */
 #include <stdio.h>
diff --git a/test/self/Makefile b/test/self/Makefile
index fbc1867254..6390c4afd4 100644
--- a/test/self/Makefile
+++ b/test/self/Makefile
@@ -22,7 +22,7 @@ obj-$(CONFIG_SELFTEST_IDR) += idr.o
 ifdef REGENERATE_RSATOC
 
 $(obj)/jwt_test.pem.c_shipped: $(src)/jwt_test.pem FORCE
-	$(call if_changed,rsa_keys,$(basename $(target-stem)):$<,-s)
+	$(call if_changed,public_keys,$(basename $(target-stem)):$<,-s)
 
 endif
 
-- 
2.39.2



