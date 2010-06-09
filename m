Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OMFLw-0001nc-Ac
	for barebox@lists.infradead.org; Wed, 09 Jun 2010 07:05:33 +0000
From: Baruch Siach <baruch@tkos.co.il>
Date: Wed,  9 Jun 2010 10:05:06 +0300
Message-Id: <0c6a2352b19406feb0fbf814962d53325d973164.1276065824.git.baruch@tkos.co.il>
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
Subject: [PATCH 7/8] mx25 3ds: fix fec initialization
To: barebox@lists.infradead.org
Cc: Baruch Siach <baruch@tkos.co.il>

The fec network interface initialization depends on the initialization of the
PMIC. Once the MC34704 driver is registered we can enable the PHY power supply,
and go on with the PHY initialization.

While we are at it convert the hard-coded GPIO registers access to the general
GPIO API for shorter and clearer code.

Signed-off-by: Baruch Siach <baruch@tkos.co.il>
---
 board/freescale-mx25-3-stack/3stack.c |   63 +++++++++++++++++----------------
 1 files changed, 32 insertions(+), 31 deletions(-)

diff --git a/board/freescale-mx25-3-stack/3stack.c b/board/freescale-mx25-3-stack/3stack.c
index 316a2bc..a657a47 100644
--- a/board/freescale-mx25-3-stack/3stack.c
+++ b/board/freescale-mx25-3-stack/3stack.c
@@ -36,6 +36,7 @@
 #include <nand.h>
 #include <mach/imx-flash-header.h>
 #include <mach/iomux-mx25.h>
+#include <linux/err.h>
 #include <i2c/i2c.h>
 #include <i2c/mc34704.h>
 
@@ -190,16 +191,30 @@ static struct i2c_board_info i2c_devices[] = {
 		I2C_BOARD_INFO("mc34704", 0x54),
 	},
 };
-#define IOMUXC_BASE_ADDR        0x43FAC000
 
 static struct device_d i2c_dev = {
 	.name     = "i2c-imx",
 	.map_base = IMX_I2C1_BASE,
 };
 
-static int imx25_devices_init(void)
+static int imx25_3ds_pmic_init(void)
+{
+	struct mc34704 *pmic;
+
+	pmic = mc34704_get();
+	if (pmic == NULL)
+		return -EIO;
+
+	return mc34704_reg_write(pmic, 0x2, 0x9);
+}
+
+static int imx25_3ds_fec_init(void)
 {
-	ulong val;
+	int ret;
+
+	ret = imx25_3ds_pmic_init();
+	if (ret < 0)
+		return ret;
 
 	/*
 	 * Set up the FEC_RESET_B and FEC_ENABLE GPIO pins.
@@ -209,36 +224,27 @@ static int imx25_devices_init(void)
 	 * FEC_RESET_B: gpio2[3] is ALT 5 mode of pin A17
 	 * FEC_ENABLE_B: gpio4[8] is ALT 5 mode of pin D12
 	 */
-	writel(0x8, IOMUXC_BASE_ADDR + 0x0238); /* open drain */
-	writel(0x0, IOMUXC_BASE_ADDR + 0x028C); /* cmos, no pu/pd */
+	writel(0x8, IMX_IOMUXC_BASE + 0x0238); /* open drain */
+	writel(0x0, IMX_IOMUXC_BASE + 0x028C); /* cmos, no pu/pd */
 
-#define GPIO2_BASE_ADDR         0x53FD0000
-#define GPIO4_BASE_ADDR         0x53F9C000
-#define GPIO_GDIR               0x04
-#define GPIO_DR                 0x00
+#define FEC_ENABLE_GPIO		35
+#define FEC_RESET_B_GPIO	104
 
 	/* make the pins output */
-	val = (1 << 3) | readl(GPIO2_BASE_ADDR + GPIO_GDIR);
-	writel(val, GPIO2_BASE_ADDR + GPIO_GDIR);
-
-	val = (1 << 8) | readl(GPIO4_BASE_ADDR + GPIO_GDIR);
-	writel(val, GPIO4_BASE_ADDR + GPIO_GDIR);
-
-	/* drop PHY power */
-	val = readl(GPIO2_BASE_ADDR + GPIO_DR) & ~(1 << 3);
-	writel(val, GPIO2_BASE_ADDR + GPIO_DR);
-
-	/* assert reset */
-	val = readl(GPIO4_BASE_ADDR + GPIO_DR) & ~(1 << 8);
-	writel(val, GPIO4_BASE_ADDR + GPIO_DR);
+	gpio_direction_output(FEC_ENABLE_GPIO, 0);  /* drop PHY power */
+	gpio_direction_output(FEC_RESET_B_GPIO, 0); /* assert reset */
 	udelay(2);
 
 	/* turn on power & lift reset */
-	val = (1 << 3) | readl(GPIO2_BASE_ADDR + GPIO_DR);
-	writel(val, GPIO2_BASE_ADDR + GPIO_DR);
-	val = (1 << 8) | readl(GPIO4_BASE_ADDR + GPIO_DR);
-	writel(val, GPIO4_BASE_ADDR + GPIO_DR);
+	gpio_set_value(FEC_ENABLE_GPIO, 1);
+	gpio_set_value(FEC_RESET_B_GPIO, 1);
+
+	return 0;
+}
+late_initcall(imx25_3ds_fec_init);
 
+static int imx25_devices_init(void)
+{
 #ifdef CONFIG_USB
 	/* USB does not work yet. Don't know why. Maybe
 	 * the CPLD has to be initialized.
@@ -247,11 +253,6 @@ static int imx25_devices_init(void)
 	register_device(&usbh2_dev);
 #endif
 
-	/* FEC does only work when the CPLD is initialized.
-	 * Currently we do not do this in barebox, so it
-	 * does only work when Linux has been started after
-	 * the last powercycle.
-	 */
 	register_device(&fec_dev);
 
 	if (readl(IMX_CCM_BASE + CCM_RCSR) & (1 << 14))
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
