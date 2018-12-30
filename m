Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gdQiM-0008NB-T1
 for barebox@lists.infradead.org; Sun, 30 Dec 2018 02:20:36 +0000
Date: Sun, 30 Dec 2018 03:20:19 +0100
From: Roland Hieber <r.hieber@pengutronix.de>
Message-ID: <20181230022019.rfj542p4gvwyc4ty@pengutronix.de>
References: <20181222085012.9852-1-linux@rempel-privat.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181222085012.9852-1-linux@rempel-privat.de>
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 1/3] MIPS: migrate all files to SPDX
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: barebox@lists.infradead.org

On Sat, Dec 22, 2018 at 09:50:10AM +0100, Oleksij Rempel wrote:
> Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
> ---
>  arch/mips/boards/8devices-lima/lowlevel.S         | 14 +-------------
>  arch/mips/boards/black-swift/lowlevel.S           | 14 +-------------
>  arch/mips/boards/dlink-dir-320/board.c            | 14 +-------------
>  arch/mips/boards/dptechnics-dpt-module/lowlevel.S |  5 +----
>  arch/mips/boards/img-ci20/lowlevel.S              | 14 +-------------
>  .../boards/loongson-ls1b/include/board/debug_ll.h | 14 +-------------
>  arch/mips/boards/loongson-ls1b/lowlevel.S         | 14 +-------------
>  .../boards/netgear-wg102/include/board/debug_ll.h | 14 +-------------
>  arch/mips/boards/netgear-wg102/lowlevel.S         | 14 +-------------
>  .../boards/qemu-malta/include/board/debug_ll.h    | 14 +-------------
>  arch/mips/boards/qemu-malta/lowlevel.S            | 14 +-------------
>  arch/mips/boards/ritmix-rzx50/lowlevel.S          | 14 +-------------
>  arch/mips/boards/tplink-mr3020/lowlevel.S         | 14 +-------------
>  arch/mips/boards/tplink-wdr4300/lowlevel.S        | 14 +-------------
>  arch/mips/boot/dtb.c                              | 14 +-------------
>  arch/mips/boot/main_entry-pbl.c                   | 15 +--------------
>  arch/mips/boot/main_entry.c                       | 15 +--------------
>  arch/mips/boot/start.S                            | 14 +-------------
>  arch/mips/dts/img-ci20.dts                        | 12 +-----------
>  arch/mips/include/asm/barebox.h                   | 14 +-------------
>  arch/mips/include/asm/bitops.h                    | 14 +-------------
>  arch/mips/include/asm/common.h                    | 14 +-------------
>  arch/mips/include/asm/debug_ll_ns16550.h          | 14 +-------------
>  arch/mips/include/asm/dma.h                       |  4 +---
>  arch/mips/include/asm/gt64120.h                   | 11 +----------
>  arch/mips/include/asm/module.h                    | 14 +-------------
>  arch/mips/include/asm/pbl_macros.h                | 14 +-------------
>  arch/mips/include/asm/pbl_nmon.h                  | 14 +-------------
>  arch/mips/include/asm/string.h                    | 14 +-------------
>  arch/mips/lib/barebox.lds.S                       | 14 +-------------
>  arch/mips/lib/cpu-probe.c                         |  6 +-----
>  arch/mips/lib/cpuinfo.c                           | 14 +-------------
>  arch/mips/lib/csrc-r4k.c                          | 14 +-------------
>  arch/mips/lib/dma-default.c                       | 11 +----------
>  arch/mips/lib/pbl.lds.S                           |  2 +-
>  arch/mips/mach-ar231x/ar231x.c                    |  6 +-----
>  arch/mips/mach-ar231x/ar231x_reset.c              |  6 +-----
>  arch/mips/mach-ar231x/board.c                     |  6 +-----
>  arch/mips/mach-ar231x/include/mach/ar2312_regs.h  |  6 +-----
>  .../mach-ar231x/include/mach/ar231x_platform.h    |  6 +-----
>  arch/mips/mach-ar231x/include/mach/debug_ll.h     | 14 +-------------
>  arch/mips/mach-ath79/bbu.c                        | 10 +---------
>  arch/mips/mach-ath79/include/mach/ar71xx_regs.h   |  5 +----
>  arch/mips/mach-ath79/include/mach/ath79.h         |  5 +----
>  arch/mips/mach-ath79/include/mach/debug_ll.h      | 14 +-------------
>  .../mach-ath79/include/mach/debug_ll_ar9331.h     | 14 +-------------
>  .../mach-ath79/include/mach/debug_ll_ar9344.h     | 14 +-------------
>  arch/mips/mach-ath79/reset.c                      | 14 +-------------
>  arch/mips/mach-bcm47xx/include/mach/debug_ll.h    | 14 +-------------
>  arch/mips/mach-bcm47xx/include/mach/hardware.h    | 14 +-------------
>  arch/mips/mach-bcm47xx/reset.c                    | 14 +-------------
>  arch/mips/mach-loongson/include/mach/debug_ll.h   | 14 +-------------
>  arch/mips/mach-loongson/include/mach/loongson1.h  |  6 +-----
>  arch/mips/mach-loongson/loongson1_reset.c         | 11 +----------
>  arch/mips/mach-malta/include/mach/debug_ll.h      | 14 +-------------
>  arch/mips/mach-malta/include/mach/hardware.h      | 14 +-------------
>  arch/mips/mach-malta/reset.c                      | 14 +-------------
>  arch/mips/mach-xburst/csrc-jz4750.c               | 14 +-------------
>  arch/mips/mach-xburst/include/mach/debug_ll.h     | 14 +-------------
>  .../mach-xburst/include/mach/debug_ll_jz4750d.h   | 14 +-------------
>  .../mach-xburst/include/mach/debug_ll_jz4780.h    | 14 +-------------
>  arch/mips/mach-xburst/include/mach/jz4750d_regs.h |  5 +----
>  arch/mips/mach-xburst/include/mach/jz4780.h       | 12 +-----------
>  arch/mips/mach-xburst/reset-jz4750.c              | 14 +-------------
>  arch/mips/pbl/zbarebox.lds.S                      | 15 +--------------
>  65 files changed, 65 insertions(+), 717 deletions(-)
> 
> diff --git a/arch/mips/boards/8devices-lima/lowlevel.S b/arch/mips/boards/8devices-lima/lowlevel.S
> index a619747f3..f33cfe4d9 100644
> --- a/arch/mips/boards/8devices-lima/lowlevel.S
> +++ b/arch/mips/boards/8devices-lima/lowlevel.S
> @@ -1,18 +1,6 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
>  /*
>   * Copyright (C) 2018 Oleksij Rempel <linux@rempel-privat.de>
> - *
> - * This file is part of barebox.
> - * See file CREDITS for list of people who contributed to this project.

Ah yes, right, we don't have a CREDITS file.

> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2
> - * as published by the Free Software Foundation.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
> - * GNU General Public License for more details.
> - *

I noticed you are consistently reducing the license boilerplate to the
SPDX tag only, also deleting the warranty notices. I am not a lawyer
(yet), but I think we should retain that notice at least somewhere, also
with a note saying what these SPDX-License-Identifier tags mean. I've
posted an appriopriate patch just now ("[PATCH] README: add licensing
information").

>   */
>  
>  #define BOARD_PBL_START start_8devices_lima
> diff --git a/arch/mips/boards/black-swift/lowlevel.S b/arch/mips/boards/black-swift/lowlevel.S
> index 3a9e780db..104dd26d1 100644
> --- a/arch/mips/boards/black-swift/lowlevel.S
> +++ b/arch/mips/boards/black-swift/lowlevel.S
> @@ -1,19 +1,7 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
>  /*
>   * Copyright (C) 2013, 2015 Antony Pavlov <antonynpavlov@gmail.com>
>   * Copyright (C) 2013 Oleksij Rempel <linux@rempel-privat.de>
> - *
> - * This file is part of barebox.
> - * See file CREDITS for list of people who contributed to this project.
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2
> - * as published by the Free Software Foundation.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
> - * GNU General Public License for more details.
> - *
>   */
>  
>  #define BOARD_PBL_START start_black_swift
> diff --git a/arch/mips/boards/dlink-dir-320/board.c b/arch/mips/boards/dlink-dir-320/board.c
> index d00e4fab4..b75812cef 100644
> --- a/arch/mips/boards/dlink-dir-320/board.c
> +++ b/arch/mips/boards/dlink-dir-320/board.c
> @@ -1,18 +1,6 @@
> +// SPDX-License-Identifier: GPL-2.0-only
>  /*
>   * Copyright (C) 2011, 2014 Antony Pavlov <antonynpavlov@gmail.com>
> - *
> - * This file is part of barebox.
> - * See file CREDITS for list of people who contributed to this project.
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2
> - * as published by the Free Software Foundation.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - *
>   */
>  
>  #include <common.h>
> diff --git a/arch/mips/boards/dptechnics-dpt-module/lowlevel.S b/arch/mips/boards/dptechnics-dpt-module/lowlevel.S
> index 6601427ba..801c51909 100644
> --- a/arch/mips/boards/dptechnics-dpt-module/lowlevel.S
> +++ b/arch/mips/boards/dptechnics-dpt-module/lowlevel.S
> @@ -1,9 +1,6 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
>  /*
>   * Copyright (C) 2017 Oleksij Rempel <linux@rempel-privat.de>
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2
> - * as published by the Free Software Foundation.
>   */
>  
>  #define BOARD_PBL_START start_dptechnics_dpt_module
> diff --git a/arch/mips/boards/img-ci20/lowlevel.S b/arch/mips/boards/img-ci20/lowlevel.S
> index ad3c851e0..056df17bf 100644
> --- a/arch/mips/boards/img-ci20/lowlevel.S
> +++ b/arch/mips/boards/img-ci20/lowlevel.S
> @@ -1,20 +1,8 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
>  /*
>   * Startup Code for Imagination Creator CI20 board
>   *
>   * Copyright (C) 2014 Antony Pavlov <antonynpavlov@gmail.com>
> - *
> - * This file is part of barebox.
> - * See file CREDITS for list of people who contributed to this project.
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2
> - * as published by the Free Software Foundation.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
> - * GNU General Public License for more details.
> - *
>   */
>  
>  #define BOARD_PBL_START start_img_ci20
> diff --git a/arch/mips/boards/loongson-ls1b/include/board/debug_ll.h b/arch/mips/boards/loongson-ls1b/include/board/debug_ll.h
> index e60ce4cec..05420f73a 100644
> --- a/arch/mips/boards/loongson-ls1b/include/board/debug_ll.h
> +++ b/arch/mips/boards/loongson-ls1b/include/board/debug_ll.h
> @@ -1,18 +1,6 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
>  /*
>   * Copyright (C) 2014 Antony Pavlov <antonynpavlov@gmail.com>
> - *
> - * This file is part of barebox.
> - * See file CREDITS for list of people who contributed to this project.
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2
> - * as published by the Free Software Foundation.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - *
>   */
>  
>  /** @file
> diff --git a/arch/mips/boards/loongson-ls1b/lowlevel.S b/arch/mips/boards/loongson-ls1b/lowlevel.S
> index d17a0f79d..37744e9fa 100644
> --- a/arch/mips/boards/loongson-ls1b/lowlevel.S
> +++ b/arch/mips/boards/loongson-ls1b/lowlevel.S
> @@ -1,18 +1,6 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
>  /*
>   * Copyright (C) 2014 Antony Pavlov <antonynpavlov@gmail.com>
> - *
> - * This file is part of barebox.
> - * See file CREDITS for list of people who contributed to this project.
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2
> - * as published by the Free Software Foundation.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
> - * GNU General Public License for more details.
> - *
>   */
>  
>  #define BOARD_PBL_START start_loongson_ls1b
> diff --git a/arch/mips/boards/netgear-wg102/include/board/debug_ll.h b/arch/mips/boards/netgear-wg102/include/board/debug_ll.h
> index 2725032ba..b0c1cd173 100644
> --- a/arch/mips/boards/netgear-wg102/include/board/debug_ll.h
> +++ b/arch/mips/boards/netgear-wg102/include/board/debug_ll.h
> @@ -1,18 +1,6 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
>  /*
>   * Copyright (C) 2013 Oleksij Rempel <linux@rempel-privat.de>
> - *
> - * This file is part of barebox.
> - * See file CREDITS for list of people who contributed to this project.
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2
> - * as published by the Free Software Foundation.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - *
>   */
>  
>  /** @file
> diff --git a/arch/mips/boards/netgear-wg102/lowlevel.S b/arch/mips/boards/netgear-wg102/lowlevel.S
> index f449d4e05..e48dded26 100644
> --- a/arch/mips/boards/netgear-wg102/lowlevel.S
> +++ b/arch/mips/boards/netgear-wg102/lowlevel.S
> @@ -1,19 +1,7 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
>  /*
>   * Copyright (C) 2013 Antony Pavlov <antonynpavlov@gmail.com>
>   * Copyright (C) 2013 Oleksij Rempel <linux@rempel-privat.de>
> - *
> - * This file is part of barebox.
> - * See file CREDITS for list of people who contributed to this project.
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2
> - * as published by the Free Software Foundation.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
> - * GNU General Public License for more details.
> - *
>   */
>  
>  #define BOARD_PBL_START start_netgear_wg102
> diff --git a/arch/mips/boards/qemu-malta/include/board/debug_ll.h b/arch/mips/boards/qemu-malta/include/board/debug_ll.h
> index abeee5345..5b112b8ae 100644
> --- a/arch/mips/boards/qemu-malta/include/board/debug_ll.h
> +++ b/arch/mips/boards/qemu-malta/include/board/debug_ll.h
> @@ -1,18 +1,6 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
>  /*
>   * Copyright (C) 2013 Antony Pavlov <antonynpavlov@gmail.com>
> - *
> - * This file is part of barebox.
> - * See file CREDITS for list of people who contributed to this project.
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2
> - * as published by the Free Software Foundation.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - *
>   */
>  
>  #ifndef __INCLUDE_BOARD_DEBUG_LL_QEMU_MALTA_H__
> diff --git a/arch/mips/boards/qemu-malta/lowlevel.S b/arch/mips/boards/qemu-malta/lowlevel.S
> index e6d57bcff..3861ae9e4 100644
> --- a/arch/mips/boards/qemu-malta/lowlevel.S
> +++ b/arch/mips/boards/qemu-malta/lowlevel.S
> @@ -1,20 +1,8 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
>  /*
>   * Startup Code for MIPS CPU
>   *
>   * Copyright (C) 2012 Antony Pavlov <antonynpavlov@gmail.com>
> - *
> - * This file is part of barebox.
> - * See file CREDITS for list of people who contributed to this project.
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2
> - * as published by the Free Software Foundation.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
> - * GNU General Public License for more details.
> - *
>   */
>  
>  #define BOARD_PBL_START start_qemu_malta
> diff --git a/arch/mips/boards/ritmix-rzx50/lowlevel.S b/arch/mips/boards/ritmix-rzx50/lowlevel.S
> index b669963ca..7a9743835 100644
> --- a/arch/mips/boards/ritmix-rzx50/lowlevel.S
> +++ b/arch/mips/boards/ritmix-rzx50/lowlevel.S
> @@ -1,20 +1,8 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
>  /*
>   * Startup Code for Ritmix RZX-50 board
>   *
>   * Copyright (C) 2013 Antony Pavlov <antonynpavlov@gmail.com>
> - *
> - * This file is part of barebox.
> - * See file CREDITS for list of people who contributed to this project.
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2
> - * as published by the Free Software Foundation.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
> - * GNU General Public License for more details.
> - *
>   */
>  
>  #define BOARD_PBL_START start_ritmix_rzx50
> diff --git a/arch/mips/boards/tplink-mr3020/lowlevel.S b/arch/mips/boards/tplink-mr3020/lowlevel.S
> index 1efcbaa69..e3e6a61b7 100644
> --- a/arch/mips/boards/tplink-mr3020/lowlevel.S
> +++ b/arch/mips/boards/tplink-mr3020/lowlevel.S
> @@ -1,19 +1,7 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
>  /*
>   * Copyright (C) 2013, 2015 Antony Pavlov <antonynpavlov@gmail.com>
>   * Copyright (C) 2013 Oleksij Rempel <linux@rempel-privat.de>
> - *
> - * This file is part of barebox.
> - * See file CREDITS for list of people who contributed to this project.
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2
> - * as published by the Free Software Foundation.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
> - * GNU General Public License for more details.
> - *
>   */
>  
>  #define BOARD_PBL_START start_tplink_mr3020
> diff --git a/arch/mips/boards/tplink-wdr4300/lowlevel.S b/arch/mips/boards/tplink-wdr4300/lowlevel.S
> index 9c4e6b7fa..4d7301cb7 100644
> --- a/arch/mips/boards/tplink-wdr4300/lowlevel.S
> +++ b/arch/mips/boards/tplink-wdr4300/lowlevel.S
> @@ -1,18 +1,6 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
>  /*
>   * Copyright (C) 2017 Oleksij Rempel <o.rempel@pengutronix.de>
> - *
> - * This file is part of barebox.
> - * See file CREDITS for list of people who contributed to this project.
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2
> - * as published by the Free Software Foundation.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
> - * GNU General Public License for more details.
> - *
>   */
>  
>  #define BOARD_PBL_START start_tplink_wdr4300
> diff --git a/arch/mips/boot/dtb.c b/arch/mips/boot/dtb.c
> index b9ea8f41e..ea30e16f2 100644
> --- a/arch/mips/boot/dtb.c
> +++ b/arch/mips/boot/dtb.c
> @@ -1,21 +1,9 @@
> +// SPDX-License-Identifier: GPL-2.0-only
>  /*
>   * Copyright (C) 2013 Antony Pavlov <antonynpavlov@gmail.com>
>   *
>   * Based on arch/arm/cpu/dtb.c:
>   * Copyright (C) 2013 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
> - *
> - * See file CREDITS for list of people who contributed to this
> - * project.
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2
> - * as published by the Free Software Foundation.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - *
>   */
>  #include <common.h>
>  #include <init.h>
> diff --git a/arch/mips/boot/main_entry-pbl.c b/arch/mips/boot/main_entry-pbl.c
> index e608fcb35..b40887b06 100644
> --- a/arch/mips/boot/main_entry-pbl.c
> +++ b/arch/mips/boot/main_entry-pbl.c
> @@ -1,19 +1,6 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
>  /*
>   * Copyright (C) 2012 Antony Pavlov <antonynpavlov@gmail.com>
> - *
> - * This file is part of barebox.
> - * See file CREDITS for list of people who contributed to this project.
> - *
> - * This program is free software; you can redistribute it and/or
> - * modify it under the terms of the GNU General Public License as
> - * published by the Free Software Foundation; either version 2 of
> - * the License, or (at your option) any later version.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - *
>   */
>  
>  #include <common.h>
> diff --git a/arch/mips/boot/main_entry.c b/arch/mips/boot/main_entry.c
> index e33ae64e7..84325da93 100644
> --- a/arch/mips/boot/main_entry.c
> +++ b/arch/mips/boot/main_entry.c
> @@ -1,19 +1,6 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
>  /*
>   * Copyright (C) 2012 Antony Pavlov <antonynpavlov@gmail.com>
> - *
> - * This file is part of barebox.
> - * See file CREDITS for list of people who contributed to this project.
> - *
> - * This program is free software; you can redistribute it and/or
> - * modify it under the terms of the GNU General Public License as
> - * published by the Free Software Foundation; either version 2 of
> - * the License, or (at your option) any later version.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - *
>   */
>  
>  #include <init.h>
> diff --git a/arch/mips/boot/start.S b/arch/mips/boot/start.S
> index 39ac9414d..6efe03e98 100644
> --- a/arch/mips/boot/start.S
> +++ b/arch/mips/boot/start.S
> @@ -1,20 +1,8 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
>  /*
>   * Startup Code for MIPS CPU
>   *
>   * Copyright (C) 2011, 2015 Antony Pavlov <antonynpavlov@gmail.com>
> - *
> - * This file is part of barebox.
> - * See file CREDITS for list of people who contributed to this project.
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2
> - * as published by the Free Software Foundation.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - *
>   */
>  
>  #include <asm/pbl_macros.h>
> diff --git a/arch/mips/dts/img-ci20.dts b/arch/mips/dts/img-ci20.dts
> index d98566602..e1d3280c4 100644
> --- a/arch/mips/dts/img-ci20.dts
> +++ b/arch/mips/dts/img-ci20.dts
> @@ -1,19 +1,9 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
>  /*
>   * CI20 device tree
>   *
>   * Copyright (c) 2013 Imagination Technologies
>   * Author: Paul Burton <paul.burton@imgtec.com>
> - *
> - * This program is free software; you can redistribute it and/or
> - * modify it under the terms of the GNU General Public License as
> - * published by the Free Software Foundation; either version 2 of
> - * the License, or (at your option) any later version.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - *
>   */
>  
>  /dts-v1/;
> diff --git a/arch/mips/include/asm/barebox.h b/arch/mips/include/asm/barebox.h
> index e5b964ca1..2d13ee932 100644
> --- a/arch/mips/include/asm/barebox.h
> +++ b/arch/mips/include/asm/barebox.h
> @@ -1,16 +1,4 @@
> -/*
> - * This program is free software; you can redistribute it and/or
> - * modify it under the terms of the GNU General Public License as
> - * published by the Free Software Foundation; either version 2 of
> - * the License, or (at your option) any later version.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - *
> - *
> - */
> +/* SPDX-License-Identifier: GPL-2.0-or-later */
>  
>  #ifndef _ASM_MIPS_BAREBOX_H_
>  #define _ASM_MIPS_BAREBOX_H_
> diff --git a/arch/mips/include/asm/bitops.h b/arch/mips/include/asm/bitops.h
> index e77ab8320..e2bdf98e9 100644
> --- a/arch/mips/include/asm/bitops.h
> +++ b/arch/mips/include/asm/bitops.h
> @@ -1,16 +1,4 @@
> -/*
> - * This program is free software; you can redistribute it and/or
> - * modify it under the terms of the GNU General Public License as
> - * published by the Free Software Foundation; either version 2 of
> - * the License, or (at your option) any later version.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - *
> - *
> - */
> +/* SPDX-License-Identifier: GPL-2.0-or-later */
>  
>  #ifndef _ASM_BITOPS_H_
>  #define _ASM_BITOPS_H_
> diff --git a/arch/mips/include/asm/common.h b/arch/mips/include/asm/common.h
> index 2f5419f7d..531659195 100644
> --- a/arch/mips/include/asm/common.h
> +++ b/arch/mips/include/asm/common.h
> @@ -1,16 +1,4 @@
> -/*
> - * This program is free software; you can redistribute it and/or
> - * modify it under the terms of the GNU General Public License as
> - * published by the Free Software Foundation; either version 2 of
> - * the License, or (at your option) any later version.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - *
> - *
> - */
> +/* SPDX-License-Identifier: GPL-2.0-or-later */

Hmm. There is no copyright notice in that file, but given that it is
mostly empty otherwise, nobody will probably care.

>  
>  /**
>   * @file
> diff --git a/arch/mips/include/asm/debug_ll_ns16550.h b/arch/mips/include/asm/debug_ll_ns16550.h
> index 058814ecf..df58c4cf0 100644
> --- a/arch/mips/include/asm/debug_ll_ns16550.h
> +++ b/arch/mips/include/asm/debug_ll_ns16550.h
> @@ -1,18 +1,6 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
>  /*
>   * Copyright (C) 2012, 2013 Antony Pavlov <antonynpavlov@gmail.com>
> - *
> - * This file is part of barebox.
> - * See file CREDITS for list of people who contributed to this project.
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2
> - * as published by the Free Software Foundation.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - *
>   */
>  
>  /** @file
> diff --git a/arch/mips/include/asm/dma.h b/arch/mips/include/asm/dma.h
> index 30a58c78b..e0b468917 100644
> --- a/arch/mips/include/asm/dma.h
> +++ b/arch/mips/include/asm/dma.h
> @@ -1,8 +1,6 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
>  /*
>   * Copyright (C) 2012 by Marc Kleine-Budde <mkl@pengutronix.de>
> - *
> - * This file is released under the GPLv2
> - *
>   */
>  
>  #ifndef __ASM_DMA_H
> diff --git a/arch/mips/include/asm/gt64120.h b/arch/mips/include/asm/gt64120.h
> index 88fa1fa5f..34d238259 100644
> --- a/arch/mips/include/asm/gt64120.h
> +++ b/arch/mips/include/asm/gt64120.h
> @@ -1,19 +1,10 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
>  /*
>   * Copyright (C) 2000, 2004, 2005  MIPS Technologies, Inc.
>   *	All rights reserved.
>   *	Authors: Carsten Langgaard <carstenl@mips.com>
>   *		 Maciej W. Rozycki <macro@mips.com>
>   * Copyright (C) 2005 Ralf Baechle (ralf@linux-mips.org)
> - *
> - *  This program is free software; you can distribute it and/or modify it
> - *  under the terms of the GNU General Public License (Version 2) as
> - *  published by the Free Software Foundation.
> - *
> - *  This program is distributed in the hope it will be useful, but WITHOUT
> - *  ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
> - *  FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
> - *  for more details.
> - *
>   */
>  #ifndef _ASM_GT64120_H
>  #define _ASM_GT64120_H
> diff --git a/arch/mips/include/asm/module.h b/arch/mips/include/asm/module.h
> index 0978d8947..1ffceeebd 100644
> --- a/arch/mips/include/asm/module.h
> +++ b/arch/mips/include/asm/module.h
> @@ -1,16 +1,4 @@
> -/*
> - * This program is free software; you can redistribute it and/or
> - * modify it under the terms of the GNU General Public License as
> - * published by the Free Software Foundation; either version 2 of
> - * the License, or (at your option) any later version.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - *
> - *
> - */
> +/* SPDX-License-Identifier: GPL-2.0-or-later */
>  
>  #ifndef _ASM_MIPS_MODULE_H_
>  #define _ASM_MIPS_MODULE_H_
> diff --git a/arch/mips/include/asm/pbl_macros.h b/arch/mips/include/asm/pbl_macros.h
> index bb3182cda..e78d1afe6 100644
> --- a/arch/mips/include/asm/pbl_macros.h
> +++ b/arch/mips/include/asm/pbl_macros.h
> @@ -1,21 +1,9 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
>  /*
>   * Startup Code for MIPS CPU
>   *
>   * Copyright (C) 2011, 2012 Antony Pavlov <antonynpavlov@gmail.com>
>   * ADR macro copyrighted (C) 2009 by Shinya Kuribayashi <skuribay@pobox.com>
> - *
> - * This file is part of barebox.
> - * See file CREDITS for list of people who contributed to this project.
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2
> - * as published by the Free Software Foundation.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
> - * GNU General Public License for more details.
> - *
>   */
>  
>  #ifndef __ASM_PBL_MACROS_H
> diff --git a/arch/mips/include/asm/pbl_nmon.h b/arch/mips/include/asm/pbl_nmon.h
> index e0326bd7c..0e4ec3996 100644
> --- a/arch/mips/include/asm/pbl_nmon.h
> +++ b/arch/mips/include/asm/pbl_nmon.h
> @@ -1,20 +1,8 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
>  /*
>   * nano-monitor for MIPS CPU
>   *
>   * Copyright (C) 2013 Antony Pavlov <antonynpavlov@gmail.com>
> - *
> - * This file is part of barebox.
> - * See file CREDITS for list of people who contributed to this project.
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2
> - * as published by the Free Software Foundation.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
> - * GNU General Public License for more details.
> - *
>   */
>  
>  #include <mach/debug_ll.h>
> diff --git a/arch/mips/include/asm/string.h b/arch/mips/include/asm/string.h
> index a797a7459..9e5814976 100644
> --- a/arch/mips/include/asm/string.h
> +++ b/arch/mips/include/asm/string.h
> @@ -1,16 +1,4 @@
> -/*
> - * This program is free software; you can redistribute it and/or
> - * modify it under the terms of the GNU General Public License as
> - * published by the Free Software Foundation; either version 2 of
> - * the License, or (at your option) any later version.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - *
> - *
> - */
> +/* SPDX-License-Identifier: GPL-2.0-or-later */
>  
>  /**
>   * @file
> diff --git a/arch/mips/lib/barebox.lds.S b/arch/mips/lib/barebox.lds.S
> index c4026bb7f..8ddf95451 100644
> --- a/arch/mips/lib/barebox.lds.S
> +++ b/arch/mips/lib/barebox.lds.S
> @@ -1,18 +1,6 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
>  /*
>   * Copyright (C) 2011 Antony Pavlov <antonynpavlov@gmail.com>
> - *
> - * This file is part of barebox.
> - * See file CREDITS for list of people who contributed to this project.
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2
> - * as published by the Free Software Foundation.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - *
>   */
>  
>  
> diff --git a/arch/mips/lib/cpu-probe.c b/arch/mips/lib/cpu-probe.c
> index b5d63db18..cf6384974 100644
> --- a/arch/mips/lib/cpu-probe.c
> +++ b/arch/mips/lib/cpu-probe.c
> @@ -1,3 +1,4 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
>  /*
>   * Processor capabilities determination functions.
>   *
> @@ -5,11 +6,6 @@
>   * Copyright (C) 1994 - 2006 Ralf Baechle
>   * Copyright (C) 2003, 2004  Maciej W. Rozycki
>   * Copyright (C) 2001, 2004  MIPS Inc.
> - *
> - * This program is free software; you can redistribute it and/or
> - * modify it under the terms of the GNU General Public License
> - * as published by the Free Software Foundation; either version
> - * 2 of the License, or (at your option) any later version.
>   */
>  #include <common.h>
>  #include <asm/mipsregs.h>
> diff --git a/arch/mips/lib/cpuinfo.c b/arch/mips/lib/cpuinfo.c
> index fb02a4d20..fd27920f9 100644
> --- a/arch/mips/lib/cpuinfo.c
> +++ b/arch/mips/lib/cpuinfo.c
> @@ -1,20 +1,8 @@
> +// SPDX-License-Identifier: GPL-2.0-only
>  /*
>   * cpuinfo - show information about MIPS CPU
>   *
>   * Copyright (C) 2011 Antony Pavlov <antonynpavlov@gmail.com>
> - *
> - * This file is part of barebox.
> - * See file CREDITS for list of people who contributed to this project.
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2
> - * as published by the Free Software Foundation.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - *
>   */
>  
>  #include <common.h>
> diff --git a/arch/mips/lib/csrc-r4k.c b/arch/mips/lib/csrc-r4k.c
> index 6f6e18c8e..9facf04bd 100644
> --- a/arch/mips/lib/csrc-r4k.c
> +++ b/arch/mips/lib/csrc-r4k.c
> @@ -1,18 +1,6 @@
> +// SPDX-License-Identifier: GPL-2.0-only
>  /*
>   * Copyright (C) 2011 Antony Pavlov <antonynpavlov@gmail.com>
> - *
> - * This file is part of barebox.
> - * See file CREDITS for list of people who contributed to this project.
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2
> - * as published by the Free Software Foundation.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - *
>   */
>  
>  /**
> diff --git a/arch/mips/lib/dma-default.c b/arch/mips/lib/dma-default.c
> index 71c1e423b..fbe627c24 100644
> --- a/arch/mips/lib/dma-default.c
> +++ b/arch/mips/lib/dma-default.c
> @@ -1,15 +1,6 @@
> +// SPDX-License-Identifier: GPL-2.0-only
>  /*
>   * (C) Copyright 2015, 2016 Peter Mamonov <pmamonov@gmail.com>
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2
> - * as published by the Free Software Foundation.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - *
>   */
>  
>  #include <dma.h>
> diff --git a/arch/mips/lib/pbl.lds.S b/arch/mips/lib/pbl.lds.S
> index 7ca9ae151..1f0285dd6 100644
> --- a/arch/mips/lib/pbl.lds.S
> +++ b/arch/mips/lib/pbl.lds.S
> @@ -1,4 +1,4 @@
> -// SPDX-License-Identifier: GPL-2.0+
> +/* SPDX-License-Identifier: GPL-2.0-or-later */
>  /*
>   * (C) Copyright 2018 Oleksij Rempel <o.rempel@pengutronix.de>, Pengutronix
>   * (C) Copyright 2012 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
> diff --git a/arch/mips/mach-ar231x/ar231x.c b/arch/mips/mach-ar231x/ar231x.c
> index 3a0103b5c..7dc4156e6 100644
> --- a/arch/mips/mach-ar231x/ar231x.c
> +++ b/arch/mips/mach-ar231x/ar231x.c
> @@ -1,3 +1,4 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
>  /*
>   * Based on Linux driver:
>   *  Copyright (C) 2003 Atheros Communications, Inc.,  All Rights Reserved.
> @@ -6,11 +7,6 @@
>   *  Copyright (C) 2006-2009 Felix Fietkau <nbd@openwrt.org>
>   * Ported to Barebox:
>   *  Copyright (C) 2013 Oleksij Rempel <linux@rempel-privat.de>
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License as published by
> - * the Free Software Foundation; either version 2 of the License, or
> - * (at your option) any later version.
>   */
>  
>  #include <common.h>
> diff --git a/arch/mips/mach-ar231x/ar231x_reset.c b/arch/mips/mach-ar231x/ar231x_reset.c
> index 7c322d87b..f88167ba4 100644
> --- a/arch/mips/mach-ar231x/ar231x_reset.c
> +++ b/arch/mips/mach-ar231x/ar231x_reset.c
> @@ -1,10 +1,6 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
>  /*
>   * Copyright (C) 2013 Oleksij Rempel <linux@rempel-privat.de>
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License as published by
> - * the Free Software Foundation; either version 2 of the License, or
> - * (at your option) any later version.
>   */
>  
>  #include <common.h>
> diff --git a/arch/mips/mach-ar231x/board.c b/arch/mips/mach-ar231x/board.c
> index 8bd1787cb..48bd7360f 100644
> --- a/arch/mips/mach-ar231x/board.c
> +++ b/arch/mips/mach-ar231x/board.c
> @@ -1,3 +1,4 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
>  /*
>   * Based on Linux driver:
>   *  Copyright (C) 2003 Atheros Communications, Inc.,  All Rights Reserved.
> @@ -6,11 +7,6 @@
>   *  Copyright (C) 2006-2009 Felix Fietkau <nbd@openwrt.org>
>   * Ported to Barebox:
>   *  Copyright (C) 2013 Oleksij Rempel <linux@rempel-privat.de>
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License as published by
> - * the Free Software Foundation; either version 2 of the License, or
> - * (at your option) any later version.
>   */
>  
>  
> diff --git a/arch/mips/mach-ar231x/include/mach/ar2312_regs.h b/arch/mips/mach-ar231x/include/mach/ar2312_regs.h
> index 7ac1b09b9..fa0ad5dfc 100644
> --- a/arch/mips/mach-ar231x/include/mach/ar2312_regs.h
> +++ b/arch/mips/mach-ar231x/include/mach/ar2312_regs.h
> @@ -1,3 +1,4 @@
> +/* SPDX-License-Identifier: GPL-2.0-or-later */
>  /*
>   * Based on Linux driver:
>   *  Copyright (C) 2003 Atheros Communications, Inc.,  All Rights Reserved.
> @@ -5,11 +6,6 @@
>   *  Copyright (C) 2006-2009 Felix Fietkau <nbd@openwrt.org>
>   * Ported to Barebox:
>   *  Copyright (C) 2013 Oleksij Rempel <linux@rempel-privat.de>
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License as published by
> - * the Free Software Foundation; either version 2 of the License, or
> - * (at your option) any later version.
>   */
>  
>  #ifndef AR2312_H
> diff --git a/arch/mips/mach-ar231x/include/mach/ar231x_platform.h b/arch/mips/mach-ar231x/include/mach/ar231x_platform.h
> index 18f55b69c..561ec30c6 100644
> --- a/arch/mips/mach-ar231x/include/mach/ar231x_platform.h
> +++ b/arch/mips/mach-ar231x/include/mach/ar231x_platform.h
> @@ -1,3 +1,4 @@
> +/* SPDX-License-Identifier: GPL-2.0-or-later */
>  /*
>   * Based on Linux driver:
>   *  Copyright (C) 2003 Atheros Communications, Inc.,  All Rights Reserved.
> @@ -6,11 +7,6 @@
>   *  Copyright (C) 2006-2009 Felix Fietkau <nbd@openwrt.org>
>   * Ported to Barebox:
>   *  Copyright (C) 2013 Oleksij Rempel <linux@rempel-privat.de>
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License as published by
> - * the Free Software Foundation; either version 2 of the License, or
> - * (at your option) any later version.
>   */
>  
>  #ifndef __AR231X_PLATFORM_H
> diff --git a/arch/mips/mach-ar231x/include/mach/debug_ll.h b/arch/mips/mach-ar231x/include/mach/debug_ll.h
> index ecec15916..50f442aa3 100644
> --- a/arch/mips/mach-ar231x/include/mach/debug_ll.h
> +++ b/arch/mips/mach-ar231x/include/mach/debug_ll.h
> @@ -1,18 +1,6 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
>  /*
>   * Copyright (C) 2013 Antony Pavlov <antonynpavlov@gmail.com>
> - *
> - * This file is part of barebox.
> - * See file CREDITS for list of people who contributed to this project.
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2
> - * as published by the Free Software Foundation.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - *
>   */
>  
>  #ifndef __MACH_AR231X_DEBUG_LL__
> diff --git a/arch/mips/mach-ath79/bbu.c b/arch/mips/mach-ath79/bbu.c
> index 701b5752e..36214798c 100644
> --- a/arch/mips/mach-ath79/bbu.c
> +++ b/arch/mips/mach-ath79/bbu.c
> @@ -1,14 +1,6 @@
> +// SPDX-License-Identifier: GPL-2.0-only
>  /*
>   * Copyright (c) 2017 Oleksij Rempel <linux@rempel-privat.de>
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2
> - * as published by the Free Software Foundation.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
>   */
>  
>  #include <common.h>
> diff --git a/arch/mips/mach-ath79/include/mach/ar71xx_regs.h b/arch/mips/mach-ath79/include/mach/ar71xx_regs.h
> index f73700b5b..f7737d682 100644
> --- a/arch/mips/mach-ath79/include/mach/ar71xx_regs.h
> +++ b/arch/mips/mach-ath79/include/mach/ar71xx_regs.h
> @@ -1,3 +1,4 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
>  /*
>   *  Atheros AR71XX/AR724X/AR913X SoC register definitions
>   *
> @@ -6,10 +7,6 @@
>   *  Copyright (C) 2008 Imre Kaloz <kaloz@openwrt.org>
>   *
>   *  Parts of this file are based on Atheros' 2.6.15/2.6.31 BSP
> - *
> - *  This program is free software; you can redistribute it and/or modify it
> - *  under the terms of the GNU General Public License version 2 as published
> - *  by the Free Software Foundation.
>   */
>  
>  #ifndef __ASM_MACH_AR71XX_REGS_H
> diff --git a/arch/mips/mach-ath79/include/mach/ath79.h b/arch/mips/mach-ath79/include/mach/ath79.h
> index ff53406fb..206bd2289 100644
> --- a/arch/mips/mach-ath79/include/mach/ath79.h
> +++ b/arch/mips/mach-ath79/include/mach/ath79.h
> @@ -1,3 +1,4 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
>  /*
>   *  Atheros AR71XX/AR724X/AR913X common definitions
>   *
> @@ -5,10 +6,6 @@
>   *  Copyright (C) 2008 Imre Kaloz <kaloz@openwrt.org>
>   *
>   *  Parts of this file are based on Atheros' 2.6.15 BSP
> - *
> - *  This program is free software; you can redistribute it and/or modify it
> - *  under the terms of the GNU General Public License version 2 as published
> - *  by the Free Software Foundation.
>   */
>  
>  #ifndef __ASM_MACH_ATH79_H
> diff --git a/arch/mips/mach-ath79/include/mach/debug_ll.h b/arch/mips/mach-ath79/include/mach/debug_ll.h
> index a49b6cf4a..67691f13b 100644
> --- a/arch/mips/mach-ath79/include/mach/debug_ll.h
> +++ b/arch/mips/mach-ath79/include/mach/debug_ll.h
> @@ -1,18 +1,6 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
>  /*
>   * Copyright (C) 2013 Antony Pavlov <antonynpavlov@gmail.com>
> - *
> - * This file is part of barebox.
> - * See file CREDITS for list of people who contributed to this project.
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2
> - * as published by the Free Software Foundation.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - *
>   */
>  
>  #ifndef __MACH_ATH79_DEBUG_LL__
> diff --git a/arch/mips/mach-ath79/include/mach/debug_ll_ar9331.h b/arch/mips/mach-ath79/include/mach/debug_ll_ar9331.h
> index 11088490d..cd32e2d1d 100644
> --- a/arch/mips/mach-ath79/include/mach/debug_ll_ar9331.h
> +++ b/arch/mips/mach-ath79/include/mach/debug_ll_ar9331.h
> @@ -1,18 +1,6 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
>  /*
>   * based on linux.git/drivers/tty/serial/ar933x_uart.c
> - *
> - * This file is part of barebox.
> - * See file CREDITS for list of people who contributed to this project.
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2
> - * as published by the Free Software Foundation.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - *
>   */

No copyright notice either, but it was added by yourself in commit
196aa5cd216ae80 ("MIPS: ath79: add initial QCA AR9344 SoC support") and
never changed since.

 - Roland

>  
>  #ifndef __AR933X_DEBUG_LL__
> diff --git a/arch/mips/mach-ath79/include/mach/debug_ll_ar9344.h b/arch/mips/mach-ath79/include/mach/debug_ll_ar9344.h
> index 359cf0d42..96ac08bb5 100644
> --- a/arch/mips/mach-ath79/include/mach/debug_ll_ar9344.h
> +++ b/arch/mips/mach-ath79/include/mach/debug_ll_ar9344.h
> @@ -1,19 +1,7 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
>  /*
>   * Copyright (C) 2017 Oleksij Rempel <o.rempel@pengutronix.de>
>   * Copyright (C) 2012, 2013 Antony Pavlov <antonynpavlov@gmail.com>
> - *
> - * This file is part of barebox.
> - * See file CREDITS for list of people who contributed to this project.
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2
> - * as published by the Free Software Foundation.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - *
>   */
>  
>  #ifndef __AR9344_DEBUG_LL__
> diff --git a/arch/mips/mach-ath79/reset.c b/arch/mips/mach-ath79/reset.c
> index 066578822..b756c859d 100644
> --- a/arch/mips/mach-ath79/reset.c
> +++ b/arch/mips/mach-ath79/reset.c
> @@ -1,18 +1,6 @@
> +// SPDX-License-Identifier: GPL-2.0-only
>  /*
>   * Copyright (C) 2013 Du Huanpeng <u74147@gmail.com>
> - *
> - * This file is part of barebox.
> - * See file CREDITS for list of people who contributed to this project.
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2
> - * as published by the Free Software Foundation.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - *
>   */
>  
>  #include <common.h>
> diff --git a/arch/mips/mach-bcm47xx/include/mach/debug_ll.h b/arch/mips/mach-bcm47xx/include/mach/debug_ll.h
> index 3e74e0f67..0fbe389a4 100644
> --- a/arch/mips/mach-bcm47xx/include/mach/debug_ll.h
> +++ b/arch/mips/mach-bcm47xx/include/mach/debug_ll.h
> @@ -1,18 +1,6 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
>  /*
>   * Copyright (C) 2011 Antony Pavlov <antonynpavlov@gmail.com>
> - *
> - * This file is part of barebox.
> - * See file CREDITS for list of people who contributed to this project.
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2
> - * as published by the Free Software Foundation.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - *
>   */
>  
>  /** @file
> diff --git a/arch/mips/mach-bcm47xx/include/mach/hardware.h b/arch/mips/mach-bcm47xx/include/mach/hardware.h
> index 462302df8..071229f86 100644
> --- a/arch/mips/mach-bcm47xx/include/mach/hardware.h
> +++ b/arch/mips/mach-bcm47xx/include/mach/hardware.h
> @@ -1,18 +1,6 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
>  /*
>   * Copyright (C) 2011 Antony Pavlov <antonynpavlov@gmail.com>
> - *
> - * This file is part of barebox.
> - * See file CREDITS for list of people who contributed to this project.
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2
> - * as published by the Free Software Foundation.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - *
>   */
>  
>  #ifndef __INCLUDE_ARCH_HARDWARE_H__
> diff --git a/arch/mips/mach-bcm47xx/reset.c b/arch/mips/mach-bcm47xx/reset.c
> index 6287adb37..33dfb7b3b 100644
> --- a/arch/mips/mach-bcm47xx/reset.c
> +++ b/arch/mips/mach-bcm47xx/reset.c
> @@ -1,18 +1,6 @@
> +// SPDX-License-Identifier: GPL-2.0-only
>  /*
>   * Copyright (C) 2011 Antony Pavlov <antonynpavlov@gmail.com>
> - *
> - * This file is part of barebox.
> - * See file CREDITS for list of people who contributed to this project.
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2
> - * as published by the Free Software Foundation.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - *
>   */
>  
>  #include <common.h>
> diff --git a/arch/mips/mach-loongson/include/mach/debug_ll.h b/arch/mips/mach-loongson/include/mach/debug_ll.h
> index 1904fb940..c2d6edb77 100644
> --- a/arch/mips/mach-loongson/include/mach/debug_ll.h
> +++ b/arch/mips/mach-loongson/include/mach/debug_ll.h
> @@ -1,18 +1,6 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
>  /*
>   * Copyright (C) 2014 Antony Pavlov <antonynpavlov@gmail.com>
> - *
> - * This file is part of barebox.
> - * See file CREDITS for list of people who contributed to this project.
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2
> - * as published by the Free Software Foundation.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - *
>   */
>  
>  #ifndef __MACH_LOONGSON_DEBUG_LL__
> diff --git a/arch/mips/mach-loongson/include/mach/loongson1.h b/arch/mips/mach-loongson/include/mach/loongson1.h
> index 12fdbc00b..75e1a5504 100644
> --- a/arch/mips/mach-loongson/include/mach/loongson1.h
> +++ b/arch/mips/mach-loongson/include/mach/loongson1.h
> @@ -1,12 +1,8 @@
> +/* SPDX-License-Identifier: GPL-2.0-or-later */
>  /*
>   * Copyright (c) 2011 Zhang, Keguang <keguang.zhang at gmail.com>
>   *
>   * Register mappings for Loongson 1
> - *
> - * This program is free software; you can redistribute	it and/or modify it
> - * under  the terms of	the GNU General	 Public License as published by the
> - * Free Software Foundation;  either version 2 of the  License, or (at your
> - * option) any later version.
>   */
>  
>  #ifndef __ASM_MACH_LOONGSON1_LOONGSON1_H
> diff --git a/arch/mips/mach-loongson/loongson1_reset.c b/arch/mips/mach-loongson/loongson1_reset.c
> index 7a8f1d683..3763a109e 100644
> --- a/arch/mips/mach-loongson/loongson1_reset.c
> +++ b/arch/mips/mach-loongson/loongson1_reset.c
> @@ -1,15 +1,6 @@
> +// SPDX-License-Identifier: GPL-2.0-only
>  /*
>   * Copyright (C) 2014 Antony Pavlov <antonynpavlov at gmail.com>
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2
> - * as published by the Free Software Foundation.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - *
>   */
>  
>  #include <common.h>
> diff --git a/arch/mips/mach-malta/include/mach/debug_ll.h b/arch/mips/mach-malta/include/mach/debug_ll.h
> index a9cf8b3c1..63d1538c5 100644
> --- a/arch/mips/mach-malta/include/mach/debug_ll.h
> +++ b/arch/mips/mach-malta/include/mach/debug_ll.h
> @@ -1,18 +1,6 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
>  /*
>   * Copyright (C) 2011 Antony Pavlov <antonynpavlov@gmail.com>
> - *
> - * This file is part of barebox.
> - * See file CREDITS for list of people who contributed to this project.
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2
> - * as published by the Free Software Foundation.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - *
>   */
>  
>  /** @file
> diff --git a/arch/mips/mach-malta/include/mach/hardware.h b/arch/mips/mach-malta/include/mach/hardware.h
> index ba28cb86d..1176b08b6 100644
> --- a/arch/mips/mach-malta/include/mach/hardware.h
> +++ b/arch/mips/mach-malta/include/mach/hardware.h
> @@ -1,18 +1,6 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
>  /*
>   * Copyright (C) 2011 Antony Pavlov <antonynpavlov@gmail.com>
> - *
> - * This file is part of barebox.
> - * See file CREDITS for list of people who contributed to this project.
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2
> - * as published by the Free Software Foundation.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - *
>   */
>  
>  #ifndef __INCLUDE_ARCH_HARDWARE_H__
> diff --git a/arch/mips/mach-malta/reset.c b/arch/mips/mach-malta/reset.c
> index ff29cd5e9..df7be0ae5 100644
> --- a/arch/mips/mach-malta/reset.c
> +++ b/arch/mips/mach-malta/reset.c
> @@ -1,18 +1,6 @@
> +// SPDX-License-Identifier: GPL-2.0-only
>  /*
>   * Copyright (C) 2011 Antony Pavlov <antonynpavlov@gmail.com>
> - *
> - * This file is part of barebox.
> - * See file CREDITS for list of people who contributed to this project.
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2
> - * as published by the Free Software Foundation.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - *
>   */
>  
>  /**
> diff --git a/arch/mips/mach-xburst/csrc-jz4750.c b/arch/mips/mach-xburst/csrc-jz4750.c
> index 75e065414..302709e59 100644
> --- a/arch/mips/mach-xburst/csrc-jz4750.c
> +++ b/arch/mips/mach-xburst/csrc-jz4750.c
> @@ -1,18 +1,6 @@
> +// SPDX-License-Identifier: GPL-2.0-only
>  /*
>   * Copyright (C) 2012 Antony Pavlov <antonynpavlov@gmail.com>
> - *
> - * This file is part of barebox.
> - * See file CREDITS for list of people who contributed to this project.
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2
> - * as published by the Free Software Foundation.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - *
>   */
>  
>  /**
> diff --git a/arch/mips/mach-xburst/include/mach/debug_ll.h b/arch/mips/mach-xburst/include/mach/debug_ll.h
> index a1ce17efd..ea12ea591 100644
> --- a/arch/mips/mach-xburst/include/mach/debug_ll.h
> +++ b/arch/mips/mach-xburst/include/mach/debug_ll.h
> @@ -1,18 +1,6 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
>  /*
>   * Copyright (C) 2012 Antony Pavlov <antonynpavlov@gmail.com>
> - *
> - * This file is part of barebox.
> - * See file CREDITS for list of people who contributed to this project.
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2
> - * as published by the Free Software Foundation.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - *
>   */
>  
>  #ifndef __MACH_XBURST_DEBUG_LL__
> diff --git a/arch/mips/mach-xburst/include/mach/debug_ll_jz4750d.h b/arch/mips/mach-xburst/include/mach/debug_ll_jz4750d.h
> index 6d18366c5..8633ad2d1 100644
> --- a/arch/mips/mach-xburst/include/mach/debug_ll_jz4750d.h
> +++ b/arch/mips/mach-xburst/include/mach/debug_ll_jz4750d.h
> @@ -1,18 +1,6 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
>  /*
>   * Copyright (C) 2013 Antony Pavlov <antonynpavlov@gmail.com>
> - *
> - * This file is part of barebox.
> - * See file CREDITS for list of people who contributed to this project.
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2
> - * as published by the Free Software Foundation.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - *
>   */
>  
>  #ifndef __INCLUDE_DEBUG_LL_JZ4750D_H__
> diff --git a/arch/mips/mach-xburst/include/mach/debug_ll_jz4780.h b/arch/mips/mach-xburst/include/mach/debug_ll_jz4780.h
> index 0bdc58caa..20e94d6c4 100644
> --- a/arch/mips/mach-xburst/include/mach/debug_ll_jz4780.h
> +++ b/arch/mips/mach-xburst/include/mach/debug_ll_jz4780.h
> @@ -1,18 +1,6 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
>  /*
>   * Copyright (C) 2014 Antony Pavlov <antonynpavlov@gmail.com>
> - *
> - * This file is part of barebox.
> - * See file CREDITS for list of people who contributed to this project.
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2
> - * as published by the Free Software Foundation.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - *
>   */
>  
>  #ifndef __INCLUDE_DEBUG_LL_JZ4780_H__
> diff --git a/arch/mips/mach-xburst/include/mach/jz4750d_regs.h b/arch/mips/mach-xburst/include/mach/jz4750d_regs.h
> index 396c823a1..5e02488e9 100644
> --- a/arch/mips/mach-xburst/include/mach/jz4750d_regs.h
> +++ b/arch/mips/mach-xburst/include/mach/jz4750d_regs.h
> @@ -1,13 +1,10 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
>  /*
>   * based on linux/include/asm-mips/mach-jz4750d/regs.h
>   *
>   * JZ4750D register definition.
>   *
>   * Copyright (C) 2008 Ingenic Semiconductor Inc.
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2 as
> - * published by the Free Software Foundation.
>   */
>  
>  #ifndef __JZ4750D_REGS_H__
> diff --git a/arch/mips/mach-xburst/include/mach/jz4780.h b/arch/mips/mach-xburst/include/mach/jz4780.h
> index 4503a93ec..8f5870068 100644
> --- a/arch/mips/mach-xburst/include/mach/jz4780.h
> +++ b/arch/mips/mach-xburst/include/mach/jz4780.h
> @@ -1,19 +1,9 @@
> +/* SPDX-License-Identifier: GPL-2.0-or-later */
>  /*
>   * JZ4780 SoC definitions
>   *
>   * Copyright (c) 2013 Imagination Technologies
>   * Author: Paul Burton <paul.burton@imgtec.com>
> - *
> - * This program is free software; you can redistribute it and/or
> - * modify it under the terms of the GNU General Public License as
> - * published by the Free Software Foundation; either version 2 of
> - * the License, or (at your option) any later version.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - *
>   */
>  
>  #ifndef __MIPS_ASM_MACH_JZ4780_JZ4780_H__
> diff --git a/arch/mips/mach-xburst/reset-jz4750.c b/arch/mips/mach-xburst/reset-jz4750.c
> index 1fdcc7b8a..a1d5976fb 100644
> --- a/arch/mips/mach-xburst/reset-jz4750.c
> +++ b/arch/mips/mach-xburst/reset-jz4750.c
> @@ -1,18 +1,6 @@
> +// SPDX-License-Identifier: GPL-2.0-only
>  /*
>   * Copyright (C) 2012 Antony Pavlov <antonynpavlov@gmail.com>
> - *
> - * This file is part of barebox.
> - * See file CREDITS for list of people who contributed to this project.
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2
> - * as published by the Free Software Foundation.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - *
>   */
>  
>  /**
> diff --git a/arch/mips/pbl/zbarebox.lds.S b/arch/mips/pbl/zbarebox.lds.S
> index a883fdb2d..04b5b8680 100644
> --- a/arch/mips/pbl/zbarebox.lds.S
> +++ b/arch/mips/pbl/zbarebox.lds.S
> @@ -1,19 +1,6 @@
> +/* SPDX-License-Identifier: GPL-2.0-or-later */
>  /*
>   * (C) Copyright 2012 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
> - *
> - * See file CREDITS for list of people who contributed to this
> - * project.
> - *
> - * This program is free software; you can redistribute it and/or
> - * modify it under the terms of the GNU General Public License as
> - * published by the Free Software Foundation; either version 2 of
> - * the License, or (at your option) any later version.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - *
>   */
>  
>  #include <asm-generic/barebox.lds.h>
> -- 
> 2.17.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Roland Hieber                     | r.hieber@pengutronix.de     |
Pengutronix e.K.                  | https://www.pengutronix.de/ |
Peiner Str. 6-8, 31137 Hildesheim | Phone: +49-5121-206917-5086 |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
