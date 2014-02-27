Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WJ7hj-0002Zy-HM
 for barebox@lists.infradead.org; Thu, 27 Feb 2014 20:37:16 +0000
Date: Thu, 27 Feb 2014 21:36:52 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140227203652.GS17250@pengutronix.de>
References: <1393509826-19549-1-git-send-email-philippe.retornaz@epfl.ch>
 <1393509826-19549-2-git-send-email-philippe.retornaz@epfl.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1393509826-19549-2-git-send-email-philippe.retornaz@epfl.ch>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/1] ARM: i.MX31: Add support for mx31moboard board
To: Philippe =?iso-8859-15?Q?R=E9tornaz?= <philippe.retornaz@epfl.ch>
Cc: barebox@lists.infradead.org

Looks mostly good, some remarks inline.

On Thu, Feb 27, 2014 at 03:03:45PM +0100, Philippe R=E9tornaz wrote:
> +lwl-y +=3D lowlevel.o
> +obj-y +=3D mx31moboard.o
> diff --git a/arch/arm/boards/mx31moboard/env/boot/net b/arch/arm/boards/m=
x31moboard/env/boot/net
> new file mode 100644
> index 0000000..e81f2cd
> --- /dev/null
> +++ b/arch/arm/boards/mx31moboard/env/boot/net
> @@ -0,0 +1,3 @@
> +#!/bin/sh
> +
> +# No network card support on this board

Are you sure you want to drop this? You could attach a USB ethernet
dongle.

> diff --git a/arch/arm/boards/mx31moboard/env/boot/sd b/arch/arm/boards/mx=
31moboard/env/boot/sd
> new file mode 100644
> index 0000000..f96633f
> --- /dev/null
> +++ b/arch/arm/boards/mx31moboard/env/boot/sd
> @@ -0,0 +1,18 @@
> +#!/bin/sh
> +
> +if [ "$1" =3D menu ]; then
> +        boot-menu-add-entry "$0" "SD Boot"
> +        exit
> +fi
> +
> +global.bootm.image=3D/mnt/sd/boot/zImage
> +
> +if [ -e /mnt/sd/boot/oftree ]; then
> +	global.bootm.oftree=3D/mnt/sd/boot/oftree
> +fi
> +
> +if [ -e /mnt/sd/boot/initrd.img ]; then
> +	global.bootm.initrd=3D/mnt/sd/boot/initrd.img
> +fi
> +
> +global.linux.bootargs.dyn.root=3D"root=3D/dev/mmcblk0p1 rootwait"

Consider using bootloader spec entries, see
http://www.freedesktop.org/wiki/Specifications/BootLoaderSpec/
Basically you put a config file under /loader/entries/ in your rootfs.
The config file describes where your kernel/initrd/oftree is. Under
barebox you just have to 'boot mci0' without further configuration.

> +void __bare_init __naked barebox_arm_reset_vector(void)
> +{
> +	uint32_t r;
> +
> +	arm_cpu_lowlevel_init();
> +
> +	/* Enable IPU Display interface */
> +	writel(1 << 6, MX31_IPU_CTRL_BASE_ADDR);
> +
> +	writel(0x074B0BF5, MX31_CCM_BASE_ADDR + MX31_CCM_CCMR);
> +
> +	asm volatile("1:\n\t"
> +			"SUBS %0, %0, #1	\n\t"
> +			"BNE  1b		\n\t"
> +			: : "r" (0x4000) : "cc");

You can write a delay loop in c with:

	volatile int c;

	for (c =3D 0; c < 0x4000; c++)

(the volatile prevents the compiler from optimizing the loop away)

> +#include <asm/mmu.h>
> +#include <partition.h>
> +#include <generated/mach-types.h>
> +#include <asm/barebox-arm.h>
> +#include <mach/devices-imx31.h>
> +
> +#ifdef CONFIG_USB
> +#define USBH2_EN_B	IOMUX_TO_GPIO(MX31_PIN_SCK6)
> +#define USB_RESET_B	IOMUX_TO_GPIO(MX31_PIN_GPIO1_0)
> +
> +static void mx31moboard_usb_init(void)
> +{
> +	u32 tmp;
> +

Instead of ifdeffing the code you can write:

	if (!IS_ENABLED(CONFIG_USB))
		return;

The compiler is clever enough to optimize the unused code away, still
you get better compile coverage.

> +static void mx31moboard_add_leds(void)
> +{
> +	int i;
> +

Same here:

	if (!IS_ENABLED(CONFIG_LED_GPIO))
		return;

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
