Delivery-date: Thu, 05 May 2022 10:04:25 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmWTJ-002UXU-PE
	for lore@lore.pengutronix.de; Thu, 05 May 2022 10:04:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmWTG-0008Ct-Oc
	for lore@pengutronix.de; Thu, 05 May 2022 10:04:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mq1ByGhxP0NPVtU+N4+TJ0oGcM4uUTSQmqNLLR9AATw=; b=S6IjEtVVmlkryE
	Ae5CIBluM2KLI4qRQZuSep+/Ivl4uEMbpHvllcIwEocL3xa+uLsx3EUyM6gXL52+xKFKrG72dlRYL
	VkoeEFVftUYnyhPLiL/INzvnFkLeBOgMP5SAP5BzZUFLwgHzmZ5uFFWgD8/rL2atQnmfL+p00BWTn
	UsdMdvEh7R9g2x1DuDJq6Wa0anrW0EUOjbX3LlQKAhPfqUUgj/NyCy8xb7crDS+W39OHDSEl0a3KM
	eoB9GqSSxMeAVcwGfmnlcT//ps42Hvz8Ou/nvKc99j1LC4CG1cSwQafDoq2eSLXTa71P9U2/LzhSa
	2tXXdqrtKOA9jJar3cMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmWRl-00EX79-Le; Thu, 05 May 2022 08:02:49 +0000
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmWR5-00EWcB-GD
 for barebox@lists.infradead.org; Thu, 05 May 2022 08:02:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nmWQz-0006vo-MA; Thu, 05 May 2022 10:02:01 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nmWR0-000TOr-1T; Thu, 05 May 2022 10:02:00 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nmWQv-004hau-CX; Thu, 05 May 2022 10:01:57 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ukl@pengutronix.de, =?UTF-8?q?Daniel=20Br=C3=A1t?= <danek.brat@gmail.com>,
 ore@pengutronix.de, Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  5 May 2022 10:01:43 +0200
Message-Id: <20220505080152.1068424-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220505080152.1068424-1-a.fatoum@pengutronix.de>
References: <20220505080152.1068424-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220505_010207_622956_FFDFFC7B 
X-CRM114-Status: UNSURE (   8.42  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 06/15] ARM: rpi: rpi3: disallow MMU_EARLY && 64BIT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Early MMU setup in 64-bit Raspberry Pi 3 barebox hangs, while normal
setup concludes normally. Until this is figured out, disallow build
of 64-Bit Raspberry Pi 3 support while CONFIG_MMU_EARLY=y.

This issue doesn't affect the Raspberry Pi 4.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-bcm283x/Kconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/mach-bcm283x/Kconfig b/arch/arm/mach-bcm283x/Kconfig
index 4ffaef694d2f..535af3300fe2 100644
--- a/arch/arm/mach-bcm283x/Kconfig
+++ b/arch/arm/mach-bcm283x/Kconfig
@@ -40,11 +40,13 @@ config MACH_RPI3
 	bool "RaspberryPi 3 (BCM2837/CORTEX-A53)"
 	select MACH_RPI_AARCH_32_64
 	select MACH_RPI_COMMON
+	depends on 32BIT || (64BIT && !MMU_EARLY)
 
 config MACH_RPI_CM3
 	bool "RaspberryPi Compute Module 3 (BCM2837/CORTEX-A53)"
 	select MACH_RPI_AARCH_32_64
 	select MACH_RPI_COMMON
+	depends on 32BIT || (64BIT && !MMU_EARLY)
 
 endmenu
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

