Delivery-date: Mon, 23 Oct 2023 10:18:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1quq9B-0011NA-8i
	for lore@lore.pengutronix.de; Mon, 23 Oct 2023 10:18:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1quq99-0007fS-GW
	for lore@pengutronix.de; Mon, 23 Oct 2023 10:18:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=oXY1CdGVqTiG5HXk5TcIXmBeBtPbZQYuffWZOp+mxMA=; b=c4dU6ko0IxD4iz8EEJ9onzqAuS
	qqI9Ht9n+Jkq4wldgvLS4wtlK6WC+/EeSu+WDvo7fgMmj6WOCkwI0Xs5xfInsbJYDuMNuDdqbSIs+
	MnaxBVo1LFb1Gl+50s+wnsEo1WOtF12to2N9gBaZbbQDZ2uQeuRuu024yJvkM4IiJ45+ka4vEHALy
	MDjmfSL3kWpNWOp0RwXU6HK/vpa75gt5qOc/2ytRnZIn5O3Ps9aOlzb/t2Oz0pIAfe6fHTRCWzpkT
	h0k8MDxlgH1Bmg21WaqBfzmBLT9XogX/hlFbtZNrxAbknFFGJvdLnsGzlvX7T88wdCHkTUZOfg/tS
	DBbiwDuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1quq7i-006jIY-2b;
	Mon, 23 Oct 2023 08:17:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1quq7e-006jGo-29
	for barebox@lists.infradead.org;
	Mon, 23 Oct 2023 08:17:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1quq7X-0007Ng-2d; Mon, 23 Oct 2023 10:17:07 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1quq7W-003fCY-Ma; Mon, 23 Oct 2023 10:17:06 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1quq7W-00FROT-24;
	Mon, 23 Oct 2023 10:17:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 23 Oct 2023 10:17:06 +0200
Message-Id: <20231023081706.3680052-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231023_011714_700568_A575B261 
X-CRM114-Status: UNSURE (   9.64  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: remove remaining occurences of CONFIG_MMU_EARLY
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

CONFIG_MMU_EARLY has been removed. Remove the remaining occurences of
this option.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/am35xx_pfc200_xload_defconfig | 1 -
 arch/arm/configs/rpi_v8a_defconfig             | 1 -
 arch/arm/mach-bcm283x/Kconfig                  | 2 --
 3 files changed, 4 deletions(-)

diff --git a/arch/arm/configs/am35xx_pfc200_xload_defconfig b/arch/arm/configs/am35xx_pfc200_xload_defconfig
index 73888fd7b4..a69d4c9fbc 100644
--- a/arch/arm/configs/am35xx_pfc200_xload_defconfig
+++ b/arch/arm/configs/am35xx_pfc200_xload_defconfig
@@ -6,7 +6,6 @@ CONFIG_THUMB2_BAREBOX=y
 # CONFIG_ARM_EXCEPTIONS is not set
 # CONFIG_MEMINFO is not set
 CONFIG_MMU=y
-# CONFIG_MMU_EARLY is not set
 CONFIG_STACK_SIZE=0xc00
 CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_DUMMY=y
diff --git a/arch/arm/configs/rpi_v8a_defconfig b/arch/arm/configs/rpi_v8a_defconfig
index 75f62ddb65..39754f025e 100644
--- a/arch/arm/configs/rpi_v8a_defconfig
+++ b/arch/arm/configs/rpi_v8a_defconfig
@@ -5,7 +5,6 @@ CONFIG_MACH_RPI4=y
 CONFIG_64BIT=y
 CONFIG_IMAGE_COMPRESSION_NONE=y
 CONFIG_MMU=y
-# CONFIG_MMU_EARLY is not set
 CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_TLSF=y
 CONFIG_KALLSYMS=y
diff --git a/arch/arm/mach-bcm283x/Kconfig b/arch/arm/mach-bcm283x/Kconfig
index 48209fb5c6..f7434d2f5c 100644
--- a/arch/arm/mach-bcm283x/Kconfig
+++ b/arch/arm/mach-bcm283x/Kconfig
@@ -41,13 +41,11 @@ config MACH_RPI3
 	bool "RaspberryPi 3 (BCM2837/CORTEX-A53)"
 	select MACH_RPI_AARCH_32_64
 	select MACH_RPI_COMMON
-	depends on 32BIT || (64BIT && !MMU_EARLY)
 
 config MACH_RPI_CM3
 	bool "RaspberryPi Compute Module 3 (BCM2837/CORTEX-A53)"
 	select MACH_RPI_AARCH_32_64
 	select MACH_RPI_COMMON
-	depends on 32BIT || (64BIT && !MMU_EARLY)
 
 config MACH_RPI4
 	bool "RaspberryPi 4 (BCM2711/CORTEX-A72)"
-- 
2.39.2



