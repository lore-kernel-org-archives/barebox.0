Delivery-date: Tue, 06 Jan 2026 15:06:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd7hK-001umo-1Y
	for lore@lore.pengutronix.de;
	Tue, 06 Jan 2026 15:06:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd7hJ-0003ni-Qn
	for lore@pengutronix.de; Tue, 06 Jan 2026 15:06:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7jGeH3RZKdKk5d6FazSn9fGcgrTD6Xv+ZjyI8wQDlGQ=; b=0IIQ6hGIfSYDnIMK51D76DLf86
	CQX8Ev6yppxbHYcj28dYmhQRH5JaZ624+UU4YDBGgiq4yRHLRZgYTjmibr77VMHgqJIGDaVUW53fD
	X2NY7LHh2uVYjHuN4zEKFBUFu9Cwf/whh3t7Qsj8zwdWFvVvQJgemgIJ2Lw2MhmVLXGTHQrVBIGpV
	a+s47l1lJS9l07BBs+Zm9tIXaB5aFrQZ7W1gOoCu9JxbUFtCbWOFcgeWtu1Ru3GhEoh/V1onaU18n
	4tyrdnIBTrSCGqtG+YzGcMu2/cAsCUr/8PA0t2znsTUo5Now3LpGCsHF7NlN5YxqyIuAJoX0PeDdJ
	EE35KwdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd7go-0000000DFRI-2bOk;
	Tue, 06 Jan 2026 14:05:38 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd7gl-0000000DFR2-3O3x
	for barebox@bombadil.infradead.org;
	Tue, 06 Jan 2026 14:05:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
	In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=7jGeH3RZKdKk5d6FazSn9fGcgrTD6Xv+ZjyI8wQDlGQ=; b=JYJMbqajffmdbritAkmTZO29qP
	KKmJAwMcUNRiuYfqGBSLHh53V0qwBc9YIV1eyEqYxUfnqTwdM5jxKffJ/MgHooUKstuTt9MgckxK7
	laqxahYUPs20QH3ZcAx4uxMtuJE/QYCY9CMKbIfk5NQVpMny7b1i3d/9x1D7ulEkbpGU9qsnDsMWG
	UKLE+97M2ENW29d1KsNCXb6J07V5Z9TPvj1/I035KNb9G8EGVKaPz88fSIDS5qwTU0PeCldZ74QoU
	RgZ2NxRr2I/IbSla+FJVCAsgUmC3fDkmhwQi+CedhIVESHg8n6636mfIFJ1mluSiaMef74ZgVxa2I
	QXgYvUdg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd7gi-0000000Bsmk-2ig7
	for barebox@lists.infradead.org;
	Tue, 06 Jan 2026 14:05:34 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vd7gi-0003ga-01; Tue, 06 Jan 2026 15:05:32 +0100
Message-ID: <9355cf08-14c5-43aa-a88a-b8d2dc123f3b@pengutronix.de>
Date: Tue, 6 Jan 2026 15:05:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>
References: <20260106-pbl-load-elf-v2-0-487bc760f045@pengutronix.de>
 <20260106-pbl-load-elf-v2-15-487bc760f045@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260106-pbl-load-elf-v2-15-487bc760f045@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_140532_739178_8DB65A1B 
X-CRM114-Status: GOOD (  14.29  )
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
Subject: Re: [PATCH v2 15/21] ARM: linker script: create separate PT_LOAD
 segments for text, rodata, and data
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 1/6/26 1:53 PM, Sascha Hauer wrote:
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
>  arch/arm/include/asm/barebox.lds.h |  2 +-
>  arch/arm/lib32/barebox.lds.S       | 34 ++++++++++++++++++++++------------
>  arch/arm/lib64/barebox.lds.S       | 29 +++++++++++++++++++----------
>  arch/riscv/lib/barebox.lds.S       |  1 +
>  4 files changed, 43 insertions(+), 23 deletions(-)
> 
> diff --git a/arch/arm/include/asm/barebox.lds.h b/arch/arm/include/asm/barebox.lds.h
> index 72aabe155b5c9e8b9159c7da6c6f0fa1f7b93375..7d1811645762a2ce1f58b7d86bed188a93fdb711 100644
> --- a/arch/arm/include/asm/barebox.lds.h
> +++ b/arch/arm/include/asm/barebox.lds.h
> @@ -16,7 +16,7 @@
>  
>  #define BAREBOX_RELOCATION_TABLE					\
>  	.rel_dyn_start : { *(.__rel_dyn_start) }			\
> -	.BAREBOX_RELOCATION_TYPE.dyn : { *(.BAREBOX_RELOCATION_TYPE*) }	\
> +	.BAREBOX_RELOCATION_TYPE.dyn : { *(.BAREBOX_RELOCATION_TYPE*) } \

Stray change?

>  	.rel_dyn_end : { *(.__rel_dyn_end) }				\
>  	.__dynsym_start :  { *(.__dynsym_start) }			\
>  	.dynsym : { *(.dynsym) }					\
> diff --git a/arch/arm/lib32/barebox.lds.S b/arch/arm/lib32/barebox.lds.S
> index 17e0970ba4989e5213ed38ea5ff87bdf5bfa2740..e84118ee2f43b07bd82fcd9936398847d0a3b42f 100644
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
> +	dynamic PT_DYNAMIC FLAGS(6); /* PF_R | PF_W */
> +}

Why not map dynamic R/O as well, so it's merged with rodata?


> diff --git a/arch/riscv/lib/barebox.lds.S b/arch/riscv/lib/barebox.lds.S
> index 03b3a967193cfee1c67b96632cf972a553e8bec4..38376befe9a82ead2152f8c7fc581eb5bb35fab4 100644
> --- a/arch/riscv/lib/barebox.lds.S
> +++ b/arch/riscv/lib/barebox.lds.S
> @@ -16,6 +16,7 @@
>  OUTPUT_ARCH(BAREBOX_OUTPUT_ARCH)
>  ENTRY(start)
>  OUTPUT_FORMAT(BAREBOX_OUTPUT_FORMAT)
> +

stray change.

Cheers,
Ahmad

>  SECTIONS
>  {
>  	. = 0x0;
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



