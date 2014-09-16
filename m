Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x231.google.com ([2a00:1450:400c:c03::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XTyFl-0004Nn-6s
 for barebox@lists.infradead.org; Tue, 16 Sep 2014 19:17:29 +0000
Received: by mail-we0-f177.google.com with SMTP id u57so319721wes.36
 for <barebox@lists.infradead.org>; Tue, 16 Sep 2014 12:17:06 -0700 (PDT)
Message-ID: <54188CAF.40409@gmail.com>
Date: Tue, 16 Sep 2014 21:17:03 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1410766873-4393-1-git-send-email-s.hauer@pengutronix.de>
 <1410766873-4393-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1410766873-4393-2-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 1/5] ARM: mvebu: Add common reset_cpu function
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org

On 09/15/2014 09:41 AM, Sascha Hauer wrote:
> mvebu has a reset_cpu function per SoC this does not work when multiple
> SoCs are selected, so add a common reset_cpu function which calls into
> the SoC specific ones.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/mach-mvebu/armada-370-xp.c       | 19 ++++++++++---------
>  arch/arm/mach-mvebu/common.c              | 15 ++++++++++++++-
>  arch/arm/mach-mvebu/dove.c                | 21 +++++++++++----------
>  arch/arm/mach-mvebu/include/mach/common.h |  1 +
>  arch/arm/mach-mvebu/kirkwood.c            | 19 ++++++++++---------
>  5 files changed, 46 insertions(+), 29 deletions(-)
> 
> diff --git a/arch/arm/mach-mvebu/armada-370-xp.c b/arch/arm/mach-mvebu/armada-370-xp.c
> index f2b991e..6251100 100644
> --- a/arch/arm/mach-mvebu/armada-370-xp.c
> +++ b/arch/arm/mach-mvebu/armada-370-xp.c
> @@ -44,11 +44,21 @@ static inline void armada_370_xp_memory_find(unsigned long *phys_base,
>  	}
>  }
>  
> +static void __noreturn armada_370_xp_reset_cpu(unsigned long addr)
> +{
> +	writel(0x1, ARMADA_370_XP_SYSCTL_BASE + 0x60);
> +	writel(0x1, ARMADA_370_XP_SYSCTL_BASE + 0x64);
> +	while (1)
> +		;
> +}
> +
>  static int armada_370_xp_init_soc(void)
>  {
>  	unsigned long phys_base, phys_size;
>  	u32 reg;
>  
> +	mvebu_set_reset(armada_370_xp_reset_cpu);
> +
>  	barebox_set_model("Marvell Armada 370/XP");
>  	barebox_set_hostname("armada");
>  
> @@ -65,12 +75,3 @@ static int armada_370_xp_init_soc(void)
>  	return 0;
>  }
>  core_initcall(armada_370_xp_init_soc);
> -
> -void __noreturn reset_cpu(unsigned long addr)
> -{
> -	writel(0x1, ARMADA_370_XP_SYSCTL_BASE + 0x60);
> -	writel(0x1, ARMADA_370_XP_SYSCTL_BASE + 0x64);
> -	while (1)
> -		;
> -}
> -EXPORT_SYMBOL(reset_cpu);
> diff --git a/arch/arm/mach-mvebu/common.c b/arch/arm/mach-mvebu/common.c
> index ac4b332..5c3ac14 100644
> --- a/arch/arm/mach-mvebu/common.c
> +++ b/arch/arm/mach-mvebu/common.c
> @@ -21,6 +21,7 @@
>  #include <of.h>
>  #include <of_address.h>
>  #include <linux/clk.h>
> +#include <mach/common.h>
>  
>  /*
>   * Marvell MVEBU SoC id and revision can be read from any PCIe
> @@ -137,4 +138,16 @@ static int mvebu_memory_of_fixup(struct device_node *root, void *context)
>  static int mvebu_memory_fixup_register(void) {
>  	return of_register_fixup(mvebu_memory_of_fixup, NULL);
>  }
> -pure_initcall(mvebu_memory_fixup_register);

Unrelated removal, this should move to the next patch.

Sebastian

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
