Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aQDFl-0005gG-ST
 for barebox@lists.infradead.org; Mon, 01 Feb 2016 12:06:47 +0000
References: <3762339.hZBQLlnv2u@dabox>
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
In-reply-to: <3762339.hZBQLlnv2u@dabox>
Date: Mon, 01 Feb 2016 13:06:22 +0100
Message-ID: <73bn80zlc1.fsf@unicorn.hi.pengutronix.de>
MIME-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] Terasic DE0 NANO-SoC: add support
To: Tim Sander <tim@krieglstein.org>
Cc: barebox@lists.infradead.org


Tim Sander writes:

> Below is a Patch for supporting the Terasic DE0 NANO-SoC with barebox.
> The pretty similar Socrates Board was taken as a starting point with pulling
> in the memory timings/pinmux from 
> http://rocketboards.org/foswiki/view/Documentation/AtlasSoCCompileHardwareDesign
> Its only tested at room temperatures and i am not 100% sure about the device tree:
>  One known problem is the fact that the board identifier is pretty generic but its the 
>  same in the linux kernel so i resorted to that.
>
> Signed-off-by: Tim Sander <tim@krieglstein.org>
> ---
>  arch/arm/boards/Makefile                           |   1 +
>  arch/arm/boards/terasic-de0-nano-soc/Makefile      |   2 +
>  arch/arm/boards/terasic-de0-nano-soc/board.c       |  37 ++
>  arch/arm/boards/terasic-de0-nano-soc/config.h      |   1 +
>  .../terasic-de0-nano-soc/iocsr_config_cyclone5.c   | 675 +++++++++++++++++++++
>  arch/arm/boards/terasic-de0-nano-soc/lowlevel.c    | 102 ++++
>  .../boards/terasic-de0-nano-soc/pinmux_config.c    | 240 ++++++++
>  arch/arm/boards/terasic-de0-nano-soc/pll_config.h  | 107 ++++
>  .../arm/boards/terasic-de0-nano-soc/sdram_config.h | 108 ++++
>  .../boards/terasic-de0-nano-soc/sequencer_auto.h   | 228 +++++++
>  .../terasic-de0-nano-soc/sequencer_auto_ac_init.c  |  69 +++
>  .../sequencer_auto_inst_init.c                     | 161 +++++
>  .../terasic-de0-nano-soc/sequencer_defines.h       | 160 +++++
>  arch/arm/configs/socfpga-xload_defconfig           |   1 +
>  arch/arm/configs/socfpga_defconfig                 |   1 +
>  arch/arm/dts/Makefile                              |   1 +
>  arch/arm/dts/socfpga_cyclone5_de0_nano_soc.dts     | 136 +++++
>  arch/arm/mach-socfpga/Kconfig                      |   4 +
>  images/Makefile.socfpga                            |   8 +
>  19 files changed, 2042 insertions(+)
>  create mode 100644 arch/arm/boards/terasic-de0-nano-soc/Makefile
>  create mode 100644 arch/arm/boards/terasic-de0-nano-soc/board.c
>  create mode 100644 arch/arm/boards/terasic-de0-nano-soc/config.h
>  create mode 100644 arch/arm/boards/terasic-de0-nano-soc/iocsr_config_cyclone5.c
>  create mode 100644 arch/arm/boards/terasic-de0-nano-soc/lowlevel.c
>  create mode 100644 arch/arm/boards/terasic-de0-nano-soc/pinmux_config.c
>  create mode 100644 arch/arm/boards/terasic-de0-nano-soc/pll_config.h
>  create mode 100644 arch/arm/boards/terasic-de0-nano-soc/sdram_config.h
>  create mode 100644 arch/arm/boards/terasic-de0-nano-soc/sequencer_auto.h
>  create mode 100644 arch/arm/boards/terasic-de0-nano-soc/sequencer_auto_ac_init.c
>  create mode 100644 arch/arm/boards/terasic-de0-nano-soc/sequencer_auto_inst_init.c
>  create mode 100644 arch/arm/boards/terasic-de0-nano-soc/sequencer_defines.h
>  create mode 100644 arch/arm/dts/socfpga_cyclone5_de0_nano_soc.dts
>

(...)

> diff --git a/arch/arm/dts/socfpga_cyclone5_de0_nano_soc.dts b/arch/arm/dts/socfpga_cyclone5_de0_nano_soc.dts
> new file mode 100644
> index 000000000000..5d1840451382
> --- /dev/null
> +++ b/arch/arm/dts/socfpga_cyclone5_de0_nano_soc.dts
> @@ -0,0 +1,136 @@
> +/*
> + *  Copyright (C) 2013 Steffen Trumtrar <s.trumtrar@pengutronix.de>
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License as published by
> + * the Free Software Foundation; either version 2 of the License, or
> + * (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + * You should have received a copy of the GNU General Public License
> + * along with this program.  If not, see <http://www.gnu.org/licenses/>.
> + */
> +
> +#include <arm/socfpga_cyclone5_sockit.dts>

This is the wrong DT.
What you AFAIK want is the socfgpa_cyclone5_de0_sockit.dts

The "Terasic DE0-Nano" is the same as the "Terasic DE-0" or isn't it?
From the website it at least seems like it.

With the other dts you then should be able to remove 

> +#include "socfpga.dtsi"
> +
> +/ {
> +       model = "Terasic DE0-Nano(Atlas)";
> +       compatible = "altr,socfpga-cyclone5", "altr,socfpga";
> +
> +       chosen {
> +               stdout-path = &uart0;
> +       };
> +
> +       leds: gpio-leds {
> +       };
> +
> +       buttons: gpio-keys {
> +       };
> +};
> +
> +&gpio1 {
> +       status = "okay";
> +};
> +
> +&gpio2 {
> +       status = "okay";
> +};
> +
 
the gpio nodes. The leds phandle should go in the upstream linux DT,
too, so it could be used here. As long as it isn't, this looks okay IMHO.

> +&leds {
> +       compatible = "gpio-leds";
> +
> +       led@0 {
> +               label = "0";
> +               gpios = <&portb 24 0>;
> +               linux,default-trigger = "heartbeat";
> +       };
> +
> +       led@1 {
> +               label = "1";
> +               gpios = <&portb 25 0>;
> +       };
> +
> +       led@2 {
> +               label = "2";
> +               gpios = <&portb 26 0>;
> +       };
> +
> +       led@3 {
> +               label = "3";
> +               gpios = <&portb 27 0>;
> +       };
> +};
> +
> +&buttons {
> +       compatible = "gpio-keys";
> +
> +        key@0 {
> +               label = "F1";
> +               gpios = <&portc 21 0>;
> +               linux,code = <59>;
> +       };
> +
> +        key@1 {
> +               label = "F2";
> +               gpios = <&portc 22 0>;
> +               linux,code = <60>;
> +       };
> +
> +        key@2 {
> +               label = "F3";
> +               gpios = <&portc 23 0>;
> +               linux,code = <61>;
> +       };
> +
> +        key@3 {
> +               label = "F4";
> +               gpios = <&portc 24 0>;
> +               linux,code = <62>;
> +       };
> +};
> +
> +&i2c0 {
> +       status = "disabled";
> +
> +       eeprom@51 {
> +               compatible = "atmel,24c32";
> +               reg = <0x51>;
> +               pagesize = <0x20>;
> +       };
> +};
> +
> +&i2c1 {
> +       status = "disabled";
> +
> +       adxl345@53 {
> +               compatible = "adi,adxl34x";
> +               reg = <0x53>;
> +               interrupt-parent = <0x2>;
> +               interrupts = <0x0 0xa6 0x4>;
> +       };
> +};
> +

This looks to be correct in the upstream de0 dts and can also
be removed here.

> +&qspi {
> +       status = "okay";
> +
> +       flash: flash@0 {
> +               #address-cells = <1>;
> +               #size-cells = <1>;
> +               compatible = "n25q00";
> +               reg = <0>;
> +               spi-max-frequency = <108000000>;
> +               m25p,fast-read;
> +               cdns,page-size = <256>;
> +               cdns,block-size = <16>;
> +               cdns,read-delay = <4>;
> +               cdns,tshsl-ns = <50>;
> +               cdns,tsd2d-ns = <50>;
> +               cdns,tchsh-ns = <4>;
> +               cdns,tslch-ns = <4>;
> +       };
> +};

Regards,
Steffen

-- 
Pengutronix e.K.                           | Steffen Trumtrar            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
