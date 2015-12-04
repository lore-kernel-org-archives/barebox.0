Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a4kTL-0002H9-UT
 for barebox@lists.infradead.org; Fri, 04 Dec 2015 07:08:04 +0000
Date: Fri, 4 Dec 2015 08:07:40 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151204070740.GQ11966@pengutronix.de>
References: <1449064131-12659-1-git-send-email-mpa@pengutronix.de>
 <1449064131-12659-9-git-send-email-mpa@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1449064131-12659-9-git-send-email-mpa@pengutronix.de>
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
Subject: Re: [PATCH 8/9] arm: Add RAMOOPS memory area
To: Markus Pargmann <mpa@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Dec 02, 2015 at 02:48:50PM +0100, Markus Pargmann wrote:
> RAMOOPS is a driver that uses a reserved static memory region to store
> the data from the last panic or boot. This helps to debug crashes at the
> next boot while preserving the boot messages.
> 
> To guarantee a memory area that is not altered by barebox or the kernel,
> this area is located at the end of the RAM right after barebox and
> before the STACK. This ensures that changing barebox sizes do not
> interfere with RAMOOPS.
> 
> Signed-off-by: Markus Pargmann <mpa@pengutronix.de>
> ---
>  arch/arm/cpu/start.c               |  6 ++++++
>  arch/arm/include/asm/barebox-arm.h | 14 +++++++++++++-
>  2 files changed, 19 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
> index 4ad64b61e86a..d03d1edfaf18 100644
> --- a/arch/arm/cpu/start.c
> +++ b/arch/arm/cpu/start.c
> @@ -118,6 +118,12 @@ static inline unsigned long arm_mem_boarddata(unsigned long membase,
>  	return mem;
>  }
>  
> +unsigned long arm_mem_ramoops_get(void)
> +{
> +	return arm_mem_ramoops(0, arm_stack_top);
> +}
> +EXPORT_SYMBOL_GPL(arm_mem_ramoops_get);
> +
>  static int barebox_memory_areas_init(void)
>  {
>  	unsigned long start = arm_head_bottom;
> diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
> index da7717538b61..91f1747d2df4 100644
> --- a/arch/arm/include/asm/barebox-arm.h
> +++ b/arch/arm/include/asm/barebox-arm.h
> @@ -122,11 +122,23 @@ static inline unsigned long arm_mem_early_malloc_end(unsigned long membase,
>  	return arm_mem_ttb(membase, endmem);
>  }
>  
> +static inline unsigned long arm_mem_ramoops(unsigned long membase,
> +					    unsigned long endmem)
> +{
> +	endmem = arm_mem_ttb(membase, endmem);
> +#ifdef CONFIG_FS_PSTORE_RAMOOPS
> +	endmem -= CONFIG_FS_PSTORE_RAMOOPS_SIZE;
> +	endmem &= ~(SZ_4K - 1); /* Align to 4K */
> +#endif

if (IS_ENABLED(CONFIG_FS_PSTORE_RAMOOPS)) please

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
