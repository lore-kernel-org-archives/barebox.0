Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22d.google.com ([2a00:1450:4010:c03::22d])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VGiTJ-0005cG-T3
 for barebox@lists.infradead.org; Tue, 03 Sep 2013 04:44:11 +0000
Received: by mail-la0-f45.google.com with SMTP id eh20so4144092lab.18
 for <barebox@lists.infradead.org>; Mon, 02 Sep 2013 21:43:47 -0700 (PDT)
Date: Tue, 3 Sep 2013 08:41:23 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20130903084123.60bf8561ef15b863013431e7@gmail.com>
In-Reply-To: <1378182813-30776-1-git-send-email-antonynpavlov@gmail.com>
References: <1378182813-30776-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] MIPS: qemu-malta: switch to devicetree
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue,  3 Sep 2013 08:33:33 +0400
Antony Pavlov <antonynpavlov@gmail.com> wrote:

> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  arch/mips/boards/qemu-malta/init.c     | 31 ++--------------------------=
---
>  arch/mips/configs/qemu-malta_defconfig |  1 +
>  arch/mips/dts/qemu-malta.dts           | 33 ++++++++++++++++++++++++++++=
+++++
>  3 files changed, 36 insertions(+), 29 deletions(-)
> =

> diff --git a/arch/mips/boards/qemu-malta/init.c b/arch/mips/boards/qemu-m=
alta/init.c
> index ddc90dc..4d12495 100644
> --- a/arch/mips/boards/qemu-malta/init.c
> +++ b/arch/mips/boards/qemu-malta/init.c
> @@ -17,39 +17,12 @@
>   */
>  =

>  #include <common.h>
> -#include <types.h>
> -#include <driver.h>
>  #include <init.h>
> -#include <ns16550.h>
> -#include <mach/hardware.h>
> -#include <partition.h>
> -#include <sizes.h>
>  =

> -static int malta_devices_init(void)
> +static int malta_core_init(void)
>  {
> -	add_cfi_flash_device(0, 0x1e000000, SZ_4M, 0);
> -
> -	devfs_add_partition("nor0", 0x0, SZ_512K, DEVFS_PARTITION_FIXED, "self"=
);
> -	devfs_add_partition("nor0", SZ_512K, SZ_64K, DEVFS_PARTITION_FIXED, "en=
v0");
> -
> -	return 0;
> -}
> -device_initcall(malta_devices_init);
> -
> -static struct NS16550_plat serial_plat =3D {
> -	.clock =3D 1843200, /* no matter for emulated port */
> -	.shift =3D 0,
> -};
> -
> -static int malta_console_init(void)
> -{
> -	barebox_set_model("qemu malta");
>  	barebox_set_hostname("malta");
>

May be it is reasonable to add hostname support to dts?

The lonely barebox_set_hostname() in the malta board code looks very pathet=
ically :)

> -	/* Register the serial port */
> -	add_ns16550_device(DEVICE_ID_DYNAMIC, MALTA_PIIX4_UART0, 8,
> -			IORESOURCE_MEM_8BIT, &serial_plat);
> -
>  	return 0;
>  }
> -console_initcall(malta_console_init);
> +core_initcall(malta_core_init);
> diff --git a/arch/mips/configs/qemu-malta_defconfig b/arch/mips/configs/q=
emu-malta_defconfig
> index 18c840d..1b9ee9a 100644
> --- a/arch/mips/configs/qemu-malta_defconfig
> +++ b/arch/mips/configs/qemu-malta_defconfig
> @@ -54,6 +54,7 @@ CONFIG_NET_PING=3Dy
>  CONFIG_NET_NETCONSOLE=3Dy
>  CONFIG_NET_RESOLV=3Dy
>  CONFIG_OFDEVICE=3Dy
> +CONFIG_OF_BAREBOX_DRIVERS=3Dy
>  # CONFIG_SPI is not set
>  CONFIG_MTD=3Dy
>  CONFIG_DRIVER_CFI=3Dy
> diff --git a/arch/mips/dts/qemu-malta.dts b/arch/mips/dts/qemu-malta.dts
> index c4dcf05..4057729 100644
> --- a/arch/mips/dts/qemu-malta.dts
> +++ b/arch/mips/dts/qemu-malta.dts
> @@ -6,7 +6,40 @@
>  	model =3D "qemu malta";
>  	compatible =3D "qemu,malta";
>  =

> +	chosen {
> +		environment@0 {
> +			compatible =3D "barebox,environment";
> +			device-path =3D &nor0, "partname:barebox-environment";
> +		};
> +	};
> +
>  	memory {
>  		reg =3D <0x00000000 0x10000000>;
>  	};
> +
> +	uart0: serial@b00003f8 {
> +		compatible =3D "ns16550a";
> +		reg =3D <0xb00003f8 0x08>;
> +		reg-shift =3D <0>;
> +		/* no matter for emulated port */
> +		clock-frequency =3D <1843200>;
> +	};
> +
> +	nor0: flash@be000000 {
> +		#address-cells =3D <1>;
> +		#size-cells =3D <1>;
> +		compatible =3D "cfi-flash";
> +		reg =3D <0xbe000000 0x00400000>;
> +
> +		partition@0 {
> +			label =3D "barebox";
> +			reg =3D <0 0x80000>;
> +			read-only;
> +		};
> +
> +		partition@80000 {
> +			label =3D "barebox-environment";
> +			reg =3D <0x80000 0x10000>;
> +		};
> +	};
>  };
> -- =

> 1.8.4.rc3
> =



-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
