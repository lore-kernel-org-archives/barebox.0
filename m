Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fg1Bc-0000eG-Oj
 for barebox@lists.infradead.org; Thu, 19 Jul 2018 05:09:10 +0000
References: <CAEp+FuAeZykr4wa-BK-zdTKUPH=kikkeZWLHHpycQ9uRJFkPug@mail.gmail.com>
 <16d74981-28c9-d637-c7de-f1902529ab30@rempel-privat.de>
 <35db1bb9-cb13-26b3-09b7-30f583585155@pengutronix.de>
 <1531925793.3511.128.camel@pengutronix.de>
 <CAEp+FuAsDL9msTeiC=2+bbKHkrEObdKKdctN_G3RdVX8uP=ZsQ@mail.gmail.com>
 <c1c3be93-c29e-7e65-c09b-86edbd0adb1e@rempel-privat.de>
 <CAEp+FuA2+n-zFRxsxUkiroDcosO78jPt4dp69t-Z=t+pt26_6A@mail.gmail.com>
From: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <0520cae6-02f5-349f-50ad-947079618d33@pengutronix.de>
Date: Thu, 19 Jul 2018 07:08:49 +0200
MIME-Version: 1.0
In-Reply-To: <CAEp+FuA2+n-zFRxsxUkiroDcosO78jPt4dp69t-Z=t+pt26_6A@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============3705149416535107512=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: MFGtools support in barebox
To: Mihaita Ivascu <mihaita_ivascu@trimble.com>, linux@rempel-privat.de
Cc: barebox@lists.infradead.org, bst@pengutronix.de

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============3705149416535107512==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="QKr7qzE0g86QtBn508UWPgUCCS9V4pbVz"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--QKr7qzE0g86QtBn508UWPgUCCS9V4pbVz
Content-Type: multipart/mixed; boundary="sHA7GsAUGMBWMoqBN7Mqma2XFSxZKHX79";
 protected-headers="v1"
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Mihaita Ivascu <mihaita_ivascu@trimble.com>, linux@rempel-privat.de
Cc: barebox@lists.infradead.org, bst@pengutronix.de
Message-ID: <0520cae6-02f5-349f-50ad-947079618d33@pengutronix.de>
Subject: Re: MFGtools support in barebox
References: <CAEp+FuAeZykr4wa-BK-zdTKUPH=kikkeZWLHHpycQ9uRJFkPug@mail.gmail.com>
 <16d74981-28c9-d637-c7de-f1902529ab30@rempel-privat.de>
 <35db1bb9-cb13-26b3-09b7-30f583585155@pengutronix.de>
 <1531925793.3511.128.camel@pengutronix.de>
 <CAEp+FuAsDL9msTeiC=2+bbKHkrEObdKKdctN_G3RdVX8uP=ZsQ@mail.gmail.com>
 <c1c3be93-c29e-7e65-c09b-86edbd0adb1e@rempel-privat.de>
 <CAEp+FuA2+n-zFRxsxUkiroDcosO78jPt4dp69t-Z=t+pt26_6A@mail.gmail.com>
In-Reply-To: <CAEp+FuA2+n-zFRxsxUkiroDcosO78jPt4dp69t-Z=t+pt26_6A@mail.gmail.com>

--sHA7GsAUGMBWMoqBN7Mqma2XFSxZKHX79
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable



On 18.07.2018 19:56, Mihaita Ivascu wrote:
>           Ok, thanks. I will take a look. I think for that scenario I
> do not need fastboot. Once I have barebox in RAM I can do
> barebox_update to flash it in NAND, reboot and then run a script from
> USB
>  that created partitions in NAND and copies FIT image(which contains
> kernel+rootfs) on NAND
>           Fastboot would be helpful if I could flash the NAND without
> running anything in target's RAM initially( no barebox nor Linux).
>           My goal is to have a target with nothing on NAND and be able
> to flash anything is needed(barebox, kernel, etc) by just using one
> tool(MFGtools, fastboot, etc). Not 2 steps approach: to copy the NAND
> first and then to do anything else by running commands/scripts
> commands. This is how I do it now.
>           I know that using MFGtools from NXP is possible. But with
> uboot booatloader. NXP says they don't support barebox.

This confusion appears only from end user perspective. one tool is not
equal one step. With MFGtool it works this way:
- iMX SoC will start do some checks and based on $decisions start USB
HID interface.
- MFGtool will upload firmware image over this interface and request
execution of this image. This firmware should contain NAND and USB driver=
s.
- Old ROM USB interface will be disabled and new firmware USB interface
with more futures will be created
- Over this new interface MFGtool is able to send commands and images so
the firmware can write it down.

The same we usually do by combining imx-usb-loader with fastboot:
- upload barebox with imx-usb-loader over ROM USB interface and start it
- barebox will disable ROM USB interface and create own with fastboot
support.
- use fastboot to send commands and images over fastboot-barebox USB
interface. Or upload barebox and linux over usb so you can do the same
over linux.

If all this steps are hidden behind one script or application, it looks
for end user as single step.


>           Aside from this issue, are you aware of any method of
> flashing the barebox  on NAND from Linux(after the kernel was loaded
> successfully on the target) ?
> barebox_update does not exist in Linux obviously and porting it is not
> so trivial, on top of that I don't think I am able to access the nand
> device from Linux, but only MTD partitions .
> I have tried  nandwrite and kobs-ng commands but I was not successful.

barebox_update is a wrapper to: take a image and write it to predefined
project or board specific location.
If you have access to this location from linux, you can do it from linux
as well.

> Thanks,
>        Mihaita
>=20
> On Wed, Jul 18, 2018 at 6:35 PM Oleksij Rempel <linux@rempel-privat.de>=
 wrote:
>>
>> Am 18.07.2018 um 17:11 schrieb Mihaita Ivascu:
>>> Hi,
>>>
>>>     Thanks for answer.
>>>      I think I need it to do it from Windows as we have some boards
>>> that need to be updated in the factory by people that do not necessar=
y
>>> have Linux skills or Linux workstation.
>>>      That is why we thought we could use MFGtools app.
>>>      My problem is that the board we have have only NAND and USB as
>>> boot options. And I need to flash the NAND the first time.
>>>       I have already looked at imx-usb-loader solution but it require=
d
>>> a Linux OS which is not possible in my case
>>>      I have already used barebox_update successfully but only after I=

>>> had a working barebox already.
>>>      I was successful into loading barebox image from MFGtools into
>>> RAM and there execute barebox_update to flash on the NAND itself.
>>>      But the barebox won't load afterwards the kernel image with
>>> mfgtools support.
>>>
>>>     So I have two options I think:
>>>
>>>     i) porting barebox_update to Linux. Is there a way to flash the
>>> barebox on NAND from Linux itself(after the board has booted
>>> successfully) ?
>>>    ii) adding support for MFGtools in barebox. I do not have toom uch=

>>> knowledge about it. I know I should add UTP protocol support in usb
>>> gadget code in barebox but was not successful so far.
>>>
>>>         How do you guys see a solution to this scenario?
>>
>> If you can load barebox in to RAM with MFGtools, you can use fastboot
>> tool flash all needed parts. fastboot is available for windows and
>> supported by barebox.
>> --
>> Regards,
>> Oleksij
>>
>=20
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
>=20


--sHA7GsAUGMBWMoqBN7Mqma2XFSxZKHX79--

--QKr7qzE0g86QtBn508UWPgUCCS9V4pbVz
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEpENFL0P3hvQ7p0DDdQOiSHVI77QFAltQHOEACgkQdQOiSHVI
77QrTQf/ax1I5kr4SXM/eWi9MNLnjWHXOofrtg2ANPolY1qKfaWoyo4kxEUiN0PL
cIKa/7vK2vWJ33C6FkfulBRhkzfPybpPBNPaoQn75C2r4QrGNlqYp0otLBB8y8gA
SDBIfE/Kugu2YNFqO73yO9ZNxyu6wcOIEkfNLShqCBR8SGUs+DRnrLWAjTsRhHXS
VT0fLeuh+RtC3QAuRnoKrb1WShjbQbCzkSL2hkIqWh5TynNzSqJBR6nuAJfEAjdc
o2mWjT4tsRrRDfk9Ty7ps0i1s69rkTgRjDsUz5j7+ws8aE4bOoY8aFYd3nFJQk+N
FxbXbQayFNj65+uC3zID8zpYgHqd6g==
=ABtj
-----END PGP SIGNATURE-----

--QKr7qzE0g86QtBn508UWPgUCCS9V4pbVz--


--===============3705149416535107512==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============3705149416535107512==--
