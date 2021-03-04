Delivery-date: Thu, 04 Mar 2021 12:13:59 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lHlva-00015N-SV
	for lore@lore.pengutronix.de; Thu, 04 Mar 2021 12:13:58 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lHlvW-00061W-HB
	for lore@pengutronix.de; Thu, 04 Mar 2021 12:13:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rRAETg8h+naENoofxfj/Ji6McH7azUfB7GNwTjYz79Y=; b=GiBp6ql6p4U5obmQe7h+FL0NE
	2AzpIWeJd4WmcJV0G3VlnnTQaHnXFJyO6a2Yr+x1yQ1bOO1g2FdBe2AmzGxm78dTnWfm9w0gD+WbJ
	p1A/685smIZVzDc1Z2jMt4f0fp55qIHdoy0kDCKp4QuveZy3GV9Y4vtd2QtIMFHNUNmTgl1A72/Hm
	fRlE6bbLelgnTeL1mUUzPHhGasZovgE/tAybGwfVsULr3tedtjtTqc843cynH39lFju9S2SHt1Z13
	TQmBzgEX1HzfzEf+A5WhBWSdcCq6YxtAXb0HS4xzeBHqxqrVUnCaOZ5YDYn2PrNL8djP+tKCuCJpz
	/FS/+J+Zw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lHlry-008QOF-Dl; Thu, 04 Mar 2021 11:10:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHlrO-008QMu-Ad
 for barebox@lists.infradead.org; Thu, 04 Mar 2021 11:10:05 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lHlrL-0005Ml-KZ; Thu, 04 Mar 2021 12:09:35 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lHlrL-00064V-BY; Thu, 04 Mar 2021 12:09:35 +0100
Date: Thu, 4 Mar 2021 12:09:35 +0100
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210304110935.GA12944@pengutronix.de>
References: <20210303092331.2067823-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210303092331.2067823-1-u.kleine-koenig@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 12:09:26 up 14 days, 14:33, 80 users,  load average: 0.04, 0.14, 0.14
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
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
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] gpio: Replace license and copyright boilerplate by SPDX
 identifiers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Mar 03, 2021 at 10:23:31AM +0100, Uwe Kleine-K=F6nig wrote:
> Converts the files that licensecheck can determine to be licensed under
> GPL-2.0-only or GPL-2.0-or-later and also convert the copyright statements
> to SPDX.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  drivers/gpio/gpio-74164.c          | 15 ++++++-------
>  drivers/gpio/gpio-ath79.c          | 14 ++++++------
>  drivers/gpio/gpio-davinci.c        | 14 +++++-------
>  drivers/gpio/gpio-digic.c          | 17 ++-------------
>  drivers/gpio/gpio-dw.c             | 18 +++-------------
>  drivers/gpio/gpio-generic.c        | 15 +++++--------
>  drivers/gpio/gpio-imx.c            | 23 +++++---------------
>  drivers/gpio/gpio-jz4740.c         | 18 ++++------------
>  drivers/gpio/gpio-libftdi1.c       | 16 +++-----------
>  drivers/gpio/gpio-malta-fpga-i2c.c | 18 ++--------------
>  drivers/gpio/gpio-mpc8xxx.c        | 11 ++++------
>  drivers/gpio/gpio-mxs.c            | 12 ++---------
>  drivers/gpio/gpio-omap.c           | 34 +++++-------------------------
>  drivers/gpio/gpio-orion.c          | 13 ++----------
>  drivers/gpio/gpio-pca953x.c        | 12 ++++-------
>  drivers/gpio/gpio-pcf857x.c        | 10 +++------
>  drivers/gpio/gpio-pl061.c          |  9 +++-----
>  drivers/gpio/gpio-stmpe.c          | 17 ++-------------
>  drivers/gpio/gpio-sx150x.c         | 11 ++++------
>  drivers/gpio/gpio-tegra.c          | 19 +++--------------
>  drivers/gpio/gpio-vf610.c          | 16 +++-----------
>  21 files changed, 76 insertions(+), 256 deletions(-)

Applied, thanks

Sascha

> =

> diff --git a/drivers/gpio/gpio-74164.c b/drivers/gpio/gpio-74164.c
> index e4d413b6898a..23dec89ec8a2 100644
> --- a/drivers/gpio/gpio-74164.c
> +++ b/drivers/gpio/gpio-74164.c
> @@ -1,16 +1,13 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +// SPDX-FileCopyrightText: 2010 Gabor Juhos <juhosg@openwrt.org>
> +// SPDX-FileCopyrightText: 2010 Miguel Gaio <miguel.gaio@efixo.com>
> +
>  /*
>   * Generic serial-in/parallel-out 8-bits shift register GPIO driver
>   *   e.g. for 74x164
>   *
> - * Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
> - *
> - * Based on Linux driver
> - *  Copyright (C) 2010 Gabor Juhos <juhosg@openwrt.org>
> - *  Copyright (C) 2010 Miguel Gaio <miguel.gaio@efixo.com>
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2 as
> - * published by the Free Software Foundation.
> + * Created by Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
> + * based on the Linux driver for this hardware.
>   */
>  =

>  #include <common.h>
> diff --git a/drivers/gpio/gpio-ath79.c b/drivers/gpio/gpio-ath79.c
> index 1e66107c845f..72f76c8a54f4 100644
> --- a/drivers/gpio/gpio-ath79.c
> +++ b/drivers/gpio/gpio-ath79.c
> @@ -1,16 +1,14 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +// SPDX-FileCopyrightText: 2010-2011 Jaiganesh Narayanan <jnarayanan@ath=
eros.com>
> +// SPDX-FileCopyrightText: 2008-2011 Gabor Juhos <juhosg@openwrt.org>
> +// SPDX-FileCopyrightText: 2008 Imre Kaloz <kaloz@openwrt.org>
> +// SPDX-FileCopyrightText: 2015 Antony Pavlov <antonynpavlov@gmail.com>
> +
>  /*
>   *  Atheros AR71XX/AR724X/AR913X GPIO API support
>   *
> - *  Copyright (C) 2010-2011 Jaiganesh Narayanan <jnarayanan@atheros.com>
> - *  Copyright (C) 2008-2011 Gabor Juhos <juhosg@openwrt.org>
> - *  Copyright (C) 2008 Imre Kaloz <kaloz@openwrt.org>
> - *  Copyright (C) 2015 Antony Pavlov <antonynpavlov@gmail.com>
> - *
>   *  Parts of this file are based on Atheros' 2.6.15/2.6.31 BSP
>   *
> - *  This program is free software; you can redistribute it and/or modify=
 it
> - *  under the terms of the GNU General Public License version 2 as publi=
shed
> - *  by the Free Software Foundation.
>   */
>  =

>  #include <common.h>
> diff --git a/drivers/gpio/gpio-davinci.c b/drivers/gpio/gpio-davinci.c
> index 3346209f7633..20311d968b82 100644
> --- a/drivers/gpio/gpio-davinci.c
> +++ b/drivers/gpio/gpio-davinci.c
> @@ -1,14 +1,10 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +// SPDX-FileCopyrightText: 2006-2007 David Brownell
> +// SPDX-FileCopyrightText: 2007 MontaVista Software, Inc. <source@mvista=
.com>
> +// SPDX-FileCopyrightText: 2014 Antony Pavlov <antonynpavlov@gmail.com>
> +
>  /*
>   * TI DaVinci GPIO Support
> - *
> - * Copyright (c) 2006-2007 David Brownell
> - * Copyright (c) 2007, MontaVista Software, Inc. <source@mvista.com>
> - * Copyright (c) 2014 Antony Pavlov <antonynpavlov@gmail.com>
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License as published by
> - * the Free Software Foundation; either version 2 of the License, or
> - * (at your option) any later version.
>   */
>  =

>  #include <common.h>
> diff --git a/drivers/gpio/gpio-digic.c b/drivers/gpio/gpio-digic.c
> index 9faa27c183be..5a6dd95aaeef 100644
> --- a/drivers/gpio/gpio-digic.c
> +++ b/drivers/gpio/gpio-digic.c
> @@ -1,18 +1,5 @@
> -/*
> - * Copyright (C) 2013 Antony Pavlov <antonynpavlov@gmail.com>
> - *
> - * This file is part of barebox.
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
> - */
> +// SPDX-License-Identifier: GPL-2.0-only
> +// SPDX-FileCopyrightText: 2013 Antony Pavlov <antonynpavlov@gmail.com>
>  =

>  #include <common.h>
>  #include <malloc.h>
> diff --git a/drivers/gpio/gpio-dw.c b/drivers/gpio/gpio-dw.c
> index b7a61a8d902d..448a04d4ba54 100644
> --- a/drivers/gpio/gpio-dw.c
> +++ b/drivers/gpio/gpio-dw.c
> @@ -1,20 +1,8 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +// SPDX-FileCopyrightText: 2012 Altera
> +
>  /*
>   * Designware GPIO support functions
> - *
> - * Copyright (C) 2012 Altera
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
> - * You should have received a copy of the GNU General Public License
> - * along with this program.  If not, see <http://www.gnu.org/licenses/>.
>   */
>  =

>  #include <common.h>
> diff --git a/drivers/gpio/gpio-generic.c b/drivers/gpio/gpio-generic.c
> index a9ddf26fa428..8259b799f9a7 100644
> --- a/drivers/gpio/gpio-generic.c
> +++ b/drivers/gpio/gpio-generic.c
> @@ -1,14 +1,9 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +// SPDX-FileCopyrightText: 2008 MontaVista Software, Inc.
> +// SPDX-FileCopyrightText: 2008,2010 Anton Vorontsov <cbouatmailru@gmail=
.com>
> +
>  /*
> - * Generic driver for memory-mapped GPIO controllers.
> - *
> - * Based on linux driver by:
> - *  Copyright 2008 MontaVista Software, Inc.
> - *  Copyright 2008,2010 Anton Vorontsov <cbouatmailru@gmail.com>
> - *
> - * This program is free software; you can redistribute  it and/or modify=
 it
> - * under  the terms of  the GNU General  Public License as published by =
the
> - * Free Software Foundation;  either version 2 of the  License, or (at y=
our
> - * option) any later version.
> + * Generic driver for memory-mapped GPIO controllers, based on the Linux=
 driver.
>   */
>  =

>  #include <init.h>
> diff --git a/drivers/gpio/gpio-imx.c b/drivers/gpio/gpio-imx.c
> index c7ebce0b86f2..8ddec1244ba9 100644
> --- a/drivers/gpio/gpio-imx.c
> +++ b/drivers/gpio/gpio-imx.c
> @@ -1,23 +1,10 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +// SPDX-FileCopyrightText: 2004 Sascha Hauer, Synertronixx GmbH
> +
>  /*
> - *  arch/arm/mach-imx/gpio.c
> - *
> - *  author: Sascha Hauer
> - *  Created: april 20th, 2004
> - *  Copyright: Synertronixx GmbH
> - *
> - *  Common code for i.MX machines
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
> + * arch/arm/mach-imx/gpio.c
>   *
> + * Common code for i.MX machines
>   */
>  =

>  #include <common.h>
> diff --git a/drivers/gpio/gpio-jz4740.c b/drivers/gpio/gpio-jz4740.c
> index bf99b718e824..cf1afb9f1dc9 100644
> --- a/drivers/gpio/gpio-jz4740.c
> +++ b/drivers/gpio/gpio-jz4740.c
> @@ -1,19 +1,9 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +// SPDX-FileCopyrightText: 2013,2014 Antony Pavlov <antonynpavlov@gmail.=
com>
> +// SPDX-FileCopyrightText: 2009-2010 Lars-Peter Clausen <lars@metafoo.de>
> +
>  /*
> - * Copyright (C) 2013, 2014 Antony Pavlov <antonynpavlov@gmail.com>
> - *
>   * Based on Linux JZ4740 platform GPIO support:
> - * Copyright (C) 2009-2010, Lars-Peter Clausen <lars@metafoo.de>
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
> diff --git a/drivers/gpio/gpio-libftdi1.c b/drivers/gpio/gpio-libftdi1.c
> index cd36b08ca623..d8e1fc8b3440 100644
> --- a/drivers/gpio/gpio-libftdi1.c
> +++ b/drivers/gpio/gpio-libftdi1.c
> @@ -1,18 +1,8 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +// SPDX-FileCopyrightText: 2016,2017 Antony Pavlov <antonynpavlov@gmail.=
com>
> +
>  /*
>   * libftdi1 sandbox barebox GPIO driver
> - *
> - * Copyright (C) 2016, 2017 Antony Pavlov <antonynpavlov@gmail.com>
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
> diff --git a/drivers/gpio/gpio-malta-fpga-i2c.c b/drivers/gpio/gpio-malta=
-fpga-i2c.c
> index 8002f7b73a3a..e835c3e4ab8c 100644
> --- a/drivers/gpio/gpio-malta-fpga-i2c.c
> +++ b/drivers/gpio/gpio-malta-fpga-i2c.c
> @@ -1,19 +1,5 @@
> -/*
> - * Copyright (C) 2014 Antony Pavlov <antonynpavlov@gmail.com>
> - *
> - * This file is part of barebox.
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
> - */
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +// SPDX-FileCopyrightText: 2014 Antony Pavlov <antonynpavlov@gmail.com>
>  =

>  #include <common.h>
>  #include <init.h>
> diff --git a/drivers/gpio/gpio-mpc8xxx.c b/drivers/gpio/gpio-mpc8xxx.c
> index 710e5d1176fe..1ef459684d64 100644
> --- a/drivers/gpio/gpio-mpc8xxx.c
> +++ b/drivers/gpio/gpio-mpc8xxx.c
> @@ -1,12 +1,9 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +// SPDX-FileCopyrightText: 2008 Peter Korsgaard <jacmet@sunsite.dk>
> +// SPDX-FileCopyrightText: 2016 Freescale Semiconductor Inc.
> +
>  /*
>   * GPIOs on MPC512x/8349/8572/8610/QorIQ and compatible
> - *
> - * Copyright (C) 2008 Peter Korsgaard <jacmet@sunsite.dk>
> - * Copyright (C) 2016 Freescale Semiconductor Inc.
> - *
> - * This file is licensed under the terms of the GNU General Public Licen=
se
> - * version 2.  This program is licensed "as is" without any warranty of =
any
> - * kind, whether express or implied.
>   */
>  =

>  #include <common.h>
> diff --git a/drivers/gpio/gpio-mxs.c b/drivers/gpio/gpio-mxs.c
> index aca93f5b27db..dde79f8fe8fb 100644
> --- a/drivers/gpio/gpio-mxs.c
> +++ b/drivers/gpio/gpio-mxs.c
> @@ -1,15 +1,7 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +
>  /*
>   * Freescale MXS gpio support
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
>   */
>  =

>  #include <common.h>
> diff --git a/drivers/gpio/gpio-omap.c b/drivers/gpio/gpio-omap.c
> index 88fca4f68af1..a328317ce894 100644
> --- a/drivers/gpio/gpio-omap.c
> +++ b/drivers/gpio/gpio-omap.c
> @@ -1,35 +1,11 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +// SPDX-FileCopyrightText: 2009 Wind River Systems, Inc. (Tom Rix <Tom.R=
ix@windriver.com>)
> +// SPDX-FileCopyrightText: 2003-2005 Nokia Corporation (Juha Yrj=F6l=E4 =
<juha.yrjola@nokia.com>)
> +
>  /*
> - * Copyright (c) 2009 Wind River Systems, Inc.
> - * Tom Rix <Tom.Rix@windriver.com>
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
> - * This work is derived from the linux 2.6.27 kernel source
> - * To fetch, use the kernel repository
> - * git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux-2.6.git
> - * Use the v2.6.27 tag.
> - *
> - * Below is the original's header including its copyright
> - *
> - *  linux/arch/arm/plat-omap/gpio.c
> - *
>   * Support functions for OMAP GPIO
>   *
> - * Copyright (C) 2003-2005 Nokia Corporation
> - * Written by Juha Yrj=F6l=E4 <juha.yrjola@nokia.com>
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2 as
> - * published by the Free Software Foundation.
> + * This work is derived from the omap GPIO driver in Linux 2.6.27.
>   */
>  #include <common.h>
>  #include <io.h>
> diff --git a/drivers/gpio/gpio-orion.c b/drivers/gpio/gpio-orion.c
> index ba2729d1f040..afbcb9d32186 100644
> --- a/drivers/gpio/gpio-orion.c
> +++ b/drivers/gpio/gpio-orion.c
> @@ -1,18 +1,9 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +
>  /*
>   * Marvell Orion/MVEBU SoC GPIO driver
>   *
>   * Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
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
>   */
>  =

>  #include <common.h>
> diff --git a/drivers/gpio/gpio-pca953x.c b/drivers/gpio/gpio-pca953x.c
> index 98a7a6c97c3b..8d8cd21310d8 100644
> --- a/drivers/gpio/gpio-pca953x.c
> +++ b/drivers/gpio/gpio-pca953x.c
> @@ -1,16 +1,12 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +// SPDX-FileCopyrightText: 2005 Ben Gardner <bgardner@wabtec.com>
> +// SPDX-FileCopyrightText: 2007 Marvell International Ltd.
> +
>  /*
>   *  PCA953x 4/8/16/24/40 bit I/O ports
>   *
>   *  This code was ported from linux-3.15 kernel by Antony Pavlov.
> - *
> - *  Copyright (C) 2005 Ben Gardner <bgardner@wabtec.com>
> - *  Copyright (C) 2007 Marvell International Ltd.
> - *
>   *  Derived from drivers/i2c/chips/pca9539.c
> - *
> - *  This program is free software; you can redistribute it and/or modify
> - *  it under the terms of the GNU General Public License as published by
> - *  the Free Software Foundation; version 2 of the License.
>   */
>  =

>  #include <common.h>
> diff --git a/drivers/gpio/gpio-pcf857x.c b/drivers/gpio/gpio-pcf857x.c
> index 6c1c0ac35252..fefd20de6f01 100644
> --- a/drivers/gpio/gpio-pcf857x.c
> +++ b/drivers/gpio/gpio-pcf857x.c
> @@ -1,14 +1,10 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +// SPDX-FileCopyrightText: 2007 David Brownell
> +
>  /*
>   * Driver for pcf857x, pca857x, and pca967x I2C GPIO expanders
>   *
>   * This code was ported from linux-5.1 kernel by Michael Grzeschik.
> - *
> - * Copyright (C) 2007 David Brownell
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License as published by
> - * the Free Software Foundation; either version 2 of the License, or
> - * (at your option) any later version.
>   */
>  =

>  #include <common.h>
> diff --git a/drivers/gpio/gpio-pl061.c b/drivers/gpio/gpio-pl061.c
> index c17c265440e5..dc4999706b98 100644
> --- a/drivers/gpio/gpio-pl061.c
> +++ b/drivers/gpio/gpio-pl061.c
> @@ -1,10 +1,7 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +// SPDX-FileCopyrightText: 2008,2009 Provigent Ltd.
> +
>  /*
> - * Copyright (C) 2008, 2009 Provigent Ltd.
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2 as
> - * published by the Free Software Foundation.
> - *
>   * Driver for the ARM PrimeCell(tm) General Purpose Input/Output (PL061)
>   *
>   * Data sheet: ARM DDI 0190B, September 2000
> diff --git a/drivers/gpio/gpio-stmpe.c b/drivers/gpio/gpio-stmpe.c
> index ef37fe0dcf3d..4b572800a7a0 100644
> --- a/drivers/gpio/gpio-stmpe.c
> +++ b/drivers/gpio/gpio-stmpe.c
> @@ -1,18 +1,5 @@
> -/*
> - * Copyright (C) 2012 Pengutronix
> - * Steffen Trumtrar <s.trumtrar@pengutronix.de>
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
> - */
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +// SPDX-FileCopyrightText: 2012 Steffen Trumtrar <s.trumtrar@pengutronix=
.de>, Pengutronix
>  =

>  #include <common.h>
>  #include <errno.h>
> diff --git a/drivers/gpio/gpio-sx150x.c b/drivers/gpio/gpio-sx150x.c
> index cf166f3c28cc..75c0be519d12 100644
> --- a/drivers/gpio/gpio-sx150x.c
> +++ b/drivers/gpio/gpio-sx150x.c
> @@ -1,19 +1,16 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +// SPDX-FileCopyrightText: 2016 BayLibre, SAS (Neil Armstrong <narmstron=
g@baylibre.com>)
> +// SPDX-FileCopyrightText: 2010 Code Aurora Forum
> +
>  /*
>   *  Driver for SX150x I2C GPIO expanders
>   *
>   *  This code was ported from linux-4.9 kernel driver by
>   *  Andrey Smirnov <andrew.smirnov@gmail.com>.
>   *
> - *  Orginal code with it's copyright info can be found in
> - *  drivers/pinctrl/pinctrl-sx150x.c
> - *
>   *  Note: That although linux driver was converted from being a GPIO
>   *  subsystem to Pinctrl subsytem driver, due to Barebox's lack of
>   *  similar provisions this driver is still a GPIO driver.
> - *
> - *  This program is free software; you can redistribute it and/or modify
> - *  it under the terms of the GNU General Public License as published by
> - *  the Free Software Foundation; version 2 of the License.
>   */
>  =

>  #include <common.h>
> diff --git a/drivers/gpio/gpio-tegra.c b/drivers/gpio/gpio-tegra.c
> index 2348ce664a46..8ce4df46615f 100644
> --- a/drivers/gpio/gpio-tegra.c
> +++ b/drivers/gpio/gpio-tegra.c
> @@ -1,19 +1,6 @@
> -/* *
> - * Copyright (C) 2010 Erik Gilling <konkers@google.com>, Google, Inc
> - * Copyright (C) 2013 Lucas Stach <l.stach@pengutronix.de>
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
> +// SPDX-FileCopyrightText: 2010 Erik Gilling <konkers@google.com>, Googl=
e, Inc
> +// SPDX-FileCopyrightText: 2013 Lucas Stach <l.stach@pengutronix.de>
>  =

>  #include <common.h>
>  #include <gpio.h>
> diff --git a/drivers/gpio/gpio-vf610.c b/drivers/gpio/gpio-vf610.c
> index b08b396a6ef1..f8e31736f8b3 100644
> --- a/drivers/gpio/gpio-vf610.c
> +++ b/drivers/gpio/gpio-vf610.c
> @@ -1,18 +1,8 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +// SPDX-FileCopyrightText: 2014 Toradex AG (Stefan Agner <stefan@agner.c=
h>)
> +
>  /*
>   * vf610 GPIO support through PORT and GPIO module
> - *
> - * Copyright (c) 2014 Toradex AG.
> - *
> - * Author: Stefan Agner <stefan@agner.ch>.
> - *
> - * This program is free software; you can redistribute it and/or
> - * modify it under the terms of the GNU General Public License
> - * as published by the Free Software Foundation; either version 2
> - * of the License, or (at your option) any later version.
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
>   */
>  =

>  #include <common.h>
> -- =

> 2.30.0
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

