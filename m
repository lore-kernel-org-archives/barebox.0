Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x243.google.com ([2a00:1450:4010:c07::243])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eTnxP-0002xh-9t
 for barebox@lists.infradead.org; Tue, 26 Dec 2017 12:03:44 +0000
Received: by mail-lf0-x243.google.com with SMTP id g63so17397599lfl.11
 for <barebox@lists.infradead.org>; Tue, 26 Dec 2017 04:03:33 -0800 (PST)
Date: Tue, 26 Dec 2017 15:17:19 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20171226151719.64bb8ea85146420105e6f438@gmail.com>
In-Reply-To: <1509012350-15255-1-git-send-email-plagnioj@jcrosoft.com>
References: <1509012350-15255-1-git-send-email-plagnioj@jcrosoft.com>
Mime-Version: 1.0
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
Subject: Re: [PATCH] EFI: add poweroff support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Thu, 26 Oct 2017 12:05:50 +0200
Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> wrote:

> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  arch/x86/configs/efi_defconfig |  1 +
>  common/efi/efi.c               | 10 ++++++++++
>  drivers/efi/Kconfig            |  1 +
>  3 files changed, 12 insertions(+)
> =

> diff --git a/arch/x86/configs/efi_defconfig b/arch/x86/configs/efi_defcon=
fig
> index 3e83fd92d..fdf092e9b 100644
> --- a/arch/x86/configs/efi_defconfig
> +++ b/arch/x86/configs/efi_defconfig
> @@ -55,6 +55,7 @@ CONFIG_CMD_CRC_CMP=3Dy
>  CONFIG_CMD_MM=3Dy
>  CONFIG_CMD_DETECT=3Dy
>  CONFIG_CMD_FLASH=3Dy
> +CONFIG_CMD_POWEROFF=3Dy
>  CONFIG_CMD_2048=3Dy
>  CONFIG_CMD_BAREBOX_UPDATE=3Dy
>  CONFIG_CMD_OF_NODE=3Dy
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
> @@ -283,9 +284,18 @@ static void __noreturn efi_restart_system(struct res=
tart_handler *rst)
>  	hang();
>  }
>  =

> +static void __noreturn efi_poweroff_system(struct poweroff_handler *hand=
ler)
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
>  =

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

Hmmm. It looks like current barebox master and next branches know nothing a=
bout HAS_POWEROFF.


-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
