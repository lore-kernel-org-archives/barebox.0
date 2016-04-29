Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1awD0O-00060I-MJ
 for barebox@lists.infradead.org; Fri, 29 Apr 2016 18:19:09 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Fri, 29 Apr 2016 18:18:44 +0000
Message-ID: <1461953980.9103.189.camel@rtred1test09.kymeta.local>
References: <CABDcavZr1PCpFrHVJFFayRQZ6vninf-xFS0H9QKSdA8u53OkDg@mail.gmail.com>
 <CABDcavZZd4AofsfSYMVbEPfjpPyF9rbmv6BXAG_8mLiJhmeL+Q@mail.gmail.com>
 <20160419071110.GO9102@pengutronix.de>
 <CABDcavYf=ts161dQRB=diaEqNcyZjLq=ogYAja0y3BLp_QU+0w@mail.gmail.com>
 <20160421073206.GC21638@pengutronix.de>
 <CABDcavbqwXRM2y_uTup3m-pWBqSAjOthpZZBy-8MfM9yL3a-WA@mail.gmail.com>
 <20160427055908.GM7860@pengutronix.de>
 <CABDcavbGbWKK=Arp8pth09LeohgnLd3zE4penEHZT41a_X2NPg@mail.gmail.com>
 <1461877838.9103.173.camel@rtred1test09.kymeta.local>
 <CABDcavYOujwe8iQt4m8VQQcajkBiEWpw+Vj=6ghqtp=q09oXGw@mail.gmail.com>
In-Reply-To: <CABDcavYOujwe8iQt4m8VQQcajkBiEWpw+Vj=6ghqtp=q09oXGw@mail.gmail.com>
Content-Language: en-US
Content-ID: <BE0703B40B5BD7428344682EE9A7D858@kymetacorp.com>
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

On Fri, 2016-04-29 at 13:00 +0200, Guillermo Rodriguez Garcia wrote:
> 2016-04-28 23:09 GMT+02:00 Trent Piepho <tpiepho@kymetacorp.com>:
> >
> > The first anreg start call will also un-powerdown the PHY if BMCR_PDOWN
> > was set.  I wonder if that is happening?
> 
> That was a very good hint and it looks like this is exactly what is happening.
> 
> genphy_restart_aneg() clears the BMCR_PDOWN bit and would get the phy
> out of powerdown mode. I have added a trace right at the beginning of
> genphy_restart_aneg and verified that BMCR_PDOWN bit was set before
> genphy_restart_aneg clears it.
> 
> Then, the datasheet for the ksz9031 [1], page 44, says:
> 
> After this bit is changed from '1' to '0', an internal global reset is
> automatically generated. Wait a minimum of 1ms before read/write
> access to the PHY registers.

Mystery solved!


> So this seems to be what is causing the problem. At least on the
> ksz9031 (don't know about others), a delay of 1ms is required when
> coming out of powerdown mode.

The kernel will take the phy in/out of powerdown mode as part of the PM
suspend/resume calls, which is supported on all micrel phys since 2013.
I don't see a delay in the kernel code and wonder why this hasn't been a
problem?  Might be worth asking on net-dev if this is a known issue with
some phys and how it is solved?  Maybe it's an undiscovered cause of
network flakiness after a resume.


> What is the best way to fix this? We can add a 1ms delay in
> genphy_restart_aneg (this is probably the easiest, and the delay is
> small enough that it shouldn't make a difference for other phys that
> might not need it). Or if this is not acceptable, perhaps add a custom
> restart_aneg function for the ksz9031.

Could add a custom init function that un-powerdowns the phy and does the
wait.

Or have restart_aneg check if the powerdown bit was set before it clears
it, and only delay in that case.

Having the un-powerdown in the restart_aneg isn't really the right place
for it.  If there is no reason the restart aneg, then the phy will not
be powered up.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
