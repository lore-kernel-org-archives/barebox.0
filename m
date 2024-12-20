Delivery-date: Fri, 20 Dec 2024 09:46:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tOYeq-00ANhV-12
	for lore@lore.pengutronix.de;
	Fri, 20 Dec 2024 09:46:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tOYep-0004q3-B4
	for lore@pengutronix.de; Fri, 20 Dec 2024 09:46:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=w2LhPqREEmofs/Yk8lcuIcfZpp1R5Re+pQZ+ZnhQAVM=; b=EzhfsoE0ibZxBBRII5ocBgH1E4
	76CbWIVqznKeoGUgZVaArliYDHeItC2QySo0YsCdBFR/T6kHMoECKZgFLtz40qKufW6jYQVVpoWbX
	agH2JFl2pjwdKRPA9OghVdN5pG8rq9MfOKqEvkDeRFC/4okOAkdipOM05MmEo5kr7QF2+KUX8VO3W
	g8m0c4/fDmN27Z0aJtzHXe67htBEiBFkcYizH5XT45fHnZ5I9+iv0LatTKAsPm31idytpih0Lo/cW
	o6pvmtLLawxHzoCF6CrQoernfkuQaLmP9fD60VkMRlWifYYwYB4T9MQVuK7THDvWY4Ptg3O23tIMD
	7yUh2ISw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOYeN-00000004K1t-3Fc3;
	Fri, 20 Dec 2024 08:46:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tOYeL-00000004K1T-1ZnY
	for barebox@lists.infradead.org;
	Fri, 20 Dec 2024 08:46:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tOYeI-0004jW-OZ; Fri, 20 Dec 2024 09:46:18 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tOYeH-004LWJ-2C;
	Fri, 20 Dec 2024 09:46:18 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tOYeI-00AOP8-1B;
	Fri, 20 Dec 2024 09:46:18 +0100
Date: Fri, 20 Dec 2024 09:46:18 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org, Roan van Dijk <roan@protonic.nl>
Message-ID: <Z2Uu2twJBoWTo-Tz@pengutronix.de>
References: <20241218060900.3636980-1-o.rempel@pengutronix.de>
 <20241218060900.3636980-4-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241218060900.3636980-4-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241220_004621_418458_66CD7D02 
X-CRM114-Status: GOOD (  28.33  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/3] ARM: protonic-stm32mp1: Add Add Priva E-Measuringbox
 board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Dec 18, 2024 at 07:09:00AM +0100, Oleksij Rempel wrote:
> diff --git a/arch/arm/boards/protonic-stm32mp13/board.c b/arch/arm/boards/protonic-stm32mp13/board.c
> new file mode 100644
> index 000000000000..199da2496486
> --- /dev/null
> +++ b/arch/arm/boards/protonic-stm32mp13/board.c
> @@ -0,0 +1,285 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +// SPDX-FileCopyrightText: 2021 David Jander, Protonic Holland
> +// SPDX-FileCopyrightText: 2021 Oleksij Rempel, Pengutronix
> +
> +#include <bootsource.h>
> +#include <common.h>
> +#include <init.h>
> +#include <mach/stm32mp/bbu.h>
> +#include <mach/stm32mp/bsec.h>
> +#include <of_device.h>
> +#include <gpio.h>
> +#include <soc/stm32/gpio.h>
> +#include <deep-probe.h>
> +
> +#include "../../drivers/nvmem/stm32-bsec-optee-ta.h"

If we need this here, should we move this file to somewhere under
/include/?

> +
> +/* board specific flags */
> +#define PRT_STM32_BOOTSRC_SD		BIT(2)
> +#define PRT_STM32_BOOTSRC_EMMC		BIT(1)
> +#define PRT_STM32_BOOTSRC_SPI_NOR	BIT(0)
> +
> +
> +#define PRT_STM32_GPIO_HWID_PL_N	13 /* PA13 */
> +#define PRT_STM32_GPIO_HWID_CP		14 /* PA14 */
> +#define PRT_STM32_GPIO_HWID_Q7		45 /* PC13 */
> +
> +struct prt_stm32_machine_data {
> +	u32 flags;
> +};
> +
> +struct bsec_priv {
> +	struct tee_context *ctx;
> +};
> +
> +struct prt_stm32_boot_dev {
> +	char *name;
> +	char *env;
> +	char *dev;
> +	int flags;
> +	int boot_idx;
> +	enum bootsource boot_src;
> +};

...

> +
> +static int prt_stm32_read_serial(struct device *dev)
> +{
> +	u32 ser_high, ser_mid, ser_low;
> +	struct bsec_priv *priv;
> +	char serial[11];
> +	int ret;
> +
> +	priv = xzalloc(sizeof(*priv));
> +	if (!priv)
> +		return -ENOMEM;

priv is only used in this function. Better allocate statically.

> +
> +	ret = stm32_bsec_optee_ta_open(&priv->ctx);
> +	if (ret) {
> +		dev_err(dev, "Failed to open BSEC TA: %pe\n", ERR_PTR(ret));
> +		return ret;
> +	}
> +
> +	ret = stm32_bsec_pta_read(&priv->ctx, 60, &ser_high);
> +	if (ret)
> +		goto exit_pta_read;
> +
> +	ret = stm32_bsec_pta_read(&priv->ctx, 61, &ser_mid);
> +	if (ret)
> +		goto exit_pta_read;
> +
> +	ret = stm32_bsec_pta_read(&priv->ctx, 62, &ser_low);
> +	if (ret)
> +		goto exit_pta_read;
> +
> +	stm32_bsec_optee_ta_close(&priv->ctx);
> +
> +	ser_low = ser_low & 0xff;
> +	memcpy(serial, &ser_high, 4);
> +	memcpy(serial+4, &ser_mid, 4);
> +	memcpy(serial+8, &ser_low, 4);

Size argument should be 1, otherwise you are writing past the array.

> +	serial[10] = 0; /* Failsafe */

The serial number only seems to be 9 bytes, so should be serial[9] = 0;

> +
> +	return prt_stm32_set_serial(dev, serial);
> +
> +exit_pta_read:
> +	stm32_bsec_optee_ta_close(&priv->ctx);

Given that priv is only used in this function you should call
stm32_bsec_optee_ta_close() also in the success path.

> +	dev_err(dev, "Failed to read serial: %pe\n", ERR_PTR(ret));
> +	return ret;
> +}
> +
> +static int prt_stm32_init_shift_reg(struct device *dev)
> +{
> +	int ret;
> +
> +	ret = gpio_direction_output(PRT_STM32_GPIO_HWID_PL_N, 1);
> +	if (ret)
> +		goto error_out;
> +
> +	ret = gpio_direction_output(PRT_STM32_GPIO_HWID_CP, 1);
> +	if (ret)
> +		goto error_out;
> +
> +	ret = gpio_direction_input(PRT_STM32_GPIO_HWID_Q7);
> +	if (ret)
> +		goto error_out;
> +
> +	__stm32_pmx_set_output_type((void __iomem *)0x50002000, 13,
> +					       STM32_PIN_OUT_PUSHPULL);
> +	__stm32_pmx_set_output_type((void __iomem *)0x50002000, 14,
> +					       STM32_PIN_OUT_PUSHPULL);
> +
> +	return 0;
> +
> +error_out:
> +	dev_err(dev, "Failed to init shift register: %pe\n", ERR_PTR(ret));
> +	return ret;
> +}
> +

...

> +ENTRY_FUNCTION(start_stm32mp133c_prihmb, r0, r1, r2)
> +{
> +	void *fdt;
> +
> +	stm32mp_cpu_lowlevel_init();
> +
> +	if (IS_ENABLED(CONFIG_DEBUG_LL))
> +		setup_uart();

putc_ll() expands to a no-op with CONFIG_DEBUG_LL disabled, so no need
for this guard.

> +
> +	fdt = __dtb_z_stm32mp133c_prihmb_start + get_runtime_offset();
> +
> +	stm32mp1_barebox_entry(fdt);
> +}
> diff --git a/arch/arm/dts/stm32mp131.dtsi b/arch/arm/dts/stm32mp131.dtsi
> index 89a7ffcb814f..b5d5d20d252b 100644
> --- a/arch/arm/dts/stm32mp131.dtsi
> +++ b/arch/arm/dts/stm32mp131.dtsi
> @@ -13,6 +13,10 @@ memory-controller@5a003000 {
>  	};
>  };
>  
> +&bsec {
> +	barebox,provide-mac-address = <&ethernet1 0x39>;
> +};

We should likely prefer the nvmem binding over the barebox binding.

> +
>  &iwdg2 {
>  	barebox,restart-warm-bootrom;
>  };
...

> diff --git a/arch/arm/dts/stm32mp133c-prihmb.dtsi b/arch/arm/dts/stm32mp133c-prihmb.dtsi
> new file mode 100644
> index 000000000000..eefd34c25fe4
> --- /dev/null
> +++ b/arch/arm/dts/stm32mp133c-prihmb.dtsi
> @@ -0,0 +1,494 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
> +/dts-v1/;
> +
> +// this file will be dropped after kernel upstreaming is done
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +#include <dt-bindings/leds/common.h>
> +#include <dt-bindings/regulator/st,stm32mp13-regulator.h>
> +#include <arm/st/stm32mp133.dtsi>
> +#include <arm/st/stm32mp13xc.dtsi>
> +#include <arm/st/stm32mp13-pinctrl.dtsi>
> +
> +/ {
> +	model = "Priva E-Measuringbox board";
> +	compatible = "pri,prihmb", "st,stm32mp133";
> +
> +	aliases {
> +		ethernet0 = &ethernet1;
> +		mdio-gpio0 = &mdio0;
> +		mmc0 = &sdmmc1;
> +		mmc1 = &sdmmc2;
> +		serial0 = &uart4;
> +		serial1 = &usart6;
> +		serial2 = &uart7;
> +	};
> +
> +	chosen {
> +		stdout-path = "serial0:115200n8";
> +	};

The same is in the board dts also.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


