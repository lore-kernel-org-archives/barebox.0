Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P5ERd-0003Ee-MN
	for barebox@lists.infradead.org; Mon, 11 Oct 2010 09:13:24 +0000
Received: from gallifrey.ext.pengutronix.de
	([2001:6f8:1178:4:5054:ff:fe8d:eefb] helo=localhost)
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <jbe@pengutronix.de>) id 1P5ERa-00072F-GQ
	for barebox@lists.infradead.org; Mon, 11 Oct 2010 11:13:18 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 11 Oct 2010 11:11:30 +0200
References: <1286788020-14077-1-git-send-email-jbe@pengutronix.de>
	<1286788020-14077-4-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1286788020-14077-4-git-send-email-jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201010111111.30135.jbe@pengutronix.de>
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
Subject: Re: [PATCH 3/4] Add the i.MX23-EVK platform (WIP)
To: barebox@lists.infradead.org

Me wrote:
> Note: This is work in progress. Use with care.
>
> Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
> ---
>  Documentation/boards.dox                      |    1 +
>  arch/arm/Makefile                             |    2 +
>  arch/arm/boards/freescale-mx23-evk/Makefile   |    2 +
>  arch/arm/boards/freescale-mx23-evk/config.h   |   16 ++
>  arch/arm/boards/freescale-mx23-evk/mx23-evk.c |   96 +++++++++++
>  arch/arm/configs/imx23evk_defconfig           |  222
> +++++++++++++++++++++++++ arch/arm/mach-stm/Kconfig                     |  
>  7 +
>  7 files changed, 346 insertions(+), 0 deletions(-)
>  create mode 100644 arch/arm/boards/freescale-mx23-evk/Makefile
>  create mode 100644 arch/arm/boards/freescale-mx23-evk/config.h
>  create mode 100644 arch/arm/boards/freescale-mx23-evk/mx23-evk.c
>  create mode 100644 arch/arm/configs/imx23evk_defconfig
>
> [...]
>
> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index 77b6cf4..75fa6d3 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -41,6 +41,7 @@ CPPFLAGS += $(CFLAGS_ABI) $(arch-y) $(tune-y)
>  machine-$(CONFIG_ARCH_AT91)		:= at91
>  machine-$(CONFIG_ARCH_EP93XX)		:= ep93xx
>  machine-$(CONFIG_ARCH_IMX)		:= imx
> +machine-$(CONFIG_ARCH_STM)		:= stm
   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Ups, this should be part of the first architecture patch, not this platform 
patch. Resent the whole series?

> [...]

jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | Phone: +49-8766-939 228     |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
