Delivery-date: Tue, 16 Apr 2024 11:54:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwfWH-003BR5-0q
	for lore@lore.pengutronix.de;
	Tue, 16 Apr 2024 11:54:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwfWA-00040J-Ez
	for lore@pengutronix.de; Tue, 16 Apr 2024 11:54:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IJO4EpIDwTr/Sb2/fzAavutMUdrk/1mbPqYuj+mDHhI=; b=T3f5DjUQfCZNjlosdeIc8us2Wv
	up2ZJmP9pikDZekOZIdY7ci+OCPNCNWij6D/RsBceejorwOP7TCTvf/nSsJg/uPQJPgvyF1fmdGhD
	A31Ip5cgVgt2yTOD4pVfxC52xyB5foYpgI2L9BE8ZOyXzCg/wsDHSZp4kfgjvUteC3PzZAmlzLp+G
	hLx/8ZEX1ZK/59SRdVotGB6VAKUwO38TfXJns87fRqvv2fBVTA8e0tui1y9rLBk9d5TZuSTvvY70D
	jPjkxhZc2stELXLn3FjGZ9ZTDA+/D/fXzNPIW1HcLFUMPq365mAI+3phAFWlkYuG5p842geo4x9EL
	qW4vqX4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwfVL-0000000Bfhf-0bNl;
	Tue, 16 Apr 2024 09:53:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwfV8-0000000BfcE-0mTd
	for barebox@lists.infradead.org;
	Tue, 16 Apr 2024 09:53:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwfV5-0002co-7G; Tue, 16 Apr 2024 11:53:15 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwfV4-00CaKA-QT; Tue, 16 Apr 2024 11:53:14 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwfV4-008J49-2J;
	Tue, 16 Apr 2024 11:53:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 16 Apr 2024 11:53:07 +0200
Message-Id: <20240416095313.1977242-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240416095313.1977242-1-s.hauer@pengutronix.de>
References: <20240416095313.1977242-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240416_025318_654080_F5134754 
X-CRM114-Status: GOOD (  28.47  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/8] mtd: nand: move to drivers/mtd/nand/raw/
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Linux moved the raw NAND drivers from drivers/mtd/nand/ to
drivers/mtd/nand/raw/ years ago. Follow suit and do the same
for barebox to be more consistent with Linux.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/Kconfig                              |   6 +-
 drivers/mtd/Makefile                          |   2 +-
 drivers/mtd/nand/Kconfig                      | 165 +---------------
 drivers/mtd/nand/Makefile                     |  24 +--
 drivers/mtd/nand/raw/Kconfig                  | 177 ++++++++++++++++++
 drivers/mtd/nand/raw/Makefile                 |  24 +++
 drivers/mtd/nand/{ => raw}/atmel/Makefile     |   0
 .../mtd/nand/{ => raw}/atmel/atmel_nand_ecc.h |   0
 drivers/mtd/nand/{ => raw}/atmel/legacy.c     |   0
 .../nand/{ => raw}/atmel/nand-controller.c    |   0
 drivers/mtd/nand/{ => raw}/atmel/pmecc.c      |   0
 drivers/mtd/nand/{ => raw}/atmel/pmecc.h      |   0
 drivers/mtd/nand/{ => raw}/denali.h           |   0
 drivers/mtd/nand/{ => raw}/fsl_ifc.h          |   0
 drivers/mtd/nand/{ => raw}/internals.h        |   0
 drivers/mtd/nand/{ => raw}/nand_amd.c         |   0
 drivers/mtd/nand/{ => raw}/nand_base.c        |   0
 drivers/mtd/nand/{ => raw}/nand_bbt.c         |   0
 drivers/mtd/nand/{ => raw}/nand_bch.c         |   0
 drivers/mtd/nand/{ => raw}/nand_denali.c      |   0
 drivers/mtd/nand/{ => raw}/nand_denali_dt.c   |   0
 drivers/mtd/nand/{ => raw}/nand_ecc.c         |   0
 drivers/mtd/nand/{ => raw}/nand_esmt.c        |   0
 drivers/mtd/nand/{ => raw}/nand_fsl_ifc.c     |   0
 drivers/mtd/nand/{ => raw}/nand_hynix.c       |   0
 drivers/mtd/nand/{ => raw}/nand_ids.c         |   0
 drivers/mtd/nand/{ => raw}/nand_imx.c         |   0
 drivers/mtd/nand/{ => raw}/nand_jedec.c       |   0
 drivers/mtd/nand/{ => raw}/nand_legacy.c      |   0
 drivers/mtd/nand/{ => raw}/nand_macronix.c    |   0
 drivers/mtd/nand/{ => raw}/nand_micron.c      |   0
 drivers/mtd/nand/{ => raw}/nand_mrvl_nfc.c    |   0
 drivers/mtd/nand/{ => raw}/nand_mxs.c         |   0
 .../nand/{ => raw}/nand_omap_bch_decoder.c    |   0
 .../nand/{ => raw}/nand_omap_bch_decoder.h    |   0
 drivers/mtd/nand/{ => raw}/nand_omap_gpmc.c   |   0
 drivers/mtd/nand/{ => raw}/nand_onfi.c        |   0
 drivers/mtd/nand/{ => raw}/nand_orion.c       |   0
 drivers/mtd/nand/{ => raw}/nand_samsung.c     |   0
 drivers/mtd/nand/{ => raw}/nand_timings.c     |   0
 drivers/mtd/nand/{ => raw}/nand_toshiba.c     |   0
 drivers/mtd/nand/{ => raw}/nomadik_nand.c     |   0
 drivers/mtd/nand/{ => raw}/omap_elm.c         |   0
 drivers/mtd/nand/{ => raw}/stm32_fmc2_nand.c  |   0
 include/nand.h                                |   2 +-
 45 files changed, 213 insertions(+), 187 deletions(-)
 create mode 100644 drivers/mtd/nand/raw/Kconfig
 create mode 100644 drivers/mtd/nand/raw/Makefile
 rename drivers/mtd/nand/{ => raw}/atmel/Makefile (100%)
 rename drivers/mtd/nand/{ => raw}/atmel/atmel_nand_ecc.h (100%)
 rename drivers/mtd/nand/{ => raw}/atmel/legacy.c (100%)
 rename drivers/mtd/nand/{ => raw}/atmel/nand-controller.c (100%)
 rename drivers/mtd/nand/{ => raw}/atmel/pmecc.c (100%)
 rename drivers/mtd/nand/{ => raw}/atmel/pmecc.h (100%)
 rename drivers/mtd/nand/{ => raw}/denali.h (100%)
 rename drivers/mtd/nand/{ => raw}/fsl_ifc.h (100%)
 rename drivers/mtd/nand/{ => raw}/internals.h (100%)
 rename drivers/mtd/nand/{ => raw}/nand_amd.c (100%)
 rename drivers/mtd/nand/{ => raw}/nand_base.c (100%)
 rename drivers/mtd/nand/{ => raw}/nand_bbt.c (100%)
 rename drivers/mtd/nand/{ => raw}/nand_bch.c (100%)
 rename drivers/mtd/nand/{ => raw}/nand_denali.c (100%)
 rename drivers/mtd/nand/{ => raw}/nand_denali_dt.c (100%)
 rename drivers/mtd/nand/{ => raw}/nand_ecc.c (100%)
 rename drivers/mtd/nand/{ => raw}/nand_esmt.c (100%)
 rename drivers/mtd/nand/{ => raw}/nand_fsl_ifc.c (100%)
 rename drivers/mtd/nand/{ => raw}/nand_hynix.c (100%)
 rename drivers/mtd/nand/{ => raw}/nand_ids.c (100%)
 rename drivers/mtd/nand/{ => raw}/nand_imx.c (100%)
 rename drivers/mtd/nand/{ => raw}/nand_jedec.c (100%)
 rename drivers/mtd/nand/{ => raw}/nand_legacy.c (100%)
 rename drivers/mtd/nand/{ => raw}/nand_macronix.c (100%)
 rename drivers/mtd/nand/{ => raw}/nand_micron.c (100%)
 rename drivers/mtd/nand/{ => raw}/nand_mrvl_nfc.c (100%)
 rename drivers/mtd/nand/{ => raw}/nand_mxs.c (100%)
 rename drivers/mtd/nand/{ => raw}/nand_omap_bch_decoder.c (100%)
 rename drivers/mtd/nand/{ => raw}/nand_omap_bch_decoder.h (100%)
 rename drivers/mtd/nand/{ => raw}/nand_omap_gpmc.c (100%)
 rename drivers/mtd/nand/{ => raw}/nand_onfi.c (100%)
 rename drivers/mtd/nand/{ => raw}/nand_orion.c (100%)
 rename drivers/mtd/nand/{ => raw}/nand_samsung.c (100%)
 rename drivers/mtd/nand/{ => raw}/nand_timings.c (100%)
 rename drivers/mtd/nand/{ => raw}/nand_toshiba.c (100%)
 rename drivers/mtd/nand/{ => raw}/nomadik_nand.c (100%)
 rename drivers/mtd/nand/{ => raw}/omap_elm.c (100%)
 rename drivers/mtd/nand/{ => raw}/stm32_fmc2_nand.c (100%)

diff --git a/commands/Kconfig b/commands/Kconfig
index 8d0816c4d0..93e176c2d6 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -2011,7 +2011,7 @@ config CMD_LED
 config CMD_NAND
 	tristate
 	default y
-	depends on NAND
+	depends on MTD_RAW_NAND
 	prompt "nand"
 	help
 	  NAND flash handling
@@ -2027,7 +2027,7 @@ config CMD_NAND
 
 config CMD_NANDTEST
 	tristate
-	depends on NAND
+	depends on MTD_RAW_NAND
 	depends on PARTITION
 	prompt "nandtest"
 	help
@@ -2045,7 +2045,7 @@ config CMD_NANDTEST
 
 config CMD_NAND_BITFLIP
 	tristate
-	depends on NAND
+	depends on MTD_RAW_NAND
 	prompt "nand_bitflip"
 	help
 	  nand_bitflip - Create bitflips on Nand pages. This command is useful for testing
diff --git a/drivers/mtd/Makefile b/drivers/mtd/Makefile
index dc05793ca1..5a0753edd0 100644
--- a/drivers/mtd/Makefile
+++ b/drivers/mtd/Makefile
@@ -1,5 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0-only
-obj-$(CONFIG_NAND)			+= nand/
+obj-y					+= nand/
 obj-$(CONFIG_DRIVER_CFI)		+= nor/
 obj-$(CONFIG_MTD_SPI_NOR)		+= spi-nor/
 obj-$(CONFIG_MTD_UBI)			+= ubi/
diff --git a/drivers/mtd/nand/Kconfig b/drivers/mtd/nand/Kconfig
index 19f4322f65..4de2d86113 100644
--- a/drivers/mtd/nand/Kconfig
+++ b/drivers/mtd/nand/Kconfig
@@ -1,4 +1,8 @@
 # SPDX-License-Identifier: GPL-2.0-only
+
+config MTD_NAND_CORE
+	bool
+
 menuconfig NAND
 	bool "NAND support"
 	help
@@ -8,165 +12,6 @@ menuconfig NAND
 
 if NAND
 
-config MTD_NAND_ECC_SOFT
-	bool
-	prompt "Support software ecc"
-
-config MTD_NAND_ECC_SW_BCH
-	select BCH
-	depends on MTD_NAND_ECC_SOFT
-	bool
-	prompt "Support software BCH ecc"
-
-config NAND_ECC_HW_SYNDROME
-	bool
-	prompt "Support syndrome hardware ecc controllers"
-
-config NAND_ALLOW_ERASE_BAD
-	bool
-	depends on MTD_WRITE
-	prompt "Add device parameter to allow erasing bad blocks"
-	help
-	  This adds a 'erasebad' device parameter to nand devices. When set
-	  to '1' it will be allowed to erase bad blocks. This is a potientially
-	  dangerous operation, so if unsure say no to this option.
-
-config NAND_IMX
-	bool
-	prompt "i.MX21 to 53 NAND driver aka 'mxc', for NFC"
-	depends on ARCH_IMX
-	help
-	  Support for NAND flash on Freescale/NXP i.MX devices.  This is for the
-	  "MXC" series:  i.MX21/25/27/31/35/51/53.
-
-	  This is not for the "MXS" series i.MX processors (23 & 28), or i.MX6
-	  and later, which use the GPMI NAND controller from the MXS series.
-	  See the i.MX 'mxs' driver for those chips.
-
-config NAND_FSL_IFC
-	bool
-	prompt "FSL IFC NAND driver"
-	depends on ARCH_LAYERSCAPE
-	help
-	  Freescale IFC NAND driver for various chips.
-
-config NAND_MXS
-	bool
-	select STMP_DEVICE
-	prompt "i.MX23/28 & 6+ NAND driver aka 'mxs', for GPMI"
-	depends on MXS_APBH_DMA
-	help
-	  Support for NAND flash on Freescale/NXP i.MX devices.	 This is for the
-	  "MXS" series:  i.MX23/28 and all i.MX6 and later SoCs.
-
-	  This is not for the "MXC" series of i.MX processors in the i.MX21 to
-	  i.MX53 range.  See the i.MX "mxc" driver for those chips.
-
-config NAND_OMAP_GPMC
-	tristate "NAND Flash Support for GPMC based OMAP platforms"
-	depends on OMAP_GPMC
-	depends on BUS_OMAP_GPMC
-	help
-	  Support for NAND flash using GPMC. GPMC is a common memory
-	  interface found on Texas Instrument's OMAP platforms
-
-config MTD_NAND_OMAP_ELM
-	bool "Support for ELM (Error Location Module) on OMAP platforms"
-	depends on NAND_OMAP_GPMC || COMPILE_TEST
-	help
-	  This config enables the ELM hardware engine, which can be used to
-	  locate and correct errors when using BCH ECC scheme. This offloads
-	  the cpu from doing ECC error searching and correction. However some
-	  legacy OMAP families like OMAP2xxx, OMAP3xxx do not have ELM engine
-	  so this is optional for them.
-
-config NAND_ORION
-	bool
-	prompt "Marvell Orion NAND driver"
-	depends on (ARM && !CPU_32v4T) && (ARCH_KIRKWOOD || COMPILE_TEST)
-	help
-	  Support for the Orion NAND controller, present in Kirkwood SoCs.
-
-config NAND_MRVL_NFC
-	bool
-	prompt "Marvell PXA3xx NAND driver"
-	depends on ARCH_ARMADA_370 || ARCH_ARMADA_XP || ARCH_PXA3XX || COMPILE_TEST
-	help
-	  Support for the PXA3xx NAND controller, present in Armada 370/XP and
-	  PXA3xx SoCs.
-
-config NAND_STM32
-	bool "Support for NAND controller on STM32MP SoCs"
-	depends on ARCH_STM32MP || COMPILE_TEST
-	select STM32_FMC2_EBI if ARCH_STM32MP
-	select RESET_CONTROLLER if ARCH_STM32MP
-	select RESET_SIMPLE if ARCH_STM32MP
-	help
-	  Enables support for NAND Flash chips on SoCs containing the FMC2
-	  NAND controller. This controller is found on STM32MP SoCs.
-	  The controller supports a maximum 8k page size and supports
-	  a maximum 8-bit correction error per sector of 512 bytes.
-
-config NAND_ATMEL
-	bool
-	prompt "Atmel (AT91SAM9xxx) NAND driver"
-	select GENERIC_ALLOCATOR if OFDEVICE
-	depends on ARCH_AT91 || (OFDEVICE && COMPILE_TEST)
-
-config NAND_ATMEL_LEGACY
-	def_bool !AT91_MULTI_BOARDS || SOC_AT91SAM9
-	depends on NAND_ATMEL
-	help
-	  Select legacy driver for non-DT-enabled platforms
-	  and for the deprecated non-EBI binding.
-
-	  The deprecated binding is currently the only one
-	  support for AT91SAM9.
-
-config NAND_ATMEL_PMECC
-	bool
-	prompt "PMECC support"
-	depends on NAND_ATMEL_LEGACY
-	help
-	  Support for PMECC present on the SoC sam9x5 and sam9n12
-
-config MTD_NAND_ECC_SW_HAMMING_SMC
-	bool "NAND ECC Smart Media byte order"
-	default n
-	help
-	  Software ECC according to the Smart Media Specification.
-	  The original Linux implementation had byte 0 and 1 swapped.
-
-config MTD_NAND_NOMADIK
-	tristate "ST Nomadik 8815 NAND support"
-	depends on ARCH_NOMADIK
-	help
-	  Driver for the NAND flash controller on the Nomadik, with ECC.
-
-config MTD_NAND_DENALI
-        tristate "Support Denali NAND controller"
-        depends on HAS_DMA
-        help
-          Enable support for the Denali NAND controller.  This should be
-          combined with either the PCI or platform drivers to provide device
-          registration.
-
-config MTD_NAND_DENALI_DT
-        tristate "Support Denali NAND controller as a DT device"
-        depends on HAVE_CLK && MTD_NAND_DENALI
-        help
-          Enable the driver for NAND flash on platforms using a Denali NAND
-          controller as a DT device.
-
-if MTD_NAND_DENALI
-
-config MTD_NAND_DENALI_TIMING_MODE
-	int "Overrides default ONFI timing mode."
-	default -1
-	range -1 5
-	help
-	   -1 indicates use default timings
-
-endif
+source "drivers/mtd/nand/raw/Kconfig"
 
 endif
diff --git a/drivers/mtd/nand/Makefile b/drivers/mtd/nand/Makefile
index a0207d328b..6e94575728 100644
--- a/drivers/mtd/nand/Makefile
+++ b/drivers/mtd/nand/Makefile
@@ -1,25 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
-# Generic NAND options
-obj-$(CONFIG_NAND)			+= nand_ecc.o
-obj-$(CONFIG_MTD_NAND_ECC_SW_BCH)	+= nand_bch.o
-obj-$(CONFIG_NAND)			+= nand_ids.o
-obj-$(CONFIG_NAND)			+= nand_base.o nand-bb.o nand_timings.o
-obj-$(CONFIG_NAND)			+= nand_legacy.o nand_onfi.o nand_amd.o
-obj-$(CONFIG_NAND)			+= nand_esmt.o nand_hynix.o nand_macronix.o
-obj-$(CONFIG_NAND)			+= nand_micron.o nand_samsung.o nand_toshiba.o
-obj-$(CONFIG_NAND)			+= nand_jedec.o core.o bbt.o
-obj-$(CONFIG_NAND)			+= nand_bbt.o
+obj-$(CONFIG_MTD_NAND_CORE) += core.o bbt.o nand-bb.o
 
-obj-$(CONFIG_MTD_NAND_NOMADIK)		+= nomadik_nand.o
-obj-$(CONFIG_NAND_IMX)			+= nand_imx.o
-obj-$(CONFIG_NAND_OMAP_GPMC)		+= nand_omap_gpmc.o nand_omap_bch_decoder.o
-obj-$(CONFIG_MTD_NAND_OMAP_ELM)		+= omap_elm.o
-obj-$(CONFIG_NAND_ORION)		+= nand_orion.o
-obj-$(CONFIG_NAND_STM32)		+= stm32_fmc2_nand.o
-obj-$(CONFIG_NAND_MRVL_NFC)		+= nand_mrvl_nfc.o
-obj-$(CONFIG_NAND_ATMEL)		+= atmel/
-obj-$(CONFIG_NAND_MXS)			+= nand_mxs.o
-obj-$(CONFIG_MTD_NAND_DENALI)		+= nand_denali.o
-obj-$(CONFIG_MTD_NAND_DENALI_DT)	+= nand_denali_dt.o
-obj-$(CONFIG_NAND_FSL_IFC)		+= nand_fsl_ifc.o
+obj-y += raw/
diff --git a/drivers/mtd/nand/raw/Kconfig b/drivers/mtd/nand/raw/Kconfig
new file mode 100644
index 0000000000..b979bc5bd0
--- /dev/null
+++ b/drivers/mtd/nand/raw/Kconfig
@@ -0,0 +1,177 @@
+# SPDX-License-Identifier: GPL-2.0-only
+menuconfig MTD_RAW_NAND
+	default y
+	bool "Raw/Parallel NAND Device Support"
+	select MTD_NAND_CORE
+	select MTD_NAND_ECC
+	help
+	  This enables support for accessing all type of raw/parallel
+	  NAND flash devices. For further information see
+	  <http://www.linux-mtd.infradead.org/doc/nand.html>.
+
+if MTD_RAW_NAND
+
+config MTD_NAND_ECC_SOFT
+	bool
+	prompt "Support software ecc"
+
+config MTD_NAND_ECC_SW_BCH
+	select BCH
+	depends on MTD_NAND_ECC_SOFT
+	bool
+	prompt "Support software BCH ecc"
+
+config NAND_ECC_HW_SYNDROME
+	bool
+	prompt "Support syndrome hardware ecc controllers"
+
+config NAND_ALLOW_ERASE_BAD
+	bool
+	depends on MTD_WRITE
+	prompt "Add device parameter to allow erasing bad blocks"
+	help
+	  This adds a 'erasebad' device parameter to nand devices. When set
+	  to '1' it will be allowed to erase bad blocks. This is a potientially
+	  dangerous operation, so if unsure say no to this option.
+
+comment "Raw/parallel NAND flash controllers"
+
+config NAND_IMX
+	bool
+	prompt "i.MX21 to 53 NAND driver aka 'mxc', for NFC"
+	depends on ARCH_IMX
+	help
+	  Support for NAND flash on Freescale/NXP i.MX devices.  This is for the
+	  "MXC" series:  i.MX21/25/27/31/35/51/53.
+
+	  This is not for the "MXS" series i.MX processors (23 & 28), or i.MX6
+	  and later, which use the GPMI NAND controller from the MXS series.
+	  See the i.MX 'mxs' driver for those chips.
+
+config NAND_FSL_IFC
+	bool
+	prompt "FSL IFC NAND driver"
+	depends on ARCH_LAYERSCAPE
+	help
+	  Freescale IFC NAND driver for various chips.
+
+config NAND_MXS
+	bool
+	select STMP_DEVICE
+	prompt "i.MX23/28 & 6+ NAND driver aka 'mxs', for GPMI"
+	depends on MXS_APBH_DMA
+	help
+	  Support for NAND flash on Freescale/NXP i.MX devices.	 This is for the
+	  "MXS" series:  i.MX23/28 and all i.MX6 and later SoCs.
+
+	  This is not for the "MXC" series of i.MX processors in the i.MX21 to
+	  i.MX53 range.  See the i.MX "mxc" driver for those chips.
+
+config NAND_OMAP_GPMC
+	tristate "NAND Flash Support for GPMC based OMAP platforms"
+	depends on OMAP_GPMC
+	depends on BUS_OMAP_GPMC
+	help
+	  Support for NAND flash using GPMC. GPMC is a common memory
+	  interface found on Texas Instrument's OMAP platforms
+
+config MTD_NAND_OMAP_ELM
+	bool "Support for ELM (Error Location Module) on OMAP platforms"
+	depends on NAND_OMAP_GPMC || COMPILE_TEST
+	help
+	  This config enables the ELM hardware engine, which can be used to
+	  locate and correct errors when using BCH ECC scheme. This offloads
+	  the cpu from doing ECC error searching and correction. However some
+	  legacy OMAP families like OMAP2xxx, OMAP3xxx do not have ELM engine
+	  so this is optional for them.
+
+config NAND_ORION
+	bool
+	prompt "Marvell Orion NAND driver"
+	depends on (ARM && !CPU_32v4T) && (ARCH_KIRKWOOD || COMPILE_TEST)
+	help
+	  Support for the Orion NAND controller, present in Kirkwood SoCs.
+
+config NAND_MRVL_NFC
+	bool
+	prompt "Marvell PXA3xx NAND driver"
+	depends on ARCH_ARMADA_370 || ARCH_ARMADA_XP || ARCH_PXA3XX || COMPILE_TEST
+	help
+	  Support for the PXA3xx NAND controller, present in Armada 370/XP and
+	  PXA3xx SoCs.
+
+config NAND_STM32
+	bool "Support for NAND controller on STM32MP SoCs"
+	depends on ARCH_STM32MP || COMPILE_TEST
+	select STM32_FMC2_EBI if ARCH_STM32MP
+	select RESET_CONTROLLER if ARCH_STM32MP
+	select RESET_SIMPLE if ARCH_STM32MP
+	help
+	  Enables support for NAND Flash chips on SoCs containing the FMC2
+	  NAND controller. This controller is found on STM32MP SoCs.
+	  The controller supports a maximum 8k page size and supports
+	  a maximum 8-bit correction error per sector of 512 bytes.
+
+config NAND_ATMEL
+	bool
+	prompt "Atmel (AT91SAM9xxx) NAND driver"
+	select GENERIC_ALLOCATOR if OFDEVICE
+	depends on ARCH_AT91 || (OFDEVICE && COMPILE_TEST)
+
+config NAND_ATMEL_LEGACY
+	def_bool !AT91_MULTI_BOARDS || SOC_AT91SAM9
+	depends on NAND_ATMEL
+	help
+	  Select legacy driver for non-DT-enabled platforms
+	  and for the deprecated non-EBI binding.
+
+	  The deprecated binding is currently the only one
+	  support for AT91SAM9.
+
+config NAND_ATMEL_PMECC
+	bool
+	prompt "PMECC support"
+	depends on NAND_ATMEL_LEGACY
+	help
+	  Support for PMECC present on the SoC sam9x5 and sam9n12
+
+config MTD_NAND_ECC_SW_HAMMING_SMC
+	bool "NAND ECC Smart Media byte order"
+	default n
+	help
+	  Software ECC according to the Smart Media Specification.
+	  The original Linux implementation had byte 0 and 1 swapped.
+
+config MTD_NAND_NOMADIK
+	tristate "ST Nomadik 8815 NAND support"
+	depends on ARCH_NOMADIK
+	help
+	  Driver for the NAND flash controller on the Nomadik, with ECC.
+
+config MTD_NAND_DENALI
+        tristate "Support Denali NAND controller"
+        depends on HAS_DMA
+        help
+          Enable support for the Denali NAND controller.  This should be
+          combined with either the PCI or platform drivers to provide device
+          registration.
+
+config MTD_NAND_DENALI_DT
+        tristate "Support Denali NAND controller as a DT device"
+        depends on HAVE_CLK && MTD_NAND_DENALI
+        help
+          Enable the driver for NAND flash on platforms using a Denali NAND
+          controller as a DT device.
+
+if MTD_NAND_DENALI
+
+config MTD_NAND_DENALI_TIMING_MODE
+	int "Overrides default ONFI timing mode."
+	default -1
+	range -1 5
+	help
+	   -1 indicates use default timings
+
+endif
+
+endif
diff --git a/drivers/mtd/nand/raw/Makefile b/drivers/mtd/nand/raw/Makefile
new file mode 100644
index 0000000000..5f45cd91e6
--- /dev/null
+++ b/drivers/mtd/nand/raw/Makefile
@@ -0,0 +1,24 @@
+# Generic NAND options
+
+obj-$(CONFIG_MTD_RAW_NAND)		+= nand_ecc.o
+obj-$(CONFIG_MTD_NAND_ECC_SW_BCH)	+= nand_bch.o
+obj-$(CONFIG_MTD_RAW_NAND)		+= nand_ids.o
+obj-$(CONFIG_MTD_RAW_NAND)		+= nand_base.o  nand_timings.o
+obj-$(CONFIG_MTD_RAW_NAND)		+= nand_legacy.o nand_onfi.o nand_amd.o
+obj-$(CONFIG_MTD_RAW_NAND)		+= nand_esmt.o nand_hynix.o nand_macronix.o
+obj-$(CONFIG_MTD_RAW_NAND)		+= nand_micron.o nand_samsung.o nand_toshiba.o
+obj-$(CONFIG_MTD_RAW_NAND)		+= nand_jedec.o
+obj-$(CONFIG_MTD_RAW_NAND)		+= nand_bbt.o
+
+obj-$(CONFIG_MTD_NAND_NOMADIK)		+= nomadik_nand.o
+obj-$(CONFIG_NAND_IMX)			+= nand_imx.o
+obj-$(CONFIG_NAND_OMAP_GPMC)		+= nand_omap_gpmc.o nand_omap_bch_decoder.o
+obj-$(CONFIG_MTD_NAND_OMAP_ELM)		+= omap_elm.o
+obj-$(CONFIG_NAND_ORION)		+= nand_orion.o
+obj-$(CONFIG_NAND_STM32)		+= stm32_fmc2_nand.o
+obj-$(CONFIG_NAND_MRVL_NFC)		+= nand_mrvl_nfc.o
+obj-$(CONFIG_NAND_ATMEL)		+= atmel/
+obj-$(CONFIG_NAND_MXS)			+= nand_mxs.o
+obj-$(CONFIG_MTD_NAND_DENALI)		+= nand_denali.o
+obj-$(CONFIG_MTD_NAND_DENALI_DT)	+= nand_denali_dt.o
+obj-$(CONFIG_NAND_FSL_IFC)		+= nand_fsl_ifc.o
diff --git a/drivers/mtd/nand/atmel/Makefile b/drivers/mtd/nand/raw/atmel/Makefile
similarity index 100%
rename from drivers/mtd/nand/atmel/Makefile
rename to drivers/mtd/nand/raw/atmel/Makefile
diff --git a/drivers/mtd/nand/atmel/atmel_nand_ecc.h b/drivers/mtd/nand/raw/atmel/atmel_nand_ecc.h
similarity index 100%
rename from drivers/mtd/nand/atmel/atmel_nand_ecc.h
rename to drivers/mtd/nand/raw/atmel/atmel_nand_ecc.h
diff --git a/drivers/mtd/nand/atmel/legacy.c b/drivers/mtd/nand/raw/atmel/legacy.c
similarity index 100%
rename from drivers/mtd/nand/atmel/legacy.c
rename to drivers/mtd/nand/raw/atmel/legacy.c
diff --git a/drivers/mtd/nand/atmel/nand-controller.c b/drivers/mtd/nand/raw/atmel/nand-controller.c
similarity index 100%
rename from drivers/mtd/nand/atmel/nand-controller.c
rename to drivers/mtd/nand/raw/atmel/nand-controller.c
diff --git a/drivers/mtd/nand/atmel/pmecc.c b/drivers/mtd/nand/raw/atmel/pmecc.c
similarity index 100%
rename from drivers/mtd/nand/atmel/pmecc.c
rename to drivers/mtd/nand/raw/atmel/pmecc.c
diff --git a/drivers/mtd/nand/atmel/pmecc.h b/drivers/mtd/nand/raw/atmel/pmecc.h
similarity index 100%
rename from drivers/mtd/nand/atmel/pmecc.h
rename to drivers/mtd/nand/raw/atmel/pmecc.h
diff --git a/drivers/mtd/nand/denali.h b/drivers/mtd/nand/raw/denali.h
similarity index 100%
rename from drivers/mtd/nand/denali.h
rename to drivers/mtd/nand/raw/denali.h
diff --git a/drivers/mtd/nand/fsl_ifc.h b/drivers/mtd/nand/raw/fsl_ifc.h
similarity index 100%
rename from drivers/mtd/nand/fsl_ifc.h
rename to drivers/mtd/nand/raw/fsl_ifc.h
diff --git a/drivers/mtd/nand/internals.h b/drivers/mtd/nand/raw/internals.h
similarity index 100%
rename from drivers/mtd/nand/internals.h
rename to drivers/mtd/nand/raw/internals.h
diff --git a/drivers/mtd/nand/nand_amd.c b/drivers/mtd/nand/raw/nand_amd.c
similarity index 100%
rename from drivers/mtd/nand/nand_amd.c
rename to drivers/mtd/nand/raw/nand_amd.c
diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
similarity index 100%
rename from drivers/mtd/nand/nand_base.c
rename to drivers/mtd/nand/raw/nand_base.c
diff --git a/drivers/mtd/nand/nand_bbt.c b/drivers/mtd/nand/raw/nand_bbt.c
similarity index 100%
rename from drivers/mtd/nand/nand_bbt.c
rename to drivers/mtd/nand/raw/nand_bbt.c
diff --git a/drivers/mtd/nand/nand_bch.c b/drivers/mtd/nand/raw/nand_bch.c
similarity index 100%
rename from drivers/mtd/nand/nand_bch.c
rename to drivers/mtd/nand/raw/nand_bch.c
diff --git a/drivers/mtd/nand/nand_denali.c b/drivers/mtd/nand/raw/nand_denali.c
similarity index 100%
rename from drivers/mtd/nand/nand_denali.c
rename to drivers/mtd/nand/raw/nand_denali.c
diff --git a/drivers/mtd/nand/nand_denali_dt.c b/drivers/mtd/nand/raw/nand_denali_dt.c
similarity index 100%
rename from drivers/mtd/nand/nand_denali_dt.c
rename to drivers/mtd/nand/raw/nand_denali_dt.c
diff --git a/drivers/mtd/nand/nand_ecc.c b/drivers/mtd/nand/raw/nand_ecc.c
similarity index 100%
rename from drivers/mtd/nand/nand_ecc.c
rename to drivers/mtd/nand/raw/nand_ecc.c
diff --git a/drivers/mtd/nand/nand_esmt.c b/drivers/mtd/nand/raw/nand_esmt.c
similarity index 100%
rename from drivers/mtd/nand/nand_esmt.c
rename to drivers/mtd/nand/raw/nand_esmt.c
diff --git a/drivers/mtd/nand/nand_fsl_ifc.c b/drivers/mtd/nand/raw/nand_fsl_ifc.c
similarity index 100%
rename from drivers/mtd/nand/nand_fsl_ifc.c
rename to drivers/mtd/nand/raw/nand_fsl_ifc.c
diff --git a/drivers/mtd/nand/nand_hynix.c b/drivers/mtd/nand/raw/nand_hynix.c
similarity index 100%
rename from drivers/mtd/nand/nand_hynix.c
rename to drivers/mtd/nand/raw/nand_hynix.c
diff --git a/drivers/mtd/nand/nand_ids.c b/drivers/mtd/nand/raw/nand_ids.c
similarity index 100%
rename from drivers/mtd/nand/nand_ids.c
rename to drivers/mtd/nand/raw/nand_ids.c
diff --git a/drivers/mtd/nand/nand_imx.c b/drivers/mtd/nand/raw/nand_imx.c
similarity index 100%
rename from drivers/mtd/nand/nand_imx.c
rename to drivers/mtd/nand/raw/nand_imx.c
diff --git a/drivers/mtd/nand/nand_jedec.c b/drivers/mtd/nand/raw/nand_jedec.c
similarity index 100%
rename from drivers/mtd/nand/nand_jedec.c
rename to drivers/mtd/nand/raw/nand_jedec.c
diff --git a/drivers/mtd/nand/nand_legacy.c b/drivers/mtd/nand/raw/nand_legacy.c
similarity index 100%
rename from drivers/mtd/nand/nand_legacy.c
rename to drivers/mtd/nand/raw/nand_legacy.c
diff --git a/drivers/mtd/nand/nand_macronix.c b/drivers/mtd/nand/raw/nand_macronix.c
similarity index 100%
rename from drivers/mtd/nand/nand_macronix.c
rename to drivers/mtd/nand/raw/nand_macronix.c
diff --git a/drivers/mtd/nand/nand_micron.c b/drivers/mtd/nand/raw/nand_micron.c
similarity index 100%
rename from drivers/mtd/nand/nand_micron.c
rename to drivers/mtd/nand/raw/nand_micron.c
diff --git a/drivers/mtd/nand/nand_mrvl_nfc.c b/drivers/mtd/nand/raw/nand_mrvl_nfc.c
similarity index 100%
rename from drivers/mtd/nand/nand_mrvl_nfc.c
rename to drivers/mtd/nand/raw/nand_mrvl_nfc.c
diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/raw/nand_mxs.c
similarity index 100%
rename from drivers/mtd/nand/nand_mxs.c
rename to drivers/mtd/nand/raw/nand_mxs.c
diff --git a/drivers/mtd/nand/nand_omap_bch_decoder.c b/drivers/mtd/nand/raw/nand_omap_bch_decoder.c
similarity index 100%
rename from drivers/mtd/nand/nand_omap_bch_decoder.c
rename to drivers/mtd/nand/raw/nand_omap_bch_decoder.c
diff --git a/drivers/mtd/nand/nand_omap_bch_decoder.h b/drivers/mtd/nand/raw/nand_omap_bch_decoder.h
similarity index 100%
rename from drivers/mtd/nand/nand_omap_bch_decoder.h
rename to drivers/mtd/nand/raw/nand_omap_bch_decoder.h
diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/raw/nand_omap_gpmc.c
similarity index 100%
rename from drivers/mtd/nand/nand_omap_gpmc.c
rename to drivers/mtd/nand/raw/nand_omap_gpmc.c
diff --git a/drivers/mtd/nand/nand_onfi.c b/drivers/mtd/nand/raw/nand_onfi.c
similarity index 100%
rename from drivers/mtd/nand/nand_onfi.c
rename to drivers/mtd/nand/raw/nand_onfi.c
diff --git a/drivers/mtd/nand/nand_orion.c b/drivers/mtd/nand/raw/nand_orion.c
similarity index 100%
rename from drivers/mtd/nand/nand_orion.c
rename to drivers/mtd/nand/raw/nand_orion.c
diff --git a/drivers/mtd/nand/nand_samsung.c b/drivers/mtd/nand/raw/nand_samsung.c
similarity index 100%
rename from drivers/mtd/nand/nand_samsung.c
rename to drivers/mtd/nand/raw/nand_samsung.c
diff --git a/drivers/mtd/nand/nand_timings.c b/drivers/mtd/nand/raw/nand_timings.c
similarity index 100%
rename from drivers/mtd/nand/nand_timings.c
rename to drivers/mtd/nand/raw/nand_timings.c
diff --git a/drivers/mtd/nand/nand_toshiba.c b/drivers/mtd/nand/raw/nand_toshiba.c
similarity index 100%
rename from drivers/mtd/nand/nand_toshiba.c
rename to drivers/mtd/nand/raw/nand_toshiba.c
diff --git a/drivers/mtd/nand/nomadik_nand.c b/drivers/mtd/nand/raw/nomadik_nand.c
similarity index 100%
rename from drivers/mtd/nand/nomadik_nand.c
rename to drivers/mtd/nand/raw/nomadik_nand.c
diff --git a/drivers/mtd/nand/omap_elm.c b/drivers/mtd/nand/raw/omap_elm.c
similarity index 100%
rename from drivers/mtd/nand/omap_elm.c
rename to drivers/mtd/nand/raw/omap_elm.c
diff --git a/drivers/mtd/nand/stm32_fmc2_nand.c b/drivers/mtd/nand/raw/stm32_fmc2_nand.c
similarity index 100%
rename from drivers/mtd/nand/stm32_fmc2_nand.c
rename to drivers/mtd/nand/raw/stm32_fmc2_nand.c
diff --git a/include/nand.h b/include/nand.h
index f0114a227d..84f5a96714 100644
--- a/include/nand.h
+++ b/include/nand.h
@@ -4,7 +4,7 @@
 
 struct nand_bb;
 
-#ifdef CONFIG_NAND
+#ifdef CONFIG_MTD_RAW_NAND
 int dev_add_bb_dev(const char *filename, const char *name);
 int dev_remove_bb_dev(const char *name);
 struct cdev *mtd_add_bb(struct mtd_info *mtd, const char *name);
-- 
2.39.2



