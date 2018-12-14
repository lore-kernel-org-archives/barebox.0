Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eddie.linux-mips.org ([148.251.95.138] helo=cvs.linux-mips.org)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXqF0-0006kZ-GU
 for barebox@lists.infradead.org; Fri, 14 Dec 2018 16:23:08 +0000
Received: (from localhost user: 'ladis' uid#1021 fake: STDIN
 (ladis@eddie.linux-mips.org)) by eddie.linux-mips.org
 id S23992789AbeLNQWupXSSG (ORCPT
 <rfc822;barebox@lists.infradead.org>);
 Fri, 14 Dec 2018 17:22:50 +0100
Date: Fri, 14 Dec 2018 17:22:49 +0100
From: Ladislav Michl <ladis@linux-mips.org>
Message-ID: <20181214162249.GA19868@lenoch>
References: <20181214141730.26181-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181214141730.26181-1-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 00/23] AM3517 support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

Hello Sascha,

On Fri, Dec 14, 2018 at 03:17:07PM +0100, Sascha Hauer wrote:
> This series adds support for the TI AM3517 SoC along with Wago PFC-200
> board support. Also in this series some TI related driver patches. Most
> notably some significant chages to the GPMC Nand driver which was not
> really working anymore.
> 
> Sascha
> 
> Heinrich Toews (3):
>   net: davinci-emac: fix buggy channel tear down
>   net: davinci-emac: switch to device tree support
>   ARM: omap: AM3517: Change default clock rate for AM3517
> 
> Oleg Karfich (1):
>   ARM: omap3: Add support for reset reason detection
> 
> Sascha Hauer (19):
>   net: davinci-emac: Add timeout to polling loop
>   mci: omap: Improve error handling
>   mci: omap: use IS_ENABLED() rather than #ifdef

>   mtd: nand: omap: Use dev_dbg when a struct device * is available
>   mtd: nand: omap: Fix hamming correct return values
>   mtd: nand: omap: Disable subpage reads in hardware ecc mode
>   mtd: nand: omap: remove unused function argument
>   mtd: nand: omap: fix bch8_hw_romcode ecc layout
>   mtd: nand: omap: set eccbytes correctly
>   mtd: nand: omap: unbreak BCH8 support

may I point there is a MTD update pending on mailing list which,
once applied, would make merging with upstream drivers easier?
Yes, that upstream, which already fixed those bugs...

>   ARM: omap: Add missing include
>   ARM: omap: dmtimer: Turn into a driver
>   ARM: omap: 32ktimer: Turn into a driver
>   ARM: omap: Add AM35XX support
>   ARM: omap: enable am33xx_uart_soft_reset for AM35xx
>   ARM: omap: Add AM3517 specific mux configuration
>   ARM: omap: Add emif4 support for AM3517
>   ARM: omap: Add board support for WAGO pfc200 platform
>   ARM: omap: am33xx_defconfig: Enable more boards and rename
> 
>  arch/arm/boards/Makefile                      |   1 +
>  arch/arm/boards/wago-pfc-am35xx/Makefile      |   6 +
>  arch/arm/boards/wago-pfc-am35xx/board-mlo.c   |  73 +++
>  arch/arm/boards/wago-pfc-am35xx/board.c       |  39 ++
>  arch/arm/boards/wago-pfc-am35xx/lowlevel.c    | 231 +++++++++
>  .../arm/configs/am35xx_pfc200_xload_defconfig |  40 ++
>  .../{am335x_defconfig => omap_defconfig}      |   5 +-
>  arch/arm/dts/Makefile                         |   1 +
>  arch/arm/dts/am35xx-pfc-750_820x.dts          | 487 ++++++++++++++++++
>  arch/arm/dts/am3xxx-pfc-nandparts.dtsi        |  63 +++
>  arch/arm/mach-omap/Kconfig                    |  24 +-
>  arch/arm/mach-omap/Makefile                   |   5 +-
>  arch/arm/mach-omap/am33xx_generic.c           |  32 +-
>  arch/arm/mach-omap/am35xx_emif4.c             |  85 +++
>  arch/arm/mach-omap/am3xxx.c                   |  32 ++
>  .../mach-omap/include/mach/am3xxx-silicon.h   |   6 +
>  arch/arm/mach-omap/include/mach/emif4.h       | 105 ++++
>  arch/arm/mach-omap/include/mach/omap3-clock.h |   2 +
>  arch/arm/mach-omap/include/mach/omap3-mux.h   |  49 +-
>  arch/arm/mach-omap/include/mach/sys_info.h    |   2 +
>  arch/arm/mach-omap/omap3_clock.c              |  16 +-
>  arch/arm/mach-omap/omap3_generic.c            |  58 ++-
>  arch/arm/mach-omap/omap4_generic.c            |   5 +-
>  drivers/clocksource/Kconfig                   |   6 +
>  drivers/clocksource/Makefile                  |   2 +
>  .../clocksource/timer-ti-32k.c                |  39 +-
>  .../clocksource/timer-ti-dm.c                 |  47 +-
>  drivers/mci/omap_hsmmc.c                      |  37 +-
>  drivers/mtd/nand/nand_omap_gpmc.c             | 141 +++--
>  drivers/net/davinci_emac.c                    | 210 +++++---
>  images/Makefile                               |   1 +
>  images/Makefile.am35xx                        |  24 +
>  include/platform_data/eth-davinci-emac.h      |  10 -
>  33 files changed, 1657 insertions(+), 227 deletions(-)
>  create mode 100644 arch/arm/boards/wago-pfc-am35xx/Makefile
>  create mode 100644 arch/arm/boards/wago-pfc-am35xx/board-mlo.c
>  create mode 100644 arch/arm/boards/wago-pfc-am35xx/board.c
>  create mode 100644 arch/arm/boards/wago-pfc-am35xx/lowlevel.c
>  create mode 100644 arch/arm/configs/am35xx_pfc200_xload_defconfig
>  rename arch/arm/configs/{am335x_defconfig => omap_defconfig} (96%)
>  create mode 100644 arch/arm/dts/am35xx-pfc-750_820x.dts
>  create mode 100644 arch/arm/dts/am3xxx-pfc-nandparts.dtsi
>  create mode 100644 arch/arm/mach-omap/am35xx_emif4.c
>  create mode 100644 arch/arm/mach-omap/am3xxx.c
>  create mode 100644 arch/arm/mach-omap/include/mach/am3xxx-silicon.h
>  create mode 100644 arch/arm/mach-omap/include/mach/emif4.h
>  rename arch/arm/mach-omap/s32k_clksource.c => drivers/clocksource/timer-ti-32k.c (73%)
>  rename arch/arm/mach-omap/dmtimer.c => drivers/clocksource/timer-ti-dm.c (72%)
>  create mode 100644 images/Makefile.am35xx
>  delete mode 100644 include/platform_data/eth-davinci-emac.h
> 
> -- 
> 2.19.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
