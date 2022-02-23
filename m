Delivery-date: Wed, 23 Feb 2022 13:54:20 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nMr9v-007dB8-Vs
	for lore@lore.pengutronix.de; Wed, 23 Feb 2022 13:54:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nMr9t-0003Vf-VD
	for lore@pengutronix.de; Wed, 23 Feb 2022 13:54:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HF9lrlNrgpTgauF4j+FxA8d+rHwEcGjM3f7iJg5670A=; b=qSPjYSEZ+f9mp69XxC0Mgdrvhf
	YbThHwrOFSG/WvB0TjiNWNv3JMmosezlJFXjWMvX4p1RBr+LQpYs0Hux3I+pthOukBQS+6piknLtS
	VE2ZJmPVkHeE0LAXVCW6laFIeYwuy7sfQZMSOxjjcQdN5d3oXTfPdLzKROoQ8xwWxoeyakP8T8p1X
	ajlXyhSqZdinzwOZc023+90XQbFBn2du2Ou5Sb0anNoPme9NccfAe3iWmgIGgkuYe2IBxqlMgbRh5
	7RsC15WDNoSDn+P73kc9nYbTagGr2WFmq+h/6HBPK5JHQdfsntaO/TUeFXND/l19MjQsQfifioBht
	HB7qKjRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nMr8J-00EGiI-4q; Wed, 23 Feb 2022 12:52:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nMqPs-00E4JO-G3
 for barebox@lists.infradead.org; Wed, 23 Feb 2022 12:06:49 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nMqPl-00069h-VI; Wed, 23 Feb 2022 13:06:37 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nMqPl-0002FC-MZ; Wed, 23 Feb 2022 13:06:37 +0100
Date: Wed, 23 Feb 2022 13:06:37 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, ejo@pengutronix.de
Message-ID: <20220223120637.GQ9136@pengutronix.de>
References: <20220223111036.3011774-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220223111036.3011774-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 12:52:33 up 74 days, 20:38, 91 users,  load average: 0.09, 0.14, 0.16
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220223_040644_763778_471C7A0A 
X-CRM114-Status: GOOD (  32.35  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: stm32: add support for PHYTEC phyCORE stm32mp1
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Feb 23, 2022 at 12:10:36PM +0100, Ahmad Fatoum wrote:
> From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> 
> Import DT[1] and add the boilerplate to have barebox generate a SSBL
> for the board.
> 
> [1]: git://git.phytec.de/tf-a-stm32mp
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/boards/Makefile                      |   1 +
>  .../boards/phytec-phycore-stm32mp1/Makefile   |   3 +
>  .../boards/phytec-phycore-stm32mp1/board.c    |  28 ++
>  .../boards/phytec-phycore-stm32mp1/lowlevel.c |  19 +
>  arch/arm/dts/Makefile                         |   1 +
>  .../dts/stm32mp157c-phycore-stm32mp1-3.dts    |  58 +++
>  ...stm32mp157c-phycore-stm32mp15-pinctrl.dtsi |  92 +++++
>  .../stm32mp157c-phycore-stm32mp15-som.dtsi    | 337 ++++++++++++++++++
>  arch/arm/mach-stm32mp/Kconfig                 |   7 +
>  images/Makefile.stm32mp                       |   2 +
>  10 files changed, 548 insertions(+)
>  create mode 100644 arch/arm/boards/phytec-phycore-stm32mp1/Makefile
>  create mode 100644 arch/arm/boards/phytec-phycore-stm32mp1/board.c
>  create mode 100644 arch/arm/boards/phytec-phycore-stm32mp1/lowlevel.c
>  create mode 100644 arch/arm/dts/stm32mp157c-phycore-stm32mp1-3.dts
>  create mode 100644 arch/arm/dts/stm32mp157c-phycore-stm32mp15-pinctrl.dtsi
>  create mode 100644 arch/arm/dts/stm32mp157c-phycore-stm32mp15-som.dtsi
> 
> diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
> index 8557e1dca8c6..75e15cbda4df 100644
> --- a/arch/arm/boards/Makefile
> +++ b/arch/arm/boards/Makefile
> @@ -101,6 +101,7 @@ obj-$(CONFIG_MACH_PCM049)			+= phytec-phycore-omap4460/
>  obj-$(CONFIG_MACH_PHYTEC_SOM_AM335X)		+= phytec-som-am335x/
>  obj-$(CONFIG_MACH_PHYTEC_SOM_IMX6)		+= phytec-som-imx6/
>  obj-$(CONFIG_MACH_PHYTEC_PHYCORE_IMX7)		+= phytec-phycore-imx7/
> +obj-$(CONFIG_MACH_PHYTEC_PHYCORE_STM32MP1)	+= phytec-phycore-stm32mp1/
>  obj-$(CONFIG_MACH_PHYTEC_SOM_IMX8MQ)		+= phytec-som-imx8mq/
>  obj-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3)	+= plathome-openblocks-ax3/
>  obj-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_A6)	+= plathome-openblocks-a6/
> diff --git a/arch/arm/boards/phytec-phycore-stm32mp1/Makefile b/arch/arm/boards/phytec-phycore-stm32mp1/Makefile
> new file mode 100644
> index 000000000000..1d052d28c9fc
> --- /dev/null
> +++ b/arch/arm/boards/phytec-phycore-stm32mp1/Makefile
> @@ -0,0 +1,3 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +lwl-y += lowlevel.o
> +obj-y += board.o
> diff --git a/arch/arm/boards/phytec-phycore-stm32mp1/board.c b/arch/arm/boards/phytec-phycore-stm32mp1/board.c
> new file mode 100644
> index 000000000000..eb6147785ff0
> --- /dev/null
> +++ b/arch/arm/boards/phytec-phycore-stm32mp1/board.c
> @@ -0,0 +1,28 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +#include <common.h>
> +#include <driver.h>
> +#include <bootsource.h>
> +
> +static int phycore_stm32mp1_probe(struct device_d *dev)
> +{
> +	if (bootsource_get_instance() == 0)
> +		of_device_enable_path("/chosen/environment-sd");
> +	else
> +		of_device_enable_path("/chosen/environment-emmc");
> +
> +	barebox_set_hostname("phyCORE-STM32MP1");
> +
> +	return 0;
> +}
> +
> +static const struct of_device_id phycore_stm32mp1_of_match[] = {
> +	{ .compatible = "phytec,phycore-stm32mp1-3" },
> +	{ /* sentinel */ },
> +};
> +
> +static struct driver_d phycore_stm32mp1_board_driver = {
> +	.name = "board-phycore-stm32mp1",
> +	.probe = phycore_stm32mp1_probe,
> +	.of_compatible = phycore_stm32mp1_of_match,
> +};
> +device_platform_driver(phycore_stm32mp1_board_driver);
> diff --git a/arch/arm/boards/phytec-phycore-stm32mp1/lowlevel.c b/arch/arm/boards/phytec-phycore-stm32mp1/lowlevel.c
> new file mode 100644
> index 000000000000..f76bad86a10a
> --- /dev/null
> +++ b/arch/arm/boards/phytec-phycore-stm32mp1/lowlevel.c
> @@ -0,0 +1,19 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +#include <common.h>
> +#include <mach/entry.h>
> +#include <debug_ll.h>
> +
> +extern char __dtb_z_stm32mp157c_phycore_stm32mp1_3_start[];
> +
> +ENTRY_FUNCTION(start_phycore_stm32mp1_3, r0, r1, r2)
> +{
> +	void *fdt;
> +
> +	stm32mp_cpu_lowlevel_init();
> +
> +	putc_ll('>');
> +
> +	fdt = __dtb_z_stm32mp157c_phycore_stm32mp1_3_start + get_runtime_offset();
> +
> +	stm32mp1_barebox_entry(fdt);
> +}
> diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
> index e0bb66580f38..925ac12aa52a 100644
> --- a/arch/arm/dts/Makefile
> +++ b/arch/arm/dts/Makefile
> @@ -75,6 +75,7 @@ lwl-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += imx6q-phytec-phycard.dtb.o \
>  				imx6ull-phytec-phycore-som-nand.dtb.o \
>  				imx6ull-phytec-phycore-som-emmc.dtb.o
>  lwl-$(CONFIG_MACH_PHYTEC_PHYCORE_IMX7) += imx7d-phyboard-zeta.dtb.o
> +lwl-$(CONFIG_MACH_PHYTEC_PHYCORE_STM32MP1) += stm32mp157c-phycore-stm32mp1-3.dtb.o
>  lwl-$(CONFIG_MACH_PHYTEC_SOM_IMX8MQ) += imx8mq-phytec-phycore-som.dtb.o
>  lwl-$(CONFIG_MACH_PINE64_QUARTZ64) += rk3566-quartz64-a.dtb.o
>  lwl-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3) += armada-xp-openblocks-ax3-4-bb.dtb.o
> diff --git a/arch/arm/dts/stm32mp157c-phycore-stm32mp1-3.dts b/arch/arm/dts/stm32mp157c-phycore-stm32mp1-3.dts
> new file mode 100644
> index 000000000000..351067c9f110
> --- /dev/null
> +++ b/arch/arm/dts/stm32mp157c-phycore-stm32mp1-3.dts
> @@ -0,0 +1,58 @@
> +#include <arm/stm32mp15-pinctrl.dtsi>
> +#include <arm/stm32mp15xxac-pinctrl.dtsi>
> +#include "stm32mp151.dtsi"
> +#include "stm32mp157c-phycore-stm32mp15-som.dtsi"
> +
> +/ {
> +	model = "PHYTEC phyCORE-STM32MP1-3 SOM";
> +	compatible = "phytec,phycore-stm32mp1-3", "st,stm32mp157";
> +
> +	chosen {
> +		environment-sd {
> +			compatible = "barebox,environment";
> +			device-path = &sdmmc1, "partname:barebox-environment";
> +			status = "disabled";
> +		};
> +
> +		environment-emmc {
> +			compatible = "barebox,environment";
> +			device-path = &sdmmc2, "partname:barebox-environment";

I don't see any partition description for sdmmc1/2. Does the environment
work?

> +&i2c4 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&i2c4_pins_a>;
> +	i2c-scl-rising-time-ns = <185>;
> +	i2c-scl-falling-time-ns = <20>;
> +	status = "okay";
> +	/delete-property/dmas;
> +	/delete-property/dma-names;
> +
> +	pmic: stpmic@33 {
> +		compatible = "st,stpmic1";
> +		reg = <0x33>;
> +		interrupts-extended = <&gpioa 0 IRQ_TYPE_EDGE_FALLING>;
> +		interrupt-controller;
> +		#interrupt-cells = <2>;
> +		status = "okay";

Could be dropped.

> +&qspi {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&qspi_clk_pins_a &qspi_bk1_pins_a &qspi_bk2_pins_a>;
> +	reg = <0x58003000 0x1000>, <0x70000000 0x4000000>;

Why is the reg property overwritten?

> +	#address-cells = <1>;
> +	#size-cells = <0>;

This is already in the SoC dtsi.

> +	status = "disabled";

Is this needed? Isn't the qpsi controller disabled in the SoC dtsi
anyway? There are several more nodes in this files that are explicitly
disabled.

> +
> +	flash0: n25q128@0 {
> +		compatible = "micron,n25q128a13", "jedec,spi-nor";
> +		reg = <0>;
> +		spi-rx-bus-width = <4>;
> +		spi-max-frequency = <50000000>;
> +		m25p,fast-read;
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +	};
> +};
> +
> +&sdmmc1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&sdmmc1_b4_pins_a>;
> +	disable-wp;
> +	st,neg-edge;
> +	bus-width = <4>;
> +	max-frequency = <10000000>;

This is very low. Is this intended?

> +	vmmc-supply = <&v3v3>;
> +	status = "disabled";
> +};
> +
> +&sdmmc2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&sdmmc2_b4_pins_a &sdmmc2_d47_pins_a>;
> +	non-removable;
> +	no-sd;
> +	no-sdio;
> +	st,neg-edge;
> +	bus-width = <8>;
> +	vmmc-supply = <&v3v3>;
> +	vqmmc-supply = <&v3v3>;
> +	mmc-ddr-3_3v;
> +	status = "disabled";
> +};
> +
> +&sram {
> +	dma_pool: dma_pool@0 {
> +		reg = <0x50000 0x10000>;

Should probably be dma_pool@50000

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

