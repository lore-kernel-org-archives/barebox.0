Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pd0-f174.google.com ([209.85.192.174])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XXG2v-0004W9-J0
 for barebox@lists.infradead.org; Thu, 25 Sep 2014 20:53:49 +0000
Received: by mail-pd0-f174.google.com with SMTP id g10so10807604pdj.5
 for <barebox@lists.infradead.org>; Thu, 25 Sep 2014 13:53:28 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
From: Ryan Du Bois <rdub@kamama.com>
In-Reply-To: <1411678267.2207.7.camel@tellur.intern.lynxeye.de>
Date: Thu, 25 Sep 2014 13:53:24 -0700
Message-Id: <D69D1ADD-3E4C-41E0-8740-85F366D8CC0F@kamama.com>
References: <2F9C706F-8EBC-453B-8BA1-116680C7926A@kamama.com>
 <1411632866.2207.2.camel@tellur.intern.lynxeye.de>
 <AE2FDA55-436B-4DF7-AE47-9B32D0CFFAC7@kamama.com>
 <4F988940-A208-4D81-95E0-BBD3FC3C48CF@kamama.com>
 <1411678267.2207.7.camel@tellur.intern.lynxeye.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============2519629909888842504=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: nvidia jetson tk1 help
To: Lucas Stach <dev@lynxeye.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>


--===============2519629909888842504==
Content-Type: multipart/signed; boundary="Apple-Mail=_0ABC4FB6-F042-415F-9E9F-9523BF4648B9"; protocol="application/pgp-signature"; micalg=pgp-sha512


--Apple-Mail=_0ABC4FB6-F042-415F-9E9F-9523BF4648B9
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Oh, I see! I thought the image names were named after the default kernel =
source (e.g., where they'd read the kernel from), not where barebox =
itself was loaded from...
Makes sense now...

Thanks!
--
+Ryan Du Bois
rdub@kamama.com

On Sep 25, 2014, at 1:51 PM, Lucas Stach <dev@lynxeye.de> wrote:

> Am Donnerstag, den 25.09.2014, 10:55 -0700 schrieb Ryan Du Bois:
>> Okay, that worked, but I have to use the *-usbloader.img image.  The =
emmc image doesn't output anything over UART. =20
>>=20
>> Is that expected?
>>=20
> That's expected. As said in the docs the images for Tegra are specific
> for the boot source. If you are starting with tegrarcm this would be =
the
> -usbloader boot source. If you want to persist barebox on the EMMC by
> copying the image to the boot0 partition you need to use the -emmc
> image, the -usbloader image won't come up there.
>=20
> If the doc isn't clear enough in that regard and you have suggestions =
on
> how to improve this: patches welcome. :)
>=20
> Regards,
> Lucas
>=20
>=20


--Apple-Mail=_0ABC4FB6-F042-415F-9E9F-9523BF4648B9
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQEcBAEBCgAGBQJUJIDEAAoJEK4Z1vjpzDGSP8IH/jNZTCq6mXLZ+13fLORAyCdF
cQuSWQw4dqbv0ItpY76o0cSbFomjJ7nGM69GYRe7dPcZ66uDcGQDZGo6W6PSvew2
RyIQjvjF2nui7SQ5wkAYPJXmm7jDXCpyDzbc+cTzuijcusbxS1Jf4voJeEz+OPPd
IDuj0wFAmfM7KhiEA7fa45jCepE4aoLNsx2Q5x60mRunKuuctzT8wZ9TMV3KoWk+
/iV6iBVHUI5AcSsm5jD2yU75/NY+EcvhI9r86wofWDxlVAFCDbhg/lSjF8DC6/wG
Dlya582xJslmHw91o3t/t9+VNtRBKp5yvOU4E1pqQNxzlUqWtOfFxPnApXUfaJ4=
=Thuv
-----END PGP SIGNATURE-----

--Apple-Mail=_0ABC4FB6-F042-415F-9E9F-9523BF4648B9--


--===============2519629909888842504==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============2519629909888842504==--
