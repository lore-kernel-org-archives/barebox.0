Delivery-date: Thu, 25 Apr 2024 14:11:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzxwN-00Ggok-0i
	for lore@lore.pengutronix.de;
	Thu, 25 Apr 2024 14:11:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzxwL-0007Ej-42
	for lore@pengutronix.de; Thu, 25 Apr 2024 14:11:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bO3DYvmO2Bo0k6WFiabud0GRjYfx/yH1MmHR4t74Nps=; b=1dGn/KYPYqmVD/
	ovRCKtlhrqrM/TOYrYBXjDLXq9flA6CEYl/z7fhPZlejJTAt9BulYyS45PPOFPPeT4SFqp3w6QDvn
	dtWOfqcIv5KzYGF6d4FeQj1Jj8/RuIiIhS96yoTXLtWrCmE5VaKVGwA0pu00+JMVaqkuX3BcD8/zz
	s5qIEgcrxVoSPDdNNJIfyrtu8TCJsgPtXpZ55WTQtcqPT9hcy/QZU9P/E6UCqUOLF0UaVCQZuIcb9
	TGGwZ0Rx01KqnWWS1onp3Yb7UiJnLMl16YAALM+bw41JqKaqJmCUOwzzKdc9HKgTdtiuha+MCVfRR
	erf8IpKrPapuAciNRgWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzxvm-000000089fH-3nD4;
	Thu, 25 Apr 2024 12:10:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzxvi-000000089cZ-00pk
	for barebox@lists.infradead.org;
	Thu, 25 Apr 2024 12:10:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rzxvg-0006ef-D9; Thu, 25 Apr 2024 14:10:20 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rzxvf-00EFvW-W9; Thu, 25 Apr 2024 14:10:20 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rzxgZ-009aQk-00;
	Thu, 25 Apr 2024 13:54:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 25 Apr 2024 13:54:39 +0200
Message-Id: <20240425115439.2269239-16-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240425115439.2269239-1-s.hauer@pengutronix.de>
References: <20240425115439.2269239-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240425_051022_345061_A6C97F88 
X-CRM114-Status: GOOD (  13.11  )
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
Subject: [PATCH 15/15] ARM: drop TEXT_BASE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With all ARM boards being relocatable TEXT_BASE is always defined to 0x0
and can be dropped. The ARCH_TEXT_BASE Kconfig symbol is also no longer
used and can be removed.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig                  | 4 ----
 arch/arm/Makefile                 | 4 ----
 arch/arm/boards/versatile/Kconfig | 4 ----
 arch/arm/lib32/barebox.lds.S      | 2 +-
 arch/arm/lib64/barebox.lds.S      | 2 +-
 arch/arm/mach-at91/Kconfig        | 8 --------
 arch/arm/mach-bcm283x/Kconfig     | 4 ----
 arch/arm/mach-mvebu/Kconfig       | 7 -------
 arch/arm/mach-mxs/Kconfig         | 9 ---------
 arch/arm/mach-omap/Kconfig        | 5 -----
 arch/arm/mach-rockchip/Kconfig    | 5 -----
 arch/arm/mach-socfpga/Kconfig     | 4 ----
 arch/arm/mach-tegra/Kconfig       | 4 ----
 arch/arm/mach-versatile/Kconfig   | 3 ---
 arch/arm/mach-vexpress/Kconfig    | 4 ----
 arch/arm/mach-zynq/Kconfig        | 4 ----
 16 files changed, 2 insertions(+), 71 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 6a6d7955d1..b9883b30f7 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -24,10 +24,6 @@ config ARM_USE_COMPRESSED_DTB
        bool
        select USE_COMPRESSED_DTB
 
-config TEXT_BASE
-	hex
-	default 0x0
-
 menu "System Type"
 
 config ARCH_STM32
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index f98770f66a..f91fcb0454 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -102,10 +102,6 @@ machine-$(CONFIG_ARCH_TEGRA)		+= tegra
 machine-$(CONFIG_ARCH_ZYNQ)		+= zynq
 machine-$(CONFIG_ARCH_ZYNQMP)		+= zynqmp
 
-TEXT_BASE = $(CONFIG_TEXT_BASE)
-
-KBUILD_CPPFLAGS += -DTEXT_BASE=$(TEXT_BASE)
-
 # Add cleanup flags
 KBUILD_CPPFLAGS += -fdata-sections -ffunction-sections
 LDFLAGS_barebox += --gc-sections -pie
diff --git a/arch/arm/boards/versatile/Kconfig b/arch/arm/boards/versatile/Kconfig
index 66492404e0..5cb3061635 100644
--- a/arch/arm/boards/versatile/Kconfig
+++ b/arch/arm/boards/versatile/Kconfig
@@ -2,8 +2,4 @@
 
 if MACH_VERSATILEPB
 
-config ARCH_TEXT_BASE
-	hex
-	default 0x01000000
-
 endif
diff --git a/arch/arm/lib32/barebox.lds.S b/arch/arm/lib32/barebox.lds.S
index ad9e9e84ef..97f41f72fe 100644
--- a/arch/arm/lib32/barebox.lds.S
+++ b/arch/arm/lib32/barebox.lds.S
@@ -83,5 +83,5 @@ SECTIONS
 #endif
 
 	_end = .;
-	_barebox_image_size = __bss_start - TEXT_BASE;
+	_barebox_image_size = __bss_start;
 }
diff --git a/arch/arm/lib64/barebox.lds.S b/arch/arm/lib64/barebox.lds.S
index 2479646d9d..1d0cc6dc54 100644
--- a/arch/arm/lib64/barebox.lds.S
+++ b/arch/arm/lib64/barebox.lds.S
@@ -53,5 +53,5 @@ SECTIONS
 	.bss : { *(.bss*) }
 	.__bss_stop :  { *(.__bss_stop) }
 	_end = .;
-	_barebox_image_size = __bss_start - TEXT_BASE;
+	_barebox_image_size = __bss_start;
 }
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index b68a9f4e25..0b75d665d0 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -147,14 +147,6 @@ config SOC_SAMA7G5
 	help
 	  Select this if you are using one of Microchip's SAMA7G5 family SoC.
 
-config ARCH_TEXT_BASE
-	hex
-	default 0x73f00000 if SOC_AT91SAM9G45
-	default 0x26f00000 if SOC_AT91SAM9X5
-	default 0x20f00000 if SOC_AT91RM9200
-	default 0x21f00000 if MACH_ANIMEO_IP
-	default 0x23f00000
-
 config HAVE_NAND_ATMEL_BUSWIDTH_16
 	bool
 
diff --git a/arch/arm/mach-bcm283x/Kconfig b/arch/arm/mach-bcm283x/Kconfig
index f7434d2f5c..defccf8362 100644
--- a/arch/arm/mach-bcm283x/Kconfig
+++ b/arch/arm/mach-bcm283x/Kconfig
@@ -2,10 +2,6 @@
 
 if ARCH_BCM283X
 
-config ARCH_TEXT_BASE
-	hex
-	default 0x0
-
 config MACH_RPI_COMMON
 	bool
 	select ARM_USE_COMPRESSED_DTB
diff --git a/arch/arm/mach-mvebu/Kconfig b/arch/arm/mach-mvebu/Kconfig
index 1b26148434..ed1302af65 100644
--- a/arch/arm/mach-mvebu/Kconfig
+++ b/arch/arm/mach-mvebu/Kconfig
@@ -2,13 +2,6 @@
 
 if ARCH_MVEBU
 
-config ARCH_TEXT_BASE
-	hex
-	default 0x2000000 if ARCH_ARMADA_370
-	default 0x2000000 if ARCH_ARMADA_XP
-	default 0x2000000 if ARCH_DOVE
-	default 0x2000000 if ARCH_KIRKWOOD
-
 config ARCH_ARMADA_370
 	bool
 	select CPU_V7
diff --git a/arch/arm/mach-mxs/Kconfig b/arch/arm/mach-mxs/Kconfig
index c8ef2c62af..0219196794 100644
--- a/arch/arm/mach-mxs/Kconfig
+++ b/arch/arm/mach-mxs/Kconfig
@@ -2,15 +2,6 @@
 
 if ARCH_MXS
 
-config ARCH_TEXT_BASE
-	hex
-	default 0x41000000 if MACH_MX23EVK
-	default 0x42000000 if MACH_CHUMBY
-	default 0x42000000 if MACH_IMX233_OLINUXINO
-	default 0x47000000 if MACH_TX28
-	default 0x47000000 if MACH_MX28EVK
-	default 0x47000000 if MACH_CFA10036
-
 config ARCH_MXS_OF_SUPPORT
 	bool
 	select COMMON_CLK_OF_PROVIDER
diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index 6ddbb6e572..7b0eade65a 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -100,11 +100,6 @@ config BAREBOX_UPDATE_AM33XX_EMMC
 	help
 	  Say Y for barebox update eMMC handler.
 
-config ARCH_TEXT_BASE
-	hex
-	default 0x80e80000 if MACH_OMAP343xSDP
-	default 0x80e80000 if MACH_BEAGLE
-
 config AM33XX_NET_BOOT
 	bool "enable AM335x network boot"
 	select ENVIRONMENT_VARIABLES
diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
index 1421b9e257..901d4a9ae0 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -3,11 +3,6 @@
 menu "Rockchip Features"
 	depends on ARCH_ROCKCHIP
 
-config ARCH_TEXT_BASE
-	hex
-	default 0x68000000 if ARCH_RK3188
-	default 0x0
-
 config RK_TIMER
 	hex
 	default 1
diff --git a/arch/arm/mach-socfpga/Kconfig b/arch/arm/mach-socfpga/Kconfig
index 75f03d3f6a..a4d7177797 100644
--- a/arch/arm/mach-socfpga/Kconfig
+++ b/arch/arm/mach-socfpga/Kconfig
@@ -2,10 +2,6 @@
 
 if ARCH_SOCFPGA
 
-config ARCH_TEXT_BASE
-	hex
-	default 0x0
-
 config ARCH_SOCFPGA_XLOAD
 	bool
 	prompt "Build preloader image"
diff --git a/arch/arm/mach-tegra/Kconfig b/arch/arm/mach-tegra/Kconfig
index cc256f584a..3e25758353 100644
--- a/arch/arm/mach-tegra/Kconfig
+++ b/arch/arm/mach-tegra/Kconfig
@@ -2,10 +2,6 @@
 
 if ARCH_TEGRA
 
-config ARCH_TEXT_BASE
-	hex
-	default 0x0
-
 # ---------------------------------------------------------
 
 config ARCH_TEGRA_2x_SOC
diff --git a/arch/arm/mach-versatile/Kconfig b/arch/arm/mach-versatile/Kconfig
index 89f50c270e..c72673cbf0 100644
--- a/arch/arm/mach-versatile/Kconfig
+++ b/arch/arm/mach-versatile/Kconfig
@@ -2,9 +2,6 @@
 
 if ARCH_VERSATILE
 
-config ARCH_TEXT_BASE
-	default 0x02000000
-
 config MACH_VERSATILEPB
 	bool
 	default y
diff --git a/arch/arm/mach-vexpress/Kconfig b/arch/arm/mach-vexpress/Kconfig
index 1b89d0edf9..eb0520b8d4 100644
--- a/arch/arm/mach-vexpress/Kconfig
+++ b/arch/arm/mach-vexpress/Kconfig
@@ -2,10 +2,6 @@
 
 if ARCH_VEXPRESS
 
-config ARCH_TEXT_BASE
-	hex
-	default 0x0
-
 config MACH_VEXPRESS
 	bool "ARM Vexpress"
 
diff --git a/arch/arm/mach-zynq/Kconfig b/arch/arm/mach-zynq/Kconfig
index 2403c2edc3..27136a65fc 100644
--- a/arch/arm/mach-zynq/Kconfig
+++ b/arch/arm/mach-zynq/Kconfig
@@ -2,10 +2,6 @@
 
 if ARCH_ZYNQ
 
-config ARCH_TEXT_BASE
-	hex
-	default 0x0
-
 config ZYNQ_DEBUG_LL_UART_BASE
 	hex
 	default 0xe0001000 if MACH_ZEDBOARD
-- 
2.39.2



