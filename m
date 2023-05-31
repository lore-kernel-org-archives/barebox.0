Delivery-date: Wed, 31 May 2023 12:11:31 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4Inl-0047Fi-6u
	for lore@lore.pengutronix.de; Wed, 31 May 2023 12:11:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4Ini-0000ve-RN
	for lore@pengutronix.de; Wed, 31 May 2023 12:11:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CLr6sxMqr141c3TmzodowgU8IQvymc9pGK+XlcrOoLk=; b=Uq2unynkwpKuWUcLJw2+1QKbcu
	RDU5Ddjv+6V/Nnq7kYzJMlSCvIPh3N/Hn+bCKFrJIjJSg80qA1VpOHYCFRh6ANFI7O/fMyqN/sCfA
	2KpOrxWojIhcnO4ph/6hDYcPeIelur8BZxZrXw9zBbwoNX3Dr9Dr6pqy5Ue439NuzlG46Mhi5MH9n
	OX+nOUtBcV1VjxOqtrgDUQNfeGmSozd8YFDkM80Q3iVq2vDdgPLC2W85r0+SljAEFwQrNpSLrZlMo
	UCalaPn9QBR/aVJ0+JQbO6G4f5dzusfqEb2Qet/drrfi+WLmLz1XSagHo3KKFsS05zE4QIqhZJ/vf
	98U0EjlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4Imh-00GxdE-0N;
	Wed, 31 May 2023 10:10:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4Imd-00GxcL-1x
	for barebox@lists.infradead.org;
	Wed, 31 May 2023 10:10:25 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1q4Imc-0000if-Bq; Wed, 31 May 2023 12:10:22 +0200
Message-ID: <7936b29e-2a89-570e-bb90-43f215999438@pengutronix.de>
Date: Wed, 31 May 2023 12:10:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20230531100128.819492-1-s.hauer@pengutronix.de>
 <20230531100128.819492-2-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230531100128.819492-2-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230531_031023_649226_4BD0F1E5 
X-CRM114-Status: GOOD (  28.13  )
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
Subject: Re: [PATCH 2/2] ARM: mmu_32: fix setting up zero page when it is in
 SDRAM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Sascha,

On 31.05.23 12:01, Sascha Hauer wrote:
> We used to skip setting the zero page to faulting when SDRAM starts
> at 0x0. As bootm code now explicitly sets the zero page accessible
> before copying ATAGs there this should no longer be necessary, so
> unconditionally set the zero page to faulting during MMU startup.
> This also moves the zero page setup after the point the SDRAM has
> been mapped cachable, because otherwise the zero page setup would
> be overwritten.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/cpu/mmu_32.c | 21 ++-------------------
>  1 file changed, 2 insertions(+), 19 deletions(-)
> 
> diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
> index c4e5a3bb0a..faebba42d0 100644
> --- a/arch/arm/cpu/mmu_32.c
> +++ b/arch/arm/cpu/mmu_32.c
> @@ -459,23 +459,6 @@ static int set_vector_table(unsigned long adr)
>  	return -EINVAL;
>  }
>  
> -static void create_zero_page(void)
> -{
> -	struct resource *zero_sdram;
> -
> -	zero_sdram = request_sdram_region("zero page", 0x0, PAGE_SIZE);

I think this should remain to avoid some $platform overwriting ATAGS
or w/e with the kernel image. I know this is a discrepancy to ARM64,
but let's play it safe?

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
> -}
> -
>  /*
>   * Map vectors and zero page
>   */
> @@ -487,7 +470,6 @@ static void vectors_init(void)
>  	 */
>  	if (!set_vector_table((unsigned long)__exceptions_start)) {
>  		arm_fixup_vectors();
> -		create_zero_page();
>  		return;
>  	}
>  
> @@ -495,7 +477,6 @@ static void vectors_init(void)
>  	 * Next try high vectors at 0xffff0000.
>  	 */
>  	if (!set_vector_table(ARM_HIGH_VECTORS)) {
> -		create_zero_page();
>  		create_vector_table(ARM_HIGH_VECTORS);
>  		return;
>  	}
> @@ -552,6 +533,8 @@ void __mmu_init(bool mmu_on)
>  
>  		remap_range((void *)pos, bank->start + bank->size - pos, MAP_CACHED);
>  	}
> +
> +	zero_page_faulting();
>  }
>  
>  /*

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



