Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1crIyK-0007t6-Fu
 for barebox@lists.infradead.org; Fri, 24 Mar 2017 06:45:18 +0000
Date: Fri, 24 Mar 2017 07:44:55 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170324064455.ltrtkmi5yus6dh6m@pengutronix.de>
References: <20170324034006.2429-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170324034006.2429-1-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] video: edid.c: fix "no previous prototype" warning
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Mar 24, 2017 at 06:40:06AM +0300, Antony Pavlov wrote:
> The patch fixes this compiler's warning:
> 
> drivers/video/edid.c:390:5: warning: no previous prototype
>         for 'fb_get_mode' [-Wmissing-prototypes]
>  int fb_get_mode(int flags, u32 val, struct fb_videomode *var)
>      ^
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  drivers/video/edid.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/video/edid.c b/drivers/video/edid.c
> index 258526433..bee459411 100644
> --- a/drivers/video/edid.c
> +++ b/drivers/video/edid.c
> @@ -387,7 +387,7 @@ static void fb_timings_vfreq(struct __fb_timings *timings)
>   * REQUIRES:
>   * A valid info->monspecs, otherwise 'safe numbers' will be used.
>   */
> -int fb_get_mode(int flags, u32 val, struct fb_videomode *var)
> +static int fb_get_mode(int flags, u32 val, struct fb_videomode *var)
>  {
>  	struct __fb_timings *timings;
>  	u32 interlace = 1, dscan = 1;
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
