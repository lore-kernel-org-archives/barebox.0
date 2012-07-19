Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1.mail.ru ([94.100.176.129])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Srsgb-0004q2-SW
 for barebox@lists.infradead.org; Thu, 19 Jul 2012 15:30:46 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Thu, 19 Jul 2012 19:30:16 +0400
Message-Id: <1342711817-866-5-git-send-email-shc_work@mail.ru>
In-Reply-To: <1342711817-866-1-git-send-email-shc_work@mail.ru>
References: <1342711817-866-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 5/6] PCM970: Add MMC support
To: barebox@lists.infradead.org

Here is a test output:

barebox 2012.07.0-00136-ge3ab4bc-dirty #23 Tue Jul 3 23:10:44 MSK 2012
Board: Phytec phyCORE-i.MX27
mc13xxx-spi@mc13xxx-spi0: Found MC13783 ID: 0x00009b [Rev: 3.1]
cfi_flash@cfi_flash0: found cfi flash at c0000000, size 33554432
NAND device: Manufacturer ID: 0x20, Chip ID: 0x36 (ST Micro NAND 64MiB 1,8V 8-bit)
Bad block table found at page 131040, version 0x01
Bad block table found at page 131008, version 0x01
imxfb@imxfb0: i.MX Framebuffer driver
cfi_protect: protect 0xc0080000 (size 1048576)
Using environment in NOR Flash
Found NXP ISP150x ULPI transceiver (0x04cc:0x1504).
ehci@ehci0: USB EHCI 1.00
imx-mmc@mci0: registered as mci0
Malloc space: 0xa6f00000 -> 0xa7efffff (size 16 MB)
Stack space : 0xa6ef8000 -> 0xa6f00000 (size 32 kB)
running /env/bin/init...

Hit m for menu or any other key to stop autoboot:  3

type exit to get to the menu
barebox@Phytec phyCORE-i.MX27:/ mci0.probe=1
mci@mci0: registered disk0
barebox@Phytec phyCORE-i.MX27:/ devinfo mci0
resources:
driver: mci

 Card:
 Attached is an SD Card (Version: 1.10)
 Capacity: 1962 MiB
  CID: 1C535653-44432020-1000013C-7E007200
  CSD: 005E0032-5F5A83D5-2DB7FFBF-96800000
 Max. transfer speed: 25000000 Hz
 Manufacturer ID: 1C
 OEM/Application ID: 5356
 Product name: 'SDC  '
 Product revision: 1.0
 Serial no: 81022
 Manufacturing date: 2.2007
 Parameters:
            probe = 1
barebox@Phytec phyCORE-i.MX27:/ mkdir /d
barebox@Phytec phyCORE-i.MX27:/ mount /dev/disk0.0 fat /d
barebox@Phytec phyCORE-i.MX27:/ ls /d
barebox.bin
barebox@Phytec phyCORE-i.MX27:/

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/pcm038/pcm038.c |   16 ++++++++++++++++
 arch/arm/boards/pcm038/pcm970.c |   24 ++++++++++++++++++++++++
 2 files changed, 40 insertions(+), 0 deletions(-)

diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
index 875081b..5b0afc3 100644
--- a/arch/arm/boards/pcm038/pcm038.c
+++ b/arch/arm/boards/pcm038/pcm038.c
@@ -145,6 +145,22 @@ static int pcm038_power_init(void)
 				MC13783_SW1B_SOFTSTART |
 				MC13783_SW_PLL_FACTOR(32));
 
+			/* Setup VMMC voltage */
+			if (IS_ENABLED(CONFIG_MCI_IMX)) {
+				u32 val;
+
+				mc13xxx_reg_read(mc13xxx, MC13783_REG_REG_SETTING(1), &val);
+				/* VMMC1 = 3.00 V */
+				val &= ~(7 << 6);
+				val |= 6 << 6;
+				mc13xxx_reg_write(mc13xxx, MC13783_REG_REG_SETTING(1), val);
+
+				mc13xxx_reg_read(mc13xxx, MC13783_REG_REG_MODE(1), &val);
+				/* Enable VMMC1 */
+				val |= 1 << 18;
+				mc13xxx_reg_write(mc13xxx, MC13783_REG_REG_MODE(1), val);
+			}
+
 			/* wait for required power level to run the CPU at 400 MHz */
 			udelay(100000);
 			CSCR = CSCR_VAL_FINAL;
diff --git a/arch/arm/boards/pcm038/pcm970.c b/arch/arm/boards/pcm038/pcm970.c
index df9b852..b956482 100644
--- a/arch/arm/boards/pcm038/pcm970.c
+++ b/arch/arm/boards/pcm038/pcm970.c
@@ -23,6 +23,7 @@
 #include <mach/imx-regs.h>
 #include <mach/iomux-mx27.h>
 #include <mach/gpio.h>
+#include <mach/devices-imx27.h>
 #include <usb/ulpi.h>
 
 #define GPIO_IDE_POWER	(GPIO_PORTE + 18)
@@ -148,6 +149,26 @@ static void pcm970_ide_init(void)
 }
 #endif
 
+static void pcm970_mmc_init(void)
+{
+	uint32_t i;
+	unsigned int mode[] = {
+		/* SD2 */
+		PB4_PF_SD2_D0,
+		PB5_PF_SD2_D1,
+		PB6_PF_SD2_D2,
+		PB7_PF_SD2_D3,
+		PB8_PF_SD2_CMD,
+		PB9_PF_SD2_CLK,
+	};
+
+	for (i = 0; i < ARRAY_SIZE(mode); i++)
+		imx_gpio_mode(mode[i]);
+
+	PCCR0 |= PCCR0_SDHC2_EN;
+	imx27_add_mmc1(NULL);
+}
+
 static int pcm970_init(void)
 {
 	int i;
@@ -181,6 +202,9 @@ static int pcm970_init(void)
 	pcm970_ide_init();
 #endif
 
+	if (IS_ENABLED(CONFIG_MCI_IMX))
+		pcm970_mmc_init();
+
 	return 0;
 }
 
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
