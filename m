Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gkRjA-0005d1-61
 for barebox@lists.infradead.org; Fri, 18 Jan 2019 10:50:22 +0000
Date: Fri, 18 Jan 2019 11:50:18 +0100
From: Roland Hieber <rhi@pengutronix.de>
Message-ID: <20190118105018.fssx46kgru7mypha@pengutronix.de>
References: <20190117142138.21679-1-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190117142138.21679-1-shc_work@mail.ru>
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
Subject: Re: [PATCH 1/2] ARN: boards: Remove duplicate includes
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

Did you mean "ARM" in the subject? :-)

 - Roland

On Thu, Jan 17, 2019 at 05:21:37PM +0300, Alexander Shiyan wrote:
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  arch/arm/boards/advantech-mx6/lowlevel.c        | 3 ---
>  arch/arm/boards/beaglebone/board.c              | 1 -
>  arch/arm/boards/karo-tx25/lowlevel.c            | 1 -
>  arch/arm/boards/mx31moboard/lowlevel.c          | 1 -
>  arch/arm/boards/panda/board.c                   | 1 -
>  arch/arm/boards/phytec-phycard-imx27/pca100.c   | 1 -
>  arch/arm/boards/phytec-phycore-imx31/lowlevel.c | 1 -
>  arch/arm/boards/phytec-som-imx6/board.c         | 2 --
>  arch/arm/boards/sama5d3xek/init.c               | 1 -
>  arch/arm/boards/vscom-baltos/board.c            | 1 -
>  10 files changed, 13 deletions(-)
> 
> diff --git a/arch/arm/boards/advantech-mx6/lowlevel.c b/arch/arm/boards/advantech-mx6/lowlevel.c
> index 8921cd4..de1d344 100644
> --- a/arch/arm/boards/advantech-mx6/lowlevel.c
> +++ b/arch/arm/boards/advantech-mx6/lowlevel.c
> @@ -23,9 +23,6 @@
>  #include <mach/iomux-mx6.h>
>  #include <linux/sizes.h>
>  
> -#include <linux/sizes.h>
> -#include <asm/barebox-arm-head.h>
> -#include <asm/barebox-arm.h>
>  static inline void setup_uart(void)
>  {
>  	void __iomem *iomuxbase = (void *)MX6_IOMUXC_BASE_ADDR;
> diff --git a/arch/arm/boards/beaglebone/board.c b/arch/arm/boards/beaglebone/board.c
> index 5717c45..819bdfa 100644
> --- a/arch/arm/boards/beaglebone/board.c
> +++ b/arch/arm/boards/beaglebone/board.c
> @@ -29,7 +29,6 @@
>  #include <globalvar.h>
>  #include <linux/sizes.h>
>  #include <net.h>
> -#include <envfs.h>
>  #include <bootsource.h>
>  #include <asm/armlinux.h>
>  #include <generated/mach-types.h>
> diff --git a/arch/arm/boards/karo-tx25/lowlevel.c b/arch/arm/boards/karo-tx25/lowlevel.c
> index 78e6f4d..3bbc930 100644
> --- a/arch/arm/boards/karo-tx25/lowlevel.c
> +++ b/arch/arm/boards/karo-tx25/lowlevel.c
> @@ -23,7 +23,6 @@
>  #include <io.h>
>  #include <linux/sizes.h>
>  #include <mach/imx-nand.h>
> -#include <mach/esdctl.h>
>  #include <asm/barebox-arm.h>
>  #include <asm/barebox-arm-head.h>
>  #include <asm/system.h>
> diff --git a/arch/arm/boards/mx31moboard/lowlevel.c b/arch/arm/boards/mx31moboard/lowlevel.c
> index b00c4bb..02b7ab3 100644
> --- a/arch/arm/boards/mx31moboard/lowlevel.c
> +++ b/arch/arm/boards/mx31moboard/lowlevel.c
> @@ -27,7 +27,6 @@
>  #include <asm/barebox-arm-head.h>
>  #include <mach/imx31-regs.h>
>  #include <mach/imx-pll.h>
> -#include <asm/barebox-arm-head.h>
>  #include <mach/esdctl.h>
>  
>  static noinline __noreturn void mx31moboard_startup(void)
> diff --git a/arch/arm/boards/panda/board.c b/arch/arm/boards/panda/board.c
> index acba689..a0a0078 100644
> --- a/arch/arm/boards/panda/board.c
> +++ b/arch/arm/boards/panda/board.c
> @@ -18,7 +18,6 @@
>  #include <asm/mmu.h>
>  #include <envfs.h>
>  #include <i2c/i2c.h>
> -#include <gpio.h>
>  #include <led.h>
>  
>  static int board_revision;
> diff --git a/arch/arm/boards/phytec-phycard-imx27/pca100.c b/arch/arm/boards/phytec-phycard-imx27/pca100.c
> index b0fee46..60f1505 100644
> --- a/arch/arm/boards/phytec-phycard-imx27/pca100.c
> +++ b/arch/arm/boards/phytec-phycard-imx27/pca100.c
> @@ -33,7 +33,6 @@
>  #include <mach/imx-nand.h>
>  #include <mach/imx-pll.h>
>  #include <mach/imxfb.h>
> -#include <gpio.h>
>  #include <asm/mmu.h>
>  #include <usb/ulpi.h>
>  #include <mach/bbu.h>
> diff --git a/arch/arm/boards/phytec-phycore-imx31/lowlevel.c b/arch/arm/boards/phytec-phycore-imx31/lowlevel.c
> index 27e2756..a3ba1c0 100644
> --- a/arch/arm/boards/phytec-phycore-imx31/lowlevel.c
> +++ b/arch/arm/boards/phytec-phycore-imx31/lowlevel.c
> @@ -27,7 +27,6 @@
>  #include <asm/barebox-arm-head.h>
>  #include <mach/imx31-regs.h>
>  #include <mach/imx-pll.h>
> -#include <asm/barebox-arm-head.h>
>  #include <mach/esdctl.h>
>  
>  #define ESDCTL0_VAL (ESDCTL0_SDE | ESDCTL0_ROW13 | ESDCTL0_COL10)
> diff --git a/arch/arm/boards/phytec-som-imx6/board.c b/arch/arm/boards/phytec-som-imx6/board.c
> index 38a2ef6..d808517 100644
> --- a/arch/arm/boards/phytec-som-imx6/board.c
> +++ b/arch/arm/boards/phytec-som-imx6/board.c
> @@ -36,8 +36,6 @@
>  
>  #include <globalvar.h>
>  
> -#include <linux/micrel_phy.h>
> -
>  #include <mach/iomux-mx6.h>
>  #include <mach/imx6.h>
>  
> diff --git a/arch/arm/boards/sama5d3xek/init.c b/arch/arm/boards/sama5d3xek/init.c
> index 08ccbcf..c768e98 100644
> --- a/arch/arm/boards/sama5d3xek/init.c
> +++ b/arch/arm/boards/sama5d3xek/init.c
> @@ -31,7 +31,6 @@
>  #include <linux/mtd/nand.h>
>  #include <mach/board.h>
>  #include <mach/at91sam9_smc.h>
> -#include <mach/at91sam9_smc.h>
>  #include <gpio.h>
>  #include <mach/iomux.h>
>  #include <mach/at91_pmc.h>
> diff --git a/arch/arm/boards/vscom-baltos/board.c b/arch/arm/boards/vscom-baltos/board.c
> index c64864d..3f9b7d7 100644
> --- a/arch/arm/boards/vscom-baltos/board.c
> +++ b/arch/arm/boards/vscom-baltos/board.c
> @@ -29,7 +29,6 @@
>  #include <globalvar.h>
>  #include <linux/sizes.h>
>  #include <net.h>
> -#include <envfs.h>
>  #include <bootsource.h>
>  #include <asm/armlinux.h>
>  #include <generated/mach-types.h>
> -- 
> 2.10.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Roland Hieber                     | r.hieber@pengutronix.de     |
Pengutronix e.K.                  | https://www.pengutronix.de/ |
Peiner Str. 6-8, 31137 Hildesheim | Phone: +49-5121-206917-5086 |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
