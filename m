Delivery-date: Thu, 18 Jan 2024 10:08:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQOO4-0056Fi-0d
	for lore@lore.pengutronix.de;
	Thu, 18 Jan 2024 10:08:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQOO4-00018x-HX
	for lore@pengutronix.de; Thu, 18 Jan 2024 10:08:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ajYjXY3/H879RSd0hQ2lwopYBDBlulEdT7Mk5awj3iw=; b=MJehQ04/0qf1tYxToC4Ln5D/H5
	086bIUcj+9hkuIVyDJJm8PbD1sfgl1CRPKaVhiyn56kTgGSduU0l0Q7zImEq80zg5j/v7zCwwfn+J
	OoF1Y3m7H+qHkl0SsamBmcn+oxfux032DZGCl0TOrTbF6/wRFLGqKGRgg71emIpouA8TN1dpe+Pbw
	RRuC9MW4jjqvthn56DIo7d8GjQu/ZEFoy9UhhBWY0QAyyGu+fjkA+cBGM6vEg2uWuC/juvQXENrVB
	AvrBwkKTS8+LA9+qB79VnwEN76TGx/R/UI65Mn7jRx1gWBgECtW6o1fRSK1uesZWRz51vUjn/wcQH
	4p7FynVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQOMv-002E2T-2C;
	Thu, 18 Jan 2024 09:07:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQOMr-002E1d-37
	for barebox@lists.infradead.org;
	Thu, 18 Jan 2024 09:07:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rQOMq-0000wh-Lj; Thu, 18 Jan 2024 10:07:20 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rQOMq-000eOz-8y; Thu, 18 Jan 2024 10:07:20 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rQOMq-005Vsf-0b;
	Thu, 18 Jan 2024 10:07:20 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Jan 2024 10:07:18 +0100
Message-Id: <20240118090718.1314156-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240118090718.1314156-1-a.fatoum@pengutronix.de>
References: <20240118090718.1314156-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240118_010722_157164_54005FD2 
X-CRM114-Status: UNSURE (   9.47  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/2] clk: select CLKDEV_LOOKUP from COMMON_CLK
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

All platforms that select COMMON_CLK also select CLKDEV_LOOKUP,
therefore just select it in drivers/clk/Kconfig and drop the
CLKDEV_LOOKUP all over the place.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/Kconfig                | 14 --------------
 arch/arm/mach-imx/Kconfig       |  1 -
 arch/arm/mach-pxa/Kconfig       |  1 -
 arch/arm/mach-versatile/Kconfig |  1 -
 arch/arm/mach-zynq/Kconfig      |  1 -
 arch/kvx/Kconfig                |  1 -
 arch/mips/Kconfig               |  3 ---
 arch/riscv/Kconfig              |  1 -
 drivers/clk/Kconfig             |  1 +
 9 files changed, 1 insertion(+), 23 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 34415cd2cea0..86fc912ac49f 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -56,7 +56,6 @@ config ARCH_AT91
 config ARCH_CLPS711X
 	bool "Cirrus Logic EP711x/EP721x/EP731x"
 	depends on 32BIT
-	select CLKDEV_LOOKUP
 	select CLOCKSOURCE_CLPS711X
 	select COMMON_CLK
 	select COMMON_CLK_OF_PROVIDER
@@ -95,7 +94,6 @@ config ARCH_MVEBU
 	depends on 32BIT
 	select COMMON_CLK
 	select COMMON_CLK_OF_PROVIDER
-	select CLKDEV_LOOKUP
 	select GPIOLIB
 	select HAS_DEBUG_LL
 	select HAVE_PBL_MULTI_IMAGES
@@ -111,7 +109,6 @@ config ARCH_MXS
 	select GPIOLIB
 	select GENERIC_GPIO
 	select COMMON_CLK
-	select CLKDEV_LOOKUP
 	select HAS_DEBUG_LL
 	select HAVE_PBL_MULTI_IMAGES
 
@@ -141,7 +138,6 @@ config ARCH_SOCFPGA
 	select ARM_SMP_TWD
 	select CPU_V7
 	select COMMON_CLK
-	select CLKDEV_LOOKUP
 
 config ARCH_TEGRA
 	bool "NVIDIA Tegra"
@@ -151,7 +147,6 @@ config ARCH_TEGRA
 	select HW_HAS_PCI
 	select COMMON_CLK
 	select COMMON_CLK_OF_PROVIDER
-	select CLKDEV_LOOKUP
 	select GPIOLIB
 	select GPIO_TEGRA
 	select HAVE_PBL_MULTI_IMAGES
@@ -167,7 +162,6 @@ config ARCH_UEMD
 	select CPU_ARM1176
 	select COMMON_CLK
 	select COMMON_CLK_OF_PROVIDER
-	select CLKDEV_LOOKUP
 	select OFDEVICE
 	select OFTREE
 	select CLOCKSOURCE_UEMD
@@ -198,7 +192,6 @@ config ARCH_ARM64_VIRT
 config ARCH_BCM283X
 	bool "Broadcom BCM283x based boards"
 	select GPIOLIB
-	select CLKDEV_LOOKUP
 	select COMMON_CLK
 	select COMMON_CLK_OF_PROVIDER
 	select CLOCKSOURCE_BCM283X
@@ -214,7 +207,6 @@ config ARCH_IMX
 	depends on ARCH_MULTIARCH
 	select GPIOLIB
 	select COMMON_CLK
-	select CLKDEV_LOOKUP
 	select WATCHDOG_IMX_RESET_SOURCE
 	select HAS_DEBUG_LL
 	select HAVE_PBL_MULTI_IMAGES
@@ -226,7 +218,6 @@ config ARCH_K3
 	select CPU_V8
 	select GPIOLIB
 	select COMMON_CLK
-	select CLKDEV_LOOKUP
 	select HAVE_PBL_MULTI_IMAGES
 	select HAS_DEBUG_LL
 	select COMMON_CLK_OF_PROVIDER
@@ -239,7 +230,6 @@ config ARCH_LAYERSCAPE
 	select HAS_DEBUG_LL
 	select HAVE_PBL_MULTI_IMAGES
 	select COMMON_CLK
-	select CLKDEV_LOOKUP
 	select COMMON_CLK_OF_PROVIDER
 	select HW_HAS_PCI
 	select OFTREE
@@ -260,7 +250,6 @@ config ARCH_ROCKCHIP
 	bool "Rockchip RX3xxx"
 	depends on ARCH_MULTIARCH
 	select COMMON_CLK
-	select CLKDEV_LOOKUP
 	select COMMON_CLK_OF_PROVIDER
 	select GPIOLIB
 	select PINCTRL
@@ -276,7 +265,6 @@ config ARCH_STM32MP
 	select ARCH_STM32
 	select CPU_V7
 	select HAVE_PBL_MULTI_IMAGES
-	select CLKDEV_LOOKUP
 	select COMMON_CLK
 	select COMMON_CLK_OF_PROVIDER
 	select HAS_DEBUG_LL
@@ -304,7 +292,6 @@ config ARCH_VEXPRESS
 	select CPU_V7
 	select ARM_AMBA
 	select AMBA_SP804
-	select CLKDEV_LOOKUP
 	select COMMON_CLK
 	select COMMON_CLK_OF_PROVIDER
 	select OFTREE
@@ -321,7 +308,6 @@ config ARCH_ZYNQMP
 	select ARM_SMCCC
 	select COMMON_CLK
 	select COMMON_CLK_OF_PROVIDER
-	select CLKDEV_LOOKUP
 	select GPIOLIB
 	select OFDEVICE
 	select OFTREE
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 5429b80b0fdf..b6936a755421 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -577,7 +577,6 @@ config MACH_VF610_TWR
 config MACH_ZII_VF610_DEV
 	bool "ZII VF610 Dev Family"
 	select ARCH_VF610
-	select CLKDEV_LOOKUP
 	select MACH_ZII_COMMON
 	select ARM_USE_COMPRESSED_DTB
 
diff --git a/arch/arm/mach-pxa/Kconfig b/arch/arm/mach-pxa/Kconfig
index 711f8ed8d83c..a506c8e892d9 100644
--- a/arch/arm/mach-pxa/Kconfig
+++ b/arch/arm/mach-pxa/Kconfig
@@ -20,7 +20,6 @@ config ARCH_PXA3XX
        bool
        select CPU_XSC3
        select HAVE_CLK
-       select CLKDEV_LOOKUP
        select COMMON_CLK
 
 config ARCH_PXA310
diff --git a/arch/arm/mach-versatile/Kconfig b/arch/arm/mach-versatile/Kconfig
index 755f2e1dcc8c..89f50c270e43 100644
--- a/arch/arm/mach-versatile/Kconfig
+++ b/arch/arm/mach-versatile/Kconfig
@@ -9,7 +9,6 @@ config MACH_VERSATILEPB
 	bool
 	default y
 	select ARM_AMBA
-	select CLKDEV_LOOKUP
 	select CPU_ARM926T
 	select CPU_ARM1176
 
diff --git a/arch/arm/mach-zynq/Kconfig b/arch/arm/mach-zynq/Kconfig
index 3aac4506e390..451a344b2e64 100644
--- a/arch/arm/mach-zynq/Kconfig
+++ b/arch/arm/mach-zynq/Kconfig
@@ -13,7 +13,6 @@ config ZYNQ_DEBUG_LL_UART_BASE
 config ARCH_ZYNQ7000
 	bool
 	select CPU_V7
-	select CLKDEV_LOOKUP
 	select COMMON_CLK
 	select COMMON_CLK_OF_PROVIDER
 	select ARM_SMP_TWD
diff --git a/arch/kvx/Kconfig b/arch/kvx/Kconfig
index e18d02fffc11..2dea8cff8259 100644
--- a/arch/kvx/Kconfig
+++ b/arch/kvx/Kconfig
@@ -7,7 +7,6 @@ config KVX
 	select BOOTM_ELF
 	select BOOTM_OFTREE
 	select BOOTM_INITRD
-	select CLKDEV_LOOKUP
 	select COMMON_CLK
 	select COMMON_CLK_OF_PROVIDER
 	select ELF
diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index 89fc16be1335..63ba6aa9d5a7 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -81,7 +81,6 @@ config MACH_MIPS_MALTA
 	select HAS_DEBUG_LL
 	select COMMON_CLK
 	select COMMON_CLK_OF_PROVIDER
-	select CLKDEV_LOOKUP
 	select GPIOLIB
 	select HW_HAS_PCI
 	select HAVE_PBL_IMAGE
@@ -106,7 +105,6 @@ config MACH_MIPS_ATH79
 	select HAS_DEBUG_LL
 	select COMMON_CLK
 	select COMMON_CLK_OF_PROVIDER
-	select CLKDEV_LOOKUP
 	select OFTREE
 	select GPIOLIB
 
@@ -181,7 +179,6 @@ config CPU_LOONGSON1B
 	bool "Loongson 1B"
 	depends on SYS_HAS_CPU_LOONGSON1B
 	select CPU_GS232
-	select CLKDEV_LOOKUP
 	select COMMON_CLK
 	select COMMON_CLK_OF_PROVIDER
 	help
diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index c31c39454a25..8f2cd089a213 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -8,7 +8,6 @@ config RISCV
 	select OFDEVICE
 	select COMMON_CLK
 	select COMMON_CLK_OF_PROVIDER
-	select CLKDEV_LOOKUP
 	select HAS_DMA
 	select ARCH_DMA_DEFAULT_COHERENT
 	select HAVE_PBL_IMAGE
diff --git a/drivers/clk/Kconfig b/drivers/clk/Kconfig
index 685b34565d53..d2a61329e125 100644
--- a/drivers/clk/Kconfig
+++ b/drivers/clk/Kconfig
@@ -21,6 +21,7 @@ config COMMON_CLK
 	bool "Common Clock Framework"
 	depends on !HAVE_LEGACY_CLK
 	select HAVE_CLK
+	select CLKDEV_LOOKUP
 	help
 	  The common clock framework is a single definition of struct
 	  clk, useful across many platforms, as well as an
-- 
2.39.2



