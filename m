Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S7QmN-0003Kc-4y
 for barebox@lists.infradead.org; Tue, 13 Mar 2012 12:24:40 +0000
Date: Tue, 13 Mar 2012 13:24:31 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120313122431.GX3852@pengutronix.de>
References: <20120309115821.GA14770@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120309115821.GA14770@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] imx_nand_load_image: change all users to use
 barebox_image_size
To: Michael Grzeschik <m.grzeschik@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Mar 09, 2012 at 12:58:21PM +0100, Michael Grzeschik wrote:
> Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> ---
>  arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c |    3 ++-
>  arch/arm/boards/eukrea_cpuimx25/lowlevel.c        |    3 ++-
>  arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c |    3 ++-
>  arch/arm/boards/eukrea_cpuimx35/lowlevel.c        |    3 ++-
>  arch/arm/boards/freescale-mx25-3-stack/3stack.c   |    3 ++-
>  arch/arm/boards/freescale-mx35-3-stack/3stack.c   |    3 ++-
>  arch/arm/boards/guf-cupid/lowlevel.c              |    3 ++-
>  arch/arm/boards/guf-neso/lowlevel.c               |    3 ++-
>  arch/arm/boards/imx21ads/imx21ads.c               |    3 ++-
>  arch/arm/boards/karo-tx25/board.c                 |    3 ++-
>  arch/arm/boards/karo-tx25/lowlevel.c              |    3 ++-
>  arch/arm/boards/pcm037/pcm037.c                   |    3 ++-
>  arch/arm/boards/pcm038/lowlevel.c                 |    3 ++-
>  arch/arm/boards/pcm043/lowlevel.c                 |    3 ++-
>  arch/arm/boards/phycard-i.MX27/pca100.c           |    3 ++-
>  15 files changed, 30 insertions(+), 15 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
> index 695e75f..1e45779 100644
> --- a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
> +++ b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
> @@ -28,6 +28,7 @@
>  #include <environment.h>
>  #include <mach/imx-regs.h>
>  #include <asm/armlinux.h>
> +#include <asm-generic/sections.h>
>  #include <mach/gpio.h>
>  #include <io.h>
>  #include <asm/mmu.h>
> @@ -279,7 +280,7 @@ console_initcall(eukrea_cpuimx25_console_init);
>  #ifdef CONFIG_NAND_IMX_BOOT
>  void __bare_init nand_boot(void)
>  {
> -	imx_nand_load_image((void *)TEXT_BASE, 256 * 1024);
> +	imx_nand_load_image((void *)TEXT_BASE, barebox_image_size);
>  }
>  #endif
>  
> diff --git a/arch/arm/boards/eukrea_cpuimx25/lowlevel.c b/arch/arm/boards/eukrea_cpuimx25/lowlevel.c
> index 1221973..ff66e92 100644
> --- a/arch/arm/boards/eukrea_cpuimx25/lowlevel.c
> +++ b/arch/arm/boards/eukrea_cpuimx25/lowlevel.c
> @@ -29,6 +29,7 @@
>  #include <io.h>
>  #include <mach/imx-nand.h>
>  #include <asm/barebox-arm.h>
> +#include <asm-generic/sections.h>
>  #include <asm-generic/memory_layout.h>
>  #include <asm/system.h>
>  
> @@ -41,7 +42,7 @@ static void __bare_init __naked insdram(void)
>  	r = STACK_BASE + STACK_SIZE - 12;
>  	__asm__ __volatile__("mov sp, %0" : : "r"(r));
>  
> -	imx_nand_load_image((void *)TEXT_BASE, 256 * 1024);
> +	imx_nand_load_image((void *)TEXT_BASE, barebox_image_size);
>  
>  	board_init_lowlevel_return();
>  }
> diff --git a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
> index e2766fb..6b233b2 100644
> --- a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
> +++ b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
> @@ -30,6 +30,7 @@
>  #include <notifier.h>
>  #include <mach/gpio.h>
>  #include <asm/armlinux.h>
> +#include <asm-generic/sections.h>
>  #include <generated/mach-types.h>
>  #include <mach/pmic.h>
>  #include <partition.h>
> @@ -268,7 +269,7 @@ late_initcall(eukrea_cpuimx27_late_init);
>  #ifdef CONFIG_NAND_IMX_BOOT
>  void __bare_init nand_boot(void)
>  {
> -	imx_nand_load_image((void *)TEXT_BASE, 256 * 1024);
> +	imx_nand_load_image((void *)TEXT_BASE, barebox_image_size);
>  }
>  #endif
>  
> diff --git a/arch/arm/boards/eukrea_cpuimx35/lowlevel.c b/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
> index 969c813..552b0cf 100644
> --- a/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
> +++ b/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
> @@ -29,6 +29,7 @@
>  #include <io.h>
>  #include <mach/imx-nand.h>
>  #include <asm/barebox-arm.h>
> +#include <asm-generic/sections.h>
>  #include <asm-generic/memory_layout.h>
>  #include <asm/system.h>
>  
> @@ -52,7 +53,7 @@ static void __bare_init __naked insdram(void)
>  	r = STACK_BASE + STACK_SIZE - 12;
>  	__asm__ __volatile__("mov sp, %0" : : "r"(r));
>  
> -	imx_nand_load_image((void *)TEXT_BASE, 256 * 1024);
> +	imx_nand_load_image((void *)TEXT_BASE, barebox_image_size);
>  
>  	board_init_lowlevel_return();
>  }
> diff --git a/arch/arm/boards/freescale-mx25-3-stack/3stack.c b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
> index d7e24cf..f684864 100644
> --- a/arch/arm/boards/freescale-mx25-3-stack/3stack.c
> +++ b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
> @@ -27,6 +27,7 @@
>  #include <environment.h>
>  #include <mach/imx-regs.h>
>  #include <asm/armlinux.h>
> +#include <asm-generic/sections.h>
>  #include <mach/gpio.h>
>  #include <io.h>
>  #include <partition.h>
> @@ -298,7 +299,7 @@ console_initcall(imx25_console_init);
>  #ifdef CONFIG_NAND_IMX_BOOT
>  void __bare_init nand_boot(void)
>  {
> -	imx_nand_load_image((void *)TEXT_BASE, 256 * 1024);
> +	imx_nand_load_image((void *)TEXT_BASE, barebox_image_size);
>  }
>  #endif
>  
> diff --git a/arch/arm/boards/freescale-mx35-3-stack/3stack.c b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
> index 7ae2352..cb30e6c 100644
> --- a/arch/arm/boards/freescale-mx35-3-stack/3stack.c
> +++ b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
> @@ -37,6 +37,7 @@
>  #include <partition.h>
>  
>  #include <asm/armlinux.h>
> +#include <asm-generic/sections.h>
>  #include <io.h>
>  #include <generated/mach-types.h>
>  
> @@ -450,6 +451,6 @@ void __bare_init nand_boot(void)
>  	 * The driver is able to detect NAND's pagesize by CPU internal
>  	 * fuses or external pull ups. But not the blocksize...
>  	 */
> -	imx_nand_load_image((void *)TEXT_BASE, 256 * 1024);
> +	imx_nand_load_image((void *)TEXT_BASE, barebox_image_size);
>  }
>  #endif
> diff --git a/arch/arm/boards/guf-cupid/lowlevel.c b/arch/arm/boards/guf-cupid/lowlevel.c
> index 396604d..bcaa199 100644
> --- a/arch/arm/boards/guf-cupid/lowlevel.c
> +++ b/arch/arm/boards/guf-cupid/lowlevel.c
> @@ -29,6 +29,7 @@
>  #include <io.h>
>  #include <mach/imx-nand.h>
>  #include <asm/barebox-arm.h>
> +#include <asm-generic/sections.h>
>  #include <asm-generic/memory_layout.h>
>  #include <asm/system.h>
>  
> @@ -59,7 +60,7 @@ static void __bare_init __naked insdram(void)
>  	r = STACK_BASE + STACK_SIZE - 12;
>  	__asm__ __volatile__("mov sp, %0" : : "r"(r));
>  
> -	imx_nand_load_image((void *)TEXT_BASE, 256 * 1024);
> +	imx_nand_load_image((void *)TEXT_BASE, barebox_image_size);
>  
>  	board_init_lowlevel_return();
>  }
> diff --git a/arch/arm/boards/guf-neso/lowlevel.c b/arch/arm/boards/guf-neso/lowlevel.c
> index b1ad621..a8718e7 100644
> --- a/arch/arm/boards/guf-neso/lowlevel.c
> +++ b/arch/arm/boards/guf-neso/lowlevel.c
> @@ -30,6 +30,7 @@
>  #include <mach/imx-nand.h>
>  #include <asm/barebox-arm.h>
>  #include <asm/system.h>
> +#include <asm-generic/sections.h>
>  #include <asm-generic/memory_layout.h>
>  
>  #ifdef CONFIG_NAND_IMX_BOOT
> @@ -43,7 +44,7 @@ static void __bare_init __naked insdram(void)
>  	r = STACK_BASE + STACK_SIZE - 12;
>  	__asm__ __volatile__("mov sp, %0" : : "r"(r));
>  
> -	imx_nand_load_image((void *)TEXT_BASE, 256 * 1024);
> +	imx_nand_load_image((void *)TEXT_BASE, barebox_image_size);
>  
>  	board_init_lowlevel_return();
>  }
> diff --git a/arch/arm/boards/imx21ads/imx21ads.c b/arch/arm/boards/imx21ads/imx21ads.c
> index fde6774..a0c9fb6 100644
> --- a/arch/arm/boards/imx21ads/imx21ads.c
> +++ b/arch/arm/boards/imx21ads/imx21ads.c
> @@ -27,6 +27,7 @@
>  #include <environment.h>
>  #include <mach/imx-regs.h>
>  #include <asm/armlinux.h>
> +#include <asm-generic/sections.h>
>  #include <io.h>
>  #include <mach/gpio.h>
>  #include <partition.h>
> @@ -203,7 +204,7 @@ console_initcall(mx21ads_console_init);
>  void __bare_init nand_boot(void)
>  {
>  	PCCR0 |= PCCR0_NFC_EN;
> -	imx_nand_load_image((void *)TEXT_BASE, 256 * 1024);
> +	imx_nand_load_image((void *)TEXT_BASE, barebox_image_size);
>  }
>  #endif
>  
> diff --git a/arch/arm/boards/karo-tx25/board.c b/arch/arm/boards/karo-tx25/board.c
> index bfccd0c..451d91d 100644
> --- a/arch/arm/boards/karo-tx25/board.c
> +++ b/arch/arm/boards/karo-tx25/board.c
> @@ -27,6 +27,7 @@
>  #include <environment.h>
>  #include <mach/imx-regs.h>
>  #include <asm/armlinux.h>
> +#include <asm-generic/sections.h>
>  #include <mach/gpio.h>
>  #include <io.h>
>  #include <partition.h>
> @@ -167,7 +168,7 @@ console_initcall(tx25_console_init);
>  #ifdef CONFIG_NAND_IMX_BOOT
>  void __bare_init nand_boot(void)
>  {
> -	imx_nand_load_image((void *)TEXT_BASE, 256 * 1024);
> +	imx_nand_load_image((void *)TEXT_BASE, barebox_image_size);
>  }
>  #endif
>  
> diff --git a/arch/arm/boards/karo-tx25/lowlevel.c b/arch/arm/boards/karo-tx25/lowlevel.c
> index 09c0339..35dfe9f 100644
> --- a/arch/arm/boards/karo-tx25/lowlevel.c
> +++ b/arch/arm/boards/karo-tx25/lowlevel.c
> @@ -28,6 +28,7 @@
>  #include <mach/imx-nand.h>
>  #include <asm/barebox-arm.h>
>  #include <asm/system.h>
> +#include <asm-generic/sections.h>
>  #include <asm-generic/memory_layout.h>
>  
>  #ifdef CONFIG_NAND_IMX_BOOT
> @@ -39,7 +40,7 @@ static void __bare_init __naked insdram(void)
>  	r = STACK_BASE + STACK_SIZE - 12;
>  	__asm__ __volatile__("mov sp, %0" : : "r"(r));
>  
> -	imx_nand_load_image((void *)TEXT_BASE, 256 * 1024);
> +	imx_nand_load_image((void *)TEXT_BASE, barebox_image_size);
>  
>  	board_init_lowlevel_return();
>  }
> diff --git a/arch/arm/boards/pcm037/pcm037.c b/arch/arm/boards/pcm037/pcm037.c
> index 42a543d..d59612f 100644
> --- a/arch/arm/boards/pcm037/pcm037.c
> +++ b/arch/arm/boards/pcm037/pcm037.c
> @@ -31,6 +31,7 @@
>  #include <mach/imx-regs.h>
>  #include <mach/iomux-mx31.h>
>  #include <asm/armlinux.h>
> +#include <asm-generic/sections.h>
>  #include <mach/gpio.h>
>  #include <io.h>
>  #include <asm/mmu.h>
> @@ -245,6 +246,6 @@ console_initcall(imx31_console_init);
>  #ifdef CONFIG_NAND_IMX_BOOT
>  void __bare_init nand_boot(void)
>  {
> -	imx_nand_load_image((void *)TEXT_BASE, 256 * 1024);
> +	imx_nand_load_image((void *)TEXT_BASE, barebox_image_size);
>  }
>  #endif
> diff --git a/arch/arm/boards/pcm038/lowlevel.c b/arch/arm/boards/pcm038/lowlevel.c
> index 3239263..2bc89a0 100644
> --- a/arch/arm/boards/pcm038/lowlevel.c
> +++ b/arch/arm/boards/pcm038/lowlevel.c
> @@ -30,6 +30,7 @@
>  #include <asm/barebox-arm.h>
>  #include <asm/system.h>
>  #include <asm-generic/memory_layout.h>
> +#include <asm-generic/sections.h>
>  
>  #include "pll.h"
>  
> @@ -44,7 +45,7 @@ static void __bare_init __naked insdram(void)
>  	r = STACK_BASE + STACK_SIZE - 12;
>  	__asm__ __volatile__("mov sp, %0" : : "r"(r));
>  
> -	imx_nand_load_image((void *)TEXT_BASE, 256 * 1024);
> +	imx_nand_load_image((void *)TEXT_BASE, barebox_image_size);
>  
>  	board_init_lowlevel_return();
>  }
> diff --git a/arch/arm/boards/pcm043/lowlevel.c b/arch/arm/boards/pcm043/lowlevel.c
> index 40e3204..69cc4f1 100644
> --- a/arch/arm/boards/pcm043/lowlevel.c
> +++ b/arch/arm/boards/pcm043/lowlevel.c
> @@ -29,6 +29,7 @@
>  #include <io.h>
>  #include <mach/imx-nand.h>
>  #include <asm/barebox-arm.h>
> +#include <asm-generic/sections.h>
>  #include <asm-generic/memory_layout.h>
>  #include <asm/system.h>
>  
> @@ -57,7 +58,7 @@ static void __bare_init __naked insdram(void)
>  	r = STACK_BASE + STACK_SIZE - 12;
>  	__asm__ __volatile__("mov sp, %0" : : "r"(r));
>  
> -	imx_nand_load_image((void *)TEXT_BASE, 256 * 1024);
> +	imx_nand_load_image((void *)TEXT_BASE, barebox_image_size);
>  
>  	board_init_lowlevel_return();
>  }
> diff --git a/arch/arm/boards/phycard-i.MX27/pca100.c b/arch/arm/boards/phycard-i.MX27/pca100.c
> index 1b43951..a2ea05a 100644
> --- a/arch/arm/boards/phycard-i.MX27/pca100.c
> +++ b/arch/arm/boards/phycard-i.MX27/pca100.c
> @@ -26,6 +26,7 @@
>  #include <fec.h>
>  #include <mach/gpio.h>
>  #include <asm/armlinux.h>
> +#include <asm-generic/sections.h>
>  #include <generated/mach-types.h>
>  #include <partition.h>
>  #include <fs.h>
> @@ -327,7 +328,7 @@ console_initcall(pca100_console_init);
>  #ifdef CONFIG_NAND_IMX_BOOT
>  void __bare_init nand_boot(void)
>  {
> -	imx_nand_load_image((void *)TEXT_BASE, 256 * 1024);
> +	imx_nand_load_image((void *)TEXT_BASE, barebox_image_size);
>  }
>  #endif
>  
> -- 
> 1.7.9.1
> 
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
