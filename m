Delivery-date: Wed, 09 Oct 2024 16:11:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1syXPo-002Frj-09
	for lore@lore.pengutronix.de;
	Wed, 09 Oct 2024 16:11:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1syXPn-0004Bl-F4
	for lore@pengutronix.de; Wed, 09 Oct 2024 16:11:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RyRmafJMnxpxYLrVq7dB31yqLkNZNOCmOzrd4NiStn8=; b=4UsOTBBMRCGboCHuUE4dT1HCaH
	qcRcfaGgk9IRRj5udpZrjcRjpoIBRKFPiSHcktQHYIO/44u1JQvRAXZgnfT7jDKJ9U/VVVrGP9aeo
	55NmrcnT90rzr7zEUyRTAFRyrl4fkXt3hdSFzeTVQwf6QbtvFq913EzH2iYz0NevTgILU10/kJJY3
	BZO/QTCyGh0GPCOw87PctFS2PWaRJah1oWCQ58UP0rBzBw4FwqG6n4/cz62TE2PwWvM5XQk9oPxpG
	OOCrnrwjHk5ieZt+DKfL6kPDUoInPSdvliSJVp321RtzDYyel8gDDiJXHcJ1vAQ6EdRv9YlKM6/3H
	0f1IpmEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syXPC-00000009XNJ-2MnY;
	Wed, 09 Oct 2024 14:11:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syXGI-00000009VfU-3G2x
	for barebox@lists.infradead.org;
	Wed, 09 Oct 2024 14:02:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1syXGH-0002qi-3u; Wed, 09 Oct 2024 16:01:57 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1syXGG-000cNV-NH; Wed, 09 Oct 2024 16:01:56 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1syXGG-008Mdc-24;
	Wed, 09 Oct 2024 16:01:56 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  9 Oct 2024 16:01:51 +0200
Message-Id: <20241009140155.1990882-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241009140155.1990882-1-a.fatoum@pengutronix.de>
References: <20241009140155.1990882-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241009_070158_964376_6AFC4A88 
X-CRM114-Status: UNSURE (   9.97  )
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
Subject: [PATCH 2/6] crypto: rsa: support RSA keys with CONFIG_CRYPTO_BUILTIN_KEYS disabled
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Enabling CONFIG_CRYPTO_RSA, but not CONFIG_CRYPTO_BUILTIN_KEYS currently
results in a linker error:

  crypto/rsa.c:484: undefined reference to `public_key_add'

Fix this by only calling public_key_add() if we have
CONFIG_CRYPTO_BUILTIN_KEYS=y. If that option is disabled, it means only
standalone keys can be used.

Fixes: 54caa724c737 ("crypto: add public_key functions")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 crypto/rsa.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/crypto/rsa.c b/crypto/rsa.c
index 04b6c9d8c729..d3a48b6809de 100644
--- a/crypto/rsa.c
+++ b/crypto/rsa.c
@@ -488,11 +488,12 @@ static void rsa_init_keys_of(void)
 	}
 }
 
-static int rsa_init_keys(void)
+static __maybe_unused int rsa_init_keys(void)
 {
 	rsa_init_keys_of();
 
 	return 0;
 }
-
+#ifdef CONFIG_CRYPTO_BUILTIN_KEYS
 device_initcall(rsa_init_keys);
+#endif
-- 
2.39.5



