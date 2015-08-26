Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZUYi4-0004d4-ID
 for barebox@lists.infradead.org; Wed, 26 Aug 2015 11:17:42 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <sha@pengutronix.de>) id 1ZUYhh-0005wf-4o
 for barebox@lists.infradead.org; Wed, 26 Aug 2015 13:17:17 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.86)
 (envelope-from <sha@pengutronix.de>) id 1ZUYhg-0006pY-TJ
 for barebox@lists.infradead.org; Wed, 26 Aug 2015 13:17:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 26 Aug 2015 13:17:09 +0200
Message-Id: <1440587836-22105-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Allow multiple restart/watchdog/reset-source handlers
To: Barebox List <barebox@lists.infradead.org>

Usually SoCs have internal watchdogs, provide a way to detect the reset
source and provide a way to reset the system. Sometimes though, this
is provided by external facilities aswell and which way to use is board
specific. With this series barebox can handle multiple watchdogs,
reset-source handlers and restart handlers. They can be prioritezed
via the device tree with different *-priority properties.

Sascha

----------------------------------------------------------------
Juergen Borleis (1):
      mfd: da9053: add da9053 watchdog and system restart driver

Philipp Zabel (1):
      mfd: da9063: add da9063 watchdog and system restart driver

Sascha Hauer (5):
      restart: replace reset_cpu with registered restart handlers
      watchdog: Allow multiple watchdogs
      watchdog: Give watchdogs a name
      reset-source: Use globalvar_add_simple_enum
      reset-source: Allow different priorities

 arch/arm/lib/bootm.c                             |   7 +-
 arch/arm/mach-at91/at91rm9200_time.c             |  14 +-
 arch/arm/mach-at91/at91sam9_reset.S              |   4 +-
 arch/arm/mach-at91/at91sam9g45_reset.S           |   4 +-
 arch/arm/mach-at91/bootstrap.c                   |   3 +-
 arch/arm/mach-at91/setup.c                       |   9 +
 arch/arm/mach-bcm2835/core.c                     |  21 +-
 arch/arm/mach-clps711x/reset.c                   |  12 +-
 arch/arm/mach-davinci/time.c                     |  14 +-
 arch/arm/mach-digic/Makefile                     |   2 +-
 arch/arm/mach-digic/core.c                       |  25 --
 arch/arm/mach-ep93xx/clocksource.c               |  19 +-
 arch/arm/mach-highbank/reset.c                   |  14 +-
 arch/arm/mach-mvebu/armada-370-xp.c              |   9 +-
 arch/arm/mach-mvebu/common.c                     |  13 -
 arch/arm/mach-mvebu/dove.c                       |   9 +-
 arch/arm/mach-mvebu/include/mach/common.h        |   1 -
 arch/arm/mach-mvebu/kirkwood.c                   |   9 +-
 arch/arm/mach-mxs/soc-imx23.c                    |   8 +-
 arch/arm/mach-mxs/soc-imx28.c                    |   9 +-
 arch/arm/mach-netx/generic.c                     |  23 +-
 arch/arm/mach-nomadik/reset.c                    |  15 +-
 arch/arm/mach-omap/am33xx_generic.c              |   4 +-
 arch/arm/mach-omap/include/mach/am33xx-generic.h |   2 +-
 arch/arm/mach-omap/include/mach/omap3-generic.h  |   2 +-
 arch/arm/mach-omap/include/mach/omap4-generic.h  |   2 +-
 arch/arm/mach-omap/omap3_generic.c               |   5 +-
 arch/arm/mach-omap/omap4_generic.c               |   4 +-
 arch/arm/mach-omap/omap_generic.c                |  12 +-
 arch/arm/mach-pxa/common.c                       |  14 +-
 arch/arm/mach-rockchip/core.c                    |  16 +-
 arch/arm/mach-samsung/generic.c                  |  15 +-
 arch/arm/mach-socfpga/reset-manager.c            |  14 +-
 arch/arm/mach-tegra/tegra20-pmc.c                |   8 +-
 arch/arm/mach-uemd/Makefile                      |   2 +-
 arch/arm/mach-uemd/reset.c                       |  24 --
 arch/arm/mach-versatile/core.c                   |   7 +-
 arch/arm/mach-vexpress/reset.c                   |  15 +-
 arch/arm/mach-zynq/zynq.c                        |  24 +-
 arch/blackfin/lib/cpu.c                          |  11 +-
 arch/blackfin/lib/traps.c                        |   5 +-
 arch/efi/efi/efi.c                               |  13 +-
 arch/mips/lib/bootm.c                            |   3 +-
 arch/mips/mach-ar231x/ar231x_reset.c             |   8 +-
 arch/mips/mach-ath79/reset.c                     |  15 +-
 arch/mips/mach-bcm47xx/reset.c                   |  16 +-
 arch/mips/mach-loongson/loongson1_reset.c        |  15 +-
 arch/mips/mach-malta/reset.c                     |  16 +-
 arch/nios2/cpu/cpu.c                             |  12 +-
 arch/openrisc/cpu/cpu.c                          |  11 +-
 arch/ppc/lib/ppclinux.c                          |   3 +-
 arch/ppc/mach-mpc5xxx/cpu.c                      |  11 +-
 arch/ppc/mach-mpc85xx/cpu.c                      |  14 +-
 arch/sandbox/board/Makefile                      |   1 +
 arch/sandbox/mach-sandbox/include/mach/linux.h   |   1 +
 arch/sandbox/os/common.c                         |   6 +-
 arch/x86/mach-i386/Makefile                      |   2 -
 arch/x86/mach-i386/reset.c                       |  30 ---
 commands/reset.c                                 |   3 +-
 common/Makefile                                  |   1 +
 common/misc.c                                    |   3 +-
 common/reset_source.c                            |  29 ++-
 common/restart.c                                 | 112 +++++++++
 drivers/mfd/Kconfig                              |  11 +
 drivers/mfd/Makefile                             |   2 +
 drivers/mfd/da9053.c                             | 308 +++++++++++++++++++++++
 drivers/mfd/da9063.c                             | 165 ++++++++++++
 drivers/usb/gadget/f_fastboot.c                  |   3 +-
 drivers/watchdog/davinci_wdt.c                   |   1 +
 drivers/watchdog/im28wd.c                        |   1 +
 drivers/watchdog/imxwd.c                         |  23 +-
 drivers/watchdog/jz4740.c                        |  32 +--
 drivers/watchdog/wd_core.c                       |  70 +++++-
 include/common.h                                 |   1 -
 include/reset_source.h                           |  14 +-
 include/restart.h                                |  21 ++
 include/watchdog.h                               |   8 +
 77 files changed, 1119 insertions(+), 296 deletions(-)
 delete mode 100644 arch/arm/mach-digic/core.c
 delete mode 100644 arch/arm/mach-uemd/reset.c
 delete mode 100644 arch/x86/mach-i386/reset.c
 create mode 100644 common/restart.c
 create mode 100644 drivers/mfd/da9053.c
 create mode 100644 drivers/mfd/da9063.c
 create mode 100644 include/restart.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
