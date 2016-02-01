Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aQE9C-0007hL-JL
 for barebox@lists.infradead.org; Mon, 01 Feb 2016 13:04:04 +0000
Date: Mon, 1 Feb 2016 14:03:39 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Message-ID: <20160201130339.GC24820@pengutronix.de>
References: <3762339.hZBQLlnv2u@dabox>
 <73bn80zlc1.fsf@unicorn.hi.pengutronix.de>
 <20160201154803.5bab65e81ba58c4764b3c2c1@gmail.com>
 <7030146.F5GVkX7PHP@dabox>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7030146.F5GVkX7PHP@dabox>
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
To: Tim Sander <tim@krieglstein.org>
Cc: barebox@lists.infradead.org

On Mon, Feb 01, 2016 at 01:51:31PM +0100, Tim Sander wrote:
> Am Montag, 1. Februar 2016, 15:48:03 schrieb Antony Pavlov:
> > On Mon, 01 Feb 2016 13:06:22 +0100
> > 
> > Steffen Trumtrar <s.trumtrar@pengutronix.de> wrote:
> > > Tim Sander writes:
> > > > Below is a Patch for supporting the Terasic DE0 NANO-SoC with barebox.
> > > > The pretty similar Socrates Board was taken as a starting point with
> > > > pulling in the memory timings/pinmux from
> > > > http://rocketboards.org/foswiki/view/Documentation/AtlasSoCCompileHardwa
> > > > reDesign> > 
> > > > Its only tested at room temperatures and i am not 100% sure about the device tree:
> > > >  One known problem is the fact that the board identifier is pretty
> > > >  generic but its the same in the linux kernel so i resorted to that.
> > > > 
> > > > Signed-off-by: Tim Sander <tim@krieglstein.org>
> > > > ---
> > > > 
> > > >  arch/arm/boards/Makefile                           |   1 +
> > > >  arch/arm/boards/terasic-de0-nano-soc/Makefile      |   2 +
> > > >  arch/arm/boards/terasic-de0-nano-soc/board.c       |  37 ++
> > > >  arch/arm/boards/terasic-de0-nano-soc/config.h      |   1 +
> > > >  .../terasic-de0-nano-soc/iocsr_config_cyclone5.c   | 675
> > > >  +++++++++++++++++++++ arch/arm/boards/terasic-de0-nano-soc/lowlevel.c 
> > > >    | 102 ++++
> > > >  .../boards/terasic-de0-nano-soc/pinmux_config.c    | 240 ++++++++
> > > >  arch/arm/boards/terasic-de0-nano-soc/pll_config.h  | 107 ++++
> > > >  .../arm/boards/terasic-de0-nano-soc/sdram_config.h | 108 ++++
> > > >  .../boards/terasic-de0-nano-soc/sequencer_auto.h   | 228 +++++++
> > > >  .../terasic-de0-nano-soc/sequencer_auto_ac_init.c  |  69 +++
> > > >  .../sequencer_auto_inst_init.c                     | 161 +++++
> > > >  .../terasic-de0-nano-soc/sequencer_defines.h       | 160 +++++
> > > >  arch/arm/configs/socfpga-xload_defconfig           |   1 +
> > > >  arch/arm/configs/socfpga_defconfig                 |   1 +
> > > >  arch/arm/dts/Makefile                              |   1 +
> > > >  arch/arm/dts/socfpga_cyclone5_de0_nano_soc.dts     | 136 +++++
> > > >  arch/arm/mach-socfpga/Kconfig                      |   4 +
> > > >  images/Makefile.socfpga                            |   8 +
> > > >  19 files changed, 2042 insertions(+)
> > > >  create mode 100644 arch/arm/boards/terasic-de0-nano-soc/Makefile
> > > >  create mode 100644 arch/arm/boards/terasic-de0-nano-soc/board.c
> > > >  create mode 100644 arch/arm/boards/terasic-de0-nano-soc/config.h
> > > >  create mode 100644
> > > >  arch/arm/boards/terasic-de0-nano-soc/iocsr_config_cyclone5.c create
> > > >  mode 100644 arch/arm/boards/terasic-de0-nano-soc/lowlevel.c create
> > > >  mode 100644 arch/arm/boards/terasic-de0-nano-soc/pinmux_config.c
> > > >  create mode 100644 arch/arm/boards/terasic-de0-nano-soc/pll_config.h
> > > >  create mode 100644 arch/arm/boards/terasic-de0-nano-soc/sdram_config.h
> > > >  create mode 100644
> > > >  arch/arm/boards/terasic-de0-nano-soc/sequencer_auto.h create mode
> > > >  100644 arch/arm/boards/terasic-de0-nano-soc/sequencer_auto_ac_init.c
> > > >  create mode 100644
> > > >  arch/arm/boards/terasic-de0-nano-soc/sequencer_auto_inst_init.c create
> > > >  mode 100644 arch/arm/boards/terasic-de0-nano-soc/sequencer_defines.h
> > > >  create mode 100644 arch/arm/dts/socfpga_cyclone5_de0_nano_soc.dts
> > > 
> > > (...)
> > > 
> > > > diff --git a/arch/arm/dts/socfpga_cyclone5_de0_nano_soc.dts
> > > > b/arch/arm/dts/socfpga_cyclone5_de0_nano_soc.dts new file mode 100644
> > > > index 000000000000..5d1840451382
> > > > --- /dev/null
> > > > +++ b/arch/arm/dts/socfpga_cyclone5_de0_nano_soc.dts
> > > > @@ -0,0 +1,136 @@
> > > > +/*
> > > > + *  Copyright (C) 2013 Steffen Trumtrar <s.trumtrar@pengutronix.de>
> > > > + *
> > > > + * This program is free software; you can redistribute it and/or modify
> > > > + * it under the terms of the GNU General Public License as published by
> > > > + * the Free Software Foundation; either version 2 of the License, or
> > > > + * (at your option) any later version.
> > > > + *
> > > > + * This program is distributed in the hope that it will be useful,
> > > > + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> > > > + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> > > > + * GNU General Public License for more details.
> > > > + *
> > > > + * You should have received a copy of the GNU General Public License
> > > > + * along with this program.  If not, see
> > > > <http://www.gnu.org/licenses/>.
> > > > + */
> > > > +
> > > > +#include <arm/socfpga_cyclone5_sockit.dts>
> > > 
> > > This is the wrong DT.
> > > What you AFAIK want is the socfgpa_cyclone5_de0_sockit.dts
> 
> > > The "Terasic DE0-Nano" is the same as the "Terasic DE-0" or isn't it?
> > > From the website it at least seems like it.
> According to the DE0-Nano-SoC_QSG.pdf document:
> "Whats the difference between the DE0-Nano-SoC kit and the Atlas-SoC kit?
> 
> The hardware is the same for the DE0-Nano-SoC kit and the Atlas-SoC kit. 
> The only difference is the getting-started process for the two kits. Users
> can freely use the DE0-Nano-SoC kit resources on the Atlas-SoC kit and 
> vice versa."
> 
> > > With the other dts you then should be able to remove
> > > 
> > > > +#include "socfpga.dtsi"
> > > > +
> > > > +/ {
> > > > +       model = "Terasic DE0-Nano(Atlas)";
> 
> So with that it would be more precise to name it DE0-Nano-SoC (Atlas)?
> It would be than different to that in the linux kernel? 

IIRC Dinh, who did the dts, initially started with an even more confusing
naming and ended with this.
It seems reasonable to me, to fix the model name in linux to match the dts
name, i.e. "DE0-Nano-SoC". I don't know how the "Atlas" fits in there though.

Regards,
Steffen

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
