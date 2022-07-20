Delivery-date: Wed, 20 Jul 2022 12:17:16 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oE6lY-00FUcF-GM
	for lore@lore.pengutronix.de; Wed, 20 Jul 2022 12:17:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oE6lW-0003as-9x
	for lore@pengutronix.de; Wed, 20 Jul 2022 12:17:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Content-Type:Date:To:From:Subject:Message-ID:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=VqYKNeRX1UIKXpT5q9rqY7L8t5RkAHtzIzxZMkPxowI=; b=YXbo/f2szu9Y7NtKWz/YLJrDIU
	1THduPyOBoGdVE2U47TBz8ZxXK+upYWB3ssM4AaZindsLGnzh1bACKZVL7GXc4rc/x1Lg56nfotlP
	ncKlGFeziNVAUQ92xbzhKTqfmevJGfOKKBvOXCqKY1AO+EcEsIpmG3FmXYvQbAcWxAjOMbNhmr510
	r68abwsUgzYPRJtxDTDvLxFYX1XuJMl2AX+CKTnLeH20ydfu8YgSSwhpX6/x8fRedrdYCxBOt7U8A
	szKtXImbQ1KOQwHsJySHSOzDTEKk0uAAB0a2g3xRlzyJv6NSq/8TAIq1Rxbq/ygiOMuvquWU1XpGg
	aFIDkABg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oE6jv-003tu3-Sp; Wed, 20 Jul 2022 10:15:36 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oE6jq-003toU-6p
	for barebox@lists.infradead.org; Wed, 20 Jul 2022 10:15:31 +0000
Received: by mail-wm1-x32a.google.com with SMTP id a18-20020a05600c349200b003a30de68697so2190121wmq.0
        for <barebox@lists.infradead.org>; Wed, 20 Jul 2022 03:15:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:subject:from:to:date:user-agent:mime-version
         :content-transfer-encoding;
        bh=VqYKNeRX1UIKXpT5q9rqY7L8t5RkAHtzIzxZMkPxowI=;
        b=UwnulXhQ880irn6HUMl8Tamj/eb+Ri2cLUL9LjDCyR+HV32bE0y2Q54pkgCWjMvvn8
         mZbUuBQCJWAdNEMpTya1QTMzgMG43PjzvSMqIoRo+6qdz6BemsfDw03Az3N+92gQFEYY
         iZHfvC9tF9CZKlptt0o5GbGEjSpQ3xTiv7off0z5i8EOaktuRn4O9BHRAnMgR50UCXJ7
         FXU2+N8gUgpMvHv1FtCbIdfYhZC113jvkOfrpc6l9poHCIwxk7HavC2+x740QwUBkoLQ
         tqoOc1HCxyP86Da/7CHrNwAKBVW4x8g3CdKljrB3w8ziM2WgmEsNa9yYv5co6Bzbehdo
         upGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:date:user-agent
         :mime-version:content-transfer-encoding;
        bh=VqYKNeRX1UIKXpT5q9rqY7L8t5RkAHtzIzxZMkPxowI=;
        b=tnWS2BNbbp7kNwlxng4uJreLJVOKNYf5AXmsX4dccZTMMHVMhJmaR+XN1BMh9SqyDr
         r4OlU41aIqlsrZi3fk7BvSje2HLKgJ0kyMX+6da7GBfmfg30zuBFPrNRqnugEbtg5mvA
         9gRck2AklEg00nRB7COb1ha3+KmxXKrBskK1pTAk/8fwDHnP489hHDkSA+h70ecpZjFV
         xsLvPBUbmx6f1ygAXfjxAac+qKP030nRUZrWd6kQiXn2GLVL/Ka9QassYPkAat/a85nz
         /kb37SoaONy7qi7nk+5eCSHaNigaCkHxY4sE236P+/Mfmw74NmaFmK3i7b0IIKMdFBeA
         YRqQ==
X-Gm-Message-State: AJIora+MqtsFqMgZYte9RbrPoDG1cqePhZVnD2yEhDEdfi1V+esiH+BD
	+ISQlKK650EV7+xN0pqQO6ADMt0lMtB6g1Zt
X-Google-Smtp-Source: AGRyM1uShU+pMbUqa01cQOOin3UldsVsIKyDvJemleeTqzhOKUEIlDLsxtZA9sNrJwZiRSCYZTn6zw==
X-Received: by 2002:a1c:7213:0:b0:3a3:155a:dd5d with SMTP id n19-20020a1c7213000000b003a3155add5dmr3005977wmc.178.1658312124703;
        Wed, 20 Jul 2022 03:15:24 -0700 (PDT)
Received: from vaio (93-33-9-224.ip42.fastwebnet.it. [93.33.9.224])
        by smtp.gmail.com with ESMTPSA id x11-20020a5d60cb000000b0021e42e7c7dbsm3314548wrt.83.2022.07.20.03.15.23
        for <barebox@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Jul 2022 03:15:24 -0700 (PDT)
Message-ID: <02bcbd486b7f41e5dc86bf9d228dcbf6e1fe9957.camel@gmail.com>
From: Stefano Manni <stefano.manni@gmail.com>
To: barebox@lists.infradead.org
Date: Wed, 20 Jul 2022 12:15:22 +0200
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220720_031530_315693_625D184A 
X-CRM114-Status: GOOD (  12.86  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=4.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] kbuild: make FIT public key overwritable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The path to the public key used to verify FIT images can be
specified with Kconfig variable. For a better build system
integration we also want to be able to specify the path in
environment variables.

Signed-off-by: Stefano Manni <stefano.manni@gmail.com>
---
 common/Kconfig       | 17 +++++++++++++++++
 scripts/Makefile.lib |  8 +++++++-
 2 files changed, 24 insertions(+), 1 deletion(-)

diff --git a/common/Kconfig b/common/Kconfig
index 658437f..ceacf28 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -643,6 +643,21 @@ config BOOTM_FITIMAGE_SIGNATURE
 	  Additionally the barebox device tree needs a /signature node with the
 	  public key with which the image has been signed.
 
+config BOOTM_FITIMAGE_PUBKEY_ENV
+	bool "Specify path to public key in environment"
+	depends on BOOTM_FITIMAGE_SIGNATURE
+	help
+	  If this option is enabled the path to the public key for verifying
+	  FIT images signature is taken from environment which allows for
+	  better integration with build systems.
+
+	  The environment variable has the same name as the corresponding
+	  Kconfig variable:
+
+	  CONFIG_BOOTM_FITIMAGE_PUBKEY
+
+if BOOTM_FITIMAGE_SIGNATURE && !BOOTM_FITIMAGE_PUBKEY_ENV
+
 config BOOTM_FITIMAGE_PUBKEY
 	string "Path to dtsi containing pubkey"
 	default "../fit/pubkey.dtsi"
@@ -652,6 +667,8 @@ config BOOTM_FITIMAGE_PUBKEY
 	  snippet can then be included in a device tree with
 	  "#include CONFIG_BOOTM_FITIMAGE_PUBKEY".
 
+endif
+
 config BOOTM_FORCE_SIGNED_IMAGES
 	bool
 	prompt "Force booting of signed images"
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 3799e77..891b8dd 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -479,6 +479,11 @@ overwrite-hab-env = $(shell set -e; \
       test -n "$$$(1)"; \
       echo -D$(1)=\\\"$(shell echo $$$(1))\\\")
 
+overwrite-fit-env = $(shell set -e; \
+      test -n "$(CONFIG_BOOTM_FITIMAGE_PUBKEY_ENV)"; \
+      test -n "$$$(1)"; \
+      echo -D$(1)=\\\"$(shell echo $$$(1))\\\")
+
 imxcfg_cpp_flags  = -Wp,-MD,$(depfile) -nostdinc -x assembler-with-cpp \
       -I $(srctree)/include -I $(srctree)/arch/arm/mach-imx/include \
       -include include/generated/autoconf.h \
@@ -487,7 +492,8 @@ imxcfg_cpp_flags  = -Wp,-MD,$(depfile) -nostdinc -x assembler-with-cpp \
       $(call overwrite-hab-env,CONFIG_HABV3_IMG_CRT_DER) \
       $(call overwrite-hab-env,CONFIG_HABV4_TABLE_BIN) \
       $(call overwrite-hab-env,CONFIG_HABV4_CSF_CRT_PEM) \
-      $(call overwrite-hab-env,CONFIG_HABV4_IMG_CRT_PEM)
+      $(call overwrite-hab-env,CONFIG_HABV4_IMG_CRT_PEM) \
+      $(call overwrite-fit-env,CONFIG_BOOTM_FITIMAGE_PUBKEY) \
 
 dcd-tmp = $(subst $(comma),_,$(dot-target).dcd.tmp)
 
-- 
2.7.4




