Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QmRIr-0004gL-MZ
	for barebox@lists.infradead.org; Thu, 28 Jul 2011 14:11:10 +0000
Message-ID: <4E316DFA.6060009@pengutronix.de>
Date: Thu, 28 Jul 2011 16:11:06 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <1311858854-23434-1-git-send-email-t.gamez@phytec.de>
	<1311858854-23434-2-git-send-email-t.gamez@phytec.de>
In-Reply-To: <1311858854-23434-2-git-send-email-t.gamez@phytec.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0585898317=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/2] ARM pcm043: Use PDR0 to change cpu freq
To: =?UTF-8?B?VGVyZXNhIEfDoW1leg==?= <t.gamez@phytec.de>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--===============0585898317==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enig3244F262F1FB8BF62E26B0FD"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enig3244F262F1FB8BF62E26B0FD
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 07/28/2011 03:14 PM, Teresa G=C3=A1mez wrote:
> Instead of changing the MPCTL to set an other cpu frequency,
> use the post divider.
>=20
> This prevents freezing when changing the clock from 399MHz to 532MHz.
>=20
> Signed-off-by: Teresa G=C3=A1mez <t.gamez@phytec.de>
> ---
>  arch/arm/boards/pcm043/pcm043.c |    8 ++++----
>  1 files changed, 4 insertions(+), 4 deletions(-)
>=20
> diff --git a/arch/arm/boards/pcm043/pcm043.c b/arch/arm/boards/pcm043/p=
cm043.c
> index 3bd6402..8629ae6 100644
> --- a/arch/arm/boards/pcm043/pcm043.c
> +++ b/arch/arm/boards/pcm043/pcm043.c
> @@ -308,8 +308,8 @@ static int pcm043_core_setup(void)
> =20
>  core_initcall(pcm043_core_setup);
> =20
> -#define MPCTL_PARAM_399     (IMX_PLL_PD(0) | IMX_PLL_MFD(15) | IMX_PLL=
_MFI(8) | IMX_PLL_MFN(5))
> -#define MPCTL_PARAM_532     ((1 << 31) | IMX_PLL_PD(0) | IMX_PLL_MFD(1=
1) | IMX_PLL_MFI(11) | IMX_PLL_MFN(1))
> +#define	CCM_PDR0_PARAM_399	((1 << 12) | (1 << 16))
> +#define	CCM_PDR0_PARAM_532	(1 << 12)

nickpick: no tab after #define, please

Marc
> =20
>  static int do_cpufreq(struct command *cmdtp, int argc, char *argv[])
>  {
> @@ -322,10 +322,10 @@ static int do_cpufreq(struct command *cmdtp, int =
argc, char *argv[])
> =20
>  	switch (freq) {
>  	case 399:
> -		writel(MPCTL_PARAM_399, IMX_CCM_BASE + CCM_MPCTL);
> +		writel(CCM_PDR0_PARAM_399, IMX_CCM_BASE + CCM_PDR0);
>  		break;
>  	case 532:
> -		writel(MPCTL_PARAM_532, IMX_CCM_BASE + CCM_MPCTL);
> +		writel(CCM_PDR0_PARAM_532, IMX_CCM_BASE + CCM_PDR0);
>  		break;
>  	default:
>  		return COMMAND_ERROR_USAGE;


--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--------------enig3244F262F1FB8BF62E26B0FD
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAk4xbfoACgkQjTAFq1RaXHOBwwCgjK1kKXOJLAU2Wtw+dw9SRw+V
nm4AnjbjCwimpO/HYhnzhHjETjd2IzQc
=g6yu
-----END PGP SIGNATURE-----

--------------enig3244F262F1FB8BF62E26B0FD--


--===============0585898317==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0585898317==--
