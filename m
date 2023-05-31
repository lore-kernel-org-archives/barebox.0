Delivery-date: Wed, 31 May 2023 13:59:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4KUf-004Cvz-7y
	for lore@lore.pengutronix.de; Wed, 31 May 2023 13:59:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4KUc-0007HW-O6
	for lore@pengutronix.de; Wed, 31 May 2023 13:59:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pMIdKfqmH9YQ/XAb4i6GzclSLQSodgLNfzl7EnIVLWA=; b=pVjhpmp4oFvY0dAewNvjs/3wxt
	f8ZDXfBzPtRjWaKpMXa16IXjzq4iB+DUxXHr85pYVOiwi1yhrw/iO1+Ulu3JCReWKtdOoixY0S0SF
	7m/0aSz1G8dnXSXjEiQY2IeCdE/UwwkDCAc6B3GdJAebUmsu0XeGbWi6MO/fq82sL4IDiOoix8HDi
	wm/L/uuGuaQM483ub7y3MoW1CRKaj4atvQMPgPhOclqem7Cq+CycC+rv1hCmQOCn9guC15FR8og+7
	le5KTOidkzeU16pDVSBQsBoO1ElDNzxfdubYXr+UnNIkyYFK4/99cPGZBp0882/LtxNkiSa47P4Ke
	wyZPsylg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4KTP-00HJ2x-2B;
	Wed, 31 May 2023 11:58:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4KTM-00HJ2G-0d
	for barebox@lists.infradead.org;
	Wed, 31 May 2023 11:58:37 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1q4KTK-00077V-94; Wed, 31 May 2023 13:58:34 +0200
Message-ID: <298d6a42-e074-c861-6c7f-117ea75ddeb7@pengutronix.de>
Date: Wed, 31 May 2023 13:58:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
References: <20230531103515.845714-1-s.hauer@pengutronix.de>
 <20230531103515.845714-2-s.hauer@pengutronix.de>
 <4dfbd23f-9dca-e2c6-2067-b9decbdc7977@pengutronix.de>
 <20230531112114.GA18491@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230531112114.GA18491@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230531_045836_238282_DE2FD096 
X-CRM114-Status: GOOD (  37.48  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 2/2] ARM: mmu_32: fix setting up zero page when it is
 in SDRAM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Sascha,

On 31.05.23 13:21, Sascha Hauer wrote:
> On Wed, May 31, 2023 at 12:45:17PM +0200, Ahmad Fatoum wrote:
>> On 31.05.23 12:35, Sascha Hauer wrote:
>>> We used to skip setting the zero page to faulting when SDRAM starts
>>> at 0x0. As bootm code now explicitly sets the zero page accessible
>>> before copying ATAGs there this should no longer be necessary, so
>>> unconditionally set the zero page to faulting during MMU startup.
>>> This also moves the zero page setup after the point the SDRAM has
>>> been mapped cachable, because otherwise the zero page setup would
>>> be overwritten.
>>>
>>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>>> ---
>>>  arch/arm/cpu/mmu_32.c | 26 +++++++-------------------
>>>  1 file changed, 7 insertions(+), 19 deletions(-)
>>>
>>> diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
>>> index c4e5a3bb0a..fdbc0293a3 100644
>>> --- a/arch/arm/cpu/mmu_32.c
>>> +++ b/arch/arm/cpu/mmu_32.c
>>> @@ -459,23 +459,6 @@ static int set_vector_table(unsigned long adr)
>>>  	return -EINVAL;
>>>  }
>>>  
>>> -static void create_zero_page(void)
>>> -{
>>> -	struct resource *zero_sdram;
>>> -
>>> -	zero_sdram = request_sdram_region("zero page", 0x0, PAGE_SIZE);
>>> -	if (zero_sdram) {
>>> -		/*
>>> -		 * Here we would need to set the second level page table
>>> -		 * entry to faulting. This is not yet implemented.
>>> -		 */
>>> -		pr_debug("zero page is in SDRAM area, currently not supported\n");
>>> -	} else {
>>> -		zero_page_faulting();
>>> -		pr_debug("Created zero page\n");
>>> -	}
>>> -}
>>> -
>>>  /*
>>>   * Map vectors and zero page
>>>   */
>>> @@ -487,7 +470,6 @@ static void vectors_init(void)
>>>  	 */
>>>  	if (!set_vector_table((unsigned long)__exceptions_start)) {
>>>  		arm_fixup_vectors();
>>> -		create_zero_page();
>>>  		return;
>>>  	}
>>>  
>>> @@ -495,7 +477,6 @@ static void vectors_init(void)
>>>  	 * Next try high vectors at 0xffff0000.
>>>  	 */
>>>  	if (!set_vector_table(ARM_HIGH_VECTORS)) {
>>> -		create_zero_page();
>>>  		create_vector_table(ARM_HIGH_VECTORS);
>>>  		return;
>>>  	}
>>> @@ -552,6 +533,13 @@ void __mmu_init(bool mmu_on)
>>>  
>>>  		remap_range((void *)pos, bank->start + bank->size - pos, MAP_CACHED);
>>>  	}
>>> +
>>> +	/*
>>> +	 * In case the zero page is in SDRAM request it to prevent others
>>> +	 * from using it
>>> +	 */
>>> +	request_sdram_region("zero page", 0x0, PAGE_SIZE);
>>> +	zero_page_faulting();
>>
>> I think this would break the case of having low vectors (at address 0).
>> We have vector_table requested if that's the case, so we need to check:
>>
>>   if (!zero_page_in_sdram() || !zero_page_already_sdram_requested())
>> 	zero_page_faulting();
> 
> You are right. How about this one?
> 
> --------------------------8<------------------------------
> 
> 
> From b6e5c92682467496bd9c57918996f1feffda2dd6 Mon Sep 17 00:00:00 2001
> From: Sascha Hauer <s.hauer@pengutronix.de>
> Date: Wed, 31 May 2023 11:58:51 +0200
> Subject: [PATCH] ARM: mmu_32: fix setting up zero page when it is in SDRAM
> 
> We used to skip setting the zero page to faulting when SDRAM starts at
> 0x0. As bootm code now explicitly sets the zero page accessible before
> copying ATAGs there this should no longer be necessary, so
> unconditionally set the zero page to faulting during MMU startup.  This
> also moves the zero page and vector table setup after the point the
> SDRAM has been mapped cachable, because otherwise the zero page and
> possibly the vector table mapping would be overwritten.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/cpu/mmu_32.c | 23 +++++++++--------------
>  1 file changed, 9 insertions(+), 14 deletions(-)
> 
> diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
> index c4e5a3bb0a..14775768a3 100644
> --- a/arch/arm/cpu/mmu_32.c
> +++ b/arch/arm/cpu/mmu_32.c
> @@ -461,19 +461,14 @@ static int set_vector_table(unsigned long adr)
>  
>  static void create_zero_page(void)

Is this commit incomplete? Vectors should be set up unconditionally and
create_zero_page should be called after it.

>  {
> -	struct resource *zero_sdram;
> +	/*
> +	 * In case the zero page is in SDRAM request it to prevent others
> +	 * from using it
> +	 */
> +	request_sdram_region("zero page", 0x0, PAGE_SIZE);
>  
> -	zero_sdram = request_sdram_region("zero page", 0x0, PAGE_SIZE);
> -	if (zero_sdram) {
> -		/*
> -		 * Here we would need to set the second level page table
> -		 * entry to faulting. This is not yet implemented.
> -		 */
> -		pr_debug("zero page is in SDRAM area, currently not supported\n");
> -	} else {
> -		zero_page_faulting();
> -		pr_debug("Created zero page\n");
> -	}
> +	zero_page_faulting();
> +	pr_debug("Created zero page\n");
>  }
>  
>  /*
> @@ -530,8 +525,6 @@ void __mmu_init(bool mmu_on)
>  
>  	pr_debug("ttb: 0x%p\n", ttb);
>  
> -	vectors_init();
> -
>  	/*
>  	 * Early mmu init will have mapped everything but the initial memory area
>  	 * (excluding final OPTEE_SIZE bytes) uncached. We have now discovered
> @@ -552,6 +545,8 @@ void __mmu_init(bool mmu_on)
>  
>  		remap_range((void *)pos, bank->start + bank->size - pos, MAP_CACHED);
>  	}
> +
> +	vectors_init();
>  }
>  
>  /*

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



