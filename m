Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dTOFh-0003TE-9v
 for barebox@lists.infradead.org; Fri, 07 Jul 2017 08:04:40 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Fri,  7 Jul 2017 10:04:01 +0200
Message-Id: <20170707080401.2785-4-o.rempel@pengutronix.de>
In-Reply-To: <20170707080401.2785-1-o.rempel@pengutronix.de>
References: <20170707080401.2785-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v2 3/3] regulator: pfuze: provide power over standby handler
To: barebox@lists.infradead.org, l.stach@pengutronix.de
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

This patch is providing an optional power off handler
which will configure standby state of the PMIC to disable all power lines.

In my power consumption test on RIoTBoard, I got the following results:
power off without this patch:   320 mA
power off with this patch:      2   mA

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/regulator/Kconfig |  1 +
 drivers/regulator/pfuze.c | 67 +++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 68 insertions(+)

diff --git a/drivers/regulator/Kconfig b/drivers/regulator/Kconfig
index 6a6c6d2248..92db8dc0e0 100644
--- a/drivers/regulator/Kconfig
+++ b/drivers/regulator/Kconfig
@@ -19,5 +19,6 @@ config REGULATOR_BCM283X
 config REGULATOR_PFUZE
 	bool "Freescale PFUZE100/200/3000 regulator driver"
 	depends on I2C
+	depends on ARCH_IMX6
 
 endif
diff --git a/drivers/regulator/pfuze.c b/drivers/regulator/pfuze.c
index 2a5fb715ce..dc41e8f55b 100644
--- a/drivers/regulator/pfuze.c
+++ b/drivers/regulator/pfuze.c
@@ -26,10 +26,33 @@
 
 #include <i2c/i2c.h>
 
+#include <poweroff.h>
+#include <mach/imx6.h>
+
 #define DRIVERNAME		"pfuze"
 
 #define MC13XXX_NUMREGS		0x3f
 
+#define PFUZE100_SW1ABMODE	0x23
+#define PFUZE100_SW1CMODE	0x31
+#define PFUZE100_SW2MODE	0x38
+#define PFUZE100_SW3AMODE	0x3f
+#define PFUZE100_SW3BMODE	0x46
+#define PFUZE100_SW4MODE	0x4d
+#define PFUZE100_VGEN1VOL	0x6c
+#define PFUZE100_VGEN2VOL	0x6d
+#define PFUZE100_VGEN3VOL	0x6e
+#define PFUZE100_VGEN4VOL	0x6f
+#define PFUZE100_VGEN5VOL	0x70
+#define PFUZE100_VGEN6VOL	0x71
+
+#define PFUZE100_SWxMODE_MASK	0xf
+#define PFUZE100_SWxMODE_APS_APS	0x8
+#define PFUZE100_SWxMODE_APS_OFF	0x4
+
+#define PFUZE100_VGENxLPWR	BIT(6)
+#define PFUZE100_VGENxSTBY	BIT(5)
+
 struct pfuze {
 	struct device_d			*dev;
 	struct regmap			*map;
@@ -85,6 +108,46 @@ static int pfuze_i2c_reg_write(void *ctx, unsigned int reg, unsigned int val)
 	return ret == 1 ? 0 : ret;
 }
 
+static void pfuze_power_off_prepare(struct poweroff_handler *handler)
+{
+	dev_info(pfuze_dev->dev, "Configure standy mode for power off");
+
+	/* Switch from default mode: APS/APS to APS/Off */
+	regmap_write_bits(pfuze_dev->map, PFUZE100_SW1ABMODE,
+			  PFUZE100_SWxMODE_MASK, PFUZE100_SWxMODE_APS_OFF);
+	regmap_write_bits(pfuze_dev->map, PFUZE100_SW1CMODE,
+			  PFUZE100_SWxMODE_MASK, PFUZE100_SWxMODE_APS_OFF);
+	regmap_write_bits(pfuze_dev->map, PFUZE100_SW2MODE,
+			  PFUZE100_SWxMODE_MASK, PFUZE100_SWxMODE_APS_OFF);
+	regmap_write_bits(pfuze_dev->map, PFUZE100_SW3AMODE,
+			  PFUZE100_SWxMODE_MASK, PFUZE100_SWxMODE_APS_OFF);
+	regmap_write_bits(pfuze_dev->map, PFUZE100_SW3BMODE,
+			  PFUZE100_SWxMODE_MASK, PFUZE100_SWxMODE_APS_OFF);
+	regmap_write_bits(pfuze_dev->map, PFUZE100_SW4MODE,
+			  PFUZE100_SWxMODE_MASK, PFUZE100_SWxMODE_APS_OFF);
+
+	regmap_write_bits(pfuze_dev->map, PFUZE100_VGEN1VOL,
+			  PFUZE100_VGENxLPWR | PFUZE100_VGENxSTBY,
+			  PFUZE100_VGENxSTBY);
+	regmap_write_bits(pfuze_dev->map, PFUZE100_VGEN2VOL,
+			  PFUZE100_VGENxLPWR | PFUZE100_VGENxSTBY,
+			  PFUZE100_VGENxSTBY);
+	regmap_write_bits(pfuze_dev->map, PFUZE100_VGEN3VOL,
+			  PFUZE100_VGENxLPWR | PFUZE100_VGENxSTBY,
+			  PFUZE100_VGENxSTBY);
+	regmap_write_bits(pfuze_dev->map, PFUZE100_VGEN4VOL,
+			  PFUZE100_VGENxLPWR | PFUZE100_VGENxSTBY,
+			  PFUZE100_VGENxSTBY);
+	regmap_write_bits(pfuze_dev->map, PFUZE100_VGEN5VOL,
+			  PFUZE100_VGENxLPWR | PFUZE100_VGENxSTBY,
+			  PFUZE100_VGENxSTBY);
+	regmap_write_bits(pfuze_dev->map, PFUZE100_VGEN6VOL,
+			  PFUZE100_VGENxLPWR | PFUZE100_VGENxSTBY,
+			  PFUZE100_VGENxSTBY);
+
+	imx6_pm_stby_poweroff();
+}
+
 static struct regmap_bus regmap_pfuze_i2c_bus = {
 	.reg_write = pfuze_i2c_reg_write,
 	.reg_read = pfuze_i2c_reg_read,
@@ -122,6 +185,10 @@ static int __init pfuze_probe(struct device_d *dev)
 	if (pfuze_init_callback)
 		pfuze_init_callback(pfuze_dev->map);
 
+	if (of_property_read_bool(dev->device_node,
+				  "fsl,pmic-stby-poweroff"))
+		return poweroff_handler_register_fn(pfuze_power_off_prepare);
+
 	return 0;
 }
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
