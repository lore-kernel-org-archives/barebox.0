Delivery-date: Mon, 08 Aug 2022 08:22:00 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oKw9G-00Fpzi-IN
	for lore@lore.pengutronix.de; Mon, 08 Aug 2022 08:22:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oKw9H-0004xF-FM
	for lore@pengutronix.de; Mon, 08 Aug 2022 08:22:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KPvqd73Qoemgnx+RAifOzAkD0/bEWH6kBacitY//hHs=; b=JcRP4bFjADyNUpzx8sz3kLDhO3
	9dSSSyxPkRL1sMuIoH0RHsUnn3TNgiM5Y3IfFAK4FkXPYzutCZKYuvj0WncCUfWC0ZDZGVkvZXmp6
	U+2nAPYPUG81tz+JXVbI4j07YMCGABgxGvuzXyKdUwJKe6hWLxjcDxNxEOOIig4NZZ58yH4i3RedA
	3EpvVy0yljTYX8MPEg3vh8oV9NnjWhzyyDvkOaJZz0DyggYx6gm8rk+P/NLP7J/HFj6G7bn+8H1cK
	XgGzu3aSchjTxzcwv9UPR76qkPmeQtHTrBfqvlZ7dgQi1X8rIjcWsoo2jNXYZb9TvVA79cxvnBzxO
	JXDIvZbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oKw7o-00BgWk-8z; Mon, 08 Aug 2022 06:20:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oKw7i-00BgSf-7D
	for barebox@lists.infradead.org; Mon, 08 Aug 2022 06:20:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oKw7Z-0004Qg-0Q; Mon, 08 Aug 2022 08:20:13 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oKw7V-002RhR-Uf; Mon, 08 Aug 2022 08:20:12 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oKw7X-001db1-F4; Mon, 08 Aug 2022 08:20:11 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  8 Aug 2022 08:20:10 +0200
Message-Id: <20220808062010.390394-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220808062010.390394-1-a.fatoum@pengutronix.de>
References: <20220808062010.390394-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220807_232022_284740_4BDE6572 
X-CRM114-Status: GOOD (  10.57  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master 3/3] crypto: restrict digest algos implemented in ARM assembly to 32-bit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

These digest implementations are only built per arch/arm/Makefile when
!CONFIG_CPU_V8, so disallow selecting them when barebox is built
for 64-bit ARM.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 crypto/Kconfig | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/crypto/Kconfig b/crypto/Kconfig
index a2e03ae1096e..f32accb3d090 100644
--- a/crypto/Kconfig
+++ b/crypto/Kconfig
@@ -71,7 +71,7 @@ config DIGEST_HMAC_GENERIC
 
 config DIGEST_SHA1_ARM
 	tristate "SHA1 digest algorithm (ARM-asm)"
-	depends on ARM
+	depends on ARM && !CPU_V8
 	select HAVE_DIGEST_SHA1
 	help
 	  SHA-1 secure hash standard (FIPS 180-1/DFIPS 180-2) implemented
@@ -79,7 +79,7 @@ config DIGEST_SHA1_ARM
 
 config DIGEST_SHA256_ARM
 	tristate "SHA-224/256 digest algorithm (ARM-asm and NEON)"
-	depends on ARM
+	depends on ARM && !CPU_V8
 	select HAVE_DIGEST_SHA256
 	select HAVE_DIGEST_SHA224
 	help
-- 
2.30.2



