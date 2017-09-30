Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x242.google.com ([2a00:1450:4010:c07::242])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dyGDy-0008Uh-9e
 for barebox@lists.infradead.org; Sat, 30 Sep 2017 11:46:28 +0000
Received: by mail-lf0-x242.google.com with SMTP id k23so1845079lfi.11
 for <barebox@lists.infradead.org>; Sat, 30 Sep 2017 04:46:03 -0700 (PDT)
Date: Sat, 30 Sep 2017 14:57:55 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20170930145755.9a68a3fffe61c58eda5c7263@gmail.com>
In-Reply-To: <6767ad4e-80b7-2c69-49ff-ecfb64ab19e0@rempel-privat.de>
References: <20170928231249.4158-1-antonynpavlov@gmail.com>
 <20170928231249.4158-2-antonynpavlov@gmail.com>
 <6767ad4e-80b7-2c69-49ff-ecfb64ab19e0@rempel-privat.de>
Mime-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC v4 01/10] Add initial RISC-V architecture support
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: barebox@lists.infradead.org

On Fri, 29 Sep 2017 14:07:09 +0200
Oleksij Rempel <linux@rempel-privat.de> wrote:

> Hi,
> =

> hm... mostly looks identical with existing arch

What do you mean when you say "existing arch"?

...

> Am 29.09.2017 um 01:12 schrieb Antony Pavlov:
...
> > diff --git a/arch/riscv/boot/start.S b/arch/riscv/boot/start.S
> > new file mode 100644
> > index 000000000..2fd00f63d
> > --- /dev/null
> > +++ b/arch/riscv/boot/start.S
> > @@ -0,0 +1,74 @@
> > +/*
> > + * Startup Code for MIPS CPU
> > + *
> > + * based on coreboot/src/arch/riscv/bootblock.S
> > + *
> > + * Copyright (C) 2016 Antony Pavlov <antonynpavlov@gmail.com>
> > + *
> > + * This file is part of barebox.
> > + * See file CREDITS for list of people who contributed to this project.
> > + *
> > + * This program is free software; you can redistribute it and/or modify
> > + * it under the terms of the GNU General Public License version 2
> > + * as published by the Free Software Foundation.
> > + *
> > + * This program is distributed in the hope that it will be useful,
> > + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> > + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> > + * GNU General Public License for more details.
> > + *
> > + */
> > +
> > +#include <asm-generic/memory_layout.h>
> > +
> > +	.text
> > +	.section ".text_entry"
> > +	.align 2
> > +
> > +.globl _start
> > +_start:
> > +	li sp, STACK_BASE + STACK_SIZE
> > +
> > +	# make room for HLS and initialize it
> > +	addi sp, sp, -64 /* MENTRY_FRAME_SIZE */
> > +
> > +	# poison the stack
> > +	li t1, STACK_BASE
> > +	li t0, 0xdeadbeef
> > +	sw t0, 0(t1)
> > +
> > +	# clear any pending interrupts
> > +	//csrwi mip, 0
> =

> should be removed.

Actually not!

I have imported this code from coreboot.

I have commented this line because csrwi does not worked in some cases.

But I have to make additional investigations on csrwi.

> =

> > +	/* copy barebox to link location */
> > +
> > +	la	a0, _start	/* a0 <- _start actual address */
> > +	li	a1, CONFIG_TEXT_BASE	/* a1 <- _start link address */
> > +
> > +	beq	a0, a1, main_entry
> > +
> > +	la	a2, __bss_start
> > +
> > +#define LONGSIZE 4
> > +
> > +copy_loop:
> > +	/* copy from source address [a0] */
> > +	lw	t0, LONGSIZE * 0(a0)
> > +	lw	t1, LONGSIZE * 1(a0)
> > +	lw	t2, LONGSIZE * 2(a0)
> > +	lw	t3, LONGSIZE * 3(a0)
> > +	/* copy to target address [a1] */
> > +	sw	t0, LONGSIZE * 0(a1)
> > +	sw	t1, LONGSIZE * 1(a1)
> > +	sw	t2, LONGSIZE * 2(a1)
> > +	sw	t3, LONGSIZE * 3(a1)
> > +	addi	a0, a0, LONGSIZE * 2
> > +	addi	a1, a1, LONGSIZE * 2
> > +	bgeu	a2, a0, copy_loop
> > +
> > +	/* Alas! At the moment I can't load main_entry __link__ address
> > +	   into a0 with la. Use CONFIG_TEXT_BASE instead. This solution
> > +	   leads to extra cycles for repeat sp initialization. */
> > +
> > +	li	a0, CONFIG_TEXT_BASE
> > +	jalr	a0
> > diff --git a/arch/riscv/dts/.gitignore b/arch/riscv/dts/.gitignore
> > new file mode 100644
> > index 000000000..077903c50
> > --- /dev/null
> > +++ b/arch/riscv/dts/.gitignore
> > @@ -0,0 +1 @@
> > +*dtb*
> > diff --git a/arch/riscv/dts/Makefile b/arch/riscv/dts/Makefile
> > new file mode 100644
> > index 000000000..f8380b11c
> > --- /dev/null
> > +++ b/arch/riscv/dts/Makefile
> > @@ -0,0 +1,9 @@
> > +BUILTIN_DTB :=3D $(patsubst "%",%,$(CONFIG_BUILTIN_DTB_NAME))
> > +obj-$(CONFIG_BUILTIN_DTB) +=3D $(BUILTIN_DTB).dtb.o
> > +
> > +# just to build a built-in.o. Otherwise compilation fails when no devi=
cetree is
> > +# created.
> > +obj- +=3D dummy.o
> > +
> > +always :=3D $(dtb-y)
> > +clean-files :=3D *.dtb *.dtb.S .*.dtc .*.pre .*.dts
> > diff --git a/arch/riscv/dts/skeleton.dtsi b/arch/riscv/dts/skeleton.dtsi
> > new file mode 100644
> > index 000000000..38ead821b
> > --- /dev/null
> > +++ b/arch/riscv/dts/skeleton.dtsi
> > @@ -0,0 +1,13 @@
> > +/*
> > + * Skeleton device tree; the bare minimum needed to boot; just include=
 and
> > + * add a compatible value.  The bootloader will typically populate the=
 memory
> > + * node.
> > + */
> > +
> > +/ {
> > +	#address-cells =3D <2>;
> > +	#size-cells =3D <1>;
> > +	chosen { };
> > +	aliases { };
> > +	memory { device_type =3D "memory"; reg =3D <0 0 0>; };
> =

> "reg =3D <0 0>" instead?

no.

We have

  #address-cells =3D <2>;
  #size-cells =3D <1>;

here.

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
