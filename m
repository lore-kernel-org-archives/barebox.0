Delivery-date: Wed, 17 May 2023 15:49:26 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzHWx-004Lxl-Uj
	for lore@lore.pengutronix.de; Wed, 17 May 2023 15:49:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzHWv-00017N-6r
	for lore@pengutronix.de; Wed, 17 May 2023 15:49:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=73HrNHfYd5XDXO1ciFJmRfgm2CM2GwBKwAqoxtwatP8=; b=KFrEYZBidbc7cXU48xG00Qzvts
	ZaevNhhljGxmV6czujItJDCuvaNqdnFwpCcVS4TxNyH6vkefmba6lKKCoktoj4Z7h7zsWqlG1wCeO
	26x/AaGt+EGTaDzHfSw0O12Vjt/7l+iMQ2MV/lbCq/mNLIHC0T5JYYqUhvC4d27j9QDY5HSV4biGZ
	Mk+xvRVgxmCgOxR2X/CmMvxWwOY11vKxvTEgta1hwL+ehrrBUHnjPjfnrQYr5acqtRr93gFBh5PAM
	5DnvIK15TbBTZqZhU+VvXayvHejS+O382BDaiLQOHg1IkHlc8tOIE1N+MEbZJlyiPBf04s/5LQXLB
	m6DucVBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzHVx-00A202-2t;
	Wed, 17 May 2023 13:48:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzHVv-00A1yN-0l
	for barebox@lists.infradead.org;
	Wed, 17 May 2023 13:48:24 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pzHVt-00010W-TS; Wed, 17 May 2023 15:48:22 +0200
Message-ID: <a224319c-2caa-ed8b-1bd1-e08298eb8877@pengutronix.de>
Date: Wed, 17 May 2023 15:48:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20230517090340.3954615-1-s.hauer@pengutronix.de>
 <20230517090340.3954615-31-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230517090340.3954615-31-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230517_064823_270707_104046FB 
X-CRM114-Status: GOOD (  22.14  )
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
Subject: Re: [PATCH v2 30/34] ARM: mmu32: move functions into c file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 17.05.23 11:03, Sascha Hauer wrote:
> Move create_flat_mapping() and create_sections() into the c file
> rather than having them as static inline functions in the header file.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/arm/cpu/mmu_32.c | 19 +++++++++++++++++++
>  arch/arm/cpu/mmu_32.h | 20 --------------------
>  2 files changed, 19 insertions(+), 20 deletions(-)
> 
> diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
> index 829139574c..0762bd55a3 100644
> --- a/arch/arm/cpu/mmu_32.c
> +++ b/arch/arm/cpu/mmu_32.c
> @@ -318,6 +318,25 @@ int arch_remap_range(void *start, size_t size, unsigned map_type)
>  	return 0;
>  }
>  
> +static void create_sections(uint32_t *ttb, unsigned long first,
> +			    unsigned long last, unsigned int flags)
> +{
> +	unsigned long ttb_start = pgd_index(first);
> +	unsigned long ttb_end = pgd_index(last) + 1;
> +	unsigned int i, addr = first;
> +
> +	for (i = ttb_start; i < ttb_end; i++) {
> +		ttb[i] = addr | flags;
> +		addr += PGDIR_SIZE;
> +	}
> +}
> +
> +static void create_flat_mapping(uint32_t *ttb)
> +{
> +	/* create a flat mapping using 1MiB sections */
> +	create_sections(ttb, 0, 0xffffffff, attrs_uncached_mem());
> +}
> +
>  void *map_io_sections(unsigned long phys, void *_start, size_t size)
>  {
>  	unsigned long start = (unsigned long)_start, sec;
> diff --git a/arch/arm/cpu/mmu_32.h b/arch/arm/cpu/mmu_32.h
> index 1499b70dd6..607d9e8608 100644
> --- a/arch/arm/cpu/mmu_32.h
> +++ b/arch/arm/cpu/mmu_32.h
> @@ -56,20 +56,6 @@ static inline void set_domain(unsigned val)
>  	asm volatile ("mcr  p15,0,%0,c3,c0,0" : : "r"(val) /*:*/);
>  }
>  
> -static inline void
> -create_sections(uint32_t *ttb, unsigned long first,
> -		unsigned long last, unsigned int flags)
> -{
> -	unsigned long ttb_start = pgd_index(first);
> -	unsigned long ttb_end = pgd_index(last) + 1;
> -	unsigned int i, addr = first;
> -
> -	for (i = ttb_start; i < ttb_end; i++) {
> -		ttb[i] = addr | flags;
> -		addr += PGDIR_SIZE;
> -	}
> -}
> -
>  #define PMD_SECT_DEF_UNCACHED (PMD_SECT_AP_WRITE | PMD_SECT_AP_READ | PMD_TYPE_SECT)
>  #define PMD_SECT_DEF_CACHED (PMD_SECT_WB | PMD_SECT_DEF_UNCACHED)
>  
> @@ -83,10 +69,4 @@ static inline unsigned long attrs_uncached_mem(void)
>  	return flags;
>  }
>  
> -static inline void create_flat_mapping(uint32_t *ttb)
> -{
> -	/* create a flat mapping using 1MiB sections */
> -	create_sections(ttb, 0, 0xffffffff, attrs_uncached_mem());
> -}
> -
>  #endif /* __ARM_MMU_H */

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



