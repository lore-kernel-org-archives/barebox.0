Delivery-date: Mon, 18 Dec 2023 07:53:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rF7VX-002TdW-0C
	for lore@lore.pengutronix.de;
	Mon, 18 Dec 2023 07:53:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rF7VV-0002Bh-Nq
	for lore@pengutronix.de; Mon, 18 Dec 2023 07:53:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qNjFodXOyUlYOtT3J5zJ/Ls93Gn60v3MTWRDyWertmo=; b=a//RpHyPl221cvmGdjbAeZ8auD
	ZiCtPgab7LcjggtjOfaAm/uCyX4m5xTvWujBkO6GUwFtawIE2n+y45Xk7AEJa+VVBlSR7DdzPJd8m
	477yfLZ/rbKHSgaXnyNeMqTqlfbXzcqS7VrWvFIBylcGn0/ZkB36nXay/gAQ55HfhNE7VTwiQIxip
	Ae2HhlLWqYgaGuLQSadFa8Lm7+7xKguu2cMbfWq85Y5zQWvrvjEHOg20xtqI5hE7OHYYAx1//7ZRM
	Lh5jxmOM9V2ck6w19fDYg+EGHtaysfCNHqyEk6JkT2H4jpPDjwzPyRP+bl/qmYyxRZrrWwwzHxQ4U
	A5IDOrLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rF7UI-009H39-2k;
	Mon, 18 Dec 2023 06:52:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rF7UE-009H2i-2B
	for barebox@lists.infradead.org;
	Mon, 18 Dec 2023 06:52:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rF7UD-0001sc-Fr; Mon, 18 Dec 2023 07:52:21 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rF7UC-00Gdj7-GO; Mon, 18 Dec 2023 07:52:20 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rF7UC-007XFH-Dz; Mon, 18 Dec 2023 07:52:20 +0100
Date: Mon, 18 Dec 2023 07:52:20 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Lior Weintraub <liorw@pliops.com>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	"barebox@lists.infradead.org" <barebox@lists.infradead.org>
Message-ID: <20231218065220.GQ1318922@pengutronix.de>
References: <PR3P195MB0555EE60DE17128F9831C028C31AA@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
 <20230817071736.GJ5650@pengutronix.de>
 <PR3P195MB0555ED3DE92FAB5706C2E458C31AA@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
 <PR3P195MB0555E881ABD36783C5557EB9C31AA@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
 <PR3P195MB05558441FD995F0F06CE132AC31EA@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
 <3704dd53-42de-ab00-7101-786e2d5b2245@pengutronix.de>
 <PR3P195MB05553F75C13F429F23F63AFAC3EEA@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
 <PR3P195MB05554C1A87EAF28C96EB6224C38CA@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <PR3P195MB05554C1A87EAF28C96EB6224C38CA@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231217_225223_034720_BE33C013 
X-CRM114-Status: GOOD (  73.32  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] [ARM64][MMU] Fix mmu_early_enable VA->PA mapping
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Dec 14, 2023 at 04:04:31PM +0000, Lior Weintraub wrote:
> Hi,
> 
> The below patch fixes the mmu_early_enable function to correctly map 40bits of virtual address into physical address with a 1:1 mapping.
> It uses the init_range function to sets 2 table entries on TTB level0 and then fill level1 with the correct 1:1 mapping.
> 
> This patch was merged from an older Barebox version into the most resent master (Commit: 975acf1bafba2366eb40c5e8d8cb732b53f27aa1).
> Since it wasn't tested on the most recent master branch (lack of resources) I would appreciate if someone can test it on a 64bit ARM v8 platform.
> 
> IMHO, the old implementation is wrong because:
> 1. It tries to map the full range of VA (48bits) with 1:1 mapping but there are only maximum of 40 PA bits.
>     As a result, there is a wraparound that causes wrong mapping.
> 2. TTB Level0 cannot have a block descriptor. Only table descriptor.
>     According "Learn the architecture - AArch64 memory management", Figure 6-1: Translation table format:
> "Each entry is 64 bits and the bottom two bits determine the type of entry.
> Notice that some of the table entries are only valid at specific levels. The maximum number of
> levels of tables is four, which is why there is no table descriptor for level 3 (or the fourth level),
> tables. Similarly, there are no Block descriptors or Page descriptors for level 0. Because level 0
> entry covers a large region of virtual address space, it does not make sense to allow blocks."
>  
> Cheers,
> Lior.
> 
> From a98fa2bad05721fd4c3ceae4f63eedd90c29c244 Mon Sep 17 00:00:00 2001
> From: Lior Weintraub <liorw@pliops.com>
> Date: Thu, 14 Dec 2023 17:05:04 +0200
> Subject: [PATCH] [ARM64][MMU] Fix mmu_early_enable VA->PA mapping

Applied, thanks

Sascha

> 
> ---
>  arch/arm/cpu/mmu_64.c            | 17 ++++++++++++++++-
>  arch/arm/cpu/mmu_64.h            | 19 +++++++++++++++++--
>  arch/arm/include/asm/pgtable64.h |  1 +
>  3 files changed, 34 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
> index c6ea63e655..f35c1b5937 100644
> --- a/arch/arm/cpu/mmu_64.c
> +++ b/arch/arm/cpu/mmu_64.c
> @@ -294,6 +294,19 @@ void dma_flush_range(void *ptr, size_t size)
>  	v8_flush_dcache_range(start, end);
>  }
>  
> +void init_range(void *virt_addr, size_t size)
> +{
> +	uint64_t *ttb = get_ttb();
> +	uint64_t addr = (uint64_t)virt_addr;
> +	while(size) {
> +		remap_range((void *)addr, L0_XLAT_SIZE, MAP_UNCACHED);
> +		split_block(ttb,0);
> +		size -= L0_XLAT_SIZE;
> +		addr += L0_XLAT_SIZE;
> +		ttb++;
> +	}
> +}
> +
>  void mmu_early_enable(unsigned long membase, unsigned long memsize)
>  {
>  	int el;
> @@ -308,7 +321,9 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize)
>  
>  	memset((void *)ttb, 0, GRANULE_SIZE);
>  
> -	early_remap_range(0, 1UL << (BITS_PER_VA - 1), MAP_UNCACHED);
> +	// Assume maximum BITS_PER_PA set to 40 bits.
> +	// Set 1:1 mapping of VA->PA. So to cover the full 1TB range we need 2 tables.
> +	init_range(0, 2*L0_XLAT_SIZE);
>  	early_remap_range(membase, memsize - OPTEE_SIZE, MAP_CACHED);
>  	early_remap_range(membase + memsize - OPTEE_SIZE, OPTEE_SIZE, MAP_FAULT);
>  	early_remap_range(PAGE_ALIGN_DOWN((uintptr_t)_stext), PAGE_ALIGN(_etext - _stext), MAP_CACHED);
> diff --git a/arch/arm/cpu/mmu_64.h b/arch/arm/cpu/mmu_64.h
> index e4d81dace4..51d8ad10a2 100644
> --- a/arch/arm/cpu/mmu_64.h
> +++ b/arch/arm/cpu/mmu_64.h
> @@ -105,12 +105,27 @@ static inline uint64_t level2mask(int level)
>  	return mask;
>  }
>  
> +/**
> + * @brief Returns the TCR (Translation Control Register) value
> + * 
> + * @param el - Exception Level
> + * @param va_bits - Virtual Address bits
> + * @return uint64_t TCR
> + */
>  static inline uint64_t calc_tcr(int el, int va_bits)
>  {
> -	u64 ips;
> -	u64 tcr;
> +	u64 ips; // Intermediate Physical Address Size
> +	u64 tcr; // Translation Control Register
>  
> +#if (BITS_PER_PA == 40)
>  	ips = 2;
> +#elif (BITS_PER_PA == 36)
> +	ips = 1;
> +#elif (BITS_PER_PA == 32)
> +	ips = 0;
> +#else
> +#error "Unsupported"
> +#endif
>  
>  	if (el == 1)
>  		tcr = (ips << 32) | TCR_EPD1_DISABLE;
> diff --git a/arch/arm/include/asm/pgtable64.h b/arch/arm/include/asm/pgtable64.h
> index 21dac30cfe..b88ffe6be5 100644
> --- a/arch/arm/include/asm/pgtable64.h
> +++ b/arch/arm/include/asm/pgtable64.h
> @@ -8,6 +8,7 @@
>  
>  #define VA_START                   0x0
>  #define BITS_PER_VA                48
> +#define BITS_PER_PA                40 // Use 40 Physical address bits
>  
>  /* Granule size of 4KB is being used */
>  #define GRANULE_SIZE_SHIFT         12
> -- 
> 2.40.0
> 
> 
> > -----Original Message-----
> > From: Lior Weintraub
> > Sent: Thursday, September 7, 2023 1:08 PM
> > To: Ahmad Fatoum <a.fatoum@pengutronix.de>; Sascha Hauer
> > <s.hauer@pengutronix.de>
> > Cc: barebox@lists.infradead.org
> > Subject: RE: ARM: mmu_early_enable
> > 
> > Hi Ahmad,
> > 
> > The suggested patch would cost an extra 4KB for the second level1 table.
> > If we allow CONFIG option to set the total PA bits then the extra 4KB tables
> > would double on each additional bit.
> > So currently PA bits is hard-coded to 40 which covers 1TB space and as a result
> > needs 2 level1 tables.
> > Setting PA bits to 41 would require a total of 4 level1 tables to cover the 2TB
> > range (so additional 3 tables = 12KB).
> > 
> > I don't know much about other architectures and cannot tell is that CONFIG
> > option is needed or not.
> > In terms of clean code, I think that if you accept the idea of this patch than it
> > will be cleaner to add a global define of PA_BITS even if there is currently no
> > option to change it on CONFIG.
> > Just so the 2 pieces of code that assume PA 40 bits could relate to this define.
> > 
> > Cheers,
> > Lior.
> > 
> > > -----Original Message-----
> > > From: Ahmad Fatoum <a.fatoum@pengutronix.de>
> > > Sent: Thursday, September 7, 2023 11:31 AM
> > > To: Lior Weintraub <liorw@pliops.com>; Sascha Hauer
> > > <s.hauer@pengutronix.de>
> > > Cc: barebox@lists.infradead.org
> > > Subject: Re: ARM: mmu_early_enable
> > >
> > > CAUTION: External Sender
> > >
> > > Hello Lior,
> > >
> > > On 21.08.23 16:29, Lior Weintraub wrote:
> > > > Hi Sascha,
> > > >
> > > > After further digging into the mmu_early_enable function I found that level
> > 0
> > > is set with block type (PTE_TYPE_BLOCK) but AFAIK level 0 must have a table
> > > type.
> > > > Only level 1-3 can be either table or block but not level 0.
> > > > I think that until now this wasn't an issue because all (I assume)
> > > implementations\porting that enabled the use of MMU also gave the
> > barebox
> > > a starting address that is within the first 512GB range.
> > >
> > > That's most certainly the case. Most implementations even place barebox
> > > in the first 4G to be on the safe side in regard to DMA limitations of
> > > the devices.
> > >
> > > > As a result, the current implementation replaced the first entry of level 0 to
> > > point into level 1 table.
> > > > In our case, where the memory used is above the first 512GB we got an
> > > exception.
> > > >
> > > > I suggest that the initial setting of flat 1:1 mapping of all 40 bits will have:
> > > > 2 Entries of Level 0 which point to level1 tables.
> > > > 512 Entries of level 1 each of which define a block of 1GB to map the first
> > > 512GB.
> > > > 512 Entries of level 1 each of which define a block of 1GB to map the
> > second
> > > 512GB.
> > >
> > > How much extra memory would that cost us for the early TTB?
> > >
> > > > The reason 40 bits is used (1TB) is because this is what currently barebox
> > set
> > > by default for the physical address (see function calc_tcr on mmu_64.h
> > where
> > > ips is set to 2).
> > > > The below patch suggestion assumes this will always be the case.
> > > > We can make it more generic by introducing a new settings that will set the
> > > total physical address bits.
> > > > We then can derive from this configuration how to set the IPS value and
> > how
> > > many tables of level 0 needs to be initialized.
> > > > Let me know what you think.
> > >
> > > At least a CONFIG option that can be selected by architectures requiring it
> > > would be apt, I think.
> > >
> > > Cheers,
> > > Ahmad
> > >
> > > >
> > > > Cheers,
> > > > Lior.
> > > >
> > > >
> > > > diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
> > > > index cdc4825422..28358dd7d9 100644
> > > > --- a/arch/arm/cpu/mmu_64.c
> > > > +++ b/arch/arm/cpu/mmu_64.c
> > > > @@ -245,6 +245,19 @@ void dma_flush_range(void *ptr, size_t size)
> > > >       v8_flush_dcache_range(start, end);
> > > >  }
> > > >
> > > > +void init_range(void *virt_addr, size_t size)
> > > > +{
> > > > +    uint64_t *ttb = get_ttb();
> > > > +    uint64_t addr = (uint64_t)virt_addr;
> > > > +    while(size) {
> > > > +        remap_range((void *)addr, L0_XLAT_SIZE, MAP_UNCACHED);
> > > > +        split_block(ttb,0);
> > > > +        size -= L0_XLAT_SIZE;
> > > > +        addr += L0_XLAT_SIZE;
> > > > +        ttb++;
> > > > +    }
> > > > +}
> > > > +
> > > >  void mmu_early_enable(unsigned long membase, unsigned long memsize)
> > > >  {
> > > >       int el;
> > > > @@ -257,7 +270,7 @@ void mmu_early_enable(unsigned long membase,
> > > unsigned long memsize)
> > > >
> > > >       memset((void *)ttb, 0, GRANULE_SIZE);
> > > >
> > > > -     remap_range(0, 1UL << (BITS_PER_VA - 1), MAP_UNCACHED);
> > > > +    init_range(0, 2*L0_XLAT_SIZE); // Setting 2 entries of 512GB to cover
> > 1TB
> > > memory space
> > > >       remap_range((void *)membase, memsize - OPTEE_SIZE,
> > MAP_CACHED);
> > > >       remap_range((void *)membase + memsize - OPTEE_SIZE, OPTEE_SIZE,
> > > MAP_FAULT);
> > > >
> > > >
> > > >
> > > >
> > > >
> > > >> -----Original Message-----
> > > >> From: Lior Weintraub
> > > >> Sent: Thursday, August 17, 2023 4:50 PM
> > > >> To: Sascha Hauer <s.hauer@pengutronix.de>
> > > >> Cc: barebox@lists.infradead.org
> > > >> Subject: RE: ARM: mmu_early_enable
> > > >>
> > > >> Hi Sascha,
> > > >>
> > > >> I read your answer again and realized my misunderstanding.
> > > >> So essentially what you say is that all 48 bits of the address space would
> > be
> > > set
> > > >> as flat 1:1 un-cached and only the SRAM region will be set as cached.
> > > >> In that case the UART at address 0xD0_0030_7000 and our ROM at
> > > address
> > > >> 0xC0_0400_0000 should be OK to access.
> > > >> We will further investigate and try to figure out what went wrong.
> > > >>
> > > >> Thanks,
> > > >> Lior.
> > > >>
> > > >>
> > > >>> -----Original Message-----
> > > >>> From: Lior Weintraub
> > > >>> Sent: Thursday, August 17, 2023 10:32 AM
> > > >>> To: Sascha Hauer <s.hauer@pengutronix.de>
> > > >>> Cc: barebox@lists.infradead.org
> > > >>> Subject: RE: ARM: mmu_early_enable
> > > >>>
> > > >>> But the UART is set on a total different memory space.
> > > >>> The SRAM where barebox runs and also given as membase and memsize
> > is
> > > in
> > > >>> the region of 0xC0_0000_0000
> > > >>> The UART is in the region of 0xD0_0030_7000.
> > > >>>
> > > >>> According the tarmac log, it looks like access to this location caused the
> > > >>> exception:
> > > >>>     3505306 ns  ES  (000000c0000814ac:910003fd) O el3h:     mov
> > x29,
> > > >>>     sp      (console_putc)
> > > >>>                     R X29 (AARCH64) 000000c0 00377ac0
> > > >>>     3505306 ns  ES  (000000c0000814b0:f9400460) O el3h:     ldr     x0,
> > > >>>     [x3,    #8]     (console_putc)
> > > >>>                     LD 000000c0000825d0  ........ ........ 000000d0 00307000
> > > >>> S:c0000825d0
> > > >>>                     R X0 (AARCH64) 000000d0 00307000
> > > >>>     3505307 ns  ES  (000000c0000814b4:d63f0040) O el3h:     blr     x2
> > > >>>     (console_putc)
> > > >>>                     R X30 (AARCH64) 000000c0 000814b8
> > > >>>     3505371 ns  ES  (000000c000000b5c:b9000001) O el3h:     str     w1,
> > > >>>     [x0]    (spider_serial_putc)
> > > >>>                     EXC [0x200] Synchronous Current EL with SP_ELx
> > > >>>                     R FAR_EL3 (AARCH64) 000000c0 00000b5c
> > > >>>                     R ESR_EL3 (AARCH64) 8600000f
> > > >>>                     R CPSR 200003cd
> > > >>>                     R SPSR_EL3 (AARCH64) 200003cd
> > > >>>                     R ELR_EL3 (AARCH64) 000000c0 00000b5c
> > > >>>     3505443 ns  ES  (000000c004000a00:14000586) O el3h:     b
> > > >>>     c004002018      <exception_entry>       (Vectors)
> > > >>>                     EXC [0x200] Synchronous Current EL with SP_ELx
> > > >>>                     R FAR_EL3 (AARCH64) 000000c0 04000a00
> > > >>>                     R ESR_EL3 (AARCH64) 8600000e
> > > >>>                     R CPSR 200003cd
> > > >>>                     R SPSR_EL3 (AARCH64) 200003cd
> > > >>>                     R ELR_EL3 (AARCH64) 000000c0 04000a00
> > > >>>
> > > >>> BTW, In addition to the UART, there seems to be another issue.
> > > >>> The Vectors themselves are located in our ROM location which also
> > resides
> > > >> on
> > > >>> a different memory area (0xC0_0400_0000 space).
> > > >>> Once the UART access caused an exception, the jump to Vectors caused
> > > >>> another exception so we are in a loop.
> > > >>>
> > > >>> Looks like a catch22 to me.
> > > >>> On one hand the barebox wanted to start clean and disabled the MMU
> > > but
> > > >> on
> > > >>> the other hand the mmu_early_enable sets a partial MMU which causes
> > > >>> exceptions.
> > > >>> What do you think needs to be the best solution here?
> > > >>>
> > > >>> Cheers,
> > > >>> Lior.
> > > >>>
> > > >>>> -----Original Message-----
> > > >>>> From: Sascha Hauer <s.hauer@pengutronix.de>
> > > >>>> Sent: Thursday, August 17, 2023 10:18 AM
> > > >>>> To: Lior Weintraub <liorw@pliops.com>
> > > >>>> Cc: barebox@lists.infradead.org
> > > >>>> Subject: Re: ARM: mmu_early_enable
> > > >>>>
> > > >>>> CAUTION: External Sender
> > > >>>>
> > > >>>> On Thu, Aug 17, 2023 at 06:22:50AM +0000, Lior Weintraub wrote:
> > > >>>>> Hi Sascha,
> > > >>>>>
> > > >>>>> I think I found an issue with the CONFIG_MMU feature.
> > > >>>>> When the code under barebox_pbl_start calls mmu_early_enable, the
> > > >>> MMU
> > > >>>>> is set such that only the given SRAM is defined (membase, memsize).
> > > >>>>> But then, if DEBUG_LL is in use and the function pr_debug is called we
> > > >>>>> get an exception because the UART address is not included in the
> > MMU.
> > > >>>>
> > > >>>> That shouldn't happen. See the code in mmu_early_enable():
> > > >>>>
> > > >>>>         early_remap_range(0, 1UL << (BITS_PER_VA - 1),
> > MAP_UNCACHED);
> > > >>>>         early_remap_range(membase, memsize - OPTEE_SIZE,
> > > MAP_CACHED);
> > > >>>>         early_remap_range(membase + memsize - OPTEE_SIZE,
> > OPTEE_SIZE,
> > > >>>> MAP_FAULT);
> > > >>>>
> > > >>>> The first line maps the whole address space uncached in a flat 1:1
> > > >>>> mapping. The second and third lines map the SDRAM (SRAM in your
> > > case)
> > > >>>> cached.
> > > >>>>
> > > >>>> Your availabe memory is quite small (3MiB) and by skipping the
> > > >>>> relocation your SRAM layout is not standard. Could it be that
> > something
> > > >>>> overwrites your page tables?
> > > >>>>
> > > >>>> Sascha
> > > >>>>
> > > >>>> --
> > > >>>> Pengutronix e.K.                           |                             |
> > > >>>> Steuerwalder Str. 21                       | http://secure-
> > > >>>> web.cisco.com/1OEKFl2BnNpoLNUlGA--QcqTLOmehOhRYUZN-
> > > >>>> THBCB91kVNePMy2om4tD5Nv-
> > > >>>>
> > > >>>
> > > >>
> > >
> > _isTZzlwD1lXGQLUMWmqHlBH9dEe0vcctRC7gn_a6v7IxQu5RV7VCRo5Rl7Tylx
> > > >>>> vh1hfoYe3c1lCTbGAEE5kXKVZLdKBs7oNP9Xn4ml3gy7I78-
> > > >>>>
> > > >>>
> > > >>
> > >
> > c_QsTMlZ4xNZj06ORqpIvkGFgk72fNMsGjjLXZP6zTk2yEI2gjapDB8ClJ0mVtAl
> > > >>>> oiP9YHbgjuY0qbUbZfQq-UuasUtCi2rRo0Pu2jKm7sqnlCFb16xbdfl-
> > > >>>>
> > > >>>
> > > >>
> > >
> > JN9oqUXAy8l3lHq0yGyfhYZnzWTxH/http%3A%2F%2Fwww.pengutronix.de%
> > > >>>> 2F  |
> > > >>>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> > > >>>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-
> > 5555
> > > |
> > > >
> > > >
> > > >
> > >
> > > --
> > > Pengutronix e.K.                           |                             |
> > > Steuerwalder Str. 21                       | http://secure-
> > > web.cisco.com/1rHhZRaIMgLKBdYtAto-eJv-
> > >
> > UVrRgCr70rxOmbuyWwvRnouTeJgTuxP_8toYZ2QUHYtscVBHs3UJC9WziVAE
> > >
> > PJNQ2al3TLzj35iVExhjvjGXQg0zWWCYLcKwXbrdHhKJzQRIIc2rzwW1waZUHs
> > >
> > YQejj6gEft75EDIxwt0Vqlu_KaA2_ocuxFdmkz4Nc1yBB336Srtlc1HA8NWxuVa
> > >
> > V9tvMC6Ey8F6Z2_adwYpShKeFxa42FJSo2uuRfmmjpv7bj87vOsK_0h_67u5s
> > >
> > PFiKY0jX1LoatvDUrlcHTZKdQ5h9gnnJnIQpfgAHrwRz2vZPZMU/http%3A%2F
> > > %2Fwww.pengutronix.de%2F  |
> > > 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> > > Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> > >
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


