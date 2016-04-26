Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vk0-x22a.google.com ([2607:f8b0:400c:c05::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1av0tI-00005k-Ow
 for barebox@lists.infradead.org; Tue, 26 Apr 2016 11:10:53 +0000
Received: by mail-vk0-x22a.google.com with SMTP id n67so12195214vkf.3
 for <barebox@lists.infradead.org>; Tue, 26 Apr 2016 04:10:32 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CABDcavbqwXRM2y_uTup3m-pWBqSAjOthpZZBy-8MfM9yL3a-WA@mail.gmail.com>
References: <CABDcavZr1PCpFrHVJFFayRQZ6vninf-xFS0H9QKSdA8u53OkDg@mail.gmail.com>
 <CABDcavZZd4AofsfSYMVbEPfjpPyF9rbmv6BXAG_8mLiJhmeL+Q@mail.gmail.com>
 <20160419071110.GO9102@pengutronix.de>
 <CABDcavYf=ts161dQRB=diaEqNcyZjLq=ogYAja0y3BLp_QU+0w@mail.gmail.com>
 <20160421073206.GC21638@pengutronix.de>
 <CABDcavbqwXRM2y_uTup3m-pWBqSAjOthpZZBy-8MfM9yL3a-WA@mail.gmail.com>
Date: Tue, 26 Apr 2016 13:10:31 +0200
Message-ID: <CABDcavaATf9MwGx6gRopFtXSY+mi8QA5C5Pk14jiaE+u1D_7oQ@mail.gmail.com>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Philipp Zabel <pza@pengutronix.de>

2016-04-26 11:55 GMT+02:00 Guillermo Rodriguez Garcia
<guille.rodriguez@gmail.com>:
> Hello,
>
> 2016-04-21 9:32 GMT+02:00 Sascha Hauer <s.hauer@pengutronix.de>:
>> On Wed, Apr 20, 2016 at 05:58:40PM +0200, Guillermo Rodriguez Garcia wrote:
>>> Hello,
>>>
>>> 2016-04-19 9:11 GMT+02:00 Sascha Hauer <s.hauer@pengutronix.de>:
>>> > Hi Guillermo,
>>> >
>>> > +Cc Philipp Zabel who ported the patch to barebox
>>> >
>>> > On Mon, Apr 18, 2016 at 04:49:47PM +0200, Guillermo Rodriguez Garcia wrote:
>>> >> Hello all,
>>> >>
>>> >> I am playing with barebox on an Atmel SAMA5D3 Xplained board. It is
>>> >> now working fine for the most part, however after updating to the
>>> >> latest sources from git I found a problem that I had not seen before.
>>> >>
>>> >> This board has two Ethernet interfaces; eth0 uses a Micrel KSZ9031RN
>>> >> PHY, and eth1 uses a Micrel KSZ8081RNB PHY.
>>> >>
>>> >> It seems that after release 2016.03.0, eth0 does not work anymore with
>>> >> some routers. Specifically I found this problem with a Comtrend
>>> >> VG-8050. I have tested other routers and the problem was not present
>>> >> there.
>>> >>
>>> >> After some research it seems that the problem is caused by this
>>> >> commit: http://git.pengutronix.de/?p=barebox.git;a=commit;h=da89ee8f2e04e116410632a185024f58b8262d87
>>> >>
>>> >> Before this commit eth0 was working fine. After this commit, the link
>>> >> cannot established anymore:
>>> >>
>>> >> [...]
>>> >> barebox:/# ping 192.168.0.128
>>> >> ping failed: Network is down
>>> >>
>>> >> Before diving further into this I thought it could be a good idea to
>>> >> ask, in case someone can shed some light here.
>>> >
>>> > I have no idea what the issue is here. We might have to make this option
>>> > configurable via devicetree to give boards different options. Since the
>>> > patch comes from the Linux Kernel, do you have the same problems under
>>> > Linux?
>>>
>>> I'm trying to get the latest kernel to boot. The latest version
>>> supported by Atmel is 4.1, which doesn't have the patch yet. Will
>>> report back asap.
>>
>> Thanks. We can revert this patch since Philipp only ported it to stay in
>> sync with the kernel. Anyway, if it makes problems we'll probably need a
>> solution for the kernel aswell.
>
> More info on this after researching the issue.
>
> Looks like problem is not directly caused by the modified FLP timings,
> but is revealed by that change.
>
> Immediately after setting the FLP timings, the autonegotiation is
> restarted by calling genphy_restart_aneg(phydev).
> Within genphy_restart_aneg, the following line:

This line is actually in genphy_config_advert, sorry for the noise.

Guillermo

>
>     oldadv = adv = phy_read(phydev, MII_ADVERTISE);
>
> returns 0xffff, and negotiation fails.
>
> It seems to be a timing problem. Any minimal delay _before_ that
> phy_read (1ms) is enough to make it work -- phy_read returns 481
> instead of 0xffff, and the negotiation completes. The same delay right
> after phy_read does not solve the problem.
>
> This happens even if I modify ksz9031_center_flp_timing() so that it
> does NOT touch the FLP timings. So as I said it is not directly
> related to the actual FLP timing values, but rather to some timing
> issue related to the negotiation itself. It just happens that the
> center_flp_timing function does restart the autonegotiation, and thus
> reveals the problem.
>
> Is it OK to add this 1ms delay in genphy_restart_aneg?
>
> Best,
>
> Guillermo Rodriguez Garcia
> guille.rodriguez@gmail.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
