Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo5.mail-out.ovh.net ([87.98.173.103]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U1Bnz-00079M-1n
 for barebox@lists.infradead.org; Fri, 01 Feb 2013 08:17:04 +0000
Received: from mail409.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 4A00310201BC
 for <barebox@lists.infradead.org>; Fri,  1 Feb 2013 09:27:09 +0100 (CET)
Date: Fri, 1 Feb 2013 09:15:46 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130201081546.GL26329@game.jcrosoft.org>
References: <1359705587-9762-1-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1359705587-9762-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH v2] Add new ARM entry point for barebox
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 08:59 Fri 01 Feb     , Sascha Hauer wrote:
> Second version. I updated the series to current -next. Besides, I dropped
> the board reserved memory chunk at the end of SDRAM as it does not work
> for configurations which run in tight SRAM. Boards are now required to
> reserve some memory themselves and skip this area from barebox_arm_entry
> should they need some space.
> 
> This version is compile tested only currently. My plan is to do some
> additional runtime tests on Monday when I'm back from the FOSDEM and
> apply it afterwards. So I won't apply any patches conflicting to this
> series before applying this one.

for at91 we have patch in the queue that need to be apllued first

please do so they are a pain n the ass to test

Best Regards,
J.
> 
> Sascha
> 
> The following changes since commit f1c191de412ce88288f661dc261674af69d6fe4e:
> 
>   Merge branch 'for-next/pbl' into next (2013-02-01 08:21:12 +0100)
> 
> are available in the git repository at:
> 
> 
>   git://git.pengutronix.de/git/barebox.git pu/arm-entry
> 
> for you to fetch changes up to e2312a2c5736008cc889383005cca3fee7883a47:
> 
>   ARM pbl: inline decompress function (2013-02-01 08:28:47 +0100)
> 
> ----------------------------------------------------------------
> Sascha Hauer (34):
>       ARM: Add new entry point for barebox
>       ARM: add __noreturn to board_init_lowlevel_return
>       ARM i.MX: Use SRAM stack in lowlevel code
>       ARM i.MX: Add i.MX specific entry point for barebox
>       ARM i.MX: prepare external nand boot for SoC specific entry
>       ARM i.MX boards: switch to barebox_arm_entry
>       ARM MXS boards: switch to barebox_arm_entry
>       ARM OMAP boards: switch to barebox_arm_entry
>       ARM Samsung boards: switch to barebox_arm_entry
>       ARM PXA boards: switch to barebox_arm_entry
>       ARM ep93xx boards: switch to barebox_arm_entry
>       ARM tegra boards: switch to barebox_arm_entry
>       ARM nomadik boards: switch to barebox_arm_entry
>       ARM versatile boards: switch to barebox_arm_entry
>       ARM netx boards: switch to barebox_arm_entry
>       ARM clep7212: switch to barebox_arm_entry
>       ARM raspberrypi: switch to barebox_arm_entry
>       ARM AT91: switch to barebox_arm_entry part1
>       ARM AT91: switch at91rm9200 board to barebox_arm_entry
>       ARM AT91: switch sama5d3 to barebox_arm_entry
>       ARM AT91: switch remaining boards to barebox_arm_entry
>       ARM: remove now unused MACH_[HAS|DO]_LOWLEVEL_INIT
>       ARM start-pbl: make board_init_lowlevel_return static
>       ARM start-pbl: call uncompressed binary with arguments
>       ARM start: pickup parameters from pbl
>       ARM: Setup stack at end of SDRAM
>       ARM pbl: Use dynamic parameters for early malloc space
>       ARM mmu: pickup already enabled mmu
>       ARM: Factor out early mmu code
>       ARM: Enable mmu early
>       ARM: Automatically determine malloc size
>       generic memory layout: fix deps for [MALLOC|STACK]_BASE
>       ARM: disable HAVE_CONFIGURABLE_MEMORY_LAYOUT
>       ARM pbl: inline decompress function
> 
>  arch/arm/Kconfig                                   |    1 -
>  arch/arm/boards/a9m2410/lowlevel_init.S            |    9 +-
>  arch/arm/boards/a9m2440/lowlevel_init.S            |    9 +-
>  arch/arm/boards/archosg9/Makefile                  |    4 +-
>  arch/arm/boards/archosg9/lowlevel.c                |    3 +-
>  arch/arm/boards/at91sam9263ek/Makefile             |    4 +-
>  arch/arm/boards/at91sam9m10g45ek/Makefile          |    2 +
>  arch/arm/boards/at91sam9m10g45ek/lowlevel.c        |   11 ++
>  arch/arm/boards/at91sam9m10ihd/Makefile            |    2 +
>  arch/arm/boards/at91sam9m10ihd/lowlevel.c          |   11 ++
>  arch/arm/boards/at91sam9n12ek/Makefile             |    2 +
>  arch/arm/boards/at91sam9n12ek/lowlevel.c           |   11 ++
>  arch/arm/boards/at91sam9x5ek/Makefile              |    2 +
>  arch/arm/boards/at91sam9x5ek/lowlevel.c            |   11 ++
>  arch/arm/boards/beagle/lowlevel.c                  |   16 +-
>  arch/arm/boards/beaglebone/Makefile                |    2 +
>  arch/arm/boards/beaglebone/lowlevel.c              |   12 +-
>  arch/arm/boards/ccxmx51/Makefile                   |    2 +
>  arch/arm/boards/ccxmx51/lowlevel.c                 |    9 ++
>  arch/arm/boards/chumby_falconwing/Makefile         |    2 +
>  arch/arm/boards/chumby_falconwing/lowlevel.c       |   11 ++
>  arch/arm/boards/clep7212/lowlevel.c                |    3 +-
>  arch/arm/boards/crystalfontz-cfa10036/Makefile     |    2 +
>  arch/arm/boards/crystalfontz-cfa10036/lowlevel.c   |   11 ++
>  arch/arm/boards/edb93xx/sdram_cfg.c                |    4 +
>  arch/arm/boards/efika-mx-smartbook/Makefile        |    2 +
>  arch/arm/boards/efika-mx-smartbook/lowlevel.c      |    9 ++
>  arch/arm/boards/eukrea_cpuimx25/lowlevel.c         |    6 +-
>  arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S    |    7 +-
>  arch/arm/boards/eukrea_cpuimx35/lowlevel.c         |    8 +-
>  arch/arm/boards/eukrea_cpuimx51/Makefile           |    2 +
>  arch/arm/boards/eukrea_cpuimx51/lowlevel.c         |    9 ++
>  arch/arm/boards/freescale-mx23-evk/Makefile        |    2 +
>  arch/arm/boards/freescale-mx23-evk/lowlevel.c      |   11 ++
>  .../boards/freescale-mx25-3-stack/lowlevel_init.S  |    7 +-
>  arch/arm/boards/freescale-mx28-evk/Makefile        |    2 +
>  arch/arm/boards/freescale-mx28-evk/lowlevel.c      |   11 ++
>  arch/arm/boards/freescale-mx35-3-stack/3stack.c    |    1 +
>  .../boards/freescale-mx35-3-stack/lowlevel_init.S  |    7 +-
>  arch/arm/boards/freescale-mx51-pdk/Makefile        |    2 +
>  arch/arm/boards/freescale-mx51-pdk/lowlevel.c      |    9 ++
>  arch/arm/boards/freescale-mx53-loco/Makefile       |    2 +
>  arch/arm/boards/freescale-mx53-loco/lowlevel.c     |    9 ++
>  arch/arm/boards/freescale-mx53-smd/Makefile        |    2 +
>  arch/arm/boards/freescale-mx53-smd/lowlevel.c      |    9 ++
>  arch/arm/boards/freescale-mx6-arm2/Makefile        |    2 +
>  arch/arm/boards/freescale-mx6-arm2/lowlevel.c      |   10 ++
>  arch/arm/boards/freescale-mx6-sabrelite/Makefile   |    2 +
>  arch/arm/boards/freescale-mx6-sabrelite/lowlevel.c |   10 ++
>  .../boards/friendlyarm-mini2440/lowlevel_init.S    |    9 +-
>  arch/arm/boards/friendlyarm-mini6410/Makefile      |    2 +
>  arch/arm/boards/friendlyarm-mini6410/lowlevel.c    |   11 ++
>  arch/arm/boards/friendlyarm-tiny210/lowlevel.c     |    4 +-
>  arch/arm/boards/friendlyarm-tiny6410/Makefile      |    3 +-
>  arch/arm/boards/friendlyarm-tiny6410/lowlevel.c    |   11 ++
>  arch/arm/boards/guf-cupid/lowlevel.c               |    8 +-
>  arch/arm/boards/guf-neso/lowlevel.c                |    8 +-
>  arch/arm/boards/guf-vincell/lowlevel.c             |    5 +-
>  arch/arm/boards/imx21ads/imx21ads.c                |    3 +-
>  arch/arm/boards/imx21ads/lowlevel_init.S           |   11 +-
>  arch/arm/boards/imx233-olinuxino/Makefile          |    2 +
>  arch/arm/boards/imx233-olinuxino/lowlevel.c        |   11 ++
>  arch/arm/boards/imx27ads/lowlevel_init.S           |    4 +-
>  arch/arm/boards/karo-tx25/lowlevel.c               |   10 +-
>  arch/arm/boards/karo-tx28/Makefile                 |    2 +
>  arch/arm/boards/karo-tx28/lowlevel.c               |   11 ++
>  arch/arm/boards/karo-tx51/Makefile                 |    2 +
>  arch/arm/boards/karo-tx51/lowlevel.c               |    9 ++
>  arch/arm/boards/karo-tx53/lowlevel.c               |    6 +-
>  arch/arm/boards/mioa701/Makefile                   |    2 +
>  arch/arm/boards/mioa701/lowlevel.c                 |   10 ++
>  arch/arm/boards/mmccpu/Makefile                    |    4 +-
>  arch/arm/boards/netx/platform.S                    |    7 +-
>  arch/arm/boards/nhk8815/Makefile                   |    2 +
>  arch/arm/boards/nhk8815/lowlevel.c                 |   10 ++
>  arch/arm/boards/omap343xdsp/lowlevel.c             |   15 +-
>  arch/arm/boards/omap3evm/lowlevel.c                |   13 +-
>  arch/arm/boards/panda/lowlevel.c                   |    7 +-
>  arch/arm/boards/pcm027/lowlevel_init.S             |    7 +-
>  arch/arm/boards/pcm037/lowlevel.c                  |    6 +-
>  arch/arm/boards/pcm038/lowlevel.c                  |    8 +-
>  arch/arm/boards/pcm043/lowlevel.c                  |    8 +-
>  arch/arm/boards/pcm049/lowlevel.c                  |    7 +-
>  arch/arm/boards/pcm051/Makefile                    |    2 +
>  arch/arm/boards/pcm051/lowlevel.c                  |   11 ++
>  arch/arm/boards/phycard-a-l1/lowlevel.c            |   12 +-
>  arch/arm/boards/phycard-a-xl2/lowlevel.c           |    7 +-
>  arch/arm/boards/phycard-i.MX27/lowlevel_init.S     |    4 +-
>  arch/arm/boards/pm9261/Makefile                    |    4 +-
>  arch/arm/boards/pm9263/Makefile                    |    4 +-
>  arch/arm/boards/pm9g45/Makefile                    |    2 +
>  arch/arm/boards/pm9g45/lowlevel.c                  |   11 ++
>  arch/arm/boards/raspberry-pi/Makefile              |    2 +
>  arch/arm/boards/raspberry-pi/lowlevel.c            |   11 ++
>  arch/arm/boards/scb9328/lowlevel_init.S            |    4 +-
>  arch/arm/boards/tny-a926x/Makefile                 |    4 +-
>  arch/arm/boards/toshiba-ac100/Makefile             |    2 +
>  arch/arm/boards/toshiba-ac100/lowlevel.c           |   10 ++
>  arch/arm/boards/tqma53/Makefile                    |    2 +
>  arch/arm/boards/tqma53/lowlevel.c                  |    9 ++
>  arch/arm/boards/usb-a926x/Makefile                 |    4 +-
>  arch/arm/boards/versatile/Makefile                 |    3 +-
>  arch/arm/boards/versatile/lowlevel.c               |   10 ++
>  arch/arm/configs/archosg9_defconfig                |    1 -
>  arch/arm/configs/phycard_a_l1_defconfig            |    2 -
>  arch/arm/cpu/Makefile                              |    4 +-
>  arch/arm/cpu/cpu.c                                 |   12 ++
>  arch/arm/cpu/mmu-early.c                           |   53 +++++++
>  arch/arm/cpu/mmu-early.h                           |    6 +
>  arch/arm/cpu/mmu.c                                 |    9 +-
>  arch/arm/cpu/start-pbl.c                           |  163 ++++++--------------
>  arch/arm/cpu/start.c                               |  107 ++++++++++---
>  arch/arm/include/asm/barebox-arm.h                 |    4 +-
>  arch/arm/lib/Makefile                              |    1 -
>  arch/arm/lib/arm.c                                 |   14 --
>  arch/arm/mach-at91/Kconfig                         |   17 +-
>  arch/arm/mach-at91/Makefile                        |    5 +-
>  arch/arm/mach-at91/at91rm9200_lowlevel_init.c      |    2 +-
>  arch/arm/mach-at91/at91sam926x_lowlevel_init.c     |    4 +-
>  arch/arm/mach-at91/sama5d3_lowlevel_init.c         |   25 +++
>  arch/arm/mach-clps711x/Kconfig                     |    2 -
>  arch/arm/mach-ep93xx/Kconfig                       |    8 -
>  arch/arm/mach-ep93xx/Makefile                      |    4 +-
>  arch/arm/mach-ep93xx/lowlevel_init.S               |   11 +-
>  arch/arm/mach-imx/Kconfig                          |   17 --
>  arch/arm/mach-imx/Makefile                         |    5 +-
>  arch/arm/mach-imx/esdctl.c                         |  136 +++++++++++++---
>  arch/arm/mach-imx/external-nand-boot.c             |   74 ++++++---
>  arch/arm/mach-imx/include/mach/esdctl.h            |   11 ++
>  arch/arm/mach-imx/include/mach/imx-nand.h          |    1 -
>  arch/arm/mach-imx/include/mach/imx21-regs.h        |    1 +
>  arch/arm/mach-imx/include/mach/imx25-regs.h        |    3 +
>  arch/arm/mach-imx/include/mach/imx27-regs.h        |    1 +
>  arch/arm/mach-imx/include/mach/imx31-regs.h        |    3 +
>  arch/arm/mach-netx/Kconfig                         |    1 -
>  arch/arm/mach-omap/Kconfig                         |    5 -
>  arch/arm/mach-omap/arch-omap.dox                   |    1 -
>  arch/arm/mach-omap/include/mach/omap3-silicon.h    |    1 +
>  arch/arm/mach-omap/omap3_core.S                    |   11 +-
>  arch/arm/mach-pxa/Kconfig                          |    1 -
>  arch/arm/mach-samsung/Kconfig                      |    6 -
>  arch/arm/pbl/zbarebox.lds.S                        |    8 +-
>  common/Kconfig                                     |   21 ++-
>  common/meminfo.c                                   |    5 -
>  include/asm-generic/memory_layout.h                |    6 +-
>  145 files changed, 1035 insertions(+), 390 deletions(-)
>  create mode 100644 arch/arm/boards/at91sam9m10g45ek/lowlevel.c
>  create mode 100644 arch/arm/boards/at91sam9m10ihd/lowlevel.c
>  create mode 100644 arch/arm/boards/at91sam9n12ek/lowlevel.c
>  create mode 100644 arch/arm/boards/at91sam9x5ek/lowlevel.c
>  create mode 100644 arch/arm/boards/ccxmx51/lowlevel.c
>  create mode 100644 arch/arm/boards/chumby_falconwing/lowlevel.c
>  create mode 100644 arch/arm/boards/crystalfontz-cfa10036/lowlevel.c
>  create mode 100644 arch/arm/boards/efika-mx-smartbook/lowlevel.c
>  create mode 100644 arch/arm/boards/eukrea_cpuimx51/lowlevel.c
>  create mode 100644 arch/arm/boards/freescale-mx23-evk/lowlevel.c
>  create mode 100644 arch/arm/boards/freescale-mx28-evk/lowlevel.c
>  create mode 100644 arch/arm/boards/freescale-mx51-pdk/lowlevel.c
>  create mode 100644 arch/arm/boards/freescale-mx53-loco/lowlevel.c
>  create mode 100644 arch/arm/boards/freescale-mx53-smd/lowlevel.c
>  create mode 100644 arch/arm/boards/freescale-mx6-arm2/lowlevel.c
>  create mode 100644 arch/arm/boards/freescale-mx6-sabrelite/lowlevel.c
>  create mode 100644 arch/arm/boards/friendlyarm-mini6410/lowlevel.c
>  create mode 100644 arch/arm/boards/friendlyarm-tiny6410/lowlevel.c
>  create mode 100644 arch/arm/boards/imx233-olinuxino/lowlevel.c
>  create mode 100644 arch/arm/boards/karo-tx28/lowlevel.c
>  create mode 100644 arch/arm/boards/karo-tx51/lowlevel.c
>  create mode 100644 arch/arm/boards/mioa701/lowlevel.c
>  create mode 100644 arch/arm/boards/nhk8815/lowlevel.c
>  create mode 100644 arch/arm/boards/pcm051/lowlevel.c
>  create mode 100644 arch/arm/boards/pm9g45/lowlevel.c
>  create mode 100644 arch/arm/boards/raspberry-pi/lowlevel.c
>  create mode 100644 arch/arm/boards/toshiba-ac100/lowlevel.c
>  create mode 100644 arch/arm/boards/tqma53/lowlevel.c
>  create mode 100644 arch/arm/boards/versatile/lowlevel.c
>  create mode 100644 arch/arm/cpu/mmu-early.c
>  create mode 100644 arch/arm/cpu/mmu-early.h
>  delete mode 100644 arch/arm/lib/arm.c
>  create mode 100644 arch/arm/mach-at91/sama5d3_lowlevel_init.c
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
