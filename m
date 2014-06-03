Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WrpAZ-0006XO-N4
 for barebox@lists.infradead.org; Tue, 03 Jun 2014 13:54:28 +0000
Received: from weser.hi.pengutronix.de ([2001:6f8:1178:2:fa0f:41ff:fe58:4010])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1WrpAD-0008K3-Jp
 for barebox@lists.infradead.org; Tue, 03 Jun 2014 15:54:05 +0200
Message-ID: <1401803567.5422.5.camel@weser.hi.pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 03 Jun 2014 15:52:47 +0200
In-Reply-To: <1397377196-31466-1-git-send-email-l.stach@pengutronix.de>
References: <1397377196-31466-1-git-send-email-l.stach@pengutronix.de>
Mime-Version: 1.0
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
Subject: Re: [PATCH] ARM: hummingboard: add barebox update handler
To: barebox@lists.infradead.org

Ping.

Am Sonntag, den 13.04.2014, 10:19 +0200 schrieb Lucas Stach:
> It wasn't hard to find the right spot to copy the image
> to before, but this makes it a bit more explicit.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  arch/arm/boards/solidrun-hummingboard/board.c | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/arch/arm/boards/solidrun-hummingboard/board.c b/arch/arm/boards/solidrun-hummingboard/board.c
> index afc5c867b25c..de848467451d 100644
> --- a/arch/arm/boards/solidrun-hummingboard/board.c
> +++ b/arch/arm/boards/solidrun-hummingboard/board.c
> @@ -20,6 +20,7 @@
>  #include <envfs.h>
>  #include <gpio.h>
>  #include <init.h>
> +#include <mach/bbu.h>
>  #include <mach/generic.h>
>  #include <mach/imx6-regs.h>
>  #include <mach/imx6.h>
> @@ -75,6 +76,18 @@ static int hummingboard_device_init(void)
>  }
>  device_initcall(hummingboard_device_init);
>  
> +static int hummingboard_late_init(void)
> +{
> +	if (!of_machine_is_compatible("solidrun,hummingboard"))
> +		return 0;
> +
> +	imx6_bbu_internal_mmc_register_handler("sdcard", "/dev/mmc1.barebox",
> +		BBU_HANDLER_FLAG_DEFAULT, NULL, 0, 0x10000000);
> +
> +	return 0;
> +}
> +late_initcall(hummingboard_late_init);
> +
>  static int hummingboard_lwl_init(void)
>  {
>  	if (!of_machine_is_compatible("solidrun,hummingboard"))

-- 
Pengutronix e.K.             | Lucas Stach                 |
Industrial Linux Solutions   | http://www.pengutronix.de/  |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
