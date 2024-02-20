Delivery-date: Tue, 20 Feb 2024 16:29:27 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcS3j-00GAoF-09
	for lore@lore.pengutronix.de;
	Tue, 20 Feb 2024 16:29:27 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcS3i-0000oA-Di
	for lore@pengutronix.de; Tue, 20 Feb 2024 16:29:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pfvaLXAmsK7VrNPkDPtK0eBqKWOIAdQjt5TstZn7B7g=; b=tb/twOspBLw64sscj6bLxIEpJh
	r2j/zBydXcLZ0RiUxIok2Um8tcxOIfeeCnwk6yJ8TyWcWHuAiPYjESITt7SXXvwRYwAT8ZHpgoDpN
	DT4Bxenlex11NU7myAYC2VLS7DOD/HpWDI34ffpe6E9H+aRwmw20lPDEKk3Fp33HDGEBYgiia2L3k
	q1vVgbY5iYALq8+yLP7KZJRz/DdZHxBHidA2H8ELx4AeYosfLt+PFVBLs8qMZytkPbJU7GXhVRTsO
	1tbZMDon7v6TujUURM9hlGUmcGSmZogz/835PhGLOIyFGGWcsDuHmGrndZRlhk5gJkiwG1nk4FoXg
	EZNJSkDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcS2z-0000000FGMn-2zUR;
	Tue, 20 Feb 2024 15:28:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcS2x-0000000FGLK-1AyP
	for barebox@lists.infradead.org;
	Tue, 20 Feb 2024 15:28:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1rcS2v-0000eh-K7; Tue, 20 Feb 2024 16:28:37 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1rcS2v-001s8z-7J; Tue, 20 Feb 2024 16:28:37 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1rcS2v-008Y1j-0R;
	Tue, 20 Feb 2024 16:28:37 +0100
Date: Tue, 20 Feb 2024 16:28:37 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Dan Shelton <dan.f.shelton@gmail.com>, barebox@lists.infradead.org
Message-ID: <dvhyqjpxezme62dmewvqfeb4kb2szhaz7oysp7qgtd2u7xh3lk@hpascevzd7hv>
References: <CAAvCNcCZhS8mkvdgcJ2L-eiur+OxgWEXRLnadO_HFyHfSi7WFA@mail.gmail.com>
 <a154ae13-86e1-4c2b-9c38-3774fde6a6c8@pengutronix.de>
 <20240205125900.c4b182f57b6efe0152beee24@gmail.com>
 <90de314f-b7a7-4b49-8c72-ec45aa3d38e2@pengutronix.de>
 <CAAvCNcBMxLkEKgqysqiP66T7fEbtWjb5uFfz-MEOfc-oJKfYig@mail.gmail.com>
 <c7901b53-d0a7-4686-9498-3673201d0f62@pengutronix.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7qyxfxobcmgd3euv"
Content-Disposition: inline
In-Reply-To: <c7901b53-d0a7-4686-9498-3673201d0f62@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240220_072839_340203_0DBE872C 
X-CRM114-Status: GOOD (  24.66  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 198.137.202.133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: NFSv4 boot support?
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


--7qyxfxobcmgd3euv
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 20, 2024 at 03:17:02PM +0100, Ahmad Fatoum wrote:
> Hello Dan,
>=20
> On 19.02.24 03:17, Dan Shelton wrote:
> > On Sat, 17 Feb 2024 at 09:51, Ahmad Fatoum <a.fatoum@pengutronix.de> wr=
ote:
> >>
> >> Hello Antony,
> >>
> >> On 05.02.24 10:59, Antony Pavlov wrote:
> >>> On Wed, 31 Jan 2024 22:37:50 +0100
> >>> Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
> >>>
> >>> Hi All!
> >>>
> >>>> Hello Dan,
> >>>>
> >>>> On 31.01.24 22:03, Dan Shelton wrote:
> >>>>> Hello!
> >>>>>
> >>>>> Does barebox support booting from a NFSv4 filesystem, e.g. boot from
> >>>>> NFSv4 filesystem into a Linux NFSv4 netroot (diskless machine)?
> >>>>
> >>>> The barebox network stack only does UDP/IP. There have been attempts=
 to
> >>>> bring a TCP stack into barebox, but none have so far succeeded to
> >>>> make it mainline. This is a hard requirement before we can consider
> >>>> supporting NFSv4. I hope that lwIP could fill this gap in the future,
> >>>> but no one is actively continuing this work as far as I am aware[1].
> >>>
> >>> I have started integration on picotcp into barebox in 2015, see
> >>>   https://lore.barebox.org/barebox/1436991230-14251-10-git-send-email=
-antonynpavlov@gmail.com/T/
> >>>
> >>> At the moment I have WIP barebox-v2023.11 with integrated picotcp 2.1:
> >>>
> >>>   https://github.com/frantony/barebox/tree/20231127.picotcp
> >>
> >> Cool. Looking at Oleksij's repo, it was based on your work. How well d=
oes
> >> picotcp work for you? What open issues remain with the patch stack? Is=
 the
> >> barebox integration actively used in projects?
> >>
> >> Is https://github.com/tass-belgium/picotcp the official repository? Th=
is hasn't
> >> seen development activity in 5 years. lwIP on the other hand still see=
s active
> >> development.
> >>
> >> Regarding the license, inclusion of BSD-licensed code is ok. You can c=
heck out
> >> the LICENSES/ subdirectory for the licenses covering barebox.
> >=20
> > If TCP support lands in barebox, how fast can NFSv4 support be implemen=
ted?
>=20
> Depends on who's volunteering to do it. :-)
> If your question instead is how much effort a NFSv4 port would be, Uwe di=
d the
> NFSv3 port and may have an guesstimate for this?

Without having taken a deeper look: I think the step from NFSv2 to NFSv3
was much easier than NFSv3 -> NFSv4 will be. For NFSv3 support I needed
4 full work days.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--7qyxfxobcmgd3euv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmXUxSQACgkQj4D7WH0S
/k6V5ggAj5OqKdtGPWFQjFcky5bQHzDI1DQ2UNjWPpvM9O1X2yaIrEcfI1taMJIW
HxSS+y+SdX11gQkgmWzs+0mCCBdWbidVEsMK1DFjD6t1JZ7AA9Jbv74rPaI3dpcr
E1YmfeFOOAlgXkVZiar1hBe/FsK/+lM4jDo83R+VbP/2KzPxxt2bVFq99uRT72XK
tKMjrfYL+h5MMxer8czOuB16eXURmOEA1ioekpGHCMNdnxvlBcaJDpGqFWeDZnRC
CCdGxEula6ZMad/uMa9ra2aik0dTERsgc9bw/hTSxos8JgmOyq2558gMR22hJc4H
EcrscjmDaCIn8uM+NpaqKssWuA6/TQ==
=FEyh
-----END PGP SIGNATURE-----

--7qyxfxobcmgd3euv--


