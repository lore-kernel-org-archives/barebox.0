Delivery-date: Fri, 13 Jun 2025 13:31:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uQ2dZ-006qfG-22
	for lore@lore.pengutronix.de;
	Fri, 13 Jun 2025 13:31:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uQ2dY-0004Sh-MH
	for lore@pengutronix.de; Fri, 13 Jun 2025 13:31:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gnrnBsOWEmcToJ5yqZ/6eGVa0YpG50MfIRNG6l6ktBQ=; b=cgz/OCTlkhZJ7X5uim6iSY4Y31
	iZrCzotqVcMB0vHbGkVbkySd4S0ytb8VuKxPBkvzBALSxp4c+WVcX/Jt4uPQtVnu1Xp9gdE34NPiY
	nUWI01gImzoG4iXe3CxKH8RB4h2PGgqhzD3r2kchGER8ryf13Rgs7hIWduCewWEet5SrixaFn8RTs
	MmqvfHunhbEmsX1rHdF2FCWV9WXxiHKF/R3z+nqqjFqQHTNhNUk/C3cmXaHPRqe+FAP4UxsWqAskr
	zfRWaCKd7C2iMEG+rQUbHKyBaN/JiwQpQ7u/KiS6uuA6pGtz5/QAy/OhxO8FezNGgyQ8CY2YFxJTj
	RqiBGoSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ2cw-0000000GBeE-1g7l;
	Fri, 13 Jun 2025 11:31:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ1fP-0000000G4sP-3t6B
	for barebox@lists.infradead.org;
	Fri, 13 Jun 2025 10:29:49 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uQ1fO-0003UB-EF; Fri, 13 Jun 2025 12:29:46 +0200
Message-ID: <239b49e0-9b97-4c40-9a50-084e0a36a44e@pengutronix.de>
Date: Fri, 13 Jun 2025 12:29:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20250613-arm-mmu-xn-ro-v1-0-60f05c6e7b4b@pengutronix.de>
 <20250613-arm-mmu-xn-ro-v1-6-60f05c6e7b4b@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250613-arm-mmu-xn-ro-v1-6-60f05c6e7b4b@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250613_032947_974631_788FDCB3 
X-CRM114-Status: GOOD (  27.12  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 6/7] ARM: MMU64: map memory for barebox proper pagewise
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 6/13/25 09:58, Sascha Hauer wrote:
> Map the remainder of the memory explicitly with two level page tables. This is
> the place where barebox proper ends at. In barebox proper we'll remap the code
> segments readonly/executable and the ro segments readonly/execute never. For this
> we need the memory being mapped pagewise. We can't do the split up from section
> wise mapping to pagewise mapping later because that would require us to do
> a break-before-make sequence which we can't do when barebox proper is running
> at the location being remapped.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/cpu/mmu_64.c | 68 +++++++++++++++++++++++++++++++++++++++++++++++++--
>  1 file changed, 66 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
> index 440258fa767735a4537abd71030a5540813fc443..dc81c1da6add38b59b44a9a4e247ab51ebc2692e 100644
> --- a/arch/arm/cpu/mmu_64.c
> +++ b/arch/arm/cpu/mmu_64.c
> @@ -10,6 +10,7 @@
>  #include <init.h>
>  #include <mmu.h>
>  #include <errno.h>
> +#include <range.h>
>  #include <zero_page.h>
>  #include <linux/sizes.h>
>  #include <asm/memory.h>
> @@ -172,6 +173,56 @@ static void create_sections(uint64_t virt, uint64_t phys, uint64_t size,
>  	tlb_invalidate();
>  }
>  
> +/*
> + * like create_sections(), but this one creates pages instead of sections
> + */
> +static void create_pages(uint64_t phys, uint64_t size, uint64_t attr)

Why not add a parameter to create_sections? Code looks nearly
equivalent, except that we would tweak the inner most condition.

Looks good otherwise:

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Cheers,
Ahmad


> +{
> +	uint64_t virt = phys;
> +	uint64_t *ttb = get_ttb();
> +	uint64_t block_size;
> +	uint64_t block_shift;
> +	uint64_t *pte;
> +	uint64_t idx;
> +	uint64_t addr;
> +	uint64_t *table;
> +	uint64_t type;
> +	int level;
> +
> +	addr = virt;
> +
> +	attr &= ~PTE_TYPE_MASK;
> +
> +	size = PAGE_ALIGN(size);
> +
> +	while (size) {
> +		table = ttb;
> +		for (level = 0; level < 4; level++) {
> +			block_shift = level2shift(level);
> +			idx = (addr & level2mask(level)) >> block_shift;
> +			block_size = (1ULL << block_shift);
> +
> +			pte = table + idx;
> +
> +			if (level == 3) {
> +				type = PTE_TYPE_PAGE;
> +				*pte = phys | attr | type;
> +				addr += block_size;
> +				phys += block_size;
> +				size -= block_size;
> +				break;
> +			} else {
> +				split_block(pte, level);
> +			}
> +
> +			table = get_level_table(pte);
> +		}
> +
> +	}
> +
> +	tlb_invalidate();
> +}
> +
>  static size_t granule_size(int level)
>  {
>  	switch (level) {
> @@ -410,6 +461,7 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize, unsigned lon
>  {
>  	int el;
>  	u64 optee_membase;
> +	unsigned long barebox_size;
>  	unsigned long ttb = arm_mem_ttb(membase + memsize);
>  
>  	if (get_cr() & CR_M)
> @@ -432,12 +484,24 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize, unsigned lon
>  
>  	early_remap_range(membase, memsize, MAP_CACHED);
>  
> -	if (optee_get_membase(&optee_membase))
> +	if (optee_get_membase(&optee_membase)) {
>                  optee_membase = membase + memsize - OPTEE_SIZE;
>  
> +		barebox_size = optee_membase - barebox_start;
> +
> +		create_pages(optee_membase - barebox_size, barebox_size,
> +			     get_pte_attrs(ARCH_MAP_CACHED_RWX));
> +	} else {
> +		barebox_size = membase + memsize - barebox_start;
> +
> +		create_pages(membase + memsize - barebox_size, barebox_size,
> +			     get_pte_attrs(ARCH_MAP_CACHED_RWX));
> +	}
> +
>  	early_remap_range(optee_membase, OPTEE_SIZE, MAP_FAULT);
>  
> -	early_remap_range(PAGE_ALIGN_DOWN((uintptr_t)_stext), PAGE_ALIGN(_etext - _stext), MAP_CACHED);
> +	early_remap_range(PAGE_ALIGN_DOWN((uintptr_t)_stext), PAGE_ALIGN(_etext - _stext),
> +			  MAP_CACHED);
>  
>  	mmu_enable();
>  }
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



