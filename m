Delivery-date: Fri, 24 Mar 2023 13:20:09 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pfgOu-00DC5n-1p
	for lore@lore.pengutronix.de; Fri, 24 Mar 2023 13:20:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pfgOt-0003fA-IQ
	for lore@pengutronix.de; Fri, 24 Mar 2023 13:20:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=a5293MbA8D9XIE8XhrxnGIUGYKi9CWNLp2ogjyhxfHo=; b=qecrdqbc1/quQqpw9SsgoKQwAl
	YC/bH/S1k8wJybQCgHD5cJSQ0sEl/G/BnvvPDkeqjDmvpz+otIq1n114yNngxmwRdxsFXkIxr0zor
	lFEf9FRQ/FMZy/gquulAkHwDwwuaRjw7waUj4nb7GZDK9x19A4KWgwZx5lKUUKEMTahRGEufS5W94
	bJfW9HK2xnrhwH0lfIKIPFQ2n4hF6PtkSMGmMSMEHtz3HehmwfYKTNXuf84G1tgh1pHPZF7q1RU52
	hXcZMT5ddPUsqV394SSojcMpaNHP+WUTLhZxBfaec4CEKgeGfa4AfQZNZSrEzYozUUAd8TGsw1U2P
	bdF4RLxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfgNj-004Kbv-19;
	Fri, 24 Mar 2023 12:18:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfgNe-004KYS-0G
	for barebox@lists.infradead.org;
	Fri, 24 Mar 2023 12:18:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pfgNX-0003Qo-5t; Fri, 24 Mar 2023 13:18:43 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pfgNW-006Na2-I8; Fri, 24 Mar 2023 13:18:42 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pfgNV-00H4ys-LP; Fri, 24 Mar 2023 13:18:41 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 24 Mar 2023 13:18:40 +0100
Message-Id: <20230324121840.2375026-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230324121840.2375026-1-s.hauer@pengutronix.de>
References: <20230324121840.2375026-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230324_051850_279656_2F59D323 
X-CRM114-Status: GOOD (  16.16  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] ARM: cleanup 32bit/64bit support in Kconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The decision whether to build a 32bit or 64bit barebox has to be made
first before anything else, so this makes CONFIG_64BIT a toplevel option
without any further dependencies.

With this patch we will only present the SoCs/boards which are actually
supported by the selected code model in Kconfig.

Without this patch it was often possible to select 32bit boards on a
64bit build or vice versa, which resulted in a broken build.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig                       | 52 +++++++++++++-------------
 arch/arm/configs/layerscape_defconfig  |  1 +
 arch/arm/configs/qemu_virt64_defconfig |  1 +
 arch/arm/configs/zynqmp_defconfig      |  1 +
 arch/arm/cpu/Kconfig                   |  5 ---
 arch/arm/mach-layerscape/Kconfig       |  9 ++++-
 6 files changed, 38 insertions(+), 31 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 2c1783d8e9..5aef8fcd3b 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -45,6 +45,7 @@ config ARCH_MULTIARCH
 
 config ARCH_AT91
 	bool "Atmel AT91"
+	depends on 32BIT
 	select GPIOLIB
 	select CLKDEV_LOOKUP
 	select HAVE_PBL_MULTI_IMAGES
@@ -54,6 +55,7 @@ config ARCH_AT91
 
 config ARCH_CLPS711X
 	bool "Cirrus Logic EP711x/EP721x/EP731x"
+	depends on 32BIT
 	select CLKDEV_LOOKUP
 	select CLOCKSOURCE_CLPS711X
 	select COMMON_CLK
@@ -67,12 +69,14 @@ config ARCH_CLPS711X
 
 config ARCH_DAVINCI
 	bool "TI Davinci"
+	depends on 32BIT
 	select CPU_ARM926T
 	select HAS_DEBUG_LL
 	select GPIOLIB
 
 config ARCH_DIGIC
 	bool "Canon DIGIC-based cameras"
+	depends on 32BIT
 	select CPU_ARM946E
 	select HAS_DEBUG_LL
 	select CLOCKSOURCE_DIGIC
@@ -82,6 +86,7 @@ config ARCH_DIGIC
 
 config ARCH_EP93XX
 	bool "Cirrus Logic EP93xx"
+	depends on 32BIT
 	select CPU_ARM920T
 	select GENERIC_GPIO
 
@@ -99,6 +104,7 @@ config ARCH_LAYERSCAPE
 
 config ARCH_MVEBU
 	bool "Marvell EBU platforms"
+	depends on 32BIT
 	select COMMON_CLK
 	select COMMON_CLK_OF_PROVIDER
 	select CLKDEV_LOOKUP
@@ -113,6 +119,7 @@ config ARCH_MVEBU
 
 config ARCH_MXS
 	bool "Freescale i.MX23/28 (mxs) based"
+	depends on 32BIT
 	select GPIOLIB
 	select GENERIC_GPIO
 	select COMMON_CLK
@@ -122,6 +129,7 @@ config ARCH_MXS
 
 config ARCH_NOMADIK
 	bool "STMicroelectronics Nomadik"
+	depends on 32BIT
 	select CPU_ARM926T
 	select CLOCKSOURCE_NOMADIK
 	select HAVE_CLK
@@ -130,14 +138,17 @@ config ARCH_NOMADIK
 
 config ARCH_OMAP_SINGLE
 	bool "TI OMAP"
+	depends on 32BIT
 	select ARCH_OMAP
 
 config ARCH_PXA
 	bool "Intel/Marvell PXA based"
+	depends on 32BIT
 	select GENERIC_GPIO
 
 config ARCH_SOCFPGA
 	bool "Altera SOCFPGA"
+	depends on 32BIT
 	select HAS_DEBUG_LL
 	select ARM_SMP_TWD
 	select CPU_V7
@@ -146,12 +157,14 @@ config ARCH_SOCFPGA
 
 config ARCH_VERSATILE
 	bool "ARM Versatile boards (ARM926EJ-S)"
+	depends on 32BIT
 	select GPIOLIB
 	select HAVE_CLK
 	select HAS_DEBUG_LL
 
 config ARCH_TEGRA
 	bool "NVIDIA Tegra"
+	depends on 32BIT
 	select CPU_V7
 	select HAS_DEBUG_LL
 	select HW_HAS_PCI
@@ -169,6 +182,7 @@ config ARCH_TEGRA
 
 config ARCH_UEMD
 	bool "RC Module UEMD Platform"
+	depends on 32BIT
 	select CPU_ARM1176
 	select COMMON_CLK
 	select COMMON_CLK_OF_PROVIDER
@@ -180,18 +194,19 @@ config ARCH_UEMD
 
 config ARCH_ZYNQ
 	bool "Xilinx Zynq-based boards"
+	depends on 32BIT
 	select HAS_DEBUG_LL
 	select PBL_IMAGE
 	select GPIOLIB
 
 config ARCH_ARM64_VIRT
 	bool "ARM64 QEMU Virt board"
+	depends on 64BIT
 	select CPU_V8
 	select HAVE_PBL_MULTI_IMAGES
 	select OFDEVICE
 	select OFTREE
 	select RELOCATABLE
-	select CPU_SUPPORTS_64BIT_KERNEL
 	select ARM_AMBA
 	select BOARD_ARM_VIRT
 	select HW_HAS_PCI
@@ -212,8 +227,6 @@ config ARCH_BCM283X
 	select OFTREE
 	select OFDEVICE
 	select HAVE_PBL_MULTI_IMAGES
-	select CPU_SUPPORTS_32BIT_KERNEL
-	select CPU_SUPPORTS_64BIT_KERNEL
 
 config ARCH_IMX
 	bool "Freescale iMX-based"
@@ -225,11 +238,10 @@ config ARCH_IMX
 	select HAS_DEBUG_LL
 	select HAVE_PBL_MULTI_IMAGES
 	select RELOCATABLE
-	select CPU_SUPPORTS_32BIT_KERNEL
-	select CPU_SUPPORTS_64BIT_KERNEL
 
 config ARCH_OMAP_MULTI
 	bool "TI OMAP"
+	depends on 32BIT
 	depends on ARCH_MULTIARCH
 	select OMAP_MULTI_BOARDS
 	select ARCH_OMAP
@@ -248,11 +260,10 @@ config ARCH_ROCKCHIP
 	select OFTREE
 	select HAVE_PBL_MULTI_IMAGES
 	select HAS_DEBUG_LL
-	select CPU_SUPPORTS_32BIT_KERNEL
-	select CPU_SUPPORTS_64BIT_KERNEL
 
 config ARCH_STM32MP
 	bool "STMicroelectronics STM32MP"
+	depends on 32BIT
 	select ARCH_STM32
 	select CPU_V7
 	select HAVE_PBL_MULTI_IMAGES
@@ -269,6 +280,7 @@ config ARCH_STM32MP
 
 config ARCH_VEXPRESS
 	bool "ARM Vexpress & virt boards"
+	depends on 32BIT
 	select HAS_DEBUG_LL
 	select CPU_V7
 	select ARM_AMBA
@@ -283,6 +295,7 @@ config ARCH_VEXPRESS
 
 config ARCH_ZYNQMP
 	bool "Xilinx ZynqMP-based boards"
+	depends on 64BIT
 	select CPU_V8
 	select HAS_DEBUG_LL
 	select HAVE_PBL_MULTI_IMAGES
@@ -294,7 +307,6 @@ config ARCH_ZYNQMP
 	select OFDEVICE
 	select OFTREE
 	select RELOCATABLE
-	select CPU_SUPPORTS_64BIT_KERNEL
 	select HAS_MACB
 
 source "arch/arm/cpu/Kconfig"
@@ -390,28 +402,18 @@ config ARM_BOARD_PREPEND_ATAG
 
 endmenu
 
-choice
-	prompt "Barebox code model"
-	help
-	  You should only select this option if you have a workload that
-	  actually benefits from 64-bit processing or if your machine has
-	  large memory. You will only be presented a single option in this
-	  menu if your system does not support both 32-bit and 64-bit modes.
-
-config 32BIT
-	bool "32-bit barebox"
-	depends on CPU_SUPPORTS_32BIT_KERNEL
-	help
-	  Select this option if you want to build a 32-bit barebox.
-
 config 64BIT
-	bool "64-bit barebox"
-	depends on CPU_SUPPORTS_64BIT_KERNEL
+	bool "64bit barebox" if "$(ARCH)" != "arm64"
+	default "$(ARCH)" = "arm64"
 	select ARCH_DMA_ADDR_T_64BIT
 	help
 	  Select this option if you want to build a 64-bit barebox.
 
-endchoice
+config 32BIT
+	bool
+	default !64BIT
+	help
+	  Select this option if you want to build a 32-bit barebox.
 
 menu "ARM specific settings"
 
diff --git a/arch/arm/configs/layerscape_defconfig b/arch/arm/configs/layerscape_defconfig
index 64e006a37c..35b254f139 100644
--- a/arch/arm/configs/layerscape_defconfig
+++ b/arch/arm/configs/layerscape_defconfig
@@ -2,6 +2,7 @@ CONFIG_ARCH_LAYERSCAPE=y
 CONFIG_ARCH_LAYERSCAPE_PPA=y
 CONFIG_MACH_LS1046ARDB=y
 CONFIG_MACH_TQMLS1046A=y
+CONFIG_64BIT=y
 CONFIG_MMU=y
 CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_TLSF=y
diff --git a/arch/arm/configs/qemu_virt64_defconfig b/arch/arm/configs/qemu_virt64_defconfig
index 3802ead279..f9265cb3a3 100644
--- a/arch/arm/configs/qemu_virt64_defconfig
+++ b/arch/arm/configs/qemu_virt64_defconfig
@@ -1,4 +1,5 @@
 CONFIG_ARCH_ARM64_VIRT=y
+CONFIG_64BIT=y
 CONFIG_ARM_PSCI_CLIENT=y
 CONFIG_MALLOC_SIZE=0x0
 CONFIG_KALLSYMS=y
diff --git a/arch/arm/configs/zynqmp_defconfig b/arch/arm/configs/zynqmp_defconfig
index 12b4ab30e1..c9b6fa69ef 100644
--- a/arch/arm/configs/zynqmp_defconfig
+++ b/arch/arm/configs/zynqmp_defconfig
@@ -1,5 +1,6 @@
 CONFIG_ARCH_ZYNQMP=y
 CONFIG_MACH_XILINX_ZCU104=y
+CONFIG_64BIT=y
 CONFIG_ARM_PSCI_CLIENT=y
 CONFIG_MMU=y
 CONFIG_MALLOC_SIZE=0x0
diff --git a/arch/arm/cpu/Kconfig b/arch/arm/cpu/Kconfig
index f6e2ae9b8a..26f07043fe 100644
--- a/arch/arm/cpu/Kconfig
+++ b/arch/arm/cpu/Kconfig
@@ -157,8 +157,3 @@ config CACHE_L2X0
 	bool "Enable L2x0 PrimeCell"
 	depends on MMU && ARCH_HAS_L2X0
 
-config CPU_SUPPORTS_32BIT_KERNEL
-	bool
-
-config CPU_SUPPORTS_64BIT_KERNEL
-	bool
diff --git a/arch/arm/mach-layerscape/Kconfig b/arch/arm/mach-layerscape/Kconfig
index 461859ab6c..52527f0c15 100644
--- a/arch/arm/mach-layerscape/Kconfig
+++ b/arch/arm/mach-layerscape/Kconfig
@@ -17,9 +17,10 @@ config ARCH_LAYERSCAPE_PPA
 
 config ARCH_LS1046
 	select CPU_V8
-	select CPU_SUPPORTS_64BIT_KERNEL
 	bool
 
+if 64BIT
+
 config MACH_LS1046ARDB
 	bool "QorIQ LS1046A Reference Design Board"
 	select ARCH_LS1046
@@ -36,10 +37,14 @@ config MACH_TQMLS1046A
 	select DDR_FSL
 	select DDR_FSL_DDR4
 
+endif
+
 config ARCH_LS1021
 	select CPU_V7
 	bool
 
+if 32BIT
+
 config MACH_LS1021AIOT
 	bool "LS1021AIOT Board"
 	select ARCH_LS1021
@@ -47,3 +52,5 @@ config MACH_LS1021AIOT
 	select DDR_FSL_DDR3
 
 endif
+
+endif
-- 
2.30.2



