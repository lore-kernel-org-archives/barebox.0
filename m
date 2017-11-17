Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eFcjd-00022z-3h
 for barebox@lists.infradead.org; Fri, 17 Nov 2017 09:14:55 +0000
Date: Fri, 17 Nov 2017 10:14:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20171117091430.ifee3xoai4xatqyg@pengutronix.de>
References: <20171117045814.16164-1-gael.portay@savoirfairelinux.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20171117045814.16164-1-gael.portay@savoirfairelinux.com>
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
Subject: Re: [PATCH] readline_simple: use len instead of CONFIG_CBSIZE
To: =?iso-8859-15?Q?Ga=EBl?= PORTAY <gael.portay@savoirfairelinux.com>
Cc: barebox@lists.infradead.org

On Thu, Nov 16, 2017 at 11:58:14PM -0500, Ga=EBl PORTAY wrote:
> It is safier to use the length given in parameter instead of using the
> preprocessor CONFIG_CBSIZE value.
> =

> Signed-off-by: Ga=EBl PORTAY <gael.portay@savoirfairelinux.com>
> ---

Applied, thanks

Sascha

>  lib/readline_simple.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/lib/readline_simple.c b/lib/readline_simple.c
> index 80e075bc5..fcdbca41a 100644
> --- a/lib/readline_simple.c
> +++ b/lib/readline_simple.c
> @@ -100,7 +100,7 @@ int readline (const char *prompt, char *line, int len)
>  			/*
>  			 * Must be a normal character then
>  			 */
> -			if (n < CONFIG_CBSIZE-2) {
> +			if (n < len-2) {
>  				if (c =3D=3D '\t') {	/* expand TABs		*/
>  					puts (tab_seq+(col&07));
>  					col +=3D 8 - (col&07);
> -- =

> 2.15.0
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
