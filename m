Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UV16P-000395-1C
 for barebox@lists.infradead.org; Wed, 24 Apr 2013 14:55:22 +0000
Message-ID: <5177F24E.6020507@pengutronix.de>
Date: Wed, 24 Apr 2013 16:55:10 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <1366382189-15575-1-git-send-email-mkl@pengutronix.de>
 <517797C5.3010208@pengutronix.de> <20130424083521.GB32299@pengutronix.de>
 <517799B8.3000305@pengutronix.de> <20130424144531.GE32299@pengutronix.de>
In-Reply-To: <20130424144531.GE32299@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============6660216833404928987=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2] ARM i.MX28: make chip reset via reset pin work again
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Steffen Trumtrar <s.trumtrar@pengutronix.de>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============6660216833404928987==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="----enig2MNJAEOHBLQKQXWAJXIPM"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
------enig2MNJAEOHBLQKQXWAJXIPM
Content-Type: text/plain; charset=ISO-8859-15
Content-Transfer-Encoding: quoted-printable

On 04/24/2013 04:45 PM, Sascha Hauer wrote:
> On Wed, Apr 24, 2013 at 10:37:12AM +0200, Marc Kleine-Budde wrote:
>> On 04/24/2013 10:35 AM, Sascha Hauer wrote:
>>> On Wed, Apr 24, 2013 at 10:28:53AM +0200, Marc Kleine-Budde wrote:
>>>> On 04/19/2013 04:36 PM, Marc Kleine-Budde wrote:
>>>>> Since commit:
>>>>>
>>>>>     2ccd451 ARM i.MX28: change default watchdog reset method
>>>>>
>>>>> the external reset via the reset pin is broken. That commit overwri=
tes the
>>>>> HW_CLKCTRL_RESET register with only WDOG_POR_DISABLE set, which res=
ults in
>>>>> disabling the external reset.
>>>>>
>>>>> This patch uses read-modify-write to set the WDOG_POR_DISABLE, leav=
ing the
>>>>> WDOG_POR_DISABLE untouched.
>>>>>
>>>>> Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
>>>>> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
>>>>
>>>> ping
>>>
>>> pong.
>>>
>>> For master?
>>
>> at least
>=20
> Applied now.

tnx

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


------enig2MNJAEOHBLQKQXWAJXIPM
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)
Comment: Using GnuPG with Thunderbird - http://www.enigmail.net/

iEYEARECAAYFAlF38lEACgkQjTAFq1RaXHO8UQCeJUtaZ9BAjqOFLyBkA6xQ7QrQ
d6YAnjeOqJ/HLBGnGCIE2vt04NshXEuK
=dv22
-----END PGP SIGNATURE-----

------enig2MNJAEOHBLQKQXWAJXIPM--


--===============6660216833404928987==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============6660216833404928987==--
