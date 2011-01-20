Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pfpv9-0007qS-1m
	for barebox@lists.infradead.org; Thu, 20 Jan 2011 08:31:11 +0000
Date: Thu, 20 Jan 2011 09:31:02 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110120083102.GT9041@pengutronix.de>
References: <201101191327.23492.jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201101191327.23492.jbe@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] Compiling at91sam9g45 fails with NAND driver enabled
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi J=FCrgen,

On Wed, Jan 19, 2011 at 01:27:23PM +0100, Juergen Beisert wrote:
> Enabling the AT91 NAND driver fails with the following error:
> =

> arch/arm/mach-at91/at91sam9g45_devices.c: In function 'at91_add_device_na=
nd':
> arch/arm/mach-at91/at91sam9g45_devices.c:101: error: 'NAND_ECC_HW' undecl=
ared (first use in this function)
> =

> Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
> =

> diff --git a/arch/arm/mach-at91/at91sam9g45_devices.c b/arch/arm/mach-at9=
1/at91sam9g45_devices.c
> index ddb005a..cb88208 100644
> --- a/arch/arm/mach-at91/at91sam9g45_devices.c
> +++ b/arch/arm/mach-at91/at91sam9g45_devices.c
> @@ -17,6 +17,9 @@
>  #include <mach/board.h>
>  #include <mach/gpio.h>
>  #include <mach/io.h>
> +#if defined(CONFIG_NAND_ATMEL)
> +#include <linux/mtd/nand.h>
> +#endif

Please do not ifdef includes. Including it unconditionally is perfectly
fine.

Sascha


-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
