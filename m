Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWwSG-00084O-LL
 for barebox@lists.infradead.org; Fri, 08 May 2020 06:25:55 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  8 May 2020 08:25:29 +0200
Message-Id: <20200508062530.23241-4-a.fatoum@pengutronix.de>
In-Reply-To: <20200508062530.23241-1-a.fatoum@pengutronix.de>
References: <20200508062530.23241-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 4/5] drivers: add COMPILE_TEST prompts to some on-by-default
 drivers
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Many clock source and GPIO controller drivers don't have a prompt, but
are instead default y if their respective platform is enabled. Maintain
this behavior, but add a prompt for when COMPILE_TEST is enabled, so
they can be included in test builds.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clocksource/Kconfig | 16 +++++++++-------
 drivers/gpio/Kconfig        | 12 ++++++++----
 drivers/pinctrl/Kconfig     |  8 ++++----
 3 files changed, 21 insertions(+), 15 deletions(-)

diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
index 8805cda39e02..bc2aae7ad723 100644
--- a/drivers/clocksource/Kconfig
+++ b/drivers/clocksource/Kconfig
@@ -75,16 +75,18 @@ config CLOCKSOURCE_ATMEL_PIT
        bool
 
 config CLOCKSOURCE_ARM_ARCHITECTED_TIMER
-	bool
-	default y
-	depends on ARM && (CPU_64v8 || CPU_V7)
+	bool "ARM architected timer clock source" if COMPILE_TEST
+	default y if ARM && (CPU_64v8 || CPU_V7)
+	depends on (ARM && (CPU_64v8 || CPU_V7)) || COMPILE_TEST
 
 config CLOCKSOURCE_ARM_GLOBAL_TIMER
-	bool
-	depends on ARM && CPU_V7
+	bool "ARM global timer clock source" if COMPILE_TEST
+	depends on (ARM && CPU_V7) || COMPILE_TEST
+
 config CLOCKSOURCE_IMX_GPT
-	def_bool y
-	depends on ARCH_HAS_IMX_GPT
+	bool "i.MX GPT clock source" if COMPILE_TEST
+	default y if ARCH_HAS_IMX_GPT
+	depends on ARCH_HAS_IMX_GPT || COMPILE_TEST
 
 config CLOCKSOURCE_DW_APB_TIMER
 	bool "DW APB timer driver"
diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
index 5f0ba7994ebe..261b6e666257 100644
--- a/drivers/gpio/Kconfig
+++ b/drivers/gpio/Kconfig
@@ -43,13 +43,16 @@ config GPIO_GENERIC_PLATFORM
 	  GPIO controllers
 
 config GPIO_IMX
-	def_bool ARCH_IMX
+	bool "i.MX GPIO controller" if COMPILE_TEST
+	default y if ARCH_IMX
 
 config GPIO_VF610
-	def_bool ARCH_VF610
+	bool "VF610 GPIO controller" if COMPILE_TEST
+	default y if ARCH_VF610
 
 config GPIO_MXS
-	def_bool ARCH_MXS
+	bool "MXS GPIO controller" if COMPILE_TEST
+	default y if ARCH_MXS
 
 config GPIO_JZ4740
 	bool "GPIO support for Ingenic SoCs"
@@ -76,7 +79,8 @@ config GPIO_MPC8XXX
 	  MPC512x/831x/834x/837x/8572/8610/QorIQ GPIOs.
 
 config GPIO_OMAP
-	def_bool ARCH_OMAP
+	bool "OMAP GPIO controller" if COMPILE_TEST
+	default y if ARCH_OMAP
 
 config GPIO_ORION
 	bool "GPIO support for Marvell Orion/MVEBU SoCs"
diff --git a/drivers/pinctrl/Kconfig b/drivers/pinctrl/Kconfig
index 5553571983d2..6de9d946720c 100644
--- a/drivers/pinctrl/Kconfig
+++ b/drivers/pinctrl/Kconfig
@@ -73,20 +73,20 @@ config PINCTRL_SINGLE
 	bool "pinctrl single"
 
 config PINCTRL_TEGRA20
-	bool
+	bool "Tegra20 pinctrl support" if COMPILE_TEST
 	default y if ARCH_TEGRA_2x_SOC
 	help
 	  The pinmux controller found on the Tegra 20 line of SoCs.
 
 config PINCTRL_TEGRA30
-	bool
+	bool "Tegra30 pinctrl support" if COMPILE_TEST
 	default y if ARCH_TEGRA_3x_SOC
 	default y if ARCH_TEGRA_124_SOC
 	help
 	  The pinmux controller found on the Tegra 30+ line of SoCs.
 
 config PINCTRL_TEGRA_XUSB
-	bool
+	bool "Tegra SerDes pinmux support" if COMPILE_TEST
 	default y if ARCH_TEGRA_124_SOC
 	select GENERIC_PHY
 	help
@@ -100,7 +100,7 @@ config PINCTRL_VF610
 	  Pinmux controller found on Vybrid VF610 family of SoCs
 
 config PINCTRL_STM32
-	bool
+	bool "STM32 pinctrl support" if  COMPILE_TEST
 	default y if ARCH_STM32MP
 	help
 	  Pinmux and GPIO controller found on STM32 family
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
