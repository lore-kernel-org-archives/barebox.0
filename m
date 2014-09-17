Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XU8zV-0000n9-RA
 for barebox@lists.infradead.org; Wed, 17 Sep 2014 06:45:26 +0000
Date: Wed, 17 Sep 2014 08:45:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140917064503.GM4992@pengutronix.de>
References: <1410766873-4393-1-git-send-email-s.hauer@pengutronix.de>
 <1410766873-4393-3-git-send-email-s.hauer@pengutronix.de>
 <54189818.6000300@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <54189818.6000300@gmail.com>
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
Subject: Re: [PATCH 2/5] ARM: mvebu: Simplify memory init order
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Sep 16, 2014 at 10:05:44PM +0200, Sebastian Hesselbarth wrote:
> On 09/15/2014 09:41 AM, Sascha Hauer wrote:
> > The initialisation of the memory nodes on mvebu is a bit
> > compilcated:
> > 
> > pure_initcall(mvebu_memory_fixup_register)
> > 	of_register_fixup(mvebu_memory_of_fixup, NULL)
> > core_initcall(kirkwood_init_soc)
> > 	mvebu_set_memory()
> > core_initcall(of_arm_init)
> > 	of_fix_tree()
> > 		mvebu_memory_of_fixup()
> > 
> > First a mvebu common of_fixup function is registered, then the SoC
> > calls mvebu_set_memory which stores the memory base and size in global
> > variables. Afterwards the of_fixup is executed which fixes the memory
> > nodes according to the global variables.
> > 
> > Instead register a SoC specific fixup which directly calls mvebu_set_memory
> > with the memory base and size as arguments:
> > 
> > pure_initcall(kirkwood_register_soc_fixup);
> > 	of_register_fixup(kirkwood_init_soc, NULL);
> > core_initcall(of_arm_init)
> > 	of_fix_tree()
> > 		kirkwood_init_soc()
> > 			mvebu_set_memory(phys_base, phys_size);
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> 
> Hmm, this breaks Armada 370 and most likely also Armada XP. Actually,
> it breaks any SoC that has a DTB with internal regs set to 0xd0000000.
> 
> > ---
> >  arch/arm/mach-mvebu/armada-370-xp.c       |  9 ++++++--
> >  arch/arm/mach-mvebu/common.c              | 34 ++++++++++---------------------
> >  arch/arm/mach-mvebu/dove.c                |  9 ++++++--
> >  arch/arm/mach-mvebu/include/mach/common.h |  2 +-
> >  arch/arm/mach-mvebu/kirkwood.c            |  9 ++++++--
> >  5 files changed, 33 insertions(+), 30 deletions(-)
> > 
> > diff --git a/arch/arm/mach-mvebu/armada-370-xp.c b/arch/arm/mach-mvebu/armada-370-xp.c
> > index 6251100..5c8499b 100644
> > --- a/arch/arm/mach-mvebu/armada-370-xp.c
> > +++ b/arch/arm/mach-mvebu/armada-370-xp.c
> > @@ -52,7 +52,7 @@ static void __noreturn armada_370_xp_reset_cpu(unsigned long addr)
> >  		;
> >  }
> >  
> > -static int armada_370_xp_init_soc(void)
> > +static int armada_370_xp_init_soc(struct device_node *root, void *context)
> >  {
> >  	unsigned long phys_base, phys_size;
> >  	u32 reg;
> > @@ -74,4 +74,9 @@ static int armada_370_xp_init_soc(void)
> 
> Because armada_370_xp_init_soc() does
> 
> 	mvebu_mbus_add_range(0xf0, 0x01, MVEBU_REMAP_INT_REG_BASE);
> 
> right above, which will add the range(s) required for internal register
> of_fixup. Since this patch moved armada_370_xp_init_soc to the
> of_fixups, we don't fix this up for the initial DT tree.
> 
> >  
> >  	return 0;
> >  }
> > -core_initcall(armada_370_xp_init_soc);
> > +
> > +static int armada_370_register_soc_fixup(void)
> > +{
> 
> I guess moving mvebu_mbus_add_range() in here does not work, because
> it will add the armada_370_xp range also for dove and kirkwood.

Do we need a separate of_fixup registered for fixing up the mbus? Can't
we just call mvebu_mbus_of_fixup() directly from mvebu_mbus_add_range()?

This won't be very efficient for dove which calls mvebu_mbus_add_range()
twice so it has to iterate over the device tree twice, but it should
work, right?

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
