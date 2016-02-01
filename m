Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from krieglstein.org ([176.28.13.145]
 helo=lvps176-28-13-145.dedicated.hosteurope.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aQDxv-0000Xy-Pb
 for barebox@lists.infradead.org; Mon, 01 Feb 2016 12:52:25 +0000
From: Tim Sander <tim@krieglstein.org>
Date: Mon, 01 Feb 2016 13:51:31 +0100
Message-ID: <7030146.F5GVkX7PHP@dabox>
In-Reply-To: <20160201154803.5bab65e81ba58c4764b3c2c1@gmail.com>
References: <3762339.hZBQLlnv2u@dabox>
 <73bn80zlc1.fsf@unicorn.hi.pengutronix.de>
 <20160201154803.5bab65e81ba58c4764b3c2c1@gmail.com>
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
Subject: Re: [PATCH] Terasic DE0 NANO-SoC: add support
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org, Steffen Trumtrar <s.trumtrar@pengutronix.de>

Am Montag, 1. Februar 2016, 15:48:03 schrieb Antony Pavlov:
> On Mon, 01 Feb 2016 13:06:22 +0100
> 
> Steffen Trumtrar <s.trumtrar@pengutronix.de> wrote:
> > Tim Sander writes:
> > > Below is a Patch for supporting the Terasic DE0 NANO-SoC with barebox.
> > > The pretty similar Socrates Board was taken as a starting point with
> > > pulling in the memory timings/pinmux from
> > > http://rocketboards.org/foswiki/view/Documentation/AtlasSoCCompileHardwa
> > > reDesign> > 
> > > Its only tested at room temperatures and i am not 100% sure about the device tree:
> > >  One known problem is the fact that the board identifier is pretty
> > >  generic but its the same in the linux kernel so i resorted to that.
> > > 
> > > Signed-off-by: Tim Sander <tim@krieglstein.org>
> > > ---
> > > 
> > >  arch/arm/boards/Makefile                           |   1 +
> > >  arch/arm/boards/terasic-de0-nano-soc/Makefile      |   2 +
> > >  arch/arm/boards/terasic-de0-nano-soc/board.c       |  37 ++
> > >  arch/arm/boards/terasic-de0-nano-soc/config.h      |   1 +
> > >  .../terasic-de0-nano-soc/iocsr_config_cyclone5.c   | 675
> > >  +++++++++++++++++++++ arch/arm/boards/terasic-de0-nano-soc/lowlevel.c 
> > >    | 102 ++++
> > >  .../boards/terasic-de0-nano-soc/pinmux_config.c    | 240 ++++++++
> > >  arch/arm/boards/terasic-de0-nano-soc/pll_config.h  | 107 ++++
> > >  .../arm/boards/terasic-de0-nano-soc/sdram_config.h | 108 ++++
> > >  .../boards/terasic-de0-nano-soc/sequencer_auto.h   | 228 +++++++
> > >  .../terasic-de0-nano-soc/sequencer_auto_ac_init.c  |  69 +++
> > >  .../sequencer_auto_inst_init.c                     | 161 +++++
> > >  .../terasic-de0-nano-soc/sequencer_defines.h       | 160 +++++
> > >  arch/arm/configs/socfpga-xload_defconfig           |   1 +
> > >  arch/arm/configs/socfpga_defconfig                 |   1 +
> > >  arch/arm/dts/Makefile                              |   1 +
> > >  arch/arm/dts/socfpga_cyclone5_de0_nano_soc.dts     | 136 +++++
> > >  arch/arm/mach-socfpga/Kconfig                      |   4 +
> > >  images/Makefile.socfpga                            |   8 +
> > >  19 files changed, 2042 insertions(+)
> > >  create mode 100644 arch/arm/boards/terasic-de0-nano-soc/Makefile
> > >  create mode 100644 arch/arm/boards/terasic-de0-nano-soc/board.c
> > >  create mode 100644 arch/arm/boards/terasic-de0-nano-soc/config.h
> > >  create mode 100644
> > >  arch/arm/boards/terasic-de0-nano-soc/iocsr_config_cyclone5.c create
> > >  mode 100644 arch/arm/boards/terasic-de0-nano-soc/lowlevel.c create
> > >  mode 100644 arch/arm/boards/terasic-de0-nano-soc/pinmux_config.c
> > >  create mode 100644 arch/arm/boards/terasic-de0-nano-soc/pll_config.h
> > >  create mode 100644 arch/arm/boards/terasic-de0-nano-soc/sdram_config.h
> > >  create mode 100644
> > >  arch/arm/boards/terasic-de0-nano-soc/sequencer_auto.h create mode
> > >  100644 arch/arm/boards/terasic-de0-nano-soc/sequencer_auto_ac_init.c
> > >  create mode 100644
> > >  arch/arm/boards/terasic-de0-nano-soc/sequencer_auto_inst_init.c create
> > >  mode 100644 arch/arm/boards/terasic-de0-nano-soc/sequencer_defines.h
> > >  create mode 100644 arch/arm/dts/socfpga_cyclone5_de0_nano_soc.dts
> > 
> > (...)
> > 
> > > diff --git a/arch/arm/dts/socfpga_cyclone5_de0_nano_soc.dts
> > > b/arch/arm/dts/socfpga_cyclone5_de0_nano_soc.dts new file mode 100644
> > > index 000000000000..5d1840451382
> > > --- /dev/null
> > > +++ b/arch/arm/dts/socfpga_cyclone5_de0_nano_soc.dts
> > > @@ -0,0 +1,136 @@
> > > +/*
> > > + *  Copyright (C) 2013 Steffen Trumtrar <s.trumtrar@pengutronix.de>
> > > + *
> > > + * This program is free software; you can redistribute it and/or modify
> > > + * it under the terms of the GNU General Public License as published by
> > > + * the Free Software Foundation; either version 2 of the License, or
> > > + * (at your option) any later version.
> > > + *
> > > + * This program is distributed in the hope that it will be useful,
> > > + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> > > + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> > > + * GNU General Public License for more details.
> > > + *
> > > + * You should have received a copy of the GNU General Public License
> > > + * along with this program.  If not, see
> > > <http://www.gnu.org/licenses/>.
> > > + */
> > > +
> > > +#include <arm/socfpga_cyclone5_sockit.dts>
> > 
> > This is the wrong DT.
> > What you AFAIK want is the socfgpa_cyclone5_de0_sockit.dts

> > The "Terasic DE0-Nano" is the same as the "Terasic DE-0" or isn't it?
> > From the website it at least seems like it.
According to the DE0-Nano-SoC_QSG.pdf document:
"Whats the difference between the DE0-Nano-SoC kit and the Atlas-SoC kit?

The hardware is the same for the DE0-Nano-SoC kit and the Atlas-SoC kit. 
The only difference is the getting-started process for the two kits. Users
can freely use the DE0-Nano-SoC kit resources on the Atlas-SoC kit and 
vice versa."

> > With the other dts you then should be able to remove
> > 
> > > +#include "socfpga.dtsi"
> > > +
> > > +/ {
> > > +       model = "Terasic DE0-Nano(Atlas)";

So with that it would be more precise to name it DE0-Nano-SoC (Atlas)?
It would be than different to that in the linux kernel? 
But then  was up till now not aware that there is a DE0-Nano, a DE0-CV and a DE0 board.
http://www.terasic.com.tw/cgi-bin/page/archive.pl?Language=English&CategoryNo=56&No=364
But the only one with a processor is AFAIK the DE0-Nano-SoC.

> It looks like Steffen is right.
> 
> The board model name is wrong.
> 
> Here is the DE0-Nano-SoC (Atlas-SoC) board:
> http://www.terasic.com.tw/cgi-bin/page/archive.pl?Language=English&No=941
> it is based on Cyclone V SE 5CSEMA4U23C6N.
Its this board i am talking of.  
> 
> And this is DE0-Nano
> http://www.terasic.com.tw/cgi-bin/page/archive.pl?Language=English&CategoryN
> o=139&No=593 it is based on Cyclone IV EP4CE22F17C6N.
There is no processor in here, so you have a hard time booting this with barebox (at least without a softcore processor).

Will do the other suggested dts changes suggested by Steffen.

Best regards
Tim

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
