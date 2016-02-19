Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.mars-solutions.de ([213.239.212.107])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aWqjT-0002hA-I3
 for barebox@lists.infradead.org; Fri, 19 Feb 2016 19:28:53 +0000
Message-ID: <1455910105.5604.104.camel@ws-apr.office.loc>
From: Andreas Pretzsch <apr@cn-eng.de>
Date: Fri, 19 Feb 2016 20:28:25 +0100
Mime-Version: 1.0
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
Subject: phytec-som-imx6: DCD setup: PLL reduction and video core settings
To: barebox@lists.infradead.org

While looking into a maybe boarderline RAM setup on one specific piece
of hardware, I took a closer look at the i.MX6 DDR setup of the Phytec
i.MX6 modules in barebox.
And came across two things that look ... somewhat questionable, maybe
worth a look.

In the very first setup (the DCD) in
    arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02.h
there is a block
    wm 32 0x020e0010 0xf00000ff
    wm 32 0x020e0018 0x007F007F
    wm 32 0x020e001c 0x007F007F
    wm 32 0x020c8000 0x80002021
at the end.


The first three (comments about complete register meanings added by me)
    // IOMUX_GPR4 : VDOA, PCIe, VPU, IPU cache setup ; stop acknowledge
    wm 32 0x020e0010 0xf00000ff
    // IOMUX_GPR6 : IPU1 QoS setup
    wm 32 0x020e0018 0x007F007F
    // IOMUX_GPR7 : IPU2 QoS setup
    wm 32 0x020e001c 0x007F007F
do setup some cache attributes of VDOA, IPU, VPU (some of the video
cores) and IPU QoS. Beside accessing two reserved bits in GPR4, they
maybe do not harm, and can be found also in various other board files.
Might be some case of copy-from-copy, no idea.
Not sure if these really should be part of lowest-level memory setup...
Maybe - if at all - in some board-specific setup, given barebox drives a
display.
Also, a quick google search shows the possible origin, and that it has
been removed in some U-Boot branch, leaving it to the Linux kernel:
https://github.com/linksprite/u-boot-acadia1.0-beta/blob/master/u-boot-acadia1.0-beta/patches/0546-ENGR00215515-MX6-Move-IPU-QoS-and-VDOA-IPU-VPU-AXI-C.patch
So maybe more of a cleanup issue.
Not only in the Phytec DCDs, but maybe also the other ones.


What concerns me more is the CPU core clock reduction:
    // CCM_ANALOG_PLL_ARM0 : PLL setup => PLL locked, PLL on,
    //                       bypass off, 396MHz
    // reset default: 0x00013042 => PLL not locked, PLL off, bypass on,
    //                              bypass 24MHz osc as src, pll divider
    //                              for 792MHz
    // 0x80002021 => PLL locked, PLL on, bypass off, pll divider for
    //               396MHz ; Attn.: PLL locked is w/o ; divider for
    //               396MHz is below valid range
    wm 32 0x020c8000 0x80002021
Comments again added by me.

Two things here look questionable to me:
1.) Datasheet says valid divider values are 54-108, so the
    default 0x42=66 is in range, whereas the 0x21=33 is not.
2.) Even if the divider value is legit, the change flow might be not.
    A PLL normally takes some time to lock.

Now, I have not looked yet at the PLL setup and/or scaling code of the
kernel, both wrt PLL change flow as well as dividers. So this might be
ok, and even if only implicitly (like due to some implicit delay after
DCD got parsed).
And obviously it works. "Only" misses a comment whats it does. And only
present in some of the Phytec DCDs, as far as I can see.

But what I like to understand is why ?
I mean, scaling down the i.MX6 to its minimum frequency (half of
default) in the bootloader, to get a maximum stable state, ok. Even if
it extends the bootup time.

But why after all the IOMUX, MMDC and DDR setup is through ?
Probably too late if it is about some PMIC-reset-voltage-scaling issue.
Or some thermal precaution ?

By the way, the above setups goes back through long history, as in
    a540c30 boards: Add phytec-som-imx6
    c5b4f09 ARM:phyFLEX-iMX6 New Ram Timings for Q/DL
    30f29e3 ARM: Add Phytec phyFLEX-i.MX6 board support
and applies to other Phytec i.MX6 boards as well, beside the DL ones.


Any comments on this, maybe also from Phytec ?

Best regards,
  Andreas Pretzsch

-- 

carpe noctem engineering
Ingenieurbuero fuer Hard- & Software-Entwicklung Andreas Pretzsch
Dipl.-Ing. (FH) Andreas Pretzsch        Tel. +49-(0)7307-936088-1
Lange Strasse 28a                       Fax: +49-(0)7307-936088-9
89250 Senden, Germany                   email: apr@cn-eng.de


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
