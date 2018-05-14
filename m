Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fI7Z2-0007PU-J2
 for barebox@lists.infradead.org; Mon, 14 May 2018 07:06:34 +0000
Date: Mon, 14 May 2018 09:06:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180514070620.6g7enpkjen7vouqx@pengutronix.de>
References: <20180508212951.6446-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180508212951.6446-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 00/28] ARM MMU code improvements and on-demand PTE
 allocation
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Andrey,

On Tue, May 08, 2018 at 02:29:23PM -0700, Andrey Smirnov wrote:
> Everyone:
> 
> With exeception of patch 27/28, all patches in this series are just
> small improvements(IMHO) that I made while working with ARM MMU code.
> 
> Patch 27/28, OTOH, brings a bit of a change to how MMU code allocates
> PTEs, postponing that until the users of DMA API actually request
> that.
> 
> Feedback is welcome!

Very nice cleanup series, thanks for that. Besides the comment I made
for 9/28 this all looks very nice.

Sascha

> 
> Thanks,
> Andrey Smirnov
> 
> Andrey Smirnov (28):
>   ARM: mmu: Remove unused ARM_VECTORS_SIZE
>   ARM: mmu: Make use of IS_ALIGNED in arm_mmu_remap_sdram()
>   ARM: mmu: Use ALIGN and ALIGN_DOWN in map_cachable()
>   ARM: mmu: Introduce set_ttbr()
>   ARM: mmu: Introduce set_domain()
>   ARM: mmu: Share code for create_sections()
>   ARM: mmu: Separate index and address in create_sections()
>   sizes.h: Sync with Linux 4.16
>   ARM: mmu: Specify size in bytes in create_sections()
>   ARM: mmu: Share code for initial flat mapping creation
>   ARM: mmu: Share PMD_SECT_DEF_CACHED
>   ARM: mmu: Drop needless shifting in map_io_sections()
>   ARM: mmu: Replace hardcoded shifts with pgd_index() from Linux
>   ARM: mmu: Trivial simplification in arm_mmu_remap_sdram()
>   ARM: mmu: Replace various SZ_1M with PGDIR_SIZE
>   ARM: mmu: Use PAGE_SIZE when specifying size of one page
>   ARM: mmu: Define and use PTRS_PER_PTE
>   ARM: mmu: Use PAGE_SIZE instead of magic right shift by 12
>   ARM: mmu: Use xmemalign in arm_create_pte()
>   ARM: mmu: Use xmemalign in mmu_init()
>   ARM: mmu: Share code between dma_alloc_*() functions
>   ARM: mmu: Pass PTE flags a parameter to arm_create_pte()
>   ARM: mmu: Make sure that address is 1M aligned in arm_create_pte()
>   ARM: mmu: Use find_pte() to find PTE in create_vector_table()
>   ARM: mmu: Use dma_inv_range() in dma_sync_single_for_cpu()
>   ARM: mmu: Simplify the use of dma_flush_range()
>   ARM: mmu: Implement on-demand PTE allocation
>   ARM: mmu: Introduce ARM_TTB_SIZE
> 
>  arch/arm/boards/phytec-som-imx6/lowlevel.c |   1 +
>  arch/arm/cpu/mmu-early.c                   |  31 +-
>  arch/arm/cpu/mmu.c                         | 321 ++++++++++-----------
>  arch/arm/cpu/mmu.h                         |  42 +++
>  arch/arm/include/asm/barebox-arm.h         |   8 +-
>  include/linux/sizes.h                      |   4 +
>  6 files changed, 210 insertions(+), 197 deletions(-)
> 
> -- 
> 2.17.0
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
