Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OMFLu-0001m2-Nt
	for barebox@lists.infradead.org; Wed, 09 Jun 2010 07:05:31 +0000
From: Baruch Siach <baruch@tkos.co.il>
Date: Wed,  9 Jun 2010 10:05:05 +0300
Message-Id: <a2ce7c2796ea62c9ff75eeb6e72a8a36c2675337.1276065824.git.baruch@tkos.co.il>
In-Reply-To: <cover.1276065824.git.baruch@tkos.co.il>
References: <cover.1276065824.git.baruch@tkos.co.il>
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
Subject: [PATCH 6/8] mx25 3ds: add support for i2c master and PMIC
To: barebox@lists.infradead.org
Cc: Baruch Siach <baruch@tkos.co.il>

Signed-off-by: Baruch Siach <baruch@tkos.co.il>
---
 board/freescale-mx25-3-stack/3stack.c |   18 ++++++++++++++++++
 1 files changed, 18 insertions(+), 0 deletions(-)

diff --git a/board/freescale-mx25-3-stack/3stack.c b/board/freescale-mx25-3-stack/3stack.c
index 6659185..316a2bc 100644
--- a/board/freescale-mx25-3-stack/3stack.c
+++ b/board/freescale-mx25-3-stack/3stack.c
@@ -36,6 +36,8 @@
 #include <nand.h>
 #include <mach/imx-flash-header.h>
 #include <mach/iomux-mx25.h>
+#include <i2c/i2c.h>
+#include <i2c/mc34704.h>
 
 extern unsigned long _stext;
 
@@ -183,8 +185,18 @@ static struct device_d usbh2_dev = {
 };
 #endif
 
+static struct i2c_board_info i2c_devices[] = {
+	{
+		I2C_BOARD_INFO("mc34704", 0x54),
+	},
+};
 #define IOMUXC_BASE_ADDR        0x43FAC000
 
+static struct device_d i2c_dev = {
+	.name     = "i2c-imx",
+	.map_base = IMX_I2C1_BASE,
+};
+
 static int imx25_devices_init(void)
 {
 	ulong val;
@@ -256,6 +268,9 @@ static int imx25_devices_init(void)
 	register_device(&sdram0_dev);
 	register_device(&sram0_dev);
 
+	i2c_register_board_info(0, i2c_devices, ARRAY_SIZE(i2c_devices));
+	register_device(&i2c_dev);
+
 	armlinux_set_bootparams((void *)0x80000100);
 	armlinux_set_architecture(MACH_TYPE_MX25_3DS);
 
@@ -303,6 +318,9 @@ static struct pad_desc imx25_pads[] = {
 	MX25_PAD_VSYNC__USBH2_DATA5,
 	MX25_PAD_LSCLK__USBH2_DATA6,
 	MX25_PAD_OE_ACD__USBH2_DATA7,
+	/* i2c */
+	MX25_PAD_I2C1_CLK__SCL,
+	MX25_PAD_I2C1_DAT__SDA,
 };
 
 static int imx25_console_init(void)
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
