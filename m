Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.eu ([217.6.246.34] helo=root.phytec.de)
 by casper.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1S3NTs-0000x7-PV
 for barebox@lists.infradead.org; Fri, 02 Mar 2012 08:04:52 +0000
From: Jan Weitzel <J.Weitzel@phytec.de>
In-Reply-To: <1328043068-9577-2-git-send-email-marek.belisko@open-nandra.com>
References: <1328043068-9577-1-git-send-email-marek.belisko@open-nandra.com>
 <1328043068-9577-2-git-send-email-marek.belisko@open-nandra.com>
Date: Fri, 02 Mar 2012 09:04:40 +0100
Message-ID: <1330675480.3149.4.camel@lws-weitzel>
Mime-Version: 1.0
Reply-To: J.Weitzel@phytec.de
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
Subject: Re: [PATCH 2/2] pandaboard: Add gpmc_generic_init to board init.
To: Marek Belisko <marek.belisko@open-nandra.com>
Cc: barebox@lists.infradead.org

Am Dienstag, den 31.01.2012, 21:51 +0100 schrieb Marek Belisko:
> We need to setup generic gpmc otherwise kernel panic during boot.
> 
> Signed-off-by: Marek Belisko <marek.belisko@open-nandra.com>
> ---
>  arch/arm/boards/panda/board.c |    3 +++
>  1 files changed, 3 insertions(+), 0 deletions(-)
> 
> diff --git a/arch/arm/boards/panda/board.c b/arch/arm/boards/panda/board.c
> index be3ad77..1c71545 100644
> --- a/arch/arm/boards/panda/board.c
> +++ b/arch/arm/boards/panda/board.c
> @@ -20,6 +20,7 @@
>  #include <mach/gpio.h>
>  #include <environment.h>
>  #include <mach/xload.h>
> +#include <mach/gpmc.h>
>  
>  static int board_revision;
>  
> @@ -137,6 +138,8 @@ static int panda_devices_init(void)
>  			   IORESOURCE_MEM, NULL);
>  	panda_ehci_init();
>  
> +	gpmc_generic_init(0x00);
> +

3.3.0-rc5 is still not booting without this patch. Using panda_defconfig
implicitly select CONFIG_OMAP_GPMC.

>  	armlinux_set_bootparams((void *)0x80000100);
>  	armlinux_set_architecture(MACH_TYPE_OMAP4_PANDA);
>  



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
