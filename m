Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gwNqO-0005D5-84
 for barebox@lists.infradead.org; Wed, 20 Feb 2019 09:07:10 +0000
Date: Wed, 20 Feb 2019 10:07:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190220090704.sb5o6m6clgrop6m6@pengutronix.de>
References: <20190219172150.11901-1-a.fatoum@pengutronix.de>
 <20190219172150.11901-5-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190219172150.11901-5-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH v2 04/16] ARM: at91: replace at91sam9_ddrsdr.h with
 at91bootstrap's at91_ddrsdrc.h
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Feb 19, 2019 at 06:21:38PM +0100, Ahmad Fatoum wrote:
> Instead of adding missing definitions to the existing at91sam9_ddrsdr.h
> and adapting the incoming DDRAM initialization code from at91bootstrap,
> just replace the lightly used existing header with this one.
> 
> For easier comprehension, the replacement is done in three steps:
> This last step copies the memory size querying functions from at91sam9_ddrsdr.h
> to at91_ddrsdrc.h, then deletes it and fixes all references.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/boards/at91sam9m10g45ek/lowlevel.c   |   2 +-
>  arch/arm/boards/at91sam9m10ihd/lowlevel.c     |   2 +-
>  arch/arm/boards/at91sam9n12ek/lowlevel.c      |   2 +-
>  arch/arm/boards/at91sam9x5ek/lowlevel.c       |   2 +-
>  arch/arm/boards/pm9g45/lowlevel.c             |   3 +-
>  arch/arm/boards/sama5d3_xplained/lowlevel.c   |   2 +-
>  arch/arm/boards/sama5d3xek/lowlevel.c         |   2 +-
>  arch/arm/boards/sama5d4_xplained/lowlevel.c   |   2 +-
>  arch/arm/boards/sama5d4ek/lowlevel.c          |   2 +-
>  arch/arm/mach-at91/at91sam9g45_devices.c      |   2 +-
>  arch/arm/mach-at91/at91sam9g45_reset.S        |   2 +-
>  arch/arm/mach-at91/at91sam9n12_devices.c      |   2 +-
>  arch/arm/mach-at91/at91sam9x5_devices.c       |   2 +-
>  .../arm/mach-at91/include/mach/at91_ddrsdrc.h | 102 ++++++++++++++++++
>  arch/arm/mach-at91/sama5d3_devices.c          |   2 +-
>  arch/arm/mach-at91/sama5d4_devices.c          |   2 +-
>  16 files changed, 118 insertions(+), 15 deletions(-)
> 
> diff --git a/arch/arm/boards/at91sam9m10g45ek/lowlevel.c b/arch/arm/boards/at91sam9m10g45ek/lowlevel.c
> index 478ff11e1dfe..b0161553ed05 100644
> --- a/arch/arm/boards/at91sam9m10g45ek/lowlevel.c
> +++ b/arch/arm/boards/at91sam9m10g45ek/lowlevel.c
> @@ -11,7 +11,7 @@
>  #include <asm/barebox-arm.h>
>  
>  #include <mach/hardware.h>
> -#include <mach/at91sam9_ddrsdr.h>
> +#include <mach/at91_ddrsdrc.h>
>  
>  void __naked __bare_init barebox_arm_reset_vector(void)
>  {
> diff --git a/arch/arm/boards/at91sam9m10ihd/lowlevel.c b/arch/arm/boards/at91sam9m10ihd/lowlevel.c
> index d5940b987afa..c660b18e8854 100644
> --- a/arch/arm/boards/at91sam9m10ihd/lowlevel.c
> +++ b/arch/arm/boards/at91sam9m10ihd/lowlevel.c
> @@ -10,7 +10,7 @@
>  #include <asm/barebox-arm-head.h>
>  #include <asm/barebox-arm.h>
>  
> -#include <mach/at91sam9_ddrsdr.h>
> +#include <mach/at91_ddrsdrc.h>
>  #include <mach/at91sam9g45.h>
>  #include <mach/hardware.h>
>  
> diff --git a/arch/arm/boards/at91sam9n12ek/lowlevel.c b/arch/arm/boards/at91sam9n12ek/lowlevel.c
> index 47079336e632..de8308725ac9 100644
> --- a/arch/arm/boards/at91sam9n12ek/lowlevel.c
> +++ b/arch/arm/boards/at91sam9n12ek/lowlevel.c
> @@ -10,7 +10,7 @@
>  #include <asm/barebox-arm-head.h>
>  #include <asm/barebox-arm.h>
>  
> -#include <mach/at91sam9_ddrsdr.h>
> +#include <mach/at91_ddrsdrc.h>
>  #include <mach/hardware.h>
>  
>  void __naked __bare_init barebox_arm_reset_vector(void)
> diff --git a/arch/arm/boards/at91sam9x5ek/lowlevel.c b/arch/arm/boards/at91sam9x5ek/lowlevel.c
> index 9aa0e8ba9b2b..aefe18d1c92e 100644
> --- a/arch/arm/boards/at91sam9x5ek/lowlevel.c
> +++ b/arch/arm/boards/at91sam9x5ek/lowlevel.c
> @@ -1,6 +1,6 @@
>  #include <common.h>
>  #include <linux/sizes.h>
> -#include <mach/at91sam9_ddrsdr.h>
> +#include <mach/at91_ddrsdrc.h>
>  #include <asm/barebox-arm-head.h>
>  #include <asm/barebox-arm.h>
>  #include <io.h>
> diff --git a/arch/arm/boards/pm9g45/lowlevel.c b/arch/arm/boards/pm9g45/lowlevel.c
> index 67454bde268c..d64ebef27407 100644
> --- a/arch/arm/boards/pm9g45/lowlevel.c
> +++ b/arch/arm/boards/pm9g45/lowlevel.c
> @@ -10,7 +10,8 @@
>  #include <asm/barebox-arm-head.h>
>  #include <asm/barebox-arm.h>
>  
> -#include <mach/at91sam9_ddrsdr.h>
> +#include <mach/at91_ddrsdrc.h>
> +
>  #include <mach/hardware.h>
>  
>  void __naked __bare_init barebox_arm_reset_vector(void)
> diff --git a/arch/arm/boards/sama5d3_xplained/lowlevel.c b/arch/arm/boards/sama5d3_xplained/lowlevel.c
> index 56003c6330ec..b3b2c683eefd 100644
> --- a/arch/arm/boards/sama5d3_xplained/lowlevel.c
> +++ b/arch/arm/boards/sama5d3_xplained/lowlevel.c
> @@ -10,7 +10,7 @@
>  #include <asm/barebox-arm-head.h>
>  #include <asm/barebox-arm.h>
>  
> -#include <mach/at91sam9_ddrsdr.h>
> +#include <mach/at91_ddrsdrc.h>
>  #include <mach/hardware.h>
>  
>  void __naked __bare_init barebox_arm_reset_vector(void)
> diff --git a/arch/arm/boards/sama5d3xek/lowlevel.c b/arch/arm/boards/sama5d3xek/lowlevel.c
> index 56003c6330ec..b3b2c683eefd 100644
> --- a/arch/arm/boards/sama5d3xek/lowlevel.c
> +++ b/arch/arm/boards/sama5d3xek/lowlevel.c
> @@ -10,7 +10,7 @@
>  #include <asm/barebox-arm-head.h>
>  #include <asm/barebox-arm.h>
>  
> -#include <mach/at91sam9_ddrsdr.h>
> +#include <mach/at91_ddrsdrc.h>
>  #include <mach/hardware.h>
>  
>  void __naked __bare_init barebox_arm_reset_vector(void)
> diff --git a/arch/arm/boards/sama5d4_xplained/lowlevel.c b/arch/arm/boards/sama5d4_xplained/lowlevel.c
> index 82993c83551b..fdaa57bcf618 100644
> --- a/arch/arm/boards/sama5d4_xplained/lowlevel.c
> +++ b/arch/arm/boards/sama5d4_xplained/lowlevel.c
> @@ -10,7 +10,7 @@
>  #include <asm/barebox-arm-head.h>
>  #include <asm/barebox-arm.h>
>  
> -#include <mach/at91sam9_ddrsdr.h>
> +#include <mach/at91_ddrsdrc.h>
>  #include <mach/hardware.h>
>  
>  void __naked __bare_init barebox_arm_reset_vector(void)
> diff --git a/arch/arm/boards/sama5d4ek/lowlevel.c b/arch/arm/boards/sama5d4ek/lowlevel.c
> index 82993c83551b..fdaa57bcf618 100644
> --- a/arch/arm/boards/sama5d4ek/lowlevel.c
> +++ b/arch/arm/boards/sama5d4ek/lowlevel.c
> @@ -10,7 +10,7 @@
>  #include <asm/barebox-arm-head.h>
>  #include <asm/barebox-arm.h>
>  
> -#include <mach/at91sam9_ddrsdr.h>
> +#include <mach/at91_ddrsdrc.h>
>  #include <mach/hardware.h>
>  
>  void __naked __bare_init barebox_arm_reset_vector(void)
> diff --git a/arch/arm/mach-at91/at91sam9g45_devices.c b/arch/arm/mach-at91/at91sam9g45_devices.c
> index 43d8d5fbd6a2..389d88c17d4f 100644
> --- a/arch/arm/mach-at91/at91sam9g45_devices.c
> +++ b/arch/arm/mach-at91/at91sam9g45_devices.c
> @@ -17,7 +17,7 @@
>  #include <mach/hardware.h>
>  #include <mach/at91_pmc.h>
>  #include <mach/at91sam9g45_matrix.h>
> -#include <mach/at91sam9_ddrsdr.h>
> +#include <mach/at91_ddrsdrc.h>
>  #include <mach/at91_rtt.h>
>  #include <mach/board.h>
>  #include <mach/iomux.h>
> diff --git a/arch/arm/mach-at91/at91sam9g45_reset.S b/arch/arm/mach-at91/at91sam9g45_reset.S
> index 085683c7f9d8..9077871d7203 100644
> --- a/arch/arm/mach-at91/at91sam9g45_reset.S
> +++ b/arch/arm/mach-at91/at91sam9g45_reset.S
> @@ -12,7 +12,7 @@
>  
>  #include <linux/linkage.h>
>  #include <mach/hardware.h>
> -#include <mach/at91sam9_ddrsdr.h>
> +#include <mach/at91_ddrsdrc.h>
>  #include <mach/at91_rstc.h>
>  
>  			.arm
> diff --git a/arch/arm/mach-at91/at91sam9n12_devices.c b/arch/arm/mach-at91/at91sam9n12_devices.c
> index 43cbb79af4a5..91b3e9b2fbc5 100644
> --- a/arch/arm/mach-at91/at91sam9n12_devices.c
> +++ b/arch/arm/mach-at91/at91sam9n12_devices.c
> @@ -18,7 +18,7 @@
>  #include <mach/board.h>
>  #include <mach/at91_pmc.h>
>  #include <mach/at91sam9n12_matrix.h>
> -#include <mach/at91sam9_ddrsdr.h>
> +#include <mach/at91_ddrsdrc.h>
>  #include <mach/iomux.h>
>  #include <mach/cpu.h>
>  #include <i2c/i2c-gpio.h>
> diff --git a/arch/arm/mach-at91/at91sam9x5_devices.c b/arch/arm/mach-at91/at91sam9x5_devices.c
> index ab506a1f4236..022e4fb59ab9 100644
> --- a/arch/arm/mach-at91/at91sam9x5_devices.c
> +++ b/arch/arm/mach-at91/at91sam9x5_devices.c
> @@ -17,7 +17,7 @@
>  #include <mach/board.h>
>  #include <mach/at91_pmc.h>
>  #include <mach/at91sam9x5_matrix.h>
> -#include <mach/at91sam9_ddrsdr.h>
> +#include <mach/at91_ddrsdrc.h>
>  #include <mach/iomux.h>
>  #include <mach/cpu.h>
>  #include <i2c/i2c-gpio.h>
> diff --git a/arch/arm/mach-at91/include/mach/at91_ddrsdrc.h b/arch/arm/mach-at91/include/mach/at91_ddrsdrc.h
> index 57d0d8f489c4..b74ec3e9848c 100644
> --- a/arch/arm/mach-at91/include/mach/at91_ddrsdrc.h
> +++ b/arch/arm/mach-at91/include/mach/at91_ddrsdrc.h
> @@ -285,4 +285,106 @@
>  #define AT91C_DDRC2_WPVS	(0x1UL << 0)
>  #define AT91C_DDRC2_WPSRC	(0xFFFFUL << 8)
>  
> +#ifndef __ASSEMBLY__
> +#include <common.h>
> +#include <io.h>
> +
> +static inline u32 at91_get_ddram_size(void * __iomem base, bool is_nb)
> +{
> +	u32 cr;
> +	u32 mdr;
> +	u32 size;
> +	bool is_sdram;
> +
> +	cr = readl(base + AT91C_HDDRSDRC2_CR);
> +	mdr = readl(base + AT91C_HDDRSDRC2_MDR);
> +
> +	/* will always be false for sama5d2, sama5d3 or sama5d4 */
> +	is_sdram = (mdr & AT91C_DDRC2_MD) <= AT91C_DDRC2_MD_LP_SDR_SDRAM;
> +
> +	/* Formula:
> +	 * size = bank << (col + row + 1);
> +	 * if (bandwidth == 32 bits)
> +	 *	size <<= 1;
> +	 */
> +	size = 1;
> +	/* COL */
> +	size += (cr & AT91C_DDRC2_NC) + 8;
> +	if (!is_sdram)
> +		size ++;
> +	/* ROW */
> +	size += ((cr & AT91C_DDRC2_NR) >> 2) + 11;
> +	/* BANK */
> +	if (is_nb)
> +		size = ((cr & AT91C_DDRC2_NB_BANKS) ? 8 : 4) << size;
> +	else
> +		size = 4 << size;
> +
> +	/* bandwidth */
> +	if (!(mdr & AT91C_DDRC2_DBW))
> +		size <<= 1;
> +
> +	return size;
> +}
> +
> +#ifdef CONFIG_SOC_AT91SAM9G45
> +#include <mach/at91sam9g45.h>
> +static inline u32 at91sam9g45_get_ddram_size(int bank)
> +{
> +	switch (bank) {
> +	case 0:
> +		return at91_get_ddram_size(IOMEM(AT91SAM9G45_BASE_DDRSDRC0), false);
> +	case 1:
> +		return at91_get_ddram_size(IOMEM(AT91SAM9G45_BASE_DDRSDRC1), false);
> +	default:
> +		return 0;
> +	}
> +}
> +#else
> +static inline u32 at91sam9g45_get_ddram_size(int bank)
> +{
> +	return 0;
> +}
> +#endif

This #ifdeffery looks rather unnecessary. Can you please remove it?

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
