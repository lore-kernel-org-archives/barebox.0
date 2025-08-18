Delivery-date: Mon, 18 Aug 2025 19:40:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uo3qE-001xXO-0r
	for lore@lore.pengutronix.de;
	Mon, 18 Aug 2025 19:40:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uo3qD-0002q8-4L
	for lore@pengutronix.de; Mon, 18 Aug 2025 19:40:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ti9MOm589AyMuRyehS0TK7qPrNwF8pkhDXFgiQyi0ws=; b=4J0MIG/GfixD/poA12RQno368G
	KwNw9DG6I79Pdue7c165mDvqpyIflfbXnsGzIP3Z1WN4+xUCez90uso2W81OyVuaOSFoPea7Mghkr
	zgEeYvW3p9+VL2HQNe2Erh81c7h4xud/PwOpoR9LFurGSEJKxhWxwVzLSRC9+YBQ4q4l6OEV7e6FM
	lgc7IWD3JZ7lkGxDQX7QKy6XLyc1A5wRsTk1CfvGteE/S+8jAKWurgr0y/2mJirUbz3GyL+6VWYCU
	oXaJOjgVD4GBLgosYVOXi6BsGiUnBbSTewUiTZnYIwl+zt8ZE21iZP1Wn96c7RBVb2frAgsPPm30r
	U1mtd5zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo3pn-00000008ENR-3jCK;
	Mon, 18 Aug 2025 17:39:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo3LP-0000000864W-3yVt
	for barebox@lists.infradead.org;
	Mon, 18 Aug 2025 17:08:30 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1uo3LM-0005fu-Gb
	for barebox@lists.infradead.org; Mon, 18 Aug 2025 19:08:24 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 18 Aug 2025 19:08:15 +0200
Message-Id: <20250818170815.2478554-3-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250818170815.2478554-1-m.felsch@pengutronix.de>
References: <20250818170815.2478554-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250818_100827_996296_8FCEB265 
X-CRM114-Status: UNSURE (   8.14  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 3/3] crypto: add examples to CRYPTO_PUBLIC_KEYS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

It's pretty easy to get the documentation for the __ENV__ handling
wrong. Therefore add a few examples which are currently supported.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
Changelog:
v3:
- new patch

 crypto/Kconfig | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/crypto/Kconfig b/crypto/Kconfig
index 14728be4aa91..97836a75ce5a 100644
--- a/crypto/Kconfig
+++ b/crypto/Kconfig
@@ -148,6 +148,24 @@ config CRYPTO_PUBLIC_KEYS
 	  corresponding value in the environment variable VAR_NAME for both
 	  public key paths/URIs as well as key name hints.
 
+	  Examples specified directly:
+
+	  - CONFIG_CRYPTO_PUBLIC_KEYS="pkcs11:object=foo"
+	  - CONFIG_CRYPTO_PUBLIC_KEYS="myhint:pkcs11:object=foo"
+	  - CONFIG_CRYPTO_PUBLIC_KEYS="myhint:pkcs11:object=foo /foobar/baz.der"
+	  - CONFIG_CRYPTO_PUBLIC_KEYS="myhint:pkcs11:object=foo myotherhint:/foobar/baz.der"
+
+	  Example specified indirectly by two environment variables:
+
+	  - myhint="myhint"
+	  - myname="pkcs11:object=foo" (.der could be used too)
+	  - CONFIG_CRYPTO_PUBLIC_KEYS="__ENV__myhint:__ENV__myname"
+
+	  Example specified indirectly by a single environment variable:
+
+	  - mykey="myhint:pkcs11:object=foo" (.der could be used too)
+	  - CONFIG_CRYPTO_PUBLIC_KEYS="__ENV__mykey"
+
 config CRYPTO_KEYSTORE
 	bool "Keystore"
 	help
-- 
2.39.5



