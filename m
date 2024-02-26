Delivery-date: Mon, 26 Feb 2024 17:11:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1redZE-008IXN-1m
	for lore@lore.pengutronix.de;
	Mon, 26 Feb 2024 17:11:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1redZD-0004aM-Pq
	for lore@pengutronix.de; Mon, 26 Feb 2024 17:11:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Jn09tN+nm/QsJJStzUdhC10/js8r/HyUwkMM+uFtFSk=; b=uvRoKaqaGj9dw3Vprel358+MoG
	/ujfS3i5fWRQs2dY4Z40N1juvCtFWcL1tBoFSj4Po9lXnYDJdXLgOgxKFiFkAEgTPsaaxUFrI5ZWi
	fQWC30PGvOybNWjSFIgwnP8+PIy686R11Mwjc8wX9e3XSWV9ZbccQl99wk6sBM+a40190BgJ8BAq2
	kJHfXzUdqROdfjx3jqvvTF5dfzDm+vy1MT2ZJUubj/XDxfNdi/UL7O/jJXqpHuVfq4XEiIzvmacvb
	miy1CzY6TEVp1u/UXCwcTni7M+a5dvx2Gzg0C4OcNYzSOfXugEVejeskXuCDET/qeig5xTULbettb
	eyIgCEIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1redYa-00000001aGi-01Zy;
	Mon, 26 Feb 2024 16:10:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1redYV-00000001aEH-0EZu
	for barebox@lists.infradead.org;
	Mon, 26 Feb 2024 16:10:16 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1redYT-0004PN-Nj; Mon, 26 Feb 2024 17:10:13 +0100
Message-ID: <9ed90074-47da-48ec-877e-77412f58425b@pengutronix.de>
Date: Mon, 26 Feb 2024 17:10:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Stefan Kerkmann <s.kerkmann@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20240226-v2024-02-0-topic-imx8m-n-p-tzac-v1-0-2df2430da984@pengutronix.de>
 <20240226-v2024-02-0-topic-imx8m-n-p-tzac-v1-3-2df2430da984@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240226-v2024-02-0-topic-imx8m-n-p-tzac-v1-3-2df2430da984@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240226_081015_176962_5EDE5507 
X-CRM114-Status: GOOD (  23.64  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 3/3] arm: mach-imx: tzasc: convert to cpu_is_mx8xyz macros
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 26.02.24 15:40, Stefan Kerkmann wrote:
> Instead of passing in configuration parameters at runtime we can utilize
> the `cpu_is_mx8xyz` macro family to determine which bits should be set.
> 
> As the tzasc driver is imx specific, all functions are prefixed with
> `imx8m_` as well.
> 
> Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/arm/mach-imx/atf.c   |  8 ++++----
>  arch/arm/mach-imx/imx8m.c |  2 +-
>  arch/arm/mach-imx/tzasc.c | 25 +++++--------------------
>  include/mach/imx/tzasc.h  |  8 ++------
>  4 files changed, 12 insertions(+), 31 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/atf.c b/arch/arm/mach-imx/atf.c
> index e8060ebd95..9cbc38ef11 100644
> --- a/arch/arm/mach-imx/atf.c
> +++ b/arch/arm/mach-imx/atf.c
> @@ -158,7 +158,7 @@ __noreturn void __imx8mm_load_and_start_image_via_tfa(void *bl33)
>  		size_t bl32_size;
>  		void *bl32_image;
>  
> -		imx8mm_tzc380_init();
> +		imx8m_tzc380_init();
>  		get_builtin_firmware_ext(imx8mm_bl32_bin,
>  				bl33, &bl32_image,
>  				&bl32_size);
> @@ -229,7 +229,7 @@ __noreturn void __imx8mp_load_and_start_image_via_tfa(void *bl33)
>  		size_t bl32_size;
>  		void *bl32_image;
>  
> -		imx8mp_tzc380_init();
> +		imx8m_tzc380_init();
>  		get_builtin_firmware_ext(imx8mp_bl32_bin,
>  				bl33, &bl32_image,
>  				&bl32_size);
> @@ -301,7 +301,7 @@ __noreturn void __imx8mn_load_and_start_image_via_tfa(void *bl33)
>  		size_t bl32_size;
>  		void *bl32_image;
>  
> -		imx8mn_tzc380_init();
> +		imx8m_tzc380_init();
>  		get_builtin_firmware_ext(imx8mn_bl32_bin,
>  				bl33, &bl32_image,
>  				&bl32_size);
> @@ -366,7 +366,7 @@ __noreturn void __imx8mq_load_and_start_image_via_tfa(void *bl33)
>  		size_t bl32_size;
>  		void *bl32_image;
>  
> -		imx8mq_tzc380_init();
> +		imx8m_tzc380_init();
>  		get_builtin_firmware_ext(imx8mq_bl32_bin,
>  				bl33, &bl32_image,
>  				&bl32_size);
> diff --git a/arch/arm/mach-imx/imx8m.c b/arch/arm/mach-imx/imx8m.c
> index ed0fe38a3b..ab9e8edb5b 100644
> --- a/arch/arm/mach-imx/imx8m.c
> +++ b/arch/arm/mach-imx/imx8m.c
> @@ -68,7 +68,7 @@ static int imx8m_init(const char *cputypestr)
>  	imx_set_reset_reason(src + IMX7_SRC_SRSR, imx7_reset_reasons);
>  	pr_info("%s unique ID: %llx\n", cputypestr, imx8m_uid());
>  
> -	if (IS_ENABLED(CONFIG_PBL_OPTEE) && tzc380_is_enabled()) {
> +	if (IS_ENABLED(CONFIG_PBL_OPTEE) && imx8m_tzc380_is_enabled()) {
>  		static struct of_optee_fixup_data optee_fixup_data = {
>  			.shm_size = OPTEE_SHM_SIZE,
>  			.method = "smc",
> diff --git a/arch/arm/mach-imx/tzasc.c b/arch/arm/mach-imx/tzasc.c
> index 1f8d7426c1..4cb4d7c5cf 100644
> --- a/arch/arm/mach-imx/tzasc.c
> +++ b/arch/arm/mach-imx/tzasc.c
> @@ -1,5 +1,6 @@
>  // SPDX-License-Identifier: GPL-2.0-only
>  
> +#include <mach/imx/generic.h>
>  #include <mach/imx/tzasc.h>
>  #include <linux/bitops.h>
>  #include <mach/imx/imx8m-regs.h>
> @@ -13,7 +14,7 @@
>  #define MX8M_TZASC_REGION_ATTRIBUTES_0		(MX8M_TZASC_BASE_ADDR + 0x108)
>  #define MX8M_TZASC_REGION_ATTRIBUTES_0_SP	GENMASK(31, 28)
>  
> -static void enable_tzc380(bool bypass_id_swap, bool bypass_id_swap_lock)
> +void imx8m_tzc380_init(void)
>  {
>  	u32 __iomem *gpr = IOMEM(MX8M_IOMUXC_GPR_BASE_ADDR);
>  
> @@ -25,14 +26,14 @@ static void enable_tzc380(bool bypass_id_swap, bool bypass_id_swap_lock)
>  	 * According to TRM, TZASC_ID_SWAP_BYPASS should be set in
>  	 * order to avoid AXI Bus errors when GPU is in use
>  	 */
> -	if (bypass_id_swap)
> +	if (cpu_is_mx8mm() || cpu_is_mx8mn() || cpu_is_mx8mp())
>  		setbits_le32(&gpr[10], GPR_TZASC_ID_SWAP_BYPASS);
>  
>  	/*
>  	 * imx8mn and imx8mp implements the lock bit for
>  	 * TZASC_ID_SWAP_BYPASS, enable it to lock settings
>  	 */
> -	if (bypass_id_swap_lock)
> +	if (cpu_is_mx8mn() || cpu_is_mx8mp())
>  		setbits_le32(&gpr[10], GPR_TZASC_ID_SWAP_BYPASS_LOCK);
>  
>  	/*
> @@ -44,23 +45,7 @@ static void enable_tzc380(bool bypass_id_swap, bool bypass_id_swap_lock)
>  		   MX8M_TZASC_REGION_ATTRIBUTES_0);
>  }
>  
> -void imx8mq_tzc380_init(void)
> -{
> -	enable_tzc380(false, false);
> -}
> -
> -void imx8mm_tzc380_init(void)
> -{
> -	enable_tzc380(true, false);
> -}
> -
> -void imx8mn_tzc380_init(void) __alias(imx8mp_tzc380_init);
> -void imx8mp_tzc380_init(void)
> -{
> -	enable_tzc380(true, true);
> -}
> -
> -bool tzc380_is_enabled(void)
> +bool imx8m_tzc380_is_enabled(void)
>  {
>  	u32 __iomem *gpr = IOMEM(MX8M_IOMUXC_GPR_BASE_ADDR);
>  
> diff --git a/include/mach/imx/tzasc.h b/include/mach/imx/tzasc.h
> index 724ba50ead..51c86f168e 100644
> --- a/include/mach/imx/tzasc.h
> +++ b/include/mach/imx/tzasc.h
> @@ -6,11 +6,7 @@
>  #include <linux/types.h>
>  #include <asm/system.h>
>  
> -void imx8mq_tzc380_init(void);
> -void imx8mm_tzc380_init(void);
> -void imx8mn_tzc380_init(void);
> -void imx8mp_tzc380_init(void);
> -
> -bool tzc380_is_enabled(void);
> +void imx8m_tzc380_init(void);
> +bool imx8m_tzc380_is_enabled(void);
>  
>  #endif
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



