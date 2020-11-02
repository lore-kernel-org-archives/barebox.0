Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kZUrS-0003OP-9B
 for barebox@lists.infradead.org; Mon, 02 Nov 2020 08:06:43 +0000
Date: Mon, 2 Nov 2020 09:06:39 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201102080639.GR26805@pengutronix.de>
References: <20201029213815.109183-1-u.kleine-koenig@pengutronix.de>
 <20201029213815.109183-2-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201029213815.109183-2-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH 2/2] arm: imx: Convert mach headers to SPDX
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>, Roland Hieber <rhi@pengutronix.de>

On Thu, Oct 29, 2020 at 10:38:15PM +0100, Uwe Kleine-K=F6nig wrote:
> Replace license and copyright boilerplate by SPDX identfiers for files
> identified as GPL-2.0-only or GPL-2.0-or-later by licensecheck.
> =

> diff --git a/arch/arm/mach-imx/include/mach/iomux-mx35.h b/arch/arm/mach-=
imx/include/mach/iomux-mx35.h
> index 30b94e3b0034..6f4753b1e447 100644
> --- a/arch/arm/mach-imx/include/mach/iomux-mx35.h
> +++ b/arch/arm/mach-imx/include/mach/iomux-mx35.h
> @@ -1,16 +1,5 @@
> -/*
> - * Copyright (C, NO_PAD_CTRL) 2009 by Jan Weitzel Phytec Messtechnik Gmb=
H <armlinux@phytec.de>
> - *
> - * This program is free software; you can redistribute it and/or
> - * modify it under the terms of the GNU General Public License
> - * as published by the Free Software Foundation; either version 2
> - * of the License, or (at your option, NO_PAD_CTRL) any later version.
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - *
> - */
> +/* SPDX-License-Identifier: GPL-2.0-only */

This should be GPL-2.0-or-later. Fixed while applying.

Sascha


-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
