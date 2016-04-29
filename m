Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yw0-x236.google.com ([2607:f8b0:4002:c05::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aw6Ac-0001Yi-Hd
 for barebox@lists.infradead.org; Fri, 29 Apr 2016 11:01:16 +0000
Received: by mail-yw0-x236.google.com with SMTP id g133so156958147ywb.2
 for <barebox@lists.infradead.org>; Fri, 29 Apr 2016 04:00:53 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1461877838.9103.173.camel@rtred1test09.kymeta.local>
References: <CABDcavZr1PCpFrHVJFFayRQZ6vninf-xFS0H9QKSdA8u53OkDg@mail.gmail.com>
 <CABDcavZZd4AofsfSYMVbEPfjpPyF9rbmv6BXAG_8mLiJhmeL+Q@mail.gmail.com>
 <20160419071110.GO9102@pengutronix.de>
 <CABDcavYf=ts161dQRB=diaEqNcyZjLq=ogYAja0y3BLp_QU+0w@mail.gmail.com>
 <20160421073206.GC21638@pengutronix.de>
 <CABDcavbqwXRM2y_uTup3m-pWBqSAjOthpZZBy-8MfM9yL3a-WA@mail.gmail.com>
 <20160427055908.GM7860@pengutronix.de>
 <CABDcavbGbWKK=Arp8pth09LeohgnLd3zE4penEHZT41a_X2NPg@mail.gmail.com>
 <1461877838.9103.173.camel@rtred1test09.kymeta.local>
Date: Fri, 29 Apr 2016 13:00:52 +0200
Message-ID: <CABDcavYOujwe8iQt4m8VQQcajkBiEWpw+Vj=6ghqtp=q09oXGw@mail.gmail.com>
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

2016-04-28 23:09 GMT+02:00 Trent Piepho <tpiepho@kymetacorp.com>:
> On Thu, 2016-04-28 at 11:51 +0200, Guillermo Rodriguez Garcia wrote:
>> >
>> > The code you are referring to seems to be the first phy access after the
>> > network device opens. Maybe the hardware is not yet ready for some
>> > reason. Could you add the same delay in macb_open() right before the
>> > call to phy_device_connect()?
>>
>> Tried this, but doesn't help. Here's the call sequence, for example
>> when you run 'dhcp' from the command line prompt:
>>
>> macb_open
>> phy_device_connect
>> phy_device_attach
>> phy_init_hw
>> ksz9031_config_init
>> ksz9031_center_flp_timing
>> genphy_restart_aneg
>> genphy_config_advert -> fails (adv = 0xffff)
>>
>> I can verify that:
>> - Any delay happening before the call to genphy_restart_aneg (which
>> itself is called at the end of ksz9031_center_flp_timing) does not fix
>> the problem.
>> - Any delay happening after the phy_read(phydev, MII_ADVERTISE) insde
>> genphy_config_advert does not fix the problem.
>> - A delay of 1ms at any point after genphy_restart_aneg and before the
>> phy_read call in genphy_config_advert fixes the problem
>
> So the same problem appears if you take out the FLP call out entirely,
> if there is an aneg restart done immediately before trying to read from
> MII_ADVERTISE?

Yes, this is correct. Even if I comment out the FLP timing writes, the
fact that ksz9031_center_flp_timing calls genphy_restart_aneg is
enough to trigger the problem.

static int ksz9031_center_flp_timing(struct phy_device *phydev)
{
 /* Center KSZ9031RNX FLP timing at 16ms. */
// phy_write_mmd_indirect(phydev, MII_KSZ9031RN_FLP_BURST_TX_HI, 0, 0x0006);
// phy_write_mmd_indirect(phydev, MII_KSZ9031RN_FLP_BURST_TX_LO, 0, 0x1a80);

 return genphy_restart_aneg(phydev);
}

>
> Does only MII_ADVERTISE fail to read, or does reading any PHY register
> fail?  Specifically, does reading MII_BMSR fail?

Looks like it will happen with any register. If I try to read MII_BMSR
right before MII_ADVERTISE, then MII_BMSR reads as 0xffff.

(In this case, the negotiation will actually complete, since this
additional MII_BMSR read seems to be enough to cause the next
MII_ADVERTISE read to succeed).


>
> Reading PHY register after restarting aneg isn't unusual.  Especially
> polling MII_BMSR to check for BMSR_ANEGCOMPLETE.  It would be odd if one
> couldn't do that.
>
> The first anreg start call will also un-powerdown the PHY if BMCR_PDOWN
> was set.  I wonder if that is happening?

That was a very good hint and it looks like this is exactly what is happening.

genphy_restart_aneg() clears the BMCR_PDOWN bit and would get the phy
out of powerdown mode. I have added a trace right at the beginning of
genphy_restart_aneg and verified that BMCR_PDOWN bit was set before
genphy_restart_aneg clears it.

Then, the datasheet for the ksz9031 [1], page 44, says:

After this bit is changed from '1' to '0', an internal global reset is
automatically generated. Wait a minimum of 1ms before read/write
access to the PHY registers.

 [1]: http://ww1.microchip.com/downloads/en/DeviceDoc/KSZ9031RNX.pdf

So this seems to be what is causing the problem. At least on the
ksz9031 (don't know about others), a delay of 1ms is required when
coming out of powerdown mode.

What is the best way to fix this? We can add a 1ms delay in
genphy_restart_aneg (this is probably the easiest, and the delay is
small enough that it shouldn't make a difference for other phys that
might not need it). Or if this is not acceptable, perhaps add a custom
restart_aneg function for the ksz9031.

Best,

Guillermo Rodriguez Garcia
guille.rodriguez@gmail.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
