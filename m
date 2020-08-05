Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qk1-x72c.google.com ([2607:f8b0:4864:20::72c])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k3HLz-0008By-1f
 for barebox@lists.infradead.org; Wed, 05 Aug 2020 11:13:03 +0000
Received: by mail-qk1-x72c.google.com with SMTP id g26so41273527qka.3
 for <barebox@lists.infradead.org>; Wed, 05 Aug 2020 04:13:02 -0700 (PDT)
MIME-Version: 1.0
References: <CAKd8=GuMSvfaXiTvx4MSOnkLNvTuZg--deRufN6wDaPr8OxA1g@mail.gmail.com>
 <e29ef420-c914-72b4-5ef2-875d3f9844e7@pengutronix.de>
 <CAKd8=Gsyqhy-bzTdSQTfd8z6=JtkkhP1m00yoC=3uLRr4q1-xg@mail.gmail.com>
 <c726160f-1221-b26e-ccc1-0122f2ac7973@pengutronix.de>
 <CAKd8=GsMPPV+zmUFT1j+OnToOU4urCQ4kQR7yYsR-+CcOoNWDw@mail.gmail.com>
 <9dcd6282-745a-8509-cd30-867393188f2c@pengutronix.de>
 <CAKd8=GtMMXLRTE6qCzoDxxo-9qwFrQ6cyaW3SHE3ofisv0TRCQ@mail.gmail.com>
 <9097b4aa-05e4-2083-9a87-512b0f0cf2a2@pengutronix.de>
In-Reply-To: <9097b4aa-05e4-2083-9a87-512b0f0cf2a2@pengutronix.de>
From: Lars Pedersen <lapeddk@gmail.com>
Date: Wed, 5 Aug 2020 13:12:50 +0200
Message-ID: <CAKd8=GvaxTV8AHwBaiTb-JG5yneeUX9SoW2=5j+QS9m=CG5reQ@mail.gmail.com>
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
Subject: Re: Getting serial console output on new imx7d tqma7 board UART4
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi. I also got it working with a single board compilation now.

You are correct that it is the CONFIG_RELOCATABLE that is the issue.
If I select this it works.

/Lars Pedersen

On Wed, 5 Aug 2020 at 11:48, Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>
> On 8/5/20 11:37 AM, Lars Pedersen wrote:
> > Hi. I got both the EVK and our TQMa7d board working with using the
> > full imx_v7_defconfig! So that's progress :)
>
> Oh. Can you turn them off stepwise to see, which config option
> is missing? (If my suspicion below isn't true)
>
>
> > See my inline comments
>
> >> To make sure this does work as intended, I just built barebox with
> >> only barebox-freescale-mx7-sabresd.img selected and it works fine for me:
> >>
> >
> > What's the size of that image? I just retested and I can't get it
> > working when only the sabresd board is selected for compilation.
>
> 532K.
>
> >> Are you sure the board is strapped correctly to boot from SD?
> >
> > I got the board configuration as:
> >
> > SW3 = 10
> > SW2 = 00100000
>
> I skimmed through your config,
> -CONFIG_RELOCATABLE=y
> +# CONFIG_RELOCATABLE is not set
> CONFIG_TEXT_BASE=0x0
>
> Text base is ignored, when you are relocatable. If you aren't relocatable,
> you need a valid address as your text base. Why did you turn it off?

I didn't turn it off. It isn't selected by MACH_FREESCALE_MX7_SABRESD
so it gets turned off if only this board is used. It is selected by 6
other boards, which is the reason it works when compiling for all
boards.

 Symbol: RELOCATABLE [=y]
 Type  : bool
 Defined at common/Kconfig:336
   Prompt: generate relocatable barebox binary
   Depends on: PPC || ARM [=y]
   Location:
 (2) -> General Settings
 Selected by [y]:
   - MACH_CCMX51 [=y] && ARCH_IMX [=y] && IMX_MULTI_BOARDS [=y]
 Selected by [n]:
   - ARCH_BCM283X [=n] && <choice>
   - ARCH_TEGRA [=n] && <choice>
   - ARCH_ZYNQMP [=n] && <choice>
   - MACH_VEXPRESS [=n] && <choice>
   - ARCH_ZYNQ7000 [=n] && ARCH_ZYNQ [=n]


>
> Cheers,
> Ahmad
>
> --
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
