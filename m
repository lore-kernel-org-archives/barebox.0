Delivery-date: Wed, 13 Oct 2021 14:35:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1madTu-0005Cu-13
	for lore@lore.pengutronix.de; Wed, 13 Oct 2021 14:35:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1madTp-00014q-Pe
	for lore@pengutronix.de; Wed, 13 Oct 2021 14:35:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d24PLwzTBBs3FWdYSmMvZKmla//XXECJ9Z1G+nb7FYg=; b=tsHq4QuXj9oPhg
	2NLujhasywL8pmv3uIPFTxk0DVrefLfvPWcLy1h2FPPjmyB/tTAtmUn9Htlm3S4XZUdapR78361P3
	gGxOK9YD540kubqiXrUPVp+T9jqfpSQr78qw+HZlm28SIvDzzruWgyrwevHZFk3LheRe3jK5Y+O6s
	ddE91yXUmPSpacz2wqr6P1gd+vdwNRjWcqMYn6LxSrKNGhhkqO4EHZfhsyKxLC97xGFM/i4xKBNNq
	h3gKoV9p2Z6pNbEVRlxUlVmWscIGOfMO8Zl2plwUhVAesdu6YQFWnWjS6sCY5aPKEiX0QKb31uAto
	EIjdLSEgJ4yHV6aHE/xQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1madRw-00Ga6x-Ap; Wed, 13 Oct 2021 12:33:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mac1d-00GAHV-EB
 for barebox@lists.infradead.org; Wed, 13 Oct 2021 11:02:23 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1mac1c-0006hZ-4C; Wed, 13 Oct 2021 13:02:20 +0200
Received: from ore by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1mac1b-0002g0-R7; Wed, 13 Oct 2021 13:02:19 +0200
Date: Wed, 13 Oct 2021 13:02:19 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Trent Piepho <trent.piepho@igorinstitute.com>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20211013110219.GC17532@pengutronix.de>
References: <20211012100859.1409-1-o.rempel@pengutronix.de>
 <20211012100859.1409-2-o.rempel@pengutronix.de>
 <CAMHeXxOmv1TR0-4LQDz5A1Bfw+xrBBU+WsO43rn26hwTYrbVqw@mail.gmail.com>
 <20211013072858.GC14971@pengutronix.de>
 <CAMHeXxMTxSWb_evKksZVZkUxJoYF5DS0amDKaAOGhJ3f5pORAQ@mail.gmail.com>
 <20211013102322.GA17532@pengutronix.de>
 <CAMHeXxNB6kCyvb_NwueE9FN5V3n6L-Xf=NJa0DS0FO4GY6MiCA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMHeXxNB6kCyvb_NwueE9FN5V3n6L-Xf=NJa0DS0FO4GY6MiCA@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 12:49:11 up 237 days, 14:13, 143 users,  load average: 0.18, 0.12,
 0.10
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211013_040221_555408_7279AEE5 
X-CRM114-Status: GOOD (  36.35  )
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

On Wed, Oct 13, 2021 at 03:43:46AM -0700, Trent Piepho wrote:
> On Wed, Oct 13, 2021 at 3:23 AM Oleksij Rempel <o.rempel@pengutronix.de> wrote:
> >
> > On Wed, Oct 13, 2021 at 01:48:20AM -0700, Trent Piepho wrote:
> > > On Wed, Oct 13, 2021 at 12:29 AM Oleksij Rempel <o.rempel@pengutronix.de> wrote:
> > > > > Note that not just KSZ8081 has this bit.  Also KSZ8021, KSZ8031, and
> > > > > KSZ8051, which has the existing different method to handle it, as
> > > > > described earlier.
> > > >
> > > > ok, i'll sync all of this PHYs with the state of the kernel driver.
> > > > The board fixups should be removed by someone who can confirm it.
> > >
> > > If you copy the entire kernel driver you will massively bloat this
> > > code with stuff that is totally unused.
> >
> > Yes.
> 
> Can you get network support into a Barebox that fits in IMX8 OCRAM?
> Bloat matters. There are things barebox can not do anymore because it
> has grown too large.

Yes. barebox depends on devicetree and most of special PHY
configuration is already provided by devicetree. Your initial suggestion
was to duplicate information provide by DT and put it in to the board
file. Which is exactly opposite of what you wont.

At same time, fixups introduce more issue:
- they are applied on multiple PHYs detected on one board. For example
  boards with switches.
- they are applied on external HW. For example USB adapter with same
  PHY.

> > > > > > +static int kszphy_rmii_clk_sel(struct phy_device *phydev, bool val)
> > > > > > +{
> > > > > > +       int ctrl;
> > > > > > +
> > > > > > +       ctrl = phy_read(phydev, MII_KSZPHY_CTRL);
> > > > > > +       if (ctrl < 0)
> > > > > > +               return ctrl;
> > > > > > +
> > > > > > +       if (val)
> > > > > > +               ctrl |= KSZPHY_RMII_REF_CLK_SEL;
> > > > > > +       else
> > > > > > +               ctrl &= ~KSZPHY_RMII_REF_CLK_SEL;
> > > > > > +
> > > > > > +       return phy_write(phydev, MII_KSZPHY_CTRL, ctrl);
> > > > > > +}
> > > > >
> > > > > phy_set_bits(phydev, MII_KSZPHY_CTRL, KSZ8051_RMII_50MHZ_CLK);
> > > >
> > > > No, it should be synced with kernel not in the opposite way.
> > >
> > > If you want the code to match, then improve the kernel code rather
> > > than make Barebox code worse.  phy_set_bits, phy_clear_bits and
> > > phy_modify exist.  One can not use them if a kernel driver has not
> > > been refactored to use them?
> >
> > Sure. Can you please show example of the kszphy_rmii_clk_sel() refactoring.
> > And how much optimization will it introduce? Please compared with disassembled
> > part.
> 
> struct kszphy_priv *priv = phydev->priv;
> if (priv->set_rmii_clk_sel)
>     phy_set_bits(phydev, MII_KSZPHY_CTRL, KSZ8051_RMII_50MHZ_CLK);

Sorry, it is not correct. It should be:
if (priv->set_rmii_clk_sel)
	phy_set_bits(phydev, MII_KSZPHY_CTRL, KSZ8051_RMII_50MHZ_CLK);
else
	phy_clear_bits(phydev, MII_KSZPHY_CTRL, KSZ8051_RMII_50MHZ_CLK);

There are KSZ PHY variants with opposite meaning of the same bit. So, at
the end I see no advantage of changing it.

> But did you really need me to provide that example?

No, i wont to see what is so special for you about this driver.
There should be reason why thing which you blame, make no sense for me.

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

