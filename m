Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cnnDv-0002Cd-3C
 for barebox@lists.infradead.org; Tue, 14 Mar 2017 14:14:53 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 14 Mar 2017 15:14:26 +0100
Message-Id: <20170314141426.8418-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: i.MX: GuF Santaro: Detect and enable touch controller
To: Barebox List <barebox@lists.infradead.org>

The Santaro has two different possible Touchscreen controllers.
Both are on different I2C addresses.  Let's probe both of them
and enable in the device tree the one that's actually found on
the hardware.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/guf-santaro/board.c | 97 +++++++++++++++++++++++++++++++++++++
 1 file changed, 97 insertions(+)

diff --git a/arch/arm/boards/guf-santaro/board.c b/arch/arm/boards/guf-santaro/board.c
index b9a52ee258..2e8cd28b5b 100644
--- a/arch/arm/boards/guf-santaro/board.c
+++ b/arch/arm/boards/guf-santaro/board.c
@@ -11,6 +11,7 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  */
+#define pr_fmt(fmt) "Santaro: " fmt
 
 #include <common.h>
 #include <init.h>
@@ -25,6 +26,102 @@
 #include <bbu.h>
 #include <mach/bbu.h>
 #include <mach/imx6.h>
+#include <i2c/i2c.h>
+#include <gpio.h>
+
+static int i2c_device_present(struct i2c_adapter *adapter, int addr)
+{
+	struct i2c_client client = {};
+	u8 reg;
+
+	client.adapter = adapter;
+	client.addr = addr;
+
+	return i2c_write_reg(&client, 0x00, &reg, 0) < 0 ? false : true;
+}
+
+#define TOUCH_RESET_GPIO	IMX_GPIO_NR(1, 20)
+
+static int edt_present, egalax_present;
+
+static int santaro_touch_fixup(struct device_node *root, void *unused)
+{
+	struct device_node *i2cnp, *np;
+
+	i2cnp = of_find_node_by_alias(root, "i2c2");
+	if (!i2cnp) {
+		pr_err("Cannot find node i2c2\n");
+		return -EINVAL;
+	}
+
+	for_each_child_of_node(i2cnp, np) {
+		int present;
+
+		if (of_device_is_compatible(np, "edt,edt-ft5206"))
+			present = edt_present;
+		else if (of_device_is_compatible(np, "eeti,egalax_ts"))
+			present = egalax_present;
+		else
+			continue;
+
+		if (present)
+			of_device_enable(np);
+		else
+			of_device_disable(np);
+	}
+
+	return 0;
+}
+
+static int santaro_detect_touch(void)
+{
+	struct device_node *np;
+	struct i2c_adapter *adapter;
+	const char *model = NULL;
+
+	/*
+	 * The Santaro has two different possible Touchscreen
+	 * controllers. Both are on different I2C addresses.
+	 * Let's probe both of them and enable in the device tree
+	 * the one that's actually found on the hardware.
+	 */
+
+	np = of_find_node_by_alias(NULL, "i2c2");
+	if (!np) {
+		pr_err("Cannot find node i2c2\n");
+		return -EINVAL;
+	}
+
+	adapter = of_find_i2c_adapter_by_node(np);
+	if (!adapter) {
+		pr_err("Cannot find i2c2 adapter\n");
+		return -EINVAL;
+	}
+
+	gpio_direction_output(TOUCH_RESET_GPIO, 0);
+	mdelay(10);
+	gpio_set_value(TOUCH_RESET_GPIO, 1);
+	mdelay(10);
+
+	edt_present = i2c_device_present(adapter, 0x38);
+
+	gpio_set_value(TOUCH_RESET_GPIO, 0);
+	mdelay(10);
+
+	egalax_present = i2c_device_present(adapter, 0x4);
+
+	if (edt_present)
+		model = "edt,edt-ft5206";
+	if (egalax_present)
+		model = "eeti,egalax_ts";
+
+	pr_info("Found %s Touchscreen controller\n", model);
+
+	of_register_fixup(santaro_touch_fixup, NULL);
+
+	return 0;
+}
+late_initcall(santaro_detect_touch);
 
 static int santaro_device_init(void)
 {
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
