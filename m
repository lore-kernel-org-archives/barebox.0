Delivery-date: Wed, 13 Oct 2021 10:56:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1maa3O-00076k-Hy
	for lore@lore.pengutronix.de; Wed, 13 Oct 2021 10:56:02 +0200
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1maa3M-0007h6-Qh
	for lore@pengutronix.de; Wed, 13 Oct 2021 10:56:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rdmTzA5PY/XeM5KuwNJ4tJEhNk29VuJ94RdfZUYvjvM=; b=aC4qtNT1hnVV8A
	xSKO5iBsz7gwldtPrrl2PZPFwCIR+Wc4A7trdNvWOAu+8e3Y/8H/0JJuwSq9fJI2wZBMwGqytFbv3
	1jIaBDD+bPCNghRsXkc5adZBNYVMdCRq49k6CkUq8Pu9OPv/Wh7Ba2nK8PmAhor27hRWXH856ABp1
	Slc2MlkLh/KV3X/9tHKPYTgmafWIA6SIifdcpjNM2ZijmIf2DDEn4363GP1ZiykobQl11dGrj+De6
	cVVeI2IQSWuv/y0tgZgEoRIyzGr/H97RtNx0GBm3i+LsBiiRgRZaGc2Bdpgc4+0IA7nZXhnOD7hui
	pmfV882VRLkF0GOtS7IA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1maa1J-00Ff5F-Nl; Wed, 13 Oct 2021 08:53:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1maYhB-00FMRi-8y
 for barebox@lists.infradead.org; Wed, 13 Oct 2021 07:29:03 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1maYh9-0004eD-AS; Wed, 13 Oct 2021 09:28:59 +0200
Received: from ore by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1maYh8-00044d-TB; Wed, 13 Oct 2021 09:28:58 +0200
Date: Wed, 13 Oct 2021 09:28:58 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Trent Piepho <trent.piepho@igorinstitute.com>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20211013072858.GC14971@pengutronix.de>
References: <20211012100859.1409-1-o.rempel@pengutronix.de>
 <20211012100859.1409-2-o.rempel@pengutronix.de>
 <CAMHeXxOmv1TR0-4LQDz5A1Bfw+xrBBU+WsO43rn26hwTYrbVqw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMHeXxOmv1TR0-4LQDz5A1Bfw+xrBBU+WsO43rn26hwTYrbVqw@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:18:42 up 237 days,  9:42, 119 users,  load average: 0.09, 0.10,
 0.14
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211013_002901_363431_E3F1C441 
X-CRM114-Status: GOOD (  38.68  )
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
X-Host-Lookup-Failed: Reverse DNS lookup failed for 2607:7c80:54:e::133 (failed)
X-Broken-Reverse-DNS: no host name for IP address 2607:7c80:54:e::133
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,PTX_BROKEN_RDNS,RCVD_IN_DNSWL_MED,RDNS_NONE,
	SPF_HELO_NONE,SPF_NONE autolearn=no autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1 2/2] net: phy: micrel: port clock select support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Trent,

thank you for your review.

On Tue, Oct 12, 2021 at 10:12:13AM -0700, Trent Piepho wrote:
> On Tue, Oct 12, 2021 at 3:10 AM Oleksij Rempel <o.rempel@pengutronix.de> wrote:
> >
> > Port devicetree based clock select support from kernel micrel driver (v5.15-rc1).
> > This support is needed to make netboot work on boards with PHY node and
> > "rmii-ref" property.
> 
> Existing boards use a phy fixup to handle this case, e.g. fsl,imx6ull-14x14-evk:
> 
> static int nxp_imx6ull_evk_init(void)
> {
>          phy_register_fixup_for_uid(PHY_ID_KSZ8081, MICREL_PHY_ID_MASK,
>                        ksz8081_phy_fixup);
> 
> static int ksz8081_phy_fixup(struct phy_device *dev)
> {
>        phy_write(dev, 0x1f, 0x8190);
>        phy_write(dev, 0x16, 0x202);
> 
> I thought about extending micrel driver like this when I added support
> for NXP imx6ul (single L, not double L as above) dev kit but decided
> it was a lot of code for what ends up being one register write for
> boards using a ksz8081 and the barebox phy fixup concept, which
> handles this in only a couple lines, was easier.

No, I would hardly not recommend to do it this way :)

> Also look at ks8051_config_init(), it checks phydev->dev_flags to set
> this same bit.  But AFAICT, dev_flags is not used in Barebox.

Good point. I'll remove it.
> 
> > +/* PHY Control 2 / PHY Control (if no PHY Control 1) */
> > +#define MII_KSZPHY_CTRL_2                      0x1f
> > +#define KSZPHY_RMII_REF_CLK_SEL                        BIT(7)
> 
> These are already in this file as MII_KSZPHY_CTRL and KSZ8051_RMII_50MHZ_CLK.
> 
> > +struct kszphy_type {
> > +       bool has_rmii_ref_clk_sel;
> > +};
> > +
> > +struct kszphy_priv {
> > +       const struct kszphy_type *type;
> 
> type does not appear to be used from the state struct.
> 
> > +       bool rmii_ref_clk_sel;
> > +       bool rmii_ref_clk_sel_val;
> 
> All you need is a single flag to indicate the KSZ8051_RMII_50MHZ_CLK
> bit should be set after a reset.  Otherwise it can be left unset,
> which is the default value.
> 
> > +static const struct kszphy_type ksz8081_type = {
> > +       .has_rmii_ref_clk_sel   = true,
> > +};
> 
> Note that not just KSZ8081 has this bit.  Also KSZ8021, KSZ8031, and
> KSZ8051, which has the existing different method to handle it, as
> described earlier.

ok, i'll sync all of this PHYs with the state of the kernel driver.
The board fixups should be removed by someone who can confirm it.

> > +static int kszphy_rmii_clk_sel(struct phy_device *phydev, bool val)
> > +{
> > +       int ctrl;
> > +
> > +       ctrl = phy_read(phydev, MII_KSZPHY_CTRL);
> > +       if (ctrl < 0)
> > +               return ctrl;
> > +
> > +       if (val)
> > +               ctrl |= KSZPHY_RMII_REF_CLK_SEL;
> > +       else
> > +               ctrl &= ~KSZPHY_RMII_REF_CLK_SEL;
> > +
> > +       return phy_write(phydev, MII_KSZPHY_CTRL, ctrl);
> > +}
> 
> phy_set_bits(phydev, MII_KSZPHY_CTRL, KSZ8051_RMII_50MHZ_CLK);

No, it should be synced with kernel not in the opposite way.

> > +
> > +       /* Support legacy board-file configuration */
> > +       if (phydev->dev_flags & MICREL_PHY_50MHZ_CLK) {
> > +               priv->rmii_ref_clk_sel = true;
> > +               priv->rmii_ref_clk_sel_val = true;
> > +       }
> 
> Can't code in ksz8051_config_init be removed then?

good point, i'll remove it.

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

