Delivery-date: Tue, 31 Aug 2021 06:41:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mKva4-0001np-CE
	for lore@lore.pengutronix.de; Tue, 31 Aug 2021 06:41:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mKva2-0003Jc-N7
	for lore@pengutronix.de; Tue, 31 Aug 2021 06:41:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YBCNihY+phk/XGG4Qctevq/UQPL+GGtw89A+gFUPhO4=; b=TrRx6d4rAx/j23
	yPy+QRaYpOYvOY+wEHuobj1bDCKdFqFlN3/+qi5DugZCGIBCeVGqMEFVtpD9+g6jCJwxTbiPxS2bT
	ee4R0yEVRL7A+wFeJ8a4KRt2ImDVxR6qduxsKDpImfrBnaQMx/T1FYwc3xS14jpGJ2A7wKCeg4T58
	O3KLYDr1IasHOtUMqJvFAVWKZBcqIOus0Ao7ua+3ZyV8Cb3EAduCP05HYz61MRfY03/xn2+HZ5s4s
	AeXvgX6vqCe8cw9vasEBAEBD+8IEEjtUCg4CdDxILPsbsni6TY6Bwgxu9XnEYVhIAZqTpaGGQ8MW2
	HT/s5jjEMwetR4C41z3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mKvXv-001K9M-Lj; Tue, 31 Aug 2021 04:38:51 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mKvXo-001K8z-Ha
 for barebox@lists.infradead.org; Tue, 31 Aug 2021 04:38:48 +0000
Received: by mail-lj1-x22c.google.com with SMTP id y6so29602696lje.2
 for <barebox@lists.infradead.org>; Mon, 30 Aug 2021 21:38:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Y3MP/m5Z3oTXpc21H2lWhVmJwF8XNDA8SDp8Tr/mu2M=;
 b=sdB9/pNbmcpv73hxWgetYJH8DbsGddqJmxBLpEmg7vfcjOJv0rerJ11KDuSyFVOoca
 U2FXFKMBjvPaIkpFoChfOUy9vDmmKTnoACl5bWhcujkKSqvrVZIKEa7xr7Yf8jASoNWi
 zCRqS7xWQK2LpXTCvCr3ruHwLYbNJ8P5JHABpdD6q0/Zh976l0Ar/aT5zOPRer4VPxQB
 xyE3eiXSLWdz+0IZP1WBICjriTAbJzl3MSCMH6MJ9e3416OtU9E425c6r8SJHH8h3RTV
 zhdWLFZdmrQZRpOYjNI4kuBm3Hy46IPUSkovxBZvo6IE/ISZHk/Yw0q+BVVEFSpfgBYH
 tR6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Y3MP/m5Z3oTXpc21H2lWhVmJwF8XNDA8SDp8Tr/mu2M=;
 b=hg3KpDvxcPqB0r6S+yQEBwt6oDwlyVTklGPFz04vLN2DrgkutCaLiqZo2JD/KpSocp
 vRnxnZjcly8Nq8tpc0W/92oO88D3TYN1TnA8JJwpt8NVrjCzCoLWwh266GtbT/a4aUr5
 /iQn0t6FPzydhc/MCmUi7yd0oZr8FLVXYOQmoiFc67vBizBnXgU9CaLw3AwG+lbfsiGF
 FWpnBi7baszAqorHmTWsoqJ12MiEAIuA9I7rgyMefdt06V3PTbRpev9/DIDowKQtr0Ub
 Ko4VA2lEpsHItw3m8DUJPxrtv1W6zZ6pSQi2B7P/0BOo1xvLgcrGiffrCgH6XGAYlAnk
 O7Dw==
X-Gm-Message-State: AOAM5328Vpjv9OQgCnNafTwk5tYlpwUikoZlI5CxqAEAegn659MWBMSq
 ouHgwVxb5D7+DHQANOsSrRIQIBe62Ec=
X-Google-Smtp-Source: ABdhPJwMgiyTOryTn6woF9fFD0PlaXVjXbd/hUtguucbGzi9Mu2mp1p5tdN36Vpb406j7Ak7xIBI7Q==
X-Received: by 2002:a2e:b610:: with SMTP id r16mr22240051ljn.367.1630384720383; 
 Mon, 30 Aug 2021 21:38:40 -0700 (PDT)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
 by smtp.gmail.com with ESMTPSA id o10sm1308711lfb.173.2021.08.30.21.38.39
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 30 Aug 2021 21:38:40 -0700 (PDT)
Date: Tue, 31 Aug 2021 07:38:38 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-Id: <20210831073838.176dd337f649dfeed2b2ec8f@gmail.com>
In-Reply-To: <f234164a-64b9-63ae-8ecc-97336d5c695c@pengutronix.de>
References: <20210817101104.114945-1-antonynpavlov@gmail.com>
 <20210817101104.114945-8-antonynpavlov@gmail.com>
 <f234164a-64b9-63ae-8ecc-97336d5c695c@pengutronix.de>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; i686-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210830_213844_661841_3988C2D3 
X-CRM114-Status: GOOD (  38.75  )
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
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH RESEND v4 7/8] RISC-V: add LiteX SoC and
 linux-on-litex-vexriscv support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, 23 Aug 2021 14:06:09 +0200
Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:

Hi Ahmad!

> On 17.08.21 12:11, Antony Pavlov wrote:
> > LiteX is a Migen-based System on Chip, supporting softcore
> > VexRiscv CPU, a 32-bits Linux Capable RISC-V CPU.
> > =

> > See https://github.com/enjoy-digital/litex and
> > https://github.com/litex-hub/linux-on-litex-vexriscv
> > for details.
> > =

> > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> > ---
> >  arch/riscv/Kconfig.socs                  |  14 +++
> >  arch/riscv/boards/Makefile               |   1 +
> >  arch/riscv/boards/litex-linux/Makefile   |   3 +
> >  arch/riscv/boards/litex-linux/lowlevel.c |  22 ++++
> >  arch/riscv/dts/Makefile                  |   1 +
> >  arch/riscv/dts/litex-linux.dts           |  92 +++++++++++++++++
> >  arch/riscv/dts/litex_soc_linux.dtsi      |  49 +++++++++
> >  arch/riscv/include/asm/debug_ll.h        |   3 +
> >  arch/riscv/include/asm/debug_ll_litex.h  | 123 +++++++++++++++++++++++
> >  common/Kconfig                           |   4 +
> >  images/Makefile.riscv                    |   4 +
> >  11 files changed, 316 insertions(+)
> > =

> > diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
> > index 221ea133d4..5c281918d5 100644
> > --- a/arch/riscv/Kconfig.socs
> > +++ b/arch/riscv/Kconfig.socs
> > @@ -95,4 +95,18 @@ config SIFIVE_L2
> >  	bool "SiFive L2 cache controller"
> >  	depends on CPU_SIFIVE
> >  =

> > +config SOC_LITEX
> > +	bool "LiteX SoCs"
> > +	depends on ARCH_RV32I
> > +	select HAS_ASM_DEBUG_LL
> > +	select HAS_NMON
> > +	select USE_COMPRESSED_DTB
> > +	select RISCV_TIMER
> > +
> > +config BOARD_LITEX_LINUX
> > +	bool "litex linux board"
> > +	depends on SOC_LITEX
> > +	select RISCV_M_MODE
> > +	def_bool y
> > +
> >  endmenu
> > diff --git a/arch/riscv/boards/Makefile b/arch/riscv/boards/Makefile
> > index cb28a25d8b..8d5d9d4fc6 100644
> > --- a/arch/riscv/boards/Makefile
> > +++ b/arch/riscv/boards/Makefile
> > @@ -2,3 +2,4 @@
> >  obj-$(CONFIG_BOARD_ERIZO_GENERIC)	+=3D erizo/
> >  obj-$(CONFIG_BOARD_HIFIVE)		+=3D hifive/
> >  obj-$(CONFIG_BOARD_BEAGLEV)		+=3D beaglev/
> > +obj-$(CONFIG_BOARD_LITEX_LINUX)		+=3D litex-linux/
> > diff --git a/arch/riscv/boards/litex-linux/Makefile b/arch/riscv/boards=
/litex-linux/Makefile
> > new file mode 100644
> > index 0000000000..3d217ffe0b
> > --- /dev/null
> > +++ b/arch/riscv/boards/litex-linux/Makefile
> > @@ -0,0 +1,3 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +
> > +pbl-y +=3D lowlevel.o
> > diff --git a/arch/riscv/boards/litex-linux/lowlevel.c b/arch/riscv/boar=
ds/litex-linux/lowlevel.c
> > new file mode 100644
> > index 0000000000..da23ef5633
> > --- /dev/null
> > +++ b/arch/riscv/boards/litex-linux/lowlevel.c
> > @@ -0,0 +1,22 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +
> > +#include <common.h>
> > +#include <asm/barebox-riscv.h>
> > +#include <debug_ll.h>
> > +#include <asm/riscv_nmon.h>
> > +
> > +ENTRY_FUNCTION(start_litex_linux, a0, a1, a2)
> > +{
> > +	extern char __dtb_z_litex_linux_start[];
> > +	void *fdt;
> > +
> > +	barebox_nmon_entry();
> > +
> > +	putc_ll('>');
> > +
> > +	/* On POR, we are running from read-only memory here. */
> =

> Do we? I thought BIOS loads barebox to RAM first?

Yes, your are right. At the moment litex BIOS loads barebox to RAM first
and this comment must be dropped.

Please note there is a possibility to use barebox instead of litex BIOS
and start barebox on POR from ROM.
linux-on-litex-vexriscv bitstream for Arty board incorporates litex BIOS
so on Arty litex BIOS runs on POR unconditionally.
Litex BIOS is no more than 64K and "one does not simply push barebox into 6=
4K".
But litex works on boards with tiny FPGA resources e.g. iCEBreaker-bitsy.
litex configuration for these tiny FPGA skips internal RAM/ROM and BIOS
starts from SPI flash so there is no limit on barebox image size.



> =

> > +
> > +	fdt =3D __dtb_z_litex_linux_start + get_runtime_offset();
> > +
> > +	barebox_riscv_machine_entry(0x40000000, SZ_256M, fdt);
> > +}
> > diff --git a/arch/riscv/dts/Makefile b/arch/riscv/dts/Makefile
> > index 4a15423b7f..17d7d249e4 100644
> > --- a/arch/riscv/dts/Makefile
> > +++ b/arch/riscv/dts/Makefile
> > @@ -8,5 +8,6 @@ pbl-$(CONFIG_BOARD_ERIZO_GENERIC) +=3D erizo-generic.dt=
b.o
> >  pbl-$(CONFIG_BOARD_HIFIVE) +=3D hifive-unmatched-a00.dtb.o \
> >                                hifive-unleashed-a00.dtb.o
> >  pbl-$(CONFIG_BOARD_BEAGLEV) +=3D jh7100-beaglev-starlight.dtb.o
> > +pbl-$(CONFIG_BOARD_LITEX_LINUX) +=3D litex-linux.dtb.o
> >  =

> >  clean-files :=3D *.dtb *.dtb.S .*.dtc .*.pre .*.dts
> > diff --git a/arch/riscv/dts/litex-linux.dts b/arch/riscv/dts/litex-linu=
x.dts
> > new file mode 100644
> > index 0000000000..d21fa57e30
> > --- /dev/null
> > +++ b/arch/riscv/dts/litex-linux.dts
> > @@ -0,0 +1,92 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +
> > +#include "litex_soc_linux.dtsi"
> > +
> > +#include <dt-bindings/gpio/gpio.h>
> > +
> > +/ {
> > +	model =3D "LiteX VexRiscV-SoC-Linux";
> > +	compatible =3D "litex,vexriscv-soc-linux";
> > +
> > +	aliases {
> > +		rom =3D &rom;
> > +		sram =3D &sram;
> > +	};
> > +
> > +	/* ARTY board */
> > +	rom: rom@00000000 {
> =

> I can see why RAM is specific to ARTY, but why ROM?
> =

> > +		compatible =3D "mmio-sram";
> > +		reg =3D <0x00000000 0x00008000>;
> > +		read-only;
> > +	};
> > +
> > +	sram: sram@20000000 {
> > +		compatible =3D "mmio-sram";
> > +		reg =3D <0x20000000 0x00004000>;
> > +	};
> > +
> > +	main_ram: memory@40000000 {
> > +		device_type =3D "memory";
> > +		reg =3D <0x40000000 0x10000000>;
> > +	};
> > +};
> > +
> > +&uart0 {
> > +	status =3D "okay";
> > +};
> > +
> > +&mac0 {
> > +	status =3D "okay";
> > +};
> > +
> > +&spi0 {
> > +	status =3D "okay";
> > +
> > +	spiflash: w25q128@0 {
> > +		#address-cells =3D <1>;
> > +		#size-cells =3D <1>;
> > +		compatible =3D "winbond,w25q128", "jedec,spi-nor";
> > +		spi-max-frequency =3D <104000000>;
> > +		reg =3D <0>;
> > +	};
> > +};
> > +
> > +/ {
> > +	ledsgpio: gpio@f000a800 {
> > +		compatible =3D "ti,74175";
> > +		reg =3D <0xf000a800 0x4>;
> > +		gpio-controller;
> > +		#gpio-cells =3D <2>;
> > +	};
> > +
> > +	leds {
> > +		compatible =3D "gpio-leds";
> > +
> > +		ld0 {
> > +			label =3D "arty:green:ld0";
> > +			gpios =3D <&ledsgpio 0 GPIO_ACTIVE_HIGH>;
> > +		};
> > +
> > +		ld1 {
> > +			label =3D "arty:green:ld1";
> > +			gpios =3D <&ledsgpio 1 GPIO_ACTIVE_HIGH>;
> > +		};
> > +
> > +		ld2 {
> > +			label =3D "arty:green:ld2";
> > +			gpios =3D <&ledsgpio 2 GPIO_ACTIVE_HIGH>;
> > +		};
> > +
> > +		ld3 {
> > +			label =3D "arty:green:ld3";
> > +			gpios =3D <&ledsgpio 3 GPIO_ACTIVE_HIGH>;
> > +		};
> > +	};
> > +
> > +	swgpio: gpio@f0006000 {
> > +		compatible =3D "ti,74125";
> > +		reg =3D <0xf0006000 0x4>;
> > +		gpio-controller;
> > +		#gpio-cells =3D <2>;
> > +	};
> > +};
> > diff --git a/arch/riscv/dts/litex_soc_linux.dtsi b/arch/riscv/dts/litex=
_soc_linux.dtsi
> > new file mode 100644
> > index 0000000000..94a0ba29da
> > --- /dev/null
> > +++ b/arch/riscv/dts/litex_soc_linux.dtsi
> > @@ -0,0 +1,49 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +
> > +/dts-v1/;
> > +
> > +/ {
> > +	compatible =3D "litex,vexriscv-soc-linux";
> > +
> > +	#address-cells =3D <1>;
> > +	#size-cells =3D <1>;
> > +
> > +	cpus {
> > +		#address-cells =3D <1>;
> > +		#size-cells =3D <0>;
> > +
> > +		timebase-frequency =3D <100000000>; // 100 MHz
> > +
> > +		cpu@0 {
> > +			device_type =3D "cpu";
> > +			compatible =3D "spinalhdl,vexriscv", "riscv";
> > +			reg =3D <0>;
> > +		};
> > +	};
> > +
> > +	uart0: serial@f0001000 {
> > +		compatible =3D "litex,uart";
> > +		reg =3D <0xf0001000 0x18>;
> > +		status =3D "disabled";
> > +	};
> > +
> > +	mac0: mac@f0006800 {
> > +		compatible =3D "litex,liteeth";
> > +		reg =3D <0xf0006800 0x7c /* base */
> > +			0xf0007000 0x0a /* mdio_base */
> > +			0xb0000000 0x2000>; /* buf_base */
> > +		tx-fifo-depth =3D <2>;
> > +		rx-fifo-depth =3D <2>;
> > +		status =3D "disabled";
> > +	};
> > +
> > +	spi0: spi@f000b800 {
> > +		compatible =3D "litex,spiflash";
> > +
> > +		#address-cells =3D <1>;
> > +		#size-cells =3D <0>;
> > +
> > +		reg =3D <0xf000b800 0x100>;
> > +		status =3D "disabled";
> > +	};
> > +};
> > diff --git a/arch/riscv/include/asm/debug_ll.h b/arch/riscv/include/asm=
/debug_ll.h
> > index b4caa0597a..a3b9c1c4bc 100644
> > --- a/arch/riscv/include/asm/debug_ll.h
> > +++ b/arch/riscv/include/asm/debug_ll.h
> > @@ -43,6 +43,9 @@ static inline void PUTC_LL(char ch)
> >  =

> >  	writel(ch, uart0);
> >  }
> > +#elif defined CONFIG_DEBUG_LITEX
> > +
> > +#include <asm/debug_ll_litex.h>
> >  =

> >  #endif
> >  =

> > diff --git a/arch/riscv/include/asm/debug_ll_litex.h b/arch/riscv/inclu=
de/asm/debug_ll_litex.h
> > new file mode 100644
> > index 0000000000..2fcdd9b0ec
> > --- /dev/null
> > +++ b/arch/riscv/include/asm/debug_ll_litex.h
> > @@ -0,0 +1,123 @@
> > +/* SPDX-License-Identifier: GPL-2.0-only */
> > +/*
> > + * Copyright (C) 2019 Antony Pavlov <antonynpavlov@gmail.com>
> > + *
> > + * This file is part of barebox.
> > + *
> > + * This program is distributed in the hope that it will be useful,
> > + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> > + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> > + * GNU General Public License for more details.
> =

> Nitpick: That part could be dropped as the SPDX-License-Identifier
> above says as much.

ok.

> =

> > + *
> > + */
> > +
> > +#ifndef __ASM_DEBUG_LL_LITEX__
> > +#define __ASM_DEBUG_LL_LITEX__
> > +
> > +/** @file
> > + *  This File contains declaration for early output support
> > + */
> > +
> > +#include <linux/kconfig.h>
> > +
> > +#define DEBUG_LL_UART_ADDR	0xf0001000
> > +#define UART_RXTX	0x00
> > +#define UART_TXFULL	0x04
> > +#define UART_RXEMPTY	0x08
> > +#define UART_EV_PENDING	0x10
> > +#define  UART_EV_RX	(1 << 1)
> > +
> > +
> > +#ifndef __ASSEMBLY__
> > +
> > +/*
> > + * C macros
> > + */
> > +
> > +#include <asm/io.h>
> > +
> > +static inline void PUTC_LL(char ch)
> > +{
> > +#ifdef CONFIG_DEBUG_LL
> > +	/* wait for space */
> > +	while (__raw_readb((u8 *)DEBUG_LL_UART_ADDR + UART_TXFULL))
> > +		;
> > +
> > +	__raw_writeb(ch, (u8 *)DEBUG_LL_UART_ADDR + UART_RXTX);
> > +#endif /* CONFIG_DEBUG_LL */
> > +}
> > +#else /* __ASSEMBLY__ */
> > +/*
> > + * Macros for use in assembly language code
> > + */
> > +
> > +/*
> > + * output a character in a0
> > + */
> > +.macro	debug_ll_outc_a0
> > +#ifdef CONFIG_DEBUG_LL
> > +
> > +	li	t0, DEBUG_LL_UART_ADDR
> > +
> > +201:
> > +	lbu	t1, UART_TXFULL(t0)	/* uart tx full ? */
> > +	andi	t1, t1, 0xff
> > +	bnez	t1, 201b		/* try again */
> > +
> > +	sb	a0, UART_RXTX(t0)	/* write the character */
> > +
> > +#endif /* CONFIG_DEBUG_LL */
> > +.endm
> > +
> > +/*
> > + * output a character
> > + */
> > +.macro	debug_ll_outc chr
> > +#ifdef CONFIG_DEBUG_LL
> > +	li	a0, \chr
> > +	debug_ll_outc_a0
> > +#endif /* CONFIG_DEBUG_LL */
> > +.endm
> > +
> > +/*
> > + * check character in input buffer
> > + * return value:
> > + *  v0 =3D 0   no character in input buffer
> > + *  v0 !=3D 0  character in input buffer
> > + */
> > +.macro	debug_ll_tstc
> > +#ifdef CONFIG_DEBUG_LL
> > +	li	t0, DEBUG_LL_UART_ADDR
> > +
> > +	/* get line status and check for data present */
> > +	lbu	s0, UART_RXEMPTY(t0)
> > +	bnez    s0, 243f
> > +	li	s0, 1
> > +	j	244f
> > +243:	li	s0, 0
> > +244:	nop
> > +#endif /* CONFIG_DEBUG_LL */
> > +.endm
> > +
> > +/*
> > + * get character to v0
> > + */
> > +.macro	debug_ll_getc
> > +#ifdef CONFIG_DEBUG_LL
> > +
> > +204:
> > +	debug_ll_tstc
> > +
> > +	/* try again */
> > +	beqz	s0, 204b
> > +
> > +	/* read a character */
> > +	lb	s0, UART_RXTX(t0)
> > +	li      t1, UART_EV_RX
> > +	sb	t1, UART_EV_PENDING(t0)
> > +
> > +#endif /* CONFIG_DEBUG_LL */
> > +.endm
> > +#endif /* __ASSEMBLY__ */
> > +
> > +#endif /* __ASM_DEBUG_LL_LITEX__ */
> > diff --git a/common/Kconfig b/common/Kconfig
> > index a9feae2ae8..cb8bd8b2bf 100644
> > --- a/common/Kconfig
> > +++ b/common/Kconfig
> > @@ -1399,6 +1399,10 @@ config DEBUG_SIFIVE
> >  	bool "SiFive serial0 port"
> >  	depends on SOC_SIFIVE
> >  =

> > +config DEBUG_LITEX
> > +	bool "LiteX serial port"
> > +	depends on SOC_LITEX
> > +
> >  endchoice
> >  =

> >  config DEBUG_LL_NS16550
> > diff --git a/images/Makefile.riscv b/images/Makefile.riscv
> > index 4410765cf6..0645238c43 100644
> > --- a/images/Makefile.riscv
> > +++ b/images/Makefile.riscv
> > @@ -19,3 +19,7 @@ image-$(CONFIG_BOARD_HIFIVE) +=3D barebox-hifive-unma=
tched.img barebox-hifive-unle
> >  pblb-$(CONFIG_BOARD_BEAGLEV) +=3D start_beaglev_starlight
> >  FILE_barebox-beaglev-starlight.img =3D start_beaglev_starlight.pblb
> >  image-$(CONFIG_BOARD_BEAGLEV) +=3D barebox-beaglev-starlight.img
> > +
> > +pblb-$(CONFIG_BOARD_LITEX_LINUX) +=3D start_litex_linux
> > +FILE_barebox-litex-linux.img =3D start_litex_linux.pblb
> > +image-$(CONFIG_BOARD_LITEX_LINUX) +=3D barebox-litex-linux.img
> > =

> =

> =

> -- =

> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

