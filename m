Delivery-date: Thu, 17 Apr 2025 08:24:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u5Ifb-001lXA-2G
	for lore@lore.pengutronix.de;
	Thu, 17 Apr 2025 08:24:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u5Ifb-0003je-5Z
	for lore@pengutronix.de; Thu, 17 Apr 2025 08:24:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=M5sxtUn17vGf+xx9R28Ql3G9Ww2GaPxfOQyg8uCM48c=; b=IiHzqz45nF7f6bNn2t2dd8RiPp
	F7Lu6ry5ZxWaflYAmbzSdZDyDbBOvUVv+KzctysTYunBRMcTqwGQlTcKZJuEnFkbgMG+s3uBfZVY8
	ARrK04cQx6P1Ra9hEHeqjJTQhcGHtBbjqia+sxuo6CAqSK3YA5X2Kpmcl4n4KQi1/FR9eRQqbXn2g
	tCNvSB7lhQyY3+Zl0EFcuI69mBJS+GdchjuX8a90LbxD9IfrCgzGLLfBih3Eaavl8/10kuIh2129Z
	z+rcbPmQ0/wtB41Rk9eGQWAqHcnmr1zIngxILY2lkLdp0pAVZnmuk4a8vCFCLdkMfqoR/JgLTddry
	XKuQTBnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5IfC-0000000BtZ7-3tnr;
	Thu, 17 Apr 2025 06:23:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5IfA-0000000BtY3-09xM
	for barebox@lists.infradead.org;
	Thu, 17 Apr 2025 06:23:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u5If8-0003Sf-Mw; Thu, 17 Apr 2025 08:23:50 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u5If8-000hns-1h;
	Thu, 17 Apr 2025 08:23:50 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u5If8-00EOZ5-1O;
	Thu, 17 Apr 2025 08:23:50 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 17 Apr 2025 08:23:49 +0200
Message-Id: <20250417062349.3430967-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250416_232352_077281_856AE5AC 
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
Subject: [PATCH master] lib: select HAS_INSECURE_DEFAULTS from ALLOW_PRNG_FALLBACK
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

PRNG fallback inside get_crypto_bytes is only useful for debugging
and a really bad idea in production. We already warn about this at
runtime, but let's make sure it's directly evident in the config as
well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 lib/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/lib/Kconfig b/lib/Kconfig
index 8e1d8086fbb6..0cb3a136b38e 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -139,6 +139,7 @@ config RATP
 
 config ALLOW_PRNG_FALLBACK
 	bool "Allow fallback to PRNG if HWRNG not available."
+	select HAS_INSECURE_DEFAULTS
 	help
 	  WARNING: it is not secure!!
 
-- 
2.39.5



