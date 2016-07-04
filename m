Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bJyMt-0001xN-Do
 for barebox@lists.infradead.org; Mon, 04 Jul 2016 07:32:36 +0000
Date: Mon, 4 Jul 2016 09:32:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160704073213.GD20657@pengutronix.de>
References: <1467314040-13010-1-git-send-email-akurz@blala.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1467314040-13010-1-git-send-email-akurz@blala.de>
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
Subject: Re: [PATCH] ARM i.MX: de-duplicate PLL initializer macros
To: Alexander Kurz <akurz@blala.de>
Cc: barebox@lists.infradead.org

On Thu, Jun 30, 2016 at 09:14:00PM +0200, Alexander Kurz wrote:
> Macros for three PLL setups got cloned in different board specific subdirs.
> Re-unify those macros into a common place and avoid checkpatch 80-char
> warnings when creating a new board subdir.
> 
> Signed-off-by: Alexander Kurz <akurz@blala.de>
> ---
>  arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c  | 3 ---
>  arch/arm/boards/eukrea_cpuimx35/lowlevel.c         | 5 -----
>  arch/arm/boards/freescale-mx25-3ds/lowlevel_init.S | 7 +++----
>  arch/arm/boards/freescale-mx35-3ds/lowlevel_init.S | 5 -----
>  arch/arm/boards/guf-cupid/board.c                  | 3 ---
>  arch/arm/boards/guf-cupid/lowlevel.c               | 5 -----
>  arch/arm/boards/phytec-phycore-imx35/lowlevel.c    | 5 -----
>  arch/arm/boards/phytec-phycore-imx35/pcm043.c      | 3 ---
>  arch/arm/mach-imx/include/mach/imx-pll.h           | 8 ++++++++
>  9 files changed, 11 insertions(+), 33 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
> index 9c4ea13..568abc2 100644
> --- a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
> +++ b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
> @@ -318,9 +318,6 @@ static int eukrea_cpuimx35_core_init(void)
>  
>  core_initcall(eukrea_cpuimx35_core_init);
>  
> -#define MPCTL_PARAM_399     (IMX_PLL_PD(0) | IMX_PLL_MFD(15) | IMX_PLL_MFI(8) | IMX_PLL_MFN(5))
> -#define MPCTL_PARAM_532     ((1 << 31) | IMX_PLL_PD(0) | IMX_PLL_MFD(11) | IMX_PLL_MFI(11) | IMX_PLL_MFN(1))
> -
>  static int do_cpufreq(int argc, char *argv[])
>  {
>  	unsigned long freq;
> diff --git a/arch/arm/boards/eukrea_cpuimx35/lowlevel.c b/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
> index 83c25fe..27ca078 100644
> --- a/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
> +++ b/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
> @@ -30,11 +30,6 @@
>  #include <asm-generic/memory_layout.h>
>  #include <asm/system.h>
>  
> -/* Assuming 24MHz input clock */
> -#define MPCTL_PARAM_399     (IMX_PLL_PD(0) | IMX_PLL_MFD(15) | IMX_PLL_MFI(8) | IMX_PLL_MFN(5))
> -#define MPCTL_PARAM_532     ((1 << 31) | IMX_PLL_PD(0) | IMX_PLL_MFD(11) | IMX_PLL_MFI(11) | IMX_PLL_MFN(1))
> -#define PPCTL_PARAM_300     (IMX_PLL_PD(0) | IMX_PLL_MFD(3) | IMX_PLL_MFI(6) | IMX_PLL_MFN(1))
> -
>  void __bare_init __naked barebox_arm_reset_vector(void)
>  {
>  	uint32_t r, s;
> diff --git a/arch/arm/boards/freescale-mx25-3ds/lowlevel_init.S b/arch/arm/boards/freescale-mx25-3ds/lowlevel_init.S
> index a5d54e8..bf3830d 100644
> --- a/arch/arm/boards/freescale-mx25-3ds/lowlevel_init.S
> +++ b/arch/arm/boards/freescale-mx25-3ds/lowlevel_init.S
> @@ -35,9 +35,8 @@
>  	strb		r1,	[r0];
>  
>  /* Assuming 24MHz input clock */
> -#define MPCTL_PARAM_399     (IMX_PLL_PD(0) | IMX_PLL_MFD(15) | IMX_PLL_MFI(8) | IMX_PLL_MFN(5))
> -#define MPCTL_PARAM_532     (IMX_PLL_PD(1) | IMX_PLL_MFD(0) | IMX_PLL_MFI(11) | IMX_PLL_MFN(1))
> -#define PPCTL_PARAM_300     (IMX_PLL_PD(0) | IMX_PLL_MFD(3) | IMX_PLL_MFI(6) | IMX_PLL_MFN(1))
> +#define MPCTL_PARAM_532_MX25 \
> +	(IMX_PLL_PD(1) | IMX_PLL_MFD(0) | IMX_PLL_MFI(11) | IMX_PLL_MFN(1))
>  
>  .section ".text_bare_init","ax"
>  
> @@ -46,7 +45,7 @@ L2CACHE_PARAM:          .word   0x00030024
>  CCM_CCMR_W:             .word   0x003F4208
>  CCM_PDR0_W:             .word   0x00801000
>  MPCTL_PARAM_399_W:      .word   MPCTL_PARAM_399
> -MPCTL_PARAM_532_W:      .word   MPCTL_PARAM_532
> +MPCTL_PARAM_532_W:      .word   MPCTL_PARAM_532_MX25
>  PPCTL_PARAM_W:    	.word   PPCTL_PARAM_300
>  CCM_BASE_ADDR_W:        .word   MX25_CCM_BASE_ADDR
>  
> diff --git a/arch/arm/boards/freescale-mx35-3ds/lowlevel_init.S b/arch/arm/boards/freescale-mx35-3ds/lowlevel_init.S
> index 0f9e813..011de6d 100644
> --- a/arch/arm/boards/freescale-mx35-3ds/lowlevel_init.S
> +++ b/arch/arm/boards/freescale-mx35-3ds/lowlevel_init.S
> @@ -40,11 +40,6 @@
>  	ldr		r1,	=val;	\
>  	strb		r1,	[r0];
>  
> -/* Assuming 24MHz input clock */
> -#define MPCTL_PARAM_399	(IMX_PLL_PD(0) | IMX_PLL_MFD(15) | IMX_PLL_MFI(8) | IMX_PLL_MFN(5))
> -#define MPCTL_PARAM_532	((1 << 31) | IMX_PLL_PD(0) | IMX_PLL_MFD(11) | IMX_PLL_MFI(11) | IMX_PLL_MFN(1))
> -#define PPCTL_PARAM_300	(IMX_PLL_PD(0) | IMX_PLL_MFD(3) | IMX_PLL_MFI(6) | IMX_PLL_MFN(1))
> -
>  	.section ".text_bare_init","ax"
>  
>  ARM_PPMRR:		.word	0x40000015
> diff --git a/arch/arm/boards/guf-cupid/board.c b/arch/arm/boards/guf-cupid/board.c
> index 6ec74eb..d1b285c 100644
> --- a/arch/arm/boards/guf-cupid/board.c
> +++ b/arch/arm/boards/guf-cupid/board.c
> @@ -318,9 +318,6 @@ static int cupid_core_setup(void)
>  
>  core_initcall(cupid_core_setup);
>  
> -#define MPCTL_PARAM_399     (IMX_PLL_PD(0) | IMX_PLL_MFD(15) | IMX_PLL_MFI(8) | IMX_PLL_MFN(5))
> -#define MPCTL_PARAM_532     ((1 << 31) | IMX_PLL_PD(0) | IMX_PLL_MFD(11) | IMX_PLL_MFI(11) | IMX_PLL_MFN(1))
> -
>  static int do_cpufreq(int argc, char *argv[])
>  {
>  	unsigned long freq;
> diff --git a/arch/arm/boards/guf-cupid/lowlevel.c b/arch/arm/boards/guf-cupid/lowlevel.c
> index bcd2a24..1a48b1d 100644
> --- a/arch/arm/boards/guf-cupid/lowlevel.c
> +++ b/arch/arm/boards/guf-cupid/lowlevel.c
> @@ -30,11 +30,6 @@
>  #include <asm-generic/memory_layout.h>
>  #include <asm/system.h>
>  
> -/* Assuming 24MHz input clock */
> -#define MPCTL_PARAM_399     (IMX_PLL_PD(0) | IMX_PLL_MFD(15) | IMX_PLL_MFI(8) | IMX_PLL_MFN(5))
> -#define MPCTL_PARAM_532     ((1 << 31) | IMX_PLL_PD(0) | IMX_PLL_MFD(11) | IMX_PLL_MFI(11) | IMX_PLL_MFN(1))
> -#define PPCTL_PARAM_300     (IMX_PLL_PD(0) | IMX_PLL_MFD(3) | IMX_PLL_MFI(6) | IMX_PLL_MFN(1))
> -
>  #define SDRAM_MODE_BL_8	0x0003
>  #define SDRAM_MODE_BSEQ	0x0000
>  #define SDRAM_MODE_CL_3	0x0030
> diff --git a/arch/arm/boards/phytec-phycore-imx35/lowlevel.c b/arch/arm/boards/phytec-phycore-imx35/lowlevel.c
> index 1ad5439..7753568 100644
> --- a/arch/arm/boards/phytec-phycore-imx35/lowlevel.c
> +++ b/arch/arm/boards/phytec-phycore-imx35/lowlevel.c
> @@ -30,11 +30,6 @@
>  #include <asm-generic/memory_layout.h>
>  #include <asm/system.h>
>  
> -/* Assuming 24MHz input clock */
> -#define MPCTL_PARAM_399     (IMX_PLL_PD(0) | IMX_PLL_MFD(15) | IMX_PLL_MFI(8) | IMX_PLL_MFN(5))
> -#define MPCTL_PARAM_532     ((1 << 31) | IMX_PLL_PD(0) | IMX_PLL_MFD(11) | IMX_PLL_MFI(11) | IMX_PLL_MFN(1))
> -#define PPCTL_PARAM_300     (IMX_PLL_PD(0) | IMX_PLL_MFD(3) | IMX_PLL_MFI(6) | IMX_PLL_MFN(1))
> -
>  #define IMX35_CHIP_REVISION_2_1		0x11
>  
>  #define CCM_PDR0_399	0x00011000
> diff --git a/arch/arm/boards/phytec-phycore-imx35/pcm043.c b/arch/arm/boards/phytec-phycore-imx35/pcm043.c
> index b83698b..65b592d 100644
> --- a/arch/arm/boards/phytec-phycore-imx35/pcm043.c
> +++ b/arch/arm/boards/phytec-phycore-imx35/pcm043.c
> @@ -295,9 +295,6 @@ static int pcm043_core_setup(void)
>  
>  core_initcall(pcm043_core_setup);
>  
> -#define MPCTL_PARAM_399     (IMX_PLL_PD(0) | IMX_PLL_MFD(15) | IMX_PLL_MFI(8) | IMX_PLL_MFN(5))
> -#define MPCTL_PARAM_532     ((1 << 31) | IMX_PLL_PD(0) | IMX_PLL_MFD(11) | IMX_PLL_MFI(11) | IMX_PLL_MFN(1))
> -
>  static int do_cpufreq(int argc, char *argv[])
>  {
>  	unsigned long freq;
> diff --git a/arch/arm/mach-imx/include/mach/imx-pll.h b/arch/arm/mach-imx/include/mach/imx-pll.h
> index df7e73e..0ccf41b 100644
> --- a/arch/arm/mach-imx/include/mach/imx-pll.h
> +++ b/arch/arm/mach-imx/include/mach/imx-pll.h
> @@ -15,4 +15,12 @@
>  #define IMX_PLL_MFN(x)		(((x) & 0x3ff) << 0)
>  #define IMX_PLL_BRMO		(1 << 31)
>  
> +/* Assuming 24MHz input clock */
> +#define MPCTL_PARAM_532 ((1 << 31) | \
> +	IMX_PLL_PD(0) | IMX_PLL_MFD(11) | IMX_PLL_MFI(11) | IMX_PLL_MFN(1))
> +#define MPCTL_PARAM_399 \
> +	(IMX_PLL_PD(0) | IMX_PLL_MFD(15) | IMX_PLL_MFI(8) | IMX_PLL_MFN(5))
> +#define PPCTL_PARAM_300 \
> +	(IMX_PLL_PD(0) | IMX_PLL_MFD(3) | IMX_PLL_MFI(6) | IMX_PLL_MFN(1))
> +
>  #endif /* __INCLUDE_ASM_ARCH_IMX_PLL_H*/
> -- 
> 2.1.4
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
