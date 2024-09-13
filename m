Delivery-date: Fri, 13 Sep 2024 10:28:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sp1f9-0043XK-0v
	for lore@lore.pengutronix.de;
	Fri, 13 Sep 2024 10:28:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sp1f7-0001Cr-AY
	for lore@pengutronix.de; Fri, 13 Sep 2024 10:28:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iiIMPjK8P5WHwHsXkHtV7uljGlrSAPIv05pkkrRJRdU=; b=dzsqKUuQIY52Yp
	UQUwomRyssW7+E/Xvv3IRLqCrLm0aIHg1emUmU3d63kBD8zZaaD/XxBCl8j2OsDm+uVRWMH94yNQV
	zXHGxm6+WMi5lCVL/MgZI/0+YmG4fsZ4t+sULe6+IGCTR9dhSsd++jSz0/odkNdT6IXXpmypv6tP5
	aZHAZesaVtvuJJk5aRClctm+g5LujpNooo54CRDFelY6FXZanWnVggfJhq9XC4/WounLtutipfXMV
	6sDVxcda9U01IqBhA7ANGEA4Ab+e+ew4TrIvOom7GEAkju+vQXjqtMRxGnaq1ycn0tGLWce6tXMeM
	aFIwzuWGNB6MkvPzwDsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp1ee-0000000FKcj-3uxH;
	Fri, 13 Sep 2024 08:27:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp1eY-0000000FKZg-2RPU
	for barebox@lists.infradead.org;
	Fri, 13 Sep 2024 08:27:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sp1eW-0000of-Sr; Fri, 13 Sep 2024 10:27:40 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sp1eW-007ZzT-Fp; Fri, 13 Sep 2024 10:27:40 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sp1DC-006w1Z-1c;
	Fri, 13 Sep 2024 09:59:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 13 Sep 2024 09:59:24 +0200
Message-Id: <20240913075924.1652866-17-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240913075924.1652866-1-s.hauer@pengutronix.de>
References: <20240913075924.1652866-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240913_012742_665916_8997C68F 
X-CRM114-Status: GOOD (  10.25  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
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
Subject: [PATCH v4 16/16] crypto: make RSA a visible option
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With ECDSA support RSA is no longer the only option for FIT image
verification. Make CONFIG_CRYPTO_RSA visible so that the user can
choose. CONFIG_CRYPTO_RSA defaults to yes when FITIMAGE_SIGNATURE is
selected so that existing configs continue to work.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Kconfig | 1 -
 crypto/Kconfig | 3 ++-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index 4500feb66c..c925b1bd99 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -62,7 +62,6 @@ config FITIMAGE
 	select DIGEST
 
 config FITIMAGE_SIGNATURE
-	select CRYPTO_RSA
 	bool
 
 config LOGBUF
diff --git a/crypto/Kconfig b/crypto/Kconfig
index a90e3e1005..45011802e3 100644
--- a/crypto/Kconfig
+++ b/crypto/Kconfig
@@ -116,7 +116,8 @@ config CRYPTO_PBKDF2
 	bool
 
 config CRYPTO_RSA
-	bool
+	bool "RSA support"
+	default y if FITIMAGE_SIGNATURE
 
 config CRYPTO_BUILTIN_KEYS
 	bool "builtin keys"
-- 
2.39.2



