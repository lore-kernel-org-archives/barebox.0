Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1avtCH-0007Hn-4P
 for barebox@lists.infradead.org; Thu, 28 Apr 2016 21:10:05 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Thu, 28 Apr 2016 21:09:43 +0000
Message-ID: <1461877838.9103.173.camel@rtred1test09.kymeta.local>
References: <CABDcavZr1PCpFrHVJFFayRQZ6vninf-xFS0H9QKSdA8u53OkDg@mail.gmail.com>
 <CABDcavZZd4AofsfSYMVbEPfjpPyF9rbmv6BXAG_8mLiJhmeL+Q@mail.gmail.com>
 <20160419071110.GO9102@pengutronix.de>
 <CABDcavYf=ts161dQRB=diaEqNcyZjLq=ogYAja0y3BLp_QU+0w@mail.gmail.com>
 <20160421073206.GC21638@pengutronix.de>
 <CABDcavbqwXRM2y_uTup3m-pWBqSAjOthpZZBy-8MfM9yL3a-WA@mail.gmail.com>
 <20160427055908.GM7860@pengutronix.de>
 <CABDcavbGbWKK=Arp8pth09LeohgnLd3zE4penEHZT41a_X2NPg@mail.gmail.com>
In-Reply-To: <CABDcavbGbWKK=Arp8pth09LeohgnLd3zE4penEHZT41a_X2NPg@mail.gmail.com>
Content-Language: en-US
Content-ID: <908686DE9BBC7C48978CFF27679251AF@kymetacorp.com>
MIME-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Fwd: Micrel KSZ9031RN PHY problem
To: Guillermo Rodriguez Garcia <guille.rodriguez@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Philipp Zabel <pza@pengutronix.de>

On Thu, 2016-04-28 at 11:51 +0200, Guillermo Rodriguez Garcia wrote:
> >
> > The code you are referring to seems to be the first phy access after the
> > network device opens. Maybe the hardware is not yet ready for some
> > reason. Could you add the same delay in macb_open() right before the
> > call to phy_device_connect()?
> 
> Tried this, but doesn't help. Here's the call sequence, for example
> when you run 'dhcp' from the command line prompt:
> 
> macb_open
> phy_device_connect
> phy_device_attach
> phy_init_hw
> ksz9031_config_init
> ksz9031_center_flp_timing
> genphy_restart_aneg
> genphy_config_advert -> fails (adv = 0xffff)
> 
> I can verify that:
> - Any delay happening before the call to genphy_restart_aneg (which
> itself is called at the end of ksz9031_center_flp_timing) does not fix
> the problem.
> - Any delay happening after the phy_read(phydev, MII_ADVERTISE) insde
> genphy_config_advert does not fix the problem.
> - A delay of 1ms at any point after genphy_restart_aneg and before the
> phy_read call in genphy_config_advert fixes the problem

So the same problem appears if you take out the FLP call out entirely,
if there is an aneg restart done immediately before trying to read from
MII_ADVERTISE?

Does only MII_ADVERTISE fail to read, or does reading any PHY register
fail?  Specifically, does reading MII_BMSR fail?

Reading PHY register after restarting aneg isn't unusual.  Especially
polling MII_BMSR to check for BMSR_ANEGCOMPLETE.  It would be odd if one
couldn't do that.

The first anreg start call will also un-powerdown the PHY if BMCR_PDOWN
was set.  I wonder if that is happening?
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
