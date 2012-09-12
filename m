Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TBtE9-00049l-MM
 for barebox@lists.infradead.org; Wed, 12 Sep 2012 20:08:02 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 12 Sep 2012 22:06:46 +0200
Message-Id: <1347480407-16865-15-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1347480407-16865-1-git-send-email-s.hauer@pengutronix.de>
References: <1347480407-16865-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 14/15] ARM i.MX: add devicetree support for gpio driver
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/gpio.c |   39 ++++++++++++++++++++++++++++++++++++++-
 1 file changed, 38 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/gpio.c b/arch/arm/mach-imx/gpio.c
index b7426fe..df0b455 100644
--- a/arch/arm/mach-imx/gpio.c
+++ b/arch/arm/mach-imx/gpio.c
@@ -136,7 +136,13 @@ static int imx_gpio_probe(struct device_d *dev)
 	imxgpio = xzalloc(sizeof(*imxgpio));
 	imxgpio->base = dev_request_mem_region(dev, 0);
 	imxgpio->chip.ops = &imx_gpio_ops;
-	imxgpio->chip.base = -1;
+	if (dev->id < 0) {
+		imxgpio->chip.base = of_alias_get_id(dev->device_node, "gpio");
+		if (imxgpio->chip.base < 0)
+			return imxgpio->chip.base;
+	} else {
+		imxgpio->chip.base = dev->id * 32;
+	}
 	imxgpio->chip.ngpio = 32;
 	imxgpio->chip.dev = dev;
 	imxgpio->regs = regs;
@@ -147,6 +153,36 @@ static int imx_gpio_probe(struct device_d *dev)
 	return 0;
 }
 
+static __maybe_unused struct of_device_id imx_gpio_dt_ids[] = {
+	{
+		.compatible = "fsl,imx1-gpio",
+		.data = (unsigned long)&regs_imx1,
+	}, {
+		.compatible = "fsl,imx21-gpio",
+		.data = (unsigned long)&regs_imx1,
+	}, {
+		.compatible = "fsl,imx27-gpio",
+		.data = (unsigned long)&regs_imx1,
+	}, {
+		.compatible = "fsl,imx31-gpio",
+		.data = (unsigned long)&regs_imx31,
+	}, {
+		.compatible = "fsl,imx35-gpio",
+		.data = (unsigned long)&regs_imx31,
+	}, {
+		.compatible = "fsl,imx51-gpio",
+		.data = (unsigned long)&regs_imx31,
+	}, {
+		.compatible = "fsl,imx53-gpio",
+		.data = (unsigned long)&regs_imx31,
+	}, {
+		.compatible = "fsl,imx6q-gpio",
+		.data = (unsigned long)&regs_imx31,
+	}, {
+		/* sentinel */
+	}
+};
+
 static struct platform_device_id imx_gpio_ids[] = {
 	{
 		.name = "imx1-gpio",
@@ -162,6 +198,7 @@ static struct platform_device_id imx_gpio_ids[] = {
 static struct driver_d imx_gpio_driver = {
 	.name = "imx-gpio",
 	.probe = imx_gpio_probe,
+	.of_compatible = DRV_OF_COMPAT(imx_gpio_dt_ids),
 	.id_table = imx_gpio_ids,
 };
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
