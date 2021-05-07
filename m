Delivery-date: Fri, 07 May 2021 09:53:43 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1levIt-00043N-Bc
	for lore@lore.pengutronix.de; Fri, 07 May 2021 09:53:43 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1levIs-0006mw-LF
	for lore@pengutronix.de; Fri, 07 May 2021 09:53:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qZW5SUK+383cTc+6Y1ONNsQ6ImkjaWUpqdvLY+CF+Oc=; b=AOdw6BAElElz9SgoSHyVCQJxv
	1eq45cbDeBpgiAs1t9C0I30jpyQ2Xh9jYo2dNckmmuFL4UUZYecUQHAk2mfdSuIXG0WOIBBczj4Zx
	FDRHfJT9IOh11/TNrVUZckWS6o1q0ZHtrFv6ky3NvhlyMvleaMHEIQIDlSNAErqu/3eJ8unPBYw4P
	TmZxsO5YXx+kC7Lu6xQxnU4YKf1bxgSWxmeu4HpPyM6KPcNbLeS+IuP6SZGEDrtfmCquHOnDH7DAm
	vO0RVdOZtmezWcwRh4in0u1CzfD27BWkI4Ss7iT1V7odZ+JSBft8oX6YTgDLrvbhAbL6bMMc7dJ/G
	XjO7VdFYQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1levHz-006RZj-Gb; Fri, 07 May 2021 07:52:47 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1levHt-006RZK-N9
 for barebox@desiato.infradead.org; Fri, 07 May 2021 07:52:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Transfer-Encoding
 :Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=stLUPzWldHuUUAiHHweZSYI2loj1nkTsF2h6tiHrfIU=; b=tLdq0d56ZmBT2VCWv6pjZAZSKM
 hBXGdhkNr4TJ77Tv586jrZIqwwNLUB1yTPXV7GDW2ptqKRABm1/wP3G6fWpIHjaAErAjfTq0bSIwK
 wEH+TJvGvHB62ezvuwsnOEK7qTJIJ+cGUCViaT7PGscWsDMqnuI/QJOZETk0XdyovoYtjmhsdqK6l
 RAL5NTYdiL0nBLBBVNC3itG75Kq2DhMrcQo8zQko05eireqMQV9aEfX+mgOZuG8DikUlO8Mku3xKo
 6gUF84jrJN1uEhpZpxENw8k0Z2wjhtu0y/dNHyx7twxSlWxWx8xYX0f7Ej4O2bKrhyTAmXjnqEFvB
 RmVg6FAg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1levHr-006fVx-1w
 for barebox@lists.infradead.org; Fri, 07 May 2021 07:52:40 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1levHo-0006kO-LR; Fri, 07 May 2021 09:52:36 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1levHo-00013X-91; Fri, 07 May 2021 09:52:36 +0200
Date: Fri, 7 May 2021 09:52:36 +0200
From: "sha@pengutronix.de" <sha@pengutronix.de>
To: Stefan =?iso-8859-15?Q?Riedm=FCller?= <S.Riedmueller@phytec.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Message-ID: <20210507075236.GR19819@pengutronix.de>
References: <20210316123626.25872-1-s.riedmueller@phytec.de>
 <20210316123626.25872-2-s.riedmueller@phytec.de>
 <20210317094106.GZ23724@pengutronix.de>
 <8683628e4ef3f07ea2281e48478f71d81e00729a.camel@phytec.de>
 <20210322055902.GO23724@pengutronix.de>
 <51106fd1f5f44d3f4a38acb98eb1eb14f23c4cb8.camel@phytec.de>
 <d535d198a5eb6a8404020bbd7295e2c2ccf92182.camel@phytec.de>
 <20210414143605.GX19819@pengutronix.de>
 <ead66213f63266ca1d3ae36ef55766e7cdd0fc81.camel@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ead66213f63266ca1d3ae36ef55766e7cdd0fc81.camel@phytec.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:51:46 up 78 days, 11:15, 95 users,  load average: 0.43, 0.29, 0.20
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210507_005239_121960_3BC5CAE1 
X-CRM114-Status: GOOD (  16.04  )
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
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] mtd: nand_bbt: Skip bad blocks when searching for
 the BBT in NAND
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Apr 20, 2021 at 06:29:47AM +0000, Stefan Riedm=FCller wrote:
> Hi Sascha,
> =

> unfortunately this Patch has caused a regression on imx27 in Linux and wi=
ll be
> reverted for now. I would suggest to do the same here until a proper solu=
tion
> is found.

Did that.

> =

> http://lists.infradead.org/pipermail/linux-mtd/2021-April/086124.html
> =

> Sorry for the trouble!

Don't worry. This is what testing is good for, so let's be glad it was
caught.

Sascha

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

