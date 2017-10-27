Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e80Qd-0005E6-A0
 for barebox@lists.infradead.org; Fri, 27 Oct 2017 08:55:49 +0000
Date: Fri, 27 Oct 2017 10:55:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20171027085525.3n23ywatb7ygcvrw@pengutronix.de>
References: <1509012350-15255-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1509012350-15255-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH] EFI: add poweroff support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Thu, Oct 26, 2017 at 12:05:50PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  arch/x86/configs/efi_defconfig |  1 +
>  common/efi/efi.c               | 10 ++++++++++
>  drivers/efi/Kconfig            |  1 +
>  3 files changed, 12 insertions(+)
> 
> diff --git a/arch/x86/configs/efi_defconfig b/arch/x86/configs/efi_defconfig
> index 3e83fd92d..fdf092e9b 100644
> --- a/arch/x86/configs/efi_defconfig
> +++ b/arch/x86/configs/efi_defconfig
> @@ -55,6 +55,7 @@ CONFIG_CMD_CRC_CMP=y
>  CONFIG_CMD_MM=y
>  CONFIG_CMD_DETECT=y
>  CONFIG_CMD_FLASH=y
> +CONFIG_CMD_POWEROFF=y
>  CONFIG_CMD_2048=y
>  CONFIG_CMD_BAREBOX_UPDATE=y
>  CONFIG_CMD_OF_NODE=y
> diff --git a/common/efi/efi.c b/common/efi/efi.c
> index 4b42f5d67..561ce4c08 100644
> --- a/common/efi/efi.c
> +++ b/common/efi/efi.c
> @@ -25,6 +25,7 @@
>  #include <magicvar.h>
>  #include <init.h>
>  #include <restart.h>
> +#include <poweroff.h>
>  #include <driver.h>
>  #include <platform_data/serial-ns16550.h>
>  #include <io.h>
> @@ -283,9 +284,18 @@ static void __noreturn efi_restart_system(struct restart_handler *rst)
>  	hang();
>  }
>  
> +static void __noreturn efi_poweroff_system(struct poweroff_handler *handler)
> +{
> +	shutdown_barebox();
> +	RT->reset_system(EFI_RESET_SHUTDOWN, EFI_SUCCESS, 0, NULL);
> +
> +	hang();
> +}
> +
>  static int restart_register_feature(void)
>  {
>  	restart_handler_register_fn(efi_restart_system);
> +	poweroff_handler_register_fn(efi_poweroff_system);
>  
>  	return 0;
>  }
> diff --git a/drivers/efi/Kconfig b/drivers/efi/Kconfig
> index 2cd9dd504..5c988d2e1 100644
> --- a/drivers/efi/Kconfig
> +++ b/drivers/efi/Kconfig
> @@ -1,2 +1,3 @@
>  config EFI_BOOTUP
>  	bool
> +	select HAS_POWEROFF

Dropped this hunk since while applying since HAS_POWEROFF is not used
anywhere in the tree.

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
