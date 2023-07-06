Delivery-date: Thu, 06 Jul 2023 10:12:57 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qHK6k-00HOsw-Lo
	for lore@lore.pengutronix.de; Thu, 06 Jul 2023 10:12:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qHK6i-00032H-43
	for lore@pengutronix.de; Thu, 06 Jul 2023 10:12:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=WiiIUiOXzNV+oKBITrD+3JuFDXSGNkjt67NUyUkKvtQ=; b=roziuXfQyQXnSGKlrH7hyHFwCU
	tuizLahkmxP48GPTmi9IxWvZiDsFrsaSXbwXZzTLoZtQwmVSRUXtQZWzpmhI90fpNRFWf2ObwK0iI
	56TJG3ciDo9IdWlOaoa901lVA/XL3hKfK7T0PyPwGZprN1Z1rOszhqqD5oTKSr/mFLZJENJTU5Gjp
	eI7IeOySYl9G6+fCSnYjwk8ArIXc92gEy9bqRv1IsBI5M3KKi2gDa2tHdMcBK96Vlb3kNQA2Ny10c
	b7NkZqIQOlGpp0zMmV9FIF25169BtLE62npyyaBPkxD3mQA7ioTxbxAYXyICxBUe7yK3XokhZvEkX
	nASR9klw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qHK5P-000uIX-2S;
	Thu, 06 Jul 2023 08:11:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qHK5M-000uGz-0t
	for barebox@lists.infradead.org;
	Thu, 06 Jul 2023 08:11:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1qHK5J-0002rM-OA; Thu, 06 Jul 2023 10:11:29 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1qHK5J-00CSi6-0p; Thu, 06 Jul 2023 10:11:29 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1qHK5I-003I9h-Cr; Thu, 06 Jul 2023 10:11:28 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu,  6 Jul 2023 10:11:24 +0200
Message-Id: <20230706081126.784759-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230706_011132_319691_4E599E12 
X-CRM114-Status: UNSURE (   8.76  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 1/3] ARM: at91: enable ddramc for sama5d3 and sama5d4
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

ddramc has already support for sama5d3 and sama5d4, so enable it
officially.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/mach-at91/Kconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index b803a1185d..349586b683 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -104,6 +104,7 @@ config SOC_SAMA5D3
 	select HAVE_AT91_UTMI
 	select PINCTRL_AT91
 	select HAS_MACB
+	select HAVE_AT91_DDRAMC
 
 config SOC_SAMA5D4
 	bool
@@ -116,6 +117,7 @@ config SOC_SAMA5D4
 	select HAVE_AT91_UTMI
 	select PINCTRL_AT91
 	select HAS_MACB
+	select HAVE_AT91_DDRAMC
 
 config SOC_SAM9X60
 	bool
-- 
2.39.2



