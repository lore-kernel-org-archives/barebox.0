Delivery-date: Wed, 05 May 2021 12:21:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leEez-0007d2-GX
	for lore@lore.pengutronix.de; Wed, 05 May 2021 12:21:41 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leEey-0007jl-5k
	for lore@pengutronix.de; Wed, 05 May 2021 12:21:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6XTzZziOEYuGfzPR/QNGYoHjB11auzMB+nb5EJYmTjU=; b=SaAzw7asKq7XEgQg4Wg/qeeoC
	D8KlGU5DqZMldWo2joMtJ2hP6FgAo6P70LOXF9w5OaE19Haf6n0llSQiNoDsCXqR169za/e2x6y5B
	YOERpAfnUdspL+f4/wBsCXhVVNEOCRn4qCDHBTX1BZqWFrjSDojRIB5mPIZMcmFceoks2pJOUKDHl
	RtRr5fek60M6cWtDsIm59YEZAU6fQ/kDPtrleSsgaFVRkFJJ0iO+Rjpsr1V7i7SoBR26QGpqTEPLe
	4YjAwKQ8w5OQDaaqm8qXMQ8HfVPNFHFofws1o35S47T0gWuAcS2nKtpGuM31jqRfTn2pbODQRwV93
	AQvsW4hjg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leEdk-000u2V-77; Wed, 05 May 2021 10:20:24 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leEZf-000sHN-G1
 for barebox@desiato.infradead.org; Wed, 05 May 2021 10:16:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=r8N1bwmCEO2VwcB6gW5LlTBG/ExKA5N0/nHOliIjQAc=; b=Fu0PBNHvZT5xsbl1AoCrKiuDu4
 DZaabbMJnoAPhOUbV2PTn14xa+W6+oQT+D0d+8YSE9pbgpGicSbklhmfH4ljlFFrz2ZyzRibM2Txw
 O4HKBDwfhsgR2KifW5PsPd2vC3Qrh9dYdDDct3DSxC71GZ/f6zNyxoWiJPcLS4gKFmvMmPah0EdFU
 lMLNWvNkAv/NalOWUX5Y/pCvf2M5wiBsA/qtrH8Fqzyr5+meETk/nNIPJzMiNfivgsSlSN5puRGdt
 7z1ZWUKrfL14Wn2aHMDOhzTjx6ER5o+VpCYzMrf0ILmHTIjf2dZlL+pMgKP8sx9Ljki9ItRrl4Dhf
 rlIs6PSg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leEZa-004er2-BN
 for barebox@lists.infradead.org; Wed, 05 May 2021 10:16:08 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1leEZW-0006YN-2E; Wed, 05 May 2021 12:16:02 +0200
To: Antony Pavlov <antonynpavlov@gmail.com>, barebox@lists.infradead.org
References: <20210505100900.88141-1-antonynpavlov@gmail.com>
 <20210505100900.88141-8-antonynpavlov@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <f715444c-8989-1be9-b374-90c8d6bee0e8@pengutronix.de>
Date: Wed, 5 May 2021 12:16:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210505100900.88141-8-antonynpavlov@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210505_031606_615423_766500B6 
X-CRM114-Status: GOOD (  35.09  )
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
Subject: Re: [PATCH 7/9] RISC-V: add initial LiteX SoC support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Antony,

On 05.05.21 12:08, Antony Pavlov wrote:
> LiteX is a Migen-based System on Chip, supporting softcore
> VexRiscv CPU, a 32-bits Linux Capable RISC-V CPU.
> 
> See https://github.com/enjoy-digital/litex and
> https://github.com/litex-hub/linux-on-litex-vexriscv
> for details.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  arch/riscv/Kconfig                            |   9 ++
>  arch/riscv/Makefile                           |   1 +
>  arch/riscv/dts/litex_soc_linux.dtsi           |  49 +++++++
>  arch/riscv/mach-litex/Kconfig                 |   8 ++
>  arch/riscv/mach-litex/Makefile                |   3 +
>  arch/riscv/mach-litex/include/mach/debug_ll.h | 124 ++++++++++++++++++
>  6 files changed, 194 insertions(+)
> 
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index c0583f3153..40dfd7dd93 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -34,6 +34,14 @@ config MACH_ERIZO
>  	select RISCV_M_MODE
>  	select RISCV_TIMER
>  
> +config MACH_LITEX
> +	bool "litex family"
> +	select ARCH_RV32I
> +	select HAS_DEBUG_LL
> +	select HAS_NMON
> +	select USE_COMPRESSED_DTB
> +	select RISCV_SBI
> +
>  config MACH_VIRT
>  	bool "virt family"
>  	select BOARD_RISCV_GENERIC_DT
> @@ -83,6 +91,7 @@ config 64BIT
>  	select PHYS_ADDR_T_64BIT
>  
>  source "arch/riscv/mach-erizo/Kconfig"
> +source "arch/riscv/mach-litex/Kconfig"
>  
>  config BOARD_RISCV_GENERIC_DT
>  	select BOARD_GENERIC_DT
> diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
> index aba4526bba..bc22786368 100644
> --- a/arch/riscv/Makefile
> +++ b/arch/riscv/Makefile
> @@ -20,6 +20,7 @@ cflags-y += $(riscv-cflags-y)
>  LDFLAGS_barebox += -nostdlib
>  
>  machine-$(CONFIG_MACH_ERIZO)	:= erizo
> +machine-$(CONFIG_MACH_LITEX)	:= litex

Could you rebase on barebox next?
I dropped machine directories for RISC-V. They were only
used for <mach/debug_ll.h> and there is an <asm/debug_ll.h>
now that can be extended instead.

This reduces boilerplate and allows building all RISC-V
images in one go.

>  machine-$(CONFIG_MACH_VIRT)	:= virt
>  
>  LDFLAGS_barebox += $(riscv-ldflags-y)
> diff --git a/arch/riscv/dts/litex_soc_linux.dtsi b/arch/riscv/dts/litex_soc_linux.dtsi
> new file mode 100644
> index 0000000000..32382b8dc2
> --- /dev/null
> +++ b/arch/riscv/dts/litex_soc_linux.dtsi

Is "linux" a well-nown LiteX configuration?
Otherwise would maybe litex-vexrisc.dtsi be a better name?

> @@ -0,0 +1,49 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +
> +/dts-v1/;
> +
> +/ {
> +	compatible = "litex,vexriscv-soc-linux";
> +
> +	#address-cells = <1>;
> +	#size-cells = <1>;
> +
> +	cpus {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		timebase-frequency = <100000000>; // 100 MHz
> +
> +		cpu@0 {
> +			device_type = "cpu";
> +			compatible = "spinalhdl,vexriscv", "riscv";
> +			reg = <0>;
> +		};
> +	};
> +
> +	uart0: serial@f0001000 {
> +		compatible = "litex,uart";
> +		reg = <0xf0001000 0x18>;
> +		status = "disabled";
> +	};
> +
> +	mac0: mac@f0009000 {
> +		compatible = "litex,liteeth";
> +		reg = <0xf0009000 0x7c /* base */
> +			0xf0009800 0x0a /* mdio_base */
> +			0xb0000000 0x2000>; /* buf_base */
> +		tx-fifo-depth = <2>;
> +		rx-fifo-depth = <2>;
> +		status = "disabled";
> +	};
> +
> +	spi0: spi@f000b800 {
> +		compatible = "litex,spiflash";
> +
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		reg = <0xf000b800 0x100>;
> +		status = "disabled";
> +	};
> +};
> diff --git a/arch/riscv/mach-litex/Kconfig b/arch/riscv/mach-litex/Kconfig
> new file mode 100644
> index 0000000000..19d5927e44
> --- /dev/null
> +++ b/arch/riscv/mach-litex/Kconfig
> @@ -0,0 +1,8 @@
> +if MACH_LITEX
> +
> +choice
> +	prompt "Board type"
> +
> +endchoice
> +
> +endif
> diff --git a/arch/riscv/mach-litex/Makefile b/arch/riscv/mach-litex/Makefile
> new file mode 100644
> index 0000000000..d9c51e74c3
> --- /dev/null
> +++ b/arch/riscv/mach-litex/Makefile
> @@ -0,0 +1,3 @@
> +# just to build a built-in.o. Otherwise compilation fails when no o-files is
> +# created.
> +obj- += dummy.o
> diff --git a/arch/riscv/mach-litex/include/mach/debug_ll.h b/arch/riscv/mach-litex/include/mach/debug_ll.h
> new file mode 100644
> index 0000000000..df7032716d
> --- /dev/null
> +++ b/arch/riscv/mach-litex/include/mach/debug_ll.h
> @@ -0,0 +1,124 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/*
> + * Copyright (C) 2019 Antony Pavlov <antonynpavlov@gmail.com>
> + *
> + * This file is part of barebox.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + */
> +
> +#ifndef __MACH_LITEX_DEBUG_LL__
> +#define __MACH_LITEX_DEBUG_LL__
> +
> +/** @file
> + *  This File contains declaration for early output support
> + */
> +
> +#include <linux/kconfig.h>
> +
> +#define DEBUG_LL_UART_ADDR	0xf0001000
> +#define UART_RXTX	0x00
> +#define UART_TXFULL	0x04
> +#define UART_RXEMPTY	0x08
> +#define UART_EV_PENDING	0x10
> +#define  UART_EV_RX	(1 << 1)
> +#define UART_EV_ENABLE	0x14
> +
> +
> +#ifndef __ASSEMBLY__
> +
> +/*
> + * C macros
> + */
> +
> +#include <asm/io.h>
> +
> +static inline void PUTC_LL(char ch)
> +{
> +#ifdef CONFIG_DEBUG_LL
> +	/* wait for space */
> +	while (__raw_readb((u8 *)DEBUG_LL_UART_ADDR + UART_TXFULL))
> +		;
> +
> +	__raw_writeb(ch, (u8 *)DEBUG_LL_UART_ADDR + UART_RXTX);
> +#endif /* CONFIG_DEBUG_LL */
> +}
> +#else /* __ASSEMBLY__ */
> +/*
> + * Macros for use in assembly language code
> + */
> +
> +/*
> + * output a character in a0
> + */
> +.macro	debug_ll_outc_a0
> +#ifdef CONFIG_DEBUG_LL
> +
> +	li	t0, DEBUG_LL_UART_ADDR
> +
> +201:
> +	lbu	t1, UART_TXFULL(t0)	/* uart tx full ? */
> +	andi	t1, t1, 0xff
> +	bnez	t1, 201b		/* try again */
> +
> +	sb	a0, UART_RXTX(t0)	/* write the character */
> +
> +#endif /* CONFIG_DEBUG_LL */
> +.endm
> +
> +/*
> + * output a character
> + */
> +.macro	debug_ll_outc chr
> +#ifdef CONFIG_DEBUG_LL
> +	li	a0, \chr
> +	debug_ll_outc_a0
> +#endif /* CONFIG_DEBUG_LL */
> +.endm
> +
> +/*
> + * check character in input buffer
> + * return value:
> + *  v0 = 0   no character in input buffer
> + *  v0 != 0  character in input buffer
> + */
> +.macro	debug_ll_tstc
> +#ifdef CONFIG_DEBUG_LL
> +	li	t0, DEBUG_LL_UART_ADDR
> +
> +	/* get line status and check for data present */
> +	lbu	s0, UART_RXEMPTY(t0)
> +	bnez    s0, 243f
> +	li	s0, 1
> +	j	244f
> +243:	li	s0, 0
> +244:	nop
> +#endif /* CONFIG_DEBUG_LL */
> +.endm
> +
> +/*
> + * get character to v0
> + */
> +.macro	debug_ll_getc
> +#ifdef CONFIG_DEBUG_LL
> +
> +204:
> +	debug_ll_tstc
> +
> +	/* try again */
> +	beqz	s0, 204b
> +
> +	/* read a character */
> +	lb	s0, UART_RXTX(t0)
> +	li      t1, UART_EV_RX
> +	sb	t1, UART_EV_PENDING(t0)
> +
> +#endif /* CONFIG_DEBUG_LL */
> +.endm
> +#endif /* __ASSEMBLY__ */
> +
> +#endif /* __MACH_LITEX_DEBUG_LL__ */

Given that we jump into C very early now, do we still need
the assembly debug_ll helpers?

Cheers,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

