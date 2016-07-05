Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bKKM2-0004xw-3w
 for barebox@lists.infradead.org; Tue, 05 Jul 2016 07:01:10 +0000
Date: Tue, 5 Jul 2016 09:00:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160705070048.GO20657@pengutronix.de>
References: <1467624459-16448-1-git-send-email-s.hauer@pengutronix.de>
 <1467624459-16448-11-git-send-email-s.hauer@pengutronix.de>
 <20160704125834.GA15608@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20160704125834.GA15608@pengutronix.de>
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
Subject: Re: [PATCH 10/12] ARM: i.MX53 Vincell: Add NAND xload support
To: Michael Grzeschik <mgr@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Jul 04, 2016 at 02:58:34PM +0200, Michael Grzeschik wrote:
> On Mon, Jul 04, 2016 at 11:27:37AM +0200, Sascha Hauer wrote:
> > The Vincell boards do the SDRAM setup from board init code, so the
> > image size is limited to the internal SRAM size. To overcome this
> > limitation use the NAND xload support.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  arch/arm/boards/guf-vincell/lowlevel.c | 25 ++++++++++++++++++++++---
> >  arch/arm/mach-imx/Kconfig              |  9 +++++++++
> >  images/Makefile.imx                    | 14 ++++++++++----
> >  3 files changed, 41 insertions(+), 7 deletions(-)
> > 
> > diff --git a/arch/arm/boards/guf-vincell/lowlevel.c b/arch/arm/boards/guf-vincell/lowlevel.c
> > index f4bd44e..34c28f7 100644
> > --- a/arch/arm/boards/guf-vincell/lowlevel.c
> > +++ b/arch/arm/boards/guf-vincell/lowlevel.c
> > @@ -11,6 +11,7 @@
> >  #include <mach/generic.h>
> >  #include <asm/barebox-arm.h>
> >  #include <asm/barebox-arm-head.h>
> > +#include <mach/xload.h>
> >  
> >  #define IOMUX_PADCTL_DDRI_DDR (1 << 9)
> >  
> > @@ -127,8 +128,9 @@ static noinline void imx53_guf_vincell_init(void *fdt)
> >  {
> >  	void __iomem *ccm = (void *)MX53_CCM_BASE_ADDR;
> >  	u32 r;
> > +	enum bootsource src;
> > +	int instance;
> >  
> > -	imx5_cpu_lowlevel_init();
> >  	arm_setup_stack(0xf8020000 - 8);
> >  
> >  	writel(0x0088494c, ccm + MX5_CCM_CBCDR);
> > @@ -149,11 +151,28 @@ static noinline void imx53_guf_vincell_init(void *fdt)
> >  		disable_watchdog();
> >  		configure_dram_iomux();
> >  		imx_esdctlv4_init();
> > +
> > +		imx53_get_boot_source(&src, &instance);
> > +
> > +		if (src == BOOTSOURCE_NAND &&
> > +		    is_enabled(CONFIG_MACH_GUF_VINCELL_XLOAD))
> > +			imx53_nand_start_image();
> 
> This should probably be s/is_enabled/IS_ENABLED/ .

Yes, indeed. I thought I at least compile tested this change /o\

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
