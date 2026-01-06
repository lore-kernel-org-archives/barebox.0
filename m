Delivery-date: Tue, 06 Jan 2026 14:08:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd6n3-001tjh-0t
	for lore@lore.pengutronix.de;
	Tue, 06 Jan 2026 14:08:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd6n2-0004hR-L9
	for lore@pengutronix.de; Tue, 06 Jan 2026 14:08:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RWzM7Juiyptl5f/RpQafeKCc7xh21XGBTFKxnbMZ2+o=; b=nkLYJs3wb2w3rjFOVNOb+as27n
	Jcj+AwJYnWsIQNH09EdV2GFov3G+5VauHaInfONPnlEnXYXeFElnHwH2aVf0o9nI4Ls0RZxWvo85D
	vngIej2BJxFDwdgvF7Gv08yIEQU/Fj0PbUOFfgfzTNiWrk6eDAf/UZLXCHpYZArHLm7xKIqz2k7dS
	nMz6YzuY1fJN8bEP7tDo9hgUvBM2HbTqf89ZT1Jtp8EDxB0nLdcpmVnMCeOI+keYZzQSHCbNRHOgl
	WW/jkaZDTla3gLPdB6nbciyHrx7MphcsEbGB5Xo65SeyioJJqNFW1UCY4jgCT0isnhY1ZeylXvHjr
	8R4S2lmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd6mY-0000000D3LO-1ZWD;
	Tue, 06 Jan 2026 13:07:30 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd6mX-0000000D3LI-1921
	for barebox@bombadil.infradead.org;
	Tue, 06 Jan 2026 13:07:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=RWzM7Juiyptl5f/RpQafeKCc7xh21XGBTFKxnbMZ2+o=; b=pTcx6rqc96uR2H+ZwEqduk9nsx
	dxYn7zG4g8iWXHsJBQZ9F4WAnnu6v6rREm3pkX2q6/UnUcJbAfFKUflsEafGHMrXFiWYUoyH2rb6t
	gZ3VfSIHR5BN5+6wLJIl2LwISrDeTcOfBGhO5Xt7zu6ojlfx6guIsMrjHkaHU2tMK1VgzS5kdCHvp
	f4zj62jtdmqhs/VoYtaNuT9GfI0jYoqeisyFe/y791EhXoB7JR9F8dqJ5g5xt1+sqT/R9D73qjp6v
	sl1V1zm9Tektae5k4SSverPJZKNmnDfQw+TtcbDOdjM7IEn7R2YwavUL7Ep245nHzoYhxRusqwfuU
	d4nfw1DQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd6mU-00000009jj9-0hkA
	for barebox@lists.infradead.org;
	Tue, 06 Jan 2026 13:07:28 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vd6mT-0004bw-17; Tue, 06 Jan 2026 14:07:25 +0100
Message-ID: <28e51b87-b6b0-4b21-b223-f7764102db91@pengutronix.de>
Date: Tue, 6 Jan 2026 14:07:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>
References: <20260106-pbl-load-elf-v2-0-487bc760f045@pengutronix.de>
 <20260106-pbl-load-elf-v2-4-487bc760f045@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260106-pbl-load-elf-v2-4-487bc760f045@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_130726_385012_1884AE19 
X-CRM114-Status: GOOD (  17.61  )
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
Subject: Re: [PATCH v2 04/21] ARM: implement elf_apply_relocations() for ELF
 relocation support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello,

On 1/6/26 1:53 PM, Sascha Hauer wrote:
> Implement architecture-specific ELF relocation handlers for ARM32 and ARM64.
> The implementation reuses the existing relocate_image().
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> Co-Authored-By: Claude Sonnet 4.5 <noreply@anthropic.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

But a bit more verbose than needed:

> --- a/arch/arm/lib32/reloc.c
> +++ b/arch/arm/lib32/reloc.c
> @@ -6,6 +6,7 @@
>  #include <barebox.h>
>  #include <elf.h>
>  #include <debug_ll.h>
> +#include <linux/printk.h>

Unused?

> +/*
> + * Apply ARM32 ELF relocations
> + */
> +int elf_apply_relocations(struct elf_image *elf, const void *dyn_seg)
> +{
> +	Elf32_Rel *rel;
> +	void *rel_ptr;
> +	u64 relsz;
> +	phys_addr_t base = (phys_addr_t)elf->reloc_offset;
> +	int ret;
> +
> +	ret = elf_parse_dynamic_section_rel(elf, dyn_seg, &rel_ptr, &relsz);
> +	if (ret)
> +		return ret;
> +
> +	rel = (Elf32_Rel *)rel_ptr;

Nitpick: rel can be dropped and rel_ptr used instead.

> +
> +	relocate_image(base, rel, (void *)rel + relsz, NULL, NULL);
> +
> +	return 0;
> +}
> diff --git a/arch/arm/lib64/reloc.c b/arch/arm/lib64/reloc.c
> index 2288f9e2e336887c5edfbf6b080f487394754113..50bd0b88fae0a59a6a86a84c1df0743ac158e06c 100644
> --- a/arch/arm/lib64/reloc.c
> +++ b/arch/arm/lib64/reloc.c
> @@ -7,8 +7,7 @@
>  #include <elf.h>
>  #include <debug_ll.h>
>  #include <asm/reloc.h>
> -
> -#define R_AARCH64_RELATIVE 1027
> +#include <linux/printk.h>

Unused?

> +/*
> + * Apply ARM64 ELF relocations
> + */
> +int elf_apply_relocations(struct elf_image *elf, const void *dyn_seg)
> +{
> +	Elf64_Rela *rela;
> +	void *rel_ptr;
> +	u64 relasz;
> +	phys_addr_t base = (phys_addr_t)elf->reloc_offset;
> +	int ret;
> +
> +	ret = elf_parse_dynamic_section_rela(elf, dyn_seg, &rel_ptr, &relasz);
> +	if (ret)
> +		return ret;
> +
> +	rela = (Elf64_Rela *)rel_ptr;

Same thing.

> +
> +	relocate_image(base, rela, (void *)rela + relasz, NULL, NULL);
> +
> +	return 0;
> +}

Cheers,
Ahmad

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



