Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1StQt9-0007gq-Tg
 for barebox@lists.infradead.org; Mon, 23 Jul 2012 22:14:06 +0000
Date: Tue, 24 Jul 2012 00:14:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120723221401.GF30009@pengutronix.de>
References: <500D3E7D.8040006@kiwigrid.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <500D3E7D.8040006@kiwigrid.com>
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
Subject: Re: [PATCH] i.MX53 boards: notify clocksource after init_lowlevel
To: "Wjatscheslaw Stoljarski (Slawa)" <wjatscheslaw.stoljarski@kiwigrid.com>
Cc: barebox@lists.infradead.org

Hi Wjatscheslaw,

On Mon, Jul 23, 2012 at 02:07:25PM +0200, Wjatscheslaw Stoljarski (Slawa) wrote:
> 

> From 4d9a8e960654c02205cf4a8e47b4e86cac4b2a95 Mon Sep 17 00:00:00 2001
> From: "Wjatscheslaw Stoljarski" <wjatscheslaw.stoljarski@kiwigrid.com>
> Date: Mon, 23 Jul 2012 13:48:07 +0200
> Subject: [PATCH] i.MX53 boards: notify clocksource after init_lowlevel
> 
> @@ -215,6 +216,7 @@ static int loco_console_init(void)
>  	mxc_iomux_v3_setup_multiple_pads(loco_pads, ARRAY_SIZE(loco_pads));
>  
>  	imx53_init_lowlevel(1000);
> +	clock_notifier_call_chain();
>  

Maybe better add it to imx53_init_lowlevel?

Sascha

>  	imx53_add_uart0();
>  	return 0;
> diff --git a/arch/arm/boards/freescale-mx53-smd/board.c b/arch/arm/boards/freescale-mx53-smd/board.c
> index 0483103..74b38bd 100644
> --- a/arch/arm/boards/freescale-mx53-smd/board.c
> +++ b/arch/arm/boards/freescale-mx53-smd/board.c
> @@ -22,6 +22,7 @@
>  #include <init.h>
>  #include <nand.h>
>  #include <net.h>
> +#include <notifier.h>
>  #include <partition.h>
>  #include <sizes.h>
>  
> @@ -161,6 +162,7 @@ static int smd_console_init(void)
>  	mxc_iomux_v3_setup_multiple_pads(smd_pads, ARRAY_SIZE(smd_pads));
>  
>  	imx53_init_lowlevel(1000);
> +	clock_notifier_call_chain();
>  
>  	imx53_add_uart0();
>  	imx53_add_uart1();
> diff --git a/arch/arm/boards/tqma53/board.c b/arch/arm/boards/tqma53/board.c
> index 8c3d855..c4837cb 100644
> --- a/arch/arm/boards/tqma53/board.c
> +++ b/arch/arm/boards/tqma53/board.c
> @@ -21,6 +21,7 @@
>  #include <init.h>
>  #include <nand.h>
>  #include <net.h>
> +#include <notifier.h>
>  #include <partition.h>
>  #include <sizes.h>
>  #include <mci.h>
> @@ -265,6 +266,7 @@ static int tqma53_console_init(void)
>  {
>  	mxc_iomux_v3_setup_multiple_pads(tqma53_pads, ARRAY_SIZE(tqma53_pads));
>  	imx53_init_lowlevel(800);
> +	clock_notifier_call_chain();
>  	imx53_add_uart0();
>  
>  	return 0;
> -- 
> 1.7.9.5
> 

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
