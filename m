Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fldb5-0003Be-94
 for barebox@lists.infradead.org; Fri, 03 Aug 2018 17:10:41 +0000
References: <CAEp+FuA3HtmHQm5GsZ6DAJAYbOKJDUdVHBV4pevrHoswQ4Ktcw@mail.gmail.com>
 <20180720091145.kz2ksyeeumeqf73p@pengutronix.de>
 <CAEp+FuD5CrxiMmEQ1yV2_ugFayrs5ih-etpJfb=jw8771xdDTw@mail.gmail.com>
 <278d07f4-decf-fabc-62cb-7661b1c73a54@rempel-privat.de>
 <CAEp+FuBaOxzoc0aiXpPwm24RQw9hDB-5HiWmTCqMAPf+RYpjjg@mail.gmail.com>
 <CAEp+FuCv-C4Px35VvOW+4ONTq9RU_MELG4kzDdRggvexiXBGtA@mail.gmail.com>
 <6d5fafcb-af99-ec0f-469b-63e4e4f97c51@rempel-privat.de>
 <CAEp+FuCoqbg+_G+rNSvjnJBiYS3Au8Wg7hWfUHnTpa53yKSnLw@mail.gmail.com>
From: Oleksij Rempel <linux@rempel-privat.de>
Message-ID: <9553d3dc-c59d-845d-337a-67becaf8cd67@rempel-privat.de>
Date: Fri, 3 Aug 2018 19:10:23 +0200
MIME-Version: 1.0
In-Reply-To: <CAEp+FuCoqbg+_G+rNSvjnJBiYS3Au8Wg7hWfUHnTpa53yKSnLw@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============4871888846529746944=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: MFGTools support in barebox
To: Mihaita Ivascu <mihaita_ivascu@trimble.com>
Cc: barebox@lists.infradead.org, u.kleine-koenig@pengutronix.de

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============4871888846529746944==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="xu5dPeF6xtD9qoLLGLPzttbIzNyseDZqq"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--xu5dPeF6xtD9qoLLGLPzttbIzNyseDZqq
Content-Type: multipart/mixed; boundary="BWHWKyZgpO6lWx92Czwj6PrQfAD0Jg0Zj";
 protected-headers="v1"
From: Oleksij Rempel <linux@rempel-privat.de>
To: Mihaita Ivascu <mihaita_ivascu@trimble.com>
Cc: barebox@lists.infradead.org, u.kleine-koenig@pengutronix.de
Message-ID: <9553d3dc-c59d-845d-337a-67becaf8cd67@rempel-privat.de>
Subject: Re: MFGTools support in barebox
References: <CAEp+FuA3HtmHQm5GsZ6DAJAYbOKJDUdVHBV4pevrHoswQ4Ktcw@mail.gmail.com>
 <20180720091145.kz2ksyeeumeqf73p@pengutronix.de>
 <CAEp+FuD5CrxiMmEQ1yV2_ugFayrs5ih-etpJfb=jw8771xdDTw@mail.gmail.com>
 <278d07f4-decf-fabc-62cb-7661b1c73a54@rempel-privat.de>
 <CAEp+FuBaOxzoc0aiXpPwm24RQw9hDB-5HiWmTCqMAPf+RYpjjg@mail.gmail.com>
 <CAEp+FuCv-C4Px35VvOW+4ONTq9RU_MELG4kzDdRggvexiXBGtA@mail.gmail.com>
 <6d5fafcb-af99-ec0f-469b-63e4e4f97c51@rempel-privat.de>
 <CAEp+FuCoqbg+_G+rNSvjnJBiYS3Au8Wg7hWfUHnTpa53yKSnLw@mail.gmail.com>
In-Reply-To: <CAEp+FuCoqbg+_G+rNSvjnJBiYS3Au8Wg7hWfUHnTpa53yKSnLw@mail.gmail.com>

--BWHWKyZgpO6lWx92Czwj6PrQfAD0Jg0Zj
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: quoted-printable

Am 03.08.2018 um 18:37 schrieb Mihaita Ivascu:
> Hi,
>=20
>     I have usb controller configured for OTG both in .config and
> device tree sources. But still usbgadget complains about not finding

try:
otg.mode=3Dperipheral
usbgadget (your options)

>=20
> Thanks,
>        Mihaita
> On Fri, Aug 3, 2018 at 10:38 AM Oleksij Rempel <linux@rempel-privat.de>=
 wrote:
>>
>> Hi
>>
>> Am 03.08.2018 um 10:21 schrieb Mihaita Ivascu:
>>> Hello,
>>>
>>>      On the topic of enabling fastboot in barebox 2018.04, I have
>>> enabled USB gadget support:
>>>   USB_GADGET_DRIVER_ARC=3Dy
>>>   USB_GADGET_AUTOSTART=3Dy
>>>   USB_GADGET=3Dy
>>>   USB_GADGET_FASTBOOT=3Dy
>>>   USB_GADGET_FASTBOOT_SPARSE=3Dy
>>>
>>>      I am using board and BSP from Phytec for imx6ul evk. I have
>>> reviews usb code and first option USB_GADGET_DRIVER_ARC should enable=

>>> UDC functionality.
>>>     However when tring to start fastboot according to
>>> https://www.barebox.org/doc/latest/user/usb.html#android-fastboot-sup=
port
>>>     I get message about UDC not found, so udc driver probe method doe=
s
>>> not find any udc device.
>>>
>>> barebox@Phytec phyCORE-i.MX6 Ultra Lite SOM:/ usbgadget -A
>>> /kernel(kernel)c,/initrd(initrd)c,/devicetree(devicetree)c
>>> couldn't find an available UDC
>>> usbgadget: No such device
>>>
>>>     Does anybody has experience with this topic, what am I missing in=

>>> the configuration steps or where could find complete steps on enablin=
g
>>> fastboot in barebox?
>>
>> You are missing actual USB Controler which should be configured to wor=
k
>> in gadget/otg mode.
>>
>> --
>> Regards,
>> Oleksij
>>


--=20
Regards,
Oleksij


--BWHWKyZgpO6lWx92Czwj6PrQfAD0Jg0Zj--

--xu5dPeF6xtD9qoLLGLPzttbIzNyseDZqq
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHQEAREIAB0WIQRXepfNdOKCSzfa+2sfAia5GSZtaQUCW2SMfwAKCRAfAia5GSZt
aay1AP9vHTpSjp+9wgt+qIO4pPabmJhx4PC/PjC7lk/CcRSFAAD4r7DDfl2zTdek
wAIJD4PliREXfMA7rgm8TrcIPSnkLg==
=QdH+
-----END PGP SIGNATURE-----

--xu5dPeF6xtD9qoLLGLPzttbIzNyseDZqq--


--===============4871888846529746944==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============4871888846529746944==--
