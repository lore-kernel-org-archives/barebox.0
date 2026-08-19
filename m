Delivery-date: Wed, 19 Aug 2026 09:18:06 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wwaYn-004ml5-0X
	for lore@lore.pengutronix.de;
	Wed, 19 Aug 2026 09:18:05 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id BAD7D2010F4
	for <lore@pengutronix.de>; Wed, 19 Aug 2026 09:18:05 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=clXX9lGK;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:To:Subject:From:Reply-To:
	Message-ID:MIME-Version:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=gCYz8TBk3MisswyV77zQOdn0ciTRHQEmMaMtJefwRoU=; b=clXX9lGKSOkDNs
	oB3GWTftQJCDs/uOjgvo7DLOrXekN0PdMe2HUYL68NPP7K3kzMeHI0qtKDnYjhC31mQ5vo7UNZJuG
	v/mbrzEtUG7NKMIt8GtQzNNyqpQxzy5KqC1aiywiR5oy0YBUYQkRFVxk5qsEjB4KNXx4It3GWVU2O
	X8Hn70MEoETMDEjh8SBprlQuHoqZezfil1QyyS1AVMZNcqgNCTOI9McfaBiS4G5DSU/MCgU8EfVaR
	xM/Xu6CooL1Efn1XESdkLwCUEeD7+ReWnSl9e70JCghgiNOHLXrRM+2XKcwHJsqHIdG+D4UXEAfD5
	OLH88WtQSgJVmOxJLQxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwaXd-00000009Ax4-2dwr;
	Wed, 19 Aug 2026 07:16:53 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwaXW-00000009AwR-2geU
	for barebox@lists.infradead.org;
	Wed, 19 Aug 2026 07:16:49 +0000
Received: from [127.0.0.1] (unknown [IPv6:2a02:560:5dd5:4b00:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 8E13F201021;
	Wed, 19 Aug 2026 09:16:44 +0200 (CEST)
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: Re: [PATCH v4 01/14] ARM: mvebu: add Netgear RN102 support
To: =?utf-8?b?VXdlIEtsZWluZS1Lw7ZuaWc=?= <ukleinek@kernel.org>
In-Reply-To: <aoQYLq5MTUbqzQCg@monoceros>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 19 Aug 2026 07:16:43 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260819_001647_154374_E0EDFDA0 
X-CRM114-Status: GOOD (  24.63  )
X-Spam-Score: -1.4 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Uwe, On 2026-08-18 10:44, Uwe Kleine-König wrote: > >
   > > The only difference I can spot here between this function and the > >
   existing variant in arch/arm/mach-mvebu/common.c is: > > > > #define DDR_SIZ
    [...] 
 
 Content analysis details:   (-1.4 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.5 MISSING_MID            Missing Message-Id: header
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: =?utf-8?b?b3BlbiBsaXN0OkJBUkVCT1g=?= <barebox@lists.infradead.org>, Luca
 Lauro via B4 Relay <devnull+famlauro93l.gmail.com@kernel.org>, Luca Lauro <famlauro93l@gmail.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Rspamd-Action: add header
X-Spam-Level: *****
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: BAD7D2010F4
X-Spamd-Result: default: False [5.09 / 15.00];
	SPAM_FLAG(5.00)[];
	BAYES_HAM(-3.00)[100.00%];
	MISSING_MID(2.50)[];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	CC_EXCESS_BASE64(1.50)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:ukleinek@kernel.org,m:barebox@lists.infradead.org,m:devnull+famlauro93l.gmail.com@kernel.org,m:famlauro93l@gmail.com,m:devnull@kernel.org,s:lore@pengutronix.de];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	DMARC_NA(0.00)[pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[lists.infradead.org,kernel.org,gmail.com];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	TAGGED_RCPT(0.00)[famlauro93l.gmail.com];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Stat-Signature: smarpp7eiauxfsuuy9puk5zg8a8udxt5
X-Spam: Yes
Message-ID: <20260819071643.E27I3ukDMvT9YEDz6aQj0u9HC_Ig-r9IKETMyBRKGHw@z>

Hi Uwe,

On 2026-08-18 10:44, Uwe Kleine-K=C3=B6nig wrote:
> >
> > The only difference I can spot here between this function and the
> > existing variant in arch/arm/mach-mvebu/common.c is:
> >=20
> > #define  DDR_SIZE_MASK                       0xff000000
> >=20
> > whereas the common.c variant uses:
> >=20
> > #define ARMADA_370_XP_DDR_SIZE_MASK     0xffff0000
>=20
> Apart from the different value, the latter name is the better one B-)
>=20
> > The latter goes down to this:
> >=20
> > > commit 7351b6b5c59c7a280787998006f39a5cd3a2f18b
> > > Author: Uwe Kleine-K=C3=B6nig <u.kleine-koenig@pengutronix.de>
> > > Date:   Tue Jun 13 00:37:49 2017 +0200
> > >
> > >     ARM: mvebu: fix size mask for RAM window
> > >   =20
> > >     The size field in the window control register occupies bits 31:16=
. So
> > >     adapt ARMADA_370_XP_DDR_SIZE_MASK accordingly. This fixes detecti=
on of
> > >     RAM chips smaller than 32 MiB and so probably doesn't affect any
> > >     supported machine.
> > >   =20
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
SE) + 0x20000)
> > >  #define ARMADA_370_XP_DDR_SIZE_CSn(n)  (0x184 + ((n) * 0x8))
> > >  #define ARMADA_370_XP_DDR_SIZE_ENABLED BIT(0)
> > > -#define ARMADA_370_XP_DDR_SIZE_MASK    0xff000000
> > > +#define ARMADA_370_XP_DDR_SIZE_MASK    0xffff0000
> > >=20
> > >  /*
> > >   * Marvell MVEBU SoC id and revision can be read from any PCIe
> >=20
> > @Uwe, Where did you get that information from. Could it be that we
> > should just revert this one given that it seems to be untested on your
> > side?
>=20
> 0xffff0000 is in line with
> https://datasheet.datasheetarchive.com/originals/crawler/marvell.com/002f=
a441a27967d992f905776d519926.pdf
> (page 630). So I'd expect that 0xffff0000 is correct, but I don't care
> much.

Page 630 describes the register at offset 0x20000. I think the correct
page to look at is 626 which describes 0x20184 aka ARMADA_370_XP_DDR_SIZE_C=
Sn(0).

That one has the window size in the upper 8 bit. Looks like we should
just revert 7351b6b5c59c. @Luca, does the SDRAM size detection work for
you with that patch reverted?

Sascha

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



