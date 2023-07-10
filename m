Delivery-date: Mon, 10 Jul 2023 12:38:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qIoHm-005cSu-OD
	for lore@lore.pengutronix.de; Mon, 10 Jul 2023 12:38:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qIoHk-00060a-Cf
	for lore@pengutronix.de; Mon, 10 Jul 2023 12:38:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tSkt/bUulMbOJqn7mrJ/SD+s7goEFaH/39Z1UVgEhUs=; b=wl2V/VlT50drjCQObG8tpkFeW1
	QoN3bJ0l8bvmkcMgHw5GuDqqBHGKnWBxiXIXOCP/miqvIH/WDzsQwbbBKBvvU+DvIakfFTecr9z8i
	QzWrBHgzvKm8M/e4AonfLzRUb4Vf407CZeDfIYNYGEikKuxuXkZlov0BW9xZ2QO1vOS68d0qB/ao8
	BTvQzIkBIrgbtf1v9p3ycOHfH3Kqd0gysy2x73i4IzBZSO10D59KGoiyWurN9GWfUgjBZ9E+W6H4n
	kIAMe7fY0YJHm97pbP640edcd6UyDLWQmp5PwkHd6Zai/GqQwpITKqXDC/tYiuCfYLlXGMAUAgN+G
	jhqkrRdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qIoGa-00BHSg-2D;
	Mon, 10 Jul 2023 10:37:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qIoGX-00BHNa-1B
	for barebox@lists.infradead.org;
	Mon, 10 Jul 2023 10:37:14 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qIoGR-0005iX-Oa; Mon, 10 Jul 2023 12:37:07 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qIoGR-0006pK-Cd; Mon, 10 Jul 2023 12:37:07 +0200
Date: Mon, 10 Jul 2023 12:37:07 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230710103707.wid4ci5ux44gamyw@pengutronix.de>
References: <20230710063653.660040-1-m.felsch@pengutronix.de>
 <20230710063653.660040-2-m.felsch@pengutronix.de>
 <8c07789d-6bd5-290c-952d-befd3fb8e232@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8c07789d-6bd5-290c-952d-befd3fb8e232@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230710_033713_401708_9A6E522A 
X-CRM114-Status: GOOD (  18.27  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/7] net: phy: micrel: make use of MDIO_MMD register
 defines
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 23-07-10, Ahmad Fatoum wrote:
> On 10.07.23 08:36, Marco Felsch wrote:
> > Make use of the register definition instead of having magic numbers. No
> > functional change.
> > 
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> 
> FYI, the code is taken from Linux (with arguments swapped).

Patch opportunities ^^ thanks for pointing that out.

Regards,
  Marco

> Change is ok though:
> 
> Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> 
> > ---
> >  drivers/net/phy/micrel.c | 12 ++++++++----
> >  1 file changed, 8 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/net/phy/micrel.c b/drivers/net/phy/micrel.c
> > index ef1f919ae7..02d474c442 100644
> > --- a/drivers/net/phy/micrel.c
> > +++ b/drivers/net/phy/micrel.c
> > @@ -447,23 +447,27 @@ static int ksz9031_config_rgmii_delay(struct phy_device *phydev)
> >  		return 0;
> >  	}
> >  
> > -	phy_write_mmd_indirect(phydev, MII_KSZ9031RN_CONTROL_PAD_SKEW, 2,
> > +	phy_write_mmd_indirect(phydev, MII_KSZ9031RN_CONTROL_PAD_SKEW,
> > +			       MDIO_MMD_WIS,
> >  			       FIELD_PREP(MII_KSZ9031RN_RX_CTL_M, rx) |
> >  			       FIELD_PREP(MII_KSZ9031RN_TX_CTL_M, tx));
> >  
> > -	phy_write_mmd_indirect(phydev, MII_KSZ9031RN_RX_DATA_PAD_SKEW, 2,
> > +	phy_write_mmd_indirect(phydev, MII_KSZ9031RN_RX_DATA_PAD_SKEW,
> > +			       MDIO_MMD_WIS,
> >  			       FIELD_PREP(MII_KSZ9031RN_RXD3, rx) |
> >  			       FIELD_PREP(MII_KSZ9031RN_RXD2, rx) |
> >  			       FIELD_PREP(MII_KSZ9031RN_RXD1, rx) |
> >  			       FIELD_PREP(MII_KSZ9031RN_RXD0, rx));
> >  
> > -	phy_write_mmd_indirect(phydev, MII_KSZ9031RN_TX_DATA_PAD_SKEW, 2,
> > +	phy_write_mmd_indirect(phydev, MII_KSZ9031RN_TX_DATA_PAD_SKEW,
> > +			       MDIO_MMD_WIS,
> >  			       FIELD_PREP(MII_KSZ9031RN_TXD3, tx) |
> >  			       FIELD_PREP(MII_KSZ9031RN_TXD2, tx) |
> >  			       FIELD_PREP(MII_KSZ9031RN_TXD1, tx) |
> >  			       FIELD_PREP(MII_KSZ9031RN_TXD0, tx));
> >  
> > -	phy_write_mmd_indirect(phydev, MII_KSZ9031RN_CLK_PAD_SKEW, 2,
> > +	phy_write_mmd_indirect(phydev, MII_KSZ9031RN_CLK_PAD_SKEW,
> > +			       MDIO_MMD_WIS,
> >  			       FIELD_PREP(MII_KSZ9031RN_GTX_CLK, tx_clk) |
> >  			       FIELD_PREP(MII_KSZ9031RN_RX_CLK, rx_clk));
> >  	return 0;
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> 


