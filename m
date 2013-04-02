Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UMvKW-0004bu-6N
 for barebox@lists.infradead.org; Tue, 02 Apr 2013 07:08:29 +0000
Date: Tue, 2 Apr 2013 09:08:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130402070826.GH1906@pengutronix.de>
References: <1364465990-9494-1-git-send-email-j.weitzel@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1364465990-9494-1-git-send-email-j.weitzel@phytec.de>
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
Subject: Re: [PATCH] fb: calculate resource end
To: Jan Weitzel <j.weitzel@phytec.de>
Cc: barebox@lists.infradead.org

On Thu, Mar 28, 2013 at 11:19:50AM +0100, Jan Weitzel wrote:
> commit 5f03074 changed storing struct resource end insted of size.
> Fix calculation of end in fb
> 
> Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>

Applied, thanks

Sascha

> ---
>  drivers/video/fb.c |    4 ++--
>  1 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/video/fb.c b/drivers/video/fb.c
> index ee53272..be29695 100644
> --- a/drivers/video/fb.c
> +++ b/drivers/video/fb.c
> @@ -86,7 +86,7 @@ static int fb_setup_mode(struct device_d *dev, struct param_d *param,
>  	if (!ret) {
>  		dev->resource[0].start = (resource_size_t)info->screen_base;
>  		info->cdev.size = info->xres * info->yres * (info->bits_per_pixel >> 3);
> -		dev->resource[0].end = info->cdev.size - 1;
> +		dev->resource[0].end = dev->resource[0].start + info->cdev.size - 1;
>  		dev_param_set_generic(dev, param, val);
>  	} else
>  		info->cdev.size = 0;
> @@ -116,7 +116,7 @@ int register_framebuffer(struct fb_info *info)
>  	info->cdev.priv = info;
>  	dev->resource = xzalloc(sizeof(struct resource));
>  	dev->resource[0].start = (resource_size_t)info->screen_base;
> -	dev->resource[0].end = info->cdev.size - 1;
> +	dev->resource[0].end = dev->resource[0].start + info->cdev.size - 1;
>  	dev->resource[0].flags = IORESOURCE_MEM;
>  	dev->num_resources = 1;
>  
> -- 
> 1.7.0.4
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
