Delivery-date: Wed, 17 May 2023 14:47:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzGZL-004IpU-Ae
	for lore@lore.pengutronix.de; Wed, 17 May 2023 14:47:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzGZI-0008Gi-JL
	for lore@pengutronix.de; Wed, 17 May 2023 14:47:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=i2lIFO0qIQj/0p35+iQy+4xrCptpKOs6NsOihoUWQTo=; b=2aXgEvZ7xVJ/wT/ypesXArpUFk
	A5F1nAlMiCi6Lvb/66LeFN5XL1upukNy/LvsXb9vnYlTmbYobvw3SxVBeCgaCtt9jkuwjSGzKjRLc
	IjTwde+l0P+BMGUikWShtDRcO0XUblf00gug1qoARfdvYGUfY2Po4KupDA1/MRi/Z1GsCwaAHI6ra
	z6pXMndOSC4LVY+tmCRlbgsTyJDVYRo35Vq9ezvOymal+BwM9ZbiNsKAzaXHRaK51oWvcaVLXtHGY
	xRX9yRr/yVRIEIdLI5R4Ap9CkqLGF6EJLZZVAUWH73S60iEdYXRsIrVYX7kQAD5skgjJwmCneB438
	TLO/gszQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzGYF-009qfX-0l;
	Wed, 17 May 2023 12:46:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzGYC-009qei-0W
	for barebox@lists.infradead.org;
	Wed, 17 May 2023 12:46:41 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pzGYA-00085A-SF; Wed, 17 May 2023 14:46:38 +0200
Message-ID: <fa391e72-c6cd-d022-66cb-e006839415bb@pengutronix.de>
Date: Wed, 17 May 2023 14:46:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20230517090340.3954615-1-s.hauer@pengutronix.de>
 <20230517090340.3954615-4-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230517090340.3954615-4-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230517_054640_199519_55606840 
X-CRM114-Status: GOOD (  20.22  )
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
Subject: Re: [PATCH v2 03/34] ARM: rename __arm_mem_scratch to arm_mem_scratch
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 17.05.23 11:03, Sascha Hauer wrote:
> There are different arm_mem_* macros/functions and only one of them
> has leading underscores. Remove them for consistency.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/arm/include/asm/barebox-arm.h | 4 ++--
>  arch/arm/mach-imx/atf.c            | 6 +++---
>  arch/arm/mach-imx/xload-common.c   | 2 +-
>  include/mach/rockchip/bootrom.h    | 2 +-
>  4 files changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
> index 3a0c3d7d40..f446044be6 100644
> --- a/arch/arm/include/asm/barebox-arm.h
> +++ b/arch/arm/include/asm/barebox-arm.h
> @@ -71,11 +71,11 @@ static inline void arm_fixup_vectors(void)
>  
>  void *barebox_arm_boot_dtb(void);
>  
> -#define __arm_mem_scratch(endmem) ((endmem) - SZ_32K)
> +#define arm_mem_scratch(endmem) ((endmem) - SZ_32K)
>  
>  static inline const void *arm_mem_scratch_get(void)
>  {
> -	return (const void *)__arm_mem_scratch(arm_mem_endmem_get());
> +	return (const void *)arm_mem_scratch(arm_mem_endmem_get());
>  }
>  
>  #define arm_mem_stack_top(endmem) ((endmem) - SZ_64K - OPTEE_SIZE)
> diff --git a/arch/arm/mach-imx/atf.c b/arch/arm/mach-imx/atf.c
> index 92820d9392..c5e6817aad 100644
> --- a/arch/arm/mach-imx/atf.c
> +++ b/arch/arm/mach-imx/atf.c
> @@ -137,7 +137,7 @@ __noreturn void imx8mm_load_and_start_image_via_tfa(void)
>  	void *endmem = (void *)MX8M_DDR_CSD1_BASE_ADDR +
>  		imx8m_barebox_earlymem_size(32);
>  
> -	imx8m_save_bootrom_log(__arm_mem_scratch(endmem));
> +	imx8m_save_bootrom_log(arm_mem_scratch(endmem));
>  	imx8mm_load_bl33(bl33);
>  
>  	if (IS_ENABLED(CONFIG_FIRMWARE_IMX8MM_OPTEE))
> @@ -185,7 +185,7 @@ __noreturn void imx8mp_load_and_start_image_via_tfa(void)
>  	void *endmem = (void *)MX8M_DDR_CSD1_BASE_ADDR +
>  		imx8m_barebox_earlymem_size(32);
>  
> -	imx8m_save_bootrom_log(__arm_mem_scratch(endmem));
> +	imx8m_save_bootrom_log(arm_mem_scratch(endmem));
>  	imx8mp_load_bl33(bl33);
>  
>  	if (IS_ENABLED(CONFIG_FIRMWARE_IMX8MP_OPTEE))
> @@ -234,7 +234,7 @@ __noreturn void imx8mn_load_and_start_image_via_tfa(void)
>  	void *endmem = (void *)MX8M_DDR_CSD1_BASE_ADDR +
>  		imx8m_barebox_earlymem_size(16);
>  
> -	imx8m_save_bootrom_log(__arm_mem_scratch(endmem));
> +	imx8m_save_bootrom_log(arm_mem_scratch(endmem));
>  	imx8mn_load_bl33(bl33);
>  
>  	if (IS_ENABLED(CONFIG_FIRMWARE_IMX8MN_OPTEE))
> diff --git a/arch/arm/mach-imx/xload-common.c b/arch/arm/mach-imx/xload-common.c
> index 0d3e6be1b1..03eb2ef109 100644
> --- a/arch/arm/mach-imx/xload-common.c
> +++ b/arch/arm/mach-imx/xload-common.c
> @@ -26,7 +26,7 @@ struct imx_scratch_space *__imx8m_scratch_space(int ddr_buswidth)
>  	ulong endmem = MX8M_DDR_CSD1_BASE_ADDR +
>  		imx8m_barebox_earlymem_size(ddr_buswidth);
>  
> -	return (void *)__arm_mem_scratch(endmem);
> +	return (void *)arm_mem_scratch(endmem);
>  }
>  
>  #define HDR_SIZE	512
> diff --git a/include/mach/rockchip/bootrom.h b/include/mach/rockchip/bootrom.h
> index 96eb147ae4..5b999fc606 100644
> --- a/include/mach/rockchip/bootrom.h
> +++ b/include/mach/rockchip/bootrom.h
> @@ -15,7 +15,7 @@ static inline void rockchip_store_bootrom_iram(ulong membase,
>                                                 ulong memsize,
>                                                 const void *iram)
>  {
> -	void *dst = (void *)__arm_mem_scratch(membase + memsize);
> +	void *dst = (void *)arm_mem_scratch(membase + memsize);
>  	memcpy(dst, iram, sizeof(struct rockchip_scratch_space));
>  }
>  

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



