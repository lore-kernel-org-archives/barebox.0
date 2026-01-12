Delivery-date: Mon, 12 Jan 2026 14:17:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfHn8-000XBN-2t
	for lore@lore.pengutronix.de;
	Mon, 12 Jan 2026 14:17:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfHn7-0005o4-N7
	for lore@pengutronix.de; Mon, 12 Jan 2026 14:17:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jQT67tH0Wx94dBbrMVbVExpjXOCRWRFdCtr+oTWXV84=; b=V5Vb13ddfjsFQsTnX7cHqOpp37
	DdsdgH1+toE6jZO0enVHgv+0Qi8uI4XjhGAYolc1f6+ww4ATKK4UL1NB+XbvP7wM+ySClxCv3SCrF
	FMyZ++bnsLGkx3Hc2x5qJClNf+Wzt5HRHOhptSHXHpIQ2W9FV5q7EtMhMTiZ2Bmb2x2j+3Zu9IFrt
	gn0TId94Gui/Ect0sjgCBjmUEgzlNWUcnL5B3o5j5ItXlANFrU+TxeUV6eAhbwpGy2rhaq7MCjdQG
	UcfPrp44mDCZNsDfPKqAnAR4XY/JjhZ8uTflgNpt6HachBalRzR8lD5hoQeLJtP9s9MPoHVzkKrb6
	V0elSBtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfHmd-00000005ODx-0llp;
	Mon, 12 Jan 2026 13:16:35 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfHmc-00000005ODr-15fO
	for barebox@bombadil.infradead.org;
	Mon, 12 Jan 2026 13:16:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=jQT67tH0Wx94dBbrMVbVExpjXOCRWRFdCtr+oTWXV84=; b=Y4zQZFNo9kaPvnP75vT6slM70R
	8gckcfeCPnKbf4uIsuL/c2i3mSWhX/1UGQF9mw8qfjZgzluwbwf7+yUVznbJqME2KwoxiQRh2Z1Zb
	DEi5xcyjHA8Kl/dTd5hBQwxp6nmMChwymFHc3XAOPN2ZYvwITnb2Mu32UXU3KBQqZ42c5m48ABjNC
	krs7zwxINnlGe+G13yu8cOZf+dQJgYnlYvkBmTWO9Q86tbDdvIs/LBz3jgG2m0/0ovLMchR6h1PJA
	DjhU15f9FSuCtvVX2J0VvALlxm4WTvKbWP9iTgrDh5Z1AzfeV2YWhriu6SRTpAkmZuEBCD3nlhO9b
	qt0/yrKw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfHmZ-00000000kk1-0lt6
	for barebox@lists.infradead.org;
	Mon, 12 Jan 2026 13:16:33 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vfHmY-0005jN-IM; Mon, 12 Jan 2026 14:16:30 +0100
Message-ID: <d89b38cf-1604-4e28-aa88-098e6c32b237@pengutronix.de>
Date: Mon, 12 Jan 2026 14:16:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>
References: <20260108-pbl-load-elf-v3-0-e28c931fc179@pengutronix.de>
 <20260108-pbl-load-elf-v3-14-e28c931fc179@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260108-pbl-load-elf-v3-14-e28c931fc179@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260112_131631_297799_7266F858 
X-CRM114-Status: GOOD (  23.51  )
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
Subject: Re: [PATCH v3 14/23] ARM: drop arm_fixup_vectors()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 1/8/26 4:50 PM, Sascha Hauer wrote:
> Add the missing "ax" flag for the exception table. With this the jumps
> in the exception table are correctly relocated and we no longer have to
> fix them up during runtime. Remove the now unnecessary
> arm_fixup_vectors().

Splendid!

> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Cheers,
Ahmad

> ---
>  arch/arm/cpu/exceptions_32.S       | 54 +++++---------------------------------
>  arch/arm/cpu/interrupts_32.c       |  5 +---
>  arch/arm/cpu/mmu_32.c              |  2 --
>  arch/arm/cpu/no-mmu.c              |  2 --
>  arch/arm/include/asm/barebox-arm.h |  4 ---
>  5 files changed, 8 insertions(+), 59 deletions(-)
> 
> diff --git a/arch/arm/cpu/exceptions_32.S b/arch/arm/cpu/exceptions_32.S
> index dc3d42663cbedd37947e27d449eb4ac8c3d8c3f1..68eb696fc7b78924156172a8867d3c9ed1dce588 100644
> --- a/arch/arm/cpu/exceptions_32.S
> +++ b/arch/arm/cpu/exceptions_32.S
> @@ -127,58 +127,18 @@ fiq:
>  	bad_save_user_regs
>  	bl 	do_fiq
>  
> -#ifdef CONFIG_ARM_EXCEPTIONS
> -/*
> - * With relocatable binary support the runtime exception vectors do not match
> - * the addresses in the binary. We have to fix them up during runtime
> - */
> -ENTRY(arm_fixup_vectors)
> -	ldr	r0, =undefined_instruction
> -	ldr	r1, =_undefined_instruction
> -	str	r0, [r1]
> -	ldr	r0, =software_interrupt
> -	ldr	r1, =_software_interrupt
> -	str	r0, [r1]
> -	ldr	r0, =prefetch_abort
> -	ldr	r1, =_prefetch_abort
> -	str	r0, [r1]
> -	ldr	r0, =data_abort
> -	ldr	r1, =_data_abort
> -	str	r0, [r1]
> -	ldr	r0, =irq
> -	ldr	r1, =_irq
> -	str	r0, [r1]
> -	ldr	r0, =fiq
> -	ldr	r1, =_fiq
> -	str	r0, [r1]
> -	bx	lr
> -ENDPROC(arm_fixup_vectors)
> -#endif
> -
> -.section .text_exceptions
> +.section .text_exceptions, "ax"
>  .globl extable
>  extable:
>  1:	b 1b				/* barebox_arm_reset_vector */
>  #ifdef CONFIG_ARM_EXCEPTIONS
> -	ldr pc, _undefined_instruction	/* undefined instruction */
> -	ldr pc, _software_interrupt	/* software interrupt (SWI) */
> -	ldr pc, _prefetch_abort		/* prefetch abort */
> -	ldr pc, _data_abort		/* data abort */
> +	ldr pc, =undefined_instruction	/* undefined instruction */
> +	ldr pc, =software_interrupt	/* software interrupt (SWI) */
> +	ldr pc, =prefetch_abort		/* prefetch abort */
> +	ldr pc, =data_abort		/* data abort */
>  1:	b 1b				/* (reserved) */
> -	ldr pc, _irq			/* irq (interrupt) */
> -	ldr pc, _fiq			/* fiq (fast interrupt) */
> -.globl _undefined_instruction
> -_undefined_instruction: .word undefined_instruction
> -.globl _software_interrupt
> -_software_interrupt: .word software_interrupt
> -.globl _prefetch_abort
> -_prefetch_abort: .word prefetch_abort
> -.globl _data_abort
> -_data_abort: .word data_abort
> -.globl _irq
> -_irq: .word irq
> -.globl _fiq
> -_fiq: .word fiq
> +	ldr pc, =irq			/* irq (interrupt) */
> +	ldr pc, =fiq			/* fiq (fast interrupt) */
>  #else
>  1:	b 1b				/* undefined instruction */
>  1:	b 1b				/* software interrupt (SWI) */
> diff --git a/arch/arm/cpu/interrupts_32.c b/arch/arm/cpu/interrupts_32.c
> index 0b88db10fe487378fe08018701bc672f63139fc1..af2231f2a78059f7dc6b4a786a384fb870e9f14c 100644
> --- a/arch/arm/cpu/interrupts_32.c
> +++ b/arch/arm/cpu/interrupts_32.c
> @@ -231,10 +231,8 @@ static __maybe_unused int arm_init_vectors(void)
>  	 * First try to use the vectors where they actually are, works
>  	 * on ARMv7 and later.
>  	 */
> -	if (!set_vector_table((unsigned long)__exceptions_start)) {
> -		arm_fixup_vectors();
> +	if (!set_vector_table((unsigned long)__exceptions_start))
>  		return 0;
> -	}
>  
>  	/*
>  	 * Next try high vectors at 0xffff0000.
> @@ -265,6 +263,5 @@ void arm_pbl_init_exceptions(void)
>  		return;
>  
>  	set_vbar((unsigned long)__exceptions_start);
> -	arm_fixup_vectors();
>  }
>  #endif
> diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
> index 981202b789befbd04e212f48490aebb41dfb6b98..1d2ead9160cf3b921c2900d4edaad0d465f636d9 100644
> --- a/arch/arm/cpu/mmu_32.c
> +++ b/arch/arm/cpu/mmu_32.c
> @@ -534,8 +534,6 @@ void create_vector_table(unsigned long adr)
>  			      get_pte_flags(MAP_CACHED), true);
>  	}
>  
> -	arm_fixup_vectors();
> -
>  	memset(vectors, 0, PAGE_SIZE);
>  	memcpy(vectors, __exceptions_start, __exceptions_stop - __exceptions_start);
>  }
> diff --git a/arch/arm/cpu/no-mmu.c b/arch/arm/cpu/no-mmu.c
> index c4ef5d1f9d55136d606c244309dbeeb8fd988784..8e00cffebfd9193a45f5b5ab1863e4e6b13464d8 100644
> --- a/arch/arm/cpu/no-mmu.c
> +++ b/arch/arm/cpu/no-mmu.c
> @@ -58,8 +58,6 @@ static int nommu_v7_vectors_init(void)
>  	cr &= ~CR_V;
>  	set_cr(cr);
>  
> -	arm_fixup_vectors();
> -
>  	vectors = xmemalign(PAGE_SIZE, PAGE_SIZE);
>  	memset(vectors, 0, PAGE_SIZE);
>  	memcpy(vectors, __exceptions_start, __exceptions_size);
> diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
> index e1d89d5684d36f003ba8da3651ae86bda1d9b34c..99f82311945ceb0d06ef9e36ba34a9be54f1ae8e 100644
> --- a/arch/arm/include/asm/barebox-arm.h
> +++ b/arch/arm/include/asm/barebox-arm.h
> @@ -45,12 +45,8 @@ unsigned long arm_mem_membase_get(void);
>  unsigned long arm_mem_endmem_get(void);
>  
>  #ifdef CONFIG_ARM_EXCEPTIONS
> -void arm_fixup_vectors(void);
>  ulong arm_get_vector_table(void);
>  #else
> -static inline void arm_fixup_vectors(void)
> -{
> -}
>  static inline ulong arm_get_vector_table(void)
>  {
>  	return ~0;
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



