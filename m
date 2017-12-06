Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eMcDg-0000fG-DB
 for barebox@lists.infradead.org; Wed, 06 Dec 2017 16:06:51 +0000
Date: Wed, 6 Dec 2017 17:06:08 +0100
From: Alexander Dahl <post@lespocky.de>
Message-ID: <20171206160608.z6bwefdwioxkcnrx@falbala.home.lespocky.de>
References: <20171206151233.29342-1-r.hieber@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20171206151233.29342-1-r.hieber@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============3076391709875109552=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] ARM: dts: bcm2835-rpi: re-enable booting from SD card
To: Roland Hieber <r.hieber@pengutronix.de>
Cc: barebox@lists.infradead.org, Roland Hieber <rohieb@rohieb.name>


--===============3076391709875109552==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ykc6aeumnq23ttz6"
Content-Disposition: inline


--ykc6aeumnq23ttz6
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hei hei,

as already stated on the DistroKit list: I'm not sure if this is the
right approach for barebox, however I successfully tested it on top of
master.

Greets
Alex

Tested-by: Alexander Dahl <post@lespocky.de>

On Wed, Dec 06, 2017 at 04:12:33PM +0100, Roland Hieber wrote:
> From: Roland Hieber <rohieb@rohieb.name>
>=20
> Kernel commit a19adf8d86e822eba502486524127595372c85f6 [0] changed the
> RPi1 device tree from &sdhci to &sdhost, which was imported in barebox
> commit d14b844b08635c717fb52a294ed8d6872e260315. It seems that barebox
> does not have a driver for brcm,bcm2835-sdhost (yet), which resulted in
> barebox unable to boot from SD card. However, the driver for
> brcm,bcm2835-sdhci worked fine in the past.
>=20
> Although the upstream change was made for good reasons, the simplest
> change for barebox for now is to revert to using &sdhci and disable
> &sdhost.
>=20
> Thanks to Alexander Dahl for raising this issue on the DistroKit
> mailing list!
>=20
> [0]: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/c=
ommit/?id=3Da19adf8d86e822eba502486524127595372c85f6
>=20
> Cc: Alexander Dahl <post@lespocky.de>
> Signed-off-by: Roland Hieber <rohieb@rohieb.name>
> ---
>  arch/arm/dts/bcm2835-rpi.dts | 7 +++++++
>  1 file changed, 7 insertions(+)
>=20
> diff --git a/arch/arm/dts/bcm2835-rpi.dts b/arch/arm/dts/bcm2835-rpi.dts
> index 0095f58a3c..ab2d6dff64 100644
> --- a/arch/arm/dts/bcm2835-rpi.dts
> +++ b/arch/arm/dts/bcm2835-rpi.dts
> @@ -9,3 +9,10 @@
>  		reg =3D <0x0 0x0>;
>  	};
>  };
> +&sdhci {
> +	status =3D "okay";
> +};
> +
> +&sdhost {
> +	status =3D "disabled";
> +};
> --=20
> 2.11.0
>=20
>=20
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

--=20
=BBWith the first link, the chain is forged. The first speech censured,=20
the first thought forbidden, the first freedom denied, chains us all=20
irrevocably.=AB (Jean-Luc Picard, quoting Judge Aaron Satie)
*** GnuPG-FP: C28E E6B9 0263 95CF 8FAF  08FA 34AD CD00 7221 5CC6 ***

--ykc6aeumnq23ttz6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEwo7muQJjlc+Prwj6NK3NAHIhXMYFAlooFWwACgkQNK3NAHIh
XMZ3Mg/9GPdyWSuYGRW9zIgIjp0R81ENYJoJAdBAIQBwDzPm58dREihga+4gb9E3
jCbJJg2vY2915eNr3J+mv1vtvFF5moUENWQFg1PHD6AznjgBc8BnC8ucgF+yH7pJ
PLGPXEzQIFQAIEfPKdIJhC2DaKSj8t0IlJ885eBIFBIzJf4s7epA6M1tfpXxJq6L
GUA1czeFNND0GzxBOvZQNI6zVpxElheltZeUq58/6lrKgoQeKpcCmv9OHRgopQmP
oolToh1ZXwP4OyeBIK79i39N2WBIlWnQGsyBGxE6WF3AKZKz4xYHg4VuwnlKYs5w
B9tOS68uPIZzrZsSp4OqsNsettZ217WzSY0UysqeTRElMDEZ3T9mYF4aH1C3tqJP
zq2u3dCIyK5nvhT5t2U6KZx8kR5GB5LcN898rSg+HnZyt8/87GDiXcjG2EHyajv5
io5crN+M+uGMBHTQr5E5YY3b0o3EF2rIxshL+Kgy1nMaaoLfX64Ra01KRsUHqYp4
BSQr9Jfc2ZUWQJ0GKOFOU5+7x5wZ7Mdst6nzgBi5f6CoNlK+9Jt0HBpkMXLCFDX6
8CGvkU6V4RNfOWn3QLBw090ha53ssbq5mXAVy/JMh/al0nE9LKAyMy9qTb2ibNVI
mRv3kfUmf5p4pZ37cBQLZ/xaqGnzemBWYc/264qR6uVkg+hxtYk=
=IKrK
-----END PGP SIGNATURE-----

--ykc6aeumnq23ttz6--


--===============3076391709875109552==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============3076391709875109552==--
