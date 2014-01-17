Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1W4Axo-00047l-Dq
 for barebox@lists.infradead.org; Fri, 17 Jan 2014 15:04:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 17 Jan 2014 16:03:25 +0100
Message-Id: <1389971012-22977-16-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1389971012-22977-1-git-send-email-s.hauer@pengutronix.de>
References: <1389971012-22977-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 15/22] pinctrl: Add pinctrl driver for i.MX1/21/27
To: barebox@lists.infradead.org

This turns the legacy iomux-v1 support into a full pinctrl
driver.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/pinctrl/Kconfig        |   1 +
 drivers/pinctrl/imx-iomux-v1.c | 198 +++++++++++++++++++++++++++++++++++++++++
 2 files changed, 199 insertions(+)

diff --git a/drivers/pinctrl/Kconfig b/drivers/pinctrl/Kconfig
index c6bb51c..7390971 100644
--- a/drivers/pinctrl/Kconfig
+++ b/drivers/pinctrl/Kconfig
@@ -8,6 +8,7 @@ config PINCTRL
 	  support but instead provide their own SoC specific APIs
 
 config PINCTRL_IMX_IOMUX_V1
+	select PINCTRL if OFDEVICE
 	bool
 	help
 	  This iomux controller is found on i.MX1,21,27.
diff --git a/drivers/pinctrl/imx-iomux-v1.c b/drivers/pinctrl/imx-iomux-v1.c
index f8f9061..16415c2 100644
--- a/drivers/pinctrl/imx-iomux-v1.c
+++ b/drivers/pinctrl/imx-iomux-v1.c
@@ -1,5 +1,8 @@
 #include <common.h>
 #include <io.h>
+#include <init.h>
+#include <malloc.h>
+#include <pinctrl.h>
 #include <mach/iomux-v1.h>
 
 /*
@@ -29,6 +32,11 @@
 
 static void __iomem *iomuxv1_base;
 
+struct imx_iomux_v1 {
+	void __iomem *base;
+	struct pinctrl_device pinctrl;
+};
+
 void imx_gpio_mode(int gpio_mode)
 {
 	unsigned int pin = gpio_mode & GPIO_PIN_MASK;
@@ -114,3 +122,193 @@ void imx_iomuxv1_init(void __iomem *base)
 {
 	iomuxv1_base = base;
 }
+
+/*
+ * MUX_ID format defines
+ */
+#define MX1_MUX_FUNCTION(val) (BIT(0) & val)
+#define MX1_MUX_GPIO(val) ((BIT(1) & val) >> 1)
+#define MX1_MUX_DIR(val) ((BIT(2) & val) >> 2)
+#define MX1_MUX_OCONF(val) (((BIT(4) | BIT(5)) & val) >> 4)
+#define MX1_MUX_ICONFA(val) (((BIT(8) | BIT(9)) & val) >> 8)
+#define MX1_MUX_ICONFB(val) (((BIT(10) | BIT(11)) & val) >> 10)
+
+#define MX1_PORT_STRIDE 0x100
+
+/*
+ * IMX1 IOMUXC manages the pins based on ports. Each port has 32 pins. IOMUX
+ * control register are seperated into function, output configuration, input
+ * configuration A, input configuration B, GPIO in use and data direction.
+ *
+ * Those controls that are represented by 1 bit have a direct mapping between
+ * bit position and pin id. If they are represented by 2 bit, the lower 16 pins
+ * are in the first register and the upper 16 pins in the second (next)
+ * register. pin_id is stored in bit (pin_id%16)*2 and the bit above.
+ */
+
+/*
+ * Calculates the register offset from a pin_id
+ */
+static void __iomem *imx1_mem(struct imx_iomux_v1 *iomux, unsigned int pin_id)
+{
+	unsigned int port = pin_id / 32;
+	return iomux->base + port * MX1_PORT_STRIDE;
+}
+
+/*
+ * Write to a register with 2 bits per pin. The function will automatically
+ * use the next register if the pin is managed in the second register.
+ */
+static void imx1_write_2bit(struct imx_iomux_v1 *iomux, unsigned int pin_id,
+		u32 value, u32 reg_offset)
+{
+	void __iomem *reg = imx1_mem(iomux, pin_id) + reg_offset;
+	int offset = (pin_id % 16) * 2; /* offset, regardless of register used */
+	int mask = ~(0x3 << offset); /* Mask for 2 bits at offset */
+	u32 old_val;
+	u32 new_val;
+
+	dev_dbg(iomux->pinctrl.dev, "write: register 0x%p offset %d value 0x%x\n",
+			reg, offset, value);
+
+	/* Use the next register if the pin's port pin number is >=16 */
+	if (pin_id % 32 >= 16)
+		reg += 0x04;
+
+	/* Get current state of pins */
+	old_val = readl(reg);
+	old_val &= mask;
+
+	new_val = value & 0x3; /* Make sure value is really 2 bit */
+	new_val <<= offset;
+	new_val |= old_val;/* Set new state for pin_id */
+
+	writel(new_val, reg);
+}
+
+static void imx1_write_bit(struct imx_iomux_v1 *iomux, unsigned int pin_id,
+		u32 value, u32 reg_offset)
+{
+	void __iomem *reg = imx1_mem(iomux, pin_id) + reg_offset;
+	int offset = pin_id % 32;
+	int mask = ~BIT_MASK(offset);
+	u32 old_val;
+	u32 new_val;
+
+	/* Get current state of pins */
+	old_val = readl(reg);
+	old_val &= mask;
+
+	new_val = value & 0x1; /* Make sure value is really 1 bit */
+	new_val <<= offset;
+	new_val |= old_val;/* Set new state for pin_id */
+
+	writel(new_val, reg);
+}
+
+static int imx_iomux_v1_set_state(struct pinctrl_device *pdev, struct device_node *np)
+{
+	struct imx_iomux_v1 *iomux = container_of(pdev, struct imx_iomux_v1, pinctrl);
+	const __be32 *list;
+	int npins, size, i;
+
+	dev_dbg(iomux->pinctrl.dev, "set state: %s\n", np->full_name);
+
+	list = of_get_property(np, "fsl,pins", &size);
+	if (!list)
+		return -EINVAL;
+
+	npins = size / 12;
+
+	for (i = 0; i < npins; i++) {
+		unsigned int pin_id = be32_to_cpu(*list++);
+		unsigned int mux = be32_to_cpu(*list++);
+		unsigned int config = be32_to_cpu(*list++);
+		unsigned int afunction = MX1_MUX_FUNCTION(mux);
+		unsigned int gpio_in_use = MX1_MUX_GPIO(mux);
+		unsigned int direction = MX1_MUX_DIR(mux);
+		unsigned int gpio_oconf = MX1_MUX_OCONF(mux);
+		unsigned int gpio_iconfa = MX1_MUX_ICONFA(mux);
+		unsigned int gpio_iconfb = MX1_MUX_ICONFB(mux);
+
+		dev_dbg(pdev->dev, "%s, pin 0x%x, function %d, gpio %d, direction %d, oconf %d, iconfa %d, iconfb %d\n",
+				np->full_name, pin_id, afunction, gpio_in_use,
+				direction, gpio_oconf, gpio_iconfa,
+				gpio_iconfb);
+
+		imx1_write_bit(iomux, pin_id, gpio_in_use, GIUS);
+		imx1_write_bit(iomux, pin_id, direction, DDIR);
+
+		if (gpio_in_use) {
+			imx1_write_2bit(iomux, pin_id, gpio_oconf, OCR1);
+			imx1_write_2bit(iomux, pin_id, gpio_iconfa, ICONFA1);
+			imx1_write_2bit(iomux, pin_id, gpio_iconfb, ICONFB1);
+		} else {
+			imx1_write_bit(iomux, pin_id, afunction, GPR);
+		}
+
+		imx1_write_bit(iomux, pin_id, config & 0x01, PUEN);
+	}
+
+	return 0;
+}
+
+static struct pinctrl_ops imx_iomux_v1_ops = {
+	.set_state = imx_iomux_v1_set_state,
+};
+
+static int imx_pinctrl_dt(struct device_d *dev, void __iomem *base)
+{
+	struct imx_iomux_v1 *iomux;
+	int ret;
+
+	iomux = xzalloc(sizeof(*iomux));
+
+	iomux->base = base;
+
+	iomux->pinctrl.dev = dev;
+	iomux->pinctrl.ops = &imx_iomux_v1_ops;
+
+	ret = pinctrl_register(&iomux->pinctrl);
+	if (ret)
+		free(iomux);
+
+	return ret;
+}
+
+static int imx_iomux_v1_probe(struct device_d *dev)
+{
+	int ret = 0;
+
+	if (iomuxv1_base)
+		return -EBUSY;
+
+	iomuxv1_base = dev_get_mem_region(dev, 0);
+
+	ret = of_platform_populate(dev->device_node, NULL, NULL);
+
+	if (IS_ENABLED(CONFIG_PINCTRL) && dev->device_node)
+		ret = imx_pinctrl_dt(dev, iomuxv1_base);
+
+	return ret;
+}
+
+static __maybe_unused struct of_device_id imx_iomux_v1_dt_ids[] = {
+	{
+		.compatible = "fsl,imx27-iomuxc",
+	}, {
+		/* sentinel */
+	}
+};
+
+static struct driver_d imx_iomux_v1_driver = {
+	.name		= "imx-iomuxv1",
+	.probe		= imx_iomux_v1_probe,
+	.of_compatible	= DRV_OF_COMPAT(imx_iomux_v1_dt_ids),
+};
+
+static int imx_iomux_v1_init(void)
+{
+	return platform_driver_register(&imx_iomux_v1_driver);
+}
+postcore_initcall(imx_iomux_v1_init);
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
