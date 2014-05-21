Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22e.google.com ([2a00:1450:4013:c00::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wn5et-0003X0-PX
 for barebox@lists.infradead.org; Wed, 21 May 2014 12:30:12 +0000
Received: by mail-ee0-f46.google.com with SMTP id t10so1493165eei.5
 for <barebox@lists.infradead.org>; Wed, 21 May 2014 05:29:49 -0700 (PDT)
Message-ID: <537C9C3A.9030503@gmail.com>
Date: Wed, 21 May 2014 14:29:46 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1400674740-6467-1-git-send-email-s.hauer@pengutronix.de>
 <1400674740-6467-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1400674740-6467-7-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 06/10] net: orion-gbe: use transparent-to-driver of mdio
 functions
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org

On 05/21/2014 02:18 PM, Sascha Hauer wrote:
> barebox can transparently handle phys specified in the devicetree.
> Use this functionality in the orion-gbe driver. This requires:
>
> - add a device to the orion-gbe ports. This has the port device_node
>    attached and is set as the parent of the ethernet device so that
>    the ethernet code finds the correct device_node
> - In the mdio-mvebu driver attach the device_node of the mdio device
>    to the miibus device so that the phy code finds the correct node
> - call phy_device_connect instead of of_phy_device_connect.
>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Nice! I'll give it a go on Guruplug and/or Cubox and report back.

Sebastian

> ---
>   drivers/net/orion-gbe.c      | 62 ++++++++++++++++++++++++--------------------
>   drivers/net/phy/mdio-mvebu.c |  1 +
>   2 files changed, 35 insertions(+), 28 deletions(-)
>
> diff --git a/drivers/net/orion-gbe.c b/drivers/net/orion-gbe.c
> index 00f5e54..85db17c 100644
> --- a/drivers/net/orion-gbe.c
> +++ b/drivers/net/orion-gbe.c
> @@ -56,6 +56,7 @@ struct txdesc {
>   };
>
>   struct port_priv {
> +	struct device_d dev;
>   	struct eth_device edev;
>   	void __iomem *regs;
>   	struct device_node *np;
> @@ -64,6 +65,7 @@ struct port_priv {
>   	struct rxdesc *rxdesc;
>   	struct rxdesc *current_rxdesc;
>   	u8 *rxbuf;
> +	phy_interface_t intf;
>   };
>
>   struct orion_gbe {
> @@ -351,16 +353,6 @@ static int port_get_ethaddr(struct eth_device *edev, unsigned char *mac)
>   	return 0;
>   }
>
> -static int port_open(struct eth_device *edev)
> -{
> -	struct port_priv *port = edev->priv;
> -
> -	/* enable receive queue */
> -	writel(BIT(URXQ), port->regs + PORT_RQC);
> -
> -	return 0;
> -}
> -
>   static void port_adjust_link(struct eth_device *edev)
>   {
>   	struct port_priv *port = edev->priv;
> @@ -389,10 +381,25 @@ static void port_adjust_link(struct eth_device *edev)
>   	writel(reg, port->regs + PORT_SC0);
>   }
>
> +static int port_open(struct eth_device *edev)
> +{
> +	struct port_priv *port = edev->priv;
> +	int ret;
> +
> +	ret = phy_device_connect(&port->edev, NULL, -1, port_adjust_link, 0,
> +			port->intf);
> +	if (ret)
> +		return ret;
> +
> +	/* enable receive queue */
> +	writel(BIT(URXQ), port->regs + PORT_RQC);
> +
> +	return 0;
> +}
> +
>   static int port_probe(struct device_d *parent, struct port_priv *port)
>   {
> -	struct device_node *phynp;
> -	phy_interface_t intf = PHY_INTERFACE_MODE_RGMII;
> +	struct device_d *dev = &port->dev;
>   	u32 reg;
>   	int ret;
>
> @@ -400,12 +407,11 @@ static int port_probe(struct device_d *parent, struct port_priv *port)
>   	if (of_property_read_u32(port->np, "reg", &port->portno))
>   		dev_warn(parent, "port node is missing reg property\n");
>
> -	phynp = of_parse_phandle(port->np, "phy-handle", 0);
> -	if (phynp) {
> -		ret = of_get_phy_mode(port->np);
> -		if (ret > 0)
> -			intf = ret;
> -	}
> +	ret = of_get_phy_mode(port->np);
> +	if (ret > 0)
> +		port->intf = ret;
> +	else
> +		port->intf = PHY_INTERFACE_MODE_RGMII;
>
>   	port->regs = dev_get_mem_region(parent, 0) + PORTn_REGS(port->portno);
>
> @@ -440,10 +446,18 @@ static int port_probe(struct device_d *parent, struct port_priv *port)
>
>   	reg = SC1_RESERVED;
>   	reg |= DEFAULT_COL_LIMIT | COL_ON_BACKPRESS | INBAND_ANEG_BYPASS;
> -	if (intf == PHY_INTERFACE_MODE_RGMII)
> +	if (port->intf == PHY_INTERFACE_MODE_RGMII)
>   		reg |= RGMII_ENABLE;
>   	writel(reg, port->regs + PORT_SC1);
>
> +	sprintf(dev->name, "orion-gbe-port");
> +	dev->id = port->portno;
> +	dev->parent = parent;
> +	dev->device_node = port->np;
> +	ret = register_device(dev);
> +	if (ret)
> +		return ret;
> +
>   	/* register eth device */
>   	port->edev.priv = port;
>   	port->edev.open = port_open;
> @@ -452,20 +466,12 @@ static int port_probe(struct device_d *parent, struct port_priv *port)
>   	port->edev.halt = port_halt;
>   	port->edev.set_ethaddr = port_set_ethaddr;
>   	port->edev.get_ethaddr = port_get_ethaddr;
> -	port->edev.parent = parent;
> +	port->edev.parent = dev;
>
>   	ret = eth_register(&port->edev);
>   	if (ret)
>   		return ret;
>
> -	/* attach phy device */
> -	if (phynp) {
> -		ret = of_phy_device_connect(&port->edev, phynp,
> -					    port_adjust_link, 0, intf);
> -		if (ret)
> -			return ret;
> -	}
> -
>   	return 0;
>   }
>
> diff --git a/drivers/net/phy/mdio-mvebu.c b/drivers/net/phy/mdio-mvebu.c
> index f8b492a..3dcf644 100644
> --- a/drivers/net/phy/mdio-mvebu.c
> +++ b/drivers/net/phy/mdio-mvebu.c
> @@ -120,6 +120,7 @@ static int mvebu_mdio_probe(struct device_d *dev)
>   	if (!IS_ERR(priv->clk))
>   		clk_enable(priv->clk);
>
> +	priv->miibus.dev.device_node = dev->device_node;
>   	priv->miibus.priv = priv;
>   	priv->miibus.parent = dev;
>   	priv->miibus.read = mvebu_mdio_read;
>


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
