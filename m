Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns2.lah-a2.de ([84.19.187.99] helo=lah-a2.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fEGD6-00085o-Nc
 for barebox@lists.infradead.org; Thu, 03 May 2018 15:31:58 +0000
Received: from [192.168.0.25] (p5B019D47.dip0.t-ipconnect.de [91.1.157.71])
 by lah-a2.de (Postfix) with ESMTPSA id A6FFE408DA7A
 for <barebox@lists.infradead.org>; Thu,  3 May 2018 17:28:56 +0200 (CEST)
References: <20180429160125.3193-1-mail@schmidt-andreas.de>
 <1525271572.17782.13.camel@pengutronix.de>
 <9451da5b-d585-34cc-9d4d-c2645329b760@schmidt-andreas.de>
 <1525340087.17782.32.camel@pengutronix.de>
From: Andreas Schmidt <list@schmidt-andreas.de>
Message-ID: <2ecb2475-07fa-8036-f94d-39e93c90aaad@schmidt-andreas.de>
Date: Thu, 3 May 2018 17:31:33 +0200
MIME-Version: 1.0
In-Reply-To: <1525340087.17782.32.camel@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============5691767178335819817=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] blspec: add checking of optional key machine-id
To: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============5691767178335819817==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="elM9jjKVXDGaHWnCMDkfXBOHH1bb9y1Sd"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--elM9jjKVXDGaHWnCMDkfXBOHH1bb9y1Sd
Content-Type: multipart/mixed; boundary="tBc4zOrmpbT7cR3H7sl2NjggWmyUduuS7";
 protected-headers="v1"
From: Andreas Schmidt <list@schmidt-andreas.de>
To: barebox@lists.infradead.org
Message-ID: <2ecb2475-07fa-8036-f94d-39e93c90aaad@schmidt-andreas.de>
Subject: Re: [PATCH] blspec: add checking of optional key machine-id
References: <20180429160125.3193-1-mail@schmidt-andreas.de>
 <1525271572.17782.13.camel@pengutronix.de>
 <9451da5b-d585-34cc-9d4d-c2645329b760@schmidt-andreas.de>
 <1525340087.17782.32.camel@pengutronix.de>
In-Reply-To: <1525340087.17782.32.camel@pengutronix.de>

--tBc4zOrmpbT7cR3H7sl2NjggWmyUduuS7
Content-Type: multipart/mixed;
 boundary="------------BF0F8154107C2CDCCF36B80F"
Content-Language: en-GB

This is a multi-part message in MIME format.
--------------BF0F8154107C2CDCCF36B80F
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


On 03.05.2018 11:34, Jan L=C3=BCbbe wrote:
[...]
>>> Then the existing selection logic would
>>> handle your case as well.
>> Ohh ... ok. And could you explain please, who we could do that? Becaus=
e,
>> all our DTs are compatible with barebox DT and barebox would choose si=
mple
>> the first one and boot it. Or is using of Bootloader Spec isn't right
>> way, to solve this issue?
> So in the barebox DT you'd have:
> / {
>         model =3D "Foo Common i.MX6 Board";
>         compatible =3D "foo,mx6-common", "fsl,imx6q";
> };
> [...]
>
> Then for the kernel DTs you can use different compatible lists, which
> each use a different and more specific entry.
>
> mx6-variant1.dts:
> / {
>         model =3D "Foo Variant 1 i.MX6 Board";
>         compatible =3D
> "foo,mx6-variant1", "foo,mx6-common", "fsl,imx6q";
> };
> [...]
>
> mx6-variant2.dts:
> / {
>         model =3D "Foo Variant 2 i.MX6 Board";
>         compatible =3D "foo,mx6-variant2", "foo,mx6-common", "fsl,imx6q=
";
> };
> [...]
>
> Then, in barebox, you need to have a way to override which compatible
> string the bootspec code is looking for.
Ok, the way is to override/extend barebox DT compatible string while
initialisation,
so barebox would be match only one boot entry.

> I'd prefer this to the machine-id approach, as the DT compatible list
> mechanism is designed exactly for handing these different levels of
> compatibility declarations.
Yes, I agree with you. That could be better for us to solve our issue.
Thank you for explanation!

Do your mean, for using the machine-id in right way, the patch could be
apply?
If Sascha still agree, of course.

Regards,
Andreas

--------------BF0F8154107C2CDCCF36B80F
Content-Type: application/pgp-keys;
 name="0xFEE0A611BEA6DEA0.asc"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
 filename="0xFEE0A611BEA6DEA0.asc"

-----BEGIN PGP PUBLIC KEY BLOCK-----

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
v9nRtbJIJQ=3D=3D
=3DAjyc
-----END PGP PUBLIC KEY BLOCK-----

--------------BF0F8154107C2CDCCF36B80F--

--tBc4zOrmpbT7cR3H7sl2NjggWmyUduuS7--

--elM9jjKVXDGaHWnCMDkfXBOHH1bb9y1Sd
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJa6ytcAAoJEP7gphG+pt6gIAoP/3fhHIPfYfcV31GnMZtg8I5w
+8uqMdxCtDP+CeQDp3HtKB8vMHYbaLHt20IALMptRarkgiNToSB81nP9qFN2+aX8
du19uA8arfTWeNxPijun6cdFl9qlIFf9zuLmWXqPZb1bS7TcT4h34S02/SP956YS
gOgdbRCXSnqUUCPvNH6NXg+EnY11PFvzgQOqAe+5UD8uqctcmDFCiNHMnF7UmHuW
d+V4XxvyYHKo4mWCLI/Vd5pTP14YYIwrAyJKWoF/UHDCcO1ZLGx2hFnx8uJRPfHK
ThzEGijfKpRj5PCVl8dGl5KIno8BcwIgbD6bGjA5nwgfMNSPxB5YoTPlsG1+6gxv
zmrL7nukzdFHYoMt3IAaxbDPI7UG+QsmtvahNtIGDx61pZp8Zh5fPvCpXtXpqfXf
Y317HXgVO1HyZ3fpq+8Djtpvl5lTBIdD8AAjoiQ1csiXMfyOpjjOgcYfoUKOwf/I
gmnXZLMny91/mt9kWwNkxythTd/rB+vNtdgzy8uQq9UhEq4/kOhbXGs/XfrqTHBQ
GSfZAs4QaJO+oOC81rlXNotRwJyL8hEwXqhMiukas8dCVb+am+LkZME6oGzFZaPF
+g5xFP1QESU2ePUW0i2xMtnjpTAJs9VwAXzHhyO4DV48nE4NuRWqQmoX/U18Qqoi
GCKHDVjhlNZsou8Jl+2v
=eKE3
-----END PGP SIGNATURE-----

--elM9jjKVXDGaHWnCMDkfXBOHH1bb9y1Sd--


--===============5691767178335819817==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============5691767178335819817==--
