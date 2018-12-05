Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gUWvf-0005Hl-Cu
 for barebox@lists.infradead.org; Wed, 05 Dec 2018 13:09:34 +0000
Date: Wed, 5 Dec 2018 14:09:15 +0100
From: Roland Hieber <r.hieber@pengutronix.de>
Message-ID: <20181205130915.la5barnff7hfcyej@pengutronix.de>
References: <20181204215001.7862-1-linux@rempel-privat.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181204215001.7862-1-linux@rempel-privat.de>
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
Subject: Re: [PATCH v1] drivers: net: phy: convert drivers to spdx
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: barebox@lists.infradead.org

On Tue, Dec 04, 2018 at 10:50:01PM +0100, Oleksij Rempel wrote:
> Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
> ---
>  drivers/net/phy/ar8327.c        |  6 +-----
>  drivers/net/phy/at803x.c        |  6 +-----
>  drivers/net/phy/davicom.c       |  7 +------
>  drivers/net/phy/lxt.c           |  6 +-----
>  drivers/net/phy/mdio-bitbang.c  |  5 +----
>  drivers/net/phy/mdio-gpio.c     |  5 +----
>  drivers/net/phy/mdio-mux-gpio.c | 14 +-------------
>  drivers/net/phy/mdio-mux.c      | 11 +----------
>  drivers/net/phy/mdio-mvebu.c    | 12 +-----------
>  drivers/net/phy/mdio_bus.c      |  7 +------
>  drivers/net/phy/micrel.c        |  6 +-----
>  drivers/net/phy/national.c      |  6 +-----
>  drivers/net/phy/phy.c           |  7 +------
>  drivers/net/phy/smsc.c          |  6 +-----
>  14 files changed, 14 insertions(+), 90 deletions(-)
> 
> diff --git a/drivers/net/phy/ar8327.c b/drivers/net/phy/ar8327.c
> index e9ac3d49e..5f3a2e2cf 100644
> --- a/drivers/net/phy/ar8327.c
> +++ b/drivers/net/phy/ar8327.c
> @@ -1,10 +1,6 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
>  /*
>   * Copyright (C) 2017 Oleksij Rempel <linux@rempel-privat.de>
> - *
> - * This program is free software; you can redistribute  it and/or modify it
> - * under  the terms of  the GNU General  Public License as published by the
> - * Free Software Foundation;  either version 2 of the  License, or (at your
> - * option) any later version.
>   */
>  
>  #include <common.h>
> diff --git a/drivers/net/phy/at803x.c b/drivers/net/phy/at803x.c
> index de5bf200c..b43cb0d23 100644
> --- a/drivers/net/phy/at803x.c
> +++ b/drivers/net/phy/at803x.c
> @@ -1,14 +1,10 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
>  /*
>   * drivers/net/phy/at803x.c
>   *
>   * Driver for Atheros 803x PHY
>   *
>   * Author: Matus Ujhelyi <ujhelyi.m@gmail.com>
> - *
> - * This program is free software; you can redistribute  it and/or modify it
> - * under  the terms of  the GNU General  Public License as published by the
> - * Free Software Foundation;  either version 2 of the  License, or (at your
> - * option) any later version.
>   */
>  
>  #include <common.h>
> diff --git a/drivers/net/phy/davicom.c b/drivers/net/phy/davicom.c
> index 8a784b1e5..febaffa52 100644
> --- a/drivers/net/phy/davicom.c
> +++ b/drivers/net/phy/davicom.c
> @@ -1,3 +1,4 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
>  /*
>   * drivers/net/phy/davicom.c
>   *
> @@ -6,12 +7,6 @@
>   * Author: Andy Fleming
>   *
>   * Copyright (c) 2004 Freescale Semiconductor, Inc.
> - *
> - * This program is free software; you can redistribute  it and/or modify it
> - * under  the terms of  the GNU General  Public License as published by the
> - * Free Software Foundation;  either version 2 of the  License, or (at your
> - * option) any later version.
> - *
>   */
>  
>  #include <common.h>
> diff --git a/drivers/net/phy/lxt.c b/drivers/net/phy/lxt.c
> index 9e5ddbb42..b661ae731 100644
> --- a/drivers/net/phy/lxt.c
> +++ b/drivers/net/phy/lxt.c
> @@ -1,14 +1,10 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
>  /*
>   * drivers/net/phy/lxt.c
>   *
>   * Driver for Intel LXT PHYs
>   *
>   * base on Andy Fleming's linux lxt.c driver
> - *
> - * This program is free software; you can redistribute  it and/or modify it
> - * under  the terms of  the GNU General  Public License as published by the
> - * Free Software Foundation;  either version 2 of the  License, or (at your
> - * option) any later version.
>   */
>  
>  #include <common.h>
> diff --git a/drivers/net/phy/mdio-bitbang.c b/drivers/net/phy/mdio-bitbang.c
> index 4f610e375..839a7d1eb 100644
> --- a/drivers/net/phy/mdio-bitbang.c
> +++ b/drivers/net/phy/mdio-bitbang.c
> @@ -1,3 +1,4 @@
> +// SPDX-License-Identifier: GPL-2.0-only
>  /*
>   * Bitbanged MDIO support.
>   *
> @@ -11,10 +12,6 @@
>   *
>   * 2005 (c) MontaVista Software, Inc.
>   * Vitaly Bordug <vbordug@ru.mvista.com>
> - *
> - * This file is licensed under the terms of the GNU General Public License
> - * version 2. This program is licensed "as is" without any warranty of any
> - * kind, whether express or implied.
>   */
>  
>  #include <common.h>
> diff --git a/drivers/net/phy/mdio-gpio.c b/drivers/net/phy/mdio-gpio.c
> index a846fb28e..affa31ae2 100644
> --- a/drivers/net/phy/mdio-gpio.c
> +++ b/drivers/net/phy/mdio-gpio.c
> @@ -1,3 +1,4 @@
> +// SPDX-License-Identifier: GPL-2.0-only
>  /*
>   * GPIO based MDIO bitbang driver.
>   * Supports OpenFirmware.
> @@ -18,10 +19,6 @@
>   *
>   * 2005 (c) MontaVista Software, Inc.
>   * Vitaly Bordug <vbordug@ru.mvista.com>
> - *
> - * This file is licensed under the terms of the GNU General Public License
> - * version 2. This program is licensed "as is" without any warranty of any
> - * kind, whether express or implied.
>   */
>  
>  #define DEBUG
> diff --git a/drivers/net/phy/mdio-mux-gpio.c b/drivers/net/phy/mdio-mux-gpio.c
> index 221353cbc..a36782c0b 100644
> --- a/drivers/net/phy/mdio-mux-gpio.c
> +++ b/drivers/net/phy/mdio-mux-gpio.c
> @@ -1,3 +1,4 @@
> +// SPDX-License-Identifier: GPL-2.0-only
>  /*
>   * Copyright (c) 2017 Zodiac Inflight Innovation
>   * Author: Andrey Smirnov <andrew.smirnov@gmail.com>
> @@ -5,19 +6,6 @@
>   * Based on analogous code from Linux kernel
>   *
>   * Copyright (C) 2011, 2012 Cavium, Inc.
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2
> - * as published by the Free Software Foundation.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - * This file is subject to the terms and conditions of the GNU General Public
> - * License.  See the file "COPYING" in the main directory of this archive
> - * for more details.
> - *
>   */
>  #include <common.h>
>  #include <driver.h>
> diff --git a/drivers/net/phy/mdio-mux.c b/drivers/net/phy/mdio-mux.c
> index 1f57d86c6..aa63cbde9 100644
> --- a/drivers/net/phy/mdio-mux.c
> +++ b/drivers/net/phy/mdio-mux.c
> @@ -1,3 +1,4 @@
> +// SPDX-License-Identifier: GPL-2.0-only
>  /*
>   * Copyright (c) 2017 Zodiac Inflight Innovation
>   * Author: Andrey Smirnov <andrew.smirnov@gmail.com>
> @@ -5,16 +6,6 @@
>   * Based on analogous code from Linux kernel
>   *
>   * Copyright (C) 2011, 2012 Cavium, Inc.
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
>  #include <linux/mdio-mux.h>
> diff --git a/drivers/net/phy/mdio-mvebu.c b/drivers/net/phy/mdio-mvebu.c
> index 460e2b413..6d3bdf15c 100644
> --- a/drivers/net/phy/mdio-mvebu.c
> +++ b/drivers/net/phy/mdio-mvebu.c
> @@ -1,3 +1,4 @@
> +// SPDX-License-Identifier: GPL-2.0-only
>  /*
>   * Marvell MVEBU SoC MDIO interface driver
>   *
> @@ -8,17 +9,6 @@
>   * based on mvmdio driver from Linux
>   *   Copyright (C) 2012 Marvell
>   *     Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
> - *
> - * Since the MDIO interface of Marvell network interfaces is shared
> - * between all network interfaces, having a single driver allows to
> - * handle concurrent accesses properly (you may have four Ethernet
> - * ports, but they in fact share the same SMI interface to access
> - * the MDIO bus). This driver is currently used by the mvneta and
> - * mv643xx_eth drivers.

I think this paragraph can stay.

> - *
> - * This file is licensed under the terms of the GNU General Public
> - * License version 2. This program is licensed "as is" without any
> - * warranty of any kind, whether express or implied.
>   */
>  
>  #include <clock.h>
> diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
> index cda05afae..e1dd8f0ae 100644
> --- a/drivers/net/phy/mdio_bus.c
> +++ b/drivers/net/phy/mdio_bus.c
> @@ -1,3 +1,4 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
>  /*
>   * drivers/net/phy/mdio_bus.c
>   *
> @@ -6,12 +7,6 @@
>   * Author: Andy Fleming
>   *
>   * Copyright (c) 2004 Freescale Semiconductor, Inc.
> - *
> - * This program is free software; you can redistribute  it and/or modify it
> - * under  the terms of  the GNU General  Public License as published by the
> - * Free Software Foundation;  either version 2 of the  License, or (at your
> - * option) any later version.
> - *
>   */
>  
>  #define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
> diff --git a/drivers/net/phy/micrel.c b/drivers/net/phy/micrel.c
> index fe71bfd1a..67c2ca9d5 100644
> --- a/drivers/net/phy/micrel.c
> +++ b/drivers/net/phy/micrel.c
> @@ -1,3 +1,4 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
>  /*
>   * drivers/net/phy/micrel.c
>   *
> @@ -7,11 +8,6 @@
>   *
>   * Copyright (c) 2010 Micrel, Inc.
>   *
> - * This program is free software; you can redistribute  it and/or modify it
> - * under  the terms of  the GNU General  Public License as published by the
> - * Free Software Foundation;  either version 2 of the  License, or (at your
> - * option) any later version.
> - *
>   * Support : ksz9021 1000/100/10 phy from Micrel
>   *		ks8001, ks8737, ks8721, ks8041, ks8051 100/10 phy
>   */
> diff --git a/drivers/net/phy/national.c b/drivers/net/phy/national.c
> index e46d587cd..83390b99a 100644
> --- a/drivers/net/phy/national.c
> +++ b/drivers/net/phy/national.c
> @@ -1,14 +1,10 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
>  /*
>   * drivers/net/phy/national.c
>   *
>   * Driver for National Semiconductor PHYs
>   *
>   * based on Stuart Menefy's linux national.c driver
> - *
> - * This program is free software; you can redistribute  it and/or modify it
> - * under  the terms of  the GNU General  Public License as published by the
> - * Free Software Foundation;  either version 2 of the  License, or (at your
> - * option) any later version.
>   */
>  
>  #include <common.h>
> diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
> index 7c4d14bf4..ccdc9f371 100644
> --- a/drivers/net/phy/phy.c
> +++ b/drivers/net/phy/phy.c
> @@ -1,3 +1,4 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
>  /*
>   * drivers/net/phy/phy.c
>   *
> @@ -9,12 +10,6 @@
>   * Author: Andy Fleming
>   *
>   * Copyright (c) 2004 Freescale Semiconductor, Inc.
> - *
> - * This program is free software; you can redistribute  it and/or modify it
> - * under  the terms of  the GNU General  Public License as published by the
> - * Free Software Foundation;  either version 2 of the  License, or (at your
> - * option) any later version.
> - *
>   */
>  
>  #include <common.h>
> diff --git a/drivers/net/phy/smsc.c b/drivers/net/phy/smsc.c
> index a318624dc..d6705e4fe 100644
> --- a/drivers/net/phy/smsc.c
> +++ b/drivers/net/phy/smsc.c
> @@ -1,3 +1,4 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
>  /*
>   * drivers/net/phy/smsc.c
>   *
> @@ -7,11 +8,6 @@
>   *
>   * Copyright (c) 2006 Herbert Valerio Riedel <hvr@gnu.org>
>   *
> - * This program is free software; you can redistribute  it and/or modify it
> - * under  the terms of  the GNU General  Public License as published by the
> - * Free Software Foundation;  either version 2 of the  License, or (at your
> - * option) any later version.
> - *
>   * Support added for SMSC LAN8187 and LAN8700 by steve.glendinning@shawell.net
>   *
>   */
> -- 

The rest looks consistent to me.

Reviewed-by: Roland Hieber <r.hieber@pengutronix.de>

 - Roland

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
