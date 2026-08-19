Delivery-date: Wed, 19 Aug 2026 09:41:09 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wwav6-004myq-17
	for lore@lore.pengutronix.de;
	Wed, 19 Aug 2026 09:41:09 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id E32472020ED
	for <lore@pengutronix.de>; Wed, 19 Aug 2026 09:41:08 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=LUncwIDa;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="PEVg9Y/X";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=g8tPLLxCorifRkOmQy+LbJJ8eGeX8Eyq8YB0g6+6EOU=; b=LUncwIDax6o2tgawJOXQP7njNB
	GDddGRoTcSZE2EZzeXGpZ7mCmfU+pQFXWoX5Ch0qLJqwOgNoD3YgefqM4qTtHdERZahTne8FajDRa
	R1SoihObCt98QJblr1Bq+H9Hw/rbqGb6yTcwAPrCZ3zCNG02Jq4QEbCTEG5OG/79N8Tp4L729ezRF
	ed3iHq4nvNWZPdo7xrfadqYZIxefiYzcFCtb9qVTrZKDjOMbAiTuZWy+sR3VUOFYGhi0h+G0gU8V9
	Al5dVB0fTjQZ+Q2SkdsC4qcQ+TpfAy8YR6zjM5xgeBYbSuGpWgCzB3tsFm/W4E1cFhsug0ehozqdp
	jARjsgog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwatS-00000009DZI-2QM9;
	Wed, 19 Aug 2026 07:39:26 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwatQ-00000009DZ3-09UK
	for barebox@lists.infradead.org;
	Wed, 19 Aug 2026 07:39:24 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with UTF8SMTP id 6F51340674;
	Wed, 19 Aug 2026 07:39:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with UTF8SMTPSA id BD2211F000E9;
	Wed, 19 Aug 2026 07:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787125163;
	bh=g8tPLLxCorifRkOmQy+LbJJ8eGeX8Eyq8YB0g6+6EOU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=PEVg9Y/XNnXTFVQYm9Aqrydj9iGXY9TYHjCfwB/EOQeaBpq531rr5xqgY5Kc+0iD+
	 q6OFzWEwv3vQ0oBMlCrBZ5mzRre9sTXfVrD8eMY6crN13GZ/BK/IoX+Hjrvy6t3cxk
	 XFf1yo7qnuI7BGI5RcgRx/ksw7aLsqDtfVIgpaLlBKvchL+S7om0mn5auCf04qXyA8
	 rcy8gr4DPBtpJOeeISvqbhbkE3GpS+c9SHggcPf3GjI5ok6OmOGF/NLcK7HJSFOxrP
	 /Y6Gz8pcmHXFLXEknHLjuoSFjsTd7KgwiLdjQUZYlaczIUVGoda3w5Y1PudoRTeTrZ
	 OPzMKknpVsfOQ==
Date: Wed, 19 Aug 2026 09:39:20 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <ukleinek@kernel.org>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "open list:BAREBOX" <barebox@lists.infradead.org>, 
	Luca Lauro via B4 Relay <devnull+famlauro93l.gmail.com@kernel.org>, Luca Lauro <famlauro93l@gmail.com>
Subject: Re: [PATCH v4 01/14] ARM: mvebu: add Netgear RN102 support
Message-ID: <aoVb_oPWnJ2s8ZoN@monoceros>
References: <aoQYLq5MTUbqzQCg@monoceros>
 <20260819071643.E27I3ukDMvT9YEDz6aQj0u9HC_Ig-r9IKETMyBRKGHw@z>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rdgqm22r4u3dflhx"
Content-Disposition: inline
In-Reply-To: <20260819071643.E27I3ukDMvT9YEDz6aQj0u9HC_Ig-r9IKETMyBRKGHw@z>
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: roy95uq1tdxbtyu5ius8y7qa6o6dz367
X-Spamd-Result: default: False [-10.01 / 15.00];
	DWL_DNSWL_MED(-4.00)[infradead.org:dkim,kernel.org:dkim];
	BAYES_HAM(-3.00)[99.99%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_RHS_NOT_FQDN(0.50)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER(0.00)[ukleinek@kernel.org,barebox-bounces@lists.infradead.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[ukleinek@kernel.org,barebox-bounces@lists.infradead.org];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	TAGGED_RCPT(0.00)[famlauro93l.gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_ALL(0.00)[];
	MISSING_XM_UA(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,kernel.org:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_FORWARDING(0.00)[];
	FREEMAIL_CC(0.00)[lists.infradead.org,kernel.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: E32472020ED


--rdgqm22r4u3dflhx
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v4 01/14] ARM: mvebu: add Netgear RN102 support
MIME-Version: 1.0

Hallo Sascha,

On Wed, Aug 19, 2026 at 07:16:43AM +0000, Sascha Hauer wrote:
> On 2026-08-18 10:44, Uwe Kleine-K=F6nig wrote:
> > >
> > > The only difference I can spot here between this function and the
> > > existing variant in arch/arm/mach-mvebu/common.c is:
> > >=20
> > > #define  DDR_SIZE_MASK                       0xff000000
> > >=20
> > > whereas the common.c variant uses:
> > >=20
> > > #define ARMADA_370_XP_DDR_SIZE_MASK     0xffff0000
> >=20
> > Apart from the different value, the latter name is the better one B-)
> >=20
> > > The latter goes down to this:
> > >=20
> > > > commit 7351b6b5c59c7a280787998006f39a5cd3a2f18b
> > > > Author: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> > > > Date:   Tue Jun 13 00:37:49 2017 +0200
> > > >
> > > >     ARM: mvebu: fix size mask for RAM window
> > > >   =20
> > > >     The size field in the window control register occupies bits 31:=
16. So
> > > >     adapt ARMADA_370_XP_DDR_SIZE_MASK accordingly. This fixes detec=
tion of
> > > >     RAM chips smaller than 32 MiB and so probably doesn't affect any
> > > >     supported machine.
> > > >   =20
> > > >     Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.=
de>
> > > >     Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > > >
> > > > diff --git a/arch/arm/mach-mvebu/common.c b/arch/arm/mach-mvebu/com=
mon.c
> > > > index 06bfb72615..fa971da11e 100644
> > > > --- a/arch/arm/mach-mvebu/common.c
> > > > +++ b/arch/arm/mach-mvebu/common.c
> > > > @@ -47,7 +47,7 @@
> > > >  #define ARMADA_370_XP_SDRAM_BASE       (IOMEM(MVEBU_REMAP_INT_REG_=
BASE) + 0x20000)
> > > >  #define ARMADA_370_XP_DDR_SIZE_CSn(n)  (0x184 + ((n) * 0x8))
> > > >  #define ARMADA_370_XP_DDR_SIZE_ENABLED BIT(0)
> > > > -#define ARMADA_370_XP_DDR_SIZE_MASK    0xff000000
> > > > +#define ARMADA_370_XP_DDR_SIZE_MASK    0xffff0000
> > > >=20
> > > >  /*
> > > >   * Marvell MVEBU SoC id and revision can be read from any PCIe
> > >=20
> > > @Uwe, Where did you get that information from. Could it be that we
> > > should just revert this one given that it seems to be untested on your
> > > side?
> >=20
> > 0xffff0000 is in line with
> > https://datasheet.datasheetarchive.com/originals/crawler/marvell.com/00=
2fa441a27967d992f905776d519926.pdf
> > (page 630). So I'd expect that 0xffff0000 is correct, but I don't care
> > much.
>=20
> Page 630 describes the register at offset 0x20000. I think the correct
> page to look at is 626 which describes 0x20184 aka ARMADA_370_XP_DDR_SIZE=
_CSn(0).
>=20
> That one has the window size in the upper 8 bit. Looks like we should
> just revert 7351b6b5c59c. @Luca, does the SDRAM size detection work for
> you with that patch reverted?

Oh, indeed, you're right. Then I guess I did the same mistake already
back in 2017.

I would expect from my 2017 self that he tested that change, and given
that the bits he got wrong are documented to read as 1 I think the
impact isn't relevant as long as a size > 32 MiB is configured. (That's
not an argument to not revert 7351b6b5c59c7a280787998006f39a5cd3a2f18b,
only wondering about this bug being relevant for Luca.)

Take my ack when you do the revert. (I'm not spelling it out here to not
confuse b4 that will probably assign it to the patch mentioned in the
Subject.)

Best regards
Uwe

--rdgqm22r4u3dflhx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmqFXaUACgkQj4D7WH0S
/k6nzAf8DkwsDG5wiO1mBrwYiK4QEgMLob10YQMvdVL8AGo918mN4V17S6aiDafj
QMjweCr9gs9a4Ou5e5ZLoWw6Sa64BWM+3dJ5rNAVANZqZsEJGcx0PVgLP2clifEM
Klv6KQSfEeazsaGlqcRYSbr/NKjzfdp/znq4D3lReYcbviNt5FD3bdUKcTaWedNN
ouBdLIMsgREssbkh2L4qIc94wHrh/DB3Q2E5Ym/Mwt59ZzgF763m4cBGx/cxCbLh
nfqSoKLsV29ofzJPMbSS25kOQJxqNTk8klR6gK7x0KLnL0IiLAlghQyw9LMheJUd
Fdgyo0KHSrsoD0Y+uSI3UcgjXiLg/Q==
=Byqa
-----END PGP SIGNATURE-----

--rdgqm22r4u3dflhx--


