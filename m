Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1js5Jf-0006Gg-7u
 for barebox@lists.infradead.org; Sun, 05 Jul 2020 14:08:24 +0000
Date: Sun, 5 Jul 2020 16:08:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200705140821.GN15485@pengutronix.de>
References: <20200702143607.21919-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200702143607.21919-1-u.kleine-koenig@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 1/2] arm/boards: Replace license boilerplate by SPDX
 identfiers
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>

On Thu, Jul 02, 2020 at 04:36:06PM +0200, Uwe Kleine-K=F6nig wrote:
> This adapts all files that were identifed by licensecheck
> (https://salsa.debian.org/build-common-team/licensecheck.git) as
> licensed under the GPL.
> =

> The copyright situation isn't trivially clear for these files, so I didn't
> replace the copyright statement here with machine-parseable tags.
> =

> While touching these files also do some minor comment reformatting to
> get some uniform layout.
> =

> Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---

Applied, thanks

Sascha

>  arch/arm/boards/embedsky-e9/board.c             | 12 ++----------
>  .../boards/eukrea_cpuimx27/eukrea_cpuimx27.c    | 14 ++------------
>  .../boards/eukrea_cpuimx35/eukrea_cpuimx35.c    | 14 ++------------
>  arch/arm/boards/freescale-mx21-ads/imx21ads.c   | 14 ++------------
>  arch/arm/boards/freescale-mx35-3ds/3stack.c     | 14 ++------------
>  arch/arm/boards/freescale-mx6-sabresd/board.c   | 12 ++----------
>  arch/arm/boards/friendlyarm-mini2440/mini2440.c | 14 ++------------
>  arch/arm/boards/friendlyarm-tiny210/tiny210.c   | 12 ++----------
>  .../boards/imx233-olinuxino/imx23-olinuxino.c   | 13 ++-----------
>  arch/arm/boards/karo-tx6x/board.c               | 13 ++-----------
>  arch/arm/boards/phytec-phycard-omap3/pca-a-l1.c | 11 ++---------
>  arch/arm/boards/phytec-phycore-pxa270/config.h  | 14 ++------------
>  arch/arm/boards/variscite-mx6/board.c           | 17 ++---------------
>  arch/arm/boards/variscite-mx6/lowlevel.c        | 15 +++------------
>  arch/arm/boards/versatile/versatilepb.c         | 14 ++------------
>  15 files changed, 31 insertions(+), 172 deletions(-)
> =

> diff --git a/arch/arm/boards/embedsky-e9/board.c b/arch/arm/boards/embeds=
ky-e9/board.c
> index e5f92636fbc3..0938a6d096a7 100644
> --- a/arch/arm/boards/embedsky-e9/board.c
> +++ b/arch/arm/boards/embedsky-e9/board.c
> @@ -1,3 +1,5 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +
>  /*
>   * Copyright (C) 2014 Andrey Panov <rockford@yandex.ru>
>   *
> @@ -6,16 +8,6 @@
>   *
>   * based on arch/arm/boards/freescale-mx6-sabrelite/board.c
>   * Copyright (C) 2012 Steffen Trumtrar, Pengutronix
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
>   */
>  =

>  #include <common.h>
> diff --git a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c b/arch/arm=
/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
> index 52971ed7ee79..e8ac0cc8fa7e 100644
> --- a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
> +++ b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
> @@ -1,19 +1,9 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +
>  /*
>   * Copyright (C) 2009 Eric Benard, Eukrea Electromatique
>   * Based on pcm038.c which is :
>   * Copyright (C) 2007 Sascha Hauer, Pengutronix
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
> - *
>   */
>  =

>  #include <common.h>
> diff --git a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c b/arch/arm=
/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
> index 558bc0791243..9835452ddfea 100644
> --- a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
> +++ b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
> @@ -1,25 +1,15 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +
>  /*
>   * Copyright (C) 2007 Sascha Hauer, Pengutronix
>   *               2009 Marc Kleine-Budde, Pengutronix
>   * (c) 2010 Eukrea Electromatique, Eric B=E9nard <eric@eukrea.com>
>   *
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
>   * Derived from:
>   *
>   * * mx35_3stack.c - board file for uboot-v1
>   *   Copyright (C) 2007, Guennadi Liakhovetski <lg@denx.de>
>   *   (C) Copyright 2008-2009 Freescale Semiconductor, Inc.
> - *
>   */
>  =

>  #include <common.h>
> diff --git a/arch/arm/boards/freescale-mx21-ads/imx21ads.c b/arch/arm/boa=
rds/freescale-mx21-ads/imx21ads.c
> index 2c54cd703074..92207b02d33f 100644
> --- a/arch/arm/boards/freescale-mx21-ads/imx21ads.c
> +++ b/arch/arm/boards/freescale-mx21-ads/imx21ads.c
> @@ -1,20 +1,10 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +
>  /*
>   * Copyright (C) 2009 Ivo Clarysse
>   *
>   * Based on imx27ads.c,
>   *   Copyright (C) 2007 Sascha Hauer, Pengutronix
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
> - *
>   */
>  =

>  #include <common.h>
> diff --git a/arch/arm/boards/freescale-mx35-3ds/3stack.c b/arch/arm/board=
s/freescale-mx35-3ds/3stack.c
> index 97a996870616..5b91c601f881 100644
> --- a/arch/arm/boards/freescale-mx35-3ds/3stack.c
> +++ b/arch/arm/boards/freescale-mx35-3ds/3stack.c
> @@ -1,24 +1,14 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +
>  /*
>   * Copyright (C) 2007 Sascha Hauer, Pengutronix
>   *               2009 Marc Kleine-Budde, Pengutronix
>   *
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
>   * Derived from:
>   *
>   * * mx35_3stack.c - board file for uboot-v1
>   *   Copyright (C) 2007, Guennadi Liakhovetski <lg@denx.de>
>   *   (C) Copyright 2008-2009 Freescale Semiconductor, Inc.
> - *
>   */
>  =

>  #include <common.h>
> diff --git a/arch/arm/boards/freescale-mx6-sabresd/board.c b/arch/arm/boa=
rds/freescale-mx6-sabresd/board.c
> index a5059835dfbc..b710c05a4757 100644
> --- a/arch/arm/boards/freescale-mx6-sabresd/board.c
> +++ b/arch/arm/boards/freescale-mx6-sabresd/board.c
> @@ -1,18 +1,10 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +
>  /*
>   * Copyright (C) 2013 Hubert Feurstein <h.feurstein@gmail.com>
>   *
>   * based on arch/arm/boards/freescale-mx6-sabrelite/board.c
>   * Copyright (C) 2012 Steffen Trumtrar, Pengutronix
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
>   */
>  =

>  #include <common.h>
> diff --git a/arch/arm/boards/friendlyarm-mini2440/mini2440.c b/arch/arm/b=
oards/friendlyarm-mini2440/mini2440.c
> index 7f59cb99b227..413537d247d6 100644
> --- a/arch/arm/boards/friendlyarm-mini2440/mini2440.c
> +++ b/arch/arm/boards/friendlyarm-mini2440/mini2440.c
> @@ -1,19 +1,9 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +
>  /*
>   * Copyright (C) 2010 Marek Belisko <marek.belisko@open-nandra.com>
>   *
>   * Based on a9m2440.c board init by Juergen Beisert, Pengutronix
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
> - *
>   */
>  =

>  #include <common.h>
> diff --git a/arch/arm/boards/friendlyarm-tiny210/tiny210.c b/arch/arm/boa=
rds/friendlyarm-tiny210/tiny210.c
> index b40dc98c5ba4..c96aa8305946 100644
> --- a/arch/arm/boards/friendlyarm-tiny210/tiny210.c
> +++ b/arch/arm/boards/friendlyarm-tiny210/tiny210.c
> @@ -1,3 +1,5 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +
>  /*
>   * Copyright (C) 2012 Alexey Galakhov
>   * Based on Mini6410 code by Juergen Beisert
> @@ -12,16 +14,6 @@
>   *
>   * (C) Copyright 2002
>   * David Mueller, ELSOFT AG, <d.mueller@elsoft.ch>
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
>   */
>  =

>  #include <common.h>
> diff --git a/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c b/arch/ar=
m/boards/imx233-olinuxino/imx23-olinuxino.c
> index af548b3c53ac..14100747e0bf 100644
> --- a/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c
> +++ b/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c
> @@ -1,20 +1,11 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +
>  /*
>   * (C) Copyright 2012 Fadil Berisha, <fadil.r.berisha@gmail.com>
>   *     based on falconwing.c & mx23-evk.c
>   *
>   * (C) Copyright 2010 Juergen Beisert - Pengutronix
>   * (C) Copyright 2011 Wolfram Sang - Pengutronix
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
>  =

>  #include <common.h>
> diff --git a/arch/arm/boards/karo-tx6x/board.c b/arch/arm/boards/karo-tx6=
x/board.c
> index 54b1e248f43d..2a141be61af6 100644
> --- a/arch/arm/boards/karo-tx6x/board.c
> +++ b/arch/arm/boards/karo-tx6x/board.c
> @@ -1,19 +1,10 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +
>  /*
>   * Copyright (C) 2014 Steffen Trumtrar, Pengutronix
>   *
> - *
>   * with the PMIC init code taken from u-boot
>   * Copyright (C) 2012,2013 Lothar Wa=DFmann <LW@KARO-electronics.de>
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
>   */
>  =

>  #define pr_fmt(fmt) "Karo-tx6: " fmt
> diff --git a/arch/arm/boards/phytec-phycard-omap3/pca-a-l1.c b/arch/arm/b=
oards/phytec-phycard-omap3/pca-a-l1.c
> index 930f3b9c7c27..e3b148a0ed2a 100644
> --- a/arch/arm/boards/phytec-phycard-omap3/pca-a-l1.c
> +++ b/arch/arm/boards/phytec-phycard-omap3/pca-a-l1.c
> @@ -1,3 +1,5 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +
>  /**
>   * @file
>   * @brief Board Initialization routines for the phyCARD-A-L1
> @@ -27,15 +29,6 @@
>   * based on code from Texas Instruments / board-beagle.c
>   * Copyright (C) 2009 Texas Instruments Incorporated - http://www.ti.com/
>   * Sanjeev Premi <premi@ti.com>
> - *
> - * This program is free software; you can redistribute it and/or
> - * modify it under the terms of the GNU General Public License
> - * version 2 as published by the Free Software Foundation.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
> - * GNU General Public License for more details.
>   */
>  =

>  #include <common.h>
> diff --git a/arch/arm/boards/phytec-phycore-pxa270/config.h b/arch/arm/bo=
ards/phytec-phycore-pxa270/config.h
> index ca02b1140b27..c630befcb8b3 100644
> --- a/arch/arm/boards/phytec-phycore-pxa270/config.h
> +++ b/arch/arm/boards/phytec-phycore-pxa270/config.h
> @@ -1,3 +1,5 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +
>  /*
>   * Copyright (C) 2005 Phytec Messtechnik GmbH
>   * Juergen Kilb, H. Klaholz <armlinux@phytec.de>
> @@ -5,18 +7,6 @@
>   * Copyright (C) 2006 Pengutronix
>   * Sascha Hauer <s.hauer@pengutronix.de>
>   * Robert Schwebel <r.schwebel@pengutronix.de>
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
> - *
>   */
>  =

>  #ifndef __CONFIG_H
> diff --git a/arch/arm/boards/variscite-mx6/board.c b/arch/arm/boards/vari=
scite-mx6/board.c
> index 267f68c6da2d..99cd15b1c0cf 100644
> --- a/arch/arm/boards/variscite-mx6/board.c
> +++ b/arch/arm/boards/variscite-mx6/board.c
> @@ -1,22 +1,9 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +
>  /*
>   * Copyright (C) 2013 Michael Burkey
>   * Based on code (C) Sascha Hauer, Pengutronix
>   * Based on code (C) Variscite, Ltd.
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
> - * You should have received a copy of the GNU General Public License
> - * along with this program; if not, write to the Free Software
> - * Foundation.
> - *
>   */
>  =

>  #define pr_fmt(fmt) "var-som-mx6: " fmt
> diff --git a/arch/arm/boards/variscite-mx6/lowlevel.c b/arch/arm/boards/v=
ariscite-mx6/lowlevel.c
> index d75d770a7efb..99455b2a4527 100644
> --- a/arch/arm/boards/variscite-mx6/lowlevel.c
> +++ b/arch/arm/boards/variscite-mx6/lowlevel.c
> @@ -1,19 +1,10 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +
>  /*
> - *
>   * Copyright (C) 2013 Michael Burkey
>   * Based on code by Sascha Hauer <s.hauer@pengutronix.de>
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
> +
>  #include <debug_ll.h>
>  #include <common.h>
>  #include <linux/sizes.h>
> diff --git a/arch/arm/boards/versatile/versatilepb.c b/arch/arm/boards/ve=
rsatile/versatilepb.c
> index 8691a171e141..ac6ea9951a70 100644
> --- a/arch/arm/boards/versatile/versatilepb.c
> +++ b/arch/arm/boards/versatile/versatilepb.c
> @@ -1,3 +1,5 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +
>  /*
>   * Copyright (C) 2010 B Labs Ltd,
>   * http://l4dev.org
> @@ -5,18 +7,6 @@
>   *
>   * Based on mach-nomadik
>   * Copyright (C) 2009-2010 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcr=
osoft.com>
> - *
> - * This program is free software; you can redistribute it and/or
> - * modify it under the terms of the GNU General Public License as
> - * published by the Free Software Foundation; version 2 of
> - * the License.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - *
> - *
>   */
>  =

>  #include <common.h>
> =

> base-commit: 27b482a47a2383291289adfb1cb6acf69f4de6ff
> -- =

> 2.27.0
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
