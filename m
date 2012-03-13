Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S7Ruz-0004o4-6f
 for barebox@lists.infradead.org; Tue, 13 Mar 2012 13:37:38 +0000
Date: Tue, 13 Mar 2012 14:37:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120313133730.GI3852@pengutronix.de>
References: <1331551082-7730-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1331551082-7730-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 01/14] macb: fix mmu support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: Patrice VILCHEZ <patrice.vilchez@atmel.com>, barebox@lists.infradead.org, Nicolas Ferre <nicolas.ferre@atmel.com>

On Mon, Mar 12, 2012 at 12:17:49PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

We already have this one in master.

> ---
>  drivers/net/macb.c |    8 +++++---
>  1 files changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/macb.c b/drivers/net/macb.c
> index ab0d1af..48492e5 100644
> --- a/drivers/net/macb.c
> +++ b/drivers/net/macb.c
> @@ -50,6 +50,7 @@
>  #include <mach/board.h>
>  #include <linux/clk.h>
>  #include <linux/err.h>
> +#include <asm/mmu.h>
>  
>  #include "macb.h"
>  
> @@ -118,6 +119,7 @@ static int macb_send(struct eth_device *edev, void *packet,
>  	macb->tx_ring[0].ctrl = ctrl;
>  	macb->tx_ring[0].addr = (ulong)packet;
>  	barrier();
> +	dma_flush_range((ulong) packet, (ulong)packet + length);
>  	writel(MACB_BIT(TE) | MACB_BIT(RE) | MACB_BIT(TSTART), macb->regs + MACB_NCR);
>  
>  	if (ctrl & TXBUF_UNDERRUN)
> @@ -430,9 +432,9 @@ static int macb_probe(struct device_d *dev)
>  	macb->miidev.parent = dev;
>  	macb->flags = pdata->flags;
>  
> -	macb->rx_buffer = xmalloc(CFG_MACB_RX_BUFFER_SIZE);
> -	macb->rx_ring = xmalloc(CFG_MACB_RX_RING_SIZE * sizeof(struct macb_dma_desc));
> -	macb->tx_ring = xmalloc(sizeof(struct macb_dma_desc));
> +	macb->rx_buffer = dma_alloc_coherent(CFG_MACB_RX_BUFFER_SIZE);
> +	macb->rx_ring = dma_alloc_coherent(CFG_MACB_RX_RING_SIZE * sizeof(struct macb_dma_desc));
> +	macb->tx_ring = dma_alloc_coherent(sizeof(struct macb_dma_desc));
>  
>  	macb->regs = dev_request_mem_region(dev, 0);
>  
> -- 
> 1.7.7
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
