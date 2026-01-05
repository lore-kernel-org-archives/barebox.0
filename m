Delivery-date: Mon, 05 Jan 2026 14:12:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vckNR-001Wx0-3C
	for lore@lore.pengutronix.de;
	Mon, 05 Jan 2026 14:12:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vckNR-0002zq-9J
	for lore@pengutronix.de; Mon, 05 Jan 2026 14:12:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BJXktaIIObdLX9RKhNcYvUzAeaWWaK7hTimpC2G8EVg=; b=0nSwtJMfdCTa7XRSJRwUGaRXX0
	TsZDLBiFiHTn2m1M3Pa5zy/RmTf99mqGvAxkyPyKXBsLgTaBOT2RjfRCvEohIj9e4z9fA017ugU8O
	CXoKosPfaHZbnmql6E31ND5fhu6L+GrlVjhEgkW91e+a9NnMDTThQBWBqSRgQRGFymsg6elyD869X
	8NynX0odCHi9X1q3no6LtTPzcGn8PcLOesviiIm1Ug0xnEqVwWJPGH1sX2KMLcqF/TTE31gk+dPZ9
	0QRPWbdJDLbco/IqEPTBOFcwhLg3vYCbMLfz+N8pdHINW/wgfHGf0KWjtLGEd5IGsQ3kLN3E6Uy0a
	isNmJ+SQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vckMt-0000000BPBf-47NX;
	Mon, 05 Jan 2026 13:11:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vckMs-0000000BPAj-1hLb
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 13:11:31 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vckMq-0002v5-OZ; Mon, 05 Jan 2026 14:11:28 +0100
Message-ID: <1d0e01f8-a1d7-4c8c-982a-be21f9dcb67b@pengutronix.de>
Date: Mon, 5 Jan 2026 14:11:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>
References: <20260105-pbl-load-elf-v1-0-e97853f98232@pengutronix.de>
 <20260105-pbl-load-elf-v1-14-e97853f98232@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260105-pbl-load-elf-v1-14-e97853f98232@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_051130_443991_628EB733 
X-CRM114-Status: GOOD (  20.48  )
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
Subject: Re: [PATCH 14/19] ARM: linker script: create separate PT_LOAD
 segments for text, rodata, and data
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 1/5/26 12:26 PM, Sascha Hauer wrote:
> Fix the linker scripts to generate three distinct PT_LOAD segments with
> correct permissions instead of combining .rodata with .data.
> 
> Before this fix, the linker auto-generated only two PT_LOAD segments:
> 1. Text segment (PF_R|PF_X)
> 2. Data segment (PF_R|PF_W) - containing .rodata, .data, .bss, etc.

Did it though? Why did we get the RWX linker warnings then?

> This caused .rodata to be mapped with write permissions when
> pbl_mmu_setup_from_elf() set up MMU permissions based on ELF segments,
> defeating the W^X protection that commit d9ccb0cf14 intended to provide.

What commit hash is this?

> With explicit PHDRS directives, we now generate three segments:
> 1. text segment (PF_R|PF_X): .text and related code sections
> 2. rodata segment (PF_R): .rodata and unwind tables
> 3. data segment (PF_R|PF_W): .data, .bss, and related sections

Not directly related, but this is as good a place as any to ask the
question: How is zero-padding implemented? If the file size is shorter
than the memory size, the loader is supposed to zero-fill, which is used
for BSS zeroing for example. Now if you load the ELF in place, we can't
obviously zero-fill. This is fine, but we should have a check somewhere
to make absolutely sure that we don't end up with too short segments.


> -#define BAREBOX_RELOCATION_TABLE					\
> -	.rel_dyn_start : { *(.__rel_dyn_start) }			\
> -	.BAREBOX_RELOCATION_TYPE.dyn : { *(.BAREBOX_RELOCATION_TYPE*) }	\
> -	.rel_dyn_end : { *(.__rel_dyn_end) }				\
> -	.__dynsym_start :  { *(.__dynsym_start) }			\
> -	.dynsym : { *(.dynsym) }					\
> -	.__dynsym_end : { *(.__dynsym_end) }
> +#define BAREBOX_RELOCATION_TABLE(PHDR)					\
> +	.rel_dyn_start : { *(.__rel_dyn_start) } PHDR			\
> +	.BAREBOX_RELOCATION_TYPE.dyn : { *(.BAREBOX_RELOCATION_TYPE*) }	PHDR \
> +	.rel_dyn_end : { *(.__rel_dyn_end) } PHDR			\
> +	.__dynsym_start :  { *(.__dynsym_start) } PHDR			\
> +	.dynsym : { *(.dynsym) } PHDR					\
> +	.__dynsym_end : { *(.__dynsym_end) } PHDR

Quoting
https://www.sourceware.org/binutils/docs/ld/Output-Section-Phdr.html:

If a section is assigned to one or more segments, then all subsequent
allocated sections will be assigned to those segments as well, unless
they use an explicitly :phdr modifier. You can use :NONE to tell the
linker to not put the section in any segment at all.

This whole hunk is thus unnecessary as it follows the data section.

> +PHDRS
> +{
> +	text PT_LOAD FLAGS(5);     /* PF_R | PF_X */
> +	rodata PT_LOAD FLAGS(4);   /* PF_R */
> +	data PT_LOAD FLAGS(6);     /* PF_R | PF_W */
> +	dynamic PT_DYNAMIC FLAGS(6); /* PF_R | PF_W */

I believe we don't need PF_W for PT_DYNAMIC. You could move it one up to
merge with rodata.

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
> @@ -31,7 +40,7 @@ SECTIONS
>  		KEEP(*(.text_inplace_exceptions*))
>  		__inplace_exceptions_stop = .;
>  		*(.text*)
> -	}
> +	} :text
>  	BAREBOX_BARE_INIT_SIZE
>  
>  	. = ALIGN(4096);
> @@ -39,7 +48,7 @@ SECTIONS
>  	.rodata : {
>  		*(.rodata*)
>  		RO_DATA_SECTION
> -	}
> +	} :rodata
>  
>  #ifdef CONFIG_ARM_UNWIND
>  	/*
> @@ -50,12 +59,12 @@ SECTIONS
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
> @@ -65,19 +74,21 @@ SECTIONS
>  	. = ALIGN(4);
>  	.data : { *(.data*)
>  		CONSTRUCTORS
> -	}
> +	} :data
> +
> +	.dynamic : { *(.dynamic) } :data :dynamic

As mentioned above. s/:data/:rodata/ and move up?

>  
>  	. = .;
>  
> -	BAREBOX_RELOCATION_TABLE
> +	BAREBOX_RELOCATION_TABLE(:data)
>  
>  	_edata = .;
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

Side-effect of having the decompressor take care of zeroing BSS is a big
size increase for CONFIG_IMAGE_COMPRESSION_NONE. I think that's
acceptable, but it's worth a comment here why we don't have a separate
BSS segment (or make bss NOALLOC).

FYI, I have patches to get rid of MAX_BSS_SIZE on top of PBL ELF loader
support, which I will submit once this support is merged.

Cheers,
Ahmad

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



