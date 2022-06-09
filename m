Delivery-date: Thu, 09 Jun 2022 08:01:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzBEI-008S1X-5V
	for lore@lore.pengutronix.de; Thu, 09 Jun 2022 08:01:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzBEF-0000hM-Es
	for lore@pengutronix.de; Thu, 09 Jun 2022 08:01:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ihhqgo/xorBQWfUl7WjZrC6oYe28Y79IJe4o8ZfG8BQ=; b=FBWOR+vN6dxB0+
	7vddwUld2rPCZ3D9VRV3JPt3C1jJHV38D3l9G/cnuiR4oSWNCL/eYzaI0tnfJubVr0wJVtLFTwML5
	Ja9BoCQpWdNpVOI5vWb6iIx1zYqtGKqQqb7Pzpcyy3S6ooehiZZPDVpIeDQH0tnkuV1z0IrU1Aewy
	UwaRst0wzYNkqHv1DwcMB76foAkhtlVGOy+vf5r6uq2Y+yLV8BurVU5DJpQ+TVETP/RBVlqAJmp2U
	xQ4Zgs2gajxQtdyrI9D9bxSdcKsoGAmf7xAYb1k2TgWDtBC8FLRLYHYOMzp6zjzC/wITIlftBFq6u
	GdO4tBeZt/J1iywYRUrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzBCu-00GvBK-Fn; Thu, 09 Jun 2022 05:59:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzBCZ-00Guyp-IU
	for barebox@lists.infradead.org; Thu, 09 Jun 2022 05:59:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1nzBCY-0008GN-Bt; Thu, 09 Jun 2022 07:59:26 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nzBCY-007K96-Ry; Thu, 09 Jun 2022 07:59:25 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nzBCV-002nZx-CL; Thu, 09 Jun 2022 07:59:23 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  9 Jun 2022 07:59:12 +0200
Message-Id: <20220609055922.667016-12-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220609055922.667016-1-a.fatoum@pengutronix.de>
References: <20220609055922.667016-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220608_225927_652949_0C94BDC7 
X-CRM114-Status: UNSURE (   9.60  )
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
Subject: [PATCH v2 11/21] ARM: cpu: remove unnecessary CONFIG_SYS_SUPPORTS_64BIT_KERNEL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

For ARM, SYS_SUPPORTS_64BIT_KERNEL is selected exclusively by symbols
that also select CPU_SUPPORTS_64BIT_KERNEL, so we can drop
SYS_SUPPORTS_64BIT_KERNEL safely.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/Kconfig                 | 4 +---
 arch/arm/cpu/Kconfig             | 3 ---
 arch/arm/mach-imx/Kconfig        | 1 -
 arch/arm/mach-layerscape/Kconfig | 1 -
 arch/arm/mach-rockchip/Kconfig   | 1 -
 5 files changed, 1 insertion(+), 9 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 215abd19b553..7c6b65ae4db6 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -277,7 +277,6 @@ config ARCH_ZYNQMP
 	select OFTREE
 	select RELOCATABLE
 	select CPU_SUPPORTS_64BIT_KERNEL
-	select SYS_SUPPORTS_64BIT_KERNEL
 	select HAS_MACB
 
 config ARCH_ARM64_VIRT
@@ -288,7 +287,6 @@ config ARCH_ARM64_VIRT
 	select OFTREE
 	select RELOCATABLE
 	select CPU_SUPPORTS_64BIT_KERNEL
-	select SYS_SUPPORTS_64BIT_KERNEL
 	select ARM_AMBA
 	select BOARD_ARM_VIRT
 	select HW_HAS_PCI
@@ -405,7 +403,7 @@ config 32BIT
 
 config 64BIT
 	bool "64-bit barebox"
-	depends on CPU_SUPPORTS_64BIT_KERNEL && SYS_SUPPORTS_64BIT_KERNEL
+	depends on CPU_SUPPORTS_64BIT_KERNEL
 	select ARCH_DMA_ADDR_T_64BIT
 	help
 	  Select this option if you want to build a 64-bit barebox.
diff --git a/arch/arm/cpu/Kconfig b/arch/arm/cpu/Kconfig
index 5639d1eeffc3..f3cf2750e9af 100644
--- a/arch/arm/cpu/Kconfig
+++ b/arch/arm/cpu/Kconfig
@@ -158,9 +158,6 @@ config CACHE_L2X0
 config SYS_SUPPORTS_32BIT_KERNEL
 	bool
 
-config SYS_SUPPORTS_64BIT_KERNEL
-	bool
-
 config CPU_SUPPORTS_32BIT_KERNEL
 	bool
 
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 9b9f5a472ef9..9ff549ac8397 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -178,7 +178,6 @@ config ARCH_IMX8M
 	select PINCTRL_IMX_IOMUX_V3
 	select OFTREE
 	select CPU_SUPPORTS_64BIT_KERNEL
-	select SYS_SUPPORTS_64BIT_KERNEL
 	select COMMON_CLK_OF_PROVIDER
 	select ARCH_HAS_FEC_IMX
 	select HW_HAS_PCI
diff --git a/arch/arm/mach-layerscape/Kconfig b/arch/arm/mach-layerscape/Kconfig
index 9ad58eba5575..943a47480830 100644
--- a/arch/arm/mach-layerscape/Kconfig
+++ b/arch/arm/mach-layerscape/Kconfig
@@ -18,7 +18,6 @@ config ARCH_LAYERSCAPE_PPA
 config ARCH_LS1046
 	select CPU_V8
 	select CPU_SUPPORTS_64BIT_KERNEL
-	select SYS_SUPPORTS_64BIT_KERNEL
 	bool
 
 config MACH_LS1046ARDB
diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
index e09c4837d59d..1f3ba706ee9f 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -31,7 +31,6 @@ config ARCH_ROCKCHIP_V8
 	bool
 	select CPU_V8
 	select CPU_SUPPORTS_64BIT_KERNEL
-	select SYS_SUPPORTS_64BIT_KERNEL
 	select ARM_ATF
 	select RELOCATABLE
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

