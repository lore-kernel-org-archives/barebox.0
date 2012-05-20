Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp10.mail.ru ([94.100.176.152])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SW28U-0005Fq-5Z
 for barebox@lists.infradead.org; Sun, 20 May 2012 09:09:11 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sun, 20 May 2012 13:09:10 +0400
Message-Id: <1337504950-24623-1-git-send-email-shc_work@mail.ru>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2] PCM970: Added support for CompactFlash
To: barebox@lists.infradead.org

Added support for CompactFlash cards for PCM970 development board via
PCMCIA window.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/pcm038/pcm970.c             |  107 +++++++++++++++++++++++++++
 arch/arm/mach-imx/include/mach/imx27-regs.h |   13 +++
 2 files changed, 120 insertions(+), 0 deletions(-)

diff --git a/arch/arm/boards/pcm038/pcm970.c b/arch/arm/boards/pcm038/pcm970.c
index cd80677..ca10afb 100644
--- a/arch/arm/boards/pcm038/pcm970.c
+++ b/arch/arm/boards/pcm038/pcm970.c
@@ -18,11 +18,17 @@
 #include <common.h>
 #include <io.h>
 #include <init.h>
+#include <sizes.h>
+#include <platform_ide.h>
 #include <mach/imx-regs.h>
 #include <mach/iomux-mx27.h>
 #include <mach/gpio.h>
 #include <usb/ulpi.h>
 
+#define GPIO_IDE_POWER	(GPIO_PORTE + 18)
+#define GPIO_IDE_PCOE	(GPIO_PORTF + 7)
+#define GPIO_IDE_RESET	(GPIO_PORTF + 10)
+
 #ifdef CONFIG_USB
 static void pcm970_usbh2_init(void)
 {
@@ -45,6 +51,103 @@ static void pcm970_usbh2_init(void)
 }
 #endif
 
+#ifdef CONFIG_DISK_INTF_PLATFORM_IDE
+static struct resource pcm970_ide_resources[] = {
+	{
+		.start	= IMX_PCMCIA_MEM_BASE,
+		.size	= SZ_1K,
+		.flags	= IORESOURCE_MEM,
+	},
+};
+
+static void pcm970_ide_reset(int state)
+{
+	/* Switch reset line to low/high state */
+	gpio_set_value(GPIO_IDE_RESET, !!state);
+}
+
+static struct ide_port_info pcm970_ide_pdata = {
+	.ioport_shift	= 0,
+	.reset		= &pcm970_ide_reset,
+};
+
+static struct device_d pcm970_ide_device = {
+	.id		= -1,
+	.name		= "ide_intf",
+	.num_resources	= ARRAY_SIZE(pcm970_ide_resources),
+	.resource	= pcm970_ide_resources,
+	.platform_data	= &pcm970_ide_pdata,
+};
+
+static void pcm970_ide_init(void)
+{
+	uint32_t i;
+	unsigned int mode[] = {
+		/* PCMCIA */
+		PF20_PF_PC_CD1,
+		PF19_PF_PC_CD2,
+		PF18_PF_PC_WAIT,
+		PF17_PF_PC_READY,
+		PF16_PF_PC_PWRON,
+		PF14_PF_PC_VS1,
+		PF13_PF_PC_VS2,
+		PF12_PF_PC_BVD1,
+		PF11_PF_PC_BVD2,
+		PF9_PF_PC_IOIS16,
+		PF8_PF_PC_RW,
+		GPIO_IDE_PCOE | GPIO_GPIO | GPIO_OUT,	/* PCOE */
+		GPIO_IDE_RESET | GPIO_GPIO | GPIO_OUT,	/* Reset */
+		GPIO_IDE_POWER | GPIO_GPIO | GPIO_OUT,	/* Power */
+	};
+
+	for (i = 0; i < ARRAY_SIZE(mode); i++)
+		imx_gpio_mode(mode[i] | GPIO_PUEN);
+
+	/* Always set PCOE signal to low */
+	gpio_set_value(GPIO_IDE_PCOE, 0);
+
+	/* Assert RESET line */
+	gpio_set_value(GPIO_IDE_RESET, 0);
+
+	/* Power up CF-card (Also switched on User-LED) */
+	gpio_set_value(GPIO_IDE_POWER, 1);
+	mdelay(10);
+
+	/* Reset PCMCIA Status Change Register */
+	writel(0x00000fff, PCMCIA_PSCR);
+	mdelay(10);
+
+	/* Check PCMCIA Input Pins Register for Card Detect & Power */
+	if ((readl(PCMCIA_PIPR) & ((1 << 8) | (3 << 3))) != (1 << 8)) {
+		printf("CompactFlash card not found. Driver not enabled.\n");
+		return;
+	}
+
+	/* Disable all interrupts */
+	writel(0, PCMCIA_PER);
+
+	/* Disable all PCMCIA banks */
+	for (i = 0; i < 5; i++)
+		writel(0, PCMCIA_POR(i));
+
+	/* Not use internal PCOE */
+	writel(0, PCMCIA_PGCR);
+
+	/* Setup PCMCIA bank0 for Common memory mode */
+	writel(0, PCMCIA_PBR(0));
+	writel(0, PCMCIA_POFR(0));
+	writel((0 << 25) | (17 << 17) | (4 << 11) | (3 << 5) | 0xf, PCMCIA_POR(0));
+
+	/* Clear PCMCIA General Status Register */
+	writel(0x0000001f, PCMCIA_PGSR);
+
+	/* Make PCMCIA bank0 valid */
+	writel(readl(PCMCIA_POR(0)) | (1 << 29), PCMCIA_POR(0));
+
+	register_device(&pcm970_ide_device);
+}
+#endif
+
 static int pcm970_init(void)
 {
 	int i;
@@ -74,6 +177,10 @@ static int pcm970_init(void)
 	pcm970_usbh2_init();
 #endif
 
+#ifdef CONFIG_DISK_INTF_PLATFORM_IDE
+	pcm970_ide_init();
+#endif
+
 	return 0;
 }
 
diff --git a/arch/arm/mach-imx/include/mach/imx27-regs.h b/arch/arm/mach-imx/include/mach/imx27-regs.h
index 437cc7d..19dcad9 100644
--- a/arch/arm/mach-imx/include/mach/imx27-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx27-regs.h
@@ -41,6 +41,17 @@
 #define IMX_NFC_BASE               (0xd8000000)
 #define IMX_ESD_BASE               (0xd8001000)
 #define IMX_WEIM_BASE              (0xd8002000)
+#define IMX_M3IF_BASE		(0xd8003000)
+#define IMX_PCMCIA_CTL_BASE	(0xd8004000)
+
+#define PCMCIA_PIPR		(IMX_PCMCIA_CTL_BASE + 0x00)
+#define PCMCIA_PSCR		(IMX_PCMCIA_CTL_BASE + 0x04)
+#define PCMCIA_PER		(IMX_PCMCIA_CTL_BASE + 0x08)
+#define PCMCIA_PBR(x)		(IMX_PCMCIA_CTL_BASE + 0x0c + ((x) << 2))
+#define PCMCIA_POR(x)		(IMX_PCMCIA_CTL_BASE + 0x28 + ((x) << 2))
+#define PCMCIA_POFR(x)		(IMX_PCMCIA_CTL_BASE + 0x44 + ((x) << 2))
+#define PCMCIA_PGCR		(IMX_PCMCIA_CTL_BASE + 0x60)
+#define PCMCIA_PGSR		(IMX_PCMCIA_CTL_BASE + 0x64)
 
 /* AIPI */
 #define AIPI1_PSR0	__REG(IMX_AIPI1_BASE + 0x00)
@@ -240,6 +251,8 @@
 #define IMX_CS4_BASE	0xD4000000
 #define IMX_CS5_BASE	0xD6000000
 
+#define IMX_PCMCIA_MEM_BASE	(0xdc000000)
+
 #ifndef __ASSEMBLY__
 static inline void imx27_setup_weimcs(size_t cs, unsigned upper, unsigned lower, unsigned addional)
 {
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
