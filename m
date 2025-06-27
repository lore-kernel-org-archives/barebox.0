Delivery-date: Fri, 27 Jun 2025 19:22:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uVCm0-00BhDP-1h
	for lore@lore.pengutronix.de;
	Fri, 27 Jun 2025 19:22:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uVClz-0004VV-R6
	for lore@pengutronix.de; Fri, 27 Jun 2025 19:22:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5TNGigNI5Zu6qiyUGfxAKAxH3V5pWn6o5piU+b+tgTU=; b=RDVY7Yh7yYxsH+UudRvtmYF5LT
	o95GEGnS9ckvOk3OQnUzNafFK/0pzg+4q4CB6nB8TL8hvTDHDkM+tAo+AixDIgrulQOQalF3gC/uj
	lMZWvRrlRf/F9m07YE1gvUps4BuugxN8QrQQW85OCu6KDGVTjC/Oba8dWhl1mH2oKY2/3YXOtvzUd
	9ZykgkNb091PtXU/1SIQrJeBzdr79M+ARrnP3zvFwT10sQjlByWwHGJxpyiizI6XUi7zMD03evYS5
	BwVt4oZpg2HrFBdcqSITl4kzzHEh7TkePvx9pD5HVs3KmgI83U+1ggQvEOWZ5/VXrJKmrDRtHKKin
	mdrN4W7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uVClX-0000000FOd6-0qaz;
	Fri, 27 Jun 2025 17:21:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uVBdN-0000000FDTQ-04FQ
	for barebox@lists.infradead.org;
	Fri, 27 Jun 2025 16:09:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1uVBdL-0005SS-TG; Fri, 27 Jun 2025 18:08:59 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uVBdL-005e3k-2L;
	Fri, 27 Jun 2025 18:08:59 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uVBdL-003dX9-22;
	Fri, 27 Jun 2025 18:08:59 +0200
Date: Fri, 27 Jun 2025 18:08:59 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <20250627160859.5w5xdd3wl7almykt@pengutronix.de>
References: <20250627-arm-optee-early-helper-v1-0-4b098e8ac7cd@pengutronix.de>
 <20250627-arm-optee-early-helper-v1-11-4b098e8ac7cd@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250627-arm-optee-early-helper-v1-11-4b098e8ac7cd@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250627_090901_057339_8E03E162 
X-CRM114-Status: GOOD (  22.59  )
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
Subject: Re: [PATCH 11/14] ARM: i.MX: tqma6ulx: fix barebox chainloading with
 OP-TEE enabled
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 25-06-27, Sascha Hauer wrote:
> When barebox starts we have to guess if we have to start OP-TEE or not.
> The current detection works by checking if the first stage passed us a
> device tree pointer. This is not robust and might have security issues
> [1], so replace that with the check with imx6_can_access_tzasc(). If we
> can access the TZASC then we are the first stage and configure it and
> start OP-TEE, otherwise assume that we are chainloaded and continue
> without starting OP-TEE.
> 
> Chainloading barebox with OP-TEE enabled contained several bugs, so it
> never actually worked. This patch fixes them.
> 
> [1] https://lore.kernel.org/70b41f3b-4329-48f7-827f-1924e002ab04@pengutronix.de
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

> ---
>  arch/arm/boards/tqma6ulx/lowlevel.c | 22 +++++++++-------------
>  arch/arm/mach-imx/Kconfig           |  1 +
>  2 files changed, 10 insertions(+), 13 deletions(-)
> 
> diff --git a/arch/arm/boards/tqma6ulx/lowlevel.c b/arch/arm/boards/tqma6ulx/lowlevel.c
> index 5fd997d2ec7e79c7319237a4ae52216e584ba5cd..da67e67537167096477de2b905ee5c42c653c3af 100644
> --- a/arch/arm/boards/tqma6ulx/lowlevel.c
> +++ b/arch/arm/boards/tqma6ulx/lowlevel.c
> @@ -16,6 +16,8 @@
>  #include <pbl/i2c.h>
>  #include <boards/tq/tq_eeprom.h>
>  #include <tee/optee.h>
> +#include <mach/imx/tzasc.h>
> +#include <tee/optee.h>
>  
>  #include "tqma6ulx.h"
>  
> @@ -66,7 +68,7 @@ static void *read_eeprom(void)
>  	return fdt;
>  }
>  
> -static void noinline start_mba6ulx(u32 r0)
> +static void noinline start_mba6ulx(void)
>  {
>  	void *fdt;
>  	int tee_size;
> @@ -76,21 +78,15 @@ static void noinline start_mba6ulx(u32 r0)
>  
>  	fdt = read_eeprom();
>  
> -	/* Enable normal/secure r/w for TZC380 region0 */
> -	writel(0xf0000000, 0x021D0108);
> -
>  	/*
> -	 * Chainloading barebox will pass a device tree within the RAM in r0,
> -	 * skip OP-TEE early loading in this case
> +	 * Skip loading barebox when we are chainloaded. We can detect that by detecting
> +	 * if we can access the TZASC.
>  	 */
> -	if (IS_ENABLED(CONFIG_FIRMWARE_TQMA6UL_OPTEE) &&
> -	    !(r0 > MX6_MMDC_P0_BASE_ADDR &&
> -	      r0 < MX6_MMDC_P0_BASE_ADDR + SZ_256M)) {
> -		get_builtin_firmware(mba6ul_optee_bin, &tee, &tee_size);
> +	if (IS_ENABLED(CONFIG_FIRMWARE_TQMA6UL_OPTEE) && imx6_can_access_tzasc()) {
>  
> -		memset((void *)OPTEE_OVERLAY_LOCATION, 0, 0x1000);
> +		get_builtin_firmware(mba6ul_optee_bin, &tee, &tee_size);
>  
> -		start_optee_early(NULL, tee);
> +		imx6ul_start_optee_early(NULL, tee, (void *)OPTEE_OVERLAY_LOCATION, 0x1000);
>  	}
>  
>  	imx6ul_barebox_entry(fdt);
> @@ -112,5 +108,5 @@ ENTRY_FUNCTION(start_imx6ul_mba6ulx, r0, r1, r2)
>  	setup_c();
>  	barrier();
>  
> -	start_mba6ulx(r0);
> +	start_mba6ulx();
>  }
> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> index 552e7227a0221fee8232dfba5dcdd60de923ff0c..1bf28b473af2b517a784c11d33f745ad74750583 100644
> --- a/arch/arm/mach-imx/Kconfig
> +++ b/arch/arm/mach-imx/Kconfig
> @@ -490,6 +490,7 @@ config MACH_TQMA6X
>  
>  config MACH_TQMA6UL
>  	bool "TQ tqma6ul on mba6ulx"
> +	select CONFIG_ARM_EXCEPTIONS_PBL if FIRMWARE_TQMA6UL_OPTEE
>  	select ARCH_IMX6UL
>  	select BOARD_TQ
>  	select I2C_IMX_EARLY
> 
> -- 
> 2.39.5
> 
> 
> 


