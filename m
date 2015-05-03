Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Yp2TJ-0000C5-Hb
 for barebox@lists.infradead.org; Sun, 03 May 2015 22:34:50 +0000
references: <1430690125-2257-1-git-send-email-andrew.smirnov@gmail.com>
 <55469BB7.9070708@pengutronix.de>
 <CAHQ1cqEoL1PD4Cg7G52YvosXmsmcg1jckGL9-65_J-=qHc3XvA@mail.gmail.com>
From: Marc Kleine-Budde <mkl@pengutronix.de>
message-id: <5546A26C.6020204@pengutronix.de>
Date: Mon, 4 May 2015 00:34:20 +0200
mime-version: 1.0
in-reply-to: <CAHQ1cqEoL1PD4Cg7G52YvosXmsmcg1jckGL9-65_J-=qHc3XvA@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============2262909034436532365=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 1/8] imx-image: Correctly fill image size in prepended
 header
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============2262909034436532365==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="PGciix975j9PXqaKrG2TnUNbwsV9RXeVM"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--PGciix975j9PXqaKrG2TnUNbwsV9RXeVM
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 05/04/2015 12:24 AM, Andrey Smirnov wrote:
[...]
>> > @@ -178,8 +183,11 @@ static int add_header_v2(void *buf, int offset,=

> uint32_t loadaddr, uint32_t imag
>> >       struct imx_flash_header_v2 *hdr;
>> >       int dcdsize =3D curdcd * sizeof(uint32_t);
>> >
>> > -     if (add_barebox_header)
>> > +     if (add_barebox_header) {
>> > +             uint32_t *psize =3D buf + ARM_HEAD_SIZE_OFFSET;
>> >               memcpy(buf, bb_header, sizeof(bb_header));
>> > +             *psize =3D imagesize;
>> > +     }
>>
>> In the HAB case, the resulting image will be CSF_LEN bytes bigger, see=
:
>> "if (prepare_sign)" below. (A signature + padding will be appended to
>> the barebox image.)
>>
>> What does the size in the barebox header mean exactly?
>=20
> I am not aware of all the use-cases, but one of them is in bootstrap
> code where the value of that field is used to determine the size of an
> image to be read from a raw character device.
>=20
> Is that information(CSF) needed by barebox itself and not only mask ROM=

> code? If not I think there would be no harm in not including those byte=
s
> in the length field.

When booting the imx6 in HAB mode from SPI-NOR (my usecase for now), the
ROM code sets up the RAM according to the DCD table, copies everything
into the RAM (hdr->boot_data.start hdr->boot_data.size) does some crypto
magic and jumps into the entry point. I think the first 1k if the image
is copied, maybe check summed, but otherwise ignored.

You can move the if (add_barebox_header) block below the if
(prepare_sign) and use hdr->boot_data.size.

Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--PGciix975j9PXqaKrG2TnUNbwsV9RXeVM
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCgAGBQJVRqJsAAoJECte4hHFiupUlFkQAKnaGPSkvVtH8mFCDsPd2d9w
GWyyCkYLTO3TyzAgoBkTV38zNN2IB0E/pZG27uGAm0cooHp4ClckQsWgLjQRzlqq
ru3xxwqy5KR7bt2uBmYr9zZa/GdlbANn75RW3H2kmmDgIYaOfza5LkaUW1/5tDBr
tMvQLhNiH7kFXcZbSeJtDCbnkY/AqweRfB+JtHEimokLin2Wx9+g2H6kYQjT3gSQ
rB3CoiM13I8oHvHh1d11nd8zY+JNEvsCcLCebrF6fT5o5zNy9M+5SKFD01EEg6fZ
Cn5VNmx6P/mht4tlw6G1ZCZhcF24TgvIUREflMDbDlcm7w20VLA5d8mpIZ/ULeJZ
Vkq9wwhm99icNwE4YRm1jK2W8UpY1hTeejx3cVAQPCp5Ec6AfPbG1ZwHRKnhXP9J
MT1mtQh5axgnMwbKT1NNB/YGHCb/Y/BXMtCL8EZNJl9PH6YNQjjKWMcTnAcsm9F0
N2yQPfCyEF3Gdyj10Wp241Lc4kOQ6MDJnbML0ewj0OlhkqAiuMEq7+1rRVdRBwGn
GuDtuBe1VLEv07EZlt2a/lR+T09fqLW+Pz10cFMRl6XJ5xrAlgmQ6yl3wK8u26TH
rPlxw9uWEieIUtvBb1MykkKDTF8QavrVR67XVOOUp3je8KOheuHK1vnlMTgHiCYp
9/YPUft2u96G1TD39gqn
=C3yb
-----END PGP SIGNATURE-----

--PGciix975j9PXqaKrG2TnUNbwsV9RXeVM--


--===============2262909034436532365==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============2262909034436532365==--
