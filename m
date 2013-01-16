Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TvZgD-00082R-Fk
 for barebox@lists.infradead.org; Wed, 16 Jan 2013 20:33:50 +0000
Date: Wed, 16 Jan 2013 21:33:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130116203348.GZ1906@pengutronix.de>
References: <1358308944-5842-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1358308944-5842-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] graphic_utils/fb_open: fix fbsize
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Wed, Jan 16, 2013 at 05:02:24AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

Applied, thanks

Sascha

> ---
>  lib/gui/graphic_utils.c |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/lib/gui/graphic_utils.c b/lib/gui/graphic_utils.c
> index 3800ee2..95687df 100644
> --- a/lib/gui/graphic_utils.c
> +++ b/lib/gui/graphic_utils.c
> @@ -219,7 +219,7 @@ int fb_open(const char * fbdev, struct screen *sc, bool offscreen)
>  	sc->s.y = 0;
>  	sc->s.width = sc->info.xres;
>  	sc->s.height = sc->info.yres;
> -	sc->fbsize = sc->s.x * sc->s.x * (sc->info.bits_per_pixel >> 3);
> +	sc->fbsize = sc->s.width * sc->s.height * (sc->info.bits_per_pixel >> 3);
>  
>  	if (offscreen) {
>  		/* Don't fail if malloc fails, just continue rendering directly
> -- 
> 1.7.10.4
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
