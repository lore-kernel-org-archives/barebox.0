Delivery-date: Wed, 17 Nov 2021 15:08:04 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mnLbY-0000Yi-Bz
	for lore@lore.pengutronix.de; Wed, 17 Nov 2021 15:08:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mnLbW-00021x-2Z
	for lore@pengutronix.de; Wed, 17 Nov 2021 15:08:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=s2nLcusmMWo0qbddEfX8qPM2bfsqzvoh3IONtre1BEU=; b=vAu6naBI2p15j7c2ImlvcAozaD
	YWvdNHpWhsEM7u/yk/WG7b1evNTmT7nHzHzBQ3vLWYGZ88rr3QuEjKG6vBA2YyCpbGyn3h9gIYnyI
	Fgt6D47Lcu6cSBPQ6pzuKXyYSrCB3j/L2Fv6FebUiwchdEQcgBHTPyjWiP4jH6uSm104CTp1m+9pm
	ekDiZktAz6VvKvsP+J1H5+xm3aSBv/2+jgpBq3cEtYW1BfmU6qefH6Bq9HjwUI/F8t27WjRFhJtGj
	tYCeVAJU5ZnR8m11K9c1cWTHFNwWx9NH9Q9aitRRNTEAlDXsJ8LdAl3yRfhA9BLIsXR2+5IK9ondL
	n7OtPVNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnLZl-0050ws-Fg; Wed, 17 Nov 2021 14:06:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnLZd-0050vL-Hd
 for barebox@lists.infradead.org; Wed, 17 Nov 2021 14:06:09 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1mnLZa-0001Wk-Ha; Wed, 17 Nov 2021 15:06:02 +0100
To: Oleksij Rempel <o.rempel@pengutronix.de>, barebox@lists.infradead.org
Cc: David Jander <david@protonic.nl>
References: <20211117113819.2015599-1-o.rempel@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <1e26e68c-5e9c-d729-867b-65568d61e56b@pengutronix.de>
Date: Wed, 17 Nov 2021 15:06:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211117113819.2015599-1-o.rempel@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211117_060605_970528_0035CA68 
X-CRM114-Status: GOOD (  25.51  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1 1/2] arm: boards: Add support for PRTT1x STM32MP151
 based boards
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 17.11.21 12:38, Oleksij Rempel wrote:
> From: David Jander <david@protonic.nl>
> 
> - PRTT1A is a very simple 10Base-T1L Ethernet to 0-10V output converter
>   module.
> - PRTT1S is a CO2- and RH measurement module with 10Base-T1L and PoDL power
>   sink.
> - PRTT1C is a "white box switch" device, meant to control the other members
>   of the PRTT1L family of devices, connected via 10Base-T1L and PoDL power.
> 
> All arch/arm/dts/stm32mp151-prtt1X.dtsi files will be removed after
> kernel mainlining is done.
> 
> Signed-off-by: David Jander <david@protonic.nl>
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  arch/arm/boards/Makefile                     |   1 +
>  arch/arm/boards/protonic-stm32mp1/Makefile   |   2 +
>  arch/arm/boards/protonic-stm32mp1/board.c    |  38 +++
>  arch/arm/boards/protonic-stm32mp1/lowlevel.c |  56 ++++
>  arch/arm/dts/Makefile                        |   4 +
>  arch/arm/dts/stm32mp151-prtt1a.dts           |  36 ++
>  arch/arm/dts/stm32mp151-prtt1a.dtsi          |  38 +++
>  arch/arm/dts/stm32mp151-prtt1c.dts           |  40 +++
>  arch/arm/dts/stm32mp151-prtt1c.dtsi          | 325 +++++++++++++++++++
>  arch/arm/dts/stm32mp151-prtt1l.dtsi          | 264 +++++++++++++++
>  arch/arm/dts/stm32mp151-prtt1s.dts           |  36 ++
>  arch/arm/dts/stm32mp151-prtt1s.dtsi          |  48 +++
>  arch/arm/mach-stm32mp/Kconfig                |   7 +
>  images/Makefile.stm32mp                      |   9 +
>  14 files changed, 904 insertions(+)
>  create mode 100644 arch/arm/boards/protonic-stm32mp1/Makefile
>  create mode 100644 arch/arm/boards/protonic-stm32mp1/board.c
>  create mode 100644 arch/arm/boards/protonic-stm32mp1/lowlevel.c
>  create mode 100644 arch/arm/dts/stm32mp151-prtt1a.dts
>  create mode 100644 arch/arm/dts/stm32mp151-prtt1a.dtsi
>  create mode 100644 arch/arm/dts/stm32mp151-prtt1c.dts
>  create mode 100644 arch/arm/dts/stm32mp151-prtt1c.dtsi
>  create mode 100644 arch/arm/dts/stm32mp151-prtt1l.dtsi
>  create mode 100644 arch/arm/dts/stm32mp151-prtt1s.dts
>  create mode 100644 arch/arm/dts/stm32mp151-prtt1s.dtsi
> 
> diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
> index b7a72d5ba0..08815d79ec 100644
> --- a/arch/arm/boards/Makefile
> +++ b/arch/arm/boards/Makefile
> @@ -107,6 +107,7 @@ obj-$(CONFIG_MACH_PM9263)			+= pm9263/
>  obj-$(CONFIG_MACH_PM9G45)			+= pm9g45/
>  obj-$(CONFIG_MACH_PROTONIC_IMX6)		+= protonic-imx6/
>  obj-$(CONFIG_MACH_PROTONIC_IMX8M)		+= protonic-imx8m/
> +obj-$(CONFIG_MACH_PROTONIC_STM32MP1)		+= protonic-stm32mp1/
>  obj-$(CONFIG_MACH_QIL_A9260)			+= qil-a926x/
>  obj-$(CONFIG_MACH_QIL_A9G20)			+= qil-a926x/
>  obj-$(CONFIG_MACH_RADXA_ROCK)			+= radxa-rock/
> diff --git a/arch/arm/boards/protonic-stm32mp1/Makefile b/arch/arm/boards/protonic-stm32mp1/Makefile
> new file mode 100644
> index 0000000000..092c31d6b2
> --- /dev/null
> +++ b/arch/arm/boards/protonic-stm32mp1/Makefile
> @@ -0,0 +1,2 @@
> +lwl-y += lowlevel.o
> +obj-y += board.o
> diff --git a/arch/arm/boards/protonic-stm32mp1/board.c b/arch/arm/boards/protonic-stm32mp1/board.c
> new file mode 100644
> index 0000000000..7edf7e96ff
> --- /dev/null
> +++ b/arch/arm/boards/protonic-stm32mp1/board.c
> @@ -0,0 +1,38 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +
> +#include <bootsource.h>
> +#include <common.h>
> +#include <init.h>
> +#include <mach/bbu.h>
> +
> +static int t1a_probe(struct device_d *dev)
> +{
> +	int flags;
> +
> +	flags = bootsource_get_instance() == 0 ? BBU_HANDLER_FLAG_DEFAULT : 0;
> +	stm32mp_bbu_mmc_register_handler("sd", "/dev/mmc0.ssbl", flags);
> +
> +	flags = bootsource_get_instance() == 1 ? BBU_HANDLER_FLAG_DEFAULT : 0;
> +	stm32mp_bbu_mmc_register_handler("emmc", "/dev/mmc1.ssbl", flags);
> +
> +	if (bootsource_get_instance() == 0)
> +		of_device_enable_path("/chosen/environment-sd");
> +	else
> +		of_device_enable_path("/chosen/environment-emmc");
> +
> +	return 0;
> +}
> +
> +static const struct of_device_id t1a_of_match[] = {
> +	{ .compatible = "prt,prtt1a" },
> +	{ .compatible = "prt,prtt1c" },
> +	{ .compatible = "prt,prtt1s" },
> +	{ /* sentinel */ },
> +};
> +
> +static struct driver_d t1a_board_driver = {
> +	.name = "board-prtt1l",
> +	.probe = t1a_probe,
> +	.of_compatible = t1a_of_match,
> +};
> +postcore_platform_driver(t1a_board_driver);
> diff --git a/arch/arm/boards/protonic-stm32mp1/lowlevel.c b/arch/arm/boards/protonic-stm32mp1/lowlevel.c
> new file mode 100644
> index 0000000000..6bbbf3e067
> --- /dev/null
> +++ b/arch/arm/boards/protonic-stm32mp1/lowlevel.c
> @@ -0,0 +1,56 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +#include <common.h>
> +#include <mach/entry.h>
> +#include <debug_ll.h>
> +
> +extern char __dtb_z_stm32mp151_prtt1a_start[];
> +extern char __dtb_z_stm32mp151_prtt1c_start[];
> +extern char __dtb_z_stm32mp151_prtt1s_start[];
> +
> +static void setup_uart(void)
> +{
> +	/* first stage has set up the UART, so nothing to do here */
> +	putc_ll('>');
> +}
> +
> +ENTRY_FUNCTION(start_prtt1a, r0, r1, r2)
> +{
> +	void *fdt;
> +
> +	stm32mp_cpu_lowlevel_init();
> +
> +	if (IS_ENABLED(CONFIG_DEBUG_LL))
> +		setup_uart();
> +
> +	fdt = __dtb_z_stm32mp151_prtt1a_start + get_runtime_offset();
> +
> +	stm32mp1_barebox_entry(fdt);
> +}
> +
> +ENTRY_FUNCTION(start_prtt1c, r0, r1, r2)
> +{
> +	void *fdt;
> +
> +	stm32mp_cpu_lowlevel_init();
> +
> +	if (IS_ENABLED(CONFIG_DEBUG_LL))
> +		setup_uart();
> +
> +	fdt = __dtb_z_stm32mp151_prtt1c_start + get_runtime_offset();
> +
> +	stm32mp1_barebox_entry(fdt);
> +}
> +
> +ENTRY_FUNCTION(start_prtt1s, r0, r1, r2)
> +{
> +	void *fdt;
> +
> +	stm32mp_cpu_lowlevel_init();
> +
> +	if (IS_ENABLED(CONFIG_DEBUG_LL))
> +		setup_uart();
> +
> +	fdt = __dtb_z_stm32mp151_prtt1s_start + get_runtime_offset();
> +
> +	stm32mp1_barebox_entry(fdt);
> +}
> diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
> index 7da366bda0..76c96752cd 100644
> --- a/arch/arm/dts/Makefile
> +++ b/arch/arm/dts/Makefile
> @@ -95,6 +95,10 @@ lwl-$(CONFIG_MACH_PROTONIC_IMX6) += \
>  	imx6ul-prti6g.dtb.o \
>  	imx6ull-jozacp.dtb.o
>  lwl-$(CONFIG_MACH_PROTONIC_IMX8M) += imx8mm-prt8mm.dtb.o
> +lwl-$(CONFIG_MACH_PROTONIC_STM32MP1) += \
> +	stm32mp151-prtt1a.dtb.o \
> +	stm32mp151-prtt1c.dtb.o \
> +	stm32mp151-prtt1s.dtb.o
>  lwl-$(CONFIG_MACH_RADXA_ROCK) += rk3188-radxarock.dtb.o
>  lwl-$(CONFIG_MACH_PHYTEC_SOM_RK3288) += rk3288-phycore-som.dtb.o
>  lwl-$(CONFIG_MACH_REALQ7) += imx6q-dmo-edmqmx6.dtb.o
> diff --git a/arch/arm/dts/stm32mp151-prtt1a.dts b/arch/arm/dts/stm32mp151-prtt1a.dts
> new file mode 100644
> index 0000000000..576ad54a28
> --- /dev/null
> +++ b/arch/arm/dts/stm32mp151-prtt1a.dts
> @@ -0,0 +1,36 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR X11)
> +
> +#include "stm32mp151-prtt1a.dtsi"
> +#include "stm32mp151.dtsi"
> +
> +/ {
> +	chosen {
> +		environment-sd {
> +			compatible = "barebox,environment";
> +			device-path = &sdmmc1, "partname:barebox-environment";
> +			status = "okay";
> +		};
> +
> +		environment-emmc {
> +			compatible = "barebox,environment";
> +			device-path = &sdmmc2, "partname:barebox-environment";
> +			status = "okay";
> +		};
> +	};
> +};
> +
> +&usbh_ehci {
> +	status = "disabled";
> +};
> +
> +&usbotg_hs {
> +	status = "disabled";
> +};
> +
> +&usbphyc {
> +	status = "disabled";
> +};
> +
> +&usbphyc_port1 {
> +	status = "disabled";
> +};
> diff --git a/arch/arm/dts/stm32mp151-prtt1a.dtsi b/arch/arm/dts/stm32mp151-prtt1a.dtsi
> new file mode 100644
> index 0000000000..5042111742
> --- /dev/null
> +++ b/arch/arm/dts/stm32mp151-prtt1a.dtsi
> @@ -0,0 +1,38 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
> +/*
> + * Copyright (C) Protonic Holland
> + * Author: David Jander <david@protonic.nl>
> + */
> +/dts-v1/;
> +
> +#include "stm32mp151-prtt1l.dtsi"
> +
> +/ {
> +	model = "Protonic PRTT1A";
> +	compatible = "prt,prtt1a", "st,stm32mp151";
> +};
> +
> +&timers5 {
> +	status = "okay";
> +	pwm {
> +		pinctrl-0 = <&pwm5_pins_a>;
> +		pinctrl-1 = <&pwm5_sleep_pins_a>;
> +		pinctrl-names = "default", "sleep";
> +		status = "okay";
> +	};
> +	timer@1 {
> +		status = "okay";
> +	};
> +};
> +
> +&pwm5_pins_a {
> +	pins {
> +		pinmux = <STM32_PINMUX('A', 0, AF2)>; /* TIM5_CH1 */
> +	};
> +};
> +
> +&pwm5_sleep_pins_a {
> +	pins {
> +		pinmux = <STM32_PINMUX('A', 0, ANALOG)>; /* TIM5_CH1 */
> +	};
> +};
> diff --git a/arch/arm/dts/stm32mp151-prtt1c.dts b/arch/arm/dts/stm32mp151-prtt1c.dts
> new file mode 100644
> index 0000000000..658d691913
> --- /dev/null
> +++ b/arch/arm/dts/stm32mp151-prtt1c.dts
> @@ -0,0 +1,40 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR X11)
> +
> +#include "stm32mp151-prtt1c.dtsi"
> +#include "stm32mp151.dtsi"
> +
> +/ {
> +	chosen {
> +		environment-sd {
> +			compatible = "barebox,environment";
> +			device-path = &sdmmc1, "partname:barebox-environment";
> +			status = "okay";
> +		};
> +
> +		environment-emmc {
> +			compatible = "barebox,environment";
> +			device-path = &sdmmc2, "partname:barebox-environment";
> +			status = "okay";
> +		};
> +	};
> +};
> +
> +&sdmmc3 {
> +	status = "disabled";
> +};
> +
> +&usbh_ehci {
> +	status = "disabled";
> +};
> +
> +&usbotg_hs {
> +	status = "disabled";
> +};
> +
> +&usbphyc {
> +	status = "disabled";
> +};
> +
> +&usbphyc_port1 {
> +	status = "disabled";
> +};
> diff --git a/arch/arm/dts/stm32mp151-prtt1c.dtsi b/arch/arm/dts/stm32mp151-prtt1c.dtsi
> new file mode 100644
> index 0000000000..c8951a0705
> --- /dev/null
> +++ b/arch/arm/dts/stm32mp151-prtt1c.dtsi
> @@ -0,0 +1,325 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
> +/*
> + * Copyright (C) Protonic Holland
> + * Author: David Jander <david@protonic.nl>
> + */
> +/dts-v1/;
> +
> +#include "stm32mp151-prtt1l.dtsi"
> +
> +/ {
> +	model = "Protonic PRTT1C";
> +	compatible = "prt,prtt1c", "st,stm32mp151";
> +
> +	clock_sja1105: clock-sja1105 {
> +		compatible = "fixed-clock";
> +		#clock-cells = <0>;
> +		clock-frequency = <25000000>;
> +	};
> +
> +	wfx_pwrseq: wfx_pwrseq {
> +		compatible = "mmc-pwrseq-simple";
> +		reset-gpios = <&gpiod 8 GPIO_ACTIVE_LOW>;
> +	};
> +};
> +
> +&qspi {
> +	status = "disabled";
> +};
> +
> +&ethernet0 {
> +	/delete-property/phy-reset-gpios;
> +	max-speed = <100>;
> +
> +	fixed-link {
> +		speed = <100>;
> +		full-duplex;
> +	};
> +
> +	mdio0 {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		compatible = "snps,dwmac-mdio";
> +
> +		/* Switch port 0, DP83TD510 * /
> +		t1l0_phy: ethernet-phy@6 {
> +			compatible = "ethernet-phy-ieee802.3-c22";
> +			reg = <6>;
> +			max-speed = <10>;
> +			interrupt-parent = <&gpioa>;
> +			interrupts = <4 IRQ_TYPE_LEVEL_LOW>;
> +			reset-gpios = <&gpioa 3 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		/* Switch port 1, DP83TD510 * /
> +		t1l1_phy: ethernet-phy@7 {
> +			compatible = "ethernet-phy-ieee802.3-c22";
> +			reg = <7>;
> +			max-speed = <10>;
> +			interrupt-parent = <&gpiog>;
> +			interrupts = <8 IRQ_TYPE_LEVEL_LOW>;
> +			reset-gpios = <&gpiog 12 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		/* Switch port 2, DP83TD510 * /
> +		t1l2_phy: ethernet-phy@10 {
> +			compatible = "ethernet-phy-ieee802.3-c22";
> +			reg = <10>;
> +			max-speed = <10>;
> +			interrupt-parent = <&gpiog>;
> +			interrupts = <10 IRQ_TYPE_LEVEL_LOW>;
> +			reset-gpios = <&gpiog 11 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		/* Switch port 3, KSZ9131 */
> +		rj45_phy: ethernet-phy@2 {
> +			reg = <2>;
> +			max-speed = <100>;
> +			interrupt-parent = <&gpiog>;
> +			interrupts = <7 IRQ_TYPE_LEVEL_LOW>;
> +			reset-gpios = <&gpiog 9 GPIO_ACTIVE_LOW>;
> +		};
> +	};
> +};
> +
> +&spi1 {
> +	/delete-property/dmas;
> +	/delete-property/dma-names;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&spi1_pins_a1>;
> +	cs-gpios = <&gpioa 15 GPIO_ACTIVE_LOW>;
> +	status = "okay";
> +
> +	switch@0 {
> +		compatible = "nxp,sja1105q";
> +		reg = <0>;
> +		spi-max-frequency = <4000000>;
> +		spi-rx-delay-us = <1>;
> +		spi-tx-delay-us = <1>;
> +		spi-cpha;
> +
> +		reset-gpios = <&gpioe 6 GPIO_ACTIVE_LOW>;
> +
> +		clocks = <&clock_sja1105>;
> +
> +		ports {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			port@0 {
> +				reg = <0>;
> +				label = "t1l0";
> +				phy-mode = "rmii";
> +
> +				fixed-link {
> +					speed = <10>;
> +					full-duplex;
> +				};
> +			};
> +
> +			port@1 {
> +				reg = <1>;
> +				label = "t1l1";
> +				phy-mode = "rmii";
> +
> +				fixed-link {
> +					speed = <10>;
> +					full-duplex;
> +				};
> +			};
> +
> +			port@2 {
> +				reg = <2>;
> +				label = "t1l2";
> +				phy-mode = "rmii";
> +
> +				fixed-link {
> +					speed = <10>;
> +					full-duplex;
> +				};
> +			};
> +
> +			port@3 {
> +				reg = <3>;
> +				label = "rj45";
> +				phy-handle = <&rj45_phy>;
> +				phy-mode = "rgmii-id";
> +			};
> +
> +			port@4 {
> +				reg = <4>;
> +				label = "cpu";
> +				ethernet = <&ethernet0>;
> +				phy-mode = "rmii";
> +
> +				fixed-link {
> +					speed = <100>;
> +					full-duplex;
> +				};
> +			};
> +		};
> +	};
> +};
> +
> +&sdmmc2 {
> +	pinctrl-names = "default", "opendrain", "sleep";
> +	pinctrl-0 = <&sdmmc2_b4_pins_a &sdmmc2_d47_pins_a>;
> +	pinctrl-1 = <&sdmmc2_b4_od_pins_a &sdmmc2_d47_pins_a>;
> +	pinctrl-2 = <&sdmmc2_b4_sleep_pins_a &sdmmc2_d47_sleep_pins_a>;
> +	disable-wp;
> +	disable-cd;
> +	none-removable;
> +	no-sd;
> +	no-sdio;
> +	no-1-8-v;
> +	st,neg-edge;
> +	bus-width = <8>;
> +	vmmc-supply = <&v3v3>;
> +	vqmmc-supply = <&v3v3>;
> +	status = "okay";
> +};
> +
> +&sdmmc3 {
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +	pinctrl-names = "default", "opendrain", "sleep";
> +	pinctrl-0 = <&sdmmc3_b4_pins_b>;
> +	pinctrl-1 = <&sdmmc3_b4_od_pins_b>;
> +	pinctrl-2 = <&sdmmc3_b4_sleep_pins_b>;
> +	disable-wp;
> +	disable-cd;
> +	none-removable;
> +	no-1-8-v;
> +	st,neg-edge;
> +	sd-uhs-sdr12;
> +	sd-uhs-sdr25;
> +	bus-width = <4>;
> +	vmmc-supply = <&v3v3>;
> +	vqmmc-supply = <&v3v3>;
> +        mmc-pwrseq = <&wfx_pwrseq>;
> +	status = "okay";
> +
> +	mmc@1 {
> +		compatible = "silabs,wf200";
> +		reg = <1>;
> +	};
> +};
> +
> +&pinctrl {
> +	spi1_pins_a1: spi1-0 {
> +		pins1 {
> +			pinmux = <STM32_PINMUX('A', 5, AF5)>, /* SPI1_SCK */
> +				 <STM32_PINMUX('B', 5, AF5)>; /* SPI1_MOSI */
> +			bias-disable;
> +			drive-push-pull;
> +			slew-rate = <1>;
> +		};
> +
> +		pins2 {
> +			pinmux = <STM32_PINMUX('A', 6, AF5)>; /* SPI1_MISO */
> +			bias-disable;
> +		};
> +	};
> +};
> +
> +&sdmmc2_b4_pins_a {
> +	pins1 {
> +		pinmux = <STM32_PINMUX('B', 14, AF9)>, /* SDMMC2_D0 */
> +			 <STM32_PINMUX('B', 7, AF10)>, /* SDMMC2_D1 */
> +			 <STM32_PINMUX('B', 3, AF9)>, /* SDMMC2_D2 */
> +			 <STM32_PINMUX('B', 4, AF9)>, /* SDMMC2_D3 */
> +			 <STM32_PINMUX('G', 6, AF10)>; /* SDMMC2_CMD */
> +	};
> +};
> +
> +&sdmmc2_b4_od_pins_a {
> +	pins1 {
> +		pinmux = <STM32_PINMUX('B', 14, AF9)>, /* SDMMC2_D0 */
> +			 <STM32_PINMUX('B', 7, AF10)>, /* SDMMC2_D1 */
> +			 <STM32_PINMUX('B', 3, AF9)>, /* SDMMC2_D2 */
> +			 <STM32_PINMUX('B', 4, AF9)>; /* SDMMC2_D3 */
> +	};
> +};
> +
> +&sdmmc2_b4_sleep_pins_a {
> +	pins {
> +		pinmux = <STM32_PINMUX('B', 14, ANALOG)>, /* SDMMC2_D0 */
> +			 <STM32_PINMUX('B', 7, ANALOG)>, /* SDMMC2_D1 */
> +			 <STM32_PINMUX('B', 3, ANALOG)>, /* SDMMC2_D2 */
> +			 <STM32_PINMUX('B', 4, ANALOG)>, /* SDMMC2_D3 */
> +			 <STM32_PINMUX('E', 3, ANALOG)>, /* SDMMC2_CK */
> +			 <STM32_PINMUX('G', 6, ANALOG)>; /* SDMMC2_CMD */
> +	};
> +};
> +
> +&sdmmc2_d47_pins_a {
> +	pins {
> +		pinmux = <STM32_PINMUX('A', 8, AF9)>, /* SDMMC2_D4 */
> +			 <STM32_PINMUX('A', 9, AF10)>, /* SDMMC2_D5 */
> +			 <STM32_PINMUX('C', 6, AF10)>, /* SDMMC2_D6 */
> +			 <STM32_PINMUX('C', 7, AF10)>; /* SDMMC2_D7 */
> +	};
> +};
> +
> +&sdmmc2_d47_sleep_pins_a {
> +	pins {
> +		pinmux = <STM32_PINMUX('A', 8, ANALOG)>, /* SDMMC2_D4 */
> +			 <STM32_PINMUX('A', 9, ANALOG)>, /* SDMMC2_D5 */
> +			 <STM32_PINMUX('C', 6, ANALOG)>, /* SDMMC2_D6 */
> +			 <STM32_PINMUX('D', 3, ANALOG)>; /* SDMMC2_D7 */
> +	};
> +};
> +
> +&sdmmc3_b4_pins_b {
> +	pins1 {
> +		pinmux = <STM32_PINMUX('D', 1, AF10)>, /* SDMMC3_D0 */
> +			 <STM32_PINMUX('D', 4, AF10)>, /* SDMMC3_D1 */
> +			 <STM32_PINMUX('D', 5, AF10)>, /* SDMMC3_D2 */
> +			 <STM32_PINMUX('D', 7, AF10)>, /* SDMMC3_D3 */
> +			 <STM32_PINMUX('D', 0, AF10)>; /* SDMMC3_CMD */
> +	};
> +};
> +
> +&sdmmc3_b4_od_pins_b {
> +	pins1 {
> +		pinmux = <STM32_PINMUX('D', 1, AF10)>, /* SDMMC3_D0 */
> +			 <STM32_PINMUX('D', 4, AF10)>, /* SDMMC3_D1 */
> +			 <STM32_PINMUX('D', 5, AF10)>, /* SDMMC3_D2 */
> +			 <STM32_PINMUX('D', 7, AF10)>; /* SDMMC3_D3 */
> +	};
> +};
> +
> +&sdmmc3_b4_sleep_pins_b {
> +	pins {
> +		pinmux = <STM32_PINMUX('D', 1, ANALOG)>, /* SDMMC3_D0 */
> +			 <STM32_PINMUX('D', 4, ANALOG)>, /* SDMMC3_D1 */
> +			 <STM32_PINMUX('D', 5, ANALOG)>, /* SDMMC3_D2 */
> +			 <STM32_PINMUX('D', 7, ANALOG)>, /* SDMMC3_D3 */
> +			 <STM32_PINMUX('G', 15, ANALOG)>, /* SDMMC3_CK */
> +			 <STM32_PINMUX('D', 0, ANALOG)>; /* SDMMC3_CMD */
> +	};
> +};
> +
> +&gpioa {
> +	gpio-line-names =
> +		"", "", "", "PHY0_nRESET", "PHY0_nINT", "", "", "",
> +		"", "", "", "", "", "", "", "SPI1_nSS";
> +};
> +
> +&gpiod {
> +	gpio-line-names =
> +		"", "", "", "", "", "", "", "",
> +		"WFM_RESET", "", "", "", "", "", "", "";
> +};
> +
> +&gpioe {
> +	gpio-line-names =
> +		"SDMMC2_nRESET", "", "", "", "", "", "SPI1_nRESET", "",
> +		"", "", "", "", "WFM_nIRQ", "", "", "";
> +};
> +
> +&gpiog {
> +	gpio-line-names =
> +		"", "", "", "", "", "", "", "PHY3_nINT",
> +		"PHY1_nINT", "PHY3_nRESET", "PHY2_nINT", "PHY2_nRESET", "PHY1_nRESET", "SPE1_PWR", "SPE0_PWR", "";
> +};
> diff --git a/arch/arm/dts/stm32mp151-prtt1l.dtsi b/arch/arm/dts/stm32mp151-prtt1l.dtsi
> new file mode 100644
> index 0000000000..a7360f8156
> --- /dev/null
> +++ b/arch/arm/dts/stm32mp151-prtt1l.dtsi
> @@ -0,0 +1,264 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
> +/*
> + * Copyright (C) Protonic Holland
> + * Author: David Jander <david@protonic.nl>
> + */
> +/dts-v1/;
> +
> +#include <arm/stm32mp151.dtsi>
> +#include <arm/stm32mp15-pinctrl.dtsi>
> +#include <arm/stm32mp15xxad-pinctrl.dtsi>
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +
> +/ {
> +	chosen {
> +		stdout-path = "serial0:115200n8";
> +	};
> +
> +	aliases {
> +		serial0 = &uart4;
> +		ethernet0 = &ethernet0;
> +	};
> +
> +	memory@c0000000 {
> +		device_type = "memory";
> +		reg = <0xC0000000 0x10000000>;
> +	};
> +
> +	v3v3: fixed-regulator-v3v3 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "v3v3";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		regulator-always-on;
> +		regulator-boot-on;
> +	};
> +
> +	led {
> +		compatible = "gpio-leds";
> +
> +		led-0 {
> +			label = "debug:red";
> +			gpios = <&gpioa 13 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		led-1 {
> +			label = "debug:green";
> +			gpios = <&gpioa 14 GPIO_ACTIVE_LOW>;
> +			linux,default-trigger = "heartbeat";
> +		};
> +	};
> +
> +};
> +
> +&ethernet0 {
> +	status = "okay";
> +	pinctrl-0 = <&ethernet0_rmii_pins_a>;
> +	pinctrl-1 = <&ethernet0_rmii_sleep_pins_a>;
> +	pinctrl-names = "default", "sleep";
> +	phy-mode = "rmii";
> +	phy-reset-gpios = <&gpioa 3 GPIO_ACTIVE_LOW>;
> +	max-speed = <10>;
> +/*
> +	fixed-link {
> +		speed = <10>;
> +		full-duplex;
> +	};
> +*/
> +	phy-handle = <&phy0>;
> +
> +	mdio0 {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		compatible = "snps,dwmac-mdio";
> +		phy0: ethernet-phy@0 {
> +			reg = <0>;
> +			interrupt-parent = <&gpioa>;
> +			interrupts = <4 IRQ_TYPE_LEVEL_LOW>;
> +		};
> +	};
> +};
> +
> +&qspi {
> +	pinctrl-names = "default", "sleep";
> +	pinctrl-0 = <&qspi_clk_pins_a &qspi_bk1_pins_a>;
> +	pinctrl-1 = <&qspi_clk_sleep_pins_a &qspi_bk1_sleep_pins_a>;
> +	reg = <0x58003000 0x1000>, <0x70000000 0x4000000>;
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +	status = "okay";
> +
> +	flash0: w25n512gvpit@0 {
> +		compatible = "jedec,spi-nand";
> +		reg = <0>;
> +		spi-rx-bus-width = <4>;
> +		spi-max-frequency = <104000000>;
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +
> +		partitions {
> +			compatible = "fixed-partitions";
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +
> +			fsbl1@0 {
> +				label = "fsbl1";
> +				reg = <0x0 0x40000>;
> +			};
> +
> +			fsbl2@40000 {
> +				label = "fsbl2";
> +				reg = <0x40000 0x40000>;
> +			};
> +
> +			ssbl@80000 {
> +				label = "fsbl2";

This should say ssbl, not fsbl2.

> +				reg = <0x80000 0x100000>;
> +			};
> +
> +			ubi@180000 {
> +				label = "ubi";
> +				reg = <0x180000 0x3e80000>;
> +			};			
> +		};
> +	};
> +};
> +
> +&usbh_ehci {
> +	phys = <&usbphyc_port0>;
> +	phy-names = "usb";
> +	status = "okay";
> +};
> +
> +&usbotg_hs {
> +	dr_mode = "host";
> +	pinctrl-0 = <&usbotg_hs_pins_a>;
> +	pinctrl-names = "default";
> +	phys = <&usbphyc_port1 0>;
> +	phy-names = "usb2-phy";
> +	status = "okay";
> +};
> +
> +&usbphyc {
> +	status = "okay";
> +};
> +
> +&usbphyc_port1 {
> +	phy-supply = <&v3v3>;
> +};
> +
> +&sdmmc1 {
> +	pinctrl-names = "default", "opendrain", "sleep";
> +	pinctrl-0 = <&sdmmc1_b4_pins_a>;
> +	pinctrl-1 = <&sdmmc1_b4_od_pins_a>;
> +	pinctrl-2 = <&sdmmc1_b4_sleep_pins_a>;
> +	/* cd-gpios = <&gpiog 1 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>; */
> +	disable-wp;
> +	disable-cd;
> +	/* st,sig-dir; */
> +	st,neg-edge;
> +	/* st,use-ckin; */
> +	bus-width = <4>;
> +	sd-uhs-sdr12;
> +	sd-uhs-sdr25;
> +	sd-uhs-sdr50;
> +	sd-uhs-ddr50;
> +	vmmc-supply = <&v3v3>;
> +	vqmmc-supply = <&v3v3>;
> +	status = "okay";
> +};
> +
> +&sdmmc1_b4_pins_a {
> +	pins1 {
> +		bias-pull-up;
> +	};
> +	pins2 {
> +		bias-pull-up;
> +	};
> +};
> +
> +&sdmmc1_b4_od_pins_a {
> +	pins1 {
> +		bias-pull-up;
> +	};
> +	pins2 {
> +		bias-pull-up;
> +	};
> +};
> +
> +&uart4 {
> +	pinctrl-names = "default", "sleep", "idle";
> +	pinctrl-0 = <&uart4_pins_a>;
> +	pinctrl-1 = <&uart4_sleep_pins_a>;
> +	pinctrl-2 = <&uart4_idle_pins_a>;
> +	status = "okay";
> +};
> +
> +&uart4_pins_a {
> +	pins1 {
> +		pinmux = <STM32_PINMUX('B', 9, AF8)>; /* UART4_TX */
> +		bias-disable;
> +		drive-push-pull;
> +		slew-rate = <0>;
> +	};
> +	pins2 {
> +		pinmux = <STM32_PINMUX('B', 2, AF8)>; /* UART4_RX */
> +		bias-pull-up;
> +	};
> +};
> +
> +&uart4_idle_pins_a {
> +	pins1 {
> +		pinmux = <STM32_PINMUX('B', 9, ANALOG)>; /* UART4_TX */
> +	};
> +	pins2 {
> +		pinmux = <STM32_PINMUX('B', 2, AF8)>; /* UART4_RX */
> +		bias-pull-up;
> +	};
> +};
> +
> +&uart4_sleep_pins_a {
> +	pins {
> +		pinmux = <STM32_PINMUX('B', 9, ANALOG)>, /* UART4_TX */
> +			<STM32_PINMUX('B', 2, ANALOG)>; /* UART4_RX */
> +	};
> +};
> +
> +&ethernet0_rmii_pins_a {
> +	pins1 {
> +		pinmux = <STM32_PINMUX('B', 12, AF11)>, /* ETH1_RMII_TXD0 */
> +			 <STM32_PINMUX('B', 13, AF11)>, /* ETH1_RMII_TXD1 */
> +			 <STM32_PINMUX('B', 11, AF11)>, /* ETH1_RMII_TX_EN */
> +			 <STM32_PINMUX('A', 2, AF11)>,  /* ETH1_MDIO */
> +			 <STM32_PINMUX('C', 1, AF11)>;  /* ETH1_MDC */
> +	};
> +	pins2 {
> +		pinmux = <STM32_PINMUX('C', 4, AF11)>,  /* ETH1_RMII_RXD0 */
> +			 <STM32_PINMUX('C', 5, AF11)>,  /* ETH1_RMII_RXD1 */
> +			 <STM32_PINMUX('A', 1, AF11)>,  /* ETH1_RMII_REF_CLK input */
> +			 <STM32_PINMUX('A', 7, AF11)>;  /* ETH1_RMII_CRS_DV */
> +	};
> +};
> +
> +&ethernet0_rmii_sleep_pins_a {
> +	pins1 {
> +		pinmux = <STM32_PINMUX('B', 12, ANALOG)>, /* ETH1_RMII_TXD0 */
> +			 <STM32_PINMUX('B', 13, ANALOG)>, /* ETH1_RMII_TXD1 */
> +			 <STM32_PINMUX('B', 11, ANALOG)>, /* ETH1_RMII_TX_EN */
> +			 <STM32_PINMUX('A', 2, ANALOG)>,  /* ETH1_MDIO */
> +			 <STM32_PINMUX('C', 1, ANALOG)>,  /* ETH1_MDC */
> +			 <STM32_PINMUX('C', 4, ANALOG)>,  /* ETH1_RMII_RXD0 */
> +			 <STM32_PINMUX('C', 5, ANALOG)>,  /* ETH1_RMII_RXD1 */
> +			 <STM32_PINMUX('A', 1, ANALOG)>,  /* ETH1_RMII_REF_CLK */
> +			 <STM32_PINMUX('A', 7, ANALOG)>;  /* ETH1_RMII_CRS_DV */
> +	};
> +};
> +
> +&qspi_bk1_pins_a {
> +	pins1 {
> +		bias-pull-up;
> +		drive-push-pull;
> +		slew-rate = <1>;
> +	};
> +};
> diff --git a/arch/arm/dts/stm32mp151-prtt1s.dts b/arch/arm/dts/stm32mp151-prtt1s.dts
> new file mode 100644
> index 0000000000..8949194742
> --- /dev/null
> +++ b/arch/arm/dts/stm32mp151-prtt1s.dts
> @@ -0,0 +1,36 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR X11)
> +
> +#include "stm32mp151-prtt1s.dtsi"
> +#include "stm32mp151.dtsi"
> +
> +/ {
> +	chosen {
> +		environment-sd {
> +			compatible = "barebox,environment";
> +			device-path = &sdmmc1, "partname:barebox-environment";
> +			status = "okay";
> +		};
> +
> +		environment-emmc {
> +			compatible = "barebox,environment";
> +			device-path = &sdmmc2, "partname:barebox-environment";
> +			status = "okay";
> +		};
> +	};
> +};
> +
> +&usbh_ehci {
> +	status = "disabled";
> +};
> +
> +&usbotg_hs {
> +	status = "disabled";
> +};
> +
> +&usbphyc {
> +	status = "disabled";
> +};
> +
> +&usbphyc_port1 {
> +	status = "disabled";
> +};
> diff --git a/arch/arm/dts/stm32mp151-prtt1s.dtsi b/arch/arm/dts/stm32mp151-prtt1s.dtsi
> new file mode 100644
> index 0000000000..0f4638787a
> --- /dev/null
> +++ b/arch/arm/dts/stm32mp151-prtt1s.dtsi
> @@ -0,0 +1,48 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
> +/*
> + * Copyright (C) Protonic Holland
> + * Author: David Jander <david@protonic.nl>
> + */
> +/dts-v1/;
> +
> +#include "stm32mp151-prtt1l.dtsi"
> +
> +/ {
> +	model = "Protonic PRTT1S";
> +	compatible = "prt,prtt1s", "st,stm32mp151";
> +};
> +
> +&i2c1 {
> +	status = "okay";
> +	pinctrl-names = "default", "sleep";
> +	pinctrl-0 = <&i2c1_pins_a>;
> +	pinctrl-1 = <&i2c1_sleep_pins_a>;
> +	clock-frequency = <100000>;
> +	/delete-property/dmas;
> +	/delete-property/dma-names;
> +
> +	hdc1080@40 {
> +		compatible = "ti,hdc1080";
> +		reg = <0x40>;
> +	};
> +
> +	scd41@62 {
> +		compatible = "sensirion,scd41";
> +		reg = <0x62>;
> +	};
> +};
> +
> +
> +&i2c1_pins_a {
> +	pins {
> +		pinmux = <STM32_PINMUX('D', 12, AF5)>, /* I2C1_SCL */
> +			 <STM32_PINMUX('D', 13, AF5)>; /* I2C1_SDA */
> +	};
> +};
> +
> +&i2c1_sleep_pins_a {
> +	pins {
> +		pinmux = <STM32_PINMUX('D', 12, ANALOG)>, /* I2C1_SCL */
> +			 <STM32_PINMUX('D', 13, ANALOG)>; /* I2C1_SDA */
> +	};
> +};
> diff --git a/arch/arm/mach-stm32mp/Kconfig b/arch/arm/mach-stm32mp/Kconfig
> index 95d3dc510d..8328eb899a 100644
> --- a/arch/arm/mach-stm32mp/Kconfig
> +++ b/arch/arm/mach-stm32mp/Kconfig
> @@ -31,4 +31,11 @@ config MACH_STM32MP15X_EV1
>  	  as SSBL on any STM32MP15X-EVAL platform, like the
>  	  STM32MP157C-EV1
>  
> +config MACH_PROTONIC_STM32MP1
> +	select ARCH_STM32MP157
> +	bool "Protonic PRTT1L family of boards"
> +	help
> +	  Builds all barebox-prtt1*.img that can be deployed as SSBL
> +	  on the respective PRTT1L family board
> +
>  endif
> diff --git a/images/Makefile.stm32mp b/images/Makefile.stm32mp
> index 3384f5014b..17f03908b0 100644
> --- a/images/Makefile.stm32mp
> +++ b/images/Makefile.stm32mp
> @@ -23,6 +23,15 @@ FILE_barebox-stm32mp157c-lxa-mc1.img = start_stm32mp157c_lxa_mc1.pblb.stm32
>  OPTS_start_stm32mp157c_lxa_mc1.pblb.stm32 = $(STM32MP1_OPTS)
>  image-$(CONFIG_MACH_LXA_MC1) += barebox-stm32mp157c-lxa-mc1.img
>  
> +pblb-$(CONFIG_MACH_PROTONIC_STM32MP1) += start_prtt1a start_prtt1s start_prtt1c
> +FILE_barebox-prtt1a.img = start_prtt1a.pblb.stm32
> +FILE_barebox-prtt1c.img = start_prtt1c.pblb.stm32
> +FILE_barebox-prtt1s.img = start_prtt1s.pblb.stm32
> +OPTS_start_prtt1a.pblb.stm32 = $(STM32MP1_OPTS)
> +OPTS_start_prtt1c.pblb.stm32 = $(STM32MP1_OPTS)
> +OPTS_start_prtt1s.pblb.stm32 = $(STM32MP1_OPTS)
> +image-$(CONFIG_MACH_PROTONIC_STM32MP1) += barebox-prtt1a.img barebox-prtt1s.img barebox-prtt1c.img
> +
>  pblb-$(CONFIG_MACH_SEEED_ODYSSEY) += start_stm32mp157c_seeed_odyssey
>  FILE_barebox-stm32mp157c-seeed-odyssey.img = start_stm32mp157c_seeed_odyssey.pblb.stm32
>  OPTS_start_stm32mp157c_seeed_odyssey.pblb.stm32 = $(STM32MP1_OPTS)
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

