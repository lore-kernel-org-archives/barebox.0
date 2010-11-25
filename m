Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PLchL-00027U-Kv
	for barebox@lists.infradead.org; Thu, 25 Nov 2010 14:21:20 +0000
Message-ID: <4CEE70D6.5020102@pengutronix.de>
Date: Thu, 25 Nov 2010 15:21:10 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <1290688903-24955-1-git-send-email-marek.belisko@open-nandra.com>	<4CEE5B36.90309@pengutronix.de>
	<AANLkTi=bvrU1sMZDB56N5jAbU8Dg4vm28V773fwazYik@mail.gmail.com>
In-Reply-To: <AANLkTi=bvrU1sMZDB56N5jAbU8Dg4vm28V773fwazYik@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1952689175=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] drivers: mci: Fix compilation warning.
To: Belisko Marek <marek.belisko@gmail.com>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--===============1952689175==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enigDD2B69181CE156F1A89345B0"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enigDD2B69181CE156F1A89345B0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 11/25/2010 02:23 PM, Belisko Marek wrote:
> On Thu, Nov 25, 2010 at 1:48 PM, Marc Kleine-Budde <mkl@pengutronix.de>=
 wrote:
>> On 11/25/2010 01:41 PM, Marek Belisko wrote:
>>> Fix compilation warning:
>>> drivers/mci/mci-core.c:1002:
>>> warning: comparison of distinct pointer types lacks a cast
>>>
>>> Signed-off-by: Marek Belisko <marek.belisko@open-nandra.com>
>>> ---
>>>  drivers/mci/mci-core.c |    2 +-
>>>  1 files changed, 1 insertions(+), 1 deletions(-)
>>>
>>> diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
>>> index a8aa486..bc82201 100644
>>> --- a/drivers/mci/mci-core.c
>>> +++ b/drivers/mci/mci-core.c
>>> @@ -999,7 +999,7 @@ static int mci_sd_read(struct device_d *disk_dev,=
 uint64_t sector_start,
>>>       }
>>>
>>>       while (sector_count) {
>>> -             int now =3D min(sector_count, 32);
>>> +             int now =3D min(sector_count, (unsigned) 32);
>>
>> for raw numbers you usually add a prefix "U".
> Hopefully you mean suffix :) 32U. Will resend.

DOH!

Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--------------enigDD2B69181CE156F1A89345B0
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAkzucNwACgkQjTAFq1RaXHMf+gCffFr0rPdPy4WhmqbpWY+FxOlO
TM4An0ue0+9I8hLCv0JJibG9jJhr47mw
=vvZS
-----END PGP SIGNATURE-----

--------------enigDD2B69181CE156F1A89345B0--


--===============1952689175==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1952689175==--
