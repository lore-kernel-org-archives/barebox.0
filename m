Delivery-date: Thu, 09 Jun 2022 08:01:08 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzBEC-008S13-Oc
	for lore@lore.pengutronix.de; Thu, 09 Jun 2022 08:01:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzBEB-0000fX-4h
	for lore@pengutronix.de; Thu, 09 Jun 2022 08:01:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0MSsE13ulnyvXn5rS6WQQICs/F0AKPvzBr//N8+t0/o=; b=juLvUgax8HG3sV
	anjusiVuiwdsV9B56NWzwEFk5SnKhyC+bgKk8vJELI6WGGDUNdR5pNSw47bOFlEttpTqTIFmMza4b
	ctyG3HioFqqmGvJmBUIuNLjVpn4+rLfFh1eOGwQUIf2SfKlhL4l9FzwkI22FuCwl1sPfiNei6VKDr
	NWFICkjo5uNrRsD4wtibf38lEECPQQEnerLkqbmZONa5A9qZwg6bEjAq39Uq9FVU4qpzglrMzMvvS
	eE4CaQ+3yxViDzxitTpSaW1GSRXWJe4bqBTcEUjCK3XyjPfDBIjdHMmmCtyfT0cefobCzS/z2KU3X
	wNYYcbH5QQCrettzPspw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzBCq-00GvAD-Mc; Thu, 09 Jun 2022 05:59:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzBCZ-00Guyo-Hm
	for barebox@lists.infradead.org; Thu, 09 Jun 2022 05:59:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1nzBCY-0008GM-BA; Thu, 09 Jun 2022 07:59:26 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nzBCY-007K93-PT; Thu, 09 Jun 2022 07:59:25 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nzBCV-002na6-D8; Thu, 09 Jun 2022 07:59:23 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  9 Jun 2022 07:59:15 +0200
Message-Id: <20220609055922.667016-15-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220609055922.667016-1-a.fatoum@pengutronix.de>
References: <20220609055922.667016-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220608_225927_625833_FD1E11EA 
X-CRM114-Status: UNSURE (   8.57  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 14/21] ARM: rpi: rpi3: disallow MMU_EARLY && 64BIT
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
index af34d1c973e1..38006424400e 100644
--- a/arch/arm/mach-bcm283x/Kconfig
+++ b/arch/arm/mach-bcm283x/Kconfig
@@ -41,11 +41,13 @@ config MACH_RPI3
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

