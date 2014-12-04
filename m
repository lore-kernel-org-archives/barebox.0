Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XwQlS-0000yD-FA
 for barebox@lists.infradead.org; Thu, 04 Dec 2014 07:23:51 +0000
Date: Thu, 4 Dec 2014 08:23:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141204072325.GR30369@pengutronix.de>
References: <1417614786-15460-1-git-send-email-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1417614786-15460-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v2 1/2] i.MX6: phytec: Distil different startup functions
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Dec 03, 2014 at 05:53:05AM -0800, Andrey Smirnov wrote:
> Distil different startup functions into a generic one, different
> behavioral aspects of which can be influenced by its parameters.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---

Applied both, thanks

Sascha

>  arch/arm/boards/phytec-phyflex-imx6/lowlevel.c | 68 +++++++-------------------
>  1 file changed, 19 insertions(+), 49 deletions(-)
> 
> diff --git a/arch/arm/boards/phytec-phyflex-imx6/lowlevel.c b/arch/arm/boards/phytec-phyflex-imx6/lowlevel.c
> index e6f9d03..e8937b9 100644
> --- a/arch/arm/boards/phytec-phyflex-imx6/lowlevel.c
> +++ b/arch/arm/boards/phytec-phyflex-imx6/lowlevel.c
> @@ -65,7 +65,9 @@ BAREBOX_IMD_TAG_STRING(phyflex_mx6_memsize_1G, IMD_TYPE_PARAMETER, "memsize=1024
>  BAREBOX_IMD_TAG_STRING(phyflex_mx6_memsize_2G, IMD_TYPE_PARAMETER, "memsize=2048", 0);
>  BAREBOX_IMD_TAG_STRING(phyflex_mx6_memsize_4G, IMD_TYPE_PARAMETER, "memsize=4096", 0);
>  
> -static void __noreturn start_imx6q_phytec_pbab01_common(uint32_t size)
> +static void __noreturn start_imx6_phytec_common(uint32_t size,
> +						bool do_early_uart_config,
> +						void *fdt_blob_fixed_offset)
>  {
>  	void *fdt;
>  
> @@ -73,25 +75,10 @@ static void __noreturn start_imx6q_phytec_pbab01_common(uint32_t size)
>  
>  	arm_setup_stack(0x00920000 - 8);
>  
> -	if (IS_ENABLED(CONFIG_DEBUG_LL))
> +	if (do_early_uart_config && IS_ENABLED(CONFIG_DEBUG_LL))
>  		setup_uart();
>  
> -	fdt = __dtb_imx6q_phytec_pbab01_start - get_runtime_offset();
> -
> -	barebox_arm_entry(0x10000000, size, fdt);
> -}
> -
> -
> -static void __noreturn start_imx6dl_phytec_pbab01_common(uint32_t size)
> -{
> -	void *fdt;
> -
> -	imx6_cpu_lowlevel_init();
> -
> -	arm_setup_stack(0x00920000 - 8);
> -
> -	fdt = __dtb_imx6dl_phytec_pbab01_start - get_runtime_offset();
> -
> +	fdt = fdt_blob_fixed_offset - get_runtime_offset();
>  	barebox_arm_entry(0x10000000, size, fdt);
>  }
>  
> @@ -99,71 +86,54 @@ ENTRY_FUNCTION(start_phytec_pbab01_1gib, r0, r1, r2)
>  {
>  	IMD_USED(phyflex_mx6_memsize_1G);
>  
> -	start_imx6q_phytec_pbab01_common(SZ_1G);
> +	start_imx6_phytec_common(SZ_1G, true,
> +				 __dtb_imx6q_phytec_pbab01_start);
>  }
>  
>  ENTRY_FUNCTION(start_phytec_pbab01_2gib, r0, r1, r2)
>  {
>  	IMD_USED(phyflex_mx6_memsize_2G);
>  
> -	start_imx6q_phytec_pbab01_common(SZ_2G);
> +	start_imx6_phytec_common(SZ_2G, true,
> +				 __dtb_imx6q_phytec_pbab01_start);
>  }
>  
>  ENTRY_FUNCTION(start_phytec_pbab01_4gib, r0, r1, r2)
>  {
>  	IMD_USED(phyflex_mx6_memsize_4G);
>  
> -	start_imx6q_phytec_pbab01_common(0xEFFFFFF8);
> +	start_imx6_phytec_common(0xEFFFFFF8, true,
> +				 __dtb_imx6q_phytec_pbab01_start);
>  }
>  
>  ENTRY_FUNCTION(start_phytec_pbab01dl_1gib, r0, r1, r2)
>  {
>  	IMD_USED(phyflex_mx6_memsize_1G);
>  
> -	start_imx6dl_phytec_pbab01_common(SZ_1G);
> +	start_imx6_phytec_common(SZ_1G, false,
> +				 __dtb_imx6dl_phytec_pbab01_start);
>  }
>  
>  ENTRY_FUNCTION(start_phytec_pbab01s_512mb, r0, r1, r2)
>  {
> -	void *fdt;
> -
> -	imx6_cpu_lowlevel_init();
> -
> -	arm_setup_stack(0x00920000 - 8);
> -
>  	IMD_USED(phyflex_mx6_memsize_512M);
>  
> -	fdt = __dtb_imx6s_phytec_pbab01_start - get_runtime_offset();
> -
> -	barebox_arm_entry(0x10000000, SZ_512M, fdt);
> +	start_imx6_phytec_common(SZ_512M, false,
> +				 __dtb_imx6s_phytec_pbab01_start);
>  }
>  
>  ENTRY_FUNCTION(start_phytec_phyboard_alcor_1gib, r0, r1, r2)
>  {
> -	void *fdt;
> -
> -	imx6_cpu_lowlevel_init();
> -
> -	arm_setup_stack(0x00920000 - 8);
> -
>  	IMD_USED(phyflex_mx6_memsize_1G);
>  
> -	fdt = __dtb_imx6q_phytec_phyboard_alcor_start - get_runtime_offset();
> -
> -	barebox_arm_entry(0x10000000, SZ_1G, fdt);
> +	start_imx6_phytec_common(SZ_1G, false,
> +				 __dtb_imx6q_phytec_phyboard_alcor_start);
>  }
>  
>  ENTRY_FUNCTION(start_phytec_phyboard_subra_512mb, r0, r1, r2)
>  {
> -	void *fdt;
> -
> -	imx6_cpu_lowlevel_init();
> -
> -	arm_setup_stack(0x00920000 - 8);
> -
>  	IMD_USED(phyflex_mx6_memsize_512M);
>  
> -	fdt = __dtb_imx6dl_phytec_phyboard_subra_start - get_runtime_offset();
> -
> -	barebox_arm_entry(0x10000000, SZ_512M, fdt);
> +	start_imx6_phytec_common(SZ_512M, false,
> +				 __dtb_imx6dl_phytec_phyboard_subra_start);
>  }
> -- 
> 2.1.0
> 
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
