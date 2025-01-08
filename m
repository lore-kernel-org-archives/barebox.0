Delivery-date: Wed, 08 Jan 2025 15:46:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVXKd-000mL8-2b
	for lore@lore.pengutronix.de;
	Wed, 08 Jan 2025 15:46:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVXKd-00044N-CA
	for lore@pengutronix.de; Wed, 08 Jan 2025 15:46:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=lNtxtfBprUUpHkG/Br8p9ruzCfnRimzvjJ8Bww7cQ20=; b=w35dGu0wzdoNGIDv54zsB5MVLP
	XlapYgpx9koht4Q/4br7lO+2eLjP4LsMxLt2cgGFe+hRC+yRyBjy5QqA+gp9zPgegnNUIX2m37k+f
	9f1RWZQRJP2PBddKE+ah/AZC21doQ+GmDm7pvbnQn0c1Nc93Qi8sJNQff7/0Vn6eSkGz/Nl2B8dPl
	KzYdQ/j+JnK6u0KctGe7s14PknVoMrvqfq6+FhXi45A4IUBGwEFm1lCQ7J1RQSxns5H8Z96Ttlpc+
	lt/d0yCtQ3buZYxyuzQFea5JUxJHgIcnywrXsKxiiqAX87ICpzWfVaEs7R5B2PP3kGnJtMS5kV0Rt
	UKgXuvsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVXKB-00000008rSf-2yE7;
	Wed, 08 Jan 2025 14:46:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVXJ0-00000008r7J-0D6P
	for barebox@lists.infradead.org;
	Wed, 08 Jan 2025 14:45:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tVXIy-0003fu-MK; Wed, 08 Jan 2025 15:45:08 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tVXIx-007XRJ-2L;
	Wed, 08 Jan 2025 15:45:08 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tVXIy-000KcN-1E;
	Wed, 08 Jan 2025 15:45:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed,  8 Jan 2025 15:45:06 +0100
Message-Id: <20250108144506.79248-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250108_064510_245091_6FEFB205 
X-CRM114-Status: GOOD (  11.27  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: enable CONFIG_USE_COMPRESSED_DTB by default
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Boards have to select ARM_USE_COMPRESSED_DTB in order to use compressed
dtb files. This is easily forgotten because some other enabled board
likely has it selected already and breakage only occurs when all other
boards are disabled. Avoid this breakage by enabling compressed dtbs by
default.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig              |  7 +------
 arch/arm/mach-at91/Kconfig    |  1 -
 arch/arm/mach-bcm283x/Kconfig |  1 -
 arch/arm/mach-imx/Kconfig     | 20 --------------------
 arch/arm/mach-omap/Kconfig    |  1 -
 arch/arm/mach-socfpga/Kconfig |  1 -
 arch/arm/mach-zynq/Kconfig    |  1 -
 arch/arm/mach-zynqmp/Kconfig  |  1 -
 8 files changed, 1 insertion(+), 32 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 516cc721a5..f2c0f44e74 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -13,6 +13,7 @@ config ARM
 	select HAVE_PBL_MULTI_IMAGES
 	select RELOCATABLE
 	select PBL_RELOCATABLE
+	select USE_COMPRESSED_DTB
 	default y
 
 config ARM32
@@ -30,10 +31,6 @@ config ARM_LINUX
 	default y
 	depends on CMD_BOOTZ || CMD_BOOTU || BOOTM
 
-config ARM_USE_COMPRESSED_DTB
-       bool
-       select USE_COMPRESSED_DTB
-
 menu "System Type"
 
 config ARCH_STM32
@@ -176,7 +173,6 @@ config ARCH_LAYERSCAPE
 	select COMMON_CLK
 	select COMMON_CLK_OF_PROVIDER
 	select HW_HAS_PCI
-	select ARM_USE_COMPRESSED_DTB
 	select OF_DMA_COHERENCY
 
 config ARCH_OMAP_MULTI
@@ -210,7 +206,6 @@ config ARCH_STM32MP
 	select ARCH_HAS_RESET_CONTROLLER
 	select ARM_AMBA
 	select ARM_SMCCC
-	select ARM_USE_COMPRESSED_DTB
 
 config ARCH_VERSATILE
 	bool "ARM Versatile boards (ARM926EJ-S)"
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index afcea257c3..69a17496d5 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -556,7 +556,6 @@ endif
 
 config AT91_MULTI_BOARDS
 	bool "Allow multiple boards to be selected"
-	select ARM_USE_COMPRESSED_DTB
 
 if AT91_MULTI_BOARDS
 
diff --git a/arch/arm/mach-bcm283x/Kconfig b/arch/arm/mach-bcm283x/Kconfig
index defccf8362..ca9061572b 100644
--- a/arch/arm/mach-bcm283x/Kconfig
+++ b/arch/arm/mach-bcm283x/Kconfig
@@ -4,7 +4,6 @@ if ARCH_BCM283X
 
 config MACH_RPI_COMMON
 	bool
-	select ARM_USE_COMPRESSED_DTB
 
 config MACH_RPI_AARCH_32_64
 	select MACH_RPI_COMMON
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index d1f8dc795b..223c53f4ed 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -159,7 +159,6 @@ config ARCH_IMX8M
 	select HW_HAS_PCI
 	select IMX8M_DRAM
 	select PBL_VERIFY_PIGGY if HABV4
-	select ARM_USE_COMPRESSED_DTB
 	select SOC_BUS
 	imply FSL_CAAM_RNG_PBL_INIT if HAVE_OPTEE
 
@@ -189,7 +188,6 @@ config ARCH_IMX93
 	select CPU_V8
 	select PINCTRL_IMX_IOMUX_V3
 	select COMMON_CLK_OF_PROVIDER
-	select ARM_USE_COMPRESSED_DTB
 	select ARCH_HAS_FEC_IMX
 
 config ARCH_VF610
@@ -337,14 +335,12 @@ config MACH_ZII_RDU1
 	select MACH_FREESCALE_MX51_PDK_POWER
 	select CRC8
 	select MACH_ZII_COMMON
-	select ARM_USE_COMPRESSED_DTB
 
 comment "i.MX6 boards"
 
 config MACH_ADVANTECH_ROM_742X
 	bool "Advantech ROM 742X"
 	select ARCH_IMX6
-	select ARM_USE_COMPRESSED_DTB
 
 config MACH_NITROGEN6
 	bool "BoundaryDevices Nitrogen6 boards"
@@ -367,7 +363,6 @@ config MACH_DIGI_CCIMX6ULSBCPRO
 	bool "Digi Internal CC-IMX6UL SBC Pro"
 	select ARCH_IMX6
 	select ARCH_IMX6UL
-	select ARM_USE_COMPRESSED_DTB
 
 config MACH_ELTEC_HIPERCAM
 	bool "ELTEC HiPerCam"
@@ -382,7 +377,6 @@ config MACH_EMBEDSKY_E9
 config MACH_EMBEST_MARSBOARD
 	bool "Embest MarSboard"
 	select ARCH_IMX6
-	select ARM_USE_COMPRESSED_DTB
 
 config MACH_EMBEST_RIOTBOARD
 	bool "Embest RIoTboard"
@@ -440,7 +434,6 @@ config MACH_KONTRON_SAMX6I
 config MACH_NOVENA
 	bool "Kosagi Novena board"
 	select ARCH_IMX6
-	select ARM_USE_COMPRESSED_DTB
 	select DDR_SPD
 	select I2C_IMX_EARLY
 	select MCI_IMX_ESDHC_PBL
@@ -461,13 +454,11 @@ config MACH_PROTONIC_IMX6
 	bool "Protonic-Holland i.MX6 based boards"
 	select ARCH_IMX6
 	select ARCH_IMX6UL
-	select ARM_USE_COMPRESSED_DTB
 	select IMX_OCOTP
 
 config MACH_SKOV_IMX6
 	bool "Skov IMX6"
 	select ARCH_IMX6
-	select ARM_USE_COMPRESSED_DTB
 	select MCI_IMX_ESDHC_PBL
 	select DSA
 	select DRIVER_NET_KSZ8873
@@ -480,12 +471,10 @@ config MACH_TECHNEXION_PICO_HOBBIT
 	bool "Technexion Pico Hobbit"
 	select ARCH_IMX6
 	select ARCH_IMX6UL
-	select ARM_USE_COMPRESSED_DTB
 
 config MACH_TECHNEXION_WANDBOARD
 	bool "Technexion Wandboard"
 	select ARCH_IMX6
-	select ARM_USE_COMPRESSED_DTB
 	select MCI_IMX_ESDHC_PBL
 
 config MACH_TQMA6X
@@ -495,7 +484,6 @@ config MACH_TQMA6X
 config MACH_TQMA6UL
 	bool "TQ tqma6ul on mba6ulx"
 	select ARCH_IMX6UL
-	select ARM_USE_COMPRESSED_DTB
 	select BOARD_TQ
 	select I2C_IMX_EARLY
 
@@ -508,7 +496,6 @@ config MACH_VARISCITE_MX6
 config MACH_WEBASTO_CCBV2
 	bool "Webasto Common Communication Board V2"
 	select ARCH_IMX6UL
-	select ARM_USE_COMPRESSED_DTB
 
 config MACH_GK802
 	bool "Zealz GK802 Mini PC"
@@ -519,20 +506,17 @@ config MACH_ZII_RDU2
 	select ARCH_IMX6
 	select MCI_IMX_ESDHC_PBL
 	select MACH_ZII_COMMON
-	select ARM_USE_COMPRESSED_DTB
 
 comment "i.MX7 boards"
 
 config MACH_MEERKAT96
 	bool "96Boards: i.MX7 Meerkat96"
 	select ARCH_IMX7
-	select ARM_USE_COMPRESSED_DTB
 
 config MACH_AC_SXB
 	bool "Atlas Copco: SXB board"
 	select ARCH_IMX7
 	select MCI_IMX_ESDHC_PBL
-	select ARM_USE_COMPRESSED_DTB
 
 config MACH_WARP7
 	bool "NXP i.MX7: element 14 WaRP7 Board"
@@ -557,7 +541,6 @@ config MACH_PHYTEC_PHYCORE_IMX7
 config MACH_VARISCITE_SOM_MX7
 	bool "Variscite VAR-SOM-MX7"
 	select ARCH_IMX7
-	select ARM_USE_COMPRESSED_DTB
 	help
 	  Support for boards that use a Variscite SOM-MX7, like:
 	  - Gossen Metrawatt e143_01
@@ -565,12 +548,10 @@ config MACH_VARISCITE_SOM_MX7
 config MACH_ZII_IMX7D_DEV
 	bool "ZII i.MX7D based devices"
 	select ARCH_IMX7
-	select ARM_USE_COMPRESSED_DTB
 
 config MACH_KAMSTRUP_MX7_CONCENTRATOR
 	bool "Kamstrup i.MX7 Concentrator"
 	select ARCH_IMX7
-	select ARM_USE_COMPRESSED_DTB
 
 comment "VF610 boards"
 
@@ -582,7 +563,6 @@ config MACH_ZII_VF610_DEV
 	bool "ZII VF610 Dev Family"
 	select ARCH_VF610
 	select MACH_ZII_COMMON
-	select ARM_USE_COMPRESSED_DTB
 
 endif
 
diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index a451f250fd..6c4e9d748d 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -40,7 +40,6 @@ config ARCH_AM33XX
 	select CPU_V7
 	select GENERIC_GPIO
 	select CLOCKSOURCE_TI_DM
-	select ARM_USE_COMPRESSED_DTB
 	help
 	  Say Y here if you are using Texas Instrument's AM33xx based platform
 
diff --git a/arch/arm/mach-socfpga/Kconfig b/arch/arm/mach-socfpga/Kconfig
index a4d7177797..4ec376056d 100644
--- a/arch/arm/mach-socfpga/Kconfig
+++ b/arch/arm/mach-socfpga/Kconfig
@@ -18,7 +18,6 @@ config ARCH_SOCFPGA_CYCLONE5
 config ARCH_SOCFPGA_ARRIA10
 	bool
 	select CPU_V7
-	select ARM_USE_COMPRESSED_DTB
 	select RESET_CONTROLLER
 	select OFDEVICE
 	select OFTREE
diff --git a/arch/arm/mach-zynq/Kconfig b/arch/arm/mach-zynq/Kconfig
index 27136a65fc..1d6218d407 100644
--- a/arch/arm/mach-zynq/Kconfig
+++ b/arch/arm/mach-zynq/Kconfig
@@ -20,7 +20,6 @@ menu "select Zynq boards to be built"
 
 config MACH_ZEDBOARD
 	bool "Avnet Zynq-7000 ZedBoard"
-	select ARM_USE_COMPRESSED_DTB
 	select ARCH_ZYNQ7000
 
 endmenu
diff --git a/arch/arm/mach-zynqmp/Kconfig b/arch/arm/mach-zynqmp/Kconfig
index 23d04926e6..3f9ad99d37 100644
--- a/arch/arm/mach-zynqmp/Kconfig
+++ b/arch/arm/mach-zynqmp/Kconfig
@@ -5,7 +5,6 @@ menu "ZynqMP Features"
 
 config MACH_XILINX_ZCU102
 	bool "Xilinx Zynq UltraScale+ MPSoC ZCU102"
-	select ARM_USE_COMPRESSED_DTB
 	help
 	  Say Y here if you are using the Xilinx Zynq UltraScale+ MPSoC ZCU102
 	  evaluation board.
-- 
2.39.5



