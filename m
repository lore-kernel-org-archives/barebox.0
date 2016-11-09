Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x241.google.com ([2607:f8b0:400e:c00::241])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c4VWg-0005EW-FP
 for barebox@lists.infradead.org; Wed, 09 Nov 2016 16:15:05 +0000
Received: by mail-pf0-x241.google.com with SMTP id n85so782656pfi.3
 for <barebox@lists.infradead.org>; Wed, 09 Nov 2016 08:14:44 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  9 Nov 2016 08:13:54 -0800
Message-Id: <1478708056-7875-7-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1478708056-7875-1-git-send-email-andrew.smirnov@gmail.com>
References: <1478708056-7875-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 06/28] pinctrl: Add provisions to control GPIO pin direction
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Some SoC (of which Vybrid is a one example) relegate GPIO direction
control to their pinmux IP block, instead of having that functionality
within GPIO IP. Add provisions to control that aspect of pinmux to
support such SoCs.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pinctrl/pinctrl.c | 45 +++++++++++++++++++++++++++++++++++++++++++++
 include/pinctrl.h         | 21 +++++++++++++++++++++
 2 files changed, 66 insertions(+)

diff --git a/drivers/pinctrl/pinctrl.c b/drivers/pinctrl/pinctrl.c
index e7b08a2..bef4fcd 100644
--- a/drivers/pinctrl/pinctrl.c
+++ b/drivers/pinctrl/pinctrl.c
@@ -24,6 +24,51 @@
 
 static LIST_HEAD(pinctrl_list);
 
+static struct pinctrl_device *pin_to_pinctrl(unsigned int pin)
+{
+	struct pinctrl_device *pinctrl;
+
+	list_for_each_entry(pinctrl, &pinctrl_list, list)
+		if (pin > pinctrl->base &&
+		    pin < pinctrl->base + pinctrl->npins)
+			return pinctrl;
+	return NULL;
+}
+
+static int pinctrl_gpio_direction(unsigned pin, bool input)
+{
+	struct pinctrl_device *pinctrl = pin_to_pinctrl(pin);
+
+	if (!pinctrl)
+		return -EINVAL;
+
+	BUG_ON(!pinctrl->ops->set_direction);
+
+	return pinctrl->ops->set_direction(pinctrl, pin, input);
+}
+
+int pinctrl_gpio_direction_input(unsigned int pin)
+{
+	return pinctrl_gpio_direction(pin, true);
+}
+
+int pinctrl_gpio_direction_output(unsigned int pin)
+{
+	return pinctrl_gpio_direction(pin, false);
+}
+
+int pinctrl_gpio_get_direction(unsigned pin)
+{
+	struct pinctrl_device *pinctrl = pin_to_pinctrl(pin);
+
+	if (!pinctrl)
+		return -EINVAL;
+
+	BUG_ON(!pinctrl->ops->get_direction);
+
+	return pinctrl->ops->get_direction(pinctrl, pin);
+}
+
 static struct pinctrl_device *find_pinctrl(struct device_node *node)
 {
 	struct pinctrl_device *pdev;
diff --git a/include/pinctrl.h b/include/pinctrl.h
index 0f03b10..0fde3f9 100644
--- a/include/pinctrl.h
+++ b/include/pinctrl.h
@@ -5,6 +5,8 @@ struct pinctrl_device;
 
 struct pinctrl_ops {
 	int (*set_state)(struct pinctrl_device *, struct device_node *);
+	int (*set_direction)(struct pinctrl_device *, unsigned int, bool);
+	int (*get_direction)(struct pinctrl_device *, unsigned int);
 };
 
 struct pinctrl_device {
@@ -12,6 +14,7 @@ struct pinctrl_device {
 	struct pinctrl_ops *ops;
 	struct list_head list;
 	struct device_node *node;
+	unsigned int base, npins;
 };
 
 int pinctrl_register(struct pinctrl_device *pdev);
@@ -22,6 +25,9 @@ int pinctrl_select_state(struct device_d *dev, const char *state);
 int pinctrl_select_state_default(struct device_d *dev);
 int of_pinctrl_select_state(struct device_node *np, const char *state);
 int of_pinctrl_select_state_default(struct device_node *np);
+int pinctrl_gpio_direction_input(unsigned pin);
+int pinctrl_gpio_direction_output(unsigned int pin);
+int pinctrl_gpio_get_direction(unsigned pin);
 #else
 static inline int pinctrl_select_state(struct device_d *dev, const char *state)
 {
@@ -42,6 +48,21 @@ static inline int of_pinctrl_select_state_default(struct device_node *np)
 {
 	return -ENODEV;
 }
+
+static inline int pinctrl_gpio_direction_input(unsigend pin)
+{
+	return -ENOTSUPP;
+}
+
+static inline int pinctrl_gpio_direction_output(unsigned int pin)
+{
+	return -ENOTSUPP;
+}
+
+static inline int pinctrl_gpio_get_direction(unsigned pin)
+{
+	return -ENOTSUPP;
+}
 #endif
 
 #endif /* PINCTRL_H */
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
