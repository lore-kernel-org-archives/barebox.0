Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YLzXm-0001O7-1n
 for barebox@lists.infradead.org; Thu, 12 Feb 2015 19:35:23 +0000
Date: Thu, 12 Feb 2015 20:34:57 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20150212193457.GI10842@pengutronix.de>
References: <1423768031-5014-1-git-send-email-rockford@yandex.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1423768031-5014-1-git-send-email-rockford@yandex.ru>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] ARM: Rockchip: Add DEBUG_LL based on mach-socfpga
To: Andrey Panov <rockford@yandex.ru>
Cc: barebox@lists.infradead.org

Hello,

On Thu, Feb 12, 2015 at 10:07:11PM +0300, Andrey Panov wrote:
> --- /dev/null
> +++ b/arch/arm/mach-rockchip/include/mach/debug_ll.h
> @@ -0,0 +1,60 @@
> +#ifndef __MACH_DEBUG_LL_H__
> +#define __MACH_DEBUG_LL_H__
> +
> +#include <io.h>
> +
> +#if CONFIG_DEBUG_ROCKCHIP_UART_PORT =3D=3D 0
> +#define UART_BASE	0x10124000
> +#endif
> +#if CONFIG_DEBUG_ROCKCHIP_UART_PORT =3D=3D 1
> +#define UART_BASE	0x10126000
> +#endif
> +#if CONFIG_DEBUG_ROCKCHIP_UART_PORT =3D=3D 2
> +#define UART_BASE	0x20064000
> +#endif
> +#if CONFIG_DEBUG_ROCKCHIP_UART_PORT =3D=3D 3
> +#define UART_BASE	0x20068000
> +#endif
Better make use of DEBUG_UART_PHYS and DEBUG_UART_BASE.
And there is already DEBUG_RK29_UART[123] and DEBUG_RK3X_UART[0123] and
DEBUG_RK32_UART2. Doesn't one of those fit your needs?

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
