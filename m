Delivery-date: Sun, 28 May 2023 17:37:32 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q3ISb-0007IO-JT
	for lore@lore.pengutronix.de; Sun, 28 May 2023 17:37:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q3ISY-0004bs-U9
	for lore@pengutronix.de; Sun, 28 May 2023 17:37:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VV7i15XHiuVNHsHHxEJLfjHpSJU/VdFQF9lAD4QYQWc=; b=xdIKJoXmAkBdKnk9SBUOkx7f1F
	88ivx9Fq46JqEiQR/KkvqFMvfwmxy2Qdf2zzCgKWQk4ZMql+9EiD2lTwLQScjIMgZlqhpwIjKZcc6
	TEOXHXi8x2OC/XcYCKMsDD03NO8d2lE+Do1UWntCSaAjcC9HfWwssNNkep3WhFct0zqVn7hE1N1NR
	SB6inth7p+d2axeuRwtT3czQTU+2rVB4xvDho+RNgmGx+rJRDLZHMIN82KgIWWZifmJmPOGHjDNuo
	9aOJonv7ymAlm4d96ux/ZHLaPrdIIvT4GKUsnVsfm1kTYamPn25noubUuBzXdOh85+w/8bxTelIQi
	T8Q8AVDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q3IR6-007z7l-1P;
	Sun, 28 May 2023 15:36:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q3IR1-007z6f-0g
	for barebox@lists.infradead.org;
	Sun, 28 May 2023 15:35:58 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1q3IQv-0004UC-W4; Sun, 28 May 2023 17:35:50 +0200
Message-ID: <f4aae166-1cc4-6255-1fde-7a52c7872bd8@pengutronix.de>
Date: Sun, 28 May 2023 17:35:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Lior Weintraub <liorw@pliops.com>,
 "barebox@lists.infradead.org" <barebox@lists.infradead.org>
References: <PR3P195MB05550502A2AD5D21F032A22BC3459@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <PR3P195MB05550502A2AD5D21F032A22BC3459@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230528_083555_437030_2316A775 
X-CRM114-Status: GOOD (  43.23  )
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
Subject: Re: Porting barebox to a new SoC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Lior,

On 28.05.23 15:04, Lior Weintraub wrote:
> Hi,
> 
> I tried to follow the porting guide on https://www.barebox.org/doc/latest/devel/porting.html# but couldn't follow the instructions.
> I would like to port barebox to a new SoC (which is not a derivative of any known SoC).
> It has the following:
> * Single Cortex A53
> * SRAM (4MB) located on address 0xC000000000

Nice, that's plenty. But do you have DRAM as well for barebox to extract
itself into and for Linux to start from? If 4M is indeed all you got,
you will need to tweak barebox a bit.

> The below patch shows my initial test to try and have a starting point.
> I am setting env variables:
> export ARCH=arm64 
> export CROSS_COMPILE=/home/pliops/workspace/ARM/arm-gnu-toolchain/bin/aarch64-none-elf-

Note that barebox is normally built by a Linux toolchain, e.g. aarch64-linux-gnu- running
in freestanding mode. This doesn't seem to be your issue though, but just something to
keep in mind. 

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
> CFLAGS_ABI	:=-mabi=lp64

CONFIG_CPU_V8 doesn't have a prompt. That means it's a "hidden" symbol that
can only be selected by other config options. Without CONFIG_CPU_V8, barebox'
build system assumes you are building for 32-bit. Note that ARCH=arm64 and
ARCH=arm are the same architecture in barebox (arch/arm). The boards you
select is what defines what compiler options will be used.

If you did savedefconfig, the resulting defconfig should have shown you
that CONFIG_CPU_V8 is getting lost.

> The changes I did:

I inserted some comments below and will reply with a revised version
that adds sine if the needed boilerplate.

> From 848b5f9b18bb1bb96d197cbc1b368ee0a729d581 Mon Sep 17 00:00:00 2001
> From: Lior Weintraub <liorw@pliops.com>
> Date: Sun, 28 May 2023 15:51:44 +0300
> Subject: [PATCH 1/1] Initial Pliops Spider board
> 
> ---
>  arch/arm/boards/pliops/spider/Makefile   |  4 ++++
>  arch/arm/boards/pliops/spider/board.c    | 26 ++++++++++++++++++++++
>  arch/arm/boards/pliops/spider/lowlevel.c | 28 ++++++++++++++++++++++++
>  arch/arm/configs/spider_defconfig        |  3 +++
>  4 files changed, 61 insertions(+)
>  create mode 100644 arch/arm/boards/pliops/spider/Makefile
>  create mode 100644 arch/arm/boards/pliops/spider/board.c
>  create mode 100644 arch/arm/boards/pliops/spider/lowlevel.c
>  create mode 100644 arch/arm/configs/spider_defconfig
> 
> diff --git a/arch/arm/boards/pliops/spider/Makefile b/arch/arm/boards/pliops/spider/Makefile
> new file mode 100644
> index 0000000000..da63d2625f
> --- /dev/null
> +++ b/arch/arm/boards/pliops/spider/Makefile
> @@ -0,0 +1,4 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +
> +obj-y += board.o
> +lwl-y += lowlevel.o
> diff --git a/arch/arm/boards/pliops/spider/board.c b/arch/arm/boards/pliops/spider/board.c
> new file mode 100644
> index 0000000000..17cdd5e2b9
> --- /dev/null
> +++ b/arch/arm/boards/pliops/spider/board.c
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
> +static int spider_board_probe(struct device *dev)
> +{
> +      /* Do some board-specific setup */
> +      return 0;
> +}
> +
> +static const struct of_device_id spider_board_of_match[] = {
> +      { .compatible = "spider,spider-board" },

The first part before the comma is the vendor, so you will want
something like pliops,spider-evk (board is quite generic, evk = evaluation kit?)

> +      { /* sentinel */ },
> +};
> +
> +static struct driver spider_board_driver = {
> +      .name = "board-spider",
> +      .probe = spider_board_probe,
> +      .of_compatible = spider_board_of_match,
> +};
> +device_platform_driver(spider_board_driver);
> \ No newline at end of file
> diff --git a/arch/arm/boards/pliops/spider/lowlevel.c b/arch/arm/boards/pliops/spider/lowlevel.c
> new file mode 100644
> index 0000000000..f3d5a27647
> --- /dev/null
> +++ b/arch/arm/boards/pliops/spider/lowlevel.c
> @@ -0,0 +1,28 @@
> +#include <common.h>
> +#include <asm/barebox-arm.h>
> +
> +#define BASE_ADDR       (0xD000307000)
> +#define GPRAM_ADDR      (0xC000000000)
> +#define MY_STACK_TOP    (0xC000000000 + SZ_2M) // Set the stack 2MB from GPRAM start (excatly in the middle)
> +static inline void spider_serial_putc(void *base, int c)
> +{
> +//     if (!(readl(base + UCR1) & UCR1_UARTEN))
> +//             return;
> +//
> +//     while (!(readl(base + USR2) & USR2_TXDC));
> +//
> +//     writel(c, base + URTX0);
> +}

Also consider defining PUTC_LL. This is useful for very early debugging.

> +ENTRY_FUNCTION_WITHSTACK(start_spider_board, MY_STACK_TOP, r0, r1, r2)

Current implementation of ENTRY_FUNCTION_WITHSTACK assumes MY_STACK_TOP
to be within the first 4G. The compiler will warn you when it gets
truncated. This can be fixed, but I am wondering if the SRAM address
is indeed correct? Many IPs have limitation on how big addresses they
handle, so RAM more often than not starts below 4G.

> +{
> +       extern char __dtb_spider_board_start[];
> +       void *fdt;

You miss arm_cpu_lowlevel_init() here. See my patch.

> +
> +       relocate_to_current_adr();
> +       setup_c();
> +
> +       pbl_set_putc(spider_serial_putc, (void *)BASE_ADDR);
> +
> +       barebox_arm_entry(GPRAM_ADDR, SZ_2M, __dtb_spider_board_start);
> +}
> diff --git a/arch/arm/configs/spider_defconfig b/arch/arm/configs/spider_defconfig
> new file mode 100644
> index 0000000000..b4c4a32de0
> --- /dev/null
> +++ b/arch/arm/configs/spider_defconfig
> @@ -0,0 +1,3 @@
> +CONFIG_TEXT_BASE=0x4000000000

This causes a cryptic error message, because BAREBOX_MAX_BARE_INIT_SIZE
is 0xffff_ffff at most, which is less than the text base here.

You should just set it to 0 and enable CONFIG_RELOCATABLE. That way
barebox is executable from any address.

Note, that even on 64-bit platforms, barebox itself was always placed in
the lower 4G, so may run into some more issues that need to be fixed
first (if you don't have any RAM < 4G).

By the way, the most recent SoC being posted for upstream inclusion
is Jules' series for Allwinner/Sunxi:

  https://lore.barebox.org/barebox/20230524234328.82741-1-jmaselbas@zdiv.net/T/#t

You may find it useful to take a look at it.

Cheers,
Ahmad

> +CONFIG_64BIT=y
> +CONFIG_CPU_V8=y




-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



