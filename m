Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo5.mail-out.ovh.net ([178.33.107.29]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TYvnV-0000cN-Ue
 for barebox@lists.infradead.org; Thu, 15 Nov 2012 09:31:47 +0000
Received: from mail629.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 95B3EFFB51F
 for <barebox@lists.infradead.org>; Thu, 15 Nov 2012 10:39:23 +0100 (CET)
Date: Thu, 15 Nov 2012 10:29:41 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121115092941.GC31820@game.jcrosoft.org>
References: <1352926999-14981-1-git-send-email-plagnioj@jcrosoft.com>
 <20121115080150.GV10369@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121115080150.GV10369@pengutronix.de>
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
Subject: Re: [PATCH 1/1] phy: if the link partner just ack us wait the end
 of the autoneg
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 09:01 Thu 15 Nov     , Sascha Hauer wrote:
> On Wed, Nov 14, 2012 at 10:03:19PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  drivers/net/phy/phy.c |   12 ++++++++++++
> >  1 file changed, 12 insertions(+)
> > 
> > diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
> > index 43738c2..daa657f 100644
> > --- a/drivers/net/phy/phy.c
> > +++ b/drivers/net/phy/phy.c
> > @@ -578,6 +578,18 @@ int genphy_read_status(struct phy_device *phydev)
> >  		if (lpa < 0)
> >  			return lpa;
> >  
> > +		if (lpa & LPA_LPACK) {
> > +			int ret;
> > +
> > +			ret = phy_aneg_done(phydev);
> > +			if (ret)
> > +				return ret;
> > +
> > +			lpa = phy_read(phydev, MII_LPA);
> > +			if (lpa < 0)
> > +				return lpa;
> > +		}
> > +
> 
> Still does not work:
> 
> barebox@Freescale i.MX53 LOCO:/ while [ ${done} != 0 ]; do dhcp;
> done=$?; msleep 500; done
> genphy_read_status MII_LPA 0x0001
> dhcp failed: Network is down
> dhcp: Network is down
> dhcp failed: Network is down
> dhcp: Network is down
> dhcp failed: Network is down
> dhcp: Network is down
> dhcp failed: Network is down
> dhcp: Network is down
> dhcp failed: Network is down
> dhcp: Network is down
> dhcp failed: Network is down
> dhcp: Network is down
> dhcp failed: Network is down
> dhcp: Network is down
> dhcp failed: Network is down
> dhcp: Network is down
> dhcp failed: Network is down
> dhcp: Network is down
> dhcp failed: Network is down
> dhcp: Network is down
> genphy_read_status MII_LPA 0x45e1
> 100Mbps full duplex link detected
> DHCP client bound to address 192.168.24.118
this is a bug on LAN8720 which may cause this


Make sure the EDPWRDOWN bit is NOT set. Setting this bit on
LAN8710/LAN8720 PHY causes the PHY to misbehave, likely due
to a bug on the chip.

When the system is powered on with the network cable being
disconnected all the way until after ifconfig ethX up is
ssued for the LAN port with this PHY, connecting the cable
afterwards does not cause LINK change detection, while the
expected behavior is the Link UP being detected.

Best Regards,
J. 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
