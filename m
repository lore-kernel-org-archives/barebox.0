Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ufm8A-00071d-72
 for barebox@lists.infradead.org; Fri, 24 May 2013 07:09:40 +0000
Date: Fri, 24 May 2013 09:09:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130524070916.GX32299@pengutronix.de>
References: <1369208989-14369-1-git-send-email-linux@rempel-privat.de>
 <1369208989-14369-3-git-send-email-linux@rempel-privat.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1369208989-14369-3-git-send-email-linux@rempel-privat.de>
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
Subject: Re: [RFC, PATCH v2 2/3] net: add ar231x-eth support
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: barebox@lists.infradead.org

On Wed, May 22, 2013 at 09:49:48AM +0200, Oleksij Rempel wrote:
> This driver should work with some Atheros WiSoCs:
> - ar2312, ar2313
> - ar2315, ar2316 ...
> 
> Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
> ---
>  drivers/net/Kconfig  |   7 +
>  drivers/net/Makefile |   1 +
>  drivers/net/ar231x.c | 429 +++++++++++++++++++++++++++++++++++++++++++++++++++
>  drivers/net/ar231x.h | 219 ++++++++++++++++++++++++++
>  4 files changed, 656 insertions(+)
>  create mode 100644 drivers/net/ar231x.c
>  create mode 100644 drivers/net/ar231x.h
> 
> +
> +	/* FIXME: priv->{t,r}x_ring are virtual addresses,
> +	 * use virt-to-phys convertion */

We use 1:1 mappings, so I think this comment should be removed.

> +
> +static void ar231x_allocate_dma_descriptors(struct eth_device *edev)
> +{
> +	struct ar231x_eth_priv *priv = edev->priv;
> +	u16 ar231x_descr_size = sizeof(struct ar231x_descr);
> +	u16 i;
> +
> +	priv->tx_ring = xmalloc(ar231x_descr_size);

What alignment do you need here? This may or may not be safe.

> +
> +static int ar231x_eth_recv(struct eth_device *edev)
> +{
> +	struct ar231x_eth_priv *priv = edev->priv;
> +
> +	while (1) {
> +		struct ar231x_descr *rxdsc = priv->next_rxdsc;
> +		u32 status = rxdsc->status;
> +
> +		/* owned by DMA? */
> +		if (status & DMA_RX_OWN)
> +			break;
> +
> +		/* Pick only packets what we can handle:
> +		 * - only complete packet per buffer
> +		 *   (First and Last at same time)
> +		 * - drop multicast */
> +		if (!priv->kill_rx_ring &&
> +				((status & DMA_RX_MASK) == DMA_RX_FSLS)) {
> +			u16 length =
> +				((status >> DMA_RX_LEN_SHIFT) & 0x3fff)
> +				- CRC_LEN;
> +			net_receive((void *)rxdsc->buffer_ptr, length);
> +		}
> +		/* Clean descriptor. now it is owned by DMA. */
> +		priv->next_rxdsc = (struct ar231x_descr *)rxdsc->next_dsc_ptr;
> +		ar231x_flash_rxdsc(rxdsc);
> +	}

This loop looks wrong. You should only receive a single packet for each
call of this function.

> +
> +static int ar231x_eth_probe(struct device_d *dev)
> +{
> +	struct ar231x_eth_priv *priv;
> +	struct eth_device *edev;
> +	struct mii_bus *miibus;
> +	struct ar231x_eth_platform_data *pdata;
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
> +	priv->eth_regs = dev_request_mem_region(dev, 0);
> +	/* we have 0x100000 for eth, part of it are dma regs.
> +	 * So they are already requested */
> +	priv->dma_regs = (void *)(priv->eth_regs + 0x1000);
> +
> +	priv->phy_regs = dev_request_mem_region(dev, 1);
> +
> +	priv->cfg = pdata;
> +	edev->init = ar231x_eth_init;
> +	edev->open = ar231x_eth_open;
> +	edev->send = ar231x_eth_send;
> +	edev->recv = ar231x_eth_recv;
> +	edev->halt = ar231x_eth_halt;
> +	edev->get_ethaddr = ar231x_get_ethaddr;
> +	edev->set_ethaddr = ar231x_set_ethaddr;
> +
> +	priv->miibus.read = ar231x_miibus_read;
> +	priv->miibus.write = ar231x_miibus_write;
> +	priv->miibus.reset = ar231x_mdiibus_reset;
> +	priv->miibus.priv = priv;
> +	priv->miibus.parent = dev;
> +
> +	mdiobus_register(miibus);
> +	eth_register(edev);

Please check the return values of dev_request_mem_region,
mdiobus_register and eth_register. I'm fine with not properly cleaning
up afterwards, but we should be able to notice the user if something
goes wrong here. (Yeah, I know, many network driver don't do so)

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
