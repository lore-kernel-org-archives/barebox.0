Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-f53.google.com ([209.85.220.53])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XXDH0-0002w0-AF
 for barebox@lists.infradead.org; Thu, 25 Sep 2014 17:56:10 +0000
Received: by mail-pa0-f53.google.com with SMTP id hz1so11471026pad.12
 for <barebox@lists.infradead.org>; Thu, 25 Sep 2014 10:55:48 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
From: Ryan Du Bois <rdub@kamama.com>
In-Reply-To: <AE2FDA55-436B-4DF7-AE47-9B32D0CFFAC7@kamama.com>
Date: Thu, 25 Sep 2014 10:55:44 -0700
Message-Id: <4F988940-A208-4D81-95E0-BBD3FC3C48CF@kamama.com>
References: <2F9C706F-8EBC-453B-8BA1-116680C7926A@kamama.com>
 <1411632866.2207.2.camel@tellur.intern.lynxeye.de>
 <AE2FDA55-436B-4DF7-AE47-9B32D0CFFAC7@kamama.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============3075617372956086550=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: nvidia jetson tk1 help
To: Lucas Stach <dev@lynxeye.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>


--===============3075617372956086550==
Content-Type: multipart/signed; boundary="Apple-Mail=_1250F5AF-D9CB-4A96-8F92-F304BF654345"; protocol="application/pgp-signature"; micalg=pgp-sha512


--Apple-Mail=_1250F5AF-D9CB-4A96-8F92-F304BF654345
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Okay, that worked, but I have to use the *-usbloader.img image.  The =
emmc image doesn't output anything over UART. =20

Is that expected?

Thanks!
--
+Ryan Du Bois
Ministry of Black Magic
408.974.0618
rdub@kamama.com

On Sep 25, 2014, at 8:43 AM, Ryan Du Bois <rdub@kamama.com> wrote:

> Thanks Lucas, I'll check that out when I get into the office today.
>=20
> Cheers!
>=20
>> On Sep 25, 2014, at 1:14, Lucas Stach <dev@lynxeye.de> wrote:
>>=20
>> Hi Ryan,
>>=20
>> Am Mittwoch, den 24.09.2014, 12:23 -0700 schrieb Ryan Du Bois:
>>> Hey There,
>>>=20
>>> I'm having trouble getting barebox to boot on an Nvidia Jetson TK1.  =
I'm using the tegra-v7_defconfig, and trying to load it to the board via =
the tegrarcm tool.
>>>=20
>>> Has anyone done this before who might have a recipe that works?
>>=20
>> Please just "make docs". In there you'll find a chapter on how to
>> bootstrap a Tegra board. The description is for the Beaver board, but
>> things work the same way on Jetson. If you have any other question, =
feel
>> free to ask.
>>=20
>> Regards,
>> Lucas
>>=20


--Apple-Mail=_1250F5AF-D9CB-4A96-8F92-F304BF654345
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQEcBAEBCgAGBQJUJFcgAAoJEK4Z1vjpzDGSCv0IAIwkF41Hfr/Wu1gwOG0QzqPM
Zu0t8oKnkUArHwiyiHPRlf43em79VUh0pfGKUSuEvoU8MOp8zuXdOpJF/0u2ODu2
faWMBO+4UBXZUxsuEvYqQ88hPvrkDST6/Zp2+aYMuqYsTonMu4RXisvG5MWthP6y
CMlEhRR8mrZ8tgK7mbuXF5jA97OFxPD8Z163rIqzy3S932pkc7Ep6FEIOx/XBnP7
JAAnHbAXEFS4fSWcyyXzCEW1TsGa0bt/4TuFmLC/o0Dd3yZMuzAzAE3iaDxSnMJI
f8xfuaB7FpMfBv92jOdzAJPxH1CIewL7wu7B54dN0oAYjUtiE3mgJJKpsb4ThZ4=
=2crz
-----END PGP SIGNATURE-----

--Apple-Mail=_1250F5AF-D9CB-4A96-8F92-F304BF654345--


--===============3075617372956086550==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============3075617372956086550==--
