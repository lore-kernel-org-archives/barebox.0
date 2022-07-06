Delivery-date: Wed, 06 Jul 2022 16:50:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o96M7-007oo3-UZ
	for lore@lore.pengutronix.de; Wed, 06 Jul 2022 16:50:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o96MA-0003JZ-6Z
	for lore@pengutronix.de; Wed, 06 Jul 2022 16:50:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TBrepBgfqqD1S7nfmJSOTKwDFh3WmGrXhXiFS6UW8Y4=; b=cNOiMXiepLfoD/cCD2n+3Bpp3A
	n7wnLBzep87JdhyQy67jlUD8fS7cKeeYXcIMJeMz4/6ldtQrJT2InlWIZ5Sh7ViGEhBmQEH2cMHOf
	bBlio/uktaIJRxkSCmyVHELgzOqiFIX8fWUdlUZgG7ps4fSA/x+kMtdNhPk+8uKhkVTCbdiWBpyJn
	XqxlCVE9T758V6kFGIlRsigieBDyqQriw0gE7eJl2m9LfpEg5yac/LyikTP1U5OaM0yw7mKdiQ9iM
	XcBoT97W/5FRe5Oh2aJ9fcAkv8mhY0JuvvFdI6R1YWjSEJlmAS+gflWzcQjscLzf9Y201i59omZ3J
	of9eeCIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o96Kj-00AnIZ-2X; Wed, 06 Jul 2022 14:48:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o96Ke-00AnG4-0m
	for barebox@lists.infradead.org; Wed, 06 Jul 2022 14:48:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1o96Ka-000391-AO; Wed, 06 Jul 2022 16:48:44 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1o96KV-004mI8-Hq; Wed, 06 Jul 2022 16:48:43 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1o96KY-003NGP-2Q; Wed, 06 Jul 2022 16:48:42 +0200
Date: Wed, 6 Jul 2022 16:48:40 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org, David Jander <david@protonic.nl>
Message-ID: <20220706144840.tef4xfgzop4pyb3z@pengutronix.de>
References: <20220706081236.2833520-1-u.kleine-koenig@pengutronix.de>
 <20220706120135.2mbr6t6ri7yr5d3j@pengutronix.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kdqxz72cqnw64rmw"
Content-Disposition: inline
In-Reply-To: <20220706120135.2mbr6t6ri7yr5d3j@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220706_074848_116183_F94AF2D8 
X-CRM114-Status: GOOD (  20.22  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: i.MX8MM: Consolidate common code to load image and
 jump to it via TF-A
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)


--kdqxz72cqnw64rmw
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 06, 2022 at 02:01:35PM +0200, Marco Felsch wrote:
> Hi Uwe,
>=20
> thanks for the patch.
>=20
> On 22-07-06, Uwe Kleine-K=F6nig wrote:
>=20
> ...
>=20
> > @@ -96,11 +92,6 @@ extern struct dram_timing_info imx8mm_evk_dram_timin=
g;
> > =20
> >  static void start_atf(void)
> >  {
> > -	size_t bl31_size;
> > -	const u8 *bl31;
> > -	enum bootsource src;
> > -	int instance;
> > -
> >  	/*
> >  	 * If we are in EL3 we are running for the first time and need to
> >  	 * initialize the DRAM and run TF-A (BL31). The TF-A will then jump
> > @@ -112,35 +103,7 @@ static void start_atf(void)
> >  	power_init_board();
> >  	imx8mm_ddr_init(&imx8mm_evk_dram_timing);
>=20
> I would move the imx8mm_ddr_init() into your helper
> imx8mm_load_and_start_image_via_tfa() and pass the timing as argument.

I thought about that, but didn't find a nice function name for that.
imx8mm_ddr_init_load_and_start_image_via_tfa_prepare_coffee() is a bit
long ... :-) Also while these things are "normal" in this order in the
PBL board code, mixing too many things in a single function isn't only
advantageous. I like it to have memory initialisation and image loading
in separate steps---my subjective view.

> So your helper doesn't depend on the 'hopefully' intialized DRAM. Else I
> would add a comment above your helper, that the DRAM must be initialized
> before calling this function.

Several functions depend on initialized DRAM.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--kdqxz72cqnw64rmw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmLFoMYACgkQwfwUeK3K
7AmiIQf/aMYPVlStr5gUzFCAfWLxWDgHkK20gGkKIGi0WNXSFgArsl/Y1TdAuAMw
4qfFgE8yw18WHK/PZsr9v3HIcnoX4ZFX90SyDGavYISppZRbKWEmRUJIn46dvCru
dr+obvDUsxBDiIzsP1hE5llS9ZW0MjszstjoOCSv+YKdmR03FZeoQEAmt6XCU1Tm
+ZNrcjKDhOLqPFDTIONg8ehLJhQkDTIIMSP+Uw81mkHimdtVdE3PWi5gDS9v/FQS
Hm0J5xp8TDTy5bYzDADaxN6s/J3c9I7F6rDx1dNZ0AWlwejwcTy6JF6wvTwD+1f+
fcLAjb/2l3CaNJpTUEfuD21I1E1xpg==
=14FW
-----END PGP SIGNATURE-----

--kdqxz72cqnw64rmw--


