Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJzKF-0002hF-9S
 for barebox@lists.infradead.org; Mon, 14 Oct 2019 12:20:04 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Oct 2019 14:18:54 +0200
Message-Id: <20191014121901.19471-6-a.fatoum@pengutronix.de>
In-Reply-To: <20191014121901.19471-1-a.fatoum@pengutronix.de>
References: <20191014121901.19471-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 05/12] ARM: at91: build for all SoCs when AT91_MULTI_BOARDS is
 selected
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

With the addition of 15afd9d25 ("ARM: at91: Add initial support for the
EVB-KSZ9477 eval board"), we now have two multi-image capable boards
supported, but users still have to choose a specific SoC, so they can't
be selected at the same time.

Fix this, by restricting the menu to the non-multi-image configurations,
i.e. CONFIG_ARCH_* symbols become specific to non-multi-image.

The multi-image configurations on the other hand directly select the
CONFIG_SOC_* symbol they require. Existing CONFIG_ARCH_* usage is
adjusted to align with the new usage.

Eventually, we would want to have a at91_multi_defconfig along with
this, but for now leave existing configs as is.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-at91/Kconfig            | 62 ++++++++++++++-------------
 arch/arm/mach-at91/Makefile           | 22 +++++-----
 arch/arm/mach-at91/include/mach/cpu.h |  4 +-
 common/Kconfig                        |  4 +-
 4 files changed, 47 insertions(+), 45 deletions(-)

diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 668ace6f0bbc..8bb9cf8bbea8 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -71,6 +71,8 @@ config SOC_SAMA5D3
 	select HAVE_AT91_USB_CLK
 	select HAVE_AT91_UTMI
 	select PINCTRL_AT91
+	select HAS_MACB
+	select HAVE_MACH_ARM_HEAD
 
 config SOC_SAMA5D4
 	bool
@@ -82,12 +84,14 @@ config SOC_SAMA5D4
 	select HAVE_AT91_USB_CLK
 	select HAVE_AT91_UTMI
 	select PINCTRL_AT91
+	select HAS_MACB
+	select HAVE_MACH_ARM_HEAD
 
 config ARCH_TEXT_BASE
 	hex
-	default 0x73f00000 if ARCH_AT91SAM9G45
-	default 0x26f00000 if ARCH_AT91SAM9X5
-	default 0x20f00000 if ARCH_AT91RM9200
+	default 0x73f00000 if SOC_AT91SAM9G45
+	default 0x26f00000 if SOC_AT91SAM9X5
+	default 0x20f00000 if SOC_AT91RM9200
 	default 0x21f00000 if MACH_ANIMEO_IP
 	default 0x23f00000
 
@@ -115,6 +119,7 @@ config SOC_AT91SAM9260
 	select SOC_AT91SAM9
 	select HAS_MACB
 	select PINCTRL_AT91
+	select HAVE_MACH_ARM_HEAD
 	help
 	  Select this if you are using one of Atmel's AT91SAM9260, AT91SAM9XE
 	  or AT91SAM9G20 SoC.
@@ -123,6 +128,8 @@ config SOC_AT91SAM9261
 	bool
 	select SOC_AT91SAM9
 	select PINCTRL_AT91
+	select HAVE_AT91_LOAD_BAREBOX_SRAM
+	select HAVE_MACH_ARM_HEAD
 	help
 	  Select this if you are using one of Atmel's AT91SAM9261 or AT91SAM9G10 SoC.
 
@@ -131,6 +138,7 @@ config SOC_AT91SAM9263
 	select SOC_AT91SAM9
 	select HAS_MACB
 	select HAVE_AT91_LOAD_BAREBOX_SRAM
+	select HAVE_MACH_ARM_HEAD
 	select PINCTRL_AT91
 
 config SOC_AT91SAM9G45
@@ -138,6 +146,7 @@ config SOC_AT91SAM9G45
 	select SOC_AT91SAM9
 	select HAS_MACB
 	select PINCTRL_AT91
+	select HAVE_MACH_ARM_HEAD
 	help
 	  Select this if you are using one of Atmel's AT91SAM9G45 family SoC.
 	  This support covers AT91SAM9G45, AT91SAM9G46, AT91SAM9M10 and AT91SAM9M11.
@@ -148,6 +157,7 @@ config SOC_AT91SAM9X5
 	select HAS_MACB
 	select COMMON_CLK_OF_PROVIDER
 	select PINCTRL_AT91
+	select OFDEVICE
 	help
 	  Select this if you are using one of Atmel's AT91SAM9x5 family SoC.
 	  This means that your SAM9 name finishes with a '5' (except if it is
@@ -159,11 +169,24 @@ config SOC_AT91SAM9N12
 	bool
 	select SOC_AT91SAM9
 	select PINCTRL_AT91
+	select HAVE_MACH_ARM_HEAD
 	help
 	  Select this if you are using Atmel's AT91SAM9N12 SoC.
 
+config SUPPORT_CALAO_DAB_MMX
+	bool
+
+config SUPPORT_CALAO_MOB_TNY_MD2
+	bool
+
+if !AT91_MULTI_BOARDS
+
+# ----------------------------------------------------------
+
 choice
 	prompt "Atmel AT91 Processor"
+	help
+	  Select here which SoC to support in non-multi-image configurations
 
 config ARCH_AT91RM9200
 	bool "AT91RM9200"
@@ -176,73 +199,52 @@ config ARCH_AT91SAM9260
 config ARCH_AT91SAM9261
 	bool "AT91SAM9261"
 	select SOC_AT91SAM9261
-	select HAVE_AT91_LOAD_BAREBOX_SRAM
 
 config ARCH_AT91SAM9263
 	bool "AT91SAM9263"
 	select SOC_AT91SAM9263
-	select HAVE_MACH_ARM_HEAD
 
 config ARCH_AT91SAM9G10
 	bool "AT91SAM9G10"
 	select SOC_AT91SAM9261
-	select HAVE_MACH_ARM_HEAD
 
 config ARCH_AT91SAM9G20
 	bool "AT91SAM9G20"
 	select SOC_AT91SAM9260
-	select HAVE_MACH_ARM_HEAD
 
 config ARCH_AT91SAM9G45
 	bool "AT91SAM9G45 or AT91SAM9M10"
 	select SOC_AT91SAM9G45
-	select HAVE_MACH_ARM_HEAD
 
 config ARCH_AT91SAM9X5
 	bool "AT91SAM9X5"
 	select SOC_AT91SAM9X5
-	select OFDEVICE
 
 config ARCH_AT91SAM9N12
 	bool "AT91SAM9N12"
 	select SOC_AT91SAM9N12
-	select HAVE_MACH_ARM_HEAD
 
 config ARCH_SAMA5D3
 	bool "SAMA5D3x"
 	select SOC_SAMA5D3
-	select HAS_MACB
-	select HAVE_MACH_ARM_HEAD
 
 config ARCH_SAMA5D4
 	bool "SAMA5D4"
 	select SOC_SAMA5D4
-	select HAS_MACB
-	select HAVE_MACH_ARM_HEAD
 
 endchoice
 
-config SUPPORT_CALAO_DAB_MMX
-	bool
-
-config SUPPORT_CALAO_MOB_TNY_MD2
-	bool
-
-if !AT91_MULTI_BOARDS
-
-# ----------------------------------------------------------
-
 config ARCH_BAREBOX_MAX_BARE_INIT_SIZE
 	hex
 	default 0x1000 if ARCH_AT91SAM9260
 	default 0x27000 if ARCH_AT91SAM9261
-	default 0x12000 if ARCH_AT91SAM9263
 	default 0x4000 if ARCH_AT91SAM9G20
 	default 0x3000 if ARCH_AT91SAM9G10
 	default 0xF000 if ARCH_AT91SAM9G45
-	default 0x6000 if ARCH_AT91SAM9X5
 	default 0x6000 if ARCH_AT91SAM9N12
-	default 0x6000 if ARCH_SAMA5D3
+	default 0x12000 if SOC_AT91SAM9263
+	default 0x6000 if SOC_AT91SAM9X5
+	default 0x6000 if SOC_SAMA5D3
 	default 0xffffffff
 
 if ARCH_AT91RM9200
@@ -539,7 +541,7 @@ if AT91_MULTI_BOARDS
 
 config MACH_AT91SAM9263EK
 	bool "Atmel AT91SAM9263-EK"
-	depends on ARCH_AT91SAM9263
+	select SOC_AT91SAM9263
 	select OFDEVICE
 	select COMMON_CLK_OF_PROVIDER
 	select HAVE_NAND_ATMEL_BUSWIDTH_16
@@ -550,14 +552,14 @@ config MACH_AT91SAM9263EK
 
 config MACH_AT91SAM9X5EK
 	bool "Atmel AT91SAM9x5 Series Evaluation Kit"
-	depends on ARCH_AT91SAM9X5
+	select SOC_AT91SAM9X5
 	help
 	  Select this if you re using Atmel's AT91SAM9x5-EK Evaluation Kit.
 	  Supported chips are sam9g15, sam9g25, sam9x25, sam9g35 and sam9x35.
 
 config MACH_MICROCHIP_KSZ9477_EVB
 	bool "Microchip EVB-KSZ9477 Evaluation Kit"
-	depends on ARCH_SAMA5D3
+	select SOC_SAMA5D3
 	select OFDEVICE
 	select COMMON_CLK_OF_PROVIDER
 	help
diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index d81683ac121a..f4ffe72ad9a3 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -14,16 +14,16 @@ obj-y += at91sam9g45_reset.o
 obj-$(CONFIG_AT91SAM9_SMC) += sam9_smc.o
 
 # CPU-specific support
-obj-$(CONFIG_ARCH_AT91RM9200)	+= at91rm9200.o at91rm9200_time.o at91rm9200_devices.o
-obj-$(CONFIG_ARCH_AT91SAM9260) += at91sam9260.o at91sam9260_devices.o
-obj-$(CONFIG_ARCH_AT91SAM9261) += at91sam9261.o at91sam9261_devices.o
-obj-$(CONFIG_ARCH_AT91SAM9G10) += at91sam9261.o at91sam9261_devices.o
+obj-$(CONFIG_SOC_AT91RM9200)	+= at91rm9200.o at91rm9200_time.o at91rm9200_devices.o
+obj-$(CONFIG_SOC_AT91SAM9260) += at91sam9260.o at91sam9260_devices.o
+obj-$(CONFIG_SOC_AT91SAM9261) += at91sam9261.o at91sam9261_devices.o
+obj-$(CONFIG_SOC_AT91SAM9G10) += at91sam9261.o at91sam9261_devices.o
 ifeq ($(CONFIG_OFDEVICE),)
-obj-$(CONFIG_ARCH_AT91SAM9263) += at91sam9263.o at91sam9263_devices.o
-obj-$(CONFIG_ARCH_SAMA5D3)	+= sama5d3.o sama5d3_devices.o
+obj-$(CONFIG_SOC_AT91SAM9263) += at91sam9263.o at91sam9263_devices.o
+obj-$(CONFIG_SOC_SAMA5D3)	+= sama5d3.o sama5d3_devices.o
 endif
-obj-$(CONFIG_ARCH_AT91SAM9G20) += at91sam9260.o at91sam9260_devices.o
-obj-$(CONFIG_ARCH_AT91SAM9G45) += at91sam9g45.o at91sam9g45_devices.o
-obj-$(CONFIG_ARCH_AT91SAM9X5)	+= at91sam9x5.o at91sam9x5_devices.o
-obj-$(CONFIG_ARCH_AT91SAM9N12)	+= at91sam9n12.o at91sam9n12_devices.o
-obj-$(CONFIG_ARCH_SAMA5D4)	+= sama5d4.o sama5d4_devices.o
+obj-$(CONFIG_SOC_AT91SAM9G20) += at91sam9260.o at91sam9260_devices.o
+obj-$(CONFIG_SOC_AT91SAM9G45) += at91sam9g45.o at91sam9g45_devices.o
+obj-$(CONFIG_SOC_AT91SAM9X5)	+= at91sam9x5.o at91sam9x5_devices.o
+obj-$(CONFIG_SOC_AT91SAM9N12)	+= at91sam9n12.o at91sam9n12_devices.o
+obj-$(CONFIG_SOC_SAMA5D4)	+= sama5d4.o sama5d4_devices.o
diff --git a/arch/arm/mach-at91/include/mach/cpu.h b/arch/arm/mach-at91/include/mach/cpu.h
index def49dc00d0a..6c904efb8bef 100644
--- a/arch/arm/mach-at91/include/mach/cpu.h
+++ b/arch/arm/mach-at91/include/mach/cpu.h
@@ -222,7 +222,7 @@ static inline int at91_soc_is_detected(void)
 #define cpu_is_at91sam9n12()	(0)
 #endif
 
-#ifdef CONFIG_ARCH_SAMA5D3
+#ifdef CONFIG_SOC_SAMA5D3
 #define cpu_is_sama5d3()	(at91_soc_initdata.type == AT91_SOC_SAMA5D3)
 #define cpu_is_sama5d31()	(at91_soc_initdata.subtype == AT91_SOC_SAMA5D31)
 #define cpu_is_sama5d33()	(at91_soc_initdata.subtype == AT91_SOC_SAMA5D33)
@@ -238,7 +238,7 @@ static inline int at91_soc_is_detected(void)
 #define cpu_is_sama5d36()	(0)
 #endif
 
-#ifdef CONFIG_ARCH_SAMA5D4
+#ifdef CONFIG_SOC_SAMA5D4
 #define cpu_is_sama5d4()	(at91_soc_initdata.type == AT91_SOC_SAMA5D4)
 #define cpu_is_sama5d41()	(at91_soc_initdata.subtype == AT91_SOC_SAMA5D41)
 #define cpu_is_sama5d42()	(at91_soc_initdata.subtype == AT91_SOC_SAMA5D42)
diff --git a/common/Kconfig b/common/Kconfig
index 7c56eb469e3f..b1b3a05dc875 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1292,8 +1292,8 @@ config DEBUG_AT91_UART_BASE
 	default 0xfffff200 if SOC_AT91RM9200  || SOC_AT91SAM9260 \
 	                   || SOC_AT91SAM9261 || SOC_AT91SAM9X5  \
 			   || SOC_AT91SAM9N12
-	default 0xffffee00 if SOC_AT91SAM9263 || SOC_AT91SAM9G45 || ARCH_SAMA5D3
-	default 0xfc069000 if ARCH_SAMA5D4
+	default 0xffffee00 if SOC_AT91SAM9263 || SOC_AT91SAM9G45 || SOC_SAMA5D3
+	default 0xfc069000 if SOC_SAMA5D4
 	default 0xfffff200
 	depends on ARCH_AT91
 	help
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
