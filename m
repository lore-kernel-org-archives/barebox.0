Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaZ9e-0007CG-HD
 for barebox@lists.infradead.org; Mon, 18 May 2020 06:21:40 +0000
Date: Mon, 18 May 2020 08:21:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200518062136.GK11869@pengutronix.de>
References: <20200515153947.31109-1-cleger@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200515153947.31109-1-cleger@kalray.eu>
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
Subject: Re: [PATCH] clocksource: kvx: remove unused variable np.
To: Clement Leger <cleger@kalray.eu>
Cc: barebox@lists.infradead.org

On Fri, May 15, 2020 at 05:39:47PM +0200, Clement Leger wrote:
> Remove unused variable np from probe function.
> 
> Signed-off-by: Clement Leger <cleger@kalray.eu>
> ---
>  drivers/clocksource/kvx_timer.c | 1 -
>  1 file changed, 1 deletion(-)

Applied with the period from the subject removed, thanks

Sascha

> 
> diff --git a/drivers/clocksource/kvx_timer.c b/drivers/clocksource/kvx_timer.c
> index f16d77b9d..4125ddbee 100644
> --- a/drivers/clocksource/kvx_timer.c
> +++ b/drivers/clocksource/kvx_timer.c
> @@ -27,7 +27,6 @@ static int kvx_timer_probe(struct device_d *dev)
>  {
>  	struct clk *clk;
>  	uint32_t clk_freq;
> -	struct device_node *np = dev->device_node;
>  
>  	/* Get clock frequency */
>  	clk = clk_get(dev, NULL);
> -- 
> 2.17.1
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
