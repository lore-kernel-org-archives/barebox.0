Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RBllx-0003KB-20
	for barebox@lists.infradead.org; Thu, 06 Oct 2011 11:05:53 +0000
Date: Thu, 6 Oct 2011 13:05:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111006110550.GV31404@pengutronix.de>
References: <1317305076-3334-1-git-send-email-antonynpavlov@gmail.com>
	<1317305076-3334-6-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1317305076-3334-6-git-send-email-antonynpavlov@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC PATCH 5/6] toshiba-ac100: add USB host support
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Sep 29, 2011 at 06:04:35PM +0400, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  arch/arm/boards/toshiba-ac100/board.c |   18 ++++++++++++++++++
>  1 files changed, 18 insertions(+), 0 deletions(-)
> 
> diff --git a/arch/arm/boards/toshiba-ac100/board.c b/arch/arm/boards/toshiba-ac100/board.c
> index e3a5eba..3fd720d 100644
> --- a/arch/arm/boards/toshiba-ac100/board.c
> +++ b/arch/arm/boards/toshiba-ac100/board.c
> @@ -24,6 +24,8 @@
>  #include <init.h>
>  #include <asm/armlinux.h>
>  #include <sizes.h>
> +#include <usb/ehci.h>
> +#include <mach/iomap.h>
>  
>  static int ac100_mem_init(void)
>  {
> @@ -32,3 +34,19 @@ static int ac100_mem_init(void)
>  	return 0;
>  }
>  mem_initcall(ac100_mem_init);
> +
> +#ifdef CONFIG_USB_EHCI
> +static struct ehci_platform_data ehci_pdata = {
> +	.flags = EHCI_HAS_TT,
> +};
> +#endif
> +
> +static int ac100_devices_init(void)
> +{
> +#ifdef CONFIG_USB_EHCI
> +	add_generic_usb_ehci_device(-1, TEGRA_USB3_BASE, &ehci_pdata);
> +#endif

Can we skip the ifdefs? I think the few additional bytes do not
outweigh better readability of the source code.

Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
