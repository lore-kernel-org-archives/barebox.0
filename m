Delivery-date: Fri, 03 Mar 2023 10:29:23 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1j8-007Nvk-EG
	for lore@lore.pengutronix.de; Fri, 03 Mar 2023 10:29:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1j6-0003pM-Q2
	for lore@pengutronix.de; Fri, 03 Mar 2023 10:29:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=meKGPOKJYwuqHjMEvvt6oFmIptntjKvF/CGlrVPZduQ=; b=kf+/orQFBAeSXrostNKlUfHeqj
	3kVAA95ucMBM4nWn+Qy10ko3fOsng4dSZOmHHbGdPMDe0lezPiNzrbzHO5IQ+rNVWlHg7oObKhqDX
	zTizcet0uNoMrgFGcYw0+ZCz+YvOX9fEUh9oHd2Sm9S5LnsQz4zubjtDDgPxFCCmurv179/96JakN
	qPA7Mv+lzwGxKS8LnnadgIS1pgGI9wGI5FoeYo7k84Pf07ClAEClhkoK4xYTtMw9BTEyAShprpFEU
	Uhx9HndBL9mfshXw5u6Ccg/V4YXqEFb75Lm0BvSwVNdCzU2lDWXmRteVBdUo14SCqCufaeVndaN/t
	ZAl3OtEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1hm-005is4-Ud; Fri, 03 Mar 2023 09:27:59 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1bw-005eY2-EO
	for barebox@bombadil.infradead.org; Fri, 03 Mar 2023 09:21:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=meKGPOKJYwuqHjMEvvt6oFmIptntjKvF/CGlrVPZduQ=; b=fJU44+tjsf6GMUfvApqIOLCa15
	y6jZe8XInn87Jx0zFocYUBoI5dmFmxk9Zr30neEbyHdWMZs14U3ViQhOIsZEt6ZBssVha9aq6hsO3
	HH4JkAKNgAM+hZiRqSHatwPMKufYwv+C1sMBC4Y5gvYBZ3eQgzOf+Rs7/kx/ATGQzEerxlhvuvrZn
	GSCOamz3ehzf+sbP0tjoHxUrAU1BVLvkkixmy6WPDrefjXvhrSUBy8PN0zqdYgmuHOf8m+3/ks2Ur
	g4LGNmWITCOcmLeU55ZbcJCNf/RGaIlg6Jr86RZeIp8SMnoOwnlveibW0djNEUBp7iJ2RtZHkgWWs
	yWvNkZMw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1bs-0031Ov-1e
	for barebox@lists.infradead.org; Fri, 03 Mar 2023 09:21:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bk-0000IQ-07; Fri, 03 Mar 2023 10:21:44 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bj-001Wjw-CO; Fri, 03 Mar 2023 10:21:43 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bb-00F2jt-0b; Fri, 03 Mar 2023 10:21:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  3 Mar 2023 10:21:18 +0100
Message-Id: <20230303092131.3063587-38-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230303092131.3063587-1-s.hauer@pengutronix.de>
References: <20230303092131.3063587-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_092153_176429_A2DEA32C 
X-CRM114-Status: GOOD (  11.29  )
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
Subject: [PATCH 37/50] ARM: omap: Add support for multi-arch
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig                               | 18 +++++++++++++++---
 arch/arm/configs/am335x_mlo_defconfig          |  2 +-
 arch/arm/configs/am35xx_pfc200_xload_defconfig |  2 +-
 arch/arm/configs/archosg9_defconfig            |  2 +-
 arch/arm/configs/archosg9_xload_defconfig      |  2 +-
 .../omap3430_sdp3430_per_uart_defconfig        |  2 +-
 arch/arm/configs/omap3530_beagle_defconfig     |  2 +-
 .../configs/omap3530_beagle_per_uart_defconfig |  2 +-
 .../configs/omap3530_beagle_xload_defconfig    |  2 +-
 arch/arm/configs/omap3_evm_defconfig           |  2 +-
 arch/arm/configs/omap_defconfig                |  2 +-
 arch/arm/configs/panda_defconfig               |  2 +-
 arch/arm/configs/panda_xload_defconfig         |  2 +-
 .../phytec-phycard-omap3-xload_defconfig       |  2 +-
 .../arm/configs/phytec-phycard-omap3_defconfig |  2 +-
 .../phytec-phycard-omap4-xload_defconfig       |  2 +-
 .../arm/configs/phytec-phycard-omap4_defconfig |  2 +-
 ...phytec-phycore-omap4460-xload-mmc_defconfig |  2 +-
 ...hytec-phycore-omap4460-xload-nand_defconfig |  2 +-
 .../configs/phytec-phycore-omap4460_defconfig  |  2 +-
 20 files changed, 34 insertions(+), 22 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 44055456ce..7ac24ba1de 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -32,6 +32,11 @@ config ARCH_STM32
 	  Selected by both STM32 MCUs and MPUs to restrict driver
 	  visibility.
 
+config ARCH_OMAP
+	bool
+	select HAS_DEBUG_LL
+	select GPIOLIB
+
 choice
 	prompt "ARM system type"
 
@@ -140,10 +145,9 @@ config ARCH_NOMADIK
 	help
 	  Support for the Nomadik platform by ST-Ericsson
 
-config ARCH_OMAP
+config ARCH_OMAP_SINGLE
 	bool "TI OMAP"
-	select HAS_DEBUG_LL
-	select GPIOLIB
+	select ARCH_OMAP
 
 config ARCH_PXA
 	bool "Intel/Marvell PXA based"
@@ -271,6 +275,14 @@ config ARCH_IMX
 	select CPU_SUPPORTS_32BIT_KERNEL
 	select CPU_SUPPORTS_64BIT_KERNEL
 
+config ARCH_OMAP_MULTI
+	bool "TI OMAP"
+	depends on ARCH_MULTIARCH
+	select OMAP_MULTI_BOARDS
+	select ARCH_OMAP
+	select HAS_DEBUG_LL
+	select GPIOLIB
+
 config ARCH_ROCKCHIP
 	bool "Rockchip RX3xxx"
 	depends on ARCH_MULTIARCH
diff --git a/arch/arm/configs/am335x_mlo_defconfig b/arch/arm/configs/am335x_mlo_defconfig
index 57602ba309..f2b722056b 100644
--- a/arch/arm/configs/am335x_mlo_defconfig
+++ b/arch/arm/configs/am335x_mlo_defconfig
@@ -1,4 +1,4 @@
-CONFIG_ARCH_OMAP=y
+CONFIG_ARCH_OMAP_SINGLE=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x1b400
 CONFIG_OMAP_BUILD_IFT=y
 CONFIG_OMAP_SERIALBOOT=y
diff --git a/arch/arm/configs/am35xx_pfc200_xload_defconfig b/arch/arm/configs/am35xx_pfc200_xload_defconfig
index 710e39ff61..4bc119f75b 100644
--- a/arch/arm/configs/am35xx_pfc200_xload_defconfig
+++ b/arch/arm/configs/am35xx_pfc200_xload_defconfig
@@ -1,4 +1,4 @@
-CONFIG_ARCH_OMAP=y
+CONFIG_ARCH_OMAP_SINGLE=y
 CONFIG_OMAP_BUILD_IFT=y
 CONFIG_OMAP_MULTI_BOARDS=y
 CONFIG_MACH_WAGO_PFC_AM35XX=y
diff --git a/arch/arm/configs/archosg9_defconfig b/arch/arm/configs/archosg9_defconfig
index dd509fca72..288d4bda52 100644
--- a/arch/arm/configs/archosg9_defconfig
+++ b/arch/arm/configs/archosg9_defconfig
@@ -1,5 +1,5 @@
 CONFIG_TEXT_BASE=0x8f000000
-CONFIG_ARCH_OMAP=y
+CONFIG_ARCH_OMAP_SINGLE=y
 CONFIG_OMAP4_USBBOOT=y
 CONFIG_MACH_ARCHOSG9=y
 CONFIG_THUMB2_BAREBOX=y
diff --git a/arch/arm/configs/archosg9_xload_defconfig b/arch/arm/configs/archosg9_xload_defconfig
index b6a0475d40..f90757d954 100644
--- a/arch/arm/configs/archosg9_xload_defconfig
+++ b/arch/arm/configs/archosg9_xload_defconfig
@@ -1,5 +1,5 @@
 CONFIG_TEXT_BASE=0x40300000
-CONFIG_ARCH_OMAP=y
+CONFIG_ARCH_OMAP_SINGLE=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0xC000
 # CONFIG_OMAP_GPMC is not set
 CONFIG_OMAP_BUILD_IFT=y
diff --git a/arch/arm/configs/omap3430_sdp3430_per_uart_defconfig b/arch/arm/configs/omap3430_sdp3430_per_uart_defconfig
index 646a392b6b..b41176342f 100644
--- a/arch/arm/configs/omap3430_sdp3430_per_uart_defconfig
+++ b/arch/arm/configs/omap3430_sdp3430_per_uart_defconfig
@@ -1,5 +1,5 @@
 CONFIG_TEXT_BASE=0x40200000
-CONFIG_ARCH_OMAP=y
+CONFIG_ARCH_OMAP_SINGLE=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_PROMPT="X-load 343x> "
 CONFIG_SHELL_SIMPLE=y
diff --git a/arch/arm/configs/omap3530_beagle_defconfig b/arch/arm/configs/omap3530_beagle_defconfig
index e959bdfde3..d1f5669cb3 100644
--- a/arch/arm/configs/omap3530_beagle_defconfig
+++ b/arch/arm/configs/omap3530_beagle_defconfig
@@ -1,4 +1,4 @@
-CONFIG_ARCH_OMAP=y
+CONFIG_ARCH_OMAP_SINGLE=y
 CONFIG_OMAP_MULTI_BOARDS=y
 CONFIG_MACH_BEAGLE=y
 CONFIG_THUMB2_BAREBOX=y
diff --git a/arch/arm/configs/omap3530_beagle_per_uart_defconfig b/arch/arm/configs/omap3530_beagle_per_uart_defconfig
index 2439bd955e..3a38011f3d 100644
--- a/arch/arm/configs/omap3530_beagle_per_uart_defconfig
+++ b/arch/arm/configs/omap3530_beagle_per_uart_defconfig
@@ -1,5 +1,5 @@
 CONFIG_TEXT_BASE=0x40200000
-CONFIG_ARCH_OMAP=y
+CONFIG_ARCH_OMAP_SINGLE=y
 CONFIG_PROMPT="X-load Beagle>"
 CONFIG_SHELL_SIMPLE=y
 # CONFIG_ERRNO_MESSAGES is not set
diff --git a/arch/arm/configs/omap3530_beagle_xload_defconfig b/arch/arm/configs/omap3530_beagle_xload_defconfig
index 0a47479f18..15984e129e 100644
--- a/arch/arm/configs/omap3530_beagle_xload_defconfig
+++ b/arch/arm/configs/omap3530_beagle_xload_defconfig
@@ -1,4 +1,4 @@
-CONFIG_ARCH_OMAP=y
+CONFIG_ARCH_OMAP_SINGLE=y
 CONFIG_OMAP_BUILD_IFT=y
 CONFIG_OMAP3_USBBOOT=y
 CONFIG_OMAP_MULTI_BOARDS=y
diff --git a/arch/arm/configs/omap3_evm_defconfig b/arch/arm/configs/omap3_evm_defconfig
index 8c5df029a7..22ac4b66ec 100644
--- a/arch/arm/configs/omap3_evm_defconfig
+++ b/arch/arm/configs/omap3_evm_defconfig
@@ -1,5 +1,5 @@
 CONFIG_TEXT_BASE=0x40200000
-CONFIG_ARCH_OMAP=y
+CONFIG_ARCH_OMAP_SINGLE=y
 CONFIG_MACH_OMAP3EVM=y
 CONFIG_AEABI=y
 CONFIG_PROMPT="OMAP3_EVM> "
diff --git a/arch/arm/configs/omap_defconfig b/arch/arm/configs/omap_defconfig
index 433d9bdd7d..13b630a978 100644
--- a/arch/arm/configs/omap_defconfig
+++ b/arch/arm/configs/omap_defconfig
@@ -1,4 +1,4 @@
-CONFIG_ARCH_OMAP=y
+CONFIG_ARCH_OMAP_SINGLE=y
 CONFIG_BAREBOX_UPDATE_AM33XX_SPI_NOR_MLO=y
 CONFIG_BAREBOX_UPDATE_AM33XX_NAND=y
 CONFIG_BAREBOX_UPDATE_AM33XX_EMMC=y
diff --git a/arch/arm/configs/panda_defconfig b/arch/arm/configs/panda_defconfig
index b199e7990b..97118fb837 100644
--- a/arch/arm/configs/panda_defconfig
+++ b/arch/arm/configs/panda_defconfig
@@ -1,5 +1,5 @@
 CONFIG_TEXT_BASE=0x8f000000
-CONFIG_ARCH_OMAP=y
+CONFIG_ARCH_OMAP_SINGLE=y
 CONFIG_MACH_PANDA=y
 CONFIG_THUMB2_BAREBOX=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
diff --git a/arch/arm/configs/panda_xload_defconfig b/arch/arm/configs/panda_xload_defconfig
index bc33882c85..9203734dd6 100644
--- a/arch/arm/configs/panda_xload_defconfig
+++ b/arch/arm/configs/panda_xload_defconfig
@@ -1,5 +1,5 @@
 CONFIG_TEXT_BASE=0x40300000
-CONFIG_ARCH_OMAP=y
+CONFIG_ARCH_OMAP_SINGLE=y
 # CONFIG_OMAP_GPMC is not set
 CONFIG_OMAP_BUILD_IFT=y
 CONFIG_MACH_PANDA=y
diff --git a/arch/arm/configs/phytec-phycard-omap3-xload_defconfig b/arch/arm/configs/phytec-phycard-omap3-xload_defconfig
index 26a539f7f7..048f7c0bde 100644
--- a/arch/arm/configs/phytec-phycard-omap3-xload_defconfig
+++ b/arch/arm/configs/phytec-phycard-omap3-xload_defconfig
@@ -1,5 +1,5 @@
 CONFIG_TEXT_BASE=0x40200000
-CONFIG_ARCH_OMAP=y
+CONFIG_ARCH_OMAP_SINGLE=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x0000f000
 CONFIG_OMAP_BUILD_IFT=y
 CONFIG_MACH_PCAAL1=y
diff --git a/arch/arm/configs/phytec-phycard-omap3_defconfig b/arch/arm/configs/phytec-phycard-omap3_defconfig
index a9abf12a13..fbcf5c6390 100644
--- a/arch/arm/configs/phytec-phycard-omap3_defconfig
+++ b/arch/arm/configs/phytec-phycard-omap3_defconfig
@@ -1,5 +1,5 @@
 CONFIG_TEXT_BASE=0x85000000
-CONFIG_ARCH_OMAP=y
+CONFIG_ARCH_OMAP_SINGLE=y
 CONFIG_MACH_PCAAL1=y
 CONFIG_AEABI=y
 CONFIG_MALLOC_SIZE=0x1000000
diff --git a/arch/arm/configs/phytec-phycard-omap4-xload_defconfig b/arch/arm/configs/phytec-phycard-omap4-xload_defconfig
index a1859140db..1761a15b72 100644
--- a/arch/arm/configs/phytec-phycard-omap4-xload_defconfig
+++ b/arch/arm/configs/phytec-phycard-omap4-xload_defconfig
@@ -1,5 +1,5 @@
 CONFIG_TEXT_BASE=0x40300000
-CONFIG_ARCH_OMAP=y
+CONFIG_ARCH_OMAP_SINGLE=y
 CONFIG_OMAP_BUILD_IFT=y
 CONFIG_MACH_PCAAXL2=y
 CONFIG_THUMB2_BAREBOX=y
diff --git a/arch/arm/configs/phytec-phycard-omap4_defconfig b/arch/arm/configs/phytec-phycard-omap4_defconfig
index a0bb846a6d..ae3cfb751d 100644
--- a/arch/arm/configs/phytec-phycard-omap4_defconfig
+++ b/arch/arm/configs/phytec-phycard-omap4_defconfig
@@ -1,5 +1,5 @@
 CONFIG_TEXT_BASE=0x8f000000
-CONFIG_ARCH_OMAP=y
+CONFIG_ARCH_OMAP_SINGLE=y
 CONFIG_MACH_PCAAXL2=y
 CONFIG_AEABI=y
 CONFIG_ARM_UNWIND=y
diff --git a/arch/arm/configs/phytec-phycore-omap4460-xload-mmc_defconfig b/arch/arm/configs/phytec-phycore-omap4460-xload-mmc_defconfig
index 19365a6fcd..8ffdd90789 100644
--- a/arch/arm/configs/phytec-phycore-omap4460-xload-mmc_defconfig
+++ b/arch/arm/configs/phytec-phycore-omap4460-xload-mmc_defconfig
@@ -1,5 +1,5 @@
 CONFIG_TEXT_BASE=0x40300000
-CONFIG_ARCH_OMAP=y
+CONFIG_ARCH_OMAP_SINGLE=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0xC000
 CONFIG_OMAP_BUILD_IFT=y
 CONFIG_MACH_PCM049=y
diff --git a/arch/arm/configs/phytec-phycore-omap4460-xload-nand_defconfig b/arch/arm/configs/phytec-phycore-omap4460-xload-nand_defconfig
index 14cab44b5d..66ee694542 100644
--- a/arch/arm/configs/phytec-phycore-omap4460-xload-nand_defconfig
+++ b/arch/arm/configs/phytec-phycore-omap4460-xload-nand_defconfig
@@ -1,5 +1,5 @@
 CONFIG_TEXT_BASE=0x40300000
-CONFIG_ARCH_OMAP=y
+CONFIG_ARCH_OMAP_SINGLE=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0xC000
 CONFIG_OMAP_BUILD_IFT=y
 CONFIG_MACH_PCM049=y
diff --git a/arch/arm/configs/phytec-phycore-omap4460_defconfig b/arch/arm/configs/phytec-phycore-omap4460_defconfig
index 7d5369cb23..a2362a0fce 100644
--- a/arch/arm/configs/phytec-phycore-omap4460_defconfig
+++ b/arch/arm/configs/phytec-phycore-omap4460_defconfig
@@ -1,5 +1,5 @@
 CONFIG_TEXT_BASE=0x8f000000
-CONFIG_ARCH_OMAP=y
+CONFIG_ARCH_OMAP_SINGLE=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x80000
 CONFIG_MACH_PCM049=y
 CONFIG_AEABI=y
-- 
2.30.2



