Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aGS18-0003sb-Er
 for barebox@lists.infradead.org; Tue, 05 Jan 2016 13:51:19 +0000
References: <1451981463-23604-1-git-send-email-mkl@pengutronix.de>
 <1451981463-23604-4-git-send-email-mkl@pengutronix.de>
 <CAGm1_kunZqatbVbE3AgS-wQdx-gUqeShE2PrHYwxgLX74DRRLw@mail.gmail.com>
 <568B9BCD.9070509@pengutronix.de>
 <CAGm1_ktRkoqmP4j3AWch1KJqwWzvCqix8c7EUEiZmRd+vh8qKQ@mail.gmail.com>
 <568BAF11.4090009@pengutronix.de>
 <CAGm1_kuAijx2ZqpJ7aSyLZvSoYDv306QyvtsSA8pRCpFrWM+3Q@mail.gmail.com>
From: Marc Kleine-Budde <mkl@pengutronix.de>
Message-ID: <568BCA39.6010208@pengutronix.de>
Date: Tue, 5 Jan 2016 14:50:49 +0100
MIME-Version: 1.0
In-Reply-To: <CAGm1_kuAijx2ZqpJ7aSyLZvSoYDv306QyvtsSA8pRCpFrWM+3Q@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0471436247638061579=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 3/3] bootm: add initial FIT support
To: Yegor Yefremov <yegorslists@googlemail.com>
Cc: Sascha Hauer <sha@pengutronix.de>, barebox <barebox@lists.infradead.org>, kernel@pengutronix.de

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============0471436247638061579==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="jgPMKvjvkEcnSi1Mfm5w9Sj3R60r3XfOb"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--jgPMKvjvkEcnSi1Mfm5w9Sj3R60r3XfOb
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 01/05/2016 02:05 PM, Yegor Yefremov wrote:
>>>>> What about unsigned images?
>>>>
>>>> That's not our use case. We use plain zImages instead.
>>>
>>> The solution would be to introduce an option like in U-Boot?
>>>
>>> CONFIG_FIT_SIGNATURE:
>>>
>>> This option enables signature verification of FIT uImages,
>>> using a hash signed and verified using RSA. If
>>> CONFIG_SHA_PROG_HW_ACCEL is defined, i.e support for progressive
>>> hashing is available using hardware, RSA library will use it.
>>> See doc/uImage.FIT/signature.txt for more details.
>>
>> Technically possible, but I'm not sure what are the benefits of using
>> fit images, if you don't need signatures. barebox implements
>> freedesktop.org's bootspec and this is IMHO the way to go.
>=20
> For me FIT is just a way to have a kernel and a bunch of device tree
> blobs in one file. Signed or not signed is an option for me. Just like
> U-Boot implements it. This is user responsibility.

Send patches. :D

> In my use case I just read device ID from EEPROM, load my
> kernel-fit.itb and select needed DTB via this ID. This way I have only
> one SD card image, that can be run on more, than 10 different devices
> using the same core module.

>>>>> I also get: unsupported algo crc32
>>>>> Is it intended to be supported?
>>>>
>>>> Not for our usecase - feel free to add crc32 support.
>>>
>>> OK.
>>>
>>> But what about FIT configuration selection syntax?
>>
>> What's this?
>=20
> Have you seen my comments to this patch regarding
> fit_open_configuration() routine?

sorry - I've missed that. Too many quoted lines. :D

>> > +static int fit_open_configuration(struct fit_handle *handle, int nu=
m)
>> > +{
>> > +       struct device_node *conf_node =3D NULL, *sig_node;
>> > +       char unit_name[10];
>> > +       const char *unit, *desc;
>> > +       int ret, level;
>> > +
>> > +       conf_node =3D of_get_child_by_name(handle->root, "configurat=
ions");
>> > +       if (!conf_node)
>> > +               return -ENOENT;
>> > +
>> > +       if (num) {
>> > +               snprintf(unit_name, sizeof(unit_name), "conf@%d", nu=
m);
>=20
> This is not working for my *.its file:
> https://github.com/visionsystemsgmbh/onrisc_br_bsp/blob/master/board/vs=
com/baltos/kernel-fit.its
> U-Boot is working with bootm ${loadaddr}#conf${board_name}
>=20
> For Barebox I've changed this line to
>=20
> snprintf(unit_name, sizeof(unit_name), "conf%d@1", num)
>=20
> This is how I start Linux: bootm /boot/kernel-fit.itb@$global.board.id
>=20
> What is the standard for providing FIT configuration?

Don't know. Is there a spec in the u-boot sources, otherwise use the code=
=2E

Marc
--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--jgPMKvjvkEcnSi1Mfm5w9Sj3R60r3XfOb
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEcBAEBCgAGBQJWi8o5AAoJEP5prqPJtc/HG9oIAK/mdbMbBsN35HVZdV9DchBA
uQmWay+UJI+/9exuxpneCIlh9cpUVm2lfq7ZZk/fNUjCaJs/blY2N/PcVOpUhEU5
qhVr66I9ADXVyMOPbCu0UXB/wqE1BWwuAV/1KoRxUA4k1h5FJFZWtGz/yfNN+lai
BmR+xMF40fdLEsE4/rvF5sY8r/uPd5lkmCJUjOgOwkky+aPtN5t8vbqxHuFvl1o2
GZYyaYYu8mC4AB4MCh+r9KDDbN+/9Vp8dy1hv3GImJVqRH9X2KcBNC29qvR9gAtU
XEmIhDrv6SLsrsHkb6peB9dH4jSg8oY/i+b9k0VBuEjrEnJcAhRALafV0Yuu9Po=
=bivL
-----END PGP SIGNATURE-----

--jgPMKvjvkEcnSi1Mfm5w9Sj3R60r3XfOb--


--===============0471436247638061579==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0471436247638061579==--
