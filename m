Delivery-date: Mon, 16 Jan 2023 14:49:00 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pHPrA-00DbzW-TP
	for lore@lore.pengutronix.de; Mon, 16 Jan 2023 14:49:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pHPr3-0000ks-Iu
	for lore@pengutronix.de; Mon, 16 Jan 2023 14:48:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+KnrjYO69Q4HVC1J+7Jqzbrdf6xOCbQHeeCNxff5C7g=; b=F7l/sfN4D0SZEL3NUfXWe2O9tC
	RlCk9yJRYT2p2765u7rRhF1zxLyxHIOBvHazu8yOku4ZaJjD6+bSl+UYSwnR2/kjBTcEnNZM1oYjI
	83d6LJsxGRnrG8n/saXT4fr8U8ayKbIFq5ESH4Q1OM0+urSYozvKGKiZBi9nTA7ISztWtBq9n4EDw
	PVm5RzOOoQa3X8KHPoRSDwxWMEW+jWHBcs8YOr1ng8vSGqk+mIqfdwz91ix1ZAUbPo+jZLrzsNi0W
	lEZwhGTfeS3TJh4WUbkgQhRtutOn1kN2AQXQ1kY5c2n3xfcBfdynCS3kX0jV1LJLDTAb9xcQ5dSRR
	GBw86R0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHPp3-00AYus-KW; Mon, 16 Jan 2023 13:46:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHPnZ-00AY8H-6H
	for barebox@lists.infradead.org; Mon, 16 Jan 2023 13:45:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pHPnP-0007zO-Rl; Mon, 16 Jan 2023 14:45:07 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pHPnP-006SKI-7U; Mon, 16 Jan 2023 14:45:07 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pHPnN-008PyX-S3; Mon, 16 Jan 2023 14:45:05 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ore@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 16 Jan 2023 14:45:01 +0100
Message-Id: <20230116134501.2006391-10-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230116134501.2006391-1-a.fatoum@pengutronix.de>
References: <20230116134501.2006391-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 9/9] net: dsa: add Realtek (rtl8365mb/rtl8366rb) switch support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This imports the Linux v6.1 state of the driver into barebox. This has
been tested with the RTL8365MB in (bitbanged) SMI mode.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/Kconfig                    |    2 +
 drivers/net/Makefile                   |    1 +
 drivers/net/realtek-dsa/Kconfig        |   62 ++
 drivers/net/realtek-dsa/Makefile       |    7 +
 drivers/net/realtek-dsa/dsa_priv.h     |   77 ++
 drivers/net/realtek-dsa/realtek-mdio.c |  226 +++++
 drivers/net/realtek-dsa/realtek-smi.c  |  502 ++++++++++
 drivers/net/realtek-dsa/realtek.h      |  105 ++
 drivers/net/realtek-dsa/rtl8365mb.c    | 1273 ++++++++++++++++++++++++
 drivers/net/realtek-dsa/rtl8366rb.c    | 1123 +++++++++++++++++++++
 drivers/net/realtek-dsa/tag_rtl4_a.c   |  103 ++
 drivers/net/realtek-dsa/tag_rtl8_4.c   |  205 ++++
 drivers/net/realtek-dsa/tagger.c       |   38 +
 include/linux/barebox-wrapper.h        |    1 +
 include/linux/if_bridge.h              |    9 +
 include/net.h                          |    3 +-
 16 files changed, 3736 insertions(+), 1 deletion(-)
 create mode 100644 drivers/net/realtek-dsa/Kconfig
 create mode 100644 drivers/net/realtek-dsa/Makefile
 create mode 100644 drivers/net/realtek-dsa/dsa_priv.h
 create mode 100644 drivers/net/realtek-dsa/realtek-mdio.c
 create mode 100644 drivers/net/realtek-dsa/realtek-smi.c
 create mode 100644 drivers/net/realtek-dsa/realtek.h
 create mode 100644 drivers/net/realtek-dsa/rtl8365mb.c
 create mode 100644 drivers/net/realtek-dsa/rtl8366rb.c
 create mode 100644 drivers/net/realtek-dsa/tag_rtl4_a.c
 create mode 100644 drivers/net/realtek-dsa/tag_rtl8_4.c
 create mode 100644 drivers/net/realtek-dsa/tagger.c
 create mode 100644 include/linux/if_bridge.h

diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index 2622f64651d2..30de1f544ca9 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -331,6 +331,8 @@ config DRIVER_NET_SJA1105
 	    - SJA1105R (Gen. 2, SGMII, No TT-Ethernet)
 	    - SJA1105S (Gen. 2, SGMII, TT-Ethernet)
 
+source "drivers/net/realtek-dsa/Kconfig"
+
 endif
 
 endmenu
diff --git a/drivers/net/Makefile b/drivers/net/Makefile
index 7ff330a2bf42..e491af391ab1 100644
--- a/drivers/net/Makefile
+++ b/drivers/net/Makefile
@@ -44,3 +44,4 @@ obj-$(CONFIG_DRIVER_NET_EFI_SNP)	+= efi-snp.o
 obj-$(CONFIG_DRIVER_NET_VIRTIO)		+= virtio.o
 obj-$(CONFIG_DRIVER_NET_AG71XX)		+= ag71xx.o
 obj-$(CONFIG_DRIVER_NET_LITEETH)	+= liteeth.o
+obj-$(CONFIG_DRIVER_NET_DSA_REALTEK)	+= realtek-dsa/
diff --git a/drivers/net/realtek-dsa/Kconfig b/drivers/net/realtek-dsa/Kconfig
new file mode 100644
index 000000000000..dd8599565f6e
--- /dev/null
+++ b/drivers/net/realtek-dsa/Kconfig
@@ -0,0 +1,62 @@
+# SPDX-License-Identifier: GPL-2.0-only
+menuconfig DRIVER_NET_DSA_REALTEK
+	tristate "Realtek Ethernet switch family support"
+	depends on DSA
+	select FIXED_PHY
+	select IRQ_DOMAIN
+	select REALTEK_PHY
+	select REGMAP
+	help
+	  Select to enable support for Realtek Ethernet switch chips.
+
+	  Note that at least one interface driver must be enabled for the
+	  subdrivers to be loaded. Moreover, an interface driver cannot achieve
+	  anything without at least one subdriver enabled.
+
+config NET_DSA_TAG_RTL4_A
+	bool
+	help
+	  Selected to enable support for tagging frames for the
+	  Realtek switches with 4 byte protocol A tags, sich as found in
+	  the Realtek RTL8366RB.
+
+config NET_DSA_TAG_RTL8_4
+	bool
+	help
+	  Selected to enable support for tagging frames for Realtek
+	  switches with 8 byte protocol 4 tags, such as the Realtek RTL8365MB-VC.
+
+if DRIVER_NET_DSA_REALTEK
+
+
+config NET_DSA_REALTEK_MDIO
+	tristate "Realtek MDIO interface driver"
+	depends on OFDEVICE
+	help
+	  Select to enable support for registering switches configured
+	  through MDIO.
+
+config NET_DSA_REALTEK_SMI
+	tristate "Realtek SMI interface driver"
+	depends on OFDEVICE
+	help
+	  Select to enable support for registering switches connected
+	  through SMI.
+
+config NET_DSA_REALTEK_RTL8365MB
+	tristate "Realtek RTL8365MB switch subdriver"
+	imply NET_DSA_REALTEK_SMI
+	imply NET_DSA_REALTEK_MDIO
+	select NET_DSA_TAG_RTL8_4
+	help
+	  Select to enable support for Realtek RTL8365MB-VC and RTL8367S.
+
+config NET_DSA_REALTEK_RTL8366RB
+	tristate "Realtek RTL8366RB switch subdriver"
+	imply NET_DSA_REALTEK_SMI
+	imply NET_DSA_REALTEK_MDIO
+	select NET_DSA_TAG_RTL4_A
+	help
+	  Select to enable support for Realtek RTL8366RB.
+
+endif
diff --git a/drivers/net/realtek-dsa/Makefile b/drivers/net/realtek-dsa/Makefile
new file mode 100644
index 000000000000..3aafa0a8a7e5
--- /dev/null
+++ b/drivers/net/realtek-dsa/Makefile
@@ -0,0 +1,7 @@
+# SPDX-License-Identifier: GPL-2.0
+obj-$(CONFIG_NET_DSA_REALTEK_MDIO) 	+= realtek-mdio.o tagger.o
+obj-$(CONFIG_NET_DSA_REALTEK_SMI) 	+= realtek-smi.o tagger.o
+obj-$(CONFIG_NET_DSA_REALTEK_RTL8366RB) += rtl8366rb.o
+obj-$(CONFIG_NET_DSA_REALTEK_RTL8365MB) += rtl8365mb.o
+obj-$(CONFIG_NET_DSA_TAG_RTL4_A)	+= tag_rtl4_a.o
+obj-$(CONFIG_NET_DSA_TAG_RTL8_4)	+= tag_rtl8_4.o
diff --git a/drivers/net/realtek-dsa/dsa_priv.h b/drivers/net/realtek-dsa/dsa_priv.h
new file mode 100644
index 000000000000..4cda51831054
--- /dev/null
+++ b/drivers/net/realtek-dsa/dsa_priv.h
@@ -0,0 +1,77 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/* SPDX-FileCopyrightText: (c) 2008-2009 Marvell Semiconductor */
+
+#ifndef __DSA_PRIV_H
+#define __DSA_PRIV_H
+
+#include <net.h>
+#include <linux/string.h>
+
+
+/* Helper for removing DSA header tags from packets in the RX path.
+ * Must not be called before skb_pull(len).
+ *
+ * Before:
+ * packet
+ * |
+ * v
+ * |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |
+ * +-----------------------+-----------------------+---------------+-------+
+ * |    Destination MAC    |      Source MAC       |  DSA header   | EType |
+ * +-----------------------+-----------------------+---------------+-------+
+ *                                                 |               |
+ *                                                 <----- len ----->
+ * After:
+ *
+ * <----- len ----->
+ *                 |
+ *       >>>>>>>   v
+ *       >>>>>>>   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |
+ *       >>>>>>>   +-----------------------+-----------------------+-------+
+ *       >>>>>>>   |    Destination MAC    |      Source MAC       | EType |
+ *                 +-----------------------+-----------------------+-------+
+ *
+ */
+static inline void dsa_strip_etype_header(void *packet, int len)
+{
+	memmove(packet + len, packet, 2 * ETH_ALEN);
+}
+
+/* Helper for creating space for DSA header tags in TX path packets.
+ *
+ * Before:
+ *
+ *       <<<<<<<   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |
+ * ^     <<<<<<<   +-----------------------+-----------------------+-------+
+ * |     <<<<<<<   |    Destination MAC    |      Source MAC       | EType |
+ * |               +-----------------------+-----------------------+-------+
+ * <----- len ----->
+ * |
+ * |
+ * packet
+ *
+ * After:
+ *
+ * |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |
+ * +-----------------------+-----------------------+---------------+-------+
+ * |    Destination MAC    |      Source MAC       |  DSA header   | EType |
+ * +-----------------------+-----------------------+---------------+-------+
+ * ^                                               |               |
+ * |                                               <----- len ----->
+ * packet
+ */
+static inline void dsa_alloc_etype_header(void *packet, int len)
+{
+	memmove(packet, packet + len, 2 * ETH_ALEN);
+}
+
+/* On TX, skb->data points to skb_mac_header(skb), which means that EtherType
+ * header taggers start exactly where the EtherType is (the EtherType is
+ * treated as part of the DSA header).
+ */
+static inline void *dsa_etype_header_pos(void *packet)
+{
+	return packet + 2 * ETH_ALEN;
+}
+
+#endif
diff --git a/drivers/net/realtek-dsa/realtek-mdio.c b/drivers/net/realtek-dsa/realtek-mdio.c
new file mode 100644
index 000000000000..7c26841d2fac
--- /dev/null
+++ b/drivers/net/realtek-dsa/realtek-mdio.c
@@ -0,0 +1,226 @@
+// SPDX-License-Identifier: GPL-2.0+
+/* Realtek MDIO interface driver
+ *
+ * ASICs we intend to support with this driver:
+ *
+ * RTL8366   - The original version, apparently
+ * RTL8369   - Similar enough to have the same datsheet as RTL8366
+ * RTL8366RB - Probably reads out "RTL8366 revision B", has a quite
+ *             different register layout from the other two
+ * RTL8366S  - Is this "RTL8366 super"?
+ * RTL8367   - Has an OpenWRT driver as well
+ * RTL8368S  - Seems to be an alternative name for RTL8366RB
+ * RTL8370   - Also uses SMI
+ *
+ * Copyright (C) 2017 Linus Walleij <linus.walleij@linaro.org>
+ * Copyright (C) 2010 Antti Seppälä <a.seppala@gmail.com>
+ * Copyright (C) 2010 Roman Yeryomin <roman@advem.lv>
+ * Copyright (C) 2011 Colin Leitner <colin.leitner@googlemail.com>
+ * Copyright (C) 2009-2010 Gabor Juhos <juhosg@openwrt.org>
+ */
+
+#include <of_device.h>
+#include <regmap.h>
+#include <clock.h>
+#include <gpiod.h>
+#include <linux/mdio.h>
+
+#include "realtek.h"
+
+/* Read/write via mdiobus */
+#define REALTEK_MDIO_CTRL0_REG		31
+#define REALTEK_MDIO_START_REG		29
+#define REALTEK_MDIO_CTRL1_REG		21
+#define REALTEK_MDIO_ADDRESS_REG	23
+#define REALTEK_MDIO_DATA_WRITE_REG	24
+#define REALTEK_MDIO_DATA_READ_REG	25
+
+#define REALTEK_MDIO_START_OP		0xFFFF
+#define REALTEK_MDIO_ADDR_OP		0x000E
+#define REALTEK_MDIO_READ_OP		0x0001
+#define REALTEK_MDIO_WRITE_OP		0x0003
+
+static int realtek_mdio_write(void *ctx, u32 reg, u32 val)
+{
+	struct realtek_priv *priv = ctx;
+	struct mii_bus *bus = priv->bus;
+	int ret;
+
+	ret = bus->write(bus, priv->mdio_addr, REALTEK_MDIO_CTRL0_REG, REALTEK_MDIO_ADDR_OP);
+	if (ret)
+		goto out_unlock;
+
+	ret = bus->write(bus, priv->mdio_addr, REALTEK_MDIO_ADDRESS_REG, reg);
+	if (ret)
+		goto out_unlock;
+
+	ret = bus->write(bus, priv->mdio_addr, REALTEK_MDIO_DATA_WRITE_REG, val);
+	if (ret)
+		goto out_unlock;
+
+	ret = bus->write(bus, priv->mdio_addr, REALTEK_MDIO_CTRL1_REG, REALTEK_MDIO_WRITE_OP);
+
+out_unlock:
+	return ret;
+}
+
+static int realtek_mdio_read(void *ctx, u32 reg, u32 *val)
+{
+	struct realtek_priv *priv = ctx;
+	struct mii_bus *bus = priv->bus;
+	int ret;
+
+	ret = bus->write(bus, priv->mdio_addr, REALTEK_MDIO_CTRL0_REG, REALTEK_MDIO_ADDR_OP);
+	if (ret)
+		goto out_unlock;
+
+	ret = bus->write(bus, priv->mdio_addr, REALTEK_MDIO_ADDRESS_REG, reg);
+	if (ret)
+		goto out_unlock;
+
+	ret = bus->write(bus, priv->mdio_addr, REALTEK_MDIO_CTRL1_REG, REALTEK_MDIO_READ_OP);
+	if (ret)
+		goto out_unlock;
+
+	ret = bus->read(bus, priv->mdio_addr, REALTEK_MDIO_DATA_READ_REG);
+	if (ret >= 0) {
+		*val = ret;
+		ret = 0;
+	}
+
+out_unlock:
+	return ret;
+}
+
+static const struct regmap_config realtek_mdio_regmap_config = {
+	.reg_bits = 10, /* A4..A0 R4..R0 */
+	.val_bits = 16,
+	.reg_stride = 1,
+	/* PHY regs are at 0x8000 */
+	.max_register = 0xffff,
+	.reg_format_endian = REGMAP_ENDIAN_BIG,
+};
+
+static const struct regmap_bus realtek_mdio_regmap_bus = {
+	.reg_write = realtek_mdio_write,
+	.reg_read = realtek_mdio_read,
+};
+
+static int realtek_mdio_probe(struct phy_device *mdiodev)
+{
+	struct realtek_priv *priv;
+	struct device *dev = &mdiodev->dev;
+	const struct realtek_variant *var;
+	struct regmap_config rc;
+	struct device_node *np;
+	int ret;
+
+	var = of_device_get_match_data(dev);
+	if (!var)
+		return -EINVAL;
+
+	priv = kzalloc(sizeof(*priv), GFP_KERNEL);
+	if (!priv)
+		return -ENOMEM;
+
+	rc = realtek_mdio_regmap_config;
+	priv->map = regmap_init(dev, &realtek_mdio_regmap_bus, priv, &rc);
+	if (IS_ERR(priv->map)) {
+		ret = PTR_ERR(priv->map);
+		dev_err(dev, "regmap init failed: %d\n", ret);
+		return ret;
+	}
+
+	priv->mdio_addr = mdiodev->addr;
+	priv->bus = mdiodev->bus;
+	priv->dev = &mdiodev->dev;
+	priv->chip_data = (void *)priv + sizeof(*priv);
+
+	priv->clk_delay = var->clk_delay;
+	priv->cmd_read = var->cmd_read;
+	priv->cmd_write = var->cmd_write;
+	priv->ops = var->ops;
+
+	priv->write_reg_noack = realtek_mdio_write;
+
+	np = dev->of_node;
+
+	dev->priv = priv;
+
+	/* TODO: if power is software controlled, set up any regulators here */
+	priv->leds_disabled = of_property_read_bool(np, "realtek,disable-leds");
+
+	priv->reset = gpiod_get(dev, "reset", GPIOD_OUT_LOW);
+	if (priv->reset < 0 && priv->reset != -ENOENT)
+		return dev_err_probe(dev, priv->reset, "failed to get RESET GPIO\n");
+
+	if (gpio_is_valid(priv->reset)) {
+		gpiod_set_value(priv->reset, 1);
+		dev_dbg(dev, "asserted RESET\n");
+		mdelay(REALTEK_HW_STOP_DELAY);
+		gpiod_set_value(priv->reset, 0);
+		mdelay(REALTEK_HW_START_DELAY);
+		dev_dbg(dev, "deasserted RESET\n");
+	}
+
+	ret = priv->ops->detect(priv);
+	if (ret) {
+		dev_err(dev, "unable to detect switch\n");
+		return ret;
+	}
+
+	priv->ds = kzalloc(sizeof(*priv->ds), GFP_KERNEL);
+	if (!priv->ds)
+		return -ENOMEM;
+
+	priv->ds->dev = dev;
+	priv->ds->num_ports = priv->num_ports;
+	priv->ds->priv = priv;
+	priv->ds->ops = var->ds_ops_mdio;
+
+	ret = realtek_dsa_init_tagger(priv);
+	if (ret)
+		return ret;
+
+	ret = dsa_register_switch(priv->ds);
+	if (ret) {
+		dev_err(priv->dev, "unable to register switch ret = %d\n", ret);
+		return ret;
+	}
+
+	return priv->ops->setup ? priv->ops->setup(priv) : 0;
+}
+
+static void realtek_mdio_remove(struct phy_device *mdiodev)
+{
+	struct realtek_priv *priv = mdiodev->dev.priv;
+
+	/* leave the device reset asserted */
+	gpiod_set_value(priv->reset, 1);
+}
+
+static const struct of_device_id realtek_mdio_of_match[] = {
+#if IS_ENABLED(CONFIG_NET_DSA_REALTEK_RTL8366RB)
+	{ .compatible = "realtek,rtl8366rb", .data = &rtl8366rb_variant, },
+#endif
+#if IS_ENABLED(CONFIG_NET_DSA_REALTEK_RTL8365MB)
+	{ .compatible = "realtek,rtl8365mb", .data = &rtl8365mb_variant, },
+#endif
+	{ /* sentinel */ },
+};
+MODULE_DEVICE_TABLE(of, realtek_mdio_of_match);
+
+static struct phy_driver realtek_mdio_driver = {
+	.drv = {
+		.name = "realtek-mdio",
+		.of_match_table = of_match_ptr(realtek_mdio_of_match),
+	},
+	.probe  = realtek_mdio_probe,
+	.remove = realtek_mdio_remove,
+};
+
+device_mdio_driver(realtek_mdio_driver);
+
+MODULE_AUTHOR("Luiz Angelo Daros de Luca <luizluca@gmail.com>");
+MODULE_DESCRIPTION("Driver for Realtek ethernet switch connected via MDIO interface");
+MODULE_LICENSE("GPL");
diff --git a/drivers/net/realtek-dsa/realtek-smi.c b/drivers/net/realtek-dsa/realtek-smi.c
new file mode 100644
index 000000000000..83d197dcdfcd
--- /dev/null
+++ b/drivers/net/realtek-dsa/realtek-smi.c
@@ -0,0 +1,502 @@
+// SPDX-License-Identifier: GPL-2.0+
+/* Realtek Simple Management Interface (SMI) driver
+ * It can be discussed how "simple" this interface is.
+ *
+ * The SMI protocol piggy-backs the MDIO MDC and MDIO signals levels
+ * but the protocol is not MDIO at all. Instead it is a Realtek
+ * pecularity that need to bit-bang the lines in a special way to
+ * communicate with the switch.
+ *
+ * ASICs we intend to support with this driver:
+ *
+ * RTL8366   - The original version, apparently
+ * RTL8369   - Similar enough to have the same datsheet as RTL8366
+ * RTL8366RB - Probably reads out "RTL8366 revision B", has a quite
+ *             different register layout from the other two
+ * RTL8366S  - Is this "RTL8366 super"?
+ * RTL8367   - Has an OpenWRT driver as well
+ * RTL8368S  - Seems to be an alternative name for RTL8366RB
+ * RTL8370   - Also uses SMI
+ *
+ * Copyright (C) 2017 Linus Walleij <linus.walleij@linaro.org>
+ * Copyright (C) 2010 Antti Seppälä <a.seppala@gmail.com>
+ * Copyright (C) 2010 Roman Yeryomin <roman@advem.lv>
+ * Copyright (C) 2011 Colin Leitner <colin.leitner@googlemail.com>
+ * Copyright (C) 2009-2010 Gabor Juhos <juhosg@openwrt.org>
+ */
+
+#include <linux/kernel.h>
+#include <linux/spinlock.h>
+#include <driver.h>
+#include <of.h>
+#include <of_device.h>
+#include <linux/mdio.h>
+#include <clock.h>
+#include <gpiod.h>
+#include <driver.h>
+#include <regmap.h>
+#include <linux/bitops.h>
+#include <linux/if_bridge.h>
+
+
+#include "realtek.h"
+
+#define REALTEK_SMI_ACK_RETRY_COUNT		5
+
+static inline void realtek_smi_clk_delay(struct realtek_priv *priv)
+{
+	ndelay(priv->clk_delay);
+}
+
+static void realtek_smi_start(struct realtek_priv *priv)
+{
+	/* Set GPIO pins to output mode, with initial state:
+	 * SCK = 0, SDA = 1
+	 */
+	gpiod_direction_output(priv->mdc, 0);
+	gpiod_direction_output(priv->mdio, 1);
+	realtek_smi_clk_delay(priv);
+
+	/* CLK 1: 0 -> 1, 1 -> 0 */
+	gpiod_set_value(priv->mdc, 1);
+	realtek_smi_clk_delay(priv);
+	gpiod_set_value(priv->mdc, 0);
+	realtek_smi_clk_delay(priv);
+
+	/* CLK 2: */
+	gpiod_set_value(priv->mdc, 1);
+	realtek_smi_clk_delay(priv);
+	gpiod_set_value(priv->mdio, 0);
+	realtek_smi_clk_delay(priv);
+	gpiod_set_value(priv->mdc, 0);
+	realtek_smi_clk_delay(priv);
+	gpiod_set_value(priv->mdio, 1);
+}
+
+static void realtek_smi_stop(struct realtek_priv *priv)
+{
+	realtek_smi_clk_delay(priv);
+	gpiod_set_value(priv->mdio, 0);
+	gpiod_set_value(priv->mdc, 1);
+	realtek_smi_clk_delay(priv);
+	gpiod_set_value(priv->mdio, 1);
+	realtek_smi_clk_delay(priv);
+	gpiod_set_value(priv->mdc, 1);
+	realtek_smi_clk_delay(priv);
+	gpiod_set_value(priv->mdc, 0);
+	realtek_smi_clk_delay(priv);
+	gpiod_set_value(priv->mdc, 1);
+
+	/* Add a click */
+	realtek_smi_clk_delay(priv);
+	gpiod_set_value(priv->mdc, 0);
+	realtek_smi_clk_delay(priv);
+	gpiod_set_value(priv->mdc, 1);
+
+	/* Set GPIO pins to input mode */
+	gpiod_direction_input(priv->mdio);
+	gpiod_direction_input(priv->mdc);
+}
+
+static void realtek_smi_write_bits(struct realtek_priv *priv, u32 data, u32 len)
+{
+	for (; len > 0; len--) {
+		realtek_smi_clk_delay(priv);
+
+		/* Prepare data */
+		gpiod_set_value(priv->mdio, !!(data & (1 << (len - 1))));
+		realtek_smi_clk_delay(priv);
+
+		/* Clocking */
+		gpiod_set_value(priv->mdc, 1);
+		realtek_smi_clk_delay(priv);
+		gpiod_set_value(priv->mdc, 0);
+	}
+}
+
+static void realtek_smi_read_bits(struct realtek_priv *priv, u32 len, u32 *data)
+{
+	gpiod_direction_input(priv->mdio);
+
+	for (*data = 0; len > 0; len--) {
+		u32 u;
+
+		realtek_smi_clk_delay(priv);
+
+		/* Clocking */
+		gpiod_set_value(priv->mdc, 1);
+		realtek_smi_clk_delay(priv);
+		u = !!gpiod_get_value(priv->mdio);
+		gpiod_set_value(priv->mdc, 0);
+
+		*data |= (u << (len - 1));
+	}
+
+	gpiod_direction_output(priv->mdio, 0);
+}
+
+static int realtek_smi_wait_for_ack(struct realtek_priv *priv)
+{
+	int retry_cnt;
+
+	retry_cnt = 0;
+	do {
+		u32 ack;
+
+		realtek_smi_read_bits(priv, 1, &ack);
+		if (ack == 0)
+			break;
+
+		if (++retry_cnt > REALTEK_SMI_ACK_RETRY_COUNT) {
+			dev_err(priv->dev, "ACK timeout\n");
+			return -ETIMEDOUT;
+		}
+	} while (1);
+
+	return 0;
+}
+
+static int realtek_smi_write_byte(struct realtek_priv *priv, u8 data)
+{
+	realtek_smi_write_bits(priv, data, 8);
+	return realtek_smi_wait_for_ack(priv);
+}
+
+static int realtek_smi_write_byte_noack(struct realtek_priv *priv, u8 data)
+{
+	realtek_smi_write_bits(priv, data, 8);
+	return 0;
+}
+
+static int realtek_smi_read_byte0(struct realtek_priv *priv, u8 *data)
+{
+	u32 t;
+
+	/* Read data */
+	realtek_smi_read_bits(priv, 8, &t);
+	*data = (t & 0xff);
+
+	/* Send an ACK */
+	realtek_smi_write_bits(priv, 0x00, 1);
+
+	return 0;
+}
+
+static int realtek_smi_read_byte1(struct realtek_priv *priv, u8 *data)
+{
+	u32 t;
+
+	/* Read data */
+	realtek_smi_read_bits(priv, 8, &t);
+	*data = (t & 0xff);
+
+	/* Send an ACK */
+	realtek_smi_write_bits(priv, 0x01, 1);
+
+	return 0;
+}
+
+static int realtek_smi_read_reg(struct realtek_priv *priv, u32 addr, u32 *data)
+{
+	unsigned long flags;
+	u8 lo = 0;
+	u8 hi = 0;
+	int ret;
+
+	spin_lock_irqsave(&priv->lock, flags);
+
+	realtek_smi_start(priv);
+
+	/* Send READ command */
+	ret = realtek_smi_write_byte(priv, priv->cmd_read);
+	if (ret)
+		goto out;
+
+	/* Set ADDR[7:0] */
+	ret = realtek_smi_write_byte(priv, addr & 0xff);
+	if (ret)
+		goto out;
+
+	/* Set ADDR[15:8] */
+	ret = realtek_smi_write_byte(priv, addr >> 8);
+	if (ret)
+		goto out;
+
+	/* Read DATA[7:0] */
+	realtek_smi_read_byte0(priv, &lo);
+	/* Read DATA[15:8] */
+	realtek_smi_read_byte1(priv, &hi);
+
+	*data = ((u32)lo) | (((u32)hi) << 8);
+
+	ret = 0;
+
+ out:
+	realtek_smi_stop(priv);
+	spin_unlock_irqrestore(&priv->lock, flags);
+
+	return ret;
+}
+
+static int realtek_smi_write_reg(struct realtek_priv *priv,
+				 u32 addr, u32 data, bool ack)
+{
+	unsigned long flags;
+	int ret;
+
+	spin_lock_irqsave(&priv->lock, flags);
+
+	realtek_smi_start(priv);
+
+	/* Send WRITE command */
+	ret = realtek_smi_write_byte(priv, priv->cmd_write);
+	if (ret)
+		goto out;
+
+	/* Set ADDR[7:0] */
+	ret = realtek_smi_write_byte(priv, addr & 0xff);
+	if (ret)
+		goto out;
+
+	/* Set ADDR[15:8] */
+	ret = realtek_smi_write_byte(priv, addr >> 8);
+	if (ret)
+		goto out;
+
+	/* Write DATA[7:0] */
+	ret = realtek_smi_write_byte(priv, data & 0xff);
+	if (ret)
+		goto out;
+
+	/* Write DATA[15:8] */
+	if (ack)
+		ret = realtek_smi_write_byte(priv, data >> 8);
+	else
+		ret = realtek_smi_write_byte_noack(priv, data >> 8);
+	if (ret)
+		goto out;
+
+	ret = 0;
+
+ out:
+	realtek_smi_stop(priv);
+	spin_unlock_irqrestore(&priv->lock, flags);
+
+	return ret;
+}
+
+/* There is one single case when we need to use this accessor and that
+ * is when issueing soft reset. Since the device reset as soon as we write
+ * that bit, no ACK will come back for natural reasons.
+ */
+static int realtek_smi_write_reg_noack(void *ctx, u32 reg, u32 val)
+{
+	return realtek_smi_write_reg(ctx, reg, val, false);
+}
+
+/* Regmap accessors */
+
+static int realtek_smi_write(void *ctx, u32 reg, u32 val)
+{
+	struct realtek_priv *priv = ctx;
+
+	return realtek_smi_write_reg(priv, reg, val, true);
+}
+
+static int realtek_smi_read(void *ctx, u32 reg, u32 *val)
+{
+	struct realtek_priv *priv = ctx;
+
+	return realtek_smi_read_reg(priv, reg, val);
+}
+
+static const struct regmap_config realtek_smi_regmap_config = {
+	.reg_bits = 10, /* A4..A0 R4..R0 */
+	.val_bits = 16,
+	.reg_stride = 1,
+	/* PHY regs are at 0x8000 */
+	.max_register = 0xffff,
+	.reg_format_endian = REGMAP_ENDIAN_BIG,
+};
+
+static const struct regmap_bus realtek_smi_regmap_bus = {
+	.reg_read = realtek_smi_read,
+	.reg_write = realtek_smi_write,
+};
+
+static int realtek_smi_mdio_read(struct mii_bus *bus, int addr, int regnum)
+{
+	struct realtek_priv *priv = bus->priv;
+
+	return priv->ops->phy_read(priv, addr, regnum);
+}
+
+static int realtek_smi_mdio_write(struct mii_bus *bus, int addr, int regnum,
+				  u16 val)
+{
+	struct realtek_priv *priv = bus->priv;
+
+	return priv->ops->phy_write(priv, addr, regnum, val);
+}
+
+static int realtek_smi_setup_mdio(struct dsa_switch *ds)
+{
+	struct realtek_priv *priv =  ds->priv;
+	struct device_node *mdio_np;
+	int ret;
+
+	mdio_np = of_get_compatible_child(priv->dev->of_node, "realtek,smi-mdio");
+	if (!mdio_np) {
+		dev_err(priv->dev, "no MDIO bus node\n");
+		return -ENODEV;
+	}
+
+	priv->slave_mii_bus->priv = priv;
+	priv->slave_mii_bus->read = realtek_smi_mdio_read;
+	priv->slave_mii_bus->write = realtek_smi_mdio_write;
+	priv->slave_mii_bus->dev.of_node = mdio_np;
+	priv->slave_mii_bus->parent = priv->dev;
+	ds->slave_mii_bus = priv->slave_mii_bus;
+
+	ret = mdiobus_register(priv->slave_mii_bus);
+	if (ret) {
+		dev_err(priv->dev, "unable to register MDIO bus %pOF\n",
+			mdio_np);
+		goto err_put_node;
+	}
+
+	return 0;
+
+err_put_node:
+	of_node_put(mdio_np);
+
+	return ret;
+}
+
+static int realtek_smi_probe(struct device *dev)
+{
+	const struct realtek_variant *var;
+	struct realtek_priv *priv;
+	struct regmap_config rc;
+	struct device_node *np;
+	int ret;
+
+	var = of_device_get_match_data(dev);
+	np = dev->of_node;
+
+	priv = kzalloc(sizeof(*priv) + var->chip_data_sz, GFP_KERNEL);
+	if (!priv)
+		return -ENOMEM;
+	priv->chip_data = (void *)priv + sizeof(*priv);
+
+	rc = realtek_smi_regmap_config;
+	priv->map = regmap_init(dev, &realtek_smi_regmap_bus, priv, &rc);
+	if (IS_ERR(priv->map)) {
+		ret = PTR_ERR(priv->map);
+		dev_err(dev, "regmap init failed: %d\n", ret);
+		return ret;
+	}
+
+	/* Link forward and backward */
+	priv->dev = dev;
+	priv->clk_delay = var->clk_delay;
+	priv->cmd_read = var->cmd_read;
+	priv->cmd_write = var->cmd_write;
+	priv->ops = var->ops;
+
+	priv->setup_interface = realtek_smi_setup_mdio;
+	priv->write_reg_noack = realtek_smi_write_reg_noack;
+
+	dev->priv = priv;
+	spin_lock_init(&priv->lock);
+
+	/* TODO: if power is software controlled, set up any regulators here */
+
+	priv->reset = gpiod_get(dev, "reset", GPIOD_OUT_LOW);
+	if (priv->reset < 0 && priv->reset != -ENOENT)
+		return dev_err_probe(dev, priv->reset, "failed to get RESET GPIO\n");
+
+	if (gpio_is_valid(priv->reset)) {
+		gpiod_set_value(priv->reset, 1);
+		dev_dbg(dev, "asserted RESET\n");
+		mdelay(REALTEK_HW_STOP_DELAY);
+		gpiod_set_value(priv->reset, 0);
+		mdelay(REALTEK_HW_START_DELAY);
+		dev_dbg(dev, "deasserted RESET\n");
+	}
+
+	/* Fetch MDIO pins */
+	priv->mdc = gpiod_get(dev, "mdc", GPIOD_OUT_LOW);
+	if (!gpio_is_valid(priv->mdc))
+		return dev_err_probe(dev, priv->mdc, "failed to get MDC GPIO\n");
+
+	priv->mdio = gpiod_get(dev, "mdio", GPIOD_OUT_LOW);
+	if (!gpio_is_valid(priv->mdio))
+		return dev_err_probe(dev, priv->mdio, "failed to get MDIO GPIO\n");
+
+	priv->leds_disabled = of_property_read_bool(np, "realtek,disable-leds");
+
+	ret = priv->ops->detect(priv);
+	if (ret) {
+		dev_err(dev, "unable to detect switch\n");
+		return ret;
+	}
+
+	priv->ds = kzalloc(sizeof(*priv->ds), GFP_KERNEL);
+	if (!priv->ds)
+		return -ENOMEM;
+
+	priv->ds->dev = dev;
+	priv->ds->num_ports = priv->num_ports;
+	priv->ds->priv = priv;
+	priv->ds->ops = var->ds_ops_smi;
+
+	ret = realtek_dsa_init_tagger(priv);
+	if (ret)
+		return ret;
+
+	ret = dsa_register_switch(priv->ds);
+	if (ret) {
+		dev_err_probe(dev, ret, "unable to register switch\n");
+		return ret;
+	}
+
+	return priv->ops->setup ? priv->ops->setup(priv) : 0;
+}
+
+static void realtek_smi_remove(struct device *dev)
+{
+	struct realtek_priv *priv = dev->priv;
+
+	/* leave the device reset asserted */
+	gpiod_set_value(priv->reset, 1);
+}
+
+static const struct of_device_id realtek_smi_of_match[] = {
+#if IS_ENABLED(CONFIG_NET_DSA_REALTEK_RTL8366RB)
+	{
+		.compatible = "realtek,rtl8366rb",
+		.data = &rtl8366rb_variant,
+	},
+#endif
+#if IS_ENABLED(CONFIG_NET_DSA_REALTEK_RTL8365MB)
+	{
+		.compatible = "realtek,rtl8365mb",
+		.data = &rtl8365mb_variant,
+	},
+#endif
+	{ /* sentinel */ },
+};
+MODULE_DEVICE_TABLE(of, realtek_smi_of_match);
+
+static struct driver realtek_smi_driver = {
+	.name = "realtek-smi",
+	.of_match_table = of_match_ptr(realtek_smi_of_match),
+	.probe  = realtek_smi_probe,
+	.remove = realtek_smi_remove,
+};
+device_platform_driver(realtek_smi_driver);
+
+MODULE_AUTHOR("Linus Walleij <linus.walleij@linaro.org>");
+MODULE_DESCRIPTION("Driver for Realtek ethernet switch connected via SMI interface");
+MODULE_LICENSE("GPL");
diff --git a/drivers/net/realtek-dsa/realtek.h b/drivers/net/realtek-dsa/realtek.h
new file mode 100644
index 000000000000..46a2282f6e6d
--- /dev/null
+++ b/drivers/net/realtek-dsa/realtek.h
@@ -0,0 +1,105 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/* Realtek SMI interface driver defines
+ *
+ * Copyright (C) 2017 Linus Walleij <linus.walleij@linaro.org>
+ * Copyright (C) 2009-2010 Gabor Juhos <juhosg@openwrt.org>
+ */
+
+#ifndef _REALTEK_H
+#define _REALTEK_H
+
+#include <linux/spinlock.h>
+#include <linux/phy.h>
+#include <driver.h>
+#include <gpio.h>
+#include <dsa.h>
+
+#define REALTEK_HW_STOP_DELAY		25	/* msecs */
+#define REALTEK_HW_START_DELAY		100	/* msecs */
+
+struct realtek_ops;
+
+struct realtek_priv {
+	struct device		*dev;
+	int			reset;
+	int			mdc;
+	int			mdio;
+	union {
+		struct regmap		*map;
+		struct regmap		*map_nolock;
+	};
+	struct mii_bus		slave_mii_bus[1];
+	struct mii_bus		*bus;
+	int			mdio_addr;
+
+	unsigned int		clk_delay;
+	u8			cmd_read;
+	u8			cmd_write;
+	spinlock_t		lock; /* Locks around command writes */
+	struct dsa_switch	*ds;
+	bool			leds_disabled;
+
+	unsigned int		cpu_port;
+	unsigned int		num_ports;
+
+	const struct realtek_ops *ops;
+	int			(*setup_interface)(struct dsa_switch *ds);
+	int			(*write_reg_noack)(void *ctx, u32 addr, u32 data);
+
+	char			buf[4096];
+	void			*chip_data; /* Per-chip extra variant data */
+};
+
+/*
+ * struct realtek_ops - vtable for the per-SMI-chiptype operations
+ * @detect: detects the chiptype
+ */
+struct realtek_ops {
+	int	(*detect)(struct realtek_priv *priv);
+	int	(*reset_chip)(struct realtek_priv *priv);
+	int	(*setup)(struct realtek_priv *priv);
+	void	(*cleanup)(struct realtek_priv *priv);
+	int	(*enable_port)(struct realtek_priv *priv, int port, bool enable);
+	int	(*phy_read)(struct realtek_priv *priv, int phy, int regnum);
+	int	(*phy_write)(struct realtek_priv *priv, int phy, int regnum,
+			     u16 val);
+	enum dsa_tag_protocol (*get_tag_protocol)(struct realtek_priv *priv);
+	int (*change_tag_protocol)(struct realtek_priv *priv,
+				   enum dsa_tag_protocol proto);
+};
+
+struct realtek_variant {
+	const struct dsa_switch_ops *ds_ops_smi;
+	const struct dsa_switch_ops *ds_ops_mdio;
+	const struct realtek_ops *ops;
+	unsigned int clk_delay;
+	u8 cmd_read;
+	u8 cmd_write;
+	size_t chip_data_sz;
+};
+
+enum dsa_tag_protocol {
+	DSA_TAG_PROTO_RTL4_A		= 17,
+	DSA_TAG_PROTO_RTL8_4		= 24,
+	DSA_TAG_PROTO_RTL8_4T		= 25,
+};
+
+struct dsa_device_ops {
+	int (*xmit)(struct dsa_port *dp, int port, void *packet, int length);
+	int (*rcv)(struct dsa_switch *ds, int *portp, void *packet, int length);
+	unsigned int needed_headroom;
+	unsigned int needed_tailroom;
+	const char *name;
+	enum dsa_tag_protocol proto;
+};
+
+extern const struct realtek_variant rtl8366rb_variant;
+extern const struct realtek_variant rtl8365mb_variant;
+
+int realtek_dsa_init_tagger(struct realtek_priv *priv);
+
+extern const struct dsa_device_ops rtl4a_netdev_ops;
+extern const struct dsa_device_ops rtl8_4_netdev_ops;
+extern const struct dsa_device_ops rtl8_4t_netdev_ops;
+
+#endif /*  _REALTEK_H */
diff --git a/drivers/net/realtek-dsa/rtl8365mb.c b/drivers/net/realtek-dsa/rtl8365mb.c
new file mode 100644
index 000000000000..8f7d122da28f
--- /dev/null
+++ b/drivers/net/realtek-dsa/rtl8365mb.c
@@ -0,0 +1,1273 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Realtek SMI subdriver for the Realtek RTL8365MB-VC ethernet switch.
+ *
+ * Copyright (C) 2021 Alvin Šipraga <alsi@bang-olufsen.dk>
+ * Copyright (C) 2021 Michael Rasmussen <mir@bang-olufsen.dk>
+ *
+ * The RTL8365MB-VC is a 4+1 port 10/100/1000M switch controller. It includes 4
+ * integrated PHYs for the user facing ports, and an extension interface which
+ * can be connected to the CPU - or another PHY - via either MII, RMII, or
+ * RGMII. The switch is configured via the Realtek Simple Management Interface
+ * (SMI), which uses the MDIO/MDC lines.
+ *
+ * Below is a simplified block diagram of the chip and its relevant interfaces.
+ *
+ *                          .-----------------------------------.
+ *                          |                                   |
+ *         UTP <---------------> Giga PHY <-> PCS <-> P0 GMAC   |
+ *         UTP <---------------> Giga PHY <-> PCS <-> P1 GMAC   |
+ *         UTP <---------------> Giga PHY <-> PCS <-> P2 GMAC   |
+ *         UTP <---------------> Giga PHY <-> PCS <-> P3 GMAC   |
+ *                          |                                   |
+ *     CPU/PHY <-MII/RMII/RGMII--->  Extension  <---> Extension |
+ *                          |       interface 1        GMAC 1   |
+ *                          |                                   |
+ *     SMI driver/ <-MDC/SCL---> Management    ~~~~~~~~~~~~~~   |
+ *        EEPROM   <-MDIO/SDA--> interface     ~REALTEK ~~~~~   |
+ *                          |                  ~RTL8365MB ~~~   |
+ *                          |                  ~GXXXC TAIWAN~   |
+ *        GPIO <--------------> Reset          ~~~~~~~~~~~~~~   |
+ *                          |                                   |
+ *      Interrupt  <----------> Link UP/DOWN events             |
+ *      controller          |                                   |
+ *                          '-----------------------------------'
+ *
+ * The driver uses DSA to integrate the 4 user and 1 extension ports into the
+ * kernel. Netdevices are created for the user ports, as are PHY devices for
+ * their integrated PHYs. The device tree firmware should also specify the link
+ * partner of the extension port - either via a fixed-link or other phy-handle.
+ * See the device tree bindings for more detailed information. Note that the
+ * driver has only been tested with a fixed-link, but in principle it should not
+ * matter.
+ *
+ * NOTE: Currently, only the RGMII interface is implemented in this driver.
+ *
+ * The interrupt line is asserted on link UP/DOWN events. The driver creates a
+ * custom irqchip to handle this interrupt and demultiplex the events by reading
+ * the status registers via SMI. Interrupts are then propagated to the relevant
+ * PHY device.
+ *
+ * The EEPROM contains initial register values which the chip will read over I2C
+ * upon hardware reset. It is also possible to omit the EEPROM. In both cases,
+ * the driver will manually reprogram some registers using jam tables to reach
+ * an initial state defined by the vendor driver.
+ *
+ * This Linux driver is written based on an OS-agnostic vendor driver from
+ * Realtek. The reference GPL-licensed sources can be found in the OpenWrt
+ * source tree under the name rtl8367c. The vendor driver claims to support a
+ * number of similar switch controllers from Realtek, but the only hardware we
+ * have is the RTL8365MB-VC. Moreover, there does not seem to be any chip under
+ * the name RTL8367C. Although one wishes that the 'C' stood for some kind of
+ * common hardware revision, there exist examples of chips with the suffix -VC
+ * which are explicitly not supported by the rtl8367c driver and which instead
+ * require the rtl8367d vendor driver. With all this uncertainty, the driver has
+ * been modestly named rtl8365mb. Future implementors may wish to rename things
+ * accordingly.
+ *
+ * In the same family of chips, some carry up to 8 user ports and up to 2
+ * extension ports. Where possible this driver tries to make things generic, but
+ * more work must be done to support these configurations. According to
+ * documentation from Realtek, the family should include the following chips:
+ *
+ *  - RTL8363NB
+ *  - RTL8363NB-VB
+ *  - RTL8363SC
+ *  - RTL8363SC-VB
+ *  - RTL8364NB
+ *  - RTL8364NB-VB
+ *  - RTL8365MB-VC
+ *  - RTL8366SC
+ *  - RTL8367RB-VB
+ *  - RTL8367SB
+ *  - RTL8367S
+ *  - RTL8370MB
+ *  - RTL8310SR
+ *
+ * Some of the register logic for these additional chips has been skipped over
+ * while implementing this driver. It is therefore not possible to assume that
+ * things will work out-of-the-box for other chips, and a careful review of the
+ * vendor driver may be needed to expand support. The RTL8365MB-VC seems to be
+ * one of the simpler chips.
+ */
+
+#include <linux/bitfield.h>
+#include <linux/bitops.h>
+#include <linux/mutex.h>
+#include <linux/spinlock.h>
+#include <regmap.h>
+#include <net.h>
+#include <linux/if_bridge.h>
+
+#include "realtek.h"
+
+/* Family-specific data and limits */
+#define RTL8365MB_PHYADDRMAX		7
+#define RTL8365MB_NUM_PHYREGS		32
+#define RTL8365MB_PHYREGMAX		(RTL8365MB_NUM_PHYREGS - 1)
+#define RTL8365MB_MAX_NUM_PORTS		11
+#define RTL8365MB_MAX_NUM_EXTINTS	3
+#define RTL8365MB_LEARN_LIMIT_MAX	2112
+
+/* Chip identification registers */
+#define RTL8365MB_CHIP_ID_REG		0x1300
+
+#define RTL8365MB_CHIP_VER_REG		0x1301
+
+#define RTL8365MB_MAGIC_REG		0x13C2
+#define   RTL8365MB_MAGIC_VALUE		0x0249
+
+/* Chip reset register */
+#define RTL8365MB_CHIP_RESET_REG	0x1322
+#define RTL8365MB_CHIP_RESET_SW_MASK	0x0002
+#define RTL8365MB_CHIP_RESET_HW_MASK	0x0001
+
+/* Interrupt polarity register */
+#define RTL8365MB_INTR_POLARITY_REG	0x1100
+#define   RTL8365MB_INTR_POLARITY_MASK	0x0001
+#define   RTL8365MB_INTR_POLARITY_HIGH	0
+#define   RTL8365MB_INTR_POLARITY_LOW	1
+
+/* Interrupt control/status register - enable/check specific interrupt types */
+#define RTL8365MB_INTR_CTRL_REG			0x1101
+#define RTL8365MB_INTR_STATUS_REG		0x1102
+#define   RTL8365MB_INTR_SLIENT_START_2_MASK	0x1000
+#define   RTL8365MB_INTR_SLIENT_START_MASK	0x0800
+#define   RTL8365MB_INTR_ACL_ACTION_MASK	0x0200
+#define   RTL8365MB_INTR_CABLE_DIAG_FIN_MASK	0x0100
+#define   RTL8365MB_INTR_INTERRUPT_8051_MASK	0x0080
+#define   RTL8365MB_INTR_LOOP_DETECTION_MASK	0x0040
+#define   RTL8365MB_INTR_GREEN_TIMER_MASK	0x0020
+#define   RTL8365MB_INTR_SPECIAL_CONGEST_MASK	0x0010
+#define   RTL8365MB_INTR_SPEED_CHANGE_MASK	0x0008
+#define   RTL8365MB_INTR_LEARN_OVER_MASK	0x0004
+#define   RTL8365MB_INTR_METER_EXCEEDED_MASK	0x0002
+#define   RTL8365MB_INTR_LINK_CHANGE_MASK	0x0001
+#define   RTL8365MB_INTR_ALL_MASK                      \
+		(RTL8365MB_INTR_SLIENT_START_2_MASK |  \
+		 RTL8365MB_INTR_SLIENT_START_MASK |    \
+		 RTL8365MB_INTR_ACL_ACTION_MASK |      \
+		 RTL8365MB_INTR_CABLE_DIAG_FIN_MASK |  \
+		 RTL8365MB_INTR_INTERRUPT_8051_MASK |  \
+		 RTL8365MB_INTR_LOOP_DETECTION_MASK |  \
+		 RTL8365MB_INTR_GREEN_TIMER_MASK |     \
+		 RTL8365MB_INTR_SPECIAL_CONGEST_MASK | \
+		 RTL8365MB_INTR_SPEED_CHANGE_MASK |    \
+		 RTL8365MB_INTR_LEARN_OVER_MASK |      \
+		 RTL8365MB_INTR_METER_EXCEEDED_MASK |  \
+		 RTL8365MB_INTR_LINK_CHANGE_MASK)
+
+/* Per-port interrupt type status registers */
+#define RTL8365MB_PORT_LINKDOWN_IND_REG		0x1106
+#define   RTL8365MB_PORT_LINKDOWN_IND_MASK	0x07FF
+
+#define RTL8365MB_PORT_LINKUP_IND_REG		0x1107
+#define   RTL8365MB_PORT_LINKUP_IND_MASK	0x07FF
+
+/* PHY indirect access registers */
+#define RTL8365MB_INDIRECT_ACCESS_CTRL_REG			0x1F00
+#define   RTL8365MB_INDIRECT_ACCESS_CTRL_RW_MASK		0x0002
+#define   RTL8365MB_INDIRECT_ACCESS_CTRL_RW_READ		0
+#define   RTL8365MB_INDIRECT_ACCESS_CTRL_RW_WRITE		1
+#define   RTL8365MB_INDIRECT_ACCESS_CTRL_CMD_MASK		0x0001
+#define   RTL8365MB_INDIRECT_ACCESS_CTRL_CMD_VALUE		1
+#define RTL8365MB_INDIRECT_ACCESS_STATUS_REG			0x1F01
+#define RTL8365MB_INDIRECT_ACCESS_ADDRESS_REG			0x1F02
+#define   RTL8365MB_INDIRECT_ACCESS_ADDRESS_OCPADR_5_1_MASK	GENMASK(4, 0)
+#define   RTL8365MB_INDIRECT_ACCESS_ADDRESS_PHYNUM_MASK		GENMASK(7, 5)
+#define   RTL8365MB_INDIRECT_ACCESS_ADDRESS_OCPADR_9_6_MASK	GENMASK(11, 8)
+#define   RTL8365MB_PHY_BASE					0x2000
+#define RTL8365MB_INDIRECT_ACCESS_WRITE_DATA_REG		0x1F03
+#define RTL8365MB_INDIRECT_ACCESS_READ_DATA_REG			0x1F04
+
+/* PHY OCP address prefix register */
+#define RTL8365MB_GPHY_OCP_MSB_0_REG			0x1D15
+#define   RTL8365MB_GPHY_OCP_MSB_0_CFG_CPU_OCPADR_MASK	0x0FC0
+#define RTL8365MB_PHY_OCP_ADDR_PREFIX_MASK		0xFC00
+
+/* The PHY OCP addresses of PHY registers 0~31 start here */
+#define RTL8365MB_PHY_OCP_ADDR_PHYREG_BASE		0xA400
+
+/* External interface port mode values - used in DIGITAL_INTERFACE_SELECT */
+#define RTL8365MB_EXT_PORT_MODE_DISABLE		0
+#define RTL8365MB_EXT_PORT_MODE_RGMII		1
+#define RTL8365MB_EXT_PORT_MODE_MII_MAC		2
+#define RTL8365MB_EXT_PORT_MODE_MII_PHY		3
+#define RTL8365MB_EXT_PORT_MODE_TMII_MAC	4
+#define RTL8365MB_EXT_PORT_MODE_TMII_PHY	5
+#define RTL8365MB_EXT_PORT_MODE_GMII		6
+#define RTL8365MB_EXT_PORT_MODE_RMII_MAC	7
+#define RTL8365MB_EXT_PORT_MODE_RMII_PHY	8
+#define RTL8365MB_EXT_PORT_MODE_SGMII		9
+#define RTL8365MB_EXT_PORT_MODE_HSGMII		10
+#define RTL8365MB_EXT_PORT_MODE_1000X_100FX	11
+#define RTL8365MB_EXT_PORT_MODE_1000X		12
+#define RTL8365MB_EXT_PORT_MODE_100FX		13
+
+/* External interface mode configuration registers 0~1 */
+#define RTL8365MB_DIGITAL_INTERFACE_SELECT_REG0		0x1305 /* EXT1 */
+#define RTL8365MB_DIGITAL_INTERFACE_SELECT_REG1		0x13C3 /* EXT2 */
+#define RTL8365MB_DIGITAL_INTERFACE_SELECT_REG(_extint) \
+		((_extint) == 1 ? RTL8365MB_DIGITAL_INTERFACE_SELECT_REG0 : \
+		 (_extint) == 2 ? RTL8365MB_DIGITAL_INTERFACE_SELECT_REG1 : \
+		 0x0)
+#define   RTL8365MB_DIGITAL_INTERFACE_SELECT_MODE_MASK(_extint) \
+		(0xF << (((_extint) % 2)))
+#define   RTL8365MB_DIGITAL_INTERFACE_SELECT_MODE_OFFSET(_extint) \
+		(((_extint) % 2) * 4)
+
+/* External interface RGMII TX/RX delay configuration registers 0~2 */
+#define RTL8365MB_EXT_RGMXF_REG0		0x1306 /* EXT0 */
+#define RTL8365MB_EXT_RGMXF_REG1		0x1307 /* EXT1 */
+#define RTL8365MB_EXT_RGMXF_REG2		0x13C5 /* EXT2 */
+#define RTL8365MB_EXT_RGMXF_REG(_extint) \
+		((_extint) == 0 ? RTL8365MB_EXT_RGMXF_REG0 : \
+		 (_extint) == 1 ? RTL8365MB_EXT_RGMXF_REG1 : \
+		 (_extint) == 2 ? RTL8365MB_EXT_RGMXF_REG2 : \
+		 0x0)
+#define   RTL8365MB_EXT_RGMXF_RXDELAY_MASK	0x0007
+#define   RTL8365MB_EXT_RGMXF_TXDELAY_MASK	0x0008
+
+/* External interface port speed values - used in DIGITAL_INTERFACE_FORCE */
+#define RTL8365MB_PORT_SPEED_10M	0
+#define RTL8365MB_PORT_SPEED_100M	1
+#define RTL8365MB_PORT_SPEED_1000M	2
+
+/* External interface force configuration registers 0~2 */
+#define RTL8365MB_DIGITAL_INTERFACE_FORCE_REG0		0x1310 /* EXT0 */
+#define RTL8365MB_DIGITAL_INTERFACE_FORCE_REG1		0x1311 /* EXT1 */
+#define RTL8365MB_DIGITAL_INTERFACE_FORCE_REG2		0x13C4 /* EXT2 */
+#define RTL8365MB_DIGITAL_INTERFACE_FORCE_REG(_extint) \
+		((_extint) == 0 ? RTL8365MB_DIGITAL_INTERFACE_FORCE_REG0 : \
+		 (_extint) == 1 ? RTL8365MB_DIGITAL_INTERFACE_FORCE_REG1 : \
+		 (_extint) == 2 ? RTL8365MB_DIGITAL_INTERFACE_FORCE_REG2 : \
+		 0x0)
+#define   RTL8365MB_DIGITAL_INTERFACE_FORCE_EN_MASK		0x1000
+#define   RTL8365MB_DIGITAL_INTERFACE_FORCE_NWAY_MASK		0x0080
+#define   RTL8365MB_DIGITAL_INTERFACE_FORCE_TXPAUSE_MASK	0x0040
+#define   RTL8365MB_DIGITAL_INTERFACE_FORCE_RXPAUSE_MASK	0x0020
+#define   RTL8365MB_DIGITAL_INTERFACE_FORCE_LINK_MASK		0x0010
+#define   RTL8365MB_DIGITAL_INTERFACE_FORCE_DUPLEX_MASK		0x0004
+#define   RTL8365MB_DIGITAL_INTERFACE_FORCE_SPEED_MASK		0x0003
+
+/* CPU port mask register - controls which ports are treated as CPU ports */
+#define RTL8365MB_CPU_PORT_MASK_REG	0x1219
+#define   RTL8365MB_CPU_PORT_MASK_MASK	0x07FF
+
+/* CPU control register */
+#define RTL8365MB_CPU_CTRL_REG			0x121A
+#define   RTL8365MB_CPU_CTRL_TRAP_PORT_EXT_MASK	0x0400
+#define   RTL8365MB_CPU_CTRL_TAG_FORMAT_MASK	0x0200
+#define   RTL8365MB_CPU_CTRL_RXBYTECOUNT_MASK	0x0080
+#define   RTL8365MB_CPU_CTRL_TAG_POSITION_MASK	0x0040
+#define   RTL8365MB_CPU_CTRL_TRAP_PORT_MASK	0x0038
+#define   RTL8365MB_CPU_CTRL_INSERTMODE_MASK	0x0006
+#define   RTL8365MB_CPU_CTRL_EN_MASK		0x0001
+
+/* Maximum packet length register */
+#define RTL8365MB_CFG0_MAX_LEN_REG	0x088C
+#define   RTL8365MB_CFG0_MAX_LEN_MASK	0x3FFF
+
+/* Port learning limit registers */
+#define RTL8365MB_LUT_PORT_LEARN_LIMIT_BASE		0x0A20
+#define RTL8365MB_LUT_PORT_LEARN_LIMIT_REG(_physport) \
+		(RTL8365MB_LUT_PORT_LEARN_LIMIT_BASE + (_physport))
+
+/* Port isolation (forwarding mask) registers */
+#define RTL8365MB_PORT_ISOLATION_REG_BASE		0x08A2
+#define RTL8365MB_PORT_ISOLATION_REG(_physport) \
+		(RTL8365MB_PORT_ISOLATION_REG_BASE + (_physport))
+#define   RTL8365MB_PORT_ISOLATION_MASK			0x07FF
+
+/* MSTP port state registers - indexed by tree instance */
+#define RTL8365MB_MSTI_CTRL_BASE			0x0A00
+#define RTL8365MB_MSTI_CTRL_REG(_msti, _physport) \
+		(RTL8365MB_MSTI_CTRL_BASE + ((_msti) << 1) + ((_physport) >> 3))
+#define   RTL8365MB_MSTI_CTRL_PORT_STATE_OFFSET(_physport) ((_physport) << 1)
+#define   RTL8365MB_MSTI_CTRL_PORT_STATE_MASK(_physport) \
+		(0x3 << RTL8365MB_MSTI_CTRL_PORT_STATE_OFFSET((_physport)))
+
+struct rtl8365mb_jam_tbl_entry {
+	u16 reg;
+	u16 val;
+};
+
+/* Lifted from the vendor driver sources */
+static const struct rtl8365mb_jam_tbl_entry rtl8365mb_init_jam_8365mb_vc[] = {
+	{ 0x13EB, 0x15BB }, { 0x1303, 0x06D6 }, { 0x1304, 0x0700 },
+	{ 0x13E2, 0x003F }, { 0x13F9, 0x0090 }, { 0x121E, 0x03CA },
+	{ 0x1233, 0x0352 }, { 0x1237, 0x00A0 }, { 0x123A, 0x0030 },
+	{ 0x1239, 0x0084 }, { 0x0301, 0x1000 }, { 0x1349, 0x001F },
+	{ 0x18E0, 0x4004 }, { 0x122B, 0x241C }, { 0x1305, 0xC000 },
+	{ 0x13F0, 0x0000 },
+};
+
+static const struct rtl8365mb_jam_tbl_entry rtl8365mb_init_jam_common[] = {
+	{ 0x1200, 0x7FCB }, { 0x0884, 0x0003 }, { 0x06EB, 0x0001 },
+	{ 0x03Fa, 0x0007 }, { 0x08C8, 0x00C0 }, { 0x0A30, 0x020E },
+	{ 0x0800, 0x0000 }, { 0x0802, 0x0000 }, { 0x09DA, 0x0013 },
+	{ 0x1D32, 0x0002 },
+};
+
+enum rtl8365mb_phy_interface_mode {
+	RTL8365MB_PHY_INTERFACE_MODE_INVAL = 0,
+	RTL8365MB_PHY_INTERFACE_MODE_INTERNAL = BIT(0),
+	RTL8365MB_PHY_INTERFACE_MODE_MII = BIT(1),
+	RTL8365MB_PHY_INTERFACE_MODE_TMII = BIT(2),
+	RTL8365MB_PHY_INTERFACE_MODE_RMII = BIT(3),
+	RTL8365MB_PHY_INTERFACE_MODE_RGMII = BIT(4),
+	RTL8365MB_PHY_INTERFACE_MODE_SGMII = BIT(5),
+	RTL8365MB_PHY_INTERFACE_MODE_HSGMII = BIT(6),
+};
+
+/**
+ * struct rtl8365mb_extint - external interface info
+ * @port: the port with an external interface
+ * @id: the external interface ID, which is either 0, 1, or 2
+ * @supported_interfaces: a bitmask of supported PHY interface modes
+ *
+ * Represents a mapping: port -> { id, supported_interfaces }. To be embedded
+ * in &struct rtl8365mb_chip_info for every port with an external interface.
+ */
+struct rtl8365mb_extint {
+	int port;
+	int id;
+	unsigned int supported_interfaces;
+};
+
+/**
+ * struct rtl8365mb_chip_info - static chip-specific info
+ * @name: human-readable chip name
+ * @chip_id: chip identifier
+ * @chip_ver: chip silicon revision
+ * @extints: available external interfaces
+ * @jam_table: chip-specific initialization jam table
+ * @jam_size: size of the chip's jam table
+ *
+ * These data are specific to a given chip in the family of switches supported
+ * by this driver. When adding support for another chip in the family, a new
+ * chip info should be added to the rtl8365mb_chip_infos array.
+ */
+struct rtl8365mb_chip_info {
+	const char *name;
+	u32 chip_id;
+	u32 chip_ver;
+	const struct rtl8365mb_extint extints[RTL8365MB_MAX_NUM_EXTINTS];
+	const struct rtl8365mb_jam_tbl_entry *jam_table;
+	size_t jam_size;
+};
+
+/* Chip info for each supported switch in the family */
+#define PHY_INTF(_mode) (RTL8365MB_PHY_INTERFACE_MODE_ ## _mode)
+static const struct rtl8365mb_chip_info rtl8365mb_chip_infos[] = {
+	{
+		.name = "RTL8365MB-VC",
+		.chip_id = 0x6367,
+		.chip_ver = 0x0040,
+		.extints = {
+			{ 6, 1, PHY_INTF(MII) | PHY_INTF(TMII) |
+				PHY_INTF(RMII) | PHY_INTF(RGMII) },
+		},
+		.jam_table = rtl8365mb_init_jam_8365mb_vc,
+		.jam_size = ARRAY_SIZE(rtl8365mb_init_jam_8365mb_vc),
+	},
+	{
+		.name = "RTL8367S",
+		.chip_id = 0x6367,
+		.chip_ver = 0x00A0,
+		.extints = {
+			{ 6, 1, PHY_INTF(SGMII) | PHY_INTF(HSGMII) },
+			{ 7, 2, PHY_INTF(MII) | PHY_INTF(TMII) |
+				PHY_INTF(RMII) | PHY_INTF(RGMII) },
+		},
+		.jam_table = rtl8365mb_init_jam_8365mb_vc,
+		.jam_size = ARRAY_SIZE(rtl8365mb_init_jam_8365mb_vc),
+	},
+	{
+		.name = "RTL8367RB-VB",
+		.chip_id = 0x6367,
+		.chip_ver = 0x0020,
+		.extints = {
+			{ 6, 1, PHY_INTF(MII) | PHY_INTF(TMII) |
+				PHY_INTF(RMII) | PHY_INTF(RGMII) },
+			{ 7, 2, PHY_INTF(MII) | PHY_INTF(TMII) |
+				PHY_INTF(RMII) | PHY_INTF(RGMII) },
+		},
+		.jam_table = rtl8365mb_init_jam_8365mb_vc,
+		.jam_size = ARRAY_SIZE(rtl8365mb_init_jam_8365mb_vc),
+	},
+};
+
+enum rtl8365mb_stp_state {
+	RTL8365MB_STP_STATE_DISABLED = 0,
+	RTL8365MB_STP_STATE_BLOCKING = 1,
+	RTL8365MB_STP_STATE_LEARNING = 2,
+	RTL8365MB_STP_STATE_FORWARDING = 3,
+};
+
+enum rtl8365mb_cpu_insert {
+	RTL8365MB_CPU_INSERT_TO_ALL = 0,
+	RTL8365MB_CPU_INSERT_TO_TRAPPING = 1,
+	RTL8365MB_CPU_INSERT_TO_NONE = 2,
+};
+
+enum rtl8365mb_cpu_position {
+	RTL8365MB_CPU_POS_AFTER_SA = 0,
+	RTL8365MB_CPU_POS_BEFORE_CRC = 1,
+};
+
+enum rtl8365mb_cpu_format {
+	RTL8365MB_CPU_FORMAT_8BYTES = 0,
+	RTL8365MB_CPU_FORMAT_4BYTES = 1,
+};
+
+enum rtl8365mb_cpu_rxlen {
+	RTL8365MB_CPU_RXLEN_72BYTES = 0,
+	RTL8365MB_CPU_RXLEN_64BYTES = 1,
+};
+
+/**
+ * struct rtl8365mb_cpu - CPU port configuration
+ * @mask: port mask of ports that parse should parse CPU tags
+ * @trap_port: forward trapped frames to this port
+ * @insert: CPU tag insertion mode in switch->CPU frames
+ * @position: position of CPU tag in frame
+ * @rx_length: minimum CPU RX length
+ * @format: CPU tag format
+ *
+ * Represents the CPU tagging and CPU port configuration of the switch. These
+ * settings are configurable at runtime.
+ */
+struct rtl8365mb_cpu {
+	u32 mask;
+	u32 trap_port;
+	enum rtl8365mb_cpu_insert insert;
+	enum rtl8365mb_cpu_position position;
+	enum rtl8365mb_cpu_rxlen rx_length;
+	enum rtl8365mb_cpu_format format;
+};
+
+/**
+ * struct rtl8365mb_port - private per-port data
+ * @priv: pointer to parent realtek_priv data
+ * @index: DSA port index, same as dsa_port::index
+ */
+struct rtl8365mb_port {
+	struct realtek_priv *priv;
+	unsigned int index;
+};
+
+/**
+ * struct rtl8365mb - driver private data
+ * @priv: pointer to parent realtek_priv data
+ * @irq: registered IRQ or zero
+ * @chip_info: chip-specific info about the attached switch
+ * @cpu: CPU tagging and CPU port configuration for this chip
+ * @ports: per-port data
+ *
+ * Private data for this driver.
+ */
+struct rtl8365mb {
+	struct realtek_priv *priv;
+	const struct rtl8365mb_chip_info *chip_info;
+	struct rtl8365mb_cpu cpu;
+	struct rtl8365mb_port ports[RTL8365MB_MAX_NUM_PORTS];
+};
+
+static int rtl8365mb_phy_poll_busy(struct realtek_priv *priv)
+{
+	u32 val;
+
+	return regmap_read_poll_timeout(priv->map_nolock,
+					RTL8365MB_INDIRECT_ACCESS_STATUS_REG,
+					val, !val, 100);
+}
+
+static int rtl8365mb_phy_ocp_prepare(struct realtek_priv *priv, int phy,
+				     u32 ocp_addr)
+{
+	u32 val;
+	int ret;
+
+	/* Set OCP prefix */
+	val = FIELD_GET(RTL8365MB_PHY_OCP_ADDR_PREFIX_MASK, ocp_addr);
+	ret = regmap_update_bits(
+		priv->map_nolock, RTL8365MB_GPHY_OCP_MSB_0_REG,
+		RTL8365MB_GPHY_OCP_MSB_0_CFG_CPU_OCPADR_MASK,
+		FIELD_PREP(RTL8365MB_GPHY_OCP_MSB_0_CFG_CPU_OCPADR_MASK, val));
+	if (ret)
+		return ret;
+
+	/* Set PHY register address */
+	val = RTL8365MB_PHY_BASE;
+	val |= FIELD_PREP(RTL8365MB_INDIRECT_ACCESS_ADDRESS_PHYNUM_MASK, phy);
+	val |= FIELD_PREP(RTL8365MB_INDIRECT_ACCESS_ADDRESS_OCPADR_5_1_MASK,
+			  ocp_addr >> 1);
+	val |= FIELD_PREP(RTL8365MB_INDIRECT_ACCESS_ADDRESS_OCPADR_9_6_MASK,
+			  ocp_addr >> 6);
+	ret = regmap_write(priv->map_nolock,
+			   RTL8365MB_INDIRECT_ACCESS_ADDRESS_REG, val);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+static int rtl8365mb_phy_ocp_read(struct realtek_priv *priv, int phy,
+				  u32 ocp_addr, u16 *data)
+{
+	u32 val;
+	int ret;
+
+	ret = rtl8365mb_phy_poll_busy(priv);
+	if (ret)
+		goto out;
+
+	ret = rtl8365mb_phy_ocp_prepare(priv, phy, ocp_addr);
+	if (ret)
+		goto out;
+
+	/* Execute read operation */
+	val = FIELD_PREP(RTL8365MB_INDIRECT_ACCESS_CTRL_CMD_MASK,
+			 RTL8365MB_INDIRECT_ACCESS_CTRL_CMD_VALUE) |
+	      FIELD_PREP(RTL8365MB_INDIRECT_ACCESS_CTRL_RW_MASK,
+			 RTL8365MB_INDIRECT_ACCESS_CTRL_RW_READ);
+	ret = regmap_write(priv->map_nolock, RTL8365MB_INDIRECT_ACCESS_CTRL_REG,
+			   val);
+	if (ret)
+		goto out;
+
+	ret = rtl8365mb_phy_poll_busy(priv);
+	if (ret)
+		goto out;
+
+	/* Get PHY register data */
+	ret = regmap_read(priv->map_nolock,
+			  RTL8365MB_INDIRECT_ACCESS_READ_DATA_REG, &val);
+	if (ret)
+		goto out;
+
+	*data = val & 0xFFFF;
+
+out:
+
+	return ret;
+}
+
+static int rtl8365mb_phy_ocp_write(struct realtek_priv *priv, int phy,
+				   u32 ocp_addr, u16 data)
+{
+	u32 val;
+	int ret;
+
+	ret = rtl8365mb_phy_poll_busy(priv);
+	if (ret)
+		goto out;
+
+	ret = rtl8365mb_phy_ocp_prepare(priv, phy, ocp_addr);
+	if (ret)
+		goto out;
+
+	/* Set PHY register data */
+	ret = regmap_write(priv->map_nolock,
+			   RTL8365MB_INDIRECT_ACCESS_WRITE_DATA_REG, data);
+	if (ret)
+		goto out;
+
+	/* Execute write operation */
+	val = FIELD_PREP(RTL8365MB_INDIRECT_ACCESS_CTRL_CMD_MASK,
+			 RTL8365MB_INDIRECT_ACCESS_CTRL_CMD_VALUE) |
+	      FIELD_PREP(RTL8365MB_INDIRECT_ACCESS_CTRL_RW_MASK,
+			 RTL8365MB_INDIRECT_ACCESS_CTRL_RW_WRITE);
+	ret = regmap_write(priv->map_nolock, RTL8365MB_INDIRECT_ACCESS_CTRL_REG,
+			   val);
+	if (ret)
+		goto out;
+
+	ret = rtl8365mb_phy_poll_busy(priv);
+	if (ret)
+		goto out;
+
+out:
+	return 0;
+}
+
+static int rtl8365mb_phy_read(struct realtek_priv *priv, int phy, int regnum)
+{
+	u32 ocp_addr;
+	u16 val;
+	int ret;
+
+	if (phy > RTL8365MB_PHYADDRMAX)
+		return -EINVAL;
+
+	if (regnum > RTL8365MB_PHYREGMAX)
+		return -EINVAL;
+
+	ocp_addr = RTL8365MB_PHY_OCP_ADDR_PHYREG_BASE + regnum * 2;
+
+	ret = rtl8365mb_phy_ocp_read(priv, phy, ocp_addr, &val);
+	if (ret) {
+		dev_err(priv->dev,
+			"failed to read PHY%d reg %02x @ %04x, ret %d\n", phy,
+			regnum, ocp_addr, ret);
+		return ret;
+	}
+
+	dev_dbg(priv->dev, "read PHY%d register 0x%02x @ %04x, val <- %04x\n",
+		phy, regnum, ocp_addr, val);
+
+	return val;
+}
+
+static int rtl8365mb_phy_write(struct realtek_priv *priv, int phy, int regnum,
+			       u16 val)
+{
+	u32 ocp_addr;
+	int ret;
+
+	if (phy > RTL8365MB_PHYADDRMAX)
+		return -EINVAL;
+
+	if (regnum > RTL8365MB_PHYREGMAX)
+		return -EINVAL;
+
+	ocp_addr = RTL8365MB_PHY_OCP_ADDR_PHYREG_BASE + regnum * 2;
+
+	ret = rtl8365mb_phy_ocp_write(priv, phy, ocp_addr, val);
+	if (ret) {
+		dev_err(priv->dev,
+			"failed to write PHY%d reg %02x @ %04x, ret %d\n", phy,
+			regnum, ocp_addr, ret);
+		return ret;
+	}
+
+	dev_dbg(priv->dev, "write PHY%d register 0x%02x @ %04x, val -> %04x\n",
+		phy, regnum, ocp_addr, val);
+
+	return 0;
+}
+
+static int rtl8365mb_dsa_phy_read(struct dsa_switch *ds, int phy, int regnum)
+{
+	return rtl8365mb_phy_read(ds->priv, phy, regnum);
+}
+
+static int rtl8365mb_dsa_phy_write(struct dsa_switch *ds, int phy, int regnum,
+				   u16 val)
+{
+	return rtl8365mb_phy_write(ds->priv, phy, regnum, val);
+}
+
+static const struct rtl8365mb_extint *
+rtl8365mb_get_port_extint(struct realtek_priv *priv, int port)
+{
+	struct rtl8365mb *mb = priv->chip_data;
+	int i;
+
+	for (i = 0; i < RTL8365MB_MAX_NUM_EXTINTS; i++) {
+		const struct rtl8365mb_extint *extint =
+			&mb->chip_info->extints[i];
+
+		if (extint->port == port)
+			return extint;
+	}
+
+	return NULL;
+}
+
+static enum dsa_tag_protocol
+rtl8365mb_get_tag_protocol(struct realtek_priv *priv)
+{
+	struct rtl8365mb_cpu *cpu;
+	struct rtl8365mb *mb;
+
+	mb = priv->chip_data;
+	cpu = &mb->cpu;
+
+	if (cpu->position == RTL8365MB_CPU_POS_BEFORE_CRC)
+		return DSA_TAG_PROTO_RTL8_4T;
+
+	return DSA_TAG_PROTO_RTL8_4;
+}
+
+static int rtl8365mb_ext_config_rgmii(struct realtek_priv *priv, int port,
+				      phy_interface_t interface)
+{
+	const struct rtl8365mb_extint *extint =
+		rtl8365mb_get_port_extint(priv, port);
+	struct device_node *dn;
+	struct dsa_port *dp;
+	int tx_delay = 0;
+	int rx_delay = 0;
+	u32 val;
+	int ret;
+
+	if (!extint)
+		return -ENODEV;
+
+	dp = dsa_to_port(priv->ds, port);
+	dn = dp->dev->device_node;
+
+	/* Set the RGMII TX/RX delay
+	 *
+	 * The Realtek vendor driver indicates the following possible
+	 * configuration settings:
+	 *
+	 *   TX delay:
+	 *     0 = no delay, 1 = 2 ns delay
+	 *   RX delay:
+	 *     0 = no delay, 7 = maximum delay
+	 *     Each step is approximately 0.3 ns, so the maximum delay is about
+	 *     2.1 ns.
+	 *
+	 * The vendor driver also states that this must be configured *before*
+	 * forcing the external interface into a particular mode, which is done
+	 * in the rtl8365mb_phylink_mac_link_{up,down} functions.
+	 *
+	 * Only configure an RGMII TX (resp. RX) delay if the
+	 * tx-internal-delay-ps (resp. rx-internal-delay-ps) OF property is
+	 * specified. We ignore the detail of the RGMII interface mode
+	 * (RGMII_{RXID, TXID, etc.}), as this is considered to be a PHY-only
+	 * property.
+	 */
+	if (!of_property_read_u32(dn, "tx-internal-delay-ps", &val)) {
+		val = val / 1000; /* convert to ns */
+
+		if (val == 0 || val == 2)
+			tx_delay = val / 2;
+		else
+			dev_warn(priv->dev,
+				 "RGMII TX delay must be 0 or 2 ns\n");
+	}
+
+	if (!of_property_read_u32(dn, "rx-internal-delay-ps", &val)) {
+		val = DIV_ROUND_CLOSEST(val, 300); /* convert to 0.3 ns step */
+
+		if (val <= 7)
+			rx_delay = val;
+		else
+			dev_warn(priv->dev,
+				 "RGMII RX delay must be 0 to 2.1 ns\n");
+	}
+
+	ret = regmap_update_bits(
+		priv->map, RTL8365MB_EXT_RGMXF_REG(extint->id),
+		RTL8365MB_EXT_RGMXF_TXDELAY_MASK |
+			RTL8365MB_EXT_RGMXF_RXDELAY_MASK,
+		FIELD_PREP(RTL8365MB_EXT_RGMXF_TXDELAY_MASK, tx_delay) |
+			FIELD_PREP(RTL8365MB_EXT_RGMXF_RXDELAY_MASK, rx_delay));
+	if (ret)
+		return ret;
+
+	ret = regmap_update_bits(
+		priv->map, RTL8365MB_DIGITAL_INTERFACE_SELECT_REG(extint->id),
+		RTL8365MB_DIGITAL_INTERFACE_SELECT_MODE_MASK(extint->id),
+		RTL8365MB_EXT_PORT_MODE_RGMII
+			<< RTL8365MB_DIGITAL_INTERFACE_SELECT_MODE_OFFSET(
+				   extint->id));
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+static int rtl8365mb_ext_config_forcemode(struct realtek_priv *priv, int port,
+					  bool link, int speed, int duplex,
+					  bool tx_pause, bool rx_pause)
+{
+	const struct rtl8365mb_extint *extint =
+		rtl8365mb_get_port_extint(priv, port);
+	u32 r_tx_pause;
+	u32 r_rx_pause;
+	u32 r_duplex;
+	u32 r_speed;
+	u32 r_link;
+	int val;
+	int ret;
+
+	if (!extint)
+		return -ENODEV;
+
+	if (link) {
+		/* Force the link up with the desired configuration */
+		r_link = 1;
+		r_rx_pause = rx_pause ? 1 : 0;
+		r_tx_pause = tx_pause ? 1 : 0;
+
+		if (speed == SPEED_1000) {
+			r_speed = RTL8365MB_PORT_SPEED_1000M;
+		} else if (speed == SPEED_100) {
+			r_speed = RTL8365MB_PORT_SPEED_100M;
+		} else if (speed == SPEED_10) {
+			r_speed = RTL8365MB_PORT_SPEED_10M;
+		} else {
+			dev_err(priv->dev, "unsupported port speed %d\n",
+				speed);
+			dump_stack();
+			return -EINVAL;
+		}
+
+		if (duplex == DUPLEX_FULL) {
+			r_duplex = 1;
+		} else if (duplex == DUPLEX_HALF) {
+			r_duplex = 0;
+		} else {
+			dev_err(priv->dev, "unsupported duplex mode %d\n",
+				duplex);
+			return -EINVAL;
+		}
+	} else {
+		/* Force the link down and reset any programmed configuration */
+		r_link = 0;
+		r_tx_pause = 0;
+		r_rx_pause = 0;
+		r_speed = 0;
+		r_duplex = 0;
+	}
+
+	val = FIELD_PREP(RTL8365MB_DIGITAL_INTERFACE_FORCE_EN_MASK, 1) |
+	      FIELD_PREP(RTL8365MB_DIGITAL_INTERFACE_FORCE_TXPAUSE_MASK,
+			 r_tx_pause) |
+	      FIELD_PREP(RTL8365MB_DIGITAL_INTERFACE_FORCE_RXPAUSE_MASK,
+			 r_rx_pause) |
+	      FIELD_PREP(RTL8365MB_DIGITAL_INTERFACE_FORCE_LINK_MASK, r_link) |
+	      FIELD_PREP(RTL8365MB_DIGITAL_INTERFACE_FORCE_DUPLEX_MASK,
+			 r_duplex) |
+	      FIELD_PREP(RTL8365MB_DIGITAL_INTERFACE_FORCE_SPEED_MASK, r_speed);
+	ret = regmap_write(priv->map,
+			   RTL8365MB_DIGITAL_INTERFACE_FORCE_REG(extint->id),
+			   val);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+static void rtl8365mb_port_stp_state_set(struct dsa_switch *ds, int port,
+					 u8 state)
+{
+	struct realtek_priv *priv = ds->priv;
+	enum rtl8365mb_stp_state val;
+	int msti = 0;
+
+	switch (state) {
+	case BR_STATE_DISABLED:
+		val = RTL8365MB_STP_STATE_DISABLED;
+		break;
+	case BR_STATE_FORWARDING:
+		val = RTL8365MB_STP_STATE_FORWARDING;
+		break;
+	default:
+		dev_err(priv->dev, "invalid STP state: %u\n", state);
+		return;
+	}
+
+	regmap_update_bits(priv->map, RTL8365MB_MSTI_CTRL_REG(msti, port),
+			   RTL8365MB_MSTI_CTRL_PORT_STATE_MASK(port),
+			   val << RTL8365MB_MSTI_CTRL_PORT_STATE_OFFSET(port));
+}
+
+static int rtl8365mb_phylink_mac_config(struct dsa_port *dp, int port,
+					phy_interface_t phy_mode)
+{
+	struct realtek_priv *priv = dp->ds->priv;
+	int ret = 0;
+
+	if (phy_interface_mode_is_rgmii(phy_mode)) {
+		ret = rtl8365mb_ext_config_rgmii(priv, port, phy_mode);
+		if (ret)
+			dev_err(priv->dev,
+				"failed to configure RGMII mode on port %d: %d\n",
+				port, ret);
+	}
+
+	return ret;
+}
+
+static void rtl8365mb_phylink_mac_link_down(struct dsa_port *dp, int port,
+					    struct phy_device *phy)
+{
+	struct realtek_priv *priv = dp->ds->priv;
+	int ret;
+
+	rtl8365mb_port_stp_state_set(dp->ds, port, BR_STATE_DISABLED);
+
+	if (phy_interface_mode_is_rgmii(phy->interface)) {
+		ret = rtl8365mb_ext_config_forcemode(priv, port, false,
+						     0, 0, 0, 0);
+		if (ret)
+			dev_err(priv->dev,
+				"failed to reset forced mode on port %d: %d\n",
+				port, ret);
+	}
+}
+
+static int rtl8365mb_phylink_mac_link_up(struct dsa_port *dp, int port,
+					 struct phy_device *phy)
+{
+	struct realtek_priv *priv = dp->ds->priv;
+	int ret = 0;
+
+	if (phy_interface_mode_is_rgmii(phy->interface)) {
+		ret = rtl8365mb_ext_config_forcemode(priv, port, true,
+						     phy->speed, phy->duplex,
+						     phy->pause, phy->pause);
+		if (ret)
+			dev_err(priv->dev,
+				"failed to force mode on port %d: %d\n", port,
+				ret);
+	}
+
+	rtl8365mb_port_stp_state_set(dp->ds, port, BR_STATE_FORWARDING);
+
+	return ret;
+}
+
+static int rtl8365mb_port_set_learning(struct realtek_priv *priv, int port,
+				       bool enable)
+{
+	/* Enable/disable learning by limiting the number of L2 addresses the
+	 * port can learn. Realtek documentation states that a limit of zero
+	 * disables learning. When enabling learning, set it to the chip's
+	 * maximum.
+	 */
+	return regmap_write(priv->map, RTL8365MB_LUT_PORT_LEARN_LIMIT_REG(port),
+			    enable ? RTL8365MB_LEARN_LIMIT_MAX : 0);
+}
+
+static int rtl8365mb_port_set_isolation(struct realtek_priv *priv, int port,
+					u32 mask)
+{
+	return regmap_write(priv->map, RTL8365MB_PORT_ISOLATION_REG(port), mask);
+}
+
+static int rtl8365mb_set_irq_enable(struct realtek_priv *priv, bool enable)
+{
+	return regmap_update_bits(priv->map, RTL8365MB_INTR_CTRL_REG,
+				  RTL8365MB_INTR_LINK_CHANGE_MASK,
+				  FIELD_PREP(RTL8365MB_INTR_LINK_CHANGE_MASK,
+					     enable ? 1 : 0));
+}
+
+static int rtl8365mb_irq_disable(struct realtek_priv *priv)
+{
+	return rtl8365mb_set_irq_enable(priv, false);
+}
+
+static int rtl8365mb_irq_setup(struct realtek_priv *priv)
+{
+	int ret;
+
+	/* Disable the interrupt in case the chip has it enabled on reset */
+	ret = rtl8365mb_irq_disable(priv);
+	if (ret)
+		return ret;
+
+	/* Clear the interrupt status register */
+	return regmap_write(priv->map, RTL8365MB_INTR_STATUS_REG,
+			    RTL8365MB_INTR_ALL_MASK);
+}
+
+static int rtl8365mb_cpu_config(struct realtek_priv *priv)
+{
+	struct rtl8365mb *mb = priv->chip_data;
+	struct rtl8365mb_cpu *cpu = &mb->cpu;
+	u32 val;
+	int ret;
+
+	ret = regmap_update_bits(priv->map, RTL8365MB_CPU_PORT_MASK_REG,
+				 RTL8365MB_CPU_PORT_MASK_MASK,
+				 FIELD_PREP(RTL8365MB_CPU_PORT_MASK_MASK,
+					    cpu->mask));
+	if (ret)
+		return ret;
+
+	val = FIELD_PREP(RTL8365MB_CPU_CTRL_EN_MASK, 1) |
+	      FIELD_PREP(RTL8365MB_CPU_CTRL_INSERTMODE_MASK, cpu->insert) |
+	      FIELD_PREP(RTL8365MB_CPU_CTRL_TAG_POSITION_MASK, cpu->position) |
+	      FIELD_PREP(RTL8365MB_CPU_CTRL_RXBYTECOUNT_MASK, cpu->rx_length) |
+	      FIELD_PREP(RTL8365MB_CPU_CTRL_TAG_FORMAT_MASK, cpu->format) |
+	      FIELD_PREP(RTL8365MB_CPU_CTRL_TRAP_PORT_MASK, cpu->trap_port & 0x7) |
+	      FIELD_PREP(RTL8365MB_CPU_CTRL_TRAP_PORT_EXT_MASK,
+			 cpu->trap_port >> 3 & 0x1);
+	ret = regmap_write(priv->map, RTL8365MB_CPU_CTRL_REG, val);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+static int rtl8365mb_change_tag_protocol(struct realtek_priv *priv,
+					 enum dsa_tag_protocol proto)
+{
+	struct rtl8365mb_cpu *cpu;
+	struct rtl8365mb *mb;
+
+	mb = priv->chip_data;
+	cpu = &mb->cpu;
+
+	switch (proto) {
+	case DSA_TAG_PROTO_RTL8_4:
+		cpu->format = RTL8365MB_CPU_FORMAT_8BYTES;
+		cpu->position = RTL8365MB_CPU_POS_AFTER_SA;
+		break;
+	case DSA_TAG_PROTO_RTL8_4T:
+		cpu->format = RTL8365MB_CPU_FORMAT_8BYTES;
+		cpu->position = RTL8365MB_CPU_POS_BEFORE_CRC;
+		break;
+	/* The switch also supports a 4-byte format, similar to rtl4a but with
+	 * the same 0x04 8-bit version and probably 8-bit port source/dest.
+	 * There is no public doc about it. Not supported yet and it will probably
+	 * never be.
+	 */
+	default:
+		return -EPROTONOSUPPORT;
+	}
+
+	return rtl8365mb_cpu_config(priv);
+}
+
+static int rtl8365mb_switch_init(struct realtek_priv *priv)
+{
+	struct rtl8365mb *mb = priv->chip_data;
+	const struct rtl8365mb_chip_info *ci;
+	int ret;
+	int i;
+
+	ci = mb->chip_info;
+
+	/* Do any chip-specific init jam before getting to the common stuff */
+	if (ci->jam_table) {
+		for (i = 0; i < ci->jam_size; i++) {
+			ret = regmap_write(priv->map, ci->jam_table[i].reg,
+					   ci->jam_table[i].val);
+			if (ret)
+				return ret;
+		}
+	}
+
+	/* Common init jam */
+	for (i = 0; i < ARRAY_SIZE(rtl8365mb_init_jam_common); i++) {
+		ret = regmap_write(priv->map, rtl8365mb_init_jam_common[i].reg,
+				   rtl8365mb_init_jam_common[i].val);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
+static int rtl8365mb_reset_chip(struct realtek_priv *priv)
+{
+	u32 val;
+
+	priv->write_reg_noack(priv, RTL8365MB_CHIP_RESET_REG,
+			      FIELD_PREP(RTL8365MB_CHIP_RESET_HW_MASK, 1));
+
+	/* Realtek documentation says the chip needs 1 second to reset. Sleep
+	 * for 100 ms before accessing any registers to prevent ACK timeouts.
+	 */
+	mdelay(100);
+	return regmap_read_poll_timeout(priv->map, RTL8365MB_CHIP_RESET_REG, val,
+					!(val & RTL8365MB_CHIP_RESET_HW_MASK),
+					1e6);
+}
+
+static int rtl8365mb_setup(struct realtek_priv *priv)
+{
+	struct rtl8365mb_cpu *cpu;
+	struct dsa_port *cpu_dp;
+	struct rtl8365mb *mb;
+	int ret;
+	int i;
+
+	mb = priv->chip_data;
+	cpu = &mb->cpu;
+
+	ret = rtl8365mb_reset_chip(priv);
+	if (ret) {
+		dev_err(priv->dev, "failed to reset chip: %d\n", ret);
+		goto out_error;
+	}
+
+	/* Configure switch to vendor-defined initial state */
+	ret = rtl8365mb_switch_init(priv);
+	if (ret) {
+		dev_err(priv->dev, "failed to initialize switch: %d\n", ret);
+		goto out_error;
+	}
+
+	rtl8365mb_irq_setup(priv);
+
+	/* Configure CPU tagging */
+	dsa_switch_for_each_cpu_port(cpu_dp, priv->ds) {
+		cpu->mask |= BIT(cpu_dp->index);
+
+		if (cpu->trap_port == RTL8365MB_MAX_NUM_PORTS)
+			cpu->trap_port = cpu_dp->index;
+	}
+
+	if (cpu->mask == 0) {
+		dev_err(priv->dev, "no CPU port found\n");
+		goto out_teardown_irq;
+	}
+
+	ret = rtl8365mb_cpu_config(priv);
+	if (ret)
+		goto out_teardown_irq;
+
+	/* Configure ports */
+	for (i = 0; i < priv->num_ports; i++) {
+		struct rtl8365mb_port *p = &mb->ports[i];
+
+		/* Forward only to the CPU */
+		ret = rtl8365mb_port_set_isolation(priv, i, cpu->mask);
+		if (ret)
+			goto out_teardown_irq;
+
+		/* Disable learning */
+		ret = rtl8365mb_port_set_learning(priv, i, false);
+		if (ret)
+			goto out_teardown_irq;
+
+		/* Set the initial STP state of all ports to DISABLED, otherwise
+		 * ports will still forward frames to the CPU despite being
+		 * administratively down by default.
+		 */
+		rtl8365mb_port_stp_state_set(priv->ds, i, BR_STATE_DISABLED);
+
+		/* Set up per-port private data */
+		p->priv = priv;
+		p->index = i;
+	}
+
+	/* Set maximum packet length to 1536 bytes */
+	ret = regmap_update_bits(priv->map, RTL8365MB_CFG0_MAX_LEN_REG,
+				 RTL8365MB_CFG0_MAX_LEN_MASK,
+				 FIELD_PREP(RTL8365MB_CFG0_MAX_LEN_MASK, 1536));
+	if (ret)
+		goto out_teardown_irq;
+
+	if (priv->setup_interface) {
+		ret = priv->setup_interface(priv->ds);
+		if (ret) {
+			dev_err(priv->dev, "could not set up MDIO bus\n");
+			goto out_teardown_irq;
+		}
+	}
+
+	return 0;
+
+out_teardown_irq:
+out_error:
+	return ret;
+}
+
+static int rtl8365mb_get_chip_id_and_ver(struct regmap *map, u32 *id, u32 *ver)
+{
+	int ret;
+
+	/* For some reason we have to write a magic value to an arbitrary
+	 * register whenever accessing the chip ID/version registers.
+	 */
+	ret = regmap_write(map, RTL8365MB_MAGIC_REG, RTL8365MB_MAGIC_VALUE);
+	if (ret)
+		return ret;
+
+	ret = regmap_read(map, RTL8365MB_CHIP_ID_REG, id);
+	if (ret)
+		return ret;
+
+	ret = regmap_read(map, RTL8365MB_CHIP_VER_REG, ver);
+	if (ret)
+		return ret;
+
+	/* Reset magic register */
+	ret = regmap_write(map, RTL8365MB_MAGIC_REG, 0);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+static int rtl8365mb_detect(struct realtek_priv *priv)
+{
+	struct rtl8365mb *mb = priv->chip_data;
+	u32 chip_id;
+	u32 chip_ver;
+	int ret;
+	int i;
+
+	ret = rtl8365mb_get_chip_id_and_ver(priv->map, &chip_id, &chip_ver);
+	if (ret) {
+		dev_err(priv->dev, "failed to read chip id and version: %d\n",
+			ret);
+		return ret;
+	}
+
+	for (i = 0; i < ARRAY_SIZE(rtl8365mb_chip_infos); i++) {
+		const struct rtl8365mb_chip_info *ci = &rtl8365mb_chip_infos[i];
+
+		if (ci->chip_id == chip_id && ci->chip_ver == chip_ver) {
+			mb->chip_info = ci;
+			break;
+		}
+	}
+
+	if (!mb->chip_info) {
+		dev_err(priv->dev,
+			"unrecognized switch (id=0x%04x, ver=0x%04x)", chip_id,
+			chip_ver);
+		return -ENODEV;
+	}
+
+	dev_info(priv->dev, "found an %s switch\n", mb->chip_info->name);
+
+	priv->num_ports = RTL8365MB_MAX_NUM_PORTS;
+	mb->priv = priv;
+	mb->cpu.trap_port = RTL8365MB_MAX_NUM_PORTS;
+	mb->cpu.insert = RTL8365MB_CPU_INSERT_TO_ALL;
+	mb->cpu.position = RTL8365MB_CPU_POS_AFTER_SA;
+	mb->cpu.rx_length = RTL8365MB_CPU_RXLEN_64BYTES;
+	mb->cpu.format = RTL8365MB_CPU_FORMAT_8BYTES;
+
+	return 0;
+}
+
+static const struct dsa_switch_ops rtl8365mb_switch_ops_smi = {
+	.port_pre_enable = rtl8365mb_phylink_mac_config,
+	.port_disable = rtl8365mb_phylink_mac_link_down,
+	.port_enable = rtl8365mb_phylink_mac_link_up,
+};
+
+static const struct dsa_switch_ops rtl8365mb_switch_ops_mdio = {
+	.port_pre_enable = rtl8365mb_phylink_mac_config,
+	.port_disable = rtl8365mb_phylink_mac_link_down,
+	.port_enable = rtl8365mb_phylink_mac_link_up,
+	.phy_read = rtl8365mb_dsa_phy_read,
+	.phy_write = rtl8365mb_dsa_phy_write,
+};
+
+static const struct realtek_ops rtl8365mb_ops = {
+	.detect = rtl8365mb_detect,
+	.phy_read = rtl8365mb_phy_read,
+	.phy_write = rtl8365mb_phy_write,
+	.setup = rtl8365mb_setup,
+	.get_tag_protocol = rtl8365mb_get_tag_protocol,
+	.change_tag_protocol = rtl8365mb_change_tag_protocol,
+};
+
+const struct realtek_variant rtl8365mb_variant = {
+	.ds_ops_smi = &rtl8365mb_switch_ops_smi,
+	.ds_ops_mdio = &rtl8365mb_switch_ops_mdio,
+	.ops = &rtl8365mb_ops,
+	.clk_delay = 10,
+	.cmd_read = 0xb9,
+	.cmd_write = 0xb8,
+	.chip_data_sz = sizeof(struct rtl8365mb),
+};
+EXPORT_SYMBOL_GPL(rtl8365mb_variant);
+
+MODULE_AUTHOR("Alvin Šipraga <alsi@bang-olufsen.dk>");
+MODULE_DESCRIPTION("Driver for RTL8365MB-VC ethernet switch");
+MODULE_LICENSE("GPL");
diff --git a/drivers/net/realtek-dsa/rtl8366rb.c b/drivers/net/realtek-dsa/rtl8366rb.c
new file mode 100644
index 000000000000..67dcb7fb704f
--- /dev/null
+++ b/drivers/net/realtek-dsa/rtl8366rb.c
@@ -0,0 +1,1123 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Realtek SMI subdriver for the Realtek RTL8366RB ethernet switch
+ *
+ * This is a sparsely documented chip, the only viable documentation seems
+ * to be a patched up code drop from the vendor that appear in various
+ * GPL source trees.
+ *
+ * Copyright (C) 2017 Linus Walleij <linus.walleij@linaro.org>
+ * Copyright (C) 2009-2010 Gabor Juhos <juhosg@openwrt.org>
+ * Copyright (C) 2010 Antti Seppälä <a.seppala@gmail.com>
+ * Copyright (C) 2010 Roman Yeryomin <roman@advem.lv>
+ * Copyright (C) 2011 Colin Leitner <colin.leitner@googlemail.com>
+ */
+
+#include <linux/bitops.h>
+#include <net.h>
+#include <linux/if_bridge.h>
+#include <regmap.h>
+
+#include "realtek.h"
+
+#define RTL8366RB_PORT_NUM_CPU		5
+#define RTL8366RB_NUM_PORTS		6
+#define RTL8366RB_PHY_NO_MAX		4
+#define RTL8366RB_PHY_ADDR_MAX		31
+
+/* Switch Global Configuration register */
+#define RTL8366RB_SGCR				0x0000
+#define RTL8366RB_SGCR_EN_BC_STORM_CTRL		BIT(0)
+#define RTL8366RB_SGCR_MAX_LENGTH(a)		((a) << 4)
+#define RTL8366RB_SGCR_MAX_LENGTH_MASK		RTL8366RB_SGCR_MAX_LENGTH(0x3)
+#define RTL8366RB_SGCR_MAX_LENGTH_1522		RTL8366RB_SGCR_MAX_LENGTH(0x0)
+#define RTL8366RB_SGCR_MAX_LENGTH_1536		RTL8366RB_SGCR_MAX_LENGTH(0x1)
+#define RTL8366RB_SGCR_MAX_LENGTH_1552		RTL8366RB_SGCR_MAX_LENGTH(0x2)
+#define RTL8366RB_SGCR_MAX_LENGTH_16000		RTL8366RB_SGCR_MAX_LENGTH(0x3)
+#define RTL8366RB_SGCR_EN_VLAN			BIT(13)
+#define RTL8366RB_SGCR_EN_VLAN_4KTB		BIT(14)
+
+/* Port Enable Control register */
+#define RTL8366RB_PECR				0x0001
+
+/* Switch per-port learning disablement register */
+#define RTL8366RB_PORT_LEARNDIS_CTRL		0x0002
+
+/* Security control, actually aging register */
+#define RTL8366RB_SECURITY_CTRL			0x0003
+
+#define RTL8366RB_SSCR2				0x0004
+#define RTL8366RB_SSCR2_DROP_UNKNOWN_DA		BIT(0)
+
+/* Port Mode Control registers */
+#define RTL8366RB_PMC0				0x0005
+#define RTL8366RB_PMC0_SPI			BIT(0)
+#define RTL8366RB_PMC0_EN_AUTOLOAD		BIT(1)
+#define RTL8366RB_PMC0_PROBE			BIT(2)
+#define RTL8366RB_PMC0_DIS_BISR			BIT(3)
+#define RTL8366RB_PMC0_ADCTEST			BIT(4)
+#define RTL8366RB_PMC0_SRAM_DIAG		BIT(5)
+#define RTL8366RB_PMC0_EN_SCAN			BIT(6)
+#define RTL8366RB_PMC0_P4_IOMODE_SHIFT		7
+#define RTL8366RB_PMC0_P4_IOMODE_MASK		GENMASK(9, 7)
+#define RTL8366RB_PMC0_P5_IOMODE_SHIFT		10
+#define RTL8366RB_PMC0_P5_IOMODE_MASK		GENMASK(12, 10)
+#define RTL8366RB_PMC0_SDSMODE_SHIFT		13
+#define RTL8366RB_PMC0_SDSMODE_MASK		GENMASK(15, 13)
+#define RTL8366RB_PMC1				0x0006
+
+/* Port Mirror Control Register */
+#define RTL8366RB_PMCR				0x0007
+#define RTL8366RB_PMCR_SOURCE_PORT(a)		(a)
+#define RTL8366RB_PMCR_SOURCE_PORT_MASK		0x000f
+#define RTL8366RB_PMCR_MONITOR_PORT(a)		((a) << 4)
+#define RTL8366RB_PMCR_MONITOR_PORT_MASK	0x00f0
+#define RTL8366RB_PMCR_MIRROR_RX		BIT(8)
+#define RTL8366RB_PMCR_MIRROR_TX		BIT(9)
+#define RTL8366RB_PMCR_MIRROR_SPC		BIT(10)
+#define RTL8366RB_PMCR_MIRROR_ISO		BIT(11)
+
+/* bits 0..7 = port 0, bits 8..15 = port 1 */
+#define RTL8366RB_PAACR0		0x0010
+/* bits 0..7 = port 2, bits 8..15 = port 3 */
+#define RTL8366RB_PAACR1		0x0011
+/* bits 0..7 = port 4, bits 8..15 = port 5 */
+#define RTL8366RB_PAACR2		0x0012
+#define RTL8366RB_PAACR_SPEED_10M	0
+#define RTL8366RB_PAACR_SPEED_100M	1
+#define RTL8366RB_PAACR_SPEED_1000M	2
+#define RTL8366RB_PAACR_FULL_DUPLEX	BIT(2)
+#define RTL8366RB_PAACR_LINK_UP		BIT(4)
+#define RTL8366RB_PAACR_TX_PAUSE	BIT(5)
+#define RTL8366RB_PAACR_RX_PAUSE	BIT(6)
+#define RTL8366RB_PAACR_AN		BIT(7)
+
+#define RTL8366RB_PAACR_CPU_PORT	(RTL8366RB_PAACR_SPEED_1000M | \
+					 RTL8366RB_PAACR_FULL_DUPLEX | \
+					 RTL8366RB_PAACR_LINK_UP | \
+					 RTL8366RB_PAACR_TX_PAUSE | \
+					 RTL8366RB_PAACR_RX_PAUSE)
+
+/* bits 0..7 = port 0, bits 8..15 = port 1 */
+#define RTL8366RB_PSTAT0		0x0014
+/* bits 0..7 = port 2, bits 8..15 = port 3 */
+#define RTL8366RB_PSTAT1		0x0015
+/* bits 0..7 = port 4, bits 8..15 = port 5 */
+#define RTL8366RB_PSTAT2		0x0016
+
+#define RTL8366RB_POWER_SAVING_REG	0x0021
+
+/* Spanning tree status (STP) control, two bits per port per FID */
+#define RTL8366RB_STP_STATE_BASE	0x0050 /* 0x0050..0x0057 */
+#define RTL8366RB_STP_STATE_DISABLED	0x0
+#define RTL8366RB_STP_STATE_BLOCKING	0x1
+#define RTL8366RB_STP_STATE_LEARNING	0x2
+#define RTL8366RB_STP_STATE_FORWARDING	0x3
+#define RTL8366RB_STP_MASK		GENMASK(1, 0)
+#define RTL8366RB_STP_STATE(port, state) \
+	((state) << ((port) * 2))
+#define RTL8366RB_STP_STATE_MASK(port) \
+	RTL8366RB_STP_STATE((port), RTL8366RB_STP_MASK)
+
+/* CPU port control reg */
+#define RTL8368RB_CPU_CTRL_REG		0x0061
+#define RTL8368RB_CPU_PORTS_MSK		0x00FF
+/* Disables inserting custom tag length/type 0x8899 */
+#define RTL8368RB_CPU_NO_TAG		BIT(15)
+
+#define RTL8366RB_SMAR0			0x0070 /* bits 0..15 */
+#define RTL8366RB_SMAR1			0x0071 /* bits 16..31 */
+#define RTL8366RB_SMAR2			0x0072 /* bits 32..47 */
+
+#define RTL8366RB_RESET_CTRL_REG		0x0100
+#define RTL8366RB_CHIP_CTRL_RESET_HW		BIT(0)
+#define RTL8366RB_CHIP_CTRL_RESET_SW		BIT(1)
+
+#define RTL8366RB_CHIP_ID_REG			0x0509
+#define RTL8366RB_CHIP_ID_8366			0x5937
+#define RTL8366RB_CHIP_VERSION_CTRL_REG		0x050A
+#define RTL8366RB_CHIP_VERSION_MASK		0xf
+
+/* PHY registers control */
+#define RTL8366RB_PHY_ACCESS_CTRL_REG		0x8000
+#define RTL8366RB_PHY_CTRL_READ			BIT(0)
+#define RTL8366RB_PHY_CTRL_WRITE		0
+#define RTL8366RB_PHY_ACCESS_BUSY_REG		0x8001
+#define RTL8366RB_PHY_INT_BUSY			BIT(0)
+#define RTL8366RB_PHY_EXT_BUSY			BIT(4)
+#define RTL8366RB_PHY_ACCESS_DATA_REG		0x8002
+#define RTL8366RB_PHY_EXT_CTRL_REG		0x8010
+#define RTL8366RB_PHY_EXT_WRDATA_REG		0x8011
+#define RTL8366RB_PHY_EXT_RDDATA_REG		0x8012
+
+#define RTL8366RB_PHY_REG_MASK			0x1f
+#define RTL8366RB_PHY_PAGE_OFFSET		5
+#define RTL8366RB_PHY_PAGE_MASK			(0xf << 5)
+#define RTL8366RB_PHY_NO_OFFSET			9
+#define RTL8366RB_PHY_NO_MASK			(0x1f << 9)
+
+/* VLAN Ingress Control Register 1, one bit per port.
+ * bit 0 .. 5 will make the switch drop ingress frames without
+ * VID such as untagged or priority-tagged frames for respective
+ * port.
+ * bit 6 .. 11 will make the switch drop ingress frames carrying
+ * a C-tag with VID != 0 for respective port.
+ */
+#define RTL8366RB_VLAN_INGRESS_CTRL1_REG	0x037E
+#define RTL8366RB_VLAN_INGRESS_CTRL1_DROP(port)	(BIT((port)) | BIT((port) + 6))
+
+/* VLAN Ingress Control Register 2, one bit per port.
+ * bit0 .. bit5 will make the switch drop all ingress frames with
+ * a VLAN classification that does not include the port is in its
+ * member set.
+ */
+#define RTL8366RB_VLAN_INGRESS_CTRL2_REG	0x037f
+
+/* LED control registers */
+#define RTL8366RB_LED_BLINKRATE_REG		0x0430
+#define RTL8366RB_LED_BLINKRATE_MASK		0x0007
+#define RTL8366RB_LED_BLINKRATE_28MS		0x0000
+#define RTL8366RB_LED_BLINKRATE_56MS		0x0001
+#define RTL8366RB_LED_BLINKRATE_84MS		0x0002
+#define RTL8366RB_LED_BLINKRATE_111MS		0x0003
+#define RTL8366RB_LED_BLINKRATE_222MS		0x0004
+#define RTL8366RB_LED_BLINKRATE_446MS		0x0005
+
+#define RTL8366RB_LED_CTRL_REG			0x0431
+#define RTL8366RB_LED_OFF			0x0
+#define RTL8366RB_LED_DUP_COL			0x1
+#define RTL8366RB_LED_LINK_ACT			0x2
+#define RTL8366RB_LED_SPD1000			0x3
+#define RTL8366RB_LED_SPD100			0x4
+#define RTL8366RB_LED_SPD10			0x5
+#define RTL8366RB_LED_SPD1000_ACT		0x6
+#define RTL8366RB_LED_SPD100_ACT		0x7
+#define RTL8366RB_LED_SPD10_ACT			0x8
+#define RTL8366RB_LED_SPD100_10_ACT		0x9
+#define RTL8366RB_LED_FIBER			0xa
+#define RTL8366RB_LED_AN_FAULT			0xb
+#define RTL8366RB_LED_LINK_RX			0xc
+#define RTL8366RB_LED_LINK_TX			0xd
+#define RTL8366RB_LED_MASTER			0xe
+#define RTL8366RB_LED_FORCE			0xf
+#define RTL8366RB_LED_0_1_CTRL_REG		0x0432
+#define RTL8366RB_LED_1_OFFSET			6
+#define RTL8366RB_LED_2_3_CTRL_REG		0x0433
+#define RTL8366RB_LED_3_OFFSET			6
+
+#define RTL8366RB_PORT_VLAN_CTRL_BASE		0x0063
+#define RTL8366RB_PORT_VLAN_CTRL_REG(_p)  \
+		(RTL8366RB_PORT_VLAN_CTRL_BASE + (_p) / 4)
+#define RTL8366RB_PORT_VLAN_CTRL_MASK		0xf
+#define RTL8366RB_PORT_VLAN_CTRL_SHIFT(_p)	(4 * ((_p) % 4))
+
+#define RTL8366RB_VLAN_TABLE_READ_BASE		0x018C
+#define RTL8366RB_VLAN_TABLE_WRITE_BASE		0x0185
+
+#define RTL8366RB_TABLE_ACCESS_CTRL_REG		0x0180
+#define RTL8366RB_TABLE_VLAN_READ_CTRL		0x0E01
+#define RTL8366RB_TABLE_VLAN_WRITE_CTRL		0x0F01
+
+#define RTL8366RB_VLAN_MC_BASE(_x)		(0x0020 + (_x) * 3)
+
+#define RTL8366RB_PORT_LINK_STATUS_BASE		0x0014
+#define RTL8366RB_PORT_STATUS_SPEED_MASK	0x0003
+#define RTL8366RB_PORT_STATUS_DUPLEX_MASK	0x0004
+#define RTL8366RB_PORT_STATUS_LINK_MASK		0x0010
+#define RTL8366RB_PORT_STATUS_TXPAUSE_MASK	0x0020
+#define RTL8366RB_PORT_STATUS_RXPAUSE_MASK	0x0040
+#define RTL8366RB_PORT_STATUS_AN_MASK		0x0080
+
+#define RTL8366RB_NUM_VLANS		16
+#define RTL8366RB_NUM_LEDGROUPS		4
+#define RTL8366RB_NUM_VIDS		4096
+#define RTL8366RB_PRIORITYMAX		7
+#define RTL8366RB_NUM_FIDS		8
+#define RTL8366RB_FIDMAX		7
+
+#define RTL8366RB_PORT_1		BIT(0) /* In userspace port 0 */
+#define RTL8366RB_PORT_2		BIT(1) /* In userspace port 1 */
+#define RTL8366RB_PORT_3		BIT(2) /* In userspace port 2 */
+#define RTL8366RB_PORT_4		BIT(3) /* In userspace port 3 */
+#define RTL8366RB_PORT_5		BIT(4) /* In userspace port 4 */
+
+#define RTL8366RB_PORT_CPU		BIT(5) /* CPU port */
+
+#define RTL8366RB_PORT_ALL		(RTL8366RB_PORT_1 |	\
+					 RTL8366RB_PORT_2 |	\
+					 RTL8366RB_PORT_3 |	\
+					 RTL8366RB_PORT_4 |	\
+					 RTL8366RB_PORT_5 |	\
+					 RTL8366RB_PORT_CPU)
+
+#define RTL8366RB_PORT_ALL_BUT_CPU	(RTL8366RB_PORT_1 |	\
+					 RTL8366RB_PORT_2 |	\
+					 RTL8366RB_PORT_3 |	\
+					 RTL8366RB_PORT_4 |	\
+					 RTL8366RB_PORT_5)
+
+#define RTL8366RB_PORT_ALL_EXTERNAL	(RTL8366RB_PORT_1 |	\
+					 RTL8366RB_PORT_2 |	\
+					 RTL8366RB_PORT_3 |	\
+					 RTL8366RB_PORT_4)
+
+#define RTL8366RB_PORT_ALL_INTERNAL	 RTL8366RB_PORT_CPU
+
+/* First configuration word per member config, VID and prio */
+#define RTL8366RB_VLAN_VID_MASK		0xfff
+#define RTL8366RB_VLAN_PRIORITY_SHIFT	12
+#define RTL8366RB_VLAN_PRIORITY_MASK	0x7
+/* Second configuration word per member config, member and untagged */
+#define RTL8366RB_VLAN_UNTAG_SHIFT	8
+#define RTL8366RB_VLAN_UNTAG_MASK	0xff
+#define RTL8366RB_VLAN_MEMBER_MASK	0xff
+/* Third config word per member config, STAG currently unused */
+#define RTL8366RB_VLAN_STAG_MBR_MASK	0xff
+#define RTL8366RB_VLAN_STAG_MBR_SHIFT	8
+#define RTL8366RB_VLAN_STAG_IDX_MASK	0x7
+#define RTL8366RB_VLAN_STAG_IDX_SHIFT	5
+#define RTL8366RB_VLAN_FID_MASK		0x7
+
+/* Port ingress bandwidth control */
+#define RTL8366RB_IB_BASE		0x0200
+#define RTL8366RB_IB_REG(pnum)		(RTL8366RB_IB_BASE + (pnum))
+#define RTL8366RB_IB_BDTH_MASK		0x3fff
+#define RTL8366RB_IB_PREIFG		BIT(14)
+
+/* Port egress bandwidth control */
+#define RTL8366RB_EB_BASE		0x02d1
+#define RTL8366RB_EB_REG(pnum)		(RTL8366RB_EB_BASE + (pnum))
+#define RTL8366RB_EB_BDTH_MASK		0x3fff
+#define RTL8366RB_EB_PREIFG_REG		0x02f8
+#define RTL8366RB_EB_PREIFG		BIT(9)
+
+#define RTL8366RB_BDTH_SW_MAX		1048512 /* 1048576? */
+#define RTL8366RB_BDTH_UNIT		64
+#define RTL8366RB_BDTH_REG_DEFAULT	16383
+
+/* QOS */
+#define RTL8366RB_QOS			BIT(15)
+/* Include/Exclude Preamble and IFG (20 bytes). 0:Exclude, 1:Include. */
+#define RTL8366RB_QOS_DEFAULT_PREIFG	1
+
+/* Interrupt handling */
+#define RTL8366RB_INTERRUPT_CONTROL_REG	0x0440
+#define RTL8366RB_INTERRUPT_POLARITY	BIT(0)
+#define RTL8366RB_P4_RGMII_LED		BIT(2)
+#define RTL8366RB_INTERRUPT_MASK_REG	0x0441
+#define RTL8366RB_INTERRUPT_LINK_CHGALL	GENMASK(11, 0)
+#define RTL8366RB_INTERRUPT_ACLEXCEED	BIT(8)
+#define RTL8366RB_INTERRUPT_STORMEXCEED	BIT(9)
+#define RTL8366RB_INTERRUPT_P4_FIBER	BIT(12)
+#define RTL8366RB_INTERRUPT_P4_UTP	BIT(13)
+#define RTL8366RB_INTERRUPT_VALID	(RTL8366RB_INTERRUPT_LINK_CHGALL | \
+					 RTL8366RB_INTERRUPT_ACLEXCEED | \
+					 RTL8366RB_INTERRUPT_STORMEXCEED | \
+					 RTL8366RB_INTERRUPT_P4_FIBER | \
+					 RTL8366RB_INTERRUPT_P4_UTP)
+#define RTL8366RB_INTERRUPT_STATUS_REG	0x0442
+#define RTL8366RB_NUM_INTERRUPT		14 /* 0..13 */
+
+/* Port isolation registers */
+#define RTL8366RB_PORT_ISO_BASE		0x0F08
+#define RTL8366RB_PORT_ISO(pnum)	(RTL8366RB_PORT_ISO_BASE + (pnum))
+#define RTL8366RB_PORT_ISO_EN		BIT(0)
+#define RTL8366RB_PORT_ISO_PORTS_MASK	GENMASK(7, 1)
+#define RTL8366RB_PORT_ISO_PORTS(pmask)	((pmask) << 1)
+
+/* bits 0..5 enable force when cleared */
+#define RTL8366RB_MAC_FORCE_CTRL_REG	0x0F11
+
+#define RTL8366RB_OAM_PARSER_REG	0x0F14
+#define RTL8366RB_OAM_MULTIPLEXER_REG	0x0F15
+
+#define RTL8366RB_GREEN_FEATURE_REG	0x0F51
+#define RTL8366RB_GREEN_FEATURE_MSK	0x0007
+#define RTL8366RB_GREEN_FEATURE_TX	BIT(0)
+#define RTL8366RB_GREEN_FEATURE_RX	BIT(2)
+
+static void rtl8366rb_mask_irqs(struct realtek_priv *priv)
+{
+	int ret;
+
+	ret = regmap_write(priv->map, RTL8366RB_INTERRUPT_MASK_REG, 0);
+	if (ret)
+		dev_err(priv->dev, "could not mask IRQ\n");
+}
+
+static int rtl8366rb_irq_setup(struct realtek_priv *priv)
+{
+	int ret;
+	u32 val;
+
+	rtl8366rb_mask_irqs(priv);
+
+	/* This clears the IRQ status register */
+	ret = regmap_read(priv->map, RTL8366RB_INTERRUPT_STATUS_REG,
+			  &val);
+	if (ret)
+		dev_err(priv->dev, "can't read interrupt status\n");
+
+	return ret;
+}
+
+static int rtl8366rb_set_addr(struct realtek_priv *priv)
+{
+	u8 addr[ETH_ALEN];
+	u16 val;
+	int ret;
+
+	random_ether_addr(addr);
+
+	dev_info(priv->dev, "set MAC: %02X:%02X:%02X:%02X:%02X:%02X\n",
+		 addr[0], addr[1], addr[2], addr[3], addr[4], addr[5]);
+	val = addr[0] << 8 | addr[1];
+	ret = regmap_write(priv->map, RTL8366RB_SMAR0, val);
+	if (ret)
+		return ret;
+	val = addr[2] << 8 | addr[3];
+	ret = regmap_write(priv->map, RTL8366RB_SMAR1, val);
+	if (ret)
+		return ret;
+	val = addr[4] << 8 | addr[5];
+	ret = regmap_write(priv->map, RTL8366RB_SMAR2, val);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+/* Found in a vendor driver */
+
+/* Struct for handling the jam tables' entries */
+struct rtl8366rb_jam_tbl_entry {
+	u16 reg;
+	u16 val;
+};
+
+/* For the "version 0" early silicon, appear in most source releases */
+static const struct rtl8366rb_jam_tbl_entry rtl8366rb_init_jam_ver_0[] = {
+	{0x000B, 0x0001}, {0x03A6, 0x0100}, {0x03A7, 0x0001}, {0x02D1, 0x3FFF},
+	{0x02D2, 0x3FFF}, {0x02D3, 0x3FFF}, {0x02D4, 0x3FFF}, {0x02D5, 0x3FFF},
+	{0x02D6, 0x3FFF}, {0x02D7, 0x3FFF}, {0x02D8, 0x3FFF}, {0x022B, 0x0688},
+	{0x022C, 0x0FAC}, {0x03D0, 0x4688}, {0x03D1, 0x01F5}, {0x0000, 0x0830},
+	{0x02F9, 0x0200}, {0x02F7, 0x7FFF}, {0x02F8, 0x03FF}, {0x0080, 0x03E8},
+	{0x0081, 0x00CE}, {0x0082, 0x00DA}, {0x0083, 0x0230}, {0xBE0F, 0x2000},
+	{0x0231, 0x422A}, {0x0232, 0x422A}, {0x0233, 0x422A}, {0x0234, 0x422A},
+	{0x0235, 0x422A}, {0x0236, 0x422A}, {0x0237, 0x422A}, {0x0238, 0x422A},
+	{0x0239, 0x422A}, {0x023A, 0x422A}, {0x023B, 0x422A}, {0x023C, 0x422A},
+	{0x023D, 0x422A}, {0x023E, 0x422A}, {0x023F, 0x422A}, {0x0240, 0x422A},
+	{0x0241, 0x422A}, {0x0242, 0x422A}, {0x0243, 0x422A}, {0x0244, 0x422A},
+	{0x0245, 0x422A}, {0x0246, 0x422A}, {0x0247, 0x422A}, {0x0248, 0x422A},
+	{0x0249, 0x0146}, {0x024A, 0x0146}, {0x024B, 0x0146}, {0xBE03, 0xC961},
+	{0x024D, 0x0146}, {0x024E, 0x0146}, {0x024F, 0x0146}, {0x0250, 0x0146},
+	{0xBE64, 0x0226}, {0x0252, 0x0146}, {0x0253, 0x0146}, {0x024C, 0x0146},
+	{0x0251, 0x0146}, {0x0254, 0x0146}, {0xBE62, 0x3FD0}, {0x0084, 0x0320},
+	{0x0255, 0x0146}, {0x0256, 0x0146}, {0x0257, 0x0146}, {0x0258, 0x0146},
+	{0x0259, 0x0146}, {0x025A, 0x0146}, {0x025B, 0x0146}, {0x025C, 0x0146},
+	{0x025D, 0x0146}, {0x025E, 0x0146}, {0x025F, 0x0146}, {0x0260, 0x0146},
+	{0x0261, 0xA23F}, {0x0262, 0x0294}, {0x0263, 0xA23F}, {0x0264, 0x0294},
+	{0x0265, 0xA23F}, {0x0266, 0x0294}, {0x0267, 0xA23F}, {0x0268, 0x0294},
+	{0x0269, 0xA23F}, {0x026A, 0x0294}, {0x026B, 0xA23F}, {0x026C, 0x0294},
+	{0x026D, 0xA23F}, {0x026E, 0x0294}, {0x026F, 0xA23F}, {0x0270, 0x0294},
+	{0x02F5, 0x0048}, {0xBE09, 0x0E00}, {0xBE1E, 0x0FA0}, {0xBE14, 0x8448},
+	{0xBE15, 0x1007}, {0xBE4A, 0xA284}, {0xC454, 0x3F0B}, {0xC474, 0x3F0B},
+	{0xBE48, 0x3672}, {0xBE4B, 0x17A7}, {0xBE4C, 0x0B15}, {0xBE52, 0x0EDD},
+	{0xBE49, 0x8C00}, {0xBE5B, 0x785C}, {0xBE5C, 0x785C}, {0xBE5D, 0x785C},
+	{0xBE61, 0x368A}, {0xBE63, 0x9B84}, {0xC456, 0xCC13}, {0xC476, 0xCC13},
+	{0xBE65, 0x307D}, {0xBE6D, 0x0005}, {0xBE6E, 0xE120}, {0xBE2E, 0x7BAF},
+};
+
+/* This v1 init sequence is from Belkin F5D8235 U-Boot release */
+static const struct rtl8366rb_jam_tbl_entry rtl8366rb_init_jam_ver_1[] = {
+	{0x0000, 0x0830}, {0x0001, 0x8000}, {0x0400, 0x8130}, {0xBE78, 0x3C3C},
+	{0x0431, 0x5432}, {0xBE37, 0x0CE4}, {0x02FA, 0xFFDF}, {0x02FB, 0xFFE0},
+	{0xC44C, 0x1585}, {0xC44C, 0x1185}, {0xC44C, 0x1585}, {0xC46C, 0x1585},
+	{0xC46C, 0x1185}, {0xC46C, 0x1585}, {0xC451, 0x2135}, {0xC471, 0x2135},
+	{0xBE10, 0x8140}, {0xBE15, 0x0007}, {0xBE6E, 0xE120}, {0xBE69, 0xD20F},
+	{0xBE6B, 0x0320}, {0xBE24, 0xB000}, {0xBE23, 0xFF51}, {0xBE22, 0xDF20},
+	{0xBE21, 0x0140}, {0xBE20, 0x00BB}, {0xBE24, 0xB800}, {0xBE24, 0x0000},
+	{0xBE24, 0x7000}, {0xBE23, 0xFF51}, {0xBE22, 0xDF60}, {0xBE21, 0x0140},
+	{0xBE20, 0x0077}, {0xBE24, 0x7800}, {0xBE24, 0x0000}, {0xBE2E, 0x7B7A},
+	{0xBE36, 0x0CE4}, {0x02F5, 0x0048}, {0xBE77, 0x2940}, {0x000A, 0x83E0},
+	{0xBE79, 0x3C3C}, {0xBE00, 0x1340},
+};
+
+/* This v2 init sequence is from Belkin F5D8235 U-Boot release */
+static const struct rtl8366rb_jam_tbl_entry rtl8366rb_init_jam_ver_2[] = {
+	{0x0450, 0x0000}, {0x0400, 0x8130}, {0x000A, 0x83ED}, {0x0431, 0x5432},
+	{0xC44F, 0x6250}, {0xC46F, 0x6250}, {0xC456, 0x0C14}, {0xC476, 0x0C14},
+	{0xC44C, 0x1C85}, {0xC44C, 0x1885}, {0xC44C, 0x1C85}, {0xC46C, 0x1C85},
+	{0xC46C, 0x1885}, {0xC46C, 0x1C85}, {0xC44C, 0x0885}, {0xC44C, 0x0881},
+	{0xC44C, 0x0885}, {0xC46C, 0x0885}, {0xC46C, 0x0881}, {0xC46C, 0x0885},
+	{0xBE2E, 0x7BA7}, {0xBE36, 0x1000}, {0xBE37, 0x1000}, {0x8000, 0x0001},
+	{0xBE69, 0xD50F}, {0x8000, 0x0000}, {0xBE69, 0xD50F}, {0xBE6E, 0x0320},
+	{0xBE77, 0x2940}, {0xBE78, 0x3C3C}, {0xBE79, 0x3C3C}, {0xBE6E, 0xE120},
+	{0x8000, 0x0001}, {0xBE15, 0x1007}, {0x8000, 0x0000}, {0xBE15, 0x1007},
+	{0xBE14, 0x0448}, {0xBE1E, 0x00A0}, {0xBE10, 0x8160}, {0xBE10, 0x8140},
+	{0xBE00, 0x1340}, {0x0F51, 0x0010},
+};
+
+/* Appears in a DDWRT code dump */
+static const struct rtl8366rb_jam_tbl_entry rtl8366rb_init_jam_ver_3[] = {
+	{0x0000, 0x0830}, {0x0400, 0x8130}, {0x000A, 0x83ED}, {0x0431, 0x5432},
+	{0x0F51, 0x0017}, {0x02F5, 0x0048}, {0x02FA, 0xFFDF}, {0x02FB, 0xFFE0},
+	{0xC456, 0x0C14}, {0xC476, 0x0C14}, {0xC454, 0x3F8B}, {0xC474, 0x3F8B},
+	{0xC450, 0x2071}, {0xC470, 0x2071}, {0xC451, 0x226B}, {0xC471, 0x226B},
+	{0xC452, 0xA293}, {0xC472, 0xA293}, {0xC44C, 0x1585}, {0xC44C, 0x1185},
+	{0xC44C, 0x1585}, {0xC46C, 0x1585}, {0xC46C, 0x1185}, {0xC46C, 0x1585},
+	{0xC44C, 0x0185}, {0xC44C, 0x0181}, {0xC44C, 0x0185}, {0xC46C, 0x0185},
+	{0xC46C, 0x0181}, {0xC46C, 0x0185}, {0xBE24, 0xB000}, {0xBE23, 0xFF51},
+	{0xBE22, 0xDF20}, {0xBE21, 0x0140}, {0xBE20, 0x00BB}, {0xBE24, 0xB800},
+	{0xBE24, 0x0000}, {0xBE24, 0x7000}, {0xBE23, 0xFF51}, {0xBE22, 0xDF60},
+	{0xBE21, 0x0140}, {0xBE20, 0x0077}, {0xBE24, 0x7800}, {0xBE24, 0x0000},
+	{0xBE2E, 0x7BA7}, {0xBE36, 0x1000}, {0xBE37, 0x1000}, {0x8000, 0x0001},
+	{0xBE69, 0xD50F}, {0x8000, 0x0000}, {0xBE69, 0xD50F}, {0xBE6B, 0x0320},
+	{0xBE77, 0x2800}, {0xBE78, 0x3C3C}, {0xBE79, 0x3C3C}, {0xBE6E, 0xE120},
+	{0x8000, 0x0001}, {0xBE10, 0x8140}, {0x8000, 0x0000}, {0xBE10, 0x8140},
+	{0xBE15, 0x1007}, {0xBE14, 0x0448}, {0xBE1E, 0x00A0}, {0xBE10, 0x8160},
+	{0xBE10, 0x8140}, {0xBE00, 0x1340}, {0x0450, 0x0000}, {0x0401, 0x0000},
+};
+
+/* Belkin F5D8235 v1, "belkin,f5d8235-v1" */
+static const struct rtl8366rb_jam_tbl_entry rtl8366rb_init_jam_f5d8235[] = {
+	{0x0242, 0x02BF}, {0x0245, 0x02BF}, {0x0248, 0x02BF}, {0x024B, 0x02BF},
+	{0x024E, 0x02BF}, {0x0251, 0x02BF}, {0x0254, 0x0A3F}, {0x0256, 0x0A3F},
+	{0x0258, 0x0A3F}, {0x025A, 0x0A3F}, {0x025C, 0x0A3F}, {0x025E, 0x0A3F},
+	{0x0263, 0x007C}, {0x0100, 0x0004}, {0xBE5B, 0x3500}, {0x800E, 0x200F},
+	{0xBE1D, 0x0F00}, {0x8001, 0x5011}, {0x800A, 0xA2F4}, {0x800B, 0x17A3},
+	{0xBE4B, 0x17A3}, {0xBE41, 0x5011}, {0xBE17, 0x2100}, {0x8000, 0x8304},
+	{0xBE40, 0x8304}, {0xBE4A, 0xA2F4}, {0x800C, 0xA8D5}, {0x8014, 0x5500},
+	{0x8015, 0x0004}, {0xBE4C, 0xA8D5}, {0xBE59, 0x0008}, {0xBE09, 0x0E00},
+	{0xBE36, 0x1036}, {0xBE37, 0x1036}, {0x800D, 0x00FF}, {0xBE4D, 0x00FF},
+};
+
+/* DGN3500, "netgear,dgn3500", "netgear,dgn3500b" */
+static const struct rtl8366rb_jam_tbl_entry rtl8366rb_init_jam_dgn3500[] = {
+	{0x0000, 0x0830}, {0x0400, 0x8130}, {0x000A, 0x83ED}, {0x0F51, 0x0017},
+	{0x02F5, 0x0048}, {0x02FA, 0xFFDF}, {0x02FB, 0xFFE0}, {0x0450, 0x0000},
+	{0x0401, 0x0000}, {0x0431, 0x0960},
+};
+
+/* This jam table activates "green ethernet", which means low power mode
+ * and is claimed to detect the cable length and not use more power than
+ * necessary, and the ports should enter power saving mode 10 seconds after
+ * a cable is disconnected. Seems to always be the same.
+ */
+static const struct rtl8366rb_jam_tbl_entry rtl8366rb_green_jam[] = {
+	{0xBE78, 0x323C}, {0xBE77, 0x5000}, {0xBE2E, 0x7BA7},
+	{0xBE59, 0x3459}, {0xBE5A, 0x745A}, {0xBE5B, 0x785C},
+	{0xBE5C, 0x785C}, {0xBE6E, 0xE120}, {0xBE79, 0x323C},
+};
+
+/* Function that jams the tables in the proper registers */
+static int rtl8366rb_jam_table(const struct rtl8366rb_jam_tbl_entry *jam_table,
+			       int jam_size, struct realtek_priv *priv,
+			       bool write_dbg)
+{
+	u32 val;
+	int ret;
+	int i;
+
+	for (i = 0; i < jam_size; i++) {
+		if ((jam_table[i].reg & 0xBE00) == 0xBE00) {
+			ret = regmap_read(priv->map,
+					  RTL8366RB_PHY_ACCESS_BUSY_REG,
+					  &val);
+			if (ret)
+				return ret;
+			if (!(val & RTL8366RB_PHY_INT_BUSY)) {
+				ret = regmap_write(priv->map,
+						   RTL8366RB_PHY_ACCESS_CTRL_REG,
+						   RTL8366RB_PHY_CTRL_WRITE);
+				if (ret)
+					return ret;
+			}
+		}
+		if (write_dbg)
+			dev_dbg(priv->dev, "jam %04x into register %04x\n",
+				jam_table[i].val,
+				jam_table[i].reg);
+		ret = regmap_write(priv->map,
+				   jam_table[i].reg,
+				   jam_table[i].val);
+		if (ret)
+			return ret;
+	}
+	return 0;
+}
+
+static int rtl8366rb_setup(struct realtek_priv *priv)
+{
+	const struct rtl8366rb_jam_tbl_entry *jam_table;
+	u32 chip_ver = 0;
+	u32 chip_id = 0;
+	int jam_size;
+	u32 val;
+	int ret;
+	int i;
+
+	ret = regmap_read(priv->map, RTL8366RB_CHIP_ID_REG, &chip_id);
+	if (ret) {
+		dev_err(priv->dev, "unable to read chip id\n");
+		return ret;
+	}
+
+	switch (chip_id) {
+	case RTL8366RB_CHIP_ID_8366:
+		break;
+	default:
+		dev_err(priv->dev, "unknown chip id (%04x)\n", chip_id);
+		return -ENODEV;
+	}
+
+	ret = regmap_read(priv->map, RTL8366RB_CHIP_VERSION_CTRL_REG,
+			  &chip_ver);
+	if (ret) {
+		dev_err(priv->dev, "unable to read chip version\n");
+		return ret;
+	}
+
+	dev_info(priv->dev, "RTL%04x ver %u chip found\n",
+		 chip_id, chip_ver & RTL8366RB_CHIP_VERSION_MASK);
+
+	/* Do the init dance using the right jam table */
+	switch (chip_ver) {
+	case 0:
+		jam_table = rtl8366rb_init_jam_ver_0;
+		jam_size = ARRAY_SIZE(rtl8366rb_init_jam_ver_0);
+		break;
+	case 1:
+		jam_table = rtl8366rb_init_jam_ver_1;
+		jam_size = ARRAY_SIZE(rtl8366rb_init_jam_ver_1);
+		break;
+	case 2:
+		jam_table = rtl8366rb_init_jam_ver_2;
+		jam_size = ARRAY_SIZE(rtl8366rb_init_jam_ver_2);
+		break;
+	default:
+		jam_table = rtl8366rb_init_jam_ver_3;
+		jam_size = ARRAY_SIZE(rtl8366rb_init_jam_ver_3);
+		break;
+	}
+
+	/* Special jam tables for special routers
+	 * TODO: are these necessary? Maintainers, please test
+	 * without them, using just the off-the-shelf tables.
+	 */
+	if (of_machine_is_compatible("belkin,f5d8235-v1")) {
+		jam_table = rtl8366rb_init_jam_f5d8235;
+		jam_size = ARRAY_SIZE(rtl8366rb_init_jam_f5d8235);
+	}
+	if (of_machine_is_compatible("netgear,dgn3500") ||
+	    of_machine_is_compatible("netgear,dgn3500b")) {
+		jam_table = rtl8366rb_init_jam_dgn3500;
+		jam_size = ARRAY_SIZE(rtl8366rb_init_jam_dgn3500);
+	}
+
+	ret = rtl8366rb_jam_table(jam_table, jam_size, priv, true);
+	if (ret)
+		return ret;
+
+	/* Isolate all user ports so they can only send packets to itself and the CPU port */
+	for (i = 0; i < RTL8366RB_PORT_NUM_CPU; i++) {
+		ret = regmap_write(priv->map, RTL8366RB_PORT_ISO(i),
+				   RTL8366RB_PORT_ISO_PORTS(BIT(RTL8366RB_PORT_NUM_CPU)) |
+				   RTL8366RB_PORT_ISO_EN);
+		if (ret)
+			return ret;
+	}
+	/* CPU port can send packets to all ports */
+	ret = regmap_write(priv->map, RTL8366RB_PORT_ISO(RTL8366RB_PORT_NUM_CPU),
+			   RTL8366RB_PORT_ISO_PORTS(dsa_user_ports(priv->ds)) |
+			   RTL8366RB_PORT_ISO_EN);
+	if (ret)
+		return ret;
+
+	/* Set up the "green ethernet" feature */
+	ret = rtl8366rb_jam_table(rtl8366rb_green_jam,
+				  ARRAY_SIZE(rtl8366rb_green_jam), priv, false);
+	if (ret)
+		return ret;
+
+	ret = regmap_write(priv->map,
+			   RTL8366RB_GREEN_FEATURE_REG,
+			   (chip_ver == 1) ? 0x0007 : 0x0003);
+	if (ret)
+		return ret;
+
+	/* Vendor driver sets 0x240 in registers 0xc and 0xd (undocumented) */
+	ret = regmap_write(priv->map, 0x0c, 0x240);
+	if (ret)
+		return ret;
+	ret = regmap_write(priv->map, 0x0d, 0x240);
+	if (ret)
+		return ret;
+
+	/* Set some random MAC address */
+	ret = rtl8366rb_set_addr(priv);
+	if (ret)
+		return ret;
+
+	/* Enable CPU port with custom DSA tag 8899.
+	 *
+	 * If you set RTL8368RB_CPU_NO_TAG (bit 15) in this registers
+	 * the custom tag is turned off.
+	 */
+	ret = regmap_update_bits(priv->map, RTL8368RB_CPU_CTRL_REG,
+				 0xFFFF,
+				 BIT(priv->cpu_port));
+	if (ret)
+		return ret;
+
+	/* Make sure we default-enable the fixed CPU port */
+	ret = regmap_update_bits(priv->map, RTL8366RB_PECR,
+				 BIT(priv->cpu_port),
+				 0);
+	if (ret)
+		return ret;
+
+	/* Set maximum packet length to 1536 bytes */
+	ret = regmap_update_bits(priv->map, RTL8366RB_SGCR,
+				 RTL8366RB_SGCR_MAX_LENGTH_MASK,
+				 RTL8366RB_SGCR_MAX_LENGTH_1536);
+	if (ret)
+		return ret;
+
+	/* Disable learning for all ports */
+	ret = regmap_write(priv->map, RTL8366RB_PORT_LEARNDIS_CTRL,
+			   RTL8366RB_PORT_ALL);
+	if (ret)
+		return ret;
+
+	/* Enable auto ageing for all ports */
+	ret = regmap_write(priv->map, RTL8366RB_SECURITY_CTRL, 0);
+	if (ret)
+		return ret;
+
+	/* Port 4 setup: this enables Port 4, usually the WAN port,
+	 * common PHY IO mode is apparently mode 0, and this is not what
+	 * the port is initialized to. There is no explanation of the
+	 * IO modes in the Realtek source code, if your WAN port is
+	 * connected to something exotic such as fiber, then this might
+	 * be worth experimenting with.
+	 */
+	ret = regmap_update_bits(priv->map, RTL8366RB_PMC0,
+				 RTL8366RB_PMC0_P4_IOMODE_MASK,
+				 0 << RTL8366RB_PMC0_P4_IOMODE_SHIFT);
+	if (ret)
+		return ret;
+
+	/* Accept all packets by default, we enable filtering on-demand */
+	ret = regmap_write(priv->map, RTL8366RB_VLAN_INGRESS_CTRL1_REG,
+			   0);
+	if (ret)
+		return ret;
+	ret = regmap_write(priv->map, RTL8366RB_VLAN_INGRESS_CTRL2_REG,
+			   0);
+	if (ret)
+		return ret;
+
+	/* Don't drop packets whose DA has not been learned */
+	ret = regmap_update_bits(priv->map, RTL8366RB_SSCR2,
+				 RTL8366RB_SSCR2_DROP_UNKNOWN_DA, 0);
+	if (ret)
+		return ret;
+
+	/* Set blinking, TODO: make this configurable */
+	ret = regmap_update_bits(priv->map, RTL8366RB_LED_BLINKRATE_REG,
+				 RTL8366RB_LED_BLINKRATE_MASK,
+				 RTL8366RB_LED_BLINKRATE_56MS);
+	if (ret)
+		return ret;
+
+	/* Set up LED activity:
+	 * Each port has 4 LEDs, we configure all ports to the same
+	 * behaviour (no individual config) but we can set up each
+	 * LED separately.
+	 */
+	if (priv->leds_disabled) {
+		/* Turn everything off */
+		regmap_update_bits(priv->map,
+				   RTL8366RB_LED_0_1_CTRL_REG,
+				   0x0FFF, 0);
+		regmap_update_bits(priv->map,
+				   RTL8366RB_LED_2_3_CTRL_REG,
+				   0x0FFF, 0);
+		regmap_update_bits(priv->map,
+				   RTL8366RB_INTERRUPT_CONTROL_REG,
+				   RTL8366RB_P4_RGMII_LED,
+				   0);
+		val = RTL8366RB_LED_OFF;
+	} else {
+		/* TODO: make this configurable per LED */
+		val = RTL8366RB_LED_FORCE;
+	}
+	for (i = 0; i < 4; i++) {
+		ret = regmap_update_bits(priv->map,
+					 RTL8366RB_LED_CTRL_REG,
+					 0xf << (i * 4),
+					 val << (i * 4));
+		if (ret)
+			return ret;
+	}
+
+	// TODO: Untested: We'll assume POR defaults to suffice for our usecase
+	// rtl8366_reset_vlan(priv);
+
+	rtl8366rb_irq_setup(priv);
+
+	if (priv->setup_interface) {
+		ret = priv->setup_interface(priv->ds);
+		if (ret) {
+			dev_err(priv->dev, "could not set up MDIO bus\n");
+			return -ENODEV;
+		}
+	}
+
+	return 0;
+}
+
+static enum dsa_tag_protocol rtl8366_get_tag_protocol(struct realtek_priv *priv)
+{
+	/* This switch uses the 4 byte protocol A Realtek DSA tag */
+	return DSA_TAG_PROTO_RTL4_A;
+}
+
+static void
+rtl8366rb_mac_link_up(struct dsa_switch *ds, int port)
+{
+	struct realtek_priv *priv = ds->priv;
+	int ret;
+
+	if (port != priv->cpu_port)
+		return;
+
+	dev_dbg(priv->dev, "MAC link up on CPU port (%d)\n", port);
+
+	/* Force the fixed CPU port into 1Gbit mode, no autonegotiation */
+	ret = regmap_update_bits(priv->map, RTL8366RB_MAC_FORCE_CTRL_REG,
+				 BIT(port), BIT(port));
+	if (ret) {
+		dev_err(priv->dev, "failed to force 1Gbit on CPU port\n");
+		return;
+	}
+
+	ret = regmap_update_bits(priv->map, RTL8366RB_PAACR2,
+				 0xFF00U,
+				 RTL8366RB_PAACR_CPU_PORT << 8);
+	if (ret) {
+		dev_err(priv->dev, "failed to set PAACR on CPU port\n");
+		return;
+	}
+
+	/* Enable the CPU port */
+	ret = regmap_update_bits(priv->map, RTL8366RB_PECR, BIT(port),
+				 0);
+	if (ret) {
+		dev_err(priv->dev, "failed to enable the CPU port\n");
+		return;
+	}
+}
+
+static void
+rtl8366rb_mac_link_down(struct dsa_switch *ds, int port)
+{
+	struct realtek_priv *priv = ds->priv;
+	int ret;
+
+	if (port != priv->cpu_port)
+		return;
+
+	dev_dbg(priv->dev, "MAC link down on CPU port (%d)\n", port);
+
+	/* Disable the CPU port */
+	ret = regmap_update_bits(priv->map, RTL8366RB_PECR, BIT(port),
+				 BIT(port));
+	if (ret) {
+		dev_err(priv->dev, "failed to disable the CPU port\n");
+		return;
+	}
+}
+
+static void rb8366rb_set_port_led(struct realtek_priv *priv,
+				  int port, bool enable)
+{
+	u16 val = enable ? 0x3f : 0;
+	int ret;
+
+	if (priv->leds_disabled)
+		return;
+
+	switch (port) {
+	case 0:
+		ret = regmap_update_bits(priv->map,
+					 RTL8366RB_LED_0_1_CTRL_REG,
+					 0x3F, val);
+		break;
+	case 1:
+		ret = regmap_update_bits(priv->map,
+					 RTL8366RB_LED_0_1_CTRL_REG,
+					 0x3F << RTL8366RB_LED_1_OFFSET,
+					 val << RTL8366RB_LED_1_OFFSET);
+		break;
+	case 2:
+		ret = regmap_update_bits(priv->map,
+					 RTL8366RB_LED_2_3_CTRL_REG,
+					 0x3F, val);
+		break;
+	case 3:
+		ret = regmap_update_bits(priv->map,
+					 RTL8366RB_LED_2_3_CTRL_REG,
+					 0x3F << RTL8366RB_LED_3_OFFSET,
+					 val << RTL8366RB_LED_3_OFFSET);
+		break;
+	case 4:
+		ret = regmap_update_bits(priv->map,
+					 RTL8366RB_INTERRUPT_CONTROL_REG,
+					 RTL8366RB_P4_RGMII_LED,
+					 enable ? RTL8366RB_P4_RGMII_LED : 0);
+		break;
+	default:
+		dev_err(priv->dev, "no LED for port %d\n", port);
+		return;
+	}
+	if (ret)
+		dev_err(priv->dev, "error updating LED on port %d\n", port);
+}
+
+static void
+rtl8366rb_port_stp_state_set(struct dsa_switch *ds, int port, u8 state)
+{
+	struct realtek_priv *priv = ds->priv;
+	u32 val;
+	int i;
+
+	switch (state) {
+	case BR_STATE_DISABLED:
+		val = RTL8366RB_STP_STATE_DISABLED;
+		break;
+	case BR_STATE_FORWARDING:
+		val = RTL8366RB_STP_STATE_FORWARDING;
+		break;
+	default:
+		dev_err(priv->dev, "unknown bridge state requested\n");
+		return;
+	}
+
+	/* Set the same status for the port on all the FIDs */
+	for (i = 0; i < RTL8366RB_NUM_FIDS; i++) {
+		regmap_update_bits(priv->map, RTL8366RB_STP_STATE_BASE + i,
+				   RTL8366RB_STP_STATE_MASK(port),
+				   RTL8366RB_STP_STATE(port, val));
+	}
+}
+
+static int
+rtl8366rb_port_enable(struct dsa_port *dp, int port,
+		      struct phy_device *phy)
+{
+	struct realtek_priv *priv = dp->ds->priv;
+	int ret;
+
+	rtl8366rb_mac_link_up(dp->ds, port);
+
+	dev_dbg(priv->dev, "enable port %d\n", port);
+	ret = regmap_update_bits(priv->map, RTL8366RB_PECR, BIT(port),
+				 0);
+	if (ret)
+		return ret;
+
+	rb8366rb_set_port_led(priv, port, true);
+
+	rtl8366rb_port_stp_state_set(dp->ds, port, BR_STATE_FORWARDING);
+
+	return 0;
+}
+
+static void
+rtl8366rb_port_disable(struct dsa_port *dp, int port,
+		       struct phy_device *phy)
+{
+	struct realtek_priv *priv = dp->ds->priv;
+	int ret;
+
+	rtl8366rb_port_stp_state_set(dp->ds, port, BR_STATE_DISABLED);
+
+	dev_dbg(priv->dev, "disable port %d\n", port);
+	ret = regmap_update_bits(priv->map, RTL8366RB_PECR, BIT(port),
+				 BIT(port));
+	if (ret)
+		return;
+
+	rb8366rb_set_port_led(priv, port, false);
+
+	rtl8366rb_mac_link_down(dp->ds, port);
+}
+
+static int rtl8366rb_phy_read(struct realtek_priv *priv, int phy, int regnum)
+{
+	u32 val;
+	u32 reg;
+	int ret;
+
+	if (phy > RTL8366RB_PHY_NO_MAX)
+		return -EINVAL;
+
+	ret = regmap_write(priv->map_nolock, RTL8366RB_PHY_ACCESS_CTRL_REG,
+			   RTL8366RB_PHY_CTRL_READ);
+	if (ret)
+		goto out;
+
+	reg = 0x8000 | (1 << (phy + RTL8366RB_PHY_NO_OFFSET)) | regnum;
+
+	ret = regmap_write(priv->map_nolock, reg, 0);
+	if (ret) {
+		dev_err(priv->dev,
+			"failed to write PHY%d reg %04x @ %04x, ret %d\n",
+			phy, regnum, reg, ret);
+		goto out;
+	}
+
+	ret = regmap_read(priv->map_nolock, RTL8366RB_PHY_ACCESS_DATA_REG,
+			  &val);
+	if (ret)
+		goto out;
+
+	ret = val;
+
+	dev_dbg(priv->dev, "read PHY%d register 0x%04x @ %08x, val <- %04x\n",
+		phy, regnum, reg, val);
+
+out:
+	return ret;
+}
+
+static int rtl8366rb_phy_write(struct realtek_priv *priv, int phy, int regnum,
+			       u16 val)
+{
+	u32 reg;
+	int ret;
+
+	if (phy > RTL8366RB_PHY_NO_MAX)
+		return -EINVAL;
+
+	ret = regmap_write(priv->map_nolock, RTL8366RB_PHY_ACCESS_CTRL_REG,
+			   RTL8366RB_PHY_CTRL_WRITE);
+	if (ret)
+		goto out;
+
+	reg = 0x8000 | (1 << (phy + RTL8366RB_PHY_NO_OFFSET)) | regnum;
+
+	dev_dbg(priv->dev, "write PHY%d register 0x%04x @ %04x, val -> %04x\n",
+		phy, regnum, reg, val);
+
+	ret = regmap_write(priv->map_nolock, reg, val);
+	if (ret)
+		goto out;
+
+out:
+	return ret;
+}
+
+static int rtl8366rb_dsa_phy_read(struct dsa_switch *ds, int phy, int regnum)
+{
+	return rtl8366rb_phy_read(ds->priv, phy, regnum);
+}
+
+static int rtl8366rb_dsa_phy_write(struct dsa_switch *ds, int phy, int regnum,
+				   u16 val)
+{
+	return rtl8366rb_phy_write(ds->priv, phy, regnum, val);
+}
+
+static int rtl8366rb_reset_chip(struct realtek_priv *priv)
+{
+	int timeout = 10;
+	u32 val;
+	int ret;
+
+	priv->write_reg_noack(priv, RTL8366RB_RESET_CTRL_REG,
+			      RTL8366RB_CHIP_CTRL_RESET_HW);
+	do {
+		udelay(20000);
+		ret = regmap_read(priv->map, RTL8366RB_RESET_CTRL_REG, &val);
+		if (ret)
+			return ret;
+
+		if (!(val & RTL8366RB_CHIP_CTRL_RESET_HW))
+			break;
+	} while (--timeout);
+
+	if (!timeout) {
+		dev_err(priv->dev, "timeout waiting for the switch to reset\n");
+		return -EIO;
+	}
+
+	return 0;
+}
+
+static int rtl8366rb_detect(struct realtek_priv *priv)
+{
+	struct device *dev = priv->dev;
+	int ret;
+	u32 val;
+
+	/* Detect device */
+	ret = regmap_read(priv->map, 0x5c, &val);
+	if (ret) {
+		dev_err(dev, "can't get chip ID (%d)\n", ret);
+		return ret;
+	}
+
+	switch (val) {
+	case 0x6027:
+		dev_info(dev, "found an RTL8366S switch\n");
+		dev_err(dev, "this switch is not yet supported, submit patches!\n");
+		return -ENODEV;
+	case 0x5937:
+		dev_info(dev, "found an RTL8366RB switch\n");
+		priv->cpu_port = RTL8366RB_PORT_NUM_CPU;
+		priv->num_ports = RTL8366RB_NUM_PORTS;
+		break;
+	default:
+		dev_info(dev, "found an Unknown Realtek switch (id=0x%04x)\n",
+			 val);
+		break;
+	}
+
+	return rtl8366rb_reset_chip(priv);
+}
+
+static const struct dsa_switch_ops rtl8366rb_switch_ops_smi = {
+	.port_enable = rtl8366rb_port_enable,
+	.port_disable = rtl8366rb_port_disable,
+};
+
+static const struct dsa_switch_ops rtl8366rb_switch_ops_mdio = {
+	.phy_read = rtl8366rb_dsa_phy_read,
+	.phy_write = rtl8366rb_dsa_phy_write,
+	.port_enable = rtl8366rb_port_enable,
+	.port_disable = rtl8366rb_port_disable,
+};
+
+static const struct realtek_ops rtl8366rb_ops = {
+	.detect		= rtl8366rb_detect,
+	.phy_read	= rtl8366rb_phy_read,
+	.phy_write	= rtl8366rb_phy_write,
+	.setup = rtl8366rb_setup,
+	.get_tag_protocol = rtl8366_get_tag_protocol,
+};
+
+const struct realtek_variant rtl8366rb_variant = {
+	.ds_ops_smi = &rtl8366rb_switch_ops_smi,
+	.ds_ops_mdio = &rtl8366rb_switch_ops_mdio,
+	.ops = &rtl8366rb_ops,
+	.clk_delay = 10,
+	.cmd_read = 0xa9,
+	.cmd_write = 0xa8,
+};
+EXPORT_SYMBOL_GPL(rtl8366rb_variant);
+
+MODULE_AUTHOR("Linus Walleij <linus.walleij@linaro.org>");
+MODULE_DESCRIPTION("Driver for RTL8366RB ethernet switch");
+MODULE_LICENSE("GPL");
diff --git a/drivers/net/realtek-dsa/tag_rtl4_a.c b/drivers/net/realtek-dsa/tag_rtl4_a.c
new file mode 100644
index 000000000000..dabd4ccba2d9
--- /dev/null
+++ b/drivers/net/realtek-dsa/tag_rtl4_a.c
@@ -0,0 +1,103 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Handler for Realtek 4 byte DSA switch tags
+ * Currently only supports protocol "A" found in RTL8366RB
+ * Copyright (c) 2020 Linus Walleij <linus.walleij@linaro.org>
+ *
+ * This "proprietary tag" header looks like so:
+ *
+ * -------------------------------------------------
+ * | MAC DA | MAC SA | 0x8899 | 2 bytes tag | Type |
+ * -------------------------------------------------
+ *
+ * The 2 bytes tag form a 16 bit big endian word. The exact
+ * meaning has been guessed from packet dumps from ingress
+ * frames.
+ */
+
+#include <net.h>
+
+#include "realtek.h"
+#include "dsa_priv.h"
+
+#define RTL4_A_HDR_LEN		4
+#define RTL4_A_ETHERTYPE	0x8899
+#define RTL4_A_PROTOCOL_SHIFT	12
+/*
+ * 0x1 = Realtek Remote Control protocol (RRCP)
+ * 0x2/0x3 seems to be used for loopback testing
+ * 0x9 = RTL8306 DSA protocol
+ * 0xa = RTL8366RB DSA protocol
+ */
+#define RTL4_A_PROTOCOL_RTL8366RB	0xa
+
+static int rtl4a_tag_xmit(struct dsa_port *dp, int port, void *packet, int length)
+{
+	struct device *dev = dp->ds->dev;
+	__be16 *p;
+	u8 *tag;
+	u16 out;
+
+	/* DSA core already pads out to at least 60 bytes */
+
+	dev_dbg(dev, "add realtek tag to package to port %d\n", port);
+
+	dsa_alloc_etype_header(packet, RTL4_A_HDR_LEN);
+	tag = dsa_etype_header_pos(packet);
+
+	/* Set Ethertype */
+	p = (__be16 *)tag;
+	*p = htons(RTL4_A_ETHERTYPE);
+
+	out = (RTL4_A_PROTOCOL_RTL8366RB << RTL4_A_PROTOCOL_SHIFT);
+	/* The lower bits indicate the port number */
+	out |= BIT(port);
+
+	p = (__be16 *)(tag + 2);
+	*p = htons(out);
+
+	return 0;
+}
+
+static int rtl4a_tag_rcv(struct dsa_switch *ds, int *port, void *packet, int length)
+{
+	struct device *dev = ds->dev;
+	u16 protport;
+	__be16 *p;
+	u16 etype;
+	u8 *tag;
+	u8 prot;
+
+	tag = packet + 2 * ETH_ALEN;
+	p = (__be16 *)tag;
+	etype = ntohs(*p);
+	if (etype != RTL4_A_ETHERTYPE) {
+		/* Not custom, just pass through */
+		dev_dbg(dev, "non-realtek ethertype 0x%04x\n", etype);
+		return -EINVAL;
+	}
+	p = (__be16 *)(tag + 2);
+	protport = ntohs(*p);
+	/* The 4 upper bits are the protocol */
+	prot = (protport >> RTL4_A_PROTOCOL_SHIFT) & 0x0f;
+	if (prot != RTL4_A_PROTOCOL_RTL8366RB) {
+		dev_err(dev, "unknown realtek protocol 0x%01x\n", prot);
+		return -EPROTO;
+	}
+	*port = protport & 0xff;
+
+	dsa_strip_etype_header(packet, RTL4_A_HDR_LEN);
+
+	return 0;
+}
+
+const struct dsa_device_ops rtl4a_netdev_ops = {
+	.name	= "rtl4a",
+	.proto	= DSA_TAG_PROTO_RTL4_A,
+	.xmit	= rtl4a_tag_xmit,
+	.rcv	= rtl4a_tag_rcv,
+	.needed_headroom = RTL4_A_HDR_LEN,
+};
+
+MODULE_LICENSE("GPL");
+MODULE_ALIAS_DSA_TAG_DRIVER(DSA_TAG_PROTO_RTL4_A);
diff --git a/drivers/net/realtek-dsa/tag_rtl8_4.c b/drivers/net/realtek-dsa/tag_rtl8_4.c
new file mode 100644
index 000000000000..a6762fc4e90d
--- /dev/null
+++ b/drivers/net/realtek-dsa/tag_rtl8_4.c
@@ -0,0 +1,205 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Handler for Realtek 8 byte switch tags
+ *
+ * Copyright (C) 2021 Alvin Šipraga <alsi@bang-olufsen.dk>
+ *
+ * NOTE: Currently only supports protocol "4" found in the RTL8365MB, hence
+ * named tag_rtl8_4.
+ *
+ * This tag has the following format:
+ *
+ *  0                                  7|8                                 15
+ *  |-----------------------------------+-----------------------------------|---
+ *  |                               (16-bit)                                | ^
+ *  |                       Realtek EtherType [0x8899]                      | |
+ *  |-----------------------------------+-----------------------------------| 8
+ *  |              (8-bit)              |              (8-bit)              |
+ *  |          Protocol [0x04]          |              REASON               | b
+ *  |-----------------------------------+-----------------------------------| y
+ *  |   (1)  | (1) | (2) |   (1)  | (3) | (1)  | (1) |    (1)    |   (5)    | t
+ *  | FID_EN |  X  | FID | PRI_EN | PRI | KEEP |  X  | LEARN_DIS |    X     | e
+ *  |-----------------------------------+-----------------------------------| s
+ *  |   (1)  |                       (15-bit)                               | |
+ *  |  ALLOW |                        TX/RX                                 | v
+ *  |-----------------------------------+-----------------------------------|---
+ *
+ * With the following field descriptions:
+ *
+ *    field      | description
+ *   ------------+-------------
+ *    Realtek    | 0x8899: indicates that this is a proprietary Realtek tag;
+ *     EtherType |         note that Realtek uses the same EtherType for
+ *               |         other incompatible tag formats (e.g. tag_rtl4_a.c)
+ *    Protocol   | 0x04: indicates that this tag conforms to this format
+ *    X          | reserved
+ *   ------------+-------------
+ *    REASON     | reason for forwarding packet to CPU
+ *               | 0: packet was forwarded or flooded to CPU
+ *               | 80: packet was trapped to CPU
+ *    FID_EN     | 1: packet has an FID
+ *               | 0: no FID
+ *    FID        | FID of packet (if FID_EN=1)
+ *    PRI_EN     | 1: force priority of packet
+ *               | 0: don't force priority
+ *    PRI        | priority of packet (if PRI_EN=1)
+ *    KEEP       | preserve packet VLAN tag format
+ *    LEARN_DIS  | don't learn the source MAC address of the packet
+ *    ALLOW      | 1: treat TX/RX field as an allowance port mask, meaning the
+ *               |    packet may only be forwarded to ports specified in the
+ *               |    mask
+ *               | 0: no allowance port mask, TX/RX field is the forwarding
+ *               |    port mask
+ *    TX/RX      | TX (switch->CPU): port number the packet was received on
+ *               | RX (CPU->switch): forwarding port mask (if ALLOW=0)
+ *               |                   allowance port mask (if ALLOW=1)
+ *
+ * The tag can be positioned before Ethertype, using tag "rtl8_4":
+ *
+ *  +--------+--------+------------+------+-----
+ *  | MAC DA | MAC SA | 8 byte tag | Type | ...
+ *  +--------+--------+------------+------+-----
+ *
+ * The tag can also appear between the end of the payload and before the CRC,
+ * using tag "rtl8_4t":
+ *
+ * +--------+--------+------+-----+---------+------------+-----+
+ * | MAC DA | MAC SA | TYPE | ... | payload | 8-byte tag | CRC |
+ * +--------+--------+------+-----+---------+------------+-----+
+ *
+ * The added bytes after the payload will break most checksums, either in
+ * software or hardware. We don't care for checksums in barebox, so this
+ * is just ignored.
+ *
+ */
+
+#include <linux/bitfield.h>
+#include <net.h>
+
+#include "realtek.h"
+#include "dsa_priv.h"
+
+/* Protocols supported:
+ *
+ * 0x04 = RTL8365MB DSA protocol
+ */
+
+#define ETH_P_REALTEK			0x8899
+
+#define RTL8_4_TAG_LEN			8
+
+#define RTL8_4_PROTOCOL			GENMASK(15, 8)
+#define   RTL8_4_PROTOCOL_RTL8365MB	0x04
+#define RTL8_4_REASON			GENMASK(7, 0)
+#define   RTL8_4_REASON_FORWARD		0
+#define   RTL8_4_REASON_TRAP		80
+
+#define RTL8_4_LEARN_DIS		BIT(5)
+
+#define RTL8_4_TX			GENMASK(3, 0)
+#define RTL8_4_RX			GENMASK(10, 0)
+
+static void rtl8_4_write_tag(int port, void *tag)
+{
+	__be16 tag16[RTL8_4_TAG_LEN / 2];
+
+	/* Set Realtek EtherType */
+	tag16[0] = htons(ETH_P_REALTEK);
+
+	/* Set Protocol; zero REASON */
+	tag16[1] = htons(FIELD_PREP(RTL8_4_PROTOCOL, RTL8_4_PROTOCOL_RTL8365MB));
+
+	/* Zero FID_EN, FID, PRI_EN, PRI, KEEP; set LEARN_DIS */
+	tag16[2] = htons(FIELD_PREP(RTL8_4_LEARN_DIS, 1));
+
+	/* Zero ALLOW; set RX (CPU->switch) forwarding port mask */
+	tag16[3] = htons(FIELD_PREP(RTL8_4_RX, BIT(port)));
+
+	memcpy(tag, tag16, RTL8_4_TAG_LEN);
+}
+
+static int rtl8_4_tag_xmit(struct dsa_port *dp, int port, void *packet, int length)
+{
+	dsa_alloc_etype_header(packet, RTL8_4_TAG_LEN);
+
+	rtl8_4_write_tag(port, dsa_etype_header_pos(packet));
+
+	return 0;
+}
+
+static int rtl8_4t_tag_xmit(struct dsa_port *dp, int port, void *packet, int length)
+{
+	rtl8_4_write_tag(port, packet + length - dp->ds->needed_tx_tailroom);
+
+	return 0;
+}
+
+static int rtl8_4_read_tag(int *port, struct device *dev, void *tag)
+{
+	__be16 tag16[RTL8_4_TAG_LEN / 2];
+	u16 etype;
+	u8 proto;
+
+	memcpy(tag16, tag, RTL8_4_TAG_LEN);
+
+	/* Parse Realtek EtherType */
+	etype = ntohs(tag16[0]);
+	if (unlikely(etype != ETH_P_REALTEK)) {
+		dev_warn(dev, "non-realtek ethertype 0x%04x\n", etype);
+		return -EPROTO;
+	}
+
+	/* Parse Protocol */
+	proto = FIELD_GET(RTL8_4_PROTOCOL, ntohs(tag16[1]));
+	if (unlikely(proto != RTL8_4_PROTOCOL_RTL8365MB)) {
+		dev_warn(dev, "unknown realtek protocol 0x%02x\n", proto);
+		return -EPROTO;
+	}
+
+	/* Parse TX (switch->CPU) */
+	*port = FIELD_GET(RTL8_4_TX, ntohs(tag16[3]));
+
+	return 0;
+}
+
+static int rtl8_4_tag_rcv(struct dsa_switch *ds, int *port, void *packet, int length)
+{
+	int ret;
+
+	ret = rtl8_4_read_tag(port, ds->dev, dsa_etype_header_pos(packet));
+	if (unlikely(ret))
+		return ret;
+
+	dsa_strip_etype_header(packet, RTL8_4_TAG_LEN);
+
+	return 0;
+}
+
+static int rtl8_4t_tag_rcv(struct dsa_switch *ds, int *port, void *packet, int length)
+{
+	return rtl8_4_read_tag(port, ds->dev, packet + length - ds->needed_rx_tailroom);
+}
+
+/* Ethertype version */
+const struct dsa_device_ops rtl8_4_netdev_ops = {
+	.name = "rtl8_4",
+	.proto = DSA_TAG_PROTO_RTL8_4,
+	.xmit = rtl8_4_tag_xmit,
+	.rcv = rtl8_4_tag_rcv,
+	.needed_headroom = RTL8_4_TAG_LEN,
+};
+
+MODULE_ALIAS_DSA_TAG_DRIVER(DSA_TAG_PROTO_RTL8_4);
+
+/* Tail version */
+const struct dsa_device_ops rtl8_4t_netdev_ops = {
+	.name = "rtl8_4t",
+	.proto = DSA_TAG_PROTO_RTL8_4T,
+	.xmit = rtl8_4t_tag_xmit,
+	.rcv = rtl8_4t_tag_rcv,
+	.needed_tailroom = RTL8_4_TAG_LEN,
+};
+
+MODULE_ALIAS_DSA_TAG_DRIVER(DSA_TAG_PROTO_RTL8_4T);
+
+MODULE_LICENSE("GPL");
diff --git a/drivers/net/realtek-dsa/tagger.c b/drivers/net/realtek-dsa/tagger.c
new file mode 100644
index 000000000000..1d4461aebcb8
--- /dev/null
+++ b/drivers/net/realtek-dsa/tagger.c
@@ -0,0 +1,38 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+
+#include "realtek.h"
+
+int realtek_dsa_init_tagger(struct realtek_priv *priv)
+{
+	const struct dsa_device_ops *tagger_ops;
+	struct dsa_switch_ops *ops;
+
+	/* TODO: Tagging can be configured per port in Linux. barebox DSA core
+	 * will need some refactoring to do that. For now we just use the
+	 * Linux default and leave ->change_tag_protocol unused and
+	 * dsa-tag-protocol OF properties unheeded.
+	 */
+	switch (priv->ops->get_tag_protocol(priv)) {
+	case DSA_TAG_PROTO_RTL4_A:
+		tagger_ops = &rtl4a_netdev_ops;
+		break;
+	case DSA_TAG_PROTO_RTL8_4:
+		tagger_ops = &rtl8_4_netdev_ops;
+		break;
+	case DSA_TAG_PROTO_RTL8_4T:
+		tagger_ops = &rtl8_4t_netdev_ops;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	ops = memdup(priv->ds->ops, sizeof(*priv->ds->ops));
+	ops->xmit = tagger_ops->xmit;
+	ops->rcv = tagger_ops->rcv;
+	priv->ds->ops = ops;
+	priv->ds->needed_headroom = tagger_ops->needed_headroom;
+	priv->ds->needed_rx_tailroom = tagger_ops->needed_tailroom;
+	priv->ds->needed_tx_tailroom = tagger_ops->needed_tailroom;
+
+	return 0;
+}
diff --git a/include/linux/barebox-wrapper.h b/include/linux/barebox-wrapper.h
index 8f2473abe8aa..28e87cb17316 100644
--- a/include/linux/barebox-wrapper.h
+++ b/include/linux/barebox-wrapper.h
@@ -21,6 +21,7 @@ static inline void vfree(const void *addr)
 #define MODULE_LICENSE(x)
 #define MODULE_ALIAS(x)
 #define MODULE_DEVICE_TABLE(bus, table)
+#define MODULE_ALIAS_DSA_TAG_DRIVER(drv)
 
 #define __user
 #define __init
diff --git a/include/linux/if_bridge.h b/include/linux/if_bridge.h
new file mode 100644
index 000000000000..05f8e3a957dd
--- /dev/null
+++ b/include/linux/if_bridge.h
@@ -0,0 +1,9 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+
+#ifndef _LINUX_IF_BRIDGE_H
+#define _LINUX_IF_BRIDGE_H
+
+#define BR_STATE_DISABLED 0
+#define BR_STATE_FORWARDING 3
+
+#endif
diff --git a/include/net.h b/include/net.h
index 27dea3a12d6e..0555b0bd6bed 100644
--- a/include/net.h
+++ b/include/net.h
@@ -416,7 +416,8 @@ static inline int is_broadcast_ether_addr(const u8 *addr)
 	return (addr[0] & addr[1] & addr[2] & addr[3] & addr[4] & addr[5]) == 0xff;
 }
 
-#define ETH_ALEN 6
+#define ETH_ALEN	6	/* Octets in an Ethernet address */
+#define ETH_HLEN	14	/* Total octets in header.*/
 
 /**
  * random_ether_addr - Generate software assigned random Ethernet address
-- 
2.30.2



