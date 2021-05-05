Delivery-date: Wed, 05 May 2021 12:22:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leEfd-0007dm-UI
	for lore@lore.pengutronix.de; Wed, 05 May 2021 12:22:21 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leEfc-0007y7-O4
	for lore@pengutronix.de; Wed, 05 May 2021 12:22:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CFg54G/5X+CsFi/k5uBMMd2p9IDMEl8Ouy0gc+37lro=; b=ZRSYTqxGejC5307Anl/KOVv8U
	/s+4QCxf47QDITJk8pX39JzS3SAIja+36ZtN1itl0pHhl8VbkHHFnzPQbxe4XIlrKJyW98BMhY1Fi
	tObKmyApStlNcO+Npfy7poWhTY5/Xog6bowwOZsCZlHBa0dV1SmNeY9DQyyfrV+YpNrOqS5sg2QuE
	AYY8ZxXtXGRQjH/EgexXv1grS8TcYZwH/ri7vIUsLoDGIIO9jx0tiTzkhv8H0u88akdkhwPZ03+1t
	BphAr0muJhfTkLubZYBFFjM4KYpBBFzMoOF2bQynSVuMEYO84ifYrRKfqMLaNTqasyPX8vLWOFoRZ
	Wp/E4giyg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leEeZ-000uQ5-Ej; Wed, 05 May 2021 10:21:15 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leEcU-000tb3-SS
 for barebox@desiato.infradead.org; Wed, 05 May 2021 10:19:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=fH8tc0Xnae54soAEfXFsKlJj0vKZksIHWnVmz3MdiAw=; b=CH7yJEBKGT/sHHO6SQCsHMLK4z
 mImef6uEj+SX/0Skgj6PXDHWBVOFui+UC9nZPkfRHUu4Mmfe4TO7KiWjaFSaPm541Z6Rin1J102RI
 /WqdF7j6kB6lUTbiPGeO/TwNo/vaNDquu19ELCnJYQYi8p8AFFNzZ8du5Ml7e1HmdAZtMPND2a6zf
 1Lfc/ba9w59wWDWqX/iV8YuBjewxm5N8uocm4UKhM3p9aQzcl8tC+SRWxDInAvvdirqycYD/unIYm
 XLeWTmm4hBIJpS8caOwaOvJ4IQGCf4PifjhoRehQYy9NsmoLiGhV/T6EoaJLS+/PJ/FjemzpsNyfm
 l9h1CrEw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leEcR-004f3W-VG
 for barebox@lists.infradead.org; Wed, 05 May 2021 10:19:05 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1leEcQ-0007Hf-OJ; Wed, 05 May 2021 12:19:02 +0200
To: Antony Pavlov <antonynpavlov@gmail.com>, barebox@lists.infradead.org
References: <20210505100900.88141-1-antonynpavlov@gmail.com>
 <20210505100900.88141-9-antonynpavlov@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <de3c1a2d-5796-d2a0-4bfa-295adf9d37e9@pengutronix.de>
Date: Wed, 5 May 2021 12:19:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210505100900.88141-9-antonynpavlov@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210505_031904_040932_5F1EB677 
X-CRM114-Status: GOOD (  23.32  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 8/9] RISC-V: add litex-linux board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Antony,

On 05.05.21 12:08, Antony Pavlov wrote:
> Tested on Digilent Arty FPGA board.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  arch/riscv/boards/Makefile               |  1 +
>  arch/riscv/boards/litex-linux/Makefile   |  3 +
>  arch/riscv/boards/litex-linux/lowlevel.c | 20 +++++
>  arch/riscv/dts/Makefile                  |  1 +
>  arch/riscv/dts/litex-linux.dts           | 96 ++++++++++++++++++++++++
>  arch/riscv/mach-litex/Kconfig            |  3 +
>  images/Makefile.riscv                    |  4 +
>  7 files changed, 128 insertions(+)
> 
> diff --git a/arch/riscv/boards/Makefile b/arch/riscv/boards/Makefile
> index 2ce9af41e0..d477cce362 100644
> --- a/arch/riscv/boards/Makefile
> +++ b/arch/riscv/boards/Makefile
> @@ -1,2 +1,3 @@
>  # SPDX-License-Identifier: GPL-2.0
>  obj-$(CONFIG_BOARD_ERIZO_GENERIC)	+= erizo/
> +obj-$(CONFIG_BOARD_LITEX_LINUX)	+= litex-linux/
> diff --git a/arch/riscv/boards/litex-linux/Makefile b/arch/riscv/boards/litex-linux/Makefile
> new file mode 100644
> index 0000000000..3d217ffe0b
> --- /dev/null
> +++ b/arch/riscv/boards/litex-linux/Makefile
> @@ -0,0 +1,3 @@
> +# SPDX-License-Identifier: GPL-2.0
> +
> +pbl-y += lowlevel.o
> diff --git a/arch/riscv/boards/litex-linux/lowlevel.c b/arch/riscv/boards/litex-linux/lowlevel.c
> new file mode 100644
> index 0000000000..9ac1a3a42e
> --- /dev/null
> +++ b/arch/riscv/boards/litex-linux/lowlevel.c
> @@ -0,0 +1,20 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +
> +#include <common.h>
> +#include <asm/barebox-riscv.h>
> +#include <debug_ll.h>
> +
> +ENTRY_FUNCTION(start_litex_linux, a0, a1, a2)
> +{
> +	extern char __dtb_z_litex_linux_start[];
> +	extern void __barebox_nmon_entry(void);

I'd suggest <asm/nmon.h>, so this need not be repeated.

> +
> +	if (IS_ENABLED(CONFIG_NMON))
> +		__barebox_nmon_entry();
> +	putc_ll('>');
> +
> +	/* On POR, we are running from read-only memory here. */
> +
> +	barebox_riscv_entry(0x40000000, SZ_256M,
> +			    __dtb_z_litex_linux_start + get_runtime_offset());
> +}
> diff --git a/arch/riscv/dts/Makefile b/arch/riscv/dts/Makefile
> index 4041c34e0c..dc5237b5bb 100644
> --- a/arch/riscv/dts/Makefile
> +++ b/arch/riscv/dts/Makefile
> @@ -5,5 +5,6 @@
>  obj- += dummy.o
>  
>  pbl-$(CONFIG_BOARD_ERIZO_GENERIC) += erizo-generic.dtb.o
> +pbl-$(CONFIG_BOARD_LITEX_LINUX) += litex-linux.dtb.o
>  
>  clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts
> diff --git a/arch/riscv/dts/litex-linux.dts b/arch/riscv/dts/litex-linux.dts
> new file mode 100644
> index 0000000000..aa7e072305
> --- /dev/null
> +++ b/arch/riscv/dts/litex-linux.dts
> @@ -0,0 +1,96 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +
> +#include "litex_soc_linux.dtsi"
> +
> +#include <dt-bindings/gpio/gpio.h>
> +
> +/ {
> +	model = "LiteX VexRiscV-SoC-Linux";
> +	compatible = "litex,vexriscv-soc-linux";
> +
> +	aliases {
> +		rom = &rom;
> +		sram = &sram;
> +	};
> +
> +	/* ARTY board */
> +	rom: rom@00000000 {
> +		compatible = "mmio-sram";
> +		reg = <0x00000000 0x00008000>;
> +		read-only;
> +	};
> +
> +	sram: sram@20000000 {
> +		compatible = "mmio-sram";
> +		reg = <0x20000000 0x00004000>;
> +	};
> +
> +	main_ram: memory@40000000 {
> +		device_type = "memory";
> +		reg = <0x40000000 0x10000000>;
> +	};
> +};
> +
> +&uart0 {
> +	status = "okay";
> +};
> +
> +&mac0 {
> +	status = "okay";
> +};
> +
> +&spi0 {
> +	status = "okay";
> +
> +	spiflash: w25q128@0 {
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		compatible = "winbond,w25q128", "jedec,spi-nor";
> +		spi-max-frequency = <104000000>;
> +		reg = <0>;
> +	};
> +};
> +
> +/ {

Any reason, this can't be merge into / { } above?

> +	ledsgpio: gpio@f0005000 {
> +		compatible = "ti,74175";
> +		reg = <0xf0005000 0x4>;
> +		gpio-controller;
> +		#gpio-cells = <2>;
> +	};
> +
> +	leds {
> +		compatible = "gpio-leds";
> +
> +		ld0 {

Nitpick: led-0 is what's required by the YAML schema.

> +			label = "arty:green:ld0";
> +			gpios = <&ledsgpio 0 GPIO_ACTIVE_HIGH>;
> +			default-state = "off";

That's redundant, isn't it?

> +		};
> +
> +		ld1 {
> +			label = "arty:green:ld1";
> +			gpios = <&ledsgpio 1 GPIO_ACTIVE_HIGH>;
> +			default-state = "off";
> +		};
> +
> +		ld2 {
> +			label = "arty:green:ld2";
> +			gpios = <&ledsgpio 2 GPIO_ACTIVE_HIGH>;
> +			default-state = "off";
> +		};
> +
> +		ld3 {
> +			label = "arty:green:ld3";
> +			gpios = <&ledsgpio 3 GPIO_ACTIVE_HIGH>;
> +			default-state = "off";
> +		};
> +	};
> +
> +	swgpio: gpio@f0007000 {
> +		compatible = "ti,74125";
> +		reg = <0xf0007000 0x4>;
> +		gpio-controller;
> +		#gpio-cells = <2>;
> +	};
> +};
> diff --git a/arch/riscv/mach-litex/Kconfig b/arch/riscv/mach-litex/Kconfig
> index 19d5927e44..3ff03b0e02 100644
> --- a/arch/riscv/mach-litex/Kconfig
> +++ b/arch/riscv/mach-litex/Kconfig
> @@ -3,6 +3,9 @@ if MACH_LITEX
>  choice
>  	prompt "Board type"
>  
> +config BOARD_LITEX_LINUX
> +	bool "litex linux board"
> +
>  endchoice
>  
>  endif
> diff --git a/images/Makefile.riscv b/images/Makefile.riscv
> index 463c6ce440..831858a54d 100644
> --- a/images/Makefile.riscv
> +++ b/images/Makefile.riscv
> @@ -10,3 +10,7 @@ $(obj)/%.nmon: $(obj)/%.img FORCE
>  pblb-$(CONFIG_BOARD_ERIZO_GENERIC) += start_erizo_generic
>  FILE_barebox-erizo-generic.img = start_erizo_generic.pblb
>  image-$(CONFIG_BOARD_ERIZO_GENERIC) += barebox-erizo-generic.img barebox-erizo-generic.nmon
> +
> +pblb-$(CONFIG_BOARD_LITEX_LINUX) += start_litex_linux
> +FILE_barebox-litex-linux.img = start_litex_linux.pblb
> +image-$(CONFIG_BOARD_LITEX_LINUX) += barebox-litex-linux.img

barebox-litex-linux sounds quite strange for me as someone who hasn't
used LiteX.

> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

