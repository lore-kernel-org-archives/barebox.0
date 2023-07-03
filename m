Delivery-date: Mon, 03 Jul 2023 08:35:45 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGDA2-00DB98-SY
	for lore@lore.pengutronix.de; Mon, 03 Jul 2023 08:35:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGD9z-0000YU-TD
	for lore@pengutronix.de; Mon, 03 Jul 2023 08:35:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OYX4BLYqilxugym3Zsl++1WFT3GueDJlJfQpqKiiCkA=; b=yOsLSQeXkMxYAosZyl4gPgS4KA
	cs8dZMbTRl6LdW7UOcQj1AGiK+fCEPBLJhUiwCkB+9G6d/AzwWzoiRYQ1zBiKEeLvpVWIQeaO2Qy/
	l67L/642BT12Q/Pl+kLh/BzAIyKdPDZrglEcSqmTw/WkAWyu8gik3lzn+tZiI6Hpvc6mBHqKzo53a
	Vt2TcOnvFlTccwB/HmR/ufHCjh6Y6vDYd0o67HXy0aQvKhbjtdr8TaRw/0JT6RY+5/zUffYTOPdE9
	IWECZ9HqMhcAViSn+x00vr0tj57Cdfm5g+AthSp/6YhE+Z0sSleI21pYVu5nNSHLqvKq5fkzl5LQk
	kU7Fg3KQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGD8o-009TUT-2N;
	Mon, 03 Jul 2023 06:34:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGD8l-009TTQ-0K
	for barebox@lists.infradead.org;
	Mon, 03 Jul 2023 06:34:29 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qGD8j-000089-Qb; Mon, 03 Jul 2023 08:34:25 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qGD8j-0002EJ-IE; Mon, 03 Jul 2023 08:34:25 +0200
Date: Mon, 3 Jul 2023 08:34:25 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, uol@pengutronix.de
Message-ID: <20230703063425.mg6egi7vhgbext3q@pengutronix.de>
References: <20230626153335.3592017-1-a.fatoum@pengutronix.de>
 <20230626153335.3592017-7-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230626153335.3592017-7-a.fatoum@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230702_233427_305434_902EAAB8 
X-CRM114-Status: GOOD (  18.84  )
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
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master v1 6/6] firmware: don't hardcode firmware paths in
 srctree for existence check
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 23-06-26, Ahmad Fatoum wrote:
> Now that PBL firmware can be made optional, we can drop the existence
> checks in the Kconfig. These were flawed anyway, because they didn't
> take CONFIG_EXTRA_FIRMWARE_DIR into account and they led to issues with
> build system recipes that didn't expect firmware to be required before
> compilation step at oldconfig/menuconfig time.
> 
> This effectively reverts commits:
> 
>   624962fb45c6 ("ARM: i.MX: make boards selectable only when firmware files are present")
>   4ff2e5510ec9 ("ARM: Rockchip: make boards only selectable when firmware is present")
>   41a89611774a ("ARM: rockchip: don't attempt building MACH_RADXA_ROCK5 without firmware")
> 
> Reported-by: Marc Kleine-Budde <mkl@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

> ---
>  arch/arm/mach-imx/Kconfig      | 49 ----------------------------------
>  arch/arm/mach-rockchip/Kconfig |  6 -----
>  firmware/Kconfig               | 39 ---------------------------
>  3 files changed, 94 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> index 5cd1428f9a6b..819c23bae88a 100644
> --- a/arch/arm/mach-imx/Kconfig
> +++ b/arch/arm/mach-imx/Kconfig
> @@ -561,35 +561,9 @@ if 64BIT
>  
>  comment "i.MX8M boards"
>  
> -if !HAVE_FIRMWARE_IMX_LPDDR4_PMU_TRAIN
> -comment "LPDDR4 firmware files missing, some boards are not selectable"
> -endif
> -
> -if !HAVE_FIRMWARE_IMX_DDR4_PMU_TRAIN
> -comment "DDR4 firmware files missing, some boards are not selectable"
> -endif
> -
> -if !HAVE_FIRMWARE_IMX8MM_ATF
> -comment "i.MX8MM TF-A files missing, i.MX8MM boards are disabled"
> -endif
> -
> -if !HAVE_FIRMWARE_IMX8MQ_ATF
> -comment "i.MX8MQ TF-A files missing, i.MX8MQ boards are disabled"
> -endif
> -
> -if !HAVE_FIRMWARE_IMX8MN_ATF
> -comment "i.MX8MN TF-A files missing, i.MX8MN boards are disabled"
> -endif
> -
> -if !HAVE_FIRMWARE_IMX8MP_ATF
> -comment "i.MX8MP TF-A files missing, i.MX8MP boards are disabled"
> -endif
> -
>  config MACH_INNOCOMM_WB15
>  	bool "InnoComm WB15 (i.MX8MM) EVK"
>  	select ARCH_IMX8MM
> -	depends on HAVE_FIRMWARE_IMX_LPDDR4_PMU_TRAIN
> -	depends on HAVE_FIRMWARE_IMX8MM_ATF
>  	select FIRMWARE_IMX_LPDDR4_PMU_TRAIN
>  	select FIRMWARE_IMX8MM_ATF
>  	select ARM_SMCCC
> @@ -622,8 +596,6 @@ config MACH_BEO_MOZART2
>  config MACH_MNT_REFORM
>  	bool "MNT Reform"
>  	select ARCH_IMX8MQ
> -	depends on HAVE_FIRMWARE_IMX_LPDDR4_PMU_TRAIN
> -	depends on HAVE_FIRMWARE_IMX8MQ_ATF
>  	select FIRMWARE_IMX_LPDDR4_PMU_TRAIN
>  	select FIRMWARE_IMX8MQ_ATF
>  	select ARM_SMCCC
> @@ -633,8 +605,6 @@ config MACH_MNT_REFORM
>  config MACH_NXP_IMX8MM_EVK
>  	bool "NXP i.MX8MM EVK Board"
>  	select ARCH_IMX8MM
> -	depends on HAVE_FIRMWARE_IMX_LPDDR4_PMU_TRAIN
> -	depends on HAVE_FIRMWARE_IMX8MM_ATF
>  	select FIRMWARE_IMX_LPDDR4_PMU_TRAIN
>  	select FIRMWARE_IMX8MM_ATF
>  	select ARM_SMCCC
> @@ -646,9 +616,6 @@ config MACH_NXP_IMX8MM_EVK
>  config MACH_NXP_IMX8MN_EVK
>  	bool "NXP i.MX8MN EVK Board"
>  	select ARCH_IMX8MN
> -	depends on HAVE_FIRMWARE_IMX_LPDDR4_PMU_TRAIN
> -	depends on HAVE_FIRMWARE_IMX_DDR4_PMU_TRAIN
> -	depends on HAVE_FIRMWARE_IMX8MN_ATF
>  	select FIRMWARE_IMX_LPDDR4_PMU_TRAIN
>  	select FIRMWARE_IMX_DDR4_PMU_TRAIN
>  	select FIRMWARE_IMX8MN_ATF
> @@ -660,8 +627,6 @@ config MACH_NXP_IMX8MN_EVK
>  config MACH_NXP_IMX8MP_EVK
>  	bool "NXP i.MX8MP EVK Board"
>  	select ARCH_IMX8MP
> -	depends on HAVE_FIRMWARE_IMX_LPDDR4_PMU_TRAIN
> -	depends on HAVE_FIRMWARE_IMX8MP_ATF
>  	select FIRMWARE_IMX_LPDDR4_PMU_TRAIN
>  	select FIRMWARE_IMX8MP_ATF
>  	select ARM_SMCCC
> @@ -672,8 +637,6 @@ config MACH_NXP_IMX8MP_EVK
>  config MACH_NXP_IMX8MQ_EVK
>  	bool "NXP i.MX8MQ EVK Board"
>  	select ARCH_IMX8MQ
> -	depends on HAVE_FIRMWARE_IMX_LPDDR4_PMU_TRAIN
> -	depends on HAVE_FIRMWARE_IMX8MQ_ATF
>  	select FIRMWARE_IMX_LPDDR4_PMU_TRAIN
>  	select FIRMWARE_IMX8MQ_ATF
>  	select ARM_SMCCC
> @@ -682,8 +645,6 @@ config MACH_NXP_IMX8MQ_EVK
>  config MACH_PHYTEC_SOM_IMX8MQ
>  	bool "Phytec i.MX8M SOM"
>  	select ARCH_IMX8MQ
> -	depends on HAVE_FIRMWARE_IMX_LPDDR4_PMU_TRAIN
> -	depends on HAVE_FIRMWARE_IMX8MQ_ATF
>  	select FIRMWARE_IMX_LPDDR4_PMU_TRAIN
>  	select FIRMWARE_IMX8MQ_ATF
>  	select ARM_SMCCC
> @@ -692,8 +653,6 @@ config MACH_PHYTEC_SOM_IMX8MQ
>  config MACH_POLYHEX_DEBIX
>  	bool "Polyhex DEBIX Model-A/B (i.MX8MP) Board"
>  	select ARCH_IMX8MP
> -	depends on HAVE_FIRMWARE_IMX_LPDDR4_PMU_TRAIN
> -	depends on HAVE_FIRMWARE_IMX8MP_ATF
>  	select FIRMWARE_IMX_LPDDR4_PMU_TRAIN
>  	select FIRMWARE_IMX8MP_ATF
>  	select ARM_SMCCC
> @@ -704,8 +663,6 @@ config MACH_POLYHEX_DEBIX
>  config MACH_PROTONIC_IMX8M
>  	bool "Protonic-Holland i.MX8Mx based boards"
>  	select ARCH_IMX8MM
> -	depends on HAVE_FIRMWARE_IMX_LPDDR4_PMU_TRAIN
> -	depends on HAVE_FIRMWARE_IMX8MM_ATF
>  	select FIRMWARE_IMX_LPDDR4_PMU_TRAIN
>  	select FIRMWARE_IMX8MM_ATF
>  	select ARM_SMCCC
> @@ -716,8 +673,6 @@ config MACH_PROTONIC_IMX8M
>  config MACH_TQ_MBA8MPXL
>  	bool "TQ i.MX8MP Dual/Quad on MBa8MPxL Board"
>  	select ARCH_IMX8MP
> -	depends on HAVE_FIRMWARE_IMX_LPDDR4_PMU_TRAIN
> -	depends on HAVE_FIRMWARE_IMX8MP_ATF
>  	select FIRMWARE_IMX_LPDDR4_PMU_TRAIN
>  	select FIRMWARE_IMX8MP_ATF
>  	select ARM_SMCCC
> @@ -728,8 +683,6 @@ config MACH_TQ_MBA8MPXL
>  config MACH_VARISCITE_DT8MCUSTOMBOARD_IMX8MP
>  	bool "Variscite DT8MCustomBoard with DART-MX8M-PLUS"
>  	select ARCH_IMX8MP
> -	depends on HAVE_FIRMWARE_IMX_LPDDR4_PMU_TRAIN
> -	depends on HAVE_FIRMWARE_IMX8MP_ATF
>  	select FIRMWARE_IMX_LPDDR4_PMU_TRAIN
>  	select FIRMWARE_IMX8MP_ATF
>  	select ARM_SMCCC
> @@ -740,8 +693,6 @@ config MACH_VARISCITE_DT8MCUSTOMBOARD_IMX8MP
>  config MACH_ZII_IMX8MQ_DEV
>  	bool "ZII i.MX8MQ based devices"
>  	select ARCH_IMX8MQ
> -	depends on HAVE_FIRMWARE_IMX_LPDDR4_PMU_TRAIN
> -	depends on HAVE_FIRMWARE_IMX8MQ_ATF
>  	select FIRMWARE_IMX_LPDDR4_PMU_TRAIN
>  	select FIRMWARE_IMX8MQ_ATF
>  	select ARM_SMCCC
> diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
> index a71c4ae35dd9..8cdf2c28a912 100644
> --- a/arch/arm/mach-rockchip/Kconfig
> +++ b/arch/arm/mach-rockchip/Kconfig
> @@ -75,42 +75,36 @@ if 64BIT
>  
>  config MACH_RK3568_EVB
>  	select ARCH_RK3568
> -	depends on $(success,test -e $(srctree)/arch/arm/boards/rockchip-rk3568-evb/sdram-init.bin)
>  	bool "RK3568 EVB"
>  	help
>  	  Say Y here if you are using a RK3568 EVB
>  
>  config MACH_RK3568_BPI_R2PRO
>  	select ARCH_RK3568
> -	depends on $(success,test -e $(srctree)/arch/arm/boards/rockchip-rk3568-bpi-r2pro/sdram-init.bin)
>  	bool "RK3568 BPI R2PRO"
>  	help
>  	  Say Y here if you are using a RK3568 Bananpi R2 Pro
>  
>  config MACH_PINE64_QUARTZ64
>  	select ARCH_RK3568
> -	depends on $(success,test -e $(srctree)/arch/arm/boards/pine64-quartz64/sdram-init.bin)
>  	bool "Pine64 Quartz64"
>  	help
>  	  Say Y here if you are using a Pine64 Quartz64
>  
>  config MACH_RADXA_ROCK3
>  	select ARCH_RK3568
> -	depends on $(success,test -e $(srctree)/arch/arm/boards/radxa-rock3/sdram-init.bin)
>  	bool "Radxa ROCK3"
>  	help
>  	  Say Y here if you are using a Radxa ROCK3
>  
>  config MACH_RADXA_ROCK5
>  	select ARCH_RK3588
> -	depends on $(success,test -e $(srctree)/arch/arm/boards/radxa-rock5/sdram-init.bin)
>  	bool "Radxa ROCK5"
>  	help
>  	  Say Y here if you are using a Radxa ROCK5
>  
>  config MACH_RADXA_CM3
>  	select ARCH_RK3568
> -	depends on $(success,test -e $(srctree)/arch/arm/boards/radxa-cm3/sdram-init.bin)
>  	bool "Radxa CM3"
>  	help
>  	  Say Y here if you are using a Radxa CM3
> diff --git a/firmware/Kconfig b/firmware/Kconfig
> index 56d6d0d6c030..3328dbc0b111 100644
> --- a/firmware/Kconfig
> +++ b/firmware/Kconfig
> @@ -20,74 +20,35 @@ config MISSING_FIRMWARE_ERROR
>  	  If in doubt, say Y and refer to the documentation on where to acquire the
>  	  needed firmware.
>  
> -config HAVE_FIRMWARE_IMX_LPDDR4_PMU_TRAIN
> -	bool
> -	default y
> -	depends on $(success,test -e $(srctree)/firmware/lpddr4_pmu_train_1d_dmem.bin)
> -	depends on $(success,test -e $(srctree)/firmware/lpddr4_pmu_train_1d_imem.bin)
> -	depends on $(success,test -e $(srctree)/firmware/lpddr4_pmu_train_2d_dmem.bin)
> -	depends on $(success,test -e $(srctree)/firmware/lpddr4_pmu_train_2d_imem.bin)
> -
>  config FIRMWARE_IMX_LPDDR4_PMU_TRAIN
>  	bool
>  
> -config HAVE_FIRMWARE_IMX_DDR4_PMU_TRAIN
> -	bool
> -	default y
> -	depends on $(success,test -e $(srctree)/firmware/ddr4_dmem_1d.bin)
> -	depends on $(success,test -e $(srctree)/firmware/ddr4_dmem_2d.bin)
> -	depends on $(success,test -e $(srctree)/firmware/ddr4_imem_1d.bin)
> -	depends on $(success,test -e $(srctree)/firmware/ddr4_imem_2d.bin)
> -
>  config FIRMWARE_IMX_DDR4_PMU_TRAIN
>  	bool
>  
> -config HAVE_FIRMWARE_IMX8MM_ATF
> -	bool
> -	default y
> -	depends on $(success,test -e $(srctree)/firmware/imx8mm-bl31.bin)
> -
>  config FIRMWARE_IMX8MM_ATF
>  	bool
>  
> -config HAVE_FIRMWARE_IMX8MN_ATF
> -	bool
> -	default y
> -	depends on $(success,test -e $(srctree)/firmware/imx8mn-bl31.bin)
> -
>  config FIRMWARE_IMX8MN_ATF
>  	bool
>  
> -config HAVE_FIRMWARE_IMX8MP_ATF
> -	bool
> -	default y
> -	depends on $(success,test -e $(srctree)/firmware/imx8mp-bl31.bin)
> -
>  config FIRMWARE_IMX8MP_ATF
>  	bool
>  
> -config HAVE_FIRMWARE_IMX8MQ_ATF
> -	bool
> -	default y
> -	depends on $(success,test -e $(srctree)/firmware/imx8mq-bl31.bin)
> -
>  config FIRMWARE_IMX8MQ_ATF
>  	bool
>  
>  config FIRMWARE_IMX8MM_OPTEE
>  	bool "install OP-TEE on i.MX8MM boards"
>  	depends on FIRMWARE_IMX8MM_ATF && PBL_OPTEE
> -	depends on $(success,test -e $(srctree)/firmware/imx8mm-bl32.bin)
>  
>  config FIRMWARE_IMX8MN_OPTEE
>  	bool "install OP-TEE on i.MX8MN boards"
>  	depends on FIRMWARE_IMX8MN_ATF && PBL_OPTEE
> -	depends on $(success,test -e $(srctree)/firmware/imx8mn-bl32.bin)
>  
>  config FIRMWARE_IMX8MP_OPTEE
>  	bool "install OP-TEE on i.MX8MP boards"
>  	depends on FIRMWARE_IMX8MP_ATF && PBL_OPTEE
> -	depends on $(success,test -e $(srctree)/firmware/imx8mp-bl32.bin)
>  
>  config FIRMWARE_CCBV2_OPTEE
>  	bool
> -- 
> 2.39.2
> 
> 
> 


