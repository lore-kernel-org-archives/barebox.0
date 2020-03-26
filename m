Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHZne-00021l-D7
 for barebox@lists.infradead.org; Thu, 26 Mar 2020 21:12:29 +0000
References: <20200326183425.73729-1-b.bilas@grinn-global.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <4a4ee693-cca2-a206-41f5-c7e08303fbf1@pengutronix.de>
Date: Thu, 26 Mar 2020 22:12:20 +0100
MIME-Version: 1.0
In-Reply-To: <20200326183425.73729-1-b.bilas@grinn-global.com>
Content-Language: en-US
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
Subject: Re: [PATCH 1/1] boards: liteboard: add i.MX6ULL revision
To: Bartosz Bilas <b.bilas@grinn-global.com>, barebox@lists.infradead.org

Hi,

On 3/26/20 7:34 PM, Bartosz Bilas wrote:
> These changes introduce support for Grinn i.MX6ULL liteBoard revision.
> There are no other changes except the CPU therefore the existing
> board directory was used.
> 
> Signed-off-by: Bartosz Bilas <b.bilas@grinn-global.com>
> ---
>  arch/arm/boards/grinn-liteboard/board.c       |   4 +-
>  .../flash-header-liteboard-256mb.imxcfg       |   6 -
>  .../flash-header-liteboard-512mb.imxcfg       |   6 -
>  ...flash-header-liteboard-imx6ul-256mb.imxcfg |  28 ++++
>  ...flash-header-liteboard-imx6ul-512mb.imxcfg |  28 ++++
>  ...lash-header-liteboard-imx6ull-256mb.imxcfg |  27 ++++
>  .../grinn-liteboard/flash-header-liteboard.h  |  26 +--
>  arch/arm/boards/grinn-liteboard/lowlevel.c    |  19 +--
>  arch/arm/dts/Makefile                         |   2 +-
>  arch/arm/dts/imx6ull-liteboard.dts            |  96 +++++++++++
>  dts/src/arm/imx6ull-liteboard.dts             | 151 ++++++++++++++++++
>  dts/src/arm/imx6ull-litesom.dtsi              |  78 +++++++++
>  images/Makefile.imx                           |   6 +-
>  13 files changed, 442 insertions(+), 35 deletions(-)
>  delete mode 100644 arch/arm/boards/grinn-liteboard/flash-header-liteboard-256mb.imxcfg
>  delete mode 100644 arch/arm/boards/grinn-liteboard/flash-header-liteboard-512mb.imxcfg
>  create mode 100644 arch/arm/boards/grinn-liteboard/flash-header-liteboard-imx6ul-256mb.imxcfg
>  create mode 100644 arch/arm/boards/grinn-liteboard/flash-header-liteboard-imx6ul-512mb.imxcfg
>  create mode 100644 arch/arm/boards/grinn-liteboard/flash-header-liteboard-imx6ull-256mb.imxcfg
>  create mode 100644 arch/arm/dts/imx6ull-liteboard.dts
>  create mode 100644 dts/src/arm/imx6ull-liteboard.dts
>  create mode 100644 dts/src/arm/imx6ull-litesom.dtsi
> 
> diff --git a/arch/arm/boards/grinn-liteboard/board.c b/arch/arm/boards/grinn-liteboard/board.c
> index 8e5a91e12..f7fbbb8b8 100644
> --- a/arch/arm/boards/grinn-liteboard/board.c
> +++ b/arch/arm/boards/grinn-liteboard/board.c
> @@ -2,6 +2,7 @@
>   * Copyright (C) 2018 Grinn
>   *
>   * Author: Marcin Niestroj <m.niestroj@grinn-global.com>
> + * Modified by: Bartosz Bilas <b.bilas@grinn-global.com>
>   *
>   * This program is free software; you can redistribute it and/or
>   * modify it under the terms of the GNU General Public License as
> @@ -86,7 +87,8 @@ static int liteboard_devices_init(void)
>  	int ret;
>  	int i;
>  
> -	if (!of_machine_is_compatible("grinn,imx6ul-liteboard"))
> +	if (!of_machine_is_compatible("grinn,imx6ul-liteboard") ||
> +			!of_machine_is_compatible("grinn,imx6ull-liteboard"))

That should be an && not ||.

>  		return 0;
>  
>  	barebox_set_hostname("liteboard");
> diff --git a/arch/arm/boards/grinn-liteboard/flash-header-liteboard-256mb.imxcfg b/arch/arm/boards/grinn-liteboard/flash-header-liteboard-256mb.imxcfg
> deleted file mode 100644
> index 1b980c784..000000000
> --- a/arch/arm/boards/grinn-liteboard/flash-header-liteboard-256mb.imxcfg
> +++ /dev/null
> @@ -1,6 +0,0 @@
> -
> -#define SETUP_MDASP_MDCTL		\
> -	wm 32 0x021B0040 0x00000047;	\
> -	wm 32 0x021B0000 0x83180000
> -
> -#include "flash-header-liteboard.h"
> diff --git a/arch/arm/boards/grinn-liteboard/flash-header-liteboard-512mb.imxcfg b/arch/arm/boards/grinn-liteboard/flash-header-liteboard-512mb.imxcfg
> deleted file mode 100644
> index c93a2cc0f..000000000
> --- a/arch/arm/boards/grinn-liteboard/flash-header-liteboard-512mb.imxcfg
> +++ /dev/null
> @@ -1,6 +0,0 @@
> -
> -#define SETUP_MDASP_MDCTL		\
> -	wm 32 0x021B0040 0x0000004F;	\
> -	wm 32 0x021B0000 0x84180000
> -
> -#include "flash-header-liteboard.h"
> diff --git a/arch/arm/boards/grinn-liteboard/flash-header-liteboard-imx6ul-256mb.imxcfg b/arch/arm/boards/grinn-liteboard/flash-header-liteboard-imx6ul-256mb.imxcfg
> new file mode 100644
> index 000000000..212ebdae4
> --- /dev/null
> +++ b/arch/arm/boards/grinn-liteboard/flash-header-liteboard-imx6ul-256mb.imxcfg
> @@ -0,0 +1,28 @@
> +
> +#define SETUP_MDASP_MDCTL		\
> +	wm 32 0x021B0040 0x00000047;	\
> +	wm 32 0x021B0000 0x83180000
> +
> +#define SETUP_LEVEL_CAL \
> +	wm 32 0x021B080C 0x00000000; \
> +	wm 32 0x021B083C 0x41480148; \
> +	wm 32 0x021B0848 0x40403E42; \
> +	wm 32 0x021B0850 0x40405852
> +
> +#define SETUP_MMDC_MPDCCR \
> +	wm 32 0x021B08C0 0x00922012; \
> +	wm 32 0x021B0858 0x00000F00
> +
> +#define SETUP_MMDC0_MDCFG0 \
> +	wm 32 0x021B000C 0x676B52F3
> +
> +#define SETUP_MMDC0_MDOR \
> +	wm 32 0x021B0030 0x006B1023
> +
> +#define SETUP_MPPDCMPR2 \
> +	wm 32 0x021B0004 0x00400A38
> +
> +#define SETUP_MMDC0_MDPDC \
> +	wm 32 0x021B0004 0x0002556D
> +
> +#include "flash-header-liteboard.h"
> diff --git a/arch/arm/boards/grinn-liteboard/flash-header-liteboard-imx6ul-512mb.imxcfg b/arch/arm/boards/grinn-liteboard/flash-header-liteboard-imx6ul-512mb.imxcfg
> new file mode 100644
> index 000000000..00aca210d
> --- /dev/null
> +++ b/arch/arm/boards/grinn-liteboard/flash-header-liteboard-imx6ul-512mb.imxcfg
> @@ -0,0 +1,28 @@
> +
> +#define SETUP_MDASP_MDCTL		\
> +	wm 32 0x021B0040 0x0000004F;	\
> +	wm 32 0x021B0000 0x84180000
> +
> +#define SETUP_LEVEL_CAL \
> +	wm 32 0x021B080C 0x00000000; \
> +	wm 32 0x021B083C 0x41480148; \
> +	wm 32 0x021B0848 0x40403E42; \
> +	wm 32 0x021B0850 0x40405852
> +
> +#define SETUP_MMDC_MPDCCR \
> +	wm 32 0x021B08C0 0x00922012; \
> +	wm 32 0x021B0858 0x00000F00
> +
> +#define SETUP_MMDC0_MDCFG0 \
> +	wm 32 0x021B000C 0x676B52F3
> +
> +#define SETUP_MMDC0_MDOR \
> +	wm 32 0x021B0030 0x006B1023
> +
> +#define SETUP_MPPDCMPR2 \
> +	wm 32 0x021B0004 0x00400A38
> +
> +#define SETUP_MMDC0_MDPDC \
> +	wm 32 0x021B0004 0x0002556D
> +
> +#include "flash-header-liteboard.h"
> diff --git a/arch/arm/boards/grinn-liteboard/flash-header-liteboard-imx6ull-256mb.imxcfg b/arch/arm/boards/grinn-liteboard/flash-header-liteboard-imx6ull-256mb.imxcfg
> new file mode 100644
> index 000000000..73c4c4f97
> --- /dev/null
> +++ b/arch/arm/boards/grinn-liteboard/flash-header-liteboard-imx6ull-256mb.imxcfg
> @@ -0,0 +1,27 @@
> +
> +#define SETUP_MDASP_MDCTL		\
> +	wm 32 0x021B0040 0x00000047;	\
> +	wm 32 0x021B0000 0x83180000
> +
> +#define SETUP_LEVEL_CAL \
> +	wm 32 0x021B080C 0x00000004; \
> +	wm 32 0x021B083C 0x00000000; \
> +	wm 32 0x021B0848 0x40404040; \
> +	wm 32 0x021B0850 0x40404040
> +
> +#define SETUP_MMDC_MPDCCR \
> +	wm 32 0x021B08C0 0x00944009
> +
> +#define SETUP_MMDC0_MDCFG0 \
> +	wm 32 0x021B000C 0x3F4352F3
> +
> +#define SETUP_MMDC0_MDOR \
> +	wm 32 0x021B0030 0x00431023
> +
> +#define SETUP_MPPDCMPR2 \
> +	wm 32 0x021B0004 0x00400000
> +
> +#define SETUP_MMDC0_MDPDC \
> +	wm 32 0x021B0004 0x0002552D
> +
> +#include "flash-header-liteboard.h"
> diff --git a/arch/arm/boards/grinn-liteboard/flash-header-liteboard.h b/arch/arm/boards/grinn-liteboard/flash-header-liteboard.h
> index 60a39f524..1891400f7 100644
> --- a/arch/arm/boards/grinn-liteboard/flash-header-liteboard.h
> +++ b/arch/arm/boards/grinn-liteboard/flash-header-liteboard.h
> @@ -32,30 +32,34 @@ wm 32 0x020E0244 0x00000030
>  wm 32 0x020E0248 0x00000030
>  wm 32 0x021B001C 0x00008000
>  wm 32 0x021B0800 0xA1390003
> -wm 32 0x021B080C 0x00000000
> -wm 32 0x021B083C 0x41480148
> -wm 32 0x021B0848 0x40403E42
> -wm 32 0x021B0850 0x40405852
> +
> +SETUP_LEVEL_CAL
> +
>  wm 32 0x021B081C 0x33333333
>  wm 32 0x021B0820 0x33333333
>  wm 32 0x021B082C 0xf3333333
>  wm 32 0x021B0830 0xf3333333
> -wm 32 0x021B08C0 0x00922012
> -wm 32 0x021B0858 0x00000F00
> +
> +SETUP_MMDC_MPDCCR
> +
>  wm 32 0x021B08b8 0x00000800
>  wm 32 0x021B0004 0x0002002D
>  wm 32 0x021B0008 0x1B333030
> -wm 32 0x021B000C 0x676B52F3
> +
> +SETUP_MMDC0_MDCFG0
> +
>  wm 32 0x021B0010 0xB66D0B63
>  wm 32 0x021B0014 0x01FF00DB
>  wm 32 0x021B0018 0x00211740
>  wm 32 0x021B001C 0x00008000
>  wm 32 0x021B002C 0x000026D2
> -wm 32 0x021B0030 0x006B1023
> +
> +SETUP_MMDC0_MDOR
>  
>  SETUP_MDASP_MDCTL
>  
> -wm 32 0x021b0890 0x00400A38
> +SETUP_MPPDCMPR2
> +
>  wm 32 0x021B001C 0x02008032
>  wm 32 0x021B001C 0x00008033
>  wm 32 0x021B001C 0x00048031
> @@ -63,6 +67,8 @@ wm 32 0x021B001C 0x15208030
>  wm 32 0x021B001C 0x04008040
>  wm 32 0x021B0020 0x00007800
>  wm 32 0x021B0818 0x00000227
> -wm 32 0x021B0004 0x0002556D
> +
> +SETUP_MMDC0_MDPDC
> +
>  wm 32 0x021B0404 0x00011006
>  wm 32 0x021B001C 0x00000000
> diff --git a/arch/arm/boards/grinn-liteboard/lowlevel.c b/arch/arm/boards/grinn-liteboard/lowlevel.c
> index bb2e09016..d0786f917 100644
> --- a/arch/arm/boards/grinn-liteboard/lowlevel.c
> +++ b/arch/arm/boards/grinn-liteboard/lowlevel.c
> @@ -2,6 +2,7 @@
>   * Copyright (C) 2018 Grinn
>   *
>   * Author: Marcin Niestroj <m.niestroj@grinn-global.com>
> + * Modified by: Bartosz Bilas <b.bilas@grinn-global.com>
>   *
>   * This program is free software; you can redistribute it and/or
>   * modify it under the terms of the GNU General Public License as
> @@ -52,9 +53,7 @@ BAREBOX_IMD_TAG_STRING(liteboard_memsize_SZ_256M, IMD_TYPE_PARAMETER,
>  BAREBOX_IMD_TAG_STRING(liteboard_memsize_SZ_512M, IMD_TYPE_PARAMETER,
>  		"memsize=512", 0);
>  
> -extern char __dtb_imx6ul_liteboard_start[];
> -
> -static void __noreturn start_imx6_liteboard(void)
> +static void __noreturn start_imx6_liteboard(void *fdt_blob_fixed_offset)
>  {
>  	imx6ul_cpu_lowlevel_init();
>  
> @@ -65,18 +64,20 @@ static void __noreturn start_imx6_liteboard(void)
>  	if (IS_ENABLED(CONFIG_PBL_CONSOLE))
>  		setup_uart();
>  
> -	imx6ul_barebox_entry(__dtb_imx6ul_liteboard_start +
> -			get_runtime_offset());
> +	imx6ul_barebox_entry(fdt_blob_fixed_offset + get_runtime_offset());
>  }
>  
> -#define LITEBOARD_ENTRY(name, memory_size)				\
> +#define LITEBOARD_ENTRY(name, fdt_name, memory_size) \
>  	ENTRY_FUNCTION(name, r0, r1, r2)				\
>  	{								\
> +		extern char __dtb_##fdt_name##_liteboard_start[];       \
> +									\

If your board's Kconfig entry selects ARM_USE_COMPRESSED_DTB, you can
use __dtb_z_ here to use a compressed dtb. This makes barebox smaller.

>  		IMD_USED(liteboard_memsize_##memory_size);		\
>  									\
> -		start_imx6_liteboard();					\
> +		start_imx6_liteboard(__dtb_##fdt_name##_liteboard_start); \
>  	}
>  
>  
> -LITEBOARD_ENTRY(start_imx6ul_liteboard_256mb, SZ_256M);
> -LITEBOARD_ENTRY(start_imx6ul_liteboard_512mb, SZ_512M);
> +LITEBOARD_ENTRY(start_imx6ul_liteboard_256mb, imx6ul, SZ_256M);
> +LITEBOARD_ENTRY(start_imx6ul_liteboard_512mb, imx6ul, SZ_512M);
> +LITEBOARD_ENTRY(start_imx6ull_liteboard_256mb, imx6ull, SZ_256M);
> diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
> index ddfe64e83..8b43356fe 100644
> --- a/arch/arm/dts/Makefile
> +++ b/arch/arm/dts/Makefile
> @@ -26,7 +26,7 @@ lwl-dtb-$(CONFIG_MACH_FREESCALE_MX7_SABRESD) += imx7d-sdb.dtb.o
>  lwl-dtb-$(CONFIG_MACH_GK802) += imx6q-gk802.dtb.o
>  lwl-dtb-$(CONFIG_MACH_GLOBALSCALE_GURUPLUG) += kirkwood-guruplug-server-plus-bb.dtb.o
>  lwl-dtb-$(CONFIG_MACH_GLOBALSCALE_MIRABOX) += armada-370-mirabox-bb.dtb.o
> -lwl-dtb-$(CONFIG_MACH_GRINN_LITEBOARD) += imx6ul-liteboard.dtb.o
> +lwl-dtb-$(CONFIG_MACH_GRINN_LITEBOARD) += imx6ul-liteboard.dtb.o imx6ull-liteboard.dtb.o
>  lwl-dtb-$(CONFIG_MACH_GUF_SANTARO) += imx6q-guf-santaro.dtb.o
>  lwl-dtb-$(CONFIG_MACH_GUF_VINCELL) += imx53-guf-vincell.dtb.o imx53-guf-vincell-lt.dtb.o
>  lwl-dtb-$(CONFIG_MACH_GW_VENTANA) += imx6q-gw54xx.dtb.o
> diff --git a/arch/arm/dts/imx6ull-liteboard.dts b/arch/arm/dts/imx6ull-liteboard.dts
> new file mode 100644
> index 000000000..6e8237dfe
> --- /dev/null
> +++ b/arch/arm/dts/imx6ull-liteboard.dts
> @@ -0,0 +1,96 @@
> +/*
> + * Copyright 2020 Grinn
> + *
> + * Author: Bartosz Bilas <b.bilas@grinn-global.com>
> + *
> + * This file is dual-licensed: you can use it either under the terms
> + * of the GPL or the X11 license, at your option. Note that this dual
> + * licensing only applies to this file, and not this project as a
> + * whole.

We have been using SPDX-Identifiers in barebox. Would be great if new
code would do this as well.

> + *
> + *  a) This file is free software; you can redistribute it and/or
> + *     modify it under the terms of the GNU General Public License
> + *     version 2 as published by the Free Software Foundation.
> + *
> + *     This file is distributed in the hope that it will be useful,
> + *     but WITHOUT ANY WARRANTY; without even the implied warranty of
> + *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + *     GNU General Public License for more details.
> + *
> + * Or, alternatively,
> + *
> + *  b) Permission is hereby granted, free of charge, to any person
> + *     obtaining a copy of this software and associated documentation
> + *     files (the "Software"), to deal in the Software without
> + *     restriction, including without limitation the rights to use,
> + *     copy, modify, merge, publish, distribute, sublicense, and/or
> + *     sell copies of the Software, and to permit persons to whom the
> + *     Software is furnished to do so, subject to the following
> + *     conditions:
> + *
> + *     The above copyright notice and this permission notice shall be
> + *     included in all copies or substantial portions of the Software.
> + *
> + *     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
> + *     EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
> + *     OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
> + *     NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
> + *     HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
> + *     WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
> + *     FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
> + *     OTHER DEALINGS IN THE SOFTWARE.
> + */
> +
> +#include <arm/imx6ull-liteboard.dts>
> +
> +/ {
> +	chosen {
> +		environment-sd {
> +			compatible = "barebox,environment";
> +			device-path = &environment_sd;
> +			status = "disabled";
> +		};
> +
> +		environment-emmc {
> +			compatible = "barebox,environment";
> +			device-path = &environment_emmc;
> +			status = "disabled";
> +		};
> +	};
> +};
> +
> +&usdhc1 {
> +	partitions {
> +		compatible = "fixed-partitions";
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +
> +		partition@0 {
> +			label = "barebox";
> +			reg = <0x0 0xe0000>;
> +		};
> +
> +		environment_sd: partition@e0000 {
> +			label = "barebox-environment";
> +			reg = <0xe0000 0x20000>;
> +		};
> +	};
> +};
> +
> +&usdhc2 {
> +	partitions {
> +		compatible = "fixed-partitions";
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +
> +		partition@0 {
> +			label = "barebox";
> +			reg = <0x0 0xe0000>;
> +		};
> +
> +		environment_emmc: partition@e0000 {
> +			label = "barebox-environment";
> +			reg = <0xe0000 0x20000>;
> +		};
> +	};
> +};
> diff --git a/dts/src/arm/imx6ull-liteboard.dts b/dts/src/arm/imx6ull-liteboard.dts
> new file mode 100644
> index 000000000..92720286e
> --- /dev/null
> +++ b/dts/src/arm/imx6ull-liteboard.dts

We don't accept patches against dts/, because it's 1:1 imported from Linux
at regular intervals. Either upstream the device tree into Linux and wait
till it goes into a -rc and Sascha imports it or add your complete device tree
under barebox' arch/arm/dts

> @@ -0,0 +1,151 @@
> +/*
> + * Copyright 2020 Grinn
> + *
> + * Author: Bartosz Bilas <b.bilas@grinn-global.com>
> + *
> + * This file is dual-licensed: you can use it either under the terms
> + * of the GPL or the X11 license, at your option. Note that this dual
> + * licensing only applies to this file, and not this project as a
> + * whole.
> + *
> + *  a) This file is free software; you can redistribute it and/or
> + *     modify it under the terms of the GNU General Public License
> + *     version 2 as published by the Free Software Foundation.
> + *
> + *     This file is distributed in the hope that it will be useful,
> + *     but WITHOUT ANY WARRANTY; without even the implied warranty of
> + *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + *     GNU General Public License for more details.
> + *
> + * Or, alternatively,
> + *
> + *  b) Permission is hereby granted, free of charge, to any person
> + *     obtaining a copy of this software and associated documentation
> + *     files (the "Software"), to deal in the Software without
> + *     restriction, including without limitation the rights to use,
> + *     copy, modify, merge, publish, distribute, sublicense, and/or
> + *     sell copies of the Software, and to permit persons to whom the
> + *     Software is furnished to do so, subject to the following
> + *     conditions:
> + *
> + *     The above copyright notice and this permission notice shall be
> + *     included in all copies or substantial portions of the Software.
> + *
> + *     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
> + *     EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
> + *     OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
> + *     NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
> + *     HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
> + *     WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
> + *     FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
> + *     OTHER DEALINGS IN THE SOFTWARE.
> + */
> +
> +/dts-v1/;
> +
> +#include "imx6ull-litesom.dtsi"
> +
> +/ {
> +	model = "Grinn i.MX6ULL liteBoard";
> +	compatible = "grinn,imx6ull-liteboard", "grinn,imx6ull-litesom",
> +		     "fsl,imx6ull";
> +
> +	chosen {
> +		stdout-path = &uart1;
> +	};
> +
> +	reg_usb_otg1_vbus: regulator-usb-otg1-vbus {
> +		compatible = "regulator-fixed";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_usb_otg1_vbus>;
> +		regulator-name = "usb_otg1_vbus";
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		gpio = <&gpio2 8 GPIO_ACTIVE_LOW>;
> +	};
> +};
> +
> +&iomuxc {
> +	pinctrl_enet1: enet1grp {
> +		fsl,pins = <
> +			MX6UL_PAD_GPIO1_IO07__ENET1_MDC		0x1b0b0
> +			MX6UL_PAD_GPIO1_IO06__ENET1_MDIO	0x1b0b0
> +			MX6UL_PAD_ENET1_RX_EN__ENET1_RX_EN	0x1b0b0
> +			MX6UL_PAD_ENET1_RX_ER__ENET1_RX_ER	0x1b0b0
> +			MX6UL_PAD_ENET1_RX_DATA0__ENET1_RDATA00 0x1b0b0
> +			MX6UL_PAD_ENET1_RX_DATA1__ENET1_RDATA01 0x1b0b0
> +			MX6UL_PAD_ENET1_TX_EN__ENET1_TX_EN	0x1b0b0
> +			MX6UL_PAD_ENET1_TX_DATA0__ENET1_TDATA00 0x1b0b0
> +			MX6UL_PAD_ENET1_TX_DATA1__ENET1_TDATA01 0x1b0b0
> +			MX6UL_PAD_ENET1_TX_CLK__ENET1_REF_CLK1	0x4001b031
> +		>;
> +	};
> +
> +	pinctrl_uart1: uart1grp {
> +		fsl,pins = <
> +			MX6UL_PAD_UART1_TX_DATA__UART1_DCE_TX	0x1b0b1
> +			MX6UL_PAD_UART1_RX_DATA__UART1_DCE_RX	0x1b0b1

If you feel like it, you can add a DEBUG_LL setup in your lowlevel.c.
This can be very handy during debugging of early startup should this
become necessary (just search for DEBUG_LL in other boards).

> +		>;
> +	};
> +
> +	pinctrl_usdhc1: usdhc1grp {
> +		fsl,pins = <
> +			MX6UL_PAD_UART1_RTS_B__GPIO1_IO19	0x17059
> +			MX6UL_PAD_SD1_CMD__USDHC1_CMD		0x17059
> +			MX6UL_PAD_SD1_CLK__USDHC1_CLK		0x10071
> +			MX6UL_PAD_SD1_DATA0__USDHC1_DATA0	0x17059
> +			MX6UL_PAD_SD1_DATA1__USDHC1_DATA1	0x17059
> +			MX6UL_PAD_SD1_DATA2__USDHC1_DATA2	0x17059
> +			MX6UL_PAD_SD1_DATA3__USDHC1_DATA3	0x17059
> +		>;
> +	};
> +
> +	pinctrl_usb_otg1_vbus: usb-otg1-vbus {
> +		fsl,pins = <
> +			MX6UL_PAD_ENET2_RX_DATA0__GPIO2_IO08	0x79
> +		>;
> +	};
> +};
> +
> +&fec1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_enet1>;
> +	phy-mode = "rmii";
> +	phy-handle = <&ethphy0>;
> +	status = "okay";
> +
> +	mdio {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		ethphy0: ethernet-phy@0 {
> +			reg = <0>;
> +		};
> +	};
> +};
> +
> +&snvs_poweroff {
> +	status = "okay";
> +};
> +
> +&uart1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_uart1>;
> +	status = "okay";
> +};
> +
> +&usbotg1 {
> +	vbus-supply = <&reg_usb_otg1_vbus>;
> +	dr_mode = "host";
> +	status = "okay";
> +};
> +
> +&usdhc1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_usdhc1>;
> +	cd-gpios = <&gpio1 19 GPIO_ACTIVE_LOW>;
> +	no-1-8-v;
> +	keep-power-in-suspend;
> +	wakeup-source;

Why would a normal SD-Card be a wakeup-source?

> +	status = "okay";
> +};
> diff --git a/dts/src/arm/imx6ull-litesom.dtsi b/dts/src/arm/imx6ull-litesom.dtsi
> new file mode 100644
> index 000000000..7bb5b24ba
> --- /dev/null
> +++ b/dts/src/arm/imx6ull-litesom.dtsi
> @@ -0,0 +1,78 @@
> +/*
> + * Copyright 2020 Grinn
> + *
> + * Author: Bartosz Bilas <b.bilas@grinn-global.com>
> + *
> + * This file is dual-licensed: you can use it either under the terms
> + * of the GPL or the X11 license, at your option. Note that this dual
> + * licensing only applies to this file, and not this project as a
> + * whole.
> + *
> + *  a) This file is free software; you can redistribute it and/or
> + *     modify it under the terms of the GNU General Public License
> + *     version 2 as published by the Free Software Foundation.
> + *
> + *     This file is distributed in the hope that it will be useful,
> + *     but WITHOUT ANY WARRANTY; without even the implied warranty of
> + *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + *     GNU General Public License for more details.
> + *
> + * Or, alternatively,
> + *
> + *  b) Permission is hereby granted, free of charge, to any person
> + *     obtaining a copy of this software and associated documentation
> + *     files (the "Software"), to deal in the Software without
> + *     restriction, including without limitation the rights to use,
> + *     copy, modify, merge, publish, distribute, sublicense, and/or
> + *     sell copies of the Software, and to permit persons to whom the
> + *     Software is furnished to do so, subject to the following
> + *     conditions:
> + *
> + *     The above copyright notice and this permission notice shall be
> + *     included in all copies or substantial portions of the Software.
> + *
> + *     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
> + *     EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
> + *     OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
> + *     NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
> + *     HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
> + *     WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
> + *     FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
> + *     OTHER DEALINGS IN THE SOFTWARE.
> + */
> +
> +#include "imx6ull.dtsi"
> +
> +/ {
> +	model = "Grinn i.MX6ULL liteSOM";
> +	compatible = "grinn,imx6ull-litesom", "fsl,imx6ull";
> +};
> +
> +&iomuxc {
> +	pinctrl_usdhc2: usdhc2grp {
> +		fsl,pins = <
> +			MX6UL_PAD_NAND_RE_B__USDHC2_CLK	    0x10069
> +			MX6UL_PAD_NAND_WE_B__USDHC2_CMD	    0x17059
> +			MX6UL_PAD_NAND_DATA00__USDHC2_DATA0 0x17059
> +			MX6UL_PAD_NAND_DATA01__USDHC2_DATA1 0x17059
> +			MX6UL_PAD_NAND_DATA02__USDHC2_DATA2 0x17059
> +			MX6UL_PAD_NAND_DATA03__USDHC2_DATA3 0x17059
> +			MX6UL_PAD_NAND_DATA04__USDHC2_DATA4 0x17059
> +			MX6UL_PAD_NAND_DATA05__USDHC2_DATA5 0x17059
> +			MX6UL_PAD_NAND_DATA06__USDHC2_DATA6 0x17059
> +			MX6UL_PAD_NAND_DATA07__USDHC2_DATA7 0x17059
> +			MX6UL_PAD_NAND_ALE__USDHC2_RESET_B  0x17059
> +		>;
> +	};
> +};
> +
> +&usdhc2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_usdhc2>;
> +	no-1-8-v;
> +	non-removable;
> +	keep-power-in-suspend;
> +	wakeup-source;

Why would an eMMC be a wakeup-source?
You can add no-sd and no-sdio here as well to speed up boot a little

> +	bus-width = <8>;
> +	status = "okay";
> +};
> diff --git a/images/Makefile.imx b/images/Makefile.imx
> index 765702f26..3571e6568 100644
> --- a/images/Makefile.imx
> +++ b/images/Makefile.imx
> @@ -312,9 +312,11 @@ $(call build_imx_habv4img, CONFIG_MACH_ADVANTECH_ROM_742X, start_advantech_imx6d
>  $(call build_imx_habv4img, CONFIG_MACH_ZII_RDU2, start_imx6_zii_rdu2, zii-imx6q-rdu2/flash-header-rdu2, zii-imx6-rdu2)
>  
>  # ----------------------- i.MX6ul / i.MX6ull based boards --------------
> -$(call build_imx_habv4img, CONFIG_MACH_GRINN_LITEBOARD, start_imx6ul_liteboard_256mb, grinn-liteboard/flash-header-liteboard-256mb, grinn-liteboard-256mb)
> +$(call build_imx_habv4img, CONFIG_MACH_GRINN_LITEBOARD, start_imx6ul_liteboard_256mb, grinn-liteboard/flash-header-liteboard-imx6ul-256mb, grinn-liteboard-imx6ul-256mb)
>  
> -$(call build_imx_habv4img, CONFIG_MACH_GRINN_LITEBOARD, start_imx6ul_liteboard_512mb, grinn-liteboard/flash-header-liteboard-512mb, grinn-liteboard-512mb)
> +$(call build_imx_habv4img, CONFIG_MACH_GRINN_LITEBOARD, start_imx6ul_liteboard_512mb, grinn-liteboard/flash-header-liteboard-imx6ul-512mb, grinn-liteboard-imx6ul-512mb)
> +
> +$(call build_imx_habv4img, CONFIG_MACH_GRINN_LITEBOARD, start_imx6ull_liteboard_256mb, grinn-liteboard/flash-header-liteboard-imx6ull-256mb, grinn-liteboard-imx6ull-256mb)
>  
>  $(call build_imx_habv4img, CONFIG_MACH_NXP_IMX6ULL_EVK, start_nxp_imx6ull_evk, nxp-imx6ull-evk/flash-header-nxp-imx6ull-evk, nxp-imx6ull-evk)
>  
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
