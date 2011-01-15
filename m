Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pe7hQ-0006SJ-Q6
	for barebox@lists.infradead.org; Sat, 15 Jan 2011 15:05:53 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Sat, 15 Jan 2011 16:04:18 +0100
References: <1295034699-18863-1-git-send-email-s.hauer@pengutronix.de>
	<1295034699-18863-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1295034699-18863-5-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201101151604.18543.jbe@pengutronix.de>
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
Subject: Re: [PATCH 4/7] video stm/mx2x: allow to pass in fb memory from
	platform data
To: barebox@lists.infradead.org

Sascha Hauer wrote:
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/mach-stm/include/mach/fb.h |    3 +++
>  drivers/video/stm.c                 |   11 +++++++++--
>  2 files changed, 12 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm/mach-stm/include/mach/fb.h
> b/arch/arm/mach-stm/include/mach/fb.h index 65e3be2..2eade76 100644
> --- a/arch/arm/mach-stm/include/mach/fb.h
> +++ b/arch/arm/mach-stm/include/mach/fb.h
> @@ -37,6 +37,9 @@ struct imx_fb_videomode {
>
>  	unsigned dotclk_delay;	/**< refer manual HW_LCDIF_VDCTRL4 register */
>  	unsigned ld_intf_width;	/**< refer STMLCDIF_* macros */
> +
> +	void *fixed_screen;	/**< if != NULL use this as framebuffer memory */
> +	unsigned fixed_screen_size; /**< framebuffer memory size for fixed_screen
> */ };
>
>  #endif /* __MACH_FB_H */
> diff --git a/drivers/video/stm.c b/drivers/video/stm.c
> index d2add41..fc90b6a 100644
> --- a/drivers/video/stm.c
> +++ b/drivers/video/stm.c
> @@ -298,8 +298,15 @@ static int stmfb_activate_var(struct fb_info *fb_info)
>  	size = calc_line_length(mode->xres, fb_info->bits_per_pixel) *
>  		mode->yres;
>
> -	fb_info->screen_base = xrealloc(fb_info->screen_base, size);
> -	fbi->memory_size = size;
> +	if (pdata->fixed_screen) {
> +		if (pdata->fixed_screen_size < size)
> +			return -ENOMEM;
> +		fb_info->screen_base = pdata->fixed_screen;
> +		fbi->memory_size = pdata->fixed_screen_size;
> +	} else {
> +		fb_info->screen_base = xrealloc(fb_info->screen_base, size);
> +		fbi->memory_size = size;
> +	}
>
>  	/** @todo ensure HCLK is active at this point of time! */

Here for the case a user selects a screen resolution and colour depth that 
needs more memory than available, the routine returns with an error message 
for the fixed sized screen and with a reboot for the dynamic allocation case.

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
