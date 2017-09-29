Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dy3OT-00019L-Gf
 for barebox@lists.infradead.org; Fri, 29 Sep 2017 22:04:28 +0000
References: <20170920180557.22857-1-linux@rempel-privat.de>
 <20170920180557.22857-2-linux@rempel-privat.de>
 <20170926070921.izgbsflie2ot22gy@pengutronix.de>
From: Oleksij Rempel <linux@rempel-privat.de>
Message-ID: <2f8e157f-ca0c-5df1-3e14-043e90cc0aa1@rempel-privat.de>
Date: Sat, 30 Sep 2017 00:03:45 +0200
MIME-Version: 1.0
In-Reply-To: <20170926070921.izgbsflie2ot22gy@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============2473324967826721125=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v1 2/3] MIPS: dts: tl_wdr4300: add Atheros ART partition
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============2473324967826721125==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="nsai6PptFT0bQWLG7uSc9R4lEMQcdX6Kf"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--nsai6PptFT0bQWLG7uSc9R4lEMQcdX6Kf
Content-Type: multipart/mixed; boundary="3XAHQAnapWjphVlNSQLfWShhQucvm1XhE";
 protected-headers="v1"
From: Oleksij Rempel <linux@rempel-privat.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <2f8e157f-ca0c-5df1-3e14-043e90cc0aa1@rempel-privat.de>
Subject: Re: [PATCH v1 2/3] MIPS: dts: tl_wdr4300: add Atheros ART partition
References: <20170920180557.22857-1-linux@rempel-privat.de>
 <20170920180557.22857-2-linux@rempel-privat.de>
 <20170926070921.izgbsflie2ot22gy@pengutronix.de>
In-Reply-To: <20170926070921.izgbsflie2ot22gy@pengutronix.de>

--3XAHQAnapWjphVlNSQLfWShhQucvm1XhE
Content-Type: text/plain; charset=utf-8
Content-Language: ru
Content-Transfer-Encoding: quoted-printable

Am 26.09.2017 um 09:09 schrieb Sascha Hauer:
> Hi Oleksij,
>=20
> On Wed, Sep 20, 2017 at 08:05:56PM +0200, Oleksij Rempel wrote:
>> and define it as source of MAC address for ag71xx driver
>>
>> Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
>> ---
>>  arch/mips/dts/ar9344-tl-wdr4300-v1.7.dts | 11 +++++++++++
>>  1 file changed, 11 insertions(+)
>>
>> diff --git a/arch/mips/dts/ar9344-tl-wdr4300-v1.7.dts b/arch/mips/dts/=
ar9344-tl-wdr4300-v1.7.dts
>> index d16cab005..3733ad5b7 100644
>> --- a/arch/mips/dts/ar9344-tl-wdr4300-v1.7.dts
>> +++ b/arch/mips/dts/ar9344-tl-wdr4300-v1.7.dts
>> @@ -26,6 +26,12 @@
>>  			compatible =3D "barebox,environment";
>>  			device-path =3D &spiflash, "partname:barebox-environment";
>>  		};
>> +
>> +		art@0 {
>> +			compatible =3D "qca,art", "qca,art-ar9344";
>> +			device-path =3D &spiflash, "partname:art";
>> +			barebox,provide-mac-address =3D <&mac0>;
>> +		};
>>  	};
>>  };
>> =20
>> @@ -59,6 +65,11 @@
>>  			label =3D "barebox-environment";
>>  			reg =3D <0x80000 0x10000>;
>>  		};
>> +
>> +		partition@7f0000 {
>> +			label =3D "art";
>> +			reg =3D <0x7f0000 0x10000>;
>> +		};
>>  	};
>>  };
>=20
> There once was a proposal to add nvmem support to mtd
> (https://lkml.org/lkml/2017/3/7/131). Apparently this didn't make it
> mainline, although the comments to this series haven't been very
> negative. Could you have a look if it's worth to pick this work up
> or at least adopt it for barebox? I have the feeling that nvmem support=

> for mtd is something that we haven't come across for the last time.

Ok, i'll take a look on it.
Since this will take some time, i'll resend some patches from this set,
separately

--=20
Regards,
Oleksij


--3XAHQAnapWjphVlNSQLfWShhQucvm1XhE--

--nsai6PptFT0bQWLG7uSc9R4lEMQcdX6Kf
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF4EAREIAAYFAlnOw0UACgkQHwImuRkmbWkCdgD+OE00NrNLGTHnjFAf9uQsg1UY
vfCQLC/QwoGReeuXPyAA/2pOqwYko/V6UndlvcSJ6/EeFPdCw8HV1/6hwJdVAmYK
=q1x/
-----END PGP SIGNATURE-----

--nsai6PptFT0bQWLG7uSc9R4lEMQcdX6Kf--


--===============2473324967826721125==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============2473324967826721125==--
