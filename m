Delivery-date: Mon, 05 Jan 2026 12:44:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcj10-001VWf-2i
	for lore@lore.pengutronix.de;
	Mon, 05 Jan 2026 12:44:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcj10-0000OX-1q
	for lore@pengutronix.de; Mon, 05 Jan 2026 12:44:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FK+Yn+u7XWlM6G2K0NUSSPM/waFKQBcX+j8V+ISsB7s=; b=d0qvazCwHPFXg+gRHfMNRgHUgU
	ErKLdpytaONscU/nmviko0+IUb8lbVRByTnh6/WPTP5GCYkGS6o25tU+mZXFOlcmGCrgIX6p26hFN
	uOUAZf1iYRzuWQphsWMoD3T6dvVEDrQoJWSUAAVtTUKuwNB95yO3qHrlJ9FXFe56B/Jj8ySRV+nIg
	2GirE1DjZj0jv9o8SWNlTK9EaRNs+E+PTADQMA9ajf4ZJ00EOmJfJlsJB4obxGzKMGkoyI16lAuIC
	c8vSNlcEvU+1HTex/UnkXrhVRqRdLEO22Sz3fip2/1/q16TIIJ6HomN/H+FK46gJgVnz2ohSdYMgu
	L1YZxyKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcj0V-0000000BDLz-19Si;
	Mon, 05 Jan 2026 11:44:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcj0S-0000000BDLU-34iA
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 11:44:18 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vcj0P-0000HI-Mz; Mon, 05 Jan 2026 12:44:13 +0100
Message-ID: <d35060ed-79ba-4bc8-9237-8be49eb395a5@pengutronix.de>
Date: Mon, 5 Jan 2026 12:44:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>
References: <20260105-pbl-load-elf-v1-0-e97853f98232@pengutronix.de>
 <20260105-pbl-load-elf-v1-12-e97853f98232@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260105-pbl-load-elf-v1-12-e97853f98232@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_034416_781173_18A554F9 
X-CRM114-Status: GOOD (  24.04  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 12/19] ARM: use relative jumps in exception table
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 1/5/26 12:26 PM, Sascha Hauer wrote:
> Create position-independent exception vectors using relative branches
> instead of absolute addresses. This works on ARMv7 onwards which
> supports setting the address of the exception vectors.
> 
> New .text_inplace_exceptions section contains PC-relative branches,
> enabling barebox proper to start with MMU already configured using
> ELF segment addresses.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Why do we even need arm_fixup_vectors? There should already be
relocation entries emitted for .word symbol lines, so given that we only
install the vector table after relocation, it should be possible to
simply drop arm_fixup_vectors?

Cheers,
Ahmad

> ---
>  arch/arm/cpu/exceptions_32.S    | 20 ++++++++++++++++++++
>  arch/arm/cpu/interrupts_32.c    |  3 +--
>  arch/arm/cpu/mmu_32.c           |  5 +++--
>  arch/arm/cpu/no-mmu.c           | 11 +----------
>  arch/arm/include/asm/sections.h |  1 +
>  arch/arm/lib/pbl.lds.S          |  6 +++---
>  arch/arm/lib32/barebox.lds.S    |  4 ++++
>  7 files changed, 33 insertions(+), 17 deletions(-)
> 
> diff --git a/arch/arm/cpu/exceptions_32.S b/arch/arm/cpu/exceptions_32.S
> index 235996f7ec296b44261637bc98c1c5ee30a3cbe1..302e4d030d6347e8fdb488db73a0a3a4bb1c0ec7 100644
> --- a/arch/arm/cpu/exceptions_32.S
> +++ b/arch/arm/cpu/exceptions_32.S
> @@ -156,6 +156,26 @@ ENTRY(arm_fixup_vectors)
>  ENDPROC(arm_fixup_vectors)
>  #endif
>  
> +.section .text_inplace_exceptions
> +1:	b 1b			/* barebox_arm_reset_vector */
> +#ifdef CONFIG_ARM_EXCEPTIONS
> +	b undefined_instruction	/* undefined instruction */
> +	b software_interrupt	/* software interrupt (SWI) */
> +	b prefetch_abort	/* prefetch abort */
> +	b data_abort		/* data abort */
> +1:	b 1b			/* (reserved) */
> +	b irq			/* irq (interrupt) */
> +	b fiq			/* fiq (fast interrupt) */
> +#else
> +1:	b 1b				/* undefined instruction */
> +1:	b 1b				/* software interrupt (SWI) */
> +1:	b 1b				/* prefetch abort */
> +1:	b 1b				/* data abort */
> +1:	b 1b				/* (reserved) */
> +1:	b 1b				/* irq (interrupt) */
> +1:	b 1b				/* fiq (fast interrupt) */
> +#endif
> +
>  .section .text_exceptions
>  .globl extable
>  extable:
> diff --git a/arch/arm/cpu/interrupts_32.c b/arch/arm/cpu/interrupts_32.c
> index 185646e38195b2bdc9f0d7e30d53a0506932fa13..6ebcbcd8dc1299c0333da87e496bc57172691fa8 100644
> --- a/arch/arm/cpu/interrupts_32.c
> +++ b/arch/arm/cpu/interrupts_32.c
> @@ -181,7 +181,6 @@ void arm_pbl_init_exceptions(void)
>  	if (cpu_architecture() < CPU_ARCH_ARMv7)
>  		return;
>  
> -	set_vbar((unsigned long)__exceptions_start);
> -	arm_fixup_vectors();
> +	set_vbar((unsigned long)__inplace_exceptions_start);
>  }
>  #endif
> diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
> index 86a55d165ba3cec5154c345a1a3a9cb959f0996f..9ce77078d5e35810f2239d82f29f67e2aa2e4d8e 100644
> --- a/arch/arm/cpu/mmu_32.c
> +++ b/arch/arm/cpu/mmu_32.c
> @@ -629,8 +629,9 @@ void setup_trap_pages(void)
>  	 * First try to use the vectors where they actually are, works
>  	 * on ARMv7 and later.
>  	 */
> -	if (!set_vector_table((unsigned long)__exceptions_start)) {
> -		arm_fixup_vectors();
> +	if (!set_vector_table((unsigned long)__inplace_exceptions_start)) {
> +		pr_debug("Using inplace exception vectors at 0x%08lx\n",
> +			 (unsigned long)__inplace_exceptions_start);
>  		create_zero_page();
>  		return;
>  	}
> diff --git a/arch/arm/cpu/no-mmu.c b/arch/arm/cpu/no-mmu.c
> index c4ef5d1f9d55136d606c244309dbeeb8fd988784..68246d71156c7c84b9faff452cebb37132b83573 100644
> --- a/arch/arm/cpu/no-mmu.c
> +++ b/arch/arm/cpu/no-mmu.c
> @@ -21,8 +21,6 @@
>  #include <asm/sections.h>
>  #include <asm/cputype.h>
>  
> -#define __exceptions_size (__exceptions_stop - __exceptions_start)
> -
>  static bool has_vbar(void)
>  {
>  	u32 mainid;
> @@ -41,7 +39,6 @@ static bool has_vbar(void)
>  
>  static int nommu_v7_vectors_init(void)
>  {
> -	void *vectors;
>  	u32 cr;
>  
>  	if (cpu_architecture() < CPU_ARCH_ARMv7)
> @@ -58,13 +55,7 @@ static int nommu_v7_vectors_init(void)
>  	cr &= ~CR_V;
>  	set_cr(cr);
>  
> -	arm_fixup_vectors();
> -
> -	vectors = xmemalign(PAGE_SIZE, PAGE_SIZE);
> -	memset(vectors, 0, PAGE_SIZE);
> -	memcpy(vectors, __exceptions_start, __exceptions_size);
> -
> -	set_vbar((unsigned int)vectors);
> +	set_vbar((unsigned int)__inplace_exceptions_start);
>  
>  	return 0;
>  }
> diff --git a/arch/arm/include/asm/sections.h b/arch/arm/include/asm/sections.h
> index 15b1a6482a5b148284ab47de2db1c2653909da09..bf4fb7b109a7a22d9a298257af23a11b9efe6861 100644
> --- a/arch/arm/include/asm/sections.h
> +++ b/arch/arm/include/asm/sections.h
> @@ -13,6 +13,7 @@ extern char __dynsym_start[];
>  extern char __dynsym_end[];
>  extern char __exceptions_start[];
>  extern char __exceptions_stop[];
> +extern char __inplace_exceptions_start[];
>  
>  #endif
>  
> diff --git a/arch/arm/lib/pbl.lds.S b/arch/arm/lib/pbl.lds.S
> index 9c51f5eb3a3d8256752a78e03fed851c84d92edb..53b21084cff2e3d916cd37485281f2f78166c37d 100644
> --- a/arch/arm/lib/pbl.lds.S
> +++ b/arch/arm/lib/pbl.lds.S
> @@ -53,9 +53,9 @@ SECTIONS
>  		*(.text_bare_init*)
>  		__bare_init_end = .;
>  		. = ALIGN(0x20);
> -		__exceptions_start = .;
> -		KEEP(*(.text_exceptions*))
> -		__exceptions_stop = .;
> +		__inplace_exceptions_start = .;
> +		KEEP(*(.text_inplace_exceptions*))
> +		__inplace_exceptions_stop = .;
>  		*(.text*)
>  	}
>  
> diff --git a/arch/arm/lib32/barebox.lds.S b/arch/arm/lib32/barebox.lds.S
> index ede6889991f16d00f2bad79dd777ae9b5e639ff4..9b2b65e2f17d62d5134fc367621cce733dcea06a 100644
> --- a/arch/arm/lib32/barebox.lds.S
> +++ b/arch/arm/lib32/barebox.lds.S
> @@ -26,6 +26,10 @@ SECTIONS
>  		__exceptions_start = .;
>  		KEEP(*(.text_exceptions*))
>  		__exceptions_stop = .;
> +		. = ALIGN(0x20);
> +		__inplace_exceptions_start = .;
> +		KEEP(*(.text_inplace_exceptions*))
> +		__inplace_exceptions_stop = .;
>  		*(.text*)
>  	}
>  	BAREBOX_BARE_INIT_SIZE
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



