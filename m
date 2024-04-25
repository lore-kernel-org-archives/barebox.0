Delivery-date: Thu, 25 Apr 2024 14:11:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzxwN-00Ggoy-1P
	for lore@lore.pengutronix.de;
	Thu, 25 Apr 2024 14:11:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzxwL-0007F7-HM
	for lore@pengutronix.de; Thu, 25 Apr 2024 14:11:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AHQXJOmFnoKKfpMJH0v5iqkXxQJhaLR2yNB2QNr6zTs=; b=2mFtRqi28XC7IB
	dr6/J3Trh+cCfjiUsW/XN3Qrx5ZtbfAy36cUNmhOsvohFttFK7xWUM4Dzj1Sx45vKJjXsKQtdgPAH
	ery0PaRgbe+zaMTHY2n4HuCwfckwn0U5NBC7/6jH0WeCDOUB0ueTjvDgdSLEDxH2lAyytimjA7ls3
	b/E/qcPU4TTq90694QXXvxwt7SFBgUnp7xWQZN4x0UAnh45nkHo+dWIZLFdDT3tz1QbAKzZ1LpyzD
	Kfoivs8c1WxRTctGze1T5GKkaPTZSQOxW7cw0jVsgNWWNYLjyUTOF9CsNsT488kHEO83Jhz2utZyy
	2MTKssR09XtjPiETmtjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzxvt-000000089il-2nJY;
	Thu, 25 Apr 2024 12:10:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzxvp-000000089gH-2HeR
	for barebox@lists.infradead.org;
	Thu, 25 Apr 2024 12:10:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rzxvg-0006eb-Cd; Thu, 25 Apr 2024 14:10:20 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rzxvf-00EFvK-Lq; Thu, 25 Apr 2024 14:10:19 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rzxgY-009aQk-2W;
	Thu, 25 Apr 2024 13:54:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 25 Apr 2024 13:54:35 +0200
Message-Id: <20240425115439.2269239-12-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240425115439.2269239-1-s.hauer@pengutronix.de>
References: <20240425115439.2269239-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240425_051029_610984_977F4A18 
X-CRM114-Status: GOOD (  12.42  )
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
Cc: Jan Weitzel <j.weitzel@phytec.de>, Vicente Bergas <vicencb@gmail.com>, Bo Shen <voice.shen@atmel.com>, Matthias Kaehlcke <matthias@kaehlcke.net>, Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 11/15] ARM: move HAVE_PBL_MULTI_IMAGES to toplevel
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

All ARM architectures now have PBL multi image support, so move
HAVE_PBL_MULTI_IMAGES and HAVE_PBL_IMAGE to the toplevel ARM
config.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig              |  9 ++-------
 arch/arm/cpu/Kconfig          |  3 ---
 arch/arm/cpu/uncompress.c     | 13 -------------
 arch/arm/mach-omap/Kconfig    |  1 -
 arch/arm/mach-socfpga/Kconfig |  2 --
 arch/arm/mach-zynq/Kconfig    |  1 -
 6 files changed, 2 insertions(+), 27 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 5a10b5aaa3..e2ea68e762 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -10,6 +10,8 @@ config ARM
 	select ARCH_HAS_SJLJ
 	select ARM_OPTIMZED_STRING_FUNCTIONS if KASAN
 	select HAVE_EFI_STUB
+	select HAVE_PBL_IMAGE
+	select HAVE_PBL_MULTI_IMAGES
 	default y
 
 config ARM_LINUX
@@ -42,7 +44,6 @@ choice
 	prompt "ARM system type"
 
 config ARCH_MULTIARCH
-	select HAVE_PBL_MULTI_IMAGES
 	select OFTREE
 	select OFDEVICE
 	bool "Allow multiple archs to be selected"
@@ -52,7 +53,6 @@ config ARCH_AT91
 	depends on 32BIT
 	select GPIOLIB
 	select CLKDEV_LOOKUP
-	select HAVE_PBL_MULTI_IMAGES
 	select HAS_DEBUG_LL
 	select HAVE_CLK
 	select COMMON_CLK_AT91 if COMMON_CLK_OF_PROVIDER
@@ -66,7 +66,6 @@ config ARCH_CLPS711X
 	select CPU_32v4T
 	select GPIOLIB
 	select HAS_DEBUG_LL
-	select HAVE_PBL_MULTI_IMAGES
 	select MFD_SYSCON
 	select RELOCATABLE
 
@@ -77,7 +76,6 @@ config ARCH_MVEBU
 	select COMMON_CLK_OF_PROVIDER
 	select GPIOLIB
 	select HAS_DEBUG_LL
-	select HAVE_PBL_MULTI_IMAGES
 	select HW_HAS_PCI
 	select MVEBU_MBUS
 	select OFTREE
@@ -91,7 +89,6 @@ config ARCH_MXS
 	select GENERIC_GPIO
 	select COMMON_CLK
 	select HAS_DEBUG_LL
-	select HAVE_PBL_MULTI_IMAGES
 
 config ARCH_PXA
 	bool "Intel/Marvell PXA based"
@@ -116,7 +113,6 @@ config ARCH_TEGRA
 	select COMMON_CLK_OF_PROVIDER
 	select GPIOLIB
 	select GPIO_TEGRA
-	select HAVE_PBL_MULTI_IMAGES
 	select OFDEVICE
 	select OFTREE
 	select RELOCATABLE
@@ -277,7 +273,6 @@ config BOARD_ARM_VIRT
 config BOARD_ARM_GENERIC_DT
 	select BOARD_GENERIC_DT
 	select ARM_AMBA
-	depends on HAVE_PBL_MULTI_IMAGES
 	depends on OFDEVICE
 	bool "Build generic ARM device tree 2nd stage image"
 	help
diff --git a/arch/arm/cpu/Kconfig b/arch/arm/cpu/Kconfig
index e69acaacdf..6563394a7a 100644
--- a/arch/arm/cpu/Kconfig
+++ b/arch/arm/cpu/Kconfig
@@ -10,14 +10,11 @@ config CPU_32
 	select HAS_MODULES
 	select HAVE_MOD_ARCH_SPECIFIC
 	select HAS_DMA
-	select HAVE_PBL_IMAGE
 	select ARCH_HAS_ZERO_PAGE
 
 config CPU_64
 	bool
 	select PHYS_ADDR_T_64BIT
-	select HAVE_PBL_IMAGE
-	select HAVE_PBL_MULTI_IMAGES
 	select HAS_DMA
 	select ARCH_WANT_FRAME_POINTERS
 	select ARCH_HAS_ZERO_PAGE
diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
index a481c4634d..4101cb36a4 100644
--- a/arch/arm/cpu/uncompress.c
+++ b/arch/arm/cpu/uncompress.c
@@ -23,19 +23,6 @@
 
 #include "entry.h"
 
-#ifndef CONFIG_HAVE_PBL_MULTI_IMAGES
-
-void start_pbl(void);
-
-/*
- * First instructions in the pbl image
- */
-void __naked __section(.text_head_entry_start_single_pbl) start_pbl(void)
-{
-	barebox_arm_head();
-}
-#endif
-
 unsigned long free_mem_ptr;
 unsigned long free_mem_end_ptr;
 
diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index fe3c6316dc..6ddbb6e572 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -182,7 +182,6 @@ config MACH_VSCOM_BALTOS
 config MACH_WAGO_PFC_AM35XX
         bool "Wago PFC200 Fieldbus Controller"
         select ARCH_AM35XX
-        select HAVE_PBL_MULTI_IMAGES
         select HAVE_CONFIGURABLE_MEMORY_LAYOUT
         help
           Say Y here if you are using a the AM3505 based PFC200 controller
diff --git a/arch/arm/mach-socfpga/Kconfig b/arch/arm/mach-socfpga/Kconfig
index b23a41d3f9..75f03d3f6a 100644
--- a/arch/arm/mach-socfpga/Kconfig
+++ b/arch/arm/mach-socfpga/Kconfig
@@ -15,7 +15,6 @@ comment "Altera SoCFPGA System-on-Chip"
 config ARCH_SOCFPGA_CYCLONE5
 	bool
 	select CPU_V7
-	select HAVE_PBL_MULTI_IMAGES
 	select OFDEVICE if !ARCH_SOCFPGA_XLOAD
 	select OFTREE if !ARCH_SOCFPGA_XLOAD
 	select GPIOLIB if !ARCH_SOCFPGA_XLOAD
@@ -25,7 +24,6 @@ config ARCH_SOCFPGA_ARRIA10
 	select CPU_V7
 	select ARM_USE_COMPRESSED_DTB
 	select RESET_CONTROLLER
-	select HAVE_PBL_MULTI_IMAGES
 	select OFDEVICE
 	select OFTREE
 
diff --git a/arch/arm/mach-zynq/Kconfig b/arch/arm/mach-zynq/Kconfig
index 451a344b2e..be51411a43 100644
--- a/arch/arm/mach-zynq/Kconfig
+++ b/arch/arm/mach-zynq/Kconfig
@@ -17,7 +17,6 @@ config ARCH_ZYNQ7000
 	select COMMON_CLK_OF_PROVIDER
 	select ARM_SMP_TWD
 	select HAS_MACB
-	select HAVE_PBL_MULTI_IMAGES
 	select OFTREE
 	select OFDEVICE
 	select RELOCATABLE
-- 
2.39.2



