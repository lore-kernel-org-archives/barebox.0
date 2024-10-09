Delivery-date: Wed, 09 Oct 2024 16:11:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1syXPo-002Fs8-1R
	for lore@lore.pengutronix.de;
	Wed, 09 Oct 2024 16:11:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1syXPn-0004CH-RM
	for lore@pengutronix.de; Wed, 09 Oct 2024 16:11:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7+5zNM0MakAmm79GBpxaL3/jCPkf/FvlxpQjdsNeexI=; b=EB9CAVESbI/bymFBszPFuCt9Xi
	CcAus9/4jehA1MVthYbMq4LoXS+MKyBm/jnGITDlX0jiUR0wNKJ+DLXIwX9YMuds7ffHo6ES1bxE7
	W5skQJjkM5FipXNH4tC5c2SNOsdx4VSw4qZuNzQ5wu69P7xi1MKgBCqMShWuNDFZfIqWJQUk8NgTZ
	8Kf91McAmmK5OeERljywU6Cf1LqEMjx/4spxcYjwPbyvUAeWOEebGC+CWOPjApOiH12kEBGdgDrvy
	eVvniQKhLuVsEYP+pqC3gyFrGbQYZsYjJa1juhiYTpXpi2K5Ef0lD99J5GDojSZLHMssKL1d4kUto
	u1K9QPkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syXPD-00000009XNy-3amQ;
	Wed, 09 Oct 2024 14:11:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syXGK-00000009VgF-02YR
	for barebox@lists.infradead.org;
	Wed, 09 Oct 2024 14:02:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1syXGH-0002qf-2H; Wed, 09 Oct 2024 16:01:57 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1syXGG-000cNS-Lu; Wed, 09 Oct 2024 16:01:56 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1syXGG-008Mdc-1v;
	Wed, 09 Oct 2024 16:01:56 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  9 Oct 2024 16:01:50 +0200
Message-Id: <20241009140155.1990882-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241009140155.1990882-1-a.fatoum@pengutronix.de>
References: <20241009140155.1990882-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241009_070200_153457_D6C54EF1 
X-CRM114-Status: UNSURE (   7.83  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/6] crypto: reorder ECDSA Kconfig entries
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

barebox now supports two signature algorithms and it makes sense to
group them together in the Kconfig and not have other options like
KEYSTORE or JWT between them.

No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 crypto/Kconfig | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/crypto/Kconfig b/crypto/Kconfig
index 45011802e360..191bd5102627 100644
--- a/crypto/Kconfig
+++ b/crypto/Kconfig
@@ -115,10 +115,17 @@ config CRYPTO_PBKDF2
 	select DIGEST_HMAC_GENERIC
 	bool
 
+config CRYPTO_ECC
+	bool
+
 config CRYPTO_RSA
 	bool "RSA support"
 	default y if FITIMAGE_SIGNATURE
 
+config CRYPTO_ECDSA
+	bool "ECDSA support"
+	select CRYPTO_ECC
+
 config CRYPTO_BUILTIN_KEYS
 	bool "builtin keys"
 	select KEYTOC
@@ -149,11 +156,4 @@ config JWT
 	select BASE64
 	select CRYPTO_RSA
 
-config CRYPTO_ECC
-	bool
-
-config CRYPTO_ECDSA
-	bool "ECDSA support"
-	select CRYPTO_ECC
-
 endmenu
-- 
2.39.5



