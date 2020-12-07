Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kmAot-0003tp-SR
 for barebox@lists.infradead.org; Mon, 07 Dec 2020 07:20:29 +0000
Date: Mon, 7 Dec 2020 08:20:24 +0100
Message-ID: <20201207072024.GE3977@pengutronix.de>
References: <20201202135228.3776964-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201202135228.3776964-1-u.kleine-koenig@pengutronix.de>
From: Sascha Hauer <sha@pengutronix.de>
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
Subject: Re: [PATCH] mci: Replace license and copyright boilerplate by SPDX
 identifiers
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>, Roland Hieber <rhi@pengutronix.de>

On Wed, Dec 02, 2020 at 02:52:28PM +0100, Uwe Kleine-K=F6nig wrote:
> Converts the files that licensecheck can determine to be licensed under
> GPL-2.0-only or GPL-2.0-or-later and also convert the copyright statements
> to SPDX.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  drivers/mci/atmel-mci-regs.h | 13 ++++---------
>  drivers/mci/atmel_mci.c      | 22 +++++++---------------
>  drivers/mci/dove-sdhci.c     | 13 ++-----------
>  drivers/mci/dw_mmc.c         | 18 ++++--------------
>  drivers/mci/dw_mmc.h         | 18 ++++--------------
>  drivers/mci/imx-esdhc-pbl.c  | 11 +----------
>  drivers/mci/imx-esdhc.c      | 21 +++++----------------
>  drivers/mci/imx-esdhc.h      | 24 ++++--------------------
>  drivers/mci/imx.c            | 24 ++++++++++--------------
>  drivers/mci/mci-core.c       | 25 ++++++-------------------
>  drivers/mci/mci_spi.c        | 36 +++++++++---------------------------
>  drivers/mci/mmci.c           | 16 +++-------------
>  drivers/mci/mmci.h           | 13 ++++---------
>  drivers/mci/mxs.c            | 31 +++++++++----------------------
>  drivers/mci/omap_hsmmc.c     | 19 +++----------------
>  drivers/mci/pxamci.c         | 12 ++++--------
>  drivers/mci/pxamci.h         | 12 ++++--------
>  drivers/mci/s3c.c            | 31 +++++++++----------------------
>  drivers/mci/tegra-sdmmc.c    | 21 +++------------------
>  19 files changed, 95 insertions(+), 285 deletions(-)

Applied, thanks

Sascha

> =

> diff --git a/drivers/mci/atmel-mci-regs.h b/drivers/mci/atmel-mci-regs.h
> index 2866e3eb77d0..676f41960153 100644
> --- a/drivers/mci/atmel-mci-regs.h
> +++ b/drivers/mci/atmel-mci-regs.h
> @@ -1,12 +1,7 @@
> -/*
> - * Atmel MultiMedia Card Interface driver
> - *
> - * Copyright (C) 2004-2006 Atmel Corporation
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2 as
> - * published by the Free Software Foundation.
> - */
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/* SPDX-FileCopyrightText: 2004-2006 Atmel Corporation */
> +
> +/* Atmel MultiMedia Card Interface driver */
>  =

>  /*
>   * Superset of MCI IP registers integrated in Atmel AVR32 and AT91 Proce=
ssors
> diff --git a/drivers/mci/atmel_mci.c b/drivers/mci/atmel_mci.c
> index b4c4e7769ef4..2d51b0e2bc94 100644
> --- a/drivers/mci/atmel_mci.c
> +++ b/drivers/mci/atmel_mci.c
> @@ -1,18 +1,10 @@
> -/*
> - * Atmel MCI driver
> - *
> - * Copyright (C) 2011 Hubert Feurstein <h.feurstein@gmail.com>
> - *
> - * based on imx.c by:
> - * Copyright (C) 2009 Ilya Yanok, <yanok@emcraft.com>
> - * Copyright (C) 2008 Sascha Hauer, Pengutronix <s.hauer@pengutronix.de>
> - * Copyright (C) 2006 Pavel Pisa, PiKRON <ppisa@pikron.com>
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2 as
> - * published by the Free Software Foundation.
> - *
> - */
> +// SPDX-License-Identifier: GPL-2.0-only
> +// SPDX-FileCopyrightText: 2011 Hubert Feurstein <h.feurstein@gmail.com>
> +// SPDX-FileCopyrightText: 2009 Ilya Yanok <yanok@emcraft.com>
> +// SPDX-FileCopyrightText: 2008 Sascha Hauer <s.hauer@pengutronix.de>, P=
engutronix
> +// SPDX-FileCopyrightText: 2006 Pavel Pisa <ppisa@pikron.com>, PiKRON
> +
> +/* Atmel MCI driver */
>  =

>  #include <common.h>
>  #include <init.h>
> diff --git a/drivers/mci/dove-sdhci.c b/drivers/mci/dove-sdhci.c
> index e09147fff9f7..c734a6e0dd5d 100644
> --- a/drivers/mci/dove-sdhci.c
> +++ b/drivers/mci/dove-sdhci.c
> @@ -1,19 +1,10 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +
>  /*
>   * Marvell Dove SDHCI MCI driver
>   *
>   * Pengutronix, Michael Grzeschik <mgr@pengutronix.de>
>   * Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
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

>  #include <clock.h>
> diff --git a/drivers/mci/dw_mmc.c b/drivers/mci/dw_mmc.c
> index 0ada65e90eea..8249403eb7d6 100644
> --- a/drivers/mci/dw_mmc.c
> +++ b/drivers/mci/dw_mmc.c
> @@ -1,20 +1,10 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +// SPDX-FileCopyrightText: 2013 Altera Corporation <www.altera.com>
> +// SPDX-FileCopyrightText: 2012 SAMSUNG Electronics
> +
>  /*
> - * Copyright (C) 2013 Altera Corporation <www.altera.com>
> - *
> - * (C) Copyright 2012 SAMSUNG Electronics
>   * Jaehoon Chung <jh80.chung@samsung.com>
>   * Rajeshawari Shinde <rajeshwari.s@samsung.com>
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
> diff --git a/drivers/mci/dw_mmc.h b/drivers/mci/dw_mmc.h
> index 23b0f0fe2680..23fa116d7514 100644
> --- a/drivers/mci/dw_mmc.h
> +++ b/drivers/mci/dw_mmc.h
> @@ -1,20 +1,10 @@
> +/* SPDX-License-Identifier: GPL-2.0-or-later */
> +/* SPDX-FileCopyrightText: 2013 Altera Corporation <www.altera.com> */
> +/* SPDX-FileCopyrightText: 2012 SAMSUNG Electronics */
> +
>  /*
> - * Copyright (C) 2013 Altera Corporation <www.altera.com>
> - *
> - * (C) Copyright 2012 SAMSUNG Electronics
>   * Jaehoon Chung <jh80.chung@samsung.com>
>   * Rajeshawari Shinde <rajeshwari.s@samsung.com>
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

>  #ifndef  __DW_MMC_H__
> diff --git a/drivers/mci/imx-esdhc-pbl.c b/drivers/mci/imx-esdhc-pbl.c
> index 10a008280396..0cb32b46f19e 100644
> --- a/drivers/mci/imx-esdhc-pbl.c
> +++ b/drivers/mci/imx-esdhc-pbl.c
> @@ -1,13 +1,4 @@
> -/*
> - * This program is free software; you can redistribute it and/or
> - * modify it under the terms of the GNU General Public License as
> - * published by the Free Software Foundation; version 2.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
> - * General Public License for more details.
> - */
> +// SPDX-License-Identifier: GPL-2.0-only
>  =

>  #define pr_fmt(fmt) "xload-esdhc: " fmt
>  =

> diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
> index 4a716e249cc1..93f3c57d4e28 100644
> --- a/drivers/mci/imx-esdhc.c
> +++ b/drivers/mci/imx-esdhc.c
> @@ -1,22 +1,11 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +// SPDX-FileCopyrightText: 2007,2010 Freescale Semiconductor, Inc
> +// SPDX-FileCopyrightText: 2003 Kyle Harris <kharris@nexus-tech.net>, Ne=
xus Technologies
> +
>  /*
> - * Copyright 2007,2010 Freescale Semiconductor, Inc
>   * Andy Fleming
> - *
> - * Based vaguely on the pxa mmc code:
> - * (C) Copyright 2003
> - * Kyle Harris, Nexus Technologies, Inc. kharris@nexus-tech.net
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
>  #include <config.h>
>  #include <common.h>
>  #include <dma.h>
> diff --git a/drivers/mci/imx-esdhc.h b/drivers/mci/imx-esdhc.h
> index 4bf890edf9a5..8abe1207d7a3 100644
> --- a/drivers/mci/imx-esdhc.h
> +++ b/drivers/mci/imx-esdhc.h
> @@ -1,23 +1,7 @@
> -/*
> - * FSL SD/MMC Defines
> - *-------------------------------------------------------------------
> - *
> - * Copyright 2007-2008,2010 Freescale Semiconductor, Inc
> - *
> - * This program is free software; you can redistribute it and/or
> - * modify it under the terms of the GNU General Public License as
> - * published by the Free Software Foundation; either version 2 of
> - * the License, or (at your option) any later version.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
> - * GNU General Public License for more details.
> - *
> - *
> - *-------------------------------------------------------------------
> - *
> - */
> +/* SPDX-License-Identifier: GPL-2.0-or-later */
> +/* SPDX-FileCopyrightText: 2007-2008,2010 Freescale Semiconductor, Inc */
> +
> +/* FSL SD/MMC Defines */
>  =

>  #ifndef  __FSL_ESDHC_H__
>  #define	__FSL_ESDHC_H__
> diff --git a/drivers/mci/imx.c b/drivers/mci/imx.c
> index 354daba05dc2..9910b55ed50e 100644
> --- a/drivers/mci/imx.c
> +++ b/drivers/mci/imx.c
> @@ -1,19 +1,15 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +// SPDX-FileCopyrightText: 2009 Ilya Yanok <yanok@emcraft.com>
> +// SPDX-FileCopyrightText: 2008 Sascha Hauer <s.hauer@pengutronix.de>, P=
engutronix
> +// SPDX-FileCopyrightText: 2006 Pavel Pisa <ppisa@pikron.com>, PiKRON
> +
>  /*
> - *  This is a driver for the SDHC controller found in Freescale MX2/MX3
> - *  SoCs. It is basically the same hardware as found on MX1 (imxmmc.c).
> - *  Unlike the hardware found on MX1, this hardware just works and does
> - *  not need all the quirks found in imxmmc.c, hence the separate driver.
> - *
> - *  Copyright (C) 2009 Ilya Yanok, <yanok@emcraft.com>
> - *  Copyright (C) 2008 Sascha Hauer, Pengutronix <s.hauer@pengutronix.de>
> - *  Copyright (C) 2006 Pavel Pisa, PiKRON <ppisa@pikron.com>
> - *
> - *  derived from pxamci.c by Russell King
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2 as
> - * published by the Free Software Foundation.
> + * This is a driver for the SDHC controller found in Freescale MX2/MX3
> + * SoCs. It is basically the same hardware as found on MX1 (imxmmc.c).
> + * Unlike the hardware found on MX1, this hardware just works and does
> + * not need all the quirks found in imxmmc.c, hence the separate driver.
>   *
> + * Derived from pxamci.c by Russell King
>   */
>  =

>  #include <config.h>
> diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
> index 2261fd1c1b67..f9066e3a1ea8 100644
> --- a/drivers/mci/mci-core.c
> +++ b/drivers/mci/mci-core.c
> @@ -1,23 +1,10 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +// SPDX-FileCopyrightText: 2010 Juergen Beisert, Pengutronix
> +// SPDX-FileCopyrightText: 2008 Freescale Semiconductor, Inc
> +
>  /*
> - * (C) Copyright 2010 Juergen Beisert, Pengutronix
> - *
> - * This code is havily inspired and in parts from the u-boot project:
> - *
> - * Copyright 2008, Freescale Semiconductor, Inc
> - * Andy Fleming
> - *
> - * Based vaguely on the Linux code
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
> + * This code is heavily inspired and in parts from the u-boot project wh=
ich is
> + * based vaguely on the Linux code
>   */
>  =

>  /* #define DEBUG */
> diff --git a/drivers/mci/mci_spi.c b/drivers/mci/mci_spi.c
> index 42072da58a3e..ed3ddf890f7f 100644
> --- a/drivers/mci/mci_spi.c
> +++ b/drivers/mci/mci_spi.c
> @@ -1,30 +1,12 @@
> -/*
> - * (C) Copyright 2011 - Franck JULLIEN <elec4fun@gmail.com>
> - *
> - * This code was inspired from u-boot mmc_spi.c:
> - * Copyright (C) 2010 Thomas Chou <thomas@wytron.com.tw>
> - *
> - * and linux mmc_spi.c:
> - * (C) Copyright 2005, Intec Automation,
> - *              Mike Lavender (mike@steroidmicros)
> - * (C) Copyright 2006-2007, David Brownell
> - * (C) Copyright 2007, Axis Communications,
> - *              Hans-Peter Nilsson (hp@axis.com)
> - * (C) Copyright 2007, ATRON electronic GmbH,
> - *              Jan Nikitenko <jan.nikitenko@gmail.com>
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License as published by
> - * the Free Software Foundation; either version 2 of the License, or
> - * (at your option) any later version.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - *
> - *
> - */
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +// SPDX-FileCopyrightText: 2011 Franck JULLIEN <elec4fun@gmail.com>
> +// SPDX-FileCopyrightText: 2010 Thomas Chou <thomas@wytron.com.tw>
> +// SPDX-FileCopyrightText: 2005 Intec Automation (Mike Lavender <mike@st=
eroidmicros>)
> +// SPDX-FileCopyrightText: 2006-2007 David Brownell
> +// SPDX-FileCopyrightText: 2007 Axis Communications (Hans-Peter Nilsson =
<hp@axis.com>)
> +// SPDX-FileCopyrightText: 2007 ATRON electronic GmbH (Jan Nikitenko <ja=
n.nikitenko@gmail.com>)
> +
> +/* This code was inspired from u-boot mmc_spi.c and linux mmc_spi.c. */
>  =

>  #include <common.h>
>  #include <init.h>
> diff --git a/drivers/mci/mmci.c b/drivers/mci/mmci.c
> index f45557d4f7be..687e5cb9dce8 100644
> --- a/drivers/mci/mmci.c
> +++ b/drivers/mci/mmci.c
> @@ -1,22 +1,12 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +// SPDX-FileCopyrightText: 2010 ST-Ericsson SA
> +
>  /*
>   * ARM PrimeCell MultiMedia Card Interface - PL180
>   *
> - * Copyright (C) ST-Ericsson SA 2010
> - *
>   * Author: Ulf Hansson <ulf.hansson@stericsson.com>
>   * Author: Martin Lundholm <martin.xa.lundholm@stericsson.com>
>   * Ported to drivers/mmc/ by: Matt Waddel <matt.waddel@linaro.org>
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
> diff --git a/drivers/mci/mmci.h b/drivers/mci/mmci.h
> index 20a31a1cfeba..328f21d2d65d 100644
> --- a/drivers/mci/mmci.h
> +++ b/drivers/mci/mmci.h
> @@ -1,12 +1,7 @@
> -/*
> - *  linux/drivers/mmc/host/mmci.h - ARM PrimeCell MMCI PL180/1 driver
> - *
> - *  Copyright (C) 2003 Deep Blue Solutions, Ltd, All Rights Reserved.
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2 as
> - * published by the Free Software Foundation.
> - */
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/* SPDX-FileCopyrightText: 2003 Deep Blue Solutions, Ltd */
> +
> +/* linux/drivers/mmc/host/mmci.h - ARM PrimeCell MMCI PL180/1 driver */
>  =

>  #define COMMAND_REG_DELAY	300
>  #define DATA_REG_DELAY		1000
> diff --git a/drivers/mci/mxs.c b/drivers/mci/mxs.c
> index afd6a563970d..5d6511f9580d 100644
> --- a/drivers/mci/mxs.c
> +++ b/drivers/mci/mxs.c
> @@ -1,26 +1,13 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +// SPDX-FileCopyrightText: 2010 Juergen Beisert <jbe@pengutronix.de>, Pe=
ngutronix
> +// SPDX-FileCopyrightText: 2007 SigmaTel, Inc. (Ioannis Kappas <ikappas@=
sigmatel.com>)
> +// SPDX-FileCopyrightText: 2003 Russell King
> +// SPDX-FileCopyrightText: 2004-2005 Pierre Ossman
> +// SPDX-FileCopyrightText: 2008-2009 Freescale Semiconductor, Inc
> +// SPDX-FileCopyrightText: 2008 Embedded Alley Solutions, Inc
> +
>  /*
> - * Copyright (C) 2010 Juergen Beisert, Pengutronix <jbe@pengutronix.de>
> - *
> - * This code is based on:
> - *
> - * Copyright (C) 2007 SigmaTel, Inc., Ioannis Kappas <ikappas@sigmatel.c=
om>
> - *
> - * Portions copyright (C) 2003 Russell King, PXA MMCI Driver
> - * Portions copyright (C) 2004-2005 Pierre Ossman, W83L51xD SD/MMC driver
> - *
> - * Copyright 2008-2009 Freescale Semiconductor, Inc. All Rights Reserved.
> - * Copyright 2008 Embedded Alley Solutions, Inc All Rights Reserved.
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
> + * This code is reused code from the PXA MMCI Driver and W83L51xD SD/MMC=
 driver.
>   */
>  =

>  /**
> diff --git a/drivers/mci/omap_hsmmc.c b/drivers/mci/omap_hsmmc.c
> index 6623503cee06..61a1f4680535 100644
> --- a/drivers/mci/omap_hsmmc.c
> +++ b/drivers/mci/omap_hsmmc.c
> @@ -1,19 +1,6 @@
> -/*
> - * (C) Copyright 2008
> - * Texas Instruments, <www.ti.com>
> - * Sukumar Ghorai <s-ghorai@ti.com>
> - *
> - * This program is free software; you can redistribute it and/or
> - * modify it under the terms of the GNU General Public License as
> - * published by the Free Software Foundation's version 2 of
> - * the License.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - *
> - */
> +// SPDX-License-Identifier: GPL-2.0-only
> +// SPDX-FileCopyrightText: 2008 Texas Instruments (http://www.ti.com/, S=
ukumar Ghorai <s-ghorai@ti.com>)
> +
>  /* #define DEBUG */
>  #include <config.h>
>  #include <common.h>
> diff --git a/drivers/mci/pxamci.c b/drivers/mci/pxamci.c
> index 1a33661d0fe4..1ec871afbff2 100644
> --- a/drivers/mci/pxamci.c
> +++ b/drivers/mci/pxamci.c
> @@ -1,12 +1,8 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +// SPDX-FileCopyrightText: 2011 Robert Jarzmik
> +
>  /*
> - *  PXA MCI driver
> - *
> - * Copyright (C) 2011 Robert Jarzmik
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2 as
> - * published by the Free Software Foundation.
> - *
> + * PXA MCI driver
>   * Insprired by linux kernel driver
>   */
>  =

> diff --git a/drivers/mci/pxamci.h b/drivers/mci/pxamci.h
> index 07dea451c114..3dd93cb267de 100644
> --- a/drivers/mci/pxamci.h
> +++ b/drivers/mci/pxamci.h
> @@ -1,12 +1,8 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/* SPDX-FileCopyrightText: 2011 Robert Jarzmik */
> +
>  /*
> - *  PXA MCI driver
> - *
> - * Copyright (C) 2011 Robert Jarzmik
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2 as
> - * published by the Free Software Foundation.
> - *
> + * PXA MCI driver
>   * Insprired by linux kernel driver
>   */
>  =

> diff --git a/drivers/mci/s3c.c b/drivers/mci/s3c.c
> index 489609712cb1..1de57a608f72 100644
> --- a/drivers/mci/s3c.c
> +++ b/drivers/mci/s3c.c
> @@ -1,26 +1,13 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +// SPDX-FileCopyrightText: 2010 Juergen Beisert <juergen@kreuzholzen.de>
> +// SPDX-FileCopyrightText: 2004-2006 Thomas Kleffel <tk@maintech.de>, ma=
intech GmbH
> +// SPDX-FileCopyrightText: 2008 Simtec Electronics <ben-linux@fluff.org>
> +// SPDX-FileCopyrightText: 2006 OpenMoko, Inc (Harald Welte <laforge@ope=
nmoko.org>)
> +// SPDX-FileCopyrightText: 2005 Thomas Kleffel
> +
>  /*
> - * Copyright (C) 2010 Juergen Beisert <juergen@kreuzholzen.de>
> - *
> - * This code is partially based on u-boot code:
> - *
> - * This code is based on various Linux and u-boot sources:
> - *  Copyright (C) 2004-2006 maintech GmbH, Thomas Kleffel <tk@maintech.d=
e>
> - *  Copyright (C) 2008 Simtec Electronics <ben-linux@fluff.org>
> - *  (C) Copyright 2006 by OpenMoko, Inc.
> - *  Author: Harald Welte <laforge@openmoko.org>
> - *  based on u-boot pxa MMC driver and linux/drivers/mmc/s3c2410mci.c
> - *  (C) 2005-2005 Thomas Kleffel
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
> + * This code is partially based on Linux and u-boot sources, among other=
s the
> + * u-boot pxa MMC driver and linux/drivers/mmc/s3c2410mci.c.
>   */
>  =

>  /**
> diff --git a/drivers/mci/tegra-sdmmc.c b/drivers/mci/tegra-sdmmc.c
> index 15e33b85c598..756fb94c525c 100644
> --- a/drivers/mci/tegra-sdmmc.c
> +++ b/drivers/mci/tegra-sdmmc.c
> @@ -1,21 +1,6 @@
> -/*
> - * Copyright (C) 2013 Lucas Stach <l.stach@pengutronix.de>
> - *
> - * Partly based on code (C) Copyright 2010-2013
> - * NVIDIA Corporation <www.nvidia.com>
> - *
> - * This program is free software; you can redistribute it and/or modify =
it
> - * under the terms and conditions of the GNU General Public License,
> - * version 2, as published by the Free Software Foundation.
> - *
> - * This program is distributed in the hope it will be useful, but WITHOUT
> - * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
> - * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License=
 for
> - * more details.
> - *
> - * You should have received a copy of the GNU General Public License
> - * along with this program.  If not, see <http://www.gnu.org/licenses/>.
> - */
> +// SPDX-License-Identifier: GPL-2.0-only
> +// SPDX-FileCopyrightText: 2013 Lucas Stach <l.stach@pengutronix.de>
> +// SPDX-FileCopyrightText: 2010-2013 NVIDIA Corporation (http://www.nvid=
ia.com/)
>  =

>  #include <common.h>
>  #include <clock.h>
> -- =

> 2.29.2
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
