Delivery-date: Thu, 15 Jan 2026 13:42:23 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgMgC-001auP-0E
	for lore@lore.pengutronix.de;
	Thu, 15 Jan 2026 13:42:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgMgB-0006Ho-0c
	for lore@pengutronix.de; Thu, 15 Jan 2026 13:42:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HaBxNiIITgzfnXAzmFBA+EXn4koURvrWrObwtV/ixEM=; b=uYnJr6HzaCPre4T759QUvGMpxm
	3wPDCxe+HYLPK+G/kVcdyl7Rt0p9DXCxIX0/0aWrWE5knMAsH+zghtK0NtNrveakfQ6zwr2EERK5X
	YM6l/G8hKZh341nDYsLeIxFZ/FaGUb/0waIkEKROjmm0xn0A1vTSFesyp06HEs2KP7IHiHFXcYsfQ
	UFKhhuUdAFUXnnc+Ys/QScxQ6Cqit7A2dEETu1PqQvBN6OvsflQ/zdS8PDRDHKYMAGsPmVeMzbmSO
	DbvFDJxAEbC6UaFZ0UPMKiUqJjtZWGpC8Dv022tXUPJ0ZVTY86bettpf3zfD81qnCzyDIYtFOYduN
	Vocga09g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgMfV-0000000CLfn-0tWu;
	Thu, 15 Jan 2026 12:41:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgMfS-0000000CLfP-1vMV
	for barebox@lists.infradead.org;
	Thu, 15 Jan 2026 12:41:39 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vgMfQ-0006Bv-PD; Thu, 15 Jan 2026 13:41:36 +0100
Message-ID: <c106e1d0-9c75-4373-ab07-b5d38f835547@pengutronix.de>
Date: Thu, 15 Jan 2026 13:41:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>
References: <20260114-pbl-load-elf-v4-0-0afa78d95a7e@pengutronix.de>
 <20260114-pbl-load-elf-v4-19-0afa78d95a7e@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260114-pbl-load-elf-v4-19-0afa78d95a7e@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260115_044138_539525_1EF0FCAE 
X-CRM114-Status: GOOD (  19.02  )
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
Subject: Re: [PATCH v4 19/22] riscv: linker script: create separate PT_LOAD
 segments for text, rodata, and data
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 1/14/26 1:14 PM, Sascha Hauer wrote:
> Fix the linker script to generate three distinct PT_LOAD segments with
> correct permissions instead of combining .rodata with .data.
> 
> Before this fix, the linker auto-generated only two PT_LOAD segments:
> 1. Text segment (PF_R|PF_X)
> 2. Data segment (PF_R|PF_W) - containing .rodata, .data, .bss, etc.
> 
> With explicit PHDRS directives, we now generate three segments:
> 1. text segment (PF_R|PF_X): .text and related code sections
> 2. rodata segment (PF_R): .rodata and related read-only sections
> 3. data segment (PF_R|PF_W): .data, .bss, and related sections
> 
> With this we can setup the MMU properly from outside the ELF binary.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/riscv/lib/barebox.lds.S | 38 +++++++++++++++++++++++++-------------
>  1 file changed, 25 insertions(+), 13 deletions(-)
> 
> diff --git a/arch/riscv/lib/barebox.lds.S b/arch/riscv/lib/barebox.lds.S
> index 03b3a967193cfee1c67b96632cf972a553e8bec4..0cfa4bff57920bfaed822cb62c553c49f543994c 100644
> --- a/arch/riscv/lib/barebox.lds.S
> +++ b/arch/riscv/lib/barebox.lds.S
> @@ -16,14 +16,23 @@
>  OUTPUT_ARCH(BAREBOX_OUTPUT_ARCH)
>  ENTRY(start)
>  OUTPUT_FORMAT(BAREBOX_OUTPUT_FORMAT)
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
> @@ -35,44 +44,47 @@ SECTIONS
>  		KEEP(*(.text_exceptions*))
>  		__exceptions_stop = .;
>  		*(.text*)
> -	}
> +	} :text
>  	BAREBOX_BARE_INIT_SIZE
>  
> -	. = ALIGN(4);
> +	. = ALIGN(4096);
>  	__start_rodata = .;
>  	.rodata : {
>  		*(.rodata*)
>  		RO_DATA_SECTION
> -	}
> +	} :rodata
> +
> +	.dynamic : { *(.dynamic) } :rodata :dynamic
>  
>  	__end_rodata = .;
>  	_etext = .;
>  	_sdata = .;
>  
> -	. = ALIGN(4);
> -	.data : { *(.data*) }
> +	. = ALIGN(4096);
> +
> +	.data : { *(.data*) } :data
>  
>  	/DISCARD/ : { *(.rela.plt*) }
>  	.rela.dyn : {
>  		__rel_dyn_start = .;
>  		*(.rel*)
>  		__rel_dyn_end = .;
> -	}
> +	} :data
>  
>  	.dynsym : {
>  		__dynsym_start = .;
>  		*(.dynsym)
>  		__dynsym_end = .;
> -	}
> +	} :data
>  
>  	_edata = .;
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



