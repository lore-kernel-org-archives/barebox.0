Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gpOcW-000508-JR
 for barebox@lists.infradead.org; Fri, 01 Feb 2019 02:32:00 +0000
Received: by mail-pf1-x444.google.com with SMTP id i12so2405180pfo.7
 for <barebox@lists.infradead.org>; Thu, 31 Jan 2019 18:31:56 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 31 Jan 2019 18:31:27 -0800
Message-Id: <20190201023133.1078-10-andrew.smirnov@gmail.com>
In-Reply-To: <20190201023133.1078-1-andrew.smirnov@gmail.com>
References: <20190201023133.1078-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 09/15] reset: imx7: Add plubming to support multiple IP
 variants
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit cffaab878178c7842ab38690070d665adb3f41fd

  In order to enable supporting i.MX8MQ with this driver, convert it to
  expect variant specific bits to be passed via driver data.

  Cc: p.zabel@pengutronix.de
  Cc: Fabio Estevam <fabio.estevam@nxp.com>
  Cc: cphealy@gmail.com
  Cc: l.stach@pengutronix.de
  Cc: Leonard Crestez <leonard.crestez@nxp.com>
  Cc: "A.s. Dong" <aisheng.dong@nxp.com>
  Cc: Richard Zhu <hongxing.zhu@nxp.com>
  Cc: Rob Herring <robh@kernel.org>
  Cc: devicetree@vger.kernel.org
  Cc: linux-imx@nxp.com
  Cc: linux-arm-kernel@lists.infradead.org
  Cc: linux-kernel@vger.kernel.org
  Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/reset/reset-imx7.c | 50 +++++++++++++++++++++++++++-----------
 1 file changed, 36 insertions(+), 14 deletions(-)

diff --git a/drivers/reset/reset-imx7.c b/drivers/reset/reset-imx7.c
index 6dc5de16a..f723dc28e 100644
--- a/drivers/reset/reset-imx7.c
+++ b/drivers/reset/reset-imx7.c
@@ -22,10 +22,22 @@
 #include <linux/reset-controller.h>
 #include <mfd/syscon.h>
 #include <regmap.h>
+#include <of_device.h>
+
+struct imx7_src_signal {
+	unsigned int offset, bit;
+};
+
+struct imx7_src_variant {
+	const struct imx7_src_signal *signals;
+	unsigned int signals_num;
+	struct reset_control_ops ops;
+};
 
 struct imx7_src {
 	struct reset_controller_dev rcdev;
 	struct regmap *regmap;
+	const struct imx7_src_signal *signals;
 };
 
 enum imx7_src_registers {
@@ -40,9 +52,14 @@ enum imx7_src_registers {
 	SRC_DDRC_RCR		= 0x1000,
 };
 
-struct imx7_src_signal {
-	unsigned int offset, bit;
-};
+static int imx7_reset_update(struct imx7_src *imx7src,
+			     unsigned long id, unsigned int value)
+{
+	const struct imx7_src_signal *signal = &imx7src->signals[id];
+
+	return regmap_update_bits(imx7src->regmap,
+				  signal->offset, signal->bit, value);
+}
 
 static const struct imx7_src_signal imx7_src_signals[IMX7_RESET_NUM] = {
 	[IMX7_RESET_A7_CORE_POR_RESET0] = { SRC_A7RCR0, BIT(0) },
@@ -81,8 +98,8 @@ static int imx7_reset_set(struct reset_controller_dev *rcdev,
 			  unsigned long id, bool assert)
 {
 	struct imx7_src *imx7src = to_imx7_src(rcdev);
-	const struct imx7_src_signal *signal = &imx7_src_signals[id];
-	unsigned int value = assert ? signal->bit : 0;;
+	const unsigned int bit = imx7src->signals[id].bit;
+	unsigned int value = assert ? bit : 0;
 
 	switch (id) {
 	case IMX7_RESET_PCIEPHY:
@@ -95,12 +112,11 @@ static int imx7_reset_set(struct reset_controller_dev *rcdev,
 		break;
 
 	case IMX7_RESET_PCIE_CTRL_APPS_EN:
-		value = (assert) ? 0 : signal->bit;
+		value = assert ? 0 : bit;
 		break;
 	}
 
-	return regmap_update_bits(imx7src->regmap,
-				  signal->offset, signal->bit, value);
+	return imx7_reset_update(imx7src, id, value);
 }
 
 static int imx7_reset_assert(struct reset_controller_dev *rcdev,
@@ -115,31 +131,37 @@ static int imx7_reset_deassert(struct reset_controller_dev *rcdev,
 	return imx7_reset_set(rcdev, id, false);
 }
 
-static struct reset_control_ops imx7_reset_ops = {
-	.assert		= imx7_reset_assert,
-	.deassert	= imx7_reset_deassert,
+static const struct imx7_src_variant variant_imx7 = {
+	.signals = imx7_src_signals,
+	.signals_num = ARRAY_SIZE(imx7_src_signals),
+	.ops = {
+		.assert   = imx7_reset_assert,
+		.deassert = imx7_reset_deassert,
+	},
 };
 
 static int imx7_reset_probe(struct device_d *dev)
 {
 	struct imx7_src *imx7src;
+	const struct imx7_src_variant *variant = of_device_get_match_data(dev);
 
 	imx7src = xzalloc(sizeof(*imx7src));
+	imx7src->signals = variant->signals;
 	imx7src->regmap = syscon_node_to_regmap(dev->device_node);
 	if (IS_ERR(imx7src->regmap)) {
 		dev_err(dev, "Unable to get imx7-src regmap");
 		return PTR_ERR(imx7src->regmap);
 	}
 
-	imx7src->rcdev.nr_resets = IMX7_RESET_NUM;
-	imx7src->rcdev.ops       = &imx7_reset_ops;
+	imx7src->rcdev.nr_resets = variant->signals_num;
+	imx7src->rcdev.ops       = &variant->ops;
 	imx7src->rcdev.of_node   = dev->device_node;
 
 	return reset_controller_register(&imx7src->rcdev);
 }
 
 static const struct of_device_id imx7_reset_dt_ids[] = {
-	{ .compatible = "fsl,imx7d-src", },
+	{ .compatible = "fsl,imx7d-src", .data = &variant_imx7 },
 	{ /* sentinel */ },
 };
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
