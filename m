Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ve0-x231.google.com ([2607:f8b0:400c:c01::231])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VCX8Z-0003W9-HQ
 for barebox@lists.infradead.org; Thu, 22 Aug 2013 15:49:28 +0000
Received: by mail-ve0-f177.google.com with SMTP id cz11so1633892veb.8
 for <barebox@lists.infradead.org>; Thu, 22 Aug 2013 08:49:04 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20130822065552.GU31036@pengutronix.de>
References: <CAJyuEedsHb0h84AKDq_Mttxu_ZG1u+gG94BpzioHyO=JdHiD=A@mail.gmail.com>
 <20130822065552.GU31036@pengutronix.de>
Date: Thu, 22 Aug 2013 11:49:01 -0400
Message-ID: <CAJyuEefSbOYnGut0SeXbhB_KV=0mWETE=UNPyMX94fCAGjA10w@mail.gmail.com>
From: Michael Burkey <mdburkey@gmail.com>
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
Subject: Re: Porting BareBox to Variscite iMX6 SOM
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

I don't know why I said github -- the one at pengutronix is the one I
have been looking at. I think my brain must have been focused on lunch
when I was sending that!

The PhyFlex and i.MX6 NAND support being in the next release was sort
of what I thought based on the comments in the mailing list and the
differences in the code on the git vs the actual release.

Which brings me to my next question: what is the preferred way of
setting up a new platform at this point in time?

Specifically, things seem to be in a lot of flux with the i.MX systems.

So, right now, for new systems:
1) The initial hardware setup should be in devicetree format under
arch/arm/dts, correct?

2) Where should the DCD config go? I am looking at multiple i.MX6
platforms with it in 4 different spots -- lowlevel.c, flash_header.c,
an imxcfg file, as a .h file included from the imxcfg file, etc. (and
the dmo-mx6-realq7 has both a very basic .imxcfg file and then
manually configures everything else with writel's in lowlevel.c). If
I'm going to be porting stuff in, I'd like to put it in whichever
format you prefer it in.

Thanks!
Michael Burkey


On 8/22/13, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Wed, Aug 21, 2013 at 02:46:17PM -0400, Michael Burkey wrote:
>> Sascha,
>>
>> You can ignore part of my last post -- I found the
>> "imx6q-phytec-pbab01" on github (it looks like a lot of the things I
>> am needing and working on are right on the edge of development where
>> you are working as well).
>
> github? The original barebox repository is here:
>
> git.pengutronix.de/git/barebox.git
>
>>
>> I also noticed some posts in the mailing list that you made last month
>> regarding adding gpmi-nand support for iMX6 (or at least some wrappers
>> for it). Has the actual gpmi-nand support been completed and
>> integrated (or will the existing mxs-nand driver from the i.MX23/28
>> work as-is)?
>
> The Nand support for i.MX6 is currently in the master branch and will be
> part of the next (v2013.09.0) release. Same with the PhyFLEX i.MX6
> support. Sorry, I originally thought this was in the last release.
>
>>
>>
>> I've also been doing a lot of reading on devicetree and what it
>> entails to migrate in that direction (everything I had been doing
>> previously had been iMX35 based and started from the older Phytec
>> BSP's, so I hadn't really looked at how devicetree worked). I may have
>> some more questions on this going forward.
>
> No problem, don't hesitate to ask.
>
> Sascha
>
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
