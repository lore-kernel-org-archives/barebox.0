Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dsNto-0007lQ-5B
 for barebox@lists.infradead.org; Thu, 14 Sep 2017 06:45:22 +0000
Date: Thu, 14 Sep 2017 08:44:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170914064458.3o4cgp6x4vb4opop@pengutronix.de>
References: <20170913141606.14508-1-linux@rempel-privat.de>
 <20170913141606.14508-2-linux@rempel-privat.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170913141606.14508-2-linux@rempel-privat.de>
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
Subject: Re: [PATCH v2 01/10] net: ath79: add ag71xx Ethernet driver
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: barebox@lists.infradead.org

On Wed, Sep 13, 2017 at 04:15:57PM +0200, Oleksij Rempel wrote:
> +static void ag71xx_ether_halt(struct eth_device *edev)
> +{
> +	struct ag71xx *priv = edev->priv;
> +	struct device_d *dev = priv->dev;
> +	uint64_t start;
> +
> +	ag71xx_wr(priv, AG71XX_REG_RX_CTRL, 0);
> +	start = get_time_ns();
> +	while (ag71xx_rr(priv, AG71XX_REG_RX_CTRL)) {
> +		if (!is_timeout_non_interruptible(start, 100 * USECOND)) {
> +			dev_err(dev, "error: filed to stop device!\n");

s/filed/failed/

Also the test seems to be the wrong way round.

> +static int ag71xx_ether_init(struct eth_device *edev)
> +{
> +	struct ag71xx *priv = edev->priv;
> +	int i;
> +	void *rxbuf = priv->rx_buffer;
> +
> +	priv->next_rx = 0;
> +
> +	for (i = 0; i < NO_OF_RX_FIFOS; i++) {
> +		ag7240_desc_t *fr = &priv->fifo_rx[i];
> +
> +		priv->rx_pkt[i] = rxbuf;
> +		fr->pkt_start_addr = virt_to_phys(rxbuf);
> +		fr->pkt_size = MAX_RBUFF_SZ;
> +		fr->is_empty = 1;
> +		fr->next_desc = virt_to_phys(&priv->fifo_rx[(i + 1) % NO_OF_RX_FIFOS]);
> +
> +		/* invalidate */
> +		dma_sync_single_for_device((unsigned long)rxbuf, MAX_RBUFF_SZ,
> +					DMA_FROM_DEVICE);
> +
> +		rxbuf += MAX_RBUFF_SZ;
> +	}
> +
> +	/* Clean Tx BD's */
> +	memset(priv->fifo_tx, 0, TX_RING_SZ);
> +
> +	ag71xx_wr(priv, AG71XX_REG_RX_DESC, virt_to_phys(priv->fifo_rx));
> +	ag71xx_wr(priv, AG71XX_REG_RX_CTRL, RX_CTRL_RXE);
> +
> +	return 1;

Although the return code is not tested by the caller, this function
should return 0 for success.

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
