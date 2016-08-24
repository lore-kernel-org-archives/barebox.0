Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yw0-x244.google.com ([2607:f8b0:4002:c05::244])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bcaiO-0002UU-Qy
 for barebox@lists.infradead.org; Wed, 24 Aug 2016 16:07:45 +0000
Received: by mail-yw0-x244.google.com with SMTP id z8so1018723ywa.0
 for <barebox@lists.infradead.org>; Wed, 24 Aug 2016 09:07:24 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1472041390-19259-1-git-send-email-s.hauer@pengutronix.de>
References: <1472041390-19259-1-git-send-email-s.hauer@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 24 Aug 2016 09:07:22 -0700
Message-ID: <CAHQ1cqFGc8r+kGrKinM3_y+3GPAz=-=nfpRyUiwSSvQSvVXuZA@mail.gmail.com>
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
Subject: Re: [PATCH] ARM: vector_table: Fix creation of second level page table
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>, Peter Kardos <kardos.peter.sk@gmail.com>

On Wed, Aug 24, 2016 at 5:23 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> The second level page tables can only start at a 1MiB section boundary,
> so instead of calling arm_create_pte() with the high vector address
> (which is 0xffff0000, not 1MiB aligned) we have to call it with
> 0xfff00000 to correctly create a second level page table. The vectors
> themselves worked as expected with the old value, but the memory around
> it did not do a 1:1 mapping anymore. This breaks SoCs which have
> peripherals in that area, for example Atmel SoCs like the AT91RM9200.
>

Would you mind re-wording it as something to the effect of: "...
mapping anymore, breaking SoCs which also have peripherals in that
area..."? The original sentence structure, to me, reads as if this
patch/commit introduces a change that breaks Atmel SoCs.

> Fixes: f6b77fe9: ARM: Rework vector table setup
>
> Reported-by: Peter Kardos <kardos.peter.sk@gmail.com>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/cpu/mmu.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
> index a31bce4..2b70866 100644
> --- a/arch/arm/cpu/mmu.c
> +++ b/arch/arm/cpu/mmu.c
> @@ -307,7 +307,7 @@ static void create_vector_table(unsigned long adr)
>                 vectors = xmemalign(PAGE_SIZE, PAGE_SIZE);
>                 pr_debug("Creating vector table, virt = 0x%p, phys = 0x%08lx\n",
>                          vectors, adr);
> -               exc = arm_create_pte(adr);
> +               exc = arm_create_pte(adr & ~(SZ_1M - 1));

ALIGN_DOWN(adr, SZ_1M) ?

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
