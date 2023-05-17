Delivery-date: Wed, 17 May 2023 15:37:25 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzHLK-004LHZ-DI
	for lore@lore.pengutronix.de; Wed, 17 May 2023 15:37:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzHLH-00086n-VN
	for lore@pengutronix.de; Wed, 17 May 2023 15:37:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=64BuF7J1vpBOrjEwW3U9mgPQVn3WkpTx5Wkh2rBsUq0=; b=Io1jy1bgPzT9v9pqGNxpT/QTuL
	r86KQqnBeVQSVhx0mLoe9a+dDgVyMYy/88u6Bsd6O/qa/CxnXukQIpqYhzz2km6kMm6viLHrmKeyE
	w/LLNoq+Oar8CWFVS8lVhiD1F3i7OvZJU/NbaEZQIlPJKlPYme759VD/5BOSF5+UxjibAIkCTqXxh
	1n+OHMgfjxoipWO3qh6RWuwbzRY8JUPK8GAKkQua4BgDB/9Xd1av28jHoAE2CRv+GkTcP4ijFsp/G
	0SxL7hHGpVQ8yq8fCBLIbU4YDmznAhyE7l7skz+q40naJjHaBpOrcoCc1wPWNzqOG4QNkJLS52xWZ
	nLHq220g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzHKF-00A0UN-1O;
	Wed, 17 May 2023 13:36:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzHKB-00A0TN-2X
	for barebox@lists.infradead.org;
	Wed, 17 May 2023 13:36:17 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pzHK9-0007wP-TU; Wed, 17 May 2023 15:36:14 +0200
Message-ID: <44931338-b10f-6fa3-745c-cea3c755d63a@pengutronix.de>
Date: Wed, 17 May 2023 15:36:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20230517090340.3954615-1-s.hauer@pengutronix.de>
 <20230517090340.3954615-27-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230517090340.3954615-27-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230517_063615_826258_0C352434 
X-CRM114-Status: GOOD (  29.07  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 26/34] ARM: mmu32: Assume MMU is on
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 17.05.23 11:03, Sascha Hauer wrote:
> As we now always enable the MMU during early initialization we can
> safely assume that the MMU is already enabled in __mmu_init() and
> drop the code path which enables the MMU.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/cpu/mmu_32.c | 47 +++++++++----------------------------------
>  1 file changed, 10 insertions(+), 37 deletions(-)
> 
> diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
> index bef4a01670..7cd732580e 100644
> --- a/arch/arm/cpu/mmu_32.c
> +++ b/arch/arm/cpu/mmu_32.c
> @@ -24,12 +24,6 @@
>  #define PTRS_PER_PTE		(PGDIR_SIZE / PAGE_SIZE)
>  #define ARCH_MAP_WRITECOMBINE	((unsigned)-1)
>  
> -/*
> - * We have a 4GiB address space split into 1MiB sections, with each
> - * section header taking 4 bytes
> - */
> -#define ARM_TTB_SIZE	(SZ_4G / SZ_1M * sizeof(u32))
> -
>  static uint32_t *ttb;
>  
>  /*
> @@ -457,38 +451,19 @@ void __mmu_init(bool mmu_on)
>  		pte_flags_uncached = PTE_FLAGS_UNCACHED_V4;
>  	}
>  
> -	if (mmu_on) {
> +	/* Clear unpredictable bits [13:0] */
> +	ttb = (uint32_t *)(get_ttbr() & ~0x3fff);
> +
> +	if (!request_sdram_region("ttb", (unsigned long)ttb, SZ_16K))
>  		/*
> -		 * Early MMU code has already enabled the MMU. We assume a
> -		 * flat 1:1 section mapping in this case.
> +		 * This can mean that:
> +		 * - the early MMU code has put the ttb into a place
> +		 *   which we don't have inside our available memory
> +		 * - Somebody else has occupied the ttb region which means
> +		 *   the ttb will get corrupted.
>  		 */
> -		/* Clear unpredictable bits [13:0] */
> -		ttb = (uint32_t *)(get_ttbr() & ~0x3fff);
> -
> -		if (!request_sdram_region("ttb", (unsigned long)ttb, SZ_16K))
> -			/*
> -			 * This can mean that:
> -			 * - the early MMU code has put the ttb into a place
> -			 *   which we don't have inside our available memory
> -			 * - Somebody else has occupied the ttb region which means
> -			 *   the ttb will get corrupted.
> -			 */
> -			pr_crit("Critical Error: Can't request SDRAM region for ttb at %p\n",
> +		pr_crit("Critical Error: Can't request SDRAM region for ttb at %p\n",
>  					ttb);
> -	} else {
> -		ttb = xmemalign(ARM_TTB_SIZE, ARM_TTB_SIZE);
> -
> -		set_ttbr(ttb);
> -
> -		/* For the XN bit to take effect, we can't be using DOMAIN_MANAGER. */
> -		if (cpu_architecture() >= CPU_ARCH_ARMv7)
> -			set_domain(DOMAIN_CLIENT);
> -		else
> -			set_domain(DOMAIN_MANAGER);
> -
> -		create_flat_mapping(ttb);
> -		__mmu_cache_flush();
> -	}
>  
>  	pr_debug("ttb: 0x%p\n", ttb);
>  
> @@ -499,8 +474,6 @@ void __mmu_init(bool mmu_on)
>  				PMD_SECT_DEF_CACHED);
>  		__mmu_cache_flush();
>  	}
> -
> -	__mmu_cache_on();

I guess it's ok to drop this, but some assurance in the commit message
would be nice.

>  }
>  
>  /*

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



