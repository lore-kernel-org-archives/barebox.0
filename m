Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp-2h.backboneservers.com ([66.6.63.231])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sm1Dq-0001oH-6R
 for barebox@lists.infradead.org; Tue, 03 Jul 2012 11:24:47 +0000
Received: from Debian-exim by smtp-2h.backboneservers.com with spam-scanned
 (Exim 4.72) (envelope-from <steve@scheftech.com>) id 1Sm1Cr-0004TS-CN
 for barebox@lists.infradead.org; Tue, 03 Jul 2012 11:23:50 +0000
Message-ID: <4FF2D611.2040207@scheftech.com>
Date: Tue, 03 Jul 2012 07:22:57 -0400
From: Steve Schefter <steve@scheftech.com>
MIME-Version: 1.0
References: <1341249753-5480-1-git-send-email-steve@scheftech.com>
 <20120703073605.GT2698@pengutronix.de>
In-Reply-To: <20120703073605.GT2698@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] Avoid SDRAM access crash
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha.

> I wonder why this has never hit me. On what hardware did you see this?

Me too.  All I can say is that the timing is tight.  I see crashes at 
various DRAM addresses, all depending on how much was left in cache when 
the tlb invalidate was done.

I'm using the Phytec phyCORE-OMAP44xx card.

> Does the following patch solve your problem aswell?

It does.  I see that routine contains a cache flush as well.

Regards,
	Steve

>
> 8<----------------------------------------------------
>
> ARM mmu: flush page tables in arm_mmu_remap_sdram()
>
> Signed-off-by: Sascha Hauer<s.hauer@pengutronix.de>
> ---
>   arch/arm/cpu/mmu.c |    5 ++++-
>   1 file changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
> index 55b07a4..607f357 100644
> --- a/arch/arm/cpu/mmu.c
> +++ b/arch/arm/cpu/mmu.c
> @@ -147,7 +147,7 @@ static int arm_mmu_remap_sdram(struct memory_bank *bank)
>   	if ((phys&  (SZ_1M - 1)) || (bank->size&  (SZ_1M - 1)))
>   		return -EINVAL;
>
> -	ptes = memalign(0x400, num_ptes * sizeof(u32));
> +	ptes = memalign(PAGE_SIZE, num_ptes * sizeof(u32));
>
>   	debug("ptes: 0x%p ttb_start: 0x%08lx ttb_end: 0x%08lx\n",
>   			ptes, ttb_start, ttb_end);
> @@ -165,6 +165,9 @@ static int arm_mmu_remap_sdram(struct memory_bank *bank)
>   		pte += 256;
>   	}
>
> +	dma_flush_range((unsigned long)ttb, (unsigned long)ttb + 0x4000);
> +	dma_flush_range((unsigned long)ptes, num_ptes * sizeof(u32));
> +
>   	tlb_invalidate();
>
>   	return 0;

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
