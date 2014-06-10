Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WuGB0-0001cr-57
 for barebox@lists.infradead.org; Tue, 10 Jun 2014 07:08:59 +0000
Date: Tue, 10 Jun 2014 09:08:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140610070833.GT15686@pengutronix.de>
References: <1402041777-7249-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1402041777-7249-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [RFC] [WIP] net: add initial ENC28J60 support
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Antony,

On Fri, Jun 06, 2014 at 12:02:57PM +0400, Antony Pavlov wrote:
> ENC28J60 is a stand-alone Ethernet controller with SPI Interface.
> and integrated 10BASE-T PHY.
> 
> This driver was ported with maximum original linux driver source
> code compatibility in mind so locked_* and nolock_* register
> handling functions are kept (despite the fact that barebox
> does not use any coherency primitives at all).

Is it really worth it? The driver has probably seen some changes
compared to the Linux driver and other changes are still required
to integrate into barebox properly. I made the experience that
relevant changes to the Linux driver are still easy enough to identify
and to integrate into a barebox driver. So I would vote for dropping the
Linux-look-alike and use dev_* for printing messages.

> 
> The most notable barebox driver version changes:
>   * add device tree support;
>   * use two SPI transfers in spi_read_buf() (as m25p80.c does);
>   * use IF_ENABLED for checking CONFIG_ENC28J60_WRITEVERIFY.
> 
> TODOs:
>   * move include/linux/netdevice.h to separate patch;
>   * move ETH_ALEN and eth_random_addr to common code
>     (or use existing barebox analogs);
>   * do we really need 'select CRC32'?
>   * fix empty enc28j60_init_dev;
>   * add parameter for changing debug loglevel on-the-run;
>   * ENC28J60 supports only SPI mode 0 so we have to submit
>     this information to the SPI controller explicitly.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
> diff --git a/drivers/net/enc28j60.c b/drivers/net/enc28j60.c
> new file mode 100644
> index 0000000..0af2b86
> --- /dev/null
> +
> +/* linux.git/include/uapi/linux/if_ether.h */
> +#define ETH_ALEN 6
> +
> +/* linux.git/include/linux/etherdevice.h */
> +static inline void eth_random_addr(u8 *addr)
> +{
> +	get_random_bytes(addr, ETH_ALEN);
> +	addr[0] &= 0xfe;	/* clear multicast bit */
> +	addr[0] |= 0x02;	/* set local assignment bit (IEEE802) */
> +}

No need to move it, we already have random_ether_addr. But as said
below, you shouldn't have to generate a random MAC in the driver anyway.

> +
> +#define DRV_NAME	"enc28j60"
> +
> +#define SPI_OPLEN	1
> +
> +#define ENC28J60_MSG_DEFAULT	\
> +	(NETIF_MSG_PROBE | NETIF_MSG_IFUP | NETIF_MSG_IFDOWN | NETIF_MSG_LINK)
> +
> +/* Buffer size required for the largest SPI transfer (i.e., reading a
> + * frame). */
> +#define SPI_TRANSFER_BUF_LEN	(4 + MAX_FRAMELEN)
> +
> +#define TX_TIMEOUT	(4 * HZ)

This is unused.

> +
> +/* Max TX retries in case of collision as suggested by errata datasheet */
> +#define MAX_TX_RETRYCOUNT	16

Also unused.

> +
> +/* Driver local data */

...

> +
> +static int enc28j60_phy_write(struct enc28j60_net *priv, u8 address, u16 data)
> +{
> +	int ret;
> +
> +	/* set the PHY register address */
> +	nolock_regb_write(priv, MIREGADR, address);
> +	/* write the PHY data */
> +	nolock_regw_write(priv, MIWRL, data);
> +	/* wait until the PHY write completes and return */
> +	ret = wait_phy_ready(priv);
> +
> +	return ret;
> +}

Put these into a proper struct mii_bus, call mdiobus_register() and then
you can put enc28j60_check_link_status() into the callback function
passed to phy_device_connect().

> +
> +static int enc28j60_get_ethaddr(struct eth_device *edev, unsigned char *m)
> +{
> +	struct enc28j60_net *priv = edev->priv;
> +
> +	memcpy(m, priv->hwaddr, ETH_ALEN);
> +
> +	if (netif_msg_drv(priv))
> +		printk(KERN_ERR DRV_NAME
> +			": %s: getting MAC address\n",
> +			edev->dev.name);
> +
> +	return 0;
> +}
> +

...

> +
> +static int enc28j60_eth_rx(struct eth_device *edev)
> +{
> +	struct enc28j60_net *priv = edev->priv;
> +	int pk_counter;
> +
> +	pk_counter = locked_regb_read(priv, EPKTCNT);
> +	if (pk_counter && netif_msg_intr(priv))
> +		printk(KERN_DEBUG DRV_NAME ": intRX, pk_cnt: %d\n", pk_counter);
> +
> +	if (pk_counter > priv->max_pk_counter) {
> +		priv->max_pk_counter = pk_counter;
> +		if (netif_msg_rx_status(priv) && priv->max_pk_counter > 1)
> +			printk(KERN_DEBUG DRV_NAME ": RX max_pk_cnt: %d\n",
> +				priv->max_pk_counter);
> +	}
> +
> +	while (pk_counter-- > 0)
> +		enc28j60_hw_rx(edev);

You should only receive a single packet in your receive function.
Otherwise some protocols may not function properly. We noticed this
recently and didn't have the chance to fix all drivers.

> +
> +	return 0;
> +}
> +
> +static int enc28j60_init_dev(struct eth_device *edev)
> +{
> +	/* FIXME: empty */
> +
> +	return 0;
> +}
> +
> +/*
> + * Open/initialize the board. This is called (in the current kernel)
> + * sometime after booting when the 'ifconfig' program is run.
> + *
> + * This routine should set everything up anew at each open, even
> + * registers that "should" only need to be set once at boot, so that
> + * there is non-reboot way to recover if something goes wrong.
> + */
> +static int enc28j60_eth_open(struct eth_device *edev)
> +{
> +	struct enc28j60_net *priv = edev->priv;
> +
> +	if (netif_msg_drv(priv))
> +		printk(KERN_DEBUG DRV_NAME ": %s() enter\n", __func__);
> +
> +	if (!is_valid_ether_addr(priv->hwaddr)) {
> +		if (netif_msg_ifup(priv))
> +			dev_err(&edev->dev, "invalid MAC address %pM\n",
> +				priv->hwaddr);
> +		return -EADDRNOTAVAIL;
> +	}

This shouldn't happen since barebox will automatically generate a random
MAC address if the address is invalied.

> +
> +	/* Reset the hardware here (and take it out of low power mode) */
> +	enc28j60_lowpower(priv, false);
> +	enc28j60_hw_disable(priv);
> +	if (!enc28j60_hw_init(priv)) {
> +		if (netif_msg_ifup(priv))
> +			dev_err(&edev->dev, "hw_reset() failed\n");
> +		return -EINVAL;
> +	}
> +
> +	/* Update the MAC address after reset */
> +	enc28j60_set_ethaddr(edev, priv->hwaddr);
> +
> +	enc28j60_hw_enable(priv);
> +
> +	/* check link status */
> +	enc28j60_check_link_status(edev);
> +
> +	return 0;
> +}
> +
> +static void enc28j60_eth_halt(struct eth_device *edev)
> +{
> +	struct enc28j60_net *priv = edev->priv;
> +
> +	if (netif_msg_drv(priv))
> +		printk(KERN_DEBUG DRV_NAME ": %s() enter\n", __func__);
> +
> +	enc28j60_hw_disable(priv);
> +	enc28j60_lowpower(priv, true);
> +}
> +
> +static int enc28j60_probe(struct device_d *dev)
> +{
> +	struct eth_device *edev;
> +	struct enc28j60_net *priv;
> +	int ret = 0;
> +
> +	priv = xzalloc(sizeof(*priv));
> +
> +	priv->spi = (struct spi_device *)dev->type_data;
> +	//priv->msg_enable = netif_msg_init(16, ENC28J60_MSG_DEFAULT);
> +	priv->msg_enable = netif_msg_init(0, ENC28J60_MSG_DEFAULT);
> +
> +	edev = &priv->edev;
> +	edev->priv = priv;
> +	edev->init = enc28j60_init_dev;
> +	edev->open = enc28j60_eth_open;
> +	edev->send = enc28j60_eth_send;
> +	edev->recv = enc28j60_eth_rx;
> +	edev->get_ethaddr = enc28j60_get_ethaddr;
> +	edev->set_ethaddr = enc28j60_set_ethaddr;
> +	edev->halt = enc28j60_eth_halt;
> +	edev->parent = dev;
> +
> +	/*
> +	 * Here is a quote from ENC28J60 Data Sheet:
> +	 *
> +	 * The ENC28J60 does not support automatic duplex
> +	 * negotiation. If it is connected to an automatic duplex
> +	 * negotiation enabled network switch or Ethernet controller,
> +	 * the ENC28J60 will be detected as a half-duplex device.
> +	 *
> +	 * So most people prefer to set up half-duplex mode.
> +	 */
> +	priv->full_duplex = 0;
> +
> +	if (!enc28j60_hw_init(priv)) {
> +		if (netif_msg_probe(priv))
> +			dev_info(dev, DRV_NAME " chip not found\n");
> +		ret = -EIO;
> +		goto error_register;
> +	}
> +
> +	eth_random_addr(priv->hwaddr);

This shouldn't be necessary

> +	enc28j60_set_ethaddr(edev, priv->hwaddr);

Also seems unnecessary.

> +
> +	enc28j60_lowpower(priv, true);
> +
> +	eth_register(edev);

Please check the return value. I know most network drivers don't do it
currently and I should really fix this since people copy it every time.

> +
> +	dev_info(dev, DRV_NAME " driver registered\n");
> +
> +	return 0;
> +
> +error_register:
> +	return ret;
> +}
> +
> +static __maybe_unused struct of_device_id enc28j60_dt_ids[] = {
> +	{
> +		.compatible = "microchip,enc28j60",
> +	}, {
> +		/* sentinel */
> +	}
> +};
> +
> +static struct driver_d enc28j60_driver = {
> +	.name = DRV_NAME,
> +	.probe = enc28j60_probe,
> +	.of_compatible = DRV_OF_COMPAT(enc28j60_dt_ids),
> +};
> +device_spi_driver(enc28j60_driver);


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
