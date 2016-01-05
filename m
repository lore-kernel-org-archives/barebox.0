Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aGQCz-0000Il-Pp
 for barebox@lists.infradead.org; Tue, 05 Jan 2016 11:55:27 +0000
References: <1451981463-23604-1-git-send-email-mkl@pengutronix.de>
 <1451981463-23604-4-git-send-email-mkl@pengutronix.de>
 <CAGm1_kunZqatbVbE3AgS-wQdx-gUqeShE2PrHYwxgLX74DRRLw@mail.gmail.com>
 <568B9BCD.9070509@pengutronix.de>
 <CAGm1_ktRkoqmP4j3AWch1KJqwWzvCqix8c7EUEiZmRd+vh8qKQ@mail.gmail.com>
From: Marc Kleine-Budde <mkl@pengutronix.de>
Message-ID: <568BAF11.4090009@pengutronix.de>
Date: Tue, 5 Jan 2016 12:54:57 +0100
MIME-Version: 1.0
In-Reply-To: <CAGm1_ktRkoqmP4j3AWch1KJqwWzvCqix8c7EUEiZmRd+vh8qKQ@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============6268449103306957505=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 3/3] bootm: add initial FIT support
To: Yegor Yefremov <yegorslists@googlemail.com>
Cc: Sascha Hauer <sha@pengutronix.de>, barebox <barebox@lists.infradead.org>, kernel@pengutronix.de

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============6268449103306957505==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="9Es8waHgT4Ph8iSu3isVepWUwpSuGtEl8"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--9Es8waHgT4Ph8iSu3isVepWUwpSuGtEl8
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 01/05/2016 11:40 AM, Yegor Yefremov wrote:
> On Tue, Jan 5, 2016 at 11:32 AM, Marc Kleine-Budde <mkl@pengutronix.de>=
 wrote:
>> On 01/05/2016 11:28 AM, Yegor Yefremov wrote:
>>> Hi Marc,
>>>
>>> thanks for reposting the patches.
>>>
>>> On Tue, Jan 5, 2016 at 9:11 AM, Marc Kleine-Budde <mkl@pengutronix.de=
> wrote:
>>>> From: Jan Luebbe <jlu@pengutronix.de>
>>>>
>>>> This implementation is inspired by U-Boot's FIT support. Instead of
>>>> using libfdt (which does not exist in barebox), configuration signat=
ures
>>>> are verified by using a simplified DT parser based on barebox's own
>>>> code.
>>>>
>>>> Currently, only signed configurations with hashed images are support=
ed,
>>>> as the other variants are less useful for verified boot. Compatible =
FIT
>>>> images can be created using U-Boot's mkimage tool.
>>>
>>> What about unsigned images?
>>
>> That's not our use case. We use plain zImages instead.
>=20
> The solution would be to introduce an option like in U-Boot?
>=20
> CONFIG_FIT_SIGNATURE:
>=20
> This option enables signature verification of FIT uImages,
> using a hash signed and verified using RSA. If
> CONFIG_SHA_PROG_HW_ACCEL is defined, i.e support for progressive
> hashing is available using hardware, RSA library will use it.
> See doc/uImage.FIT/signature.txt for more details.

Technically possible, but I'm not sure what are the benefits of using
fit images, if you don't need signatures. barebox implements
freedesktop.org's bootspec and this is IMHO the way to go.

>>> I also get: unsupported algo crc32
>>> Is it intended to be supported?
>>
>> Not for our usecase - feel free to add crc32 support.
>=20
> OK.
>=20
> But what about FIT configuration selection syntax?

What's this?

Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--9Es8waHgT4Ph8iSu3isVepWUwpSuGtEl8
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEcBAEBCgAGBQJWi68RAAoJEP5prqPJtc/HqPkH/1tWDjHIyOF0kWL8GUF0N9y2
1qKcxkZ7WrHtZVXkMm9vP51rMYOlsQAVvU4/dR4k4PMDk4FCl98RgT2V6yHGHuFc
CDVXjN531eYf3XF/DmDJ+mvZ2uAFjRd7MTZTk88UNMRjloqx5V072IoTVnN+roWd
So2eg3rpf9tgQxD4prOshc64vtM8ZhjrJGhEfVzwexJ61ITzEeFi4dA3fnnjs8iY
yWROHwUj08oD6Xh8DjthWgsLny8La67Wd1PGzfxWvgb09s4hx4T+Oq6Zc8kjsRfQ
bSGvpyXVe89oz4kHx+N2HtAAqUlH6LpHHmhNh+QoAUYTo1ZLNiTOEb+iVsbhSVg=
=AwHZ
-----END PGP SIGNATURE-----

--9Es8waHgT4Ph8iSu3isVepWUwpSuGtEl8--


--===============6268449103306957505==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============6268449103306957505==--
