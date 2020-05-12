Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYPa9-0006QK-Fm
 for barebox@lists.infradead.org; Tue, 12 May 2020 07:44:07 +0000
Date: Tue, 12 May 2020 09:44:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200512074402.GA5877@pengutronix.de>
References: <20200511074149.980042-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200511074149.980042-1-ahmad@a3f.at>
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
Subject: Re: [PATCH v2] stm32mp: init: fix up st, package into stm32mp
 pinctrl nodes
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org

On Mon, May 11, 2020 at 09:41:49AM +0200, Ahmad Fatoum wrote:
> Since Linux v5.1, the pinctrl driver can use the st,package property
> if provided to validate whether the ball to be configured exists
> on the package. The upstream device trees provide this property,
> but if we'll want barebox to supply it instead, so we can use the same
> barebox binary for different SoC variants.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
> v1 -> v2:
>   - Drop detour through nvmem cell to get package (Sascha)
>   - move fixup into init.c instead of pinctrl driver
> ---
>  arch/arm/mach-stm32mp/init.c | 63 +++++++++++++++++++++++++++---------
>  1 file changed, 48 insertions(+), 15 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-stm32mp/init.c b/arch/arm/mach-stm32mp/init.c
> index d687e44af1ff..7f687fa4f29a 100644
> --- a/arch/arm/mach-stm32mp/init.c
> +++ b/arch/arm/mach-stm32mp/init.c
> @@ -13,6 +13,7 @@
>  #include <mach/revision.h>
>  #include <mach/bootsource.h>
>  #include <bootsource.h>
> +#include <dt-bindings/pinctrl/stm32-pinfunc.h>
>  
>  /* DBGMCU register */
>  #define DBGMCU_IDC		(STM32_DBGMCU_BASE + 0x00)
> @@ -221,61 +222,83 @@ static int stm32mp15_fixup_cpus(struct device_node *root, void *_ctx)
>  	return 0;
>  }
>  
> +static int fixup_pinctrl(struct device_node *root, const char *compat, u32 pkg)
> +{
> +	struct device_node *np = of_find_compatible_node(root, NULL, compat);
> +	if (!np)
> +		return -ENODEV;
> +
> +	return of_property_write_u32(np, "st,package", pkg);
> +}
> +
> +static int stm32mp15_fixup_pkg(struct device_node *root, void *_pkg)
> +{
> +	unsigned long pkg = (unsigned long)_pkg;
> +	int ret;
> +
> +	ret = fixup_pinctrl(root, "st,stm32mp157-pinctrl", pkg);
> +	if (ret)
> +		return ret;
> +
> +	return fixup_pinctrl(root, "st,stm32mp157-z-pinctrl", pkg);
> +}
> +
>  static int setup_cpu_type(void)
>  {
>  	const char *cputypestr, *cpupkgstr, *cpurevstr;
> -	unsigned long fixupctx = 0;
> +	unsigned long cpufixupctx = 0, pkgfixupctx = 0;
>  	u32 pkg;
> +	int ret;
>  
>  	get_cpu_type(&__stm32mp_cputype);
>  	switch (__stm32mp_cputype) {
>  	case CPU_STM32MP157Fxx:
>  		cputypestr = "157F";
> -		fixupctx = FIXUP_CPU_MASK(2, 800);
> +		cpufixupctx = FIXUP_CPU_MASK(2, 800);
>  		break;
>  	case CPU_STM32MP157Dxx:
>  		cputypestr = "157D";
> -		fixupctx = FIXUP_CPU_MASK(2, 800);
> +		cpufixupctx = FIXUP_CPU_MASK(2, 800);
>  		break;
>  	case CPU_STM32MP157Cxx:
>  		cputypestr = "157C";
> -		fixupctx = FIXUP_CPU_MASK(2, 650);
> +		cpufixupctx = FIXUP_CPU_MASK(2, 650);
>  		break;
>  	case CPU_STM32MP157Axx:
>  		cputypestr = "157A";
> -		fixupctx = FIXUP_CPU_MASK(2, 650);
> +		cpufixupctx = FIXUP_CPU_MASK(2, 650);
>  		break;
>  	case CPU_STM32MP153Fxx:
>  		cputypestr = "153F";
> -		fixupctx = FIXUP_CPU_MASK(2, 800);
> +		cpufixupctx = FIXUP_CPU_MASK(2, 800);
>  		break;
>  	case CPU_STM32MP153Dxx:
>  		cputypestr = "153D";
> -		fixupctx = FIXUP_CPU_MASK(2, 800);
> +		cpufixupctx = FIXUP_CPU_MASK(2, 800);
>  		break;
>  	case CPU_STM32MP153Cxx:
>  		cputypestr = "153C";
> -		fixupctx = FIXUP_CPU_MASK(2, 650);
> +		cpufixupctx = FIXUP_CPU_MASK(2, 650);
>  		break;
>  	case CPU_STM32MP153Axx:
>  		cputypestr = "153A";
> -		fixupctx = FIXUP_CPU_MASK(2, 650);
> +		cpufixupctx = FIXUP_CPU_MASK(2, 650);
>  		break;
>  	case CPU_STM32MP151Cxx:
>  		cputypestr = "151C";
> -		fixupctx = FIXUP_CPU_MASK(1, 650);
> +		cpufixupctx = FIXUP_CPU_MASK(1, 650);
>  		break;
>  	case CPU_STM32MP151Axx:
>  		cputypestr = "151A";
> -		fixupctx = FIXUP_CPU_MASK(1, 650);
> +		cpufixupctx = FIXUP_CPU_MASK(1, 650);
>  		break;
>  	case CPU_STM32MP151Fxx:
>  		cputypestr = "151F";
> -		fixupctx = FIXUP_CPU_MASK(1, 800);
> +		cpufixupctx = FIXUP_CPU_MASK(1, 800);
>  		break;
>  	case CPU_STM32MP151Dxx:
>  		cputypestr = "151D";
> -		fixupctx = FIXUP_CPU_MASK(1, 800);
> +		cpufixupctx = FIXUP_CPU_MASK(1, 800);
>  		break;
>  	default:
>  		cputypestr = "????";
> @@ -286,15 +309,19 @@ static int setup_cpu_type(void)
>  	switch (__stm32mp_package) {
>  	case PKG_AA_LBGA448:
>  		cpupkgstr = "AA";
> +		pkgfixupctx = STM32MP_PKG_AA;
>  		break;
>  	case PKG_AB_LBGA354:
>  		cpupkgstr = "AB";
> +		pkgfixupctx = STM32MP_PKG_AB;
>  		break;
>  	case PKG_AC_TFBGA361:
>  		cpupkgstr = "AC";
> +		pkgfixupctx = STM32MP_PKG_AC;
>  		break;
>  	case PKG_AD_TFBGA257:
>  		cpupkgstr = "AD";
> +		pkgfixupctx = STM32MP_PKG_AD;
>  		break;
>  	default:
>  		cpupkgstr = "??";
> @@ -320,8 +347,14 @@ static int setup_cpu_type(void)
>  		 __stm32mp_cputype, pkg, __stm32mp_silicon_revision);
>  	pr_info("detected STM32MP%s%s Rev.%s\n", cputypestr, cpupkgstr, cpurevstr);
>  
> -	if (fixupctx)
> -		return of_register_fixup(stm32mp15_fixup_cpus, (void*)fixupctx);
> +	if (cpufixupctx) {
> +		ret = of_register_fixup(stm32mp15_fixup_cpus, (void*)cpufixupctx);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	if (pkgfixupctx)
> +		return of_register_fixup(stm32mp15_fixup_pkg, (void*)pkgfixupctx);
>  
>  	return 0;
>  }
> -- 
> 2.20.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
