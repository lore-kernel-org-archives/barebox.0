Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kY3P3-0000fv-FZ
 for barebox@lists.infradead.org; Thu, 29 Oct 2020 08:35:26 +0000
Received: by mail-lj1-x242.google.com with SMTP id d24so2142003ljg.10
 for <barebox@lists.infradead.org>; Thu, 29 Oct 2020 01:35:23 -0700 (PDT)
Date: Thu, 29 Oct 2020 11:35:19 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20201029113519.8ace47e1f4e8a088e952a70a@gmail.com>
In-Reply-To: <1603885792-12157-1-git-send-email-u74147@gmail.com>
References: <1603885792-12157-1-git-send-email-u74147@gmail.com>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] clk: ls1b200: add clk driver for loongson 1b
To: Du Huanpeng <u74147@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, 28 Oct 2020 19:49:52 +0800
Du Huanpeng <u74147@gmail.com> wrote:

> add "pll" and "oscillator" node to devicetree.
> =

> Signed-off-by: Du Huanpeng <u74147@gmail.com>

...

> diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
> index 7a8f010..0aceed3 100644
> --- a/arch/mips/Kconfig
> +++ b/arch/mips/Kconfig
> @@ -118,6 +118,15 @@ config MACH_MIPS_BCM47XX
>  =

>  config MACH_MIPS_LOONGSON
>  	bool "Loongson-based boards"
> +	select SYS_HAS_CPU_MIPS32_R2
> +	select SYS_SUPPORTS_32BIT_KERNEL
> +	select CSRC_R4K_LIB
> +	select HAS_DEBUG_LL
> +	select COMMON_CLK
> +	select COMMON_CLK_OF_PROVIDER
> +	select CLKDEV_LOOKUP
> +	select OFTREE
> +	select GPIOLIB

I suppose that arch/mips/ changes should go to a separate patch.
E.g.:

  * PATCH 001: clk: ls1b200: add clk driver for loongson 1b
  * PATCH 002: MIPS: ls1b200: use clk driver


>  =

>  config MACH_MIPS_XBURST
>  	bool "Ingenic XBurst-based boards"
> diff --git a/arch/mips/dts/loongson-ls1b.dts b/arch/mips/dts/loongson-ls1=
b.dts
> index 6b53311..89cce56 100644
> --- a/arch/mips/dts/loongson-ls1b.dts
> +++ b/arch/mips/dts/loongson-ls1b.dts
> @@ -6,6 +6,12 @@
>  	model =3D "Loongson Tech LS1B Demo Board";
>  	compatible =3D "loongson,ls1b";
>  =

> +	oscillator: oscillator {
> +			#clock-cells =3D <0>;
> +			compatible =3D "fixed-clock";
> +			clock-frequency =3D <33000000>;
> +	};
> +
>  	memory@0 {
>  		device_type =3D "memory";
>  		reg =3D <0x00000000 0x4000000>;
> diff --git a/arch/mips/dts/ls1b.dtsi b/arch/mips/dts/ls1b.dtsi
> index cb85814..8b772af 100644
> --- a/arch/mips/dts/ls1b.dtsi
> +++ b/arch/mips/dts/ls1b.dtsi
> @@ -1,3 +1,5 @@
> +#include <dt-bindings/clock/ls1b-clk.h>
> +
>  / {
>  	#address-cells =3D <1>;
>  	#size-cells =3D <1>;
> @@ -40,5 +42,12 @@
>  			clock-frequency =3D <83000000>;
>  			status =3D "disabled";
>  		};
> +
> +		pll: pll@1fe78030 {
> +			compatible =3D "loongson,ls1b-pll";
> +			#clock-cells =3D <1>;
> +			reg =3D <0x1fe78030 0x8>;
> +			clocks =3D <&oscillator>;
> +		};
>  	};
>  };
> diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
> index 0903274..04c797e 100644
> --- a/drivers/clk/Makefile
> +++ b/drivers/clk/Makefile
> @@ -19,4 +19,5 @@ obj-$(CONFIG_ARCH_IMX)		+=3D imx/
>  obj-$(CONFIG_COMMON_CLK_AT91)	+=3D at91/
>  obj-$(CONFIG_ARCH_STM32MP)	+=3D clk-stm32mp1.o
>  obj-$(CONFIG_MACH_VEXPRESS)	+=3D vexpress/
> +obj-$(CONFIG_MACH_MIPS_LOONGSON)+=3D loongson/
>  obj-$(CONFIG_ARCH_LAYERSCAPE)	+=3D clk-qoric.o
> diff --git a/drivers/clk/loongson/Makefile b/drivers/clk/loongson/Makefile
> new file mode 100644
> index 0000000..dd76b25
> --- /dev/null
> +++ b/drivers/clk/loongson/Makefile
> @@ -0,0 +1,2 @@
> +obj-$(CONFIG_BOARD_LOONGSON_TECH_LS1B) +=3D clk-ls1b200.o
> +
> diff --git a/drivers/clk/loongson/clk-ls1b200.c b/drivers/clk/loongson/cl=
k-ls1b200.c
> new file mode 100644
> index 0000000..f5fabd4
> --- /dev/null
> +++ b/drivers/clk/loongson/clk-ls1b200.c
> @@ -0,0 +1,154 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright (C) 2014 Antony Pavlov <antonynpavlov@gmail.com>
> + * Copyright (C) 2020 Du Huanpeng <u74147@gmail.com>
> + *
> + * Based on the Linux ath79 clock code

Thanks for mentioning me, but I have not contributed to clk-ls1b200.c :)
Could you please remove my copyright and just write "Based on the ath79 clo=
ck code by Antony Pavlov...".


-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
