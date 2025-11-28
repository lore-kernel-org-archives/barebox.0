Delivery-date: Fri, 28 Nov 2025 10:41:33 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOuyr-005jzN-1M
	for lore@lore.pengutronix.de;
	Fri, 28 Nov 2025 10:41:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOuyq-0001dl-Fp
	for lore@pengutronix.de; Fri, 28 Nov 2025 10:41:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HqiVNAG+GX4F334c4EUPc4D4gj9KPQwBUTIvvzzRvE0=; b=LoPLA2dGUw8UVb3o9z6ckkxKXE
	r1IKe1jc5fwTHpvi6phF3SVYucRXqWcxWKgD7qU0MtOwjCZEww2Bjrc+loGlHB+qmR2wQQ1HIKBTM
	h//ZicwzorJRyuT53WYeBDzL3hXoaL87bkhjvpD9lNGb0TeIUamZZ24vlB2LEjXEbaW9H2odVndik
	EjkGIz9U1Xz+Tx/25XixlU29Pjt0YdoIs+YtyBO2yFICAtzr0ozIHVZGhF8d5Kiqs43uXIrNL3mRJ
	eSAxLInL2cWGht9F5rOlkPD+6/iMJubODpicDiz/xao5tWGdjfRozrx0QM23jzE+hMau1zHwbUTno
	M/LD3yFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOuyK-00000000Ev4-0rxU;
	Fri, 28 Nov 2025 09:41:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOuyI-00000000Eua-0Ksd
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 09:40:59 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vOuyG-0001Vj-Hs; Fri, 28 Nov 2025 10:40:56 +0100
Message-ID: <3df9c55c-44e4-45c2-927f-23b0f70fa49e@pengutronix.de>
Date: Fri, 28 Nov 2025 10:40:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sohaib Mohamed <sohaib.amhmd@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20251128-avenger96-v1-0-009b13bd8df7@gmail.com>
 <20251128-avenger96-v1-3-009b13bd8df7@gmail.com>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251128-avenger96-v1-3-009b13bd8df7@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251128_014058_274627_85A928FC 
X-CRM114-Status: GOOD (  25.08  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/3] ARM: stm32mp: add support for STM32MP157A Avenger96
 board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 11/28/25 1:51 AM, Sohaib Mohamed wrote:
> Add board support for the Arrow Electronics STM32MP157A Avenger96 board.
> 
> This commit adds:
> - Board initialization code with boot source detection
> - barebox_update handlers for SD card, eMMC
> 
> Tested with STM32MP157A DHCOR SoM on Avenger96 carrier board.
> 
> Signed-off-by: Sohaib Mohamed <sohaib.amhmd@gmail.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/arm/boards/Makefile                    |  1 +
>  arch/arm/boards/dhcor-stm32mp1/Makefile     |  2 ++
>  arch/arm/boards/dhcor-stm32mp1/board.c      | 47 +++++++++++++++++++++++++++++
>  arch/arm/configs/multi_v7_defconfig         |  2 ++
>  arch/arm/configs/stm32mp_defconfig          |  2 ++
>  arch/arm/dts/Makefile                       |  1 +
>  arch/arm/dts/stm32mp157a-dhcor-stm32mp1.dts |  4 +++
>  arch/arm/mach-stm32mp/Kconfig               |  4 +++
>  8 files changed, 63 insertions(+)
> 
> diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
> index f73285ede9..f75277bc17 100644
> --- a/arch/arm/boards/Makefile
> +++ b/arch/arm/boards/Makefile
> @@ -135,6 +135,7 @@ obj-$(CONFIG_MACH_LXA_MC1)			+= lxa-mc1/
>  obj-$(CONFIG_MACH_LXA_TAC)			+= lxa-tac/
>  obj-$(CONFIG_MACH_LXA_FAIRYTUX2)		+= lxa-fairytux2/
>  obj-$(CONFIG_MACH_STM32MP15X_EV1)		+= stm32mp15x-ev1/
> +obj-$(CONFIG_MACH_DHCOR_STM32MP1)		+= dhcor-stm32mp1/
>  obj-$(CONFIG_MACH_TECHNEXION_PICO_HOBBIT)	+= technexion-pico-hobbit/
>  obj-$(CONFIG_MACH_TECHNEXION_WANDBOARD)		+= technexion-wandboard/
>  obj-$(CONFIG_MACH_TNY_A9260)			+= tny-a926x/
> diff --git a/arch/arm/boards/dhcor-stm32mp1/Makefile b/arch/arm/boards/dhcor-stm32mp1/Makefile
> new file mode 100644
> index 0000000000..bcca1a9f84
> --- /dev/null
> +++ b/arch/arm/boards/dhcor-stm32mp1/Makefile
> @@ -0,0 +1,2 @@
> +# SPDX-License-Identifier: GPL-2.0+
> +obj-y += board.o
> diff --git a/arch/arm/boards/dhcor-stm32mp1/board.c b/arch/arm/boards/dhcor-stm32mp1/board.c
> new file mode 100644
> index 0000000000..2a02942d6c
> --- /dev/null
> +++ b/arch/arm/boards/dhcor-stm32mp1/board.c
> @@ -0,0 +1,47 @@
> +// SPDX-License-Identifier: GPL-2.0
> +// SPDX-FileCopyrightText: Copyright (c) 2025, Sohaib Mohamed <sohaib.amhmd@gmail.com>
> +#include <filetype.h>
> +#include <common.h>
> +#include <init.h>
> +#include <asm/memory.h>
> +#include <mach/stm32mp/bbu.h>
> +#include <bootsource.h>
> +#include <of.h>
> +
> +static int dhcor_stm32mp1_probe(struct device *dev)
> +{
> +	int emmc_bbu_flag = 0;
> +	int sd_bbu_flag = 0;
> +	int nor_bbu_flag = 0;
> +
> +	if (bootsource_get() == BOOTSOURCE_MMC) {
> +		if (bootsource_get_instance() == 2)
> +			emmc_bbu_flag = BBU_HANDLER_FLAG_DEFAULT;
> +		else
> +			sd_bbu_flag = BBU_HANDLER_FLAG_DEFAULT;
> +	} else if (bootsource_get() == BOOTSOURCE_NOR) {
> +		nor_bbu_flag = BBU_HANDLER_FLAG_DEFAULT;
> +	} else {
> +		emmc_bbu_flag = BBU_HANDLER_FLAG_DEFAULT;
> +	}
> +
> +	stm32mp_bbu_mmc_fip_register("sd", "/dev/mmc0", sd_bbu_flag);
> +	stm32mp_bbu_mmc_fip_register("emmc", "/dev/mmc1", emmc_bbu_flag);
> +	stm32mp_bbu_nor_fip_register("nor", "/dev/m25p0", nor_bbu_flag);
> +
> +	return 0;
> +}
> +
> +static const struct of_device_id dhcor_stm32mp1_of_match[] = {
> +	{ .compatible = "dh,stm32mp157a-dhcor-som" },
> +	{ /* sentinel */ },
> +};
> +MODULE_DEVICE_TABLE(of, dhcor_stm32mp1_of_match);
> +BAREBOX_DEEP_PROBE_ENABLE(dhcor_stm32mp1_of_match);
> +
> +static struct driver dhcor_stm32mp1_driver = {
> +	.name = "dhcor_stm32mp1",
> +	.probe = dhcor_stm32mp1_probe,
> +	.of_compatible = dhcor_stm32mp1_of_match,
> +};
> +device_platform_driver(dhcor_stm32mp1_driver);
> diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
> index 93f79c79d2..ef4e106148 100644
> --- a/arch/arm/configs/multi_v7_defconfig
> +++ b/arch/arm/configs/multi_v7_defconfig
> @@ -82,6 +82,7 @@ CONFIG_MACH_STM32MP15XX_DKX=y
>  CONFIG_MACH_LXA_MC1=y
>  CONFIG_MACH_LXA_TAC=y
>  CONFIG_MACH_LXA_FAIRYTUX2=y
> +CONFIG_MACH_DHCOR_STM32MP1=y
>  CONFIG_MACH_SEEED_ODYSSEY=y
>  CONFIG_MACH_STM32MP15X_EV1=y
>  CONFIG_MACH_PROTONIC_STM32MP1=y
> @@ -214,6 +215,7 @@ CONFIG_DEEP_PROBE_DEFAULT=y
>  CONFIG_OF_BAREBOX_DRIVERS=y
>  CONFIG_AIODEV=y
>  CONFIG_STM32_ADC=y
> +CONFIG_STM32_QSPI=y
>  CONFIG_SERIAL_AMBA_PL011=y
>  CONFIG_DRIVER_SERIAL_STM32=y
>  CONFIG_DRIVER_SERIAL_NS16550=y
> diff --git a/arch/arm/configs/stm32mp_defconfig b/arch/arm/configs/stm32mp_defconfig
> index 4df7b371f3..1d1b75fbb0 100644
> --- a/arch/arm/configs/stm32mp_defconfig
> +++ b/arch/arm/configs/stm32mp_defconfig
> @@ -4,6 +4,7 @@ CONFIG_MACH_STM32MP15XX_DKX=y
>  CONFIG_MACH_LXA_MC1=y
>  CONFIG_MACH_LXA_TAC=y
>  CONFIG_MACH_LXA_FAIRYTUX2=y
> +CONFIG_MACH_DHCOR_STM32MP1=y
>  CONFIG_MACH_SEEED_ODYSSEY=y
>  CONFIG_MACH_STM32MP15X_EV1=y
>  CONFIG_MACH_PROTONIC_STM32MP1=y
> @@ -104,6 +105,7 @@ CONFIG_NET_FASTBOOT=y
>  CONFIG_OF_BAREBOX_DRIVERS=y
>  CONFIG_AIODEV=y
>  CONFIG_STM32_ADC=y
> +CONFIG_STM32_QSPI=y
>  CONFIG_DRIVER_SERIAL_STM32=y
>  CONFIG_DRIVER_NET_DESIGNWARE_STM32=y
>  CONFIG_AT803X_PHY=y
> diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
> index e78722a9a7..3cd1d8fe59 100644
> --- a/arch/arm/dts/Makefile
> +++ b/arch/arm/dts/Makefile
> @@ -169,6 +169,7 @@ lwl-$(CONFIG_MACH_LXA_MC1) += stm32mp157c-lxa-mc1.dtb.o stm32mp157c-lxa-mc1-scmi
>  lwl-$(CONFIG_MACH_LXA_TAC) += stm32mp157c-lxa-tac-gen1.dtb.o stm32mp157c-lxa-tac-gen2.dtb.o \
>  				stm32mp153c-lxa-tac-gen3.dtb.o
>  lwl-$(CONFIG_MACH_LXA_FAIRYTUX2) += stm32mp153c-lxa-fairytux2-gen1.dtb.o stm32mp153c-lxa-fairytux2-gen2.dtb.o
> +lwl-$(CONFIG_MACH_DHCOR_STM32MP1) += stm32mp157a-dhcor-stm32mp1.dtb.o
>  lwl-$(CONFIG_MACH_STM32MP15X_EV1) += stm32mp157c-ev1.dtb.o stm32mp157c-ev1-scmi.dtb.o
>  lwl-$(CONFIG_MACH_SCB9328) += imx1-scb9328.dtb.o
>  lwl-$(CONFIG_MACH_TECHNEXION_WANDBOARD) += imx6q-wandboard.dtb.o imx6dl-wandboard.dtb.o
> diff --git a/arch/arm/dts/stm32mp157a-dhcor-stm32mp1.dts b/arch/arm/dts/stm32mp157a-dhcor-stm32mp1.dts
> new file mode 100644
> index 0000000000..5187cc882f
> --- /dev/null
> +++ b/arch/arm/dts/stm32mp157a-dhcor-stm32mp1.dts
> @@ -0,0 +1,4 @@
> +// SPDX-License-Identifier: GPL-2.0 OR BSD-3-Clause
> +
> +#include <arm/st/stm32mp157a-dhcor-avenger96.dts>
> +#include "stm32mp151.dtsi"
> diff --git a/arch/arm/mach-stm32mp/Kconfig b/arch/arm/mach-stm32mp/Kconfig
> index 5ea0c4004f..54ce644d73 100644
> --- a/arch/arm/mach-stm32mp/Kconfig
> +++ b/arch/arm/mach-stm32mp/Kconfig
> @@ -39,6 +39,10 @@ config MACH_LXA_FAIRYTUX2
>  	bool "Linux Automation FairyTux 2"
>  	select BOARD_LXA
>  
> +config MACH_DHCOR_STM32MP1
> +	select ARCH_STM32MP157
> +	bool "DHCOR STM32MP1 boards including Arrow Avenger96"
> +
>  config MACH_SEEED_ODYSSEY
>  	select ARCH_STM32MP157
>  	bool "Seeed Studio Odyssey"
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



