Delivery-date: Fri, 12 May 2023 19:41:45 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pxWm2-00FLWX-GE
	for lore@lore.pengutronix.de; Fri, 12 May 2023 19:41:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pxWm0-0005Si-DG
	for lore@pengutronix.de; Fri, 12 May 2023 19:41:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=g5rj3JXHLsQGGD3XV3KJEE/IAgvDGO/BKJ3rfW0Y9Gg=; b=PS/aZ52rJuZfBEWhb9GG38/gT0
	EkXdT+/3oLylAW1YaELYOD2oXZQ8lRuU0KkmfsOFaI3Yjzbd0JcYNob5cdIi2INGTgklVfLBk5+/v
	Tzk+VPilBayY4Ny35p3eXs0RJzTFVGjMnE0Ly7vaiHE9vwq92GhfsE2AHwK+M8bXsrxcbTLlGnhxx
	XR7N8WKdWJ3FZqHxGB9YpDjMHM0Oj+PlFbcfUE1kLesCdUPcxU7qPsEHA9PpglbMQl3asVi8hQyfU
	wRETfJXRqBr0E4JNng+ZiwBA0L2518330dM9wLYcGn6s+/Pa6dsZhpdmsy+R6EduXi7IADqFqyJm0
	7bm/ZveQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pxWkr-00CbdW-09;
	Fri, 12 May 2023 17:40:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxWko-00CbdB-0a
	for barebox@lists.infradead.org;
	Fri, 12 May 2023 17:40:31 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pxWkm-0005HG-UE; Fri, 12 May 2023 19:40:29 +0200
Message-ID: <0eda947b-1a0f-a017-7fc2-5298170b0ba4@pengutronix.de>
Date: Fri, 12 May 2023 19:40:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20230512111008.1120833-1-s.hauer@pengutronix.de>
 <20230512111008.1120833-9-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230512111008.1120833-9-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230512_104030_220328_29C51552 
X-CRM114-Status: GOOD (  17.07  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 08/27] ARM: mmu64: Use arch_remap_range where possible
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 12.05.23 13:09, Sascha Hauer wrote:
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

LGTM.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/arm/cpu/mmu_64.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
> index a22e0c81ab..0639d0f1ce 100644
> --- a/arch/arm/cpu/mmu_64.c
> +++ b/arch/arm/cpu/mmu_64.c
> @@ -174,12 +174,12 @@ static void mmu_enable(void)
>  
>  void zero_page_access(void)
>  {
> -	create_sections(0x0, 0x0, PAGE_SIZE, CACHED_MEM);
> +	arch_remap_range(0x0, PAGE_SIZE, MAP_CACHED);
>  }
>  
>  void zero_page_faulting(void)
>  {
> -	create_sections(0x0, 0x0, PAGE_SIZE, 0x0);
> +	arch_remap_range(0x0, PAGE_SIZE, MAP_FAULT);
>  }
>  
>  /*
> @@ -201,17 +201,17 @@ void __mmu_init(bool mmu_on)
>  	pr_debug("ttb: 0x%p\n", ttb);
>  
>  	/* create a flat mapping */
> -	create_sections(0, 0, 1UL << (BITS_PER_VA - 1), attrs_uncached_mem());
> +	arch_remap_range(0, 1UL << (BITS_PER_VA - 1), MAP_UNCACHED);
>  
>  	/* Map sdram cached. */
>  	for_each_memory_bank(bank) {
>  		struct resource *rsv;
>  
> -		create_sections(bank->start, bank->start, bank->size, CACHED_MEM);
> +		arch_remap_range((void *)bank->start, bank->size, MAP_CACHED);
>  
>  		for_each_reserved_region(bank, rsv) {
> -			create_sections(resource_first_page(rsv), resource_first_page(rsv),
> -					resource_count_pages(rsv), attrs_uncached_mem());
> +			arch_remap_range((void *)resource_first_page(rsv),
> +					 resource_count_pages(rsv), MAP_UNCACHED);
>  		}
>  	}
>  

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



