Delivery-date: Mon, 28 Mar 2022 12:33:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nYmgX-008thK-FO
	for lore@lore.pengutronix.de; Mon, 28 Mar 2022 12:33:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nYmgY-0004qT-VE
	for lore@pengutronix.de; Mon, 28 Mar 2022 12:33:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hK1T+kzWq/6wRaQe2rT97AgS5WEvngC3/kpmlAOESZo=; b=4/7SHhgBIN/JbGo12p4kiY/rnP
	NOTBTimN82jtDgl7csEu4CqWzjG5aPeAOwk5bEW0ypFdYXC4WBtB/zPBNAy9PCJV7YOljNtXd9M/9
	aWmDPVTNhHGpXmJSDMl23/pEpbpIi2cW5k4tutoAnjPooJRPTwXm1R7SH+NZLEUxAEIBXCWPi710v
	DMyeBpHtNO/4h5XGGWhZqiYkqhb1Kp1LMvesW8ydeIiiC+ze+x4cJrPANY4vkw35gthkA73lA7OS+
	RLvNUTgV+Gcso5PJTdMuClE2Ou/XkUE7/J7GmhZUiG0NQOUjDowNbYk7ine1SrGkfFXiGKNwZSO9q
	oS/sAeUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nYmf4-008C8K-NL; Mon, 28 Mar 2022 10:31:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nYmey-008C7l-W6
 for barebox@lists.infradead.org; Mon, 28 Mar 2022 10:31:43 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nYmex-0004gT-IR; Mon, 28 Mar 2022 12:31:39 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nYmex-0005Kf-9H; Mon, 28 Mar 2022 12:31:39 +0200
Date: Mon, 28 Mar 2022 12:31:39 +0200
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220328103139.GT12181@pengutronix.de>
References: <20220321092606.1459834-1-o.rempel@pengutronix.de>
 <20220321092606.1459834-4-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220321092606.1459834-4-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 12:17:33 up 107 days, 19:03, 90 users,  load average: 0.23, 0.17,
 0.21
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220328_033141_392368_0114A533 
X-CRM114-Status: GOOD (  40.95  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v1 3/9] net: add DSA framework to support basic switch
 functionality
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Mar 21, 2022 at 10:26:00AM +0100, Oleksij Rempel wrote:
> Add DSA based port multiplexing functionality for barebox. With this
> framework we will be able to use different ports of as switch
> separately.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  drivers/net/Kconfig  |   3 +
>  drivers/net/Makefile |   1 +
>  drivers/net/dsa.c    | 385 +++++++++++++++++++++++++++++++++++++++++++
>  include/dsa.h        |  94 +++++++++++
>  4 files changed, 483 insertions(+)
>  create mode 100644 drivers/net/dsa.c
>  create mode 100644 include/dsa.h
> 
> diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
> index b583299a44..419f8c515d 100644
> --- a/drivers/net/Kconfig
> +++ b/drivers/net/Kconfig
> @@ -17,6 +17,9 @@ config HAS_MACB
>  config PHYLIB
>  	bool
>  
> +config DSA
> +	bool
> +
>  menu "Network drivers"
>  	depends on NET
>  
> diff --git a/drivers/net/Makefile b/drivers/net/Makefile
> index 563dfdfd9e..ef3513a6b0 100644
> --- a/drivers/net/Makefile
> +++ b/drivers/net/Makefile
> @@ -1,4 +1,5 @@
>  # SPDX-License-Identifier: GPL-2.0-only
> +obj-$(CONFIG_DSA)			+= dsa.o
>  obj-$(CONFIG_PHYLIB)			+= phy/
>  obj-$(CONFIG_NET_USB)			+= usb/
>  
> diff --git a/drivers/net/dsa.c b/drivers/net/dsa.c
> new file mode 100644
> index 0000000000..a9e3563b9b
> --- /dev/null
> +++ b/drivers/net/dsa.c
> @@ -0,0 +1,385 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +
> +#include <common.h>
> +#include <dma.h>
> +#include <dsa.h>
> +#include <of_net.h>
> +
> +static int dsa_port_probe(struct eth_device *edev)
> +{
> +	struct dsa_port *dp = edev->priv;
> +	struct dsa_switch *ds = dp->ds;
> +	const struct dsa_ops *ops = ds->ops;
> +	phy_interface_t interface;
> +	int ret;
> +
> +	interface = of_get_phy_mode(dp->dev.device_node);
> +	ret = phy_device_connect(edev, NULL, 0, NULL, 0, interface);
> +	if (ret)
> +		return ret;
> +
> +	if (ops->port_probe) {
> +		ret = ops->port_probe(dp, dp->index, dp->edev.phydev);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	return 0;
> +}
> +
> +static void dsa_port_set_ethaddr(struct eth_device *edev)
> +{
> +	struct dsa_port *dp = edev->priv;
> +	struct dsa_switch *ds = dp->ds;
> +
> +	if (is_valid_ether_addr(edev->ethaddr))
> +		return;
> +
> +	if (!is_valid_ether_addr(ds->edev_master->ethaddr))
> +		return;
> +
> +	eth_set_ethaddr(edev, ds->edev_master->ethaddr);

You are setting a ports MAC address here. Shouldn't this be different
from the master MAC address?

> +}
> +
> +static int dsa_port_start(struct eth_device *edev)
> +{
> +	struct dsa_port *dp = edev->priv;
> +	struct dsa_switch *ds = dp->ds;
> +	const struct dsa_ops *ops = ds->ops;
> +	int ret;
> +
> +	if (!dp->edev.phydev)
> +		return -ENODEV;
> +
> +	dsa_port_set_ethaddr(edev);
> +
> +	ret = phy_wait_aneg_done(dp->edev.phydev);
> +	if (ret)
> +		return ret;
> +
> +	if (ops->port_enable) {
> +		ret = ops->port_enable(dp, dp->index, dp->edev.phydev);
> +		if (ret)
> +			return ret;
> +
> +	}
> +
> +	if (!ds->cpu_port_active) {
> +		struct dsa_port *dpc = ds->dp[ds->cpu_port];
> +		ret = ops->port_enable(dpc, ds->cpu_port,
> +				       ds->cpu_port_fixed_phy);

Is ops->port_enable optional or not?

> +		if (ret)
> +			return ret;
> +		eth_open(ds->edev_master);
> +		ds->cpu_port_active = true;
> +	}
> +
> +	return 0;
> +}
> +
> +/* Stop the desired port, the CPU port and the master Eth interface */
> +static void dsa_port_stop(struct eth_device *edev)
> +{
> +	struct dsa_port *dp = edev->priv;
> +	struct dsa_switch *ds = dp->ds;
> +	const struct dsa_ops *ops = ds->ops;
> +
> +	if (ops->port_disable)
> +		ops->port_disable(dp, dp->index, dp->edev.phydev);

This suggests ops->port_disable is optional...

> +
> +
> +	if (ds->cpu_port_active) {
> +		struct dsa_port *dpc = ds->dp[ds->cpu_port];
> +		ops->port_disable(dpc, ds->cpu_port, ds->cpu_port_fixed_phy);

... but it's called unconditionally here.

> +		eth_close(ds->edev_master);

This function stops a single port. Is it correct to call eth_close on
the master device here? What if other ports are still active?

> +		ds->cpu_port_active = false;
> +	}
> +}
> +
> +static int dsa_port_send(struct eth_device *edev, void *packet, int length)
> +{
> +	struct dsa_port *dp = edev->priv;
> +	struct dsa_switch *ds = dp->ds;
> +	struct eth_device *edev_master;
> +	const struct dsa_ops *ops = ds->ops;
> +	void *tx_buf = ds->tx_buf;
> +	size_t full_length;
> +	int ret;
> +
> +	full_length = length + ds->needed_headroom;
> +
> +	if (full_length > DSA_PKTSIZE)
> +		return -ENOMEM;
> +
> +	memcpy(tx_buf + ds->needed_headroom, packet, length);
> +	ret = ops->xmit(dp, dp->index, tx_buf, full_length);
> +	if (ret)
> +		return ret;
> +
> +	edev_master = ds->edev_master;
> +
> +	return edev_master->send(edev_master, tx_buf, full_length);
> +}
> +
> +static int dsa_port_recv(struct eth_device *edev)
> +{
> +	struct dsa_port *dp = edev->priv;
> +	int length;
> +
> +	if (!dp->rx_buf_length)
> +		return 0;
> +
> +	net_receive(edev, dp->rx_buf, dp->rx_buf_length);
> +	length = dp->rx_buf_length;
> +	dp->rx_buf_length = 0;
> +
> +	return length;
> +}
> +
> +static int dsa_ether_set_ethaddr(struct eth_device *edev,
> +				 const unsigned char *adr)
> +{
> +	struct dsa_port *dp = edev->priv;
> +	struct dsa_switch *ds = dp->ds;
> +	struct eth_device *edev_master;
> +
> +	edev_master = ds->edev_master;
> +
> +	return edev_master->set_ethaddr(edev_master, adr);
> +}
> +
> +static int dsa_ether_get_ethaddr(struct eth_device *edev, unsigned char *adr)
> +{
> +	struct dsa_port *dp = edev->priv;
> +	struct dsa_switch *ds = dp->ds;
> +	struct eth_device *edev_master;
> +
> +	edev_master = ds->edev_master;
> +
> +	return edev_master->get_ethaddr(edev_master, adr);
> +}
> +
> +static int dsa_switch_regiser_edev(struct dsa_switch *ds,
> +				   struct device_node *dn, int port)

s/regiser/register/

> +{
> +	struct eth_device *edev;
> +	struct device_d *dev;
> +	struct dsa_port *dp;
> +	int ret;
> +
> +	ds->dp[port] = xzalloc(sizeof(*dp));
> +
> +	dp = ds->dp[port];
> +	dev = &dp->dev;
> +
> +	dev_set_name(dev, "dsa_port");
> +	dev->id = DEVICE_ID_DYNAMIC;
> +	dev->parent = ds->dev;
> +	dev->device_node = dn;
> +
> +	ret = register_device(dev);
> +	if (ret)
> +		return ret;
> +
> +	dp->rx_buf = xmalloc(DSA_PKTSIZE);
> +	dp->ds = ds;
> +	dp->index = port;
> +
> +	edev = &dp->edev;
> +	edev->priv = dp;
> +	edev->parent = dev;
> +	edev->init = dsa_port_probe;
> +	edev->open = dsa_port_start;
> +	edev->send = dsa_port_send;
> +	edev->recv = dsa_port_recv;
> +	edev->halt = dsa_port_stop;
> +	edev->get_ethaddr = dsa_ether_get_ethaddr;
> +	edev->set_ethaddr = dsa_ether_set_ethaddr;
> +
> +	return eth_register(edev);
> +}
> +
> +static int dsa_rx_preprocessor(struct eth_device* edev, unsigned char **packet,
> +			       int *length)
> +{
> +	struct dsa_switch *ds = edev->rx_preprocessor_priv;
> +	const struct dsa_ops *ops = ds->ops;
> +	struct dsa_port *dp;
> +	int ret, port;
> +
> +	ret = ops->rcv(ds, &port, *packet, *length);
> +	if (ret)
> +		return ret;
> +
> +	*length -= ds->needed_headroom;
> +	*packet += ds->needed_headroom;
> +
> +	if (port > DSA_MAX_PORTS)
> +		return -ERANGE;
> +
> +	dp = ds->dp[port];
> +	if (!dp)
> +		return 0;
> +
> +	if (*length > DSA_PKTSIZE)
> +		return -ENOMEM;
> +
> +	if (dp->rx_buf_length)
> +		return -EIO;
> +
> +	memcpy(dp->rx_buf, *packet, *length);
> +	dp->rx_buf_length = *length;
> +
> +	return -ENOMSG;
> +}
> +
> +
> +static int dsa_switch_regiser_master(struct dsa_switch *ds,
> +				     struct device_node *np,
> +				     struct device_node *master, int port)
> +{

s/regiser/register/

> +	struct device_node *phy_node;
> +	struct phy_device *phydev;
> +	struct dsa_port *dp;
> +
> +	of_device_ensure_probed(master);
> +
> +	if (ds->edev_master) {
> +		dev_err(ds->dev, "master was already registered!\n");
> +		return -EINVAL;
> +	}
> +
> +	ds->edev_master = of_find_eth_device_by_node(master);
> +	if (!ds->edev_master) {
> +		dev_err(ds->dev, "can't find ethernet master device\n");
> +		return -ENODEV;
> +	}
> +
> +	ds->edev_master->rx_preprocessor = dsa_rx_preprocessor;
> +	ds->edev_master->rx_preprocessor_priv = ds;
> +
> +	phydev = phy_device_create(NULL, 0, 0);
> +
> +	phydev->registered = 1;
> +	phydev->link = 1;
> +
> +	phy_node = of_get_child_by_name(np, "fixed-link");
> +	if (!phy_node)
> +		return -ENODEV;
> +
> +	if (of_property_read_u32(phy_node, "speed", &phydev->speed))
> +		return -ENODEV;
> +
> +	phydev->duplex = of_property_read_bool(phy_node,"full-duplex");
> +	phydev->pause = of_property_read_bool(phy_node, "pause");
> +	phydev->asym_pause = of_property_read_bool(phy_node, "asym-pause");

We already have a function parsing these properties. Could we
consolidate that?

> +	phydev->interface = of_get_phy_mode(np);
> +
> +	ds->dp[port] = xzalloc(sizeof(*dp));
> +	dp = ds->dp[port];
> +	dp->ds = ds;
> +
> +	ds->cpu_port = port;
> +	ds->cpu_port_fixed_phy = phydev;
> +
> +	return 0;
> +}
> +
> +static int dsa_switch_parse_ports_of(struct dsa_switch *ds,
> +				     struct device_node *dn)
> +{
> +	struct device_node *ports, *port;
> +	int ret = 0;
> +	u32 reg;
> +
> +	ports = of_get_child_by_name(dn, "ports");
> +	if (!ports) {
> +		/* The second possibility is "ethernet-ports" */
> +		ports = of_get_child_by_name(dn, "ethernet-ports");
> +		if (!ports) {
> +			dev_err(ds->dev, "no ports child node found\n");
> +			return -EINVAL;
> +		}
> +	}
> +
> +	for_each_available_child_of_node(ports, port) {
> +		struct device_node *master;
> +
> +		ret = of_property_read_u32(port, "reg", &reg);
> +		if (ret) {
> +			dev_err(ds->dev, "No or too many ports are configured\n");
> +			goto out_put_node;
> +		}
> +
> +		if (reg >= ds->num_ports) {
> +			dev_err(ds->dev, "port %pOF index %u exceeds num_ports (%u)\n",
> +				port, reg, ds->num_ports);
> +			ret = -EINVAL;
> +			goto out_put_node;
> +		}
> +
> +		master = of_parse_phandle(port, "ethernet", 0);
> +		if (master)
> +			dsa_switch_regiser_master(ds, port, master, reg);
> +	}
> +
> +	for_each_available_child_of_node(ports, port) {
> +		struct device_node *master;
> +
> +		ret = of_property_read_u32(port, "reg", &reg);
> +		if (ret) {
> +			dev_err(ds->dev, "No or too many ports are configured\n");
> +			goto out_put_node;
> +		}

You won't hit this case here, it is already caught above.

> +
> +		if (reg >= ds->num_ports) {
> +			dev_err(ds->dev, "port %pOF index %u exceeds num_ports (%u)\n",
> +				port, reg, ds->num_ports);
> +			ret = -EINVAL;
> +			goto out_put_node;
> +		}

ditto

> +
> +		master = of_parse_phandle(port, "ethernet", 0);
> +		if (!master) {
> +			ret = dsa_switch_regiser_edev(ds, port, reg);
> +			if (ret) {
> +				dev_err(ds->dev, "Can't create edev for port %i\n", reg);
> +				return ret;
> +			}
> +		}
> +	}
> +
> +out_put_node:
> +	return ret;
> +}
> +
> +int dsa_register_switch(struct dsa_switch *ds)
> +{
> +	struct device_node *dn;
> +	int ret;
> +
> +	if (!ds->dev) {
> +		pr_err("No dev is set\n");
> +		return -ENODEV;
> +	}
> +
> +	ds->tx_buf = dma_alloc(DSA_PKTSIZE);
> +	dn = ds->dev->device_node;
> +
> +	if (!ds->num_ports || ds->num_ports > DSA_MAX_PORTS) {
> +		dev_err(ds->dev, "No or too many ports are configured\n");
> +		return -EINVAL;
> +	}
> +
> +	if (dn)
> +		ret = dsa_switch_parse_ports_of(ds, dn);
> +	else
> +		ret = -ENODEV;
> +
> +	if (ret)
> +		return ret;
> +
> +	return ret;

Please clean up ret handling.

> +}
> +EXPORT_SYMBOL_GPL(dsa_register_switch);
> +
> diff --git a/include/dsa.h b/include/dsa.h
> new file mode 100644
> index 0000000000..e97f90c13d
> --- /dev/null
> +++ b/include/dsa.h
> @@ -0,0 +1,94 @@
> +/* SPDX-License-Identifier: GPL-2.0+ */
> +/*
> + * Copyright 2019-2021 NXP
> + */
> +
> +#ifndef __DSA_H__
> +#define __DSA_H__
> +
> +#include <linux/phy.h>
> +#include <net.h>
> +
> +/**
> + * DSA stands for Distributed Switch Architecture and it is infrastructure
> + * intended to support drivers for Switches that rely on an intermediary
> + * Ethernet device for I/O.  These switches may support cascading allowing
> + * them to be arranged as a tree.
> + * DSA is documented in detail in the Linux kernel documentation under
> + * Documentation/networking/dsa/dsa.txt
> + * The network layout of such a switch is shown below:
> + *
> + *                      |------|
> + *                      | eth0 | <--- master eth device (regular eth driver)
> + *                      |------|
> + *                        ^  |
> + * tag added by switch -->|  |
> + *                        |  |
> + *                        |  |<-- tag added by DSA driver
> + *                        |  v
> + *      |--------------------------------------|
> + *      |             | CPU port |             | <-- DSA (switch) device
> + *      |             ------------             |     (DSA driver)
> + *      | _________  _________       _________ |
> + *      | | port0 |  | port1 |  ...  | portn | | <-- ports as eth devices
> + *      |-+-------+--+-------+-------+-------+-|     ('dsa-port' eth driver)
> + *
> + */
> +
> +#define DSA_PORT_NAME_LENGTH	16
> +#define DSA_MAX_PORTS		12
> +#define DSA_PKTSIZE		1538
> +
> +struct dsa_port;
> +struct dsa_switch;
> +/**
> + * struct dsa_ops - DSA operations
> + *
> + * @port_probe:   Initialize a switch port.
> + * @port_enable:  Enable I/O for a port.
> + * @port_disable: Disable I/O for a port.
> + * @xmit:         Insert the DSA tag for transmission.
> + *                DSA drivers receive a copy of the packet with headroom and
> + *                tailroom reserved and set to 0. 'packet' points to headroom
> + *                and 'length' is updated to include both head and tailroom.
> + * @rcv:          Process the DSA tag on reception and return the port index
> + *                from the h/w provided tag. Return the index via 'portp'.
> + *                'packet' and 'length' describe the frame as received from
> + *                master including any additional headers.
> + */
> +struct dsa_ops {
> +	int (*port_probe)(struct dsa_port *dp, int port,
> +			  struct phy_device *phy);
> +	int (*port_enable)(struct dsa_port *dp, int port,
> +			   struct phy_device *phy);
> +	void (*port_disable)(struct dsa_port *dp, int port,
> +			     struct phy_device *phy);
> +	int (*xmit)(struct dsa_port *dp, int port, void *packet, int length);
> +	int (*rcv)(struct dsa_switch *ds, int *portp, void *packet, int length);
> +};
> +
> +struct dsa_port {
> +	struct device_d		dev;
> +	struct dsa_switch	*ds;
> +	unsigned int		index;
> +	struct eth_device	edev;
> +	unsigned char		*rx_buf;
> +	size_t			rx_buf_length;
> +};
> +
> +struct dsa_switch {
> +	struct device_d *dev;
> +	const struct dsa_ops *ops;
> +	size_t num_ports;
> +	u32 cpu_port;
> +	bool cpu_port_active;
> +	struct eth_device *edev_master;
> +	struct phy_device *cpu_port_fixed_phy;
> +	struct dsa_port *dp[DSA_MAX_PORTS];
> +	size_t needed_headroom;
> +	void *tx_buf;
> +};
> +
> +int dsa_register_switch(struct dsa_switch *ds);
> +
> +#endif /* __DSA_H__ */
> -- 
> 2.30.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

