Delivery-date: Tue, 03 Feb 2026 11:25:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vnDb1-008MuU-0X
	for lore@lore.pengutronix.de;
	Tue, 03 Feb 2026 11:25:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vnDb0-00038V-0m
	for lore@pengutronix.de; Tue, 03 Feb 2026 11:25:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wUakEjZfrKF8qt/uG3zZ6yKeYJDNzQu58Dyl0GseQMI=; b=OOYGzreof+MCHXccwQX5beBHZy
	kBMV07wpwv8ttmGAw9TuuHOh1qv0bzgJEPrSvd2/ddWdq8YLBEOcWm8wdcpibHPZNo9khoJ9h7eVB
	QCjLtind7WDyhpVtZp2NLxn6yPPaUndRw35dpW8oxwti52B1PPApgeS2nJEvnXnm1OjyR2XMDba09
	jsB3/lfgg+oWocToOpNYOq1GyX5CEayN0RDYzicpgb2moYPOHYuY8JWvCtxRu42QvZsO5IgTpYAeZ
	vTjS+6cWpO/5p9fZV21pbnMVUOaydxtNKSAIbnSbYOEvHgJriu5ZNy1ZFzbhejlFJzQiEZ62yPaPn
	K+MuHkqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnDaV-00000006TAs-0AGq;
	Tue, 03 Feb 2026 10:24:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnDaS-00000006TAG-1ne1
	for barebox@lists.infradead.org;
	Tue, 03 Feb 2026 10:24:49 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vnDaO-00034C-TV; Tue, 03 Feb 2026 11:24:45 +0100
Message-ID: <96ea6db3-be89-4fff-9581-9f94690e94ad@pengutronix.de>
Date: Tue, 3 Feb 2026 11:24:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jonas Rebmann <jre@pengutronix.de>, Sascha Hauer
 <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20260203-stm32-generic-v1-1-6fa7a2df3cee@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260203-stm32-generic-v1-1-6fa7a2df3cee@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260203_022448_477587_0B55F3AC 
X-CRM114-Status: GOOD (  17.70  )
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
Subject: Re: [PATCH] ARM: stm32mp: Make ARCH_STM32MP13 and ARCH_STM32MP157
 selectable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Jonas,

On 2/3/26 11:19 AM, Jonas Rebmann wrote:
> ARCH_STM32MP13 and ARCH_STM32MP157 are automatically selected if a
> dependent machine is selected. However, without any machine selected,
> CONFIG_ARCH_STM32MP still enables build of the
> barebox-stm32mp-generic.img image, which, provided a dtb, is functional
> without requiring further board specific code.
> 
> In this case ARCH_STM32MP13 and/or ARCH_STM32MP157 need to be explicitly
> enabled for the SoC to be fully functional (e.g. clocks).
> 
> Signed-off-by: Jonas Rebmann <jre@pengutronix.de>

Agreed, See d92583d5bab2 ("ARM: cpu: allow selecting CPU_V7/CPU_V8
directly").

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/arm/mach-stm32mp/Kconfig | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/mach-stm32mp/Kconfig b/arch/arm/mach-stm32mp/Kconfig
> index 54ce644d73..18a0bf284b 100644
> --- a/arch/arm/mach-stm32mp/Kconfig
> +++ b/arch/arm/mach-stm32mp/Kconfig
> @@ -8,11 +8,11 @@ config ARCH_NR_GPIO
>  
>  config ARCH_STM32MP13
>  	select ARM_PSCI_CLIENT
> -	bool
> +	bool "Support STM32MP153-based chips"
>  
>  config ARCH_STM32MP157
>  	select ARM_PSCI_CLIENT
> -	bool
> +	bool "Support STM32MP157-based chips"
>  
>  config MACH_STM32MP13XX_DK
>  	select ARCH_STM32MP13
> 
> ---
> base-commit: 378bc32467af0afbbcb9d9e3cc1bfd5fb429a826
> change-id: 20260203-stm32-generic-580c70661681
> 
> Best regards,
> --  
> Jonas Rebmann <jre@pengutronix.de>
> 
> 
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



