Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dx6VW-0002pj-QX
 for barebox@lists.infradead.org; Wed, 27 Sep 2017 07:11:49 +0000
References: <1905880803.90654.1506495106339@mail.vodafone.de>
From: Oleksij Rempel <linux@rempel-privat.de>
Message-ID: <40bfec7f-1874-a29e-74c0-44d35e95ca06@rempel-privat.de>
Date: Wed, 27 Sep 2017 09:11:08 +0200
MIME-Version: 1.0
In-Reply-To: <1905880803.90654.1506495106339@mail.vodafone.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============3081644123351974888=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: barebox on an intel efi system
To: Giorgio Dal Molin <iw3gtf@arcor.de>, barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============3081644123351974888==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="UbGGCPwx6dkglfRRSJ7k89OLgsnRdJW3p"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--UbGGCPwx6dkglfRRSJ7k89OLgsnRdJW3p
Content-Type: multipart/mixed; boundary="H8p2MDAAArwa041J75foBLT0t9XRpg7OF";
 protected-headers="v1"
From: Oleksij Rempel <linux@rempel-privat.de>
To: Giorgio Dal Molin <iw3gtf@arcor.de>, barebox@lists.infradead.org
Message-ID: <40bfec7f-1874-a29e-74c0-44d35e95ca06@rempel-privat.de>
Subject: Re: barebox on an intel efi system
References: <1905880803.90654.1506495106339@mail.vodafone.de>
In-Reply-To: <1905880803.90654.1506495106339@mail.vodafone.de>

--H8p2MDAAArwa041J75foBLT0t9XRpg7OF
Content-Type: text/plain; charset=utf-8
Content-Language: ru
Content-Transfer-Encoding: quoted-printable

Hi,

you probably need this fix:
https://git.pengutronix.de/cgit/barebox/commit/?h=3Dnext&id=3Dfc7c42ff3c8=
89ccc993061ee183b0cf1621e3f1c

It is in barebox/next.

Am 27.09.2017 um 08:51 schrieb Giorgio Dal Molin:
> Hi,
>=20
> I'm currently working with an embedded system based on a "normal"
> intel (atom) PC with an AMI Bios on it supporting EFI.
>=20
> I've built a barebox for it based on the 'arch/x86/configs/efi_defconfi=
g'
> and it basically runs on the target: I get a prompt on the screen, the
> keyboard works and I can issue commands and boot a kernel.
>=20
> My problem is now that the '/boot' and '/efi' dirs do not automatically=

> appear as described in http://www.barebox.org/doc/latest/boards/efi.htm=
l
>=20
> After a bit of grepping and browsing in the barebox sources I've found
> the file:
>=20
>  fs/efi.c
>=20
> At the end of it there is the 'efi_fs_driver' and its probe function;
> I think the driver is registered with the core but the probe function
> is never called on my system.
>=20
> Could this be OK on an EFI system or is it an indication that something=

> is not properly configured ?
>=20
> giorgio
>=20
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
>=20


--=20
Regards,
Oleksij


--H8p2MDAAArwa041J75foBLT0t9XRpg7OF--

--UbGGCPwx6dkglfRRSJ7k89OLgsnRdJW3p
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF4EAREIAAYFAlnLTxMACgkQHwImuRkmbWmXIAD/SR7x1ukFEaW4yVUCXUX+pi6k
mRUeaEM1nS75xSyrFnQA/3AqJT8NZgbl2ivtbmU225x65OhDdsX287zE6JfwRz5A
=vIVi
-----END PGP SIGNATURE-----

--UbGGCPwx6dkglfRRSJ7k89OLgsnRdJW3p--


--===============3081644123351974888==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============3081644123351974888==--
