Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyWN1-0008Ap-QU
 for barebox@lists.infradead.org; Mon, 03 Feb 2020 07:42:13 +0000
References: <20190207223906.24394-1-rohieb@rohieb.name>
 <20200202154301.18383-1-rohieb@rohieb.name>
 <20200202154301.18383-2-rohieb@rohieb.name>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <9d709f31-dbcc-9b8f-c9bb-47449db413ff@pengutronix.de>
Date: Mon, 3 Feb 2020 08:42:04 +0100
MIME-Version: 1.0
In-Reply-To: <20200202154301.18383-2-rohieb@rohieb.name>
Content-Language: en-US
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
Subject: Re: [PATCH v2 1/6] include: add SPDX GPL-2.0-only license tags where
 applicable
To: Roland Hieber <rohieb@rohieb.name>, barebox@lists.infradead.org

Hello Roland,

firstly thanks for working on this!

On 2/2/20 4:42 PM, Roland Hieber wrote:
> Interpret "GPLv2" as "GPLv2 only".
> 
> Signed-off-by: Roland Hieber <rohieb@rohieb.name>
> ---
>  include/aimage.h            |  3 +--
>  include/aiodev.h            | 13 +------------
>  include/binfmt.h            |  3 +--
>  include/bootstrap.h         |  3 +--
>  include/bpkfs.h             |  3 +--
>  include/dhcp.h              |  5 +----
>  include/digest.h            | 12 +-----------
>  include/dma.h               |  4 +---
>  include/firmware.h          | 10 +---------
>  include/getopt.h            | 11 +----------
>  include/local_mac_address.h |  3 +--
>  include/menu.h              | 12 +-----------
>  include/of_graph.h          |  5 +----
>  include/of_mtd.h            |  3 +--
>  include/of_net.h            |  3 +--
>  include/password.h          | 11 +----------
>  include/pbl.h               |  3 +--
>  include/poller.h            |  4 +---
>  include/shell.h             |  3 +--
>  include/uimagefs.h          |  3 +--
>  include/w1_mac_address.h    |  3 +--
>  include/xymodem.h           | 11 +----------
>  22 files changed, 22 insertions(+), 109 deletions(-)
> 

> diff --git a/include/xymodem.h b/include/xymodem.h
> index 917cecc003f7..7b8602b26573 100644
> --- a/include/xymodem.h
> +++ b/include/xymodem.h
> @@ -1,17 +1,8 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
>  /*
>   * Handles the X-Modem, Y-Modem and Y-Modem/G protocols
>   *
>   * Copyright (C) 2008 Robert Jarzmik
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License as published by
> - * the Free Software Foundation; either version 2 of the License, or
> - * (at your option) any later version.

This one should be GPL-2.0-or-later.

With this addressed,
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
