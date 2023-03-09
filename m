Delivery-date: Thu, 09 Mar 2023 12:26:45 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paEQ0-00EmG6-JA
	for lore@lore.pengutronix.de; Thu, 09 Mar 2023 12:26:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paEPy-0002JF-B9
	for lore@pengutronix.de; Thu, 09 Mar 2023 12:26:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1rMIEWvr10DYtvWMVDyjBnQXbk5zESqKspd40zF+tMg=; b=ZBe64QrudbiSoY+fVcb/Rtong5
	17BYG4kIH1MMlgPRmTGgsLe2u0yheplmLahfcd9ywKJ4Aln2z0F4ln8l1yG0m6w9vVEYjJw70qfjf
	anSlg1ulvEyBieIYvVHsRy3LU3gBLLzzedJgI6sZ7jMGH0bywUEYw5xXjLD7Kwj4aj2eCJvL/aLsG
	ZvC5RtAzYjXtR2p5rVNGTcgSufVoMfzBovpIahqaMKoBsDCFNHdu+XisxfHbhzWyNAfVySoYnRo1k
	thCHcXtbO3yrhOZxEKGVldd26XBZ/WGc3j1+oxFe+u5Dvk7WnJPrw3SwgBnioOuc3n1o5lCEmYavK
	5GUpJqNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paEOV-009TQx-4m; Thu, 09 Mar 2023 11:25:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paE4X-009JPA-HJ
	for barebox@lists.infradead.org; Thu, 09 Mar 2023 11:04:35 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1paE4R-0005nI-Rh; Thu, 09 Mar 2023 12:04:27 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1paE4R-0005vi-JI; Thu, 09 Mar 2023 12:04:27 +0100
Date: Thu, 9 Mar 2023 12:04:27 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230309110427.GE5784@pengutronix.de>
References: <20230307093426.1551193-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230307093426.1551193-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230309_030433_830614_DD3F1C20 
X-CRM114-Status: GOOD (  25.49  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/4] ARM: i.MX8M: add option to install OP-TEE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Mar 07, 2023 at 10:34:23AM +0100, Ahmad Fatoum wrote:
> While infrastructure for installing OP-TEE was already there, no
> upstream boards made use of it. Let's have OP-TEE installation happen in
> generic code, so it may be enabled for any upstream board.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/mach-imx/atf.c                | 50 ++++++++++++++++++++------
>  arch/arm/mach-imx/include/mach/xload.h | 16 +++++++++
>  firmware/.gitignore                    |  1 +
>  firmware/Kconfig                       | 12 +++++++
>  firmware/Makefile                      |  9 +++--
>  5 files changed, 74 insertions(+), 14 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-imx/atf.c b/arch/arm/mach-imx/atf.c
> index 2a3e3f53b885..640881afaaca 100644
> --- a/arch/arm/mach-imx/atf.c
> +++ b/arch/arm/mach-imx/atf.c
> @@ -7,6 +7,9 @@
>  #include <mach/generic.h>
>  #include <mach/xload.h>
>  #include <mach/romapi.h>
> +#include <mach/esdctl.h>
> +#include <asm-generic/memory_layout.h>
> +#include <asm/barebox-arm.h>
>  #include <soc/fsl/fsl_udc.h>
>  #include <soc/fsl/caam.h>
>  
> @@ -133,9 +136,17 @@ void imx8mm_load_bl33(void *bl33)
>  
>  __noreturn void imx8mm_load_and_start_image_via_tfa(void)
>  {
> -	imx8mm_save_bootrom_log();
> -	imx8mm_load_bl33((void *)MX8M_ATF_BL33_BASE_ADDR);
> -	imx8mm_load_and_start_tfa(imx8mm_bl31_bin);
> +	void *bl33 = (void *)MX8M_ATF_BL33_BASE_ADDR;
> +	void *endmem = (void *)MX8M_DDR_CSD1_BASE_ADDR +
> +		imx8m_barebox_earlymem_size(32);
> +
> +	imx8m_save_bootrom_log(__arm_mem_scratch(endmem));
> +	imx8mm_load_bl33(bl33);
> +
> +	if (IS_ENABLED(CONFIG_FIRMWARE_IMX8MM_OPTEE))
> +		imx8m_load_and_start_optee_via_tfa(imx8mm, endmem - OPTEE_SIZE, bl33);
> +	else
> +		imx8mm_load_and_start_tfa(imx8mm_bl31_bin);
>  }
>  
>  void imx8mp_load_bl33(void *bl33)
> @@ -168,13 +179,22 @@ void imx8mp_load_bl33(void *bl33)
>  	memcpy(bl33, __image_start, barebox_pbl_size);
>  }
>  
> -void imx8mp_load_and_start_image_via_tfa(void)
> +__noreturn void imx8mp_load_and_start_image_via_tfa(void)
>  {
> -	imx8mp_save_bootrom_log();
> -	imx8mp_load_bl33((void *)MX8M_ATF_BL33_BASE_ADDR);
> -	imx8mp_load_and_start_tfa(imx8mp_bl31_bin);
> +	void *bl33 = (void *)MX8M_ATF_BL33_BASE_ADDR;
> +	void *endmem = (void *)MX8M_DDR_CSD1_BASE_ADDR +
> +		imx8m_barebox_earlymem_size(32);
> +
> +	imx8m_save_bootrom_log(__arm_mem_scratch(endmem));
> +	imx8mp_load_bl33(bl33);
> +
> +	if (IS_ENABLED(CONFIG_FIRMWARE_IMX8MP_OPTEE))
> +		imx8m_load_and_start_optee_via_tfa(imx8mp, endmem - OPTEE_SIZE, bl33);
> +	else
> +		imx8mp_load_and_start_tfa(imx8mp_bl31_bin);
>  }
>  
> +
>  void imx8mn_load_bl33(void *bl33)
>  {
>  	enum bootsource src;
> @@ -205,9 +225,17 @@ void imx8mn_load_bl33(void *bl33)
>  	memcpy(bl33, __image_start, barebox_pbl_size);
>  }
>  
> -void imx8mn_load_and_start_image_via_tfa(void)
> +__noreturn void imx8mn_load_and_start_image_via_tfa(void)
>  {
> -	imx8mn_save_bootrom_log();
> -	imx8mn_load_bl33((void *)MX8M_ATF_BL33_BASE_ADDR);
> -	imx8mn_load_and_start_tfa(imx8mn_bl31_bin);
> +	void *bl33 = (void *)MX8M_ATF_BL33_BASE_ADDR;
> +	void *endmem = (void *)MX8M_DDR_CSD1_BASE_ADDR +
> +		imx8m_barebox_earlymem_size(16);
> +
> +	imx8m_save_bootrom_log(__arm_mem_scratch(endmem));
> +	imx8mn_load_bl33(bl33);
> +
> +	if (IS_ENABLED(CONFIG_FIRMWARE_IMX8MN_OPTEE))
> +		imx8m_load_and_start_optee_via_tfa(imx8mn, endmem - OPTEE_SIZE, bl33);
> +	else
> +		imx8mn_load_and_start_tfa(imx8mn_bl31_bin);
>  }
> diff --git a/arch/arm/mach-imx/include/mach/xload.h b/arch/arm/mach-imx/include/mach/xload.h
> index aa2fa5129a11..713fc1a8fcb7 100644
> --- a/arch/arm/mach-imx/include/mach/xload.h
> +++ b/arch/arm/mach-imx/include/mach/xload.h
> @@ -5,6 +5,7 @@
>  
>  #include <linux/compiler.h>
>  #include <linux/types.h>
> +#include <mach/tzasc.h>
>  
>  int imx53_nand_start_image(void);
>  int imx6_spi_load_image(int instance, unsigned int flash_offset, void *buf, int len);
> @@ -42,4 +43,19 @@ struct imx_scratch_space *__imx8m_scratch_space(int ddr_buswidth);
>  #define imx8mn_scratch_space() __imx8m_scratch_space(16)
>  #define imx8mp_scratch_space() __imx8m_scratch_space(32)
>  
> +#define imx8m_load_and_start_optee_via_tfa(soc, bl32, bl33)	\
> +do {								\
> +	size_t bl32_size;					\
> +	void *bl32_image;					\
> +								\
> +	soc##_tzc380_init();					\
> +	get_builtin_firmware_ext(soc##_bl32_bin,		\
> +				 bl33, &bl32_image,		\
> +				 &bl32_size);			\
> +								\
> +	memcpy(bl32, bl32_image, bl32_size);			\
> +								\
> +	soc##_load_and_start_tfa(soc##_bl31_bin_optee);		\
> +} while (0)
> +
>  #endif /* __MACH_XLOAD_H */
> diff --git a/firmware/.gitignore b/firmware/.gitignore
> index 4f3e56d8b719..8f9a956eb661 100644
> --- a/firmware/.gitignore
> +++ b/firmware/.gitignore
> @@ -1,3 +1,4 @@
>  # SPDX-License-Identifier: GPL-2.0-only
>  
>  *.bin
> +*.bin-optee
> diff --git a/firmware/Kconfig b/firmware/Kconfig
> index 1a5e1bf5142a..a12a8f304476 100644
> --- a/firmware/Kconfig
> +++ b/firmware/Kconfig
> @@ -24,6 +24,18 @@ config FIRMWARE_IMX8MP_ATF
>  config FIRMWARE_IMX8MQ_ATF
>  	bool
>  
> +config FIRMWARE_IMX8MM_OPTEE
> +	bool "install OP-TEE on i.MX8MM boards"
> +	depends on FIRMWARE_IMX8MM_ATF && PBL_OPTEE
> +
> +config FIRMWARE_IMX8MN_OPTEE
> +	bool "install OP-TEE on i.MX8MN boards"
> +	depends on FIRMWARE_IMX8MN_ATF && PBL_OPTEE
> +
> +config FIRMWARE_IMX8MP_OPTEE
> +	bool "install OP-TEE on i.MX8MP boards"
> +	depends on FIRMWARE_IMX8MP_ATF && PBL_OPTEE
> +
>  config FIRMWARE_CCBV2_OPTEE
>  	bool
>  	depends on MACH_WEBASTO_CCBV2 && PBL_OPTEE
> diff --git a/firmware/Makefile b/firmware/Makefile
> index da341871d681..984192f030bb 100644
> --- a/firmware/Makefile
> +++ b/firmware/Makefile
> @@ -12,10 +12,13 @@ firmware-$(CONFIG_FIRMWARE_IMX_DDR4_PMU_TRAIN) += \
>  	ddr4_imem_1d.bin \
>  	ddr4_imem_2d.bin
>  
> -firmware-$(CONFIG_FIRMWARE_IMX8MM_ATF) += imx8mm-bl31.bin
> -firmware-$(CONFIG_FIRMWARE_IMX8MN_ATF) += imx8mn-bl31.bin
> -firmware-$(CONFIG_FIRMWARE_IMX8MP_ATF) += imx8mp-bl31.bin
> +firmware-$(CONFIG_FIRMWARE_IMX8MM_ATF) += imx8mm-bl31.bin$(if $(CONFIG_FIRMWARE_IMX8MM_OPTEE),-optee,)
> +firmware-$(CONFIG_FIRMWARE_IMX8MN_ATF) += imx8mn-bl31.bin$(if $(CONFIG_FIRMWARE_IMX8MN_OPTEE),-optee,)
> +firmware-$(CONFIG_FIRMWARE_IMX8MP_ATF) += imx8mp-bl31.bin$(if $(CONFIG_FIRMWARE_IMX8MP_OPTEE),-optee,)
>  firmware-$(CONFIG_FIRMWARE_IMX8MQ_ATF) += imx8mq-bl31.bin
> +fw-external-$(CONFIG_FIRMWARE_IMX8MM_OPTEE) += imx8mm-bl32.bin
> +fw-external-$(CONFIG_FIRMWARE_IMX8MN_OPTEE) += imx8mn-bl32.bin
> +fw-external-$(CONFIG_FIRMWARE_IMX8MP_OPTEE) += imx8mp-bl32.bin
>  firmware-$(CONFIG_ARCH_RK3568) += rk3568-bl31.bin
>  firmware-$(CONFIG_ARCH_RK3568_OPTEE) += rk3568-op-tee.bin
>  firmware-$(CONFIG_ARCH_RK3399) += rk3399-bl31.bin
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


