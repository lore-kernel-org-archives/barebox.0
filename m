Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S4AF7-0002Tp-Bd
 for barebox@lists.infradead.org; Sun, 04 Mar 2012 12:08:50 +0000
Date: Sun, 4 Mar 2012 13:08:41 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120304120841.GR3852@pengutronix.de>
References: <1330712410-26479-1-git-send-email-plagnioj@jcrosoft.com>
 <1330712410-26479-4-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1330712410-26479-4-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 4/5] macb: implement alloc_packet & free_packet
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Mar 02, 2012 at 07:20:09PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> We need to have a non cached buffer.
> Need when MMU enabled.
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  drivers/net/macb.c |   19 ++++++++++++++++---
>  1 files changed, 16 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/macb.c b/drivers/net/macb.c
> index d79da72..9b54afa 100644
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
> @@ -391,6 +392,16 @@ static int macb_set_ethaddr(struct eth_device *edev, unsigned char *adr)
>  	return 0;
>  }
>  
> +static void *macb_alloc_packet(struct eth_device* edev)
> +{
> +	return dma_alloc_coherent(PKTSIZE);
> +}
> +
> +static void macb_free_packet(struct eth_device* edev, void *packet)
> +{
> +	dma_free_coherent(packet, PKTSIZE);
> +}

Why don't you use dma_flush_range/dma_clean_range like we do in other
drivers?

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
