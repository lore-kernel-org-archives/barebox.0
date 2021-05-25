Delivery-date: Tue, 25 May 2021 10:54:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llSpT-00005Z-6o
	for lore@lore.pengutronix.de; Tue, 25 May 2021 10:54:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llSpQ-0006wf-T3
	for lore@pengutronix.de; Tue, 25 May 2021 10:54:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YxwtI1tURkc/dj8ZVAEXJfBTpFoiztlKqhL97D68Hgk=; b=XCrBzZHCFwb1eJ
	xiyKkA+xFjMg42LlNDQiDxj9LsXSJ/Wy0tgu7KtubAPK2Mf5GGVBF6cB2JpyYoEwP4IcC8kbEJyHM
	HZ0MdgOwsG12xUsC9gL2+szSp6CkwQAfnLm5SwkYdRNWF3HmkqfKYrSMXtRiSWQEML6HHiERcKxp0
	CoXY/mKjv8F0kVVw0r0RROZmTOcgSB9M4OPFVbrtQ3eW5Z63tvCJebh8VN4tSgPTEKOpKb4Yu7qOz
	dHBMBPbIvGzATl2B3GfwUBHLLnvSH6xX3+YHe5tUAdc0D0Ac3f2tjgdzY39EkWWGPFifaWTnnjVsd
	XkvB1YOeZbZ30JWgLcTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1llSno-004BhO-8Y; Tue, 25 May 2021 08:52:40 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1llSne-004Bf1-Gc
 for barebox@lists.infradead.org; Tue, 25 May 2021 08:52:33 +0000
Received: by mail-lf1-x12c.google.com with SMTP id i22so44653000lfl.10
 for <barebox@lists.infradead.org>; Tue, 25 May 2021 01:52:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KxPLoBwqyu6AS+2WaXVlBGk4FvMRE7gm+c1TvuTyCBw=;
 b=DB+faNHAao/jWQYcNg+V0uOMYuVfhMK9UeMI8Dqf/NbuaXcbysajjAXxoFMMeJGS9w
 13v03cO3LVjUaA8fBudki0m+avE3SPqIulzOHH1Yh8WUFWstnc2rzG278/eSSdTkDrok
 rcYSlq3dbPeI/QG05S2Y5CdLpqxUkjuw9svKjqvmVkvHTvoCY03DDpV0b9IMANh8352H
 PAoF76RiulAm9qR6kvSM4jrslO/lzUr0POhhKfhpGJcOyqDtDvx9tUFmhkDKB/P4hCxe
 0eUpa7yc8bTPd2QKXqL8GDhHlNjqXK4zeIBltaU0we/iCvduCG+zsAat1mzsj+GZbaWu
 qbsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KxPLoBwqyu6AS+2WaXVlBGk4FvMRE7gm+c1TvuTyCBw=;
 b=m03QrdT9G5b8AiChPSM8W0chz6Uem5EGIoUGoePXQA8prRtdAy0FvtEdlA7Ftk5kwG
 zKvtkTLEUPGiFovKYLDjzOkRDulmiippMxEy7geTNFzEgD8Njx8z7gkaIdnW0n1eioOt
 /ky+Fq4YYgx8jVApI30JD3a6rwUYB1hdYkDM1XvWt0zGEnDRZvgfkua1ZfkJ4rk8P6D4
 1qs1erNwqoQDogvYA7YXSylG7c/evfFH1lRmE/HY1wqcGMIJLwz/MQhx3eQh1CKckN46
 ZtuSOaVZWLy+RppEg6aJ31AoGPy3GPLigJkynWJLf5iKXmzTKFk14th0ju85Tq15uF5C
 GKkg==
X-Gm-Message-State: AOAM532eQrsTdmcCHxm+EXbUgo6d/m95shDvn1M+nUZ90pfJ0U+66Fi6
 IGFFs9/MawxXsI38hN3sHCR9IaoHZzKBHg==
X-Google-Smtp-Source: ABdhPJxHly8cfA1RpG2K7+SQ8YZcHM4WYOFmjdKBHF0KXjBdu+OHcyhScmzw35+/EESB2tCD9Rrd1g==
X-Received: by 2002:a05:6512:798:: with SMTP id
 x24mr13077969lfr.575.1621932748496; 
 Tue, 25 May 2021 01:52:28 -0700 (PDT)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
 by smtp.gmail.com with ESMTPSA id x24sm161869lfr.4.2021.05.25.01.52.27
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 25 May 2021 01:52:28 -0700 (PDT)
Date: Tue, 25 May 2021 11:52:27 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-Id: <20210525115227.27519af294ef620e903e93ce@gmail.com>
In-Reply-To: <cebeeb4505393a51dbc3f6e19ab91154bff9a961.camel@pengutronix.de>
References: <20210525071952.18045-1-antonynpavlov@gmail.com>
 <20210525071952.18045-10-antonynpavlov@gmail.com>
 <cebeeb4505393a51dbc3f6e19ab91154bff9a961.camel@pengutronix.de>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; i686-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210525_015230_615375_2B7C7019 
X-CRM114-Status: GOOD (  35.24  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 09/10] RISC-V: add LiteX SoC and
 linux-on-litex-vexriscv support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, 25 May 2021 09:47:05 +0200
Jan L=FCbbe <jlu@pengutronix.de> wrote:

> On Tue, 2021-05-25 at 10:19 +0300, Antony Pavlov wrote:
> > LiteX is a Migen-based System on Chip, supporting softcore
> > VexRiscv CPU, a 32-bits Linux Capable RISC-V CPU.
> > =

> > See https://github.com/enjoy-digital/litex and
> > https://github.com/litex-hub/linux-on-litex-vexriscv
> > for details.
> =

> What are your steps for testing this? We have a few ECPIX-5 here, so we s=
hould
> be able to reproduce this.

I use Digilent Arty A7-35T.
Here is listex start banner:

        __   _ __      _  __
       / /  (_) /____ | |/_/
      / /__/ / __/ -_)>  <
     /____/_/\__/\__/_/|_|
   Build your hardware, easily!

 (c) Copyright 2012-2020 Enjoy-Digital
 (c) Copyright 2007-2015 M-Labs

 BIOS built on Mar 26 2021 11:00:44
 BIOS CRC passed (3dce0a07)

 Migen git sha1: 3ffd64c
 LiteX git sha1: 58701cc4

--=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D SoC =3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D--
CPU:            VexRiscv SMP-LINUX @ 100MHz
BUS:            WISHBONE 32-bit @ 4GiB
CSR:            32-bit data
ROM:            64KiB
SRAM:           8KiB
L2:             0KiB
SDRAM:          262144KiB 16-bit @ 800MT/s (CL-6 CWL-5)


Here are my steps to run barebox:

1. compile barebox/images/barebox-litex-linux.img;
2. set up your tftp-server (192.168.8.100);
   connect Arty board via ethernet to tftp-server;
3. copy barebox-litex-linux.img to boot.bin in your tftp-server root dir;
4. burn litex bitstream into FPGA; =

Litex bios will try to boot from tftp:


--=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D Boot =3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D--
Booting from serial...
Press Q or ESC to abort boot completely.
sL5DdSMmkekro
             Timeout
Booting from flash...
Error: Invalid image length 0xffffffff
Booting from SDCard in SD-Mode...
Booting from boot.json...
Booting from boot.bin...
SDCard boot failed.
Booting from network...
Local IP: 192.168.8.50
Remote IP: 192.168.8.100
Booting from boot.json...
Booting from boot.bin...
Copying boot.bin to 0x40000000... (515567 bytes)
Executing booted program at 0x40000000

--=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D Liftoff! =3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D--
>riscv-timer riscv-timer: running at 100000000 Hz
Switch to console [cs0]


barebox 2021.05.0-00097-g95181d249a-dirty #1 Tue May 25 10:16:07 MSK 2021


Board: LiteX VexRiscV-SoC-Linux
riscv-timer riscv-timer: running at 100000000 Hz
eth0: got preset MAC address: d8:89:f0:4e:00:10
mdio_bus: miibus0: probed
liteeth f0009000.mac@f0009000.of: liteeth driver registered
m25p80 w25q128@00: n25q128a13 (16384 Kbytes)
netconsole: registered as netconsole-1
malloc space: 0x4eeffc80 -> 0x4fdffc7f (size 15 MiB)

Hit any to stop autoboot:    2
barebox@LiteX VexRiscV-SoC-Linux:/

> =

> Regards,
> Jan
> =

> > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> > ---
> > =A0arch/riscv/Kconfig.socs                  |  14 +++
> > =A0arch/riscv/boards/Makefile               |   1 +
> > =A0arch/riscv/boards/litex-linux/Makefile   |   3 +
> > =A0arch/riscv/boards/litex-linux/lowlevel.c |  22 ++++
> > =A0arch/riscv/dts/Makefile                  |   1 +
> > =A0arch/riscv/dts/litex-linux.dts           |  92 +++++++++++++++++
> > =A0arch/riscv/dts/litex_soc_linux.dtsi      |  49 +++++++++
> > =A0arch/riscv/include/asm/debug_ll.h        |   3 +
> > =A0arch/riscv/include/asm/debug_ll_litex.h  | 123 +++++++++++++++++++++=
++
> > =A0common/Kconfig                           |   4 +
> > =A0images/Makefile.riscv                    |   4 +
> > =A011 files changed, 316 insertions(+)
> > =

> > diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
> > index 67d19caeb3..3ae66776f0 100644
> > --- a/arch/riscv/Kconfig.socs
> > +++ b/arch/riscv/Kconfig.socs
> > @@ -42,4 +42,18 @@ config BOARD_HIFIVE
> > =A0
> > =

> > =

> > =

> > =A0endif
> > =A0
> > =

> > =

> > =

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
> > =A0endmenu
> > diff --git a/arch/riscv/boards/Makefile b/arch/riscv/boards/Makefile
> > index 99f22f32b4..0468871fde 100644
> > --- a/arch/riscv/boards/Makefile
> > +++ b/arch/riscv/boards/Makefile
> > @@ -1,3 +1,4 @@
> > =A0# SPDX-License-Identifier: GPL-2.0
> > =A0obj-$(CONFIG_BOARD_ERIZO_GENERIC)	+=3D erizo/
> > =A0obj-$(CONFIG_BOARD_HIFIVE)		+=3D hifive/
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
> > +
> > +	fdt =3D __dtb_z_litex_linux_start + get_runtime_offset();
> > +
> > +	barebox_riscv_machine_entry(0x40000000, SZ_256M, fdt);
> > +}
> > diff --git a/arch/riscv/dts/Makefile b/arch/riscv/dts/Makefile
> > index 17fdc9445b..683038189f 100644
> > --- a/arch/riscv/dts/Makefile
> > +++ b/arch/riscv/dts/Makefile
> > @@ -7,5 +7,6 @@ obj- +=3D dummy.o
> > =A0pbl-$(CONFIG_BOARD_ERIZO_GENERIC) +=3D erizo-generic.dtb.o
> > =A0pbl-$(CONFIG_BOARD_HIFIVE) +=3D hifive-unmatched-a00.dtb.o \
> > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0hifive-unleashed-a00.dtb.o
> > +pbl-$(CONFIG_BOARD_LITEX_LINUX) +=3D litex-linux.dtb.o
> > =A0
> > =

> > =

> > =

> > =A0clean-files :=3D *.dtb *.dtb.S .*.dtc .*.pre .*.dts
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
> > index 0000000000..32382b8dc2
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
> > +	mac0: mac@f0009000 {
> > +		compatible =3D "litex,liteeth";
> > +		reg =3D <0xf0009000 0x7c /* base */
> > +			0xf0009800 0x0a /* mdio_base */
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
> > index 6904460af9..050a1412d1 100644
> > --- a/arch/riscv/include/asm/debug_ll.h
> > +++ b/arch/riscv/include/asm/debug_ll.h
> > @@ -37,6 +37,9 @@ static inline void PUTC_LL(char ch)
> > =A0
> > =

> > =

> > =

> > =A0	writel(ch, uart0);
> > =A0}
> > +#elif defined CONFIG_DEBUG_LITEX
> > +
> > +#include <asm/debug_ll_litex.h>
> > =A0
> > =

> > =

> > =

> > =A0#endif
> > =A0
> > =

> > =

> > =

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
> > index db7cc6713a..cd61b0ef6c 100644
> > --- a/common/Kconfig
> > +++ b/common/Kconfig
> > @@ -1379,6 +1379,10 @@ config DEBUG_SIFIVE
> > =A0	bool "SiFive serial0 port"
> > =A0	depends on SOC_SIFIVE
> > =A0
> > =

> > =

> > =

> > +config DEBUG_LITEX
> > +	bool "LiteX serial port"
> > +	depends on SOC_LITEX
> > +
> > =A0endchoice
> > =A0
> > =

> > =

> > =

> > =A0config DEBUG_IMX_UART_PORT
> > diff --git a/images/Makefile.riscv b/images/Makefile.riscv
> > index c44c683431..24e33f5b11 100644
> > --- a/images/Makefile.riscv
> > +++ b/images/Makefile.riscv
> > @@ -15,3 +15,7 @@ pblb-$(CONFIG_BOARD_HIFIVE) +=3D start_hifive_unmatch=
ed start_hifive_unleashed
> > =A0FILE_barebox-hifive-unmatched.img =3D start_hifive_unmatched.pblb
> > =A0FILE_barebox-hifive-unleashed.img =3D start_hifive_unleashed.pblb
> > =A0image-$(CONFIG_BOARD_HIFIVE) +=3D barebox-hifive-unmatched.img bareb=
ox-hifive-unleashed.img
> > +
> > +pblb-$(CONFIG_BOARD_LITEX_LINUX) +=3D start_litex_linux
> > +FILE_barebox-litex-linux.img =3D start_litex_linux.pblb
> > +image-$(CONFIG_BOARD_LITEX_LINUX) +=3D barebox-litex-linux.img
> =

> -- =

> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> =



-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

