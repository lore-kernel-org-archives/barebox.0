Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from krieglstein.org ([176.28.13.145]
 helo=lvps176-28-13-145.dedicated.hosteurope.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aQbL0-0004yd-E6
 for barebox@lists.infradead.org; Tue, 02 Feb 2016 13:49:47 +0000
From: Tim Sander <tim@krieglstein.org>
Date: Tue, 02 Feb 2016 14:48:49 +0100
Message-ID: <2242913.yZc50JEAEz@virgo>
In-Reply-To: <1454355135.18531.23.camel@rtred1test09.kymeta.local>
References: <3762339.hZBQLlnv2u@dabox> <1657046.j4o6hCTdX5@dabox>
 <1454355135.18531.23.camel@rtred1test09.kymeta.local>
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
Subject: Re: [PATCH v3] Terasic DE0-Nano-SoC: add support
To: Trent Piepho <tpiepho@kymetacorp.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Steffen Trumtrar <s.trumtrar@pengutronix.de>

On Monday 01 February 2016 19:31:53 Trent Piepho wrote:
> On Mon, 2016-02-01 at 15:07 +0100, Tim Sander wrote:
> 
> > v3: forgot to amend my changes in v2.
> > 
> > +
> > +static int socfpga_console_init(void)
> > +{
> > +       if (!of_machine_is_compatible("altr,socfpga-cyclone5"))
> > +               return 0;
> 
> 
> Seems like this should be a board specific check instead of a generic
> one, since it's programming board specific phy timing values to a board
> specific PHY.
I am not sure, but as outlined below i think this is also due to the 
compatible string of the coresponding dts within the linux kernel.
At least i first tried a more specific dts compatible string and that failed 
to boot.
> 
> > +
> > +       if (IS_ENABLED(CONFIG_PHYLIB))
> > +               phy_register_fixup_for_uid(PHY_ID_KSZ9021,
> > MICREL_PHY_ID_MASK, phy_fixup);
 +
> > +       return 0;
> > +}
> 
> 
> 
> > +
> > +static inline void ledon(int led)
> > +{
> > +       u32 val;
> > +
> > +       val = readl(0xFF709000);
> > +       val |= 1 << (led + 24);
> > +       writel(val, 0xFF709000);
> 
> 
> There a macro CYCLONE5_GPIO1_BASE that could be used instead of
> 0xFF709000.
> 
> 
> > +
> > +       val = readl(0xFF709004);
> > +       val |= 1 << (led + 24);
> > +       writel(val, 0xFF709004);
> > +}
> > +
> > +static inline void ledoff(int led)
> > +{
> > +       u32 val;
> > +
> > +       val = readl(0xFF709000);
> > +       val &= ~(1 << (led + 24));
> > +       writel(val, 0xFF709000);
> > +
> > +       val = readl(0xFF709004);
> > +       val &= ~(1 << (led + 24));
> > +       writel(val, 0xFF709004);
> > +}
> 
> 
> 
> 
> > +#include <arm/socfpga_cyclone5_de0_nano_soc.dts>
> > +#include "socfpga.dtsi"
> > +
> > +/ {
> > +       model = "Terasic DE0-Nano-SoC (Atlas)";
> > +       compatible = "altr,socfpga-cyclone5", "altr,socfpga";
> 
> 
> Wouldn't the right thing to do here be to have a compatible entry for
> this board type?  Like the existing "terasic,sockit" or something more
> specific.
Well the problem at this point is that due to the boardspecs the compatible 
string has to be AFAIK the same as the one used in the linux kernel. 
Unfortunatly the coresponding dts file also has no more specific compatible 
string.

Best regards
Tim

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
