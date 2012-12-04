Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TfyVD-00012m-5e
 for barebox@lists.infradead.org; Tue, 04 Dec 2012 19:50:01 +0000
Date: Tue, 4 Dec 2012 14:49:55 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
In-Reply-To: <CAGo_u6p3R837Kqmt+EqfXjc4Lger6LK4JNfR6Crtd=s9ZzE7_A@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1212041446140.3594@oneiric>
References: <alpine.DEB.2.02.1212041048580.29673@oneiric>
 <CAGo_u6q97PTW+FAUnTOw1h-Jx=ZbO_hqqfAyP-d8_7DkVZEnkQ@mail.gmail.com>
 <alpine.DEB.2.02.1212041429450.3234@oneiric>
 <CAGo_u6p3R837Kqmt+EqfXjc4Lger6LK4JNfR6Crtd=s9ZzE7_A@mail.gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: lots of inaccurate references to "FileName: include/asm-arm ..."
To: "menon.nishanth@gmail.com" <menon.nishanth@gmail.com>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Tue, 4 Dec 2012, menon.nishanth@gmail.com wrote:

> Hi,
> On Tue, Dec 4, 2012 at 1:30 PM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
> > the obvious cleanup is to just delete all those "FileName" lines.
> > it *is* useful info to know where a file came from in the linux
> > kernel, i would definitely leave that in.  but (as was explained to me
> > recently) it's pointless to have a file contain its own alleged name,
> > especially if files can be moved.
> >
> >   so unless those "FileName" lines have some value, i would just
> > remove all of them.

> Sounds good to me.
> Regards,
> Nishanth Menon

  if i don't hear differently, i can submit a patch tomorrow.  as you
can see, almost all of that content is arm-related:

arch/arm/mach-omap/devices-gpmc-nand.c: * FileName: arch/arm/boards/omap/devices-gpmc-nand.c
arch/arm/mach-omap/omap3_clock.c: * FileName: arch/arm/mach-omap/omap3_clock.c
arch/arm/mach-omap/s32k_clksource.c: * FileName: arch/arm/mach-omap/s32k_clksource.c
arch/arm/mach-omap/syslib.c: * FileName: arch/arm/mach-omap/syslib.c
arch/arm/mach-omap/omap3_core.S: * FileName: arch/arm/mach-omap/omap3_core.S
arch/arm/mach-omap/gpmc.c: * FileName: arch/arm/mach-omap/gpmc.c
arch/arm/mach-omap/include/mach/omap3-mux.h: * FileName: include/asm-arm/arch-omap/omap3-mux.h
arch/arm/mach-omap/include/mach/syslib.h: * FileName: include/asm-arm/arch-omap/syslib.h
arch/arm/mach-omap/include/mach/sys_info.h: * FileName: include/asm-arm/arch-omap/sys_info.h
arch/arm/mach-omap/include/mach/gpmc.h: * FileName: include/asm-arm/arch-omap/gpmc.h
arch/arm/mach-omap/include/mach/control.h: * FileName: include/asm-arm/arch-omap/control.h
arch/arm/mach-omap/include/mach/intc.h: * FileName: include/asm-arm/arch-omap/intc.h
arch/arm/mach-omap/include/mach/sdrc.h: * FileName: include/asm-arm/arch-omap/sdrc.h
arch/arm/mach-omap/include/mach/gpmc_nand.h: * FileName: include/asm-arm/arch-omap/gpmc_nand.h
arch/arm/mach-omap/include/mach/omap3-clock.h: * FileName: include/asm-arm/arch-omap/omap3-clock.h
arch/arm/mach-omap/include/mach/omap3-silicon.h: * FileName: include/asm-arm/arch-omap/omap3-silicon.h
arch/arm/mach-omap/include/mach/timers.h: * FileName: include/asm-arm/arch-omap/timers.h
arch/arm/mach-omap/include/mach/omap3-smx.h: * FileName: include/asm-arm/arch-omap/omap3-smx.h
arch/arm/mach-omap/include/mach/omap_hsmmc.h: * FileName: include/asm-arm/arch-omap/omap_hsmmc.h
arch/arm/mach-omap/include/mach/clocks.h: * FileName: include/asm-arm/arch-omap/clocks.h
arch/arm/mach-omap/include/mach/wdt.h: * FileName: include/asm-arm/arch-omap/wdt.h
arch/arm/mach-omap/omap3_generic.c: * FileName: arch/arm/mach-omap/omap3_generic.c
arch/arm/boards/omap3evm/board.c: * FileName: arch/arm/boards/omap/board-omap3evm.c
arch/arm/boards/omap343xdsp/board.c: * FileName: arch/arm/boards/omap/board-sdp343x.c
arch/arm/boards/beagle/board.c: * FileName: arch/arm/boards/omap/board-beagle.c
arch/arm/boards/phycard-a-l1/pca-a-l1.c: * FileName: arch/arm/boards/phycard-a-l1/pca-a-l1.c
arch/arm/boards/phycard-a-l1/pca-a-l1.h: * FileName: arch/arm/boards/phycard-a-l1/board.h
commands/loadxy.c: * FileName: commands/loadxy.c
commands/loadb.c: * FileName: commands/loadb.c
drivers/mtd/nand/nand_omap_gpmc.c: * FileName: arch/arm/mach-omap/gpmc_nand.c
drivers/serial/serial_ns16550.c: * FileName: drivers/serial/serial_ns16550.c
drivers/serial/serial_ns16550.h: * FileName: drivers/serial/serial_ns16550.h
include/ns16550.h: * FileName: include/ns16550.h
scripts/mk-am35xx-spi-image.c: * FileName: scripts/mk-am35xx-spi-image.c

  i'll restrict the patch to just the arch/asm stuff, someone else is
welcome to clean up the other bits.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
