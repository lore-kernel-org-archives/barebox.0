Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RTVcg-0006xu-3m
 for barebox@lists.infradead.org; Thu, 24 Nov 2011 09:29:41 +0000
Date: Thu, 24 Nov 2011 10:29:31 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111124092931.GZ27267@pengutronix.de>
References: <1322103764-6265-1-git-send-email-robert.jarzmik@free.fr>
 <1322103764-6265-2-git-send-email-robert.jarzmik@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1322103764-6265-2-git-send-email-robert.jarzmik@free.fr>
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
Subject: Re: [PATCH 1/9] initial Intel/Marvell PXA support
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

On Thu, Nov 24, 2011 at 04:02:36AM +0100, Robert Jarzmik wrote:
> From: Marc Kleine-Budde <mkl@pengutronix.de>
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
> 
> Conflicts:
> 
> 	arch/arm/cpu/Makefile
> 	drivers/serial/Makefile
> ---
>  arch/arm/Kconfig                             |    4 +
>  arch/arm/Makefile                            |    2 +
>  arch/arm/cpu/Kconfig                         |    5 +
>  arch/arm/cpu/Makefile                        |    1 +
>  arch/arm/mach-pxa/Kconfig                    |   37 ++
>  arch/arm/mach-pxa/Makefile                   |    6 +
>  arch/arm/mach-pxa/clocksource.c              |   50 +++
>  arch/arm/mach-pxa/common.c                   |   42 +++
>  arch/arm/mach-pxa/gpio.c                     |   70 ++++
>  arch/arm/mach-pxa/include/mach/clock.h       |   16 +
>  arch/arm/mach-pxa/include/mach/gpio.h        |  137 ++++++++
>  arch/arm/mach-pxa/include/mach/hardware.h    |   31 ++
>  arch/arm/mach-pxa/include/mach/mfp-pxa27x.h  |  438 ++++++++++++++++++++++++
>  arch/arm/mach-pxa/include/mach/mfp-pxa2xx.h  |  133 ++++++++
>  arch/arm/mach-pxa/include/mach/mfp.h         |   21 ++
>  arch/arm/mach-pxa/include/mach/pxa-regs.h    |   33 ++
>  arch/arm/mach-pxa/include/mach/pxa27x-regs.h |    6 +
>  arch/arm/mach-pxa/include/mach/pxa2xx-regs.h |  267 +++++++++++++++
>  arch/arm/mach-pxa/include/mach/regs-intc.h   |   34 ++
>  arch/arm/mach-pxa/include/mach/regs-ost.h    |   34 ++
>  arch/arm/mach-pxa/include/plat/gpio.h        |   55 +++
>  arch/arm/mach-pxa/include/plat/mfp.h         |  468 ++++++++++++++++++++++++++
>  arch/arm/mach-pxa/mfp-pxa2xx.c               |  189 +++++++++++
>  arch/arm/mach-pxa/speed-pxa27x.c             |   20 ++
>  drivers/serial/Kconfig                       |    4 +
>  drivers/serial/Makefile                      |    1 +
>  drivers/serial/serial_pxa.c                  |  203 +++++++++++

Please remove or update the serial driver here. It still uses map_base
and won't compile currently.

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
