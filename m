Delivery-date: Mon, 29 Sep 2025 10:45:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v39VH-002MND-2s
	for lore@lore.pengutronix.de;
	Mon, 29 Sep 2025 10:45:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v39VH-00034Z-B0
	for lore@pengutronix.de; Mon, 29 Sep 2025 10:45:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=K9nrBMygmSmAyt9tupo/1zWqEAQ4U43wWNdOf4wK2EQ=; b=BBfOlrgPBUgLVzyrvbjClmPkVT
	zp6gUlLysRQ5NSdlMcEPZsLteHfXUYI2g0Pz0djDeGr9z43UbtXGdZZ6o72NU5dcQiyO7eKltDnSa
	Y/jkJuWqYpsVwXCeaTP9oEommX6HUpY+lIkIW7F4RPp9lLQd/2bzN1SMAy1i+lVxHXNO6E0fTjkZJ
	Av6psyqExORSaXPGXO5W052GJIuIu01i/JqOex8vQysQubgnKEkLn1+9yM0ByxJsRcLNhQMH/Ik8C
	yGAEQRI0dMIbdItmY8us0xYFaumsppIqk/+KTGw9VNdxrWX1jiUG00qFqs8ACViJQbwrolqoVU56K
	17Hp1kdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v39Um-00000001ogU-1sPq;
	Mon, 29 Sep 2025 08:44:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v39Uk-00000001og2-0H9o
	for barebox@lists.infradead.org;
	Mon, 29 Sep 2025 08:44:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1v39Ui-0002sK-Ht; Mon, 29 Sep 2025 10:44:28 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1v39Uh-001301-17;
	Mon, 29 Sep 2025 10:44:27 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1v39Uh-002YNV-0k;
	Mon, 29 Sep 2025 10:44:27 +0200
Date: Mon, 29 Sep 2025 10:44:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <aNpG60G_MbXKdprD@pengutronix.de>
References: <20250926131514.673245-1-eagle.alexander923@gmail.com>
 <aNo_htA1L8khUehc@pengutronix.de>
 <CAP1tNvRnHbCoi=29u_6WbXbD_CZ1kc01deppba4WuWW5mrcMXg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAP1tNvRnHbCoi=29u_6WbXbD_CZ1kc01deppba4WuWW5mrcMXg@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250929_014430_106029_BBB90728 
X-CRM114-Status: GOOD (  21.87  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [RFC] clk: rockchip: Fix CPLL setup issue
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Sep 29, 2025 at 11:29:04AM +0300, Alexander Shiyan wrote:
> Hello.
> 
> > On Fri, Sep 26, 2025 at 04:15:14PM +0300, Alexander Shiyan wrote:
> > > This is a dirty patch to solve the RK3588 CPLL clock setup issue.
> > > It's taken from the Rockchip U-Boot repository [1].
> > > Any ideas on how to improve it?
> > >
> > > [1] https://github.com/rockchip-linux/u-boot/commit/bd11beba4f997b62809d24eba30a8713c8bbeb81
> ...
> > > +     /* Barebox addition */
> > > +     if (pll->reg_base - pll->ctx->reg_base == 0x1a0) {
> > > +             /* Determine CPLL clock and patch clk_bisrintf_pllsrc_en back */
> > > +             writel(HIWORD_UPDATE(0, BIT(1), 0),
> > > +                    pll->ctx->reg_base + 0x84c);
> > > +     }
> >
> > Resetting this bit is not in the U-Boot patch you reference. Do we need
> > this?
> 
> Yes.
> https://github.com/rockchip-linux/u-boot/commit/7560cacdd3a68bb475f23b4249a98025c89064d4

Ah, alright, they fixed it in a later commit. I only looked at the
commit you referenced. So please reference both in the commit message.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


