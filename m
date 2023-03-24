Delivery-date: Fri, 24 Mar 2023 13:20:28 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pfgPD-00DC7H-AB
	for lore@lore.pengutronix.de; Fri, 24 Mar 2023 13:20:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pfgPB-0003ou-7k
	for lore@pengutronix.de; Fri, 24 Mar 2023 13:20:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=c8rz+g+/bpFAGHZ68e0DhPUXCxW0wgrXkbXCuHUpOSY=; b=sQ+lDsTsgdSLZKn63l55ggylAN
	xNtk+Cf5jzvlv04NtiYUkIcewiIX3qxF9G38Ihy6K6BInUUrT1ArHjzFJcifMHsZCqLm3akxkezUr
	UoZeb6ofx358U595pSazn+kwzbCXoleJ/9U5+oIW2K78s13yiTl34aRlBsk61lO3t3iaz/AnfDT/+
	O4H8+WvvioqPCcPiUoBoWT8sxoZvPdOC5SWfvX5Ytd0ICUNNDZ0JqwgPQZpVYU63uC7deWZHGClxE
	l1PN5ObkU/k96Orl32h4ubbeLgUauy/b4S9zWpCOTXuPtZsExFlkfgBukWgohCk0BMIpzFSQI9NxZ
	sj1f7wGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfgNl-004KcH-02;
	Fri, 24 Mar 2023 12:18:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfgNe-004KYQ-0P
	for barebox@lists.infradead.org;
	Fri, 24 Mar 2023 12:18:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pfgNX-0003Qm-2Y; Fri, 24 Mar 2023 13:18:43 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pfgNW-006NZy-Fa; Fri, 24 Mar 2023 13:18:42 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pfgNV-00H4yM-Ix; Fri, 24 Mar 2023 13:18:41 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 24 Mar 2023 13:18:39 +0100
Message-Id: <20230324121840.2375026-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230324121840.2375026-1-s.hauer@pengutronix.de>
References: <20230324121840.2375026-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230324_051850_667981_B12001C7 
X-CRM114-Status: GOOD (  13.35  )
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
	UPPERCASE_50_75 autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] ARM: update defconfigs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/am335x_mlo_defconfig         |  2 +-
 .../arm/configs/am35xx_pfc200_xload_defconfig |  5 --
 arch/arm/configs/animeo_ip_defconfig          |  7 +-
 arch/arm/configs/archosg9_xload_defconfig     |  2 +-
 arch/arm/configs/at91_multi_defconfig         |  1 -
 arch/arm/configs/at91rm9200ek_defconfig       |  1 -
 arch/arm/configs/at91sam9260ek_defconfig      |  7 +-
 .../configs/at91sam9261ek_bootstrap_defconfig |  6 +-
 arch/arm/configs/at91sam9261ek_defconfig      |  7 +-
 .../at91sam9261ek_first_stage_defconfig       |  7 +-
 arch/arm/configs/at91sam9g10ek_defconfig      |  7 +-
 arch/arm/configs/at91sam9g20ek_defconfig      |  7 +-
 arch/arm/configs/at91sam9m10g45ek_defconfig   |  7 +-
 arch/arm/configs/at91sam9m10ihd_defconfig     |  6 +-
 arch/arm/configs/at91sam9n12ek_defconfig      |  3 +-
 arch/arm/configs/canon-a1100_defconfig        |  2 -
 arch/arm/configs/clps711x_defconfig           |  1 -
 arch/arm/configs/dss11_defconfig              |  2 -
 arch/arm/configs/edb93xx_defconfig            |  1 -
 arch/arm/configs/haba_knx_lite_defconfig      |  7 +-
 arch/arm/configs/imx28_defconfig              |  1 -
 arch/arm/configs/imx_defconfig                |  3 -
 arch/arm/configs/imx_v7_defconfig             | 64 +++++++++----------
 arch/arm/configs/imx_v8_defconfig             |  8 +--
 arch/arm/configs/kindle-mx50_defconfig        |  1 -
 arch/arm/configs/layerscape_defconfig         | 12 +---
 arch/arm/configs/layerscape_v7_defconfig      | 10 +--
 arch/arm/configs/lubbock_defconfig            |  2 +-
 arch/arm/configs/mainstone_defconfig          |  2 +-
 arch/arm/configs/mioa701_defconfig            |  3 +-
 arch/arm/configs/module-mb7707_defconfig      |  1 -
 arch/arm/configs/mvebu_defconfig              |  2 +-
 arch/arm/configs/nhk8815_defconfig            |  1 -
 arch/arm/configs/omap3530_beagle_defconfig    |  2 +-
 .../configs/omap3530_beagle_xload_defconfig   |  5 --
 .../phytec-phycard-omap3-xload_defconfig      |  6 +-
 .../configs/phytec-phycard-omap3_defconfig    |  1 -
 .../phytec-phycard-omap4-xload_defconfig      |  5 --
 .../configs/phytec-phycard-omap4_defconfig    |  1 -
 ...hytec-phycore-omap4460-xload-mmc_defconfig |  2 +-
 ...ytec-phycore-omap4460-xload-nand_defconfig |  7 +-
 .../configs/phytec-phycore-omap4460_defconfig |  3 +-
 arch/arm/configs/pm9261_defconfig             |  1 -
 arch/arm/configs/pm9263_defconfig             |  1 -
 arch/arm/configs/pm9g45_defconfig             |  7 +-
 arch/arm/configs/qil_a9260_defconfig          |  7 +-
 arch/arm/configs/qil_a9g20_defconfig          |  7 +-
 arch/arm/configs/rockchip_v7a_defconfig       |  1 -
 arch/arm/configs/sama5d3xek_defconfig         |  9 +--
 arch/arm/configs/sama5d4_xplained_defconfig   |  7 +-
 arch/arm/configs/sama5d4ek_defconfig          |  7 +-
 arch/arm/configs/socfpga-arria10_defconfig    |  2 -
 arch/arm/configs/socfpga_defconfig            |  1 -
 arch/arm/configs/stm32mp_defconfig            |  1 -
 arch/arm/configs/telit_evk_pro3_defconfig     |  6 +-
 arch/arm/configs/tny_a9260_defconfig          |  7 +-
 .../arm/configs/tny_a9263_bootstrap_defconfig |  6 +-
 arch/arm/configs/tny_a9263_defconfig          |  7 +-
 arch/arm/configs/tny_a9g20_defconfig          |  7 +-
 arch/arm/configs/usb_a9260_defconfig          |  7 +-
 .../arm/configs/usb_a9263_bootstrap_defconfig |  6 +-
 arch/arm/configs/usb_a9263_defconfig          |  7 +-
 arch/arm/configs/usb_a9g20_defconfig          |  7 +-
 .../arm/configs/versatilepb_arm1176_defconfig |  3 +-
 arch/arm/configs/versatilepb_defconfig        |  3 +-
 arch/arm/configs/virt2real_defconfig          |  1 -
 arch/arm/configs/zii_vf610_dev_defconfig      |  1 -
 arch/arm/configs/zylonite310_defconfig        |  2 +-
 arch/arm/configs/zynqmp_defconfig             |  2 +-
 69 files changed, 82 insertions(+), 271 deletions(-)

diff --git a/arch/arm/configs/am335x_mlo_defconfig b/arch/arm/configs/am335x_mlo_defconfig
index f2b722056b..1ceb996187 100644
--- a/arch/arm/configs/am335x_mlo_defconfig
+++ b/arch/arm/configs/am335x_mlo_defconfig
@@ -1,5 +1,4 @@
 CONFIG_ARCH_OMAP_SINGLE=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x1b400
 CONFIG_OMAP_BUILD_IFT=y
 CONFIG_OMAP_SERIALBOOT=y
 CONFIG_OMAP_MULTI_BOARDS=y
@@ -11,6 +10,7 @@ CONFIG_THUMB2_BAREBOX=y
 # CONFIG_MEMINFO is not set
 CONFIG_IMAGE_COMPRESSION_XZKERN=y
 CONFIG_MMU=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x1b400
 CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_TLSF=y
 CONFIG_RELOCATABLE=y
diff --git a/arch/arm/configs/am35xx_pfc200_xload_defconfig b/arch/arm/configs/am35xx_pfc200_xload_defconfig
index 4bc119f75b..73888fd7b4 100644
--- a/arch/arm/configs/am35xx_pfc200_xload_defconfig
+++ b/arch/arm/configs/am35xx_pfc200_xload_defconfig
@@ -22,11 +22,6 @@ CONFIG_MTD=y
 # CONFIG_MTD_WRITE is not set
 # CONFIG_MTD_OOB_DEVICE is not set
 CONFIG_NAND=y
-# CONFIG_NAND_ECC_SOFT is not set
-# CONFIG_NAND_ECC_HW_SYNDROME is not set
-# CONFIG_NAND_ECC_HW_NONE is not set
-# CONFIG_NAND_INFO is not set
-# CONFIG_NAND_BBT is not set
 CONFIG_NAND_OMAP_GPMC=y
 CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
diff --git a/arch/arm/configs/animeo_ip_defconfig b/arch/arm/configs/animeo_ip_defconfig
index 9005d65e22..930f19ddb5 100644
--- a/arch/arm/configs/animeo_ip_defconfig
+++ b/arch/arm/configs/animeo_ip_defconfig
@@ -1,15 +1,13 @@
 CONFIG_ARCH_AT91=y
 CONFIG_ARCH_AT91SAM9260=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
 CONFIG_PROMPT="Animeo-IP:"
 CONFIG_BAUDRATE=38400
-CONFIG_GLOB=y
 CONFIG_PROMPT_HUSH_PS2="y"
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
@@ -58,9 +56,6 @@ CONFIG_NET_USB_ASIX=y
 CONFIG_MTD=y
 # CONFIG_MTD_OOB_DEVICE is not set
 CONFIG_NAND=y
-# CONFIG_NAND_ECC_HW is not set
-# CONFIG_NAND_ECC_HW_SYNDROME is not set
-# CONFIG_NAND_ECC_HW_NONE is not set
 CONFIG_NAND_ATMEL=y
 CONFIG_USB_HOST=y
 CONFIG_MCI=y
diff --git a/arch/arm/configs/archosg9_xload_defconfig b/arch/arm/configs/archosg9_xload_defconfig
index f90757d954..fd475d65ca 100644
--- a/arch/arm/configs/archosg9_xload_defconfig
+++ b/arch/arm/configs/archosg9_xload_defconfig
@@ -1,6 +1,5 @@
 CONFIG_TEXT_BASE=0x40300000
 CONFIG_ARCH_OMAP_SINGLE=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0xC000
 # CONFIG_OMAP_GPMC is not set
 CONFIG_OMAP_BUILD_IFT=y
 CONFIG_OMAP4_USBBOOT=y
@@ -8,6 +7,7 @@ CONFIG_MACH_ARCHOSG9=y
 CONFIG_THUMB2_BAREBOX=y
 # CONFIG_BANNER is not set
 # CONFIG_MEMINFO is not set
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0xC000
 CONFIG_MALLOC_SIZE=0x2000000
 CONFIG_SHELL_NONE=y
 # CONFIG_ERRNO_MESSAGES is not set
diff --git a/arch/arm/configs/at91_multi_defconfig b/arch/arm/configs/at91_multi_defconfig
index 6cbe013162..bbba137be8 100644
--- a/arch/arm/configs/at91_multi_defconfig
+++ b/arch/arm/configs/at91_multi_defconfig
@@ -97,7 +97,6 @@ CONFIG_I2C_AT91=y
 CONFIG_MTD=y
 CONFIG_NAND=y
 CONFIG_NAND_ATMEL=y
-CONFIG_NAND_ATMEL_PMECC=y
 CONFIG_MTD_UBI=y
 CONFIG_MTD_UBI_FASTMAP=y
 CONFIG_USB_HOST=y
diff --git a/arch/arm/configs/at91rm9200ek_defconfig b/arch/arm/configs/at91rm9200ek_defconfig
index fa6130e8ee..aa91c0cda6 100644
--- a/arch/arm/configs/at91rm9200ek_defconfig
+++ b/arch/arm/configs/at91rm9200ek_defconfig
@@ -5,7 +5,6 @@ CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
 CONFIG_PROMPT="9200-EK:"
-CONFIG_GLOB=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
diff --git a/arch/arm/configs/at91sam9260ek_defconfig b/arch/arm/configs/at91sam9260ek_defconfig
index e39be7953a..b4a291ed57 100644
--- a/arch/arm/configs/at91sam9260ek_defconfig
+++ b/arch/arm/configs/at91sam9260ek_defconfig
@@ -1,14 +1,12 @@
 CONFIG_ARCH_AT91=y
 CONFIG_ARCH_AT91SAM9260=y
 CONFIG_MACH_AT91SAM9260EK=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
 CONFIG_PROMPT="9260-EK:"
-CONFIG_GLOB=y
 CONFIG_PROMPT_HUSH_PS2="y"
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
@@ -52,9 +50,6 @@ CONFIG_DRIVER_NET_MACB=y
 CONFIG_MTD=y
 # CONFIG_MTD_OOB_DEVICE is not set
 CONFIG_NAND=y
-# CONFIG_NAND_ECC_HW is not set
-# CONFIG_NAND_ECC_HW_SYNDROME is not set
-# CONFIG_NAND_ECC_HW_NONE is not set
 CONFIG_NAND_ATMEL=y
 CONFIG_USB_GADGET=y
 CONFIG_USB_GADGET_DFU=y
diff --git a/arch/arm/configs/at91sam9261ek_bootstrap_defconfig b/arch/arm/configs/at91sam9261ek_bootstrap_defconfig
index 61ead6282b..3811594b1a 100644
--- a/arch/arm/configs/at91sam9261ek_bootstrap_defconfig
+++ b/arch/arm/configs/at91sam9261ek_bootstrap_defconfig
@@ -1,11 +1,10 @@
 CONFIG_ARCH_AT91=y
 CONFIG_ARCH_AT91SAM9261=y
 CONFIG_AT91_BOOTSTRAP=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x27000
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x27000
 CONFIG_MALLOC_DUMMY=y
 CONFIG_PROMPT="9261-EK:"
 CONFIG_SHELL_NONE=y
@@ -16,9 +15,6 @@ CONFIG_MTD=y
 # CONFIG_MTD_WRITE is not set
 # CONFIG_MTD_OOB_DEVICE is not set
 CONFIG_NAND=y
-# CONFIG_NAND_ECC_HW is not set
-# CONFIG_NAND_ECC_HW_SYNDROME is not set
-# CONFIG_NAND_ECC_HW_NONE is not set
 CONFIG_NAND_ATMEL=y
 # CONFIG_FS_RAMFS is not set
 CONFIG_BOOTSTRAP_DEVFS=y
diff --git a/arch/arm/configs/at91sam9261ek_defconfig b/arch/arm/configs/at91sam9261ek_defconfig
index 430eca553c..cf8c74de9e 100644
--- a/arch/arm/configs/at91sam9261ek_defconfig
+++ b/arch/arm/configs/at91sam9261ek_defconfig
@@ -1,14 +1,12 @@
 CONFIG_ARCH_AT91=y
 CONFIG_ARCH_AT91SAM9261=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
 CONFIG_PROMPT="9261-EK:"
-CONFIG_GLOB=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
@@ -55,9 +53,6 @@ CONFIG_MTD=y
 # CONFIG_MTD_OOB_DEVICE is not set
 CONFIG_MTD_DATAFLASH=y
 CONFIG_NAND=y
-# CONFIG_NAND_ECC_HW is not set
-# CONFIG_NAND_ECC_HW_SYNDROME is not set
-# CONFIG_NAND_ECC_HW_NONE is not set
 CONFIG_NAND_ATMEL=y
 CONFIG_USB_GADGET=y
 CONFIG_USB_GADGET_DFU=y
diff --git a/arch/arm/configs/at91sam9261ek_first_stage_defconfig b/arch/arm/configs/at91sam9261ek_first_stage_defconfig
index b05cff14e1..8e6065de34 100644
--- a/arch/arm/configs/at91sam9261ek_first_stage_defconfig
+++ b/arch/arm/configs/at91sam9261ek_first_stage_defconfig
@@ -1,15 +1,13 @@
 CONFIG_ARCH_AT91=y
 CONFIG_ARCH_AT91SAM9261=y
 CONFIG_AT91_LOAD_BAREBOX_SRAM=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x27000
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x27000
 CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
 CONFIG_PROMPT="9261-EK:"
-CONFIG_GLOB=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
@@ -56,9 +54,6 @@ CONFIG_MTD=y
 # CONFIG_MTD_OOB_DEVICE is not set
 CONFIG_MTD_DATAFLASH=y
 CONFIG_NAND=y
-# CONFIG_NAND_ECC_HW is not set
-# CONFIG_NAND_ECC_HW_SYNDROME is not set
-# CONFIG_NAND_ECC_HW_NONE is not set
 CONFIG_NAND_ATMEL=y
 CONFIG_USB_GADGET=y
 CONFIG_USB_GADGET_DFU=y
diff --git a/arch/arm/configs/at91sam9g10ek_defconfig b/arch/arm/configs/at91sam9g10ek_defconfig
index 3db3993419..4672efdc57 100644
--- a/arch/arm/configs/at91sam9g10ek_defconfig
+++ b/arch/arm/configs/at91sam9g10ek_defconfig
@@ -1,14 +1,12 @@
 CONFIG_ARCH_AT91=y
 CONFIG_ARCH_AT91SAM9G10=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
 CONFIG_PROMPT="9G10-EK:"
-CONFIG_GLOB=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
@@ -53,9 +51,6 @@ CONFIG_DRIVER_NET_DM9K=y
 CONFIG_MTD=y
 # CONFIG_MTD_OOB_DEVICE is not set
 CONFIG_NAND=y
-# CONFIG_NAND_ECC_HW is not set
-# CONFIG_NAND_ECC_HW_SYNDROME is not set
-# CONFIG_NAND_ECC_HW_NONE is not set
 CONFIG_NAND_ATMEL=y
 CONFIG_USB_GADGET=y
 CONFIG_USB_GADGET_DFU=y
diff --git a/arch/arm/configs/at91sam9g20ek_defconfig b/arch/arm/configs/at91sam9g20ek_defconfig
index 70f42078d9..b102d26414 100644
--- a/arch/arm/configs/at91sam9g20ek_defconfig
+++ b/arch/arm/configs/at91sam9g20ek_defconfig
@@ -1,14 +1,12 @@
 CONFIG_ARCH_AT91=y
 CONFIG_ARCH_AT91SAM9G20=y
 CONFIG_AT91_HAVE_2MMC=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
 CONFIG_PROMPT="9G20-EK:"
-CONFIG_GLOB=y
 CONFIG_PROMPT_HUSH_PS2="y"
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
@@ -52,9 +50,6 @@ CONFIG_DRIVER_NET_MACB=y
 CONFIG_MTD=y
 # CONFIG_MTD_OOB_DEVICE is not set
 CONFIG_NAND=y
-# CONFIG_NAND_ECC_HW is not set
-# CONFIG_NAND_ECC_HW_SYNDROME is not set
-# CONFIG_NAND_ECC_HW_NONE is not set
 CONFIG_NAND_ATMEL=y
 CONFIG_USB_GADGET=y
 CONFIG_USB_GADGET_DFU=y
diff --git a/arch/arm/configs/at91sam9m10g45ek_defconfig b/arch/arm/configs/at91sam9m10g45ek_defconfig
index cf473ff488..9cc66d4e77 100644
--- a/arch/arm/configs/at91sam9m10g45ek_defconfig
+++ b/arch/arm/configs/at91sam9m10g45ek_defconfig
@@ -1,15 +1,13 @@
 CONFIG_ARCH_AT91=y
 CONFIG_ARCH_AT91SAM9G45=y
 CONFIG_MACH_AT91SAM9M10G45EK=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_MALLOC_SIZE=0x800000
 CONFIG_MALLOC_TLSF=y
 CONFIG_PROMPT="9M10G45-EK:"
-CONFIG_GLOB=y
 CONFIG_PROMPT_HUSH_PS2=">"
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
@@ -67,9 +65,6 @@ CONFIG_MTD=y
 # CONFIG_MTD_OOB_DEVICE is not set
 CONFIG_MTD_DATAFLASH=y
 CONFIG_NAND=y
-# CONFIG_NAND_ECC_HW is not set
-# CONFIG_NAND_ECC_HW_SYNDROME is not set
-# CONFIG_NAND_ECC_HW_NONE is not set
 CONFIG_NAND_ATMEL=y
 CONFIG_USB_HOST=y
 CONFIG_USB_EHCI=y
diff --git a/arch/arm/configs/at91sam9m10ihd_defconfig b/arch/arm/configs/at91sam9m10ihd_defconfig
index 9507e36223..6428274318 100644
--- a/arch/arm/configs/at91sam9m10ihd_defconfig
+++ b/arch/arm/configs/at91sam9m10ihd_defconfig
@@ -1,10 +1,9 @@
 CONFIG_ARCH_AT91=y
 CONFIG_ARCH_AT91SAM9G45=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_MALLOC_SIZE=0xa00000
 CONFIG_MALLOC_TLSF=y
 CONFIG_PROMPT="9M10IHD:"
@@ -68,9 +67,6 @@ CONFIG_MTD=y
 # CONFIG_MTD_OOB_DEVICE is not set
 CONFIG_MTD_M25P80=y
 CONFIG_NAND=y
-# CONFIG_NAND_ECC_HW is not set
-# CONFIG_NAND_ECC_HW_SYNDROME is not set
-# CONFIG_NAND_ECC_HW_NONE is not set
 CONFIG_NAND_ATMEL=y
 CONFIG_USB_HOST=y
 CONFIG_USB_EHCI=y
diff --git a/arch/arm/configs/at91sam9n12ek_defconfig b/arch/arm/configs/at91sam9n12ek_defconfig
index 3b58ac1101..813934a116 100644
--- a/arch/arm/configs/at91sam9n12ek_defconfig
+++ b/arch/arm/configs/at91sam9n12ek_defconfig
@@ -1,12 +1,11 @@
 CONFIG_TEXT_BASE=0x26f00000
 CONFIG_ARCH_AT91=y
 CONFIG_ARCH_AT91SAM9N12=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_PBL_IMAGE=y
 CONFIG_IMAGE_COMPRESSION_XZKERN=y
 CONFIG_MMU=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_MALLOC_SIZE=0xa00000
 CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
diff --git a/arch/arm/configs/canon-a1100_defconfig b/arch/arm/configs/canon-a1100_defconfig
index 12a3f0af95..53348f6e8a 100644
--- a/arch/arm/configs/canon-a1100_defconfig
+++ b/arch/arm/configs/canon-a1100_defconfig
@@ -2,10 +2,8 @@ CONFIG_TEXT_BASE=0x00300000
 CONFIG_ARCH_DIGIC=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_PBL_IMAGE=y
-CONFIG_IMAGE_COMPRESSION_LZ4=y
 CONFIG_MALLOC_SIZE=0x200000
 CONFIG_PROMPT="canon-a1100 > "
-CONFIG_GLOB=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
diff --git a/arch/arm/configs/clps711x_defconfig b/arch/arm/configs/clps711x_defconfig
index 684ae79e22..3a2d8b5a05 100644
--- a/arch/arm/configs/clps711x_defconfig
+++ b/arch/arm/configs/clps711x_defconfig
@@ -10,7 +10,6 @@ CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_BOOTM_INITRD=y
-CONFIG_DEFAULT_COMPRESSION_LZO=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_CMD_IOMEM=y
 # CONFIG_CMD_BOOTU is not set
diff --git a/arch/arm/configs/dss11_defconfig b/arch/arm/configs/dss11_defconfig
index e057e7d6a9..fe2680e431 100644
--- a/arch/arm/configs/dss11_defconfig
+++ b/arch/arm/configs/dss11_defconfig
@@ -25,8 +25,6 @@ CONFIG_DRIVER_NET_MACB=y
 CONFIG_DRIVER_SPI_ATMEL=y
 CONFIG_MTD=y
 CONFIG_NAND=y
-# CONFIG_NAND_ECC_HW_SYNDROME is not set
-# CONFIG_NAND_ECC_HW_NONE is not set
 CONFIG_NAND_ATMEL=y
 CONFIG_DISK_WRITE=y
 CONFIG_USB_HOST=y
diff --git a/arch/arm/configs/edb93xx_defconfig b/arch/arm/configs/edb93xx_defconfig
index 84c920aa97..0632be1945 100644
--- a/arch/arm/configs/edb93xx_defconfig
+++ b/arch/arm/configs/edb93xx_defconfig
@@ -1,7 +1,6 @@
 CONFIG_ARCH_EP93XX=y
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_GLOB=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_PARTITION=y
diff --git a/arch/arm/configs/haba_knx_lite_defconfig b/arch/arm/configs/haba_knx_lite_defconfig
index 7222fd312e..a72359931d 100644
--- a/arch/arm/configs/haba_knx_lite_defconfig
+++ b/arch/arm/configs/haba_knx_lite_defconfig
@@ -2,15 +2,13 @@ CONFIG_TEXT_BASE=0x27f00000
 CONFIG_ARCH_AT91=y
 CONFIG_ARCH_AT91SAM9G20=y
 CONFIG_MACH_HABA_KNX_LITE=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
 CONFIG_PROMPT="HABA-KNX-LITE:"
-CONFIG_GLOB=y
 CONFIG_PROMPT_HUSH_PS2="y"
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
@@ -64,9 +62,6 @@ CONFIG_MTD=y
 # CONFIG_MTD_OOB_DEVICE is not set
 CONFIG_MTD_M25P80=y
 CONFIG_NAND=y
-# CONFIG_NAND_ECC_HW is not set
-# CONFIG_NAND_ECC_HW_SYNDROME is not set
-# CONFIG_NAND_ECC_HW_NONE is not set
 CONFIG_NAND_ATMEL=y
 CONFIG_MTD_UBI=y
 CONFIG_USB_GADGET=y
diff --git a/arch/arm/configs/imx28_defconfig b/arch/arm/configs/imx28_defconfig
index beb0bc2f76..8e66983e35 100644
--- a/arch/arm/configs/imx28_defconfig
+++ b/arch/arm/configs/imx28_defconfig
@@ -92,7 +92,6 @@ CONFIG_NET_USB_ASIX=y
 CONFIG_USB_NET_AX88179_178A=y
 CONFIG_NET_USB_SMSC95XX=y
 CONFIG_DRIVER_SPI_MXS=y
-CONFIG_I2C=y
 CONFIG_MTD=y
 CONFIG_NAND=y
 CONFIG_NAND_MXS=y
diff --git a/arch/arm/configs/imx_defconfig b/arch/arm/configs/imx_defconfig
index e6333220b6..4813b4d4ce 100644
--- a/arch/arm/configs/imx_defconfig
+++ b/arch/arm/configs/imx_defconfig
@@ -1,5 +1,4 @@
 CONFIG_ARCH_IMX=y
-CONFIG_IMX_MULTI_BOARDS=y
 CONFIG_MACH_SCB9328=y
 CONFIG_MACH_TX25=y
 CONFIG_MACH_PCA100=y
@@ -85,8 +84,6 @@ CONFIG_MTD_RAW_DEVICE=y
 CONFIG_DRIVER_CFI=y
 CONFIG_CFI_BUFFER_WRITE=y
 CONFIG_NAND=y
-# CONFIG_NAND_ECC_SOFT is not set
-# CONFIG_NAND_ECC_HW_SYNDROME is not set
 CONFIG_NAND_ALLOW_ERASE_BAD=y
 CONFIG_NAND_IMX=y
 CONFIG_MTD_UBI=y
diff --git a/arch/arm/configs/imx_v7_defconfig b/arch/arm/configs/imx_v7_defconfig
index f8deca324a..3af6526376 100644
--- a/arch/arm/configs/imx_v7_defconfig
+++ b/arch/arm/configs/imx_v7_defconfig
@@ -1,58 +1,57 @@
 CONFIG_ARCH_IMX=y
-CONFIG_IMX_MULTI_BOARDS=y
 CONFIG_MACH_KINDLE_MX50=y
 CONFIG_MACH_CCMX51=y
 CONFIG_MACH_EFIKA_MX_SMARTBOOK=y
-CONFIG_MACH_EMBEDSKY_E9=y
 CONFIG_MACH_FREESCALE_MX51_PDK=y
 CONFIG_MACH_CCMX53=y
 CONFIG_MACH_FREESCALE_MX53_LOCO=y
 CONFIG_MACH_GUF_VINCELL=y
+CONFIG_MACH_TX53=y
 CONFIG_MACH_TQMA53=y
 CONFIG_MACH_FREESCALE_MX53_VMX53=y
-CONFIG_MACH_TX53=y
-CONFIG_MACH_PHYTEC_SOM_IMX6=y
-CONFIG_MACH_PROTONIC_IMX6=y
-CONFIG_MACH_KONTRON_SAMX6I=y
-CONFIG_MACH_DFI_FS700_M60=y
-CONFIG_MACH_GUF_SANTARO=y
+CONFIG_MACH_ZII_RDU1=y
+CONFIG_MACH_ADVANTECH_ROM_742X=y
+CONFIG_MACH_NITROGEN6=y
+CONFIG_MACH_CM_FX6=y
 CONFIG_MACH_REALQ7=y
-CONFIG_MACH_GK802=y
+CONFIG_MACH_DFI_FS700_M60=y
+CONFIG_MACH_DIGI_CCIMX6ULSBCPRO=y
 CONFIG_MACH_ELTEC_HIPERCAM=y
-CONFIG_MACH_TQMA6X=y
-CONFIG_MACH_TX6X=y
+CONFIG_MACH_EMBEDSKY_E9=y
+CONFIG_MACH_EMBEST_MARSBOARD=y
+CONFIG_MACH_EMBEST_RIOTBOARD=y
 CONFIG_MACH_SABRELITE=y
 CONFIG_MACH_SABRESD=y
 CONFIG_MACH_FREESCALE_IMX6SX_SABRESDB=y
-CONFIG_MACH_NITROGEN6=y
+CONFIG_MACH_UDOO=y
+CONFIG_MACH_UDOO_NEO=y
+CONFIG_MACH_GUF_SANTARO=y
+CONFIG_MACH_GW_VENTANA=y
+CONFIG_MACH_GRINN_LITEBOARD=y
+CONFIG_MACH_TX6X=y
+CONFIG_MACH_KONTRON_SAMX6I=y
 CONFIG_MACH_NOVENA=y
+CONFIG_MACH_NXP_IMX6ULL_EVK=y
+CONFIG_MACH_PHYTEC_SOM_IMX6=y
+CONFIG_MACH_PROTONIC_IMX6=y
+CONFIG_MACH_SKOV_IMX6=y
 CONFIG_MACH_SOLIDRUN_MICROSOM=y
 CONFIG_MACH_TECHNEXION_PICO_HOBBIT=y
 CONFIG_MACH_TECHNEXION_WANDBOARD=y
-CONFIG_MACH_EMBEST_MARSBOARD=y
-CONFIG_MACH_EMBEST_RIOTBOARD=y
-CONFIG_MACH_UDOO=y
-CONFIG_MACH_UDOO_NEO=y
+CONFIG_MACH_TQMA6X=y
 CONFIG_MACH_VARISCITE_MX6=y
-CONFIG_MACH_GW_VENTANA=y
-CONFIG_MACH_CM_FX6=y
-CONFIG_MACH_ADVANTECH_ROM_742X=y
-CONFIG_MACH_WARP7=y
-CONFIG_MACH_AC_SXB=y
-CONFIG_MACH_MEERKAT96=y
-CONFIG_MACH_VF610_TWR=y
-CONFIG_MACH_ZII_RDU1=y
+CONFIG_MACH_WEBASTO_CCBV2=y
+CONFIG_MACH_GK802=y
 CONFIG_MACH_ZII_RDU2=y
-CONFIG_MACH_ZII_VF610_DEV=y
-CONFIG_MACH_ZII_IMX7D_DEV=y
-CONFIG_MACH_PHYTEC_PHYCORE_IMX7=y
+CONFIG_MACH_MEERKAT96=y
+CONFIG_MACH_AC_SXB=y
+CONFIG_MACH_WARP7=y
 CONFIG_MACH_FREESCALE_MX7_SABRESD=y
+CONFIG_MACH_PHYTEC_PHYCORE_IMX7=y
+CONFIG_MACH_ZII_IMX7D_DEV=y
 CONFIG_MACH_KAMSTRUP_MX7_CONCENTRATOR=y
-CONFIG_MACH_NXP_IMX6ULL_EVK=y
-CONFIG_MACH_GRINN_LITEBOARD=y
-CONFIG_MACH_DIGI_CCIMX6ULSBCPRO=y
-CONFIG_MACH_WEBASTO_CCBV2=y
-CONFIG_MACH_SKOV_IMX6=y
+CONFIG_MACH_VF610_TWR=y
+CONFIG_MACH_ZII_VF610_DEV=y
 CONFIG_IMX_IIM_FUSE_BLOW=y
 CONFIG_THUMB2_BAREBOX=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
@@ -152,7 +151,6 @@ CONFIG_NET=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_DRIVER_NET_FEC_IMX=y
-CONFIG_AT803X_PHY=y
 CONFIG_MICREL_PHY=y
 CONFIG_MDIO_BITBANG=y
 CONFIG_MDIO_GPIO=y
diff --git a/arch/arm/configs/imx_v8_defconfig b/arch/arm/configs/imx_v8_defconfig
index 104863f05f..93b85ff5ea 100644
--- a/arch/arm/configs/imx_v8_defconfig
+++ b/arch/arm/configs/imx_v8_defconfig
@@ -1,16 +1,15 @@
 CONFIG_ARCH_IMX=y
-CONFIG_IMX_MULTI_BOARDS=y
-CONFIG_MACH_PROTONIC_IMX8M=y
 CONFIG_MACH_INNOCOMM_WB15=y
-CONFIG_MACH_ZII_IMX8MQ_DEV=y
 CONFIG_MACH_NXP_IMX8MM_EVK=y
 CONFIG_MACH_NXP_IMX8MN_EVK=y
 CONFIG_MACH_NXP_IMX8MP_EVK=y
 CONFIG_MACH_NXP_IMX8MQ_EVK=y
 CONFIG_MACH_PHYTEC_SOM_IMX8MQ=y
-CONFIG_MACH_TQ_MBA8MPXL=y
 CONFIG_MACH_POLYHEX_DEBIX=y
+CONFIG_MACH_PROTONIC_IMX8M=y
+CONFIG_MACH_TQ_MBA8MPXL=y
 CONFIG_MACH_VARISCITE_DT8MCUSTOMBOARD_IMX8MP=y
+CONFIG_MACH_ZII_IMX8MQ_DEV=y
 CONFIG_64BIT=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_MMU=y
@@ -94,7 +93,6 @@ CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_SERIAL_DEV_BUS=y
 CONFIG_DRIVER_NET_DESIGNWARE_IMX8=y
 CONFIG_DRIVER_NET_FEC_IMX=y
-CONFIG_AT803X_PHY=y
 CONFIG_DP83867_PHY=y
 CONFIG_MICREL_PHY=y
 CONFIG_REALTEK_PHY=y
diff --git a/arch/arm/configs/kindle-mx50_defconfig b/arch/arm/configs/kindle-mx50_defconfig
index 95fafd56e6..1ceef8088a 100644
--- a/arch/arm/configs/kindle-mx50_defconfig
+++ b/arch/arm/configs/kindle-mx50_defconfig
@@ -1,5 +1,4 @@
 CONFIG_ARCH_IMX=y
-CONFIG_IMX_MULTI_BOARDS=y
 CONFIG_MACH_KINDLE_MX50=y
 CONFIG_THUMB2_BAREBOX=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
diff --git a/arch/arm/configs/layerscape_defconfig b/arch/arm/configs/layerscape_defconfig
index fb8e885353..64e006a37c 100644
--- a/arch/arm/configs/layerscape_defconfig
+++ b/arch/arm/configs/layerscape_defconfig
@@ -34,10 +34,7 @@ CONFIG_CMD_GO=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_UIMAGE=y
 CONFIG_CMD_PARTITION=y
-CONFIG_CMD_MOUNT=y
-CONFIG_CMD_UBI=y
 CONFIG_CMD_UBIFORMAT=y
-CONFIG_CMD_UMOUNT=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_LOADENV=y
 CONFIG_CMD_PRINTENV=y
@@ -73,7 +70,6 @@ CONFIG_CMD_GPIO=y
 CONFIG_CMD_I2C=y
 CONFIG_CMD_LED=y
 CONFIG_CMD_SPI=y
-CONFIG_CMD_NAND=y
 CONFIG_CMD_LED_TRIGGER=y
 CONFIG_CMD_WD=y
 CONFIG_CMD_BAREBOX_UPDATE=y
@@ -90,16 +86,15 @@ CONFIG_DP83867_PHY=y
 CONFIG_REALTEK_PHY=y
 CONFIG_NET_DSA_MV88E6XXX=y
 CONFIG_DRIVER_SPI_FSL_QUADSPI=y
-CONFIG_NAND=y
-CONFIG_NAND_FSL_IFC=y
-CONFIG_MTD_UBI=y
-CONFIG_MTD_UBI_BEB_LIMIT=20
 CONFIG_I2C=y
 CONFIG_I2C_IMX=y
 CONFIG_I2C_MUX=y
 CONFIG_I2C_MUX_PCA954x=y
 CONFIG_MTD=y
 CONFIG_MTD_M25P80=y
+CONFIG_NAND=y
+CONFIG_NAND_FSL_IFC=y
+CONFIG_MTD_UBI=y
 CONFIG_MCI=y
 CONFIG_MCI_MMC_BOOT_PARTITIONS=y
 CONFIG_MCI_IMX_ESDHC=y
@@ -124,4 +119,3 @@ CONFIG_FS_FAT_LFN=y
 CONFIG_FS_UBIFS=y
 CONFIG_FS_UBIFS_COMPRESSION_LZO=y
 CONFIG_ZLIB=y
-CONFIG_LZO_DECOMPRESS=y
diff --git a/arch/arm/configs/layerscape_v7_defconfig b/arch/arm/configs/layerscape_v7_defconfig
index 69176738d7..792e9274b2 100644
--- a/arch/arm/configs/layerscape_v7_defconfig
+++ b/arch/arm/configs/layerscape_v7_defconfig
@@ -29,10 +29,7 @@ CONFIG_CMD_GO=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_UIMAGE=y
 CONFIG_CMD_PARTITION=y
-CONFIG_CMD_MOUNT=y
-CONFIG_CMD_UBI=y
 CONFIG_CMD_UBIFORMAT=y
-CONFIG_CMD_UMOUNT=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_LOADENV=y
 CONFIG_CMD_PRINTENV=y
@@ -63,9 +60,7 @@ CONFIG_CMD_DETECT=y
 CONFIG_CMD_FLASH=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_I2C=y
-CONFIG_CMD_LED=y
 CONFIG_CMD_SPI=y
-CONFIG_CMD_LED_TRIGGER=y
 CONFIG_CMD_BAREBOX_UPDATE=y
 CONFIG_CMD_OF_NODE=y
 CONFIG_CMD_OF_PROPERTY=y
@@ -74,21 +69,18 @@ CONFIG_CMD_TIME=y
 CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_SPI_FSL_QUADSPI=y
-CONFIG_MTD_UBI=y
-CONFIG_MTD_UBI_BEB_LIMIT=20
 CONFIG_I2C=y
 CONFIG_I2C_IMX=y
 CONFIG_I2C_MUX=y
 CONFIG_I2C_MUX_PCA954x=y
 CONFIG_MTD=y
 CONFIG_MTD_M25P80=y
+CONFIG_MTD_UBI=y
 CONFIG_MCI=y
 CONFIG_MCI_MMC_BOOT_PARTITIONS=y
 CONFIG_MCI_IMX_ESDHC=y
-CONFIG_LED_PCA955X=y
 CONFIG_EEPROM_AT25=y
 CONFIG_EEPROM_AT24=y
 CONFIG_GPIO_PCA953X=y
 CONFIG_ZLIB=y
 CONFIG_LZO_DECOMPRESS=y
-CONFIG_FS_TFTP=y
diff --git a/arch/arm/configs/lubbock_defconfig b/arch/arm/configs/lubbock_defconfig
index a3f988aec9..78f2236648 100644
--- a/arch/arm/configs/lubbock_defconfig
+++ b/arch/arm/configs/lubbock_defconfig
@@ -1,11 +1,11 @@
 CONFIG_ARCH_PXA=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x100000
 CONFIG_AEABI=y
 CONFIG_ARM_BOARD_APPEND_ATAG=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
 # CONFIG_BANNER is not set
 CONFIG_MMU=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x100000
 CONFIG_BAREBOX_MAX_BARE_INIT_SIZE=0x80000
 CONFIG_MALLOC_SIZE=0x1000000
 CONFIG_EXPERIMENTAL=y
diff --git a/arch/arm/configs/mainstone_defconfig b/arch/arm/configs/mainstone_defconfig
index b685e7fc8d..d452885e6d 100644
--- a/arch/arm/configs/mainstone_defconfig
+++ b/arch/arm/configs/mainstone_defconfig
@@ -1,5 +1,4 @@
 CONFIG_ARCH_PXA=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x100000
 CONFIG_ARCH_PXA27X=y
 CONFIG_AEABI=y
 CONFIG_ARM_BOARD_APPEND_ATAG=y
@@ -7,6 +6,7 @@ CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
 # CONFIG_BANNER is not set
 CONFIG_MMU=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x100000
 CONFIG_BAREBOX_MAX_BARE_INIT_SIZE=0x80000
 CONFIG_MALLOC_SIZE=0x1000000
 CONFIG_EXPERIMENTAL=y
diff --git a/arch/arm/configs/mioa701_defconfig b/arch/arm/configs/mioa701_defconfig
index a786d1618e..991fca0d7b 100644
--- a/arch/arm/configs/mioa701_defconfig
+++ b/arch/arm/configs/mioa701_defconfig
@@ -1,5 +1,4 @@
 CONFIG_ARCH_PXA=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x100000
 CONFIG_ARCH_PXA27X=y
 CONFIG_AEABI=y
 CONFIG_ARM_BOARD_APPEND_ATAG=y
@@ -7,12 +6,12 @@ CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
 # CONFIG_BANNER is not set
 CONFIG_MMU=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x100000
 CONFIG_BAREBOX_MAX_BARE_INIT_SIZE=0x80000
 CONFIG_MALLOC_SIZE=0x1000000
 CONFIG_EXPERIMENTAL=y
 CONFIG_MODULES=y
 CONFIG_KALLSYMS=y
-CONFIG_GLOB=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
diff --git a/arch/arm/configs/module-mb7707_defconfig b/arch/arm/configs/module-mb7707_defconfig
index 9484c39fb8..60be16df74 100644
--- a/arch/arm/configs/module-mb7707_defconfig
+++ b/arch/arm/configs/module-mb7707_defconfig
@@ -6,7 +6,6 @@ CONFIG_PBL_RELOCATABLE=y
 CONFIG_MALLOC_TLSF=y
 CONFIG_PROMPT="MB 77.07: "
 CONFIG_BAUDRATE=38400
-CONFIG_GLOB=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
diff --git a/arch/arm/configs/mvebu_defconfig b/arch/arm/configs/mvebu_defconfig
index c830cf2f09..6a436f3abd 100644
--- a/arch/arm/configs/mvebu_defconfig
+++ b/arch/arm/configs/mvebu_defconfig
@@ -28,7 +28,6 @@ CONFIG_BOOTM_INITRD=y
 CONFIG_BOOTM_OFTREE=y
 CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_BLSPEC=y
-CONFIG_IMD_TARGET=y
 CONFIG_CONSOLE_ACTIVATE_NONE=y
 CONFIG_CONSOLE_ALLOW_COLOR=y
 CONFIG_PBL_CONSOLE=y
@@ -131,3 +130,4 @@ CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_FAT_LFN=y
 CONFIG_BZLIB=y
 CONFIG_LZO_DECOMPRESS=y
+CONFIG_IMD_TARGET=y
diff --git a/arch/arm/configs/nhk8815_defconfig b/arch/arm/configs/nhk8815_defconfig
index bc19301249..b2816f563b 100644
--- a/arch/arm/configs/nhk8815_defconfig
+++ b/arch/arm/configs/nhk8815_defconfig
@@ -2,7 +2,6 @@ CONFIG_TEXT_BASE=0x03F80000
 CONFIG_ARCH_NOMADIK=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_PROMPT="Nomadik:"
-CONFIG_GLOB=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
diff --git a/arch/arm/configs/omap3530_beagle_defconfig b/arch/arm/configs/omap3530_beagle_defconfig
index d1f5669cb3..5bd6de0cc5 100644
--- a/arch/arm/configs/omap3530_beagle_defconfig
+++ b/arch/arm/configs/omap3530_beagle_defconfig
@@ -20,7 +20,6 @@ CONFIG_BOOTM_INITRD=y
 CONFIG_BOOTM_OFTREE=y
 CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_BLSPEC=y
-CONFIG_IMD_TARGET=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_RESET_SOURCE=y
 CONFIG_DEBUG_LL=y
@@ -95,3 +94,4 @@ CONFIG_FS_NFS=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_FAT_LFN=y
+CONFIG_IMD_TARGET=y
diff --git a/arch/arm/configs/omap3530_beagle_xload_defconfig b/arch/arm/configs/omap3530_beagle_xload_defconfig
index 15984e129e..a69989449d 100644
--- a/arch/arm/configs/omap3530_beagle_xload_defconfig
+++ b/arch/arm/configs/omap3530_beagle_xload_defconfig
@@ -22,11 +22,6 @@ CONFIG_MTD=y
 # CONFIG_MTD_WRITE is not set
 # CONFIG_MTD_OOB_DEVICE is not set
 CONFIG_NAND=y
-# CONFIG_NAND_ECC_SOFT is not set
-# CONFIG_NAND_ECC_HW_SYNDROME is not set
-# CONFIG_NAND_ECC_HW_NONE is not set
-# CONFIG_NAND_INFO is not set
-# CONFIG_NAND_BBT is not set
 CONFIG_NAND_OMAP_GPMC=y
 CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
diff --git a/arch/arm/configs/phytec-phycard-omap3-xload_defconfig b/arch/arm/configs/phytec-phycard-omap3-xload_defconfig
index 048f7c0bde..24c50694d1 100644
--- a/arch/arm/configs/phytec-phycard-omap3-xload_defconfig
+++ b/arch/arm/configs/phytec-phycard-omap3-xload_defconfig
@@ -1,11 +1,11 @@
 CONFIG_TEXT_BASE=0x40200000
 CONFIG_ARCH_OMAP_SINGLE=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x0000f000
 CONFIG_OMAP_BUILD_IFT=y
 CONFIG_MACH_PCAAL1=y
 CONFIG_THUMB2_BAREBOX=y
 # CONFIG_ARM_EXCEPTIONS is not set
 CONFIG_ENVIRONMENT_VARIABLES=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x0000f000
 CONFIG_BAREBOX_MAX_BARE_INIT_SIZE=0x0000f000
 CONFIG_STACK_SIZE=0xc00
 CONFIG_MALLOC_SIZE=0x1000000
@@ -22,10 +22,6 @@ CONFIG_MTD=y
 # CONFIG_MTD_WRITE is not set
 # CONFIG_MTD_OOB_DEVICE is not set
 CONFIG_NAND=y
-# CONFIG_NAND_ECC_SOFT is not set
-# CONFIG_NAND_ECC_HW_SYNDROME is not set
-# CONFIG_NAND_ECC_HW_NONE is not set
-# CONFIG_NAND_BBT is not set
 CONFIG_NAND_OMAP_GPMC=y
 CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
diff --git a/arch/arm/configs/phytec-phycard-omap3_defconfig b/arch/arm/configs/phytec-phycard-omap3_defconfig
index fbcf5c6390..aede243c91 100644
--- a/arch/arm/configs/phytec-phycard-omap3_defconfig
+++ b/arch/arm/configs/phytec-phycard-omap3_defconfig
@@ -5,7 +5,6 @@ CONFIG_AEABI=y
 CONFIG_MALLOC_SIZE=0x1000000
 CONFIG_EXPERIMENTAL=y
 CONFIG_PROMPT="phyCARD-A-L1 >"
-CONFIG_GLOB=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
diff --git a/arch/arm/configs/phytec-phycard-omap4-xload_defconfig b/arch/arm/configs/phytec-phycard-omap4-xload_defconfig
index 1761a15b72..6c14e4635f 100644
--- a/arch/arm/configs/phytec-phycard-omap4-xload_defconfig
+++ b/arch/arm/configs/phytec-phycard-omap4-xload_defconfig
@@ -18,11 +18,6 @@ CONFIG_MTD=y
 # CONFIG_MTD_WRITE is not set
 # CONFIG_MTD_OOB_DEVICE is not set
 CONFIG_NAND=y
-# CONFIG_NAND_ECC_SOFT is not set
-# CONFIG_NAND_ECC_HW_SYNDROME is not set
-# CONFIG_NAND_ECC_HW_NONE is not set
-# CONFIG_NAND_INFO is not set
-# CONFIG_NAND_BBT is not set
 CONFIG_NAND_OMAP_GPMC=y
 CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
diff --git a/arch/arm/configs/phytec-phycard-omap4_defconfig b/arch/arm/configs/phytec-phycard-omap4_defconfig
index ae3cfb751d..9614b29422 100644
--- a/arch/arm/configs/phytec-phycard-omap4_defconfig
+++ b/arch/arm/configs/phytec-phycard-omap4_defconfig
@@ -7,7 +7,6 @@ CONFIG_MMU=y
 CONFIG_MALLOC_SIZE=0x2000000
 CONFIG_KALLSYMS=y
 CONFIG_PROMPT="barebox> "
-CONFIG_GLOB=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
diff --git a/arch/arm/configs/phytec-phycore-omap4460-xload-mmc_defconfig b/arch/arm/configs/phytec-phycore-omap4460-xload-mmc_defconfig
index 8ffdd90789..327d212e18 100644
--- a/arch/arm/configs/phytec-phycore-omap4460-xload-mmc_defconfig
+++ b/arch/arm/configs/phytec-phycore-omap4460-xload-mmc_defconfig
@@ -1,12 +1,12 @@
 CONFIG_TEXT_BASE=0x40300000
 CONFIG_ARCH_OMAP_SINGLE=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0xC000
 CONFIG_OMAP_BUILD_IFT=y
 CONFIG_MACH_PCM049=y
 CONFIG_THUMB2_BAREBOX=y
 # CONFIG_ARM_EXCEPTIONS is not set
 # CONFIG_MEMINFO is not set
 CONFIG_MMU=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0xC000
 CONFIG_MALLOC_SIZE=0x2000000
 CONFIG_MALLOC_DUMMY=y
 CONFIG_PROMPT="barebox> "
diff --git a/arch/arm/configs/phytec-phycore-omap4460-xload-nand_defconfig b/arch/arm/configs/phytec-phycore-omap4460-xload-nand_defconfig
index 66ee694542..237fa48cfb 100644
--- a/arch/arm/configs/phytec-phycore-omap4460-xload-nand_defconfig
+++ b/arch/arm/configs/phytec-phycore-omap4460-xload-nand_defconfig
@@ -1,12 +1,12 @@
 CONFIG_TEXT_BASE=0x40300000
 CONFIG_ARCH_OMAP_SINGLE=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0xC000
 CONFIG_OMAP_BUILD_IFT=y
 CONFIG_MACH_PCM049=y
 CONFIG_THUMB2_BAREBOX=y
 # CONFIG_ARM_EXCEPTIONS is not set
 # CONFIG_MEMINFO is not set
 CONFIG_MMU=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0xC000
 CONFIG_MALLOC_SIZE=0x2000000
 CONFIG_MALLOC_DUMMY=y
 CONFIG_PROMPT="barebox> "
@@ -21,11 +21,6 @@ CONFIG_MTD=y
 # CONFIG_MTD_WRITE is not set
 # CONFIG_MTD_OOB_DEVICE is not set
 CONFIG_NAND=y
-# CONFIG_NAND_ECC_SOFT is not set
-# CONFIG_NAND_ECC_HW_SYNDROME is not set
-# CONFIG_NAND_ECC_HW_NONE is not set
-# CONFIG_NAND_INFO is not set
-# CONFIG_NAND_BBT is not set
 CONFIG_NAND_OMAP_GPMC=y
 # CONFIG_FS_RAMFS is not set
 # CONFIG_FS_DEVFS is not set
diff --git a/arch/arm/configs/phytec-phycore-omap4460_defconfig b/arch/arm/configs/phytec-phycore-omap4460_defconfig
index a2362a0fce..6a3ebea244 100644
--- a/arch/arm/configs/phytec-phycore-omap4460_defconfig
+++ b/arch/arm/configs/phytec-phycore-omap4460_defconfig
@@ -1,14 +1,13 @@
 CONFIG_TEXT_BASE=0x8f000000
 CONFIG_ARCH_OMAP_SINGLE=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x80000
 CONFIG_MACH_PCM049=y
 CONFIG_AEABI=y
 CONFIG_ARM_UNWIND=y
 CONFIG_MMU=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x80000
 CONFIG_MALLOC_SIZE=0x2000000
 CONFIG_KALLSYMS=y
 CONFIG_PROMPT="barebox> "
-CONFIG_GLOB=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
diff --git a/arch/arm/configs/pm9261_defconfig b/arch/arm/configs/pm9261_defconfig
index b52d9cc90c..228b4234f6 100644
--- a/arch/arm/configs/pm9261_defconfig
+++ b/arch/arm/configs/pm9261_defconfig
@@ -3,7 +3,6 @@ CONFIG_ARCH_AT91SAM9261=y
 CONFIG_MACH_PM9261=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_PROMPT="PM9261:"
-CONFIG_GLOB=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
diff --git a/arch/arm/configs/pm9263_defconfig b/arch/arm/configs/pm9263_defconfig
index e20317a22c..2b7149c058 100644
--- a/arch/arm/configs/pm9263_defconfig
+++ b/arch/arm/configs/pm9263_defconfig
@@ -1,7 +1,6 @@
 CONFIG_ARCH_AT91=y
 CONFIG_ARCH_AT91SAM9263=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_GLOB=y
 CONFIG_PROMPT_HUSH_PS2="y"
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
diff --git a/arch/arm/configs/pm9g45_defconfig b/arch/arm/configs/pm9g45_defconfig
index 90cd27d7f6..00f3eeca1c 100644
--- a/arch/arm/configs/pm9g45_defconfig
+++ b/arch/arm/configs/pm9g45_defconfig
@@ -1,13 +1,11 @@
 CONFIG_ARCH_AT91=y
 CONFIG_ARCH_AT91SAM9G45=y
 CONFIG_MACH_PM9G45=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_MALLOC_TLSF=y
-CONFIG_GLOB=y
 CONFIG_GLOB_SORT=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
@@ -44,9 +42,6 @@ CONFIG_DRIVER_NET_MACB=y
 CONFIG_MTD=y
 # CONFIG_MTD_OOB_DEVICE is not set
 CONFIG_NAND=y
-# CONFIG_NAND_ECC_HW is not set
-# CONFIG_NAND_ECC_HW_SYNDROME is not set
-# CONFIG_NAND_ECC_HW_NONE is not set
 CONFIG_NAND_ATMEL=y
 CONFIG_DISK_ATA=y
 CONFIG_USB_HOST=y
diff --git a/arch/arm/configs/qil_a9260_defconfig b/arch/arm/configs/qil_a9260_defconfig
index 45bedb98b6..c08e59e940 100644
--- a/arch/arm/configs/qil_a9260_defconfig
+++ b/arch/arm/configs/qil_a9260_defconfig
@@ -2,14 +2,12 @@ CONFIG_ARCH_AT91=y
 CONFIG_ARCH_AT91SAM9260=y
 CONFIG_MACH_QIL_A9260=y
 CONFIG_CALAO_MB_QIL_A9260=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
 CONFIG_PROMPT="USB-9G20:"
-CONFIG_GLOB=y
 CONFIG_PROMPT_HUSH_PS2="y"
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
@@ -58,9 +56,6 @@ CONFIG_DRIVER_NET_MACB=y
 CONFIG_MTD=y
 # CONFIG_MTD_OOB_DEVICE is not set
 CONFIG_NAND=y
-# CONFIG_NAND_ECC_HW is not set
-# CONFIG_NAND_ECC_HW_SYNDROME is not set
-# CONFIG_NAND_ECC_HW_NONE is not set
 CONFIG_NAND_ATMEL=y
 CONFIG_USB_GADGET=y
 CONFIG_USB_GADGET_DFU=y
diff --git a/arch/arm/configs/qil_a9g20_defconfig b/arch/arm/configs/qil_a9g20_defconfig
index b42ba2f468..03b96684e4 100644
--- a/arch/arm/configs/qil_a9g20_defconfig
+++ b/arch/arm/configs/qil_a9g20_defconfig
@@ -2,14 +2,12 @@ CONFIG_ARCH_AT91=y
 CONFIG_ARCH_AT91SAM9G20=y
 CONFIG_MACH_QIL_A9G20=y
 CONFIG_CALAO_MB_QIL_A9260=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
 CONFIG_PROMPT="USB-9G20:"
-CONFIG_GLOB=y
 CONFIG_PROMPT_HUSH_PS2="y"
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
@@ -58,9 +56,6 @@ CONFIG_DRIVER_NET_MACB=y
 CONFIG_MTD=y
 # CONFIG_MTD_OOB_DEVICE is not set
 CONFIG_NAND=y
-# CONFIG_NAND_ECC_HW is not set
-# CONFIG_NAND_ECC_HW_SYNDROME is not set
-# CONFIG_NAND_ECC_HW_NONE is not set
 CONFIG_NAND_ATMEL=y
 CONFIG_USB_GADGET=y
 CONFIG_USB_GADGET_DFU=y
diff --git a/arch/arm/configs/rockchip_v7a_defconfig b/arch/arm/configs/rockchip_v7a_defconfig
index 41a63d3749..5dc41bff35 100644
--- a/arch/arm/configs/rockchip_v7a_defconfig
+++ b/arch/arm/configs/rockchip_v7a_defconfig
@@ -23,7 +23,6 @@ CONFIG_BOOTM_OFTREE=y
 CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_BOOTM_AIMAGE=y
 CONFIG_CONSOLE_ACTIVATE_NONE=y
-CONFIG_DEFAULT_COMPRESSION_LZO=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_RESET_SOURCE=y
 CONFIG_CMD_DMESG=y
diff --git a/arch/arm/configs/sama5d3xek_defconfig b/arch/arm/configs/sama5d3xek_defconfig
index 5a9f701066..c868bd0daf 100644
--- a/arch/arm/configs/sama5d3xek_defconfig
+++ b/arch/arm/configs/sama5d3xek_defconfig
@@ -1,16 +1,14 @@
-CONFIG_ARCH_AT91=y
 CONFIG_TEXT_BASE=0x26f00000
+CONFIG_ARCH_AT91=y
 CONFIG_ARCH_SAMA5D3=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x60000
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x60000
 CONFIG_MALLOC_SIZE=0xA00000
 CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
 CONFIG_PROMPT="A5D3X-EK:"
-CONFIG_GLOB=y
 CONFIG_PROMPT_HUSH_PS2="y"
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
@@ -64,9 +62,6 @@ CONFIG_MTD=y
 # CONFIG_MTD_OOB_DEVICE is not set
 CONFIG_MTD_M25P80=y
 CONFIG_NAND=y
-# CONFIG_NAND_ECC_SOFT is not set
-# CONFIG_NAND_ECC_HW_SYNDROME is not set
-# CONFIG_NAND_ECC_HW_NONE is not set
 CONFIG_NAND_ATMEL=y
 CONFIG_NAND_ATMEL_PMECC=y
 CONFIG_VIDEO=y
diff --git a/arch/arm/configs/sama5d4_xplained_defconfig b/arch/arm/configs/sama5d4_xplained_defconfig
index 4d19a07b34..90a45b97c2 100644
--- a/arch/arm/configs/sama5d4_xplained_defconfig
+++ b/arch/arm/configs/sama5d4_xplained_defconfig
@@ -1,12 +1,11 @@
-CONFIG_ARCH_AT91=y
 CONFIG_TEXT_BASE=0x26f00000
+CONFIG_ARCH_AT91=y
 CONFIG_ARCH_SAMA5D4=y
 CONFIG_MACH_SAMA5D4_XPLAINED=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x60000
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x60000
 CONFIG_MALLOC_SIZE=0xA00000
 CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
@@ -65,8 +64,6 @@ CONFIG_MTD=y
 CONFIG_MTD_RAW_DEVICE=y
 CONFIG_MTD_M25P80=y
 CONFIG_NAND=y
-# CONFIG_NAND_ECC_SOFT is not set
-# CONFIG_NAND_ECC_HW_SYNDROME is not set
 CONFIG_NAND_ATMEL=y
 CONFIG_NAND_ATMEL_PMECC=y
 CONFIG_VIDEO=y
diff --git a/arch/arm/configs/sama5d4ek_defconfig b/arch/arm/configs/sama5d4ek_defconfig
index 02cb12f90e..ba06991c4a 100644
--- a/arch/arm/configs/sama5d4ek_defconfig
+++ b/arch/arm/configs/sama5d4ek_defconfig
@@ -1,11 +1,10 @@
-CONFIG_ARCH_AT91=y
 CONFIG_TEXT_BASE=0x26f00000
+CONFIG_ARCH_AT91=y
 CONFIG_ARCH_SAMA5D4=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x60000
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x60000
 CONFIG_MALLOC_SIZE=0xA00000
 CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
@@ -64,8 +63,6 @@ CONFIG_MTD=y
 CONFIG_MTD_RAW_DEVICE=y
 CONFIG_MTD_M25P80=y
 CONFIG_NAND=y
-# CONFIG_NAND_ECC_SOFT is not set
-# CONFIG_NAND_ECC_HW_SYNDROME is not set
 CONFIG_NAND_ATMEL=y
 CONFIG_NAND_ATMEL_PMECC=y
 CONFIG_VIDEO=y
diff --git a/arch/arm/configs/socfpga-arria10_defconfig b/arch/arm/configs/socfpga-arria10_defconfig
index 5ac2198d41..8c19b48450 100644
--- a/arch/arm/configs/socfpga-arria10_defconfig
+++ b/arch/arm/configs/socfpga-arria10_defconfig
@@ -17,7 +17,6 @@ CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_BOOTM_VERBOSE=y
 CONFIG_BOOTM_INITRD=y
 CONFIG_BOOTM_OFTREE=y
-CONFIG_DEFAULT_COMPRESSION_LZO=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_STATE=y
 CONFIG_LONGHELP=y
@@ -66,7 +65,6 @@ CONFIG_NET_NETCONSOLE=y
 CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_OF_BAREBOX_ENV_IN_FS=y
 CONFIG_DRIVER_SERIAL_NS16550=y
-CONFIG_DRIVER_NET_DESIGNWARE=y
 CONFIG_DRIVER_NET_DESIGNWARE_SOCFPGA=y
 CONFIG_MICREL_PHY=y
 # CONFIG_SPI is not set
diff --git a/arch/arm/configs/socfpga_defconfig b/arch/arm/configs/socfpga_defconfig
index 9f39285a9c..8c9c1f7642 100644
--- a/arch/arm/configs/socfpga_defconfig
+++ b/arch/arm/configs/socfpga_defconfig
@@ -72,7 +72,6 @@ CONFIG_NET_NETCONSOLE=y
 CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_OF_BAREBOX_ENV_IN_FS=y
 CONFIG_DRIVER_SERIAL_NS16550=y
-CONFIG_DRIVER_NET_DESIGNWARE=y
 CONFIG_DRIVER_NET_DESIGNWARE_SOCFPGA=y
 CONFIG_MTD=y
 CONFIG_NAND=y
diff --git a/arch/arm/configs/stm32mp_defconfig b/arch/arm/configs/stm32mp_defconfig
index 1a8548b3e2..f6c6ca71b1 100644
--- a/arch/arm/configs/stm32mp_defconfig
+++ b/arch/arm/configs/stm32mp_defconfig
@@ -102,7 +102,6 @@ CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_AIODEV=y
 CONFIG_STM32_ADC=y
 CONFIG_DRIVER_SERIAL_STM32=y
-CONFIG_DRIVER_NET_DESIGNWARE_EQOS=y
 CONFIG_DRIVER_NET_DESIGNWARE_STM32=y
 CONFIG_AT803X_PHY=y
 CONFIG_MICREL_PHY=y
diff --git a/arch/arm/configs/telit_evk_pro3_defconfig b/arch/arm/configs/telit_evk_pro3_defconfig
index d9d22150c8..298401a30d 100644
--- a/arch/arm/configs/telit_evk_pro3_defconfig
+++ b/arch/arm/configs/telit_evk_pro3_defconfig
@@ -1,11 +1,10 @@
 CONFIG_ARCH_AT91=y
 CONFIG_ARCH_AT91SAM9260=y
 CONFIG_MACH_GE863=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
 CONFIG_PROMPT="EVK-PRO3:"
 CONFIG_PROMPT_HUSH_PS2="y"
@@ -52,9 +51,6 @@ CONFIG_DRIVER_NET_MACB=y
 CONFIG_MTD=y
 # CONFIG_MTD_OOB_DEVICE is not set
 CONFIG_NAND=y
-# CONFIG_NAND_ECC_HW is not set
-# CONFIG_NAND_ECC_HW_SYNDROME is not set
-# CONFIG_NAND_ECC_HW_NONE is not set
 CONFIG_NAND_ATMEL=y
 CONFIG_USB_GADGET=y
 CONFIG_USB_GADGET_DFU=y
diff --git a/arch/arm/configs/tny_a9260_defconfig b/arch/arm/configs/tny_a9260_defconfig
index de846d245a..eb9782c446 100644
--- a/arch/arm/configs/tny_a9260_defconfig
+++ b/arch/arm/configs/tny_a9260_defconfig
@@ -2,15 +2,13 @@ CONFIG_ARCH_AT91=y
 CONFIG_ARCH_AT91SAM9260=y
 CONFIG_MACH_TNY_A9260=y
 CONFIG_CALAO_MOB_TNY_MD2=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
 CONFIG_PROMPT="TNY-9260:"
-CONFIG_GLOB=y
 CONFIG_PROMPT_HUSH_PS2="y"
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
@@ -59,9 +57,6 @@ CONFIG_DRIVER_SPI_ATMEL=y
 CONFIG_MTD=y
 # CONFIG_MTD_OOB_DEVICE is not set
 CONFIG_NAND=y
-# CONFIG_NAND_ECC_HW is not set
-# CONFIG_NAND_ECC_HW_SYNDROME is not set
-# CONFIG_NAND_ECC_HW_NONE is not set
 CONFIG_NAND_ATMEL=y
 CONFIG_USB_GADGET=y
 CONFIG_USB_GADGET_SERIAL=y
diff --git a/arch/arm/configs/tny_a9263_bootstrap_defconfig b/arch/arm/configs/tny_a9263_bootstrap_defconfig
index 7977d9ead3..80b42f5f86 100644
--- a/arch/arm/configs/tny_a9263_bootstrap_defconfig
+++ b/arch/arm/configs/tny_a9263_bootstrap_defconfig
@@ -1,12 +1,11 @@
 CONFIG_ARCH_AT91=y
 CONFIG_ARCH_AT91SAM9263=y
 CONFIG_MACH_TNY_A9263=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x12000
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ENVIRONMENT_VARIABLES=y
-CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x12000
 CONFIG_MALLOC_DUMMY=y
 CONFIG_PROMPT="USB-9263:"
 CONFIG_SHELL_NONE=y
@@ -16,8 +15,5 @@ CONFIG_MTD=y
 # CONFIG_MTD_WRITE is not set
 # CONFIG_MTD_OOB_DEVICE is not set
 CONFIG_NAND=y
-# CONFIG_NAND_ECC_HW is not set
-# CONFIG_NAND_ECC_HW_SYNDROME is not set
-# CONFIG_NAND_ECC_HW_NONE is not set
 CONFIG_NAND_ATMEL=y
 # CONFIG_FS_RAMFS is not set
diff --git a/arch/arm/configs/tny_a9263_defconfig b/arch/arm/configs/tny_a9263_defconfig
index a9a9159b6f..d4a732d94b 100644
--- a/arch/arm/configs/tny_a9263_defconfig
+++ b/arch/arm/configs/tny_a9263_defconfig
@@ -2,15 +2,13 @@ CONFIG_ARCH_AT91=y
 CONFIG_ARCH_AT91SAM9263=y
 CONFIG_MACH_TNY_A9263=y
 CONFIG_CALAO_MOB_TNY_MD2=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
 CONFIG_PROMPT="TNY-9263:"
-CONFIG_GLOB=y
 CONFIG_PROMPT_HUSH_PS2="y"
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
@@ -60,9 +58,6 @@ CONFIG_MTD=y
 # CONFIG_MTD_OOB_DEVICE is not set
 CONFIG_MTD_DATAFLASH=y
 CONFIG_NAND=y
-# CONFIG_NAND_ECC_HW is not set
-# CONFIG_NAND_ECC_HW_SYNDROME is not set
-# CONFIG_NAND_ECC_HW_NONE is not set
 CONFIG_NAND_ATMEL=y
 CONFIG_USB_GADGET=y
 CONFIG_USB_GADGET_SERIAL=y
diff --git a/arch/arm/configs/tny_a9g20_defconfig b/arch/arm/configs/tny_a9g20_defconfig
index 7372b2c3ec..bc145cc2db 100644
--- a/arch/arm/configs/tny_a9g20_defconfig
+++ b/arch/arm/configs/tny_a9g20_defconfig
@@ -2,15 +2,13 @@ CONFIG_ARCH_AT91=y
 CONFIG_ARCH_AT91SAM9G20=y
 CONFIG_MACH_TNY_A9G20=y
 CONFIG_CALAO_MOB_TNY_MD2=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
 CONFIG_PROMPT="TNY-9G20:"
-CONFIG_GLOB=y
 CONFIG_PROMPT_HUSH_PS2="y"
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
@@ -60,9 +58,6 @@ CONFIG_DRIVER_SPI_ATMEL=y
 CONFIG_MTD=y
 # CONFIG_MTD_OOB_DEVICE is not set
 CONFIG_NAND=y
-# CONFIG_NAND_ECC_HW is not set
-# CONFIG_NAND_ECC_HW_SYNDROME is not set
-# CONFIG_NAND_ECC_HW_NONE is not set
 CONFIG_NAND_ATMEL=y
 CONFIG_USB_GADGET=y
 CONFIG_USB_GADGET_SERIAL=y
diff --git a/arch/arm/configs/usb_a9260_defconfig b/arch/arm/configs/usb_a9260_defconfig
index 1ebb0f9d0e..a94d330568 100644
--- a/arch/arm/configs/usb_a9260_defconfig
+++ b/arch/arm/configs/usb_a9260_defconfig
@@ -1,15 +1,13 @@
 CONFIG_ARCH_AT91=y
 CONFIG_ARCH_AT91SAM9260=y
 CONFIG_MACH_USB_A9260=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
 CONFIG_PROMPT="USB-9G20:"
-CONFIG_GLOB=y
 CONFIG_PROMPT_HUSH_PS2="y"
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
@@ -63,9 +61,6 @@ CONFIG_DRIVER_NET_MACB=y
 CONFIG_MTD=y
 # CONFIG_MTD_OOB_DEVICE is not set
 CONFIG_NAND=y
-# CONFIG_NAND_ECC_HW is not set
-# CONFIG_NAND_ECC_HW_SYNDROME is not set
-# CONFIG_NAND_ECC_HW_NONE is not set
 CONFIG_NAND_ATMEL=y
 CONFIG_USB_GADGET=y
 CONFIG_USB_GADGET_DFU=y
diff --git a/arch/arm/configs/usb_a9263_bootstrap_defconfig b/arch/arm/configs/usb_a9263_bootstrap_defconfig
index 893a0c0f79..2adf114389 100644
--- a/arch/arm/configs/usb_a9263_bootstrap_defconfig
+++ b/arch/arm/configs/usb_a9263_bootstrap_defconfig
@@ -2,12 +2,11 @@ CONFIG_ARCH_AT91=y
 CONFIG_ARCH_AT91SAM9263=y
 CONFIG_MACH_USB_A9263=y
 CONFIG_AT91_BOOTSTRAP=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x12000
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ENVIRONMENT_VARIABLES=y
-CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x12000
 CONFIG_MALLOC_DUMMY=y
 CONFIG_PROMPT="USB-9263:"
 CONFIG_SHELL_NONE=y
@@ -16,9 +15,6 @@ CONFIG_MTD=y
 # CONFIG_MTD_WRITE is not set
 # CONFIG_MTD_OOB_DEVICE is not set
 CONFIG_NAND=y
-# CONFIG_NAND_ECC_HW is not set
-# CONFIG_NAND_ECC_HW_SYNDROME is not set
-# CONFIG_NAND_ECC_HW_NONE is not set
 CONFIG_NAND_ATMEL=y
 # CONFIG_FS_RAMFS is not set
 CONFIG_BOOTSTRAP_DEVFS=y
diff --git a/arch/arm/configs/usb_a9263_defconfig b/arch/arm/configs/usb_a9263_defconfig
index 1ea6f718fb..a41e64298c 100644
--- a/arch/arm/configs/usb_a9263_defconfig
+++ b/arch/arm/configs/usb_a9263_defconfig
@@ -1,15 +1,13 @@
 CONFIG_ARCH_AT91=y
 CONFIG_ARCH_AT91SAM9263=y
 CONFIG_MACH_USB_A9263=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
 CONFIG_PROMPT="USB-9263:"
-CONFIG_GLOB=y
 CONFIG_PROMPT_HUSH_PS2="y"
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
@@ -64,9 +62,6 @@ CONFIG_MTD=y
 # CONFIG_MTD_OOB_DEVICE is not set
 CONFIG_MTD_DATAFLASH=y
 CONFIG_NAND=y
-# CONFIG_NAND_ECC_HW is not set
-# CONFIG_NAND_ECC_HW_SYNDROME is not set
-# CONFIG_NAND_ECC_HW_NONE is not set
 CONFIG_NAND_ATMEL=y
 CONFIG_USB_GADGET=y
 CONFIG_USB_GADGET_DFU=y
diff --git a/arch/arm/configs/usb_a9g20_defconfig b/arch/arm/configs/usb_a9g20_defconfig
index cca8ee6097..20b1f27b9e 100644
--- a/arch/arm/configs/usb_a9g20_defconfig
+++ b/arch/arm/configs/usb_a9g20_defconfig
@@ -1,15 +1,13 @@
 CONFIG_ARCH_AT91=y
 CONFIG_ARCH_AT91SAM9G20=y
 CONFIG_MACH_USB_A9G20=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
 CONFIG_PROMPT="USB-9G20:"
-CONFIG_GLOB=y
 CONFIG_PROMPT_HUSH_PS2="y"
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
@@ -63,9 +61,6 @@ CONFIG_DRIVER_SPI_ATMEL=y
 CONFIG_MTD=y
 # CONFIG_MTD_OOB_DEVICE is not set
 CONFIG_NAND=y
-# CONFIG_NAND_ECC_HW is not set
-# CONFIG_NAND_ECC_HW_SYNDROME is not set
-# CONFIG_NAND_ECC_HW_NONE is not set
 CONFIG_NAND_ATMEL=y
 CONFIG_USB_GADGET=y
 CONFIG_USB_GADGET_DFU=y
diff --git a/arch/arm/configs/versatilepb_arm1176_defconfig b/arch/arm/configs/versatilepb_arm1176_defconfig
index e8c662183a..d6b0ec898e 100644
--- a/arch/arm/configs/versatilepb_arm1176_defconfig
+++ b/arch/arm/configs/versatilepb_arm1176_defconfig
@@ -1,9 +1,9 @@
 CONFIG_ARCH_VERSATILE=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x80000
 CONFIG_MACH_VERSATILEPB_ARM1176=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_PBL_IMAGE=y
 CONFIG_PBL_RELOCATABLE=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x80000
 CONFIG_MALLOC_SIZE=0xa00000
 CONFIG_PROMPT="versatilepb> "
 CONFIG_HUSH_FANCY_PROMPT=y
@@ -16,7 +16,6 @@ CONFIG_BOOTM_INITRD=y
 CONFIG_BOOTM_OFTREE=y
 CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CONSOLE_ACTIVATE_ALL=y
-CONFIG_DEFAULT_COMPRESSION_GZIP=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/versatile/env"
 CONFIG_CMD_DMESG=y
diff --git a/arch/arm/configs/versatilepb_defconfig b/arch/arm/configs/versatilepb_defconfig
index 14481ea58e..2165dd37cb 100644
--- a/arch/arm/configs/versatilepb_defconfig
+++ b/arch/arm/configs/versatilepb_defconfig
@@ -1,8 +1,8 @@
 CONFIG_ARCH_VERSATILE=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x80000
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_PBL_IMAGE=y
 CONFIG_PBL_RELOCATABLE=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x80000
 CONFIG_PROMPT="versatilepb> "
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
@@ -15,7 +15,6 @@ CONFIG_BOOTM_OFTREE=y
 CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_PARTITION=y
-CONFIG_DEFAULT_COMPRESSION_GZIP=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/versatile/env"
 CONFIG_CMD_DMESG=y
diff --git a/arch/arm/configs/virt2real_defconfig b/arch/arm/configs/virt2real_defconfig
index 62315b8cb3..6e51f53f19 100644
--- a/arch/arm/configs/virt2real_defconfig
+++ b/arch/arm/configs/virt2real_defconfig
@@ -5,7 +5,6 @@ CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_MALLOC_SIZE=0x200000
 CONFIG_MALLOC_TLSF=y
 CONFIG_PROMPT="virt2real: "
-CONFIG_GLOB=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
diff --git a/arch/arm/configs/zii_vf610_dev_defconfig b/arch/arm/configs/zii_vf610_dev_defconfig
index 3ed5d37458..5e9fca65e6 100644
--- a/arch/arm/configs/zii_vf610_dev_defconfig
+++ b/arch/arm/configs/zii_vf610_dev_defconfig
@@ -1,5 +1,4 @@
 CONFIG_ARCH_IMX=y
-CONFIG_IMX_MULTI_BOARDS=y
 CONFIG_MACH_ZII_VF610_DEV=y
 CONFIG_THUMB2_BAREBOX=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
diff --git a/arch/arm/configs/zylonite310_defconfig b/arch/arm/configs/zylonite310_defconfig
index a8ac92040a..cdbd135081 100644
--- a/arch/arm/configs/zylonite310_defconfig
+++ b/arch/arm/configs/zylonite310_defconfig
@@ -1,5 +1,4 @@
 CONFIG_ARCH_PXA=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x100000
 CONFIG_ARCH_PXA3XX=y
 CONFIG_AEABI=y
 CONFIG_ARM_BOARD_APPEND_ATAG=y
@@ -7,6 +6,7 @@ CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
 # CONFIG_BANNER is not set
 CONFIG_MMU=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x100000
 CONFIG_BAREBOX_MAX_BARE_INIT_SIZE=0x80000
 CONFIG_MALLOC_SIZE=0x800000
 CONFIG_EXPERIMENTAL=y
diff --git a/arch/arm/configs/zynqmp_defconfig b/arch/arm/configs/zynqmp_defconfig
index 8dd0f40b3d..12b4ab30e1 100644
--- a/arch/arm/configs/zynqmp_defconfig
+++ b/arch/arm/configs/zynqmp_defconfig
@@ -56,6 +56,7 @@ CONFIG_DP83867_PHY=y
 # CONFIG_SPI is not set
 CONFIG_MCI=y
 CONFIG_MCI_ARASAN=y
+CONFIG_GPIO_ZYNQ=y
 CONFIG_FIRMWARE_ZYNQMP_FPGA=y
 # CONFIG_VIRTIO_MENU is not set
 CONFIG_FS_EXT4=y
@@ -64,4 +65,3 @@ CONFIG_FS_NFS=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
 CONFIG_DIGEST=y
-CONFIG_GPIO_ZYNQ=y
-- 
2.30.2



