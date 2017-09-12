Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1drekJ-0002Ks-Tz
 for barebox@lists.infradead.org; Tue, 12 Sep 2017 06:32:40 +0000
Date: Tue, 12 Sep 2017 08:32:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170912063208.t34njjp6ebmsvnux@pengutronix.de>
References: <20170818140301.18749-1-linux@rempel-privat.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170818140301.18749-1-linux@rempel-privat.de>
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
Subject: Re: [PATCH v1 1/3] net: ath79: add ag71xx Ethernet driver
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: barebox@lists.infradead.org

On Fri, Aug 18, 2017 at 04:02:59PM +0200, Oleksij Rempel wrote:
> From: Yegor Yefremov <yegorslists@googlemail.com>
> 
> Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  arch/mips/mach-ath79/include/mach/ar71xx_regs.h |  12 +
>  drivers/net/Kconfig                             |   7 +
>  drivers/net/Makefile                            |   1 +
>  drivers/net/ag71xx.c                            | 530 ++++++++++++++++++++++++
>  4 files changed, 550 insertions(+)
>  create mode 100644 drivers/net/ag71xx.c
> 
> +static int ag71xx_ether_send(struct eth_device *edev, void *packet, int length)
> +{
> +	struct ag71xx *priv = edev->priv;
> +	struct device_d *dev = priv->dev;
> +	ag7240_desc_t *f = &priv->fifo_tx[priv->next_tx];
> +	int i;
> +
> +	/* flush */
> +	dma_sync_single_for_device((unsigned long)packet, length, DMA_TO_DEVICE);
> +
> +	f->pkt_start_addr = virt_to_phys(packet);
> +	f->res1 = 0;
> +	f->pkt_size = length;
> +	f->is_empty = 0;
> +	ag71xx_wr(priv, AG71XX_REG_TX_DESC, virt_to_phys(f));
> +	ag71xx_wr(priv, AG71XX_REG_TX_CTRL, TX_CTRL_TXE);
> +
> +	/* flush again?! */
> +	dma_sync_single_for_cpu((unsigned long)packet, length, DMA_TO_DEVICE);
> +
> +	for (i = 0; i < MAX_WAIT; i++) {
> +		udelay(100);
> +		if (f->is_empty) {
> +			break;
> +		}
> +	}
> +

Use a is_timeout() loop. With this you won't have a minimum delay of
100us and also not a granularity of 100us.

> +	if (i == MAX_WAIT) {
> +		dev_err(dev, "Tx Timed out\n");
> +	}
> +

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
