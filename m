Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UUJdy-0005As-J6
 for barebox@lists.infradead.org; Mon, 22 Apr 2013 16:31:07 +0000
Date: Mon, 22 Apr 2013 18:31:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130422163102.GJ32299@pengutronix.de>
References: <1366620847-8616-1-git-send-email-linux@rempel-privat.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1366620847-8616-1-git-send-email-linux@rempel-privat.de>
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 3/3] net: add new ar231x-eth driver
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: barebox@lists.infradead.org, Oleksij Rempel <bug-track@fisher-privat.net>

Hi Oleksij,

The driver looks generally ok, but unfortunately contains some things
which require some work to fix.

On Mon, Apr 22, 2013 at 10:54:07AM +0200, Oleksij Rempel wrote:
> From: Oleksij Rempel <bug-track@fisher-privat.net>
> +static int ar231x_set_ethaddr(struct eth_device *edev, unsigned char *addr);
> +static void ar231x_reset_regs(struct eth_device *edev)
> +{
> +	struct ar231x_eth_priv *priv = edev->priv;
> +	struct ar231x_eth_platform_data *cfg = priv->cfg;
> +	u32 flags;
> +
> +	debug("%s\n", __func__);

Inside drivers you should generally use dev_dbg and friends. I think
these 'I entered a function' kind of debug functions are often not useful
for other people, so you should consider removing them completely.

> +
> +	*priv->int_regs |= cfg->reset_mac;
> +	mdelay(10);
> +	*priv->int_regs &= ~cfg->reset_mac;
> +	mdelay(10);
> +	*priv->int_regs |= cfg->reset_phy;
> +	mdelay(10);
> +	*priv->int_regs &= ~cfg->reset_phy;
> +	mdelay(10);

Please use writel to access registers.

> +static int ar231x_set_ethaddr(struct eth_device *edev, unsigned char *addr)
> +{
> +	struct ar231x_eth_priv *priv = edev->priv;
> +
> +	debug("%s\n", __func__);
> +
> +	priv->eth_regs->mac_addr[0] =
> +			(addr[5] <<  8) | (addr[4]);
> +	priv->eth_regs->mac_addr[1] =
> +			(addr[3] << 24) | (addr[2] << 16) |
> +			(addr[1] <<  8) | addr[0];
> +
> +	mdelay(10);

Is this needed?

> +static int ar231x_eth_probe(struct device_d *dev)
> +{
> +	struct ar231x_eth_priv *priv;
> +	struct eth_device *edev;
> +	struct mii_bus *miibus;
> +	struct ar231x_eth_platform_data *pdata;
> +
> +	debug("%s\n", __func__);
> +
> +	if (!dev->platform_data) {
> +		dev_err(dev, "no platform data\n");
> +		return -ENODEV;
> +	}
> +
> +	pdata = dev->platform_data;
> +
> +	priv = xzalloc(sizeof(struct ar231x_eth_priv));
> +	edev = &priv->edev;
> +	miibus = &priv->miibus;
> +	edev->priv = priv;
> +
> +	/* link all platform depended regs */
> +	priv->mac = pdata->mac;
> +
> +	if (!pdata->base_eth) {
> +		dev_err(dev, "no eth base defined\n");
> +		return -ENODEV;
> +	}
> +	priv->eth_regs = (ETHERNET_STRUCT *)pdata->base_eth;

Please register a resource for the device like the other drivers do.

> +
> +static struct driver_d ar231x_eth_driver = {
> +        .name = "ar231x_eth",
> +        .probe = ar231x_eth_probe,
> +        .remove = ar231x_eth_remove,
> +};
> +
> +static int ar231x_eth_driver_init(void)
> +{
> +	debug("%s\n", __func__);
> +
> +	platform_driver_register(&ar231x_eth_driver);
> +	return 0;

return platform_driver_register();

> +/*
> + * probe link timer - 5 secs
> + */
> +#define LINK_TIMER    (5*HZ)

This is unused.

> +
> +#define IS_DMA_TX_INT(X)   (((X) & (DMA_STATUS_TI)) != 0)
> +#define IS_DMA_RX_INT(X)   (((X) & (DMA_STATUS_RI)) != 0)
> +#define IS_DRIVER_OWNED(X) (((X) & (DMA_TX_OWN))    == 0)
> +
> +#define AR2313_TX_TIMEOUT (HZ/4)

also unused.

> +
> +#define RCVPKT_LENGTH(X)	(X  >> 16)	/* Received pkt Length */

It's good practice to protect variables in macros with braces,
so:

#define RCVPKT_LENGTH(X)     ((X)  >> 16)

Otherwise surprises may happen...

> +typedef struct {
> +	volatile u32 status;		/* OWN, Device control and status. */
> +	volatile u32 devcs;			/* Packet control bitmap + Length. */
> +	volatile u32 buffer_ptr;	/* Pointer to packet buffer. */
> +	volatile u32 next_dsc_ptr;	/* Pointer to next descriptor in chain. */
> +} ar231x_descr_t;

No typedef struct please. Use the struct type directly.
Also remove the volatile in favor of proper register accessors.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
