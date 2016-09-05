Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bgnNZ-0006ih-Ga
 for barebox@lists.infradead.org; Mon, 05 Sep 2016 06:27:38 +0000
Date: Mon, 5 Sep 2016 08:27:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160905062715.lae4sieyjx3s7rii@pengutronix.de>
References: <1472722119-22874-1-git-send-email-p.zabel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1472722119-22874-1-git-send-email-p.zabel@pengutronix.de>
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
Subject: Re: [PATCH] video/edid: Fix edid_to_display_timings error path
To: Philipp Zabel <p.zabel@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Sep 01, 2016 at 11:28:39AM +0200, Philipp Zabel wrote:
> edid_to_display_timings is called in drivers/video/imx-ipu-v3/imx-hdmi.c,
> drivers/video/simple-panel.c, and drivers/video/edid.c with the struct
> display_timings *timings parameter pointing to an embedded struct
> display_timings inside a struct fb_info. The timings pointer is not to
> be freed in the error path.
> 
> Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
> ---
>  drivers/video/edid.c | 1 -
>  1 file changed, 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/video/edid.c b/drivers/video/edid.c
> index 92b59a5..2585264 100644
> --- a/drivers/video/edid.c
> +++ b/drivers/video/edid.c
> @@ -792,7 +792,6 @@ int edid_to_display_timings(struct display_timings *timings, unsigned char *edid
>  
>  	return 0;
>  out:
> -	free(timings);
>  	free(mode);
>  	return ret;
>  }
> -- 
> 2.8.1
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
