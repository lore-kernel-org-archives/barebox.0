Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TGOgC-0004Zq-IU
 for barebox@lists.infradead.org; Tue, 25 Sep 2012 06:31:37 +0000
Date: Tue, 25 Sep 2012 08:31:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120925063135.GX1322@pengutronix.de>
References: <1348517321-28652-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1348517321-28652-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [for next PATCH 1/1] macb: fix typos in the phy_interface
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Sep 24, 2012 at 10:08:41PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> the RMII is set a RGMII and the flags are only check if MII
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

Applied, thanks

Sascha

> ---
>  drivers/net/macb.c |   10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/net/macb.c b/drivers/net/macb.c
> index 15548cf..64970ba 100644
> --- a/drivers/net/macb.c
> +++ b/drivers/net/macb.c
> @@ -439,13 +439,13 @@ static int macb_probe(struct device_d *dev)
>  	macb->miibus.priv = macb;
>  	macb->miibus.parent = dev;
>  
> -	if (pdata->flags & AT91SAM_ETHER_RMII) {
> -		macb->interface = PHY_INTERFACE_MODE_RGMII;
> -	} else {
> +	if (pdata->flags & AT91SAM_ETHER_RMII)
> +		macb->interface = PHY_INTERFACE_MODE_RMII;
> +	else
>  		macb->interface = PHY_INTERFACE_MODE_MII;
> -		macb->phy_flags = pdata->flags & AT91SAM_ETHER_FORCE_LINK ?
> +
> +	macb->phy_flags = pdata->flags & AT91SAM_ETHER_FORCE_LINK ?
>  					PHYLIB_FORCE_LINK : 0;
> -	}
>  
>  	macb->rx_buffer = dma_alloc_coherent(CFG_MACB_RX_BUFFER_SIZE);
>  	macb->rx_ring = dma_alloc_coherent(CFG_MACB_RX_RING_SIZE * sizeof(struct macb_dma_desc));
> -- 
> 1.7.10.4
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
