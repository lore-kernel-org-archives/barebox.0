Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x243.google.com ([2a00:1450:400c:c09::243])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bd2Gx-0001AF-Qd
 for barebox@lists.infradead.org; Thu, 25 Aug 2016 21:33:29 +0000
Received: by mail-wm0-x243.google.com with SMTP id i5so9007138wmg.2
 for <barebox@lists.infradead.org>; Thu, 25 Aug 2016 14:32:55 -0700 (PDT)
Received: from [10.10.10.21] (178.165.131.87.wireless.dyn.drei.com.
 [178.165.131.87])
 by smtp.gmail.com with ESMTPSA id 207sm40584346wmb.7.2016.08.25.14.32.52
 for <barebox@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 25 Aug 2016 14:32:52 -0700 (PDT)
References: <1472106992-30755-1-git-send-email-s.hauer@pengutronix.de>
From: Peter Kardos <kardos.peter.sk@gmail.com>
Message-ID: <d3c2af19-1d8f-a078-ef33-3cc43a14d990@gmail.com>
Date: Thu, 25 Aug 2016 23:32:43 +0200
MIME-Version: 1.0
In-Reply-To: <1472106992-30755-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH v2] ARM: vector_table: Fix creation of second level page
 table
To: barebox@lists.infradead.org

Tested this one as well  with my AT91RM9200 system, v2016.08 + patch; 
The system starts/boots as expected.
If no one objects, we can consider this issue closed/fixed.

Peter

On 8/25/2016 8:36 AM, Sascha Hauer wrote:
> The second level page tables can only start at a 1MiB section boundary,
> so instead of calling arm_create_pte() with the high vector address
> (which is 0xffff0000, not 1MiB aligned) we have to call it with
> 0xfff00000 to correctly create a second level page table.
> The old values broke SoCs which have peripherals in the upper 1MiB
> area, like for example the Atmel AT91RM9200. On these Socs we correctly
> created the vector page, but the pages around it did not have a 1:1
> mapping anymore which led to unreachable peripherals.
>
> Fixes: f6b77fe9: ARM: Rework vector table setup
>
> Reported-by: Peter Kardos <kardos.peter.sk@gmail.com>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>
> Changes since v1:
> - Use ALIGN_DOWN instead of open coded alignment
> - more clear commit message
>
>   arch/arm/cpu/mmu.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
> index a31bce4..459abe5 100644
> --- a/arch/arm/cpu/mmu.c
> +++ b/arch/arm/cpu/mmu.c
> @@ -307,7 +307,7 @@ static void create_vector_table(unsigned long adr)
>   		vectors = xmemalign(PAGE_SIZE, PAGE_SIZE);
>   		pr_debug("Creating vector table, virt = 0x%p, phys = 0x%08lx\n",
>   			 vectors, adr);
> -		exc = arm_create_pte(adr);
> +		exc = arm_create_pte(ALIGN_DOWN(adr, SZ_1M));
>   		idx = (adr & (SZ_1M - 1)) >> PAGE_SHIFT;
>   		exc[idx] = (u32)vectors | PTE_TYPE_SMALL | pte_flags_cached;
>   	}


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
