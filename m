Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SpPVV-0006Cb-73
 for barebox@lists.infradead.org; Thu, 12 Jul 2012 19:57:04 +0000
Message-ID: <4FFF2BE9.1030802@pengutronix.de>
Date: Thu, 12 Jul 2012 21:56:25 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <1342100835-9870-1-git-send-email-jbe@pengutronix.de>
 <1342100835-9870-5-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1342100835-9870-5-git-send-email-jbe@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============9125499045145035392=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 4/4] ARM/MXS: add reset cause detection
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--===============9125499045145035392==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enigCA268BB798CA556F1CD71D5D"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enigCA268BB798CA556F1CD71D5D
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On 07/12/2012 03:47 PM, Juergen Beisert wrote:
> Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
> ---
>  drivers/watchdog/im28wd.c |   25 +++++++++++++++++++++++++
>  1 file changed, 25 insertions(+)
>=20
> diff --git a/drivers/watchdog/im28wd.c b/drivers/watchdog/im28wd.c
> index b016910..c465f87 100644
> --- a/drivers/watchdog/im28wd.c
> +++ b/drivers/watchdog/im28wd.c
> @@ -21,6 +21,7 @@
>  #include <errno.h>
>  #include <malloc.h>
>  #include <watchdog.h>
> +#include <reset_source.h>
> =20
>  #define MXS_RTC_CTRL 0x0
>  #define MXS_RTC_SET_ADDR 0x4
> @@ -73,6 +74,27 @@ static int imx28_watchdog_set_timeout(struct watchdo=
g *wd, unsigned timeout)
>  	return 0;
>  }
> =20
> +static void __maybe_unused imx28_detect_reset_source(const struct imx2=
8_wd *p)
> +{
> +	u32 reg;
> +
> +	reg =3D readl(p->regs + MXS_RTC_PERSISTENT0);
> +	if (reg & MXS_RTC_PERSISTENT0_EXT_RST) {
> +		writel(MXS_RTC_PERSISTENT0_EXT_RST,
> +			p->regs + MXS_RTC_PERSISTENT0 + MXS_RTC_CLR_ADDR);
> +		set_reset_source(RESET_POR);
> +		return;
> +	}
> +	if (reg & MXS_RTC_PERSISTENT0_THM_RST) {
> +		writel(MXS_RTC_PERSISTENT0_THM_RST,
> +			p->regs + MXS_RTC_PERSISTENT0 + MXS_RTC_CLR_ADDR);
> +		set_reset_source(RESET_RST);
> +		return;
> +	}
> +
> +	set_reset_source(RESET_RST);
> +}
> +
>  static int imx28_wd_probe(struct device_d *dev)
>  {
>  	struct imx28_wd *priv;
> @@ -94,6 +116,9 @@ static int imx28_wd_probe(struct device_d *dev)
>  	if (rc !=3D 0)
>  		goto on_error;
> =20
> +#ifdef CONFIG_GLOBALVAR
What about:

	if (IS_ENABLED(CONFIG_GLOBALVAR))

> +	imx28_detect_reset_source(priv);
> +#endif
>  	dev->priv =3D priv;
>  	return 0;
> =20


--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--------------enigCA268BB798CA556F1CD71D5D
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAk//K+wACgkQjTAFq1RaXHNouACfU/HDetmHS1Ej1de7EUDAxahB
vRwAnRXIETxsStRbltl5k9iktVPY25gg
=MtbK
-----END PGP SIGNATURE-----

--------------enigCA268BB798CA556F1CD71D5D--


--===============9125499045145035392==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============9125499045145035392==--
