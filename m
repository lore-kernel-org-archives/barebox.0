Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1khEvL-0001Bm-Je
 for barebox@lists.infradead.org; Mon, 23 Nov 2020 16:42:44 +0000
Date: Mon, 23 Nov 2020 17:42:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201123164242.GI24489@pengutronix.de>
References: <20201118111444.10127-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201118111444.10127-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH] fb: sync enable device parameter with internal state
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Nov 18, 2020 at 12:14:45PM +0100, Ahmad Fatoum wrote:
> So far fb.enable only reflected whether the fb was enabled/disabled via
> device parameter. Enabling/disabling the fb via ioctl left the
> parameter untouched. Remedy this.
> 
> While at it, have setting of fb.enable if the underlying
> fb_enable/fb_disable fails as well.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/video/fb.c | 21 ++++++++++++---------
>  1 file changed, 12 insertions(+), 9 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/video/fb.c b/drivers/video/fb.c
> index 2d82bc01fa04..113c1419a1c1 100644
> --- a/drivers/video/fb.c
> +++ b/drivers/video/fb.c
> @@ -119,22 +119,25 @@ int fb_disable(struct fb_info *info)
>  	return 0;
>  }
>  
> +static int fb_enable_get(struct param_d *param, void *priv)
> +{
> +	struct fb_info *info = priv;
> +
> +	info->p_enable = info->enabled;
> +	return 0;
> +}
> +
>  static int fb_enable_set(struct param_d *param, void *priv)
>  {
>  	struct fb_info *info = priv;
> -	int enable;
>  
>  	if (!info->mode)
>  		return -EINVAL;
>  
> -	enable = info->p_enable;
> -
> -	if (enable)
> -		fb_enable(info);
> +	if (info->p_enable)
> +		return fb_enable(info);
>  	else
> -		fb_disable(info);
> -
> -	return 0;
> +		return fb_disable(info);
>  }
>  
>  static struct fb_videomode *fb_num_to_mode(struct fb_info *info, int num)
> @@ -314,7 +317,7 @@ int register_framebuffer(struct fb_info *info)
>  	if (ret)
>  		goto err_free;
>  
> -	dev_add_param_bool(dev, "enable", fb_enable_set, NULL,
> +	dev_add_param_bool(dev, "enable", fb_enable_set, fb_enable_get,
>  			&info->p_enable, info);
>  
>  	if (IS_ENABLED(CONFIG_DRIVER_VIDEO_EDID))
> -- 
> 2.29.2
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
