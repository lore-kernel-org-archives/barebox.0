Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aQEne-0004i7-Af
 for barebox@lists.infradead.org; Mon, 01 Feb 2016 13:45:54 +0000
Date: Mon, 1 Feb 2016 14:45:27 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Message-ID: <20160201134527.GD24820@pengutronix.de>
References: <3762339.hZBQLlnv2u@dabox> <7030146.F5GVkX7PHP@dabox>
 <20160201130339.GC24820@pengutronix.de> <1519322.ASLy3evpL3@dabox>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1519322.ASLy3evpL3@dabox>
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

On Mon, Feb 01, 2016 at 02:26:42PM +0100, Tim Sander wrote:
> Hi Steffen
> 
> Am Montag, 1. Februar 2016, 14:03:39 schrieb Steffen Trumtrar:
> (...)
> > > > > 
> > > > > > diff --git a/arch/arm/dts/socfpga_cyclone5_de0_nano_soc.dts
> > > > > > b/arch/arm/dts/socfpga_cyclone5_de0_nano_soc.dts new file mode
> > > > > > 100644
> > > > > > index 000000000000..5d1840451382
> > > > > > --- /dev/null
> > > > > > +++ b/arch/arm/dts/socfpga_cyclone5_de0_nano_soc.dts
> > > > > > @@ -0,0 +1,136 @@
> > > > > > +/*
> > > > > > + *  Copyright (C) 2013 Steffen Trumtrar <s.trumtrar@pengutronix.de>
> > > > > > + *
> > > > > > + * This program is free software; you can redistribute it and/or
> > > > > > modify
> > > > > > + * it under the terms of the GNU General Public License as
> > > > > > published by
> > > > > > + * the Free Software Foundation; either version 2 of the License,
> > > > > > or
> > > > > > + * (at your option) any later version.
> > > > > > + *
> > > > > > + * This program is distributed in the hope that it will be useful,
> > > > > > + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> > > > > > + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> > > > > > + * GNU General Public License for more details.
> > > > > > + *
> > > > > > + * You should have received a copy of the GNU General Public
> > > > > > License
> > > > > > + * along with this program.  If not, see
> > > > > > <http://www.gnu.org/licenses/>.
> > > > > > + */
> > > > > > +
> > > > > > +#include <arm/socfpga_cyclone5_sockit.dts>
> > > > > 
> > > > > This is the wrong DT.
> > > > > What you AFAIK want is the socfgpa_cyclone5_de0_sockit.dts
> This one is not beeing found. Did you mean socfpga_cyclone5_de0_nano_soc.dts.
> Which is also not there. I do *think* that the Sockit board has a similar 
> layout. So i deliberately choose this file. Should i copy and adapt this file?

Current master: dts/src/arm/socfpga_cyclone5_de0_sockit.dts

> > IIRC Dinh, who did the dts, initially started with an even more confusing
> > naming and ended with this.
> > It seems reasonable to me, to fix the model name in linux to match the dts
> > name, i.e. "DE0-Nano-SoC". I don't know how the "Atlas" fits in there
> > though.

Seems I got confused with all the names. So, the dts is called
socfpga_cyclone5_de0_sockit.dts and the model name is "Terasic DE-0(Atlas)"
and Terasic calls it "DE0-Nano-SoC Kit/Atlas-SoC Kit".

I think it should then be

	model = "Terasic DE0-Nano-SoC Kit/Atlas-SoC Kit";

I didn't insist on that when I reviewed the dts for linux, maybe I should
have.

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
