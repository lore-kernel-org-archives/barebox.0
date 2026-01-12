Delivery-date: Mon, 12 Jan 2026 14:10:59 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfHhD-000X3C-23
	for lore@lore.pengutronix.de;
	Mon, 12 Jan 2026 14:10:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfHhC-0004x2-JE
	for lore@pengutronix.de; Mon, 12 Jan 2026 14:10:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6GzWPPboaODZngQ4BBVT9lkbqrNxabD9Rg5VVLoMZKc=; b=pK34Z0H/p0/qRcf+KGrqRkJDIk
	QfheSlMhwZcsrQnWQYtCXuSC6uWex7uzVBKpclRDRM/Eli2NCyeqrD4oYsGKIZItauhckp1VnvotE
	Z1jbW9mRO3Di6yJ7WZhgNfdLjKwps9jH8dI8Qcs9KJOXR38KNnu3fVUUv+6AJb/AbDClcbNEP6M6Q
	Uh4jkgv6eqAOJvzklA0b4waQbj5guXppZMTJsOHe16blwwbqYNg6aJw3DDntYCp5IiUjpQ5KrXmkL
	mc5QVxn7ugVS2mi2aYJkfM7cAetbwxlr1H8sbJoabKXhS/t7PuLuWdzPxhRkZzaCCERFN3t8kCpDK
	ebnHnZKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfHgm-00000005O0E-3bpw;
	Mon, 12 Jan 2026 13:10:32 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfHgl-00000005O08-0jl5
	for barebox@bombadil.infradead.org;
	Mon, 12 Jan 2026 13:10:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=6GzWPPboaODZngQ4BBVT9lkbqrNxabD9Rg5VVLoMZKc=; b=QSJDwGxjEZAP1mD5jK9oeKKwUi
	ohoRDOH8im2XlrsL72WSwcehew22vZldvBWZMhDSCFRRHmxlqa+4b5vWIAe9NBskNPYfPL22wG/c4
	7sMbnMmNT6Ezroulb19/b4IpdGzm05oZgVehfj8ERnY1CWOpLw4OlHNwOQVuUMbHurNe/bMW2ybp3
	EXcdkKpOiYwMFStbpBkE+BIs5ZaIU6Tk4XGhh8nTytG60WxfEeFdeWAzXGAIpNB5/x1lAuwwN8k/o
	BMnvlasqm/WZjzbseP18Q5Pp2QaUYqp+VYs+eA5jmJyffKLtRsrcc578HGQnYAqdr/zSh/Jt5b2xr
	H1IGHLnQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfHgi-00000000k69-0Nif
	for barebox@lists.infradead.org;
	Mon, 12 Jan 2026 13:10:30 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vfHge-0004nh-SM; Mon, 12 Jan 2026 14:10:24 +0100
Message-ID: <59372636-64f2-45ed-82e1-3ad374efda7b@pengutronix.de>
Date: Mon, 12 Jan 2026 14:10:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>
References: <20260108-pbl-load-elf-v3-0-e28c931fc179@pengutronix.de>
 <20260108-pbl-load-elf-v3-13-e28c931fc179@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260108-pbl-load-elf-v3-13-e28c931fc179@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260112_131028_236504_080F55D1 
X-CRM114-Status: GOOD (  18.10  )
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
Subject: Re: [PATCH v3 13/23] mmu: introduce pbl_remap_range()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 1/8/26 4:50 PM, Sascha Hauer wrote:
> Add PBL-specific memory remapping function that always uses page-wise
> mapping (ARCH_MAP_FLAG_PAGEWISE) for fine-grained permissions on
> adjacent ELF segments with different protection requirements.

This commit message doesn't reflect reality any longer.

> Wraps arch-specific __arch_remap_range() for ARMv7 (4KB pages) and
> ARMv8 (page tables with BBM). Needed for ELF segment permission setup.

I think it should be possible to drop this commit completely and use
remap_range from <mmu.h> directly in PBL.

Thanks,
Ahmad

> 
> Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/cpu/mmu_32.c | 6 ++++++
>  arch/arm/cpu/mmu_64.c | 7 +++++++
>  include/mmu.h         | 3 +++
>  3 files changed, 16 insertions(+)
> 
> diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
> index 71ead41c3d274548c9427c1ce9833de309114c4d..981202b789befbd04e212f48490aebb41dfb6b98 100644
> --- a/arch/arm/cpu/mmu_32.c
> +++ b/arch/arm/cpu/mmu_32.c
> @@ -435,6 +435,12 @@ static void early_remap_range(u32 addr, size_t size, maptype_t map_type)
>  	__arch_remap_range((void *)addr, addr, size, map_type);
>  }
>  
> +void pbl_remap_range(void *virt_addr, phys_addr_t phys_addr, size_t size,
> +		     maptype_t map_type)
> +{
> +	__arch_remap_range(virt_addr, phys_addr, size, map_type);
> +}
> +
>  static bool pte_is_cacheable(uint32_t pte, int level)
>  {
>  	return	(level == 2 && (pte & PTE_CACHEABLE)) ||
> diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
> index ddf1373ec0a801baad043146187d7f4c3eac6a2a..5ea0d39ad4c7fb219b38cf957335615d0d6e96c5 100644
> --- a/arch/arm/cpu/mmu_64.c
> +++ b/arch/arm/cpu/mmu_64.c
> @@ -282,6 +282,13 @@ static void early_remap_range(uint64_t addr, size_t size, maptype_t map_type)
>  	__arch_remap_range(addr, addr, size, map_type, false);
>  }
>  
> +void pbl_remap_range(void *virt_addr, phys_addr_t phys_addr, size_t size,
> +		     maptype_t map_type)
> +{
> +	__arch_remap_range((uint64_t)virt_addr, phys_addr,
> +			   (uint64_t)size, map_type, true);
> +}
> +
>  int arch_remap_range(void *virt_addr, phys_addr_t phys_addr, size_t size, maptype_t map_type)
>  {
>  	map_type = arm_mmu_maybe_skip_permissions(map_type);
> diff --git a/include/mmu.h b/include/mmu.h
> index 9f582f25e1de14d47cfe2eff64f9cce81c4e492d..32d9a7aca3b9a61d542bf3e21e27f1ac51f43ee2 100644
> --- a/include/mmu.h
> +++ b/include/mmu.h
> @@ -65,6 +65,9 @@ static inline bool arch_can_remap(void)
>  }
>  #endif
>  
> +void pbl_remap_range(void *virt_addr, phys_addr_t phys_addr, size_t size,
> +		     maptype_t map_type);
> +
>  static inline int remap_range(void *start, size_t size, maptype_t map_type)
>  {
>  	return arch_remap_range(start, virt_to_phys(start), size, map_type);
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



