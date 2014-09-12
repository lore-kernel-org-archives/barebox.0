Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XSJdT-0005nU-1x
 for barebox@lists.infradead.org; Fri, 12 Sep 2014 05:43:07 +0000
Date: Fri, 12 Sep 2014 07:42:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140912054245.GR4992@pengutronix.de>
References: <1410447889-19648-1-git-send-email-t.gamez@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1410447889-19648-1-git-send-email-t.gamez@phytec.de>
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
Subject: Re: [PATCH] commands: of_dump: Fix return value
To: Teresa =?iso-8859-15?Q?G=E1mez?= <t.gamez@phytec.de>
Cc: barebox@lists.infradead.org

On Thu, Sep 11, 2014 at 05:04:49PM +0200, Teresa G=E1mez wrote:
> In an error case the return value is set nicely
> but 0 is always beeing returned.
> =

> Signed-off-by: Teresa G=E1mez <t.gamez@phytec.de>

Applied, thanks

Sascha

> ---
>  commands/of_dump.c |    4 ++--
>  1 files changed, 2 insertions(+), 2 deletions(-)
> =

> diff --git a/commands/of_dump.c b/commands/of_dump.c
> index 1222ebf..513a4b8 100644
> --- a/commands/of_dump.c
> +++ b/commands/of_dump.c
> @@ -34,7 +34,7 @@
>  static int do_of_dump(int argc, char *argv[])
>  {
>  	int opt;
> -	int ret;
> +	int ret =3D 0;
>  	int fix =3D 0;
>  	struct device_node *root =3D NULL, *node, *of_free =3D NULL;
>  	char *dtbfile =3D NULL;
> @@ -117,7 +117,7 @@ out:
>  	if (of_free)
>  		of_delete_node(of_free);
>  =

> -	return 0;
> +	return ret;
>  }
>  =

>  BAREBOX_CMD_HELP_START(of_dump)
> -- =

> 1.7.0.4
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
