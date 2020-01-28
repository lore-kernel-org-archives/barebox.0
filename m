Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwVcY-0008Je-Af
 for barebox@lists.infradead.org; Tue, 28 Jan 2020 18:29:55 +0000
Date: Tue, 28 Jan 2020 19:29:51 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <20200128182951.vq4pfer3zinz36ih@pengutronix.de>
References: <20200128175307.13584-1-pmamonov@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20200128175307.13584-1-pmamonov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1326337496445288071=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] MIPS: relocate_code: fix relocation area size
To: Peter Mamonov <pmamonov@gmail.com>
Cc: barebox@lists.infradead.org


--===============1326337496445288071==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="cybghgklro7vqui7"
Content-Disposition: inline


--cybghgklro7vqui7
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 28, 2020 at 08:53:07PM +0300, Peter Mamonov wrote:
> relocate_code() calculates relocation area size as a sum (barebox_image_s=
ize +
> bss_len). barebox_image_size and bss_len are calculated as (__image_end -
> __image_start) and (__bss_stop - __bss_start) respectively. This doesn't =
take
> into account relocation data placed between  __image_end and __bss_start.
> However relocation preserves BSS position relative to image start, as if
> relocation data is still there. This causes RAM overflow during BSS
> initialization in main_entry(). This problem may be hidden due to the ali=
gnment
> of the `relocaddr`.

Thx! Works on ar9331

Tested-by: Oleksij Rempel <o.rempel@pengutronix.de>

> Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
> ---
>  arch/mips/lib/reloc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/arch/mips/lib/reloc.c b/arch/mips/lib/reloc.c
> index 32d776a6a6..41e2d5c75f 100644
> --- a/arch/mips/lib/reloc.c
> +++ b/arch/mips/lib/reloc.c
> @@ -121,7 +121,7 @@ void relocate_code(void *fdt, u32 fdt_size, u32 ram_s=
ize)
>  	memset(__bss_start, 0, bss_len);
>  	cpu_probe();
> =20
> -	length =3D barebox_image_size + bss_len;
> +	length =3D __bss_stop - __image_start;
>  	relocaddr =3D ALIGN_DOWN(ram_size - length, SZ_64K);
>  	relocaddr =3D KSEG0ADDR(relocaddr);
>  	new_stack =3D relocaddr - MALLOC_SIZE - 16;
> --=20
> 2.24.0
>=20
>=20
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
>=20

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--cybghgklro7vqui7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEERBNZvwSgvmcMY/T74omh9DUaUbMFAl4wfZYACgkQ4omh9DUa
UbOHEhAAqGWHnGeSNtvajac8+F2mnlSOj/d6GOIEvzKiie/0Vy+x322ATzxlxC9+
PLMy57hRprRZCWAZUaWQWZydsNkhPWwg+etcVb4Lj/4Ng3zkCtK/o1WFYNYVGkkG
ZPbxfDs909SengKDBzbO6u5vlHkq8f3uZt2VuRgYf9BSPQFKm3tCmGIJ7N20ddbp
mV8LLcUYqm+wZBbJnkHyRYRDhuIgvDX0gYEtgVVd/gmRHzPsm5WvbxGaDNtA1iWo
QfSdSI2IQGSmk8P836r+tktUiQwMFqoNNht3eMb4CZaNriFnrmy/O221+/vzh5Am
OqUJm62FH+s0ri+Vw8lsP8zcOYqFT8xVGQEIS+wLO27g48z8+QxAWyz8qU3qioxg
W8AvR2nVqDQDMKTtZVmVGpP4WlwOKD7yEvI1KXl/Z3ITEOXmRdko7J2BkqTJ/H/S
sPVWPXcnbV49Me7oDc5a+fWnNSd+9uI4IpGVnhrObqRXXDfAk1kLFlCynab+ll5r
n0fbJ1Tk5b9IK/Pdd/J5FrflbplaLzaZN3KDerD3wZyL1G4T/TOlMU9OyapswvhC
6XbIItTSTwGFMmihnNi+VG665KmShAtrJgO/NG+FCQIspTW4wNigae7etm4jVudh
h19ClJcgYLZ28KkRgqR6fQYVK/zY8De+gGGo8en1ynSyUW0+2vk=
=0huV
-----END PGP SIGNATURE-----

--cybghgklro7vqui7--


--===============1326337496445288071==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1326337496445288071==--
