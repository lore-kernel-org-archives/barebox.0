Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f6Wgh-0007x2-5u
 for barebox@lists.infradead.org; Thu, 12 Apr 2018 07:30:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 12 Apr 2018 09:30:08 +0200
Message-Id: <20180412073017.6750-8-s.hauer@pengutronix.de>
In-Reply-To: <20180412073017.6750-1-s.hauer@pengutronix.de>
References: <20180412073017.6750-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/16] ARM: i.MX: phytec-som-imx6: phycore: Set BUCK mode to
 SYNC
To: Barebox List <barebox@lists.infradead.org>
Cc: Stefan Riedmueller <s.riedmueller@phytec.de>

From: Christian Hemp <c.hemp@phytec.de>

Set the BUCK mode for all BUCKS (1-4) from BUCK_MODE_AUTO to
BUCK_MODE_SYNC.  If the BUCKs are in BUCK_MODE_AUTO in very rare cases
it is possible that the BUCK goes in power down mode.

Signed-off-by: Christian Hemp <c.hemp@phytec.de>
Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
Signed-off-by: Christian Hemp <c.hemp@phytec.de>
---
 arch/arm/boards/phytec-som-imx6/board.c | 51 +++++++++++++++++++++++++++++++++
 1 file changed, 51 insertions(+)

diff --git a/arch/arm/boards/phytec-som-imx6/board.c b/arch/arm/boards/phytec-som-imx6/board.c
index 7b63ee0e0c..f9b6cf55cd 100644
--- a/arch/arm/boards/phytec-som-imx6/board.c
+++ b/arch/arm/boards/phytec-som-imx6/board.c
@@ -28,6 +28,7 @@
 #include <gpio.h>
 #include <init.h>
 #include <of.h>
+#include <i2c/i2c.h>
 #include <mach/bbu.h>
 #include <platform_data/eth-fec.h>
 #include <mfd/imx6q-iomuxc-gpr.h>
@@ -51,6 +52,14 @@
 
 #define MX6_PHYFLEX_ERR006282	IMX_GPIO_NR(2, 11)
 
+#define DA9062_I2C_ADDRESS		0x58
+
+#define DA9062_BUCK1_CFG		0x9e
+#define DA9062_BUCK2_CFG		0x9d
+#define DA9062_BUCK3_CFG		0xa0
+#define DA9062_BUCK4_CFG		0x9f
+#define DA9062_BUCKx_MODE_SYNCHRONOUS	(2 << 6)
+
 static void phyflex_err006282_workaround(void)
 {
 	/*
@@ -96,6 +105,45 @@ int ksz8081_phy_fixup(struct phy_device *phydev)
 	return 0;
 }
 
+static int phycore_da9062_setup_buck_mode(void)
+{
+	struct i2c_adapter *adapter = NULL;
+	struct i2c_client client;
+	unsigned char value;
+	int bus = 0;
+	int ret;
+
+	adapter = i2c_get_adapter(bus);
+	if (!adapter)
+		return -ENODEV;
+
+	client.adapter = adapter;
+	client.addr = DA9062_I2C_ADDRESS;
+
+	value = DA9062_BUCKx_MODE_SYNCHRONOUS;
+
+	ret = i2c_write_reg(&client, DA9062_BUCK1_CFG, &value, 1);
+	if (ret != 1)
+		goto err_out;
+
+	ret = i2c_write_reg(&client, DA9062_BUCK2_CFG, &value, 1);
+	if (ret != 1)
+		goto err_out;
+
+	ret = i2c_write_reg(&client, DA9062_BUCK3_CFG, &value, 1);
+	if (ret != 1)
+		goto err_out;
+
+	ret = i2c_write_reg(&client, DA9062_BUCK4_CFG, &value, 1);
+	if (ret != 1)
+		goto err_out;
+
+	return 0;
+
+err_out:
+	return ret;
+}
+
 static int physom_imx6_devices_init(void)
 {
 	int ret;
@@ -127,6 +175,9 @@ static int physom_imx6_devices_init(void)
 		|| of_machine_is_compatible("phytec,imx6dl-pcm058-nand")
 		|| of_machine_is_compatible("phytec,imx6dl-pcm058-emmc")) {
 
+		if (phycore_da9062_setup_buck_mode())
+			pr_err("Setting PMIC BUCK mode failed\n");
+
 		barebox_set_hostname("phyCORE-i.MX6");
 		default_environment_path = "/chosen/environment-spinor";
 		default_envdev = "SPI NOR flash";
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
