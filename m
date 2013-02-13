Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp145.iad.emailsrvr.com ([207.97.245.145])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U5RRW-0002q5-6e
 for barebox@lists.infradead.org; Wed, 13 Feb 2013 01:47:27 +0000
Message-ID: <511AF0A9.9060902@calxeda.com>
Date: Tue, 12 Feb 2013 19:47:21 -0600
From: Rob Herring <rob.herring@calxeda.com>
MIME-Version: 1.0
References: <20130211190648.GA19322@game.jcrosoft.org>
 <1360609711-22118-1-git-send-email-plagnioj@jcrosoft.com>
 <1360609711-22118-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1360609711-22118-2-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/3] arm: add highbank support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On 02/11/2013 01:08 PM, Jean-Christophe PLAGNIOL-VILLARD wrote:
> currently only tested under qemu
> 
> qemu-system-arm -M highbank -nographic -m 4089 -kernel build/highbank/arch/arm/pbl/zbarebox -tftp "." -drive id=disk,if=ide,file=disk.img -device ide-drive,drive=disk,bus=ide.0
> 
> with:
>  - timer (AMBA SP804)
>  - uart (AMBA PL011)
>  - gpio (AMBA PL061)
>  - ahci
>  - net (XGMAC)
> 
> Cc: Rob Herring <rob.herring@calxeda.com>
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

Looks pretty good. A couple of comments below.

> ---
>  arch/arm/Kconfig                               |   11 +++++
>  arch/arm/Makefile                              |    2 +
>  arch/arm/boards/highbank/Makefile              |    4 ++
>  arch/arm/boards/highbank/config.h              |    5 ++
>  arch/arm/boards/highbank/env/config            |   34 +++++++++++++
>  arch/arm/boards/highbank/init.c                |   46 ++++++++++++++++++
>  arch/arm/boards/highbank/lowlevel.c            |   17 +++++++
>  arch/arm/configs/highbank_defconfig            |   61 ++++++++++++++++++++++++
>  arch/arm/mach-highbank/Kconfig                 |   18 +++++++
>  arch/arm/mach-highbank/Makefile                |    3 ++
>  arch/arm/mach-highbank/core.c                  |   50 +++++++++++++++++++
>  arch/arm/mach-highbank/devices.c               |   50 +++++++++++++++++++
>  arch/arm/mach-highbank/include/mach/clkdev.h   |    7 +++
>  arch/arm/mach-highbank/include/mach/debug_ll.h |   26 ++++++++++
>  arch/arm/mach-highbank/include/mach/devices.h  |   16 +++++++
>  arch/arm/mach-highbank/include/mach/gpio.h     |    1 +
>  arch/arm/mach-highbank/reset.c                 |   22 +++++++++
>  arch/arm/mach-highbank/sysregs.h               |   52 ++++++++++++++++++++
>  18 files changed, 425 insertions(+)
>  create mode 100644 arch/arm/boards/highbank/Makefile
>  create mode 100644 arch/arm/boards/highbank/config.h
>  create mode 100644 arch/arm/boards/highbank/env/config
>  create mode 100644 arch/arm/boards/highbank/init.c
>  create mode 100644 arch/arm/boards/highbank/lowlevel.c
>  create mode 100644 arch/arm/configs/highbank_defconfig
>  create mode 100644 arch/arm/mach-highbank/Kconfig
>  create mode 100644 arch/arm/mach-highbank/Makefile
>  create mode 100644 arch/arm/mach-highbank/core.c
>  create mode 100644 arch/arm/mach-highbank/devices.c
>  create mode 100644 arch/arm/mach-highbank/include/mach/clkdev.h
>  create mode 100644 arch/arm/mach-highbank/include/mach/debug_ll.h
>  create mode 100644 arch/arm/mach-highbank/include/mach/devices.h
>  create mode 100644 arch/arm/mach-highbank/include/mach/gpio.h
>  create mode 100644 arch/arm/mach-highbank/reset.c
>  create mode 100644 arch/arm/mach-highbank/sysregs.h
> 
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index 5ae5bd0..c10b9da 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -49,6 +49,16 @@ config ARCH_EP93XX
>  	select CPU_ARM920T
>  	select GENERIC_GPIO
>  
> +config ARCH_HIGHBANK
> +	bool "Calxeda Highbank"
> +	select HAS_DEBUG_LL
> +	select CPU_V7
> +	select ARM_AMBA
> +	select AMBA_SP804
> +	select CLKDEV_LOOKUP
> +	select COMMON_CLK
> +	select GPIOLIB

GPIO is generally not accessible and needs to be checked whether enabled
in the DT. Accessing it will cause an abort.

> +
>  config ARCH_IMX
>  	bool "Freescale iMX-based"
>  	select GENERIC_GPIO
> @@ -126,6 +136,7 @@ source arch/arm/mach-at91/Kconfig
>  source arch/arm/mach-bcm2835/Kconfig
>  source arch/arm/mach-clps711x/Kconfig
>  source arch/arm/mach-ep93xx/Kconfig
> +source arch/arm/mach-highbank/Kconfig
>  source arch/arm/mach-imx/Kconfig
>  source arch/arm/mach-mxs/Kconfig
>  source arch/arm/mach-netx/Kconfig
> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index 73631ba..15bebf1 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -55,6 +55,7 @@ machine-$(CONFIG_ARCH_AT91)		:= at91
>  machine-$(CONFIG_ARCH_BCM2835)		:= bcm2835
>  machine-$(CONFIG_ARCH_CLPS711X)		:= clps711x
>  machine-$(CONFIG_ARCH_EP93XX)		:= ep93xx
> +machine-$(CONFIG_ARCH_HIGHBANK)		:= highbank
>  machine-$(CONFIG_ARCH_IMX)		:= imx
>  machine-$(CONFIG_ARCH_MXS)		:= mxs
>  machine-$(CONFIG_ARCH_NOMADIK)		:= nomadik
> @@ -99,6 +100,7 @@ board-$(CONFIG_MACH_EUKREA_CPUIMX51SD)		:= eukrea_cpuimx51
>  board-$(CONFIG_MACH_FREESCALE_MX25_3STACK)	:= freescale-mx25-3-stack
>  board-$(CONFIG_MACH_FREESCALE_MX35_3STACK)	:= freescale-mx35-3-stack
>  board-$(CONFIG_MACH_GE863)			:= telit-evk-pro3
> +board-$(CONFIG_MACH_HIGHBANK)			:= highbank
>  board-$(CONFIG_MACH_IMX21ADS)			:= imx21ads
>  board-$(CONFIG_MACH_IMX27ADS)			:= imx27ads
>  board-$(CONFIG_MACH_IMX233_OLINUXINO)	:= imx233-olinuxino
> diff --git a/arch/arm/boards/highbank/Makefile b/arch/arm/boards/highbank/Makefile
> new file mode 100644
> index 0000000..98921a4
> --- /dev/null
> +++ b/arch/arm/boards/highbank/Makefile
> @@ -0,0 +1,4 @@
> +obj-y += init.o
> +
> +obj-y += lowlevel.o
> +pbl-y += lowlevel.o
> diff --git a/arch/arm/boards/highbank/config.h b/arch/arm/boards/highbank/config.h
> new file mode 100644
> index 0000000..25bb18f
> --- /dev/null
> +++ b/arch/arm/boards/highbank/config.h
> @@ -0,0 +1,5 @@
> +
> +#ifndef __CONFIG_H
> +#define __CONFIG_H
> +
> +#endif	/* __CONFIG_H */
> diff --git a/arch/arm/boards/highbank/env/config b/arch/arm/boards/highbank/env/config
> new file mode 100644
> index 0000000..3fec087
> --- /dev/null
> +++ b/arch/arm/boards/highbank/env/config
> @@ -0,0 +1,34 @@
> +#!/bin/sh
> +
> +# use 'dhcp' to do dhcp in barebox and in kernel
> +# use 'none' if you want to skip kernel ip autoconfiguration
> +ip=dhcp
> +global.dhcp.vendor_id=barebox-highbank
> +
> +# or set your networking parameters here
> +#eth0.ipaddr=a.b.c.d
> +#eth0.netmask=a.b.c.d
> +#eth0.gateway=a.b.c.d
> +#eth0.serverip=a.b.c.d
> +
> +# can be either 'nfs', 'tftp' or 'nor'
> +kernel_loc=tftp
> +# can be either 'net', 'nor' or 'initrd'
> +rootfs_loc=initrd
> +
> +# can be either 'jffs2' or 'ubifs'
> +rootfs_type=ubifs
> +rootfsimage=root.$rootfs_type
> +
> +kernelimage=zImage
> +#kernelimage=uImage
> +#kernelimage=Image
> +#kernelimage=Image.lzo
> +
> +autoboot_timeout=3
> +
> +bootargs="console=ttyAMA0,115200n8 CONSOLE=/dev/ttyAMA0"
> +
> +# set a fancy prompt (if support is compiled in)
> +PS1="\e[1;31m[barebox@\h]:\w\e[0m\n# "
> +
> diff --git a/arch/arm/boards/highbank/init.c b/arch/arm/boards/highbank/init.c
> new file mode 100644
> index 0000000..e28fae4
> --- /dev/null
> +++ b/arch/arm/boards/highbank/init.c
> @@ -0,0 +1,46 @@
> +/*
> + * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
> + *
> + * GPLv2 only
> + */
> +
> +#include <common.h>
> +#include <init.h>
> +#include <asm/armlinux.h>
> +#include <asm/system_info.h>
> +#include <generated/mach-types.h>
> +#include <mach/devices.h>
> +#include <environment.h>
> +#include <partition.h>
> +#include <sizes.h>
> +#include <io.h>
> +
> +static int highbank_mem_init(void)
> +{
> +	highbank_add_ddram(4089 << 20);
> +
> +	return 0;
> +}
> +mem_initcall(highbank_mem_init);
> +
> +static int highbank_devices_init(void)
> +{
> +	highbank_register_ahci();
> +	highbank_register_xgmac(0);
> +	highbank_register_xgmac(1);
> +
> +	armlinux_set_bootparams((void *)(0x00000100));
> +
> +	devfs_add_partition("nvram", 0x00000, SZ_16K, DEVFS_PARTITION_FIXED, "env0");
> +
> +	return 0;
> +}
> +device_initcall(highbank_devices_init);
> +
> +static int highbank_console_init(void)
> +{
> +	highbank_register_uart();
> +
> +	return 0;
> +}
> +console_initcall(highbank_console_init);
> diff --git a/arch/arm/boards/highbank/lowlevel.c b/arch/arm/boards/highbank/lowlevel.c
> new file mode 100644
> index 0000000..2ee57a9
> --- /dev/null
> +++ b/arch/arm/boards/highbank/lowlevel.c
> @@ -0,0 +1,17 @@
> +/*
> + * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
> + *
> + * GPLv2 only
> + */
> +
> +#include <common.h>
> +#include <sizes.h>
> +#include <asm/barebox-arm-head.h>
> +#include <asm/barebox-arm.h>
> +#include <asm/system_info.h>
> +
> +void __naked reset(void)
> +{
> +	common_reset();
> +	barebox_arm_entry(0x00000000, SZ_512M, 0);
> +}
> diff --git a/arch/arm/configs/highbank_defconfig b/arch/arm/configs/highbank_defconfig
> new file mode 100644
> index 0000000..e0725ed
> --- /dev/null
> +++ b/arch/arm/configs/highbank_defconfig
> @@ -0,0 +1,61 @@
> +CONFIG_ARCH_HIGHBANK=y
> +CONFIG_AEABI=y
> +CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
> +CONFIG_PBL_IMAGE=y
> +CONFIG_MMU=y
> +CONFIG_MALLOC_SIZE=0xa00000
> +CONFIG_MALLOC_TLSF=y
> +CONFIG_PROMPT="vexpress: "
> +CONFIG_LONGHELP=y
> +CONFIG_GLOB=y
> +CONFIG_HUSH_FANCY_PROMPT=y
> +CONFIG_CMDLINE_EDITING=y
> +CONFIG_AUTO_COMPLETE=y
> +CONFIG_MENU=y
> +CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
> +CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/highbank/env"
> +CONFIG_CMD_EDIT=y
> +CONFIG_CMD_SLEEP=y
> +CONFIG_CMD_SAVEENV=y
> +CONFIG_CMD_EXPORT=y
> +CONFIG_CMD_PRINTENV=y
> +CONFIG_CMD_READLINE=y
> +CONFIG_CMD_MENU=y
> +CONFIG_CMD_MENU_MANAGEMENT=y
> +CONFIG_CMD_PASSWD=y
> +CONFIG_CMD_TFTP=y
> +CONFIG_CMD_ECHO_E=y
> +CONFIG_CMD_LOADB=y
> +CONFIG_CMD_MEMINFO=y
> +CONFIG_CMD_BOOTM_SHOW_TYPE=y
> +CONFIG_CMD_BOOTM_VERBOSE=y
> +CONFIG_CMD_BOOTM_INITRD=y
> +CONFIG_CMD_BOOTM_OFTREE=y
> +CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
> +CONFIG_CMD_UIMAGE=y
> +# CONFIG_CMD_BOOTU is not set
> +CONFIG_CMD_RESET=y
> +CONFIG_CMD_GO=y
> +CONFIG_CMD_OFTREE=y
> +CONFIG_CMD_MTEST=y
> +CONFIG_CMD_MTEST_ALTERNATIVE=y
> +CONFIG_CMD_TIMEOUT=y
> +CONFIG_CMD_PARTITION=y
> +CONFIG_CMD_UNCOMPRESS=y
> +CONFIG_CMD_CLK=y
> +CONFIG_NET=y
> +CONFIG_NET_DHCP=y
> +CONFIG_NET_NFS=y
> +CONFIG_NET_PING=y
> +CONFIG_NET_NETCONSOLE=y
> +CONFIG_NET_RESOLV=y
> +CONFIG_SERIAL_AMBA_PL011=y
> +CONFIG_DRIVER_NET_CALXEDA_XGMAC=y
> +# CONFIG_SPI is not set
> +CONFIG_DISK=y
> +CONFIG_DISK_AHCI=y
> +CONFIG_DISK_AHCI_GENERIC=y
> +CONFIG_GPIO_PL061=y
> +CONFIG_FS_TFTP=y
> +CONFIG_SHA1=y
> +CONFIG_SHA256=y
> diff --git a/arch/arm/mach-highbank/Kconfig b/arch/arm/mach-highbank/Kconfig
> new file mode 100644
> index 0000000..47c6405
> --- /dev/null
> +++ b/arch/arm/mach-highbank/Kconfig
> @@ -0,0 +1,18 @@
> +if ARCH_HIGHBANK
> +
> +config ARCH_TEXT_BASE
> +	hex
> +	default 0x03f00000
> +
> +config BOARDINFO
> +	default "Calxeda Highbank" if MACH_HIGHBANK
> +
> +choice
> +	prompt "Calxeda Board type"
> +
> +config MACH_HIGHBANK
> +	bool "Calxeda Highbank"
> +
> +endchoice
> +
> +endif
> diff --git a/arch/arm/mach-highbank/Makefile b/arch/arm/mach-highbank/Makefile
> new file mode 100644
> index 0000000..3f01cbb
> --- /dev/null
> +++ b/arch/arm/mach-highbank/Makefile
> @@ -0,0 +1,3 @@
> +obj-y += core.o
> +obj-y += devices.o
> +obj-y += reset.o
> diff --git a/arch/arm/mach-highbank/core.c b/arch/arm/mach-highbank/core.c
> new file mode 100644
> index 0000000..4bb9bd4
> --- /dev/null
> +++ b/arch/arm/mach-highbank/core.c
> @@ -0,0 +1,50 @@
> +/*
> + * Copyright (C) 2009 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
> + *
> + * GPLv2 only
> + */
> +
> +#include <common.h>
> +#include <init.h>
> +#include <io.h>
> +
> +#include <linux/clk.h>
> +#include <linux/clkdev.h>
> +#include <linux/amba/bus.h>
> +
> +#include <asm/hardware/arm_timer.h>
> +#include <asm/hardware/sp810.h>
> +
> +#include <mach/devices.h>
> +
> +static void highbank_clk_init(void)
> +{
> +	struct clk *clk;
> +
> +	clk = clk_fixed("dummy_apb_pclk", 0);
> +	clk_register_clkdev(clk, "apb_pclk", NULL);
> +
> +	clk = clk_fixed("pclk", 150000000);
> +	clk_register_clkdev(clk, NULL, "sp804");
> +	clk_register_clkdev(clk, NULL, "uart-pl011");
> +
> +}
> +
> +static void highbank_sp804_init(void)
> +{
> +	amba_apb_device_add(NULL, "sp804", DEVICE_ID_SINGLE, 0xfff34000, 4096, NULL, 0);
> +}
> +
> +static int highbank_init(void)
> +{
> +	highbank_clk_init();
> +	highbank_sp804_init();
> +
> +	amba_apb_device_add(NULL, "pl061_gpio", 0, 0xfff30000, 4096, NULL, 0);
> +	amba_apb_device_add(NULL, "pl061_gpio", 1, 0xfff31000, 4096, NULL, 0);
> +	amba_apb_device_add(NULL, "pl061_gpio", 2, 0xfff32000, 4096, NULL, 0);
> +	amba_apb_device_add(NULL, "pl061_gpio", 3, 0xfff33000, 4096, NULL, 0);
> +
> +	return 0;
> +}
> +postcore_initcall(highbank_init);
> diff --git a/arch/arm/mach-highbank/devices.c b/arch/arm/mach-highbank/devices.c
> new file mode 100644
> index 0000000..d9a174e
> --- /dev/null
> +++ b/arch/arm/mach-highbank/devices.c
> @@ -0,0 +1,50 @@
> +/*
> + * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
> + *
> + * GPLv2 only
> + */
> +
> +#include <common.h>
> +#include <sizes.h>
> +
> +#include <linux/amba/bus.h>
> +
> +#include <asm/memory.h>
> +
> +#include <mach/devices.h>
> +
> +void highbank_add_ddram(u32 size)
> +{
> +	arm_add_mem_device("ram1", 0x00000000, size);
> +	add_mem_device("nvram", 0xfff88000, SZ_32K, IORESOURCE_MEM_WRITEABLE);
> +}
> +
> +void highbank_register_uart(void)
> +{
> +	amba_apb_device_add(NULL, "uart-pl011", DEVICE_ID_SINGLE, 0xfff36000, 4096, NULL, 0);
> +}
> +
> +void highbank_register_ahci(void)
> +{
> +	add_generic_device("ahci", DEVICE_ID_SINGLE, NULL, 0xffe08000,
> +			0x10000, IORESOURCE_MEM, NULL);
> +}
> +
> +void highbank_register_xgmac(unsigned id)
> +{
> +	resource_size_t start;
> +
> +	switch (id) {
> +	case 0:
> +		start = 0xfff50000;
> +		break;
> +	case 1:
> +		start = 0xfff51000;
> +		break;
> +	default:
> +		return;
> +	}
> +
> +	add_generic_device("hb-xgmac", id, NULL, start, 0x1000,
> +				IORESOURCE_MEM, NULL);
> +}
> diff --git a/arch/arm/mach-highbank/include/mach/clkdev.h b/arch/arm/mach-highbank/include/mach/clkdev.h
> new file mode 100644
> index 0000000..04b37a8
> --- /dev/null
> +++ b/arch/arm/mach-highbank/include/mach/clkdev.h
> @@ -0,0 +1,7 @@
> +#ifndef __ASM_MACH_CLKDEV_H
> +#define __ASM_MACH_CLKDEV_H
> +
> +#define __clk_get(clk) ({ 1; })
> +#define __clk_put(clk) do { } while (0)

Does any board really do anything with these?

> +
> +#endif
> diff --git a/arch/arm/mach-highbank/include/mach/debug_ll.h b/arch/arm/mach-highbank/include/mach/debug_ll.h
> new file mode 100644
> index 0000000..4cdbb3c
> --- /dev/null
> +++ b/arch/arm/mach-highbank/include/mach/debug_ll.h
> @@ -0,0 +1,26 @@
> +/*
> + * Copyright 2013 Jean-Christophe PLAGNIOL-VILLARD <plagniol@jcrosoft.com>
> + *
> + * GPLv2 only
> + */
> +
> +#ifndef __MACH_DEBUG_LL_H__
> +#define   __MACH_DEBUG_LL_H__
> +
> +#include <linux/amba/serial.h>
> +#include <io.h>
> +
> +#define UART_BASE 0xfff36000
> +
> +static inline void PUTC_LL(char c)
> +{
> +	/* Wait until there is space in the FIFO */
> +	while (readl(UART_BASE + UART01x_FR) & UART01x_FR_TXFF);
> +
> +	/* Send the character */
> +	writel(c, UART_BASE + UART01x_DR);
> +
> +	/* Wait to make sure it hits the line, in case we die too soon. */
> +	while (readl(UART_BASE + UART01x_FR) & UART01x_FR_TXFF);

This could be generalized to common pl011 code.

> +}
> +#endif
> diff --git a/arch/arm/mach-highbank/include/mach/devices.h b/arch/arm/mach-highbank/include/mach/devices.h
> new file mode 100644
> index 0000000..4c12198
> --- /dev/null
> +++ b/arch/arm/mach-highbank/include/mach/devices.h
> @@ -0,0 +1,16 @@
> +/*
> + * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
> + *
> + * GPLv2 only
> + */
> +
> +#ifndef __ASM_ARCH_DEVICES_H__
> +#define __ASM_ARCH_DEVICES_H__
> +
> +void highbank_add_ddram(u32 size);
> +
> +void highbank_register_uart(void);
> +void highbank_register_ahci(void);
> +void highbank_register_xgmac(unsigned id);
> +
> +#endif /* __ASM_ARCH_DEVICES_H__ */
> diff --git a/arch/arm/mach-highbank/include/mach/gpio.h b/arch/arm/mach-highbank/include/mach/gpio.h
> new file mode 100644
> index 0000000..306ab4c
> --- /dev/null
> +++ b/arch/arm/mach-highbank/include/mach/gpio.h
> @@ -0,0 +1 @@
> +#include <asm-generic/gpio.h>
> diff --git a/arch/arm/mach-highbank/reset.c b/arch/arm/mach-highbank/reset.c
> new file mode 100644
> index 0000000..3306170
> --- /dev/null
> +++ b/arch/arm/mach-highbank/reset.c
> @@ -0,0 +1,22 @@
> +/*
> + * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
> + *
> + * GPLv2 only
> + */
> +
> +#include <common.h>
> +#include <io.h>
> +#include <linux/amba/sp805.h>
> +
> +#include <mach/devices.h>
> +
> +#include "sysregs.h"
> +
> +void __iomem *sregs_base = IOMEM(0xfff3c00);
> +
> +void __noreturn reset_cpu(ulong addr)
> +{
> +	hignbank_set_pwr_hard_reset();
> +
> +	while(1);

This needs a wfi to actually trigger the reset.

> +}
> diff --git a/arch/arm/mach-highbank/sysregs.h b/arch/arm/mach-highbank/sysregs.h
> new file mode 100644
> index 0000000..ad27c1e
> --- /dev/null
> +++ b/arch/arm/mach-highbank/sysregs.h
> @@ -0,0 +1,52 @@
> +/*
> + * Copyright 2011 Calxeda, Inc.
> + *
> + * This program is free software; you can redistribute it and/or modify it
> + * under the terms and conditions of the GNU General Public License,
> + * version 2, as published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope it will be useful, but WITHOUT
> + * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
> + * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
> + * more details.
> + *
> + * You should have received a copy of the GNU General Public License along with
> + * this program.  If not, see <http://www.gnu.org/licenses/>.
> + */
> +#ifndef _MACH_HIGHBANK__SYSREGS_H_
> +#define _MACH_HIGHBANK__SYSREGS_H_
> +
> +#include <io.h>
> +
> +extern void __iomem *sregs_base;
> +
> +#define HB_SREG_A9_PWR_REQ		0xf00
> +#define HB_SREG_A9_BOOT_STAT		0xf04
> +#define HB_SREG_A9_BOOT_DATA		0xf08
> +
> +#define HB_PWR_SUSPEND			0
> +#define HB_PWR_SOFT_RESET		1
> +#define HB_PWR_HARD_RESET		2
> +#define HB_PWR_SHUTDOWN			3
> +
> +static inline void hignbank_set_pwr_suspend(void)

Same typo as recently fixed in the kernel:
s/hignbank/highbank/

> +{
> +	writel(HB_PWR_SUSPEND, sregs_base + HB_SREG_A9_PWR_REQ);
> +}
> +
> +static inline void hignbank_set_pwr_shutdown(void)
> +{
> +	writel(HB_PWR_SHUTDOWN, sregs_base + HB_SREG_A9_PWR_REQ);
> +}
> +
> +static inline void hignbank_set_pwr_soft_reset(void)
> +{
> +	writel(HB_PWR_SOFT_RESET, sregs_base + HB_SREG_A9_PWR_REQ);
> +}
> +
> +static inline void hignbank_set_pwr_hard_reset(void)
> +{
> +	writel(HB_PWR_HARD_RESET, sregs_base + HB_SREG_A9_PWR_REQ);
> +}
> +
> +#endif
> 


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
