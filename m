Delivery-date: Fri, 27 Jun 2025 02:07:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uUwcN-00BRNq-37
	for lore@lore.pengutronix.de;
	Fri, 27 Jun 2025 02:06:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uUwcN-0002XO-AM
	for lore@pengutronix.de; Fri, 27 Jun 2025 02:06:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cUv+p35ULgpFENd2qcTssAuHJsB9fSTFGAEkJIRXYJY=; b=iO8jK9FxdEsjNAnsU6AYyECGua
	7PxKHDsQ+23BPAI8tkJ7pb6DvS06vqnJHWeKePZKpLew6Es/JwjNSH2cZ8J3Vs1JA1Jp9m0SXXhT/
	fTpSRClZubjqPfOX2JNknWE0BN8yRlEAI14+SHj2duXfeqrbP2hnsNZrSxeeBMAeQu3Ua+ZUoWpAf
	lw23B+zKNkIgWfw4Ymx/AqjAbS80X0t2SlTQATKkvMxo7OG0pEvY01+My/Y16EpDlqbMcbZii6eWd
	JCm19+mxEM+S0uiJeg2tpFw++DrrTQVz4aRjR9rcjazS+tsV+CnQO2OcS7PPs4NxC5XoiKiWZMFHY
	iojQLcRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUwbw-0000000DA19-47ib;
	Fri, 27 Jun 2025 00:06:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUvIe-0000000CxPf-0hAu
	for barebox@lists.infradead.org;
	Thu, 26 Jun 2025 22:42:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1uUvIc-0007WA-UI; Fri, 27 Jun 2025 00:42:30 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uUvIc-005WB7-2Q;
	Fri, 27 Jun 2025 00:42:30 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uUvIc-001hfZ-26;
	Fri, 27 Jun 2025 00:42:30 +0200
Date: Fri, 27 Jun 2025 00:42:30 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20250626224230.rmsjwffxifsjdvyq@pengutronix.de>
References: <20250626150122.445558-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250626150122.445558-1-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250626_154232_206566_3F32AE2A 
X-CRM114-Status: GOOD (  18.61  )
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
Subject: Re: [PATCH] ARM: i.MX: tzasc: configure region 1
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Sascha,

On 25-06-26, Sascha Hauer wrote:
> Configuring TZASC region0 for non secure access has the effect that the
> OP-TEE memory can be accessed via aliases in the SDRAM memory space,
> see https://lore.kernel.org/20250626144527.416697-1-m.felsch@pengutronix.de.
> This patch fixes the issue for i.MX6ul boards.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/boards/tqma6ulx/lowlevel.c      |  5 +++--
>  arch/arm/boards/webasto-ccbv2/lowlevel.c |  5 +++--
>  arch/arm/mach-imx/tzasc.c                | 12 ++++++++++++
>  include/mach/imx/tzasc.h                 |  2 ++
>  4 files changed, 20 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm/boards/tqma6ulx/lowlevel.c b/arch/arm/boards/tqma6ulx/lowlevel.c
> index ce330c37af..14553fa1aa 100644
> --- a/arch/arm/boards/tqma6ulx/lowlevel.c
> +++ b/arch/arm/boards/tqma6ulx/lowlevel.c
> @@ -16,6 +16,7 @@
>  #include <pbl/i2c.h>
>  #include <boards/tq/tq_eeprom.h>
>  #include <tee/optee.h>
> +#include <mach/imx/tzasc.h>
>  
>  #include "tqma6ulx.h"
>  
> @@ -82,8 +83,8 @@ static void noinline start_mba6ulx(u32 r2)
>  	 */
>  	if (IS_ENABLED(CONFIG_FIRMWARE_TQMA6UL_OPTEE) &&
>  	    !(r2 > MX6_MMDC_PORT0_BASE_ADDR && r2 < MX6_MMDC_PORT0_BASE_ADDR + SZ_256M)) {
> -		/* Enable normal/secure r/w for TZC380 region0 */
> -		writel(0xf0000000, 0x021D0108);
> +
> +		imx6ul_tzc380_early_ns_region1();

We could have used the mx6_start_optee_early() which also checks that
the TZASC is enabled before starting OP-TEE. But this could also be done
by an additional cleanup patch.

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

Regards,
  Marco

>  
>  		get_builtin_firmware(mba6ul_optee_bin, &tee, &tee_size);
>  
> diff --git a/arch/arm/boards/webasto-ccbv2/lowlevel.c b/arch/arm/boards/webasto-ccbv2/lowlevel.c
> index 17264479c2..23d053863a 100644
> --- a/arch/arm/boards/webasto-ccbv2/lowlevel.c
> +++ b/arch/arm/boards/webasto-ccbv2/lowlevel.c
> @@ -13,6 +13,7 @@
>  #include <mach/imx/iomux-mx6ul.h>
>  #include <asm/cache.h>
>  #include <tee/optee.h>
> +#include <mach/imx/tzasc.h>
>  
>  #include "ccbv2.h"
>  
> @@ -44,8 +45,8 @@ static void noinline start_ccbv2(u32 r2, unsigned long mem_size, char *fdt)
>  	 */
>  	if(IS_ENABLED(CONFIG_FIRMWARE_CCBV2_OPTEE) &&
>  	   !(r2 > MX6_MMDC_PORT0_BASE_ADDR && r2 < MX6_MMDC_PORT0_BASE_ADDR + mem_size)) {
> -		/* Enable normal/secure r/w for TZC380 region0 */
> -		writel(0xf0000000, 0x021D0108);
> +		imx6ul_tzc380_early_ns_region1();
> +
>  		get_builtin_firmware(ccbv2_optee_bin, &tee, &tee_size);
>  
>  		memset((void *)OPTEE_OVERLAY_LOCATION, 0, 0x1000);
> diff --git a/arch/arm/mach-imx/tzasc.c b/arch/arm/mach-imx/tzasc.c
> index c2603c2b43..77601d8d14 100644
> --- a/arch/arm/mach-imx/tzasc.c
> +++ b/arch/arm/mach-imx/tzasc.c
> @@ -296,6 +296,18 @@ void imx6q_tzc380_early_ns_region1(void)
>  				  TZC380_REGION_SP_NS_RW);
>  }
>  
> +void imx6ul_tzc380_early_ns_region1(void)
> +{
> +	resource_size_t ram_sz = imx6_get_mmdc_sdram_size();
> +
> +	imx_tzc380_init_and_setup(IOMEM(MX6_TZASC1_BASE), 1,
> +				  MX6_MMDC_PORT0_BASE_ADDR, ram_sz,
> +				  TZC380_REGION_SP_NS_RW);
> +}
> +
> +void imx6sx_tzc380_early_ns_region1(void)
> +        __alias(imx6ul_tzc380_early_ns_region1);
> +
>  bool imx6q_tzc380_is_enabled(void)
>  {
>  	u32 __iomem *gpr = IOMEM(MX6_IOMUXC_BASE_ADDR);
> diff --git a/include/mach/imx/tzasc.h b/include/mach/imx/tzasc.h
> index 59ec56a5ec..75bb7b1393 100644
> --- a/include/mach/imx/tzasc.h
> +++ b/include/mach/imx/tzasc.h
> @@ -7,6 +7,8 @@
>  #include <asm/system.h>
>  
>  void imx6q_tzc380_early_ns_region1(void);
> +void imx6ul_tzc380_early_ns_region1(void);
> +void imx6sx_tzc380_early_ns_region1(void);
>  bool imx6q_tzc380_is_enabled(void);
>  void imx8m_tzc380_init(void);
>  bool imx8m_tzc380_is_enabled(void);
> -- 
> 2.39.5
> 
> 
> 


