Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XU8nF-00045c-VK
 for barebox@lists.infradead.org; Wed, 17 Sep 2014 06:32:46 +0000
Date: Wed, 17 Sep 2014 08:32:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140917063223.GL4992@pengutronix.de>
References: <1410766873-4393-1-git-send-email-s.hauer@pengutronix.de>
 <1410766873-4393-2-git-send-email-s.hauer@pengutronix.de>
 <54188CAF.40409@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <54188CAF.40409@gmail.com>
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
Subject: Re: [PATCH 1/5] ARM: mvebu: Add common reset_cpu function
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Sep 16, 2014 at 09:17:03PM +0200, Sebastian Hesselbarth wrote:
> On 09/15/2014 09:41 AM, Sascha Hauer wrote:
> > mvebu has a reset_cpu function per SoC this does not work when multiple
> > SoCs are selected, so add a common reset_cpu function which calls into
> > the SoC specific ones.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  arch/arm/mach-mvebu/armada-370-xp.c       | 19 ++++++++++---------
> >  arch/arm/mach-mvebu/common.c              | 15 ++++++++++++++-
> >  arch/arm/mach-mvebu/dove.c                | 21 +++++++++++----------
> >  arch/arm/mach-mvebu/include/mach/common.h |  1 +
> >  arch/arm/mach-mvebu/kirkwood.c            | 19 ++++++++++---------
> >  5 files changed, 46 insertions(+), 29 deletions(-)
> > 
> > diff --git a/arch/arm/mach-mvebu/armada-370-xp.c b/arch/arm/mach-mvebu/armada-370-xp.c
> > index f2b991e..6251100 100644
> > --- a/arch/arm/mach-mvebu/armada-370-xp.c
> > +++ b/arch/arm/mach-mvebu/armada-370-xp.c
> > @@ -44,11 +44,21 @@ static inline void armada_370_xp_memory_find(unsigned long *phys_base,
> >  	}
> >  }
> >  
> > +static void __noreturn armada_370_xp_reset_cpu(unsigned long addr)
> > +{
> > +	writel(0x1, ARMADA_370_XP_SYSCTL_BASE + 0x60);
> > +	writel(0x1, ARMADA_370_XP_SYSCTL_BASE + 0x64);
> > +	while (1)
> > +		;
> > +}
> > +
> >  static int armada_370_xp_init_soc(void)
> >  {
> >  	unsigned long phys_base, phys_size;
> >  	u32 reg;
> >  
> > +	mvebu_set_reset(armada_370_xp_reset_cpu);
> > +
> >  	barebox_set_model("Marvell Armada 370/XP");
> >  	barebox_set_hostname("armada");
> >  
> > @@ -65,12 +75,3 @@ static int armada_370_xp_init_soc(void)
> >  	return 0;
> >  }
> >  core_initcall(armada_370_xp_init_soc);
> > -
> > -void __noreturn reset_cpu(unsigned long addr)
> > -{
> > -	writel(0x1, ARMADA_370_XP_SYSCTL_BASE + 0x60);
> > -	writel(0x1, ARMADA_370_XP_SYSCTL_BASE + 0x64);
> > -	while (1)
> > -		;
> > -}
> > -EXPORT_SYMBOL(reset_cpu);
> > diff --git a/arch/arm/mach-mvebu/common.c b/arch/arm/mach-mvebu/common.c
> > index ac4b332..5c3ac14 100644
> > --- a/arch/arm/mach-mvebu/common.c
> > +++ b/arch/arm/mach-mvebu/common.c
> > @@ -21,6 +21,7 @@
> >  #include <of.h>
> >  #include <of_address.h>
> >  #include <linux/clk.h>
> > +#include <mach/common.h>
> >  
> >  /*
> >   * Marvell MVEBU SoC id and revision can be read from any PCIe
> > @@ -137,4 +138,16 @@ static int mvebu_memory_of_fixup(struct device_node *root, void *context)
> >  static int mvebu_memory_fixup_register(void) {
> >  	return of_register_fixup(mvebu_memory_of_fixup, NULL);
> >  }
> > -pure_initcall(mvebu_memory_fixup_register);
> 
> Unrelated removal, this should move to the next patch.

Right, fixed this.

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
