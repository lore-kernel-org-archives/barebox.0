Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gqz9q-000643-Cl
 for barebox@lists.infradead.org; Tue, 05 Feb 2019 11:44:56 +0000
Date: Tue, 5 Feb 2019 12:44:52 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190205114452.c22umd6nx3zqrjjk@pengutronix.de>
References: <20190201125948.15480-1-abbotti@mev.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190201125948.15480-1-abbotti@mev.co.uk>
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
Subject: Re: [PATCH] net: designware: drop bad RX frames
To: Ian Abbott <abbotti@mev.co.uk>
Cc: barebox@lists.infradead.org

On Fri, Feb 01, 2019 at 12:59:48PM +0000, Ian Abbott wrote:
> In dwc_ether_rx(), check the RX descriptor status for various error
> conditions.  On error, issue a warning with the error status bits and
> drop the received frame.
> 
> Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
> ---
>  drivers/net/designware.c | 42 +++++++++++++++++++++++++++++++---------
>  1 file changed, 33 insertions(+), 9 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/net/designware.c b/drivers/net/designware.c
> index ad70967e8..21134cd5a 100644
> --- a/drivers/net/designware.c
> +++ b/drivers/net/designware.c
> @@ -326,24 +326,48 @@ static int dwc_ether_rx(struct eth_device *dev)
>  
>  	u32 status = desc_p->txrx_status;
>  	int length = 0;
> +	int ret = 0;
>  
>  	/* Check  if the owner is the CPU */
>  	if (status & DESC_RXSTS_OWNBYDMA)
>  		return 0;
>  
> -	length = (status & DESC_RXSTS_FRMLENMSK) >>
> -		 DESC_RXSTS_FRMLENSHFT;
> +	if ((status & (DESC_RXSTS_ERROR | DESC_RXSTS_DAFILTERFAIL |
> +		       DESC_RXSTS_SAFILTERFAIL)) ||
> +	    (status & (DESC_RXSTS_RXIPC_GIANTFRAME |
> +		       DESC_RXSTS_RXFRAMEETHER)) ==
> +	    DESC_RXSTS_RXIPC_GIANTFRAME) {
> +		/* Error in packet - discard it */
> +		dev_warn(&dev->dev, "Rx error status (%x)\n",
> +			 status & (DESC_RXSTS_DAFILTERFAIL |
> +				   DESC_RXSTS_ERROR |
> +				   DESC_RXSTS_RXTRUNCATED |
> +				   DESC_RXSTS_SAFILTERFAIL |
> +				   DESC_RXSTS_RXIPC_GIANTFRAME |
> +				   DESC_RXSTS_RXDAMAGED |
> +				   DESC_RXSTS_RXIPC_GIANT |
> +				   DESC_RXSTS_RXCOLLISION |
> +				   DESC_RXSTS_RXFRAMEETHER |
> +				   DESC_RXSTS_RXWATCHDOG |
> +				   DESC_RXSTS_RXMIIERROR |
> +				   DESC_RXSTS_RXCRC));
> +		ret = -EIO;
> +	} else {
> +		length = (status & DESC_RXSTS_FRMLENMSK) >>
> +			 DESC_RXSTS_FRMLENSHFT;
> +
> +		dma_sync_single_for_cpu((unsigned long)desc_p->dmamac_addr,
> +					length, DMA_FROM_DEVICE);
> +		net_receive(dev, desc_p->dmamac_addr, length);
> +		dma_sync_single_for_device((unsigned long)desc_p->dmamac_addr,
> +					   length, DMA_FROM_DEVICE);
> +		ret = length;
> +	}
>  
>  	/*
>  	 * Make the current descriptor valid again and go to
>  	 * the next one
>  	 */
> -	dma_sync_single_for_cpu((unsigned long)desc_p->dmamac_addr, length,
> -				DMA_FROM_DEVICE);
> -	net_receive(dev, desc_p->dmamac_addr, length);
> -	dma_sync_single_for_device((unsigned long)desc_p->dmamac_addr, length,
> -				   DMA_FROM_DEVICE);
> -
>  	desc_p->txrx_status |= DESC_RXSTS_OWNBYDMA;
>  
>  	/* Test the wrap-around condition. */
> @@ -352,7 +376,7 @@ static int dwc_ether_rx(struct eth_device *dev)
>  
>  	priv->rx_currdescnum = desc_num;
>  
> -	return length;
> +	return ret;
>  }
>  
>  static void dwc_ether_halt (struct eth_device *dev)
> -- 
> 2.20.1
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
