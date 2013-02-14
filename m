Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U5z9f-0005Wm-Gk
 for barebox@lists.infradead.org; Thu, 14 Feb 2013 13:47:16 +0000
Date: Thu, 14 Feb 2013 14:47:12 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130214134712.GS1906@pengutronix.de>
References: <20130213100249.GL19322@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130213100249.GL19322@game.jcrosoft.org>
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
Subject: Re: [PATCH 0/6 v3] arm: add Calxeda Highbank support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org, Rob Herring <rob.herring@calxeda.com>

On Wed, Feb 13, 2013 at 11:02:49AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Hi,
> 
> 	v3:
> 	 reset: add missing wfi
> 	 gpio: move probe to board
> 	 add oftree probe support
> 
> 	v2:
> 	 fix cc tag so Rob can receive the patch
> 	 add oftree support to xgmac
> 
> 	The following patch serie add the support of the Quad Core Cortex-A9
> 	Highbank from Calxeda
> 
> 	As I do not have the real hardware this is only tested on qemu
> 
> 	Rob could confirm if this work on real hw
> 
> 	This patch serie depends on the amba sp804 patch and the ahci patch serie
> 
> The following changes since commit ddec6455ac75cad442be1247ae265b539c54ebfe:
> 
>   amba: add oftree probe support (2013-02-13 02:35:56 +0800)
> 
> are available in the git repository at:
> 
>   git://git.jcrosoft.org/barebox.git delivery/highbank

Applied, thanks

Sascha

> 
> for you to fetch changes up to 1d6b912a9a89b0bdf7915026d938f40aba13b581:
> 
>   highbank: use the provided dtb by the firmware to probe barebox device and mem size (2013-02-13 02:35:56 +0800)
> 
> ----------------------------------------------------------------
> Jean-Christophe PLAGNIOL-VILLARD (6):
>       ahci-generic: add oftree support
>       of: make of_add_memory available for other board
>       highbank: add xgmac support
>       arm: add highbank support
>       highbank: add l2x0 support
>       highbank: use the provided dtb by the firmware to probe barebox device and mem size
> 
>  arch/arm/Kconfig                               |   12 ++++
>  arch/arm/Makefile                              |    2 +
>  arch/arm/boards/highbank/Makefile              |    4 ++
>  arch/arm/boards/highbank/config.h              |    5 ++
>  arch/arm/boards/highbank/env/bin/init_board    |    7 +++
>  arch/arm/boards/highbank/env/config            |   34 +++++++++++
>  arch/arm/boards/highbank/init.c                |   86 ++++++++++++++++++++++++++
>  arch/arm/boards/highbank/lowlevel.c            |   17 ++++++
>  arch/arm/configs/highbank_defconfig            |   61 +++++++++++++++++++
>  arch/arm/mach-highbank/Kconfig                 |   18 ++++++
>  arch/arm/mach-highbank/Makefile                |    4 ++
>  arch/arm/mach-highbank/cache-l2x0.c            |   45 ++++++++++++++
>  arch/arm/mach-highbank/core.c                  |   49 +++++++++++++++
>  arch/arm/mach-highbank/core.h                  |    2 +
>  arch/arm/mach-highbank/devices.c               |   74 +++++++++++++++++++++++
>  arch/arm/mach-highbank/include/mach/clkdev.h   |    7 +++
>  arch/arm/mach-highbank/include/mach/debug_ll.h |   26 ++++++++
>  arch/arm/mach-highbank/include/mach/devices.h  |   17 ++++++
>  arch/arm/mach-highbank/include/mach/gpio.h     |    1 +
>  arch/arm/mach-highbank/reset.c                 |   21 +++++++
>  arch/arm/mach-highbank/smc.S                   |   27 +++++++++
>  arch/arm/mach-highbank/sysregs.h               |   52 ++++++++++++++++
>  drivers/ata/ahci.c                             |    9 +++
>  drivers/net/Kconfig                            |    3 +
>  drivers/net/Makefile                           |    1 +
>  drivers/net/xgmac.c                            |  740 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
>  drivers/of/base.c                              |   20 ++++--
>  include/of.h                                   |    6 ++
>  28 files changed, 1344 insertions(+), 6 deletions(-)
>  create mode 100644 arch/arm/boards/highbank/Makefile
>  create mode 100644 arch/arm/boards/highbank/config.h
>  create mode 100644 arch/arm/boards/highbank/env/bin/init_board
>  create mode 100644 arch/arm/boards/highbank/env/config
>  create mode 100644 arch/arm/boards/highbank/init.c
>  create mode 100644 arch/arm/boards/highbank/lowlevel.c
>  create mode 100644 arch/arm/configs/highbank_defconfig
>  create mode 100644 arch/arm/mach-highbank/Kconfig
>  create mode 100644 arch/arm/mach-highbank/Makefile
>  create mode 100644 arch/arm/mach-highbank/cache-l2x0.c
>  create mode 100644 arch/arm/mach-highbank/core.c
>  create mode 100644 arch/arm/mach-highbank/core.h
>  create mode 100644 arch/arm/mach-highbank/devices.c
>  create mode 100644 arch/arm/mach-highbank/include/mach/clkdev.h
>  create mode 100644 arch/arm/mach-highbank/include/mach/debug_ll.h
>  create mode 100644 arch/arm/mach-highbank/include/mach/devices.h
>  create mode 100644 arch/arm/mach-highbank/include/mach/gpio.h
>  create mode 100644 arch/arm/mach-highbank/reset.c
>  create mode 100644 arch/arm/mach-highbank/smc.S
>  create mode 100644 arch/arm/mach-highbank/sysregs.h
>  create mode 100644 drivers/net/xgmac.c
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
