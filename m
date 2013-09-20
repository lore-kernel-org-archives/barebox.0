Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VMuii-0000ou-5j
 for barebox@lists.infradead.org; Fri, 20 Sep 2013 07:01:40 +0000
Date: Fri, 20 Sep 2013 09:01:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130920070118.GC30088@pengutronix.de>
References: <1379569815-14033-1-git-send-email-plagnioj@jcrosoft.com>
 <1379569815-14033-2-git-send-email-plagnioj@jcrosoft.com>
 <20130919112107.GA24065@ns203013.ovh.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130919112107.GA24065@ns203013.ovh.net>
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
Subject: Re: [PATCH 2/2] versatilepb: force net a 100Mpps
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Thu, Sep 19, 2013 at 01:21:07PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 07:50 Thu 19 Sep     , Jean-Christophe PLAGNIOL-VILLARD wrote:
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> 
> ignore this one it'a handle already at driver level

Ok, I assume I shall ignore the whole series.

Sascha

> 
> Best Regards,
> J.
> > ---
> >  arch/arm/boards/versatile/versatilepb.c | 5 ++++-
> >  1 file changed, 4 insertions(+), 1 deletion(-)
> > 
> > diff --git a/arch/arm/boards/versatile/versatilepb.c b/arch/arm/boards/versatile/versatilepb.c
> > index 2eb7473..fa0585d 100644
> > --- a/arch/arm/boards/versatile/versatilepb.c
> > +++ b/arch/arm/boards/versatile/versatilepb.c
> > @@ -28,6 +28,7 @@
> >  #include <environment.h>
> >  #include <partition.h>
> >  #include <sizes.h>
> > +#include <linux/phy.h>
> >  
> >  static int vpb_console_init(void)
> >  {
> > @@ -44,6 +45,8 @@ static int vpb_mem_init(void)
> >  }
> >  mem_initcall(vpb_mem_init);
> >  
> > +static int phy_flags = PHYLIB_FORCE_100;
> > +
> >  static int vpb_devices_init(void)
> >  {
> >  	add_cfi_flash_device(DEVICE_ID_DYNAMIC, VERSATILE_FLASH_BASE, VERSATILE_FLASH_SIZE, 0);
> > @@ -52,7 +55,7 @@ static int vpb_devices_init(void)
> >  	devfs_add_partition("nor0", 0x40000, 0x20000, DEVFS_PARTITION_FIXED, "env0");
> >  
> >  	add_generic_device("smc91c111", DEVICE_ID_DYNAMIC, NULL, VERSATILE_ETH_BASE,
> > -			64 * 1024, IORESOURCE_MEM, NULL);
> > +			64 * 1024, IORESOURCE_MEM, &phy_flags);
> >  
> >  	armlinux_set_architecture(MACH_TYPE_VERSATILE_PB);
> >  	armlinux_set_bootparams((void *)(0x00000100));
> > -- 
> > 1.8.4.rc1
> > 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
