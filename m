Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSyG4-0000fj-Cj
 for barebox@lists.infradead.org; Mon, 27 Apr 2020 07:32:54 +0000
Date: Mon, 27 Apr 2020 09:32:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200427073250.GL5877@pengutronix.de>
References: <20200424160111.10532-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200424160111.10532-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 1/3] ARM: stm32mp: add Linux Automation MC-1 support
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Apr 24, 2020 at 06:01:09PM +0200, Ahmad Fatoum wrote:
> This adds support for the Linux Automation GmbH MC-1 board built around
> the Octavo Systems OSD32MP157C-512M SiP.
> 
> The device tree is based on the one in linux-stm32/stm32-next, which
> will probably be merged for Linux v5.8-rc1. Instead of waiting that
> long, we import it here with some stuff removed/changed, so it's usable
> for both barebox and Linux, without the prerequisite patches.
> 
> The non-barebox specific parts have been moved into separate DTSIs
> (arch/arm/dts/stm32mp{157c-lxa-mc1,15xx-osd32}.dtsi), so both can be
> dropped after the v5.8-rc1 sync with only include path change necessary
> in arch/arm/dts/stm32mp157c-lxa-mc1.dts.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/boards/Makefile              |   1 +
>  arch/arm/boards/lxa-mc1/Makefile      |   2 +
>  arch/arm/boards/lxa-mc1/board.c       |  31 +++
>  arch/arm/boards/lxa-mc1/lowlevel.c    |  26 ++
>  arch/arm/dts/Makefile                 |   1 +
>  arch/arm/dts/stm32mp157c-lxa-mc1.dts  |  42 +++
>  arch/arm/dts/stm32mp157c-lxa-mc1.dtsi | 362 ++++++++++++++++++++++++++
>  arch/arm/dts/stm32mp15xx-osd32.dtsi   | 229 ++++++++++++++++
>  arch/arm/mach-stm32mp/Kconfig         |   4 +
>  images/Makefile.stm32mp               |   5 +
>  10 files changed, 703 insertions(+)
>  create mode 100644 arch/arm/boards/lxa-mc1/Makefile
>  create mode 100644 arch/arm/boards/lxa-mc1/board.c
>  create mode 100644 arch/arm/boards/lxa-mc1/lowlevel.c
>  create mode 100644 arch/arm/dts/stm32mp157c-lxa-mc1.dts
>  create mode 100644 arch/arm/dts/stm32mp157c-lxa-mc1.dtsi
>  create mode 100644 arch/arm/dts/stm32mp15xx-osd32.dtsi
> 
> diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
> index 9fe458e0a390..e9e9163d589b 100644
> --- a/arch/arm/boards/Makefile
> +++ b/arch/arm/boards/Makefile
> @@ -129,6 +129,7 @@ obj-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT)	+= terasic-sockit/
>  obj-$(CONFIG_MACH_SOLIDRUN_CUBOX)		+= solidrun-cubox/
>  obj-$(CONFIG_MACH_SOLIDRUN_MICROSOM)		+= solidrun-microsom/
>  obj-$(CONFIG_MACH_STM32MP157C_DK2)		+= stm32mp157c-dk2/
> +obj-$(CONFIG_MACH_LXA_MC1)			+= lxa-mc1/
>  obj-$(CONFIG_MACH_TECHNEXION_PICO_HOBBIT)	+= technexion-pico-hobbit/
>  obj-$(CONFIG_MACH_TECHNEXION_WANDBOARD)		+= technexion-wandboard/
>  obj-$(CONFIG_MACH_TNY_A9260)			+= tny-a926x/
> diff --git a/arch/arm/boards/lxa-mc1/Makefile b/arch/arm/boards/lxa-mc1/Makefile
> new file mode 100644
> index 000000000000..092c31d6b28d
> --- /dev/null
> +++ b/arch/arm/boards/lxa-mc1/Makefile
> @@ -0,0 +1,2 @@
> +lwl-y += lowlevel.o
> +obj-y += board.o
> diff --git a/arch/arm/boards/lxa-mc1/board.c b/arch/arm/boards/lxa-mc1/board.c
> new file mode 100644
> index 000000000000..d36924fc2793
> --- /dev/null
> +++ b/arch/arm/boards/lxa-mc1/board.c
> @@ -0,0 +1,31 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +#include <common.h>
> +#include <linux/sizes.h>
> +#include <init.h>
> +#include <asm/memory.h>
> +#include <mach/bbu.h>
> +#include <bootsource.h>
> +
> +static int mc1_device_init(void)
> +{
> +	int flags;
> +	if (!of_machine_is_compatible("lxa,stm32mp157c-mc1"))
> +		return 0;
> +
> +	flags = bootsource_get_instance() == 0 ? BBU_HANDLER_FLAG_DEFAULT : 0;
> +	stm32mp_bbu_mmc_register_handler("sd", "/dev/mmc0.ssbl", flags);
> +
> +	flags = bootsource_get_instance() == 1 ? BBU_HANDLER_FLAG_DEFAULT : 0;
> +	stm32mp_bbu_mmc_register_handler("emmc", "/dev/mmc1.ssbl", flags);
> +
> +
> +	if (bootsource_get_instance() == 0)
> +		of_device_enable_path("/chosen/environment-sd");
> +	else
> +		of_device_enable_path("/chosen/environment-emmc");

The paths are both enabled already, did you forget to set status =
"disabled" in the device tree?

> +/ {
> +	chosen {
> +		environment-sd {
> +			compatible = "barebox,environment";
> +			device-path = &sdmmc1, "partname:barebox-environment";
> +		};
> +
> +		environment-emmc {
> +			compatible = "barebox,environment";
> +			device-path = &sdmmc2, "partname:barebox-environment";
> +		};
> +	};
> +
> +};

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
