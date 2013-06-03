Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UjPAW-0007Xj-MB
 for barebox@lists.infradead.org; Mon, 03 Jun 2013 07:27:05 +0000
Date: Mon, 3 Jun 2013 09:26:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130603072642.GY32299@pengutronix.de>
References: <1370177945-36985-1-git-send-email-monaka@monami-ya.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1370177945-36985-1-git-send-email-monaka@monami-ya.com>
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
Subject: Re: [PATCH] Remove a redundant line.
To: Masaki Muranaka <monaka@monami-ya.jp>
Cc: barebox@lists.infradead.org

On Sun, Jun 02, 2013 at 09:59:05PM +0900, Masaki Muranaka wrote:
> Signed-off-by: Masaki Muranaka <monaka@monami-ya.com>

Applied, thanks

Sascha

> ---
>  commands/echo.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/commands/echo.c b/commands/echo.c
> index 8929234..4dfd870 100644
> --- a/commands/echo.c
> +++ b/commands/echo.c
> @@ -55,7 +55,6 @@ static int do_echo(int argc, char *argv[])
>  			break;
>  		case 'o':
>  			oflags |= O_TRUNC;
> -			file = argv[optind + 1];
>  			if (optind + 1 < argc)
>  				file = argv[optind + 1];
>  			else
> -- 
> 1.8.3
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
