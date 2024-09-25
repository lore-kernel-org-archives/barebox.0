Delivery-date: Wed, 25 Sep 2024 17:56:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stUNr-002ebK-2q
	for lore@lore.pengutronix.de;
	Wed, 25 Sep 2024 17:56:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stUNr-0004xs-K6
	for lore@pengutronix.de; Wed, 25 Sep 2024 17:56:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5BhDZ15ioDLruP3LC3rJHDvHqUC4Iq7Y/PDciP9U5Oc=; b=GLJAbWUm95tf5XRlAX2c1qInzF
	FVFNX0x+6xMQdj5kMfmIOAz//rbOPo2zJOowAmASsfYDVEMWpiFX/JlDT6/8keLfpoH2Yo3Y/0lu7
	x0gvbftl1ROffpjZX0U3mmRuvPCLEV8dOhwbTInqSSTuGRpBsksHdSkmkpifJhoxlWD8ixFfNiz7r
	KmOwIOF8qCz4Bw0PYh2qAaO6unG4pxfpaUKDHyCEhhHCxizlSgl08exdQ4PCmLxDbeTpNJlp8RGUG
	bjPMLuyCLGVd1UNYhzXYpeWsHiM0efM2g4GswZiq34xXgZojGZdHECiih4MZcB0ndVlNLvSNAmUL5
	mPHYRFzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stUND-00000005y2q-3CFH;
	Wed, 25 Sep 2024 15:56:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stUNB-00000005y1Z-0cvc
	for barebox@lists.infradead.org;
	Wed, 25 Sep 2024 15:56:15 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1stUN9-0004o6-Ol; Wed, 25 Sep 2024 17:56:11 +0200
Message-ID: <9d23dad3-71f4-478b-8fd0-f65f70666a2f@pengutronix.de>
Date: Wed, 25 Sep 2024 17:56:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 "open list:BAREBOX" <barebox@lists.infradead.org>
References: <20240925-arm-assembly-memmove-v1-0-0d92103658a0@pengutronix.de>
 <20240925-arm-assembly-memmove-v1-3-0d92103658a0@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240925-arm-assembly-memmove-v1-3-0d92103658a0@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240925_085613_525689_2CC7FF17 
X-CRM114-Status: GOOD (  27.03  )
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
Subject: Re: [PATCH 03/10] ARM: convert all "mov.* pc, reg" to "bx reg" for
 ARMv6+
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 25.09.24 15:55, Sascha Hauer wrote:
> Adoption of Linux commit:
> 
> | commit 6ebbf2ce437b33022d30badd49dc94d33ecfa498
> | Author: Russell King <rmk+kernel@arm.linux.org.uk>
> | Date:   Mon Jun 30 16:29:12 2014 +0100
> |
> |     ARM: convert all "mov.* pc, reg" to "bx reg" for ARMv6+
> |
> |     ARMv6 and greater introduced a new instruction ("bx") which can be used
> |     to return from function calls.  Recent CPUs perform better when the
> |     "bx lr" instruction is used rather than the "mov pc, lr" instruction,
> |     and this sequence is strongly recommended to be used by the ARM
> |     architecture manual (section A.4.1.1).
> |
> |     We provide a new macro "ret" with all its variants for the condition
> |     code which will resolve to the appropriate instruction.
> |
> |     Rather than doing this piecemeal, and miss some instances, change all
> |     the "mov pc" instances to use the new macro, with the exception of
> |     the "movs" instruction and the kprobes code.  This allows us to detect
> |     the "mov pc, lr" case and fix it up - and also gives us the possibility
> |     of deploying this for other registers depending on the CPU selection.
> |
> |     Reported-by: Will Deacon <will.deacon@arm.com>
> |     Tested-by: Stephen Warren <swarren@nvidia.com> # Tegra Jetson TK1
> |     Tested-by: Robert Jarzmik <robert.jarzmik@free.fr> # mioa701_bootresume.S
> |     Tested-by: Andrew Lunn <andrew@lunn.ch> # Kirkwood
> |     Tested-by: Shawn Guo <shawn.guo@freescale.com>
> |     Tested-by: Tony Lindgren <tony@atomide.com> # OMAPs
> |     Tested-by: Gregory CLEMENT <gregory.clement@free-electrons.com> # Armada XP, 375, 385
> |     Acked-by: Sekhar Nori <nsekhar@ti.com> # DaVinci
> |     Acked-by: Christoffer Dall <christoffer.dall@linaro.org> # kvm/hyp
> |     Acked-by: Haojian Zhuang <haojian.zhuang@gmail.com> # PXA3xx
> |     Acked-by: Stefano Stabellini <stefano.stabellini@eu.citrix.com> # Xen
> |     Tested-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de> # ARMv7M
> |     Tested-by: Simon Horman <horms+renesas@verge.net.au> # Shmobile
> |     Signed-off-by: Russell King <rmk+kernel@arm.linux.org.uk>
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/arm/cpu/cache-armv4.S       | 11 ++++++-----
>  arch/arm/cpu/cache-armv5.S       | 13 +++++++------
>  arch/arm/cpu/cache-armv6.S       | 13 +++++++------
>  arch/arm/cpu/cache-armv7.S       |  9 +++++----
>  arch/arm/cpu/hyp.S               |  3 ++-
>  arch/arm/cpu/setupc_32.S         |  7 ++++---
>  arch/arm/cpu/sm_as.S             |  3 ++-
>  arch/arm/include/asm/assembler.h | 22 ++++++++++++++++++++++
>  arch/arm/lib32/ashldi3.S         |  3 ++-
>  arch/arm/lib32/ashrdi3.S         |  3 ++-
>  arch/arm/lib32/lshrdi3.S         |  3 ++-
>  arch/arm/lib32/runtime-offset.S  |  2 +-
>  12 files changed, 62 insertions(+), 30 deletions(-)
> 
> diff --git a/arch/arm/cpu/cache-armv4.S b/arch/arm/cpu/cache-armv4.S
> index 78a098b2fe..024a94c583 100644
> --- a/arch/arm/cpu/cache-armv4.S
> +++ b/arch/arm/cpu/cache-armv4.S
> @@ -2,6 +2,7 @@
>  
>  #include <linux/linkage.h>
>  #include <init.h>
> +#include <asm/assembler.h>
>  
>  #define CACHE_DLINESIZE 32
>  
> @@ -22,7 +23,7 @@ ENTRY(v4_mmu_cache_on)
>  		mov	r0, #0
>  		mcr	p15, 0, r0, c8, c7, 0	@ flush I,D TLBs
>  #endif
> -		mov	pc, r12
> +		ret	r12
>  ENDPROC(v4_mmu_cache_on)
>  
>  __common_mmu_cache_on:
> @@ -43,7 +44,7 @@ ENTRY(v4_mmu_cache_off)
>  		mcr	p15, 0, r0, c7, c7	@ invalidate whole cache v4
>  		mcr	p15, 0, r0, c8, c7	@ invalidate whole TLB v4
>  #endif
> -		mov	pc, lr
> +		ret	lr
>  ENDPROC(v4_mmu_cache_off)
>  
>  .section .text.v4_mmu_cache_flush
> @@ -105,7 +106,7 @@ ENTRY(v4_dma_inv_range)
>  	cmp	r0, r1
>  	blo	1b
>  	mcr	p15, 0, r0, c7, c10, 4		@ drain WB
> -	mov	pc, lr
> +	ret	lr
>  
>  /*
>   *	dma_clean_range(start, end)
> @@ -125,7 +126,7 @@ ENTRY(v4_dma_clean_range)
>  	cmp	r0, r1
>  	blo	1b
>  	mcr	p15, 0, r0, c7, c10, 4		@ drain WB
> -	mov	pc, lr
> +	ret	lr
>  
>  /*
>   *	dma_flush_range(start, end)
> @@ -143,5 +144,5 @@ ENTRY(v4_dma_flush_range)
>  	cmp	r0, r1
>  	blo	1b
>  	mcr	p15, 0, r0, c7, c10, 4		@ drain WB
> -	mov	pc, lr
> +	ret	lr
>  
> diff --git a/arch/arm/cpu/cache-armv5.S b/arch/arm/cpu/cache-armv5.S
> index bcb7ebf466..6d9cbba015 100644
> --- a/arch/arm/cpu/cache-armv5.S
> +++ b/arch/arm/cpu/cache-armv5.S
> @@ -2,6 +2,7 @@
>  
>  #include <linux/linkage.h>
>  #include <init.h>
> +#include <asm/assembler.h>
>  
>  #define CACHE_DLINESIZE 32
>  
> @@ -22,7 +23,7 @@ ENTRY(v5_mmu_cache_on)
>  		mov	r0, #0
>  		mcr	p15, 0, r0, c8, c7, 0	@ flush I,D TLBs
>  #endif
> -		mov	pc, r12
> +		ret	r12
>  ENDPROC(v5_mmu_cache_on)
>  
>  __common_mmu_cache_on:
> @@ -43,7 +44,7 @@ ENTRY(v5_mmu_cache_off)
>  		mcr	p15, 0, r0, c7, c7	@ invalidate whole cache v4
>  		mcr	p15, 0, r0, c8, c7	@ invalidate whole TLB v4
>  #endif
> -		mov	pc, lr
> +		ret	lr
>  ENDPROC(v5_mmu_cache_off)
>  
>  .section .text.v5_mmu_cache_flush
> @@ -52,7 +53,7 @@ ENTRY(v5_mmu_cache_flush)
>  		bne	1b
>  		mcr	p15, 0, r0, c7, c5, 0	@ flush I cache
>  		mcr	p15, 0, r0, c7, c10, 4	@ drain WB
> -		mov	pc, lr
> +		ret	lr
>  ENDPROC(v5_mmu_cache_flush)
>  
>  /*
> @@ -80,7 +81,7 @@ ENTRY(v5_dma_inv_range)
>  	cmp	r0, r1
>  	blo	1b
>  	mcr	p15, 0, r0, c7, c10, 4		@ drain WB
> -	mov	pc, lr
> +	ret	lr
>  
>  /*
>   *	dma_clean_range(start, end)
> @@ -100,7 +101,7 @@ ENTRY(v5_dma_clean_range)
>  	cmp	r0, r1
>  	blo	1b
>  	mcr	p15, 0, r0, c7, c10, 4		@ drain WB
> -	mov	pc, lr
> +	ret	lr
>  
>  /*
>   *	dma_flush_range(start, end)
> @@ -118,5 +119,5 @@ ENTRY(v5_dma_flush_range)
>  	cmp	r0, r1
>  	blo	1b
>  	mcr	p15, 0, r0, c7, c10, 4		@ drain WB
> -	mov	pc, lr
> +	ret	lr
>  
> diff --git a/arch/arm/cpu/cache-armv6.S b/arch/arm/cpu/cache-armv6.S
> index cc720314c0..ab965623a3 100644
> --- a/arch/arm/cpu/cache-armv6.S
> +++ b/arch/arm/cpu/cache-armv6.S
> @@ -2,6 +2,7 @@
>  
>  #include <linux/linkage.h>
>  #include <init.h>
> +#include <asm/assembler.h>
>  
>  #define HARVARD_CACHE
>  #define CACHE_LINE_SIZE		32
> @@ -24,7 +25,7 @@ ENTRY(v6_mmu_cache_on)
>  		mov	r0, #0
>  		mcr	p15, 0, r0, c8, c7, 0	@ flush I,D TLBs
>  #endif
> -		mov	pc, r12
> +		ret	r12
>  ENDPROC(v6_mmu_cache_on)
>  
>  __common_mmu_cache_on:
> @@ -46,7 +47,7 @@ ENTRY(v6_mmu_cache_off)
>  		mcr	p15, 0, r0, c7, c7	@ invalidate whole cache v4
>  		mcr	p15, 0, r0, c8, c7	@ invalidate whole TLB v4
>  #endif
> -		mov	pc, lr
> +		ret	lr
>  
>  .section .text.v6_mmu_cache_flush
>  ENTRY(v6_mmu_cache_flush)
> @@ -55,7 +56,7 @@ ENTRY(v6_mmu_cache_flush)
>  		mcr	p15, 0, r1, c7, c5, 0	@ invalidate I+BTB
>  		mcr	p15, 0, r1, c7, c15, 0	@ clean+invalidate unified
>  		mcr	p15, 0, r1, c7, c10, 4	@ drain WB
> -		mov	pc, lr
> +		ret	lr
>  ENDPROC(v6_mmu_cache_flush)
>  
>  /*
> @@ -95,7 +96,7 @@ ENTRY(v6_dma_inv_range)
>  	blo	1b
>  	mov	r0, #0
>  	mcr	p15, 0, r0, c7, c10, 4		@ drain write buffer
> -	mov	pc, lr
> +	ret	lr
>  ENDPROC(v6_dma_inv_range)
>  
>  /*
> @@ -117,7 +118,7 @@ ENTRY(v6_dma_clean_range)
>  	blo	1b
>  	mov	r0, #0
>  	mcr	p15, 0, r0, c7, c10, 4		@ drain write buffer
> -	mov	pc, lr
> +	ret	lr
>  ENDPROC(v6_dma_clean_range)
>  
>  /*
> @@ -139,5 +140,5 @@ ENTRY(v6_dma_flush_range)
>  	blo	1b
>  	mov	r0, #0
>  	mcr	p15, 0, r0, c7, c10, 4		@ drain write buffer
> -	mov	pc, lr
> +	ret	lr
>  ENDPROC(v6_dma_flush_range)
> diff --git a/arch/arm/cpu/cache-armv7.S b/arch/arm/cpu/cache-armv7.S
> index efd9fe412f..3f6e5e6b73 100644
> --- a/arch/arm/cpu/cache-armv7.S
> +++ b/arch/arm/cpu/cache-armv7.S
> @@ -2,6 +2,7 @@
>  
>  #include <linux/linkage.h>
>  #include <init.h>
> +#include <asm/assembler.h>
>  
>  .section .text.v7_mmu_cache_on
>  ENTRY(v7_mmu_cache_on)
> @@ -140,7 +141,7 @@ iflush:
>  		mcr	p15, 0, r12, c7, c5, 0	@ invalidate I+BTB
>  		dsb
>  		isb
> -		mov	pc, lr
> +		ret	lr
>  ENDPROC(__v7_mmu_cache_flush_invalidate)
>  
>  /*
> @@ -182,7 +183,7 @@ ENTRY(v7_dma_inv_range)
>  	cmp	r0, r1
>  	blo	1b
>  	dsb
> -	mov	pc, lr
> +	ret	lr
>  ENDPROC(v7_dma_inv_range)
>  
>  /*
> @@ -201,7 +202,7 @@ ENTRY(v7_dma_clean_range)
>  	cmp	r0, r1
>  	blo	1b
>  	dsb
> -	mov	pc, lr
> +	ret	lr
>  ENDPROC(v7_dma_clean_range)
>  
>  /*
> @@ -220,5 +221,5 @@ ENTRY(v7_dma_flush_range)
>  	cmp	r0, r1
>  	blo	1b
>  	dsb
> -	mov	pc, lr
> +	ret	lr
>  ENDPROC(v7_dma_flush_range)
> diff --git a/arch/arm/cpu/hyp.S b/arch/arm/cpu/hyp.S
> index b5e4807877..016bcd79c0 100644
> --- a/arch/arm/cpu/hyp.S
> +++ b/arch/arm/cpu/hyp.S
> @@ -4,6 +4,7 @@
>  #include <asm/system.h>
>  #include <asm/opcodes-virt.h>
>  #include <init.h>
> +#include <asm/assembler.h>
>  
>  .arch_extension sec
>  .arch_extension virt
> @@ -80,7 +81,7 @@ THUMB(	orr	r12, r12, #PSR_T_BIT	)
>  	__ERET
>  1:	msr	cpsr_c, r12
>  2:
> -	mov	pc, r2
> +	ret	r2
>  ENDPROC(armv7_hyp_install)
>  
>  ENTRY(armv7_switch_to_hyp)
> diff --git a/arch/arm/cpu/setupc_32.S b/arch/arm/cpu/setupc_32.S
> index eafc9b52c6..d3449d9646 100644
> --- a/arch/arm/cpu/setupc_32.S
> +++ b/arch/arm/cpu/setupc_32.S
> @@ -2,6 +2,7 @@
>  
>  #include <linux/linkage.h>
>  #include <asm/sections.h>
> +#include <asm/assembler.h>
>  
>  .section .text.setupc
>  
> @@ -32,7 +33,7 @@ ENTRY(setup_c)
>  	bl	sync_caches_for_execution
>  	sub	lr, r5, r4		/* adjust return address to new location */
>  	pop	{r4, r5}
> -	mov	pc, lr
> +	ret	lr
>  ENDPROC(setup_c)
>  
>  /*
> @@ -76,13 +77,13 @@ ENTRY(relocate_to_adr)
>  	ldr	r0,=1f
>  	sub	r0, r0, r8
>  	add	r0, r0, r6
> -	mov	pc, r0			/* jump to relocated address */
> +	ret	r0			/* jump to relocated address */
>  1:
>  	bl	relocate_to_current_adr	/* relocate binary */
>  
>  	mov	lr, r7
>  
>  	pop	{r3, r4, r5, r6, r7, r8}
> -	mov	pc, lr
> +	ret	lr
>  
>  ENDPROC(relocate_to_adr)
> diff --git a/arch/arm/cpu/sm_as.S b/arch/arm/cpu/sm_as.S
> index f55ac8661c..32007147d4 100644
> --- a/arch/arm/cpu/sm_as.S
> +++ b/arch/arm/cpu/sm_as.S
> @@ -5,6 +5,7 @@
>  #include <asm-generic/memory_layout.h>
>  #include <asm/secure.h>
>  #include <asm/system.h>
> +#include <asm/assembler.h>
>  
>  .arch_extension sec
>  .arch_extension virt
> @@ -147,7 +148,7 @@ secure_monitor:
>  
>  hyp_trap:
>          mrs     lr, elr_hyp     @ for older asm: .byte 0x00, 0xe3, 0x0e, 0xe1
> -        mov pc, lr                              @ do no switch modes, but
> +        ret	lr                              @ do no switch modes, but
>                                                  @ return to caller
>  
>  ENTRY(psci_cpu_entry)
> diff --git a/arch/arm/include/asm/assembler.h b/arch/arm/include/asm/assembler.h
> index 4e7ad57170..e8f5625a0a 100644
> --- a/arch/arm/include/asm/assembler.h
> +++ b/arch/arm/include/asm/assembler.h
> @@ -340,4 +340,26 @@
>  	blx\c		\dst
>  	.endif
>  	.endm
> +
> +	.irp	c,,eq,ne,cs,cc,mi,pl,vs,vc,hi,ls,ge,lt,gt,le,hs,lo
> +	.macro	ret\c, reg
> +#if __LINUX_ARM_ARCH__ < 6
> +	mov\c	pc, \reg
> +#else
> +	.ifeqs	"\reg", "lr"
> +	bx\c	\reg
> +	.else
> +	mov\c	pc, \reg
> +	.endif
> +#endif
> +	.endm
> +	.endr
> +
> +	.macro	ret.w, reg
> +	ret	\reg
> +#ifdef CONFIG_THUMB2_BAREBOX
> +	nop
> +#endif
> +	.endm
> +
>  #endif
> diff --git a/arch/arm/lib32/ashldi3.S b/arch/arm/lib32/ashldi3.S
> index b62e06f602..dccb732078 100644
> --- a/arch/arm/lib32/ashldi3.S
> +++ b/arch/arm/lib32/ashldi3.S
> @@ -23,6 +23,7 @@ General Public License for more details.
>  */
>  
>  #include <linux/linkage.h>
> +#include <asm/assembler.h>
>  
>  #ifdef __ARMEB__
>  #define al r1
> @@ -44,7 +45,7 @@ ENTRY(__aeabi_llsl)
>   THUMB(	lsrmi	r3, al, ip		)
>   THUMB(	orrmi	ah, ah, r3		)
>  	mov	al, al, lsl r2
> -	mov	pc, lr
> +	ret	lr
>  
>  ENDPROC(__ashldi3)
>  ENDPROC(__aeabi_llsl)
> diff --git a/arch/arm/lib32/ashrdi3.S b/arch/arm/lib32/ashrdi3.S
> index db849b65fc..3db06281e5 100644
> --- a/arch/arm/lib32/ashrdi3.S
> +++ b/arch/arm/lib32/ashrdi3.S
> @@ -23,6 +23,7 @@ General Public License for more details.
>  */
>  
>  #include <linux/linkage.h>
> +#include <asm/assembler.h>
>  
>  #ifdef __ARMEB__
>  #define al r1
> @@ -44,7 +45,7 @@ ENTRY(__aeabi_lasr)
>   THUMB(	lslmi	r3, ah, ip		)
>   THUMB(	orrmi	al, al, r3		)
>  	mov	ah, ah, asr r2
> -	mov	pc, lr
> +	ret	lr
>  
>  ENDPROC(__ashrdi3)
>  ENDPROC(__aeabi_lasr)
> diff --git a/arch/arm/lib32/lshrdi3.S b/arch/arm/lib32/lshrdi3.S
> index e77e96c7bc..5af522482c 100644
> --- a/arch/arm/lib32/lshrdi3.S
> +++ b/arch/arm/lib32/lshrdi3.S
> @@ -23,6 +23,7 @@ General Public License for more details.
>  */
>  
>  #include <linux/linkage.h>
> +#include <asm/assembler.h>
>  
>  #ifdef __ARMEB__
>  #define al r1
> @@ -44,7 +45,7 @@ ENTRY(__aeabi_llsr)
>   THUMB(	lslmi	r3, ah, ip		)
>   THUMB(	orrmi	al, al, r3		)
>  	mov	ah, ah, lsr r2
> -	mov	pc, lr
> +	ret	lr
>  
>  ENDPROC(__lshrdi3)
>  ENDPROC(__aeabi_llsr)
> diff --git a/arch/arm/lib32/runtime-offset.S b/arch/arm/lib32/runtime-offset.S
> index ac104de119..d9ba864b3b 100644
> --- a/arch/arm/lib32/runtime-offset.S
> +++ b/arch/arm/lib32/runtime-offset.S
> @@ -14,7 +14,7 @@ ENTRY(get_runtime_offset)
>  	ldr r1, linkadr
>  	subs r0, r0, r1
>  THUMB(	adds r0, r0, #1)
> -	mov pc, lr
> +	ret lr
>  
>  linkadr:
>  .word get_runtime_offset
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


