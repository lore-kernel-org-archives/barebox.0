Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo4.mail-out.ovh.net ([178.32.228.4])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TMbfJ-00011Q-6R
 for barebox@lists.infradead.org; Fri, 12 Oct 2012 09:36:21 +0000
Received: from mail413.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id BA9101050168
 for <barebox@lists.infradead.org>; Fri, 12 Oct 2012 11:42:49 +0200 (CEST)
Date: Fri, 12 Oct 2012 11:33:59 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121012093359.GI13639@game.jcrosoft.org>
References: <1349992331-22987-1-git-send-email-carlo.caione@gmail.com>
 <1349992331-22987-5-git-send-email-carlo.caione@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1349992331-22987-5-git-send-email-carlo.caione@gmail.com>
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
Subject: Re: [PATCH 4/5] BCM2835: add support
To: Carlo Caione <carlo.caione@gmail.com>
Cc: barebox@lists.infradead.org

On 23:52 Thu 11 Oct     , Carlo Caione wrote:
> Signed-off-by: Carlo Caione <carlo.caione@gmail.com>
> ---
>  arch/arm/Kconfig                              |   8 ++
>  arch/arm/Makefile                             |   1 +
>  arch/arm/mach-bcm2835/Kconfig                 |  14 ++++
>  arch/arm/mach-bcm2835/Makefile                |   2 +
>  arch/arm/mach-bcm2835/clock.c                 |  39 ++++++++++
>  arch/arm/mach-bcm2835/core.c                  | 102 ++++++++++++++++++++++++++
>  arch/arm/mach-bcm2835/include/mach/clkdev.h   |   7 ++
>  arch/arm/mach-bcm2835/include/mach/clock.h    |   8 ++
>  arch/arm/mach-bcm2835/include/mach/core.h     |  27 +++++++
>  arch/arm/mach-bcm2835/include/mach/gpio.h     |   1 +
>  arch/arm/mach-bcm2835/include/mach/platform.h |  53 +++++++++++++
>  arch/arm/mach-bcm2835/include/mach/wd.h       |  50 +++++++++++++
>  12 files changed, 312 insertions(+)
>  create mode 100644 arch/arm/mach-bcm2835/Kconfig
>  create mode 100644 arch/arm/mach-bcm2835/Makefile
>  create mode 100644 arch/arm/mach-bcm2835/clock.c
>  create mode 100644 arch/arm/mach-bcm2835/core.c
>  create mode 100644 arch/arm/mach-bcm2835/include/mach/clkdev.h
>  create mode 100644 arch/arm/mach-bcm2835/include/mach/clock.h
>  create mode 100644 arch/arm/mach-bcm2835/include/mach/core.h
>  create mode 100644 arch/arm/mach-bcm2835/include/mach/gpio.h
>  create mode 100644 arch/arm/mach-bcm2835/include/mach/platform.h
>  create mode 100644 arch/arm/mach-bcm2835/include/mach/wd.h
> 
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index 1e45ebf..daedc00 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -31,6 +31,13 @@ config ARCH_AT91
>  	select HAS_DEBUG_LL
>  	select HAVE_MACH_ARM_HEAD
>  
> +config ARCH_BCM2835
> +	bool "Broadcom BCM2835 boards"
> +	select GPIOLIB
> +	select CPU_ARM1176
> +	select CLKDEV_LOOKUP
> +	select CLOCKSOURCE_BCM2835
> +
>  config ARCH_EP93XX
>  	bool "Cirrus Logic EP93xx"
>  	select CPU_ARM920T
> @@ -101,6 +108,7 @@ endchoice
>  
>  source arch/arm/cpu/Kconfig
>  source arch/arm/mach-at91/Kconfig
> +source arch/arm/mach-bcm2835/Kconfig
>  source arch/arm/mach-ep93xx/Kconfig
>  source arch/arm/mach-imx/Kconfig
>  source arch/arm/mach-mxs/Kconfig
> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index 855043a..2ea11d6 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -52,6 +52,7 @@ AFLAGS   += -include asm/unified.h -msoft-float $(AFLAGS_THUMB2)
>  # Machine directory name.  This list is sorted alphanumerically
>  # by CONFIG_* macro name.
>  machine-$(CONFIG_ARCH_AT91)		:= at91
> +machine-$(CONFIG_ARCH_BCM2835)		:= bcm2835
>  machine-$(CONFIG_ARCH_EP93XX)		:= ep93xx
>  machine-$(CONFIG_ARCH_IMX)		:= imx
>  machine-$(CONFIG_ARCH_MXS)		:= mxs
> diff --git a/arch/arm/mach-bcm2835/Kconfig b/arch/arm/mach-bcm2835/Kconfig
> new file mode 100644
> index 0000000..1090955
> --- /dev/null
> +++ b/arch/arm/mach-bcm2835/Kconfig
> @@ -0,0 +1,14 @@
> +if ARCH_BCM2835
> +
> +choice
> +	prompt "Broadcom Board type"
> +
> +config MACH_RPI
> +	bool "RaspberryPi (BCM2835/ARM1176JZF-S)"
> +	select ARM_AMBA
here again ARM_AMBA is SOC not board

move it to
config ARCH_BCMxx
	select ARM_AMBA
> +
> +endchoice
> +
> +source arch/arm/boards/raspberry-pi/Kconfig
> +
> +endif
> diff --git a/arch/arm/mach-bcm2835/Makefile b/arch/arm/mach-bcm2835/Makefile
> new file mode 100644
> index 0000000..f0aa2e0
> --- /dev/null
> +++ b/arch/arm/mach-bcm2835/Makefile
> @@ -0,0 +1,2 @@
> +obj-y += core.o
> +obj-y += clock.o
> \ No newline at end of file
> diff --git a/arch/arm/mach-bcm2835/clock.c b/arch/arm/mach-bcm2835/clock.c
> new file mode 100644
> index 0000000..31400ea
> --- /dev/null
Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
