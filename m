Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WhDDF-0002r1-CC
 for barebox@lists.infradead.org; Mon, 05 May 2014 07:21:21 +0000
Date: Mon, 5 May 2014 09:21:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140505072100.GS5858@pengutronix.de>
References: <1398846723-10241-1-git-send-email-y>
 <5360b519.c62a980a.05b6.526d@mx.google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5360b519.c62a980a.05b6.526d@mx.google.com>
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
Subject: Re: [PATCH 2/3] net cpsw: fix rx stability under heavy network load
To: chf.fritz@googlemail.com
Cc: barebox@lists.infradead.org

On Wed, Apr 30, 2014 at 10:32:02AM +0200, chf.fritz@googlemail.com wrote:
> From: Christoph Fritz <chf.fritz@googlemail.com>
> 
> RX DMA Head Descriptor Pointer can get 0 when there is a lot of traffic,
> which results in a timeout error. A good way to provoke this error is by
> sending lots of ARP requests. This patch makes sure that the RX DMA Head
> Descriptor Pointer is set.
> 
> The origin driver, from which this is derived, already contains this fix.
> 
> Signed-off-by: Christoph Fritz <chf.fritz@googlemail.com>

Nice fix, thanks. I also stumbled upon this.

Applied

Sascha

> ---
>  drivers/net/cpsw.c |    7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/cpsw.c b/drivers/net/cpsw.c
> index 52adf50..ec3263d 100644
> --- a/drivers/net/cpsw.c
> +++ b/drivers/net/cpsw.c
> @@ -741,8 +741,13 @@ static int cpdma_process(struct cpsw_priv *priv, struct cpdma_chan *chan,
>  	if (buffer)
>  		*buffer = (void *)readl(&desc->sw_buffer);
>  
> -	if (status & CPDMA_DESC_OWNER)
> +	if (status & CPDMA_DESC_OWNER) {
> +		if (readl(chan->hdp) == 0) {
> +			if (readl(&desc->hw_mode) & CPDMA_DESC_OWNER)
> +				writel((u32)desc, chan->hdp);
> +		}
>  		return -EBUSY;
> +	}
>  
>  	chan->head = (void *)readl(&desc->hw_next);
>  
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
