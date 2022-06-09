Delivery-date: Thu, 09 Jun 2022 08:01:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzBE8-008S0X-VD
	for lore@lore.pengutronix.de; Thu, 09 Jun 2022 08:01:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzBE4-0000c2-RM
	for lore@pengutronix.de; Thu, 09 Jun 2022 08:01:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OIVRT8SPIuSsTjL2JJeDj/7rolgZcNzk+7Q3pf/0U/Q=; b=eMcd+wxcNrZ9Cs
	FA+iBZvrdC7j3IjK5YRUDq8BS09y6XTvX7kryDHTEJqXCQh5KyEPuVkm0pHEGBWRbm4ARInWsgj5h
	pW8ygEgAwCWz70/S/ilOixsduePZNnR+9Jm2YJsR3YMSk5pyPK9L54A2Ixewhy+oKgoMf/nLHdZlE
	MQOd8A3gHmloAe+z/RyknALzApBJGgKJcOpiurL6NDh220gwZBX0aVOuQ9a14989z/5kPGxraGUqQ
	xzqy+WrCYIqq5AoHauxvBOXQ5pwxrmCNbAp3TiFPciXY+M5fdS8Sds4HjqNNFl9LUKvh+IMG9Tnpy
	B1/u2W30DWJ5ULncvOyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzBCl-00Gv7j-CD; Thu, 09 Jun 2022 05:59:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzBCZ-00Guyr-MR
	for barebox@lists.infradead.org; Thu, 09 Jun 2022 05:59:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1nzBCY-0008Ga-Gj; Thu, 09 Jun 2022 07:59:26 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nzBCZ-007K9A-0A; Thu, 09 Jun 2022 07:59:25 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nzBCV-002na0-Cb; Thu, 09 Jun 2022 07:59:23 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  9 Jun 2022 07:59:13 +0200
Message-Id: <20220609055922.667016-13-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220609055922.667016-1-a.fatoum@pengutronix.de>
References: <20220609055922.667016-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220608_225927_765040_FEEC2FF9 
X-CRM114-Status: UNSURE (   9.44  )
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
Subject: [PATCH v2 12/21] ARM: cpu: remove unused SYS_SUPPORTS_32BIT_KERNEL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This symbol only serves hiding CONFIG_32BIT and was so far not set
anywhere, so just drop it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/Kconfig     | 2 +-
 arch/arm/cpu/Kconfig | 3 ---
 2 files changed, 1 insertion(+), 4 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 7c6b65ae4db6..03a7e4b6600c 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -397,7 +397,7 @@ choice
 
 config 32BIT
 	bool "32-bit barebox"
-	depends on CPU_SUPPORTS_32BIT_KERNEL && SYS_SUPPORTS_32BIT_KERNEL
+	depends on CPU_SUPPORTS_32BIT_KERNEL
 	help
 	  Select this option if you want to build a 32-bit barebox.
 
diff --git a/arch/arm/cpu/Kconfig b/arch/arm/cpu/Kconfig
index f3cf2750e9af..9b5a833abfff 100644
--- a/arch/arm/cpu/Kconfig
+++ b/arch/arm/cpu/Kconfig
@@ -155,9 +155,6 @@ config CACHE_L2X0
 	bool "Enable L2x0 PrimeCell"
 	depends on MMU && ARCH_HAS_L2X0
 
-config SYS_SUPPORTS_32BIT_KERNEL
-	bool
-
 config CPU_SUPPORTS_32BIT_KERNEL
 	bool
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

