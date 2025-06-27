Delivery-date: Fri, 27 Jun 2025 18:25:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uVBt0-00BgAz-2u
	for lore@lore.pengutronix.de;
	Fri, 27 Jun 2025 18:25:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uVBt0-0003gF-AL
	for lore@pengutronix.de; Fri, 27 Jun 2025 18:25:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vhALwmOzfG1xSk3qIpW4/q/seYSQcIAsO5qnUhK0+Rs=; b=NcmDnf6lRorlu1wbrbuEY4pDIA
	C+vgttMzGOWQFC2lPEPVWx2tguZfVjhwB0f+5YFLjmRnyI7NbUGsEYKQfk2nkIRmJFd/DZi3gfp6c
	qU/Xe/luhSd8qnE4dsiTjCAq8Rme9aGaxi3X+V6r4IGm1wEfjNme+CtUoqmCGsCvwxjWet5lmZi3g
	nIGLXZf3RiOXFxI63+lO2+RH/JGkWUqQFMbRy50e7vaErsD7OPQ/HQPv1auUQ3H6SeXla51dFCt7f
	mhdJUKruhOc/PfaZFtJ1o+MDxz3oVXO8EW4WIdU5UNHvY0p0abpaInfpgFjYQte6wFhD+tqt2GE9p
	B4V8X7xA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uVBsa-0000000FFgK-3Cup;
	Fri, 27 Jun 2025 16:24:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uVB4r-0000000F7GW-0Vu6
	for barebox@lists.infradead.org;
	Fri, 27 Jun 2025 15:33:22 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uVB4p-0003ns-Tm; Fri, 27 Jun 2025 17:33:19 +0200
Message-ID: <70a40a96-4468-4869-8ef6-f3ad4b27c36f@pengutronix.de>
Date: Fri, 27 Jun 2025 17:33:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20250627-arm-optee-early-helper-v1-0-4b098e8ac7cd@pengutronix.de>
 <20250627-arm-optee-early-helper-v1-9-4b098e8ac7cd@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250627-arm-optee-early-helper-v1-9-4b098e8ac7cd@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250627_083321_163357_41B3118D 
X-CRM114-Status: GOOD (  18.86  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 09/14] ARM: i.MX: add imx6_can_access_tzasc()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 6/27/25 16:07, Sascha Hauer wrote:
> On ARMv7 there is no direct way to detect if we are in the secure or non
> secure world. Add a imx6_can_access_tzasc() for this purpose. When
> accessing the TZASC triggers a data abort then we are in the non secure
> world. This function can be used later to detect if we have to load
> OP-TEE or not.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/mach-imx/tzasc.c | 16 ++++++++++++++++
>  include/mach/imx/tzasc.h  |  1 +
>  2 files changed, 17 insertions(+)
> 
> diff --git a/arch/arm/mach-imx/tzasc.c b/arch/arm/mach-imx/tzasc.c
> index ed20ad8803a2e91b67b5d8c3ab1a4265c4228ec7..63f01cbaa6d4a8fbf47b9683ca840ee64f908cfc 100644
> --- a/arch/arm/mach-imx/tzasc.c
> +++ b/arch/arm/mach-imx/tzasc.c
> @@ -13,6 +13,8 @@
>  #include <linux/sizes.h>
>  #include <mach/imx/imx8m-regs.h>
>  #include <io.h>
> +#include <abort.h>
> +#include <asm/barebox-arm.h>
>  
>  /*******************************************************************************
>   *                         TZC380 defines
> @@ -329,6 +331,20 @@ bool imx6ul_tzc380_is_bypassed(void)
>  	return !(readl(&gpr[9]) & MX6_GPR_TZASC1_EN);
>  }
>  

How about dropping the panic and just failing the build:

#ifdef CONFIG_ARM_EXCEPTIONS_PBL

> +bool imx6_can_access_tzasc(void)
> +{
> +	if (!IS_ENABLED(CONFIG_ARM_EXCEPTIONS_PBL))
> +		panic("%s only works with CONFIG_ARM_EXCEPTIONS_PBL\n", __func__);
> +
> +	arm_pbl_init_exceptions();
> +
> +	data_abort_mask();
> +
> +	readl(IOMEM(MX6_TZASC1_BASE));
> +
> +	return !data_abort_unmask();
> +}

#else

bool imx6_can_access_tzasc(void)
	__compiletime_error("function called without CONFIG_ARM_EXCEPTIONS_PBL ");

#endif

> +
>  void imx8m_tzc380_init(void)
>  {
>  	u32 __iomem *gpr = IOMEM(MX8M_IOMUXC_GPR_BASE_ADDR);
> diff --git a/include/mach/imx/tzasc.h b/include/mach/imx/tzasc.h
> index 0fbcdc2150e63864366a8dddeed2d1b97685903d..ca85704a8f459ab6e0cdc975940d855929f3d6f7 100644
> --- a/include/mach/imx/tzasc.h
> +++ b/include/mach/imx/tzasc.h
> @@ -10,6 +10,7 @@ void imx6q_tzc380_early_ns_region1(void);
>  void imx6ul_tzc380_early_ns_region1(void);
>  bool imx6q_tzc380_is_bypassed(void);
>  bool imx6ul_tzc380_is_bypassed(void);
> +bool imx6_can_access_tzasc(void);
>  void imx8m_tzc380_init(void);
>  bool imx8m_tzc380_is_enabled(void);
>  
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



