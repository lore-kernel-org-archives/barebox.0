Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x233.google.com ([2a00:1450:400c:c00::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XTz0r-0002cj-PE
 for barebox@lists.infradead.org; Tue, 16 Sep 2014 20:06:10 +0000
Received: by mail-wg0-f51.google.com with SMTP id k14so374101wgh.10
 for <barebox@lists.infradead.org>; Tue, 16 Sep 2014 13:05:47 -0700 (PDT)
Message-ID: <54189818.6000300@gmail.com>
Date: Tue, 16 Sep 2014 22:05:44 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1410766873-4393-1-git-send-email-s.hauer@pengutronix.de>
 <1410766873-4393-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1410766873-4393-3-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/5] ARM: mvebu: Simplify memory init order
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org

On 09/15/2014 09:41 AM, Sascha Hauer wrote:
> The initialisation of the memory nodes on mvebu is a bit
> compilcated:
> 
> pure_initcall(mvebu_memory_fixup_register)
> 	of_register_fixup(mvebu_memory_of_fixup, NULL)
> core_initcall(kirkwood_init_soc)
> 	mvebu_set_memory()
> core_initcall(of_arm_init)
> 	of_fix_tree()
> 		mvebu_memory_of_fixup()
> 
> First a mvebu common of_fixup function is registered, then the SoC
> calls mvebu_set_memory which stores the memory base and size in global
> variables. Afterwards the of_fixup is executed which fixes the memory
> nodes according to the global variables.
> 
> Instead register a SoC specific fixup which directly calls mvebu_set_memory
> with the memory base and size as arguments:
> 
> pure_initcall(kirkwood_register_soc_fixup);
> 	of_register_fixup(kirkwood_init_soc, NULL);
> core_initcall(of_arm_init)
> 	of_fix_tree()
> 		kirkwood_init_soc()
> 			mvebu_set_memory(phys_base, phys_size);
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Hmm, this breaks Armada 370 and most likely also Armada XP. Actually,
it breaks any SoC that has a DTB with internal regs set to 0xd0000000.

> ---
>  arch/arm/mach-mvebu/armada-370-xp.c       |  9 ++++++--
>  arch/arm/mach-mvebu/common.c              | 34 ++++++++++---------------------
>  arch/arm/mach-mvebu/dove.c                |  9 ++++++--
>  arch/arm/mach-mvebu/include/mach/common.h |  2 +-
>  arch/arm/mach-mvebu/kirkwood.c            |  9 ++++++--
>  5 files changed, 33 insertions(+), 30 deletions(-)
> 
> diff --git a/arch/arm/mach-mvebu/armada-370-xp.c b/arch/arm/mach-mvebu/armada-370-xp.c
> index 6251100..5c8499b 100644
> --- a/arch/arm/mach-mvebu/armada-370-xp.c
> +++ b/arch/arm/mach-mvebu/armada-370-xp.c
> @@ -52,7 +52,7 @@ static void __noreturn armada_370_xp_reset_cpu(unsigned long addr)
>  		;
>  }
>  
> -static int armada_370_xp_init_soc(void)
> +static int armada_370_xp_init_soc(struct device_node *root, void *context)
>  {
>  	unsigned long phys_base, phys_size;
>  	u32 reg;
> @@ -74,4 +74,9 @@ static int armada_370_xp_init_soc(void)

Because armada_370_xp_init_soc() does

	mvebu_mbus_add_range(0xf0, 0x01, MVEBU_REMAP_INT_REG_BASE);

right above, which will add the range(s) required for internal register
of_fixup. Since this patch moved armada_370_xp_init_soc to the
of_fixups, we don't fix this up for the initial DT tree.

>  
>  	return 0;
>  }
> -core_initcall(armada_370_xp_init_soc);
> +
> +static int armada_370_register_soc_fixup(void)
> +{

I guess moving mvebu_mbus_add_range() in here does not work, because
it will add the armada_370_xp range also for dove and kirkwood.

> +	return of_register_fixup(armada_370_xp_init_soc, NULL);
> +}
> +pure_initcall(armada_370_register_soc_fixup);

nit: s/armada_370_/armada_370_xp_/

I like the overall change, but haven't made my mind how this will work
out..

Sebastian


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
