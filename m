Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h42BN-0006VG-CZ
 for barebox@lists.infradead.org; Wed, 13 Mar 2019 11:36:28 +0000
References: <20190311134125.10946-1-d.brandt@phytec.de>
 <20190313083250.pwlsmaqrkyvr3m3q@pengutronix.de>
From: David Brandt <d.brandt@phytec.de>
Message-ID: <c23a2f3b-a59a-03f2-4b16-04c5c4f006cb@phytec.de>
Date: Wed, 13 Mar 2019 12:36:22 +0100
MIME-Version: 1.0
In-Reply-To: <20190313083250.pwlsmaqrkyvr3m3q@pengutronix.de>
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
Subject: Re: [PATCH] commands: bootaux: New command bootaux for iMX
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

Am 13.03.19 um 09:32 schrieb Sascha Hauer:
> On Mon, Mar 11, 2019 at 02:41:25PM +0100, David Brandt wrote:
>> This patch adds the bootaux command which starts
>> auxiliary cores of iMX processors, currently only
>> for iMX8MQ. This is based on the u-boot-imx
>> command and shares the behaviour.
>>
>> The currently unnecessary parameter for the core
>> to start is necessary for the iMX8QM and other
>> processors having multiple auxiliary cores.
>>
>> Signed-off-by: David Brandt <d.brandt@phytec.de>
>> ---
>>  arch/arm/mach-imx/imx8mq.c               | 37 +++++++++++++++
>>  arch/arm/mach-imx/include/mach/generic.h |  4 ++
>>  commands/Kconfig                         | 14 ++++++
>>  commands/Makefile                        |  1 +
>>  commands/bootaux.c                       | 58 ++++++++++++++++++++++++
>>  5 files changed, 114 insertions(+)
>>  create mode 100644 commands/bootaux.c
>>
>> diff --git a/arch/arm/mach-imx/imx8mq.c b/arch/arm/mach-imx/imx8mq.c
>> index 3f6b433a5..9e60a8bd7 100644
>> --- a/arch/arm/mach-imx/imx8mq.c
>> +++ b/arch/arm/mach-imx/imx8mq.c
>> @@ -123,4 +123,41 @@ static int imx8mq_report_hdmi_firmware(void)
>>  
>>  	return 0;
>>  }
>> +
>> +#ifdef CONFIG_CMD_BOOTAUX
>> +
>> +#define FSL_SIP_SRC             0xC2000005
>> +#define FSL_SIP_SRC_M4_START    0x00
>> +#define FSL_SIP_SRC_M4_STARTED  0x01
>> +int imx_auxiliary_core_up(u32 core_id, ulong boot_private_data)
>> +{
>> +	u32 stack, pc;
>> +	struct arm_smccc_res res;
>> +
>> +	if (!boot_private_data)
>> +		return -EINVAL;
>> +
>> +	stack = *(u32 *)boot_private_data;
>> +	pc = *(u32 *)(boot_private_data + 4);
>> +
>> +	/* Set the stack and pc to M4 bootROM */
>> +	writel(stack, MX8MQ_M4_BOOTROM_BASE_ADDR);
>> +	writel(pc, MX8MQ_M4_BOOTROM_BASE_ADDR + 4);
>> +
>> +	/* Enable M4 */
>> +	arm_smccc_smc(FSL_SIP_SRC, FSL_SIP_SRC_M4_START,
>> +			0, 0, 0, 0, 0, 0, &res);
>> +
>> +	return res.a0;
>> +}
>> +
>> +int imx_auxiliary_core_check_up(u32 core_id)
>> +{
>> +	struct arm_smccc_res res;
>> +	arm_smccc_smc(FSL_SIP_SRC, FSL_SIP_SRC_M4_STARTED,
>> +			0, 0, 0, 0, 0, 0, &res);
>> +	return res.a0;
>> +}
>> +#endif
>> +
>>  console_initcall(imx8mq_report_hdmi_firmware);
>> diff --git a/arch/arm/mach-imx/include/mach/generic.h b/arch/arm/mach-imx/include/mach/generic.h
>> index be58da4da..59fcbc767 100644
>> --- a/arch/arm/mach-imx/include/mach/generic.h
>> +++ b/arch/arm/mach-imx/include/mach/generic.h
>> @@ -59,6 +59,10 @@ void imx6ul_cpu_lowlevel_init(void);
>>  void imx7_cpu_lowlevel_init(void);
>>  void vf610_cpu_lowlevel_init(void);
>>  
>> +/* processor specific functions to boot auxiliary core */
>> +int imx_auxiliary_core_up(u32 core_id, ulong boot_private_data);
>> +int imx_auxiliary_core_check_up(u32 core_id);
>> +
>>  /* There's a off-by-one betweem the gpio bank number and the gpiochip */
>>  /* range e.g. GPIO_1_5 is gpio 5 under linux */
>>  #define IMX_GPIO_NR(bank, nr)		(((bank) - 1) * 32 + (nr))
>> diff --git a/commands/Kconfig b/commands/Kconfig
>> index 4f5d84ac1..c39a84f23 100644
>> --- a/commands/Kconfig
>> +++ b/commands/Kconfig
>> @@ -270,6 +270,20 @@ config CMD_AT91_BOOT_TEST
>>  	  -j ADDR  jump address
>>  	  -s SRAM  SRAM device (default /dev/sram0)
>>  
>> +config CMD_BOOTAUX
>> +	tristate
>> +	default y
>> +	depends on ARCH_IMX8MQ
>> +	prompt "bootaux"
>> +	help
>> +	  Boot auxiliary core on NXP iMXP Processors.
>> +
>> +	  Usage: bootaux ADDRESS [CORE]
>> +
>> +	  Options:
>> +	  ADDRESS  load address
>> +	  CORE  auxiliary core to start, defaults to 0
>> +
>>  config CMD_BOOT_ORDER
>>  	tristate
>>  	depends on ARCH_OMAP4
>> diff --git a/commands/Makefile b/commands/Makefile
>> index 358671bb5..c72b52c27 100644
>> --- a/commands/Makefile
>> +++ b/commands/Makefile
>> @@ -1,6 +1,7 @@
>>  obj-$(CONFIG_STDDEV)		+= stddev.o
>>  obj-$(CONFIG_CMD_DIGEST)	+= digest.o
>>  obj-$(CONFIG_COMPILE_HASH)	+= hashsum.o
>> +obj-$(CONFIG_CMD_BOOTAUX)	+= bootaux.o
>>  obj-$(CONFIG_CMD_BOOTM)		+= bootm.o
>>  obj-$(CONFIG_CMD_UIMAGE)	+= uimage.o
>>  obj-$(CONFIG_CMD_LINUX16)	+= linux16.o
>> diff --git a/commands/bootaux.c b/commands/bootaux.c
>> new file mode 100644
>> index 000000000..62209bf3e
>> --- /dev/null
>> +++ b/commands/bootaux.c
>> @@ -0,0 +1,58 @@
>> +/* SPDX-License-Identifier: GPL-2.0+ */
>> +/*
>> + * bootaux - boot auxiliary core
>> + *
>> + * Copyright (C) 2019 David Brandt <d.brandt@phytec.de>
>> + *
>> + * Based on code from u-boot-imx from Freescale Semiconductor, Inc.
>> + *
>> + */
>> +
>> +#include <command.h>
>> +#include <getopt.h>
>> +#include <memory.h>
>> +#include <malloc.h>
>> +#include <common.h>
>> +#include <errno.h>
>> +#include <memtest.h>
>> +#include <mmu.h>
>> +#include <mach/generic.h>
> Please clean up the include list. Nothing from malloc.h, memtest.h and
> mmu.h seems to be used here.
Will do in v2.
>
>> +
>> +static int do_bootaux(int argc, char *argv[])
>> +{
>> +	ulong addr;
>> +	int ret, up;
>> +	u32 core = 0;
>> +
>> +	if (argc < 2) {
>> +		printf("no load address given\n");
>> +		return 1;
>> +	}
>> +
>> +	if (argc > 2)
>> +		core = strict_strtoul(argv[2], NULL, 10);
> We do not have strict_strtoul().
>
> Please do not specify the base. Normally we provide numbers as decimal
> and addresses as hexadecimal, but there's no reason to force this. If I
> specify a number without '0x' prefix I expect it to be treated as
> decimal.
>
> Consider using getopt() here for the core parameter. Commands with multiple
> positional and sometimes even optional arguments tend to get very creepy
> over time.
I already thought about using getopt, if that fits the barebox style
better I can implement it in v2.

Just followed the syntax from u-boot from NXP.

>
>> +
>> +	up = imx_auxiliary_core_check_up(core);
>> +	if (up) {
>> +		printf("Auxiliary core %d is already up\n", core);
>> +		return 0;
>> +	}
>> +
>> +	addr = strict_strtoul(argv[1], NULL, 16);
>> +
>> +	printf("Starting auxiliary core %d at 0x%08lX ...\n", core, addr);
>> +
>> +	ret = imx_auxiliary_core_up(core, addr);
> How is this command supposed to be used? If I read the code correctly
> 'addr' is not the address the aux core will start from, but is instead
> treated as a pointer to a struct of type:
>
> struct aux {
> 	void *stack;
> 	void *start_address;
> };
>
> Who sets this struct up? Wouldn't it be better to specify start_address
> and stack directly to the command? At least I would expect some
> information at which address the core is actually started and where its
> stack pointer is.
>
> Sascha
>
For me it was clear that the first data in a loaded binary is the interrupt
table with the top of stack and reset handler in the start, but actually
this does not have to be true.
You are right in that it should be clarified that this points to the interrupt
table and that the reset handler is started, I will add help with that.
Since there always will be an interrupt table, I don't think there must be
an option to pass the entry point or am I overlooking a use case?

David


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
