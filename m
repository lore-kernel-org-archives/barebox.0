Delivery-date: Mon, 20 Apr 2026 11:03:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wEkXV-00EHfx-1C
	for lore@lore.pengutronix.de;
	Mon, 20 Apr 2026 11:03:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wEkXT-00027Q-Qi
	for lore@pengutronix.de; Mon, 20 Apr 2026 11:03:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QxsZRMuHu6UOfTTO/FIT4TtKRHqdywKEsLVkEXDLXYI=; b=33CV26HH6ZGp7xtah9Hp32zT3r
	a245NGBaUZUC9XC8EM6QYa3hrOIh0vXiNouJ5j0WXHh4W4lZiIvAnnTduiXQLT7/NKrTCwrFpEUYc
	xZ1VuuPIJEUWPP9dNEhUzumr+KUTFWS8c45Mk2jM0aThmp9QT140n/sc4Ppris+5OzWP9i5k0Lm2C
	Z9rYoi/T3lu70+nJsloLvwSia2nFjJ+LyMvm7tIQBjhrfAhip1jyFi7U+B8R3u2bYBALFd3k/aRnd
	vFZN88FKIm2qZkha+98NWaISYvwBLzgtnGYUlVhz9UIYDA6y4LhV1QRZ1V3IwGr7SImDlddu/z5rI
	kVYZMH2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEkWQ-00000006eEG-2yn4;
	Mon, 20 Apr 2026 09:02:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEkWL-00000006eCT-0yNK
	for barebox@lists.infradead.org;
	Mon, 20 Apr 2026 09:02:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wEkWJ-0001gK-Pi; Mon, 20 Apr 2026 11:02:19 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wEkWJ-006Iwm-1g;
	Mon, 20 Apr 2026 11:02:19 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wEkWJ-00000006TEi-1imO;
	Mon, 20 Apr 2026 11:02:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 20 Apr 2026 11:02:20 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260420-usb-typec-stusb160x-v1-4-5875bbae80ab@pengutronix.de>
References: <20260420-usb-typec-stusb160x-v1-0-5875bbae80ab@pengutronix.de>
In-Reply-To: <20260420-usb-typec-stusb160x-v1-0-5875bbae80ab@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1776675739; l=18320;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=363I95Zn7VesLJ5yBLKqHxeZhy+r1e5iourp/rpGYYI=;
 b=DPhlxMvXTDmS9+B3aWgc05R5wzJDxpQha7OdaKwdDBclgwlqGH6eg3WL6NVN8Yf370jqqyPRP
 q8/lQdsFXuXC+f/y0j2JWcLPw+SDJcCxbALFi72zfsIm9z3jOpcVI1O
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260420_020221_600664_1280468A 
X-CRM114-Status: GOOD (  21.30  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH 4/4] USB: typec: Add STUSB160x driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds the STUSB160x driver from Linux. The feature set has been
reduced to what barebox provides.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/typec/Kconfig     |   9 +
 drivers/usb/typec/Makefile    |   1 +
 drivers/usb/typec/stusb160x.c | 572 ++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 582 insertions(+)

diff --git a/drivers/usb/typec/Kconfig b/drivers/usb/typec/Kconfig
index 3b32a4e05a..22aacd73f6 100644
--- a/drivers/usb/typec/Kconfig
+++ b/drivers/usb/typec/Kconfig
@@ -12,3 +12,12 @@ config TYPEC_TUSB320
 	select TYPEC
 	help
 	  Say Y or here if your system has a TI TUSB320 Type-C port controller.
+
+config TYPEC_STUSB160X
+	tristate "STMicroelectronics STUSB160x Type-C controller driver"
+	depends on I2C
+	select REGMAP_I2C
+	select TYPEC
+	help
+	  Say Y or M here if your system has STMicroelectronics STUSB160x
+	  Type-C port controller.
\ No newline at end of file
diff --git a/drivers/usb/typec/Makefile b/drivers/usb/typec/Makefile
index 456b94afbf..b8c1e438b0 100644
--- a/drivers/usb/typec/Makefile
+++ b/drivers/usb/typec/Makefile
@@ -1,3 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0-only
 obj-$(CONFIG_TYPEC)		+= class.o
 obj-$(CONFIG_TYPEC_TUSB320)	+= tusb320.o
+obj-$(CONFIG_TYPEC_STUSB160X)	+= stusb160x.o
\ No newline at end of file
diff --git a/drivers/usb/typec/stusb160x.c b/drivers/usb/typec/stusb160x.c
new file mode 100644
index 0000000000..ae7264af7e
--- /dev/null
+++ b/drivers/usb/typec/stusb160x.c
@@ -0,0 +1,572 @@
+// SPDX-License-Identifier: GPL-2.0
+// SPDX-Comment: Origin-URL: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/usb/typec/stusb160x.c?id=82375469755662b9910a22da14027cbef2bca666/*
+ * STMicroelectronics STUSB160x Type-C controller family driver
+ *
+ * Copyright (C) 2020, STMicroelectronics
+ * Author(s): Amelie Delaunay <amelie.delaunay@st.com>
+ */
+
+#include <linux/bitfield.h>
+#include <i2c/i2c.h>
+#include <init.h>
+#include <linux/device.h>
+#include <linux/kernel.h>
+#include <linux/printk.h>
+#include <linux/bitops.h>
+#include <regulator.h>
+#include <linux/regmap.h>
+#include <linux/usb/typec.h>
+#include <of.h>
+
+#define STUSB160X_ALERT_STATUS			0x0B /* RC */
+#define STUSB160X_ALERT_STATUS_MASK_CTRL	0x0C /* RW */
+#define STUSB160X_CC_CONNECTION_STATUS_TRANS	0x0D /* RC */
+#define STUSB160X_CC_CONNECTION_STATUS		0x0E /* RO */
+#define STUSB160X_MONITORING_STATUS_TRANS	0x0F /* RC */
+#define STUSB160X_MONITORING_STATUS		0x10 /* RO */
+#define STUSB160X_CC_OPERATION_STATUS		0x11 /* RO */
+#define STUSB160X_HW_FAULT_STATUS_TRANS		0x12 /* RC */
+#define STUSB160X_HW_FAULT_STATUS		0x13 /* RO */
+#define STUSB160X_CC_CAPABILITY_CTRL		0x18 /* RW */
+#define STUSB160X_CC_VCONN_SWITCH_CTRL		0x1E /* RW */
+#define STUSB160X_VCONN_MONITORING_CTRL		0x20 /* RW */
+#define STUSB160X_VBUS_MONITORING_RANGE_CTRL	0x22 /* RW */
+#define STUSB160X_RESET_CTRL			0x23 /* RW */
+#define STUSB160X_VBUS_DISCHARGE_TIME_CTRL	0x25 /* RW */
+#define STUSB160X_VBUS_DISCHARGE_STATUS		0x26 /* RO */
+#define STUSB160X_VBUS_ENABLE_STATUS		0x27 /* RO */
+#define STUSB160X_CC_POWER_MODE_CTRL		0x28 /* RW */
+#define STUSB160X_VBUS_MONITORING_CTRL		0x2E /* RW */
+#define STUSB1600_REG_MAX			0x2F /* RO - Reserved */
+
+/* STUSB160X_ALERT_STATUS/STUSB160X_ALERT_STATUS_MASK_CTRL bitfields */
+#define STUSB160X_HW_FAULT			BIT(4)
+#define STUSB160X_MONITORING			BIT(5)
+#define STUSB160X_CC_CONNECTION			BIT(6)
+#define STUSB160X_ALL_ALERTS			GENMASK(6, 4)
+
+/* STUSB160X_CC_CONNECTION_STATUS_TRANS bitfields */
+#define STUSB160X_CC_ATTACH_TRANS		BIT(0)
+
+/* STUSB160X_CC_CONNECTION_STATUS bitfields */
+#define STUSB160X_CC_ATTACH			BIT(0)
+#define STUSB160X_CC_VCONN_SUPPLY		BIT(1)
+#define STUSB160X_CC_POWER_ROLE(s)		(!!((s) & BIT(3)))
+#define STUSB160X_CC_ATTACHED_MODE		GENMASK(7, 5)
+
+/* STUSB160X_MONITORING_STATUS_TRANS bitfields */
+#define STUSB160X_VCONN_PRESENCE_TRANS		BIT(0)
+#define STUSB160X_VBUS_PRESENCE_TRANS		BIT(1)
+#define STUSB160X_VBUS_VSAFE0V_TRANS		BIT(2)
+#define STUSB160X_VBUS_VALID_TRANS		BIT(3)
+
+/* STUSB160X_MONITORING_STATUS bitfields */
+#define STUSB160X_VCONN_PRESENCE		BIT(0)
+#define STUSB160X_VBUS_PRESENCE			BIT(1)
+#define STUSB160X_VBUS_VSAFE0V			BIT(2)
+#define STUSB160X_VBUS_VALID			BIT(3)
+
+/* STUSB160X_CC_OPERATION_STATUS bitfields */
+#define STUSB160X_TYPEC_FSM_STATE		GENMASK(4, 0)
+#define STUSB160X_SINK_POWER_STATE		GENMASK(6, 5)
+#define STUSB160X_CC_ATTACHED			BIT(7)
+
+/* STUSB160X_HW_FAULT_STATUS_TRANS bitfields */
+#define STUSB160X_VCONN_SW_OVP_FAULT_TRANS	BIT(0)
+#define STUSB160X_VCONN_SW_OCP_FAULT_TRANS	BIT(1)
+#define STUSB160X_VCONN_SW_RVP_FAULT_TRANS	BIT(2)
+#define STUSB160X_VPU_VALID_TRANS		BIT(4)
+#define STUSB160X_VPU_OVP_FAULT_TRANS		BIT(5)
+#define STUSB160X_THERMAL_FAULT			BIT(7)
+
+/* STUSB160X_HW_FAULT_STATUS bitfields */
+#define STUSB160X_VCONN_SW_OVP_FAULT_CC2	BIT(0)
+#define STUSB160X_VCONN_SW_OVP_FAULT_CC1	BIT(1)
+#define STUSB160X_VCONN_SW_OCP_FAULT_CC2	BIT(2)
+#define STUSB160X_VCONN_SW_OCP_FAULT_CC1	BIT(3)
+#define STUSB160X_VCONN_SW_RVP_FAULT_CC2	BIT(4)
+#define STUSB160X_VCONN_SW_RVP_FAULT_CC1	BIT(5)
+#define STUSB160X_VPU_VALID			BIT(6)
+#define STUSB160X_VPU_OVP_FAULT			BIT(7)
+
+/* STUSB160X_CC_CAPABILITY_CTRL bitfields */
+#define STUSB160X_CC_VCONN_SUPPLY_EN		BIT(0)
+#define STUSB160X_CC_VCONN_DISCHARGE_EN		BIT(4)
+#define STUSB160X_CC_CURRENT_ADVERTISED		GENMASK(7, 6)
+
+/* STUSB160X_VCONN_SWITCH_CTRL bitfields */
+#define STUSB160X_CC_VCONN_SWITCH_ILIM		GENMASK(3, 0)
+
+/* STUSB160X_VCONN_MONITORING_CTRL bitfields */
+#define STUSB160X_VCONN_UVLO_THRESHOLD		BIT(6)
+#define STUSB160X_VCONN_MONITORING_EN		BIT(7)
+
+/* STUSB160X_VBUS_MONITORING_RANGE_CTRL bitfields */
+#define STUSB160X_SHIFT_LOW_VBUS_LIMIT		GENMASK(3, 0)
+#define STUSB160X_SHIFT_HIGH_VBUS_LIMIT		GENMASK(7, 4)
+
+/* STUSB160X_RESET_CTRL bitfields */
+#define STUSB160X_SW_RESET_EN			BIT(0)
+
+/* STUSB160X_VBUS_DISCHARGE_TIME_CTRL bitfields */
+#define STUSBXX02_VBUS_DISCHARGE_TIME_TO_PDO	GENMASK(3, 0)
+#define STUSB160X_VBUS_DISCHARGE_TIME_TO_0V	GENMASK(7, 4)
+
+/* STUSB160X_VBUS_DISCHARGE_STATUS bitfields */
+#define STUSB160X_VBUS_DISCHARGE_EN		BIT(7)
+
+/* STUSB160X_VBUS_ENABLE_STATUS bitfields */
+#define STUSB160X_VBUS_SOURCE_EN		BIT(0)
+#define STUSB160X_VBUS_SINK_EN			BIT(1)
+
+/* STUSB160X_CC_POWER_MODE_CTRL bitfields */
+#define STUSB160X_CC_POWER_MODE			GENMASK(2, 0)
+
+/* STUSB160X_VBUS_MONITORING_CTRL bitfields */
+#define STUSB160X_VDD_UVLO_DISABLE		BIT(0)
+#define STUSB160X_VBUS_VSAFE0V_THRESHOLD	GENMASK(2, 1)
+#define STUSB160X_VBUS_RANGE_DISABLE		BIT(4)
+#define STUSB160X_VDD_OVLO_DISABLE		BIT(6)
+
+enum stusb160x_pwr_mode {
+	SOURCE_WITH_ACCESSORY,
+	SINK_WITH_ACCESSORY,
+	SINK_WITHOUT_ACCESSORY,
+	DUAL_WITH_ACCESSORY,
+	DUAL_WITH_ACCESSORY_AND_TRY_SRC,
+	DUAL_WITH_ACCESSORY_AND_TRY_SNK,
+};
+
+enum stusb160x_attached_mode {
+	NO_DEVICE_ATTACHED,
+	SINK_ATTACHED,
+	SOURCE_ATTACHED,
+	DEBUG_ACCESSORY_ATTACHED,
+	AUDIO_ACCESSORY_ATTACHED,
+};
+
+enum typec_data_role {
+	TYPEC_DEVICE,
+	TYPEC_HOST,
+};
+
+struct stusb160x {
+	struct device		*dev;
+	struct regmap		*regmap;
+	struct regulator	*vdd_supply;
+	struct regulator	*vsys_supply;
+	struct regulator	*vconn_supply;
+	struct regulator	*main_supply;
+
+	struct typec_port	*port;
+	struct typec_capability capability;
+
+	enum typec_port_type	port_type;
+	enum typec_pwr_opmode	pwr_opmode;
+	bool			vbus_on;
+};
+
+static const struct regmap_config stusb1600_regmap_config = {
+	.reg_bits	= 8,
+	.reg_stride	= 1,
+	.val_bits	= 8,
+	.max_register	= STUSB1600_REG_MAX,
+};
+
+static bool stusb160x_get_vconn(struct stusb160x *chip)
+{
+	u32 val;
+	int ret;
+
+	ret = regmap_read(chip->regmap, STUSB160X_CC_CAPABILITY_CTRL, &val);
+	if (ret) {
+		dev_err(chip->dev, "Unable to get Vconn status: %d\n", ret);
+		return false;
+	}
+
+	return !!FIELD_GET(STUSB160X_CC_VCONN_SUPPLY_EN, val);
+}
+
+static int stusb160x_set_vconn(struct stusb160x *chip, bool on)
+{
+	int ret;
+
+	/* Manage VCONN input supply */
+	if (chip->vconn_supply) {
+		if (on) {
+			ret = regulator_enable(chip->vconn_supply);
+			if (ret) {
+				dev_err(chip->dev,
+					"failed to enable vconn supply: %d\n",
+					ret);
+				return ret;
+			}
+		} else {
+			regulator_disable(chip->vconn_supply);
+		}
+	}
+
+	/* Manage VCONN monitoring and power path */
+	ret = regmap_update_bits(chip->regmap, STUSB160X_VCONN_MONITORING_CTRL,
+				 STUSB160X_VCONN_MONITORING_EN,
+				 on ? STUSB160X_VCONN_MONITORING_EN : 0);
+	if (ret)
+		goto vconn_reg_disable;
+
+	return 0;
+
+vconn_reg_disable:
+	if (chip->vconn_supply && on)
+		regulator_disable(chip->vconn_supply);
+
+	return ret;
+}
+
+static int stusb160x_get_connector_caps(struct stusb160x *chip,
+					struct device_node *connector)
+{
+	const char *str;
+	int ret;
+
+	ret = of_property_read_string(connector, "power-role", &str);
+	if (!ret) {
+		ret = typec_find_port_power_role(str);
+		if (ret < 0) {
+			dev_err(chip->dev, "unknown power-role: %s\n", str);
+			return ret;
+		}
+		chip->port_type = ret;
+	}
+
+	/* Skip source power opmode config for sink-only ports */
+	if (chip->port_type == TYPEC_PORT_SNK)
+		return 0;
+
+	ret = of_property_read_string(connector, "typec-power-opmode", &str);
+	if (!ret) {
+		ret = typec_find_pwr_opmode(str);
+		/* Power delivery not supported */
+		if (ret < 0 || ret == TYPEC_PWR_MODE_PD) {
+			dev_err(chip->dev, "unknown typec-power-opmode: %s\n", str);
+			return -EINVAL;
+		}
+		chip->pwr_opmode = ret;
+	}
+
+	return 0;
+}
+
+static void stusb160x_set_data_role(struct stusb160x *chip,
+				    enum typec_data_role data_role,
+				    bool attached)
+{
+	enum usb_role usb_role = USB_ROLE_NONE;
+
+	if (attached) {
+		if (data_role == TYPEC_HOST)
+			usb_role = USB_ROLE_HOST;
+		else
+			usb_role = USB_ROLE_DEVICE;
+	}
+
+	typec_set_role(chip->port, usb_role);
+}
+
+static int stusb160x_attach(struct stusb160x *chip, u32 status)
+{
+	int ret;
+
+	if ((STUSB160X_CC_POWER_ROLE(status) == TYPEC_SOURCE) &&
+	    chip->vdd_supply) {
+		ret = regulator_enable(chip->vdd_supply);
+		if (ret) {
+			dev_err(chip->dev,
+				"Failed to enable Vbus supply: %d\n", ret);
+			return ret;
+		}
+		chip->vbus_on = true;
+	}
+
+	typec_set_pwr_role(chip->port, STUSB160X_CC_POWER_ROLE(status));
+	stusb160x_set_data_role(chip, STUSB160X_CC_POWER_ROLE(status), true);
+
+	return 0;
+}
+
+static void stusb160x_detach(struct stusb160x *chip, u32 status)
+{
+	typec_set_pwr_role(chip->port, STUSB160X_CC_POWER_ROLE(status));
+	stusb160x_set_data_role(chip, STUSB160X_CC_POWER_ROLE(status), false);
+
+	if (chip->vbus_on) {
+		regulator_disable(chip->vdd_supply);
+		chip->vbus_on = false;
+	}
+}
+
+static irqreturn_t stusb160x_irq_handler(struct typec_port *port)
+{
+	struct stusb160x *chip = typec_get_drvdata(port);
+	u32 pending, trans, status;
+	int ret;
+
+	ret = regmap_read(chip->regmap, STUSB160X_ALERT_STATUS, &pending);
+	if (ret)
+		goto err;
+
+	if (pending & STUSB160X_CC_CONNECTION) {
+		ret = regmap_read(chip->regmap,
+				  STUSB160X_CC_CONNECTION_STATUS_TRANS, &trans);
+		if (ret)
+			goto err;
+		ret = regmap_read(chip->regmap,
+				  STUSB160X_CC_CONNECTION_STATUS, &status);
+		if (ret)
+			goto err;
+
+		if (trans & STUSB160X_CC_ATTACH_TRANS) {
+			if (status & STUSB160X_CC_ATTACH) {
+				ret = stusb160x_attach(chip, status);
+				if (ret)
+					goto err;
+			} else {
+				stusb160x_detach(chip, status);
+			}
+		}
+	}
+err:
+	return IRQ_HANDLED;
+}
+
+static int stusb160x_irq_init(struct stusb160x *chip)
+{
+	u32 status;
+	int ret;
+
+	ret = regmap_read(chip->regmap,
+			  STUSB160X_CC_CONNECTION_STATUS, &status);
+	if (ret)
+		return ret;
+
+	if (status & STUSB160X_CC_ATTACH) {
+		ret = stusb160x_attach(chip, status);
+		if (ret)
+			dev_err(chip->dev, "attach failed: %d\n", ret);
+	}
+
+	/* Unmask CC_CONNECTION events */
+	ret = regmap_write_bits(chip->regmap, STUSB160X_ALERT_STATUS_MASK_CTRL,
+				STUSB160X_CC_CONNECTION, 0);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+static int stusb160x_chip_init(struct stusb160x *chip)
+{
+	u32 val;
+	int ret;
+
+	/* Change the default Type-C power mode */
+	if (chip->port_type == TYPEC_PORT_SRC)
+		ret = regmap_update_bits(chip->regmap,
+					 STUSB160X_CC_POWER_MODE_CTRL,
+					 STUSB160X_CC_POWER_MODE,
+					 SOURCE_WITH_ACCESSORY);
+	else if (chip->port_type == TYPEC_PORT_SNK)
+		ret = regmap_update_bits(chip->regmap,
+					 STUSB160X_CC_POWER_MODE_CTRL,
+					 STUSB160X_CC_POWER_MODE,
+					 SINK_WITH_ACCESSORY);
+	else /* (chip->port_type == TYPEC_PORT_DRP) */
+		ret = regmap_update_bits(chip->regmap,
+					 STUSB160X_CC_POWER_MODE_CTRL,
+					 STUSB160X_CC_POWER_MODE,
+					 DUAL_WITH_ACCESSORY);
+	if (ret)
+		return ret;
+
+	if (chip->port_type == TYPEC_PORT_SNK)
+		goto skip_src;
+
+	/* Change the default Type-C Source power operation mode capability */
+	ret = regmap_update_bits(chip->regmap, STUSB160X_CC_CAPABILITY_CTRL,
+				 STUSB160X_CC_CURRENT_ADVERTISED,
+				 FIELD_PREP(STUSB160X_CC_CURRENT_ADVERTISED,
+					    chip->pwr_opmode));
+	if (ret)
+		return ret;
+
+	/* Manage Type-C Source Vconn supply */
+	if (stusb160x_get_vconn(chip)) {
+		ret = stusb160x_set_vconn(chip, true);
+		if (ret)
+			return ret;
+	}
+
+skip_src:
+	/* Mask all events interrupts - to be unmasked with interrupt support */
+	ret = regmap_update_bits(chip->regmap, STUSB160X_ALERT_STATUS_MASK_CTRL,
+				 STUSB160X_ALL_ALERTS, STUSB160X_ALL_ALERTS);
+	if (ret)
+		return ret;
+
+	/* Read status at least once to clear any stale interrupts */
+	regmap_read(chip->regmap, STUSB160X_ALERT_STATUS, &val);
+	regmap_read(chip->regmap, STUSB160X_CC_CONNECTION_STATUS_TRANS, &val);
+	regmap_read(chip->regmap, STUSB160X_MONITORING_STATUS_TRANS, &val);
+	regmap_read(chip->regmap, STUSB160X_HW_FAULT_STATUS_TRANS, &val);
+
+	return 0;
+}
+
+static const struct typec_operations stusb160x_typec_ops = {
+	.poll	= stusb160x_irq_handler,
+};
+
+static const struct of_device_id stusb160x_of_match[] = {
+	{ .compatible = "st,stusb1600", .data = &stusb1600_regmap_config},
+	{},
+};
+MODULE_DEVICE_TABLE(of, stusb160x_of_match);
+
+static int stusb160x_probe(struct device *dev)
+{
+	struct i2c_client *client = to_i2c_client(dev);
+	const struct regmap_config *regmap_config;
+	struct stusb160x *chip;
+	struct device_node *node;
+	int ret;
+
+	chip = devm_kzalloc(&client->dev, sizeof(struct stusb160x), GFP_KERNEL);
+	if (!chip)
+		return -ENOMEM;
+
+	i2c_set_clientdata(client, chip);
+
+	regmap_config = device_get_match_data(dev);
+
+	chip->regmap = regmap_init_i2c(client, regmap_config);
+	if (IS_ERR(chip->regmap)) {
+		ret = PTR_ERR(chip->regmap);
+		dev_err(&client->dev,
+			"Failed to allocate register map:%d\n", ret);
+		return ret;
+	}
+
+	chip->dev = &client->dev;
+
+	chip->vsys_supply = regulator_get_optional(chip->dev, "vsys");
+	if (IS_ERR(chip->vsys_supply)) {
+		ret = PTR_ERR(chip->vsys_supply);
+		if (ret != -ENODEV)
+			return ret;
+		chip->vsys_supply = NULL;
+	}
+
+	chip->vdd_supply = regulator_get_optional(chip->dev, "vdd");
+	if (IS_ERR(chip->vdd_supply)) {
+		ret = PTR_ERR(chip->vdd_supply);
+		if (ret != -ENODEV)
+			return ret;
+		chip->vdd_supply = NULL;
+	}
+
+	chip->vconn_supply = regulator_get_optional(chip->dev, "vconn");
+	if (IS_ERR(chip->vconn_supply)) {
+		ret = PTR_ERR(chip->vconn_supply);
+		if (ret != -ENODEV)
+			return ret;
+		chip->vconn_supply = NULL;
+	}
+
+	node = of_get_child_by_name(client->dev.of_node, "connector");
+	if (!node)
+		return -ENODEV;
+
+	/*
+	 * When both VDD and VSYS power supplies are present, the low power
+	 * supply VSYS is selected when VSYS voltage is above 3.1 V.
+	 * Otherwise VDD is selected.
+	 */
+	if (chip->vdd_supply &&
+	    (!chip->vsys_supply ||
+	     (regulator_get_voltage(chip->vsys_supply) <= 3100000)))
+		chip->main_supply = chip->vdd_supply;
+	else
+		chip->main_supply = chip->vsys_supply;
+
+	if (chip->main_supply) {
+		ret = regulator_enable(chip->main_supply);
+		if (ret) {
+			dev_err(chip->dev,
+				"Failed to enable main supply: %d\n", ret);
+			goto fwnode_put;
+		}
+	}
+
+	ret = stusb160x_get_connector_caps(chip, node);
+	if (ret)
+		goto main_reg_disable;
+
+	ret = stusb160x_chip_init(chip);
+	if (ret) {
+		dev_err(chip->dev, "Failed to init port: %d\n", ret);
+		goto main_reg_disable;
+	}
+
+	chip->capability.driver_data = chip;
+	chip->capability.ops = &stusb160x_typec_ops;
+	chip->capability.of_node = node;
+
+	chip->port = typec_register_port(chip->dev, &chip->capability);
+	if (IS_ERR(chip->port)) {
+		ret = PTR_ERR(chip->port);
+		goto all_reg_disable;
+	}
+
+	stusb160x_irq_init(chip);
+
+	/*
+	 * If Source or Dual power role, need to enable VDD supply
+	 * providing Vbus if present. In case of interrupt support,
+	 * VDD supply will be dynamically managed upon attach/detach
+	 * interrupt.
+	 */
+	if (chip->port_type != TYPEC_PORT_SNK && chip->vdd_supply) {
+		ret = regulator_enable(chip->vdd_supply);
+		if (ret) {
+			dev_err(chip->dev,
+				"Failed to enable VDD supply: %d\n",
+				ret);
+			goto all_reg_disable;
+		}
+		chip->vbus_on = true;
+	}
+
+	regmap_register_cdev(chip->regmap, NULL);
+
+	return 0;
+
+all_reg_disable:
+	if (stusb160x_get_vconn(chip))
+		stusb160x_set_vconn(chip, false);
+main_reg_disable:
+	if (chip->main_supply)
+		regulator_disable(chip->main_supply);
+fwnode_put:
+
+	return ret;
+}
+
+static struct driver stusb160x_driver = {
+	.name		= "typec-stusb160x",
+	.of_match_table = stusb160x_of_match,
+	.probe		= stusb160x_probe,
+};
+device_i2c_driver(stusb160x_driver);
+
+MODULE_AUTHOR("Amelie Delaunay <amelie.delaunay@st.com>");
+MODULE_DESCRIPTION("STMicroelectronics STUSB160x Type-C controller driver");
+MODULE_LICENSE("GPL v2");

-- 
2.47.3



