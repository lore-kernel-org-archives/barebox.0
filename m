Delivery-date: Fri, 19 May 2023 10:41:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzvfw-006TWS-Bl
	for lore@lore.pengutronix.de; Fri, 19 May 2023 10:41:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzvfu-0001n8-24
	for lore@pengutronix.de; Fri, 19 May 2023 10:41:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LBonuCHV0IULu8a+ZaaFAQf8j28Yw/CbuqLpPKvxcMw=; b=PuGeCDGMfo33R+
	4pp4BY1BHjbRJRAgWKsm9N7ieq4uRof1FtkYwIW9MfOa2nvZnw1HISqHeudIQRnF/PHBJz3MRhLP/
	i/Tq4kxgkrbuWIroYFD/4RzhHaqEHgblFQfcY190gGxzCJB4/y+wVGwwWZn/2CXOWpNR0KgUevRuk
	4aO3oWDvVJtKH9Kcm4AASB9Sght/RaFwoSB3tXkIKEmel2EQBnz2/H20h1tL/XdL1EDvA67FGYrnD
	ixrk5jTrewK0BGhFIp2fV0pk2eHv9WcqbIH9hxOTZ5Ze22ECWDyE/9TgE6nrj8Flnm2XLgKk7gOUW
	6nAwep44/4Nj1mT8wB7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzver-00FYS4-1w;
	Fri, 19 May 2023 08:40:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzveo-00FYQ9-1D
	for barebox@lists.infradead.org;
	Fri, 19 May 2023 08:40:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pzvem-0001QC-H3; Fri, 19 May 2023 10:40:12 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pzvel-001Gsf-Tc; Fri, 19 May 2023 10:40:11 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pzvel-009seW-95; Fri, 19 May 2023 10:40:11 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 19 May 2023 10:40:09 +0200
Message-Id: <20230519084009.2355024-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230519_014014_420824_29D87F36 
X-CRM114-Status: UNSURE (   8.78  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] fixup! net: dsa: realtek: fix Kconfig selects
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

net: dsa: realtek: drop select of undefined REGMAP option

Regmap support is available unconditionally in barebox and is only
removed by linker garbage collection, unlike the kernel.

Reported-by: Antony Pavlov <antonynpavlov@gmail.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/realtek-dsa/Kconfig | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/net/realtek-dsa/Kconfig b/drivers/net/realtek-dsa/Kconfig
index 0708f1ef96f4..f9404e0265ee 100644
--- a/drivers/net/realtek-dsa/Kconfig
+++ b/drivers/net/realtek-dsa/Kconfig
@@ -4,7 +4,6 @@ menuconfig DRIVER_NET_DSA_REALTEK
 	depends on DSA
 	select PHYLIB
 	select REALTEK_PHY
-	select REGMAP
 	help
 	  Select to enable support for Realtek Ethernet switch chips.
 
-- 
2.39.2



