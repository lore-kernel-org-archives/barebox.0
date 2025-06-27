Delivery-date: Fri, 27 Jun 2025 19:19:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uVCjf-00BhBR-2a
	for lore@lore.pengutronix.de;
	Fri, 27 Jun 2025 19:19:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uVCjf-0000mh-6n
	for lore@pengutronix.de; Fri, 27 Jun 2025 19:19:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IMmNithgpXgvf+Tjoj2tGtbbdlNQVuP1XzjEIp0WIeE=; b=jdrNEXOpom3g/9fx07nWvypKjA
	Z9LdgLEer5RkelfXa/+p9BRIVTFhSJHca3lbsV+2RiNetsB5Epam0CIqtB5PH5IZIDo5o8p9UgdGM
	AyCAg8mlsy84AAfoTq5Ewmu0/pp82hXtpr+q4tqKPvlDjelQUTr1vLXwxED8tclbergc6qktV+/fh
	fSbVK4oqpa2CYItnsuVEcZ4ZtNWpXkgktT75ama7XOmbeCW/gKCoCL9krYLA5EerFkWJyewWYbO38
	OOxtzTMT+jOdI4sQmmTYmMbBhvaa/ySrw8SGNXL6sJ4aNPEvLAk2k/8c1ZQ6vVXL52J4KVx5AtU9+
	KhNYTykA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uVCjH-0000000FOCy-01jW;
	Fri, 27 Jun 2025 17:19:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uVBYc-0000000FCzL-1iG3
	for barebox@lists.infradead.org;
	Fri, 27 Jun 2025 16:04:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1uVBYb-0006fd-7b; Fri, 27 Jun 2025 18:04:05 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uVBYb-005dyu-0A;
	Fri, 27 Jun 2025 18:04:05 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uVBYa-003dRY-34;
	Fri, 27 Jun 2025 18:04:04 +0200
Date: Fri, 27 Jun 2025 18:04:04 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <20250627160404.gs7txsvrba4dezds@pengutronix.de>
References: <20250627-arm-optee-early-helper-v1-0-4b098e8ac7cd@pengutronix.de>
 <20250627-arm-optee-early-helper-v1-9-4b098e8ac7cd@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250627-arm-optee-early-helper-v1-9-4b098e8ac7cd@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250627_090406_448119_9E6BC02C 
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 09/14] ARM: i.MX: add imx6_can_access_tzasc()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 25-06-27, Sascha Hauer wrote:
> On ARMv7 there is no direct way to detect if we are in the secure or non
> secure world. Add a imx6_can_access_tzasc() for this purpose. When
> accessing the TZASC triggers a data abort then we are in the non secure
> world. This function can be used later to detect if we have to load
       ^
because OP-TEE configures the TZASC access policy to secure-world R/W. ?

Keep in mind that this test will fail if a downstream/buggy OP-TEE
doesn't configure the CSU correctly. Fingers crossed that this never
will never happen.

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
> +bool imx6_can_access_tzasc(void)
> +{
> +	if (!IS_ENABLED(CONFIG_ARM_EXCEPTIONS_PBL))
> +		panic("%s only works with CONFIG_ARM_EXCEPTIONS_PBL\n", __func__);
> +
> +	arm_pbl_init_exceptions();

Can't we do that within the imx*_cpu_lowlevel_init?

Regards,
  Marco

> +
> +	data_abort_mask();
> +
> +	readl(IOMEM(MX6_TZASC1_BASE));
> +
> +	return !data_abort_unmask();
> +}
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
> -- 
> 2.39.5
> 
> 
> 


