Delivery-date: Mon, 12 Jan 2026 14:22:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfHsN-000XFb-1s
	for lore@lore.pengutronix.de;
	Mon, 12 Jan 2026 14:22:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfHsM-0006Pa-DM
	for lore@pengutronix.de; Mon, 12 Jan 2026 14:22:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MV/TIScZfjhIqxj/nydL5qaSI8ZPS/ERiVKWnekq6lQ=; b=YiAasAMS7nG6WqJ54yR/n4AxhQ
	FFZexSqaQ6KbtW8lkup79yZ3DRG4DZeq6dIoxhY6z9TEf59uFUpRVtRF+vYuVC9IgBaDG9xgwiGgh
	zX9nQhtk/z/6FdCqwb5FUswJ7b0KkGLOVnMrE5cglHIOEghQqFCXSFR3Ipc5z3jF167xP3QN+uUB/
	br0IAQQPju7xXeeVYfeAAYhxyF0NpKFYVrKiW9BgAnM43pnchUPrTiE7mtko4l92Ay2JKGiTiiV2N
	S0RAoOX5rt/6eU6V6N8UQPPRevzl4+ZDszSNkpczpuP3oRkA8LWBXDJn1EkyJDTsFocKypan2Me0U
	O2LyKAzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfHrw-00000005Oji-2Bvn;
	Mon, 12 Jan 2026 13:22:04 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfHrv-00000005OjY-1Eoq
	for barebox@bombadil.infradead.org;
	Mon, 12 Jan 2026 13:22:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=MV/TIScZfjhIqxj/nydL5qaSI8ZPS/ERiVKWnekq6lQ=; b=XOA3VrmhNt94/d3Wf3psuXfOEU
	RevPortzQ/26UH4cEEzHW4OrFZQIfcoCbrCHMjRW3g5UjQgg/ruiktXwy22TxvdKR6oI66citwPNP
	A3JJAYqYGCSYIYXjeYDfBuWsCaXTaKzcKFJhzVI0X6c2qTI4vP1B1hd0YU6NVVMivW4lYB39LAKk6
	eJT/VAO18USVv+1LyJcR2VJF5Uehp95h7CaVccI8prxt7BI11feBNElnx89Zr437kIjFWWR2se0xp
	bGj+mOsMYkOI9Tx+vKvcX90hNg8uS/HMfuaK2NKZihsCQbQcqWZPX/8f6tcQVkix8aKs6DHmJ5bUW
	Rc3c+PLg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfHrs-00000000l27-1N1Q
	for barebox@lists.infradead.org;
	Mon, 12 Jan 2026 13:22:02 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vfHrr-0006Jm-Nu; Mon, 12 Jan 2026 14:21:59 +0100
Message-ID: <6ba5266d-409a-4498-a6d8-67fbeecd82fb@pengutronix.de>
Date: Mon, 12 Jan 2026 14:21:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>
References: <20260108-pbl-load-elf-v3-0-e28c931fc179@pengutronix.de>
 <20260108-pbl-load-elf-v3-22-e28c931fc179@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260108-pbl-load-elf-v3-22-e28c931fc179@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260112_132200_499384_F3415FDA 
X-CRM114-Status: GOOD (  24.49  )
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
Subject: Re: [PATCH v3 22/23] ARM: cleanup barebox proper entry
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

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

But this could just be fixed up into the original commit that remove the
__prereloc on barebox_non_pbl_start.

Cheers,
Ahmad

> ---
>  arch/arm/cpu/start.c         | 11 -----------
>  arch/arm/lib32/barebox.lds.S |  7 +------
>  arch/arm/lib64/barebox.lds.S |  7 +------
>  3 files changed, 2 insertions(+), 23 deletions(-)
> 
> diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
> index 2498bdb894c261f587af6542ea4574c497a6edc0..c2f14736dac5948d0b751f2307690420ee4c23ca 100644
> --- a/arch/arm/cpu/start.c
> +++ b/arch/arm/cpu/start.c
> @@ -189,14 +189,3 @@ __noreturn void barebox_non_pbl_start(unsigned long membase,
>  
>  	start_barebox();
>  }
> -
> -void start(unsigned long membase, unsigned long memsize, struct handoff_data *hd);
> -/*
> - * First function in the uncompressed image. We get here from
> - * the pbl. The stack already has been set up by the pbl.
> - */
> -void __section(.text_entry) start(unsigned long membase,
> -		unsigned long memsize, struct handoff_data *hd)
> -{
> -	barebox_non_pbl_start(membase, memsize, hd);
> -}
> diff --git a/arch/arm/lib32/barebox.lds.S b/arch/arm/lib32/barebox.lds.S
> index 2fb43b4619ff29d8d21dd579d3a3002b7134ff71..e1a9495440b3330811561db2e8ea92149756ff8a 100644
> --- a/arch/arm/lib32/barebox.lds.S
> +++ b/arch/arm/lib32/barebox.lds.S
> @@ -6,7 +6,7 @@
>  
>  OUTPUT_FORMAT(BAREBOX_OUTPUT_FORMAT)
>  OUTPUT_ARCH(BAREBOX_OUTPUT_ARCH)
> -ENTRY(start)
> +ENTRY(barebox_non_pbl_start)
>  
>  PHDRS
>  {
> @@ -27,17 +27,12 @@ SECTIONS
>  	.text      :
>  	{
>  		_stext = .;
> -		*(.text_entry*)
> -		__bare_init_start = .;
> -		*(.text_bare_init*)
> -		__bare_init_end = .;
>  		. = ALIGN(0x20);
>  		__exceptions_start = .;
>  		KEEP(*(.text_exceptions*))
>  		__exceptions_stop = .;
>  		*(.text*)
>  	} :text
> -	BAREBOX_BARE_INIT_SIZE
>  
>  	. = ALIGN(4096);
>  	__start_rodata = .;
> diff --git a/arch/arm/lib64/barebox.lds.S b/arch/arm/lib64/barebox.lds.S
> index 71f677a917851270e09c6d439fe5cbe4b6b41034..2255eaf503eae3d915f51d5d7ba2e6cdc10f711a 100644
> --- a/arch/arm/lib64/barebox.lds.S
> +++ b/arch/arm/lib64/barebox.lds.S
> @@ -5,7 +5,7 @@
>  
>  OUTPUT_FORMAT(BAREBOX_OUTPUT_FORMAT)
>  OUTPUT_ARCH(BAREBOX_OUTPUT_ARCH)
> -ENTRY(start)
> +ENTRY(barebox_non_pbl_start)
>  
>  PHDRS
>  {
> @@ -26,13 +26,8 @@ SECTIONS
>  	.text      :
>  	{
>  		_stext = .;
> -		*(.text_entry*)
> -		__bare_init_start = .;
> -		*(.text_bare_init*)
> -		__bare_init_end = .;
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



