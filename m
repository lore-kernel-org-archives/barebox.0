Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gNf1j-000065-0l
 for barebox@lists.infradead.org; Fri, 16 Nov 2018 14:23:21 +0000
References: <20181115141552.26386-1-s.hauer@pengutronix.de>
From: Marc Kleine-Budde <mkl@pengutronix.de>
Message-ID: <cd74626d-72ea-ec05-644a-d3f24f1d4541@pengutronix.de>
Date: Fri, 16 Nov 2018 15:22:59 +0100
MIME-Version: 1.0
In-Reply-To: <20181115141552.26386-1-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============3473305267713132058=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] ARM: i.MX: When SRSR shows wdog then lookup reset source
 in wdog
To: Sascha Hauer <s.hauer@pengutronix.de>, Barebox List <barebox@lists.infradead.org>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============3473305267713132058==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="1xWEHzeOvGzP2jkb3XVIUOrBJ6LLSidjb"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--1xWEHzeOvGzP2jkb3XVIUOrBJ6LLSidjb
Content-Type: multipart/mixed; boundary="bAFd65uX90AhIpyA4yJcuYJw0syOkcd3u";
 protected-headers="v1"
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>
Message-ID: <cd74626d-72ea-ec05-644a-d3f24f1d4541@pengutronix.de>
Subject: Re: [PATCH] ARM: i.MX: When SRSR shows wdog then lookup reset source
 in wdog
References: <20181115141552.26386-1-s.hauer@pengutronix.de>
In-Reply-To: <20181115141552.26386-1-s.hauer@pengutronix.de>

--bAFd65uX90AhIpyA4yJcuYJw0syOkcd3u
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: quoted-printable

On 11/15/18 3:15 PM, Sascha Hauer wrote:
> On i.MX6 when the watchdog has resetted the system then the SRSR
> register correctly shows that the watchdog has resetted the system.
> This is not the desired result though, a "reset" in barebox or "reboot"=

> in Linux should result in "RST" as reset source. So instead of making
> the SRSR register value overwrite the reset source read from the
> watchdog registers, interpret the SRSR value corresponding to watchdog
> reset as "lookup details in the watchdog registers".
>=20
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  arch/arm/mach-imx/imx.c  |  6 +++---
>  drivers/watchdog/imxwd.c | 10 +++++++---
>  2 files changed, 10 insertions(+), 6 deletions(-)
>=20
> diff --git a/arch/arm/mach-imx/imx.c b/arch/arm/mach-imx/imx.c
> index ad227663dd..f87dd76c75 100644
> --- a/arch/arm/mach-imx/imx.c
> +++ b/arch/arm/mach-imx/imx.c
> @@ -204,9 +204,9 @@ void imx_set_reset_reason(void __iomem *srsr,
>  	 * sure we'll always override info from watchdog driver.
>  	 */

With this change, the above comment doesn't describe the reality anymore.=


>  	reset_source_set_priority(type,
> -				  RESET_SOURCE_DEFAULT_PRIORITY + 1);
> +				  RESET_SOURCE_DEFAULT_PRIORITY);
>  	reset_source_set_instance(type, instance);
> =20
> -	pr_info("i.MX reset reason %s (SRSR: 0x%08x)\n",
> -		reset_source_name(), reg);
> +	pr_debug("i.MX reset reason %s (SRSR: 0x%08x)\n",
> +		 reset_source_name(), reg);
>  }
> diff --git a/drivers/watchdog/imxwd.c b/drivers/watchdog/imxwd.c
> index a66fae400c..8dba662392 100644
> --- a/drivers/watchdog/imxwd.c
> +++ b/drivers/watchdog/imxwd.c
> @@ -162,19 +162,23 @@ static void __noreturn imxwd_force_soc_reset(stru=
ct restart_handler *rst)
>  static void imx_watchdog_detect_reset_source(struct imx_wd *priv)
>  {
>  	u16 val =3D readw(priv->base + IMX21_WDOG_WSTR);
> +	int priority =3D RESET_SOURCE_DEFAULT_PRIORITY;
> +
> +	if (reset_source_get() =3D=3D RESET_WDG)
> +		priority++;
> =20
>  	if (val & WSTR_COLDSTART) {
> -		reset_source_set(RESET_POR);
> +		reset_source_set_priority(RESET_POR, priority);
>  		return;
>  	}
> =20
>  	if (val & (WSTR_HARDRESET | WSTR_WARMSTART)) {
> -		reset_source_set(RESET_RST);
> +		reset_source_set_priority(RESET_RST, priority);
>  		return;
>  	}
> =20
>  	if (val & WSTR_WDOG) {
> -		reset_source_set(RESET_WDG);
> +		reset_source_set_priority(RESET_WDG, priority);
>  		return;
>  	}
> =20
>=20

Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--bAFd65uX90AhIpyA4yJcuYJw0syOkcd3u--

--1xWEHzeOvGzP2jkb3XVIUOrBJ6LLSidjb
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEENrCndlB/VnAEWuH5k9IU1zQoZfEFAlvu0sMACgkQk9IU1zQo
ZfEeXggAlzbzLQOiAI4ycA+XsiPm/PxBw5ATCmYLkACLqr1wKvv3keUSuQriRvKE
BuHDBx0J3UYIrCjaS4QRKIl7UxeUj3L8lPIQRDosgtUZ4YQipazLgy0Q9Ytr/vnP
70+A2H2uSMfoexxFBUrUFHkbRfuapuqszaNBl06htJGyGpMyz0Xt0lAbY9eKqiNT
ZPNFbINLdibfeeJBuhCqNQ98b9EPjBZMgb54AMAhBZSWBQnKFNpoqv8xllSKw62p
vU55uQssnCWXaJVz9KdJIsLDRdCS4u8Vh7zFmtXa7dnGkcjIZri6Z6mStOtrMLMG
+nhBLo305Wh7Ois7mQ15c9hl5CYUnw==
=E4Ut
-----END PGP SIGNATURE-----

--1xWEHzeOvGzP2jkb3XVIUOrBJ6LLSidjb--


--===============3473305267713132058==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============3473305267713132058==--
