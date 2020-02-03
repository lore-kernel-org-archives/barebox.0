Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyWVg-0003BJ-3D
 for barebox@lists.infradead.org; Mon, 03 Feb 2020 07:51:09 +0000
References: <20190207223906.24394-1-rohieb@rohieb.name>
 <20200202154301.18383-1-rohieb@rohieb.name>
 <20200202154301.18383-7-rohieb@rohieb.name>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <4fe556e2-a703-de00-1532-83a268aa5f44@pengutronix.de>
Date: Mon, 3 Feb 2020 08:51:04 +0100
MIME-Version: 1.0
In-Reply-To: <20200202154301.18383-7-rohieb@rohieb.name>
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
Subject: Re: [PATCH v2 6/6] include: spi: add SPDX GPL-2.0-only license tags
 for files without licensing information
To: Roland Hieber <rohieb@rohieb.name>, barebox@lists.infradead.org



On 2/2/20 4:43 PM, Roland Hieber wrote:
> According to our /README, GPL-2.0-only applies for the whole project
> except noted otherwise.
> 
> Signed-off-by: Roland Hieber <rohieb@rohieb.name>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  include/spi/eeprom.h  | 1 +
>  include/spi/flash.h   | 1 +
>  include/spi/imx-spi.h | 1 +
>  include/spi/spi.h     | 1 +
>  4 files changed, 4 insertions(+)
> 
> diff --git a/include/spi/eeprom.h b/include/spi/eeprom.h
> index 15495e59f5d6..410ecea19c16 100644
> --- a/include/spi/eeprom.h
> +++ b/include/spi/eeprom.h
> @@ -1,3 +1,4 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
>  #ifndef _SPI_EEPROM_H
>  #define _SPI_EEPROM_H
>  
> diff --git a/include/spi/flash.h b/include/spi/flash.h
> index c1204e7e61a0..796d649d9a92 100644
> --- a/include/spi/flash.h
> +++ b/include/spi/flash.h
> @@ -1,3 +1,4 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
>  #ifndef LINUX_SPI_FLASH_H
>  #define LINUX_SPI_FLASH_H
>  
> diff --git a/include/spi/imx-spi.h b/include/spi/imx-spi.h
> index a592573e6265..568795188c0c 100644
> --- a/include/spi/imx-spi.h
> +++ b/include/spi/imx-spi.h
> @@ -1,3 +1,4 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
>  #ifndef __SPI_IMX_SPI_H
>  #define __SPI_IMX_SPI_H
>  
> diff --git a/include/spi/spi.h b/include/spi/spi.h
> index bdcda0bb603c..48a90bcca749 100644
> --- a/include/spi/spi.h
> +++ b/include/spi/spi.h
> @@ -1,3 +1,4 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
>  #ifndef __INCLUDE_SPI_H
>  #define __INCLUDE_SPI_H
>  
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
