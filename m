Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo5.mail-out.ovh.net ([178.33.45.10]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UFhgF-00086O-MJ
 for barebox@lists.infradead.org; Wed, 13 Mar 2013 09:09:04 +0000
Received: from mail183.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 43087FF955E
 for <barebox@lists.infradead.org>; Wed, 13 Mar 2013 10:20:28 +0100 (CET)
Date: Wed, 13 Mar 2013 10:04:45 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130313090445.GE1568@game.jcrosoft.org>
References: <1363164494-3614-1-git-send-email-s.trumtrar@pengutronix.de>
 <1363164494-3614-2-git-send-email-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1363164494-3614-2-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH 2/2] net: macb: turn off endian_swp_pkt_en
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org, Nicolas Ferre <nicolas.ferre@atmel.com>

On 09:48 Wed 13 Mar     , Steffen Trumtrar wrote:
> The core has a bit for swapping packet data endianism.
> Reset default from Cadence is off. Xilinx however, that uses this core on the
> Zynq SoCs, opted for on. Turn it off for all devices.

is this xilinx specifc?

on at91 and other we do not need it

Best Regards,
J.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> Cc: Nicolas Ferre <nicolas.ferre@atmel.com>
> Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  drivers/net/macb.c | 1 +
>  drivers/net/macb.h | 2 ++
>  2 files changed, 3 insertions(+)
> 
> diff --git a/drivers/net/macb.c b/drivers/net/macb.c
> index a12eea7..005234e 100644
> --- a/drivers/net/macb.c
> +++ b/drivers/net/macb.c
> @@ -277,6 +277,7 @@ static void macb_configure_dma(struct macb_device *bp)
>  		dmacfg |= GEM_BF(FBLDO, 16);
>  		dmacfg |= GEM_BIT(TXPBMS) | GEM_BF(RXBMS, -1L);
>  		dmacfg |= GEM_BIT(DDRP);
> +		dmacfg &= ~GEM_BIT(ENDIA);
>  		gem_writel(bp, DMACFG, dmacfg);
>  	}
>  }
> diff --git a/drivers/net/macb.h b/drivers/net/macb.h
> index cadd561..1be9ff9 100644
> --- a/drivers/net/macb.h
> +++ b/drivers/net/macb.h
> @@ -168,6 +168,8 @@
>  /* Bitfields in DMACFG. */
>  #define GEM_FBLDO_OFFSET			0
>  #define GEM_FBLDO_SIZE				5
> +#define GEM_ENDIA_OFFSET			7
> +#define GEM_ENDIA_SIZE				1
>  #define GEM_RXBMS_OFFSET			8
>  #define GEM_RXBMS_SIZE				2
>  #define GEM_TXPBMS_OFFSET			10
> -- 
> 1.8.2.rc2
> 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
