Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x244.google.com ([2a00:1450:400c:c09::244])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bd1cR-000522-1G
 for barebox@lists.infradead.org; Thu, 25 Aug 2016 20:51:24 +0000
Received: by mail-wm0-x244.google.com with SMTP id i138so8869052wmf.3
 for <barebox@lists.infradead.org>; Thu, 25 Aug 2016 13:51:02 -0700 (PDT)
References: <1472041390-19259-1-git-send-email-s.hauer@pengutronix.de>
From: Peter Kardos <kardos.peter.sk@gmail.com>
Message-ID: <cec6ef3f-8ae5-c73f-f921-f18b0e9bdf9b@gmail.com>
Date: Thu, 25 Aug 2016 22:50:50 +0200
MIME-Version: 1.0
In-Reply-To: <1472041390-19259-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] ARM: vector_table: Fix creation of second level page table
To: Sascha Hauer <s.hauer@pengutronix.de>, Barebox List <barebox@lists.infradead.org>

Tested with my AT91RM9200 system, v2016.08 + patch; The system 
starts/boots as expected.
If no one objects, we can consider this issue closed/fixed.

Peter

On 8/24/2016 2:23 PM, Sascha Hauer wrote:
> The second level page tables can only start at a 1MiB section boundary,
> so instead of calling arm_create_pte() with the high vector address
> (which is 0xffff0000, not 1MiB aligned) we have to call it with
> 0xfff00000 to correctly create a second level page table. The vectors
> themselves worked as expected with the old value, but the memory around
> it did not do a 1:1 mapping anymore. This breaks SoCs which have
> peripherals in that area, for example Atmel SoCs like the AT91RM9200.
>
> Fixes: f6b77fe9: ARM: Rework vector table setup
>
> Reported-by: Peter Kardos <kardos.peter.sk@gmail.com>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>   arch/arm/cpu/mmu.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
> index a31bce4..2b70866 100644
> --- a/arch/arm/cpu/mmu.c
> +++ b/arch/arm/cpu/mmu.c
> @@ -307,7 +307,7 @@ static void create_vector_table(unsigned long adr)
>   		vectors = xmemalign(PAGE_SIZE, PAGE_SIZE);
>   		pr_debug("Creating vector table, virt = 0x%p, phys = 0x%08lx\n",
>   			 vectors, adr);
> -		exc = arm_create_pte(adr);
> +		exc = arm_create_pte(adr & ~(SZ_1M - 1));
>   		idx = (adr & (SZ_1M - 1)) >> PAGE_SHIFT;
>   		exc[idx] = (u32)vectors | PTE_TYPE_SMALL | pte_flags_cached;
>   	}


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
