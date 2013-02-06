Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U3AvV-0006Qo-4I
 for barebox@lists.infradead.org; Wed, 06 Feb 2013 19:45:04 +0000
Date: Wed, 6 Feb 2013 20:44:59 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130206194459.GN1906@pengutronix.de>
References: <1360071926-16517-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1360071926-16517-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] arm: rename reset and common_reset to
 barebox_arm_reset_vector and arm_cpu_lowlevel_init
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, Feb 05, 2013 at 02:45:26PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> reset is confusing with the cpu reset and impossible to grep
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

Since this contains function renames only I decided to apply this on the
master branch to avoid conflicts in the next branch.

Sascha

> ---
>  arch/arm/boards/a9m2410/lowlevel_init.S                |    8 ++++----
>  arch/arm/boards/a9m2440/lowlevel_init.S                |    8 ++++----
>  arch/arm/boards/archosg9/lowlevel.c                    |    4 ++--
>  arch/arm/boards/beagle/lowlevel.c                      |    4 ++--
>  arch/arm/boards/beaglebone/lowlevel.c                  |    4 ++--
>  arch/arm/boards/ccxmx51/lowlevel.c                     |    4 ++--
>  arch/arm/boards/chumby_falconwing/lowlevel.c           |    4 ++--
>  arch/arm/boards/clep7212/lowlevel.c                    |    4 ++--
>  arch/arm/boards/crystalfontz-cfa10036/lowlevel.c       |    4 ++--
>  arch/arm/boards/efika-mx-smartbook/lowlevel.c          |    4 ++--
>  arch/arm/boards/eukrea_cpuimx25/lowlevel.c             |    4 ++--
>  arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S        |    6 +++---
>  arch/arm/boards/eukrea_cpuimx35/lowlevel.c             |    4 ++--
>  arch/arm/boards/eukrea_cpuimx51/lowlevel.c             |    4 ++--
>  arch/arm/boards/freescale-mx23-evk/lowlevel.c          |    4 ++--
>  arch/arm/boards/freescale-mx25-3-stack/lowlevel_init.S |    6 +++---
>  arch/arm/boards/freescale-mx28-evk/lowlevel.c          |    4 ++--
>  arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S |    6 +++---
>  arch/arm/boards/freescale-mx51-pdk/lowlevel.c          |    4 ++--
>  arch/arm/boards/freescale-mx53-loco/lowlevel.c         |    4 ++--
>  arch/arm/boards/freescale-mx53-smd/lowlevel.c          |    4 ++--
>  arch/arm/boards/freescale-mx6-arm2/lowlevel.c          |    4 ++--
>  arch/arm/boards/freescale-mx6-sabrelite/lowlevel.c     |    4 ++--
>  arch/arm/boards/friendlyarm-mini2440/lowlevel_init.S   |    8 ++++----
>  arch/arm/boards/friendlyarm-mini6410/lowlevel.c        |    4 ++--
>  arch/arm/boards/friendlyarm-tiny210/lowlevel.c         |    4 ++--
>  arch/arm/boards/friendlyarm-tiny6410/lowlevel.c        |    4 ++--
>  arch/arm/boards/guf-cupid/lowlevel.c                   |    4 ++--
>  arch/arm/boards/guf-neso/lowlevel.c                    |    4 ++--
>  arch/arm/boards/guf-vincell/lowlevel.c                 |    4 ++--
>  arch/arm/boards/imx21ads/lowlevel_init.S               |    6 +++---
>  arch/arm/boards/imx233-olinuxino/lowlevel.c            |    4 ++--
>  arch/arm/boards/imx27ads/lowlevel_init.S               |    6 +++---
>  arch/arm/boards/karo-tx25/lowlevel.c                   |    4 ++--
>  arch/arm/boards/karo-tx28/lowlevel.c                   |    4 ++--
>  arch/arm/boards/karo-tx51/lowlevel.c                   |    4 ++--
>  arch/arm/boards/karo-tx53/lowlevel.c                   |    4 ++--
>  arch/arm/boards/mioa701/lowlevel.c                     |    4 ++--
>  arch/arm/boards/netx/platform.S                        |    6 +++---
>  arch/arm/boards/nhk8815/lowlevel.c                     |    4 ++--
>  arch/arm/boards/omap343xdsp/lowlevel.c                 |    4 ++--
>  arch/arm/boards/omap3evm/lowlevel.c                    |    4 ++--
>  arch/arm/boards/panda/lowlevel.c                       |    4 ++--
>  arch/arm/boards/pcm027/lowlevel_init.S                 |    6 +++---
>  arch/arm/boards/pcm037/lowlevel.c                      |    4 ++--
>  arch/arm/boards/pcm038/lowlevel.c                      |    4 ++--
>  arch/arm/boards/pcm043/lowlevel.c                      |    4 ++--
>  arch/arm/boards/pcm049/lowlevel.c                      |    4 ++--
>  arch/arm/boards/pcm051/lowlevel.c                      |    4 ++--
>  arch/arm/boards/phycard-a-l1/lowlevel.c                |    4 ++--
>  arch/arm/boards/phycard-a-xl2/lowlevel.c               |    4 ++--
>  arch/arm/boards/phycard-i.MX27/lowlevel_init.S         |    6 +++---
>  arch/arm/boards/raspberry-pi/lowlevel.c                |    4 ++--
>  arch/arm/boards/scb9328/lowlevel_init.S                |    6 +++---
>  arch/arm/boards/toshiba-ac100/lowlevel.c               |    4 ++--
>  arch/arm/boards/tqma53/lowlevel.c                      |    4 ++--
>  arch/arm/boards/versatile/lowlevel.c                   |    4 ++--
>  arch/arm/cpu/exceptions.S                              |    2 +-
>  arch/arm/include/asm/barebox-arm-head.h                |    8 ++++----
>  arch/arm/mach-at91/at91rm9200_lowlevel_init.c          |    4 ++--
>  arch/arm/mach-at91/at91sam9260_lowlevel_init.c         |    4 ++--
>  arch/arm/mach-at91/at91sam9261_lowlevel_init.c         |    4 ++--
>  arch/arm/mach-at91/at91sam9263_lowlevel_init.c         |    4 ++--
>  arch/arm/mach-at91/at91sam9g45_lowlevel_init.c         |    4 ++--
>  arch/arm/mach-at91/at91sam9n12_lowlevel_init.c         |    4 ++--
>  arch/arm/mach-at91/at91sam9x5_lowlevel_init.c          |    4 ++--
>  arch/arm/mach-at91/include/mach/barebox-arm-head.h     |    2 +-
>  arch/arm/mach-at91/sama5d3_lowlevel_init.c             |    4 ++--
>  arch/arm/mach-ep93xx/lowlevel_init.S                   |    6 +++---
>  arch/arm/mach-imx/include/mach/imx-flash-header.h      |    4 ++--
>  70 files changed, 156 insertions(+), 156 deletions(-)
> 
> diff --git a/arch/arm/boards/a9m2410/lowlevel_init.S b/arch/arm/boards/a9m2410/lowlevel_init.S
> index 178e73a..07167dc 100644
> --- a/arch/arm/boards/a9m2410/lowlevel_init.S
> +++ b/arch/arm/boards/a9m2410/lowlevel_init.S
> @@ -7,12 +7,12 @@
>  #include <mach/s3c-iomap.h>
>  #include <asm/barebox-arm-head.h>
>  
> -	.section ".text_bare_init.reset","ax"
> +	.section ".text_bare_init.barebox_arm_reset_vector","ax"
>  
> -.globl reset
> -reset:
> +.globl barebox_arm_reset_vector
> +barebox_arm_reset_vector:
>  
> -	common_reset r0
> +	arm_cpu_lowlevel_init r0
>  
>  	bl s3c24x0_disable_wd
>  
> diff --git a/arch/arm/boards/a9m2440/lowlevel_init.S b/arch/arm/boards/a9m2440/lowlevel_init.S
> index bd51717..50443af 100644
> --- a/arch/arm/boards/a9m2440/lowlevel_init.S
> +++ b/arch/arm/boards/a9m2440/lowlevel_init.S
> @@ -8,7 +8,7 @@
>  #include <mach/s3c24xx-gpio.h>
>  #include <asm/barebox-arm-head.h>
>  
> -	.section ".text_bare_init.reset","ax"
> +	.section ".text_bare_init.barebox_arm_reset_vector","ax"
>  
>  /*
>   * To be able to setup the SDRAM interface correctly, we need some
> @@ -213,10 +213,10 @@ SDRAMDATA:
>  
>  /* ------------------------------------------------------------------------ */
>  
> -.globl reset
> -reset:
> +.globl barebox_arm_reset_vector
> +barebox_arm_reset_vector:
>  
> -	common_reset r0
> +	arm_cpu_lowlevel_init r0
>  
>  	bl s3c24x0_disable_wd
>  
> diff --git a/arch/arm/boards/archosg9/lowlevel.c b/arch/arm/boards/archosg9/lowlevel.c
> index 26808f6..552268f 100644
> --- a/arch/arm/boards/archosg9/lowlevel.c
> +++ b/arch/arm/boards/archosg9/lowlevel.c
> @@ -67,9 +67,9 @@ static noinline void archosg9_init_lowlevel(void)
>  	barebox_arm_entry(0x80000000, SZ_1G, 0);
>  }
>  
> -void __naked __bare_init reset(void)
> +void __naked __bare_init barebox_arm_reset_vector(void)
>  {
> -	common_reset();
> +	arm_cpu_lowlevel_init();
>  
>  	arm_setup_stack(0x4030d000);
>  
> diff --git a/arch/arm/boards/beagle/lowlevel.c b/arch/arm/boards/beagle/lowlevel.c
> index c0abbe8..8afcb75 100644
> --- a/arch/arm/boards/beagle/lowlevel.c
> +++ b/arch/arm/boards/beagle/lowlevel.c
> @@ -167,11 +167,11 @@ static int beagle_board_init(void)
>  	return 0;
>  }
>  
> -void __naked reset(void)
> +void __naked barebox_arm_reset_vector(void)
>  {
>  	omap3_invalidate_dcache();
>  
> -	common_reset();
> +	arm_cpu_lowlevel_init();
>  
>  	beagle_board_init();
>  
> diff --git a/arch/arm/boards/beaglebone/lowlevel.c b/arch/arm/boards/beaglebone/lowlevel.c
> index b565c74..76ac90b 100644
> --- a/arch/arm/boards/beaglebone/lowlevel.c
> +++ b/arch/arm/boards/beaglebone/lowlevel.c
> @@ -248,9 +248,9 @@ static int beaglebone_board_init(void)
>  	return 0;
>  }
>  
> -void __naked reset(void)
> +void __naked barebox_arm_reset_vector(void)
>  {
> -	common_reset();
> +	arm_cpu_lowlevel_init();
>  
>  	beaglebone_board_init();
>  
> diff --git a/arch/arm/boards/ccxmx51/lowlevel.c b/arch/arm/boards/ccxmx51/lowlevel.c
> index 282024e..3e6a0ee 100644
> --- a/arch/arm/boards/ccxmx51/lowlevel.c
> +++ b/arch/arm/boards/ccxmx51/lowlevel.c
> @@ -2,8 +2,8 @@
>  #include <mach/esdctl.h>
>  #include <asm/barebox-arm-head.h>
>  
> -void __naked reset(void)
> +void __naked barebox_arm_reset_vector(void)
>  {
> -	common_reset();
> +	arm_cpu_lowlevel_init();
>  	imx51_barebox_entry(0);
>  }
> diff --git a/arch/arm/boards/chumby_falconwing/lowlevel.c b/arch/arm/boards/chumby_falconwing/lowlevel.c
> index df28ad4..c23a12d 100644
> --- a/arch/arm/boards/chumby_falconwing/lowlevel.c
> +++ b/arch/arm/boards/chumby_falconwing/lowlevel.c
> @@ -4,8 +4,8 @@
>  #include <asm/barebox-arm.h>
>  #include <mach/imx23-regs.h>
>  
> -void __naked reset(void)
> +void __naked barebox_arm_reset_vector(void)
>  {
> -	common_reset();
> +	arm_cpu_lowlevel_init();
>  	barebox_arm_entry(IMX_MEMORY_BASE, SZ_64M, 0);
>  }
> diff --git a/arch/arm/boards/clep7212/lowlevel.c b/arch/arm/boards/clep7212/lowlevel.c
> index 7465a42..b4d1bf1 100644
> --- a/arch/arm/boards/clep7212/lowlevel.c
> +++ b/arch/arm/boards/clep7212/lowlevel.c
> @@ -24,11 +24,11 @@
>  #define PLL_VALUE		(((CPU_SPEED * 2) / MAIN_CLOCK) << 24)
>  #define SDRAM_REFRESH_RATE	(64 * (BUS_SPEED / (8192 * 1000)))
>  
> -void __naked __bare_init reset(void)
> +void __naked __bare_init barebox_arm_reset_vector(void)
>  {
>  	u32 tmp;
>  
> -	common_reset();
> +	arm_cpu_lowlevel_init();
>  
>  	/* Setup base clock */
>  	writel(SYSCON3_CLKCTL0 | SYSCON3_CLKCTL1, SYSCON3);
> diff --git a/arch/arm/boards/crystalfontz-cfa10036/lowlevel.c b/arch/arm/boards/crystalfontz-cfa10036/lowlevel.c
> index 467194f..f7b9033 100644
> --- a/arch/arm/boards/crystalfontz-cfa10036/lowlevel.c
> +++ b/arch/arm/boards/crystalfontz-cfa10036/lowlevel.c
> @@ -4,8 +4,8 @@
>  #include <asm/barebox-arm.h>
>  #include <mach/imx28-regs.h>
>  
> -void __naked reset(void)
> +void __naked barebox_arm_reset_vector(void)
>  {
> -	common_reset();
> +	arm_cpu_lowlevel_init();
>  	barebox_arm_entry(IMX_MEMORY_BASE, SZ_128M, 0);
>  }
> diff --git a/arch/arm/boards/efika-mx-smartbook/lowlevel.c b/arch/arm/boards/efika-mx-smartbook/lowlevel.c
> index 282024e..3e6a0ee 100644
> --- a/arch/arm/boards/efika-mx-smartbook/lowlevel.c
> +++ b/arch/arm/boards/efika-mx-smartbook/lowlevel.c
> @@ -2,8 +2,8 @@
>  #include <mach/esdctl.h>
>  #include <asm/barebox-arm-head.h>
>  
> -void __naked reset(void)
> +void __naked barebox_arm_reset_vector(void)
>  {
> -	common_reset();
> +	arm_cpu_lowlevel_init();
>  	imx51_barebox_entry(0);
>  }
> diff --git a/arch/arm/boards/eukrea_cpuimx25/lowlevel.c b/arch/arm/boards/eukrea_cpuimx25/lowlevel.c
> index 6afdd17..bda1b22 100644
> --- a/arch/arm/boards/eukrea_cpuimx25/lowlevel.c
> +++ b/arch/arm/boards/eukrea_cpuimx25/lowlevel.c
> @@ -30,12 +30,12 @@
>  #include <asm-generic/memory_layout.h>
>  #include <asm/system.h>
>  
> -void __bare_init __naked reset(void)
> +void __bare_init __naked barebox_arm_reset_vector(void)
>  {
>  	uint32_t r;
>  	register uint32_t loops = 0x20000;
>  
> -	common_reset();
> +	arm_cpu_lowlevel_init();
>  
>  	/* restart the MPLL and wait until it's stable */
>  	writel(readl(MX25_CCM_BASE_ADDR + MX25_CCM_CCTL) | (1 << 27),
> diff --git a/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S b/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S
> index c37d271..2967ae8 100644
> --- a/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S
> +++ b/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S
> @@ -71,10 +71,10 @@
>  
>  	.section ".text_bare_init","ax"
>  
> -.globl reset
> -reset:
> +.globl barebox_arm_reset_vector
> +barebox_arm_reset_vector:
>  
> -	common_reset r0
> +	arm_cpu_lowlevel_init r0
>  
>  	/* ahb lite ip interface */
>  	writel(0x20040304, MX27_AIPI_BASE_ADDR + MX27_AIPI1_PSR0)
> diff --git a/arch/arm/boards/eukrea_cpuimx35/lowlevel.c b/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
> index 0533c1d..88e9b28 100644
> --- a/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
> +++ b/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
> @@ -35,13 +35,13 @@
>  #define MPCTL_PARAM_532     ((1 << 31) | IMX_PLL_PD(0) | IMX_PLL_MFD(11) | IMX_PLL_MFI(11) | IMX_PLL_MFN(1))
>  #define PPCTL_PARAM_300     (IMX_PLL_PD(0) | IMX_PLL_MFD(3) | IMX_PLL_MFI(6) | IMX_PLL_MFN(1))
>  
> -void __bare_init __naked reset(void)
> +void __bare_init __naked barebox_arm_reset_vector(void)
>  {
>  	uint32_t r, s;
>  	unsigned long ccm_base = MX35_CCM_BASE_ADDR;
>  	register uint32_t loops = 0x20000;
>  
> -	common_reset();
> +	arm_cpu_lowlevel_init();
>  
>  	r = get_cr();
>  	r |= CR_Z; /* Flow prediction (Z) */
> diff --git a/arch/arm/boards/eukrea_cpuimx51/lowlevel.c b/arch/arm/boards/eukrea_cpuimx51/lowlevel.c
> index 282024e..3e6a0ee 100644
> --- a/arch/arm/boards/eukrea_cpuimx51/lowlevel.c
> +++ b/arch/arm/boards/eukrea_cpuimx51/lowlevel.c
> @@ -2,8 +2,8 @@
>  #include <mach/esdctl.h>
>  #include <asm/barebox-arm-head.h>
>  
> -void __naked reset(void)
> +void __naked barebox_arm_reset_vector(void)
>  {
> -	common_reset();
> +	arm_cpu_lowlevel_init();
>  	imx51_barebox_entry(0);
>  }
> diff --git a/arch/arm/boards/freescale-mx23-evk/lowlevel.c b/arch/arm/boards/freescale-mx23-evk/lowlevel.c
> index 0c7e665..1559444 100644
> --- a/arch/arm/boards/freescale-mx23-evk/lowlevel.c
> +++ b/arch/arm/boards/freescale-mx23-evk/lowlevel.c
> @@ -4,8 +4,8 @@
>  #include <asm/barebox-arm.h>
>  #include <mach/imx23-regs.h>
>  
> -void __naked reset(void)
> +void __naked barebox_arm_reset_vector(void)
>  {
> -	common_reset();
> +	arm_cpu_lowlevel_init();
>  	barebox_arm_entry(IMX_MEMORY_BASE, SZ_32M, 0);
>  }
> diff --git a/arch/arm/boards/freescale-mx25-3-stack/lowlevel_init.S b/arch/arm/boards/freescale-mx25-3-stack/lowlevel_init.S
> index a55508e..c96bc58 100644
> --- a/arch/arm/boards/freescale-mx25-3-stack/lowlevel_init.S
> +++ b/arch/arm/boards/freescale-mx25-3-stack/lowlevel_init.S
> @@ -49,9 +49,9 @@ MPCTL_PARAM_532_W:      .word   MPCTL_PARAM_532
>  PPCTL_PARAM_W:    	.word   PPCTL_PARAM_300
>  CCM_BASE_ADDR_W:        .word   MX25_CCM_BASE_ADDR
>  
> -.globl reset
> -reset:
> -	common_reset r0
> +.globl barebox_arm_reset_vector
> +barebox_arm_reset_vector:
> +	arm_cpu_lowlevel_init r0
>  
>  #define MX25_CCM_MCR	0x64
>  
> diff --git a/arch/arm/boards/freescale-mx28-evk/lowlevel.c b/arch/arm/boards/freescale-mx28-evk/lowlevel.c
> index 467194f..f7b9033 100644
> --- a/arch/arm/boards/freescale-mx28-evk/lowlevel.c
> +++ b/arch/arm/boards/freescale-mx28-evk/lowlevel.c
> @@ -4,8 +4,8 @@
>  #include <asm/barebox-arm.h>
>  #include <mach/imx28-regs.h>
>  
> -void __naked reset(void)
> +void __naked barebox_arm_reset_vector(void)
>  {
> -	common_reset();
> +	arm_cpu_lowlevel_init();
>  	barebox_arm_entry(IMX_MEMORY_BASE, SZ_128M, 0);
>  }
> diff --git a/arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S b/arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S
> index 7b0a32b..bd26013 100644
> --- a/arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S
> +++ b/arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S
> @@ -56,9 +56,9 @@ MPCTL_PARAM_532_W:	.word	MPCTL_PARAM_532
>  PPCTL_PARAM_W:		.word	PPCTL_PARAM_300
>  CCM_BASE_ADDR_W:	.word	MX35_CCM_BASE_ADDR
>  
> -.globl reset
> -reset:
> -	common_reset r0
> +.globl barebox_arm_reset_vector
> +barebox_arm_reset_vector:
> +	arm_cpu_lowlevel_init r0
>  
>  	mrc	15, 0, r1, c1, c0, 0
>  
> diff --git a/arch/arm/boards/freescale-mx51-pdk/lowlevel.c b/arch/arm/boards/freescale-mx51-pdk/lowlevel.c
> index 282024e..3e6a0ee 100644
> --- a/arch/arm/boards/freescale-mx51-pdk/lowlevel.c
> +++ b/arch/arm/boards/freescale-mx51-pdk/lowlevel.c
> @@ -2,8 +2,8 @@
>  #include <mach/esdctl.h>
>  #include <asm/barebox-arm-head.h>
>  
> -void __naked reset(void)
> +void __naked barebox_arm_reset_vector(void)
>  {
> -	common_reset();
> +	arm_cpu_lowlevel_init();
>  	imx51_barebox_entry(0);
>  }
> diff --git a/arch/arm/boards/freescale-mx53-loco/lowlevel.c b/arch/arm/boards/freescale-mx53-loco/lowlevel.c
> index c6f79ca..60c28f7 100644
> --- a/arch/arm/boards/freescale-mx53-loco/lowlevel.c
> +++ b/arch/arm/boards/freescale-mx53-loco/lowlevel.c
> @@ -2,8 +2,8 @@
>  #include <mach/esdctl.h>
>  #include <asm/barebox-arm-head.h>
>  
> -void __naked reset(void)
> +void __naked barebox_arm_reset_vector(void)
>  {
> -	common_reset();
> +	arm_cpu_lowlevel_init();
>  	imx53_barebox_entry(0);
>  }
> diff --git a/arch/arm/boards/freescale-mx53-smd/lowlevel.c b/arch/arm/boards/freescale-mx53-smd/lowlevel.c
> index c6f79ca..60c28f7 100644
> --- a/arch/arm/boards/freescale-mx53-smd/lowlevel.c
> +++ b/arch/arm/boards/freescale-mx53-smd/lowlevel.c
> @@ -2,8 +2,8 @@
>  #include <mach/esdctl.h>
>  #include <asm/barebox-arm-head.h>
>  
> -void __naked reset(void)
> +void __naked barebox_arm_reset_vector(void)
>  {
> -	common_reset();
> +	arm_cpu_lowlevel_init();
>  	imx53_barebox_entry(0);
>  }
> diff --git a/arch/arm/boards/freescale-mx6-arm2/lowlevel.c b/arch/arm/boards/freescale-mx6-arm2/lowlevel.c
> index 810b890..15d9287 100644
> --- a/arch/arm/boards/freescale-mx6-arm2/lowlevel.c
> +++ b/arch/arm/boards/freescale-mx6-arm2/lowlevel.c
> @@ -3,8 +3,8 @@
>  #include <asm/barebox-arm-head.h>
>  #include <asm/barebox-arm.h>
>  
> -void __naked reset(void)
> +void __naked barebox_arm_reset_vector(void)
>  {
> -	common_reset();
> +	arm_cpu_lowlevel_init();
>  	barebox_arm_entry(0x10000000, SZ_2G, 0);
>  }
> diff --git a/arch/arm/boards/freescale-mx6-sabrelite/lowlevel.c b/arch/arm/boards/freescale-mx6-sabrelite/lowlevel.c
> index 8f995ee..aec46fd 100644
> --- a/arch/arm/boards/freescale-mx6-sabrelite/lowlevel.c
> +++ b/arch/arm/boards/freescale-mx6-sabrelite/lowlevel.c
> @@ -3,8 +3,8 @@
>  #include <asm/barebox-arm-head.h>
>  #include <asm/barebox-arm.h>
>  
> -void __naked reset(void)
> +void __naked barebox_arm_reset_vector(void)
>  {
> -	common_reset();
> +	arm_cpu_lowlevel_init();
>  	barebox_arm_entry(0x10000000, SZ_1G, 0);
>  }
> diff --git a/arch/arm/boards/friendlyarm-mini2440/lowlevel_init.S b/arch/arm/boards/friendlyarm-mini2440/lowlevel_init.S
> index a6e06ed..5633ea3 100644
> --- a/arch/arm/boards/friendlyarm-mini2440/lowlevel_init.S
> +++ b/arch/arm/boards/friendlyarm-mini2440/lowlevel_init.S
> @@ -7,13 +7,13 @@
>  #include <mach/s3c-iomap.h>
>  #include <asm/barebox-arm-head.h>
>  
> -	.section ".text_bare_init.reset","ax"
> +	.section ".text_bare_init.barebox_arm_reset_vector","ax"
>  
>  /* ------------------------------------------------------------------------ */
>  
> -.globl reset
> -reset:
> -	common_reset r0
> +.globl barebox_arm_reset_vector
> +barebox_arm_reset_vector:
> +	arm_cpu_lowlevel_init r0
>  
>  	bl s3c24x0_disable_wd
>  
> diff --git a/arch/arm/boards/friendlyarm-mini6410/lowlevel.c b/arch/arm/boards/friendlyarm-mini6410/lowlevel.c
> index 61ed757..3a8af81 100644
> --- a/arch/arm/boards/friendlyarm-mini6410/lowlevel.c
> +++ b/arch/arm/boards/friendlyarm-mini6410/lowlevel.c
> @@ -4,8 +4,8 @@
>  #include <asm/barebox-arm-head.h>
>  #include <mach/s3c-iomap.h>
>  
> -void __naked reset(void)
> +void __naked barebox_arm_reset_vector(void)
>  {
> -	common_reset();
> +	arm_cpu_lowlevel_init();
>  	barebox_arm_entry(S3C_SDRAM_BASE, SZ_128M, 0);
>  }
> diff --git a/arch/arm/boards/friendlyarm-tiny210/lowlevel.c b/arch/arm/boards/friendlyarm-tiny210/lowlevel.c
> index 5d9582e..1da7ba8 100644
> --- a/arch/arm/boards/friendlyarm-tiny210/lowlevel.c
> +++ b/arch/arm/boards/friendlyarm-tiny210/lowlevel.c
> @@ -51,11 +51,11 @@ int __bare_init s5p_irom_load_mmc(void *dest, uint32_t start_block, uint16_t blo
>  }
>  
>  
> -void __bare_init reset(void)
> +void __bare_init barebox_arm_reset_vector(void)
>  {
>  	uint32_t r;
>  
> -	common_reset();
> +	arm_cpu_lowlevel_init();
>  
>  #ifdef CONFIG_S3C_PLL_INIT
>  	s5p_init_pll();
> diff --git a/arch/arm/boards/friendlyarm-tiny6410/lowlevel.c b/arch/arm/boards/friendlyarm-tiny6410/lowlevel.c
> index 61ed757..3a8af81 100644
> --- a/arch/arm/boards/friendlyarm-tiny6410/lowlevel.c
> +++ b/arch/arm/boards/friendlyarm-tiny6410/lowlevel.c
> @@ -4,8 +4,8 @@
>  #include <asm/barebox-arm-head.h>
>  #include <mach/s3c-iomap.h>
>  
> -void __naked reset(void)
> +void __naked barebox_arm_reset_vector(void)
>  {
> -	common_reset();
> +	arm_cpu_lowlevel_init();
>  	barebox_arm_entry(S3C_SDRAM_BASE, SZ_128M, 0);
>  }
> diff --git a/arch/arm/boards/guf-cupid/lowlevel.c b/arch/arm/boards/guf-cupid/lowlevel.c
> index 9620abd..774dd55 100644
> --- a/arch/arm/boards/guf-cupid/lowlevel.c
> +++ b/arch/arm/boards/guf-cupid/lowlevel.c
> @@ -163,13 +163,13 @@ static void __bare_init noinline setup_sdram(u32 memsize, u32 mode, u32 sdram_ad
>  #define UNALIGNED_ACCESS_ENABLE
>  #define LOW_INT_LATENCY_ENABLE
>  
> -void __bare_init __naked reset(void)
> +void __bare_init __naked barebox_arm_reset_vector(void)
>  {
>  	u32 r0, r1;
>  	void *iomuxc_base = (void *)MX35_IOMUXC_BASE_ADDR;
>  	int i;
>  
> -	common_reset();
> +	arm_cpu_lowlevel_init();
>  
>  	arm_setup_stack(0x10000000 + 128 * 1024 - 16);
>  
> diff --git a/arch/arm/boards/guf-neso/lowlevel.c b/arch/arm/boards/guf-neso/lowlevel.c
> index ebb8d56..56bafa9 100644
> --- a/arch/arm/boards/guf-neso/lowlevel.c
> +++ b/arch/arm/boards/guf-neso/lowlevel.c
> @@ -32,12 +32,12 @@
>  
>  #define ESDCTL0_VAL (ESDCTL0_SDE | ESDCTL0_ROW13 | ESDCTL0_COL10)
>  
> -void __bare_init __naked reset(void)
> +void __bare_init __naked barebox_arm_reset_vector(void)
>  {
>  	uint32_t r;
>  	int i;
>  
> -	common_reset();
> +	arm_cpu_lowlevel_init();
>  
>  	/* ahb lite ip interface */
>  	writel(0x20040304, MX27_AIPI_BASE_ADDR + MX27_AIPI1_PSR0);
> diff --git a/arch/arm/boards/guf-vincell/lowlevel.c b/arch/arm/boards/guf-vincell/lowlevel.c
> index 1243b9a..ee7aafd 100644
> --- a/arch/arm/boards/guf-vincell/lowlevel.c
> +++ b/arch/arm/boards/guf-vincell/lowlevel.c
> @@ -123,11 +123,11 @@ void disable_watchdog(void)
>  
>  void sdram_init(void);
>  
> -void __bare_init __naked reset(void)
> +void __bare_init __naked barebox_arm_reset_vector(void)
>  {
>  	u32 r;
>  
> -	common_reset();
> +	arm_cpu_lowlevel_init();
>  
>  	/* Skip SDRAM initialization if we run from RAM */
>  	r = get_pc();
> diff --git a/arch/arm/boards/imx21ads/lowlevel_init.S b/arch/arm/boards/imx21ads/lowlevel_init.S
> index 5c6d3f7..4e8c784 100644
> --- a/arch/arm/boards/imx21ads/lowlevel_init.S
> +++ b/arch/arm/boards/imx21ads/lowlevel_init.S
> @@ -21,10 +21,10 @@
>  
>  	.section ".text_bare_init","ax"
>  
> -.globl reset
> -reset:
> +.globl barebox_arm_reset_vector
> +barebox_arm_reset_vector:
>  
> -	common_reset r0
> +	arm_cpu_lowlevel_init r0
>  
>  /*
>   * Initialize the AHB-Lite IP Interface (AIPI) module (to enable access to
> diff --git a/arch/arm/boards/imx233-olinuxino/lowlevel.c b/arch/arm/boards/imx233-olinuxino/lowlevel.c
> index df28ad4..c23a12d 100644
> --- a/arch/arm/boards/imx233-olinuxino/lowlevel.c
> +++ b/arch/arm/boards/imx233-olinuxino/lowlevel.c
> @@ -4,8 +4,8 @@
>  #include <asm/barebox-arm.h>
>  #include <mach/imx23-regs.h>
>  
> -void __naked reset(void)
> +void __naked barebox_arm_reset_vector(void)
>  {
> -	common_reset();
> +	arm_cpu_lowlevel_init();
>  	barebox_arm_entry(IMX_MEMORY_BASE, SZ_64M, 0);
>  }
> diff --git a/arch/arm/boards/imx27ads/lowlevel_init.S b/arch/arm/boards/imx27ads/lowlevel_init.S
> index 8939f6a..ce276a9 100644
> --- a/arch/arm/boards/imx27ads/lowlevel_init.S
> +++ b/arch/arm/boards/imx27ads/lowlevel_init.S
> @@ -112,10 +112,10 @@ NORMAL_MODE		.long 0x00000000 // system/external device dependent data (SMODE=00
>  	writel(0x0000000c, 0xD8001010)
>  .endm
>  
> -.globl reset
> -reset:
> +.globl barebox_arm_reset_vector
> +barebox_arm_reset_vector:
>  
> -	common_reset r0
> +	arm_cpu_lowlevel_init r0
>  
>  	/* ahb lite ip interface */
>  	writel(0x20040304, MX27_AIPI_BASE_ADDR + MX27_AIPI1_PSR0)
> diff --git a/arch/arm/boards/karo-tx25/lowlevel.c b/arch/arm/boards/karo-tx25/lowlevel.c
> index 45fa17f..6c7614b 100644
> --- a/arch/arm/boards/karo-tx25/lowlevel.c
> +++ b/arch/arm/boards/karo-tx25/lowlevel.c
> @@ -54,11 +54,11 @@ static inline void __bare_init  setup_sdram(uint32_t base, uint32_t esdctl,
>  	writel(esdctl, esdctlreg);
>  }
>  
> -void __bare_init __naked reset(void)
> +void __bare_init __naked barebox_arm_reset_vector(void)
>  {
>  	uint32_t r;
>  
> -	common_reset();
> +	arm_cpu_lowlevel_init();
>  
>  	/* AIPS setup - Only setup MPROTx registers. The PACR default values are good.
>  	 * Set all MPROTx to be non-bufferable, trusted for R/W,
> diff --git a/arch/arm/boards/karo-tx28/lowlevel.c b/arch/arm/boards/karo-tx28/lowlevel.c
> index 467194f..f7b9033 100644
> --- a/arch/arm/boards/karo-tx28/lowlevel.c
> +++ b/arch/arm/boards/karo-tx28/lowlevel.c
> @@ -4,8 +4,8 @@
>  #include <asm/barebox-arm.h>
>  #include <mach/imx28-regs.h>
>  
> -void __naked reset(void)
> +void __naked barebox_arm_reset_vector(void)
>  {
> -	common_reset();
> +	arm_cpu_lowlevel_init();
>  	barebox_arm_entry(IMX_MEMORY_BASE, SZ_128M, 0);
>  }
> diff --git a/arch/arm/boards/karo-tx51/lowlevel.c b/arch/arm/boards/karo-tx51/lowlevel.c
> index 282024e..3e6a0ee 100644
> --- a/arch/arm/boards/karo-tx51/lowlevel.c
> +++ b/arch/arm/boards/karo-tx51/lowlevel.c
> @@ -2,8 +2,8 @@
>  #include <mach/esdctl.h>
>  #include <asm/barebox-arm-head.h>
>  
> -void __naked reset(void)
> +void __naked barebox_arm_reset_vector(void)
>  {
> -	common_reset();
> +	arm_cpu_lowlevel_init();
>  	imx51_barebox_entry(0);
>  }
> diff --git a/arch/arm/boards/karo-tx53/lowlevel.c b/arch/arm/boards/karo-tx53/lowlevel.c
> index fe9dac1..32d2c8f 100644
> --- a/arch/arm/boards/karo-tx53/lowlevel.c
> +++ b/arch/arm/boards/karo-tx53/lowlevel.c
> @@ -4,9 +4,9 @@
>  #include <mach/imx5.h>
>  #include <mach/esdctl.h>
>  
> -void __naked reset(void)
> +void __naked barebox_arm_reset_vector(void)
>  {
> -	common_reset();
> +	arm_cpu_lowlevel_init();
>  
>  	/*
>  	 * For the TX53 rev 8030 the SDRAM setup is not stable without
> diff --git a/arch/arm/boards/mioa701/lowlevel.c b/arch/arm/boards/mioa701/lowlevel.c
> index 6d48c97..02dc586 100644
> --- a/arch/arm/boards/mioa701/lowlevel.c
> +++ b/arch/arm/boards/mioa701/lowlevel.c
> @@ -3,8 +3,8 @@
>  #include <asm/barebox-arm-head.h>
>  #include <asm/barebox-arm.h>
>  
> -void __naked reset(void)
> +void __naked barebox_arm_reset_vector(void)
>  {
> -	common_reset();
> +	arm_cpu_lowlevel_init();
>  	barebox_arm_entry(0xa0000000, SZ_64M, 0);
>  }
> diff --git a/arch/arm/boards/netx/platform.S b/arch/arm/boards/netx/platform.S
> index 95ac13b..1628d35 100644
> --- a/arch/arm/boards/netx/platform.S
> +++ b/arch/arm/boards/netx/platform.S
> @@ -19,9 +19,9 @@
>  #include <sizes.h>
>  #include <asm/barebox-arm-head.h>
>  
> -.globl reset
> -reset:
> -	common_reset r0
> +.globl barebox_arm_reset_vector
> +barebox_arm_reset_vector:
> +	arm_cpu_lowlevel_init r0
>  	mov	r0, #0x80000000
>  	mov	r1, #SZ_64M
>  	mov	r2, #0
> diff --git a/arch/arm/boards/nhk8815/lowlevel.c b/arch/arm/boards/nhk8815/lowlevel.c
> index 3956347..b694c89 100644
> --- a/arch/arm/boards/nhk8815/lowlevel.c
> +++ b/arch/arm/boards/nhk8815/lowlevel.c
> @@ -3,8 +3,8 @@
>  #include <asm/barebox-arm-head.h>
>  #include <asm/barebox-arm.h>
>  
> -void __naked reset(void)
> +void __naked barebox_arm_reset_vector(void)
>  {
> -	common_reset();
> +	arm_cpu_lowlevel_init();
>  	barebox_arm_entry(0x0, SZ_64M, 0);
>  }
> diff --git a/arch/arm/boards/omap343xdsp/lowlevel.c b/arch/arm/boards/omap343xdsp/lowlevel.c
> index 403de91..5629655 100644
> --- a/arch/arm/boards/omap343xdsp/lowlevel.c
> +++ b/arch/arm/boards/omap343xdsp/lowlevel.c
> @@ -545,11 +545,11 @@ static int sdp343x_board_init(void)
>  	return 0;
>  }
>  
> -void __naked reset(void)
> +void __naked barebox_arm_reset_vector(void)
>  {
>  	omap3_invalidate_dcache();
>  
> -	common_reset();
> +	arm_cpu_lowlevel_init();
>  
>  	sdp343x_board_init();
>  
> diff --git a/arch/arm/boards/omap3evm/lowlevel.c b/arch/arm/boards/omap3evm/lowlevel.c
> index 49ecb85..74e1315 100644
> --- a/arch/arm/boards/omap3evm/lowlevel.c
> +++ b/arch/arm/boards/omap3evm/lowlevel.c
> @@ -159,9 +159,9 @@ static int omap3_evm_board_init(void)
>  	return 0;
>  }
>  
> -void __naked reset(void)
> +void __naked barebox_arm_reset_vector(void)
>  {
> -	common_reset();
> +	arm_cpu_lowlevel_init();
>  
>  	omap3_evm_board_init();
>  
> diff --git a/arch/arm/boards/panda/lowlevel.c b/arch/arm/boards/panda/lowlevel.c
> index df0f9c1..ed1dc6f 100644
> --- a/arch/arm/boards/panda/lowlevel.c
> +++ b/arch/arm/boards/panda/lowlevel.c
> @@ -73,9 +73,9 @@ static void noinline panda_init_lowlevel(void)
>  	omap4_scale_vcores(TPS62361_VSEL0_GPIO);
>  }
>  
> -void reset(void)
> +void barebox_arm_reset_vector(void)
>  {
> -	common_reset();
> +	arm_cpu_lowlevel_init();
>  
>  	if (get_pc() > 0x80000000)
>  		goto out;
> diff --git a/arch/arm/boards/pcm027/lowlevel_init.S b/arch/arm/boards/pcm027/lowlevel_init.S
> index b90682c..a2d773c 100644
> --- a/arch/arm/boards/pcm027/lowlevel_init.S
> +++ b/arch/arm/boards/pcm027/lowlevel_init.S
> @@ -52,9 +52,9 @@
>  /*
>   *	Memory setup
>   */
> -.globl reset
> -reset:
> -	common_reset r0
> +.globl barebox_arm_reset_vector
> +barebox_arm_reset_vector:
> +	arm_cpu_lowlevel_init r0
>  
>  		@ Preserve r8/r7 i.e. kernel entry values
>  
> diff --git a/arch/arm/boards/pcm037/lowlevel.c b/arch/arm/boards/pcm037/lowlevel.c
> index 176c968..b81a24f 100644
> --- a/arch/arm/boards/pcm037/lowlevel.c
> +++ b/arch/arm/boards/pcm037/lowlevel.c
> @@ -32,12 +32,12 @@
>  
>  #define ESDCTL0_VAL (ESDCTL0_SDE | ESDCTL0_ROW13 | ESDCTL0_COL10)
>  
> -void __bare_init __naked reset(void)
> +void __bare_init __naked barebox_arm_reset_vector(void)
>  {
>  	uint32_t r;
>  	volatile int v;
>  
> -	common_reset();
> +	arm_cpu_lowlevel_init();
>  
>  	writel(1 << 6, MX31_IPU_CTRL_BASE_ADDR);
>  
> diff --git a/arch/arm/boards/pcm038/lowlevel.c b/arch/arm/boards/pcm038/lowlevel.c
> index c00b3b4..85b9391 100644
> --- a/arch/arm/boards/pcm038/lowlevel.c
> +++ b/arch/arm/boards/pcm038/lowlevel.c
> @@ -33,12 +33,12 @@
>  
>  #define ESDCTL0_VAL (ESDCTL0_SDE | ESDCTL0_ROW13 | ESDCTL0_COL10)
>  
> -void __bare_init __naked reset(void)
> +void __bare_init __naked barebox_arm_reset_vector(void)
>  {
>  	uint32_t r;
>  	int i;
>  
> -	common_reset();
> +	arm_cpu_lowlevel_init();
>  
>  	/* ahb lite ip interface */
>  	writel(0x20040304, MX27_AIPI_BASE_ADDR + MX27_AIPI1_PSR0);
> diff --git a/arch/arm/boards/pcm043/lowlevel.c b/arch/arm/boards/pcm043/lowlevel.c
> index d19d5b5..9485a9b 100644
> --- a/arch/arm/boards/pcm043/lowlevel.c
> +++ b/arch/arm/boards/pcm043/lowlevel.c
> @@ -40,14 +40,14 @@
>  #define CCM_PDR0_399	0x00011000
>  #define CCM_PDR0_532	0x00001000
>  
> -void __bare_init __naked reset(void)
> +void __bare_init __naked barebox_arm_reset_vector(void)
>  {
>  	uint32_t r, s;
>  	unsigned long ccm_base = MX35_CCM_BASE_ADDR;
>  	unsigned long iomuxc_base = MX35_IOMUXC_BASE_ADDR;
>  	unsigned long esdctl_base = MX35_ESDCTL_BASE_ADDR;
>  
> -	common_reset();
> +	arm_cpu_lowlevel_init();
>  
>  	r = get_cr();
>  	r |= CR_Z; /* Flow prediction (Z) */
> diff --git a/arch/arm/boards/pcm049/lowlevel.c b/arch/arm/boards/pcm049/lowlevel.c
> index 8ecf81a..5075bbb 100644
> --- a/arch/arm/boards/pcm049/lowlevel.c
> +++ b/arch/arm/boards/pcm049/lowlevel.c
> @@ -83,9 +83,9 @@ static void noinline pcm049_init_lowlevel(void)
>  	sr32(0x4A30a110, 2, 2, 0x3);  /* enable clocks */
>  }
>  
> -void reset(void)
> +void barebox_arm_reset_vector(void)
>  {
> -	common_reset();
> +	arm_cpu_lowlevel_init();
>  
>  	if (get_pc() > 0x80000000)
>  		goto out;
> diff --git a/arch/arm/boards/pcm051/lowlevel.c b/arch/arm/boards/pcm051/lowlevel.c
> index 683fdce..c2a367d 100644
> --- a/arch/arm/boards/pcm051/lowlevel.c
> +++ b/arch/arm/boards/pcm051/lowlevel.c
> @@ -3,9 +3,9 @@
>  #include <asm/barebox-arm-head.h>
>  #include <asm/barebox-arm.h>
>  
> -void __naked reset(void)
> +void __naked barebox_arm_reset_vector(void)
>  {
> -	common_reset();
> +	arm_cpu_lowlevel_init();
>  
>  	barebox_arm_entry(0x80000000, SZ_512M, 0);
>  }
> diff --git a/arch/arm/boards/phycard-a-l1/lowlevel.c b/arch/arm/boards/phycard-a-l1/lowlevel.c
> index 6043d8a..d00efcc 100644
> --- a/arch/arm/boards/phycard-a-l1/lowlevel.c
> +++ b/arch/arm/boards/phycard-a-l1/lowlevel.c
> @@ -249,9 +249,9 @@ static int pcaal1_board_init(void)
>  	return 0;
>  }
>  
> -void __naked reset(void)
> +void __naked barebox_arm_reset_vector(void)
>  {
> -	common_reset();
> +	arm_cpu_lowlevel_init();
>  
>  	pcaal1_board_init();
>  
> diff --git a/arch/arm/boards/phycard-a-xl2/lowlevel.c b/arch/arm/boards/phycard-a-xl2/lowlevel.c
> index f8f4db5..07505ff 100644
> --- a/arch/arm/boards/phycard-a-xl2/lowlevel.c
> +++ b/arch/arm/boards/phycard-a-xl2/lowlevel.c
> @@ -83,9 +83,9 @@ static noinline void pcaaxl2_init_lowlevel(void)
>  	sr32(0x4A30a110, 2, 2, 0x3);  /* enable clocks */
>  }
>  
> -void reset(void)
> +void barebox_arm_reset_vector(void)
>  {
> -	common_reset();
> +	arm_cpu_lowlevel_init();
>  
>  	if (get_pc() > 0x80000000)
>  		goto out;
> diff --git a/arch/arm/boards/phycard-i.MX27/lowlevel_init.S b/arch/arm/boards/phycard-i.MX27/lowlevel_init.S
> index d81066e..69513aa 100644
> --- a/arch/arm/boards/phycard-i.MX27/lowlevel_init.S
> +++ b/arch/arm/boards/phycard-i.MX27/lowlevel_init.S
> @@ -66,9 +66,9 @@
>  
>  	.section ".text_bare_init","ax"
>  
> -.globl reset
> -reset:
> -	common_reset r0
> +.globl barebox_arm_reset_vector
> +barebox_arm_reset_vector:
> +	arm_cpu_lowlevel_init r0
>  
>  	/* ahb lite ip interface */
>  	writel(0x20040304, MX27_AIPI_BASE_ADDR + MX27_AIPI1_PSR0)
> diff --git a/arch/arm/boards/raspberry-pi/lowlevel.c b/arch/arm/boards/raspberry-pi/lowlevel.c
> index 7a09eed..4c94cc9 100644
> --- a/arch/arm/boards/raspberry-pi/lowlevel.c
> +++ b/arch/arm/boards/raspberry-pi/lowlevel.c
> @@ -4,8 +4,8 @@
>  #include <asm/barebox-arm-head.h>
>  #include <mach/platform.h>
>  
> -void __naked reset(void)
> +void __naked barebox_arm_reset_vector(void)
>  {
> -        common_reset();
> +        arm_cpu_lowlevel_init();
>          barebox_arm_entry(BCM2835_SDRAM_BASE, SZ_128M, 0);
>  }
> diff --git a/arch/arm/boards/scb9328/lowlevel_init.S b/arch/arm/boards/scb9328/lowlevel_init.S
> index f8197bd..d7afa21 100644
> --- a/arch/arm/boards/scb9328/lowlevel_init.S
> +++ b/arch/arm/boards/scb9328/lowlevel_init.S
> @@ -76,10 +76,10 @@
>  	ldr		r1,	=val;	\
>  	str		r1,   [r0];
>  
> -.globl reset
> -reset:
> +.globl barebox_arm_reset_vector
> +barebox_arm_reset_vector:
>  
> -	common_reset r0
> +	arm_cpu_lowlevel_init r0
>  
>  	/* Change PERCLK1DIV to 14 ie 14+1 */
>  	writel(CFG_PCDR_VAL, MX1_CCM_BASE_ADDR + MX1_PCDR)
> diff --git a/arch/arm/boards/toshiba-ac100/lowlevel.c b/arch/arm/boards/toshiba-ac100/lowlevel.c
> index 68706a5..2f99d70 100644
> --- a/arch/arm/boards/toshiba-ac100/lowlevel.c
> +++ b/arch/arm/boards/toshiba-ac100/lowlevel.c
> @@ -3,8 +3,8 @@
>  #include <asm/barebox-arm-head.h>
>  #include <asm/barebox-arm.h>
>  
> -void __naked reset(void)
> +void __naked barebox_arm_reset_vector(void)
>  {
> -	common_reset();
> +	arm_cpu_lowlevel_init();
>  	barebox_arm_entry(0x0, SZ_512M, 0);
>  }
> diff --git a/arch/arm/boards/tqma53/lowlevel.c b/arch/arm/boards/tqma53/lowlevel.c
> index c6f79ca..60c28f7 100644
> --- a/arch/arm/boards/tqma53/lowlevel.c
> +++ b/arch/arm/boards/tqma53/lowlevel.c
> @@ -2,8 +2,8 @@
>  #include <mach/esdctl.h>
>  #include <asm/barebox-arm-head.h>
>  
> -void __naked reset(void)
> +void __naked barebox_arm_reset_vector(void)
>  {
> -	common_reset();
> +	arm_cpu_lowlevel_init();
>  	imx53_barebox_entry(0);
>  }
> diff --git a/arch/arm/boards/versatile/lowlevel.c b/arch/arm/boards/versatile/lowlevel.c
> index 3956347..b694c89 100644
> --- a/arch/arm/boards/versatile/lowlevel.c
> +++ b/arch/arm/boards/versatile/lowlevel.c
> @@ -3,8 +3,8 @@
>  #include <asm/barebox-arm-head.h>
>  #include <asm/barebox-arm.h>
>  
> -void __naked reset(void)
> +void __naked barebox_arm_reset_vector(void)
>  {
> -	common_reset();
> +	arm_cpu_lowlevel_init();
>  	barebox_arm_entry(0x0, SZ_64M, 0);
>  }
> diff --git a/arch/arm/cpu/exceptions.S b/arch/arm/cpu/exceptions.S
> index 115c4e5..4185bd1 100644
> --- a/arch/arm/cpu/exceptions.S
> +++ b/arch/arm/cpu/exceptions.S
> @@ -138,7 +138,7 @@ fiq:
>  	bl 	do_fiq
>  
>  .section .text_exceptions
> -1:	b 1b				/* reset */
> +1:	b 1b				/* barebox_arm_reset_vector */
>  #ifdef CONFIG_ARM_EXCEPTIONS
>  	ldr pc, =undefined_instruction	/* undefined instruction */
>  	ldr pc, =software_interrupt	/* software interrupt (SWI) */
> diff --git a/arch/arm/include/asm/barebox-arm-head.h b/arch/arm/include/asm/barebox-arm-head.h
> index bf00ff0..9d9b854 100644
> --- a/arch/arm/include/asm/barebox-arm-head.h
> +++ b/arch/arm/include/asm/barebox-arm-head.h
> @@ -5,7 +5,7 @@
>  
>  #ifndef __ASSEMBLY__
>  
> -static inline void common_reset(void)
> +static inline void arm_cpu_lowlevel_init(void)
>  {
>  	uint32_t r;
>  
> @@ -45,12 +45,12 @@ static inline void barebox_arm_head(void)
>  		"bx r9\n"
>  		".thumb\n"
>  		"1:\n"
> -		"bl reset\n"
> +		"bl barebox_arm_reset_vector\n"
>  		".rept 10\n"
>  		"1: b 1b\n"
>  		".endr\n"
>  #else
> -		"b reset\n"
> +		"b barebox_arm_reset_vector\n"
>  		"1: b 1b\n"
>  		"1: b 1b\n"
>  		"1: b 1b\n"
> @@ -70,7 +70,7 @@ static inline void barebox_arm_head(void)
>  
>  #else
>  
> -.macro  common_reset, scratch
> +.macro  arm_cpu_lowlevel_init, scratch
>  
>  	/* set the cpu to SVC32 mode */
>  	mrs	\scratch, cpsr
> diff --git a/arch/arm/mach-at91/at91rm9200_lowlevel_init.c b/arch/arm/mach-at91/at91rm9200_lowlevel_init.c
> index 221c05d..a99cfec 100644
> --- a/arch/arm/mach-at91/at91rm9200_lowlevel_init.c
> +++ b/arch/arm/mach-at91/at91rm9200_lowlevel_init.c
> @@ -23,12 +23,12 @@ void static inline access_sdram(void)
>  	writel(0x00000000, AT91_SDRAM_BASE);
>  }
>  
> -void __naked __bare_init reset(void)
> +void __naked __bare_init barebox_arm_reset_vector(void)
>  {
>  	u32 r;
>  	int i;
>  
> -	common_reset();
> +	arm_cpu_lowlevel_init();
>  
>  	/*
>  	 * PMC Check if the PLL is already initialized
> diff --git a/arch/arm/mach-at91/at91sam9260_lowlevel_init.c b/arch/arm/mach-at91/at91sam9260_lowlevel_init.c
> index 875c767..02e0566 100644
> --- a/arch/arm/mach-at91/at91sam9260_lowlevel_init.c
> +++ b/arch/arm/mach-at91/at91sam9260_lowlevel_init.c
> @@ -23,9 +23,9 @@
>  #include <init.h>
>  #include <sizes.h>
>  
> -void __naked __bare_init reset(void)
> +void __naked __bare_init barebox_arm_reset_vector(void)
>  {
> -	common_reset();
> +	arm_cpu_lowlevel_init();
>  
>  	arm_setup_stack(AT91SAM9260_SRAM_BASE + AT91SAM9260_SRAM_SIZE - 16);
>  
> diff --git a/arch/arm/mach-at91/at91sam9261_lowlevel_init.c b/arch/arm/mach-at91/at91sam9261_lowlevel_init.c
> index beaddc8..e740943 100644
> --- a/arch/arm/mach-at91/at91sam9261_lowlevel_init.c
> +++ b/arch/arm/mach-at91/at91sam9261_lowlevel_init.c
> @@ -23,9 +23,9 @@
>  #include <init.h>
>  #include <sizes.h>
>  
> -void __naked __bare_init reset(void)
> +void __naked __bare_init barebox_arm_reset_vector(void)
>  {
> -	common_reset();
> +	arm_cpu_lowlevel_init();
>  
>  	arm_setup_stack(AT91SAM9261_SRAM_BASE + AT91SAM9261_SRAM_SIZE - 16);
>  
> diff --git a/arch/arm/mach-at91/at91sam9263_lowlevel_init.c b/arch/arm/mach-at91/at91sam9263_lowlevel_init.c
> index 5102051..ae08c90 100644
> --- a/arch/arm/mach-at91/at91sam9263_lowlevel_init.c
> +++ b/arch/arm/mach-at91/at91sam9263_lowlevel_init.c
> @@ -23,9 +23,9 @@
>  #include <init.h>
>  #include <sizes.h>
>  
> -void __naked __bare_init reset(void)
> +void __naked __bare_init barebox_arm_reset_vector(void)
>  {
> -	common_reset();
> +	arm_cpu_lowlevel_init();
>  
>  	arm_setup_stack(AT91SAM9263_SRAM0_BASE + AT91SAM9263_SRAM0_SIZE - 16);
>  
> diff --git a/arch/arm/mach-at91/at91sam9g45_lowlevel_init.c b/arch/arm/mach-at91/at91sam9g45_lowlevel_init.c
> index 689312f..df65b86 100644
> --- a/arch/arm/mach-at91/at91sam9g45_lowlevel_init.c
> +++ b/arch/arm/mach-at91/at91sam9g45_lowlevel_init.c
> @@ -16,9 +16,9 @@
>  #include <init.h>
>  #include <sizes.h>
>  
> -void __naked __bare_init reset(void)
> +void __naked __bare_init barebox_arm_reset_vector(void)
>  {
> -	common_reset();
> +	arm_cpu_lowlevel_init();
>  
>  	arm_setup_stack(AT91SAM9G45_SRAM_BASE + AT91SAM9G45_SRAM_SIZE - 16);
>  
> diff --git a/arch/arm/mach-at91/at91sam9n12_lowlevel_init.c b/arch/arm/mach-at91/at91sam9n12_lowlevel_init.c
> index 6acbd06..eca12c5 100644
> --- a/arch/arm/mach-at91/at91sam9n12_lowlevel_init.c
> +++ b/arch/arm/mach-at91/at91sam9n12_lowlevel_init.c
> @@ -16,9 +16,9 @@
>  #include <init.h>
>  #include <sizes.h>
>  
> -void __naked __bare_init reset(void)
> +void __naked __bare_init barebox_arm_reset_vector(void)
>  {
> -	common_reset();
> +	arm_cpu_lowlevel_init();
>  
>  	arm_setup_stack(AT91SAM9N12_SRAM_BASE + AT91SAM9N12_SRAM_SIZE - 16);
>  
> diff --git a/arch/arm/mach-at91/at91sam9x5_lowlevel_init.c b/arch/arm/mach-at91/at91sam9x5_lowlevel_init.c
> index e1befcb..67dbd00 100644
> --- a/arch/arm/mach-at91/at91sam9x5_lowlevel_init.c
> +++ b/arch/arm/mach-at91/at91sam9x5_lowlevel_init.c
> @@ -16,9 +16,9 @@
>  #include <init.h>
>  #include <sizes.h>
>  
> -void __naked __bare_init reset(void)
> +void __naked __bare_init barebox_arm_reset_vector(void)
>  {
> -	common_reset();
> +	arm_cpu_lowlevel_init();
>  
>  	arm_setup_stack(AT91SAM9X5_SRAM_BASE + AT91SAM9X5_SRAM_SIZE - 16);
>  
> diff --git a/arch/arm/mach-at91/include/mach/barebox-arm-head.h b/arch/arm/mach-at91/include/mach/barebox-arm-head.h
> index 7d6a009..d4bb96f 100644
> --- a/arch/arm/mach-at91/include/mach/barebox-arm-head.h
> +++ b/arch/arm/mach-at91/include/mach/barebox-arm-head.h
> @@ -13,7 +13,7 @@ static inline void barebox_arm_head(void)
>  #ifdef CONFIG_THUMB2_BAREBOX
>  #error Thumb2 is not supported
>  #else
> -		"b reset\n"
> +		"b barebox_arm_reset_vector\n"
>  		"1: b 1b\n"
>  		"1: b 1b\n"
>  		"1: b 1b\n"
> diff --git a/arch/arm/mach-at91/sama5d3_lowlevel_init.c b/arch/arm/mach-at91/sama5d3_lowlevel_init.c
> index 1d30da6..9bb25e3 100644
> --- a/arch/arm/mach-at91/sama5d3_lowlevel_init.c
> +++ b/arch/arm/mach-at91/sama5d3_lowlevel_init.c
> @@ -15,9 +15,9 @@
>  #include <mach/hardware.h>
>  #include <mach/at91sam9_ddrsdr.h>
>  
> -void __naked __bare_init reset(void)
> +void __naked __bare_init barebox_arm_reset_vector(void)
>  {
> -	common_reset();
> +	arm_cpu_lowlevel_init();
>  
>  	arm_setup_stack(SAMA5D3_SRAM_BASE + SAMA5D3_SRAM_SIZE - 16);
>  
> diff --git a/arch/arm/mach-ep93xx/lowlevel_init.S b/arch/arm/mach-ep93xx/lowlevel_init.S
> index 154d38d..5729eab 100644
> --- a/arch/arm/mach-ep93xx/lowlevel_init.S
> +++ b/arch/arm/mach-ep93xx/lowlevel_init.S
> @@ -24,9 +24,9 @@
>  #include <mach/ep93xx-regs.h>
>  #include <asm/barebox-arm-head.h>
>  
> -.globl reset
> -reset:
> -	common_reset r0
> +.globl barebox_arm_reset_vector
> +barebox_arm_reset_vector:
> +	arm_cpu_lowlevel_init r0
>  
>  	/* Turn on both LEDs */
>  	bl red_LED_on
> diff --git a/arch/arm/mach-imx/include/mach/imx-flash-header.h b/arch/arm/mach-imx/include/mach/imx-flash-header.h
> index 9a351ad..a1f4a48 100644
> --- a/arch/arm/mach-imx/include/mach/imx-flash-header.h
> +++ b/arch/arm/mach-imx/include/mach/imx-flash-header.h
> @@ -162,9 +162,9 @@ static inline void barebox_arm_imx_fcb_head(void)
>  		"	bx r9\n"
>  		".thumb\n"
>  		"1:\n"
> -		"bl	reset\n"
> +		"bl	barebox_arm_reset_vector\n"
>  #else
> -		"1:	b reset\n"
> +		"1:	b barebox_arm_reset_vector\n"
>  		".word 0x0\n"
>  		".word 0x0\n"
>  #endif
> -- 
> 1.7.10.4
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
