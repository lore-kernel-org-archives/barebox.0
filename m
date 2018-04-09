Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f5Qjq-0007Zt-C9
 for barebox@lists.infradead.org; Mon, 09 Apr 2018 06:57:16 +0000
Date: Mon, 9 Apr 2018 08:57:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180409065702.566dt7ylvg6qpdmn@pengutronix.de>
References: <20180406152323.16879-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180406152323.16879-1-l.stach@pengutronix.de>
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
Subject: Re: [PATCH] fb: reject enable request when framebuffer has no mode
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Apr 06, 2018 at 05:23:23PM +0200, Lucas Stach wrote:
> If no display is connected or the display modes are incompatible with
> the scanout hardware we might end up with a registered framebuffer with
> no modes. Trying to enable such a framebuffer will blow up with NULL
> ptr dereferences in various places, so just don't do it.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  drivers/video/fb.c | 3 +++
>  1 file changed, 3 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/drivers/video/fb.c b/drivers/video/fb.c
> index 004df1e604d6..599ac5b75e0a 100644
> --- a/drivers/video/fb.c
> +++ b/drivers/video/fb.c
> @@ -124,6 +124,9 @@ static int fb_enable_set(struct param_d *param, void *priv)
>  	struct fb_info *info = priv;
>  	int enable;
>  
> +	if (!info->mode)
> +		return -EINVAL;
> +
>  	enable = info->p_enable;
>  
>  	if (enable)
> -- 
> 2.16.1
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
