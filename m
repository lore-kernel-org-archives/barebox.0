Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SZMlq-0002aA-4R
 for barebox@lists.infradead.org; Tue, 29 May 2012 13:47:34 +0000
Date: Tue, 29 May 2012 15:47:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120529134731.GU30400@pengutronix.de>
References: <1338286295-10993-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1338286295-10993-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH v20120529 1/2] toshiba_ac100: add USB host support
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, May 29, 2012 at 02:11:34PM +0400, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  arch/arm/boards/toshiba-ac100/board.c |   14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/arch/arm/boards/toshiba-ac100/board.c b/arch/arm/boards/toshiba-ac100/board.c
> index e3a5eba..f2b134c 100644
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
> @@ -32,3 +34,15 @@ static int ac100_mem_init(void)
>  	return 0;
>  }
>  mem_initcall(ac100_mem_init);
> +
> +static struct ehci_platform_data ehci_pdata = {
> +	.flags = EHCI_HAS_TT,
> +};
> +
> +static int ac100_devices_init(void)
> +{
> +	add_generic_usb_ehci_device(-1, TEGRA_USB3_BASE, &ehci_pdata);

s/-1/DEVICE_ID_DYNAMIC/

Fixed this up while applying.

Thanks
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
