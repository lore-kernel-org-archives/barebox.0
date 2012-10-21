Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TPrGB-000576-VE
 for barebox@lists.infradead.org; Sun, 21 Oct 2012 08:51:52 +0000
Date: Sun, 21 Oct 2012 10:51:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121021085149.GB27665@pengutronix.de>
References: <1350589363-82697-1-git-send-email-carlo.caione@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1350589363-82697-1-git-send-email-carlo.caione@gmail.com>
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
Subject: Re: [PATCH 0/5] BCM2835/Raspberry-Pi support
To: Carlo Caione <carlo.caione@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Oct 18, 2012 at 09:42:38PM +0200, Carlo Caione wrote:
> Hi,
> set of patches based on next.
> It's required:
> [PATCH] clkdev: add helper function to register one clock lookup for a struct clk

Applied, (including clkdev helper) thanks

Sascha

> 
> Best regards,
> 
> Carlo Caione (5):
>   BCM2835: add clocksource driver
>   BCM2835: add gpio driver
>   ARM1176: add support
>   BCM2835: add support (arch)
>   Raspberry-Pi: add support (board)
> 
>  arch/arm/Kconfig                                   |  10 ++
>  arch/arm/Makefile                                  |   2 +
>  arch/arm/boards/raspberry-pi/Makefile              |   1 +
>  arch/arm/boards/raspberry-pi/config.h              |   4 +
>  .../arm/boards/raspberry-pi/env/init/bootargs-base |   8 ++
>  arch/arm/boards/raspberry-pi/env/init/hostname     |   8 ++
>  arch/arm/boards/raspberry-pi/rpi.c                 |  44 ++++++
>  arch/arm/configs/rpi_defconfig                     |  41 ++++++
>  arch/arm/cpu/Kconfig                               |   5 +
>  arch/arm/mach-bcm2835/Kconfig                      |  18 +++
>  arch/arm/mach-bcm2835/Makefile                     |   1 +
>  arch/arm/mach-bcm2835/core.c                       | 101 +++++++++++++
>  arch/arm/mach-bcm2835/include/mach/clkdev.h        |   7 +
>  arch/arm/mach-bcm2835/include/mach/core.h          |  22 +++
>  arch/arm/mach-bcm2835/include/mach/gpio.h          |   1 +
>  arch/arm/mach-bcm2835/include/mach/platform.h      |  50 +++++++
>  arch/arm/mach-bcm2835/include/mach/wd.h            |  47 ++++++
>  drivers/clocksource/Kconfig                        |   4 +
>  drivers/clocksource/Makefile                       |   1 +
>  drivers/clocksource/bcm2835.c                      |  90 ++++++++++++
>  drivers/gpio/Kconfig                               |   4 +
>  drivers/gpio/Makefile                              |   1 +
>  drivers/gpio/gpio-bcm2835.c                        | 158 +++++++++++++++++++++
>  23 files changed, 628 insertions(+)
>  create mode 100644 arch/arm/boards/raspberry-pi/Makefile
>  create mode 100644 arch/arm/boards/raspberry-pi/config.h
>  create mode 100644 arch/arm/boards/raspberry-pi/env/init/bootargs-base
>  create mode 100644 arch/arm/boards/raspberry-pi/env/init/hostname
>  create mode 100644 arch/arm/boards/raspberry-pi/rpi.c
>  create mode 100644 arch/arm/configs/rpi_defconfig
>  create mode 100644 arch/arm/mach-bcm2835/Kconfig
>  create mode 100644 arch/arm/mach-bcm2835/Makefile
>  create mode 100644 arch/arm/mach-bcm2835/core.c
>  create mode 100644 arch/arm/mach-bcm2835/include/mach/clkdev.h
>  create mode 100644 arch/arm/mach-bcm2835/include/mach/core.h
>  create mode 100644 arch/arm/mach-bcm2835/include/mach/gpio.h
>  create mode 100644 arch/arm/mach-bcm2835/include/mach/platform.h
>  create mode 100644 arch/arm/mach-bcm2835/include/mach/wd.h
>  create mode 100644 drivers/clocksource/bcm2835.c
>  create mode 100644 drivers/gpio/gpio-bcm2835.c
> 
> -- 
> 1.7.12.3
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
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
