Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gZBkP-0000YE-Dh
 for barebox@lists.infradead.org; Tue, 18 Dec 2018 09:33:12 +0000
Received: by mail-lj1-x242.google.com with SMTP id x85-v6so13599226ljb.2
 for <barebox@lists.infradead.org>; Tue, 18 Dec 2018 01:32:54 -0800 (PST)
Date: Tue, 18 Dec 2018 12:32:50 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20181218123250.5a76fa37a9ceba65dd68fff9@gmail.com>
In-Reply-To: <e9ce6255-0da2-f244-16b5-46e9d251b216@pengutronix.de>
References: <20181215100235.22494-1-linux@rempel-privat.de>
 <20181218103257.4c4ae9f5651bafc774e9230a@gmail.com>
 <e9ce6255-0da2-f244-16b5-46e9d251b216@pengutronix.de>
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
Subject: Re: [PATCH v1 1/3] MIPS: migrate all files to SPDX
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org, Oleksij Rempel <linux@rempel-privat.de>

On Tue, 18 Dec 2018 09:29:20 +0100
Oleksij Rempel <o.rempel@pengutronix.de> wrote:

> Hi,
> =

> On 18.12.18 08:32, Antony Pavlov wrote:
> > On Sat, 15 Dec 2018 11:02:33 +0100
> > Oleksij Rempel <linux@rempel-privat.de> wrote:
> > =

> >> Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
> >> ---
> >>   arch/mips/boards/8devices-lima/lowlevel.S         | 14 +-------------
> >>   arch/mips/boards/black-swift/lowlevel.S           | 14 +-------------
> >>   arch/mips/boards/dlink-dir-320/board.c            | 14 +-------------
> >>   arch/mips/boards/dptechnics-dpt-module/lowlevel.S |  5 +----
> >>   arch/mips/boards/img-ci20/lowlevel.S              | 14 +-------------
> >>   .../boards/loongson-ls1b/include/board/debug_ll.h | 14 +-------------
> >>   arch/mips/boards/loongson-ls1b/lowlevel.S         | 14 +-------------
> >>   .../boards/netgear-wg102/include/board/debug_ll.h | 14 +-------------
> >>   arch/mips/boards/netgear-wg102/lowlevel.S         | 14 +-------------
> >>   .../boards/qemu-malta/include/board/debug_ll.h    | 14 +-------------
> >>   arch/mips/boards/qemu-malta/lowlevel.S            | 14 +-------------
> >>   arch/mips/boards/ritmix-rzx50/lowlevel.S          | 14 +-------------
> >>   arch/mips/boards/tplink-mr3020/lowlevel.S         | 14 +-------------
> >>   arch/mips/boards/tplink-wdr4300/lowlevel.S        | 14 +-------------
> >>   arch/mips/boot/dtb.c                              | 14 +-------------
> >>   arch/mips/boot/main_entry-pbl.c                   | 15 +------------=
--
> >>   arch/mips/boot/main_entry.c                       | 15 +------------=
--
> >>   arch/mips/boot/start.S                            | 14 +-------------
> >>   arch/mips/dts/img-ci20.dts                        | 12 +-----------
> >>   arch/mips/include/asm/barebox.h                   | 14 +-------------
> >>   arch/mips/include/asm/bitops.h                    | 14 +-------------
> >>   arch/mips/include/asm/common.h                    | 14 +-------------
> >>   arch/mips/include/asm/debug_ll_ns16550.h          | 14 +-------------
> >>   arch/mips/include/asm/dma.h                       |  4 +---
> >>   arch/mips/include/asm/gt64120.h                   | 11 +----------
> >>   arch/mips/include/asm/module.h                    | 14 +-------------
> >>   arch/mips/include/asm/pbl_macros.h                | 14 +-------------
> >>   arch/mips/include/asm/pbl_nmon.h                  | 14 +-------------
> >>   arch/mips/include/asm/string.h                    | 14 +-------------
> >>   arch/mips/lib/barebox.lds.S                       | 14 +-------------
> >>   arch/mips/lib/cpu-probe.c                         |  6 +-----
> >>   arch/mips/lib/cpuinfo.c                           | 14 +-------------
> >>   arch/mips/lib/csrc-r4k.c                          | 14 +-------------
> >>   arch/mips/lib/dma-default.c                       | 11 +----------
> >>   arch/mips/lib/pbl.lds.S                           |  2 +-
> >>   arch/mips/mach-ar231x/ar231x.c                    |  6 +-----
> >>   arch/mips/mach-ar231x/ar231x_reset.c              |  6 +-----
> >>   arch/mips/mach-ar231x/board.c                     |  6 +-----
> >>   arch/mips/mach-ar231x/include/mach/ar2312_regs.h  |  6 +-----
> >>   .../mach-ar231x/include/mach/ar231x_platform.h    |  6 +-----
> >>   arch/mips/mach-ar231x/include/mach/debug_ll.h     | 14 +-------------
> >>   arch/mips/mach-ath79/bbu.c                        | 10 +---------
> >>   arch/mips/mach-ath79/include/mach/ar71xx_regs.h   |  5 +----
> >>   arch/mips/mach-ath79/include/mach/ath79.h         |  5 +----
> >>   arch/mips/mach-ath79/include/mach/debug_ll.h      | 14 +-------------
> >>   .../mach-ath79/include/mach/debug_ll_ar9331.h     | 14 +-------------
> >>   .../mach-ath79/include/mach/debug_ll_ar9344.h     | 14 +-------------
> >>   arch/mips/mach-ath79/reset.c                      | 14 +-------------
> >>   arch/mips/mach-bcm47xx/include/mach/debug_ll.h    | 14 +-------------
> >>   arch/mips/mach-bcm47xx/include/mach/hardware.h    | 14 +-------------
> >>   arch/mips/mach-bcm47xx/reset.c                    | 14 +-------------
> >>   arch/mips/mach-loongson/include/mach/debug_ll.h   | 14 +-------------
> >>   arch/mips/mach-loongson/include/mach/loongson1.h  |  6 +-----
> >>   arch/mips/mach-loongson/loongson1_reset.c         | 11 +----------
> >>   arch/mips/mach-malta/include/mach/debug_ll.h      | 14 +-------------
> >>   arch/mips/mach-malta/include/mach/hardware.h      | 14 +-------------
> >>   arch/mips/mach-malta/reset.c                      | 14 +-------------
> >>   arch/mips/mach-xburst/csrc-jz4750.c               | 14 +-------------
> >>   arch/mips/mach-xburst/include/mach/debug_ll.h     | 14 +-------------
> >>   .../mach-xburst/include/mach/debug_ll_jz4750d.h   | 14 +-------------
> >>   .../mach-xburst/include/mach/debug_ll_jz4780.h    | 14 +-------------
> >>   arch/mips/mach-xburst/include/mach/jz4750d_regs.h |  5 +----
> >>   arch/mips/mach-xburst/include/mach/jz4780.h       | 12 +-----------
> >>   arch/mips/mach-xburst/reset-jz4750.c              | 14 +-------------
> >>   arch/mips/pbl/zbarebox.lds.S                      | 15 +------------=
--
> >>   65 files changed, 65 insertions(+), 717 deletions(-)
> >>
> >> diff --git a/arch/mips/boards/8devices-lima/lowlevel.S b/arch/mips/boa=
rds/8devices-lima/lowlevel.S
> >> index a619747f3..f33cfe4d9 100644
> >> --- a/arch/mips/boards/8devices-lima/lowlevel.S
> >> +++ b/arch/mips/boards/8devices-lima/lowlevel.S
> >> @@ -1,18 +1,6 @@
> >> +/* SPDX-License-Identifier: GPL-2.0-only */
> >>   /*
> >>    * Copyright (C) 2018 Oleksij Rempel <linux@rempel-privat.de>
> >> - *
> >> - * This file is part of barebox.
> > =

> > Why you don't like this line?
> =

> I don't see any sense of this line. As long as it is part of barebox, it =

> provides no additional information. As soon as some one will reuse it in =

> some other project, it will be removed.
> =

> > =

> >> - * See file CREDITS for list of people who contributed to this projec=
t.
> > =

> > There is no CREDITS file in barebox. We can drop this line tree-wide.
> =

> Sure, and it is a lot work...
> =

> Beside, go you agree to upgrade files copyrighted by you as =

> GPL-2.0-or-later?

Not now. We use many codes from linux kernel (mostly GPL-2.0-only).
Can we face the problems of porting linux kernel code to barebox?

I see strange thing: most barebox files are GPL-2.0-only,
but asm/bitopts.h changed GPL-2.0-only to GPL-2.0-or-later after the commit

commit 227a20fe31c6a03795a202f95af95fb371951963
Author: Sascha Hauer <s.hauer@pengutronix.de>
Date:   Wed Jul 16 09:40:30 2014 +0200

    consistently use the same bitops.h file

@Sascha Please comment on GPL-2.0-only vs GPL-2.0-or-later in barebox.

> >> - * This program is free software; you can redistribute it and/or modi=
fy
> >> - * it under the terms of the GNU General Public License version 2
> >> - * as published by the Free Software Foundation.
> >> - *
> >> - * This program is distributed in the hope that it will be useful,
> >> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> >> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
> >> - * GNU General Public License for more details.
> >> - *
> >>    */
> >>   =

> >>   #define BOARD_PBL_START start_8devices_lima
> > =



-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
