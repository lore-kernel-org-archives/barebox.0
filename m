Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp37.i.mail.ru ([94.100.177.97])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UTPGg-0001yS-NP
 for barebox@lists.infradead.org; Sat, 20 Apr 2013 04:19:22 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sat, 20 Apr 2013 08:18:49 +0400
Message-Id: <1366431532-29121-3-git-send-email-shc_work@mail.ru>
In-Reply-To: <1366431532-29121-1-git-send-email-shc_work@mail.ru>
References: <1366431532-29121-1-git-send-email-shc_work@mail.ru>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/5] ARM: i.MX: Move GPIO driver to drivers/gpio
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/mach-imx/Makefile                          | 2 +-
 drivers/gpio/Kconfig                                | 3 +++
 drivers/gpio/Makefile                               | 1 +
 arch/arm/mach-imx/gpio.c => drivers/gpio/gpio-imx.c | 0
 4 files changed, 5 insertions(+), 1 deletion(-)
 rename arch/arm/mach-imx/gpio.c => drivers/gpio/gpio-imx.c (100%)

diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index ff8f15b..b703ed1 100644
--- a/arch/arm/mach-imx/Makefile
+++ b/arch/arm/mach-imx/Makefile
@@ -1,4 +1,4 @@
-obj-y += clocksource.o gpio.o
+obj-y += clocksource.o
 obj-$(CONFIG_ARCH_IMX1)  += imx1.o  iomux-v1.o clk-imx1.o
 obj-$(CONFIG_ARCH_IMX25) += imx25.o iomux-v3.o clk-imx25.o
 obj-$(CONFIG_ARCH_IMX21) += imx21.o iomux-v1.o clk-imx21.o
diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
index ea07028..74a4baa 100644
--- a/drivers/gpio/Kconfig
+++ b/drivers/gpio/Kconfig
@@ -27,6 +27,9 @@ config GPIO_GENERIC_PLATFORM
 	  Say yes here to support basic platform memory-mapped
 	  GPIO controllers
 
+config GPIO_IMX
+	def_bool ARCH_IMX
+
 config GPIO_PL061
 	bool "PrimeCell PL061 GPIO support"
 	depends on ARM_AMBA
diff --git a/drivers/gpio/Makefile b/drivers/gpio/Makefile
index 6a94430..205d553 100644
--- a/drivers/gpio/Makefile
+++ b/drivers/gpio/Makefile
@@ -3,5 +3,6 @@ obj-$(CONFIG_GPIOLIB)		+= gpiolib.o
 obj-$(CONFIG_GPIO_BCM2835)	+= gpio-bcm2835.o
 obj-$(CONFIG_GPIO_CLPS711X)	+= gpio-clps711x.o
 obj-$(CONFIG_GPIO_GENERIC)	+= gpio-generic.o
+obj-$(CONFIG_GPIO_IMX)		+= gpio-imx.o
 obj-$(CONFIG_GPIO_PL061)	+= gpio-pl061.o
 obj-$(CONFIG_GPIO_STMPE)	+= gpio-stmpe.o
diff --git a/arch/arm/mach-imx/gpio.c b/drivers/gpio/gpio-imx.c
similarity index 100%
rename from arch/arm/mach-imx/gpio.c
rename to drivers/gpio/gpio-imx.c
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
