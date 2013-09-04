Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VH6ef-0004IL-90
 for barebox@lists.infradead.org; Wed, 04 Sep 2013 06:33:30 +0000
Date: Wed, 4 Sep 2013 08:33:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130904063307.GG30088@pengutronix.de>
References: <1378182813-30776-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1378182813-30776-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] MIPS: qemu-malta: switch to devicetree
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Sep 03, 2013 at 08:33:33AM +0400, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>

Applied, thanks

Sascha

> ---
>  arch/mips/boards/qemu-malta/init.c     | 31 ++-----------------------------
>  arch/mips/configs/qemu-malta_defconfig |  1 +
>  arch/mips/dts/qemu-malta.dts           | 33 +++++++++++++++++++++++++++++++++
>  3 files changed, 36 insertions(+), 29 deletions(-)
> 
> diff --git a/arch/mips/boards/qemu-malta/init.c b/arch/mips/boards/qemu-malta/init.c
> index ddc90dc..4d12495 100644
> --- a/arch/mips/boards/qemu-malta/init.c
> +++ b/arch/mips/boards/qemu-malta/init.c
> @@ -17,39 +17,12 @@
>   */
>  
>  #include <common.h>
> -#include <types.h>
> -#include <driver.h>
>  #include <init.h>
> -#include <ns16550.h>
> -#include <mach/hardware.h>
> -#include <partition.h>
> -#include <sizes.h>
>  
> -static int malta_devices_init(void)
> +static int malta_core_init(void)
>  {
> -	add_cfi_flash_device(0, 0x1e000000, SZ_4M, 0);
> -
> -	devfs_add_partition("nor0", 0x0, SZ_512K, DEVFS_PARTITION_FIXED, "self");
> -	devfs_add_partition("nor0", SZ_512K, SZ_64K, DEVFS_PARTITION_FIXED, "env0");
> -
> -	return 0;
> -}
> -device_initcall(malta_devices_init);
> -
> -static struct NS16550_plat serial_plat = {
> -	.clock = 1843200, /* no matter for emulated port */
> -	.shift = 0,
> -};
> -
> -static int malta_console_init(void)
> -{
> -	barebox_set_model("qemu malta");
>  	barebox_set_hostname("malta");
>  
> -	/* Register the serial port */
> -	add_ns16550_device(DEVICE_ID_DYNAMIC, MALTA_PIIX4_UART0, 8,
> -			IORESOURCE_MEM_8BIT, &serial_plat);
> -
>  	return 0;
>  }
> -console_initcall(malta_console_init);
> +core_initcall(malta_core_init);
> diff --git a/arch/mips/configs/qemu-malta_defconfig b/arch/mips/configs/qemu-malta_defconfig
> index 18c840d..1b9ee9a 100644
> --- a/arch/mips/configs/qemu-malta_defconfig
> +++ b/arch/mips/configs/qemu-malta_defconfig
> @@ -54,6 +54,7 @@ CONFIG_NET_PING=y
>  CONFIG_NET_NETCONSOLE=y
>  CONFIG_NET_RESOLV=y
>  CONFIG_OFDEVICE=y
> +CONFIG_OF_BAREBOX_DRIVERS=y
>  # CONFIG_SPI is not set
>  CONFIG_MTD=y
>  CONFIG_DRIVER_CFI=y
> diff --git a/arch/mips/dts/qemu-malta.dts b/arch/mips/dts/qemu-malta.dts
> index c4dcf05..4057729 100644
> --- a/arch/mips/dts/qemu-malta.dts
> +++ b/arch/mips/dts/qemu-malta.dts
> @@ -6,7 +6,40 @@
>  	model = "qemu malta";
>  	compatible = "qemu,malta";
>  
> +	chosen {
> +		environment@0 {
> +			compatible = "barebox,environment";
> +			device-path = &nor0, "partname:barebox-environment";
> +		};
> +	};
> +
>  	memory {
>  		reg = <0x00000000 0x10000000>;
>  	};
> +
> +	uart0: serial@b00003f8 {
> +		compatible = "ns16550a";
> +		reg = <0xb00003f8 0x08>;
> +		reg-shift = <0>;
> +		/* no matter for emulated port */
> +		clock-frequency = <1843200>;
> +	};
> +
> +	nor0: flash@be000000 {
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		compatible = "cfi-flash";
> +		reg = <0xbe000000 0x00400000>;
> +
> +		partition@0 {
> +			label = "barebox";
> +			reg = <0 0x80000>;
> +			read-only;
> +		};
> +
> +		partition@80000 {
> +			label = "barebox-environment";
> +			reg = <0x80000 0x10000>;
> +		};
> +	};
>  };
> -- 
> 1.8.4.rc3
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
