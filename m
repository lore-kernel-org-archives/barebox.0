Delivery-date: Thu, 01 Aug 2024 08:03:43 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZOud-0052IS-0t
	for lore@lore.pengutronix.de;
	Thu, 01 Aug 2024 08:03:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZOuc-0001jQ-1A
	for lore@pengutronix.de; Thu, 01 Aug 2024 08:03:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=diYyf4bn2URltJXbs6qP39fyrzI6teKpDfBYNdkqn9I=; b=G/2l6EM3AtHQ2DYMcfB9JI2e5Z
	o6lwD3QGC91bozgBzhNbyUOvWUmkaoXTGapE6i30reF5HA5+VMjfpAqKOTJ/6cQbG6KKDuqlFPcic
	RwSemDV7UG/B1QnxK91UfdEYTOWioyi2P1h29jCA2tGDNVQMY/+nf9IgUfc8ww2KaYFzKhCHl9hIt
	+ueZ4oJQcW3TZ1c7OeqcNE5dKRnRohkNHPfIE5UtZPNbCWaCkAg+KexqRweZARZyjp1MzDHPBUOXQ
	9e0mGZ6tec4kgF6Xt0xTzzNioxUdF1HucywaQM2O7F2XiVg6m/bBKOqjNBHPBeJrZrx5EygoosOn5
	xC8M70LQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZOu4-00000003qTV-2nuF;
	Thu, 01 Aug 2024 06:03:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZOu0-00000003qQC-381F
	for barebox@lists.infradead.org;
	Thu, 01 Aug 2024 06:03:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sZOtz-0001HN-KQ; Thu, 01 Aug 2024 08:03:03 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sZOtz-003hWv-7A; Thu, 01 Aug 2024 08:03:03 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sZOol-00DNum-15;
	Thu, 01 Aug 2024 07:57:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  1 Aug 2024 07:57:36 +0200
Message-Id: <20240801055737.3190132-19-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240801055737.3190132-1-s.hauer@pengutronix.de>
References: <20240801055737.3190132-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_230304_808985_8FA6D0DE 
X-CRM114-Status: GOOD (  13.32  )
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
Subject: [PATCH v2 18/19] crypto: make RSA a visible option
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With upcoming ECDSA support RSA won't be the only option for FIT image
verification anymore. Make CONFIG_CRYPTO_RSA visible so that the user
can choose. CONFIG_CRYPTO_RSA defaults to yes when FITIMAGE_SIGNATURE
is selected so that existing configs continue to work.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Kconfig     | 1 -
 common/image-fit.c | 5 +++++
 crypto/Kconfig     | 3 ++-
 3 files changed, 7 insertions(+), 2 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index 31360892ae..65850f68bd 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -59,7 +59,6 @@ config FITIMAGE
 	select DIGEST
 
 config FITIMAGE_SIGNATURE
-	select CRYPTO_RSA
 	bool
 
 config LOGBUF
diff --git a/common/image-fit.c b/common/image-fit.c
index 4a69049abc..6002440e7e 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -262,6 +262,11 @@ static int fit_check_rsa_signature(struct device_node *sig_node,
 	const char *sig_value;
 	int ret;
 
+	if (!IS_ENABLED(CONFIG_CRYPTO_RSA)) {
+		pr_err("RSA support is disabled, Cannot verify image\n");
+		return -EOPNOTSUPP;
+	}
+
 	sig_value = of_get_property(sig_node, "value", &sig_len);
 	if (!sig_value) {
 		pr_err("signature value not found in %pOF\n", sig_node);
diff --git a/crypto/Kconfig b/crypto/Kconfig
index eeacd9ffb7..22faff5100 100644
--- a/crypto/Kconfig
+++ b/crypto/Kconfig
@@ -116,7 +116,8 @@ config CRYPTO_PBKDF2
 	bool
 
 config CRYPTO_RSA
-	bool
+	bool "RSA support"
+	default y if FITIMAGE_SIGNATURE
 
 config CRYPTO_RSA_BUILTIN_KEYS
 	bool
-- 
2.39.2



