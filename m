Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pe7di-0006CT-E1
	for barebox@lists.infradead.org; Sat, 15 Jan 2011 15:02:03 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Sat, 15 Jan 2011 16:00:26 +0100
References: <1295034699-18863-1-git-send-email-s.hauer@pengutronix.de>
	<1295034699-18863-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1295034699-18863-4-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201101151600.26944.jbe@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 3/7] video stm/mx2x: simplify memory allocation
To: barebox@lists.infradead.org

Sascha Hauer wrote:
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/video/stm.c |   26 ++------------------------
>  1 files changed, 2 insertions(+), 24 deletions(-)
>
> diff --git a/drivers/video/stm.c b/drivers/video/stm.c
> index f0abe4c..d2add41 100644
> --- a/drivers/video/stm.c
> +++ b/drivers/video/stm.c
> @@ -209,24 +209,6 @@ static inline unsigned calc_line_length(unsigned ppl,
> unsigned bpp) return (ppl * bpp) >> 3;
>  }
>
> -static int stmfb_memory_mmgt(struct fb_info *fb_info, unsigned size)
> -{
> -	struct imxfb_info *fbi = fb_info->priv;
> -
> -	if (fbi->memory_size != 0) {
> -		free(fb_info->screen_base);
> -		fb_info->screen_base = NULL;
> -		fbi->memory_size = 0;
> -	}
> -
> -	if (fbi->memory_size == 0) {
> -		fb_info->screen_base = xzalloc(size);
> -		fbi->memory_size = size;
> -	}
> -
> -	return 0;
> -}
> -
>  static void stmfb_enable_controller(struct fb_info *fb_info)
>  {
>  	struct imxfb_info *fbi = fb_info->priv;
> @@ -308,7 +290,6 @@ static int stmfb_activate_var(struct fb_info *fb_info)
>  	struct imx_fb_videomode *pdata = fbi->pdata;
>  	struct fb_videomode *mode = fb_info->mode;
>  	uint32_t reg;
> -	int ret;
>  	unsigned size;
>
>  	/*
> @@ -317,11 +298,8 @@ static int stmfb_activate_var(struct fb_info *fb_info)
>  	size = calc_line_length(mode->xres, fb_info->bits_per_pixel) *
>  		mode->yres;
>
> -	ret = stmfb_memory_mmgt(fb_info, size);
> -	if (ret != 0) {
> -		dev_err(fbi->hw_dev, "Cannot allocate framebuffer memory\n");
> -		return ret;
> -	}
> +	fb_info->screen_base = xrealloc(fb_info->screen_base, size);
> +	fbi->memory_size = size;
>
>  	/** @todo ensure HCLK is active at this point of time! */

Maybe we should change here from the x-functions to an allocation routine that 
returns NULL when there is not enough memory. When you define the malloc area 
to small and setup an SXGA resolution with 16 bit colour depth, barebox 
should IMHO bark with a useful error message than rebooting... 

jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | Phone: +49-8766-939 228     |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
