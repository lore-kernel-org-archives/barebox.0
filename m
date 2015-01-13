Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo2.mail-out.ovh.net ([87.98.181.248])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YAuwO-0002Ri-OM
 for barebox@lists.infradead.org; Tue, 13 Jan 2015 06:27:02 +0000
Received: from mail94.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 4510F10049D4
 for <barebox@lists.infradead.org>; Tue, 13 Jan 2015 07:26:42 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 13 Jan 2015 07:26:16 +0100
Message-Id: <1421130376-32428-6-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1421130376-32428-1-git-send-email-plagnioj@jcrosoft.com>
References: <20150113062416.GB30554@ns203013.ovh.net>
 <1421130376-32428-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 6/6] regulator: add bcm2835 driver
To: barebox@lists.infradead.org

this will allow to handle IP power automatically and not at board level

Mainline kernel need this as they do not have the regulator driver support

as some IP such as USB are not power on at boot

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-bcm2835/include/mach/mbox.h |  49 ++++++++++
 drivers/regulator/Kconfig                 |   5 +
 drivers/regulator/Makefile                |   1 +
 drivers/regulator/bcm2835.c               | 149 ++++++++++++++++++++++++++++++
 4 files changed, 204 insertions(+)
 create mode 100644 drivers/regulator/bcm2835.c

diff --git a/arch/arm/mach-bcm2835/include/mach/mbox.h b/arch/arm/mach-bcm2835/include/mach/mbox.h
index e5f6bfa..d991ba7 100644
--- a/arch/arm/mach-bcm2835/include/mach/mbox.h
+++ b/arch/arm/mach-bcm2835/include/mach/mbox.h
@@ -172,6 +172,55 @@ struct bcm2835_mbox_tag_get_arm_mem {
 	} body;
 };
 
+#define BCM2835_MBOX_POWER_DEVID_SDHCI		0
+#define BCM2835_MBOX_POWER_DEVID_UART0		1
+#define BCM2835_MBOX_POWER_DEVID_UART1		2
+#define BCM2835_MBOX_POWER_DEVID_USB_HCD	3
+#define BCM2835_MBOX_POWER_DEVID_I2C0		4
+#define BCM2835_MBOX_POWER_DEVID_I2C1		5
+#define BCM2835_MBOX_POWER_DEVID_I2C2		6
+#define BCM2835_MBOX_POWER_DEVID_SPI		7
+#define BCM2835_MBOX_POWER_DEVID_CCP2TX		8
+
+#define BCM2835_MBOX_POWER_STATE_RESP_ON	(1 << 0)
+/* Device doesn't exist */
+#define BCM2835_MBOX_POWER_STATE_RESP_NODEV	(1 << 1)
+
+#define BCM2835_MBOX_TAG_GET_POWER_STATE	0x00020001
+
+struct bcm2835_mbox_tag_get_power_state {
+	struct bcm2835_mbox_tag_hdr tag_hdr;
+	union {
+		struct {
+			u32 device_id;
+		} req;
+		struct {
+			u32 device_id;
+			u32 state;
+		} resp;
+	} body;
+};
+
+#define BCM2835_MBOX_TAG_SET_POWER_STATE	0x00028001
+
+#define BCM2835_MBOX_SET_POWER_STATE_REQ_OFF	(0 << 0)
+#define BCM2835_MBOX_SET_POWER_STATE_REQ_ON	(1 << 0)
+#define BCM2835_MBOX_SET_POWER_STATE_REQ_WAIT	(1 << 1)
+
+struct bcm2835_mbox_tag_set_power_state {
+	struct bcm2835_mbox_tag_hdr tag_hdr;
+	union {
+		struct {
+			u32 device_id;
+			u32 state;
+		} req;
+		struct {
+			u32 device_id;
+			u32 state;
+		} resp;
+	} body;
+};
+
 #define BCM2835_MBOX_TAG_GET_CLOCK_RATE	0x00030002
 
 #define BCM2835_MBOX_CLOCK_ID_EMMC	1
diff --git a/drivers/regulator/Kconfig b/drivers/regulator/Kconfig
index 4085b3f..05c3f48 100644
--- a/drivers/regulator/Kconfig
+++ b/drivers/regulator/Kconfig
@@ -11,4 +11,9 @@ config REGULATOR_FIXED
 	  This enables a simple fixed regulator. It is used for regulators
 	  which are not software controllable or controllable via gpio.
 
+config REGULATOR_BCM2835
+	bool
+	depends on ARCH_BCM2835
+	default y
+
 endif
diff --git a/drivers/regulator/Makefile b/drivers/regulator/Makefile
index 65e65d8..d663c16 100644
--- a/drivers/regulator/Makefile
+++ b/drivers/regulator/Makefile
@@ -1,2 +1,3 @@
 obj-$(CONFIG_REGULATOR) += core.o
 obj-$(CONFIG_REGULATOR_FIXED) += fixed.o
+obj-$(CONFIG_REGULATOR_BCM2835) += bcm2835.o
diff --git a/drivers/regulator/bcm2835.c b/drivers/regulator/bcm2835.c
new file mode 100644
index 0000000..5195210
--- /dev/null
+++ b/drivers/regulator/bcm2835.c
@@ -0,0 +1,149 @@
+/*
+ * bcm2835 regulator support
+ *
+ * Copyright (c) 2015 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * GPLv2 Only
+ */
+#include <common.h>
+#include <malloc.h>
+#include <init.h>
+#include <regulator.h>
+
+#include <mach/mbox.h>
+
+#define REG_DEV(_id, _name)		\
+	{				\
+		.id 		= _id,	\
+		.devname	= _name,\
+	}
+
+static struct regulator_bcm2835 {
+	int id;
+	char *devname;
+
+	struct device_d *dev;
+	struct regulator_dev rdev;
+} regs[] = {
+	REG_DEV(BCM2835_MBOX_POWER_DEVID_SDHCI, "bcm2835_mci0"),
+	REG_DEV(BCM2835_MBOX_POWER_DEVID_UART0, "uart0-pl0110"),
+	REG_DEV(BCM2835_MBOX_POWER_DEVID_UART1, "uart0-pl0111"),
+	REG_DEV(BCM2835_MBOX_POWER_DEVID_USB_HCD, "bcm2835_usb"),
+	REG_DEV(BCM2835_MBOX_POWER_DEVID_I2C0, "bcm2835_i2c0"),
+	REG_DEV(BCM2835_MBOX_POWER_DEVID_I2C1, "bcm2835_i2c1"),
+	REG_DEV(BCM2835_MBOX_POWER_DEVID_I2C2, "bcm2835_i2c2"),
+	REG_DEV(BCM2835_MBOX_POWER_DEVID_SPI, "bcm2835_spi"),
+	REG_DEV(BCM2835_MBOX_POWER_DEVID_CCP2TX, "bcm2835_ccp2tx"),
+};
+
+struct msg_set_power_state {
+	struct bcm2835_mbox_hdr hdr;
+	struct bcm2835_mbox_tag_set_power_state set_power_state;
+	u32 end_tag;
+};
+
+static int regulator_bcm2835_set(struct regulator_bcm2835 *rb, int state)
+{
+	BCM2835_MBOX_STACK_ALIGN(struct msg_set_power_state, msg_pwr);
+	int ret;
+
+	BCM2835_MBOX_INIT_HDR(msg_pwr);
+	BCM2835_MBOX_INIT_TAG(&msg_pwr->set_power_state,
+			      SET_POWER_STATE);
+	msg_pwr->set_power_state.body.req.device_id = rb->id;
+	msg_pwr->set_power_state.body.req.state =
+		state |
+		BCM2835_MBOX_SET_POWER_STATE_REQ_WAIT;
+
+	ret = bcm2835_mbox_call_prop(BCM2835_MBOX_PROP_CHAN,
+				     &msg_pwr->hdr);
+	if (ret) {
+		dev_err(rb->dev ,"bcm2835: Could not set module %u power state\n",
+		       rb->id);
+		return ret;
+	}
+
+	return 0;
+}
+
+static int regulator_bcm2835_enable(struct regulator_dev *rdev)
+{
+	struct regulator_bcm2835 *rb = container_of(rdev, struct regulator_bcm2835, rdev);
+	
+	return regulator_bcm2835_set(rb, BCM2835_MBOX_SET_POWER_STATE_REQ_ON);
+}
+
+static int regulator_bcm2835_disable(struct regulator_dev *rdev)
+{
+	struct regulator_bcm2835 *rb = container_of(rdev, struct regulator_bcm2835, rdev);
+
+	return regulator_bcm2835_set(rb, BCM2835_MBOX_SET_POWER_STATE_REQ_OFF);
+}
+
+struct msg_get_power_state {
+	struct bcm2835_mbox_hdr hdr;
+	struct bcm2835_mbox_tag_get_power_state get_power_state;
+	u32 end_tag;
+};
+
+static int regulator_bcm2835_is_enabled(struct regulator_dev *rdev)
+{
+	struct regulator_bcm2835 *rb = container_of(rdev, struct regulator_bcm2835, rdev);
+	BCM2835_MBOX_STACK_ALIGN(struct msg_get_power_state, msg_pwr);
+	int ret;
+
+	BCM2835_MBOX_INIT_HDR(msg_pwr);
+	BCM2835_MBOX_INIT_TAG(&msg_pwr->get_power_state,
+			      GET_POWER_STATE);
+	msg_pwr->get_power_state.body.req.device_id = rb->id;
+
+	ret = bcm2835_mbox_call_prop(BCM2835_MBOX_PROP_CHAN,
+				     &msg_pwr->hdr);
+	if (ret) {
+		dev_err(rb->dev ,"bcm2835: Could not get module %u power state\n",
+		       rb->id);
+		return ret;
+	}
+
+	return msg_pwr->get_power_state.body.resp.state;
+}
+
+static struct regulator_ops bcm2835_ops = {
+	.enable = regulator_bcm2835_enable,
+	.disable = regulator_bcm2835_disable,
+	.is_enabled = regulator_bcm2835_is_enabled,
+};
+
+static int regulator_bcm2835_probe(struct device_d *dev)
+{
+	struct regulator_bcm2835 *rb;
+	int ret, i;
+
+	for (i = 0; i < ARRAY_SIZE(regs); i++) {
+		rb = &regs[i];
+
+		rb->rdev.ops = &bcm2835_ops;
+		rb->dev = dev;
+
+		ret = dev_regulator_register(&rb->rdev, rb->devname, NULL);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
+static struct driver_d regulator_bcm2835_driver = {
+	.name  = "regulator-bcm2835",
+	.probe = regulator_bcm2835_probe,
+};
+postcore_platform_driver(regulator_bcm2835_driver);
+
+static int regulator_bcm2835_init(void)
+{
+	add_generic_device("regulator-bcm2835", DEVICE_ID_SINGLE, NULL,
+			   0, 0, 0, NULL);
+
+	return 0;
+}
+postcore_initcall(regulator_bcm2835_init);
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
