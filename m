Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1USiCe-0004m9-Jf
 for barebox@lists.infradead.org; Thu, 18 Apr 2013 06:20:17 +0000
Date: Thu, 18 Apr 2013 08:20:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130418062014.GC1906@pengutronix.de>
References: <1366204585-2626-1-git-send-email-jlu@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1366204585-2626-1-git-send-email-jlu@pengutronix.de>
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
Subject: Re: [PATCH] arm: omap: am33xx: store boot source info from ROM loader
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Apr 17, 2013 at 03:16:25PM +0200, Jan Luebbe wrote:
> The ROM loader passes the address of a buffer to the MLO in
> register 0. Store this data so we can find the boot source later.
> 
> Signed-off-by: Jan Luebbe <jlu@pengutronix.de>

Applied, thanks

Sascha

> ---
>  arch/arm/boards/beaglebone/lowlevel.c            |  4 +++-
>  arch/arm/mach-omap/Makefile                      |  2 +-
>  arch/arm/mach-omap/am33xx_bootinfo.S             | 24 ++++++++++++++++++++++++
>  arch/arm/mach-omap/am33xx_generic.c              | 14 +++++++++++++-
>  arch/arm/mach-omap/include/mach/am33xx-generic.h |  3 +++
>  arch/arm/mach-omap/xload.c                       | 12 ++++++++++--
>  6 files changed, 54 insertions(+), 5 deletions(-)
>  create mode 100644 arch/arm/mach-omap/am33xx_bootinfo.S
> 
> diff --git a/arch/arm/boards/beaglebone/lowlevel.c b/arch/arm/boards/beaglebone/lowlevel.c
> index a9737d9..5a14a1d 100644
> --- a/arch/arm/boards/beaglebone/lowlevel.c
> +++ b/arch/arm/boards/beaglebone/lowlevel.c
> @@ -248,8 +248,10 @@ static int beaglebone_board_init(void)
>  	return 0;
>  }
>  
> -void __naked barebox_arm_reset_vector(void)
> +void __bare_init __naked barebox_arm_reset_vector(uint32_t *data)
>  {
> +	am33xx_save_bootinfo();
> +
>  	arm_cpu_lowlevel_init();
>  
>  	beaglebone_board_init();
> diff --git a/arch/arm/mach-omap/Makefile b/arch/arm/mach-omap/Makefile
> index d9e00f7..63f8164 100644
> --- a/arch/arm/mach-omap/Makefile
> +++ b/arch/arm/mach-omap/Makefile
> @@ -23,7 +23,7 @@ obj-$(CONFIG_ARCH_OMAP3) += omap3_generic.o auxcr.o
>  pbl-$(CONFIG_ARCH_OMAP3) += omap3_generic.o auxcr.o
>  obj-$(CONFIG_ARCH_OMAP4) += omap4_generic.o omap4_clock.o
>  pbl-$(CONFIG_ARCH_OMAP4) += omap4_generic.o omap4_clock.o
> -obj-$(CONFIG_ARCH_AM33XX) += am33xx_generic.o am33xx_clock.o am33xx_mux.o
> +obj-$(CONFIG_ARCH_AM33XX) += am33xx_generic.o am33xx_clock.o am33xx_mux.o am33xx_bootinfo.o
>  obj-$(CONFIG_OMAP3_CLOCK_CONFIG) += omap3_clock.o
>  pbl-$(CONFIG_OMAP3_CLOCK_CONFIG) += omap3_clock.o
>  obj-$(CONFIG_OMAP_GPMC) += gpmc.o devices-gpmc-nand.o
> diff --git a/arch/arm/mach-omap/am33xx_bootinfo.S b/arch/arm/mach-omap/am33xx_bootinfo.S
> new file mode 100644
> index 0000000..60e8aba
> --- /dev/null
> +++ b/arch/arm/mach-omap/am33xx_bootinfo.S
> @@ -0,0 +1,24 @@
> +#include <config.h>
> +#include <linux/linkage.h>
> +#include <asm/assembler.h>
> +
> +.section ".text_bare_init","ax"
> +.globl am33xx_bootinfo
> +am33xx_bootinfo:
> +	.word 0x0
> +	.word 0x0
> +	.word 0x0
> +
> +.section ".text_bare_init","ax"
> +ENTRY(am33xx_save_bootinfo)
> +	/*
> +	* save data from rom boot loader
> +	*/
> +	adr     r2, am33xx_bootinfo
> +	ldr     r1, [r0, #0x00]
> +	str     r1, [r2, #0x00]
> +	ldr     r1, [r0, #0x04]
> +	str     r1, [r2, #0x04]
> +	ldr     r1, [r0, #0x08]
> +	str     r1, [r2, #0x08]
> +	mov	pc, lr
> diff --git a/arch/arm/mach-omap/am33xx_generic.c b/arch/arm/mach-omap/am33xx_generic.c
> index 96432c9..6271ee1 100644
> --- a/arch/arm/mach-omap/am33xx_generic.c
> +++ b/arch/arm/mach-omap/am33xx_generic.c
> @@ -97,7 +97,19 @@ u32 running_in_sdram(void)
>  
>  static int am33xx_bootsource(void)
>  {
> -	bootsource_set(BOOTSOURCE_MMC); /* only MMC for now */
> +	enum bootsource src;
> +
> +	switch (am33xx_bootinfo[2] & 0xFF) {
> +	case 0x05:
> +		src = BOOTSOURCE_NAND;
> +		break;
> +	case 0x08:
> +		src = BOOTSOURCE_MMC;
> +		break;
> +	default:
> +		src = BOOTSOURCE_UNKNOWN;
> +	}
> +	bootsource_set(src);
>  	bootsource_set_instance(0);
>  	return 0;
>  }
> diff --git a/arch/arm/mach-omap/include/mach/am33xx-generic.h b/arch/arm/mach-omap/include/mach/am33xx-generic.h
> index ba69caf..dbf390c 100644
> --- a/arch/arm/mach-omap/include/mach/am33xx-generic.h
> +++ b/arch/arm/mach-omap/include/mach/am33xx-generic.h
> @@ -1,6 +1,9 @@
>  #ifndef __MACH_AM33XX_GENERIC_H
>  #define __MACH_AM33XX_GENERIC_H
>  
> +extern uint32_t am33xx_bootinfo[3];
> +void am33xx_save_bootinfo(void);
> +
>  int am33xx_register_ethaddr(int eth_id, int mac_id);
>  
>  #endif /* __MACH_AM33XX_GENERIC_H */
> diff --git a/arch/arm/mach-omap/xload.c b/arch/arm/mach-omap/xload.c
> index 3cce3f2..bab56ae 100644
> --- a/arch/arm/mach-omap/xload.c
> +++ b/arch/arm/mach-omap/xload.c
> @@ -10,6 +10,10 @@
>  #include <sizes.h>
>  #include <filetype.h>
>  
> +#ifdef CONFIG_ARCH_AM33XX
> +#include <mach/am33xx-generic.h>
> +#endif
> +
>  static void *read_image_head(const char *name)
>  {
>  	void *header = xmalloc(ARM_HEAD_SIZE);
> @@ -163,7 +167,8 @@ static void *omap4_xload_boot_usb(void){
>   */
>  static __noreturn int omap_xload(void)
>  {
> -	int (*func)(void) = NULL;
> +	int (*func)(void *) = NULL;
> +	uint32_t arg = 0;
>  
>  	switch (bootsource_get())
>  	{
> @@ -198,8 +203,11 @@ static __noreturn int omap_xload(void)
>  		while (1);
>  	}
>  
> +	if (IS_ENABLED(CONFIG_ARCH_AM33XX))
> +		arg = (uint32_t)&am33xx_bootinfo;
> +
>  	shutdown_barebox();
> -	func();
> +	func(arg);
>  
>  	while (1);
>  }
> -- 
> 1.8.2.rc2
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
