Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zx9Cq-0006EL-O8
 for barebox@lists.infradead.org; Fri, 13 Nov 2015 07:55:37 +0000
Date: Fri, 13 Nov 2015 08:55:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151113075515.GB8526@pengutronix.de>
References: <1447356320-6931-1-git-send-email-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1447356320-6931-1-git-send-email-dev@lynxeye.de>
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
Subject: Re: [PATCH] net: rtl8169: get rid of DMA_ADDRESS_BROKEN
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Thu, Nov 12, 2015 at 08:25:20PM +0100, Lucas Stach wrote:
> Don't assume a 1:1 virt to phys mapping, but use the real physical
> address returned by the dma alloc function.
> 
> Signed-off-by: Lucas Stach <dev@lynxeye.de>
> ---

Applied, thanks

Sascha

>  drivers/net/rtl8169.c | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/rtl8169.c b/drivers/net/rtl8169.c
> index 47d5e4a8..9ec0178 100644
> --- a/drivers/net/rtl8169.c
> +++ b/drivers/net/rtl8169.c
> @@ -51,10 +51,12 @@ struct rtl8169_priv {
>  	int			chipset;
>  
>  	volatile struct bufdesc	*tx_desc;
> +	dma_addr_t		tx_desc_phys;
>  	void			*tx_buf;
>  	unsigned int		cur_tx;
>  
>  	volatile struct bufdesc	*rx_desc;
> +	dma_addr_t		rx_desc_phys;
>  	void			*rx_buf;
>  	unsigned int		cur_rx;
>  
> @@ -228,10 +230,10 @@ static void rtl8169_init_ring(struct rtl8169_priv *priv)
>  	priv->cur_rx = priv->cur_tx = 0;
>  
>  	priv->tx_desc = dma_alloc_coherent(NUM_TX_DESC *
> -				sizeof(struct bufdesc), DMA_ADDRESS_BROKEN);
> +				sizeof(struct bufdesc), &priv->tx_desc_phys);
>  	priv->tx_buf = malloc(NUM_TX_DESC * PKT_BUF_SIZE);
>  	priv->rx_desc = dma_alloc_coherent(NUM_RX_DESC *
> -				sizeof(struct bufdesc), DMA_ADDRESS_BROKEN);
> +				sizeof(struct bufdesc), &priv->rx_desc_phys);
>  	priv->rx_buf = malloc(NUM_RX_DESC * PKT_BUF_SIZE);
>  	dma_sync_single_for_device((unsigned long)priv->rx_buf,
>  				   NUM_RX_DESC * PKT_BUF_SIZE, DMA_FROM_DEVICE);
> @@ -275,9 +277,9 @@ static void rtl8169_hw_start(struct rtl8169_priv *priv)
>  	/* Set DMA burst size and Interframe Gap Time */
>  	RTL_W32(priv, TxConfig, (6 << TxDMAShift) | (3 << TxInterFrameGapShift));
>  
> -	RTL_W32(priv, TxDescStartAddrLow, virt_to_phys(priv->tx_desc));
> +	RTL_W32(priv, TxDescStartAddrLow, priv->tx_desc_phys);
>  	RTL_W32(priv, TxDescStartAddrHigh, 0);
> -	RTL_W32(priv, RxDescStartAddrLow, virt_to_phys(priv->rx_desc));
> +	RTL_W32(priv, RxDescStartAddrLow, priv->rx_desc_phys);
>  	RTL_W32(priv, RxDescStartAddrHigh, 0);
>  
>  	/* RTL-8169sc/8110sc or later version */
> -- 
> 2.5.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
