Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo4.mail-out.ovh.net ([178.33.104.253]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VZf4g-0000s1-6M
 for barebox@lists.infradead.org; Fri, 25 Oct 2013 10:57:03 +0000
Received: from mail614.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 12350FFAED8
 for <barebox@lists.infradead.org>; Fri, 25 Oct 2013 12:57:30 +0200 (CEST)
Date: Fri, 25 Oct 2013 12:58:27 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20131025105827.GE26639@ns203013.ovh.net>
References: <1382646226-24871-1-git-send-email-a.heider@gmail.com>
 <1382646226-24871-2-git-send-email-a.heider@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1382646226-24871-2-git-send-email-a.heider@gmail.com>
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
Subject: Re: [PATCH 1/6] fb: add a stride value to struct fb_info
To: Andre Heider <a.heider@gmail.com>
Cc: barebox@lists.infradead.org

On 22:23 Thu 24 Oct     , Andre Heider wrote:
> Add support for framebuffers with noncontiguous horizontal lines.
> 
> Video drivers can set this value if the hardware requires it.
> In case a driver does not set it, the current value of
> xres * (bpp / 8) is used instead.

we never use this in linux ever

so do not do this in barebox either

Best Regards,
J.
> 
> Signed-off-by: Andre Heider <a.heider@gmail.com>
> ---
>  drivers/video/fb.c | 11 +++++++++--
>  include/fb.h       |  1 +
>  2 files changed, 10 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/video/fb.c b/drivers/video/fb.c
> index 420e4e3..e80fab9 100644
> --- a/drivers/video/fb.c
> +++ b/drivers/video/fb.c
> @@ -72,12 +72,16 @@ static int fb_setup_mode(struct device_d *dev, struct param_d *param,
>  
>  	info->xres = info->mode->xres;
>  	info->yres = info->mode->yres;
> +	info->stride = 0;
>  
>  	ret = info->fbops->fb_activate_var(info);
>  
> +	if (!info->stride)
> +		info->stride = info->xres * (info->bits_per_pixel >> 3);
> +
>  	if (!ret) {
>  		dev->resource[0].start = (resource_size_t)info->screen_base;
> -		info->cdev.size = info->xres * info->yres * (info->bits_per_pixel >> 3);
> +		info->cdev.size = info->stride * info->yres;
>  		dev->resource[0].end = dev->resource[0].start + info->cdev.size - 1;
>  		dev_param_set_generic(dev, param, val);
>  	} else
> @@ -122,9 +126,12 @@ int register_framebuffer(struct fb_info *info)
>  
>  	dev = &info->dev;
>  
> +	if (!info->stride)
> +		info->stride = info->xres * (info->bits_per_pixel >> 3);
> +
>  	info->cdev.ops = &fb_ops;
>  	info->cdev.name = asprintf("fb%d", id);
> -	info->cdev.size = info->xres * info->yres * (info->bits_per_pixel >> 3);
> +	info->cdev.size = info->stride * info->yres;
>  	info->cdev.dev = dev;
>  	info->cdev.priv = info;
>  	dev->resource = xzalloc(sizeof(struct resource));
> diff --git a/include/fb.h b/include/fb.h
> index df4ba8e..ba46954 100644
> --- a/include/fb.h
> +++ b/include/fb.h
> @@ -94,6 +94,7 @@ struct fb_info {
>  	u32 xres;			/* visible resolution		*/
>  	u32 yres;
>  	u32 bits_per_pixel;		/* guess what			*/
> +	u32 stride;			/* number of bytes in each line	*/
>  
>  	u32 grayscale;			/* != 0 Graylevels instead of colors */
>  
> -- 
> 1.8.3.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
