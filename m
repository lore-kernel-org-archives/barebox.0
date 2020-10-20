Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kUm2W-0008HX-W7
 for barebox@lists.infradead.org; Tue, 20 Oct 2020 07:26:38 +0000
Date: Tue, 20 Oct 2020 09:26:34 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20201020072634.qfe4zo4gcgq7qkw2@pengutronix.de>
References: <20200918110442.25159-1-u.kleine-koenig@pengutronix.de>
 <20200918110442.25159-2-u.kleine-koenig@pengutronix.de>
 <bb53e525-250d-4572-ba93-ec7ddd35b5cf@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <bb53e525-250d-4572-ba93-ec7ddd35b5cf@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0158889824326840884=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/2] x86/config/efi: drop DRIVER_SERIAL_NS16550
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org


--===============0158889824326840884==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7pdddrofo6aj7sov"
Content-Disposition: inline


--7pdddrofo6aj7sov
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 20, 2020 at 07:08:47AM +0200, Ahmad Fatoum wrote:
> Hello Uwe,
>=20
> On 9/18/20 1:04 PM, Uwe Kleine-K=F6nig wrote:
> > For most machines having DRIVER_SERIAL_NS16550 and DRIVER_SERIAL_EFI_ST=
DIO
> > both enabled results in the output appearing twice on the serial output.
> > So remove disable the lowlevel driver and rely on the EFI bios for seri=
al.

How embarrassing, s/remove //.

> On the flip-side, some systems now won't output anything over serial with
> the defconfig, like the one I just ran into. Maybe we should keep both
> enabled, but have a quirk table, which boards to disable the 16550 for?

Expecting that most systems are happy with EFI_STDIO I would suggest a
quirk table for those systems which are not?!

> My board is
>   EFI v2.40 by American Megatrends v327691". What's yours?
>   barebox@barebox EFI payload:/ devinfo acpi-FACP0
>   [...]
>   Revision: 5
>   OemId: ALASKA
>   OemTableId: A M I
>   OemRevision: 17244169
>   CreatorId: 0x20494d41
>   CreatorRevision: 65555
>=20
> What's yours?

I saw the doubled output on my Laptop (Lenovo T460p).

dmidecode has:

	BIOS Information
		Vendor: LENOVO
		Version: R07ET81W (2.21 )
		Release Date: 12/18/2017
		Address: 0xE0000
		Runtime Size: 128 kB
		ROM Size: 16 MB
		Characteristics:
			PCI is supported
			PNP is supported
			BIOS is upgradeable
			BIOS shadowing is allowed
			Boot from CD is supported
			Selectable boot is supported
			EDD is supported
			3.5"/720 kB floppy services are supported (int 13h)
			Print screen service is supported (int 5h)
			8042 keyboard services are supported (int 9h)
			Serial services are supported (int 14h)
			Printer services are supported (int 17h)
			CGA/mono video services are supported (int 10h)
			ACPI is supported
			USB legacy is supported
			BIOS boot specification is supported
			Targeted content distribution is supported
			UEFI is supported
		BIOS Revision: 2.21
		Firmware Revision: 1.4

(This is the system I write this mail on, I don't feel like rebooting to ch=
eck
devinfo in barebox, take a picture and then type the stuff into a mail
by hand.)

Best regards
Uwe


--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--7pdddrofo6aj7sov
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAl+OkScACgkQwfwUeK3K
7AkLMQgAhCnz2wjVq923JsFbiVqHwErC92ZrjJ4WBDBaxAI5Di6aY/+9gcNHizHC
CaoMYaTVdlI/Mc5ta41BzdtiFRn+t8WL5sKXP3cEImGNiv51ohxr1hH+QYAOCYX6
gY+0NOTDMgtEqWdUN694PaPK4Ta/oApslVyOaKYDJ2PI82dAmbHGpkTUVxaqymFW
6bYV0cHnpBi/nC9ZOhrqY5ZfI7oiRabEMSzm0Anq9VbagyixEk78b0uxR2dgnN7P
FFZEizn20qvmrbjLT8CVHi00KNKhlbyzkTTNE95RI8mIGmdJWqHasRQ9uxTszOer
HrJZlo8DRU3j4rYNGLIxLFONI9u1uA==
=G6Hr
-----END PGP SIGNATURE-----

--7pdddrofo6aj7sov--


--===============0158889824326840884==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0158889824326840884==--
