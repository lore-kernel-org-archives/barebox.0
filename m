Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1guHn4-0005IJ-BY
 for barebox@lists.infradead.org; Thu, 14 Feb 2019 14:15:04 +0000
Date: Thu, 14 Feb 2019 15:15:00 +0100
From: Roland Hieber <rhi@pengutronix.de>
Message-ID: <20190214141500.fc6x2ryqoyb52v5h@pengutronix.de>
References: <20190214132429.7463-1-tomaz.solc@tablix.org>
 <20190214132429.7463-8-tomaz.solc@tablix.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190214132429.7463-8-tomaz.solc@tablix.org>
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
Subject: Re: [PATCH 7/7] ARM: rpi: Add device tree for Compute Module 3.
To: Tomaz Solc <tomaz.solc@tablix.org>
Cc: barebox@lists.infradead.org

Hi Tomaz,

On Thu, Feb 14, 2019 at 02:24:29PM +0100, Tomaz Solc wrote:
> Compute Module needs "no-sd" property on the MMC interface otherwise
> mci-bcm2835 hangs on SD card probe.
> 
> The switch to uart0 introduced in ab76f9d0 doesn't currently work on Compute
> Module.
> ---
>  arch/arm/boards/raspberry-pi/lowlevel.c | 10 ++++++++++
>  arch/arm/dts/Makefile                   |  1 +
>  arch/arm/dts/bcm2837-rpi-cm3.dts        | 26 ++++++++++++++++++++++++++
>  arch/arm/mach-bcm283x/Kconfig           |  6 ++++++
>  images/Makefile.bcm283x                 |  6 +++++-
>  5 files changed, 48 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arm/dts/bcm2837-rpi-cm3.dts
> 
> diff --git a/arch/arm/boards/raspberry-pi/lowlevel.c b/arch/arm/boards/raspberry-pi/lowlevel.c
> index 34c935092..1a3d39421 100644
> --- a/arch/arm/boards/raspberry-pi/lowlevel.c
> +++ b/arch/arm/boards/raspberry-pi/lowlevel.c
> @@ -33,3 +33,13 @@ ENTRY_FUNCTION(start_raspberry_pi3, r0, r1, r2)
>  
>  	barebox_arm_entry(BCM2835_SDRAM_BASE, SZ_512M, fdt);
>  }
> +
> +extern char __dtb_bcm2837_rpi_cm3_start[];
> +ENTRY_FUNCTION(start_raspberry_pi_cm3, r0, r1, r2)
> +{
> +	void *fdt = __dtb_bcm2837_rpi_cm3_start + get_runtime_offset();
> +
> +	arm_cpu_lowlevel_init();
> +
> +	barebox_arm_entry(BCM2835_SDRAM_BASE, SZ_512M, fdt);
> +}
> diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
> index 3cdee1ffb..82595f9b7 100644
> --- a/arch/arm/dts/Makefile
> +++ b/arch/arm/dts/Makefile
> @@ -75,6 +75,7 @@ pbl-dtb-$(CONFIG_MACH_REALQ7) += imx6q-dmo-edmqmx6.dtb.o
>  pbl-dtb-$(CONFIG_MACH_RPI) += bcm2835-rpi.dtb.o
>  pbl-dtb-$(CONFIG_MACH_RPI2) += bcm2836-rpi-2.dtb.o
>  pbl-dtb-$(CONFIG_MACH_RPI3) += bcm2837-rpi-3.dtb.o
> +pbl-dtb-$(CONFIG_MACH_RPI_CM3) += bcm2837-rpi-cm3.dtb.o
>  pbl-dtb-$(CONFIG_MACH_SABRELITE) += imx6q-sabrelite.dtb.o imx6dl-sabrelite.dtb.o
>  pbl-dtb-$(CONFIG_MACH_SABRESD) += imx6q-sabresd.dtb.o
>  pbl-dtb-$(CONFIG_MACH_FREESCALE_IMX6SX_SABRESDB) += imx6sx-sdb.dtb.o
> diff --git a/arch/arm/dts/bcm2837-rpi-cm3.dts b/arch/arm/dts/bcm2837-rpi-cm3.dts
> new file mode 100644
> index 000000000..636db9a1e
> --- /dev/null
> +++ b/arch/arm/dts/bcm2837-rpi-cm3.dts
> @@ -0,0 +1,26 @@
> +#include <arm64/broadcom/bcm2837-rpi-3-b.dts>

This upstream dts only includes arm/bcm2837-rpi-3-b.dts, and there is
also a arch/arm/boot/dts/bcm2837-rpi-cm3.dtsi that does more than just
arm/bcm2837-rpi-3-b.dts, maybe include that one instead?

> +
> +/ {
> +	chosen {
> +		stdout-path = &uart0;
> +	};
> +
> +	memory {
> +		reg = <0x0 0x0>;
> +	};
> +};
> +
> +&uart0 {
> +	status = "okay";
> +	/delete-node/ bluetooth;
> +};
> +
> +&sdhci {
> +	pinctrl-0 = <&emmc_gpio48>;
> +	no-sd;
> +	/delete-node/ wifi@1;
> +};
> +
> +&sdhost {
> +	status = "disabled";
> +};
> diff --git a/arch/arm/mach-bcm283x/Kconfig b/arch/arm/mach-bcm283x/Kconfig
> index af2f88c47..bb5f75dc9 100644
> --- a/arch/arm/mach-bcm283x/Kconfig
> +++ b/arch/arm/mach-bcm283x/Kconfig
> @@ -25,6 +25,12 @@ config MACH_RPI3
>  	select MACH_RPI_COMMON
>  	select ARM_SECURE_MONITOR
>  
> +config MACH_RPI_CM3
> +	bool "RaspberryPi Compute Module 3 (BCM2837/CORTEX-A53)"
> +	select CPU_V7
> +	select MACH_RPI_COMMON
> +	select ARM_SECURE_MONITOR
> +
>  endmenu
>  
>  config MACH_RPI_DEBUG_UART_BASE
> diff --git a/images/Makefile.bcm283x b/images/Makefile.bcm283x
> index 9199f153d..2189f266e 100644
> --- a/images/Makefile.bcm283x
> +++ b/images/Makefile.bcm283x
> @@ -12,4 +12,8 @@ image-$(CONFIG_MACH_RPI2) += barebox-raspberry-pi-2.img
>  
>  pblb-$(CONFIG_MACH_RPI3) += start_raspberry_pi3
>  FILE_barebox-raspberry-pi-3.img = start_raspberry_pi3.pblb
> -image-$(CONFIG_MACH_RPI3) += barebox-raspberry-pi-3.img
> \ No newline at end of file
> +image-$(CONFIG_MACH_RPI3) += barebox-raspberry-pi-3.img
> +
> +pblb-$(CONFIG_MACH_RPI_CM3) += start_raspberry_pi_cm3
> +FILE_barebox-raspberry-pi-cm3.img = start_raspberry_pi_cm3.pblb
> +image-$(CONFIG_MACH_RPI_CM3) += barebox-raspberry-pi-cm3.img

Please re-add the missing newline at the end.

 - Roland

-- 
Roland Hieber                     | r.hieber@pengutronix.de     |
Pengutronix e.K.                  | https://www.pengutronix.de/ |
Peiner Str. 6-8, 31137 Hildesheim | Phone: +49-5121-206917-5086 |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
