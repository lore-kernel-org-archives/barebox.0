Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1chAFb-0000NT-Oh
 for barebox@lists.infradead.org; Fri, 24 Feb 2017 07:25:13 +0000
Date: Fri, 24 Feb 2017 08:24:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170224072450.uw6zw44nhrrqcszk@pengutronix.de>
References: <20170223164527.29878-1-bst@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170223164527.29878-1-bst@pengutronix.de>
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
Subject: Re: [PATCH 1/3] graphic_utils: implement 8 bpp color depth in
 gu_set_pixel
To: Bastian Stender <bst@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Feb 23, 2017 at 05:45:25PM +0100, Bastian Stender wrote:
> Signed-off-by: Bastian Stender <bst@pengutronix.de>
> ---
>  lib/gui/graphic_utils.c | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks

Sascha

> 
> diff --git a/lib/gui/graphic_utils.c b/lib/gui/graphic_utils.c
> index d3f5cce4b7..f6ab5ea0d1 100644
> --- a/lib/gui/graphic_utils.c
> +++ b/lib/gui/graphic_utils.c
> @@ -132,6 +132,7 @@ void gu_set_pixel(struct fb_info *info, void *adr, u32 px)
>  {
>  	switch (info->bits_per_pixel) {
>  	case 8:
> +		*(u8 *)adr = px & 0xff;
>  		break;
>  	case 16:
>  		*(u16 *)adr = px & 0xffff;
> -- 
> 2.11.0
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
