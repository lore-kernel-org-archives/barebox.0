Delivery-date: Thu, 07 Apr 2022 15:58:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ncSei-00AVIu-8l
	for lore@lore.pengutronix.de; Thu, 07 Apr 2022 15:58:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ncSee-0001Nf-RY
	for lore@pengutronix.de; Thu, 07 Apr 2022 15:58:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JTpxeFdayYe1B2AIOv/hzpPs0ZmNCCgIzXnIPnBbev8=; b=iPOCGFUj2WJYd6Tyx+OUHod+S9
	bvIKTBOWrNnhl35ly0cb576/h0vaFHSnpQfOkgsy7MG6plJ7n1t/YWn9Houb58UAOIebNwUTz7sjC
	b9m+FpH1qwG8HKYEsBDd7VN6qP/VTMJ7GbyUfHB4NLKps+BMHN8e1vfvVygQU+otCGDUWRygsw7fD
	3QCRFg434iHP/vNn9VRe6JR661eeRkVd9A7kb+J5fy9tpaLQK8AetddpMNocKNtzdLdGFKhxSEsQs
	NYqbLIpJBpijqi7WmRxjkqInTQoMpM0Hi5AOSw6nwMmjmiCjflZb32l5tbQR++Mc+3EWTBu5eiJs5
	zA7kHnXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ncSdG-00CFsl-PQ; Thu, 07 Apr 2022 13:57:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ncSd9-00CFr3-1f
 for barebox@lists.infradead.org; Thu, 07 Apr 2022 13:57:01 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ncSd7-0001AH-C4; Thu, 07 Apr 2022 15:56:57 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ncSd7-0006Hn-3M; Thu, 07 Apr 2022 15:56:57 +0200
Date: Thu, 7 Apr 2022 15:56:57 +0200
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220407135657.GJ4012@pengutronix.de>
References: <20220407091604.956577-1-o.rempel@pengutronix.de>
 <20220407091604.956577-4-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220407091604.956577-4-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 15:36:15 up 8 days, 2:05, 73 users, load average: 0.22, 0.11, 0.12
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220407_065659_490984_9AB27CC2 
X-CRM114-Status: GOOD (  37.60  )
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
Subject: Re: [PATCH v3 03/12] net: add DSA framework to support basic switch
 functionality
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Apr 07, 2022 at 11:15:55AM +0200, Oleksij Rempel wrote:
> Add DSA based port multiplexing functionality for barebox. With this
> framework we will be able to use different ports of as switch
> separately.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  drivers/net/Kconfig  |   4 +
>  drivers/net/Makefile |   1 +
>  drivers/net/dsa.c    | 460 +++++++++++++++++++++++++++++++++++++++++++
>  include/dsa.h        |  90 +++++++++
>  4 files changed, 555 insertions(+)
>  create mode 100644 drivers/net/dsa.c
>  create mode 100644 include/dsa.h
> 
> diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
> index 65c93bbe84..8d76fe66f2 100644
> --- a/drivers/net/Kconfig
> +++ b/drivers/net/Kconfig
> @@ -17,6 +17,10 @@ config HAS_MACB
>  config PHYLIB
>  	bool
>  
> +config DSA
> +	bool
> +	select PHYLIB
> +
>  menu "Network drivers"
>  	depends on NET
>  
> diff --git a/drivers/net/Makefile b/drivers/net/Makefile
> index 40045bab04..406e13f1a0 100644
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
> index 0000000000..2a93f0cd9f
> --- /dev/null
> +++ b/drivers/net/dsa.c
> @@ -0,0 +1,460 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +
> +#include <common.h>
> +#include <dma.h>
> +#include <dsa.h>
> +#include <of_net.h>
> +
> +u32 dsa_user_ports(struct dsa_switch *ds)
> +{
> +	u32 mask = 0;
> +	int i;
> +
> +	for (i = 0; i < ds->num_ports; i++) {
> +		if (ds->dp[i])
> +			mask |= BIT(ds->dp[i]->index);
> +	}
> +
> +	return mask;
> +}
> +
> +static int dsa_slave_phy_read(struct mii_bus *bus, int addr, int reg)
> +{
> +	struct dsa_switch *ds = bus->priv;
> +
> +	if (ds->phys_mii_mask & BIT(addr))
> +		return ds->ops->phy_read(ds, addr, reg);
> +
> +	return 0xffff;
> +}
> +
> +static int dsa_slave_phy_write(struct mii_bus *bus, int addr, int reg, u16 val)
> +{
> +	struct dsa_switch *ds = bus->priv;
> +
> +	if (ds->phys_mii_mask & BIT(addr))
> +		return ds->ops->phy_write(ds, addr, reg, val);
> +
> +	return 0;
> +}
> +
> +static int dsa_slave_mii_bus_init(struct dsa_switch *ds)
> +{
> +	ds->slave_mii_bus = xzalloc(sizeof(*ds->slave_mii_bus));
> +	ds->slave_mii_bus->priv = (void *)ds;
> +	ds->slave_mii_bus->read = dsa_slave_phy_read;
> +	ds->slave_mii_bus->write = dsa_slave_phy_write;
> +	ds->slave_mii_bus->parent = ds->dev;
> +	ds->slave_mii_bus->phy_mask = ~ds->phys_mii_mask;
> +
> +	return mdiobus_register(ds->slave_mii_bus);
> +}
> +
> +static int dsa_port_probe(struct eth_device *edev)
> +{
> +	struct dsa_port *dp = edev->priv;
> +	struct dsa_switch *ds = dp->ds;
> +	const struct dsa_ops *ops = ds->ops;
> +	phy_interface_t interface;
> +	int ret;
> +
> +	if (ops->port_probe) {
> +		interface = of_get_phy_mode(dp->dev.device_node);
> +		ret = ops->port_probe(dp, dp->index, interface);
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
> +}
> +
> +static int dsa_port_start(struct eth_device *edev)
> +{
> +	struct dsa_port *dp = edev->priv;
> +	struct dsa_switch *ds = dp->ds;
> +	const struct dsa_ops *ops = ds->ops;
> +	phy_interface_t interface;
> +	int ret;
> +
> +	if (dp->enabled)
> +		return -EBUSY;
> +
> +	interface = of_get_phy_mode(dp->dev.device_node);
> +
> +	if (ops->port_pre_enable) {
> +		/* In case of RMII interface we need to enable RMII clock
> +		 * before talking to the PHY.
> +		 */
> +		ret = ops->port_pre_enable(dp, dp->index, interface);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	ret = phy_device_connect(edev, ds->slave_mii_bus, dp->index, NULL, 0,
> +				 interface);
> +	if (ret)
> +		return ret;
> +
> +	dsa_port_set_ethaddr(edev);
> +
> +	if (ops->port_enable) {
> +		ret = ops->port_enable(dp, dp->index, dp->edev.phydev);

The test suggests that ops->port_enable is optional...

> +		if (ret)
> +			return ret;
> +	}
> +
> +	dp->enabled = true;
> +
> +	if (!ds->cpu_port_users) {
> +		struct dsa_port *dpc = ds->dp[ds->cpu_port];
> +
> +		ret = ops->port_enable(dpc, ds->cpu_port,
> +				       ds->cpu_port_fixed_phy);

...but it's called unconditionally here.

> +		if (ret)
> +			return ret;
> +		eth_open(ds->edev_master);
> +		ds->cpu_port_users++;

ds->cpu_port_users must be incremented on every dsa_port_start(), not
only the first one.

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
> +	if (!dp->enabled)
> +		return;
> +
> +	if (ops->port_disable)
> +		ops->port_disable(dp, dp->index, dp->edev.phydev);
> +
> +	dp->enabled = false;
> +	ds->cpu_port_users--;
> +
> +	if (!ds->cpu_port_users) {
> +		struct dsa_port *dpc = ds->dp[ds->cpu_port];
> +
> +		ops->port_disable(dpc, ds->cpu_port, ds->cpu_port_fixed_phy);

Please decide if ops->port_disable is optional or not.

> +		eth_close(ds->edev_master);
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
> +	size_t full_length, stuff = 0;
> +	int ret;
> +
> +	if (length < 64)
> +		stuff = 64 - length;
> +
> +	full_length = length + ds->needed_headroom + ds->needed_tx_tailroom +
> +		      stuff;
> +
> +	if (full_length > DSA_PKTSIZE)
> +		return -ENOMEM;
> +
> +	memset(tx_buf + full_length - stuff, 0, stuff);
> +	memcpy(tx_buf + ds->needed_headroom, packet, length);
> +	ret = ops->xmit(dp, dp->index, tx_buf, full_length);
> +	if (ret)
> +		return ret;
> +
> +	edev_master = ds->edev_master;
> +
> +	return eth_send_raw(edev_master, tx_buf, full_length);

drop edev_master and use ds->edev_master directly.

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
> +static int dsa_rx_preprocessor(struct eth_device *edev, unsigned char **packet,
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
> +	*length -= ds->needed_rx_tailroom;
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
> +static int dsa_switch_regiser_master(struct dsa_switch *ds,
> +				     struct device_node *np,
> +				     struct device_node *master, int port)

s/regiser/register/

> +{
> +	struct device_node *phy_node;
> +	struct phy_device *phydev;
> +	struct dsa_port *dp;
> +	int ret;
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
> +	ret = dev_set_param(&ds->edev_master->dev, "mode", "disabled");
> +	if (ret)
> +		dev_warn(ds->dev, "Can't set disable master Ethernet device\n");
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
> +	phydev->duplex = of_property_read_bool(phy_node, "full-duplex");
> +	phydev->pause = of_property_read_bool(phy_node, "pause");
> +	phydev->asym_pause = of_property_read_bool(phy_node, "asym-pause");
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

I'm stopping here after I realized that I'm repeating all the things I
said to v1 already.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

