Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.15.15])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kYUbN-0000nx-Q8
 for barebox@lists.infradead.org; Fri, 30 Oct 2020 13:37:59 +0000
References: <1604057668-2024-1-git-send-email-u74147@gmail.com>
From: Oleksij Rempel <linux@rempel-privat.de>
Message-ID: <479af5f1-30b2-1c36-2acd-40a071029cb7@rempel-privat.de>
Date: Fri, 30 Oct 2020 14:37:43 +0100
MIME-Version: 1.0
In-Reply-To: <1604057668-2024-1-git-send-email-u74147@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============9188258905080541326=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] MIPS: ls1b: enable clk driver framework support
To: Du Huanpeng <u74147@gmail.com>, barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============9188258905080541326==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="3GSpG6KqX6p5ZRRo6fBrZqcdYT6CEIkiA"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--3GSpG6KqX6p5ZRRo6fBrZqcdYT6CEIkiA
Content-Type: multipart/mixed; boundary="3HQgaZGrMPq6RJOqBI2xFTQrXgIIeczIh"

--3HQgaZGrMPq6RJOqBI2xFTQrXgIIeczIh
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi,

please prepare a patch serie and send them all together.


Am 30.10.20 um 12:34 schrieb Du Huanpeng:
> enable it and so we can add clk driver.
>=20
> Signed-off-by: Du Huanpeng <u74147@gmail.com>
> ---
>  arch/mips/Kconfig | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
> index 7a8f010..a56c26a 100644
> --- a/arch/mips/Kconfig
> +++ b/arch/mips/Kconfig
> @@ -175,6 +175,8 @@ config CPU_LOONGSON1B
>  	bool "Loongson 1B"
>  	depends on SYS_HAS_CPU_LOONGSON1B
>  	select CPU_GS232
> +        select CLKDEV_LOOKUP
> +        select COMMON_CLK
>  	help
>  	  The Loongson 1B is a 32-bit SoC, which implements the MIPS32
>  	  release 2 instruction set.
>=20

--=20
Regards,
Oleksij


--3HQgaZGrMPq6RJOqBI2xFTQrXgIIeczIh--

--3GSpG6KqX6p5ZRRo6fBrZqcdYT6CEIkiA
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEpENFL0P3hvQ7p0DDdQOiSHVI77QFAl+cFy0ACgkQdQOiSHVI
77SNZAf+ID8MGLfQ73PW2AYzIRQ2UxeliYAOGexOi2+2X5aJY9eeci0O7Qm/ODgk
k/NtAElWoMWM98/d/mK1cYjUWQ8aRI5Kb2E8t22dwCd0+0L8I9PHq9K1iOGCVxFq
INwdrgVWlTF4N+4DMoinM3npWHrca1BVygHAsgF5786tw66WLS4dxGprI1Dws/bt
IlUPvWVKOLOHXAsErgk8vkTsvrbeLV9YNAtRsVgFJTIcHi6XbcGngXcgDGfyszWf
89HqPh6EDAOURyffN4IxaTO0N1yxb1umCQW9QNgLNJkTWg2Nub0I/aXpyYfhBCNd
X/wLIkBRaCSkL9iBFtpmuhm4KoU4Zw==
=liK3
-----END PGP SIGNATURE-----

--3GSpG6KqX6p5ZRRo6fBrZqcdYT6CEIkiA--


--===============9188258905080541326==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============9188258905080541326==--
