Delivery-date: Mon, 12 Jan 2026 14:40:32 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfI9o-000XRr-2r
	for lore@lore.pengutronix.de;
	Mon, 12 Jan 2026 14:40:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfI9n-0000TA-Rc
	for lore@pengutronix.de; Mon, 12 Jan 2026 14:40:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/R3kUsw3AhxnEQ4SRIKb4k5zc+BsWwzTlP/TJmmpOBY=; b=DGRtVqmyi+nf0S2puvIeeYrbXB
	2Zdue3/NU23azErX4a+iKaAzWA7ycpfksUj7lw0Ysa6yDJp4meua3l43h2pj1Oy2GEyPJ7Yma0qu1
	egy3EYnFdkMxZE+HtkJpnXC5CoYCX1km82oaLAgCj2qtx5MU3mCF/2DFMitO64XV+4e+cs/863LfY
	kPbUVhX5TjpEYNKPGxMs4pSijqU2UuCQ8RpPf0pV4P2aACabEThuasb/Jj2hk83sJJIyQprgBqmLx
	I/EtfxyxJzMi909/a064lfhuJ6fz3mH94TGyQuscRxOmbnooWCxsV7DgWMOHE1IUgvyw3zj9XC3AZ
	a0O8MoKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfI9Q-00000005Qdu-2OSv;
	Mon, 12 Jan 2026 13:40:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfI9N-00000005QdU-3ced
	for barebox@lists.infradead.org;
	Mon, 12 Jan 2026 13:40:07 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vfI9M-0000Oh-Dc; Mon, 12 Jan 2026 14:40:04 +0100
Message-ID: <9f224fa7-a5cb-4fd3-aac3-abf14a6fb668@pengutronix.de>
Date: Mon, 12 Jan 2026 14:40:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>
References: <20260108-pbl-load-elf-v3-0-e28c931fc179@pengutronix.de>
 <20260108-pbl-load-elf-v3-18-e28c931fc179@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260108-pbl-load-elf-v3-18-e28c931fc179@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260112_054005_910498_261DA568 
X-CRM114-Status: GOOD (  20.11  )
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
Subject: Re: [PATCH v3 18/23] riscv: linker script: create separate PT_LOAD
 segments for text, rodata, and data
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 1/8/26 4:50 PM, Sascha Hauer wrote:
> Fix the linker script to generate three distinct PT_LOAD segments with
> correct permissions instead of combining .rodata with .data.
> 
> Before this fix, the linker auto-generated only two PT_LOAD segments:
> 1. Text segment (PF_R|PF_X)
> 2. Data segment (PF_R|PF_W) - containing .rodata, .data, .bss, etc.
> 
> This caused .rodata to be mapped with write permissions when
> riscv_mmu_setup_from_elf() or riscv_pmp_setup_from_elf() set up memory
> permissions based on ELF segments, defeating the W^X protection.

There is no riscv_pmp_setup_from_elf in this series.

> 
> With explicit PHDRS directives, we now generate three segments:
> 1. text segment (PF_R|PF_X): .text and related code sections
> 2. rodata segment (PF_R): .rodata and related read-only sections
> 3. data segment (PF_R|PF_W): .data, .bss, and related sections
> 
> This ensures riscv_mmu_setup_from_elf() and riscv_pmp_setup_from_elf()
> correctly map .rodata as read-only instead of read-write.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/riscv/lib/barebox.lds.S | 38 +++++++++++++++++++++++++-------------
>  1 file changed, 25 insertions(+), 13 deletions(-)
> 
> diff --git a/arch/riscv/lib/barebox.lds.S b/arch/riscv/lib/barebox.lds.S
> index 03b3a967193cfee1c67b96632cf972a553e8bec4..77f854e73e2013ca332a0a94fd1deaa2b9978a1d 100644
> --- a/arch/riscv/lib/barebox.lds.S
> +++ b/arch/riscv/lib/barebox.lds.S
> @@ -16,14 +16,23 @@
>  OUTPUT_ARCH(BAREBOX_OUTPUT_ARCH)
>  ENTRY(start)
>  OUTPUT_FORMAT(BAREBOX_OUTPUT_FORMAT)
> +
> +PHDRS
> +{
> +	text PT_LOAD FLAGS(5);     /* PF_R | PF_X */
> +	rodata PT_LOAD FLAGS(4);   /* PF_R */
> +	data PT_LOAD FLAGS(6);     /* PF_R | PF_W */
> +	dynamic PT_DYNAMIC FLAGS(4); /* PF_R */

Move before data.

> +	.dynamic : { *(.dynamic) } :data :dynamic

Move to rodata and replace :data with :rodata.

Cheers,
Ahmad

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



