Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kwl2z-0001P6-Hz
 for barebox@lists.infradead.org; Tue, 05 Jan 2021 12:02:46 +0000
Date: Tue, 5 Jan 2021 13:02:44 +0100
Message-ID: <20210105120244.GC19063@pengutronix.de>
References: <20210104093327.5830-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210104093327.5830-1-a.fatoum@pengutronix.de>
From: Sascha Hauer <sha@pengutronix.de>
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
Subject: Re: [PATCH] ARM: at91: constify struct at91_ddramc_register parameters
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Jan 04, 2021 at 10:33:27AM +0100, Ahmad Fatoum wrote:
> The SDRAM config passed as struct at91_ddramc_register is read-only,
> so make it const everywhere to document and enforce this.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/mach-at91/ddramc_ll.c                       | 6 +++---
>  arch/arm/mach-at91/include/mach/ddramc.h             | 6 +++---
>  arch/arm/mach-at91/include/mach/sama5d2-sip-ddramc.h | 2 +-
>  arch/arm/mach-at91/include/mach/sama5d2_ll.h         | 2 +-
>  arch/arm/mach-at91/sama5d2_ll.c                      | 2 +-
>  5 files changed, 9 insertions(+), 9 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-at91/ddramc_ll.c b/arch/arm/mach-at91/ddramc_ll.c
> index 4768fdcd6281..77d03720cca4 100644
> --- a/arch/arm/mach-at91/ddramc_ll.c
> +++ b/arch/arm/mach-at91/ddramc_ll.c
> @@ -12,7 +12,7 @@
>  
>  void at91_ddram_initialize(void __iomem *base_address,
>  			   void __iomem *ram_address,
> -			   struct at91_ddramc_register *ddramc_config)
> +			   const struct at91_ddramc_register *ddramc_config)
>  {
>  	unsigned long ba_offset;
>  	unsigned long cr = 0;
> @@ -235,7 +235,7 @@ void at91_ddram_initialize(void __iomem *base_address,
>  
>  void at91_lpddr2_sdram_initialize(void __iomem *base_address,
>  				  void __iomem *ram_address,
> -				  struct at91_ddramc_register *ddramc_config)
> +				  const struct at91_ddramc_register *ddramc_config)
>  {
>  	unsigned long reg;
>  
> @@ -386,7 +386,7 @@ void at91_lpddr2_sdram_initialize(void __iomem *base_address,
>  
>  void at91_lpddr1_sdram_initialize(void __iomem *base_address,
>  				  void __iomem *ram_address,
> -				  struct at91_ddramc_register *ddramc_config)
> +				  const struct at91_ddramc_register *ddramc_config)
>  {
>  	unsigned long ba_offset;
>  
> diff --git a/arch/arm/mach-at91/include/mach/ddramc.h b/arch/arm/mach-at91/include/mach/ddramc.h
> index b929bf5f58e8..5d6f3a70b788 100644
> --- a/arch/arm/mach-at91/include/mach/ddramc.h
> +++ b/arch/arm/mach-at91/include/mach/ddramc.h
> @@ -21,16 +21,16 @@ struct at91_ddramc_register {
>  
>  void at91_ddram_initialize(void __iomem *base_address,
>  			   void __iomem *ram_address,
> -			   struct at91_ddramc_register *ddramc_config);
> +			   const struct at91_ddramc_register *ddramc_config);
>  
>  void at91_lpddr2_sdram_initialize(void __iomem *base_address,
>  				  void __iomem *ram_address,
> -				  struct at91_ddramc_register *ddramc_config);
> +				  const struct at91_ddramc_register *ddramc_config);
>  
>  
>  void at91_lpddr1_sdram_initialize(void __iomem *base_address,
>  				  void __iomem *ram_address,
> -				  struct at91_ddramc_register *ddramc_config);
> +				  const struct at91_ddramc_register *ddramc_config);
>  
>  void __noreturn sama5d2_barebox_entry(unsigned int r4, void *boarddata);
>  
> diff --git a/arch/arm/mach-at91/include/mach/sama5d2-sip-ddramc.h b/arch/arm/mach-at91/include/mach/sama5d2-sip-ddramc.h
> index 35c92c43fce8..6a75ac71fc35 100644
> --- a/arch/arm/mach-at91/include/mach/sama5d2-sip-ddramc.h
> +++ b/arch/arm/mach-at91/include/mach/sama5d2-sip-ddramc.h
> @@ -11,7 +11,7 @@
>  
>  static inline void sama5d2_d1g_ddrconf(void) /* DDR2 1Gbit SDRAM */
>  {
> -	struct at91_ddramc_register conf = {
> +	const struct at91_ddramc_register conf = {
>  		.mdr = AT91_DDRC2_DBW_16_BITS | AT91_DDRC2_MD_DDR2_SDRAM,
>  
>  		.cr = AT91_DDRC2_NC_DDR10_SDR9 | AT91_DDRC2_NR_13 |
> diff --git a/arch/arm/mach-at91/include/mach/sama5d2_ll.h b/arch/arm/mach-at91/include/mach/sama5d2_ll.h
> index 96f3bc545284..244b1a706594 100644
> --- a/arch/arm/mach-at91/include/mach/sama5d2_ll.h
> +++ b/arch/arm/mach-at91/include/mach/sama5d2_ll.h
> @@ -25,7 +25,7 @@ static inline void sama5d2_udelay_init(unsigned int msc)
>  }
>  
>  
> -void sama5d2_ddr2_init(struct at91_ddramc_register *ddramc_reg_config);
> +void sama5d2_ddr2_init(const struct at91_ddramc_register *ddramc_reg_config);
>  
>  static inline int sama5d2_pmc_enable_generic_clock(unsigned int periph_id,
>  						   unsigned int clk_source,
> diff --git a/arch/arm/mach-at91/sama5d2_ll.c b/arch/arm/mach-at91/sama5d2_ll.c
> index c3b50617778a..3366a50e8fba 100644
> --- a/arch/arm/mach-at91/sama5d2_ll.c
> +++ b/arch/arm/mach-at91/sama5d2_ll.c
> @@ -18,7 +18,7 @@
>  #define sama5d2_pmc_write(off, val) writel(val, SAMA5D2_BASE_PMC + off)
>  #define sama5d2_pmc_read(off) readl(SAMA5D2_BASE_PMC + off)
>  
> -void sama5d2_ddr2_init(struct at91_ddramc_register *ddramc_reg_config)
> +void sama5d2_ddr2_init(const struct at91_ddramc_register *ddramc_reg_config)
>  {
>  	unsigned int reg;
>  
> -- 
> 2.29.2
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
