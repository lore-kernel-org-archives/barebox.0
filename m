Delivery-date: Tue, 18 Aug 2026 10:46:13 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wwFSW-004Qqc-2E
	for lore@lore.pengutronix.de;
	Tue, 18 Aug 2026 10:46:13 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 1BFBC201D0B
	for <lore@pengutronix.de>; Tue, 18 Aug 2026 10:46:13 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=LFVCIUjx;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=At6dMv18;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fLIxoLO5aO5ZsK/WAoCEXUmM++XUZBcfnXcvYgTTjTU=; b=LFVCIUjx7IY3l/wTOUfjVUrMTx
	niRVze128dHEwhDr/dE23fUCzu9Z0vyjiHb9VUQrVNdg9wxSNoMTVFtYfxntg7FS8dlMGj6Yqur+9
	G/UnLaLKfw6/jjth3Coig5vXobFCBqSoQfBd7CD+FyLjEi3zwa82p2aBfJSX9sH4NHHDa++mhCu9q
	zpbRUZYz1U0hR7u0mWpqCbUTvZHh5jU0FgQK7eR8dKqO7AkAXfQ0J2n8S61NwbKxG3q3SUUdNSKP9
	/BMlj07udeRqvc4NHN6QOinSN3DhW5N3rIz7tVDBd1UO0i7fs8yflqGpxo58pXphITYLKmeVaLFH6
	6yI7pwjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwFQz-00000007XlW-067e;
	Tue, 18 Aug 2026 08:44:37 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwFQy-00000007XlQ-1GI3
	for barebox@lists.infradead.org;
	Tue, 18 Aug 2026 08:44:36 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with UTF8SMTP id 5A479418D0;
	Tue, 18 Aug 2026 08:44:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with UTF8SMTPSA id A817F1F00A3A;
	Tue, 18 Aug 2026 08:44:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787042675;
	bh=fLIxoLO5aO5ZsK/WAoCEXUmM++XUZBcfnXcvYgTTjTU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=At6dMv18yzGpmnCvQrDi6gNv2r61YctrTyO3TKadjHj5snvb9etNfkoG6gzJCCvtb
	 5bWrGAD3sjLTJeCtgDcy7LvUEpdbxJlPUdxcwEbLLciuH2ideGyhL/8gkIn91+JBHV
	 BGJ9uK6BXxMHHyiohJuV8TIRwWqZaogacPPI6u/Fkkq3aADJldsFeEp1XREJSc6tZa
	 DDVUOopyHIUAxdrqZO13MLpoC/1Ls9SSBGLzFLcsiTGxFNJrRqpnzfSl8l6ER9UA8z
	 nbUy7Zncs6H3xLY6d+aqhvdiXaz350YdEFxDXXxbBbw5Z/F9d06iMTbf/iqLZjDMEH
	 sa8DA7zq/W1IA==
Date: Tue, 18 Aug 2026 10:44:32 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <ukleinek@kernel.org>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
	Luca Lauro <famlauro93l@gmail.com>
Cc: Luca Lauro via B4 Relay <devnull+famlauro93l.gmail.com@kernel.org>, 
	"open list:BAREBOX" <barebox@lists.infradead.org>
Subject: Re: [PATCH v4 01/14] ARM: mvebu: add Netgear RN102 support
Message-ID: <aoQYLq5MTUbqzQCg@monoceros>
References: <20260813-rn102-rn104-series-v4-1-f932ac63efa0@gmail.com>
 <E1wvs81-00GOzc-1k@pengutronix.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dsmnold6nv2o4ger"
Content-Disposition: inline
In-Reply-To: <E1wvs81-00GOzc-1k@pengutronix.de>
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
X-Stat-Signature: bbcym9jtwnmmfbs7c3fdyb3qc44wa7rp
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
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,kernel.org:s=k20260515];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[pengutronix.de,gmail.com];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	FORGED_SENDER(0.00)[ukleinek@kernel.org,barebox-bounces@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	TAGGED_RCPT(0.00)[famlauro93l.gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,kernel.org:+];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[ukleinek@kernel.org,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 1BFBC201D0B


--dsmnold6nv2o4ger
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v4 01/14] ARM: mvebu: add Netgear RN102 support
MIME-Version: 1.0

Hello,

oh, it seems I have to work out again how to get access to the serial of
my RN104. Great there are some efforts for that machine.

@Luca, somewhat related, my RN104 runs Debian and since quite some time
I see issues in the network driver with overruns corrupting transfers.
Do you see these, too?

On Mon, Aug 17, 2026 at 07:51:28AM +0000, Sascha Hauer wrote:
> On 2026-08-13 17:26, Luca Lauro via B4 Relay wrote:
> > +					 filetype_kwbimage_v1);
> > +
> > +	return 0;
> > +}
> > +
> > +static const struct of_device_id rn102_of_match[] =3D {
> > +	{ .compatible =3D "netgear,rn102" },
>=20
> How is the driver probed? The string "netgear,rn102" is in no dts.
> Unless I am missing something this should be "netgear,readynas-102".
>=20
> Same for the rn104 patch.
>=20
> > +/*
> > + * NOTE:
> > + * armada_370_xp_barebox_entry() cannot be used here because the
> > + * upstream SDRAM size detection for Armada 370-XP misinterprets
> > + * the DDR_SIZE_CSn registers on this board and reports an incorrect
> > + * memory size (256MB instead of 512MB on RN102).
> > + *
> > + * Until the generic detection code is fixed, we compute the SDRAM
> > + * size manually using the DDR_SIZE_CSn values.
> > + */
> > +static unsigned long armada_370_xp_memory_find(void)
> > +{
> > +	unsigned long mem_size =3D 0;
> > +
> > +	for (int cs =3D 0; cs < 4; cs++) {
> > +		u32 ctrl =3D readl(ARMADA_370_XP_SDRAM_BASE + DDR_SIZE_CSn(cs));
> > +
> > +		/* Skip non-enabled CS */
> > +		if ((ctrl & DDR_SIZE_ENABLED) !=3D DDR_SIZE_ENABLED)
> > +			continue;
> > +
> > +		mem_size +=3D (ctrl | ~DDR_SIZE_MASK) + 1;
> > +	}
> > +
> > +	return mem_size;
> > +}
>=20
> The only difference I can spot here between this function and the
> existing variant in arch/arm/mach-mvebu/common.c is:
>=20
> #define  DDR_SIZE_MASK                       0xff000000
>=20
> whereas the common.c variant uses:
>=20
> #define ARMADA_370_XP_DDR_SIZE_MASK     0xffff0000

Apart from the different value, the latter name is the better one B-)

> The latter goes down to this:
>=20
> > commit 7351b6b5c59c7a280787998006f39a5cd3a2f18b
> > Author: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> > Date:   Tue Jun 13 00:37:49 2017 +0200
> >
> >     ARM: mvebu: fix size mask for RAM window
> >   =20
> >     The size field in the window control register occupies bits 31:16. =
So
> >     adapt ARMADA_370_XP_DDR_SIZE_MASK accordingly. This fixes detection=
 of
> >     RAM chips smaller than 32 MiB and so probably doesn't affect any
> >     supported machine.
> >   =20
> >     Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> >     Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> >
> > diff --git a/arch/arm/mach-mvebu/common.c b/arch/arm/mach-mvebu/common.c
> > index 06bfb72615..fa971da11e 100644
> > --- a/arch/arm/mach-mvebu/common.c
> > +++ b/arch/arm/mach-mvebu/common.c
> > @@ -47,7 +47,7 @@
> >  #define ARMADA_370_XP_SDRAM_BASE       (IOMEM(MVEBU_REMAP_INT_REG_BASE=
) + 0x20000)
> >  #define ARMADA_370_XP_DDR_SIZE_CSn(n)  (0x184 + ((n) * 0x8))
> >  #define ARMADA_370_XP_DDR_SIZE_ENABLED BIT(0)
> > -#define ARMADA_370_XP_DDR_SIZE_MASK    0xff000000
> > +#define ARMADA_370_XP_DDR_SIZE_MASK    0xffff0000
> >=20
> >  /*
> >   * Marvell MVEBU SoC id and revision can be read from any PCIe
>=20
> @Uwe, Where did you get that information from. Could it be that we
> should just revert this one given that it seems to be untested on your
> side?

0xffff0000 is in line with
https://datasheet.datasheetarchive.com/originals/crawler/marvell.com/002fa4=
41a27967d992f905776d519926.pdf
(page 630). So I'd expect that 0xffff0000 is correct, but I don't care
much.

Best regards
Uwe

--dsmnold6nv2o4ger
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmqEG20ACgkQj4D7WH0S
/k5lEQgAlIBMza6mU6NYAAzzoEp/mp9bb4eirAqx7HBO6IHhLnSqxZurkS1dWzDL
XQHXBvFloyHnpTLicsGWmMk/ZrhfDbQDxVO1S697nzgXy2SN/d+40Ml3VZ+CniB3
/GcEDLwIyc2aqyZT0HAFQWQ3OgDoTfagG4gmsOHXGhEF30WwkjXVGeaOO7f9Ofiz
Z2qawPSdjAoTzZ/ROL5/RfTOZzy9K5gw0I58euLzFBocTI5VqxVKX7VZbb2P3zW9
gXV4UQ4UFSrKl/q5Y40cxECR6zZx3qycfrUqF/UJaW0PGPiNqQAQ/HuZixy7AwLd
WrtH9ivElXRdbrOCrYzrzFBj8fRd5A==
=Dx0p
-----END PGP SIGNATURE-----

--dsmnold6nv2o4ger--


