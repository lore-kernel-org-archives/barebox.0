Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gTtra-0006Vd-FT
 for barebox@lists.infradead.org; Mon, 03 Dec 2018 19:26:40 +0000
Message-ID: <bfe7408f5a7978e67c284e47caeb8829d931c7a6.camel@lynxeye.de>
From: Lucas Stach <dev@lynxeye.de>
Date: Mon, 03 Dec 2018 20:14:29 +0100
In-Reply-To: <20181203183840.21801-1-linux@rempel-privat.de>
References: <20181203183840.21801-1-linux@rempel-privat.de>
Mime-Version: 1.0
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
Subject: Re: [PATCH v1] drivers: net: convert drivers to spdx
To: Oleksij Rempel <linux@rempel-privat.de>, barebox@lists.infradead.org

Am Montag, den 03.12.2018, 19:38 +0100 schrieb Oleksij Rempel:
> Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>

[...]

> diff --git a/drivers/net/ag71xx.c b/drivers/net/ag71xx.c
> index a422aacdd..af5e1ae45 100644
> --- a/drivers/net/ag71xx.c
> +++ b/drivers/net/ag71xx.c
> @@ -1,3 +1,4 @@
> +// SPDX-License-Identifier: GPL-2.0+

GPL-2.0

>  /*
>   *  Atheros AR71xx built-in ethernet mac driver
>   *
> @@ -5,10 +6,6 @@
>   *  Copyright (C) 2008 Imre Kaloz <kaloz@openwrt.org>
>   *
>   *  Based on Atheros' AG7100 driver
> - *
> - *  This program is free software; you can redistribute it and/or modify it
> - *  under the terms of the GNU General Public License version 2 as published
> - *  by the Free Software Foundation.
>   */

[snip]

And while I know that the Linux kernel still wants the GPL-2.0+ tag,
I'm really not sure if we should use the deprecated tag in Barebox, or
if it would better to go straight to the GPL-2.0-or-later tag.

Regards,
Lucas


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
