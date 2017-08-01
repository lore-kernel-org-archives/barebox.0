Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dcUqa-0008QF-Ew
 for barebox@lists.infradead.org; Tue, 01 Aug 2017 10:56:22 +0000
References: <20170727050055.14188-1-o.rempel@pengutronix.de>
 <20170727050055.14188-2-o.rempel@pengutronix.de>
 <1501495425.2431.3.camel@pengutronix.de>
From: Oleksij Rempel <linux@rempel-privat.de>
Message-ID: <19bb648d-0842-75e0-e26b-9d2ace501087@rempel-privat.de>
Date: Tue, 1 Aug 2017 12:55:39 +0200
MIME-Version: 1.0
In-Reply-To: <1501495425.2431.3.camel@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1380572011371890146=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v1 2/2] serial: ns16550: provide big-endian support
To: Lucas Stach <l.stach@pengutronix.de>, Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============1380572011371890146==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="S9OdwR5skvscJi5ko1MAP9sQ5Vc56WcaF"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--S9OdwR5skvscJi5ko1MAP9sQ5Vc56WcaF
Content-Type: multipart/mixed; boundary="Kt6iVGfNGtw8rIqH6OgdGBASCI6Vd98oK";
 protected-headers="v1"
From: Oleksij Rempel <linux@rempel-privat.de>
To: Lucas Stach <l.stach@pengutronix.de>,
 Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <19bb648d-0842-75e0-e26b-9d2ace501087@rempel-privat.de>
Subject: Re: [PATCH v1 2/2] serial: ns16550: provide big-endian support
References: <20170727050055.14188-1-o.rempel@pengutronix.de>
 <20170727050055.14188-2-o.rempel@pengutronix.de>
 <1501495425.2431.3.camel@pengutronix.de>
In-Reply-To: <1501495425.2431.3.camel@pengutronix.de>

--Kt6iVGfNGtw8rIqH6OgdGBASCI6Vd98oK
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Am 31.07.2017 um 12:03 schrieb Lucas Stach:
> Am Donnerstag, den 27.07.2017, 07:00 +0200 schrieb Oleksij Rempel:
>> we need it at least for QCA AR9344
>>
>> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
>> ---
>>  drivers/serial/serial_ns16550.c | 19 +++++++++++++++++--
>>  1 file changed, 17 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_n=
s16550.c
>> index a8953cd99d..4d73ea8b87 100644
>> --- a/drivers/serial/serial_ns16550.c
>> +++ b/drivers/serial/serial_ns16550.c
>> @@ -94,6 +94,16 @@ static void ns16550_write_reg_mmio_32(struct ns1655=
0_priv *priv, uint8_t val, un
>>  	writel(val, priv->mmiobase + offset);
>>  }
>> =20
>> +static uint8_t ns16550_read_reg_mmio_32be(struct ns16550_priv *priv, =
unsigned offset)
>> +{
>> +	return ioread32be(priv->mmiobase + offset);
>> +}
>> +
>> +static void ns16550_write_reg_mmio_32be(struct ns16550_priv *priv, ui=
nt8_t val, unsigned offset)
>> +{
>> +	iowrite32be(val, priv->mmiobase + offset);
>> +}
>=20
> This doesn't work on PPC and x86, as those 2 architectures are missing
> the "be" variants of the iowrite/ioread functions.

hmm....

include/asm-generic/io.h:#define ioread32be(addr)
__be32_to_cpu(__raw_readl(addr))

include/linux/byteorder/little_endian.h:#define __be32_to_cpu(x)
__swab32((__force __u32)(__be32)(x))
include/linux/byteorder/big_endian.h:#define __be32_to_cpu(x) ((__force
__u32)(__be32)(x))

i assume it should be available on all platforms. Or do i miss something?=


--=20
Regards,
Oleksij


--Kt6iVGfNGtw8rIqH6OgdGBASCI6Vd98oK--

--S9OdwR5skvscJi5ko1MAP9sQ5Vc56WcaF
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF4EAREIAAYFAlmAXjAACgkQHwImuRkmbWl3ogD+NoKtccNXnd7Rq96jmbQV0nrD
p+O/ChCddR6aoKqRBSkBAJl5Pyr1jT7/hPFEy7iKcPXEVgSW4WAUM3KqxDPZVm1U
=qU6S
-----END PGP SIGNATURE-----

--S9OdwR5skvscJi5ko1MAP9sQ5Vc56WcaF--


--===============1380572011371890146==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1380572011371890146==--
