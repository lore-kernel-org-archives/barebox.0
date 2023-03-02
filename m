Delivery-date: Thu, 02 Mar 2023 13:49:14 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pXiMz-006Wnx-KY
	for lore@lore.pengutronix.de; Thu, 02 Mar 2023 13:49:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pXiMy-00069V-QQ
	for lore@pengutronix.de; Thu, 02 Mar 2023 13:49:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ziRXtxgQjI1mCTOzrbD4IdVxhembX/SkH9geIJlROMg=; b=Uw9DzYEBrbnhb1JFwfXraNz28O
	zZydkPT0vWqEgMcrE2L4HMqPRDWf4lOYyfrKBHYa//sHHv0xAmHFiKhwMSRwHB6NPHV+JMekM1Ncr
	tD7cLnNyZzBemza7ZwciJMNfKI4h90SEeHovLlmQ+77E+k1yQQRs+fnv0Nhq9k/K0zwzXzlqlfJmw
	3284k3CuspvAvMlsq+13dAPkDNMvT+Wb4g4oNKsUcJ1KJ8v8zynVFp34f6xj00QLmjo0BjqdxVXb6
	HJZKJW7B5ZnzXEj/6OLe8Aoslcq634mEjuI8CMM0F47JVGNWE2S+J/sScdDLReAJXtrRr6rsDHO65
	VaRnpLww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXiLb-002Dvt-G4; Thu, 02 Mar 2023 12:47:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXiLS-002DsC-6c
	for barebox@lists.infradead.org; Thu, 02 Mar 2023 12:47:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pXiLQ-00061i-89; Thu, 02 Mar 2023 13:47:36 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pXiLP-001Ki6-Jm; Thu, 02 Mar 2023 13:47:35 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pXiLO-008l3A-OM; Thu, 02 Mar 2023 13:47:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  2 Mar 2023 13:47:30 +0100
Message-Id: <20230302124731.2081045-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230302_044738_639137_D5096ECE 
X-CRM114-Status: GOOD (  10.48  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] ARM: i.MX: Sort board Kconfig entries
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Sort the board Kconfig enttries by SoC type and boards within
the SoC type alphabetically.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig | 368 ++++++++++++++++++++------------------
 1 file changed, 194 insertions(+), 174 deletions(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 262e2b3e94..ac696359b4 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -179,6 +179,11 @@ config ARCH_VF610
 	select IMX_OCOTP	# Needed for clock adjustement
 	select CLOCKSOURCE_ARM_GLOBAL_TIMER
 
+config MACH_ZII_COMMON
+	bool
+
+comment "i.MX1 boards"
+
 config MACH_SCB9328
 	bool "Synertronixx scb9328"
 	select ARCH_IMX1
@@ -186,6 +191,8 @@ config MACH_SCB9328
 	help
 	  Say Y here if you are using the Synertronixx scb9328 board
 
+comment "i.MX25 boards"
+
 config MACH_TX25
 	bool "Ka-Ro TX25"
 	select ARCH_IMX25
@@ -193,6 +200,8 @@ config MACH_TX25
 	help
 	  Say Y here if you are using the Ka-Ro tx25 board
 
+comment "i.MX27 boards"
+
 config MACH_PCA100
 	bool "phyCard-i.MX27"
 	select ARCH_IMX27
@@ -212,6 +221,8 @@ config MACH_PCM038
 	  Say Y here if you are using Phytec's phyCORE-i.MX27 (pcm038) equipped
 	  with a Freescale i.MX27 Processor
 
+comment "i.MX50 boards"
+
 config MACH_KINDLE_MX50
 	bool "i.MX50 based Amazon Kindle 4 and 5"
 	select ARCH_IMX50
@@ -228,6 +239,8 @@ config MACH_KINDLE_MX50
 	  Kindle Model No. D01100 (Kindle Wi-Fi), D01200 (Kindle Touch) or
 	  EY21 (Kindle Paperwhite).
 
+comment "i.MX51 boards"
+
 config MACH_CCMX51
 	bool "ConnectCore i.MX51"
 	select ARCH_IMX51
@@ -248,17 +261,13 @@ config MACH_EFIKA_MX_SMARTBOOK
 	help
 	  Choose this to compile barebox for the Efika MX Smartbook
 
-config MACH_EMBEDSKY_E9
-	bool "Embedsky E9 Mini-PC"
-	select ARCH_IMX6
-	help
-	  Choose this to compile barebox for the Embedsky E9 Mini PC
-
 config MACH_FREESCALE_MX51_PDK
 	bool "Freescale i.MX51 PDK"
 	select ARCH_IMX51
 	select MACH_FREESCALE_MX51_PDK_POWER
 
+comment "i.MX53 boards"
+
 config MACH_CCMX53
 	bool "Digi ConnectCore i.MX53"
 	select ARCH_IMX53
@@ -278,6 +287,12 @@ config MACH_GUF_VINCELL
 	bool "Garz-Fricke Vincell"
 	select ARCH_IMX53
 
+config MACH_TX53
+	bool "Ka-Ro TX53"
+	select ARCH_IMX53
+	help
+	  Say Y here if you are using the Ka-Ro tx53 board
+
 config MACH_TQMA53
 	bool "TQ i.MX53 TQMa53"
 	select ARCH_IMX53
@@ -289,88 +304,63 @@ config MACH_FREESCALE_MX53_VMX53
 	  Say Y here if you are using the Voipac Technologies X53-DMM-668
 	  module equipped with a Freescale i.MX53 Processor
 
-config MACH_TX53
-	bool "Ka-Ro TX53"
-	select ARCH_IMX53
-	help
-	  Say Y here if you are using the Ka-Ro tx53 board
+config MACH_ZII_RDU1
+	bool "ZII i.MX51 RDU1"
+	select ARCH_IMX51
+	select MACH_FREESCALE_MX51_PDK_POWER
+	select CRC8
+	select MACH_ZII_COMMON
+	select ARM_USE_COMPRESSED_DTB
 
-config MACH_PHYTEC_SOM_IMX6
-        bool "Phytec phyCARD-i.MX6 and phyFLEX-i.MX6"
-        select ARCH_IMX6
-	select ARCH_IMX6UL
-	select I2C
-	select I2C_IMX
+comment "i.MX6 boards"
 
-config MACH_PROTONIC_IMX6
-	bool "Protonic-Holland i.MX6 based boards"
+config MACH_ADVANTECH_ROM_742X
+	bool "Advantech ROM 742X"
 	select ARCH_IMX6
-	select ARCH_IMX6UL
 	select ARM_USE_COMPRESSED_DTB
-	select IMX_OCOTP
 
-config MACH_PROTONIC_IMX8M
-	bool "Protonic-Holland i.MX8Mx based boards"
-	select ARCH_IMX8MM
-	select FIRMWARE_IMX_LPDDR4_PMU_TRAIN
-	select FIRMWARE_IMX8MM_ATF
-	select ARM_SMCCC
-	select MCI_IMX_ESDHC_PBL
-	select IMX8M_DRAM
-	select USB_GADGET_DRIVER_ARC_PBL
-
-config MACH_INNOCOMM_WB15
-	bool "InnoComm WB15 (i.MX8MM) EVK"
-	select ARCH_IMX8MM
-	select FIRMWARE_IMX_LPDDR4_PMU_TRAIN
-	select FIRMWARE_IMX8MM_ATF
-	select ARM_SMCCC
-	select MCI_IMX_ESDHC_PBL
-	select IMX8M_DRAM
-	select I2C_IMX_EARLY
-	select USB_GADGET_DRIVER_ARC_PBL
-	imply AT803X_PHY
-
-config MACH_KONTRON_SAMX6I
-        bool "Kontron sAMX6i"
-        select ARCH_IMX6
-
-config MACH_DFI_FS700_M60
-	bool "DFI i.MX6 FS700 M60 Q7 Board"
+config MACH_NITROGEN6
+	bool "BoundaryDevices Nitrogen6 boards"
 	select ARCH_IMX6
 
-config MACH_GUF_SANTARO
-	bool "Garz+Fricke Santaro Board"
+config MACH_CM_FX6
+	bool "CM FX6"
 	select ARCH_IMX6
-	select I2C
-	select I2C_IMX
+	select MCI_IMX_ESDHC_PBL
 
 config MACH_REALQ7
 	bool "DataModul i.MX6Q Real Qseven Board"
 	select ARCH_IMX6
 
-config MACH_GK802
-	bool "Zealz GK802 Mini PC"
+config MACH_DFI_FS700_M60
+	bool "DFI i.MX6 FS700 M60 Q7 Board"
+	select ARCH_IMX6
+
+config MACH_DIGI_CCIMX6ULSBCPRO
+	bool "Digi Internal CC-IMX6UL SBC Pro"
 	select ARCH_IMX6
+	select ARCH_IMX6UL
+	select ARM_USE_COMPRESSED_DTB
 
 config MACH_ELTEC_HIPERCAM
 	bool "ELTEC HiPerCam"
 	select ARCH_IMX6
 
-config MACH_TQMA6X
-	bool "TQ tqma6x on mba6x"
+config MACH_EMBEDSKY_E9
+	bool "Embedsky E9 Mini-PC"
 	select ARCH_IMX6
+	help
+	  Choose this to compile barebox for the Embedsky E9 Mini PC
 
-config MACH_TQMA6UL
-	bool "TQ tqma6ul on mba6ulx"
-	select ARCH_IMX6UL
+config MACH_EMBEST_MARSBOARD
+	bool "Embest MarSboard"
+	select ARCH_IMX6
 	select ARM_USE_COMPRESSED_DTB
 
-config MACH_TX6X
-	bool "Karo TX6x"
+config MACH_EMBEST_RIOTBOARD
+	bool "Embest RIoTboard"
 	select ARCH_IMX6
-	select I2C
-	select I2C_IMX
+	imply AT803X_PHY
 
 config MACH_SABRELITE
 	bool "Freescale i.MX6 Sabre Lite"
@@ -386,9 +376,39 @@ config MACH_FREESCALE_IMX6SX_SABRESDB
 	select I2C
 	select I2C_IMX
 
-config MACH_NITROGEN6
-	bool "BoundaryDevices Nitrogen6 boards"
+config MACH_UDOO
+	bool "Freescale i.MX6 UDOO Board"
+	select ARCH_IMX6
+
+config MACH_UDOO_NEO
+	bool "Freescale i.MX6 UDOO Neo Board (full variant)"
+	select ARCH_IMX6SX
+
+config MACH_GUF_SANTARO
+	bool "Garz+Fricke Santaro Board"
+	select ARCH_IMX6
+	select I2C
+	select I2C_IMX
+
+config MACH_GW_VENTANA
+	bool "Gateworks Ventana SBC"
 	select ARCH_IMX6
+	select I2C
+	select I2C_IMX
+
+config MACH_GRINN_LITEBOARD
+	bool "Grinn liteboard"
+	select ARCH_IMX6UL
+
+config MACH_TX6X
+	bool "Karo TX6x"
+	select ARCH_IMX6
+	select I2C
+	select I2C_IMX
+
+config MACH_KONTRON_SAMX6I
+        bool "Kontron sAMX6i"
+        select ARCH_IMX6
 
 config MACH_NOVENA
 	bool "Kosagi Novena board"
@@ -399,6 +419,32 @@ config MACH_NOVENA
 	select MCI_IMX_ESDHC_PBL
 	select USB_GADGET_DRIVER_ARC_PBL
 
+config MACH_NXP_IMX6ULL_EVK
+	bool "NXP i.MX6ull EVK Board"
+	select ARCH_IMX6UL
+
+config MACH_PHYTEC_SOM_IMX6
+        bool "Phytec phyCARD-i.MX6 and phyFLEX-i.MX6"
+        select ARCH_IMX6
+	select ARCH_IMX6UL
+	select I2C
+	select I2C_IMX
+
+config MACH_PROTONIC_IMX6
+	bool "Protonic-Holland i.MX6 based boards"
+	select ARCH_IMX6
+	select ARCH_IMX6UL
+	select ARM_USE_COMPRESSED_DTB
+	select IMX_OCOTP
+
+config MACH_SKOV_IMX6
+	bool "Skov IMX6"
+	select ARCH_IMX6
+	select ARM_USE_COMPRESSED_DTB
+	select MCI_IMX_ESDHC_PBL
+	select DSA
+	select DRIVER_NET_KSZ8873
+
 config MACH_SOLIDRUN_MICROSOM
 	bool "SolidRun MicroSOM based devices"
 	select ARCH_IMX6
@@ -415,23 +461,14 @@ config MACH_TECHNEXION_WANDBOARD
 	select ARM_USE_COMPRESSED_DTB
 	select MCI_IMX_ESDHC_PBL
 
-config MACH_EMBEST_MARSBOARD
-	bool "Embest MarSboard"
-	select ARCH_IMX6
-	select ARM_USE_COMPRESSED_DTB
-
-config MACH_EMBEST_RIOTBOARD
-	bool "Embest RIoTboard"
-	select ARCH_IMX6
-	imply AT803X_PHY
-
-config MACH_UDOO
-	bool "Freescale i.MX6 UDOO Board"
+config MACH_TQMA6X
+	bool "TQ tqma6x on mba6x"
 	select ARCH_IMX6
 
-config MACH_UDOO_NEO
-	bool "i.MX6 UDOO Neo Board (full variant)"
-	select ARCH_IMX6SX
+config MACH_TQMA6UL
+	bool "TQ tqma6ul on mba6ulx"
+	select ARCH_IMX6UL
+	select ARM_USE_COMPRESSED_DTB
 
 config MACH_VARISCITE_MX6
 	bool "Variscite i.MX6 Quad SOM"
@@ -439,51 +476,14 @@ config MACH_VARISCITE_MX6
 	select I2C
 	select I2C_IMX
 
-config MACH_GW_VENTANA
-	bool "Gateworks Ventana SBC"
-	select ARCH_IMX6
-	select I2C
-	select I2C_IMX
-
-config MACH_CM_FX6
-	bool "CM FX6"
-	select ARCH_IMX6
-	select MCI_IMX_ESDHC_PBL
-
-config MACH_ADVANTECH_ROM_742X
-	bool "Advantech ROM 742X"
-	select ARCH_IMX6
-	select ARM_USE_COMPRESSED_DTB
-
-config MACH_WARP7
-	bool "NXP i.MX7: element 14 WaRP7 Board"
-	select ARCH_IMX7
-
-config MACH_AC_SXB
-	bool "Atlas Copco: SXB board"
-	select ARCH_IMX7
-	select MCI_IMX_ESDHC_PBL
-	select ARM_USE_COMPRESSED_DTB
-
-config MACH_MEERKAT96
-	bool "96Boards: i.MX7 Meerkat96"
-	select ARCH_IMX7
+config MACH_WEBASTO_CCBV2
+	bool "Webasto Common Communication Board V2"
+	select ARCH_IMX6UL
 	select ARM_USE_COMPRESSED_DTB
 
-config MACH_VF610_TWR
-	bool "Freescale VF610 Tower Board"
-	select ARCH_VF610
-
-config MACH_ZII_COMMON
-	bool
-
-config MACH_ZII_RDU1
-	bool "ZII i.MX51 RDU1"
-	select ARCH_IMX51
-	select MACH_FREESCALE_MX51_PDK_POWER
-	select CRC8
-	select MACH_ZII_COMMON
-	select ARM_USE_COMPRESSED_DTB
+config MACH_GK802
+	bool "Zealz GK802 Mini PC"
+	select ARCH_IMX6
 
 config MACH_ZII_RDU2
 	bool "ZII i.MX6Q(+) RDU2"
@@ -492,29 +492,21 @@ config MACH_ZII_RDU2
 	select MACH_ZII_COMMON
 	select ARM_USE_COMPRESSED_DTB
 
-config MACH_ZII_IMX8MQ_DEV
-	bool "ZII i.MX8MQ based devices"
-	select ARCH_IMX8MQ
-	select FIRMWARE_IMX_LPDDR4_PMU_TRAIN
-	select FIRMWARE_IMX8MQ_ATF
-	select ARM_SMCCC
-	select MCI_IMX_ESDHC_PBL
-	select MACH_ZII_COMMON
+comment "i.MX7 boards"
 
-config MACH_ZII_VF610_DEV
-	bool "ZII VF610 Dev Family"
-	select ARCH_VF610
-	select CLKDEV_LOOKUP
-	select MACH_ZII_COMMON
+config MACH_MEERKAT96
+	bool "96Boards: i.MX7 Meerkat96"
+	select ARCH_IMX7
 	select ARM_USE_COMPRESSED_DTB
 
-config MACH_ZII_IMX7D_DEV
-	bool "ZII i.MX7D based devices"
+config MACH_AC_SXB
+	bool "Atlas Copco: SXB board"
 	select ARCH_IMX7
+	select MCI_IMX_ESDHC_PBL
 	select ARM_USE_COMPRESSED_DTB
 
-config MACH_PHYTEC_PHYCORE_IMX7
-	bool "Phytec phyCORE i.MX7"
+config MACH_WARP7
+	bool "NXP i.MX7: element 14 WaRP7 Board"
 	select ARCH_IMX7
 
 config MACH_FREESCALE_MX7_SABRESD
@@ -529,14 +521,55 @@ config MACH_FREESCALE_MX7_SABRESD
 
 	  https://goo.gl/6EKGdk
 
+config MACH_PHYTEC_PHYCORE_IMX7
+	bool "Phytec phyCORE i.MX7"
+	select ARCH_IMX7
+
+config MACH_ZII_IMX7D_DEV
+	bool "ZII i.MX7D based devices"
+	select ARCH_IMX7
+	select ARM_USE_COMPRESSED_DTB
+
 config MACH_KAMSTRUP_MX7_CONCENTRATOR
 	bool "Kamstrup i.MX7 Concentrator"
 	select ARCH_IMX7
 	select ARM_USE_COMPRESSED_DTB
 
-config MACH_NXP_IMX6ULL_EVK
-	bool "NXP i.MX6ull EVK Board"
-	select ARCH_IMX6UL
+comment "VF610 boards"
+
+config MACH_VF610_TWR
+	bool "Freescale VF610 Tower Board"
+	select ARCH_VF610
+
+config MACH_ZII_VF610_DEV
+	bool "ZII VF610 Dev Family"
+	select ARCH_VF610
+	select CLKDEV_LOOKUP
+	select MACH_ZII_COMMON
+	select ARM_USE_COMPRESSED_DTB
+
+comment "i.MX8M boards"
+
+config MACH_INNOCOMM_WB15
+	bool "InnoComm WB15 (i.MX8MM) EVK"
+	select ARCH_IMX8MM
+	select FIRMWARE_IMX_LPDDR4_PMU_TRAIN
+	select FIRMWARE_IMX8MM_ATF
+	select ARM_SMCCC
+	select MCI_IMX_ESDHC_PBL
+	select IMX8M_DRAM
+	select I2C_IMX_EARLY
+	select USB_GADGET_DRIVER_ARC_PBL
+	imply AT803X_PHY
+
+config MACH_MNT_REFORM
+	bool "MNT Reform"
+	select ARCH_IMX8MQ
+	select FIRMWARE_IMX_LPDDR4_PMU_TRAIN
+	select FIRMWARE_IMX8MQ_ATF
+	select ARM_SMCCC
+	select MCI_IMX_ESDHC_PBL
+	select I2C_IMX_EARLY
 
 config MACH_NXP_IMX8MM_EVK
 	bool "NXP i.MX8MM EVK Board"
@@ -586,8 +619,8 @@ config MACH_PHYTEC_SOM_IMX8MQ
 	select ARM_SMCCC
 	select MCI_IMX_ESDHC_PBL
 
-config MACH_TQ_MBA8MPXL
-	bool "TQ i.MX8MP Dual/Quad on MBa8MPxL Board"
+config MACH_POLYHEX_DEBIX
+	bool "Polyhex DEBIX Model-A/B (i.MX8MP) Board"
 	select ARCH_IMX8MP
 	select FIRMWARE_IMX_LPDDR4_PMU_TRAIN
 	select FIRMWARE_IMX8MP_ATF
@@ -596,8 +629,18 @@ config MACH_TQ_MBA8MPXL
 	select IMX8M_DRAM
 	select I2C_IMX_EARLY
 
-config MACH_POLYHEX_DEBIX
-	bool "Polyhex DEBIX Model-A/B (i.MX8MP) Board"
+config MACH_PROTONIC_IMX8M
+	bool "Protonic-Holland i.MX8Mx based boards"
+	select ARCH_IMX8MM
+	select FIRMWARE_IMX_LPDDR4_PMU_TRAIN
+	select FIRMWARE_IMX8MM_ATF
+	select ARM_SMCCC
+	select MCI_IMX_ESDHC_PBL
+	select IMX8M_DRAM
+	select USB_GADGET_DRIVER_ARC_PBL
+
+config MACH_TQ_MBA8MPXL
+	bool "TQ i.MX8MP Dual/Quad on MBa8MPxL Board"
 	select ARCH_IMX8MP
 	select FIRMWARE_IMX_LPDDR4_PMU_TRAIN
 	select FIRMWARE_IMX8MP_ATF
@@ -616,37 +659,14 @@ config MACH_VARISCITE_DT8MCUSTOMBOARD_IMX8MP
 	select IMX8M_DRAM
 	select I2C_IMX_EARLY
 
-config MACH_GRINN_LITEBOARD
-	bool "Grinn liteboard"
-	select ARCH_IMX6UL
-
-config MACH_DIGI_CCIMX6ULSBCPRO
-	bool "Digi Internal CC-IMX6UL SBC Pro"
-	select ARCH_IMX6
-	select ARCH_IMX6UL
-	select ARM_USE_COMPRESSED_DTB
-
-config MACH_WEBASTO_CCBV2
-	bool "Webasto Common Communication Board V2"
-	select ARCH_IMX6UL
-	select ARM_USE_COMPRESSED_DTB
-
-config MACH_MNT_REFORM
-	bool "MNT Reform"
+config MACH_ZII_IMX8MQ_DEV
+	bool "ZII i.MX8MQ based devices"
 	select ARCH_IMX8MQ
 	select FIRMWARE_IMX_LPDDR4_PMU_TRAIN
 	select FIRMWARE_IMX8MQ_ATF
 	select ARM_SMCCC
 	select MCI_IMX_ESDHC_PBL
-	select I2C_IMX_EARLY
-
-config MACH_SKOV_IMX6
-	bool "Skov IMX6"
-	select ARCH_IMX6
-	select ARM_USE_COMPRESSED_DTB
-	select MCI_IMX_ESDHC_PBL
-	select DSA
-	select DRIVER_NET_KSZ8873
+	select MACH_ZII_COMMON
 
 # ----------------------------------------------------------
 
-- 
2.30.2



