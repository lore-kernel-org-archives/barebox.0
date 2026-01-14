Delivery-date: Wed, 14 Jan 2026 16:07:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vg2St-001Gxc-21
	for lore@lore.pengutronix.de;
	Wed, 14 Jan 2026 16:07:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vg2Ss-0000Gn-E5
	for lore@pengutronix.de; Wed, 14 Jan 2026 16:07:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XxilGpYnhvNqWdkITJrZxvKL3jh68RaMlPbdl5gkpDY=; b=DSgC2IKOK860pGpJj7WXnYWNcO
	l4QFfahPnrnYoHE07clqCB/zUHccsx17O6BfE1UckjrHs/SEOfcKAUVx05dWEUl3kTZWO+yoGuiPO
	7uCxuARFXeVpt1Zm3d0Z203/+gfIwzFsVVnThQDGE8Rc4pIZnH0Alm17kRnH8GzHZUs55phQU5HfE
	wMpYg7jVibOcypJtoTAyzFgdoKH8zy34QIIDz3N3IsE1RsBjOCyTb2/D/UDiu6cdNT6iYyqz7LZIm
	pLVHqPAOGL6gpRZD178SkRFZPvnj4nC6xu1VgSDO05vunXEVEqnBUKPBP0pTcoksplCmVyWnjowaB
	A9vd7psQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg2SA-00000009ce2-278a;
	Wed, 14 Jan 2026 15:06:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg2S7-00000009cdM-3E4D
	for barebox@lists.infradead.org;
	Wed, 14 Jan 2026 15:06:33 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vg2S6-00009z-25; Wed, 14 Jan 2026 16:06:30 +0100
Message-ID: <1c1fe62d-238b-42a7-b285-8aa1d870b21d@pengutronix.de>
Date: Wed, 14 Jan 2026 16:06:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>
References: <20260114-pbl-load-elf-v4-0-0afa78d95a7e@pengutronix.de>
 <20260114-pbl-load-elf-v4-15-0afa78d95a7e@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260114-pbl-load-elf-v4-15-0afa78d95a7e@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_070631_807488_04C79B73 
X-CRM114-Status: GOOD (  19.43  )
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
Subject: Re: [PATCH v4 15/22] ARM: linker script: create separate PT_LOAD
 segments for text, rodata, and data
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 1/14/26 1:14 PM, Sascha Hauer wrote:
> Fix the linker scripts to generate three distinct PT_LOAD segments with
> correct permissions instead of combining .rodata with .data.
> 
> Before this fix, the linker auto-generated only two PT_LOAD segments:
> 1. Text segment (PF_R|PF_X)
> 2. Data segment (PF_R|PF_W) - containing .rodata, .data, .bss, etc.
> 
> With explicit PHDRS directives, we now generate three segments:
> 1. text segment (PF_R|PF_X): .text and related code sections
> 2. rodata segment (PF_R): .rodata and unwind tables
> 3. data segment (PF_R|PF_W): .data, .bss, and related sections
> 
> With this we can setup the MMU properly from outside the ELF binary.
> 
> 🤖 Generated with [Claude Code](https://claude.com/claude-code)
> 
> Co-Authored-By: Claude Sonnet 4.5 <noreply@anthropic.com>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/arm/lib32/barebox.lds.S | 35 +++++++++++++++++++++++------------
>  arch/arm/lib64/barebox.lds.S | 31 ++++++++++++++++++++-----------
>  2 files changed, 43 insertions(+), 23 deletions(-)
> 
> diff --git a/arch/arm/lib32/barebox.lds.S b/arch/arm/lib32/barebox.lds.S
> index c704dd6d70f3ab157ceb67dfb14760e03f2a5d62..c09899361599dfc8d50b38e35b68c08f48ea9913 100644
> --- a/arch/arm/lib32/barebox.lds.S
> +++ b/arch/arm/lib32/barebox.lds.S
> @@ -7,14 +7,23 @@
>  OUTPUT_FORMAT(BAREBOX_OUTPUT_FORMAT)
>  OUTPUT_ARCH(BAREBOX_OUTPUT_ARCH)
>  ENTRY(start)
> +
> +PHDRS
> +{
> +	text PT_LOAD FLAGS(5);		/* PF_R | PF_X */
> +	rodata PT_LOAD FLAGS(4);	/* PF_R */
> +	dynamic PT_DYNAMIC FLAGS(4);	/* PF_R */
> +	data PT_LOAD FLAGS(6);		/* PF_R | PF_W */
> +}
> +
>  SECTIONS
>  {
>  	. = 0x0;
> -	.image_start : { *(.__image_start) }
> +	.image_start : { *(.__image_start) } :text
>  
>  	. = ALIGN(4);
>  
> -	._text : { *(._text) }
> +	._text : { *(._text) } :text
>  	.text      :
>  	{
>  		_stext = .;
> @@ -27,7 +36,7 @@ SECTIONS
>  		KEEP(*(.text_exceptions*))
>  		__exceptions_stop = .;
>  		*(.text*)
> -	}
> +	} :text
>  	BAREBOX_BARE_INIT_SIZE
>  
>  	. = ALIGN(4096);
> @@ -35,7 +44,7 @@ SECTIONS
>  	.rodata : {
>  		*(.rodata*)
>  		RO_DATA_SECTION
> -	}
> +	} :rodata
>  
>  #ifdef CONFIG_ARM_UNWIND
>  	/*
> @@ -46,20 +55,22 @@ SECTIONS
>  		__start_unwind_idx = .;
>  		*(.ARM.exidx*)
>  		__stop_unwind_idx = .;
> -	}
> +	} :rodata
>  	.ARM.unwind_tab : {
>  		__start_unwind_tab = .;
>  		*(.ARM.extab*)
>  		__stop_unwind_tab = .;
> -	}
> +	} :rodata
>  #endif
> +	.dynamic : { *(.dynamic) } :rodata :dynamic
> +
>  	. = ALIGN(4096);
> +
>  	__end_rodata = .;
>  	_etext = .;
>  	_sdata = .;
>  
> -	. = ALIGN(4);
> -	.data : { *(.data*) }
> +	.data : { *(.data*) } :data
>  
>  	. = .;
>  
> @@ -69,12 +80,12 @@ SECTIONS
>  
>  	BAREBOX_EFI_RUNTIME
>  
> -	.image_end : { *(.__image_end) }
> +	.image_end : { *(.__image_end) } :data
>  
>  	. = ALIGN(4);
> -	.__bss_start :  { *(.__bss_start) }
> -	.bss : { *(.bss*) }
> -	.__bss_stop :  { *(.__bss_stop) }
> +	.__bss_start :  { *(.__bss_start) } :data
> +	.bss : { *(.bss*) } :data
> +	.__bss_stop :  { *(.__bss_stop) } :data
>  
>  #ifdef CONFIG_ARM_SECURE_MONITOR
>  	. = ALIGN(16);
> diff --git a/arch/arm/lib64/barebox.lds.S b/arch/arm/lib64/barebox.lds.S
> index 5ee5fbc3741e1f7644c00f9b37c0903c27704a3e..1ce2c67df03068e5328a41b394aa1bcbbe63c027 100644
> --- a/arch/arm/lib64/barebox.lds.S
> +++ b/arch/arm/lib64/barebox.lds.S
> @@ -6,14 +6,23 @@
>  OUTPUT_FORMAT(BAREBOX_OUTPUT_FORMAT)
>  OUTPUT_ARCH(BAREBOX_OUTPUT_ARCH)
>  ENTRY(start)
> +
> +PHDRS
> +{
> +	text PT_LOAD FLAGS(5);		/* PF_R | PF_X */
> +	rodata PT_LOAD FLAGS(4);	/* PF_R */
> +	dynamic PT_DYNAMIC FLAGS(4);	/* PF_R */
> +	data PT_LOAD FLAGS(6);		/* PF_R | PF_W */
> +}
> +
>  SECTIONS
>  {
>  	. = 0x0;
>  
> -	.image_start : { *(.__image_start) }
> +	.image_start : { *(.__image_start) } :text
>  
>  	. = ALIGN(4);
> -	._text : { *(._text) }
> +	._text : { *(._text) } :text
>  	.text      :
>  	{
>  		_stext = .;
> @@ -22,7 +31,7 @@ SECTIONS
>  		*(.text_bare_init*)
>  		__bare_init_end = .;
>  		*(.text*)
> -	}
> +	} :text
>  	BAREBOX_BARE_INIT_SIZE
>  
>  	. = ALIGN(4096);
> @@ -30,7 +39,9 @@ SECTIONS
>  	.rodata : {
>  		*(.rodata*)
>  		RO_DATA_SECTION
> -	}
> +	} :rodata
> +
> +	.dynamic : { *(.dynamic) } :rodata :dynamic
>  
>  	. = ALIGN(4096);
>  
> @@ -38,20 +49,18 @@ SECTIONS
>  	_etext = .;
>  	_sdata = .;
>  
> -	.data : { *(.data*) }
> -
> -	BAREBOX_RELOCATION_TABLE
> +	.data : { *(.data*) } :data
>  
>  	_edata = .;
>  
>  	BAREBOX_EFI_RUNTIME
>  
> -	.image_end : { *(.__image_end) }
> +	.image_end : { *(.__image_end) } :data
>  
>  	. = ALIGN(4);
> -	.__bss_start :  { *(.__bss_start) }
> -	.bss : { *(.bss*) }
> -	.__bss_stop :  { *(.__bss_stop) }
> +	.__bss_start :  { *(.__bss_start) } :data
> +	.bss : { *(.bss*) } :data
> +	.__bss_stop :  { *(.__bss_stop) } :data
>  	_end = .;
>  	_barebox_image_size = __bss_start;
>  }
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



