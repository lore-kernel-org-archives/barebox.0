Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zw3Ym-0004CY-6f
 for barebox@lists.infradead.org; Tue, 10 Nov 2015 07:41:44 +0000
Date: Tue, 10 Nov 2015 08:41:22 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151110074122.GD8526@pengutronix.de>
References: <1447063741-23881-1-git-send-email-serge.koshechkin@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1447063741-23881-1-git-send-email-serge.koshechkin@gmail.com>
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
Subject: Re: [PATCH] mk-omap-image: make some locally used functions static
To: Sergey Koshechkin <serge.koshechkin@gmail.com>
Cc: barebox@lists.infradead.org, antony@niisi.msk.ru

On Mon, Nov 09, 2015 at 01:09:01PM +0300, Sergey Koshechkin wrote:
> Signed-off-by: Sergey Koshechkin <serge.koshechkin@gmail.com>
> ---
>  scripts/mk-omap-image.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/scripts/mk-omap-image.c b/scripts/mk-omap-image.c
> index 1d61a34..234b7e3 100644
> --- a/scripts/mk-omap-image.c
> +++ b/scripts/mk-omap-image.c
> @@ -49,7 +49,7 @@
>  #include <getopt.h>
>  #include <endian.h>
>  
> -void usage(char *prgname)
> +static void usage(char *prgname)
>  {
>  	printf("usage: %s [OPTION] FILE > IMAGE\n"
>  	       "\n"
> -- 
> 2.6.1
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
