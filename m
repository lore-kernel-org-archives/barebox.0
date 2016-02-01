Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from krieglstein.org ([176.28.13.145]
 helo=lvps176-28-13-145.dedicated.hosteurope.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aQEVy-00077r-MX
 for barebox@lists.infradead.org; Mon, 01 Feb 2016 13:27:35 +0000
From: Tim Sander <tim@krieglstein.org>
Date: Mon, 01 Feb 2016 14:26:42 +0100
Message-ID: <1519322.ASLy3evpL3@dabox>
In-Reply-To: <20160201130339.GC24820@pengutronix.de>
References: <3762339.hZBQLlnv2u@dabox> <7030146.F5GVkX7PHP@dabox>
 <20160201130339.GC24820@pengutronix.de>
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
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Steffen

Am Montag, 1. Februar 2016, 14:03:39 schrieb Steffen Trumtrar:
(...)
> > > > 
> > > > > diff --git a/arch/arm/dts/socfpga_cyclone5_de0_nano_soc.dts
> > > > > b/arch/arm/dts/socfpga_cyclone5_de0_nano_soc.dts new file mode
> > > > > 100644
> > > > > index 000000000000..5d1840451382
> > > > > --- /dev/null
> > > > > +++ b/arch/arm/dts/socfpga_cyclone5_de0_nano_soc.dts
> > > > > @@ -0,0 +1,136 @@
> > > > > +/*
> > > > > + *  Copyright (C) 2013 Steffen Trumtrar <s.trumtrar@pengutronix.de>
> > > > > + *
> > > > > + * This program is free software; you can redistribute it and/or
> > > > > modify
> > > > > + * it under the terms of the GNU General Public License as
> > > > > published by
> > > > > + * the Free Software Foundation; either version 2 of the License,
> > > > > or
> > > > > + * (at your option) any later version.
> > > > > + *
> > > > > + * This program is distributed in the hope that it will be useful,
> > > > > + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> > > > > + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> > > > > + * GNU General Public License for more details.
> > > > > + *
> > > > > + * You should have received a copy of the GNU General Public
> > > > > License
> > > > > + * along with this program.  If not, see
> > > > > <http://www.gnu.org/licenses/>.
> > > > > + */
> > > > > +
> > > > > +#include <arm/socfpga_cyclone5_sockit.dts>
> > > > 
> > > > This is the wrong DT.
> > > > What you AFAIK want is the socfgpa_cyclone5_de0_sockit.dts
This one is not beeing found. Did you mean socfpga_cyclone5_de0_nano_soc.dts.
Which is also not there. I do *think* that the Sockit board has a similar 
layout. So i deliberately choose this file. Should i copy and adapt this file?

> > > > The "Terasic DE0-Nano" is the same as the "Terasic DE-0" or isn't it?
> > > > From the website it at least seems like it.
> > 
> > According to the DE0-Nano-SoC_QSG.pdf document:
> > "Whats the difference between the DE0-Nano-SoC kit and the Atlas-SoC kit?
> > 
> > The hardware is the same for the DE0-Nano-SoC kit and the Atlas-SoC kit.
> > The only difference is the getting-started process for the two kits. Users
> > can freely use the DE0-Nano-SoC kit resources on the Atlas-SoC kit and
> > vice versa."
> > 
> > > > With the other dts you then should be able to remove
> > > > 
> > > > > +#include "socfpga.dtsi"
> > > > > +
> > > > > +/ {
> > > > > +       model = "Terasic DE0-Nano(Atlas)";
> > 
> > So with that it would be more precise to name it DE0-Nano-SoC (Atlas)?
> > It would be than different to that in the linux kernel?
> 
> IIRC Dinh, who did the dts, initially started with an even more confusing
> naming and ended with this.
> It seems reasonable to me, to fix the model name in linux to match the dts
> name, i.e. "DE0-Nano-SoC". I don't know how the "Atlas" fits in there
> though.
The Atlas part is just plain weird. But if someone is grepping for Atlas 
support its at least nice to have it in there.

Best regards
Tim



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
