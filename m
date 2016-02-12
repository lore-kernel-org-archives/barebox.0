Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from krieglstein.org ([176.28.13.145]
 helo=lvps176-28-13-145.dedicated.hosteurope.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aUDYM-0007r9-9T
 for barebox@lists.infradead.org; Fri, 12 Feb 2016 13:14:31 +0000
From: Tim Sander <tim@krieglstein.org>
Date: Fri, 12 Feb 2016 14:13:37 +0100
Message-ID: <1792208.1026JlNMXv@dabox>
In-Reply-To: <20160212083320.GB4118@pengutronix.de>
References: <2936535.PfmXjTYsqy@dabox> <3833870.VaYZ1EDOWB@dabox>
 <20160212083320.GB4118@pengutronix.de>
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
Subject: Re: [PATCH v4] Terasic DE0-Nano-SoC: add support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Steffen Trumtrar <s.trumtrar@pengutronix.de>, Trent Piepho <tpiepho@kymetacorp.com>

Hi Sascha

Thanks for your hints.
Am Freitag, 12. Februar 2016, 09:33:20 schrieb Sascha Hauer:
> Hi Tim,
> 
> On Thu, Feb 11, 2016 at 03:40:41PM +0100, Tim Sander wrote:
> > Hi
> > 
> > Am Montag, 1. Februar 2016, 11:08:10 schrieb Andrey Smirnov:
> > ...
> > 
> > > > diff --git a/arch/arm/boards/terasic-de0-nano-soc/board.c
> > > > b/arch/arm/boards/terasic-de0-nano-soc/board.c new file mode 100644
> > > > index 0000000..22f8291
> > > > --- /dev/null
> > > > +++ b/arch/arm/boards/terasic-de0-nano-soc/board.c
> > > > @@ -0,0 +1,37 @@
> > > > +#include <common.h>
> > > > +#include <types.h>
> > > > +#include <driver.h>
> > > > +#include <init.h>
> > > > +#include <asm/armlinux.h>
> > > > +#include <linux/micrel_phy.h>
> > > > +#include <linux/phy.h>
> > > > +#include <linux/sizes.h>
> > > > +#include <fcntl.h>
> > > > +#include <fs.h>
> > > > +#include <mach/socfpga-regs.h>
> > > > +
> > > > +static int phy_fixup(struct phy_device *dev)
> > > > +{
> > > > +       /* min rx data delay */
> > > > +       phy_write(dev, 0x0b, 0x8105);
> > > > +       phy_write(dev, 0x0c, 0x0000);
> > > > +
> > > > +       /* max rx/tx clock delay, min rx/tx control delay */
> > > > +       phy_write(dev, 0x0b, 0x8104);
> > > > +       phy_write(dev, 0x0c, 0xa0d0);
> > > > +       phy_write(dev, 0x0b, 0x104);
> > > > +
> > > > +       return 0;
> > > > +}
> > > > +
> > > > +static int socfpga_console_init(void)
> > > 
> > > I know that this names comes from the source code for SoCKit, but I'd
> > > argue that the name of this function should be changed to something
> > > more descriptive. This function doesn't really initialize console in
> > > any way and just happen to be executed on "console_initcall" level of
> > > execution.
> > > 
> > > > +{
> > > > +       if (!of_machine_is_compatible("altr,socfpga-cyclone5"))
> > 
> > The string above will be replaced with "terasic,de0-nano-soc" but see
> > below...> 
> > > > +               return 0;
> > > 
> > > Since Altera is not really a vendor of this board and, I'd suggest the
> > > compatibility string be renamed to "terrasic,de0-nano-soc"
> > 
> > Besides that the company is named Terasic i concur with you but there
> > is one problem: I have now just patched the kernel with the folowing patch
> > to add the device tree compatiblility information needed:
> > 
> > diff --git a/arch/arm/boot/dts/socfpga_cyclone5_de0_sockit.dts
> > b/arch/arm/boot/dts/socfpga_cyclone5_de0_sockit.dts index
> > 555e9caf21e1..3a427423168e 100644
> > --- a/arch/arm/boot/dts/socfpga_cyclone5_de0_sockit.dts
> > +++ b/arch/arm/boot/dts/socfpga_cyclone5_de0_sockit.dts
> > @@ -18,7 +18,7 @@
> > 
> >  / {
> >  
> >         model = "Terasic DE-0(Atlas)";
> > 
> > -       compatible = "altr,socfpga-cyclone5", "altr,socfpga";
> > +       compatible = "terasic,de0-nano-soc"," altr,socfpga-cyclone5",
> > "altr,socfpga";> 
> >         chosen {
> >         
> >                 bootargs = "earlyprintk";
> 
> Ok, barebox finds a device tree compatible to "terasic,de0-nano-soc" on
> the SD card, but thinks it itself is not compatible to that. It seems
> the patch above has no effect. Could you check with of_dump that
> /compatible is indeed what you expect it to be?

> Note that you have a typo in your compatible string. "
> altr,socfpga-cyclone5" should be "altr,socfpga-cyclone5". That should cause
> your problem
> though.
Well i found out that i forgot to add the "terasic,de0-nano-soc" string to the 
dts file within barebox. So just adding it in board.c and in linux kernel dts 
didn't suffice.

Best regards
Tim


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
