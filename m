Delivery-date: Mon, 05 Jan 2026 13:15:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcjV0-001W7j-34
	for lore@lore.pengutronix.de;
	Mon, 05 Jan 2026 13:15:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcjV0-0004PF-BB
	for lore@pengutronix.de; Mon, 05 Jan 2026 13:15:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3bXg+Vuz6YUr9xAwRMpLp4V0hpBa0W7Ws+Pbxrwd/1w=; b=tHufpC7eE6j+5wI6Y24BVbRQZg
	cKV8KEtywdASc3jYzd2PcyHVH3/CXNmd3wdn1VSKsQg7+eyZ5yY2ufxjPaReVyNGu2kYVU5VceR7O
	Ng41xqXcU2z2OE1Gp9onfcVQRTp6y4R7KPZId1pkZWf/IXI835sTw+OOFfdNHQqPuU90JWJRtNqEr
	G6XAi+tJhzH5B4+zw2QJ0lEsfUp2vbbUPPifjC2EILVVIZErGT0pzaE6c6o2lktQjG/kOK5DZYFV9
	iGlx0VFrfz6WrsPLue2uOwG5GTewoxoTfXf6N0Q4sZtI3AJfZHvF0ua8zAe1u5hIis1al726pCvWH
	Lys69/FA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcjUb-0000000BGNX-1JXB;
	Mon, 05 Jan 2026 12:15:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcjUY-0000000BGN6-39zr
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 12:15:24 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vcjUX-0004Ip-51; Mon, 05 Jan 2026 13:15:21 +0100
Message-ID: <0a85c1df-8960-440b-b901-1c338db1f003@pengutronix.de>
Date: Mon, 5 Jan 2026 13:15:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>
References: <20260105-pbl-load-elf-v1-0-e97853f98232@pengutronix.de>
 <20260105-pbl-load-elf-v1-11-e97853f98232@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260105-pbl-load-elf-v1-11-e97853f98232@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_041522_800527_BD9C8D51 
X-CRM114-Status: GOOD (  17.04  )
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
Subject: Re: [PATCH 11/19] mmu: introduce pbl_remap_range()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 1/5/26 12:26 PM, Sascha Hauer wrote:
> Add PBL-specific memory remapping function that always uses page-wise
> mapping (ARCH_MAP_FLAG_PAGEWISE) for fine-grained permissions on
> adjacent ELF segments with different protection requirements.
> 
> Wraps arch-specific __arch_remap_range() for ARMv7 (4KB pages) and
> ARMv8 (page tables with BBM). Needed for ELF segment permission setup.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/arm/cpu/mmu_32.c | 7 +++++++
>  arch/arm/cpu/mmu_64.c | 8 ++++++++
>  include/mmu.h         | 3 +++
>  3 files changed, 18 insertions(+)
> 
> diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
> index 97c7107290ce95ddb21a322a5d0e74f3d324c528..86a55d165ba3cec5154c345a1a3a9cb959f0996f 100644
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
> index afb3d2d7efd0bc7ecde1177d1544f54d751b5dc1..63faaa46703697e527eae766392e7ea7ae186b3d 100644
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
> index 53603b7956c229b4c715c57b19d0398931eb2d6b..37df7b482e1d83e94e61997db6cf9834d8cf7f3c 100644
> --- a/include/mmu.h
> +++ b/include/mmu.h
> @@ -64,6 +64,9 @@ static inline bool arch_can_remap(void)
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



