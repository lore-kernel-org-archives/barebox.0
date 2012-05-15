Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp28.mail.ru ([94.100.176.181])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SUMms-0005mB-E5
 for barebox@lists.infradead.org; Tue, 15 May 2012 18:48:00 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Tue, 15 May 2012 22:47:54 +0400
Message-Id: <1337107674-9733-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH] PCM970: Added support for CompactFlash
To: barebox@lists.infradead.org

Added support for CompactFlash cards for PCM970 development board via
PCMCIA window. Directly we cannot use this feature, because some signals
connects to i.MX pins which cannot be configured as GPIO. This is first
try to make this interface works, so comments are welcome.

Test output:
barebox 2012.04.0-00362-gfe020d1-dirty #3 Tue May 15 22:34:45 MSK 2012
Board: Phytec phyCORE-i.MX27
registered netconsole as cs1
mc13xxx-spi@mc13xxx-spi0: Found MC13783 ID: 0x00009b [Rev: 3.1]
cfi_flash@cfi_flash0: found cfi flash at c0000000, size 33554432
NAND device: Manufacturer ID: 0x20, Chip ID: 0x36 (ST Micro NAND 64MiB 1,8V 8-bit)
Bad block table found at page 131040, version 0x01
Bad block table found at page 131008, version 0x01
cfi_protect: protect 0xc0080000 (size 1048576)
Using environment in NOR Flash
Found NXP ISP150x ULPI transceiver (0x04cc:0x1504).
ehci@ehci0: USB EHCI 1.00
S/N: SP3A0426041124000132
Firmware version: 04/05/06
Product model number: SAMSUNG CF/ATA
Capablity: 2041200 sectors
id[49]: capabilities = 0x0200
id[53]: field valid = 0x0001
id[63]: mwdma = 0x0000
id[64]: pio = 0x0000
id[75]: queue depth = 0x0000
id[76]: sata capablity = 0x0000
id[78]: sata features supported = 0x0000
id[79]: sata features enable = 0x0000
id[80]: major version = 0x0000
id[81]: minor version = 0x0000
id[82]: command set supported 1 = 0x0000
id[83]: command set supported 2 = 0x0000
id[84]: command set extension = 0x0000
id[85]: command set enable 1 = 0x0000
id[86]: command set enable 2 = 0x0000
id[87]: command set default = 0x0000
id[88]: udma = 0x0000
id[93]: hardware reset result = 0x0000
Malloc space: 0xa6f00000 -> 0xa7efffff (size 16 MB)
Stack space : 0xa6ef8000 -> 0xa6f00000 (size 32 kB)
envfs: wrong magic on /dev/env0
no valid environment found on /dev/env0. Using default environment
running /env/bin/init...

Hit any key to stop autoboot:  3
barebox@Phytec phyCORE-i.MX27:/ mkdir /d
barebox@Phytec phyCORE-i.MX27:/ mount /dev/disk0.0 fat /d
barebox@Phytec phyCORE-i.MX27:/ ls /d
test.txt
barebox@Phytec phyCORE-i.MX27:/

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/pcm038/pcm970.c             |  107 +++++++++++++++++++++++++++
 arch/arm/mach-imx/include/mach/imx27-regs.h |   13 +++
 2 files changed, 120 insertions(+), 0 deletions(-)

diff --git a/arch/arm/boards/pcm038/pcm970.c b/arch/arm/boards/pcm038/pcm970.c
index cd80677..eb517ea 100644
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
+	PCMCIA_PSCR = 0x00000fff;
+	mdelay(10);
+
+	/* Check PCMCIA Input Pins Register for Card Detect & Power */
+	if ((PCMCIA_PIPR & ((1 << 8) | (3 << 3))) != (1 << 8)) {
+		printf("CompactFlash card not found. Driver not enabled.\n");
+		return;
+	}
+
+	/* Disable all interrupts */
+	PCMCIA_PER = 0;
+
+	/* Disable all PCMCIA banks */
+	for (i = 0; i < 5; i++)
+		PCMCIA_POR(i) = 0;
+
+	/* Not use internal PCOE */
+	PCMCIA_PGCR = 0;
+
+	/* Setup PCMCIA bank0 for Common memory mode */
+	PCMCIA_PBR(0) = 0;
+	PCMCIA_POFR(0) = 0;
+	PCMCIA_POR(0) = (0 << 25) | (17 << 17) | (4 << 11) | (3 << 5) | 0xf;
+
+	/* Clear PCMCIA General Status Register */
+	PCMCIA_PGSR = 0x0000001f;
+
+	/* Make PCMCIA bank0 valid */
+	PCMCIA_POR(0) |= 1 << 29;
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
index 437cc7d..5690869 100644
--- a/arch/arm/mach-imx/include/mach/imx27-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx27-regs.h
@@ -41,6 +41,17 @@
 #define IMX_NFC_BASE               (0xd8000000)
 #define IMX_ESD_BASE               (0xd8001000)
 #define IMX_WEIM_BASE              (0xd8002000)
+#define IMX_M3IF_BASE		(0xd8003000)
+#define IMX_PCMCIA_CTL_BASE	(0xd8004000)
+
+#define PCMCIA_PIPR		__REG(IMX_PCMCIA_CTL_BASE + 0x00)
+#define PCMCIA_PSCR		__REG(IMX_PCMCIA_CTL_BASE + 0x04)
+#define PCMCIA_PER		__REG(IMX_PCMCIA_CTL_BASE + 0x08)
+#define PCMCIA_PBR(x)		__REG(IMX_PCMCIA_CTL_BASE + 0x0c + ((x) << 2))
+#define PCMCIA_POR(x)		__REG(IMX_PCMCIA_CTL_BASE + 0x28 + ((x) << 2))
+#define PCMCIA_POFR(x)		__REG(IMX_PCMCIA_CTL_BASE + 0x44 + ((x) << 2))
+#define PCMCIA_PGCR		__REG(IMX_PCMCIA_CTL_BASE + 0x60)
+#define PCMCIA_PGSR		__REG(IMX_PCMCIA_CTL_BASE + 0x64)
 
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
