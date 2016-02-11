Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from krieglstein.org ([176.28.13.145]
 helo=lvps176-28-13-145.dedicated.hosteurope.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aTsR6-0002Zi-AX
 for barebox@lists.infradead.org; Thu, 11 Feb 2016 14:41:49 +0000
From: Tim Sander <tim@krieglstein.org>
Date: Thu, 11 Feb 2016 15:40:41 +0100
Message-ID: <3833870.VaYZ1EDOWB@dabox>
In-Reply-To: <CAHQ1cqEBXBziKFGPaDQBK3zMw0+D4cnjvB2KXHBF906UG8Ahwg@mail.gmail.com>
References: <2936535.PfmXjTYsqy@dabox>
 <CAHQ1cqEBXBziKFGPaDQBK3zMw0+D4cnjvB2KXHBF906UG8Ahwg@mail.gmail.com>
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
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Steffen Trumtrar <s.trumtrar@pengutronix.de>, Trent Piepho <tpiepho@kymetacorp.com>

Hi

Am Montag, 1. Februar 2016, 11:08:10 schrieb Andrey Smirnov:
...
> > diff --git a/arch/arm/boards/terasic-de0-nano-soc/board.c
> > b/arch/arm/boards/terasic-de0-nano-soc/board.c new file mode 100644
> > index 0000000..22f8291
> > --- /dev/null
> > +++ b/arch/arm/boards/terasic-de0-nano-soc/board.c
> > @@ -0,0 +1,37 @@
> > +#include <common.h>
> > +#include <types.h>
> > +#include <driver.h>
> > +#include <init.h>
> > +#include <asm/armlinux.h>
> > +#include <linux/micrel_phy.h>
> > +#include <linux/phy.h>
> > +#include <linux/sizes.h>
> > +#include <fcntl.h>
> > +#include <fs.h>
> > +#include <mach/socfpga-regs.h>
> > +
> > +static int phy_fixup(struct phy_device *dev)
> > +{
> > +       /* min rx data delay */
> > +       phy_write(dev, 0x0b, 0x8105);
> > +       phy_write(dev, 0x0c, 0x0000);
> > +
> > +       /* max rx/tx clock delay, min rx/tx control delay */
> > +       phy_write(dev, 0x0b, 0x8104);
> > +       phy_write(dev, 0x0c, 0xa0d0);
> > +       phy_write(dev, 0x0b, 0x104);
> > +
> > +       return 0;
> > +}
> > +
> > +static int socfpga_console_init(void)
> 
> I know that this names comes from the source code for SoCKit, but I'd
> argue that the name of this function should be changed to something
> more descriptive. This function doesn't really initialize console in
> any way and just happen to be executed on "console_initcall" level of
> execution.
> 
> > +{
> > +       if (!of_machine_is_compatible("altr,socfpga-cyclone5"))
The string above will be replaced with "terasic,de0-nano-soc" but see below...
> > +               return 0;
> 
> Since Altera is not really a vendor of this board and, I'd suggest the
> compatibility string be renamed to "terrasic,de0-nano-soc"
Besides that the company is named Terasic i concur with you but there 
is one problem: I have now just patched the kernel with the folowing patch to 
add the device tree compatiblility information needed:

diff --git a/arch/arm/boot/dts/socfpga_cyclone5_de0_sockit.dts b/arch/arm/boot/dts/socfpga_cyclone5_de0_sockit.dts
index 555e9caf21e1..3a427423168e 100644
--- a/arch/arm/boot/dts/socfpga_cyclone5_de0_sockit.dts
+++ b/arch/arm/boot/dts/socfpga_cyclone5_de0_sockit.dts
@@ -18,7 +18,7 @@
 
 / {
        model = "Terasic DE-0(Atlas)";
-       compatible = "altr,socfpga-cyclone5", "altr,socfpga";
+       compatible = "terasic,de0-nano-soc"," altr,socfpga-cyclone5", "altr,socfpga";
 
        chosen {
                bootargs = "earlyprintk";
-- 
1.9.1

But now i have  the barebox bootmessage which states the following on boot:
--
blspec: blspec_scan_directory: mmc loader/entries
blspec: blspec_scan_directory: /mnt/mmc0.2 loader/entries
blspec: ignoring entry with incompatible devicetree "terasic,de0-nano-soc"
--

Looking into loader/entries on the SD-card shows the follwing contents of socfpga_cyclone5_de0_sockit.conf:
--
title		PTXdist - HBM-Altera Soc Test socfpga_cyclone5_de0_sockit
version		4.4.1
options		root=/dev/mmcblk0p3 rootwait rootfstype=ext4 rw
linux		/boot/zImage
devicetree	/boot/socfpga_cyclone5_de0_sockit.dtb
--

dtc -I dtb -O dts socfpga_cyclone5_de0_sockit.dtb |head outputs
--
/dts-v1/;

/memreserve/    0x0000000000000000 0x0000000000001000;
/ {
        #address-cells = <0x1>;
        #size-cells = <0x1>;
        model = "Terasic DE-0(Atlas)";
        compatible = "terasic,de0-nano-soc", " altr,socfpga-cyclone5", "altr,socfpga";

--

All files are taken directly from the SD-card so i am pretty sure i made no errors there.
But currently i fail to see why this error occurs? I seems to me that all the device tree
magic is in place but unfortunatly barebox does not seem to know...

Best Regards
Tim

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
