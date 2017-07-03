Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dRxVy-0000mM-95
 for barebox@lists.infradead.org; Mon, 03 Jul 2017 09:19:32 +0000
Message-ID: <1499073547.2308.9.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 03 Jul 2017 11:19:07 +0200
In-Reply-To: <20170630114304.8070-6-andrey.gusakov@cogentembedded.com>
References: <20170630114304.8070-1-andrey.gusakov@cogentembedded.com>
 <20170630114304.8070-6-andrey.gusakov@cogentembedded.com>
Mime-Version: 1.0
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
Subject: Re: [PATCH 5/8] video: tc358767: fix timing calculation
To: Andrey Gusakov <andrey.gusakov@cogentembedded.com>
Cc: barebox@lists.infradead.org, Chris.Healy@zii.aero

Am Freitag, den 30.06.2017, 14:43 +0300 schrieb Andrey Gusakov:
> Fields in HTIM01 and HTIM02 regs should be even.
> Recomended thresh_dly value is max_tu_symbol.
> ---
>  drivers/video/tc358767.c | 25 +++++++++++++++----------
>  1 file changed, 15 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/video/tc358767.c b/drivers/video/tc358767.c
> index 033da4fb2..d2c94c616 100644
> --- a/drivers/video/tc358767.c
> +++ b/drivers/video/tc358767.c
> @@ -730,13 +730,15 @@ err_dpcd_inval:
>  	return -EINVAL;
>  }
>  
> +#define EVEN_HI(val)	((val + 1) & (~0x01))
> +

Please use the commonly used ALIGN instead of defining this on your own.

>  static int tc_set_video_mode(struct tc_data *tc, struct fb_videomode *mode)
>  {
>  	int ret;
>  	int htotal;
>  	int vtotal;
>  	int vid_sync_dly;
> -	int max_tu_symbol;
> +	int max_tu_symbol = TU_SIZE_RECOMMENDED - 1;
>  
>  	htotal = mode->hsync_len + mode->left_margin + mode->xres +
>  		mode->right_margin;
> @@ -750,14 +752,18 @@ static int tc_set_video_mode(struct tc_data *tc, struct fb_videomode *mode)
>  		mode->upper_margin, mode->lower_margin, mode->vsync_len);
>  	dev_dbg(tc->dev, "total: %dx%d\n", htotal, vtotal);
>  
> -
> -	/* LCD Ctl Frame Size */
> -	tc_write(VPCTRL0, (0x40 << 20) /* VSDELAY */ |
> +	/*
> +	 * Datasheet is not clear of vsdelay in case of DPI
> +	 * assume we do not need any delay when DPI is a source of
> +	 * sync signals
> +	 */
> +	tc_write(VPCTRL0, (0 << 20) /* VSDELAY */ |
>  		 OPXLFMT_RGB888 | FRMSYNC_DISABLED | MSF_DISABLED);
> -	tc_write(HTIM01, (mode->left_margin << 16) |		/* H back porch */
> -			 (mode->hsync_len << 0));		/* Hsync */
> -	tc_write(HTIM02, (mode->right_margin << 16) |		/* H front porch */
> -			 (mode->xres << 0));			/* width */
> +	/* LCD Ctl Frame Size */
> +	tc_write(HTIM01, (EVEN_HI(mode->left_margin) << 16) |	/* H back porch */
> +			 (EVEN_HI(mode->hsync_len) << 0));	/* Hsync */
> +	tc_write(HTIM02, (EVEN_HI(mode->right_margin) << 16) |	/* H front porch */
> +			 (EVEN_HI(mode->xres) << 0));		/* width */
>  	tc_write(VTIM01, (mode->upper_margin << 16) |		/* V back porch */
>  			 (mode->vsync_len << 0));		/* Vsync */
>  	tc_write(VTIM02, (mode->lower_margin << 16) |		/* V front porch */
> @@ -776,7 +782,7 @@ static int tc_set_video_mode(struct tc_data *tc, struct fb_videomode *mode)
>  	/* DP Main Stream Attributes */
>  	vid_sync_dly = mode->hsync_len + mode->left_margin + mode->xres;
>  	tc_write(DP0_VIDSYNCDELAY,
> -		 (0x003e << 16) |	/* thresh_dly */
> +		 (max_tu_symbol << 16) |	/* thresh_dly */
>  		 (vid_sync_dly << 0));
>  
>  	tc_write(DP0_TOTALVAL, (vtotal << 16) | (htotal));
> @@ -798,7 +804,6 @@ static int tc_set_video_mode(struct tc_data *tc, struct fb_videomode *mode)
>  	 *              (output active video bandwidth in bytes))
>  	 * Must be less than tu_size.
>  	 */
> -	max_tu_symbol = TU_SIZE_RECOMMENDED - 1;
>  	tc_write(DP0_MISC, (max_tu_symbol << 23) | (TU_SIZE_RECOMMENDED << 16) | BPC_8);
>  
>  	return 0;



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
