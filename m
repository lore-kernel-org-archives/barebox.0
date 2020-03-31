Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJCLM-0001tR-By
 for barebox@lists.infradead.org; Tue, 31 Mar 2020 08:33:58 +0000
References: <20200331080109.24402-1-s.hauer@pengutronix.de>
 <20200331080109.24402-3-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <252738c2-dc72-214f-efa8-6ee872ee086a@pengutronix.de>
Date: Tue, 31 Mar 2020 10:33:54 +0200
MIME-Version: 1.0
In-Reply-To: <20200331080109.24402-3-s.hauer@pengutronix.de>
Content-Language: en-US
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
Subject: Re: [PATCH 3/3] arm64: Set PXN/UXN attributes for uncached mem
To: Sascha Hauer <s.hauer@pengutronix.de>, Barebox List <barebox@lists.infradead.org>



On 3/31/20 10:01 AM, Sascha Hauer wrote:
> The attributes should be set to avoid speculative access to memory-mapped
> peripherals.
> 
> The patch has been tested with:
> 
> noinline unsigned long nox(void)
> {
> 	return get_pc();
> }
> 
> static void xn_test(void)
> {
> 	void *adr = (void *)SOME_SRAM_ADDRESS;
> 	unsigned long ret;
> 	unsigned long (*fn)(void) = adr;
> 
> 	memcpy(adr, nox, 0x1000);
> 
> 	sync_caches_for_execution();
> 
> 	ret = fn();
> 	printf("pc: 0x%08lx\n", ret);
> }
> 
> Without this patch nox() gets executed in SRAM, with it runs into a
> abort as expected.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/cpu/mmu_64.h | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/cpu/mmu_64.h b/arch/arm/cpu/mmu_64.h
> index a2a5477569..f5b7624037 100644
> --- a/arch/arm/cpu/mmu_64.h
> +++ b/arch/arm/cpu/mmu_64.h
> @@ -6,7 +6,8 @@
>  			 PTE_BLOCK_AF)
>  #define UNCACHED_MEM    (PTE_BLOCK_MEMTYPE(MT_DEVICE_nGnRnE) | \
>  			 PTE_BLOCK_OUTER_SHARE | \
> -			 PTE_BLOCK_AF)
> +			 PTE_BLOCK_AF | \
> +			 PTE_BLOCK_UXN)

Don't we need PXN in EL1?
The commit message also speaks of PXN.

Cheers
Ahmad

>  
>  /*
>   * Do it the simple way for now and invalidate the entire tlb
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
