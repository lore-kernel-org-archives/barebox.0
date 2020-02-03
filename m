Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyWV6-00034N-Ak
 for barebox@lists.infradead.org; Mon, 03 Feb 2020 07:50:33 +0000
References: <20190207223906.24394-1-rohieb@rohieb.name>
 <20200202154301.18383-1-rohieb@rohieb.name>
 <20200202154301.18383-6-rohieb@rohieb.name>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <9c959f6e-7f14-ce5a-35fb-f3c2933651bd@pengutronix.de>
Date: Mon, 3 Feb 2020 08:50:21 +0100
MIME-Version: 1.0
In-Reply-To: <20200202154301.18383-6-rohieb@rohieb.name>
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
Subject: Re: [PATCH v2 5/6] include: spi: add SPDX GPL-2.0-or-later license
 tags where applicable
To: Roland Hieber <rohieb@rohieb.name>, barebox@lists.infradead.org



On 2/2/20 4:43 PM, Roland Hieber wrote:
> Signed-off-by: Roland Hieber <rohieb@rohieb.name>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  include/spi/spi_gpio.h | 11 +----------
>  1 file changed, 1 insertion(+), 10 deletions(-)
> 
> diff --git a/include/spi/spi_gpio.h b/include/spi/spi_gpio.h
> index 841c934f6ead..a18b7dbe078a 100644
> --- a/include/spi/spi_gpio.h
> +++ b/include/spi/spi_gpio.h
> @@ -1,3 +1,4 @@
> +/* SPDX-License-Identifier: GPL-2.0-or-later */
>  /*
>   * SPI master driver using generic bitbanged GPIO
>   *
> @@ -5,16 +6,6 @@
>   *
>   * Based on Linux driver
>   *   Copyright (C) 2006,2008 David Brownell
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
>  
>  #ifndef __SPI_GPIO_H
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
