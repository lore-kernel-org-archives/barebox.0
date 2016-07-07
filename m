Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bL3ZC-00023n-PN
 for barebox@lists.infradead.org; Thu, 07 Jul 2016 07:17:47 +0000
Date: Thu, 7 Jul 2016 09:17:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160707071724.GA20657@pengutronix.de>
References: <1467791572-26001-1-git-send-email-ejo@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1467791572-26001-1-git-send-email-ejo@pengutronix.de>
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
Subject: Re: [PATCH] vsprintf: fix handling of strp arg in asprintf
To: Enrico Jorns <ejo@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Jul 06, 2016 at 09:52:52AM +0200, Enrico Jorns wrote:
> strp argument was ignored but should be forwarded to vasprintf() call in
> order to make this funktion work as expected.
> 
> Signed-off-by: Enrico Jorns <ejo@pengutronix.de>
> ---
>  lib/vsprintf.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 

Applied, thanks

Sascha

> diff --git a/lib/vsprintf.c b/lib/vsprintf.c
> index 1122a4a..f3885a8 100644
> --- a/lib/vsprintf.c
> +++ b/lib/vsprintf.c
> @@ -684,11 +684,10 @@ EXPORT_SYMBOL(bvasprintf);
>  int asprintf(char **strp, const char *fmt, ...)
>  {
>  	va_list ap;
> -	char *p;
>  	int len;
>  
>  	va_start(ap, fmt);
> -	len = vasprintf(&p, fmt, ap);
> +	len = vasprintf(strp, fmt, ap);
>  	va_end(ap);
>  
>  	return len;
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
