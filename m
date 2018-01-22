Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1edXXR-0004i7-3T
 for barebox@lists.infradead.org; Mon, 22 Jan 2018 08:33:10 +0000
Date: Mon, 22 Jan 2018 09:32:56 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180122083256.yyfte33z6jbhu7so@pengutronix.de>
References: <20180119133709.27477-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180119133709.27477-1-u.kleine-koenig@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] commands/Kconfig: Fix tpyo
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Jan 19, 2018 at 02:37:09PM +0100, Uwe Kleine-K=F6nig wrote:
> s/Pring/Print/
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  commands/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/commands/Kconfig b/commands/Kconfig
> index eee4b6aee872..72fadb6c703a 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -234,7 +234,7 @@ config CMD_VERSION
>  	depends on BANNER
>  	prompt "version"
>  	help
> -	  Pring barebox version. Example:
> +	  Print barebox version. Example:
>  =

>  	  barebox 2014.05.0-00142-gb289373 #177 Mon May 12 20:35:55 CEST 2014

Applied, thanks

Sascha


-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
