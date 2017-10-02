Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x230.google.com ([2a00:1450:4010:c07::230])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dz8oS-0001Oi-Op
 for barebox@lists.infradead.org; Mon, 02 Oct 2017 22:03:47 +0000
Received: by mail-lf0-x230.google.com with SMTP id d17so7622668lfe.2
 for <barebox@lists.infradead.org>; Mon, 02 Oct 2017 15:03:23 -0700 (PDT)
Date: Tue, 3 Oct 2017 01:15:17 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20171003011517.11458b57798f7e6d9d07c512@gmail.com>
In-Reply-To: <cbe5730e-5da4-6379-6cd0-c75feeeafb1a@phytec.de>
References: <20170928231249.4158-1-antonynpavlov@gmail.com>
 <20170928231249.4158-2-antonynpavlov@gmail.com>
 <6767ad4e-80b7-2c69-49ff-ecfb64ab19e0@rempel-privat.de>
 <20170930145755.9a68a3fffe61c58eda5c7263@gmail.com>
 <cbe5730e-5da4-6379-6cd0-c75feeeafb1a@phytec.de>
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
To: Daniel Schultz <d.schultz@phytec.de>
Cc: barebox@lists.infradead.org

On Mon, 2 Oct 2017 12:04:30 +0200
Daniel Schultz <d.schultz@phytec.de> wrote:

> Hi,
> =

> =

> On 09/30/2017 01:57 PM, Antony Pavlov wrote:
> > On Fri, 29 Sep 2017 14:07:09 +0200
> > Oleksij Rempel <linux@rempel-privat.de> wrote:
> >
> >> Hi,
> >>
> >> hm... mostly looks identical with existing arch
> > What do you mean when you say "existing arch"?
> >
> > ...
> >
> >> Am 29.09.2017 um 01:12 schrieb Antony Pavlov:
> > ...
> >>> diff --git a/arch/riscv/boot/start.S b/arch/riscv/boot/start.S
> >>> new file mode 100644
> >>> index 000000000..2fd00f63d
> >>> --- /dev/null
> >>> +++ b/arch/riscv/boot/start.S
> >>> @@ -0,0 +1,74 @@
> >>> +/*
> >>> + * Startup Code for MIPS CPU
> >>> + *
> >>> + * based on coreboot/src/arch/riscv/bootblock.S
> >>> + *
> >>> + * Copyright (C) 2016 Antony Pavlov <antonynpavlov@gmail.com>
> >>> + *
> >>> + * This file is part of barebox.
> >>> + * See file CREDITS for list of people who contributed to this proje=
ct.
> >>> + *
> >>> + * This program is free software; you can redistribute it and/or mod=
ify
> >>> + * it under the terms of the GNU General Public License version 2
> >>> + * as published by the Free Software Foundation.
> >>> + *
> >>> + * This program is distributed in the hope that it will be useful,
> >>> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> >>> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> >>> + * GNU General Public License for more details.
> >>> + *
> >>> + */
> >>> +
> >>> +#include <asm-generic/memory_layout.h>
> >>> +
> >>> +	.text
> >>> +	.section ".text_entry"
> >>> +	.align 2
> >>> +
> >>> +.globl _start
> >>> +_start:
> >>> +	li sp, STACK_BASE + STACK_SIZE
> >>> +
> >>> +	# make room for HLS and initialize it
> >>> +	addi sp, sp, -64 /* MENTRY_FRAME_SIZE */
> >>> +
> >>> +	# poison the stack
> >>> +	li t1, STACK_BASE
> >>> +	li t0, 0xdeadbeef
> >>> +	sw t0, 0(t1)
> >>> +
> >>> +	# clear any pending interrupts
> >>> +	//csrwi mip, 0
> >> should be removed.
> > Actually not!
> >
> > I have imported this code from coreboot.
> >
> > I have commented this line because csrwi does not worked in some cases.
> >
> > But I have to make additional investigations on csrwi.
> >
> CSRRWI is part of the base integer instruction set and the machine mode =

> is mandatory. If there are troubles with this instruction, the core has =

> a faulty design. So executing this line should be okay even if there is =

> no interrupt controller.
> =


It's not a bug, it's a feature :)

At the moment I use picorv32 core.

Here is a quote from https://github.com/cliffordwolf/picorv32#custom-instru=
ctions-for-irq-handling

     The IRQ handling features in PicoRV32 do not follow the RISC-V Privile=
ged ISA specification.
     Instead a small set of very simple custom instructions is used to impl=
ement IRQ handling with
     minimal hardware overhead.

I'm planning to make it possible to use another core instead of picorv32 in=
 Eriso SoC,
so I can introduce something like SYS_HAS_PICORV32_CPU Kconfig macro.

> -- =

> Mit freundlichen Gr=FC=DFen,
> With best regards,
>    Daniel Schultz
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
