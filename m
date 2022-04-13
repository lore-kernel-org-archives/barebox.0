Delivery-date: Wed, 13 Apr 2022 10:24:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1neYIp-000W6G-TD
	for lore@lore.pengutronix.de; Wed, 13 Apr 2022 10:24:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1neYIm-0002VW-0I
	for lore@pengutronix.de; Wed, 13 Apr 2022 10:24:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wfx3VhlpV6tRVexLRC6jLHqRkrlmPLYxE1JyM0OJLXQ=; b=l9QtKqeFxtRVq0
	D1minieGoN2ulw8nV7RRJp3rPLDSRA+N7WuLQKmFE+J0Aponk3BzHaNv6d7zufZko2p+0gFnXOD+h
	cJ7VAWL7cYxWxy1EHQr7JV/WsyLnOjO9TLxgYglg14tyZ4CDBA29mnjJ9M2rqc3wyRSTLDtc3/mOe
	fvUv69q2TQREqlUJLXXeUOgWrZrfzkU3mxfGMDhiC9aSl2FA8gbQLbU0s0+ycorIWjxIYfDUlxien
	I93uapyBlXvYWHOuldtRbkS6FqHl7bahxzMUAicdPsndF+yNrGYFeVgckYntrShLfGFHC+VuGeT46
	KnspZjCxRFdCVO4BGodg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neYHH-0000zc-MI; Wed, 13 Apr 2022 08:23:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neYGS-0000Tl-O7
 for barebox@lists.infradead.org; Wed, 13 Apr 2022 08:22:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1neYGP-0001an-M6; Wed, 13 Apr 2022 10:22:09 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1neYGQ-002kDE-Bs; Wed, 13 Apr 2022 10:22:08 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1neYGM-001nkp-Dz; Wed, 13 Apr 2022 10:22:06 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed, 13 Apr 2022 10:21:55 +0200
Message-Id: <20220413082205.429509-5-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220413082205.429509-1-o.rempel@pengutronix.de>
References: <20220413082205.429509-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_012213_124684_D8F3AF8C 
X-CRM114-Status: GOOD (  26.44  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v5 04/14] net: add DSA framework to support basic switch
 functionality
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add DSA based port multiplexing functionality for barebox. With this
framework we will be able to use different ports of as switch
separately.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/net/Kconfig  |   8 +
 drivers/net/Makefile |   1 +
 drivers/net/dsa.c    | 444 +++++++++++++++++++++++++++++++++++++++++++
 include/dsa.h        |  90 +++++++++
 4 files changed, 543 insertions(+)
 create mode 100644 drivers/net/dsa.c
 create mode 100644 include/dsa.h

diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index 65c93bbe84..4a72136b7f 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -300,5 +300,13 @@ config DRIVER_NET_LITEETH
 source "drivers/net/phy/Kconfig"
 source "drivers/net/usb/Kconfig"
 
+menuconfig DSA
+	bool "Distributed Switch Architecture (DSA)"
+	select PHYLIB
+
+if DSA
+
+endif
+
 endmenu
 
diff --git a/drivers/net/Makefile b/drivers/net/Makefile
index 40045bab04..406e13f1a0 100644
--- a/drivers/net/Makefile
+++ b/drivers/net/Makefile
@@ -1,4 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0-only
+obj-$(CONFIG_DSA)			+= dsa.o
 obj-$(CONFIG_PHYLIB)			+= phy/
 obj-$(CONFIG_NET_USB)			+= usb/
 
diff --git a/drivers/net/dsa.c b/drivers/net/dsa.c
new file mode 100644
index 0000000000..f2420d306f
--- /dev/null
+++ b/drivers/net/dsa.c
@@ -0,0 +1,444 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <common.h>
+#include <dma.h>
+#include <dsa.h>
+#include <of_net.h>
+
+u32 dsa_user_ports(struct dsa_switch *ds)
+{
+	u32 mask = 0;
+	int i;
+
+	for (i = 0; i < ds->num_ports; i++) {
+		if (ds->dp[i])
+			mask |= BIT(ds->dp[i]->index);
+	}
+
+	return mask;
+}
+
+static int dsa_slave_phy_read(struct mii_bus *bus, int addr, int reg)
+{
+	struct dsa_switch *ds = bus->priv;
+
+	if (ds->phys_mii_mask & BIT(addr))
+		return ds->ops->phy_read(ds, addr, reg);
+
+	return 0xffff;
+}
+
+static int dsa_slave_phy_write(struct mii_bus *bus, int addr, int reg, u16 val)
+{
+	struct dsa_switch *ds = bus->priv;
+
+	if (ds->phys_mii_mask & BIT(addr))
+		return ds->ops->phy_write(ds, addr, reg, val);
+
+	return 0;
+}
+
+static int dsa_slave_mii_bus_init(struct dsa_switch *ds)
+{
+	ds->slave_mii_bus = xzalloc(sizeof(*ds->slave_mii_bus));
+	ds->slave_mii_bus->priv = (void *)ds;
+	ds->slave_mii_bus->read = dsa_slave_phy_read;
+	ds->slave_mii_bus->write = dsa_slave_phy_write;
+	ds->slave_mii_bus->parent = ds->dev;
+	ds->slave_mii_bus->phy_mask = ~ds->phys_mii_mask;
+
+	return mdiobus_register(ds->slave_mii_bus);
+}
+
+static int dsa_port_probe(struct eth_device *edev)
+{
+	struct dsa_port *dp = edev->priv;
+	struct dsa_switch *ds = dp->ds;
+	const struct dsa_ops *ops = ds->ops;
+	phy_interface_t interface;
+	int ret;
+
+	if (ops->port_probe) {
+		interface = of_get_phy_mode(dp->dev.device_node);
+		ret = ops->port_probe(dp, dp->index, interface);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
+static void dsa_port_set_ethaddr(struct eth_device *edev)
+{
+	struct dsa_port *dp = edev->priv;
+	struct dsa_switch *ds = dp->ds;
+
+	if (is_valid_ether_addr(edev->ethaddr))
+		return;
+
+	if (!is_valid_ether_addr(ds->edev_master->ethaddr))
+		return;
+
+	eth_set_ethaddr(edev, ds->edev_master->ethaddr);
+}
+
+static int dsa_port_start(struct eth_device *edev)
+{
+	struct dsa_port *dp = edev->priv;
+	struct dsa_switch *ds = dp->ds;
+	const struct dsa_ops *ops = ds->ops;
+	phy_interface_t interface;
+	int ret;
+
+	if (dp->enabled)
+		return -EBUSY;
+
+	interface = of_get_phy_mode(dp->dev.device_node);
+
+	if (ops->port_pre_enable) {
+		/* In case of RMII interface we need to enable RMII clock
+		 * before talking to the PHY.
+		 */
+		ret = ops->port_pre_enable(dp, dp->index, interface);
+		if (ret)
+			return ret;
+	}
+
+	ret = phy_device_connect(edev, ds->slave_mii_bus, dp->index, NULL, 0,
+				 interface);
+	if (ret)
+		return ret;
+
+	dsa_port_set_ethaddr(edev);
+
+	if (ops->port_enable) {
+		ret = ops->port_enable(dp, dp->index, dp->edev.phydev);
+		if (ret)
+			return ret;
+	}
+
+	dp->enabled = true;
+
+	if (!ds->cpu_port_users) {
+		struct dsa_port *dpc = ds->dp[ds->cpu_port];
+
+		if (ops->port_enable) {
+			ret = ops->port_enable(dpc, ds->cpu_port,
+					       ds->cpu_port_fixed_phy);
+			if (ret)
+				return ret;
+		}
+
+		eth_open(ds->edev_master);
+	}
+
+	ds->cpu_port_users++;
+
+	return 0;
+}
+
+/* Stop the desired port, the CPU port and the master Eth interface */
+static void dsa_port_stop(struct eth_device *edev)
+{
+	struct dsa_port *dp = edev->priv;
+	struct dsa_switch *ds = dp->ds;
+	const struct dsa_ops *ops = ds->ops;
+
+	if (!dp->enabled)
+		return;
+
+	if (ops->port_disable)
+		ops->port_disable(dp, dp->index, dp->edev.phydev);
+
+	dp->enabled = false;
+	ds->cpu_port_users--;
+
+	if (!ds->cpu_port_users) {
+		struct dsa_port *dpc = ds->dp[ds->cpu_port];
+
+		if (ops->port_disable)
+			ops->port_disable(dpc, ds->cpu_port,
+					ds->cpu_port_fixed_phy);
+
+		eth_close(ds->edev_master);
+	}
+}
+
+static int dsa_port_send(struct eth_device *edev, void *packet, int length)
+{
+	struct dsa_port *dp = edev->priv;
+	struct dsa_switch *ds = dp->ds;
+	const struct dsa_ops *ops = ds->ops;
+	void *tx_buf = ds->tx_buf;
+	size_t full_length, stuff = 0;
+	int ret;
+
+	if (length < 64)
+		stuff = 64 - length;
+
+	full_length = length + ds->needed_headroom + ds->needed_tx_tailroom +
+		      stuff;
+
+	if (full_length > DSA_PKTSIZE)
+		return -ENOMEM;
+
+	memset(tx_buf + full_length - stuff, 0, stuff);
+	memcpy(tx_buf + ds->needed_headroom, packet, length);
+	ret = ops->xmit(dp, dp->index, tx_buf, full_length);
+	if (ret)
+		return ret;
+
+	return eth_send_raw(ds->edev_master, tx_buf, full_length);
+}
+
+static int dsa_port_recv(struct eth_device *edev)
+{
+	struct dsa_port *dp = edev->priv;
+	int length;
+
+	if (!dp->rx_buf_length)
+		return 0;
+
+	net_receive(edev, dp->rx_buf, dp->rx_buf_length);
+	length = dp->rx_buf_length;
+	dp->rx_buf_length = 0;
+
+	return length;
+}
+
+static int dsa_ether_set_ethaddr(struct eth_device *edev,
+				 const unsigned char *adr)
+{
+	struct dsa_port *dp = edev->priv;
+	struct dsa_switch *ds = dp->ds;
+	struct eth_device *edev_master;
+
+	edev_master = ds->edev_master;
+
+	return edev_master->set_ethaddr(edev_master, adr);
+}
+
+static int dsa_ether_get_ethaddr(struct eth_device *edev, unsigned char *adr)
+{
+	struct dsa_port *dp = edev->priv;
+	struct dsa_switch *ds = dp->ds;
+	struct eth_device *edev_master;
+
+	edev_master = ds->edev_master;
+
+	return edev_master->get_ethaddr(edev_master, adr);
+}
+
+static int dsa_switch_register_edev(struct dsa_switch *ds,
+				    struct device_node *dn, int port)
+{
+	struct eth_device *edev;
+	struct device_d *dev;
+	struct dsa_port *dp;
+	int ret;
+
+	ds->dp[port] = xzalloc(sizeof(*dp));
+
+	dp = ds->dp[port];
+	dev = &dp->dev;
+
+	dev_set_name(dev, "dsa_port");
+	dev->id = DEVICE_ID_DYNAMIC;
+	dev->parent = ds->dev;
+	dev->device_node = dn;
+
+	ret = register_device(dev);
+	if (ret)
+		return ret;
+
+	dp->rx_buf = xmalloc(DSA_PKTSIZE);
+	dp->ds = ds;
+	dp->index = port;
+
+	edev = &dp->edev;
+	edev->priv = dp;
+	edev->parent = dev;
+	edev->init = dsa_port_probe;
+	edev->open = dsa_port_start;
+	edev->send = dsa_port_send;
+	edev->recv = dsa_port_recv;
+	edev->halt = dsa_port_stop;
+	edev->get_ethaddr = dsa_ether_get_ethaddr;
+	edev->set_ethaddr = dsa_ether_set_ethaddr;
+
+	return eth_register(edev);
+}
+
+static int dsa_rx_preprocessor(struct eth_device *edev, unsigned char **packet,
+			       int *length)
+{
+	struct dsa_switch *ds = edev->rx_preprocessor_priv;
+	const struct dsa_ops *ops = ds->ops;
+	struct dsa_port *dp;
+	int ret, port;
+
+	ret = ops->rcv(ds, &port, *packet, *length);
+	if (ret)
+		return ret;
+
+	*length -= ds->needed_headroom;
+	*packet += ds->needed_headroom;
+	*length -= ds->needed_rx_tailroom;
+
+	if (port > DSA_MAX_PORTS)
+		return -ERANGE;
+
+	dp = ds->dp[port];
+	if (!dp)
+		return 0;
+
+	if (*length > DSA_PKTSIZE)
+		return -ENOMEM;
+
+	if (dp->rx_buf_length)
+		return -EIO;
+
+	memcpy(dp->rx_buf, *packet, *length);
+	dp->rx_buf_length = *length;
+
+	return -ENOMSG;
+}
+
+static int dsa_switch_register_master(struct dsa_switch *ds,
+				      struct device_node *np,
+				      struct device_node *master, int port)
+{
+	struct device_node *phy_node;
+	struct phy_device *phydev;
+	struct dsa_port *dp;
+	int ret;
+
+	if (ds->edev_master) {
+		dev_err(ds->dev, "master was already registered!\n");
+		return -EINVAL;
+	}
+
+	ds->edev_master = of_find_eth_device_by_node(master);
+	if (!ds->edev_master) {
+		dev_err(ds->dev, "can't find ethernet master device\n");
+		return -ENODEV;
+	}
+
+	ds->edev_master->rx_preprocessor = dsa_rx_preprocessor;
+	ds->edev_master->rx_preprocessor_priv = ds;
+
+	ret = dev_set_param(&ds->edev_master->dev, "mode", "disabled");
+	if (ret)
+		dev_warn(ds->dev, "Can't set disable master Ethernet device\n");
+
+	phy_node = of_get_child_by_name(np, "fixed-link");
+	if (!phy_node)
+		return -ENODEV;
+
+	phydev = of_phy_register_fixed_link(phy_node, ds->edev_master);
+	if (!phydev)
+		return -ENODEV;
+
+	phydev->interface = of_get_phy_mode(np);
+
+	ds->dp[port] = xzalloc(sizeof(*dp));
+	dp = ds->dp[port];
+	dp->ds = ds;
+
+	ds->cpu_port = port;
+	ds->cpu_port_fixed_phy = phydev;
+
+	return 0;
+}
+
+static int dsa_switch_parse_ports_of(struct dsa_switch *ds,
+				     struct device_node *dn)
+{
+	struct device_node *ports, *port;
+	int ret = 0;
+	u32 reg;
+
+	ports = of_get_child_by_name(dn, "ports");
+	if (!ports) {
+		/* The second possibility is "ethernet-ports" */
+		ports = of_get_child_by_name(dn, "ethernet-ports");
+		if (!ports) {
+			dev_err(ds->dev, "no ports child node found\n");
+			return -EINVAL;
+		}
+	}
+
+	/* At first step, find and register master/CPU interface */
+	for_each_available_child_of_node(ports, port) {
+		struct device_node *master;
+
+		ret = of_property_read_u32(port, "reg", &reg);
+		if (ret) {
+			dev_err(ds->dev, "No or too many ports are configured\n");
+			goto out_put_node;
+		}
+
+		if (reg >= ds->num_ports) {
+			dev_err(ds->dev, "port %pOF index %u exceeds num_ports (%u)\n",
+				port, reg, ds->num_ports);
+			ret = -EINVAL;
+			goto out_put_node;
+		}
+
+		master = of_parse_phandle(port, "ethernet", 0);
+		if (master)
+			dsa_switch_register_master(ds, port, master, reg);
+	}
+
+	/* Now we can register regular switch ports  */
+	for_each_available_child_of_node(ports, port) {
+		of_property_read_u32(port, "reg", &reg);
+
+		if (of_parse_phandle(port, "ethernet", 0))
+			continue;
+
+		ret = dsa_switch_register_edev(ds, port, reg);
+		if (ret) {
+			dev_err(ds->dev, "Can't create edev for port %i\n",
+				reg);
+			return ret;
+		}
+	}
+
+out_put_node:
+	return ret;
+}
+
+int dsa_register_switch(struct dsa_switch *ds)
+{
+	int ret;
+
+	if (!ds->dev) {
+		pr_err("No dev is set\n");
+		return -ENODEV;
+	}
+
+	if (!ds->dev->device_node)
+		return -ENODEV;
+
+	if (!ds->num_ports || ds->num_ports > DSA_MAX_PORTS) {
+		dev_err(ds->dev, "No or too many ports are configured\n");
+		return -EINVAL;
+	}
+
+	ret = dsa_switch_parse_ports_of(ds, ds->dev->device_node);
+	if (ret)
+		return ret;
+
+	if (!ds->slave_mii_bus && ds->ops->phy_read) {
+		ret = dsa_slave_mii_bus_init(ds);
+		if (ret)
+			return ret;
+	}
+
+	ds->tx_buf = dma_alloc(DSA_PKTSIZE);
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(dsa_register_switch);
+
diff --git a/include/dsa.h b/include/dsa.h
new file mode 100644
index 0000000000..75a939f2cb
--- /dev/null
+++ b/include/dsa.h
@@ -0,0 +1,90 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/*
+ * Copyright 2019-2021 NXP
+ */
+
+#ifndef __DSA_H__
+#define __DSA_H__
+
+#include <linux/phy.h>
+#include <net.h>
+
+/**
+ * DSA stands for Distributed Switch Architecture and it is infrastructure
+ * intended to support drivers for Switches that rely on an intermediary
+ * Ethernet device for I/O.  These switches may support cascading allowing
+ * them to be arranged as a tree.
+ * DSA is documented in detail in the Linux kernel documentation under
+ * Documentation/networking/dsa/dsa.txt
+ * The network layout of such a switch is shown below:
+ *
+ *                      |------|
+ *                      | eth0 | <--- master eth device (regular eth driver)
+ *                      |------|
+ *                        ^  |
+ * tag added by switch -->|  |
+ *                        |  |
+ *                        |  |<-- tag added by DSA driver
+ *                        |  v
+ *      |--------------------------------------|
+ *      |             | CPU port |             | <-- DSA (switch) device
+ *      |             ------------             |     (DSA driver)
+ *      | _________  _________       _________ |
+ *      | | port0 |  | port1 |  ...  | portn | | <-- ports as eth devices
+ *      |-+-------+--+-------+-------+-------+-|     ('dsa-port' eth driver)
+ *
+ */
+
+#define DSA_MAX_PORTS		12
+#define DSA_PKTSIZE		1538
+
+struct dsa_port;
+struct dsa_switch;
+
+struct dsa_ops {
+	int (*port_probe)(struct dsa_port *dp, int port,
+			  phy_interface_t phy_mode);
+	int (*port_pre_enable)(struct dsa_port *dp, int port,
+			       phy_interface_t phy_mode);
+	int (*port_enable)(struct dsa_port *dp, int port,
+			   struct phy_device *phy);
+	void (*port_disable)(struct dsa_port *dp, int port,
+			     struct phy_device *phy);
+	int (*xmit)(struct dsa_port *dp, int port, void *packet, int length);
+	int (*rcv)(struct dsa_switch *ds, int *portp, void *packet, int length);
+
+	int (*phy_read)(struct dsa_switch *ds, int port, int regnum);
+	int (*phy_write)(struct dsa_switch *ds, int port, int regnum, u16 val);
+};
+
+struct dsa_port {
+	struct device_d dev;
+	struct dsa_switch *ds;
+	unsigned int index;
+	struct eth_device edev;
+	unsigned char *rx_buf;
+	size_t rx_buf_length;
+	bool enabled;
+};
+
+struct dsa_switch {
+	struct device_d *dev;
+	const struct dsa_ops *ops;
+	size_t num_ports;
+	u32 cpu_port;
+	int cpu_port_users;
+	struct eth_device *edev_master;
+	struct phy_device *cpu_port_fixed_phy;
+	struct dsa_port *dp[DSA_MAX_PORTS];
+	size_t needed_headroom;
+	size_t needed_rx_tailroom;
+	size_t needed_tx_tailroom;
+	void *tx_buf;
+	struct mii_bus *slave_mii_bus;
+	u32 phys_mii_mask;
+};
+
+int dsa_register_switch(struct dsa_switch *ds);
+u32 dsa_user_ports(struct dsa_switch *ds);
+
+#endif /* __DSA_H__ */
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

