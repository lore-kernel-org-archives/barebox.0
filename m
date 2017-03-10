Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cmExD-0002Xs-HO
 for barebox@lists.infradead.org; Fri, 10 Mar 2017 07:27:17 +0000
Date: Fri, 10 Mar 2017 08:26:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170310072649.whkr4d4vpwuvd2kn@pengutronix.de>
References: <1489053441-12772-1-git-send-email-plagnioj@jcrosoft.com>
 <1489053441-12772-2-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1489053441-12772-2-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 2/2] video: some framebuffer such as efi does support
 enable/disable
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Thu, Mar 09, 2017 at 10:57:21AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> so allow them to do not pass this function via fbops
> and indicate they are always on.
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  drivers/video/fb.c | 29 ++++++++++++++++++++++++-----
>  1 file changed, 24 insertions(+), 5 deletions(-)

I partly applied this one on top of

[PATCH] video: call fb_[en|dis]able instead of fops directly

> 
> diff --git a/drivers/video/fb.c b/drivers/video/fb.c
> index 6b88f2df9..63a818eb2 100644
> --- a/drivers/video/fb.c
> +++ b/drivers/video/fb.c
> @@ -19,10 +19,12 @@ static int fb_ioctl(struct cdev* cdev, int req, void *data)
>  		*fb = info;
>  		break;
>  	case FBIO_ENABLE:
> -		info->fbops->fb_enable(info);
> +		if (info->fbops->fb_enable)
> +			info->fbops->fb_enable(info);
>  		break;
>  	case FBIO_DISABLE:
> -		info->fbops->fb_disable(info);
> +		if (info->fbops->fb_disable)
> +			info->fbops->fb_disable(info);
>  		break;
>  	default:
>  		return -ENOSYS;
> @@ -94,7 +96,8 @@ int fb_enable(struct fb_info *info)
>  	if (ret)
>  		return ret;
>  
> -	info->fbops->fb_enable(info);
> +	if (info->fbops->fb_enable)
> +		info->fbops->fb_enable(info);
>  
>  	info->enabled = true;
>  
> @@ -106,7 +109,8 @@ int fb_disable(struct fb_info *info)
>  	if (!info->enabled)
>  		return 0;
>  
> -	info->fbops->fb_disable(info);
> +	if (info->fbops->fb_disable)
> +		info->fbops->fb_disable(info);

Making fb_enable/disable optional is fine and I applied this part.

>  
>  	fb_release_shadowfb(info);
>  
> @@ -266,6 +270,8 @@ static int fb_set_shadowfb(struct param_d *p, void *priv)
>  	return fb_alloc_shadowfb(info);
>  }
>  
> +struct fb_ops dummy_fbops;
> +
>  int register_framebuffer(struct fb_info *info)
>  {
>  	int id = get_free_deviceid("fb");
> @@ -273,6 +279,16 @@ int register_framebuffer(struct fb_info *info)
>  	int ret, num_modes, i;
>  	const char **names;
>  
> +	if (!info->p_enable) {
> +		if (!info->fbops)
> +			return -EINVAL;
> +		if (!info->fbops->fb_enable && !info->fbops->fb_disable)
> +			return -EINVAL;
> +	} else {
> +		if (!info->fbops)
> +			info->fbops = &dummy_fbops;
> +	}

Making fbops optional is not what the patch descsription says.

> +
>  	dev = &info->dev;
>  
>  	/*
> @@ -308,7 +324,10 @@ int register_framebuffer(struct fb_info *info)
>  	if (ret)
>  		goto err_free;
>  
> -	dev_add_param_bool(dev, "enable", fb_enable_set, NULL,
> +	if (info->p_enable)
> +		dev_add_param_int_ro(dev, "enable", info->p_enable, "%d");
> +	else
> +		dev_add_param_bool(dev, "enable", fb_enable_set, NULL,
>  			&info->p_enable, info);

Even when the framebuffer cannot physically disabled I think we
shouldn't throw an error when the user tries to.

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
