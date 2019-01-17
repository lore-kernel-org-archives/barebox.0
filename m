Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gkFDW-0000Um-9J
 for barebox@lists.infradead.org; Thu, 17 Jan 2019 21:28:51 +0000
Date: Thu, 17 Jan 2019 22:28:47 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20190117212847.GB4532@ravnborg.org>
References: <20190117063840.13674-1-andrew.smirnov@gmail.com>
 <20190117063840.13674-10-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190117063840.13674-10-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 09/12] ARM: mmu: Share code for dma_sync_single_for_cpu()
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Andrey.

On Wed, Jan 16, 2019 at 10:38:37PM -0800, Andrey Smirnov wrote:
> Both ARM and ARM64 have identical code for
> dma_sync_single_for_cpu(). Move it to mmu-common.c so it can be shared.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  arch/arm/cpu/mmu-common.c | 8 ++++++++
>  arch/arm/cpu/mmu.c        | 7 -------
>  arch/arm/cpu/mmu_64.c     | 7 -------
>  3 files changed, 8 insertions(+), 14 deletions(-)
> 
> diff --git a/arch/arm/cpu/mmu-common.c b/arch/arm/cpu/mmu-common.c
> index 8c7d61447..a7d3b5b11 100644
> --- a/arch/arm/cpu/mmu-common.c
> +++ b/arch/arm/cpu/mmu-common.c
> @@ -8,6 +8,14 @@
>  
>  #include "mmu.h"
>  
> +
> +void dma_sync_single_for_cpu(dma_addr_t address, size_t size,
> +			     enum dma_data_direction dir)
> +{
> +	if (dir != DMA_TO_DEVICE)
> +		dma_inv_range((void *)address, size);
> +}

I cannot see how this will work?!?
We are on a v8 architecture for a 64bit variant.
But in cache.c we have only:

DEFINE_CPU_FNS(v4)
DEFINE_CPU_FNS(v5)
DEFINE_CPU_FNS(v6)
DEFINE_CPU_FNS(v7)

So I do not see how we call v8_inv_dcache_range() here.
Do I miss something?

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
