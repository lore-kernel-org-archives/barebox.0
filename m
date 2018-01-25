Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eebjh-0003Oh-Co
 for barebox@lists.infradead.org; Thu, 25 Jan 2018 07:14:15 +0000
Date: Thu, 25 Jan 2018 08:14:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180125071400.ocjwwnzjnq7fwyrg@pengutronix.de>
References: <20180122100131.11820-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180122100131.11820-1-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] sandbox: use 'poweroff' command for exit
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Jan 22, 2018 at 01:01:31PM +0300, Antony Pavlov wrote:
> The 'poweroff' command is more appropriate for exit
> barebox than 'reset'.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  arch/sandbox/board/Makefile            |  2 +-
>  arch/sandbox/board/poweroff.c          | 17 +++++++++++++++++
>  arch/sandbox/board/restart.c           | 17 -----------------
>  arch/sandbox/configs/sandbox_defconfig |  2 +-
>  4 files changed, 19 insertions(+), 19 deletions(-)
>  create mode 100644 arch/sandbox/board/poweroff.c
>  delete mode 100644 arch/sandbox/board/restart.c

Applied, thanks

Sascha

> 
> diff --git a/arch/sandbox/board/Makefile b/arch/sandbox/board/Makefile
> index 333638ced6..b6c271c858 100644
> --- a/arch/sandbox/board/Makefile
> +++ b/arch/sandbox/board/Makefile
> @@ -4,6 +4,6 @@ obj-y += hostfile.o
>  obj-y += console.o
>  obj-y += devices.o
>  obj-y += dtb.o
> -obj-y += restart.o
> +obj-y += poweroff.o
>  
>  extra-y += barebox.lds
> diff --git a/arch/sandbox/board/poweroff.c b/arch/sandbox/board/poweroff.c
> new file mode 100644
> index 0000000000..6b5a6dff15
> --- /dev/null
> +++ b/arch/sandbox/board/poweroff.c
> @@ -0,0 +1,17 @@
> +#include <common.h>
> +#include <init.h>
> +#include <poweroff.h>
> +#include <mach/linux.h>
> +
> +static void sandbox_poweroff(struct poweroff_handler *poweroff)
> +{
> +	linux_exit();
> +}
> +
> +static int poweroff_register_feature(void)
> +{
> +	poweroff_handler_register_fn(sandbox_poweroff);
> +
> +	return 0;
> +}
> +coredevice_initcall(poweroff_register_feature);
> diff --git a/arch/sandbox/board/restart.c b/arch/sandbox/board/restart.c
> deleted file mode 100644
> index 79bf79a556..0000000000
> --- a/arch/sandbox/board/restart.c
> +++ /dev/null
> @@ -1,17 +0,0 @@
> -#include <common.h>
> -#include <init.h>
> -#include <restart.h>
> -#include <mach/linux.h>
> -
> -static void sandbox_restart_cpu(struct restart_handler *restart)
> -{
> -	linux_exit();
> -}
> -
> -static int restart_register_feature(void)
> -{
> -	restart_handler_register_fn(sandbox_restart_cpu);
> -
> -	return 0;
> -}
> -coredevice_initcall(restart_register_feature);
> diff --git a/arch/sandbox/configs/sandbox_defconfig b/arch/sandbox/configs/sandbox_defconfig
> index dbaff12bfb..12b2479435 100644
> --- a/arch/sandbox/configs/sandbox_defconfig
> +++ b/arch/sandbox/configs/sandbox_defconfig
> @@ -13,7 +13,6 @@ CONFIG_CMD_IMD=y
>  CONFIG_CMD_MEMINFO=y
>  # CONFIG_CMD_BOOTM is not set
>  CONFIG_CMD_GO=y
> -CONFIG_CMD_RESET=y
>  CONFIG_CMD_UIMAGE=y
>  CONFIG_CMD_PARTITION=y
>  CONFIG_CMD_EXPORT=y
> @@ -53,6 +52,7 @@ CONFIG_CMD_CRC_CMP=y
>  CONFIG_CMD_MM=y
>  CONFIG_CMD_DETECT=y
>  CONFIG_CMD_FLASH=y
> +CONFIG_CMD_POWEROFF=y
>  CONFIG_CMD_2048=y
>  CONFIG_CMD_OF_NODE=y
>  CONFIG_CMD_OF_PROPERTY=y
> -- 
> 2.15.1
> 
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
