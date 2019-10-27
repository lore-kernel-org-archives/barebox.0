Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOrnw-0005aJ-Bk
 for barebox@lists.infradead.org; Sun, 27 Oct 2019 23:18:39 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 28 Oct 2019 00:18:27 +0100
Message-Id: <20191027231832.10247-3-a.fatoum@pengutronix.de>
In-Reply-To: <20191027231832.10247-1-a.fatoum@pengutronix.de>
References: <20191027231832.10247-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 3/8] pinctrl: stm32: parse pinctrl nodes without subnodes
 as well
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The bindings allow the pinmux node to occur directly in the node under
the pin controller as well. Check for this and support both types of
pinctrl specification.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/pinctrl/pinctrl-stm32.c | 180 ++++++++++++++++++--------------
 1 file changed, 99 insertions(+), 81 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-stm32.c b/drivers/pinctrl/pinctrl-stm32.c
index c199d74846e8..cdaed510c564 100644
--- a/drivers/pinctrl/pinctrl-stm32.c
+++ b/drivers/pinctrl/pinctrl-stm32.c
@@ -87,110 +87,128 @@ static inline u32 stm32_gpio_get_alt(u32 function)
 	return 0;
 }
 
-static int stm32_pinctrl_set_state(struct pinctrl_device *pdev, struct device_node *group)
+static int __stm32_pinctrl_set_state(struct device_d *dev, struct device_node *pins)
 {
-	struct stm32_pinctrl *pinctrl = to_stm32_pinctrl(pdev);
-	struct device_node *pins;
 	int ret;
 
-	ret = hwspinlock_lock_timeout(&pinctrl->hws, 10);
-	if (ret == -ETIMEDOUT) {
-		dev_err(pdev->dev, "hw spinlock timeout\n");
-		return ret;
+	int num_pins = 0, i;
+	u32 slew_rate;
+	bool adjust_slew_rate = false;
+	enum stm32_pin_bias bias = -1;
+	enum stm32_pin_out_type out_type = -1;
+	enum { PIN_INPUT, PIN_OUTPUT_LOW, PIN_OUTPUT_HIGH } dir = -1;
+
+	of_get_property(pins, "pinmux", &num_pins);
+	num_pins /= sizeof(__be32);
+	if (!num_pins) {
+		dev_err(dev, "Invalid pinmux property in %s\n",
+			pins->full_name);
+		return -EINVAL;
 	}
 
-	for_each_child_of_node(group, pins) {
-		int num_pins = 0, i;
-		u32 slew_rate;
-		bool adjust_slew_rate = false;
-		enum stm32_pin_bias bias = -1;
-		enum stm32_pin_out_type out_type = -1;
-		enum { PIN_INPUT, PIN_OUTPUT_LOW, PIN_OUTPUT_HIGH } dir = -1;
-
-		of_get_property(pins, "pinmux", &num_pins);
-		num_pins /= sizeof(__be32);
-		if (!num_pins) {
-			dev_err(pdev->dev, "Invalid pinmux property in %s\n",
-				pins->full_name);
-			return -EINVAL;
-		}
-
-		ret = of_property_read_u32(pins, "slew-rate", &slew_rate);
-		if (!ret)
-			adjust_slew_rate = true;
-
-		if (of_get_property(pins, "bias-disable", NULL))
-			bias = STM32_PIN_NO_BIAS;
-		else if (of_get_property(pins, "bias-pull-up", NULL))
-			bias = STM32_PIN_PULL_UP;
-		else if (of_get_property(pins, "bias-pull-down", NULL))
-			bias = STM32_PIN_PULL_DOWN;
+	ret = of_property_read_u32(pins, "slew-rate", &slew_rate);
+	if (!ret)
+		adjust_slew_rate = true;
+
+	if (of_get_property(pins, "bias-disable", NULL))
+		bias = STM32_PIN_NO_BIAS;
+	else if (of_get_property(pins, "bias-pull-up", NULL))
+		bias = STM32_PIN_PULL_UP;
+	else if (of_get_property(pins, "bias-pull-down", NULL))
+		bias = STM32_PIN_PULL_DOWN;
+
+	if (of_get_property(pins, "drive-push-pull", NULL))
+		out_type = STM32_PIN_OUT_PUSHPULL;
+	else if (of_get_property(pins, "drive-open-drain", NULL))
+		out_type = STM32_PIN_OUT_OPENDRAIN;
+
+	if (of_get_property(pins, "input-enable", NULL))
+		dir = PIN_INPUT;
+	else if (of_get_property(pins, "output-low", NULL))
+		dir = PIN_OUTPUT_LOW;
+	else if (of_get_property(pins, "output-high", NULL))
+		dir = PIN_OUTPUT_HIGH;
+
+	dev_dbg(dev, "%s: multiplexing %d pins\n", pins->full_name, num_pins);
+
+	for (i = 0; i < num_pins; i++) {
+		struct stm32_gpio_bank *bank = NULL;
+		u32 pinfunc, mode, alt;
+		unsigned func;
+		int offset;
+
+		ret = of_property_read_u32_index(pins, "pinmux",
+				i, &pinfunc);
+		if (ret)
+			return ret;
 
-		if (of_get_property(pins, "drive-push-pull", NULL))
-			out_type = STM32_PIN_OUT_PUSHPULL;
-		else if (of_get_property(pins, "drive-open-drain", NULL))
-			out_type = STM32_PIN_OUT_OPENDRAIN;
+		func = STM32_GET_PIN_FUNC(pinfunc);
+		offset = stm32_gpio_pin(STM32_GET_PIN_NO(pinfunc), &bank);
+		if (offset < 0)
+			return -ENODEV;
 
-		if (of_get_property(pins, "input-enable", NULL))
-			dir = PIN_INPUT;
-		else if (of_get_property(pins, "output-low", NULL))
-			dir = PIN_OUTPUT_LOW;
-		else if (of_get_property(pins, "output-high", NULL))
-			dir = PIN_OUTPUT_HIGH;
+		mode = stm32_gpio_get_mode(func);
+		alt = stm32_gpio_get_alt(func);
 
-		dev_dbg(pdev->dev, "%s: multiplexing %d pins\n",
-			pins->full_name, num_pins);
+		dev_dbg(dev, "configuring port %s pin %u with:\n\t"
+			"fn %u, mode %u, alt %u\n",
+			bank->name, offset, func, mode, alt);
 
-		for (i = 0; i < num_pins; i++) {
-			struct stm32_gpio_bank *bank = NULL;
-			u32 pinfunc, mode, alt;
-			unsigned func;
-			int offset;
+		clk_enable(bank->clk);
 
-			ret = of_property_read_u32_index(pins, "pinmux",
-					i, &pinfunc);
-			if (ret)
-				return ret;
+		__stm32_pmx_set_mode(bank->base, offset, mode, alt);
 
-			func = STM32_GET_PIN_FUNC(pinfunc);
-			offset = stm32_gpio_pin(STM32_GET_PIN_NO(pinfunc), &bank);
-			if (offset < 0)
-				return -ENODEV;
+		if (adjust_slew_rate)
+			__stm32_pmx_set_speed(bank->base, offset, slew_rate);
 
-			mode = stm32_gpio_get_mode(func);
-			alt = stm32_gpio_get_alt(func);
+		if (bias != -1)
+			__stm32_pmx_set_bias(bank->base, offset, bias);
 
-			dev_dbg(pdev->dev, "configuring port %s pin %u with:\n\t"
-				"fn %u, mode %u, alt %u\n",
-				bank->name, offset, func, mode, alt);
+		if (out_type != -1)
+			__stm32_pmx_set_output_type(bank->base, offset, out_type);
 
-			clk_enable(bank->clk);
+		if (dir == PIN_INPUT)
+			__stm32_pmx_gpio_input(bank->base, offset);
+		else if (dir == PIN_OUTPUT_LOW)
+			__stm32_pmx_gpio_output(bank->base, offset, 0);
+		else if (dir == PIN_OUTPUT_HIGH)
+			__stm32_pmx_gpio_output(bank->base, offset, 1);
 
-			__stm32_pmx_set_mode(bank->base, offset, mode, alt);
+		clk_disable(bank->clk);
+	}
 
-			if (adjust_slew_rate)
-				__stm32_pmx_set_speed(bank->base, offset, slew_rate);
+	return 0;
+}
 
-			if (bias != -1)
-				__stm32_pmx_set_bias(bank->base, offset, bias);
+static int stm32_pinctrl_set_state(struct pinctrl_device *pdev, struct device_node *np)
+{
+	struct stm32_pinctrl *pinctrl = to_stm32_pinctrl(pdev);
+	struct device_d *dev = pdev->dev;
+	struct device_node *pins;
+	void *prop;
+	int ret;
 
-			if (out_type != -1)
-				__stm32_pmx_set_output_type(bank->base, offset, out_type);
+	ret = hwspinlock_lock_timeout(&pinctrl->hws, 10);
+	if (ret == -ETIMEDOUT) {
+		dev_err(dev, "hw spinlock timeout\n");
+		return ret;
+	}
 
-			if (dir == PIN_INPUT)
-				__stm32_pmx_gpio_input(bank->base, offset);
-			else if (dir == PIN_OUTPUT_LOW)
-				__stm32_pmx_gpio_output(bank->base, offset, 0);
-			else if (dir == PIN_OUTPUT_HIGH)
-				__stm32_pmx_gpio_output(bank->base, offset, 1);
+	prop = of_find_property(np, "pinmux", NULL);
+	if (prop) {
+		ret = __stm32_pinctrl_set_state(dev, np);
+		goto out;
+	}
 
-			clk_disable(bank->clk);
-		}
+	for_each_child_of_node(np, pins) {
+		ret = __stm32_pinctrl_set_state(dev, pins);
+		if (ret)
+			goto out;
 	}
 
+out:
 	hwspinlock_unlock(&pinctrl->hws);
-
-	return 0;
+	return ret;
 }
 
 /* GPIO functions */
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
