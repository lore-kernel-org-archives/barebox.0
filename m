Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cyFQ0-0000Hy-Ay
 for barebox@lists.infradead.org; Wed, 12 Apr 2017 10:22:34 +0000
Date: Wed, 12 Apr 2017 12:22:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170412102210.rff76p44ai4j6hag@pengutronix.de>
References: <20170412043840.18823-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170412043840.18823-1-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] drivers: video: drop unused of_display_timings_exist()
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Apr 12, 2017 at 07:38:40AM +0300, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  drivers/video/of_display_timing.c | 19 -------------------
>  1 file changed, 19 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/video/of_display_timing.c b/drivers/video/of_display_timing.c
> index 6a5bf62a3..20f9354a1 100644
> --- a/drivers/video/of_display_timing.c
> +++ b/drivers/video/of_display_timing.c
> @@ -188,22 +188,3 @@ entryfail:
>  	return NULL;
>  }
>  EXPORT_SYMBOL_GPL(of_get_display_timings);
> -
> -/**
> - * of_display_timings_exist - check if a display-timings node is provided
> - * @np: device_node with the timing
> - **/
> -int of_display_timings_exist(struct device_node *np)
> -{
> -	struct device_node *timings_np;
> -
> -	if (!np)
> -		return -EINVAL;
> -
> -	timings_np = of_parse_phandle(np, "display-timings", 0);
> -	if (!timings_np)
> -		return -EINVAL;
> -
> -	return 1;
> -}
> -EXPORT_SYMBOL_GPL(of_display_timings_exist);
> -- 
> 2.11.0
> 
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
