Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXTMB-0007T4-Vg
 for barebox@lists.infradead.org; Thu, 13 Dec 2018 15:57:01 +0000
References: <20181213074430.25614-1-r.czerwinski@pengutronix.de>
 <20181213074430.25614-5-r.czerwinski@pengutronix.de>
From: Oleksij Rempel <linux@rempel-privat.de>
Message-ID: <21f248f5-59e9-c80b-aec7-6959c916a5eb@rempel-privat.de>
Date: Thu, 13 Dec 2018 16:56:46 +0100
MIME-Version: 1.0
In-Reply-To: <20181213074430.25614-5-r.czerwinski@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============4695333449119425410=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 4/8] serial_ns16550: handle default reg-io-width
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>, barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============4695333449119425410==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="kArdBCigzM3SsbPiyQfmH271jOwyQEMZD"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--kArdBCigzM3SsbPiyQfmH271jOwyQEMZD
Content-Type: multipart/mixed; boundary="mgJ4Lv6fCEt4DbDO5ULaLoD4xw1bkItJR";
 protected-headers="v1"
From: Oleksij Rempel <linux@rempel-privat.de>
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>,
 barebox@lists.infradead.org
Message-ID: <21f248f5-59e9-c80b-aec7-6959c916a5eb@rempel-privat.de>
Subject: Re: [PATCH v2 4/8] serial_ns16550: handle default reg-io-width
References: <20181213074430.25614-1-r.czerwinski@pengutronix.de>
 <20181213074430.25614-5-r.czerwinski@pengutronix.de>
In-Reply-To: <20181213074430.25614-5-r.czerwinski@pengutronix.de>

--mgJ4Lv6fCEt4DbDO5ULaLoD4xw1bkItJR
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: quoted-printable

Am 13.12.18 um 08:44 schrieb Rouven Czerwinski:
> According to the device tree bindings for 8250, width is an optional pr=
operty.
> Default to 1 which is the same default value as used by the kernel.
> Before this change the driver would not work for device trees which do =
not
> include the optional binding.
>=20
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> ---
>  drivers/serial/serial_ns16550.c | 46 ++++++++++++++++-----------------=

>  1 file changed, 23 insertions(+), 23 deletions(-)
>=20
> diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns=
16550.c
> index 4d73ea8b8..8ddcfdbef 100644
> --- a/drivers/serial/serial_ns16550.c
> +++ b/drivers/serial/serial_ns16550.c
> @@ -297,36 +297,36 @@ static int ns16550_tstc(struct console_device *cd=
ev)
>  static void ns16550_probe_dt(struct device_d *dev, struct ns16550_priv=
 *priv)
>  {
>  	struct device_node *np =3D dev->device_node;
> -	u32 width;
> +	u32 width =3D 1;
> =20
>  	if (!IS_ENABLED(CONFIG_OFDEVICE))
>  		return;
> =20
>  	of_property_read_u32(np, "clock-frequency", &priv->plat.clock);
>  	of_property_read_u32(np, "reg-shift", &priv->plat.shift);
> -	if (!of_property_read_u32(np, "reg-io-width", &width))
> -		switch (width) {
> -		case 1:
> -			priv->read_reg =3D ns16550_read_reg_mmio_8;
> -			priv->write_reg =3D ns16550_write_reg_mmio_8;
> -			break;
> -		case 2:
> -			priv->read_reg =3D ns16550_read_reg_mmio_16;
> -			priv->write_reg =3D ns16550_write_reg_mmio_16;
> -			break;
> -		case 4:
> -			if (of_device_is_big_endian(np)) {
> -				priv->read_reg =3D ns16550_read_reg_mmio_32be;
> -				priv->write_reg =3D ns16550_write_reg_mmio_32be;
> -			} else {
> -				priv->read_reg =3D ns16550_read_reg_mmio_32;
> -				priv->write_reg =3D ns16550_write_reg_mmio_32;
> -			}
> -			break;
> -		default:
> -			dev_err(dev, "unsupported reg-io-width (%d)\n",
> -				width);
> +	of_property_read_u32(np, "reg-io-width", &width);

i think it is not good to drop error handling completely. We may fail in
different ways:
static const void *of_find_property_value_of_size(const struct
device_node *np,
			const char *propname, u32 len)
{
	struct property *prop =3D of_find_property(np, propname, NULL);
	const void *value;

	if (!prop)
		return ERR_PTR(-EINVAL);
	value =3D of_property_get_value(prop);
	if (!value)
		return ERR_PTR(-ENODATA);
	if (len > prop->length)
		return ERR_PTR(-EOVERFLOW);

	return value;
}


> +	switch (width) {
> +	case 1:
> +		priv->read_reg =3D ns16550_read_reg_mmio_8;
> +		priv->write_reg =3D ns16550_write_reg_mmio_8;
> +		break;
> +	case 2:
> +		priv->read_reg =3D ns16550_read_reg_mmio_16;
> +		priv->write_reg =3D ns16550_write_reg_mmio_16;
> +		break;
> +	case 4:
> +		if (of_device_is_big_endian(np)) {
> +			priv->read_reg =3D ns16550_read_reg_mmio_32be;
> +			priv->write_reg =3D ns16550_write_reg_mmio_32be;
> +		} else {
> +			priv->read_reg =3D ns16550_read_reg_mmio_32;
> +			priv->write_reg =3D ns16550_write_reg_mmio_32;
>  		}
> +		break;
> +	default:
> +		dev_err(dev, "unsupported reg-io-width (%d)\n",
> +			width);
> +	}
>  }
> =20
>  static struct ns16550_drvdata ns16450_drvdata =3D {
>=20


--=20
Regards,
Oleksij


--mgJ4Lv6fCEt4DbDO5ULaLoD4xw1bkItJR--

--kArdBCigzM3SsbPiyQfmH271jOwyQEMZD
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEERBNZvwSgvmcMY/T74omh9DUaUbMFAlwSgT4ACgkQ4omh9DUa
UbN/BBAAoZUdCOBzv03Q2eOFPdkSLiIfYyhbKks9wEyKEIW2MWWk1UY01W7kH8UA
DkJ5knUl3aOjVPTuXz7QyU2ln+3CWyDACSdoUT91ZjnFpQiETrTbTdmruScJFBDc
RILtDuW9WbsTQOGNZ2n203bOTZAcTPaUcMv6iJXOB97yI3PRDBG2vdvuoCyMRo/k
P8vcdMdGnNXyPZJ0hBV6uGVvF7xdJznh3JoJG7YBtRcqqz4PSTGyj3KRPSaHk0Vx
VPW09oiRu9zyxhcjfVmuMQK0YPWjHpSSyxHrijMXLIER1NXMhXyXbBzSJB9410g6
/uGcHigZSU5uHaD6KTdKuTEvtm3amcT27fgBSlLaFEnW31U4RFy9IQ3WV8xwDG47
j1/izGFx9E8t5pLHpw8DluCHab7erLlQtoBowx9D4unhHqQqxbO0zaDGSGnJy6N5
MXHYypgOhjSiz0JSfZWrlZEF2wmbNNSbEpsqEzYU65vxvt7ge3/mP4/b0twEK3XN
eeYWh05IUemCo2w8m0XNj8ffR0KxsODwRF0w6uGQwdkhhJlJNSVDwe1Nh2E8pbp2
sbgnAO+q1PStINm5OKHmi0VU/ngM7yOlsbzUtmMDP9Dr+CDsQ3Rzar0iaTO9h6H3
Q2APEPIyU9aCFSH1G1lz/Z4b+R0+KURZUtYZ6LNJW30WvIN/AR4=
=JPtV
-----END PGP SIGNATURE-----

--kArdBCigzM3SsbPiyQfmH271jOwyQEMZD--


--===============4695333449119425410==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============4695333449119425410==--
