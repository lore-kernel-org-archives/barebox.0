Delivery-date: Mon, 12 Jan 2026 14:20:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfHqX-000XE3-0z
	for lore@lore.pengutronix.de;
	Mon, 12 Jan 2026 14:20:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfHqW-000696-6P
	for lore@pengutronix.de; Mon, 12 Jan 2026 14:20:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ePTGoEL7otuS83sCFAlagvHFIOrc7mpTK7lrU5Rt1qI=; b=4ui1Dum/bPc7qmMMqf/8RfZo2f
	p9uYHf2bQX7aJ+Z6Fs6ZvyoVNQKiQgwxSVB/fIGt52XiQSPvv+oR1Zxk3vM3qU+leTE7gyEWnqj7a
	qSzgGWP+wZ6tjM+Hd8XqyLgTOKKlnZlb5sGJvPqsHZ/jIgHyAY8OqwGqTmIDiYoxVsD8BULkd6a2m
	tK75kdGoywDm124vjXT0oQwtawXW4GS6ovU6rFF3z7E3Pp3OfiRxoGJbO8uGwWaddqiojni0SGZ6Y
	jgnCVZ44KUW8Z0GieIw6KbkZZb9kojX7mCZJ00mjnKHKgxMhGsdqZKwO4zdDkSI4xGeQgf+Lwtr8I
	m4CuVCdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfHq4-00000005OUF-387H;
	Mon, 12 Jan 2026 13:20:08 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfHq3-00000005OTX-2gmm
	for barebox@bombadil.infradead.org;
	Mon, 12 Jan 2026 13:20:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=ePTGoEL7otuS83sCFAlagvHFIOrc7mpTK7lrU5Rt1qI=; b=UIhhk/wttp1bkqEeW3NT0ohSkF
	0VV3E20awn98PJoyChHw1fk4a+6l8LFgrfjxeiJIlPWpnyHf6lZdtVdo4Tu5wGnzD60EKtC2KEMlV
	XxBx2//WkrXBpcWp5pheKKvAMhtSnMy6qLrPjkVmckreey9YOzENpe/PjZHtgg30ruoOmb40eNafT
	J+tl0W8n0+82LUQWAasFEB4SMGN3uezESd+mxx4KkOq+OIIj7y0D2DkQO22Km9K+FcyQv+R37u6De
	h1jIqgdQuNuqItleSuMCTO3AXmjtQT5WIc4kgKsPqeWnK49BxmFn/s0+mNpI2XJjboyZO7sq89SAQ
	bV0TZWLA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfHq0-00000000kvl-2hcC
	for barebox@lists.infradead.org;
	Mon, 12 Jan 2026 13:20:06 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vfHq0-00063m-6v; Mon, 12 Jan 2026 14:20:04 +0100
Message-ID: <4c0431fd-a6eb-446a-9ade-2402bc54307c@pengutronix.de>
Date: Mon, 12 Jan 2026 14:20:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>
References: <20260108-pbl-load-elf-v3-0-e28c931fc179@pengutronix.de>
 <20260108-pbl-load-elf-v3-15-e28c931fc179@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260108-pbl-load-elf-v3-15-e28c931fc179@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260112_132004_782358_0800F19A 
X-CRM114-Status: GOOD (  21.10  )
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
Subject: Re: [PATCH v3 15/23] ARM: linker script: create separate PT_LOAD
 segments for text, rodata, and data
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 1/8/26 4:50 PM, Sascha Hauer wrote:
> Fix the linker scripts to generate three distinct PT_LOAD segments with
> correct permissions instead of combining .rodata with .data.
> 
> Before this fix, the linker auto-generated only two PT_LOAD segments:
> 1. Text segment (PF_R|PF_X)
> 2. Data segment (PF_R|PF_W) - containing .rodata, .data, .bss, etc.
> 
> This caused .rodata to be mapped with write permissions when
> pbl_mmu_setup_from_elf() set up MMU permissions based on ELF segments,
> defeating the W^X protection that commit d9ccb0cf14 intended to provide.

Remove references to commits within this series.

> 
> With explicit PHDRS directives, we now generate three segments:
> 1. text segment (PF_R|PF_X): .text and related code sections
> 2. rodata segment (PF_R): .rodata and unwind tables
> 3. data segment (PF_R|PF_W): .data, .bss, and related sections
> 
> This ensures pbl_mmu_setup_from_elf() correctly maps .rodata as
> read-only (MAP_CACHED_RO) instead of read-write (MAP_CACHED).
> 
> 🤖 Generated with [Claude Code](https://claude.com/claude-code)
> 
> Co-Authored-By: Claude Sonnet 4.5 <noreply@anthropic.com>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/lib32/barebox.lds.S | 34 ++++++++++++++++++++++------------
>  arch/arm/lib64/barebox.lds.S | 29 +++++++++++++++++++----------
>  2 files changed, 41 insertions(+), 22 deletions(-)
> 
> diff --git a/arch/arm/lib32/barebox.lds.S b/arch/arm/lib32/barebox.lds.S
> index c704dd6d70f3ab157ceb67dfb14760e03f2a5d62..2fb43b4619ff29d8d21dd579d3a3002b7134ff71 100644
> --- a/arch/arm/lib32/barebox.lds.S
> +++ b/arch/arm/lib32/barebox.lds.S
> @@ -7,14 +7,23 @@
>  OUTPUT_FORMAT(BAREBOX_OUTPUT_FORMAT)
>  OUTPUT_ARCH(BAREBOX_OUTPUT_ARCH)
>  ENTRY(start)
> +
> +PHDRS
> +{
> +	text PT_LOAD FLAGS(5);     /* PF_R | PF_X */
> +	rodata PT_LOAD FLAGS(4);   /* PF_R */
> +	data PT_LOAD FLAGS(6);     /* PF_R | PF_W */
> +	dynamic PT_DYNAMIC FLAGS(4); /* PF_R */

Move one up for readability (segments with same permissions listed next
to each other).

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
> @@ -46,20 +55,21 @@ SECTIONS
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
>  	. = ALIGN(4096);
>  	__end_rodata = .;
>  	_etext = .;
>  	_sdata = .;
>  
> -	. = ALIGN(4);
> -	.data : { *(.data*) }
> +	.data : { *(.data*) } :data
> +
> +	.dynamic : { *(.dynamic) } :data :dynamic

Replace :data with :rodata and move it up just before
__end_rodata, so it's actually read-only.

> --- a/arch/arm/lib64/barebox.lds.S
> +++ b/arch/arm/lib64/barebox.lds.S
> @@ -6,14 +6,23 @@
>  OUTPUT_FORMAT(BAREBOX_OUTPUT_FORMAT)
>  OUTPUT_ARCH(BAREBOX_OUTPUT_ARCH)
>  ENTRY(start)
> +
> +PHDRS
> +{
> +	text PT_LOAD FLAGS(5);     /* PF_R | PF_X */
> +	rodata PT_LOAD FLAGS(4);   /* PF_R */
> +	data PT_LOAD FLAGS(6);     /* PF_R | PF_W */
> +	dynamic PT_DYNAMIC FLAGS(4); /* PF_R */

Same feedback as for arm32.

> -	BAREBOX_RELOCATION_TABLE
> +	.dynamic : { *(.dynamic) } :data :dynamic

Ditto.

Cheers,
Ahmad
-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



