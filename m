Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo1.mail-out.ovh.net ([178.33.110.239]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UDwNA-0002T5-H6
 for barebox@lists.infradead.org; Fri, 08 Mar 2013 12:26:06 +0000
Received: from mail405.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 0DBABFFA73E
 for <barebox@lists.infradead.org>; Fri,  8 Mar 2013 13:42:32 +0100 (CET)
Date: Fri, 8 Mar 2013 13:21:43 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130308122143.GB32347@game.jcrosoft.org>
References: <1362425866-1356-3-git-send-email-s.hauer@pengutronix.de>
 <1362613518-15456-1-git-send-email-plagnioj@jcrosoft.com>
 <20130308074108.GX1906@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130308074108.GX1906@pengutronix.de>
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
Subject: Re: [PATCH 1/1] beagle: add missing mmc twl and control init
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 08:41 Fri 08 Mar     , Sascha Hauer wrote:
> On Thu, Mar 07, 2013 at 12:45:18AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > take from xloader
> > 
> > with this the mmc work even when booting from nand
> 
> Which beagle board revision do you have? With this patch the MMC
> doesn't work at all anymore, even when booting from it.
c3

Best Regards,
J.
> 
> Sascha
> 
> > 
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  arch/arm/boards/beagle/board.c |   29 ++++++++++++++++++++++++++++-
> >  1 file changed, 28 insertions(+), 1 deletion(-)
> > 
> > diff --git a/arch/arm/boards/beagle/board.c b/arch/arm/boards/beagle/board.c
> > index bed4651..6e69e87 100644
> > --- a/arch/arm/boards/beagle/board.c
> > +++ b/arch/arm/boards/beagle/board.c
> > @@ -63,6 +63,7 @@
> >  #include <linux/err.h>
> >  #include <usb/ehci.h>
> >  #include <mach/xload.h>
> > +#include <mfd/twl4030.h>
> >  
> >  #ifdef CONFIG_DRIVER_SERIAL_NS16550
> >  
> > @@ -109,6 +110,32 @@ static struct gpmc_nand_platform_data nand_plat = {
> >  	.nand_cfg = &omap3_nand_cfg,
> >  };
> >  
> > +/* T2 Register definitions */
> > +#define CONTROL_DEV_CONF0	0x48002274
> > +#define CONTROL_PBIAS_LITE	0x48002520
> > +
> > +static void beagle_add_mmc(void)
> > +{
> > +	unsigned int value = 0;
> > +	struct twl4030 *t = twl4030_get();
> > +
> > +	if (!t) {
> > +		pr_warn("twl4030 not ready to setup mmc\n");
> > +	} else {
> > +		twl4030_reg_write(t, TWL4030_USB_OTHER_FUNC_CTRL_CLR, 0x20);
> > +		twl4030_reg_write(t, TWL4030_USB_OTHER_IFC_CTRL_CLR, 0x2);
> > +	}
> > +
> > +	value = readl(CONTROL_PBIAS_LITE);
> > +	value |= (1 << 2) | (1 << 1) | (1 << 9);
> > +	writel(value, CONTROL_PBIAS_LITE);
> > +
> > +	value = readl(CONTROL_DEV_CONF0);
> > +	writel(value | (1 << 24), CONTROL_PBIAS_LITE);
> > +
> > +	omap3_add_mmc1(NULL);
> > +}
> > +
> >  static int beagle_mem_init(void)
> >  {
> >  	omap_add_ram0(SZ_128M);
> > @@ -132,7 +159,7 @@ static int beagle_devices_init(void)
> >  #endif
> >  	omap_add_gpmc_nand_device(&nand_plat);
> >  
> > -	omap3_add_mmc1(NULL);
> > +	beagle_add_mmc();
> >  
> >  	armlinux_set_bootparams((void *)0x80000100);
> >  	armlinux_set_architecture(MACH_TYPE_OMAP3_BEAGLE);
> > -- 
> > 1.7.10.4
> > 
> > 
> > _______________________________________________
> > barebox mailing list
> > barebox@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/barebox
> > 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
