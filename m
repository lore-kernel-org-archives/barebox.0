Delivery-date: Wed, 21 Jun 2023 11:10:10 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qBtqt-00FTKj-Py
	for lore@lore.pengutronix.de; Wed, 21 Jun 2023 11:10:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qBtqq-0002e4-EE
	for lore@pengutronix.de; Wed, 21 Jun 2023 11:10:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+RJNcCU7Dt0HNpFK9MdbbuZFpw9UYahnPJH/NoGkX3M=; b=XJTr/ouRI7pQEsKzG+37+8yd84
	BTA301lIkf7K0cayav3DJowO4Ryjq1UlrjTiMOLl+k7IV/TigTJ/eR+crp02AhqTFeU/WFznJF4rb
	JYmVOvIVryBOy6+yYdoHuRWXudR9K5AwCRt/TithNzbRg8TbMANeXMuWJiyB3x7UFAtUxBWt9QHL0
	KPbwsPKfxB//mlik5ROJJPd1HRC1L9MgTHrX+2sxqhtiLc0Br6bAW7umKk7wTxpfbfzqlwdr9zYnv
	YMrZJLkY2TCEcTpovrkc2+6SbeokK/u0XnIUUsrvwc7zXP9IsJH2PPNEzGYJWw/CmR+wYYdaPCYx9
	tXgIQvQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBtko-00Dmyd-1b;
	Wed, 21 Jun 2023 09:03:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBtkk-00Dmxh-3D
	for barebox@lists.infradead.org;
	Wed, 21 Jun 2023 09:03:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qBtkj-0001cv-O2; Wed, 21 Jun 2023 11:03:49 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qBtkj-008zbT-3r; Wed, 21 Jun 2023 11:03:49 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qBtkj-00BDiv-00;
	Wed, 21 Jun 2023 11:03:49 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 21 Jun 2023 11:03:31 +0200
Message-Id: <20230621090329.2652672-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230621090329.2652672-1-a.fatoum@pengutronix.de>
References: <20230621090329.2652672-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230621_020351_197135_542085CB 
X-CRM114-Status: GOOD (  22.84  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 2/2] usb: add basic TUSB320 Type-C controller support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We import here the Linux TUSB320 driver, so board code and user scripts
have access to following variables:

  - $dev.usb_role = { device, host }
  - $dev.pwr_role = { sink, source }
  - $dev.accessory = { none, audio, debug }

These can be used to decide whether to switch a USB-C debug mux for
example.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - split off from first patch
  - include <linux/bitops.h>
---
 Documentation/user/usb.rst  |   3 +
 drivers/usb/typec/Kconfig   |   8 ++
 drivers/usb/typec/Makefile  |   1 +
 drivers/usb/typec/tusb320.c | 221 ++++++++++++++++++++++++++++++++++++
 4 files changed, 233 insertions(+)
 create mode 100644 drivers/usb/typec/tusb320.c

diff --git a/Documentation/user/usb.rst b/Documentation/user/usb.rst
index 20e223da93b5..2474ccb54b67 100644
--- a/Documentation/user/usb.rst
+++ b/Documentation/user/usb.rst
@@ -259,6 +259,9 @@ export a number of device parameters:
 - ``$typec0.pwr_role`` = { ``sink``, ``source`` }
 - ``$typec0.accessory`` = { ``none``, ``audio``, ``debug`` }
 
+Currently, only the TUSB320 is supported, but it's straight-forward to port more
+drivers from Linux.
+
 USB Gadget autostart Support
 ----------------------------
 
diff --git a/drivers/usb/typec/Kconfig b/drivers/usb/typec/Kconfig
index 56f10e6ca549..3b32a4e05a91 100644
--- a/drivers/usb/typec/Kconfig
+++ b/drivers/usb/typec/Kconfig
@@ -4,3 +4,11 @@
 config TYPEC
 	prompt "Compile USB Type-C framework support" if COMPILE_TEST
 	bool
+
+config TYPEC_TUSB320
+	tristate "TI TUSB320 Type-C port controller"
+	depends on I2C
+	select REGMAP_I2C
+	select TYPEC
+	help
+	  Say Y or here if your system has a TI TUSB320 Type-C port controller.
diff --git a/drivers/usb/typec/Makefile b/drivers/usb/typec/Makefile
index 6b8347f10c06..456b94afbf6f 100644
--- a/drivers/usb/typec/Makefile
+++ b/drivers/usb/typec/Makefile
@@ -1,2 +1,3 @@
 # SPDX-License-Identifier: GPL-2.0-only
 obj-$(CONFIG_TYPEC)		+= class.o
+obj-$(CONFIG_TYPEC_TUSB320)	+= tusb320.o
diff --git a/drivers/usb/typec/tusb320.c b/drivers/usb/typec/tusb320.c
new file mode 100644
index 000000000000..eb6b492481a3
--- /dev/null
+++ b/drivers/usb/typec/tusb320.c
@@ -0,0 +1,221 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Based on the Linux driver:
+ *   drivers/typec/typec-tusb320.c - TUSB320 typec driver
+ *
+ * Copyright (C) 2020 National Instruments Corporation
+ * Author: Michael Auchter <michael.auchter@ni.com>
+ */
+
+#include <linux/bitfield.h>
+#include <i2c/i2c.h>
+#include <init.h>
+#include <linux/kernel.h>
+#include <linux/printk.h>
+#include <linux/bitops.h>
+#include <module.h>
+#include <regmap.h>
+#include <linux/usb/typec.h>
+#include <linux/usb/typec_altmode.h>
+
+#define TUSB320_REG8				0x8
+#define TUSB320_REG8_CURRENT_MODE_ADVERTISE	GENMASK(7, 6)
+#define TUSB320_REG8_CURRENT_MODE_ADVERTISE_USB	0x0
+#define TUSB320_REG8_CURRENT_MODE_ADVERTISE_15A	0x1
+#define TUSB320_REG8_CURRENT_MODE_ADVERTISE_30A	0x2
+#define TUSB320_REG8_CURRENT_MODE_DETECT	GENMASK(5, 4)
+#define TUSB320_REG8_CURRENT_MODE_DETECT_DEF	0x0
+#define TUSB320_REG8_CURRENT_MODE_DETECT_MED	0x1
+#define TUSB320_REG8_CURRENT_MODE_DETECT_ACC	0x2
+#define TUSB320_REG8_CURRENT_MODE_DETECT_HI	0x3
+#define TUSB320_REG8_ACCESSORY_CONNECTED	GENMASK(3, 1)
+#define TUSB320_REG8_ACCESSORY_CONNECTED_NONE	0x0
+#define TUSB320_REG8_ACCESSORY_CONNECTED_AUDIO	0x4
+#define TUSB320_REG8_ACCESSORY_CONNECTED_ACHRG	0x5
+#define TUSB320_REG8_ACCESSORY_CONNECTED_DBGDFP	0x6
+#define TUSB320_REG8_ACCESSORY_CONNECTED_DBGUFP	0x7
+#define TUSB320_REG8_ACTIVE_CABLE_DETECTION	BIT(0)
+
+#define TUSB320_REG9				0x9
+#define TUSB320_REG9_ATTACHED_STATE		GENMASK(7, 6)
+#define TUSB320_REG9_CABLE_DIRECTION		BIT(5)
+#define TUSB320_REG9_INTERRUPT_STATUS		BIT(4)
+
+enum tusb320_attached_state {
+	TUSB320_ATTACHED_STATE_NONE,
+	TUSB320_ATTACHED_STATE_DFP,
+	TUSB320_ATTACHED_STATE_UFP,
+	TUSB320_ATTACHED_STATE_ACC,
+};
+
+struct tusb320_priv {
+	struct device *dev;
+	struct regmap *regmap;
+	struct typec_port *port;
+	struct typec_capability	cap;
+};
+
+static int tusb320_typec_irq_handler(struct tusb320_priv *priv, u8 reg9)
+{
+	struct typec_port *port = priv->port;
+	int typec_mode;
+	enum typec_role pwr_role;
+	enum usb_role usb_role;
+	u8 state, accessory;
+	int ret, reg8;
+
+	ret = regmap_read(priv->regmap, TUSB320_REG8, &reg8);
+	if (ret)
+		return ret;
+
+	state = FIELD_GET(TUSB320_REG9_ATTACHED_STATE, reg9);
+	accessory = FIELD_GET(TUSB320_REG8_ACCESSORY_CONNECTED, reg8);
+
+	switch (state) {
+	case TUSB320_ATTACHED_STATE_DFP:
+		typec_mode = TYPEC_MODE_USB2;
+		usb_role = USB_ROLE_HOST;
+		pwr_role = TYPEC_SOURCE;
+		break;
+	case TUSB320_ATTACHED_STATE_UFP:
+		typec_mode = TYPEC_MODE_USB2;
+		usb_role = USB_ROLE_DEVICE;
+		pwr_role = TYPEC_SINK;
+		break;
+	case TUSB320_ATTACHED_STATE_ACC:
+		/*
+		 * Accessory detected. For debug accessories, just make some
+		 * qualified guesses as to the role for lack of a better option.
+		 */
+		if (accessory == TUSB320_REG8_ACCESSORY_CONNECTED_AUDIO ||
+		    accessory == TUSB320_REG8_ACCESSORY_CONNECTED_ACHRG) {
+			typec_mode = TYPEC_MODE_AUDIO;
+			usb_role = USB_ROLE_NONE;
+			pwr_role = TYPEC_SINK;
+			break;
+		} else if (accessory ==
+			   TUSB320_REG8_ACCESSORY_CONNECTED_DBGDFP) {
+			typec_mode = TYPEC_MODE_DEBUG;
+			pwr_role = TYPEC_SOURCE;
+			usb_role = USB_ROLE_HOST;
+			break;
+		} else if (accessory ==
+			   TUSB320_REG8_ACCESSORY_CONNECTED_DBGUFP) {
+			typec_mode = TYPEC_MODE_DEBUG;
+			pwr_role = TYPEC_SINK;
+			usb_role = USB_ROLE_DEVICE;
+			break;
+		}
+
+		dev_warn(priv->dev, "unexpected ACCESSORY_CONNECTED state %d\n",
+			 accessory);
+
+		fallthrough;
+	default:
+		typec_mode = TYPEC_MODE_USB2;
+		usb_role = USB_ROLE_NONE;
+		pwr_role = TYPEC_SINK;
+		break;
+	}
+
+	typec_set_pwr_role(port, pwr_role);
+	typec_set_mode(port, typec_mode);
+	typec_set_role(port, usb_role);
+
+	return 0;
+}
+
+static int tusb320_state_update_handler(struct tusb320_priv *priv,
+					bool force_update)
+{
+	unsigned int reg;
+	int ret;
+
+	ret = regmap_read(priv->regmap, TUSB320_REG9, &reg);
+	if (ret)
+		return ret;
+
+	if (!force_update && !(reg & TUSB320_REG9_INTERRUPT_STATUS))
+		return 0;
+
+	ret = tusb320_typec_irq_handler(priv, reg);
+
+	regmap_write(priv->regmap, TUSB320_REG9, reg);
+
+	return ret;
+}
+
+static irqreturn_t tusb320_irq_handler(struct typec_port *port)
+{
+	struct tusb320_priv *priv = typec_get_drvdata(port);
+
+	return tusb320_state_update_handler(priv, false);
+}
+
+static const struct typec_operations tusb320_typec_ops = {
+	.poll	= tusb320_irq_handler,
+};
+
+static const struct regmap_config tusb320_regmap_config = {
+	.reg_bits = 8,
+	.val_bits = 8,
+};
+
+static int tusb320_typec_probe(struct i2c_client *client,
+			       struct tusb320_priv *priv)
+{
+	struct device_node *connector;
+
+	connector = of_get_child_by_name(client->dev.of_node, "connector");
+
+	priv->cap.driver_data		= priv;
+	priv->cap.ops			= &tusb320_typec_ops;
+	priv->cap.of_node		= connector;
+
+	priv->port = typec_register_port(&client->dev, &priv->cap);
+
+	return PTR_ERR_OR_ZERO(priv->port);
+}
+
+static int tusb320_probe(struct device *dev)
+{
+	struct i2c_client *client = to_i2c_client(dev);
+	struct tusb320_priv *priv;
+	int ret;
+
+	priv = xzalloc(sizeof(*priv));
+
+	priv->dev = &client->dev;
+	i2c_set_clientdata(client, priv);
+
+	priv->regmap = regmap_init_i2c(client, &tusb320_regmap_config);
+	if (IS_ERR(priv->regmap))
+		return PTR_ERR(priv->regmap);
+
+	ret = tusb320_typec_probe(client, priv);
+	if (ret)
+		return ret;
+
+	/* update initial state */
+	tusb320_state_update_handler(priv, true);
+
+	return ret;
+}
+
+static const struct of_device_id tusb320_typec_dt_match[] = {
+	{ .compatible = "ti,tusb320" },
+	{ .compatible = "ti,tusb320l" },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, tusb320_typec_dt_match);
+
+static struct driver tusb320_typec_driver = {
+	.name		= "typec-tusb320",
+	.of_match_table = tusb320_typec_dt_match,
+	.probe		= tusb320_probe,
+};
+device_i2c_driver(tusb320_typec_driver);
+
+MODULE_AUTHOR("Michael Auchter <michael.auchter@ni.com>");
+MODULE_DESCRIPTION("TI TUSB320 Type-C driver");
+MODULE_LICENSE("GPL v2");
-- 
2.39.2



