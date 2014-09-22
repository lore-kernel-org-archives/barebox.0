Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XVviq-0006Dw-PT
 for barebox@lists.infradead.org; Mon, 22 Sep 2014 04:59:37 +0000
Date: Mon, 22 Sep 2014 06:59:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140922045913.GL4992@pengutronix.de>
References: <1410949295-30296-1-git-send-email-voice.shen@atmel.com>
 <1410949295-30296-6-git-send-email-voice.shen@atmel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1410949295-30296-6-git-send-email-voice.shen@atmel.com>
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
Subject: Re: [PATCH 5/9] net: macb: using default value for FBLDO
To: Bo Shen <voice.shen@atmel.com>
Cc: barebox@lists.infradead.org

On Wed, Sep 17, 2014 at 06:21:31PM +0800, Bo Shen wrote:
> Signed-off-by: Bo Shen <voice.shen@atmel.com>
> ---
> 
>  drivers/net/macb.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/net/macb.c b/drivers/net/macb.c
> index 12a2a3c..ef49f74 100644
> --- a/drivers/net/macb.c
> +++ b/drivers/net/macb.c
> @@ -304,7 +304,6 @@ static void macb_configure_dma(struct macb_device *bp)
>  	if (macb_is_gem(bp)) {
>  		dmacfg = gem_readl(bp, DMACFG) & ~GEM_BF(RXBS, -1L);
>  		dmacfg |= GEM_BF(RXBS, bp->rx_buffer_size / RX_BUFFER_MULTIPLE);
> -		dmacfg |= GEM_BF(FBLDO, 16);

Why is this done? Does this still work on other SoCs?

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
