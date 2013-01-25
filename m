Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TynCd-0002Dz-NQ
 for barebox@lists.infradead.org; Fri, 25 Jan 2013 17:36:36 +0000
Date: Fri, 25 Jan 2013 18:36:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130125173634.GN1906@pengutronix.de>
References: <20130123225007.GT26329@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130123225007.GT26329@game.jcrosoft.org>
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
Subject: Re: [PATCH 0/2] at91: add atmel at91sam9m10ihd tabel support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Wed, Jan 23, 2013 at 11:50:07PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> HI,
> 
> 	add the sam9m10ihd support
> 
> 	It's a tablet based on a sam9m10 with a maxtouch
> 
> The following changes since commit 6d588b9bfd85247f9007c002cec98a7535764ae4:
> 
>   Merge branch 'for-next/misc' into next (2013-01-23 20:46:17 +0100)
> 
> are available in the git repository at:
> 
> 
>   git://git.jcrosoft.org/barebox.git delivery/at91sam9m10ihd

Applied, thanks

Sascha

> 
> for you to fetch changes up to 1ae65c31d5530ba28d0ff03d75654e36509e56e7:
> 
>   at91: add at91sam9m10ihd tablet support (2013-01-20 01:27:23 +0800)
> 
> ----------------------------------------------------------------
> Jean-Christophe PLAGNIOL-VILLARD (2):
>       at91sam9m10g45ek/defconfig: set board type
>       at91: add at91sam9m10ihd tablet support
> 
>  arch/arm/Makefile                                           |    1 +
>  arch/arm/boards/at91sam9m10ihd/Makefile                     |    2 +
>  arch/arm/boards/at91sam9m10ihd/config.h                     |    6 +++
>  arch/arm/boards/at91sam9m10ihd/env/boot/android             |   11 ++++++
>  arch/arm/boards/at91sam9m10ihd/env/boot/mmc                 |   19 ++++++++++
>  arch/arm/boards/at91sam9m10ihd/env/boot/net                 |   16 ++++++++
>  arch/arm/boards/at91sam9m10ihd/env/boot/net-usb             |   22 +++++++++++
>  arch/arm/boards/at91sam9m10ihd/env/config                   |   21 +++++++++++
>  arch/arm/boards/at91sam9m10ihd/env/init/automount           |   17 +++++++++
>  arch/arm/boards/at91sam9m10ihd/env/init/config-board        |    8 ++++
>  arch/arm/boards/at91sam9m10ihd/env/init/mtdparts-001-nand   |   11 ++++++
>  arch/arm/boards/at91sam9m10ihd/env/init/mtdparts-002-m25p80 |   11 ++++++
>  arch/arm/boards/at91sam9m10ihd/env/init/ps1                 |    9 +++++
>  arch/arm/boards/at91sam9m10ihd/hw_version.c                 |  216 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
>  arch/arm/boards/at91sam9m10ihd/hw_version.h                 |   31 +++++++++++++++
>  arch/arm/boards/at91sam9m10ihd/init.c                       |  220 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
>  arch/arm/configs/at91sam9m10g45ek_defconfig                 |    1 +
>  arch/arm/configs/at91sam9m10ihd_defconfig                   |   94 ++++++++++++++++++++++++++++++++++++++++++++++
>  arch/arm/mach-at91/Kconfig                                  |    6 +++
>  19 files changed, 722 insertions(+)
>  create mode 100644 arch/arm/boards/at91sam9m10ihd/Makefile
>  create mode 100644 arch/arm/boards/at91sam9m10ihd/config.h
>  create mode 100644 arch/arm/boards/at91sam9m10ihd/env/boot/android
>  create mode 100644 arch/arm/boards/at91sam9m10ihd/env/boot/mmc
>  create mode 100644 arch/arm/boards/at91sam9m10ihd/env/boot/net
>  create mode 100644 arch/arm/boards/at91sam9m10ihd/env/boot/net-usb
>  create mode 100644 arch/arm/boards/at91sam9m10ihd/env/config
>  create mode 100644 arch/arm/boards/at91sam9m10ihd/env/init/automount
>  create mode 100644 arch/arm/boards/at91sam9m10ihd/env/init/config-board
>  create mode 100644 arch/arm/boards/at91sam9m10ihd/env/init/mtdparts-001-nand
>  create mode 100644 arch/arm/boards/at91sam9m10ihd/env/init/mtdparts-002-m25p80
>  create mode 100644 arch/arm/boards/at91sam9m10ihd/env/init/ps1
>  create mode 100644 arch/arm/boards/at91sam9m10ihd/hw_version.c
>  create mode 100644 arch/arm/boards/at91sam9m10ihd/hw_version.h
>  create mode 100644 arch/arm/boards/at91sam9m10ihd/init.c
>  create mode 100644 arch/arm/configs/at91sam9m10ihd_defconfig
> 
> Best Regards,
> J.
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
