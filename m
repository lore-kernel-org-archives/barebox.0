Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4IlX-0001rm-Vs
 for barebox@lists.infradead.org; Wed, 19 Feb 2020 06:23:26 +0000
References: <20200218153732.14845-1-s.hauer@pengutronix.de>
 <20200218153732.14845-6-s.hauer@pengutronix.de>
From: Oleksij Rempel <fishor@gmx.net>
Message-ID: <843b47cf-272e-3800-df85-9a2f9dcbee23@gmx.net>
Date: Wed, 19 Feb 2020 07:23:09 +0100
MIME-Version: 1.0
In-Reply-To: <20200218153732.14845-6-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============8060269174928901241=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 5/6] ARM: i.MX: external NAND boot: Leave icache disabled
To: Sascha Hauer <s.hauer@pengutronix.de>, Barebox List <barebox@lists.infradead.org>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============8060269174928901241==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="RRC8maP0kOfbaJRgFxTYOh2w2hIkgPRMo"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--RRC8maP0kOfbaJRgFxTYOh2w2hIkgPRMo
Content-Type: multipart/mixed; boundary="UrLlui5jSLkIYas1NLhVmHTuo7SvGLS9I"

--UrLlui5jSLkIYas1NLhVmHTuo7SvGLS9I
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Am 18.02.20 um 16:37 schrieb Sascha Hauer:
> It seems running from the NFC SRAM doesn't work with the instruction
> cache enabled, it leads to corruptions on the i.MX27. We stumbled upon
> this earlier and the solution at that time was to disable the
> instruction cache in the NAND boot code. It is, however, more reliable
> to just not enable the instruction cache in the first place.
> This is not particularly nice as we have to ifdef this in generic code,=

> duplicate arm_cpu_lowlevel_init(), or call arm_cpu_lowlevel_init() late=
r
> when we are out of NFC SRAM. From the different bad solutions I chose
> to ifdef the instruction cache away. It will be enabled later in the
> common cache functions.


Hm... is it possible that we have similar speculation issues as on i.MX6U=
L? The CPU was speculating
in to IOMEM, caused cache poisoning/corruption and executed corrupted cac=
he.

> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/cpu/lowlevel.S                | 2 ++
>  arch/arm/mach-imx/external-nand-boot.c | 9 ---------
>  2 files changed, 2 insertions(+), 9 deletions(-)
>=20
> diff --git a/arch/arm/cpu/lowlevel.S b/arch/arm/cpu/lowlevel.S
> index 3b52644e43..203a4afc47 100644
> --- a/arch/arm/cpu/lowlevel.S
> +++ b/arch/arm/cpu/lowlevel.S
> @@ -57,8 +57,10 @@ THUMB(	orr	r12, r12, #PSR_T_BIT	)
>  	bic	r12, r12, #(CR_M | CR_C | CR_B)
>  	bic	r12, r12, #(CR_S | CR_R | CR_V)
> =20
> +#ifndef CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND
>  	/* enable instruction cache */
>  	orr	r12, r12, #CR_I
> +#endif
> =20
>  #if __LINUX_ARM_ARCH__ >=3D 6
>  	orr	r12, r12, #CR_U
> diff --git a/arch/arm/mach-imx/external-nand-boot.c b/arch/arm/mach-imx=
/external-nand-boot.c
> index de8e0ffe5d..bf683de858 100644
> --- a/arch/arm/mach-imx/external-nand-boot.c
> +++ b/arch/arm/mach-imx/external-nand-boot.c
> @@ -308,12 +308,6 @@ static void BARE_INIT_FUNCTION(imx35_nand_load_ima=
ge)(void)
>  static void __noreturn BARE_INIT_FUNCTION(imx##soc##_boot_nand_externa=
l_cont)  \
>  			(void *boarddata)				\
>  {									\
> -	uint32_t r;							\
> -									\
> -	r =3D get_cr();							\
> -	r |=3D CR_I;							\
> -	set_cr(r);							\
> -									\
>  	imx##soc##_nand_load_image();					\
>  									\
>          imx##soc##_barebox_entry(boarddata);				\
> @@ -331,9 +325,6 @@ void __noreturn BARE_INIT_FUNCTION(imx##soc##_bareb=
ox_boot_nand_external) \
>  	int i;								\
>  	void __noreturn (*fn)(void *);					\
>  									\
> -	r =3D get_cr();							\
> -	r &=3D ~CR_I;							\
> -	set_cr(r);							\
>  	/* skip NAND boot if not running from NFC space */		\
>  	r =3D get_pc();							\
>  	if (r < nfc_base || r > nfc_base + 0x800)			\
>=20



--UrLlui5jSLkIYas1NLhVmHTuo7SvGLS9I--

--RRC8maP0kOfbaJRgFxTYOh2w2hIkgPRMo
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEpENFL0P3hvQ7p0DDdQOiSHVI77QFAl5M1FIACgkQdQOiSHVI
77Re3wf/VybI+GY1K4oga8/35UFUWs9WzJAoXS98FS7K+PyJXfZi8ZM5y7RQqx5j
ReZeeFTm8cGMNXPox5Li+zVv1Hj4LjxZYtL/mTZ+uRNjz84GVSt+HafAGzz9ws5b
T4pFdCg+/LNX11dpsnwH8JYcp5xSUzcMOPiA48HtChbtLhPyvoPFEMVulmSQJEj8
QKUTcFDfgC6Mh8rdZ36JQb8Mf4bSTdQ68KhM9RtXIOIjGyXWuP7Hm0sMTMJkU0qw
RpVd8TA0iSF4TLnmZ5mC37IZtEf35d0071ISkKm7YDYauiJDQDYgN5tbxrZ94Wmu
qTLQzPAy9lGVUxahuJ7s/7bN8THlvA==
=5HQN
-----END PGP SIGNATURE-----

--RRC8maP0kOfbaJRgFxTYOh2w2hIkgPRMo--


--===============8060269174928901241==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============8060269174928901241==--
