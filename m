Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h3Udv-00077A-1x
 for barebox@lists.infradead.org; Mon, 11 Mar 2019 23:47:41 +0000
Date: Tue, 12 Mar 2019 00:47:34 +0100
From: Roland Hieber <rhi@pengutronix.de>
Message-ID: <20190311234734.52bgte3kpm5dngdv@pengutronix.de>
References: <20190311134125.10946-1-d.brandt@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190311134125.10946-1-d.brandt@phytec.de>
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
Subject: Re: [PATCH] commands: bootaux: New command bootaux for iMX
To: David Brandt <d.brandt@phytec.de>
Cc: barebox@lists.infradead.org

Hi David,

On Mon, Mar 11, 2019 at 02:41:25PM +0100, David Brandt wrote:
> This patch adds the bootaux command which starts
> auxiliary cores of iMX processors, currently only
> for iMX8MQ. This is based on the u-boot-imx
> command and shares the behaviour.
> 
> The currently unnecessary parameter for the core
> to start is necessary for the iMX8QM and other
> processors having multiple auxiliary cores.
> 
> Signed-off-by: David Brandt <d.brandt@phytec.de>
> ---
>  arch/arm/mach-imx/imx8mq.c               | 37 +++++++++++++++
>  arch/arm/mach-imx/include/mach/generic.h |  4 ++
>  commands/Kconfig                         | 14 ++++++
>  commands/Makefile                        |  1 +
>  commands/bootaux.c                       | 58 ++++++++++++++++++++++++
>  5 files changed, 114 insertions(+)
>  create mode 100644 commands/bootaux.c
> 
> diff --git a/arch/arm/mach-imx/imx8mq.c b/arch/arm/mach-imx/imx8mq.c
> index 3f6b433a5..9e60a8bd7 100644
> --- a/arch/arm/mach-imx/imx8mq.c
> +++ b/arch/arm/mach-imx/imx8mq.c
> @@ -123,4 +123,41 @@ static int imx8mq_report_hdmi_firmware(void)
>  
>  	return 0;
>  }
> +
> +#ifdef CONFIG_CMD_BOOTAUX

I think there is no need to #ifdef this away and create niches for code
to hide from getting caught in compiler warnings while refactoring. :)
The ARM Makefile already sets

	CPPFLAGS += -fdata-sections -ffunction-sections
	LDFLAGS_barebox += --gc-sections

so all unneeded functions will get stripped from the final binary at
link time.

> +
> +#define FSL_SIP_SRC             0xC2000005
> +#define FSL_SIP_SRC_M4_START    0x00
> +#define FSL_SIP_SRC_M4_STARTED  0x01
> +int imx_auxiliary_core_up(u32 core_id, ulong boot_private_data)
> +{
> +	u32 stack, pc;
> +	struct arm_smccc_res res;
> +
> +	if (!boot_private_data)
> +		return -EINVAL;
> +
> +	stack = *(u32 *)boot_private_data;
> +	pc = *(u32 *)(boot_private_data + 4);
> +
> +	/* Set the stack and pc to M4 bootROM */
> +	writel(stack, MX8MQ_M4_BOOTROM_BASE_ADDR);
> +	writel(pc, MX8MQ_M4_BOOTROM_BASE_ADDR + 4);
> +
> +	/* Enable M4 */
> +	arm_smccc_smc(FSL_SIP_SRC, FSL_SIP_SRC_M4_START,
> +			0, 0, 0, 0, 0, 0, &res);
> +
> +	return res.a0;
> +}
> +
> +int imx_auxiliary_core_check_up(u32 core_id)
> +{
> +	struct arm_smccc_res res;
> +	arm_smccc_smc(FSL_SIP_SRC, FSL_SIP_SRC_M4_STARTED,
> +			0, 0, 0, 0, 0, 0, &res);
> +	return res.a0;
> +}
> +#endif

 - Roland

> +
>  console_initcall(imx8mq_report_hdmi_firmware);
> diff --git a/arch/arm/mach-imx/include/mach/generic.h b/arch/arm/mach-imx/include/mach/generic.h
> index be58da4da..59fcbc767 100644
> --- a/arch/arm/mach-imx/include/mach/generic.h
> +++ b/arch/arm/mach-imx/include/mach/generic.h
> @@ -59,6 +59,10 @@ void imx6ul_cpu_lowlevel_init(void);
>  void imx7_cpu_lowlevel_init(void);
>  void vf610_cpu_lowlevel_init(void);
>  
> +/* processor specific functions to boot auxiliary core */
> +int imx_auxiliary_core_up(u32 core_id, ulong boot_private_data);
> +int imx_auxiliary_core_check_up(u32 core_id);
> +
>  /* There's a off-by-one betweem the gpio bank number and the gpiochip */
>  /* range e.g. GPIO_1_5 is gpio 5 under linux */
>  #define IMX_GPIO_NR(bank, nr)		(((bank) - 1) * 32 + (nr))
> diff --git a/commands/Kconfig b/commands/Kconfig
> index 4f5d84ac1..c39a84f23 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -270,6 +270,20 @@ config CMD_AT91_BOOT_TEST
>  	  -j ADDR  jump address
>  	  -s SRAM  SRAM device (default /dev/sram0)
>  
> +config CMD_BOOTAUX
> +	tristate
> +	default y
> +	depends on ARCH_IMX8MQ
> +	prompt "bootaux"
> +	help
> +	  Boot auxiliary core on NXP iMXP Processors.
> +
> +	  Usage: bootaux ADDRESS [CORE]
> +
> +	  Options:
> +	  ADDRESS  load address
> +	  CORE  auxiliary core to start, defaults to 0
> +
>  config CMD_BOOT_ORDER
>  	tristate
>  	depends on ARCH_OMAP4
> diff --git a/commands/Makefile b/commands/Makefile
> index 358671bb5..c72b52c27 100644
> --- a/commands/Makefile
> +++ b/commands/Makefile
> @@ -1,6 +1,7 @@
>  obj-$(CONFIG_STDDEV)		+= stddev.o
>  obj-$(CONFIG_CMD_DIGEST)	+= digest.o
>  obj-$(CONFIG_COMPILE_HASH)	+= hashsum.o
> +obj-$(CONFIG_CMD_BOOTAUX)	+= bootaux.o
>  obj-$(CONFIG_CMD_BOOTM)		+= bootm.o
>  obj-$(CONFIG_CMD_UIMAGE)	+= uimage.o
>  obj-$(CONFIG_CMD_LINUX16)	+= linux16.o
> diff --git a/commands/bootaux.c b/commands/bootaux.c
> new file mode 100644
> index 000000000..62209bf3e
> --- /dev/null
> +++ b/commands/bootaux.c
> @@ -0,0 +1,58 @@
> +/* SPDX-License-Identifier: GPL-2.0+ */
> +/*
> + * bootaux - boot auxiliary core
> + *
> + * Copyright (C) 2019 David Brandt <d.brandt@phytec.de>
> + *
> + * Based on code from u-boot-imx from Freescale Semiconductor, Inc.
> + *
> + */
> +
> +#include <command.h>
> +#include <getopt.h>
> +#include <memory.h>
> +#include <malloc.h>
> +#include <common.h>
> +#include <errno.h>
> +#include <memtest.h>
> +#include <mmu.h>
> +#include <mach/generic.h>
> +
> +static int do_bootaux(int argc, char *argv[])
> +{
> +	ulong addr;
> +	int ret, up;
> +	u32 core = 0;
> +
> +	if (argc < 2) {
> +		printf("no load address given\n");
> +		return 1;
> +	}
> +
> +	if (argc > 2)
> +		core = strict_strtoul(argv[2], NULL, 10);
> +
> +	up = imx_auxiliary_core_check_up(core);
> +	if (up) {
> +		printf("Auxiliary core %d is already up\n", core);
> +		return 0;
> +	}
> +
> +	addr = strict_strtoul(argv[1], NULL, 16);
> +
> +	printf("Starting auxiliary core %d at 0x%08lX ...\n", core, addr);
> +
> +	ret = imx_auxiliary_core_up(core, addr);
> +	if (ret)
> +		return 1;
> +
> +	return 0;
> +}
> +
> +
> +BAREBOX_CMD_START(bootaux)
> +	.cmd		= do_bootaux,
> +	BAREBOX_CMD_DESC("boot auxiliary core")
> +	BAREBOX_CMD_OPTS("ADDR [CORE]")
> +	BAREBOX_CMD_GROUP(CMD_GRP_BOOT)
> +BAREBOX_CMD_END
> -- 
> 2.17.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Roland Hieber                     | r.hieber@pengutronix.de     |
Pengutronix e.K.                  | https://www.pengutronix.de/ |
Peiner Str. 6-8, 31137 Hildesheim | Phone: +49-5121-206917-5086 |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
