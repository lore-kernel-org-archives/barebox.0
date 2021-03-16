Delivery-date: Tue, 16 Mar 2021 15:14:15 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lMASd-00032S-IF
	for lore@lore.pengutronix.de; Tue, 16 Mar 2021 15:14:15 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lMASb-0006FD-RX
	for lore@pengutronix.de; Tue, 16 Mar 2021 15:14:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:Message-Id:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RowJ19k/I3JoJg2t793WS/wJT31qMIV4LUb4+aZ4+7A=; b=cFA4mTo3s2u/N4IWfGt50WJ71
	coUJnNaXI2ACyYmdfELxXr2rx0C48Q07NKznT/ozsmBVckwEmqAif9sSRiy88s6MpfXcb8zEE9s6H
	sAO4kxbtfUbx51oEU1i0mDrGGMmg3RceQYiI2180CyO4VF3i0Cx7iXc/mmvZkCuX/TklIFCUcXAb/
	7qH6Vhrbb/zWunuU6gk4Spvv5YBiAfrSmJaZmpnHeYdnI4vRUdkv2nC9xddcozRBcYxLvraOKN8Va
	UvvCUF1D1zGYiwgiKmuLA6cIuuEFZEBZ5cOnxlkGN1br8/GpEj1mPgjR4WLS5oXhkHt7VHI+5OLzp
	mslknx96w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lMARD-000vB7-UO; Tue, 16 Mar 2021 14:12:48 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lMAQz-000v97-LK
 for barebox@lists.infradead.org; Tue, 16 Mar 2021 14:12:39 +0000
Received: by mail-lj1-x22a.google.com with SMTP id z8so20627388ljm.12
 for <barebox@lists.infradead.org>; Tue, 16 Mar 2021 07:12:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rf9+AJ0TwWl0WqFEFN04Pj+KlncjrcV+8abbyC14Vag=;
 b=gC+swpoMou9mL0zLHyiNjH7rQxvuQZxw2d78NK9JwuR8Z5h5l99ZooI/CITiaoYhDk
 sEkOQIwfRHYamdkgx/kc8QtgZNCdgXMIJffLd3bMMEP9skPPkBqSMD1pqq5N2SUHWOTL
 72oEuc7dNPKQzLZ9sLCXpnKU1+JcnKb8pcy8vvScFiqFP8/AYJHVGoiKIDOIaMAD9Oh8
 Shz7j4ICtbi/5bP1v04hisleL28PHmS+4EoS25/SX1s3A4xGA3ojXedRkA+gvZsXXOKN
 wfmhKhmmoq0UPJzp2UcsrFIItp+EbLU7G2OiTY1X8l4bGSXNn03Nsa3BX3fML2k+PTqL
 ME2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rf9+AJ0TwWl0WqFEFN04Pj+KlncjrcV+8abbyC14Vag=;
 b=mhVRHmPKGZ53LKUmi0IvIK+Ja9yX4ZUYT8OQQzzES5gnC4V9pdmzXbJY0HKUoLPa3l
 lbaqTlvTGB3ZV5fTDsAexpjHDWsFjkZWYAmCtDslc0J8ZCK2gjRs5obKsPAa7OCSIMxB
 NrlonwhkcZCZmRJcXeMlBi5NRQT340KYxizlZn4wDim7xyuiTNOCdAHhh0S6W40h3bRD
 MqrKcay+nI6oki2jKMmK/SNph44/6AFT6ICDmkiWH90PDAfdUQF/zweKzFo8e6yHYvdg
 TvGBTMVzhLBy7S/OeYXxtK/HC+Aulo86p44nakhjaQd/W0whfv8tknXa84X3RGpbTccO
 rx3w==
X-Gm-Message-State: AOAM532YBkgA+gixXxUEVcDg0AuS5Tsg2JhLnFdzt+INU9dWdci+NhTK
 sx4SoQxErwF+8pVL3T2i8FyM1D45YMK7Vg==
X-Google-Smtp-Source: ABdhPJzVxrqQxT0VWjzu3O+ZZTyH7eQKneB4gx3TeEplgXZ/eCkcLXenQCUyvY1qFqkYodsE2bIvaw==
X-Received: by 2002:a2e:9d7:: with SMTP id 206mr2775267ljj.311.1615903951381; 
 Tue, 16 Mar 2021 07:12:31 -0700 (PDT)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
 by smtp.gmail.com with ESMTPSA id h206sm3069459lfd.4.2021.03.16.07.12.30
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 16 Mar 2021 07:12:30 -0700 (PDT)
Date: Tue, 16 Mar 2021 17:12:21 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, rcz@pengutronix.de
Message-Id: <20210316171221.d9f38875021a468efdf41dc5@gmail.com>
In-Reply-To: <20210316080505.19361-15-a.fatoum@pengutronix.de>
References: <20210316080505.19361-1-a.fatoum@pengutronix.de>
 <20210316080505.19361-15-a.fatoum@pengutronix.de>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; i686-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210316_141235_609498_2269E50B 
X-CRM114-Status: GOOD (  35.48  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 14/20] RISC-V: erizo: migrate to PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, 16 Mar 2021 09:04:59 +0100
Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:

> We now have everything in place to migrate erizo to PBL.
> As currently, this is the only board, we can drop all non-PBL support
> in the same go.
> =

> The board still throws TLSF errors on startup, but that was the case
> before the rework as well. Tested with qemu as described in the docs.
> =

> Cc: Antony Pavlov <antonynpavlov@gmail.com>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> I assume some memory corruption is happening due to the minimal malloc
> area size?

There is no problem with 1M malloc area size.

I succesfully run virt64_defconfig barebox with CONFIG_MALLOC_SIZE=3D0x1000=
00 and CONFIG_DISK=3Dn.

Moreover, it's possible to run very minimum mips barebox with 128K tlfs mal=
loc area.

I suppose I can make bisection after rebuild old fashion rv32 toolchain
(alas! 3 year old rv32 toolchain binaries do not work on my current Debian =
configuration).

> It doesn't happen with dlmalloc. It doesn't happen on riscv
> virt added later on, so I will likely not pursue this further.
> ---
>  Documentation/boards/riscv.rst             | 13 +++--
>  Makefile                                   |  1 +
>  arch/riscv/Kconfig                         | 15 ++---
>  arch/riscv/Makefile                        | 25 +++-----
>  arch/riscv/boards/erizo/Makefile           |  4 +-
>  arch/riscv/boards/erizo/board.c            | 25 --------
>  arch/riscv/boards/erizo/lowlevel.c         | 37 ++++--------
>  arch/riscv/boards/erizo/start.S            | 68 ----------------------
>  arch/riscv/configs/erizo_generic_defconfig |  5 --
>  arch/riscv/dts/Makefile                    |  9 +--
>  arch/riscv/lib/Makefile                    |  2 +-
>  arch/riscv/lib/barebox.lds.S               | 36 ++++++++----
>  arch/riscv/lib/dtb.c                       | 26 +++++++++
>  common/Kconfig                             |  4 +-
>  images/Makefile                            |  4 ++
>  images/Makefile.riscv                      | 12 ++++
>  pbl/Kconfig                                |  2 +-
>  17 files changed, 107 insertions(+), 181 deletions(-)
>  delete mode 100644 arch/riscv/boards/erizo/board.c
>  delete mode 100644 arch/riscv/boards/erizo/start.S
>  create mode 100644 arch/riscv/lib/dtb.c
>  create mode 100644 images/Makefile.riscv
> =

> diff --git a/Documentation/boards/riscv.rst b/Documentation/boards/riscv.=
rst
> index c7fa52aadbee..a1f7e30531ee 100644
> --- a/Documentation/boards/riscv.rst
> +++ b/Documentation/boards/riscv.rst
> @@ -1,8 +1,11 @@
>  RISC-V
>  =3D=3D=3D=3D=3D=3D
>  =

> -Running RISC-V barebox on qemu
> -------------------------------
> +Erizo
> +-----
> +
> +Running on qemu
> +~~~~~~~~~~~~~~~
>  =

>  Obtain RISC-V GCC/Newlib Toolchain,
>  see https://github.com/riscv/riscv-tools/blob/master/README.md
> @@ -44,7 +47,7 @@ Next compile barebox::
>  Run barebox::
>  =

>    $ <path to riscv-qemu source>/riscv32-softmmu/qemu-system-riscv32 \
> -      -nographic -M erizo -bios <path to barebox sources >/barebox.bin \
> +      -nographic -M erizo -bios ./images/barebox-erizo-generic.img \
>        -serial stdio -monitor none -trace file=3D/dev/null
>    Switch to console [cs0]
>    =

> @@ -59,8 +62,8 @@ Run barebox::
>    barebox:/
>  =

>  =

> -Running RISC-V barebox on DE0-Nano FPGA board
> ----------------------------------------------
> +Running on DE0-Nano FPGA board
> +------------------------------
>  =

>  See https://github.com/open-design/riscv-soc-cores/ for instructions
>  on DE0-Nano bitstream generation and loading.
> diff --git a/Makefile b/Makefile
> index 6d44314f0a7e..4cc7bef2bd42 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -776,6 +776,7 @@ define rule_barebox__
>  	$(if $(CONFIG_KALLSYMS),,+$(call cmd,barebox_version))
>  	$(call cmd,barebox__)
>  	$(Q)echo 'cmd_$@ :=3D $(cmd_barebox__)' > $(@D)/.$(@F).cmd
> +	$(call cmd,prelink__)
>  	$(call cmd,sysmap)
>  endef
>  =

> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index b1b24f2e5764..4a2a547a7b35 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -1,14 +1,16 @@
>  config RISCV
>  	def_bool y
>  	select GENERIC_FIND_NEXT_BIT
> -	select HAVE_CONFIGURABLE_MEMORY_LAYOUT
> -	select HAVE_CONFIGURABLE_TEXT_BASE
>  	select GPIOLIB
>  	select OFTREE
> +	select OFDEVICE
>  	select COMMON_CLK
>  	select COMMON_CLK_OF_PROVIDER
>  	select CLKDEV_LOOKUP
>  	select HAS_DMA
> +	select HAVE_PBL_IMAGE
> +	select HAVE_PBL_MULTI_IMAGES
> +	select HAVE_IMAGE_COMPRESSION
>  =

>  config ARCH_TEXT_BASE
>  	hex
> @@ -24,6 +26,7 @@ config MACH_ERIZO
>  	bool "erizo family"
>  	select HAS_DEBUG_LL
>  	select HAS_NMON
> +	select USE_COMPRESSED_DTB
>  =

>  endchoice
>  =

> @@ -56,14 +59,6 @@ config 32BIT
>  =

>  endchoice
>  =

> -config BUILTIN_DTB
> -	bool "link a DTB into the barebox image"
> -	depends on OFTREE
> -
> -config BUILTIN_DTB_NAME
> -	string "DTB to build into the barebox image"
> -	depends on BUILTIN_DTB
> -
>  source "arch/riscv/mach-erizo/Kconfig"
>  =

>  endmenu
> diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
> index df2b5bb681a4..00456ed02ce1 100644
> --- a/arch/riscv/Makefile
> +++ b/arch/riscv/Makefile
> @@ -3,21 +3,23 @@ KBUILD_DEFCONFIG :=3D erizo_generic_defconfig
>  KBUILD_CPPFLAGS +=3D -fno-strict-aliasing
>  =

>  ifeq ($(CONFIG_ARCH_RV32I),y)
> -	cflags-y +=3D -march=3Drv32im -mabi=3Dilp32
> -	riscv-ldflags-y +=3D -melf32lriscv
> +	riscv-cflags-y :=3D -march=3Drv32im -mabi=3Dilp32
> +	riscv-ldflags-y :=3D -melf32lriscv
>  endif
>  =

> -cflags-y +=3D -fno-pic -Wstrict-prototypes -mcmodel=3Dmedany
> +riscv-cflags-y +=3D -Wstrict-prototypes -mcmodel=3Dmedany -fpic
> +riscv-ldflags-y +=3D -pie -static
>  =

> +PBL_CPPFLAGS +=3D $(riscv-cflags-y)
> +LDFLAGS_pbl +=3D $(riscv-ldflags-y)
> +
> +cflags-y +=3D $(riscv-cflags-y)
>  LDFLAGS_barebox +=3D -nostdlib
>  =

>  machine-$(CONFIG_MACH_ERIZO)	:=3D erizo
>  =

>  LDFLAGS_barebox +=3D $(riscv-ldflags-y)
>  =

> -TEXT_BASE =3D $(CONFIG_TEXT_BASE)
> -KBUILD_CPPFLAGS +=3D -DTEXT_BASE=3D$(CONFIG_TEXT_BASE)
> -
>  ifndef CONFIG_MODULES
>  # Add cleanup flags
>  KBUILD_CPPFLAGS +=3D -fdata-sections -ffunction-sections
> @@ -54,13 +56,4 @@ lds-y	:=3D arch/riscv/lib/barebox.lds
>  =

>  CLEAN_FILES +=3D arch/riscv/lib/barebox.lds
>  =

> -ifeq ($(CONFIG_MACH_ERIZO),y)
> -KBUILD_IMAGE :=3D barebox.erizo.nmon
> -endif
> -
> -quiet_cmd_erizo_nmon_image =3D MKIMAGE $@
> -      cmd_erizo_nmon_image =3D $(srctree)/scripts/erizo-nmon-image $< $@=
 || \
> -	echo "WARNING: Couldn't create erizo nmon image due to previous errors."
> -
> -barebox.erizo.nmon: $(KBUILD_BINARY) FORCE
> -	$(call if_changed,erizo_nmon_image)
> +KBUILD_IMAGE :=3D $(KBUILD_BINARY)
> diff --git a/arch/riscv/boards/erizo/Makefile b/arch/riscv/boards/erizo/M=
akefile
> index 72b9a13ba73f..3d217ffe0b93 100644
> --- a/arch/riscv/boards/erizo/Makefile
> +++ b/arch/riscv/boards/erizo/Makefile
> @@ -1,5 +1,3 @@
>  # SPDX-License-Identifier: GPL-2.0
>  =

> -obj-y +=3D lowlevel.o
> -obj-y +=3D start.o
> -obj-y +=3D board.o
> +pbl-y +=3D lowlevel.o
> diff --git a/arch/riscv/boards/erizo/board.c b/arch/riscv/boards/erizo/bo=
ard.c
> deleted file mode 100644
> index b9b68fc7f254..000000000000
> --- a/arch/riscv/boards/erizo/board.c
> +++ /dev/null
> @@ -1,25 +0,0 @@
> -// SPDX-License-Identifier: GPL-2.0-only
> -/*
> - * Copyright (C) 2016, 2018 Antony Pavlov <antonynpavlov@gmail.com>
> - *
> - * This file is part of barebox.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - *
> - */
> -#include <common.h>
> -#include <init.h>
> -#include <of.h>
> -
> -extern char __dtb_start[];
> -
> -static int of_riscv_init(void)
> -{
> -	barebox_register_fdt(__dtb_start);
> -
> -	return 0;
> -}
> -core_initcall(of_riscv_init);
> diff --git a/arch/riscv/boards/erizo/lowlevel.c b/arch/riscv/boards/erizo=
/lowlevel.c
> index f9c640c1123f..d9edb530b746 100644
> --- a/arch/riscv/boards/erizo/lowlevel.c
> +++ b/arch/riscv/boards/erizo/lowlevel.c
> @@ -1,35 +1,18 @@
>  // SPDX-License-Identifier: GPL-2.0-only
> -/*
> - * Copyright (C) 2016 Antony Pavlov <antonynpavlov@gmail.com>
> - *
> - * This file is part of barebox.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - *
> - */
>  =

>  #include <common.h>
> -#include <memory.h>
> -#include <asm-generic/memory_layout.h>
> -#include <asm/sections.h>
> +#include <asm/barebox-riscv.h>
> +#include <debug_ll.h>
>  =

> -void main_entry(void);
> -
> -/**
> - * Called plainly from assembler code
> - *
> - * @note The C environment isn't initialized yet
> - */
> -void main_entry(void)
> +ENTRY_FUNCTION(start_erizo_generic, a0, a1, a2)
>  {
> -	/* clear the BSS first */
> -	memset(__bss_start, 0x00, __bss_stop - __bss_start);
> +	extern char __dtb_z_erizo_generic_start[];
> +
> +	debug_ll_ns16550_init();
> +	putc_ll('>');
>  =

> -	mem_malloc_init((void *)MALLOC_BASE,
> -			(void *)(MALLOC_BASE + MALLOC_SIZE - 1));
> +	/* On POR, we are running from read-only memory here. */
>  =

> -	start_barebox();
> +	barebox_riscv_entry(0x80000000, SZ_8M,
> +			    __dtb_z_erizo_generic_start + get_runtime_offset());
>  }
> diff --git a/arch/riscv/boards/erizo/start.S b/arch/riscv/boards/erizo/st=
art.S
> deleted file mode 100644
> index d1dbe48b7bd6..000000000000
> --- a/arch/riscv/boards/erizo/start.S
> +++ /dev/null
> @@ -1,68 +0,0 @@
> -/* SPDX-License-Identifier: GPL-2.0-only */
> -/*
> - * Startup Code for RISC-V CPU
> - *
> - * Copyright (C) 2016 Antony Pavlov <antonynpavlov@gmail.com>
> - *
> - * based on coreboot/src/arch/riscv/bootblock.S
> - *      and barebox/arch/mips/boot/start.S
> - *
> - * This file is part of barebox.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - *
> - */
> -
> -#include <asm-generic/memory_layout.h>
> -
> -#include "mach/debug_ll.h"
> -
> -#include "asm/riscv_nmon.h"
> -
> -	.text
> -	.section ".text_entry"
> -	.align 2
> -
> -.globl _start
> -_start:
> -	debug_ll_ns16550_init
> -
> -	riscv_nmon
> -
> -	li	sp, STACK_BASE + STACK_SIZE
> -
> -	/* copy barebox to link location */
> -
> -	la	a0, _start	/* a0 <- _start actual address */
> -	li	a1, CONFIG_TEXT_BASE	/* a1 <- _start link address */
> -
> -	beq	a0, a1, main_entry
> -
> -	la	a2, __bss_start
> -
> -#define LONGSIZE 4
> -
> -copy_loop:
> -	/* copy from source address [a0] */
> -	lw	t0, LONGSIZE * 0(a0)
> -	lw	t1, LONGSIZE * 1(a0)
> -	lw	t2, LONGSIZE * 2(a0)
> -	lw	t3, LONGSIZE * 3(a0)
> -	/* copy to target address [a1] */
> -	sw	t0, LONGSIZE * 0(a1)
> -	sw	t1, LONGSIZE * 1(a1)
> -	sw	t2, LONGSIZE * 2(a1)
> -	sw	t3, LONGSIZE * 3(a1)
> -	addi	a0, a0, LONGSIZE * 4
> -	addi	a1, a1, LONGSIZE * 4
> -	bgeu	a2, a0, copy_loop
> -
> -	/* Alas! At the moment I can't load main_entry __link__ address
> -	   into a0 with la. Use CONFIG_TEXT_BASE instead. This solution
> -	   leads to extra cycles for repeat sp initialization. */
> -
> -	li	a0, CONFIG_TEXT_BASE
> -	jalr	a0
> diff --git a/arch/riscv/configs/erizo_generic_defconfig b/arch/riscv/conf=
igs/erizo_generic_defconfig
> index 2ea1e46cc960..839b652ab53d 100644
> --- a/arch/riscv/configs/erizo_generic_defconfig
> +++ b/arch/riscv/configs/erizo_generic_defconfig
> @@ -1,9 +1,5 @@
>  # CONFIG_GLOBALVAR is not set
> -CONFIG_TEXT_BASE=3D0x80000000
> -CONFIG_MEMORY_LAYOUT_FIXED=3Dy
> -CONFIG_STACK_BASE=3D0x800e0000
>  CONFIG_STACK_SIZE=3D0x20000
> -CONFIG_MALLOC_BASE=3D0x80100000
>  CONFIG_MALLOC_SIZE=3D0x100000
>  CONFIG_MALLOC_TLSF=3Dy
>  CONFIG_PANIC_HANG=3Dy
> @@ -36,7 +32,6 @@ CONFIG_CMD_SPI=3Dy
>  CONFIG_CMD_OF_DUMP=3Dy
>  CONFIG_CMD_TIME=3Dy
>  CONFIG_CMD_DHRYSTONE=3Dy
> -CONFIG_OFDEVICE=3Dy
>  CONFIG_DRIVER_SERIAL_NS16550=3Dy
>  CONFIG_DRIVER_SPI_GPIO=3Dy
>  CONFIG_I2C=3Dy
> diff --git a/arch/riscv/dts/Makefile b/arch/riscv/dts/Makefile
> index 6bd4e5a9250c..4041c34e0c45 100644
> --- a/arch/riscv/dts/Makefile
> +++ b/arch/riscv/dts/Makefile
> @@ -1,12 +1,9 @@
> -BUILTIN_DTB :=3D $(patsubst "%",%,$(CONFIG_BUILTIN_DTB_NAME))
> -ifneq ($(BUILTIN_DTB),)
> -obj-$(CONFIG_BUILTIN_DTB) +=3D $(BUILTIN_DTB).dtb.o
> -endif
> -
> -obj-$(CONFIG_BOARD_ERIZO_GENERIC) +=3D erizo-generic.dtb.o
> +# SPDX-License-Identifier: GPL-2.0
>  =

>  # just to build a built-in.o. Otherwise compilation fails when no device=
tree is
>  # created.
>  obj- +=3D dummy.o
>  =

> +pbl-$(CONFIG_BOARD_ERIZO_GENERIC) +=3D erizo-generic.dtb.o
> +
>  clean-files :=3D *.dtb *.dtb.S .*.dtc .*.pre .*.dts
> diff --git a/arch/riscv/lib/Makefile b/arch/riscv/lib/Makefile
> index 5f57d9fcd2e2..a9bf68bca597 100644
> --- a/arch/riscv/lib/Makefile
> +++ b/arch/riscv/lib/Makefile
> @@ -2,7 +2,7 @@
>  =

>  extra-y +=3D barebox.lds
>  =

> -obj-y +=3D riscv_timer.o
> +obj-y +=3D riscv_timer.o dtb.o
>  obj-pbl-y +=3D sections.o setupc.o reloc.o sections.o runtime-offset.o
>  obj-$(CONFIG_HAS_ARCH_SJLJ) +=3D setjmp.o longjmp.o
>  obj-$(CONFIG_RISCV_OPTIMZED_STRING_FUNCTIONS) +=3D memcpy.o memset.o mem=
move.o
> diff --git a/arch/riscv/lib/barebox.lds.S b/arch/riscv/lib/barebox.lds.S
> index c8a331c577cf..562ad5dc6662 100644
> --- a/arch/riscv/lib/barebox.lds.S
> +++ b/arch/riscv/lib/barebox.lds.S
> @@ -14,22 +14,30 @@
>  #include <asm-generic/barebox.lds.h>
>  =

>  OUTPUT_ARCH(riscv)
> -ENTRY(_start)
> +ENTRY(start)
>  SECTIONS
>  {
> -	. =3D TEXT_BASE;
> +	. =3D 0x0;
>  =

> -	. =3D ALIGN(8);
> +	.image_start : { *(.__image_start) }
> +
> +	. =3D ALIGN(4);
> +	._text : { *(._text) }
>  	.text      :
>  	{
>  		_stext =3D .;
> -		_start =3D .;
> -		KEEP(*(.text_entry*))
> -		_text =3D .;
> +		*(.text_entry*)
> +		__bare_init_start =3D .;
> +		*(.text_bare_init*)
> +		__bare_init_end =3D .;
> +		__exceptions_start =3D .;
> +		KEEP(*(.text_exceptions*))
> +		__exceptions_stop =3D .;
>  		*(.text*)
>  	}
> +	BAREBOX_BARE_INIT_SIZE
>  =

> -	. =3D ALIGN(8);
> +	. =3D ALIGN(4);
>  	.rodata : {
>  		*(.rodata*)
>  		RO_DATA_SECTION
> @@ -38,7 +46,7 @@ SECTIONS
>  	_etext =3D .;			/* End of text and rodata section */
>  	_sdata =3D .;
>  =

> -	. =3D ALIGN(8);
> +	. =3D ALIGN(4);
>  	.data : { *(.data*) }
>  =

>  	.barebox_imd : { BAREBOX_IMD }
> @@ -57,9 +65,13 @@ SECTIONS
>  	}
>  =

>  	_edata =3D .;
> -	. =3D ALIGN(8);
> -	__bss_start =3D .;
> -	.bss : { *(.bss*) *(.sbss*) }
> -	__bss_stop =3D .;
> +
> +	.image_end : { *(.__image_end) }
> +
> +	. =3D ALIGN(4);
> +	.__bss_start :  { *(.__bss_start) }
> +	.bss : { *(.bss*) }
> +	.__bss_stop :  { *(.__bss_stop) }
>  	_end =3D .;
> +	_barebox_image_size =3D __bss_start;
>  }
> diff --git a/arch/riscv/lib/dtb.c b/arch/riscv/lib/dtb.c
> new file mode 100644
> index 000000000000..c7fa6b0c31ca
> --- /dev/null
> +++ b/arch/riscv/lib/dtb.c
> @@ -0,0 +1,26 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +// SPDX-FileCopyrightText: 2013 Sascha Hauer <s.hauer@pengutronix.de>, P=
engutronix
> +#include <common.h>
> +#include <init.h>
> +#include <of.h>
> +#include <asm/barebox-riscv.h>
> +
> +static int of_riscv_init(void)
> +{
> +	void *fdt;
> +
> +	/* See if we are provided a dtb in boarddata */
> +	fdt =3D barebox_riscv_boot_dtb();
> +	if (!fdt) {
> +		pr_err("No DTB found\n");
> +		return -ENODATA;
> +	}
> +
> +	pr_debug("using boarddata provided DTB\n");
> +
> +
> +	barebox_register_fdt(fdt);
> +
> +	return 0;
> +}
> +core_initcall(of_riscv_init);
> diff --git a/common/Kconfig b/common/Kconfig
> index 36207274f07f..37204fb40a44 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -44,7 +44,7 @@ config BLOCK_WRITE
>  =

>  config USE_COMPRESSED_DTB
>  	bool
> -	depends on ARM
> +	depends on ARM || RISCV
>  	select UNCOMPRESS
>  	select LZO_DECOMPRESS
>  =

> @@ -358,7 +358,7 @@ config KALLSYMS
>  	  This is useful to print a nice backtrace when an exception occurs.
>  =

>  config RELOCATABLE
> -	depends on PPC || ARM
> +	depends on PPC || ARM || RISCV
>  	bool "generate relocatable barebox binary"
>  	help
>  	  A non relocatable barebox binary will run at it's compiled in
> diff --git a/images/Makefile b/images/Makefile
> index 84492a154d16..ee1347f6b6bd 100644
> --- a/images/Makefile
> +++ b/images/Makefile
> @@ -42,6 +42,8 @@
>  # both as entrypoint and as filename
>  #
>  =

> +include scripts/Makefile.lib
> +
>  quiet_cmd_objcopy_bin =3D OBJCOPYB $@
>        cmd_objcopy_bin =3D \
>  		$(OBJCOPY) -O binary $(OBJCOPYFLAGS) $(OBJCOPYFLAGS_$(@F)) $< $@ && \
> @@ -64,6 +66,7 @@ PBL_CPPFLAGS	+=3D -fdata-sections -ffunction-sections
>  =

>  $(obj)/%.pbl: $(pbl-lds) $(BAREBOX_PBL_OBJS) $(obj)/piggy.o $(obj)/sha_s=
um.o FORCE
>  	$(call if_changed,elf__,$(*F))
> +	$(call cmd,prelink__)
>  =

>  $(obj)/%.pblb: $(obj)/%.pbl FORCE
>  	$(call if_changed,objcopy_bin,$(*F))
> @@ -164,6 +167,7 @@ include $(srctree)/images/Makefile.at91
>  include $(srctree)/images/Makefile.zynq
>  include $(srctree)/images/Makefile.zynqmp
>  include $(srctree)/images/Makefile.layerscape
> +include $(srctree)/images/Makefile.riscv
>  =

>  =

>  pblb-$(CONFIG_BOARD_GENERIC_DT) +=3D start_dt_2nd
> diff --git a/images/Makefile.riscv b/images/Makefile.riscv
> new file mode 100644
> index 000000000000..463c6ce4400d
> --- /dev/null
> +++ b/images/Makefile.riscv
> @@ -0,0 +1,12 @@
> +# SPDX-License-Identifier: GPL-2.0-or-later
> +
> +quiet_cmd_erizo_nmon_image =3D MKIMAGE $@
> +      cmd_erizo_nmon_image =3D $(srctree)/scripts/erizo-nmon-image $< $@=
 || \
> +	echo "WARNING: Couldn't create erizo nmon image due to previous errors."
> +
> +$(obj)/%.nmon: $(obj)/%.img FORCE
> +	$(call if_changed,erizo_nmon_image)
> +
> +pblb-$(CONFIG_BOARD_ERIZO_GENERIC) +=3D start_erizo_generic
> +FILE_barebox-erizo-generic.img =3D start_erizo_generic.pblb
> +image-$(CONFIG_BOARD_ERIZO_GENERIC) +=3D barebox-erizo-generic.img bareb=
ox-erizo-generic.nmon
> diff --git a/pbl/Kconfig b/pbl/Kconfig
> index 2eea5aef7a30..451a278c4088 100644
> --- a/pbl/Kconfig
> +++ b/pbl/Kconfig
> @@ -27,7 +27,7 @@ config PBL_SINGLE_IMAGE
>  if PBL_IMAGE
>  =

>  config PBL_RELOCATABLE
> -	depends on ARM || MIPS
> +	depends on ARM || MIPS || RISCV
>  	bool "relocatable pbl image"
>  	help
>  	  Generate a pbl binary which can relocate itself during startup to run
> -- =

> 2.29.2
> =



-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

