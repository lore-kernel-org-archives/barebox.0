Delivery-date: Tue, 06 Jan 2026 14:15:44 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd6uW-001u8b-10
	for lore@lore.pengutronix.de;
	Tue, 06 Jan 2026 14:15:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd6uV-0006Ey-Mm
	for lore@pengutronix.de; Tue, 06 Jan 2026 14:15:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qOSd+cdu1UhNZJIR5ump/r6iarp+eOcwP+JFy8qkfgg=; b=PVA+zehwdmuoOfXmhFS/oUwV2Q
	qME9F3yGcyKM8At6LcRtNsS/rhR3pUMMiq/ed6INDdMIJPmZgvd96WCjzh9rI1N1OLZ56hzjsI0k2
	H0vsgb7Jpbl/6jthehOGFJIqNMIj3uw8TFp4DCMXzS2LHc0tSx1dKZndm9AqIAfjsqm8lWH9pErse
	o7v2/Qai6qsVI/BEUWzCz9HysV6E/Krg/oLoiM0KpxfFtGTD/kJBzBy1pum6t93GvJpYhpmADIWrE
	90q6x3941QSbXh/OecHOx/Jy0Bt6QbGCINM/eQ+W2EJHrLD+r/mWlQ1rmuNbl4Z/saTmNtd9OIHY1
	3PmizIyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd6u6-0000000D4kD-18F7;
	Tue, 06 Jan 2026 13:15:18 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd6u5-0000000D4jq-0E44
	for barebox@bombadil.infradead.org;
	Tue, 06 Jan 2026 13:15:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=qOSd+cdu1UhNZJIR5ump/r6iarp+eOcwP+JFy8qkfgg=; b=H0Sin7rd8TKoa1PvEvxPbZlPUY
	wq3H/VtMUQ8+++PDlfvyXIKyBs2FVIs4P0l/160QzTpXQhH/XJiZxxaS97kMRrmW1V6m7ViZikJCt
	CsfhiRtR1uYUQELeaLVwY3095lQA7TQQjLsE1u3av3jbXJVa8NWLBR2GcOJV8MrnkFYfTNy1uVZEl
	LWPyb2tY2XE2G8Fr7rRJlii0i8VKJDUPUHxbjesTO3GgO59R7tdEm9aUlPu3YoX6mluTLXfeIJj86
	t4PbjzTJydOc1tvpfRXmq0hGIN4W3lyeNW4B0g7JFiBUqzesFbsQYgukXdWg8ZGyoMkyDn9cthHVb
	GW6sL7Yw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd6u1-00000009kOv-3wMG
	for barebox@lists.infradead.org;
	Tue, 06 Jan 2026 13:15:15 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vd6u1-00069M-Gz; Tue, 06 Jan 2026 14:15:13 +0100
Message-ID: <72e8fd6b-1a78-4763-a909-ca0cb3a42e11@pengutronix.de>
Date: Tue, 6 Jan 2026 14:15:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>
References: <20260106-pbl-load-elf-v2-0-487bc760f045@pengutronix.de>
 <20260106-pbl-load-elf-v2-12-487bc760f045@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260106-pbl-load-elf-v2-12-487bc760f045@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_131514_147341_7629BA20 
X-CRM114-Status: GOOD (  17.92  )
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
Subject: Re: [PATCH v2 12/21] mmu: introduce pbl_remap_range()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 1/6/26 1:53 PM, Sascha Hauer wrote:
> Add PBL-specific memory remapping function that always uses page-wise
> mapping (ARCH_MAP_FLAG_PAGEWISE) for fine-grained permissions on
> adjacent ELF segments with different protection requirements.
> 
> Wraps arch-specific __arch_remap_range() for ARMv7 (4KB pages) and
> ARMv8 (page tables with BBM). Needed for ELF segment permission setup.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

The verdict was that we shouldn't need PAGEWISE here and in that case,
we could just use normal remap_range function, right?

Thanks,
Ahmad

> ---
>  arch/arm/cpu/mmu_32.c | 7 +++++++
>  arch/arm/cpu/mmu_64.c | 8 ++++++++
>  include/mmu.h         | 3 +++
>  3 files changed, 18 insertions(+)
> 
> diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
> index 71ead41c3d274548c9427c1ce9833de309114c4d..54371e3e5973c9fe98cadef63499105134e09539 100644
> --- a/arch/arm/cpu/mmu_32.c
> +++ b/arch/arm/cpu/mmu_32.c
> @@ -435,6 +435,13 @@ static void early_remap_range(u32 addr, size_t size, maptype_t map_type)
>  	__arch_remap_range((void *)addr, addr, size, map_type);
>  }
>  
> +void pbl_remap_range(void *virt_addr, phys_addr_t phys_addr, size_t size,
> +		     maptype_t map_type)
> +{
> +	__arch_remap_range(virt_addr, phys_addr, size,
> +			   map_type | ARCH_MAP_FLAG_PAGEWISE);
> +}
> +
>  static bool pte_is_cacheable(uint32_t pte, int level)
>  {
>  	return	(level == 2 && (pte & PTE_CACHEABLE)) ||
> diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
> index ddf1373ec0a801baad043146187d7f4c3eac6a2a..d4d6d1a849ba9b8666f4dcb4bd80247a70bdce1a 100644
> --- a/arch/arm/cpu/mmu_64.c
> +++ b/arch/arm/cpu/mmu_64.c
> @@ -282,6 +282,14 @@ static void early_remap_range(uint64_t addr, size_t size, maptype_t map_type)
>  	__arch_remap_range(addr, addr, size, map_type, false);
>  }
>  
> +void pbl_remap_range(void *virt_addr, phys_addr_t phys_addr, size_t size,
> +		     maptype_t map_type)
> +{
> +	__arch_remap_range((uint64_t)virt_addr, phys_addr,
> +			   (uint64_t)size, map_type | ARCH_MAP_FLAG_PAGEWISE,
> +			   true);
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



