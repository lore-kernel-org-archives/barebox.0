Delivery-date: Wed, 13 Oct 2021 13:36:20 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1macYW-0003QW-CG
	for lore@lore.pengutronix.de; Wed, 13 Oct 2021 13:36:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1macYV-0002gt-1q
	for lore@pengutronix.de; Wed, 13 Oct 2021 13:36:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nVLPb3YdLkFDdwPrH9V9PVE4braDhjYOtgpucPR6bJQ=; b=J0jn27cPQ3RoH/
	rYgVgGzNlGHczt5J0EK3EOW+/i5aWDF6l5ldtpGxw1h9COWnni0iQFX3caK9m4eBhDrZS+U5Rn4lJ
	H7wnEM2vM2fHXtLqn2FNSpblXIT90aomw6GIiIW030NPeLOVJU43xTPWI0hO9fKHD7DnUXbVla756
	LOBkQ2DIfBraJubURuTPR2TQB5Qxi2eU+Z6xl4vmxZkqfK+vUvaOZXtiPxdQsLGv832lfiRpgrfUA
	jZKyVd9dpGw474FxMLzciSEijF7HFM86w/dVVg02CZfV7lisMrSxUonlaWyLBNYfbLO8fj3tklhvh
	aIc4SFN5ZlAqKDk+5X3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1macWs-00GL1G-5A; Wed, 13 Oct 2021 11:34:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mabPz-00Fyma-7G
 for barebox@lists.infradead.org; Wed, 13 Oct 2021 10:23:28 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1mabPv-0000qn-8n; Wed, 13 Oct 2021 12:23:23 +0200
Received: from ore by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1mabPu-0007Op-MW; Wed, 13 Oct 2021 12:23:22 +0200
Date: Wed, 13 Oct 2021 12:23:22 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Trent Piepho <trent.piepho@igorinstitute.com>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20211013102322.GA17532@pengutronix.de>
References: <20211012100859.1409-1-o.rempel@pengutronix.de>
 <20211012100859.1409-2-o.rempel@pengutronix.de>
 <CAMHeXxOmv1TR0-4LQDz5A1Bfw+xrBBU+WsO43rn26hwTYrbVqw@mail.gmail.com>
 <20211013072858.GC14971@pengutronix.de>
 <CAMHeXxMTxSWb_evKksZVZkUxJoYF5DS0amDKaAOGhJ3f5pORAQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMHeXxMTxSWb_evKksZVZkUxJoYF5DS0amDKaAOGhJ3f5pORAQ@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:54:24 up 237 days, 13:18, 143 users,  load average: 0.11, 0.12,
 0.16
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211013_032327_310489_C7170DCF 
X-CRM114-Status: GOOD (  26.84  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1 2/2] net: phy: micrel: port clock select support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Oct 13, 2021 at 01:48:20AM -0700, Trent Piepho wrote:
> On Wed, Oct 13, 2021 at 12:29 AM Oleksij Rempel <o.rempel@pengutronix.de> wrote:
> > > Note that not just KSZ8081 has this bit.  Also KSZ8021, KSZ8031, and
> > > KSZ8051, which has the existing different method to handle it, as
> > > described earlier.
> >
> > ok, i'll sync all of this PHYs with the state of the kernel driver.
> > The board fixups should be removed by someone who can confirm it.
> 
> If you copy the entire kernel driver you will massively bloat this
> code with stuff that is totally unused.

Yes.

> > > > +static int kszphy_rmii_clk_sel(struct phy_device *phydev, bool val)
> > > > +{
> > > > +       int ctrl;
> > > > +
> > > > +       ctrl = phy_read(phydev, MII_KSZPHY_CTRL);
> > > > +       if (ctrl < 0)
> > > > +               return ctrl;
> > > > +
> > > > +       if (val)
> > > > +               ctrl |= KSZPHY_RMII_REF_CLK_SEL;
> > > > +       else
> > > > +               ctrl &= ~KSZPHY_RMII_REF_CLK_SEL;
> > > > +
> > > > +       return phy_write(phydev, MII_KSZPHY_CTRL, ctrl);
> > > > +}
> > >
> > > phy_set_bits(phydev, MII_KSZPHY_CTRL, KSZ8051_RMII_50MHZ_CLK);
> >
> > No, it should be synced with kernel not in the opposite way.
> 
> If you want the code to match, then improve the kernel code rather
> than make Barebox code worse.  phy_set_bits, phy_clear_bits and
> phy_modify exist.  One can not use them if a kernel driver has not
> been refactored to use them?

Sure. Can you please show example of the kszphy_rmii_clk_sel() refactoring.
And how much optimization will it introduce? Please compared with disassembled
part. 

Regards,
Oleksij
-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

