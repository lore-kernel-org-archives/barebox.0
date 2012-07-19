Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sro7c-0005gL-7J
 for barebox@lists.infradead.org; Thu, 19 Jul 2012 10:38:17 +0000
Message-ID: <5007E38B.8040106@pengutronix.de>
Date: Thu, 19 Jul 2012 12:38:03 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <1342685582-13244-1-git-send-email-s.hauer@pengutronix.de>
 <1342685582-13244-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1342685582-13244-9-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============5998755250472583863=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 8/9] ARM: Separate assembler functions into their own
 section
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--===============5998755250472583863==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enig5826E00E019FB523C8DD1108"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enig5826E00E019FB523C8DD1108
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On 07/19/2012 10:13 AM, Sascha Hauer wrote:
> To let the linker remove unused functions.
>=20
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/cpu/cache-armv4.S      |    7 ++++++-
>  arch/arm/cpu/cache-armv5.S      |    7 ++++++-
>  arch/arm/cpu/cache-armv6.S      |   11 +++++++++--
>  arch/arm/cpu/cache-armv7.S      |    8 ++++++--
>  arch/arm/lib/ashldi3.S          |    1 +
>  arch/arm/lib/ashrdi3.S          |    1 +
>  arch/arm/lib/findbit.S          |    9 +++++++++
>  arch/arm/lib/io-writesw-armv4.S |    2 ++
>  arch/arm/lib/lib1funcs.S        |    7 +++++++
>  arch/arm/lib/lshrdi3.S          |    1 +
>  10 files changed, 48 insertions(+), 6 deletions(-)
>=20
> diff --git a/arch/arm/cpu/cache-armv4.S b/arch/arm/cpu/cache-armv4.S
> index 6d03565..2231eee 100644
> --- a/arch/arm/cpu/cache-armv4.S
> +++ b/arch/arm/cpu/cache-armv4.S
> @@ -3,6 +3,7 @@
> =20
>  #define CACHE_DLINESIZE 32
> =20
> +.section .text.__mmu_cache_on
>  ENTRY(__mmu_cache_on)

Is it possible to add the section to the ENTRY macro?

Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--------------enig5826E00E019FB523C8DD1108
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAlAH448ACgkQjTAFq1RaXHMBrwCgkYYDGiADe7WDStP9Zq/G0Ggd
fCYAnjyjme7qFuPjwzqjmrXvTDOqwK5Z
=HkxZ
-----END PGP SIGNATURE-----

--------------enig5826E00E019FB523C8DD1108--


--===============5998755250472583863==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============5998755250472583863==--
