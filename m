Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from slb-mail0.epfl.ch ([2001:620:618:1e0:1:80b2:e058:1]
 helo=smtp0.epfl.ch)
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WJIhu-0002En-Ei
 for barebox@lists.infradead.org; Fri, 28 Feb 2014 08:22:12 +0000
Message-ID: <53104714.6090909@epfl.ch>
Date: Fri, 28 Feb 2014 09:21:40 +0100
From: =?ISO-8859-15?Q?Philippe_R=E9tornaz?= <philippe.retornaz@epfl.ch>
MIME-Version: 1.0
References: <1393509826-19549-1-git-send-email-philippe.retornaz@epfl.ch>
 <1393509826-19549-2-git-send-email-philippe.retornaz@epfl.ch>
 <20140227203652.GS17250@pengutronix.de>
In-Reply-To: <20140227203652.GS17250@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-15"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/1] ARM: i.MX31: Add support for mx31moboard board
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Le 27/02/2014 21:36, Sascha Hauer a =E9crit :
> On Thu, Feb 27, 2014 at 03:03:45PM +0100, Philippe R=E9tornaz wrote:
>> +lwl-y +=3D lowlevel.o
>> +obj-y +=3D mx31moboard.o
>> diff --git a/arch/arm/boards/mx31moboard/env/boot/net b/arch/arm/boards/=
mx31moboard/env/boot/net
>> new file mode 100644
>> index 0000000..e81f2cd
>> --- /dev/null
>> +++ b/arch/arm/boards/mx31moboard/env/boot/net
>> @@ -0,0 +1,3 @@
>> +#!/bin/sh
>> +
>> +# No network card support on this board
>
> Are you sure you want to drop this? You could attach a USB ethernet
> dongle.

Ok, I will remove this file.

>> diff --git a/arch/arm/boards/mx31moboard/env/boot/sd b/arch/arm/boards/m=
x31moboard/env/boot/sd
>> new file mode 100644
>> index 0000000..f96633f
>> --- /dev/null
>> +++ b/arch/arm/boards/mx31moboard/env/boot/sd
>> @@ -0,0 +1,18 @@
>> +#!/bin/sh
>> +
>> +if [ "$1" =3D menu ]; then
>> +        boot-menu-add-entry "$0" "SD Boot"
>> +        exit
>> +fi
>> +
>> +global.bootm.image=3D/mnt/sd/boot/zImage
>> +
>> +if [ -e /mnt/sd/boot/oftree ]; then
>> +	global.bootm.oftree=3D/mnt/sd/boot/oftree
>> +fi
>> +
>> +if [ -e /mnt/sd/boot/initrd.img ]; then
>> +	global.bootm.initrd=3D/mnt/sd/boot/initrd.img
>> +fi
>> +
>> +global.linux.bootargs.dyn.root=3D"root=3D/dev/mmcblk0p1 rootwait"
>
> Consider using bootloader spec entries, see
> http://www.freedesktop.org/wiki/Specifications/BootLoaderSpec/
> Basically you put a config file under /loader/entries/ in your rootfs.
> The config file describes where your kernel/initrd/oftree is. Under
> barebox you just have to 'boot mci0' without further configuration.

Seems nice, I'll have a look at it.

>> +void __bare_init __naked barebox_arm_reset_vector(void)
>> +{
>> +	uint32_t r;
>> +
>> +	arm_cpu_lowlevel_init();
>> +
>> +	/* Enable IPU Display interface */
>> +	writel(1 << 6, MX31_IPU_CTRL_BASE_ADDR);
>> +
>> +	writel(0x074B0BF5, MX31_CCM_BASE_ADDR + MX31_CCM_CCMR);
>> +
>> +	asm volatile("1:\n\t"
>> +			"SUBS %0, %0, #1	\n\t"
>> +			"BNE  1b		\n\t"
>> +			: : "r" (0x4000) : "cc");
>
> You can write a delay loop in c with:
>
> 	volatile int c;
>
> 	for (c =3D 0; c < 0x4000; c++)

Well, no, at least not on my toolchain. Because the volatile ask gcc to
not optimize the variable, it then put it on the stack. But the stack
pointer is not yet initialized, so it crashes. I've tried with a
barrier() instead of the volatile, but it leads to the same assembly
(which is not surprising). Here is the compiled code with your suggestion:

         ldr     r2, .L9+8
         b       .L2
.L3:
         ldr     r3, [sp, #4]
         add     r3, r3, #1
         str     r3, [sp, #4]
.L2:
         ldr     r3, [sp, #4]
         cmp     r3, r2
         ble     .L3

With L9+8:
         .word   16383

But the stack pointer is initialised only in barebox_arm_entry() which
is called later. So I decided that a two instructions assembly loop was
the simplest solution.

>
>> +#include <asm/mmu.h>
>> +#include <partition.h>
>> +#include <generated/mach-types.h>
>> +#include <asm/barebox-arm.h>
>> +#include <mach/devices-imx31.h>
>> +
>> +#ifdef CONFIG_USB
>> +#define USBH2_EN_B	IOMUX_TO_GPIO(MX31_PIN_SCK6)
>> +#define USB_RESET_B	IOMUX_TO_GPIO(MX31_PIN_GPIO1_0)
>> +
>> +static void mx31moboard_usb_init(void)
>> +{
>> +	u32 tmp;
>> +
>
> Instead of ifdeffing the code you can write:
>
> 	if (!IS_ENABLED(CONFIG_USB))
> 		return;
>
> The compiler is clever enough to optimize the unused code away, still
> you get better compile coverage.
>
>> +static void mx31moboard_add_leds(void)
>> +{
>> +	int i;
>> +
>
> Same here:
>
> 	if (!IS_ENABLED(CONFIG_LED_GPIO))
> 		return;
>

Ok, will do.

Thanks for this review, I will post a V2 with the required changes.

Philippe


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
