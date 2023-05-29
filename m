Delivery-date: Mon, 29 May 2023 21:05:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q3iBH-001lJ8-7J
	for lore@lore.pengutronix.de; Mon, 29 May 2023 21:05:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q3iBD-00025U-W0
	for lore@pengutronix.de; Mon, 29 May 2023 21:05:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NxqnCD2agyES6fwXF4RMUfW/eHPoLL1oUUzX/qhfl+E=; b=MGgRDt/pReVPc0HMMTRROKSduE
	baAYwGSrPb7vkuThLNWmkaQA7vhSy4r0If/HxqgqGiFG8Vry2ct1J47jA4ngV6bbMPyydGOv3KAxq
	Y60ILgUq+zy0E5H0rIDmd8IKe7hOofdhZvllJlJ9eB/Bt5535xHaEjpDoYulqroED6nTXI7320/va
	enKxuY7vwHhAOEh8tnYhB/13NyC5I/WpXOWPO4fbZa5ZJt9RlB8j/ydg/bHAWWYkyFvrRgfHXaSqh
	DGp0YwxWKJHaJsic3rkRtbJLWwKOUwmGOfoKgicmYQR236wPNIxGx0+yYMGxhVwtM5L59dWNbWwzD
	z7DElnbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q3i9j-00BTFE-0N;
	Mon, 29 May 2023 19:03:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q3i9c-00BTDQ-2z
	for barebox@lists.infradead.org;
	Mon, 29 May 2023 19:03:44 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1q3i9W-0001tc-2Y; Mon, 29 May 2023 21:03:34 +0200
Message-ID: <49afe89e-6e87-d003-119a-223344b6c4c9@pengutronix.de>
Date: Mon, 29 May 2023 21:03:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Lior Weintraub <liorw@pliops.com>, Ahmad Fatoum <ahmad@a3f.at>,
 "barebox@lists.infradead.org" <barebox@lists.infradead.org>
References: <f4aae166-1cc4-6255-1fde-7a52c7872bd8@pengutronix.de>
 <20230528153735.3315271-1-ahmad@a3f.at>
 <PR3P195MB05551AE3B3998B097BC90DCEC3459@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
 <PR3P195MB05555743B13DDCB43CEBA309C34A9@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <PR3P195MB05555743B13DDCB43CEBA309C34A9@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230529_120341_300292_1E60BD8B 
X-CRM114-Status: GOOD (  69.74  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2] Porting barebox to a new SoC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Lior,

On 29.05.23 15:34, Lior Weintraub wrote:
> Hi Ahmad,
> 
> I have revised the addresses and used DRAM address @ 0 instead:
> #define UARTBASE        (0xD000307000)
> #define DRAM_ADDR       (0x00000000)
> #define MY_STACK_TOP    (0x00000000 + SZ_2M) // Set the stack 2MB from DRAM start

Is DRAM configured by the time barebox runs? If not, you should keep stack top
in SRAM, until you have setup memory in prebootloader (PBL). Is the 4M SRAM
the only on-chip SRAM you have?

> static inline void spider_serial_putc(void *base, int c)
> {
>     *((volatile unsigned *)base) = c;

There's a helper for that: writel(c, base); In barebox, it's equivalent
to the volatile access, but in Linux it involves a write memory barrier.
We try to write code in barebox, so it's easily reusable in Linux (and
the other way round).

> }
> 
> I will try to test it on QEMU using an initial QEMU machine we made for Spider.
> In this machine we only have 3 memory regions and a PL011 UART:
> spider_soc_memories soc_memories[] = {
>     {.name = "SPIDER_GPRAM",   .add = 0xC000000000ULL, .size = 4 * MiB},
>     {.name = "SPIDER_ROM",     .add = 0xC004000000ULL, .size = 128 * KiB},
>     {.name = "SPIDER_DRAM",    .add = 0x0000000000ULL, .size = 1 * GiB},
> };
> 
> This special QEMU machine can run our BL1 code from "ROM" address (we set the RVBAR to point there).
> So my idea is to test the barebox image by the following steps:
> 1. Modify the QEMU code to have a "ROM" with the size of 128M.
> 2. Compile our BL1 code to include the barebox.bin as a const array, copy it to "DRAM" @ address 0 and jump there.

Why not map QEMU -bios option to SRAM? (Or DRAM directly, if it needs no special setup from
barebox side).

> For this to work I wanted to understand how to call (i.e. what arguments to pass) to barebox.

barebox doesn't expect any arguments, because most BootROMs don't pass anything useful.
Some pass information about bootsource though, so that's why the ENTRY_FUNCTION has
r0, r1 and r2 as parameters, but you need not use them.

> So I checked the barebox.map and found the function "start" on address 0.

You may know that Linux on some platforms comes with a decompressor that is glued to the
front of the kernel image and extracts the compressed kernel image. barebox has the same
concept. The prebootloader is uncompressed and runs (starting from ENTRY_FUNCTION) and
then does some early setup (e.g. enable clocks, configure PMIC, setup DRAM, load secure
monitor (BL31), ...etc.) and then it decompresses barebox proper into DRAM.

barebox.bin <- barebox proper. You don't usually need that.
barebox.elf <- ELF binary for the above (for gdb)
barebox.map <- map file of the above

images/barebox-spider-mk1-evk.img   <- complete barebox image (PBL + barebox proper)
images/start_spider_mk1_evk.pbl     <- ELF image for the above
images/start_spider_mk1_evk.pbl.map <- map file of the above

If you want to follow barbeox from the start, begin at start_spider_mk1_evk.

> Then I went to arch/arm/cpu/start.c and realized that the code is compiled with CONFIG_PBL_IMAGE.
> In that case I assume I need to pass 3 arguments and use this function prototype:
> void start(unsigned long membase, unsigned long memsize, void *boarddata);

barebox prebootloader takes care of this, so you don't need to do anything.

> Few questions:
> 1. Will that call work:
>     typedef void (*barebox_start)(unsigned long , unsigned long , void *);
>     #define DRAM_START  (0)
>     barebox_start p_barebox = (barebox_start)DRAM_START;
>     p_barebox(DRAM_START, DRAM_START+SZ_2M, (void *)(DRAM_START+SZ_4M));
>     This assumes that my BL1 code also copied the device tree (barebox-dt-2nd.img? start_dt_2nd.pblb? start_spider_mk1_evk.pblb?)

The device tree is built into the PBL and passed to barebox proper. This
allows us to use the same barebox proper binary and link it with a different
prebootloader for each SoC/board, all in the same build.

barebox-dt-2nd.img is a special image that looks exactly like a Linux kernel:

  images/barebox-dt-2nd.img: Linux kernel ARM64 boot executable Image, little-endian, 4K pages

and can thus be used for booting for easy chainloading from other bootloaders or for running
with QEMU -kernel. You shouldn't need it right now.

> 2. Do I want to have my code compiled with CONFIG_PBL_IMAGE?
>     If I understand correctly, it means that my code will provide a PBL (a.k.a BL2) which will set the DRAM and STACK among other things (MMU?).

The patch I sent already builds a PBL. You will need to fill out start_spider_mk1_evk
to do all the other early initialization you need. Then you call barebox_arm_entry
with device tree and memory size and it will take care to do stack setup in new
memory region, MMU setup (if enabled) and chainloading barebox proper.

Note that PBL isn't necessary BL2. You can chainload barebox from within barebox (i.e.
in EL2 or EL1), which is useful for debugging. You will thus often find PBL code that
does

  if (current_el() == 3) {
	/* Do BL2 setup */
	chainload();
	__builtin_unreachable();
  }

  barebox_arm_entry(...)

See for example arch/arm/boards/innocomm-imx8mm-wb15/lowlevel.c

to see a real-world example of another Cortex-A53.

>     In that case I assume it is OK.
> 3. If I try to remove it by having CONFIG_PBL_IMAGE=n on spider_defconfig this doesn't do anything
>     The build (make spider_defconfig) ignores it and say that " No change to .config ".

Another symbol forces it to be enabled. If you are curious, run make menuconfig
and then search (/) for the symbol and it will list, whether it's enabled and why:

  Selected by [y]:                                        
    - PBL_MULTI_IMAGES [=y] && HAVE_PBL_MULTI_IMAGES [=y] 

I'd suggest you avoid modifying the .config file manually. always use menuconfig.

> 4. I also tried to understand how to implement PUTC_LL but not sure I understand.
>    4.1 When I set "CONFIG_DEBUG_LL=y" on spider_defconfig it is again not written to .config and I get " No change to .config " message.

You must:

  - select HAS_DEBUG_LL from MACH_SPIDER
  - Add your arch to arch/arm/include/asm/debug_ll.h
  - Then implement PUTC_LL in e.g. mach/spider/debug_ll.h

>    4.2 Do I need to have my own debug_ll.h file?

Yes. See above.

> 5. When I make changes to spider_defconfig and try to regenerate the .config and I get " No change to .config " message, does it mean that those macros are "hidden" symbols like you said about the CONFIG_CPU_V8?

Yes. Just check menuconfig to see how symbols relate to each other.
This is 1:1 like it's in Linux, so it'll come in handy when you do
the kernel port too ;)

> Apologize for so many questions :-) 

No problem. Looking forward to your patches ;)


Cheers,
Ahmad

> Cheers,
> Lior.
> 
> -----Original Message-----
> From: Lior Weintraub 
> Sent: Sunday, May 28, 2023 11:16 PM
> To: Ahmad Fatoum <ahmad@a3f.at>; barebox@lists.infradead.org
> Subject: RE: [PATCH v2] Porting barebox to a new SoC
> 
> Hi Ahmad,
> 
> Thank you so much for your kind support!
> 
> Indeed we also have a 16GB DRAM that starts from address 0 (though currently we don't have the controller settings (under development)).
> 
> I also wrote the BootROM (BL1) for this SoC (128KB ROM @ address 0xC004000000).
> I understand now that it would be best for me to develop BL2 that will run from our SRAM.
> 
> As this BL2 code is bare-metal I have no problem or limitations with the 40 bit addresses.
> The BL2 code will initialize the DRAM controller and then copy Barebox image from NOR Flash to address 0 of the DRAM.
> Our NOR Flash is 128MB in size and it is accessed via QSPI controller.
> 
> I tried applying your suggested patch but got an error while doing so:
> $git apply 0002-Ahmad.patch
> 0002-Ahmad.patch:115: trailing whitespace.
>       .of_compatible = spider_board_of_match, };
> error: corrupt patch at line 117
> 
> After some digging I found that my Outlook probably messed with the patch format (even though I am using text only and no HTML format).
> When I went to the web and copied the patch from there (mailing list archive) it was working well (i.e. no compilation error).
> 
> Cheers,
> Lior.
> 
> -----Original Message-----
> From: Ahmad Fatoum <ahmad@a3f.at>
> Sent: Sunday, May 28, 2023 6:38 PM
> To: barebox@lists.infradead.org
> Cc: Lior Weintraub <liorw@pliops.com>
> Subject: [PATCH v2] Porting barebox to a new SoC
> 
> CAUTION: External Sender
> 
> From: Lior Weintraub <liorw@pliops.com>
> 
> Hi,
> 
> I tried to follow the porting guide on https://ddec1-0-en-ctp.trendmicro.com:443/wis/clicktime/v1/query?url=https%3a%2f%2fwww.barebox.org%2fdoc%2flatest%2fdevel%2fporting.html%23&umid=60097eda-f136-45a1-9c8e-cf6a76e45cf8&auth=860a7ebb9feba264acc79b6e38eb59582349362c-480ae23736add41c88ab8d30c090a75517ca7f9e but couldn't follow the instructions.
> I would like to port barebox to a new SoC (which is not a derivative of any known SoC).
> It has the following:
> * Single Cortex A53
> * SRAM (4MB) located on address 0xC000000000
> 
> The below patch shows my initial test to try and have a starting point.
> I am setting env variables:
> export ARCH=arm64
> export CROSS_COMPILE=/home/pliops/workspace/ARM/arm-gnu-toolchain/bin/aarch64-none-elf-
> 
> Then I build with:
> make spider_defconfig && make
> 
> This gives an error:
> aarch64-none-elf-gcc: error: unrecognized argument in option '-mabi=apcs-gnu'
> aarch64-none-elf-gcc: note: valid arguments to '-mabi=' are: ilp32 lp64
> aarch64-none-elf-gcc: error: unrecognized command-line option '-msoft-float'
> aarch64-none-elf-gcc: error: unrecognized command-line option '-mno-unaligned-access'
> /home/pliops/workspace/simplest-linux-demo/barebox/scripts/Makefile.build:140: recipe for target 'scripts/mod/empty.o' failed
> make[2]: *** [scripts/mod/empty.o] Error 1
> 
> Not sure why the compiler flags get -mabi=apcs-gnu when I explicitly set CONFIG_CPU_V8 and the arch/arm/Makefile has:
> ifeq ($(CONFIG_CPU_V8), y)
> CFLAGS_ABI      :=-mabi=lp64
> 
> The changes I did:
>>From 848b5f9b18bb1bb96d197cbc1b368ee0a729d581 Mon Sep 17 00:00:00 2001
> ---
>  arch/arm/Kconfig                      | 13 ++++++++
>  arch/arm/Makefile                     |  1 +
>  arch/arm/boards/Makefile              |  1 +
>  arch/arm/boards/spider-evk/Makefile   |  4 +++
>  arch/arm/boards/spider-evk/board.c    | 26 +++++++++++++++
>  arch/arm/boards/spider-evk/lowlevel.c | 30 +++++++++++++++++
>  arch/arm/configs/spider_defconfig     |  8 +++++
>  arch/arm/dts/Makefile                 |  1 +
>  arch/arm/dts/spider-mk1-evk.dts       | 10 ++++++
>  arch/arm/dts/spider-mk1.dtsi          | 46 +++++++++++++++++++++++++++
>  arch/arm/mach-spider/Kconfig          | 16 ++++++++++
>  arch/arm/mach-spider/Makefile         |  1 +
>  arch/arm/mach-spider/lowlevel.c       | 14 ++++++++
>  images/Makefile                       |  1 +
>  images/Makefile.spider                |  5 +++
>  include/mach/spider/lowlevel.h        |  7 ++++
>  16 files changed, 184 insertions(+)
>  create mode 100644 arch/arm/boards/spider-evk/Makefile
>  create mode 100644 arch/arm/boards/spider-evk/board.c
>  create mode 100644 arch/arm/boards/spider-evk/lowlevel.c
>  create mode 100644 arch/arm/configs/spider_defconfig  create mode 100644 arch/arm/dts/spider-mk1-evk.dts  create mode 100644 arch/arm/dts/spider-mk1.dtsi  create mode 100644 arch/arm/mach-spider/Kconfig  create mode 100644 arch/arm/mach-spider/Makefile  create mode 100644 arch/arm/mach-spider/lowlevel.c  create mode 100644 images/Makefile.spider  create mode 100644 include/mach/spider/lowlevel.h
> 
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig index e76ee0f6dfe1..e5dcf128447e 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -255,6 +255,18 @@ config ARCH_ROCKCHIP
>         select HAS_DEBUG_LL
>         imply GPIO_ROCKCHIP
> 
> +config ARCH_SPIDER
> +       bool "Pliops Spider based"
> +       depends on 64BIT
> +       depends on ARCH_MULTIARCH
> +       select GPIOLIB
> +       select HAVE_PBL_MULTI_IMAGES
> +       select COMMON_CLK
> +       select CLKDEV_LOOKUP
> +       select COMMON_CLK_OF_PROVIDER
> +       select OFTREE
> +       select OFDEVICE
> +
>  config ARCH_STM32MP
>         bool "STMicroelectronics STM32MP"
>         depends on 32BIT
> @@ -331,6 +343,7 @@ source "arch/arm/mach-omap/Kconfig"
>  source "arch/arm/mach-pxa/Kconfig"
>  source "arch/arm/mach-rockchip/Kconfig"
>  source "arch/arm/mach-socfpga/Kconfig"
> +source "arch/arm/mach-spider/Kconfig"
>  source "arch/arm/mach-stm32mp/Kconfig"
>  source "arch/arm/mach-versatile/Kconfig"
>  source "arch/arm/mach-vexpress/Kconfig"
> diff --git a/arch/arm/Makefile b/arch/arm/Makefile index 35ebc70f44e2..4c63dfee48f4 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -101,6 +101,7 @@ machine-$(CONFIG_ARCH_MXS)          += mxs
>  machine-$(CONFIG_ARCH_MVEBU)           += mvebu
>  machine-$(CONFIG_ARCH_NOMADIK)         += nomadik
>  machine-$(CONFIG_ARCH_OMAP)            += omap
> +machine-$(CONFIG_ARCH_SPIDER)          += spider
>  machine-$(CONFIG_ARCH_PXA)             += pxa
>  machine-$(CONFIG_ARCH_ROCKCHIP)                += rockchip
>  machine-$(CONFIG_ARCH_SAMSUNG)         += samsung
> diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile index 2877debad535..6fe0a90c81ea 100644
> --- a/arch/arm/boards/Makefile
> +++ b/arch/arm/boards/Makefile
> @@ -135,6 +135,7 @@ obj-$(CONFIG_MACH_SOCFPGA_TERASIC_DE10_NANO)        += terasic-de10-nano/
>  obj-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT)      += terasic-sockit/
>  obj-$(CONFIG_MACH_SOLIDRUN_CUBOX)              += solidrun-cubox/
>  obj-$(CONFIG_MACH_SOLIDRUN_MICROSOM)           += solidrun-microsom/
> +obj-$(CONFIG_MACH_SPIDER_MK1_EVK)              += spider-evk/
>  obj-$(CONFIG_MACH_STM32MP15XX_DKX)             += stm32mp15xx-dkx/
>  obj-$(CONFIG_MACH_STM32MP13XX_DK)              += stm32mp13xx-dk/
>  obj-$(CONFIG_MACH_LXA_MC1)                     += lxa-mc1/
> diff --git a/arch/arm/boards/spider-evk/Makefile b/arch/arm/boards/spider-evk/Makefile
> new file mode 100644
> index 000000000000..da63d2625f7a
> --- /dev/null
> +++ b/arch/arm/boards/spider-evk/Makefile
> @@ -0,0 +1,4 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +
> +obj-y += board.o
> +lwl-y += lowlevel.o
> diff --git a/arch/arm/boards/spider-evk/board.c b/arch/arm/boards/spider-evk/board.c
> new file mode 100644
> index 000000000000..3920e83b457d
> --- /dev/null
> +++ b/arch/arm/boards/spider-evk/board.c
> @@ -0,0 +1,26 @@
> +#include <bbu.h>
> +#include <boot.h>
> +#include <bootm.h>
> +#include <common.h>
> +#include <deep-probe.h>
> +#include <environment.h>
> +#include <fcntl.h>
> +#include <globalvar.h>
> +
> +static int spider_board_probe(struct device *dev) {
> +      /* Do some board-specific setup */
> +      return 0;
> +}
> +
> +static const struct of_device_id spider_board_of_match[] = {
> +      { .compatible = "pliops,spider-mk1-evk" },
> +      { /* sentinel */ },
> +};
> +
> +static struct driver spider_board_driver = {
> +      .name = "board-spider",
> +      .probe = spider_board_probe,
> +      .of_compatible = spider_board_of_match, }; 
> +device_platform_driver(spider_board_driver);
> diff --git a/arch/arm/boards/spider-evk/lowlevel.c b/arch/arm/boards/spider-evk/lowlevel.c
> new file mode 100644
> index 000000000000..e36fcde4208e
> --- /dev/null
> +++ b/arch/arm/boards/spider-evk/lowlevel.c
> @@ -0,0 +1,30 @@
> +#include <common.h>
> +#include <asm/barebox-arm.h>
> +#include <mach/spider/lowlevel.h>
> +
> +#define BASE_ADDR       (0xD000307000)
> +#define GPRAM_ADDR      (0xC000000000)
> +#define MY_STACK_TOP    (0xC000000000 + SZ_2M) // Set the stack 2MB from GPRAM start (excatly in the middle)
> +static inline void spider_serial_putc(void *base, int c) {
> +//     if (!(readl(base + UCR1) & UCR1_UARTEN))
> +//             return;
> +//
> +//     while (!(readl(base + USR2) & USR2_TXDC));
> +//
> +//     writel(c, base + URTX0);
> +}
> +
> +ENTRY_FUNCTION_WITHSTACK(start_spider_mk1_evk, MY_STACK_TOP, r0, r1,
> +r2) {
> +       extern char __dtb_spider_mk1_evk_start[];
> +
> +       spider_lowlevel_init();
> +
> +       relocate_to_current_adr();
> +       setup_c();
> +
> +       pbl_set_putc(spider_serial_putc, (void *)BASE_ADDR);
> +
> +       barebox_arm_entry(GPRAM_ADDR, SZ_2M, 
> +__dtb_spider_mk1_evk_start); }
> diff --git a/arch/arm/configs/spider_defconfig b/arch/arm/configs/spider_defconfig
> new file mode 100644
> index 000000000000..c91bb889d97f
> --- /dev/null
> +++ b/arch/arm/configs/spider_defconfig
> @@ -0,0 +1,8 @@
> +CONFIG_ARCH_SPIDER=y
> +CONFIG_MACH_SPIDER_MK1_EVK=y
> +CONFIG_BOARD_ARM_GENERIC_DT=y
> +CONFIG_MALLOC_TLSF=y
> +CONFIG_KALLSYMS=y
> +CONFIG_RELOCATABLE=y
> +CONFIG_CONSOLE_ALLOW_COLOR=y
> +CONFIG_PBL_CONSOLE=y
> diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile index 98f4c4e0194b..94b304d4878f 100644
> --- a/arch/arm/dts/Makefile
> +++ b/arch/arm/dts/Makefile
> @@ -134,6 +134,7 @@ lwl-$(CONFIG_MACH_SOLIDRUN_CUBOX) += dove-cubox-bb.dtb.o
>  lwl-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += imx6dl-hummingboard.dtb.o imx6q-hummingboard.dtb.o \
>                                 imx6dl-hummingboard2.dtb.o imx6q-hummingboard2.dtb.o \
>                                 imx6q-h100.dtb.o
> +lwl-$(CONFIG_MACH_SPIDER_MK1_EVK) += spider-mk1-evk.dtb.o
>  lwl-$(CONFIG_MACH_SKOV_IMX6) += imx6s-skov-imx6.dtb.o imx6dl-skov-imx6.dtb.o imx6q-skov-imx6.dtb.o
>  lwl-$(CONFIG_MACH_SKOV_ARM9CPU) += at91-skov-arm9cpu.dtb.o
>  lwl-$(CONFIG_MACH_SEEED_ODYSSEY) += stm32mp157c-odyssey.dtb.o diff --git a/arch/arm/dts/spider-mk1-evk.dts b/arch/arm/dts/spider-mk1-evk.dts new file mode 100644 index 000000000000..b8081cb85bf8
> --- /dev/null
> +++ b/arch/arm/dts/spider-mk1-evk.dts
> @@ -0,0 +1,10 @@
> +// SPDX-License-Identifier: GPL-2.0 OR X11
> +
> +/dts-v1/;
> +
> +#include "spider-mk1.dtsi"
> +
> +/ {
> +       model = "Pliops Spider MK-I EVK";
> +       compatible = "pliops,spider-mk1-evk"; };
> diff --git a/arch/arm/dts/spider-mk1.dtsi b/arch/arm/dts/spider-mk1.dtsi new file mode 100644 index 000000000000..d4613848169d
> --- /dev/null
> +++ b/arch/arm/dts/spider-mk1.dtsi
> @@ -0,0 +1,46 @@
> +// SPDX-License-Identifier: GPL-2.0 OR X11
> +
> +/ {
> +       #address-cells = <2>;
> +       #size-cells = <2>;
> +
> +       chosen {
> +               stdout-path = &uart0;
> +       };
> +
> +       aliases {
> +               serial0 = &uart0;
> +       };
> +
> +       cpus {
> +               #address-cells = <1>;
> +               #size-cells = <0>;
> +
> +               cpu0: cpu@0 {
> +                       device_type = "cpu";
> +                       compatible = "arm,cortex-a53";
> +                       reg = <0x0>;
> +               };
> +       };
> +
> +       memory@1000000 {
> +               reg = <0x0 0x1000000 0x0 0x400000>; /* 128M */
> +               device_type = "memory";
> +       };
> +
> +       soc {
> +               #address-cells = <2>;
> +               #size-cells = <2>;
> +               ranges;
> +
> +               sram@c000000000 {
> +                       compatible = "mmio-sram";
> +                       reg = <0xc0 0x0 0x0 0x400000>;
> +               };
> +
> +               uart0: serial@d000307000 {
> +                       compatible = "pliops,spider-uart";
> +                       reg = <0xd0 0x307000 0 0x1000>;
> +               };
> +       };
> +};
> diff --git a/arch/arm/mach-spider/Kconfig b/arch/arm/mach-spider/Kconfig new file mode 100644 index 000000000000..6d2f888a5fd8
> --- /dev/null
> +++ b/arch/arm/mach-spider/Kconfig
> @@ -0,0 +1,16 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +
> +if ARCH_SPIDER
> +
> +config ARCH_SPIDER_MK1
> +       bool
> +       select CPU_V8
> +       help
> +         The first Cortex-A53-based SoC of the spider family.
> +         This symbol is invisble and select by boards
> +
> +config MACH_SPIDER_MK1_EVK
> +       bool "Pliops Spider Reference Design Board"
> +       select ARCH_SPIDER_MK1
> +
> +endif
> diff --git a/arch/arm/mach-spider/Makefile b/arch/arm/mach-spider/Makefile new file mode 100644 index 000000000000..b08c4a93ca27
> --- /dev/null
> +++ b/arch/arm/mach-spider/Makefile
> @@ -0,0 +1 @@
> +lwl-y += lowlevel.o
> diff --git a/arch/arm/mach-spider/lowlevel.c b/arch/arm/mach-spider/lowlevel.c new file mode 100644 index 000000000000..5d62ef0f39e5
> --- /dev/null
> +++ b/arch/arm/mach-spider/lowlevel.c
> @@ -0,0 +1,14 @@
> +// SPDX-License-Identifier:     GPL-2.0+
> +
> +#include <linux/types.h>
> +#include <mach/spider/lowlevel.h>
> +#include <asm/barebox-arm-head.h>
> +
> +void spider_lowlevel_init(void)
> +{
> +       arm_cpu_lowlevel_init();
> +       /*
> +        * not yet relocated, only do writel/readl for stuff that's
> +        * critical to run early. No global variables allowed.
> +        */
> +}
> diff --git a/images/Makefile b/images/Makefile index c93f9e268978..97521e713228 100644
> --- a/images/Makefile
> +++ b/images/Makefile
> @@ -150,6 +150,7 @@ include $(srctree)/images/Makefile.mxs  include $(srctree)/images/Makefile.omap3  include $(srctree)/images/Makefile.rockchip
>  include $(srctree)/images/Makefile.socfpga
> +include $(srctree)/images/Makefile.spider
>  include $(srctree)/images/Makefile.stm32mp
>  include $(srctree)/images/Makefile.tegra  include $(srctree)/images/Makefile.versatile
> diff --git a/images/Makefile.spider b/images/Makefile.spider new file mode 100644 index 000000000000..c32f2762df04
> --- /dev/null
> +++ b/images/Makefile.spider
> @@ -0,0 +1,5 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +
> +pblb-$(CONFIG_MACH_SPIDER_MK1_EVK) += start_spider_mk1_evk 
> +FILE_barebox-spider-mk1-evk.img = start_spider_mk1_evk.pblb
> +image-$(CONFIG_MACH_SPIDER_MK1_EVK) += barebox-spider-mk1-evk.img
> diff --git a/include/mach/spider/lowlevel.h b/include/mach/spider/lowlevel.h new file mode 100644 index 000000000000..6e0ce1c77f7e
> --- /dev/null
> +++ b/include/mach/spider/lowlevel.h
> @@ -0,0 +1,7 @@
> +/* SPDX-License-Identifier: GPL-2.0+ */ #ifndef __MACH_SPIDER_H_ 
> +#define __MACH_SPIDER_H_
> +
> +void spider_lowlevel_init(void);
> +
> +#endif
> --
> 2.38.4
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



