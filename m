Delivery-date: Wed, 14 Jan 2026 13:05:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfzcs-001Ds1-12
	for lore@lore.pengutronix.de;
	Wed, 14 Jan 2026 13:05:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfzcr-0000e5-5o
	for lore@pengutronix.de; Wed, 14 Jan 2026 13:05:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zvYMYPH0RnXYjNN58xJtSrHCfgiluQKtdHRmM0NkYrM=; b=Xh41fL/s5jbriRw3z4vxzesNWI
	y5eajrYfJACaQ54BB21Px+KMngGgX9pQIMZn/erWGVlcHPKW+nG21Odk523TZCNFv0iLclJPcZ9t0
	e0Tu4T1yDXfJM8U+9hxM2yIqtRqjLFPq0/HnT4pYxyODjJAeOEpS1b4Bvx2qoPB0+JbETolmOl0k1
	8+tGfZvi6V1L66C3rTaD7B3g9hTi/KcdWQBFKOtnwdFtoEWEFNHV9UwXw9MtfX1hjheySkY7zvs6n
	1DilqeQhp45cv/UTl99WcNBigwDjHJ6+yqHVtESJhMXgxPOm1fVuqjsBZfbIUhger8XDhxS3648AD
	S2EB2lmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfzcH-000000095C7-229N;
	Wed, 14 Jan 2026 12:04:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfzcE-000000095Ap-3KM3
	for barebox@lists.infradead.org;
	Wed, 14 Jan 2026 12:04:48 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vfzcD-0000QC-8H; Wed, 14 Jan 2026 13:04:45 +0100
Message-ID: <e4fad2fe-3378-4c22-8afc-97d89b7330b7@pengutronix.de>
Date: Wed, 14 Jan 2026 13:04:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marco Felsch <m.felsch@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
 <20251110-v2025-09-0-topic-optee-of-handling-v1-5-8f0625ac5471@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251110-v2025-09-0-topic-optee-of-handling-v1-5-8f0625ac5471@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_040447_498492_DFA46D48 
X-CRM114-Status: GOOD (  20.68  )
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
Subject: Re: [PATCH 05/23] ARM: i.MX8M: cosmetic cleanup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 11/10/25 9:34 PM, Marco Felsch wrote:
> Rename the local imx8m_atf_start_bl31() to imx8m_tfa_start_bl31() since
> the official naming is Trusted-Firmware A (TF-A) and not ARM Trusted
> Firmware which was the former name.
> 
> While on it rename the parameters to make it clear what firmware
> component is passed and align the function documentation with the
> reality.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

I split out this patch in a series that I just sent.

Cheers,
Ahmad

> ---
>  arch/arm/mach-imx/atf.c | 27 +++++++++++++--------------
>  1 file changed, 13 insertions(+), 14 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/atf.c b/arch/arm/mach-imx/atf.c
> index 42ab9e9a23e433c50a1df1739d0163049174e6a6..dd861f1ad87c98c8baffa2986aeef40eacedc88c 100644
> --- a/arch/arm/mach-imx/atf.c
> +++ b/arch/arm/mach-imx/atf.c
> @@ -19,11 +19,11 @@
>  #include <mach/imx/xload.h>
>  
>  /**
> - * imx8m_atf_load_bl31 - Load ATF BL31 blob and transfer control to it
> + * imx8m_tfa_start_bl31 - Load TF-A BL31 blob and transfer control to it
>   *
> - * @fw:		Pointer to the BL31 blob
> - * @fw_size:	Size of the BL31 blob
> - * @atf_dest:	Place where the BL31 is copied to and executed
> + * @tfa:	Pointer to the BL31 blob
> + * @tfa_size:	Size of the BL31 blob
> + * @tfa_dest:	Place where the BL31 is copied to and executed
>   *
>   * This function:
>   *
> @@ -37,12 +37,12 @@
>   *     3. Transfers control to BL31
>   */
>  
> -static __noreturn void imx8m_atf_start_bl31(const void *fw, size_t fw_size, void *atf_dest)
> +static __noreturn void imx8m_tfa_start_bl31(const void *tfa_bin, size_t tfa_size, void *tfa_dest)
>  {
> -	void __noreturn (*bl31)(void) = atf_dest;
> +	void __noreturn (*bl31)(void) = tfa_dest;
>  	int ret;
>  
> -	BUG_ON(fw_size > MX8M_ATF_BL31_SIZE_LIMIT);
> +	BUG_ON(tfa_size > MX8M_ATF_BL31_SIZE_LIMIT);
>  
>  	if (IS_ENABLED(CONFIG_FSL_CAAM_RNG_PBL_INIT)) {
>  		ret = imx_early_caam_init(MX8M_CAAM_BASE_ADDR);
> @@ -52,10 +52,10 @@ static __noreturn void imx8m_atf_start_bl31(const void *fw, size_t fw_size, void
>  			pr_debug("CAAM early init successful\n");
>  	}
>  
> -	memcpy(bl31, fw, fw_size);
> +	memcpy(bl31, tfa_bin, tfa_size);
>  
>  	asm volatile("msr sp_el2, %0" : :
> -		     "r" (atf_dest - 16) :
> +		     "r" (tfa_dest - 16) :
>  		     "cc");
>  	bl31();
>  	__builtin_unreachable();
> @@ -176,7 +176,7 @@ __noreturn void __imx8mm_load_and_start_image_via_tfa(void *fdt, void *bl33)
>  		get_builtin_firmware(imx8mm_bl31_bin, &bl31, &bl31_size);
>  	}
>  
> -	imx8m_atf_start_bl31(bl31, bl31_size, (void *)MX8MM_ATF_BL31_BASE_ADDR);
> +	imx8m_tfa_start_bl31(bl31, bl31_size, (void *)MX8MM_ATF_BL31_BASE_ADDR);
>  }
>  
>  void imx8mp_load_bl33(void *bl33)
> @@ -250,10 +250,9 @@ __noreturn void __imx8mp_load_and_start_image_via_tfa(void *fdt, void *bl33)
>  		get_builtin_firmware(imx8mp_bl31_bin, &bl31, &bl31_size);
>  	}
>  
> -	imx8m_atf_start_bl31(bl31, bl31_size, (void *)MX8MP_ATF_BL31_BASE_ADDR);
> +	imx8m_tfa_start_bl31(bl31, bl31_size, (void *)MX8MP_ATF_BL31_BASE_ADDR);
>  }
>  
> -
>  void imx8mn_load_bl33(void *bl33)
>  {
>  	enum bootsource src;
> @@ -325,7 +324,7 @@ __noreturn void __imx8mn_load_and_start_image_via_tfa(void *fdt, void *bl33)
>  		get_builtin_firmware(imx8mn_bl31_bin, &bl31, &bl31_size);
>  	}
>  
> -	imx8m_atf_start_bl31(bl31, bl31_size, (void *)MX8MN_ATF_BL31_BASE_ADDR);
> +	imx8m_tfa_start_bl31(bl31, bl31_size, (void *)MX8MN_ATF_BL31_BASE_ADDR);
>  }
>  
>  void imx8mq_load_bl33(void *bl33)
> @@ -393,7 +392,7 @@ __noreturn void __imx8mq_load_and_start_image_via_tfa(void *fdt, void *bl33)
>  		get_builtin_firmware(imx8mq_bl31_bin, &bl31, &bl31_size);
>  	}
>  
> -	imx8m_atf_start_bl31(bl31, bl31_size, (void *)MX8MQ_ATF_BL31_BASE_ADDR);
> +	imx8m_tfa_start_bl31(bl31, bl31_size, (void *)MX8MQ_ATF_BL31_BASE_ADDR);
>  }
>  
>  void __noreturn imx93_load_and_start_image_via_tfa(void)
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



