Delivery-date: Tue, 20 Sep 2022 14:59:30 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oacqY-00ATH9-JY
	for lore@lore.pengutronix.de; Tue, 20 Sep 2022 14:59:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oacqW-0005KT-Fm
	for lore@pengutronix.de; Tue, 20 Sep 2022 14:59:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1jleUXV+11GXGmtxzmOfgm0SJRaJDbFkgnvgiZH/Zfc=; b=dZZf0Pw00FRxIQpx6bjDyEEZH8
	1FpGpahN3Vu45W2zoqLa5vPAPqtOUPwf1ZAobmCGv6HjIabCj3xD0Lm8KueCB0m3ZM/4bM++z7pR7
	KuNx5Xz25Pop59PGUtLLOOD6AhLXVv7mdOAq2OBDnHqvoqfPVJRtgzML1qH0aFL4q3qV346Kfd70t
	4VjrIyQFbMoipmZ47XIR5NlKC+he3s/Blk/YbSDTUcQ92MollzYdMm/dcteYDqKoSQpcWb+NATjod
	uij+PIShyh53HDaKGpA/CaMsXhrLLXKwyqvX7FyxH/X0NmF/1Y/k5LXiQ2nYTgolH7mBE47bWVNZk
	kR1ULLeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oacor-003sNq-0E; Tue, 20 Sep 2022 12:57:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oacms-003rLG-R4
	for barebox@lists.infradead.org; Tue, 20 Sep 2022 12:55:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1oacmn-0002zr-5u; Tue, 20 Sep 2022 14:55:37 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1oacmn-001rYt-T8; Tue, 20 Sep 2022 14:55:36 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1oacml-00ATct-9H; Tue, 20 Sep 2022 14:55:35 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Tue, 20 Sep 2022 14:55:33 +0200
Message-Id: <20220920125533.2497108-3-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220920125533.2497108-1-o.rempel@pengutronix.de>
References: <20220920125533.2497108-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_055543_703919_20948346 
X-CRM114-Status: GOOD (  25.23  )
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
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 3/3] net: add ksz8873 switch support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add minimal DSA driver for the KSZ8873 switches

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/net/Kconfig   |   6 +
 drivers/net/Makefile  |   1 +
 drivers/net/ksz8873.c | 424 ++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 431 insertions(+)
 create mode 100644 drivers/net/ksz8873.c

diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index 84a01c5328..2dafd9c7a8 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -300,6 +300,12 @@ menuconfig DSA
 
 if DSA
 
+config DRIVER_NET_KSZ8873
+	bool "KSZ8873 switch driver"
+	help
+	  This option enables support for the Microchip KSZ8873
+	  switch chip.
+
 config DRIVER_NET_KSZ9477
 	bool "KSZ9477 switch driver"
 	depends on SPI
diff --git a/drivers/net/Makefile b/drivers/net/Makefile
index 47ad749943..7ff330a2bf 100644
--- a/drivers/net/Makefile
+++ b/drivers/net/Makefile
@@ -27,6 +27,7 @@ obj-$(CONFIG_DRIVER_NET_FEC_IMX)	+= fec_imx.o
 obj-$(CONFIG_DRIVER_NET_FSL_FMAN)	+= fsl-fman.o
 obj-$(CONFIG_DRIVER_NET_GIANFAR)	+= gianfar.o
 obj-$(CONFIG_DRIVER_NET_KS8851_MLL)	+= ks8851_mll.o
+obj-$(CONFIG_DRIVER_NET_KSZ8873)	+= ksz8873.o
 obj-$(CONFIG_DRIVER_NET_KSZ9477)	+= ksz9477.o
 obj-$(CONFIG_DRIVER_NET_MACB)		+= macb.o
 obj-$(CONFIG_DRIVER_NET_MICREL)		+= ksz8864rmn.o
diff --git a/drivers/net/ksz8873.c b/drivers/net/ksz8873.c
new file mode 100644
index 0000000000..bd8071b872
--- /dev/null
+++ b/drivers/net/ksz8873.c
@@ -0,0 +1,424 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+
+#include <common.h>
+#include <complete.h>
+#include <dsa.h>
+#include <gpiod.h>
+#include <linux/mii.h>
+#include <linux/mdio.h>
+#include <net.h>
+#include <of_device.h>
+#include <regmap.h>
+
+#define KSZ8873_GLOBAL_CTRL_1		0x03
+#define KSZ8873_PASS_ALL_FRAMES		BIT(7)
+#define KSZ8873_P3_TAIL_TAG_EN		BIT(6)
+
+/*
+ * port specific registers. Should be used with ksz_pwrite/ksz_pread functions
+ */
+#define KSZ8873_PORTx_CTRL_1		0x01
+#define KSZ8873_PORTx_CTRL_12		0x0c
+
+#define PORT_AUTO_NEG_ENABLE		BIT(7)
+#define PORT_FORCE_100_MBIT		BIT(6)
+#define PORT_FORCE_FULL_DUPLEX		BIT(5)
+#define PORT_AUTO_NEG_100BTX_FD		BIT(3)
+#define PORT_AUTO_NEG_100BTX		BIT(2)
+#define PORT_AUTO_NEG_10BT_FD		BIT(1)
+#define PORT_AUTO_NEG_10BT		BIT(0)
+
+#define KSZ8873_PORTx_CTRL_13		0x0d
+
+#define PORT_AUTO_NEG_RESTART		BIT(5)
+#define PORT_POWER_DOWN			BIT(3)
+
+#define KSZ8873_PORTx_STATUS_0		0x0e
+
+#define PORT_AUTO_NEG_COMPLETE		BIT(6)
+#define PORT_STAT_LINK_GOOD		BIT(5)
+#define PORT_REMOTE_100BTX_FD		BIT(3)
+#define PORT_REMOTE_100BTX		BIT(2)
+#define PORT_REMOTE_10BT_FD		BIT(1)
+#define PORT_REMOTE_10BT		BIT(0)
+
+#define KSZ8873_PORTx_STATUS_1		0x0f
+
+#define KSZ8795_ID_HI			0x0022
+#define KSZ8863_ID_LO			0x1430
+
+#define PORT_CTRL_ADDR(port, addr)	((addr) + 0x10 + (port) * 0x10)
+
+struct ksz8873_dcfg {
+	unsigned int num_ports;
+	unsigned int phy_port_cnt;
+};
+
+struct ksz8873_switch {
+	struct phy_device *mdiodev;
+	struct dsa_switch ds;
+	struct device_d *dev;
+	const struct ksz8873_dcfg *dcfg;
+	struct regmap *regmap;
+};
+
+/* Serial Management Interface (SMI) uses the following frame format:
+ *
+ *       preamble|start|Read/Write|  PHY   |  REG  |TA|   Data bits      | Idle
+ *               |frame| OP code  |address |address|  |                  |
+ * read | 32x1´s | 01  |    00    | 1xRRR  | RRRRR |Z0| 00000000DDDDDDDD |  Z
+ * write| 32x1´s | 01  |    00    | 0xRRR  | RRRRR |10| xxxxxxxxDDDDDDDD |  Z
+ *
+ */
+
+#define SMI_KSZ88XX_READ_PHY	BIT(4)
+
+static int ksz8873_mdio_read(void *ctx, unsigned int reg, unsigned int *val)
+{
+	struct ksz8873_switch *priv = ctx;
+	struct phy_device *mdiodev = priv->mdiodev;
+	int ret;
+
+	ret = mdiobus_read(mdiodev->bus, ((reg & 0xE0) >> 5) |
+			     SMI_KSZ88XX_READ_PHY, reg);
+	if (ret < 0)
+		return ret;
+
+	*val = ret;
+
+	return 0;
+}
+
+static ssize_t ksz8873_mdio_write(void *ctx, unsigned int reg, unsigned int val)
+{
+	struct ksz8873_switch *priv = ctx;
+	struct phy_device *mdiodev = priv->mdiodev;
+
+	return mdiobus_write(mdiodev->bus, ((reg & 0xE0) >> 5), reg, val);
+}
+
+static const struct regmap_bus ksz8873_regmap_smi = {
+	.reg_read = ksz8873_mdio_read,
+	.reg_write = ksz8873_mdio_write,
+};
+
+static const struct regmap_config ksz8873_regmap_config = {
+	.name = "#8",
+	.reg_bits = 8,
+	.pad_bits = 24,
+	.val_bits = 8,
+};
+
+static int ksz_read8(struct ksz8873_switch *priv, u32 reg, u8 *val)
+{
+	unsigned int value;
+	int ret = regmap_read(priv->regmap, reg, &value);
+
+	*val = value & 0xff;
+
+	return ret;
+}
+
+static int ksz_write8(struct ksz8873_switch *priv, u32 reg, u8 value)
+{
+	return regmap_write(priv->regmap, reg, value);
+}
+
+static int ksz_pread8(struct ksz8873_switch *priv, int port, int reg, u8 *val)
+{
+	return ksz_read8(priv, PORT_CTRL_ADDR(port, reg), val);
+}
+
+static int ksz_pwrite8(struct ksz8873_switch *priv, int port, int reg, u8 val)
+{
+	return ksz_write8(priv, PORT_CTRL_ADDR(port, reg), val);
+}
+
+static void ksz8_r_phy(struct ksz8873_switch *priv, u16 phy, u16 reg, u16 *val)
+{
+	u8 restart, ctrl, link;
+	int processed = true;
+	u16 data = 0;
+	u8 p = phy;
+
+	switch (reg) {
+	case MII_BMCR:
+		ksz_pread8(priv, p, KSZ8873_PORTx_CTRL_13, &restart);
+		ksz_pread8(priv, p, KSZ8873_PORTx_CTRL_12, &ctrl);
+		if (ctrl & PORT_FORCE_100_MBIT)
+			data |= BMCR_SPEED100;
+		if ((ctrl & PORT_AUTO_NEG_ENABLE))
+			data |= BMCR_ANENABLE;
+		if (restart & PORT_POWER_DOWN)
+			data |= BMCR_PDOWN;
+		if (restart & PORT_AUTO_NEG_RESTART)
+			data |= BMCR_ANRESTART;
+		if (ctrl & PORT_FORCE_FULL_DUPLEX)
+			data |= BMCR_FULLDPLX;
+		break;
+	case MII_BMSR:
+		ksz_pread8(priv, p, KSZ8873_PORTx_STATUS_0, &link);
+		data = BMSR_100FULL |
+		       BMSR_100HALF |
+		       BMSR_10FULL |
+		       BMSR_10HALF |
+		       BMSR_ANEGCAPABLE;
+		if (link & PORT_AUTO_NEG_COMPLETE)
+			data |= BMSR_ANEGCOMPLETE;
+		if (link & PORT_STAT_LINK_GOOD)
+			data |= BMSR_LSTATUS;
+		break;
+	case MII_PHYSID1:
+		data = KSZ8795_ID_HI;
+		break;
+	case MII_PHYSID2:
+		data = KSZ8863_ID_LO;
+		break;
+	case MII_ADVERTISE:
+		ksz_pread8(priv, p, KSZ8873_PORTx_CTRL_12, &ctrl);
+		data = ADVERTISE_CSMA;
+		if (ctrl & PORT_AUTO_NEG_100BTX_FD)
+			data |= ADVERTISE_100FULL;
+		if (ctrl & PORT_AUTO_NEG_100BTX)
+			data |= ADVERTISE_100HALF;
+		if (ctrl & PORT_AUTO_NEG_10BT_FD)
+			data |= ADVERTISE_10FULL;
+		if (ctrl & PORT_AUTO_NEG_10BT)
+			data |= ADVERTISE_10HALF;
+		break;
+	case MII_LPA:
+		ksz_pread8(priv, p, KSZ8873_PORTx_STATUS_0, &link);
+		data = LPA_SLCT;
+		if (link & PORT_REMOTE_100BTX_FD)
+			data |= LPA_100FULL;
+		if (link & PORT_REMOTE_100BTX)
+			data |= LPA_100HALF;
+		if (link & PORT_REMOTE_10BT_FD)
+			data |= LPA_10FULL;
+		if (link & PORT_REMOTE_10BT)
+			data |= LPA_10HALF;
+		if (data & ~LPA_SLCT)
+			data |= LPA_LPACK;
+		break;
+	default:
+		processed = false;
+		break;
+	}
+	if (processed)
+		*val = data;
+}
+
+static void ksz8_w_phy(struct ksz8873_switch *priv, u16 phy, u16 reg, u16 val)
+{
+	u8 restart, ctrl, data;
+	u8 p = phy;
+
+	switch (reg) {
+	case MII_BMCR:
+		ksz_pread8(priv, p, KSZ8873_PORTx_CTRL_12, &ctrl);
+		data = ctrl;
+		if ((val & BMCR_ANENABLE))
+			data |= PORT_AUTO_NEG_ENABLE;
+		else
+			data &= ~PORT_AUTO_NEG_ENABLE;
+
+		if (val & BMCR_SPEED100)
+			data |= PORT_FORCE_100_MBIT;
+		else
+			data &= ~PORT_FORCE_100_MBIT;
+		if (val & BMCR_FULLDPLX)
+			data |= PORT_FORCE_FULL_DUPLEX;
+		else
+			data &= ~PORT_FORCE_FULL_DUPLEX;
+		if (data != ctrl)
+			ksz_pwrite8(priv, p, KSZ8873_PORTx_CTRL_12, data);
+		ksz_pread8(priv, p, KSZ8873_PORTx_CTRL_13, &restart);
+		data = restart;
+		if (val & BMCR_ANRESTART)
+			data |= PORT_AUTO_NEG_RESTART;
+		else
+			data &= ~(PORT_AUTO_NEG_RESTART);
+		if (val & BMCR_PDOWN)
+			data |= PORT_POWER_DOWN;
+		else
+			data &= ~PORT_POWER_DOWN;
+		if (data != restart)
+			ksz_pwrite8(priv, p, KSZ8873_PORTx_CTRL_13, data);
+		break;
+	case MII_ADVERTISE:
+		ksz_pread8(priv, p, KSZ8873_PORTx_CTRL_12, &ctrl);
+		data = ctrl;
+		data &= ~(PORT_AUTO_NEG_100BTX_FD |
+			  PORT_AUTO_NEG_100BTX |
+			  PORT_AUTO_NEG_10BT_FD |
+			  PORT_AUTO_NEG_10BT);
+		if (val & ADVERTISE_100FULL)
+			data |= PORT_AUTO_NEG_100BTX_FD;
+		if (val & ADVERTISE_100HALF)
+			data |= PORT_AUTO_NEG_100BTX;
+		if (val & ADVERTISE_10FULL)
+			data |= PORT_AUTO_NEG_10BT_FD;
+		if (val & ADVERTISE_10HALF)
+			data |= PORT_AUTO_NEG_10BT;
+		if (data != ctrl)
+			ksz_pwrite8(priv, p, KSZ8873_PORTx_CTRL_12, data);
+		break;
+	default:
+		break;
+	}
+}
+
+static int ksz8873_phy_read16(struct dsa_switch *ds, int addr, int reg)
+{
+	struct device_d *dev = ds->dev;
+	struct ksz8873_switch *priv = dev_get_priv(dev);
+	u16 val = 0xffff;
+
+	if (addr >= priv->dcfg->phy_port_cnt)
+		return val;
+
+	ksz8_r_phy(priv, addr, reg, &val);
+
+	return val;
+}
+
+static int ksz8873_phy_write16(struct dsa_switch *ds, int addr, int reg,
+			       u16 val)
+{
+	struct device_d *dev = ds->dev;
+	struct ksz8873_switch *priv = dev_get_priv(dev);
+
+	/* No real PHY after this. */
+	if (addr >= priv->dcfg->phy_port_cnt)
+		return 0;
+
+	ksz8_w_phy(priv, addr, reg, val);
+
+	return 0;
+}
+
+static void ksz8873_cfg_port_member(struct ksz8873_switch *priv, int port,
+				    u8 member)
+{
+	ksz_pwrite8(priv, port, KSZ8873_PORTx_CTRL_1, member);
+}
+
+static int ksz8873_port_enable(struct dsa_port *dp, int port,
+			   struct phy_device *phy)
+{
+	return 0;
+}
+
+static int ksz8873_xmit(struct dsa_port *dp, int port, void *packet, int length)
+{
+	u8 *tag = packet + length - dp->ds->needed_tx_tailroom;
+
+	*tag = BIT(dp->index);
+
+	return 0;
+}
+
+static int ksz8873_recv(struct dsa_switch *ds, int *port, void *packet,
+			int length)
+{
+	u8 *tag = packet + length - ds->needed_rx_tailroom;
+
+	*port = *tag & 7;
+
+	return 0;
+};
+
+static const struct dsa_ops ksz8873_dsa_ops = {
+	.port_enable = ksz8873_port_enable,
+	.xmit = ksz8873_xmit,
+	.rcv = ksz8873_recv,
+	.phy_read = ksz8873_phy_read16,
+	.phy_write = ksz8873_phy_write16,
+};
+
+static int ksz8873_default_setup(struct ksz8873_switch *priv)
+{
+	int i;
+
+	ksz_write8(priv, KSZ8873_GLOBAL_CTRL_1, KSZ8873_PASS_ALL_FRAMES |
+		   KSZ8873_P3_TAIL_TAG_EN);
+
+	for (i = 0; i < priv->ds.num_ports; i++) {
+		u8 member;
+		/* isolate all ports by default */
+		member = BIT(priv->ds.cpu_port);
+		ksz8873_cfg_port_member(priv, i, member);
+
+		member = dsa_user_ports(&priv->ds);
+		ksz8873_cfg_port_member(priv, priv->ds.cpu_port, member);
+	}
+
+	return 0;
+}
+
+static int ksz8873_probe_mdio(struct phy_device *mdiodev)
+{
+	struct device_d *dev = &mdiodev->dev;
+	const struct ksz8873_dcfg *dcfg;
+	struct ksz8873_switch *priv;
+	struct dsa_switch *ds;
+	int ret, gpio;
+
+	priv = xzalloc(sizeof(*priv));
+
+	dcfg = of_device_get_match_data(dev);
+	if (!dcfg)
+		return -EINVAL;
+
+	dev->priv = priv;
+	priv->dev = dev;
+	priv->dcfg = dcfg;
+	priv->mdiodev = mdiodev;
+
+	priv->regmap = regmap_init(dev, &ksz8873_regmap_smi, priv,
+				   &ksz8873_regmap_config);
+	if (IS_ERR(priv->regmap))
+		return dev_err_probe(dev, PTR_ERR(priv->regmap),
+				     "Failed to initialize regmap.\n");
+
+	gpio = gpiod_get(dev, "reset", GPIOF_OUT_INIT_ACTIVE);
+	if (gpio_is_valid(gpio)) {
+		mdelay(1);
+		gpio_set_active(gpio, false);
+	}
+
+	ds = &priv->ds;
+	ds->dev = dev;
+	ds->num_ports = dcfg->num_ports;
+	ds->ops = &ksz8873_dsa_ops;
+	ds->needed_rx_tailroom = 1;
+	ds->needed_tx_tailroom = 1;
+	ds->phys_mii_mask = 0x3;
+
+	ret = dsa_register_switch(ds);
+	if (ret)
+		return ret;
+
+	ksz8873_default_setup(priv);
+
+	return 0;
+}
+
+static const struct ksz8873_dcfg ksz8873_dcfg = {
+	.num_ports = 3,
+	.phy_port_cnt = 2,
+};
+
+static const struct of_device_id ksz8873_dt_ids[] = {
+	{ .compatible = "microchip,ksz8873", .data = &ksz8873_dcfg },
+	{ }
+};
+
+static struct phy_driver ksz8873_driver_mdio = {
+	.drv = {
+		.name = "KSZ8873 MDIO",
+		.of_compatible = DRV_OF_COMPAT(ksz8873_dt_ids),
+	},
+	.probe = ksz8873_probe_mdio,
+};
+device_mdio_driver(ksz8873_driver_mdio);
-- 
2.30.2



