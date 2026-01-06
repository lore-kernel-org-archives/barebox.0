Delivery-date: Tue, 06 Jan 2026 14:58:04 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd7ZU-001uh5-0f
	for lore@lore.pengutronix.de;
	Tue, 06 Jan 2026 14:58:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd7ZT-0002nv-G3
	for lore@pengutronix.de; Tue, 06 Jan 2026 14:58:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/vzqL4YjqR+SiYAdYJars4pqd6tXijmo8kzH+pwWFZk=; b=NILHSjh9VrAhCvOWxwVJH2TVwo
	iI4fS2auTORkbj7EwEVMVReMNt2Gl2Lt5oyf8yrIa0OtEr1+6NgNFUbyCdcwb4CN8rwD6mmOw/99M
	q3qBbQOE4PgEAGPzl9F0xUIL/FmbvfE2RZOwLuQ7tw19ex/qie3RI7pNMkp26oVk9hcGbHMZtdmD9
	bPJ+6ciLegW/Prg/f4qz60MPkz/QMFPFRfF4gmFijVV7/yg4bl54DQwPwEsE0LQa8WbofDJZdjAI3
	ZSNeiGYbOFLXNh3Ckj3oida/LSly1VpqMjQP5SCTf0B3vVHi2rRcd33VRUToemyMlFFDreigdxeIB
	uauw6S9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd7Z1-0000000DEpz-3Uln;
	Tue, 06 Jan 2026 13:57:35 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd7Z0-0000000DEpk-214Q
	for barebox@bombadil.infradead.org;
	Tue, 06 Jan 2026 13:57:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
	In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=/vzqL4YjqR+SiYAdYJars4pqd6tXijmo8kzH+pwWFZk=; b=kCXYYEaDzagaWenbRME/QROoC6
	QvxgP65/rG+F12obWYOBeaIPOaHUMG0+XYOypGLIaxJGNQRbrzsIDNrmTuF5S8YAf4QjZjwhlg1Kx
	sVd79ada7FzNYZzQPvZ6EUSONZotr40bGq3oh9a5evKF4Yo3PfQ9yuJetlFIeBf99feA6L36FzfeG
	p6i/wkKkQzr+NW8731G+4k16qdT96Y7un3UrggiWJwG+1gvHZhDI3YnXYsB15i6H1Z2VFQjfunc5F
	5BPLlHh6vASkv7mNkRcW3oZzuglwxLBFYhtzwl7+6PRakCfiN+mO2h9RuedzOm1MRV4ReIKoWwhP+
	l/6DD+6g==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd7Yw-0000000BsBI-3YrR
	for barebox@lists.infradead.org;
	Tue, 06 Jan 2026 13:57:33 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vd7Yw-0002hZ-5S; Tue, 06 Jan 2026 14:57:30 +0100
Message-ID: <e3780e99-f17f-4815-971e-a94063d20edf@pengutronix.de>
Date: Tue, 6 Jan 2026 14:57:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>
References: <20260106-pbl-load-elf-v2-0-487bc760f045@pengutronix.de>
 <20260106-pbl-load-elf-v2-13-487bc760f045@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260106-pbl-load-elf-v2-13-487bc760f045@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_135730_974789_38ACB307 
X-CRM114-Status: GOOD (  18.21  )
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
Subject: Re: [PATCH v2 13/21] ARM: use relative jumps in exception table
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 1/6/26 1:53 PM, Sascha Hauer wrote:
> Create position-independent exception vectors using relative branches
> instead of absolute addresses. This works on ARMv7 onwards which
> supports setting the address of the exception vectors.
> 
> New .text_inplace_exceptions section contains PC-relative branches,
> enabling barebox proper to start with MMU already configured using
> ELF segment addresses.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/arm/cpu/exceptions_32.S    | 20 ++++++++++++++++++++
>  arch/arm/cpu/interrupts_32.c    |  7 ++-----
>  arch/arm/cpu/no-mmu.c           | 11 +----------
>  arch/arm/include/asm/sections.h |  1 +
>  arch/arm/lib/pbl.lds.S          |  6 +++---
>  arch/arm/lib32/barebox.lds.S    |  4 ++++
>  6 files changed, 31 insertions(+), 18 deletions(-)
> 
> diff --git a/arch/arm/cpu/exceptions_32.S b/arch/arm/cpu/exceptions_32.S
> index dc3d42663cbedd37947e27d449eb4ac8c3d8c3f1..85ee4ca3fd4e5aff8e1e02aa3d7375173a923072 100644
> --- a/arch/arm/cpu/exceptions_32.S
> +++ b/arch/arm/cpu/exceptions_32.S
> @@ -155,6 +155,26 @@ ENTRY(arm_fixup_vectors)
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
> index 0b88db10fe487378fe08018701bc672f63139fc1..5dc4802fafbfdbcd54707b84835f40177e10742b 100644
> --- a/arch/arm/cpu/interrupts_32.c
> +++ b/arch/arm/cpu/interrupts_32.c
> @@ -231,10 +231,8 @@ static __maybe_unused int arm_init_vectors(void)
>  	 * First try to use the vectors where they actually are, works
>  	 * on ARMv7 and later.
>  	 */
> -	if (!set_vector_table((unsigned long)__exceptions_start)) {
> -		arm_fixup_vectors();
> +	if (!set_vector_table((unsigned long)__inplace_exceptions_start))
>  		return 0;
> -	}
>  
>  	/*
>  	 * Next try high vectors at 0xffff0000.
> @@ -264,7 +262,6 @@ void arm_pbl_init_exceptions(void)
>  	if (cpu_architecture() < CPU_ARCH_ARMv7)
>  		return;
>  
> -	set_vbar((unsigned long)__exceptions_start);
> -	arm_fixup_vectors();
> +	set_vbar((unsigned long)__inplace_exceptions_start);
>  }
>  #endif
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
> index c704dd6d70f3ab157ceb67dfb14760e03f2a5d62..17e0970ba4989e5213ed38ea5ff87bdf5bfa2740 100644
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



