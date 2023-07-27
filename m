Delivery-date: Thu, 27 Jul 2023 11:50:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOxdN-00By4c-Bz
	for lore@lore.pengutronix.de; Thu, 27 Jul 2023 11:50:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOxdJ-0007Mi-PG
	for lore@pengutronix.de; Thu, 27 Jul 2023 11:50:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KpKBwhnhNYxDCyo4MG8o42+XovOkOoPkFUGB9NwaxY0=; b=0LPq5cwZ821rmd
	sRMcUpdURl+1veoNQ+3JV2upsoYL1EPjSRdpKEuGzCCl2f4QeNF2OeBjj52uKnehXjoBjSduvYYYk
	O+k76bDB5uDusubVF1x/6C6XqwBIvN7qb0OOihj+ejliWY7ozgsQjQ4co0WbAGF5xHpswD/lMXlwv
	l4tDJSyXIElr7R7SVcrU06u0wskXuMkbCzbYgf+85UE6Na4QG1cWvhgIghtu4B5hWYZ9/Q7f68Bc5
	567cpiBrHno3PuIuKRgsBI8Pp6gBd3VqkAzF644WQem5ppdXJwRMmje7nCnxlSJMxNBc++qs6Vicc
	3GKBffsdTrOlupRg+Ddw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOxby-00CsrP-0g;
	Thu, 27 Jul 2023 09:48:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOxb5-00CsXN-36
	for barebox@lists.infradead.org;
	Thu, 27 Jul 2023 09:47:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qOxb3-0006zR-V7; Thu, 27 Jul 2023 11:47:50 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qOxb3-002Rcd-9p; Thu, 27 Jul 2023 11:47:49 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qOxb3-004poj-02;
	Thu, 27 Jul 2023 11:47:49 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 27 Jul 2023 11:47:48 +0200
Message-Id: <20230727094748.1152484-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230727_024752_021621_5FF16B91 
X-CRM114-Status: GOOD (  12.72  )
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
Cc: rcz@pengutronix.de
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] crypto: clarify relationship of CONFIG_{BOOTM_FITIMAGE_PUBKEY,RSA_KEY}
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

CONFIG_RSA_KEY and CONFIG_BOOTM_FITIMAGE_PUBKEY can both point at the
RSA public key, but with different formats. CONFIG_RSA_KEY is probably
easier to integrate, so reference it from CONFIG_BOOTM_FITIMAGE_PUBKEY
and be explicit about the different formatting.
---
 common/Kconfig | 11 ++++++++---
 crypto/Kconfig |  3 +++
 2 files changed, 11 insertions(+), 3 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index 3a57e16b3be6..0c7ba6a63685 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -644,9 +644,10 @@ config BOOTM_FITIMAGE_PUBKEY_ENV
 	bool "Specify path to public key in environment"
 	depends on BOOTM_FITIMAGE_SIGNATURE
 	help
-	  If this option is enabled the path to the public key for verifying
-	  FIT images signature is taken from environment which allows for
-	  better integration with build systems.
+	  If this option is enabled the path to the device tree snippet
+	  containing the public key for verifying FIT images signature is taken
+	  from make's build-time environment, which can allow for better
+	  integration with some build systems.
 
 	  The environment variable has the same name as the corresponding
 	  Kconfig variable:
@@ -664,6 +665,10 @@ config BOOTM_FITIMAGE_PUBKEY
 	  snippet can then be included in a device tree with
 	  "#include CONFIG_BOOTM_FITIMAGE_PUBKEY".
 
+	  This snippet is usually generated by decompiling a device tree produced
+	  by mkimage. An alternative is CONFIG_CRYPTO_RSA_KEY, which takes a PEM
+	  file or a PKCS#11 URI.
+
 endif
 
 config BOOTM_FORCE_SIGNED_IMAGES
diff --git a/crypto/Kconfig b/crypto/Kconfig
index 629f615de1af..04e5ef43705b 100644
--- a/crypto/Kconfig
+++ b/crypto/Kconfig
@@ -130,6 +130,9 @@ config CRYPTO_RSA_KEY
 	  X.509 certificates to be included into barebox. If the string starts
 	  with "pkcs11:" it is interpreted as a PKCS#11 URI rather than a file.
 
+	  This avoids the mkimage dependency of CONFIG_BOOTM_FITIMAGE_PUBKEY
+	  at the cost of an openssl build-time dependency.
+
 config CRYPTO_RSA_KEY_NAME_HINT
 	depends on CRYPTO_RSA
 	string "FIT image key name hint"
-- 
2.39.2



