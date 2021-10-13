Delivery-date: Wed, 13 Oct 2021 13:46:08 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1maci0-0003iJ-Li
	for lore@lore.pengutronix.de; Wed, 13 Oct 2021 13:46:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1machz-0003g0-6y
	for lore@pengutronix.de; Wed, 13 Oct 2021 13:46:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=npEdKv3fvnWhNYDdlzaquB3FzT9hWKEyd/4t0/bGWQQ=; b=PRTpfiAVZh28+s
	V6pykulOtysl1WeqCSy4gvpQZbweBSidr7YJfpX7JQIl5A46lPvXhHr2i8H8SdHv8vV79nFOdUuw7
	dotEvN2sRaMFfY6FYXts8mpKg/ALDaBJ4GiMI9rvtL/azDpmaLXGmfJ/0qWMazq9s2X+H2IUnAw9b
	P991fvyQvOQFWWadYWMrzXZlKcYxRD43PtO9DfMqNJzfs9emigIZnnfGS5yD5O7B47hpTbijZq2Sb
	p0MugvtbeuhqnfjHgayuDwh4AjXxh1arkNdbBSxfuP5fwQM3A9TYoH5kgx8LQwZ/Y20ROHtiRxiT9
	CcHQsojT1OknrMyk2nVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1macgN-00GNoo-Qh; Wed, 13 Oct 2021 11:44:28 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mabjq-00G4bY-Ka
 for barebox@lists.infradead.org; Wed, 13 Oct 2021 10:44:00 +0000
Received: by mail-lf1-x129.google.com with SMTP id u18so9752367lfd.12
 for <barebox@lists.infradead.org>; Wed, 13 Oct 2021 03:43:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=igorinstitute-com.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vD2321hsDMk6748VhhIILrgmkBvV1/x1JeIaUd1BTzE=;
 b=e9d7w1FjkvpNJSiPENbO5+niyH3vRkdIhG3SVhl8jaN31uUwhQU7LKHb0AF+QegLz6
 8hSBEeC1X2J+Z4j47mwrokdCx7pX3a9qj3/eh5tBG8SfqGnFZOmwvV0j30MAJKLXrAmX
 RwrjfzNm+ZP2dpmjLBV4jgHM/utEOK3nDEcYRm0DWg25rcD7bNgxuQde/HR6t2p8DZRd
 PYjuNSwWL6H39lwcaXpoSol48gALSqFQbQ/wC4txO51xAiWT7k/sJBYQl9xA/qahDWWh
 DevX5n4frYLkFDWgWcGH4q1a18j5+SaX87a6Vv7k2zK2/m2+y4mM1P2er64jLhdE5IJJ
 6Xhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vD2321hsDMk6748VhhIILrgmkBvV1/x1JeIaUd1BTzE=;
 b=FS0edsPbxT9wpcgG8BHAr6E8QYlPKYX3bhe7hVd/SOfu54eTIEupN3uIX9C+lzsF7a
 DHqpzGsSMcVCmJ1EwOvHL1qxyuXq6pqdNDQqNFKmJPAMCb7C1TZF+ajBFcRuOF5gid5C
 Fs4BbAhdjgWerbOlxGQF7c0QyZkzdcFc/ggTskB5wXOqctc3zgfT1lCHqV9Ixc/OAchT
 tUrPoqdXEqXcBQyTmsqAWq4s2GX6+K+zqMMlvcpSYzUg8RnlOHteTyOAdBqHN6XGdyjx
 NKZ5qOo23md3ugTumCDOEXu6Dqv+qRnK2h+gth0L2kVgPwRYKfXw9kGLAb0i+IfWY86R
 qrPQ==
X-Gm-Message-State: AOAM5317dRw05vK9GExh4fLGfqWK1EhnGO4xC417DSAhFlheNNqBpsFx
 8KfLQbO6mCkihh1+KAJQEl6NWyjF6T6cDrNdSPP/NOab8nlSz+GX
X-Google-Smtp-Source: ABdhPJwaKVpgdXn4TDaVCXHyXtJKEU4zSXhX2xg2ORST7q2xg88y+oLLAwepgf7TKELGF/ACPz715kjQ5DMYTaspUmo=
X-Received: by 2002:a05:6512:2394:: with SMTP id
 c20mr2539059lfv.298.1634121836903; 
 Wed, 13 Oct 2021 03:43:56 -0700 (PDT)
MIME-Version: 1.0
References: <20211012100859.1409-1-o.rempel@pengutronix.de>
 <20211012100859.1409-2-o.rempel@pengutronix.de>
 <CAMHeXxOmv1TR0-4LQDz5A1Bfw+xrBBU+WsO43rn26hwTYrbVqw@mail.gmail.com>
 <20211013072858.GC14971@pengutronix.de>
 <CAMHeXxMTxSWb_evKksZVZkUxJoYF5DS0amDKaAOGhJ3f5pORAQ@mail.gmail.com>
 <20211013102322.GA17532@pengutronix.de>
In-Reply-To: <20211013102322.GA17532@pengutronix.de>
From: Trent Piepho <trent.piepho@igorinstitute.com>
Date: Wed, 13 Oct 2021 03:43:46 -0700
Message-ID: <CAMHeXxNB6kCyvb_NwueE9FN5V3n6L-Xf=NJa0DS0FO4GY6MiCA@mail.gmail.com>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211013_034358_726072_5CB34A66 
X-CRM114-Status: GOOD (  23.64  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1 2/2] net: phy: micrel: port clock select support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Oct 13, 2021 at 3:23 AM Oleksij Rempel <o.rempel@pengutronix.de> wrote:
>
> On Wed, Oct 13, 2021 at 01:48:20AM -0700, Trent Piepho wrote:
> > On Wed, Oct 13, 2021 at 12:29 AM Oleksij Rempel <o.rempel@pengutronix.de> wrote:
> > > > Note that not just KSZ8081 has this bit.  Also KSZ8021, KSZ8031, and
> > > > KSZ8051, which has the existing different method to handle it, as
> > > > described earlier.
> > >
> > > ok, i'll sync all of this PHYs with the state of the kernel driver.
> > > The board fixups should be removed by someone who can confirm it.
> >
> > If you copy the entire kernel driver you will massively bloat this
> > code with stuff that is totally unused.
>
> Yes.

Can you get network support into a Barebox that fits in IMX8 OCRAM?
Bloat matters. There are things barebox can not do anymore because it
has grown too large.

> > > > > +static int kszphy_rmii_clk_sel(struct phy_device *phydev, bool val)
> > > > > +{
> > > > > +       int ctrl;
> > > > > +
> > > > > +       ctrl = phy_read(phydev, MII_KSZPHY_CTRL);
> > > > > +       if (ctrl < 0)
> > > > > +               return ctrl;
> > > > > +
> > > > > +       if (val)
> > > > > +               ctrl |= KSZPHY_RMII_REF_CLK_SEL;
> > > > > +       else
> > > > > +               ctrl &= ~KSZPHY_RMII_REF_CLK_SEL;
> > > > > +
> > > > > +       return phy_write(phydev, MII_KSZPHY_CTRL, ctrl);
> > > > > +}
> > > >
> > > > phy_set_bits(phydev, MII_KSZPHY_CTRL, KSZ8051_RMII_50MHZ_CLK);
> > >
> > > No, it should be synced with kernel not in the opposite way.
> >
> > If you want the code to match, then improve the kernel code rather
> > than make Barebox code worse.  phy_set_bits, phy_clear_bits and
> > phy_modify exist.  One can not use them if a kernel driver has not
> > been refactored to use them?
>
> Sure. Can you please show example of the kszphy_rmii_clk_sel() refactoring.
> And how much optimization will it introduce? Please compared with disassembled
> part.

struct kszphy_priv *priv = phydev->priv;
if (priv->set_rmii_clk_sel)
    phy_set_bits(phydev, MII_KSZPHY_CTRL, KSZ8051_RMII_50MHZ_CLK);

But did you really need me to provide that example?

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

