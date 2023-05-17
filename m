Delivery-date: Wed, 17 May 2023 14:57:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzGiU-004J9S-QA
	for lore@lore.pengutronix.de; Wed, 17 May 2023 14:57:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzGiS-0001Fr-Ft
	for lore@pengutronix.de; Wed, 17 May 2023 14:57:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dwbg3yWsDZkaEzNZrzSAzSVrcEIDTDufre00EZXDR7M=; b=1R93Zlg0eWVeyTzCa44WNpDCRq
	pMxRMWPnqpszo7GT4ap4yguk+j/k8iBEBKlXQ6p5ayghHkbl+tp7OC14aai5LP3nD61BeHeL0JdnT
	CAMVLy0WSdolu+PMnPcTXTyiEECDO0htqlGe0oW3/O1A/DBIiZ5f47kzlnIsgQP5zpn6OL8ZVXX0I
	sfPRMXyVzGoObRA+v2A52YHUXuCBHonuRlNFTAb+9M0VmEPrC33yJNZ8UYHJiREK2zTzdYagoFNeT
	mpugZL/0Ub4fib1X3jsACemrjU0y8Qe0RcVAPqUptrGJGmIK3g8B9mkhx+y3wNOU58WbQxnsUSv4s
	OEO09mKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzGhO-009s4g-1I;
	Wed, 17 May 2023 12:56:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzGhL-009s4C-1L
	for barebox@lists.infradead.org;
	Wed, 17 May 2023 12:56:08 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pzGhI-000150-Vi; Wed, 17 May 2023 14:56:06 +0200
Message-ID: <b5c63421-8500-07d2-09a6-ba3ebfe1b96e@pengutronix.de>
Date: Wed, 17 May 2023 14:55:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20230517090340.3954615-1-s.hauer@pengutronix.de>
 <20230517090340.3954615-8-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230517090340.3954615-8-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230517_055607_454549_B85A802C 
X-CRM114-Status: GOOD (  21.32  )
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
Subject: Re: [PATCH v2 07/34] ARM: define stack base consistently
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 17.05.23 11:03, Sascha Hauer wrote:
> The different arm_mem_* functions have the pattern that they take
> the region above it and substract the size of the current region. follow
> the pattern for getting the stack base as well. While at it move
> arm_mem_stack_top() lower in the file so that we have all functions
> following said pattern below each other.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/arm/include/asm/barebox-arm.h | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
> index 139ecce06d..8d8c102081 100644
> --- a/arch/arm/include/asm/barebox-arm.h
> +++ b/arch/arm/include/asm/barebox-arm.h
> @@ -86,11 +86,9 @@ static inline const void *arm_mem_scratch_get(void)
>  	return (const void *)arm_mem_scratch(arm_mem_endmem_get());
>  }
>  
> -#define arm_mem_stack_top(endmem) ((endmem) - SZ_64K)
> -
>  static inline unsigned long arm_mem_stack(unsigned long endmem)
>  {
> -	return arm_mem_stack_top(endmem) - STACK_SIZE;
> +	return arm_mem_scratch(endmem) - STACK_SIZE;
>  }
>  
>  static inline unsigned long arm_mem_ttb(unsigned long endmem)
> @@ -122,6 +120,11 @@ static inline unsigned long arm_mem_ramoops(unsigned long endmem)
>  	return endmem;
>  }
>  
> +static inline unsigned long arm_mem_stack_top(unsigned long endmem)
> +{
> +	return arm_mem_stack(endmem) + STACK_SIZE;
> +}
> +
>  static inline unsigned long arm_mem_barebox_image(unsigned long membase,
>  						  unsigned long endmem,
>  						  unsigned long size)

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



