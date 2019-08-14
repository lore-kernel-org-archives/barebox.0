Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxwJ5-0004jL-OQ
 for barebox@lists.infradead.org; Wed, 14 Aug 2019 16:39:29 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=a3f-osx.local)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>) id 1hxwJ1-0000iB-Va
 for barebox@lists.infradead.org; Wed, 14 Aug 2019 18:39:23 +0200
References: <20190814102729.23857-1-o.rempel@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <fd19aa2b-48d0-d048-5249-d65b4cd7acc8@pengutronix.de>
Date: Wed, 14 Aug 2019 18:39:23 +0200
MIME-Version: 1.0
In-Reply-To: <20190814102729.23857-1-o.rempel@pengutronix.de>
Content-Language: en-US
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
Subject: Re: [PATCH v1 1/2] net: macb: init multiple dummy TX queues
To: barebox@lists.infradead.org



On 14/8/19 12:27, Oleksij Rempel wrote:
> Microchip SAMA5D27 has more then one TX queue. So it will
> go in to TX timeout if only one was initialized.

The driver follows the same code paths for the SAMA5D3 GEM,
so I tested the patches on the KSZ9477-EVB to make sure it
doesn't inadvertently break network there. Looks like it
still works, thus:

Tested-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  drivers/net/macb.c | 32 ++++++++++++++++++++++++++------
>  drivers/net/macb.h |  7 +++++++
>  2 files changed, 33 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/net/macb.c b/drivers/net/macb.c
> index a0411d6e4b..0b3c909433 100644
> --- a/drivers/net/macb.c
> +++ b/drivers/net/macb.c
> @@ -322,6 +322,29 @@ static void macb_configure_dma(struct macb_device *bp)
>  	}
>  }
>  
> +static int gmac_init_dummy_tx_queues(struct macb_device *macb)
> +{
> +	int i, num_queues = 1;
> +	u32 queue_mask;
> +
> +	/* bit 0 is never set but queue 0 always exists */
> +	queue_mask = gem_readl(macb, DCFG6) & 0xff;
> +	queue_mask |= 0x1;
> +
> +	for (i = 1; i < MACB_MAX_QUEUES; i++)
> +		if (queue_mask & (1 << i))
> +			num_queues++;
> +
> +	macb->gem_q1_descs[0].addr = 0;
> +	macb->gem_q1_descs[0].ctrl = MACB_BIT(TX_WRAP) |
> +		MACB_BIT(TX_LAST) | MACB_BIT(TX_USED);
> +
> +	for (i = 1; i < num_queues; i++)
> +		gem_writel_queue_TBQP(macb, &macb->gem_q1_descs[0], i - 1);
> +
> +	return 0;
> +}
> +
>  static void macb_init(struct macb_device *macb)
>  {
>  	unsigned long paddr, val = 0;
> @@ -357,16 +380,13 @@ static void macb_init(struct macb_device *macb)
>  	macb_writel(macb, TBQP, (ulong)macb->tx_ring);
>  
>  	if (macb->is_gem && macb->gem_q1_descs) {
> -		/* Disable the second priority queue */
> -		macb->gem_q1_descs[0].addr = 0;
> -		macb->gem_q1_descs[0].ctrl = MACB_BIT(TX_WRAP) |
> -				MACB_BIT(TX_LAST) |
> -				MACB_BIT(TX_USED);
> +		gmac_init_dummy_tx_queues(macb);
> +
> +		/* Disable the second priority rx queue */
>  		macb->gem_q1_descs[1].addr = MACB_BIT(RX_USED) |
>  				MACB_BIT(RX_WRAP);
>  		macb->gem_q1_descs[1].ctrl = 0;
>  
> -		gem_writel(macb, TQ1, (ulong)&macb->gem_q1_descs[0]);
>  		gem_writel(macb, RQ1, (ulong)&macb->gem_q1_descs[1]);
>  	}
>  
> diff --git a/drivers/net/macb.h b/drivers/net/macb.h
> index fda4d08663..2e5b64e5e9 100644
> --- a/drivers/net/macb.h
> +++ b/drivers/net/macb.h
> @@ -5,6 +5,8 @@
>  #ifndef __DRIVERS_MACB_H__
>  #define __DRIVERS_MACB_H__
>  
> +#define MACB_MAX_QUEUES 8
> +
>  /* MACB register offsets */
>  #define MACB_NCR				0x0000
>  #define MACB_NCFGR				0x0004
> @@ -75,6 +77,8 @@
>  #define GEM_TQ1					0x0440
>  #define GEM_RQ1					0x0480
>  
> +#define GEM_TBQP(hw_q)				(0x0440 + ((hw_q) << 2))
> +
>  /* Bitfields in NCR */
>  #define MACB_LB_OFFSET				0
>  #define MACB_LB_SIZE				1
> @@ -436,4 +440,7 @@ struct macb_dma_desc {
>  #define MACB_TX_USED_OFFSET			31
>  #define MACB_TX_USED_SIZE			1
>  
> +#define gem_writel_queue_TBQP(port, value, queue_num)	\
> +	writel((value), (port)->regs + GEM_TBQP(queue_num))
> +
>  #endif /* __DRIVERS_MACB_H__ */
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
