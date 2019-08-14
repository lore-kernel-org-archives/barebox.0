Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxoTA-0007uw-7g
 for barebox@lists.infradead.org; Wed, 14 Aug 2019 08:17:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 14 Aug 2019 10:16:56 +0200
Message-Id: <20190814081659.22670-2-s.hauer@pengutronix.de>
In-Reply-To: <20190814081659.22670-1-s.hauer@pengutronix.de>
References: <20190814081659.22670-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] pinctrl: i.MX iomux-v1: Make base address initialization
 unnecessary
To: Barebox List <barebox@lists.infradead.org>

So far we have imx_gpio_mode() to configure a pinmux entry for the older
i.MX pinmuxes. For this to work imx_iomuxv1_init() must be called
beforehand to configure the base address. Simplify this by introducing
SoC specific variants of imx_gpio_mode() which also pass the base
address. This makes initialization of the base address unnecessary and
the functions usable for PBL. Consequently also compile the code for
PBL.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 .../boards/eukrea_cpuimx27/eukrea_cpuimx27.c  |  2 +-
 arch/arm/boards/freescale-mx21-ads/imx21ads.c |  2 +-
 arch/arm/boards/freescale-mx27-ads/imx27ads.c |  2 +-
 arch/arm/boards/guf-neso/board.c              |  2 +-
 arch/arm/boards/phytec-phycard-imx27/pca100.c |  6 ++--
 arch/arm/boards/phytec-phycore-imx27/pcm038.c |  4 +--
 arch/arm/boards/phytec-phycore-imx27/pcm970.c |  2 +-
 arch/arm/boards/scb9328/scb9328.c             | 14 +++++-----
 arch/arm/mach-imx/imx1.c                      |  2 --
 arch/arm/mach-imx/imx21.c                     |  2 --
 arch/arm/mach-imx/imx27.c                     |  2 --
 arch/arm/mach-imx/include/mach/iomux-v1.h     | 21 +++++++++++++-
 drivers/pinctrl/Makefile                      |  2 +-
 drivers/pinctrl/imx-iomux-v1.c                | 28 +++++++------------
 14 files changed, 48 insertions(+), 43 deletions(-)

diff --git a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
index f27dcd6f44..63034e2755 100644
--- a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
+++ b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
@@ -171,7 +171,7 @@ static int eukrea_cpuimx27_devices_init(void)
 
 	/* initialize gpios */
 	for (i = 0; i < ARRAY_SIZE(mode); i++)
-		imx_gpio_mode(mode[i]);
+		imx27_gpio_mode(mode[i]);
 
 	add_cfi_flash_device(DEVICE_ID_DYNAMIC, 0xC0000000, 32 * 1024 * 1024, 0);
 #ifdef CONFIG_EUKREA_CPUIMX27_NOR_64MB
diff --git a/arch/arm/boards/freescale-mx21-ads/imx21ads.c b/arch/arm/boards/freescale-mx21-ads/imx21ads.c
index 8afe9ace51..aa654da494 100644
--- a/arch/arm/boards/freescale-mx21-ads/imx21ads.c
+++ b/arch/arm/boards/freescale-mx21-ads/imx21ads.c
@@ -152,7 +152,7 @@ static int mx21ads_devices_init(void)
 
 	/* initizalize gpios */
 	for (i = 0; i < ARRAY_SIZE(mode); i++)
-		imx_gpio_mode(mode[i]);
+		imx21_gpio_mode(mode[i]);
 
 	add_cfi_flash_device(DEVICE_ID_DYNAMIC, MX21_CS0_BASE_ADDR,
 			32 * 1024 * 1024, 0);
diff --git a/arch/arm/boards/freescale-mx27-ads/imx27ads.c b/arch/arm/boards/freescale-mx27-ads/imx27ads.c
index 9818a55137..c0f4e464c1 100644
--- a/arch/arm/boards/freescale-mx27-ads/imx27ads.c
+++ b/arch/arm/boards/freescale-mx27-ads/imx27ads.c
@@ -95,7 +95,7 @@ static int mx27ads_devices_init(void)
 
 	/* initizalize gpios */
 	for (i = 0; i < ARRAY_SIZE(mode); i++)
-		imx_gpio_mode(mode[i]);
+		imx27_gpio_mode(mode[i]);
 
 	add_cfi_flash_device(DEVICE_ID_DYNAMIC, 0xC0000000, 32 * 1024 * 1024, 0);
 
diff --git a/arch/arm/boards/guf-neso/board.c b/arch/arm/boards/guf-neso/board.c
index e1cd9098e0..2a64bc14fc 100644
--- a/arch/arm/boards/guf-neso/board.c
+++ b/arch/arm/boards/guf-neso/board.c
@@ -266,7 +266,7 @@ static int neso_devices_init(void)
 
 	/* initialize gpios */
 	for (i = 0; i < ARRAY_SIZE(mode); i++)
-		imx_gpio_mode(mode[i]);
+		imx27_gpio_mode(mode[i]);
 
 	imx27_add_nand(&nand_info);
 	imx27_add_fb(&neso_fb_data);
diff --git a/arch/arm/boards/phytec-phycard-imx27/pca100.c b/arch/arm/boards/phytec-phycard-imx27/pca100.c
index 60f1505ccb..7184a59c71 100644
--- a/arch/arm/boards/phytec-phycard-imx27/pca100.c
+++ b/arch/arm/boards/phytec-phycard-imx27/pca100.c
@@ -84,9 +84,9 @@ static void pca100_usb_init(void)
 	writel(reg, MX27_USB_OTG_BASE_ADDR + 0x184);
 
 	/* disable the usb phys */
-	imx_gpio_mode((GPIO_PORTB | 23) | GPIO_GPIO | GPIO_IN);
+	imx27_gpio_mode((GPIO_PORTB | 23) | GPIO_GPIO | GPIO_IN);
 	gpio_direction_output(GPIO_PORTB + 23, 1);
-	imx_gpio_mode((GPIO_PORTB | 24) | GPIO_GPIO | GPIO_IN);
+	imx27_gpio_mode((GPIO_PORTB | 24) | GPIO_GPIO | GPIO_IN);
 	gpio_direction_output(GPIO_PORTB + 24, 1);
 }
 
@@ -131,7 +131,7 @@ static int pca100_devices_init(void)
 
 	/* initizalize gpios */
 	for (i = 0; i < ARRAY_SIZE(mode); i++)
-		imx_gpio_mode(mode[i]);
+		imx27_gpio_mode(mode[i]);
 
 	pca100_usb_register();
 
diff --git a/arch/arm/boards/phytec-phycore-imx27/pcm038.c b/arch/arm/boards/phytec-phycore-imx27/pcm038.c
index f1f808116c..5ebef516a7 100644
--- a/arch/arm/boards/phytec-phycore-imx27/pcm038.c
+++ b/arch/arm/boards/phytec-phycore-imx27/pcm038.c
@@ -112,12 +112,12 @@ static int pcm038_init(void)
 		return 0;
 
 	/* Apply delay for STP line to stop ULPI */
-	imx_gpio_mode(PCM038_GPIO_OTG_STP | GPIO_GPIO);
+	imx27_gpio_mode(PCM038_GPIO_OTG_STP | GPIO_GPIO);
 	gpio_direction_output(PCM038_GPIO_OTG_STP, 1);
 	mdelay(1);
 
 	for (i = 0; i < ARRAY_SIZE(pcm038_pins); i++)
-		imx_gpio_mode(pcm038_pins[i]);
+		imx27_gpio_mode(pcm038_pins[i]);
 
 	imx27_add_fb(&pcm038_fb_data);
 
diff --git a/arch/arm/boards/phytec-phycore-imx27/pcm970.c b/arch/arm/boards/phytec-phycore-imx27/pcm970.c
index 13bb7c1cf5..b8faec0384 100644
--- a/arch/arm/boards/phytec-phycore-imx27/pcm970.c
+++ b/arch/arm/boards/phytec-phycore-imx27/pcm970.c
@@ -73,7 +73,7 @@ static int pcm970_init(void)
 		uint32_t i;
 
 		for (i = 0; i < ARRAY_SIZE(pcmcia_pins); i++)
-			imx_gpio_mode(pcmcia_pins[i] | GPIO_PUEN);
+			imx27_gpio_mode(pcmcia_pins[i] | GPIO_PUEN);
 
 		/* Always set PCOE signal to low */
 		gpio_set_value(GPIO_IDE_PCOE, 0);
diff --git a/arch/arm/boards/scb9328/scb9328.c b/arch/arm/boards/scb9328/scb9328.c
index 697ed4b401..fcdb3de49d 100644
--- a/arch/arm/boards/scb9328/scb9328.c
+++ b/arch/arm/boards/scb9328/scb9328.c
@@ -52,11 +52,11 @@ static int scb9328_devices_init(void)
 {
 	int i;
 
-	imx_gpio_mode(PA23_PF_CS5);
-	imx_gpio_mode(GPIO_PORTB | GPIO_GPIO | GPIO_OUT | 21);
-	imx_gpio_mode(GPIO_PORTB | GPIO_GPIO | GPIO_OUT | 22);
-	imx_gpio_mode(GPIO_PORTB | GPIO_GPIO | GPIO_OUT | 23);
-	imx_gpio_mode(GPIO_PORTB | GPIO_GPIO | GPIO_OUT | 24);
+	imx1_gpio_mode(PA23_PF_CS5);
+	imx1_gpio_mode(GPIO_PORTB | GPIO_GPIO | GPIO_OUT | 21);
+	imx1_gpio_mode(GPIO_PORTB | GPIO_GPIO | GPIO_OUT | 22);
+	imx1_gpio_mode(GPIO_PORTB | GPIO_GPIO | GPIO_OUT | 23);
+	imx1_gpio_mode(GPIO_PORTB | GPIO_GPIO | GPIO_OUT | 24);
 
 	for (i = 0; i < ARRAY_SIZE(leds); i++)
 		led_gpio_register(&leds[i]);
@@ -91,8 +91,8 @@ device_initcall(scb9328_devices_init);
 static int scb9328_console_init(void)
 {
 	/* init gpios for serial port */
-	imx_gpio_mode(PC11_PF_UART1_TXD);
-	imx_gpio_mode(PC12_PF_UART1_RXD);
+	imx1_gpio_mode(PC11_PF_UART1_TXD);
+	imx1_gpio_mode(PC12_PF_UART1_RXD);
 
 	barebox_set_model("Synertronixx scb9328");
 	barebox_set_hostname("scb9328");
diff --git a/arch/arm/mach-imx/imx1.c b/arch/arm/mach-imx/imx1.c
index 51bdcbf38e..6a09b276c8 100644
--- a/arch/arm/mach-imx/imx1.c
+++ b/arch/arm/mach-imx/imx1.c
@@ -62,8 +62,6 @@ int imx1_init(void)
 
 int imx1_devices_init(void)
 {
-	imx_iomuxv1_init((void *)MX1_GPIO1_BASE_ADDR);
-
 	add_generic_device("imx1-ccm", 0, NULL, MX1_CCM_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx1-gpt", 0, NULL, MX1_TIM1_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
 	add_generic_device("imx1-gpio", 0, NULL, MX1_GPIO1_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
diff --git a/arch/arm/mach-imx/imx21.c b/arch/arm/mach-imx/imx21.c
index ca074dd4c4..7a19ed3986 100644
--- a/arch/arm/mach-imx/imx21.c
+++ b/arch/arm/mach-imx/imx21.c
@@ -32,8 +32,6 @@ int imx21_init(void)
 
 int imx21_devices_init(void)
 {
-	imx_iomuxv1_init((void *)MX21_GPIO1_BASE_ADDR);
-
 	add_generic_device("imx21-ccm", 0, NULL, MX21_CCM_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
 	add_generic_device("imx1-gpt", 0, NULL, MX21_GPT1_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
 	add_generic_device("imx1-gpio", 0, NULL, MX21_GPIO1_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
diff --git a/arch/arm/mach-imx/imx27.c b/arch/arm/mach-imx/imx27.c
index 1c6244990d..d4949babeb 100644
--- a/arch/arm/mach-imx/imx27.c
+++ b/arch/arm/mach-imx/imx27.c
@@ -108,8 +108,6 @@ int imx27_init(void)
 
 int imx27_devices_init(void)
 {
-	imx_iomuxv1_init((void *)MX27_GPIO1_BASE_ADDR);
-
 	add_generic_device("imx_iim", DEVICE_ID_SINGLE, NULL,
 			   MX27_IIM_BASE_ADDR, SZ_4K, IORESOURCE_MEM, NULL);
 
diff --git a/arch/arm/mach-imx/include/mach/iomux-v1.h b/arch/arm/mach-imx/include/mach/iomux-v1.h
index e822905b77..8f75933e39 100644
--- a/arch/arm/mach-imx/include/mach/iomux-v1.h
+++ b/arch/arm/mach-imx/include/mach/iomux-v1.h
@@ -46,6 +46,25 @@
 #define GPIO_GIUS      (1 << 16)
 
 void imx_iomuxv1_init(void __iomem *base);
-void imx_gpio_mode(int gpio_mode);
+void imx_gpio_mode(void __iomem *base, int gpio_mode);
+
+#include <mach/imx1-regs.h>
+#include <mach/imx21-regs.h>
+#include <mach/imx27-regs.h>
+
+static inline void imx1_gpio_mode(int gpio_mode)
+{
+	imx_gpio_mode(IOMEM(MX1_GPIO1_BASE_ADDR), gpio_mode);
+}
+
+static inline void imx21_gpio_mode(int gpio_mode)
+{
+	imx_gpio_mode(IOMEM(MX21_GPIO1_BASE_ADDR), gpio_mode);
+}
+
+static inline void imx27_gpio_mode(int gpio_mode)
+{
+	imx_gpio_mode(IOMEM(MX27_GPIO1_BASE_ADDR), gpio_mode);
+}
 
 #endif /* __MACH_IOMUX_V1_H__ */
diff --git a/drivers/pinctrl/Makefile b/drivers/pinctrl/Makefile
index 9cb5e99477..e311df7103 100644
--- a/drivers/pinctrl/Makefile
+++ b/drivers/pinctrl/Makefile
@@ -1,7 +1,7 @@
 obj-$(CONFIG_PINCTRL)	+= pinctrl.o
 obj-$(CONFIG_PINCTRL_AT91) += pinctrl-at91.o
 obj-$(CONFIG_PINCTRL_BCM283X)	+= pinctrl-bcm2835.o
-obj-$(CONFIG_PINCTRL_IMX_IOMUX_V1) += imx-iomux-v1.o
+obj-pbl-$(CONFIG_PINCTRL_IMX_IOMUX_V1) += imx-iomux-v1.o
 obj-$(CONFIG_PINCTRL_IMX_IOMUX_V2) += imx-iomux-v2.o
 obj-$(CONFIG_PINCTRL_IMX_IOMUX_V3) += imx-iomux-v3.o
 obj-$(CONFIG_PINCTRL_MXS) += pinctrl-mxs.o
diff --git a/drivers/pinctrl/imx-iomux-v1.c b/drivers/pinctrl/imx-iomux-v1.c
index 61e8f9680f..d0136f931e 100644
--- a/drivers/pinctrl/imx-iomux-v1.c
+++ b/drivers/pinctrl/imx-iomux-v1.c
@@ -31,26 +31,21 @@
 #define SWR     0x3c
 #define PUEN    0x40
 
-static void __iomem *iomuxv1_base;
-
 struct imx_iomux_v1 {
 	void __iomem *base;
 	struct pinctrl_device pinctrl;
 };
 
-void imx_gpio_mode(int gpio_mode)
+void imx_gpio_mode(void __iomem *base, int gpio_mode)
 {
 	unsigned int pin = gpio_mode & GPIO_PIN_MASK;
 	unsigned int port = (gpio_mode & GPIO_PORT_MASK) >> GPIO_PORT_SHIFT;
 	unsigned int ocr = (gpio_mode & GPIO_OCR_MASK) >> GPIO_OCR_SHIFT;
 	unsigned int aout = (gpio_mode & GPIO_AOUT_MASK) >> GPIO_AOUT_SHIFT;
 	unsigned int bout = (gpio_mode & GPIO_BOUT_MASK) >> GPIO_BOUT_SHIFT;
-	void __iomem *portbase = iomuxv1_base + port * 0x100;
+	void __iomem *portbase = base + port * 0x100;
 	uint32_t val;
 
-	if (!iomuxv1_base)
-		return;
-
 	/* Pullup enable */
 	val = readl(portbase + PUEN);
 	if (gpio_mode & GPIO_PUEN)
@@ -119,10 +114,7 @@ void imx_gpio_mode(int gpio_mode)
 	}
 }
 
-void imx_iomuxv1_init(void __iomem *base)
-{
-	iomuxv1_base = base;
-}
+#ifndef __PBL__
 
 /*
  * MUX_ID format defines
@@ -280,18 +272,16 @@ static int imx_pinctrl_dt(struct device_d *dev, void __iomem *base)
 static int imx_iomux_v1_probe(struct device_d *dev)
 {
 	int ret = 0;
+	void __iomem *base;
 
-	if (iomuxv1_base)
-		return -EBUSY;
-
-	iomuxv1_base = dev_get_mem_region(dev, 0);
-	if (IS_ERR(iomuxv1_base))
-		return PTR_ERR(iomuxv1_base);
+	base = dev_get_mem_region(dev, 0);
+	if (IS_ERR(base))
+		return PTR_ERR(base);
 
 	ret = of_platform_populate(dev->device_node, NULL, NULL);
 
 	if (IS_ENABLED(CONFIG_PINCTRL) && dev->device_node)
-		ret = imx_pinctrl_dt(dev, iomuxv1_base);
+		ret = imx_pinctrl_dt(dev, base);
 
 	return ret;
 }
@@ -315,3 +305,5 @@ static int imx_iomux_v1_init(void)
 	return platform_driver_register(&imx_iomux_v1_driver);
 }
 core_initcall(imx_iomux_v1_init);
+
+#endif
\ No newline at end of file
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
