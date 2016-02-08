Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aSgLU-0007d4-Dc
 for barebox@lists.infradead.org; Mon, 08 Feb 2016 07:34:53 +0000
Date: Mon, 8 Feb 2016 08:34:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160208073430.GY4118@pengutronix.de>
References: <1454577139-31062-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1454577139-31062-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] drivers: video: drop unused of_get_display_timing()
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Feb 04, 2016 at 12:12:19PM +0300, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  drivers/video/of_display_timing.c | 25 -------------------------
>  1 file changed, 25 deletions(-)
> 
> diff --git a/drivers/video/of_display_timing.c b/drivers/video/of_display_timing.c
> index eb29ec6..6a5bf62 100644
> --- a/drivers/video/of_display_timing.c
> +++ b/drivers/video/of_display_timing.c
> @@ -99,31 +99,6 @@ static int of_parse_display_timing(const struct device_node *np,
>  }
>  
>  /**
> - * of_get_display_timing - parse a display_timing entry
> - * @np: device_node with the timing subnode
> - * @name: name of the timing node
> - * @dt: display_timing struct to fill
> - **/
> -int of_get_display_timing(struct device_node *np, const char *name,
> -		struct fb_videomode *mode)

Applied, thanks. of_get_display_timings is the right function to use. If
one wants to use of_get_display_timing he first has to convince us that
he really needs this function.

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
