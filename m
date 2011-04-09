Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q8Y8h-0006C6-09
	for barebox@lists.infradead.org; Sat, 09 Apr 2011 13:23:48 +0000
Date: Sat, 9 Apr 2011 15:23:44 +0200
From: Sascha Hauer <sha@pengutronix.de>
Message-ID: <20110409132344.GB7285@pengutronix.de>
References: <1302258240-18284-1-git-send-email-mkl@pengutronix.de>
	<1302258240-18284-3-git-send-email-mkl@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1302258240-18284-3-git-send-email-mkl@pengutronix.de>
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
Subject: Re: [PATCH 2/2] mxs: add support for mx28-evk
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Apr 08, 2011 at 12:24:00PM +0200, Marc Kleine-Budde wrote:
> This patch adds support for tje mx28-evk board. NAND support is still lacking,
> so we use still the bootlets as the first stage boot loader.
> 
> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
> ---
>  arch/arm/Makefile                              |    1 +
>  arch/arm/boards/freescale-mx28-evk/Makefile    |    1 +
>  arch/arm/boards/freescale-mx28-evk/config.h    |   16 +
>  arch/arm/boards/freescale-mx28-evk/env/config  |   67 ++++
>  arch/arm/boards/freescale-mx28-evk/mx28-evk.c  |  378 ++++++++++++++++++++++
>  arch/arm/boards/freescale-mx28-evk/tx28-stk5.c |  410 ++++++++++++++++++++++++

Looks like you copied a bit too much from the karo board.

> +
> +console_initcall(mx28_evk_console_init);
> +
> +/**
> +@page mx28_evk KARO's MX28_EVK CPU module
> +
> +@section mx28_evk_cpu_card The CPU module
> +
> +http://www.karo-electronics.de/
> +
> +This CPU card is based on a Freescale i.MX28 CPU. The card is shipped with:
> +
> +- 128 MiB synchronous dynamic RAM (DDR2 type), 200 MHz support
> +- 128 MiB NAND K9F1G08U0A (3.3V type)
> +- PCA9554 GPIO expander
> +- DS1339 RTC
> +- LAN8710 Phy
> +
> +@section mx28_evk_basboards Supported baseboards
> +
> +Supported baseboards are:
> +- KARO's Starterkit 5
> +
> +@section mx28_evk_stk5_howto How to get barebox for 'KARO's Starterkit 5'
> +
> +Using the default configuration:
> +
> +@verbatim
> +make ARCH=arm mx28_evkstk5_defconfig
> +@endverbatim
> +
> +Build the binary image:
> +
> +@verbatim
> +make ARCH=arm CROSS_COMPILE=armv5compiler
> +@endverbatim
> +
> +@note replace the armv5compiler with your ARM v5 cross compiler.
> +
> +@note To use the result, you also need the following resources from Freescale:
> +- the 'bootlets' archive
> +- the 'elftosb2' encryption tool
> +- in the case you want to start @b barebox from an attached SD card the
> +  'sdimage' tool from Freescale's 'uuc' archive.
> +
> +@section mx28_evk_mlayout Memory layout when barebox is running:
> +
> +- 0x40000000 start of SDRAM
> +- 0x40000100 start of kernel's boot parameters
> +  - below malloc area: stack area
> +  - below barebox: malloc area
> +- 0x47000000 start of @b barebox

Please either correct this or remove it.

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
