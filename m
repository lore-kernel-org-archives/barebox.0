Delivery-date: Wed, 14 Apr 2021 16:37:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWgeA-0003oy-Cs
	for lore@lore.pengutronix.de; Wed, 14 Apr 2021 16:37:38 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWge9-0005pC-Ds
	for lore@pengutronix.de; Wed, 14 Apr 2021 16:37:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cYUMAb6gkxheteivIcymoFLdAorHva0Cw84rCbaFMyk=; b=d7/ut4kkX6PBdtvBhd0v3K5Ct
	hiGrSIjdNRW/YL2xDHUbLDYwv7ZeI9OdT2sLbpcQNEAPHAf1YBIrpS7gaEHei1T+Ba7PzDrOc8r6J
	VC7ue+LCP4IdDjEc4LxObrxBQ0Ck14Fm9JKyS4CLStggw10a/lf7XP+1v7GgNF9ZdmNJRSpwmDtyu
	/HHpe80p3D40I30NUemKSHRVP4nRTXCngwzXEC3YkOF5Wrj2NoE/BqLWZggf435EpOhxgOL/l/Lor
	mQLp2YzvuoAY7M+gu+EKiue08F7RZbXM6iZykLmufytYttubhrcj/n4hsYhUGH70Ad6FFjkXNG1u4
	TpoGj4kMw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWgcp-00CuCA-S3; Wed, 14 Apr 2021 14:36:16 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWgck-00CuBe-AK
 for barebox@desiato.infradead.org; Wed, 14 Apr 2021 14:36:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Transfer-Encoding
 :Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=lr7s1BH9G/CEEF39HPEJsye5p0uaAkKwjIh/8rjyEFE=; b=oEuPM8+sw++kMDWX0CK7zPCNdq
 f98G9wSysna8Ni1mJY2i19OAK5swoXZdgCvfy+se7u0XGD5oFqVVh/i5qfhd0wWff/2UM3uj9UidC
 0iPtoQuBFnEobQqYfW5KaV0lgLUc2LPShASNsMP11aFchzss6D/JrkKgvZtjnneTJs0c8WmsT4ibA
 A3C21R7wwHDA3YYZnF5ratFMrGLWU/L6BTi5PworFUkLsEROn6EV9e8p5aZDthlOEdzh17oa/MzFY
 Oxn00lMzLdhPBoSYGn5LEmwzhjtYWs/OEFy+pfhYPPPX7c3yBdZCgSIUg5bizy/1/MpzLzsZLTIiI
 uuszsMMA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWgch-007paq-JA
 for barebox@lists.infradead.org; Wed, 14 Apr 2021 14:36:09 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lWgcg-0005WK-0o; Wed, 14 Apr 2021 16:36:06 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lWgcf-00076c-Lv; Wed, 14 Apr 2021 16:36:05 +0200
Date: Wed, 14 Apr 2021 16:36:05 +0200
From: "sha@pengutronix.de" <sha@pengutronix.de>
To: Stefan =?iso-8859-15?Q?Riedm=FCller?= <S.Riedmueller@phytec.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Message-ID: <20210414143605.GX19819@pengutronix.de>
References: <20210316123626.25872-1-s.riedmueller@phytec.de>
 <20210316123626.25872-2-s.riedmueller@phytec.de>
 <20210317094106.GZ23724@pengutronix.de>
 <8683628e4ef3f07ea2281e48478f71d81e00729a.camel@phytec.de>
 <20210322055902.GO23724@pengutronix.de>
 <51106fd1f5f44d3f4a38acb98eb1eb14f23c4cb8.camel@phytec.de>
 <d535d198a5eb6a8404020bbd7295e2c2ccf92182.camel@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d535d198a5eb6a8404020bbd7295e2c2ccf92182.camel@phytec.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 16:35:35 up 55 days, 17:59, 103 users,  load average: 0.07, 0.06,
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210414_073607_652971_CC5518B0 
X-CRM114-Status: GOOD (  39.79  )
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
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] mtd: nand_bbt: Skip bad blocks when searching for
 the BBT in NAND
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

0.08

Hi Stefan,

On Wed, Apr 14, 2021 at 01:18:39PM +0000, Stefan Riedm=FCller wrote:
> Hi Sascha,
> =

> just wanted to let you know that the kernel patch has been accepted and is
> included in the pull request for 5.13.

Thanks for the effort. I just merged it into barebox.

Sascha


> =

> https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git/log/?h=3Dna=
nd/for-5.13
> =

> Regards,
> Stefan
> =

> On Mon, 2021-03-29 at 07:20 +0000, Stefan Riedm=FCller wrote:
> > Hi Sascha,
> > =

> > here is the link to the kernel patch.
> > Sorry, I forgot to put you in cc.
> > =

> > https://patchwork.ozlabs.org/project/linux-mtd/patch/20210325102337.481=
172-1-s.riedmueller@phytec.de/
> > =

> > Stefan
> > =

> > On Mon, 2021-03-22 at 06:59 +0100, sha@pengutronix.de wrote:
> > > On Wed, Mar 17, 2021 at 05:14:05PM +0000, Stefan Riedm=FCller wrote:
> > > > Hi Sascha,
> > > > =

> > > > On Wed, 2021-03-17 at 10:41 +0100, Sascha Hauer wrote:
> > > > > Hi Stefan,
> > > > > =

> > > > > On Tue, Mar 16, 2021 at 01:36:26PM +0100, Stefan Riedmueller wrot=
e:
> > > > > > The blocks containing the bad block table can become bad as wel=
l. So
> > > > > > make sure to skip any blocks that are marked bad when searching=
 for
> > > > > > the
> > > > > > bad block table.
> > > > > =

> > > > > The file is a more or less direct copy from the kernel. Does the
> > > > > problem
> > > > > exist in the kernel as well?
> > > > =

> > > > From my point of view I would say yes. I have just made a small test
> > > > Issue
> > > > is
> > > > shown in the kernel as well. It is a very raw case where two BBT bl=
ocks
> > > > need
> > > > to be worn out but on the other hand this fix should not have that =
much
> > > > of
> > > > an
> > > > impact.
> > > > =

> > > > I will send a similar patch to the kernel.
> > > =

> > > I'd like to delay this one until it is accepted in the kernel. I do n=
ot
> > > fully understand the consequences of this patch, but hopefully on the
> > > mtd list there is someone.
> > > =

> > > Sascha
> > > =

> > _______________________________________________
> > barebox mailing list
> > barebox@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

