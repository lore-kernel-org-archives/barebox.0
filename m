Delivery-date: Mon, 07 Mar 2022 14:25:36 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nRDMm-003Uth-RT
	for lore@lore.pengutronix.de; Mon, 07 Mar 2022 14:25:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nRDMl-0001dn-FH
	for lore@pengutronix.de; Mon, 07 Mar 2022 14:25:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5eyjPQ8VaPoaXSdWgweSQo1JEo6SGg+nfVsFNHTtsf4=; b=t7e3H0WiEPDmVBqjspoBxVdonr
	SgGfc52w+Vmh4skQclrvmza44oFxwVaRjoKC50RsOqeo6e0aaCXbh28pbkEseMHuq4Qhp0mpdQaOG
	/0ECul0445rKtDKffVUhpnpTB+sezPlgchL6aC3CfwJfTmlnvS8I7HCxunG5W/GAAu5VpdxfOxuLh
	l5btm3LncxEftYIL9M6TXtu6ynUoJUebGWgvk5aVOFGpUe1F1lOT9nC/NGAPokWtQ/f4CDifp4QtB
	QU18hjPH8DvaSHBmHLuhOu/zPP0SHgdH5yC7J5YdOHEEfH0G4/FELbdbPz210WnHnKxynaP1nWqKl
	CYFTa74A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRDLE-000FvY-Aa; Mon, 07 Mar 2022 13:24:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRDL9-000Ful-Fs
 for barebox@lists.infradead.org; Mon, 07 Mar 2022 13:23:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1nRDL8-0001Fd-13; Mon, 07 Mar 2022 14:23:54 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>)
 id 1nRDL8-003FEt-08; Mon, 07 Mar 2022 14:23:53 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>)
 id 1nRDL6-007a1h-JV; Mon, 07 Mar 2022 14:23:52 +0100
Date: Mon, 7 Mar 2022 14:23:52 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220307132352.nimuo7vofgb3mhtd@pengutronix.de>
References: <20220307112331.449741-1-u.kleine-koenig@pengutronix.de>
 <733095b9-554e-a667-47f0-6c03722bbb90@pengutronix.de>
 <20220307120441.5ku64yzxqzmuh6ua@pengutronix.de>
 <5bec70f6-8963-2b79-9f81-3e0a3dd30b7c@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <5bec70f6-8963-2b79-9f81-3e0a3dd30b7c@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220307_052355_555923_DA374B44 
X-CRM114-Status: GOOD (  38.21  )
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
Content-Type: multipart/mixed; boundary="===============4029263969112565500=="
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


--===============4029263969112565500==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="he62qreulm7tgkzy"
Content-Disposition: inline


--he62qreulm7tgkzy
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Ahmad,

On Mon, Mar 07, 2022 at 01:19:27PM +0100, Ahmad Fatoum wrote:
> On 07.03.22 13:04, Uwe Kleine-K=F6nig wrote:
> > On Mon, Mar 07, 2022 at 12:34:19PM +0100, Ahmad Fatoum wrote:
> >> On 07.03.22 12:23, Uwe Kleine-K=F6nig wrote:
> >>> Having the mmc aliases in stm32mp151.dtsi is surprising as depending =
on
> >>> the order of includes these override the mmc ordering in
> >>> <arm/stm32mp157c-myboard.dts>. Also the ordering of mmc devices is ac=
tually
> >>> board specific, so it's also right to have this in the board.dts file=
s.
> >>
> >> NACK.
> >=20
> > I feared you'd oppose. :-\
> >=20
> > My motivation to deviate from the default ordering is that I want to
> > have eMMC as first device and SD as second, so on the board I have here
> > I'd like to have
> >=20
> > 	mmc0 =3D &sdmmc2; /* eMMC */
> > 	mmc1 =3D &sdmmc1; /* =B5SD */
> >=20
> > However in combination with arch/arm/dts/stm32mp151.dtsi this results in
> >=20
> > 	mmc0 =3D &sdmmc2; /* eMMC */
> > 	mmc1 =3D &sdmmc1; /* =B5SD */
> > 	mmc2 =3D &sdmmc3;
> >=20
> > which is a bit ugly because sdmmc3 isn't used at all on the board in
> > question. Doing a /delete-property/mmc2 isn't that nice, too. Open for
> > alternatives ...
>=20
> Why though? Is this for compatibility with older/other hardware?

It's for compatibility with developer's mind, where numbering starts
with the always available devices :-)

> Renumbering is what I'd suggest though.
>=20
> >> MMC IPs have fixed numbering, because TF-A (and BootROM before it)
> >> report to barebox the number of the MMC device that it succesfully boo=
ted from.
> >> The aliases map these IDs to device tree nodes, so barebox can fix up =
a correct
> >> /chosen/bootsource.
> >=20
> > And mapping the number from TF-A (or BootROM) depends on the aliases
> > defined in the dts? Sounds like a bug to me.
>=20
> We can change of_alias_get_id to lookup /aliases/barebox,$alias as a fall=
back.
> Then add a new function that looks up barebox alias first and then non-ba=
rebox
> adorned as fallback and use that for bootsource calculation. Afterwards, =
we can
> prefix SoC level MMC aliases with barebox, and boards can specify their
> aliases as they please. This may be the most straight-forward way
> to decouple. Having mapping tables in SoC support is not my favorite.

I would have gone with the mapping tables and I'd consider
/aliases/barebox,mmc0 =3D ... more ugly. But I agree this to be
a bit subjective. If the soc-code continues to depend on having the mmc
aliases as defined in stm32mp151.dtsi, there should be a comment
describing that IMHO.

> >> Additionally having any alias at all ensures fixed naming that's
> >> not dependent on probe order.
> >=20
> > Fine for me. And if the board doesn't define the aliases, you get random
> > ordering.
>=20
> I prefer sane defaults.

I prefer sane defaults iff they can be easily adapted by board code. If
you consider in board.dts:

	mmc0 =3D &sdmmc2;
	mmc1 =3D &sdmmc3;

(for whatever reasons), you end up with mmc1 and mmc2 both pointing to
sdmmc3. Ugly.

> >> I know that Linux maintainers seem to disagree with this, but as far
> >> as barebox is concerned, aliases are SoC-specific, not board-specific
> >> in general. You can override this board-level if you like, but the
> >> default should remain.
> >>
> >>> There is no (relevant) change intended by this patch.
> >>
> >> I have non-upstream boards that would be broken by this.
> >=20
> > This is not a reason to not take this patch, is it?
>=20
> I think most people involved have boards (often with trivial board suppor=
t)
> that are not upstream. I do think we should avoid breaking them for no go=
od
> reason.

I think these people should mainline their trivial board support if they
want to be immune to such breaking.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--he62qreulm7tgkzy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmImB2UACgkQwfwUeK3K
7AkCCwgAhjZDBQMpwydBcedsWRzt7zrGkm5zmU+Q7Gu992J+SlOfcQzQgMpyL6+N
t4L7XxtD56PxmRHOLtXp51nLpohmKP6kI6BZX+Fr6nZ46KVUsUVxQxoxYkCxlUoT
Z5dUm8Miq567bIhcMYiYdWLWVe6d4QOQVBKfX/PtSrrtGdSjudzlaaEM6H+2l7x7
FR777iBfKqQkSQuEqdujghtgpbMWfOpLID2l/1gzQoLIvRU3MVN1wQon74y57vLf
MwMPbKn7f4yVejBeyLWs/vcMkb2VXHZnBomfB04INVw0AlpclfCZoBQcj47w5wCY
JVYNX3d0aMjiMSgA294YMggRarRR4A==
=DclU
-----END PGP SIGNATURE-----

--he62qreulm7tgkzy--


--===============4029263969112565500==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============4029263969112565500==--


