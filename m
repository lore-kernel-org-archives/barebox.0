Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vk0-x236.google.com ([2607:f8b0:400c:c05::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1axbUu-0005PM-IJ
 for barebox@lists.infradead.org; Tue, 03 May 2016 14:40:25 +0000
Received: by mail-vk0-x236.google.com with SMTP id b189so25878772vkh.2
 for <barebox@lists.infradead.org>; Tue, 03 May 2016 07:40:03 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1461953980.9103.189.camel@rtred1test09.kymeta.local>
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
 <1461953980.9103.189.camel@rtred1test09.kymeta.local>
Date: Tue, 3 May 2016 16:40:02 +0200
Message-ID: <CABDcavZtXpMEJdwJoZiL+1Yd+D+cBOONsPBKHsW=-XZXSwNUdg@mail.gmail.com>
From: Guillermo Rodriguez Garcia <guille.rodriguez@gmail.com>
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
To: Trent Piepho <tpiepho@kymetacorp.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Philipp Zabel <pza@pengutronix.de>

Hello,

2016-04-29 20:18 GMT+02:00 Trent Piepho <tpiepho@kymetacorp.com>:
> On Fri, 2016-04-29 at 13:00 +0200, Guillermo Rodriguez Garcia wrote:
>> 2016-04-28 23:09 GMT+02:00 Trent Piepho <tpiepho@kymetacorp.com>:
>> >
>> > The first anreg start call will also un-powerdown the PHY if BMCR_PDOWN
>> > was set.  I wonder if that is happening?
>>
>> That was a very good hint and it looks like this is exactly what is happening.
>>
>> genphy_restart_aneg() clears the BMCR_PDOWN bit and would get the phy
>> out of powerdown mode. I have added a trace right at the beginning of
>> genphy_restart_aneg and verified that BMCR_PDOWN bit was set before
>> genphy_restart_aneg clears it.
>>
>> Then, the datasheet for the ksz9031 [1], page 44, says:
>>
>> After this bit is changed from '1' to '0', an internal global reset is
>> automatically generated. Wait a minimum of 1ms before read/write
>> access to the PHY registers.
>
> Mystery solved!

Indeed. Although it's strange that the problem can only be reproduced
with certain routers. I can reproduce it everytime when the board is
connected with a ComTrend VG-8050, but not with other routers..

>
>> So this seems to be what is causing the problem. At least on the
>> ksz9031 (don't know about others), a delay of 1ms is required when
>> coming out of powerdown mode.
>
> The kernel will take the phy in/out of powerdown mode as part of the PM
> suspend/resume calls, which is supported on all micrel phys since 2013.
> I don't see a delay in the kernel code and wonder why this hasn't been a
> problem?

Perhaps this is due to the fact that it does not happen with every router.

>  Might be worth asking on net-dev if this is a known issue with
> some phys and how it is solved?  Maybe it's an undiscovered cause of
> network flakiness after a resume.

Would you be willing to help here? (i.e. report/ask about this on net-dev)

>
>> What is the best way to fix this? We can add a 1ms delay in
>> genphy_restart_aneg (this is probably the easiest, and the delay is
>> small enough that it shouldn't make a difference for other phys that
>> might not need it). Or if this is not acceptable, perhaps add a custom
>> restart_aneg function for the ksz9031.
>
> Could add a custom init function that un-powerdowns the phy and does the
> wait.
>
> Or have restart_aneg check if the powerdown bit was set before it clears
> it, and only delay in that case.

This would be easy, would solve the problem at hand, and would only
introduce a (perhaps unnecessary) 1ms delay for phys that don't need
this.

>
> Having the un-powerdown in the restart_aneg isn't really the right place
> for it.  If there is no reason the restart aneg, then the phy will not
> be powered up.

Yes but I would say that that's a different issue. I must say I don't feel
confident enough to move this code to somewhere else myself. Perhaps
Sascha (as the original author of this change [1]) could comment.

I would suggest so separate these two issues: 1) Adding the missing
1ms delay as described in the Micrel datasheet, 2) Consider whether
the code should be refactored / reorganized.

Does this make sense?

 [1] http://git.pengutronix.de/?p=barebox.git;a=commit;h=ac48b10467ffb1c45e67e5efe36413ede140a498


-- 
Guillermo Rodriguez Garcia
guille.rodriguez@gmail.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
