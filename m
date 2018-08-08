Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fnIvA-0008E3-Ib
 for barebox@lists.infradead.org; Wed, 08 Aug 2018 07:30:18 +0000
Date: Wed, 8 Aug 2018 09:30:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180808073004.xoqrpv35z62rgade@pengutronix.de>
References: <20180806191418.15921-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180806191418.15921-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] of_node: clearify help text and do stricter commandline
 parsing
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Aug 06, 2018 at 09:14:18PM +0200, Uwe Kleine-K=F6nig wrote:
> To create an oftree node /path/node I tried after reading the help text
> of of_node:
> =

> 	of_node -c /path node
> =

> similar to the syntax of of_property. This didnt result in any output
> but still failed to do what I meant.
> =

> So clearify the help text to not suggest there are two parameters and
> return an usage error if still two (or more) names are passed.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  commands/of_node.c | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)

Applied, thanks

Sascha

> =

> diff --git a/commands/of_node.c b/commands/of_node.c
> index 29cc371dd289..28c4357c5d97 100644
> --- a/commands/of_node.c
> +++ b/commands/of_node.c
> @@ -107,11 +107,10 @@ static int do_of_node(int argc, char *argv[])
>  		}
>  	}
>  =

> -	if (optind =3D=3D argc)
> +	if (optind + 1 !=3D argc)
>  		return COMMAND_ERROR_USAGE;
>  =

> -	if (optind < argc)
> -		path =3D argv[optind];
> +	path =3D argv[optind];
>  =

>  	if (!path)
>  		return COMMAND_ERROR_USAGE;
> @@ -147,7 +146,7 @@ BAREBOX_CMD_HELP_END
>  BAREBOX_CMD_START(of_node)
>  	.cmd		=3D do_of_node,
>  	BAREBOX_CMD_DESC("create/delete nodes in the device tree")
> -	BAREBOX_CMD_OPTS("[-cd] [-f] NODE NAME")
> +	BAREBOX_CMD_OPTS("[-cd] [-f] NODEPATH")
>  	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
>  	BAREBOX_CMD_COMPLETE(devicetree_complete)
>  	BAREBOX_CMD_HELP(cmd_of_node_help)
> -- =

> 2.18.0
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
