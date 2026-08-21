Delivery-date: Fri, 21 Aug 2026 11:17:46 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wxLNh-005X1I-30
	for lore@lore.pengutronix.de;
	Fri, 21 Aug 2026 11:17:46 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 2B91620190E
	for <lore@pengutronix.de>; Fri, 21 Aug 2026 11:17:46 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=KoG9wZLg;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:To:Subject:From
	:Message-ID:Reply-To:MIME-Version:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vapLp5c+/hmLGf6Y6wH35PyMb5xGAOWCp7vYCREIGBk=; b=KoG9wZLg8eAIksuiGW1YiUln2w
	8Ysb2ZefQ4gcTWQlLEKgOek3u4sEoOf5yaJy1aEAQ5N9bgYJ6BmPRAC2BlgGvQMPW61Cz3Vv95jWE
	tEkq2eSDoSpuLLfKiDrHBF3GtCuZVTHlBUlyoMhJ1yWTqCl/K/HTitF9kjKP7gKxDkOWqeZSj9PJ9
	hsM77CdaHE7XlqNsc+q4qPJY7PUDvbUBIhe0uR8l2di+KdfEhMh5jX9tvq+fTYI+Pi/uwtuKE35CS
	KubwPjo4EwUQGqBtRTlcYiXz08ZA6qqtBvlmPeZqdyoZJ5a++wU0upojyecFewVAoUtt8dXBtMVT3
	oDekgAkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wxLN7-0000000CuH6-2XKf;
	Fri, 21 Aug 2026 09:17:09 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wxLN4-0000000CuGQ-0XIl
	for barebox@lists.infradead.org;
	Fri, 21 Aug 2026 09:17:08 +0000
Received: from [127.0.0.1] (unknown [IPv6:2a02:560:5dd5:4b00:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 271722010D6;
	Fri, 21 Aug 2026 11:17:02 +0200 (CEST)
Message-ID: <4df2a9de-cc31-40ee-8328-a1db9f7aaa7a@pengutronix.de>
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: Re: [PATCH v4 01/14] ARM: mvebu: add Netgear RN102 support
To: "Luca Lauro" <famlauro93l@gmail.com>
In-Reply-To: <CANRe2W+Cp82qe+R_VNf_hXV+NRet+F63fq34pEw3FR-s4kw3zg@mail.gmail.com>
References: <20260813-rn102-rn104-series-v4-1-f932ac63efa0@gmail.com>
 <E1wvs81-00GOzc-1k@pengutronix.de>
 <CANRe2W+Cp82qe+R_VNf_hXV+NRet+F63fq34pEw3FR-s4kw3zg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 21 Aug 2026 09:17:01 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260821_021706_340017_1EE1057B 
X-CRM114-Status: GOOD (  37.48  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 2026-08-20 16:27, Luca Lauro wrote: > Hi Sascha, > > about
    the NAND node: the upstream DTS does contain the NAND configuration > properties,
    but they are placed inside the `nand@0` child node. Bare [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
Cc: =?utf-8?b?b3BlbiBsaXN0OkJBUkVCT1g=?= <barebox@lists.infradead.org>, ukleinek@kernel.org, Luca Lauro via B4 Relay <devnull+famlauro93l.gmail.com@kernel.org>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: xddr9b58zoxkjhhfimu4dftxr5tq5ws1
X-Spamd-Result: default: False [-2.41 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MISSING_MIME_VERSION(2.00)[];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	SUSPICIOUS_RECIPS(1.50)[];
	CC_EXCESS_BASE64(1.50)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:famlauro93l@gmail.com,m:barebox@lists.infradead.org,m:ukleinek@kernel.org,m:devnull+famlauro93l.gmail.com@kernel.org,m:devnull@kernel.org,s:lore@pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCPT_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	DBL_PROHIBIT(0.00)[0.0.0.0:email];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[famlauro93l.gmail.com];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 2B91620190E

On 2026-08-20 16:27, Luca Lauro wrote:
> Hi Sascha,
>=20
> about the NAND node: the upstream DTS does contain the NAND configuration
> properties, but they are placed inside the `nand@0` child node. Barebox
> pxa3xx-nand reads these properties from the controller node instead, so
> the upstream layout is not sufficient for barebox to probe and configure
> the NAND controller correctly.
>=20
> For this reason the overlay needs to replicate NAND configuration
> properties in the controller node. Without them, barebox does not apply
> settings and NAND doesn't work.
>=20
> The only part that is truly duplicated is `status =3D "okay"`, which I can
> drop in v5.
>=20
> Thanks for the review.
>=20
> Il giorno lun 17 ago 2026 alle ore 09:51 Sascha Hauer <
> s.hauer@pengutronix.de> ha scritto:
>=20
> > On 2026-08-13 17:26, Luca Lauro via B4 Relay wrote:
> > > +                                      filetype_kwbimage_v1);
> > > +
> > > +     return 0;
> > > +}
> > > +
> > > +static const struct of_device_id rn102_of_match[] =3D {
> > > +     { .compatible =3D "netgear,rn102" },
> >
> > How is the driver probed? The string "netgear,rn102" is in no dts.
> > Unless I am missing something this should be "netgear,readynas-102".
> >
> > Same for the rn104 patch.
> >
> > > +/*
> > > + * NOTE:
> > > + * armada_370_xp_barebox_entry() cannot be used here because the
> > > + * upstream SDRAM size detection for Armada 370-XP misinterprets
> > > + * the DDR_SIZE_CSn registers on this board and reports an incorrect
> > > + * memory size (256MB instead of 512MB on RN102).
> > > + *
> > > + * Until the generic detection code is fixed, we compute the SDRAM
> > > + * size manually using the DDR_SIZE_CSn values.
> > > + */
> > > +static unsigned long armada_370_xp_memory_find(void)
> > > +{
> > > +     unsigned long mem_size =3D 0;
> > > +
> > > +     for (int cs =3D 0; cs < 4; cs++) {
> > > +             u32 ctrl =3D readl(ARMADA_370_XP_SDRAM_BASE +
> > DDR_SIZE_CSn(cs));
> > > +
> > > +             /* Skip non-enabled CS */
> > > +             if ((ctrl & DDR_SIZE_ENABLED) !=3D DDR_SIZE_ENABLED)
> > > +                     continue;
> > > +
> > > +             mem_size +=3D (ctrl | ~DDR_SIZE_MASK) + 1;
> > > +     }
> > > +
> > > +     return mem_size;
> > > +}
> >
> > The only difference I can spot here between this function and the
> > existing variant in arch/arm/mach-mvebu/common.c is:
> >
> > #define  DDR_SIZE_MASK                       0xff000000
> >
> > whereas the common.c variant uses:
> >
> > #define ARMADA_370_XP_DDR_SIZE_MASK     0xffff0000
> >
> > The latter goes down to this:
> >
> > > commit 7351b6b5c59c7a280787998006f39a5cd3a2f18b
> > > Author: Uwe Kleine-K=C3=B6nig <u.kleine-koenig@pengutronix.de>
> > > Date:   Tue Jun 13 00:37:49 2017 +0200
> > >
> > >     ARM: mvebu: fix size mask for RAM window
> > >
> > >     The size field in the window control register occupies bits 31:16=
. So
> > >     adapt ARMADA_370_XP_DDR_SIZE_MASK accordingly. This fixes detecti=
on
> > of
> > >     RAM chips smaller than 32 MiB and so probably doesn't affect any
> > >     supported machine.
> > >
> > >     Signed-off-by: Uwe Kleine-K=C3=B6nig <u.kleine-koenig@pengutronix=
.de>
> > >     Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > >
> > > diff --git a/arch/arm/mach-mvebu/common.c b/arch/arm/mach-mvebu/commo=
n.c
> > > index 06bfb72615..fa971da11e 100644
> > > --- a/arch/arm/mach-mvebu/common.c
> > > +++ b/arch/arm/mach-mvebu/common.c
> > > @@ -47,7 +47,7 @@
> > >  #define ARMADA_370_XP_SDRAM_BASE       (IOMEM(MVEBU_REMAP_INT_REG_BA=
SE)
> > + 0x20000)
> > >  #define ARMADA_370_XP_DDR_SIZE_CSn(n)  (0x184 + ((n) * 0x8))
> > >  #define ARMADA_370_XP_DDR_SIZE_ENABLED BIT(0)
> > > -#define ARMADA_370_XP_DDR_SIZE_MASK    0xff000000
> > > +#define ARMADA_370_XP_DDR_SIZE_MASK    0xffff0000
> > >
> > >  /*
> > >   * Marvell MVEBU SoC id and revision can be read from any PCIe
> >
> > @Uwe, Where did you get that information from. Could it be that we
> > should just revert this one given that it seems to be untested on your
> > side?
> >
> > > +
> > > +&nand_controller {
> > > +     compatible =3D "marvell,armada370-nand", "marvell,pxa3xx-nand";
> > > +     status =3D "okay";
> >
> > These two properties are already in the upstream dts files, please drop.

Could you retry on current -next? It contains

fac937411f mtd: nand: nand_mrvl_nfc: support the nand-controller bindings

which seems to fix that issue. At least that fixed the binding on my
pxa3xx board.

Sascha

--
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



