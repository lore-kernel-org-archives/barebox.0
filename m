Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iahze-00052d-SC
 for barebox@lists.infradead.org; Fri, 29 Nov 2019 15:15:42 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1iahz9-0006u0-VR
 for barebox@lists.infradead.org; Fri, 29 Nov 2019 16:15:08 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 29 Nov 2019 16:14:56 +0100
Message-Id: <20191129151505.23946-31-l.stach@pengutronix.de>
In-Reply-To: <20191129151505.23946-1-l.stach@pengutronix.de>
References: <20191129151505.23946-1-l.stach@pengutronix.de>
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
Subject: [PATCH 30/39] pinctrl: at91pio4: move to correct location in Kconfig
To: barebox@lists.infradead.org

The driver also depends on PINCTRL, so we should only allow it to
be enabled if this option is selected. We can also drop the OFDEVICE
dependency then, as this is required for PINCTRL.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/mach-at91/Kconfig |  1 +
 drivers/pinctrl/Kconfig    | 19 +++++++++----------
 2 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 5ad1f62c8d67..5267102bf94e 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -65,6 +65,7 @@ config SOC_SAMA5D2
 	select HAVE_AT91_UTMI
 	select HAVE_AT91_USB_CLK
 	select HAVE_AT91_GENERATED_CLK
+	select PINCTRL
 	select PINCTRL_AT91PIO4
 	select HAS_MACB
 	select HAVE_MACH_ARM_HEAD
diff --git a/drivers/pinctrl/Kconfig b/drivers/pinctrl/Kconfig
index 95c6708f4a98..bddb1d780b94 100644
--- a/drivers/pinctrl/Kconfig
+++ b/drivers/pinctrl/Kconfig
@@ -17,16 +17,6 @@ config PINCTRL_AT91
 	help
 	    The pinmux controller found on AT91 SoCs.
 
-config PINCTRL_AT91PIO4
-        bool "AT91 PIO4 pinctrl driver"
-        depends on OFDEVICE
-        depends on ARCH_AT91
-        select GPIOLIB
-        select OF_GPIO
-        help
-          Say Y here to enable the at91 pinctrl/gpio driver for Atmel PIO4
-          controller available on sama5d2 SoC.
-
 config PINCTRL_BCM283X
 	bool "GPIO and pinmux support for BCM283X"
 	depends on ARCH_BCM283X
@@ -55,6 +45,15 @@ comment "OFDEVICE is not enabled."
 comment "Without device tree support PINCTRL won't do anything"
 endif
 
+config PINCTRL_AT91PIO4
+	bool "AT91 PIO4 pinctrl driver"
+	depends on ARCH_AT91
+	select GPIOLIB
+	select OF_GPIO
+	help
+	  Say Y here to enable the at91 pinctrl/gpio driver for Atmel PIO4
+	  controller available on sama5d2 SoC.
+
 config PINCTRL_MXS
 	bool "MXS pinctrl"
 	depends on ARCH_MXS
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
