Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dQuBc-0006tn-7F
 for barebox@lists.infradead.org; Fri, 30 Jun 2017 11:34:11 +0000
Date: Fri, 30 Jun 2017 13:33:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170630113343.ykwwdjolstoi7wgk@pengutronix.de>
References: <20170630095145.32488-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170630095145.32488-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH 1/2] scripts/kwboot: document -n option
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Jun 30, 2017 at 11:51:44AM +0200, Uwe Kleine-K=F6nig wrote:
> This was forgotten in the commit that added support for that option
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  scripts/kwboot.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> =

> diff --git a/scripts/kwboot.c b/scripts/kwboot.c
> index 4c6b19aa219e..db177ceb5f2e 100644
> --- a/scripts/kwboot.c
> +++ b/scripts/kwboot.c
> @@ -716,7 +716,7 @@ static void
>  kwboot_usage(FILE *stream, char *progname)
>  {
>  	fprintf(stream,
> -		"Usage: %s [-d | -b <image> | -D <image> ] [ -t ] [-B <baud> ] <TTY>\n=
",
> +		"Usage: %s [-d | -b <image> [ -n <naks> ] | -D <image> ] [ -t ] [-B <b=
aud> ] <TTY>\n",
>  		progname);
>  	fprintf(stream, "\n");
>  	fprintf(stream,
> @@ -724,6 +724,8 @@ kwboot_usage(FILE *stream, char *progname)
>  	fprintf(stream,
>  		"  -D <image>: boot <image> without preamble (Dove)\n");
>  	fprintf(stream, "  -d: enter debug mode\n");
> +	fprintf(stream,
> +		"  -n <naks>: wait for <naks> NAK before uploading image (default: 1)\=
n");
>  	fprintf(stream, "\n");
>  	fprintf(stream, "  -t: mini terminal\n");
>  	fprintf(stream, "\n");
> -- =

> 2.11.0
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
