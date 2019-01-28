Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1go2ng-0007cb-6O
 for barebox@lists.infradead.org; Mon, 28 Jan 2019 09:01:58 +0000
Date: Mon, 28 Jan 2019 10:01:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190128090150.sbz47zh6sqalqydk@pengutronix.de>
References: <20190125205935.15135-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190125205935.15135-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH 1/2] i2c_probe: limit slave addresses to [0x04, 0x77]
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Jan 25, 2019 at 09:59:34PM +0100, Uwe Kleine-K=F6nig wrote:
> Adresses below 0x04 and above 0x77 are reserved in the i2c bus
> specification, so don't probe these addresses unless requested
> explicitly.
> =

> Also do more strict boundary checking:
> =

>  - ensure start address is greater or equal to zero;
>  - don't decrease stopaddr after checking it being greater or equal to
>    startaddr.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  commands/i2c.c | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)

Applied, thanks

Sascha

> =

> diff --git a/commands/i2c.c b/commands/i2c.c
> index 2f7f820d4d55..65ff7378ec14 100644
> --- a/commands/i2c.c
> +++ b/commands/i2c.c
> @@ -44,7 +44,7 @@ static void i2c_probe_range(struct i2c_adapter *adapter=
, int startaddr, int stop
>  static int do_i2c_probe(int argc, char *argv[])
>  {
>  	struct i2c_adapter *adapter =3D NULL;
> -	int startaddr =3D 0, stopaddr =3D 0x7f;
> +	int startaddr =3D 4, stopaddr =3D 0x77;
>  =

>  	if (argc > 1) {
>  		adapter =3D i2c_get_adapter(simple_strtoul(argv[1], NULL, 0));
> @@ -57,13 +57,15 @@ static int do_i2c_probe(int argc, char *argv[])
>  	if (argc > 3)
>  		stopaddr =3D simple_strtol(argv[3], NULL, 0);
>  =

> +	if (stopaddr > 0x7f)
> +		stopaddr =3D 0x7f;
> +
> +	if (startaddr < 0)
> +		startaddr =3D 0;
>  =

>  	if (startaddr > stopaddr)
>  		return COMMAND_ERROR_USAGE;
>  =

> -	if (stopaddr > 0x7F)
> -		stopaddr =3D 0x7F;
> -
>  	if (adapter) {
>  		i2c_probe_range(adapter, startaddr, stopaddr);
>  	} else {
> -- =

> 2.20.1
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
