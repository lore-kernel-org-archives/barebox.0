Delivery-date: Fri, 03 Mar 2023 10:31:34 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1lF-007O5V-31
	for lore@lore.pengutronix.de; Fri, 03 Mar 2023 10:31:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1lD-0004yS-Lq
	for lore@pengutronix.de; Fri, 03 Mar 2023 10:31:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cYIuoNK2CjfUsb8TOt3PqtD0kfujIj9njuml7/2Tt2A=; b=T5/BnT42j6BwXJiqUT/BKLHwaE
	OmZCGZDMnuhZDfbh0GNWnQHwcS/oXhgsTZiXNa5zE6X0217bDaascm/zoQrYLimXmqQs9aWwHLtAp
	Ku/Nld88JzOTBpVBFvh5LCYGnpvY88Q4TfsbsULc6ZL9qXTy7LYWw/lCoSjgUTNhkWk8OjTpuBTPl
	bDU59x/5RlgZjsS/7ImK6xTXOs9z0Fxk2DcEhh0TC2JiZvguEW7OGrCgCX8j8pQKjqiIhdKIC23k/
	QNKi7lp6EFgA6CPnPSnYRlWG6nQbwiFkhYNwosptaymcYvuwVASyYWsogK13lKuNNRxtYex+2K0Iq
	XIJh34tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1ju-005kQl-BS; Fri, 03 Mar 2023 09:30:11 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1cD-005eje-W6
	for barebox@bombadil.infradead.org; Fri, 03 Mar 2023 09:22:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=cYIuoNK2CjfUsb8TOt3PqtD0kfujIj9njuml7/2Tt2A=; b=GkckjPoj2zejmXJf/zk3sRU8Dp
	HjZbAaQbbyK0sCHtGQ2hLRy8xaFNi9+Uqt7D8Exdes6ufGzrNwZ+ujzVRISvaFDdOy+1g8CaoC7PS
	cV07NFRZnyVAXM8/kRFc3cgYjNYVf7H7Wn7mwIQUV3Yv8H80eCUAQbBvk9ow+gTMi5ecdBuL6F2jb
	pMPz+kbVrib529ecONZTttmlwKlfboOdkUfgiqTbX0CmVqAyWnOKHuHRMYD3eM9xcadl3R0viUQt3
	RiolgBjyOZ5ScJDSbQs2RNoyK4CoqqHhslA3GjndIcbPWbc6l3PXwf5UeDgkWPjmoqd01FWTJywDi
	xfNA48wA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pY1bs-00FdLF-1M
	for barebox@lists.infradead.org;
	Fri, 03 Mar 2023 09:22:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bj-0000II-Nc; Fri, 03 Mar 2023 10:21:43 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bj-001Wjg-0v; Fri, 03 Mar 2023 10:21:43 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1ba-00F2jd-Vi; Fri, 03 Mar 2023 10:21:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  3 Mar 2023 10:21:17 +0100
Message-Id: <20230303092131.3063587-37-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230303092131.3063587-1-s.hauer@pengutronix.de>
References: <20230303092131.3063587-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_092153_280327_72F70ECC 
X-CRM114-Status: GOOD (  13.81  )
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
Subject: [PATCH 36/50] ARM: add multi-arch support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This allows to build barebox for multiple arch/arm/mach-* for
architectures that allow it.

To get there we convert machine-y to a list. Architectures that
want to support multi-arch must make sure that all boards support
multi PBL support (i.e. select HAVE_PBL_MULTI_IMAGES). Also they
must make sure that all initcalls can gracefully be executed on
other SoCs. Two architectures that fulfil these requirements are
added right from the start: i.MX and Rockchip.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig                              | 53 ++++++++++---------
 arch/arm/Makefile                             | 48 ++++++++---------
 arch/arm/configs/animeo_ip_defconfig          |  1 +
 arch/arm/configs/at91_multi_defconfig         |  1 +
 arch/arm/configs/at91rm9200ek_defconfig       |  3 +-
 arch/arm/configs/at91sam9260ek_defconfig      |  1 +
 .../configs/at91sam9261ek_bootstrap_defconfig |  1 +
 arch/arm/configs/at91sam9261ek_defconfig      |  1 +
 .../at91sam9261ek_first_stage_defconfig       |  1 +
 arch/arm/configs/at91sam9g10ek_defconfig      |  1 +
 arch/arm/configs/at91sam9g20ek_defconfig      |  1 +
 arch/arm/configs/at91sam9m10g45ek_defconfig   |  1 +
 arch/arm/configs/at91sam9m10ihd_defconfig     |  1 +
 arch/arm/configs/at91sam9n12ek_defconfig      |  1 +
 arch/arm/configs/dss11_defconfig              |  1 +
 arch/arm/configs/haba_knx_lite_defconfig      |  1 +
 arch/arm/configs/pm9261_defconfig             |  1 +
 arch/arm/configs/pm9263_defconfig             |  1 +
 arch/arm/configs/pm9g45_defconfig             |  1 +
 arch/arm/configs/qil_a9260_defconfig          |  1 +
 arch/arm/configs/qil_a9g20_defconfig          |  1 +
 arch/arm/configs/sama5d3xek_defconfig         |  1 +
 arch/arm/configs/sama5d4_xplained_defconfig   |  1 +
 arch/arm/configs/sama5d4ek_defconfig          |  1 +
 arch/arm/configs/telit_evk_pro3_defconfig     |  1 +
 arch/arm/configs/tny_a9260_defconfig          |  1 +
 .../arm/configs/tny_a9263_bootstrap_defconfig |  1 +
 arch/arm/configs/tny_a9263_defconfig          |  1 +
 arch/arm/configs/tny_a9g20_defconfig          |  1 +
 arch/arm/configs/usb_a9260_defconfig          |  1 +
 .../arm/configs/usb_a9263_bootstrap_defconfig |  1 +
 arch/arm/configs/usb_a9263_defconfig          |  1 +
 arch/arm/configs/usb_a9g20_defconfig          |  1 +
 33 files changed, 85 insertions(+), 49 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index f6dab17474..44055456ce 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -35,6 +35,9 @@ config ARCH_STM32
 choice
 	prompt "ARM system type"
 
+config ARCH_MULTIARCH
+	bool "Allow multiple archs to be selected"
+
 config ARCH_AT91
 	bool "Atmel AT91"
 	select GPIOLIB
@@ -94,18 +97,6 @@ config ARCH_EP93XX
 	select CPU_ARM920T
 	select GENERIC_GPIO
 
-config ARCH_IMX
-	bool "Freescale iMX-based"
-	select GPIOLIB
-	select COMMON_CLK
-	select CLKDEV_LOOKUP
-	select WATCHDOG_IMX_RESET_SOURCE
-	select HAS_DEBUG_LL
-	select HAVE_PBL_MULTI_IMAGES
-	select RELOCATABLE
-	select CPU_SUPPORTS_32BIT_KERNEL
-	select CPU_SUPPORTS_64BIT_KERNEL
-
 config ARCH_LAYERSCAPE
 	bool "NXP Layerscape based"
 	select GPIOLIB
@@ -158,18 +149,6 @@ config ARCH_PXA
 	bool "Intel/Marvell PXA based"
 	select GENERIC_GPIO
 
-config ARCH_ROCKCHIP
-	bool "Rockchip RX3xxx"
-	select COMMON_CLK
-	select CLKDEV_LOOKUP
-	select COMMON_CLK_OF_PROVIDER
-	select GPIOLIB
-	select PINCTRL
-	select PINCTRL_ROCKCHIP
-	select OFTREE
-	select HAVE_PBL_MULTI_IMAGES
-	select HAS_DEBUG_LL
-
 config ARCH_SOCFPGA
 	bool "Altera SOCFPGA"
 	select HAS_DEBUG_LL
@@ -279,6 +258,32 @@ config ARCH_ARM64_VIRT
 
 endchoice
 
+config ARCH_IMX
+	bool "Freescale iMX-based"
+	depends on ARCH_MULTIARCH
+	select GPIOLIB
+	select COMMON_CLK
+	select CLKDEV_LOOKUP
+	select WATCHDOG_IMX_RESET_SOURCE
+	select HAS_DEBUG_LL
+	select HAVE_PBL_MULTI_IMAGES
+	select RELOCATABLE
+	select CPU_SUPPORTS_32BIT_KERNEL
+	select CPU_SUPPORTS_64BIT_KERNEL
+
+config ARCH_ROCKCHIP
+	bool "Rockchip RX3xxx"
+	depends on ARCH_MULTIARCH
+	select COMMON_CLK
+	select CLKDEV_LOOKUP
+	select COMMON_CLK_OF_PROVIDER
+	select GPIOLIB
+	select PINCTRL
+	select PINCTRL_ROCKCHIP
+	select OFTREE
+	select HAVE_PBL_MULTI_IMAGES
+	select HAS_DEBUG_LL
+
 source "arch/arm/cpu/Kconfig"
 source "arch/arm/mach-at91/Kconfig"
 source "arch/arm/mach-bcm283x/Kconfig"
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index da65dae548..9bd7db6ba9 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -85,29 +85,29 @@ endif
 
 # Machine directory name.  This list is sorted alphanumerically
 # by CONFIG_* macro name.
-machine-$(CONFIG_ARCH_AT91)		:= at91
-machine-$(CONFIG_ARCH_BCM283X)		:= bcm283x
-machine-$(CONFIG_ARCH_CLPS711X)		:= clps711x
-machine-$(CONFIG_ARCH_DAVINCI)		:= davinci
-machine-$(CONFIG_ARCH_DIGIC)		:= digic
-machine-$(CONFIG_ARCH_EP93XX)		:= ep93xx
-machine-$(CONFIG_ARCH_IMX)		:= imx
-machine-$(CONFIG_ARCH_LAYERSCAPE)	:= layerscape
-machine-$(CONFIG_ARCH_MXS)		:= mxs
-machine-$(CONFIG_ARCH_MVEBU)		:= mvebu
-machine-$(CONFIG_ARCH_NOMADIK)		:= nomadik
-machine-$(CONFIG_ARCH_OMAP)		:= omap
-machine-$(CONFIG_ARCH_PXA)		:= pxa
-machine-$(CONFIG_ARCH_ROCKCHIP)		:= rockchip
-machine-$(CONFIG_ARCH_SAMSUNG)		:= samsung
-machine-$(CONFIG_ARCH_SOCFPGA)		:= socfpga
-machine-$(CONFIG_ARCH_STM32MP)		:= stm32mp
-machine-$(CONFIG_ARCH_VERSATILE)	:= versatile
-machine-$(CONFIG_ARCH_VEXPRESS)		:= vexpress
-machine-$(CONFIG_ARCH_TEGRA)		:= tegra
-machine-$(CONFIG_ARCH_UEMD)		:= uemd
-machine-$(CONFIG_ARCH_ZYNQ)		:= zynq
-machine-$(CONFIG_ARCH_ZYNQMP)		:= zynqmp
+machine-$(CONFIG_ARCH_AT91)		+= at91
+machine-$(CONFIG_ARCH_BCM283X)		+= bcm283x
+machine-$(CONFIG_ARCH_CLPS711X)		+= clps711x
+machine-$(CONFIG_ARCH_DAVINCI)		+= davinci
+machine-$(CONFIG_ARCH_DIGIC)		+= digic
+machine-$(CONFIG_ARCH_EP93XX)		+= ep93xx
+machine-$(CONFIG_ARCH_IMX)		+= imx
+machine-$(CONFIG_ARCH_LAYERSCAPE)	+= layerscape
+machine-$(CONFIG_ARCH_MXS)		+= mxs
+machine-$(CONFIG_ARCH_MVEBU)		+= mvebu
+machine-$(CONFIG_ARCH_NOMADIK)		+= nomadik
+machine-$(CONFIG_ARCH_OMAP)		+= omap
+machine-$(CONFIG_ARCH_PXA)		+= pxa
+machine-$(CONFIG_ARCH_ROCKCHIP)		+= rockchip
+machine-$(CONFIG_ARCH_SAMSUNG)		+= samsung
+machine-$(CONFIG_ARCH_SOCFPGA)		+= socfpga
+machine-$(CONFIG_ARCH_STM32MP)		+= stm32mp
+machine-$(CONFIG_ARCH_VERSATILE)	+= versatile
+machine-$(CONFIG_ARCH_VEXPRESS)		+= vexpress
+machine-$(CONFIG_ARCH_TEGRA)		+= tegra
+machine-$(CONFIG_ARCH_UEMD)		+= uemd
+machine-$(CONFIG_ARCH_ZYNQ)		+= zynq
+machine-$(CONFIG_ARCH_ZYNQMP)		+= zynqmp
 
 TEXT_BASE = $(CONFIG_TEXT_BASE)
 
@@ -184,7 +184,7 @@ maketools:
 PHONY += maketools
 
 ifneq ($(machine-y),)
-MACH := arch/arm/mach-$(machine-y)/
+MACH := $(patsubst %,arch/arm/mach-%/,$(machine-y))
 else
 MACH :=
 endif
diff --git a/arch/arm/configs/animeo_ip_defconfig b/arch/arm/configs/animeo_ip_defconfig
index 96f73eba2b..9005d65e22 100644
--- a/arch/arm/configs/animeo_ip_defconfig
+++ b/arch/arm/configs/animeo_ip_defconfig
@@ -1,3 +1,4 @@
+CONFIG_ARCH_AT91=y
 CONFIG_ARCH_AT91SAM9260=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_AEABI=y
diff --git a/arch/arm/configs/at91_multi_defconfig b/arch/arm/configs/at91_multi_defconfig
index 31427b1451..6cbe013162 100644
--- a/arch/arm/configs/at91_multi_defconfig
+++ b/arch/arm/configs/at91_multi_defconfig
@@ -1,3 +1,4 @@
+CONFIG_ARCH_AT91=y
 CONFIG_AT91_MULTI_BOARDS=y
 CONFIG_MACH_SKOV_ARM9CPU=y
 CONFIG_MACH_AT91SAM9263EK=y
diff --git a/arch/arm/configs/at91rm9200ek_defconfig b/arch/arm/configs/at91rm9200ek_defconfig
index 3e8d263a24..fa6130e8ee 100644
--- a/arch/arm/configs/at91rm9200ek_defconfig
+++ b/arch/arm/configs/at91rm9200ek_defconfig
@@ -1,6 +1,7 @@
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
+CONFIG_ARCH_AT91=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_MMU=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
 CONFIG_PROMPT="9200-EK:"
diff --git a/arch/arm/configs/at91sam9260ek_defconfig b/arch/arm/configs/at91sam9260ek_defconfig
index 3cc92d8fd1..e39be7953a 100644
--- a/arch/arm/configs/at91sam9260ek_defconfig
+++ b/arch/arm/configs/at91sam9260ek_defconfig
@@ -1,3 +1,4 @@
+CONFIG_ARCH_AT91=y
 CONFIG_ARCH_AT91SAM9260=y
 CONFIG_MACH_AT91SAM9260EK=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
diff --git a/arch/arm/configs/at91sam9261ek_bootstrap_defconfig b/arch/arm/configs/at91sam9261ek_bootstrap_defconfig
index 3de1d78c6f..61ead6282b 100644
--- a/arch/arm/configs/at91sam9261ek_bootstrap_defconfig
+++ b/arch/arm/configs/at91sam9261ek_bootstrap_defconfig
@@ -1,3 +1,4 @@
+CONFIG_ARCH_AT91=y
 CONFIG_ARCH_AT91SAM9261=y
 CONFIG_AT91_BOOTSTRAP=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x27000
diff --git a/arch/arm/configs/at91sam9261ek_defconfig b/arch/arm/configs/at91sam9261ek_defconfig
index d6f547aae5..430eca553c 100644
--- a/arch/arm/configs/at91sam9261ek_defconfig
+++ b/arch/arm/configs/at91sam9261ek_defconfig
@@ -1,3 +1,4 @@
+CONFIG_ARCH_AT91=y
 CONFIG_ARCH_AT91SAM9261=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_AEABI=y
diff --git a/arch/arm/configs/at91sam9261ek_first_stage_defconfig b/arch/arm/configs/at91sam9261ek_first_stage_defconfig
index e4c9f1d2c9..b05cff14e1 100644
--- a/arch/arm/configs/at91sam9261ek_first_stage_defconfig
+++ b/arch/arm/configs/at91sam9261ek_first_stage_defconfig
@@ -1,3 +1,4 @@
+CONFIG_ARCH_AT91=y
 CONFIG_ARCH_AT91SAM9261=y
 CONFIG_AT91_LOAD_BAREBOX_SRAM=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x27000
diff --git a/arch/arm/configs/at91sam9g10ek_defconfig b/arch/arm/configs/at91sam9g10ek_defconfig
index 17713cdb82..3db3993419 100644
--- a/arch/arm/configs/at91sam9g10ek_defconfig
+++ b/arch/arm/configs/at91sam9g10ek_defconfig
@@ -1,3 +1,4 @@
+CONFIG_ARCH_AT91=y
 CONFIG_ARCH_AT91SAM9G10=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_AEABI=y
diff --git a/arch/arm/configs/at91sam9g20ek_defconfig b/arch/arm/configs/at91sam9g20ek_defconfig
index 6791be2d09..70f42078d9 100644
--- a/arch/arm/configs/at91sam9g20ek_defconfig
+++ b/arch/arm/configs/at91sam9g20ek_defconfig
@@ -1,3 +1,4 @@
+CONFIG_ARCH_AT91=y
 CONFIG_ARCH_AT91SAM9G20=y
 CONFIG_AT91_HAVE_2MMC=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
diff --git a/arch/arm/configs/at91sam9m10g45ek_defconfig b/arch/arm/configs/at91sam9m10g45ek_defconfig
index c38df8fa81..cf473ff488 100644
--- a/arch/arm/configs/at91sam9m10g45ek_defconfig
+++ b/arch/arm/configs/at91sam9m10g45ek_defconfig
@@ -1,3 +1,4 @@
+CONFIG_ARCH_AT91=y
 CONFIG_ARCH_AT91SAM9G45=y
 CONFIG_MACH_AT91SAM9M10G45EK=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
diff --git a/arch/arm/configs/at91sam9m10ihd_defconfig b/arch/arm/configs/at91sam9m10ihd_defconfig
index 490472f889..9507e36223 100644
--- a/arch/arm/configs/at91sam9m10ihd_defconfig
+++ b/arch/arm/configs/at91sam9m10ihd_defconfig
@@ -1,3 +1,4 @@
+CONFIG_ARCH_AT91=y
 CONFIG_ARCH_AT91SAM9G45=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_AEABI=y
diff --git a/arch/arm/configs/at91sam9n12ek_defconfig b/arch/arm/configs/at91sam9n12ek_defconfig
index ce97ad62dc..3b58ac1101 100644
--- a/arch/arm/configs/at91sam9n12ek_defconfig
+++ b/arch/arm/configs/at91sam9n12ek_defconfig
@@ -1,4 +1,5 @@
 CONFIG_TEXT_BASE=0x26f00000
+CONFIG_ARCH_AT91=y
 CONFIG_ARCH_AT91SAM9N12=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_AEABI=y
diff --git a/arch/arm/configs/dss11_defconfig b/arch/arm/configs/dss11_defconfig
index 3da42205d1..e057e7d6a9 100644
--- a/arch/arm/configs/dss11_defconfig
+++ b/arch/arm/configs/dss11_defconfig
@@ -1,3 +1,4 @@
+CONFIG_ARCH_AT91=y
 CONFIG_ARCH_AT91SAM9G20=y
 CONFIG_MACH_DSS11=y
 CONFIG_MTD_NAND_ATMEL_BUSWIDTH_16=y
diff --git a/arch/arm/configs/haba_knx_lite_defconfig b/arch/arm/configs/haba_knx_lite_defconfig
index 233644f24a..7222fd312e 100644
--- a/arch/arm/configs/haba_knx_lite_defconfig
+++ b/arch/arm/configs/haba_knx_lite_defconfig
@@ -1,4 +1,5 @@
 CONFIG_TEXT_BASE=0x27f00000
+CONFIG_ARCH_AT91=y
 CONFIG_ARCH_AT91SAM9G20=y
 CONFIG_MACH_HABA_KNX_LITE=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
diff --git a/arch/arm/configs/pm9261_defconfig b/arch/arm/configs/pm9261_defconfig
index 61595ed506..b52d9cc90c 100644
--- a/arch/arm/configs/pm9261_defconfig
+++ b/arch/arm/configs/pm9261_defconfig
@@ -1,3 +1,4 @@
+CONFIG_ARCH_AT91=y
 CONFIG_ARCH_AT91SAM9261=y
 CONFIG_MACH_PM9261=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
diff --git a/arch/arm/configs/pm9263_defconfig b/arch/arm/configs/pm9263_defconfig
index b0eaf9f3e0..e20317a22c 100644
--- a/arch/arm/configs/pm9263_defconfig
+++ b/arch/arm/configs/pm9263_defconfig
@@ -1,3 +1,4 @@
+CONFIG_ARCH_AT91=y
 CONFIG_ARCH_AT91SAM9263=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_GLOB=y
diff --git a/arch/arm/configs/pm9g45_defconfig b/arch/arm/configs/pm9g45_defconfig
index c63a1c070b..90cd27d7f6 100644
--- a/arch/arm/configs/pm9g45_defconfig
+++ b/arch/arm/configs/pm9g45_defconfig
@@ -1,3 +1,4 @@
+CONFIG_ARCH_AT91=y
 CONFIG_ARCH_AT91SAM9G45=y
 CONFIG_MACH_PM9G45=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
diff --git a/arch/arm/configs/qil_a9260_defconfig b/arch/arm/configs/qil_a9260_defconfig
index 3f5eedb449..45bedb98b6 100644
--- a/arch/arm/configs/qil_a9260_defconfig
+++ b/arch/arm/configs/qil_a9260_defconfig
@@ -1,3 +1,4 @@
+CONFIG_ARCH_AT91=y
 CONFIG_ARCH_AT91SAM9260=y
 CONFIG_MACH_QIL_A9260=y
 CONFIG_CALAO_MB_QIL_A9260=y
diff --git a/arch/arm/configs/qil_a9g20_defconfig b/arch/arm/configs/qil_a9g20_defconfig
index 5162ecab62..b42ba2f468 100644
--- a/arch/arm/configs/qil_a9g20_defconfig
+++ b/arch/arm/configs/qil_a9g20_defconfig
@@ -1,3 +1,4 @@
+CONFIG_ARCH_AT91=y
 CONFIG_ARCH_AT91SAM9G20=y
 CONFIG_MACH_QIL_A9G20=y
 CONFIG_CALAO_MB_QIL_A9260=y
diff --git a/arch/arm/configs/sama5d3xek_defconfig b/arch/arm/configs/sama5d3xek_defconfig
index 54784cc7ad..5a9f701066 100644
--- a/arch/arm/configs/sama5d3xek_defconfig
+++ b/arch/arm/configs/sama5d3xek_defconfig
@@ -1,3 +1,4 @@
+CONFIG_ARCH_AT91=y
 CONFIG_TEXT_BASE=0x26f00000
 CONFIG_ARCH_SAMA5D3=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x60000
diff --git a/arch/arm/configs/sama5d4_xplained_defconfig b/arch/arm/configs/sama5d4_xplained_defconfig
index 2f232eeac7..4d19a07b34 100644
--- a/arch/arm/configs/sama5d4_xplained_defconfig
+++ b/arch/arm/configs/sama5d4_xplained_defconfig
@@ -1,3 +1,4 @@
+CONFIG_ARCH_AT91=y
 CONFIG_TEXT_BASE=0x26f00000
 CONFIG_ARCH_SAMA5D4=y
 CONFIG_MACH_SAMA5D4_XPLAINED=y
diff --git a/arch/arm/configs/sama5d4ek_defconfig b/arch/arm/configs/sama5d4ek_defconfig
index 04f080af0a..02cb12f90e 100644
--- a/arch/arm/configs/sama5d4ek_defconfig
+++ b/arch/arm/configs/sama5d4ek_defconfig
@@ -1,3 +1,4 @@
+CONFIG_ARCH_AT91=y
 CONFIG_TEXT_BASE=0x26f00000
 CONFIG_ARCH_SAMA5D4=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x60000
diff --git a/arch/arm/configs/telit_evk_pro3_defconfig b/arch/arm/configs/telit_evk_pro3_defconfig
index 3bf5968bf5..d9d22150c8 100644
--- a/arch/arm/configs/telit_evk_pro3_defconfig
+++ b/arch/arm/configs/telit_evk_pro3_defconfig
@@ -1,3 +1,4 @@
+CONFIG_ARCH_AT91=y
 CONFIG_ARCH_AT91SAM9260=y
 CONFIG_MACH_GE863=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
diff --git a/arch/arm/configs/tny_a9260_defconfig b/arch/arm/configs/tny_a9260_defconfig
index 0886895306..de846d245a 100644
--- a/arch/arm/configs/tny_a9260_defconfig
+++ b/arch/arm/configs/tny_a9260_defconfig
@@ -1,3 +1,4 @@
+CONFIG_ARCH_AT91=y
 CONFIG_ARCH_AT91SAM9260=y
 CONFIG_MACH_TNY_A9260=y
 CONFIG_CALAO_MOB_TNY_MD2=y
diff --git a/arch/arm/configs/tny_a9263_bootstrap_defconfig b/arch/arm/configs/tny_a9263_bootstrap_defconfig
index d7e541a2b1..7977d9ead3 100644
--- a/arch/arm/configs/tny_a9263_bootstrap_defconfig
+++ b/arch/arm/configs/tny_a9263_bootstrap_defconfig
@@ -1,3 +1,4 @@
+CONFIG_ARCH_AT91=y
 CONFIG_ARCH_AT91SAM9263=y
 CONFIG_MACH_TNY_A9263=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x12000
diff --git a/arch/arm/configs/tny_a9263_defconfig b/arch/arm/configs/tny_a9263_defconfig
index e050b6d47c..a9a9159b6f 100644
--- a/arch/arm/configs/tny_a9263_defconfig
+++ b/arch/arm/configs/tny_a9263_defconfig
@@ -1,3 +1,4 @@
+CONFIG_ARCH_AT91=y
 CONFIG_ARCH_AT91SAM9263=y
 CONFIG_MACH_TNY_A9263=y
 CONFIG_CALAO_MOB_TNY_MD2=y
diff --git a/arch/arm/configs/tny_a9g20_defconfig b/arch/arm/configs/tny_a9g20_defconfig
index dc828a24d7..7372b2c3ec 100644
--- a/arch/arm/configs/tny_a9g20_defconfig
+++ b/arch/arm/configs/tny_a9g20_defconfig
@@ -1,3 +1,4 @@
+CONFIG_ARCH_AT91=y
 CONFIG_ARCH_AT91SAM9G20=y
 CONFIG_MACH_TNY_A9G20=y
 CONFIG_CALAO_MOB_TNY_MD2=y
diff --git a/arch/arm/configs/usb_a9260_defconfig b/arch/arm/configs/usb_a9260_defconfig
index d87ebaae8e..1ebb0f9d0e 100644
--- a/arch/arm/configs/usb_a9260_defconfig
+++ b/arch/arm/configs/usb_a9260_defconfig
@@ -1,3 +1,4 @@
+CONFIG_ARCH_AT91=y
 CONFIG_ARCH_AT91SAM9260=y
 CONFIG_MACH_USB_A9260=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
diff --git a/arch/arm/configs/usb_a9263_bootstrap_defconfig b/arch/arm/configs/usb_a9263_bootstrap_defconfig
index c922cc0342..893a0c0f79 100644
--- a/arch/arm/configs/usb_a9263_bootstrap_defconfig
+++ b/arch/arm/configs/usb_a9263_bootstrap_defconfig
@@ -1,3 +1,4 @@
+CONFIG_ARCH_AT91=y
 CONFIG_ARCH_AT91SAM9263=y
 CONFIG_MACH_USB_A9263=y
 CONFIG_AT91_BOOTSTRAP=y
diff --git a/arch/arm/configs/usb_a9263_defconfig b/arch/arm/configs/usb_a9263_defconfig
index 89726a4ae1..1ea6f718fb 100644
--- a/arch/arm/configs/usb_a9263_defconfig
+++ b/arch/arm/configs/usb_a9263_defconfig
@@ -1,3 +1,4 @@
+CONFIG_ARCH_AT91=y
 CONFIG_ARCH_AT91SAM9263=y
 CONFIG_MACH_USB_A9263=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
diff --git a/arch/arm/configs/usb_a9g20_defconfig b/arch/arm/configs/usb_a9g20_defconfig
index 61412d854b..cca8ee6097 100644
--- a/arch/arm/configs/usb_a9g20_defconfig
+++ b/arch/arm/configs/usb_a9g20_defconfig
@@ -1,3 +1,4 @@
+CONFIG_ARCH_AT91=y
 CONFIG_ARCH_AT91SAM9G20=y
 CONFIG_MACH_USB_A9G20=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
-- 
2.30.2



