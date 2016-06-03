Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.4.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b8kp7-0007Gu-I0
 for barebox@lists.infradead.org; Fri, 03 Jun 2016 08:51:28 +0000
Date: Fri, 3 Jun 2016 10:50:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160603085058.GX31666@pengutronix.de>
References: <1464854818-28653-1-git-send-email-poggi.raph@gmail.com>
 <1464854818-28653-13-git-send-email-poggi.raph@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1464854818-28653-13-git-send-email-poggi.raph@gmail.com>
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
Subject: Re: [PATCH 12/12] arm: boards: add virt board
To: Raphael Poggi <poggi.raph@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Jun 02, 2016 at 10:06:58AM +0200, Raphael Poggi wrote:
> Add qemu virt board which emulates arm64 board.
> =

> Signed-off-by: Raphael Poggi <poggi.raph@gmail.com>
> ---
>  arch/arm/Kconfig                           |  9 ++++
>  arch/arm/boards/Makefile                   |  1 +
>  arch/arm/boards/virt/Kconfig               |  8 ++++
>  arch/arm/boards/virt/Makefile              |  1 +
>  arch/arm/boards/virt/env/bin/_update       | 36 ++++++++++++++++
>  arch/arm/boards/virt/env/bin/boot          | 38 +++++++++++++++++
>  arch/arm/boards/virt/env/bin/init          | 20 +++++++++
>  arch/arm/boards/virt/env/bin/update_kernel |  8 ++++
>  arch/arm/boards/virt/env/bin/update_root   |  8 ++++
>  arch/arm/boards/virt/env/config            | 38 +++++++++++++++++
>  arch/arm/boards/virt/env/init/mtdparts-nor | 11 +++++
>  arch/arm/boards/virt/init.c                | 67 ++++++++++++++++++++++++=
++++++
>  arch/arm/configs/virt_defconfig            | 55 ++++++++++++++++++++++++
>  arch/arm/mach-virt/Kconfig                 | 15 +++++++
>  arch/arm/mach-virt/Makefile                |  3 ++
>  arch/arm/mach-virt/devices.c               | 30 +++++++++++++
>  arch/arm/mach-virt/include/mach/debug_ll.h | 24 +++++++++++
>  arch/arm/mach-virt/include/mach/devices.h  | 13 ++++++
>  arch/arm/mach-virt/lowlevel.c              | 19 +++++++++
>  arch/arm/mach-virt/reset.c                 | 24 +++++++++++
>  20 files changed, 428 insertions(+)
>  create mode 100644 arch/arm/boards/virt/Kconfig
>  create mode 100644 arch/arm/boards/virt/Makefile
>  create mode 100644 arch/arm/boards/virt/env/bin/_update
>  create mode 100644 arch/arm/boards/virt/env/bin/boot
>  create mode 100644 arch/arm/boards/virt/env/bin/init
>  create mode 100644 arch/arm/boards/virt/env/bin/update_kernel
>  create mode 100644 arch/arm/boards/virt/env/bin/update_root
>  create mode 100644 arch/arm/boards/virt/env/config
>  create mode 100644 arch/arm/boards/virt/env/init/mtdparts-nor
>  create mode 100644 arch/arm/boards/virt/init.c
>  create mode 100644 arch/arm/configs/virt_defconfig
>  create mode 100644 arch/arm/mach-virt/Kconfig
>  create mode 100644 arch/arm/mach-virt/Makefile
>  create mode 100644 arch/arm/mach-virt/devices.c
>  create mode 100644 arch/arm/mach-virt/include/mach/debug_ll.h
>  create mode 100644 arch/arm/mach-virt/include/mach/devices.h
>  create mode 100644 arch/arm/mach-virt/lowlevel.c
>  create mode 100644 arch/arm/mach-virt/reset.c
> =

> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index 986fdaa..71b90e7 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -255,6 +255,14 @@ config ARCH_ZYNQ
>  	bool "Xilinx Zynq-based boards"
>  	select HAS_DEBUG_LL
>  =

> +config ARCH_VIRT
> +	bool "ARM QEMU virt boards"
> +	select HAS_DEBUG_LL
> +	select CPU_V8
> +	select SYS_SUPPORTS_64BIT_KERNEL
> +	select ARM_AMBA
> +	select HAVE_CONFIGURABLE_MEMORY_LAYOUT

This should have 64 somewhere in the name to distinguish between 64 and
32 bit qemu platforms.

> +
>  endchoice
>  =

>  source arch/arm/cpu/Kconfig
> @@ -280,6 +288,7 @@ source arch/arm/mach-vexpress/Kconfig
>  source arch/arm/mach-tegra/Kconfig
>  source arch/arm/mach-uemd/Kconfig
>  source arch/arm/mach-zynq/Kconfig
> +source arch/arm/mach-virt/Kconfig
>  =

>  config ARM_ASM_UNIFIED
>  	bool
> diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
> index 5a755c9..da0af74 100644
> --- a/arch/arm/boards/Makefile
> +++ b/arch/arm/boards/Makefile
> @@ -134,3 +134,4 @@ obj-$(CONFIG_MACH_VIRT2REAL)			+=3D virt2real/
>  obj-$(CONFIG_MACH_ZEDBOARD)			+=3D avnet-zedboard/
>  obj-$(CONFIG_MACH_ZYLONITE)			+=3D zylonite/
>  obj-$(CONFIG_MACH_VARISCITE_MX6)		+=3D variscite-mx6/
> +obj-$(CONFIG_MACH_VIRT)			+=3D virt/
> diff --git a/arch/arm/boards/virt/Kconfig b/arch/arm/boards/virt/Kconfig
> new file mode 100644
> index 0000000..b239127
> --- /dev/null
> +++ b/arch/arm/boards/virt/Kconfig
> @@ -0,0 +1,8 @@
> +
> +if MACH_VIRT
> +
> +config ARCH_TEXT_BASE
> +	hex
> +	default 0x40000000
> +
> +endif
> diff --git a/arch/arm/boards/virt/Makefile b/arch/arm/boards/virt/Makefile
> new file mode 100644
> index 0000000..eb072c0
> --- /dev/null
> +++ b/arch/arm/boards/virt/Makefile
> @@ -0,0 +1 @@
> +obj-y +=3D init.o
> diff --git a/arch/arm/boards/virt/env/bin/_update b/arch/arm/boards/virt/=
env/bin/_update

Please drop these environment files. New boards for sure should use
defenv2 and normally for this you don't need any board specific
environment files.

> diff --git a/arch/arm/boards/virt/init.c b/arch/arm/boards/virt/init.c
> new file mode 100644
> index 0000000..9626067
> --- /dev/null
> +++ b/arch/arm/boards/virt/init.c
> @@ -0,0 +1,67 @@
> +/*
> + * Copyright (C) 2016 Rapha=EBl Poggi <poggi.raph@gmail.com>
> + *
> + * GPLv2 only
> + */
> +
> +#include <common.h>
> +#include <init.h>
> +#include <asm/armlinux.h>
> +#include <asm/system_info.h>
> +#include <mach/devices.h>
> +#include <environment.h>
> +#include <linux/sizes.h>
> +#include <io.h>
> +#include <globalvar.h>
> +#include <asm/mmu.h>
> +
> +static int virt_mem_init(void)
> +{
> +	virt_add_ddram(SZ_512M);
> +
> +	add_cfi_flash_device(0, 0x00000000, SZ_4M, 0);
> +
> +	devfs_add_partition("nor0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED, "s=
elf0");
> +	devfs_add_partition("nor0", 0x40000, 0x20000, DEVFS_PARTITION_FIXED, "e=
nv0");
> +
> +	return 0;
> +}
> +mem_initcall(virt_mem_init);
> +
> +static int virt_console_init(void)
> +{
> +	virt_register_uart(0);
> +
> +	return 0;
> +}
> +console_initcall(virt_console_init);
> +
> +static int virt_core_init(void)
> +{
> +	char *hostname =3D "virt";
> +
> +	if (cpu_is_cortex_a53())
> +		hostname =3D "virt-a53";
> +	else if (cpu_is_cortex_a57())
> +		hostname =3D "virt-a57";
> +
> +	barebox_set_model("ARM QEMU virt");
> +	barebox_set_hostname(hostname);
> +
> +	return 0;
> +}
> +postcore_initcall(virt_core_init);
> +
> +static int virt_mmu_enable(void)
> +{
> +	/* Mapping all periph range */
> +	arch_remap_range(0x09000000, 0x01000000, PMD_SECT_DEF_CACHED);
> +
> +	/* Mapping all flash range */
> +	arch_remap_range(0x00000000, 0x08000000, PMD_SECT_DEF_CACHED);

Hm, mapping the peripherals and the flash cached? This seems wrong.
Either the mapping does not work or your periphals do not work ;)

> +
> +	mmu_enable();
> +
> +	return 0;
> +}
> +postmmu_initcall(virt_mmu_enable);
> diff --git a/arch/arm/mach-virt/reset.c b/arch/arm/mach-virt/reset.c
> new file mode 100644
> index 0000000..fb895eb
> --- /dev/null
> +++ b/arch/arm/mach-virt/reset.c
> @@ -0,0 +1,24 @@
> +/*
> + * Copyright (C) 2016 Rapha=EBl Poggi <poggi.raph@gmail.com>
> + *
> + * GPLv2 only
> + */
> +
> +#include <common.h>
> +#include <io.h>
> +#include <init.h>
> +#include <restart.h>
> +#include <mach/devices.h>
> +
> +static void virt_reset_soc(struct restart_handler *rst)
> +{
> +	hang();
> +}
> +
> +static int restart_register_feature(void)
> +{
> +	restart_handler_register_fn(virt_reset_soc);
> +
> +	return 0;
> +}
> +coredevice_initcall(restart_register_feature);

You can drop this. When no restart_handler is registered then hang() is
the default behaviour anyway.

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
