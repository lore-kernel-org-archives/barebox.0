Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 17.mo4.mail-out.ovh.net ([46.105.41.16]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U4rgU-0004tm-KA
 for barebox@lists.infradead.org; Mon, 11 Feb 2013 11:36:31 +0000
Received: from mail428.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id E32F6104F327
 for <barebox@lists.infradead.org>; Mon, 11 Feb 2013 12:46:48 +0100 (CET)
Date: Mon, 11 Feb 2013 12:35:19 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130211113519.GW19322@game.jcrosoft.org>
References: <20130208092544.GQ19322@game.jcrosoft.org>
 <1360315724-24736-1-git-send-email-plagnioj@jcrosoft.com>
 <20130211083040.GK1906@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130211083040.GK1906@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [For master PATCH 1/1] sama5de3k: add gmacb support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Nicolas Ferre <nicolas.ferre@atmel.com>

On 09:30 Mon 11 Feb     , Sascha Hauer wrote:
> On Fri, Feb 08, 2013 at 10:28:44AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > Cc: Nicolas Ferre <nicolas.ferre@atmel.com>
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  arch/arm/boards/sama5d3xek/init.c |   31 +++++++++++++++++++++++++++++++
> >  1 file changed, 31 insertions(+)
> > 
> 
> Applied, thanks.
> 
> > +static int ksz9021rn_phy_fixup(struct phy_device *phy)
> > +{
> > +	int value;
> > +
> > +#define GMII_RCCPSR	260
> > +#define GMII_RRDPSR	261
> > +#define GMII_ERCR	11
> > +#define GMII_ERDWR	12
> > +
> > +	/* Set delay values */
> > +	value = GMII_RCCPSR | 0x8000;
> > +	phy_write(phy, GMII_ERCR, value);
> > +	value = 0xF2F4;
> > +	phy_write(phy, GMII_ERDWR, value);
> > +	value = GMII_RRDPSR | 0x8000;
> > +	phy_write(phy, GMII_ERCR, value);
> > +	value = 0x2222;
> > +	phy_write(phy, GMII_ERDWR, value);
> > +
> > +	return 0;
> 
> This delay line setup really needs some generic code. We have this on
> i.MX6 aswell. Currently this means that each board needs to know the
> phy it has, not a really good situation.
the pb that it's hardware specific (PCB layout) so I do not see how we can fix
this

Best Regards,
J.
> 
> Sascha
> 
> > +}
> > +
> >  static void ek_add_device_eth(void)
> >  {
> >  	if (w1_local_mac_address_register(0, "tml", "w1-2d-0"))
> > @@ -147,6 +174,10 @@ static void ek_add_device_eth(void)
> >  	if (ek_register_mac_address_23(1))
> >  		ek_register_mac_address_43(1);
> >  
> > +	phy_register_fixup_for_uid(PHY_ID_KSZ9021, MICREL_PHY_ID_MASK,
> > +					   ksz9021rn_phy_fixup);
> > +
> > +	at91_add_device_eth(0, &gmac_pdata);
> >  	at91_add_device_eth(1, &macb_pdata);
> >  }
> >  #else
> > -- 
> > 1.7.10.4
> > 
> > 
> > _______________________________________________
> > barebox mailing list
> > barebox@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/barebox
> > 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
