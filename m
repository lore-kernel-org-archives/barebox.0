Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBCsY-00047i-Gz
 for barebox@lists.infradead.org; Mon, 09 Mar 2020 07:31:12 +0000
Date: Mon, 9 Mar 2020 08:31:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200309073106.GE3335@pengutronix.de>
References: <20200302114955.13897-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200302114955.13897-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 1/3] video/ssd1307fb: fix NULL pointer dereference in probe
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, bst@pengutronix.de

On Mon, Mar 02, 2020 at 12:49:53PM +0100, Ahmad Fatoum wrote:
> info->priv is dereferenced before a valid value has been set leading to
> a NULL pointer dereference in the probe function. Fix this.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---

Applied, thanks

Sascha

> Cc: bst@pengutronix.de
> Cc: str@pengutronix.de
> 
> Hi,
> 
> how did this ever work? Does the platform that you used this on not trap
> on NULL-pointer dereference?
> 
> Cheers,
> ---
>  drivers/video/ssd1307fb.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/video/ssd1307fb.c b/drivers/video/ssd1307fb.c
> index 70077e43a879..83a561a3e1fc 100644
> --- a/drivers/video/ssd1307fb.c
> +++ b/drivers/video/ssd1307fb.c
> @@ -405,8 +405,9 @@ static int ssd1307fb_probe(struct device_d *dev)
>  	}
>  
>  	info = xzalloc(sizeof(struct fb_info));
> +	par = xzalloc(sizeof(*par));
>  
> -	par = info->priv;
> +	info->priv = par;
>  	par->info = info;
>  	par->client = client;
>  
> @@ -574,6 +575,7 @@ reset_oled_error:
>  	free(vmem);
>  fb_alloc_error:
>  	regulator_disable(par->vbat);
> +	free(par);
>  	free(info);
>  	return ret;
>  }
> -- 
> 2.25.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
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
