Delivery-date: Wed, 17 May 2023 14:54:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzGff-004J5O-2I
	for lore@lore.pengutronix.de; Wed, 17 May 2023 14:54:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzGfc-0000dC-Lk
	for lore@pengutronix.de; Wed, 17 May 2023 14:54:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+YdztTlQ5njGNYoN5YNoDdE8YUGEZMrGiaL39Npyh1Y=; b=qTCbh25a53Agc0FawEpKlhBWrI
	VszaTiGET3M6z3PCzaHHHcChEVIa5FmzvGItcf0K83I6bTvkCpJiM98JMeyeF4gWWedzxwuQ219AN
	qci6l7rywTgqCyfA7FFgkOhoAOogpUlxVBWgDOIrcDWK2FDgBlS+3XLbqw2NNrU3LjCdqFG6mkVYl
	HHMFUjMU8tuBVj1J6zindVEp8oa9s8cPq0cQwOJGKY04ObJi2iKtYJOy7i+i3/hE59DCyBnBtty+i
	rLFCKUt92CIm0Z0Rq/ovQ+zGVAzhVsEz+i6h1Wxnv/7XaVjLPtc52nzD2rD+e4hR7uMFV1411VGpQ
	HTqbkH0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzGeW-009rgD-2c;
	Wed, 17 May 2023 12:53:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzGeT-009rfW-0K
	for barebox@lists.infradead.org;
	Wed, 17 May 2023 12:53:10 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pzGeR-0000Wq-D9; Wed, 17 May 2023 14:53:07 +0200
Message-ID: <05b1e15e-52b9-324b-3541-ae6f09ef4d32@pengutronix.de>
Date: Wed, 17 May 2023 14:53:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20230517090340.3954615-1-s.hauer@pengutronix.de>
 <20230517090340.3954615-6-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230517090340.3954615-6-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230517_055309_137534_2C395C5B 
X-CRM114-Status: GOOD (  21.38  )
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
Subject: Re: [PATCH v2 05/34] ARM: add arm_mem_optee()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 17.05.23 11:03, Sascha Hauer wrote:
> We have several functions/macros named arm_mem_* returning the different
> addresses for early memory locations. Add one for OP-Tee as well.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/include/asm/barebox-arm.h | 5 +++++
>  arch/arm/mach-imx/atf.c            | 6 +++---
>  2 files changed, 8 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
> index 6e6606d005..8ab1e90e94 100644
> --- a/arch/arm/include/asm/barebox-arm.h
> +++ b/arch/arm/include/asm/barebox-arm.h
> @@ -71,6 +71,11 @@ static inline void arm_fixup_vectors(void)
>  
>  void *barebox_arm_boot_dtb(void);
>  
> +static inline unsigned long arm_mem_optee(unsigned long endmem)
> +{
> +	return endmem - OPTEE_SIZE;
> +}

I'd prefer to return OPTEE_SIZE ? endmem - OPTEE_SIZE : 0;
That way we are a bit more robust against future broken code.

With that adressed:

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> +
>  #define arm_mem_scratch(endmem) ((endmem) - OPTEE_SIZE - SZ_32K)
>  
>  static inline const void *arm_mem_scratch_get(void)
> diff --git a/arch/arm/mach-imx/atf.c b/arch/arm/mach-imx/atf.c
> index c5e6817aad..659798b95f 100644
> --- a/arch/arm/mach-imx/atf.c
> +++ b/arch/arm/mach-imx/atf.c
> @@ -141,7 +141,7 @@ __noreturn void imx8mm_load_and_start_image_via_tfa(void)
>  	imx8mm_load_bl33(bl33);
>  
>  	if (IS_ENABLED(CONFIG_FIRMWARE_IMX8MM_OPTEE))
> -		imx8m_load_and_start_optee_via_tfa(imx8mm, endmem - OPTEE_SIZE, bl33);
> +		imx8m_load_and_start_optee_via_tfa(imx8mm, arm_mem_optee(endmem), bl33);
>  	else
>  		imx8mm_load_and_start_tfa(imx8mm_bl31_bin);
>  }
> @@ -189,7 +189,7 @@ __noreturn void imx8mp_load_and_start_image_via_tfa(void)
>  	imx8mp_load_bl33(bl33);
>  
>  	if (IS_ENABLED(CONFIG_FIRMWARE_IMX8MP_OPTEE))
> -		imx8m_load_and_start_optee_via_tfa(imx8mp, endmem - OPTEE_SIZE, bl33);
> +		imx8m_load_and_start_optee_via_tfa(imx8mp, arm_mem_optee(endmem), bl33);
>  	else
>  		imx8mp_load_and_start_tfa(imx8mp_bl31_bin);
>  }
> @@ -238,7 +238,7 @@ __noreturn void imx8mn_load_and_start_image_via_tfa(void)
>  	imx8mn_load_bl33(bl33);
>  
>  	if (IS_ENABLED(CONFIG_FIRMWARE_IMX8MN_OPTEE))
> -		imx8m_load_and_start_optee_via_tfa(imx8mn, endmem - OPTEE_SIZE, bl33);
> +		imx8m_load_and_start_optee_via_tfa(imx8mn, arm_mem_optee(endmem), bl33);
>  	else
>  		imx8mn_load_and_start_tfa(imx8mn_bl31_bin);
>  }

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



