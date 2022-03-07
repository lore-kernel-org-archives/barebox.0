Delivery-date: Mon, 07 Mar 2022 13:06:25 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nRC89-003Pkv-LH
	for lore@lore.pengutronix.de; Mon, 07 Mar 2022 13:06:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nRC85-0006bw-Jb
	for lore@pengutronix.de; Mon, 07 Mar 2022 13:06:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=69Kbo4wsjF5HN1Wzoy25uk/H7YC7ssukQ3IRll2UBNU=; b=hCuOTgjMs3BTuTxA4wLNPXk6XP
	0xBq38gW41+6sKbqgUPg0cd/2jKNR9a1xIv3FCM3v+WUo5dBC0jFN8oJoxGaJMDmnAQKF2OI+ctEZ
	GSPfTAop3vD1rx3eXvrnlZZ0A1t1aF83S7Pod6mpqXD0iYjMSX/EH1dwsILOJ7BsA8Ou5hwj/SlFP
	Iq4barR97bYbHasRWOFmjQ9G2IEn6PDoDdtNe/NnRVzCgViBobwZgLjxY2A2Fmg5qgDKGVqLaHc0D
	PaC/JlEUU0v+8mRsPoi8Lq/I8XHjQ2F4Pk14wKjv7e+GfUvSSdPVrZHMMkcE5dFz2s66snCnLtujC
	YKqgQ5tQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRC6c-00HQUK-FV; Mon, 07 Mar 2022 12:04:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRC6X-00HQT0-5Q
 for barebox@lists.infradead.org; Mon, 07 Mar 2022 12:04:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1nRC6V-0005nr-Ch; Mon, 07 Mar 2022 13:04:43 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>)
 id 1nRC6V-003Cdc-Cr; Mon, 07 Mar 2022 13:04:42 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>)
 id 1nRC6T-007XlP-VO; Mon, 07 Mar 2022 13:04:41 +0100
Date: Mon, 7 Mar 2022 13:04:41 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220307120441.5ku64yzxqzmuh6ua@pengutronix.de>
References: <20220307112331.449741-1-u.kleine-koenig@pengutronix.de>
 <733095b9-554e-a667-47f0-6c03722bbb90@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <733095b9-554e-a667-47f0-6c03722bbb90@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220307_040445_241172_5AD110F1 
X-CRM114-Status: GOOD (  27.61  )
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
Content-Type: multipart/mixed; boundary="===============8499258319192956521=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] arm: stm32mp15x: Move mmc aliases to board files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)


--===============8499258319192956521==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nu3qd4bmym6pkvi4"
Content-Disposition: inline


--nu3qd4bmym6pkvi4
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Ahmad,

On Mon, Mar 07, 2022 at 12:34:19PM +0100, Ahmad Fatoum wrote:
> On 07.03.22 12:23, Uwe Kleine-K=F6nig wrote:
> > Having the mmc aliases in stm32mp151.dtsi is surprising as depending on
> > the order of includes these override the mmc ordering in
> > <arm/stm32mp157c-myboard.dts>. Also the ordering of mmc devices is actu=
ally
> > board specific, so it's also right to have this in the board.dts files.
>=20
> NACK.

I feared you'd oppose. :-\

My motivation to deviate from the default ordering is that I want to
have eMMC as first device and SD as second, so on the board I have here
I'd like to have

	mmc0 =3D &sdmmc2; /* eMMC */
	mmc1 =3D &sdmmc1; /* =B5SD */

However in combination with arch/arm/dts/stm32mp151.dtsi this results in

	mmc0 =3D &sdmmc2; /* eMMC */
	mmc1 =3D &sdmmc1; /* =B5SD */
	mmc2 =3D &sdmmc3;

which is a bit ugly because sdmmc3 isn't used at all on the board in
question. Doing a /delete-property/mmc2 isn't that nice, too. Open for
alternatives ...

> MMC IPs have fixed numbering, because TF-A (and BootROM before it)
> report to barebox the number of the MMC device that it succesfully booted=
 from.
> The aliases map these IDs to device tree nodes, so barebox can fix up a c=
orrect
> /chosen/bootsource.

And mapping the number from TF-A (or BootROM) depends on the aliases
defined in the dts? Sounds like a bug to me.

> Additionally having any alias at all ensures fixed naming that's
> not dependent on probe order.

Fine for me. And if the board doesn't define the aliases, you get random
ordering.

> I know that Linux maintainers seem to disagree with this, but as far
> as barebox is concerned, aliases are SoC-specific, not board-specific
> in general. You can override this board-level if you like, but the
> default should remain.
>=20
> > There is no (relevant) change intended by this patch.
>=20
> I have non-upstream boards that would be broken by this.

This is not a reason to not take this patch, is it?

> There's also a Phytec board in next that would be broken by this.
> Whereas they had a fixed mmcX before, they would now have disk0, disk1
> or disk2 depending on probe order with this patch applied.

Agreed, code in next should be adapted.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--nu3qd4bmym6pkvi4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmIl9NYACgkQwfwUeK3K
7AmGRAgAmuLGG7hSuToTXCWu0eDV40jrdE/F76pm3oEI/ir6I1VdgFuS9gKgVBVb
IrXB2Hk9Krn7j21BnvUtbuWJFpkr3EMDf05CTf/pvz2SAPm4P9SnnL8JqKCEE8SI
gS7cHUGJt5p/qc6vEAmm8wGkbyJcckeFk/++0tEBZ/qNNSxiIyZoxi+yq63IBEP3
LY4q67CQeGjWoJu/BmnU6jfu0yvCIbNa29+AcwgL0TMdg2Kwl0fWvgFHNjHv52dO
AwgdI7gnwqIDhbkYOdnUlkuqgx7SxCord9UR64jHd1sPP8pbll7THayQP4LOYs3x
ijZ07GtxPfBaN17qhQSAY1Rdw7Cv1Q==
=rGUA
-----END PGP SIGNATURE-----

--nu3qd4bmym6pkvi4--


--===============8499258319192956521==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============8499258319192956521==--


