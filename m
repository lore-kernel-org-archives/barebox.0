Delivery-date: Mon, 12 Jan 2026 14:45:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfIEU-000XZf-0s
	for lore@lore.pengutronix.de;
	Mon, 12 Jan 2026 14:45:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfIET-00018K-8x
	for lore@pengutronix.de; Mon, 12 Jan 2026 14:45:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6nBdmG1+0CuN7DIsrTpl0xBsHpS53NOwceNEv2rTPmU=; b=BWa3zL5mu3AMlMnIKwCJ6QHqz2
	4f/FPidXKF6Bp3i+OEBj33FoaNt6HjqOCW6Lohf3UZChB7Tr6X8s4xbxHwYPDbwD33DhS8zmgzLW4
	/uWh3YdMswTcCKywvRgeJNC5dowCXD6LsUme9pD5p19A30pCjszAbVfoqAgS/CcC0EMrbn5x30saP
	AfO8p1W4zhMKLkqSvLcnQ5luhRSKJIfbXs4/ZjJDGEK6sghBGKbCrz81Y56u4J/bCsLVXJyDKnMTN
	HRLa/FVKajtyCHyqUKaq80PggFskwujPcHb968lzpWF4e1J9/2gSIlBwm8AvJLBbWSexZSFGVaj6K
	0DKZIeLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfIE4-00000005QtF-3XlU;
	Mon, 12 Jan 2026 13:44:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfIE2-00000005Qs8-0cHN
	for barebox@lists.infradead.org;
	Mon, 12 Jan 2026 13:44:55 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vfIE0-0000xc-JX; Mon, 12 Jan 2026 14:44:52 +0100
Message-ID: <0976bcf7-8fe4-48eb-b27a-ad2bc0efedab@pengutronix.de>
Date: Mon, 12 Jan 2026 14:44:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>
References: <20260108-pbl-load-elf-v3-0-e28c931fc179@pengutronix.de>
 <20260108-pbl-load-elf-v3-23-e28c931fc179@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260108-pbl-load-elf-v3-23-e28c931fc179@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260112_054454_190268_65B51E25 
X-CRM114-Status: GOOD (  19.41  )
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
Subject: Re: [PATCH v3 23/23] riscv: cleanup barebox proper entry
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On 1/8/26 4:50 PM, Sascha Hauer wrote:
> As barebox proper is now an ELF file we no longer need to map the entry
> function to the start of the image. Just link it to wherever the linker
> wants it and drop the text_entry section. Also, remove the start()
> function and set the ELF entry to barebox_non_pbl_start() directly.
> 
> While at it also remove the bare_init stuff from the barebox proper
> linker script as it's only relevant to the PBL linker script which
> is a separate script.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Likewise can just be squashed into the commit that dropped relocate_to*.


> -	barebox = (void *)elf.entry;
> +	barebox = (void *)(unsigned long)elf.entry;

Should have been squashed into earlier commit.

Cheers,
Ahmad

>  
>  	pr_debug("jumping to uncompressed image at 0x%p. dtb=0x%p\n", barebox, fdt);
>  
> diff --git a/arch/riscv/lib/barebox.lds.S b/arch/riscv/lib/barebox.lds.S
> index 77f854e73e2013ca332a0a94fd1deaa2b9978a1d..1435ce3318a466d875d583bab876f63a2368ae69 100644
> --- a/arch/riscv/lib/barebox.lds.S
> +++ b/arch/riscv/lib/barebox.lds.S
> @@ -14,7 +14,7 @@
>  #include <asm/barebox.lds.h>
>  
>  OUTPUT_ARCH(BAREBOX_OUTPUT_ARCH)
> -ENTRY(start)
> +ENTRY(barebox_non_pbl_start)
>  OUTPUT_FORMAT(BAREBOX_OUTPUT_FORMAT)
>  
>  PHDRS
> @@ -36,16 +36,11 @@ SECTIONS
>  	.text      :
>  	{
>  		_stext = .;
> -		*(.text_entry*)
> -		__bare_init_start = .;
> -		*(.text_bare_init*)
> -		__bare_init_end = .;
>  		__exceptions_start = .;
>  		KEEP(*(.text_exceptions*))
>  		__exceptions_stop = .;
>  		*(.text*)
>  	} :text
> -	BAREBOX_BARE_INIT_SIZE
>  
>  	. = ALIGN(4096);
>  	__start_rodata = .;
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



