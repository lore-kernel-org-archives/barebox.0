Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vjs8P-0008Eu-PQ
 for barebox@lists.infradead.org; Fri, 22 Nov 2013 14:55:08 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1Vjs84-0001vA-A7
 for barebox@lists.infradead.org; Fri, 22 Nov 2013 15:54:44 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1Vjs84-0008FB-97
 for barebox@lists.infradead.org; Fri, 22 Nov 2013 15:54:44 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 Nov 2013 15:54:27 +0100
Message-Id: <1385132083-7484-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: OMAP: devicetree preparation patches
To: barebox@lists.infradead.org

The following are various patches to prepare OMAP devicetree
support. The am33xx devicetree is added, but remains unused
for now.

Sascha

----------------------------------------------------------------
Sascha Hauer (16):
      ARM: OMAP: select SoC variant from boards
      ARM: OMAP: Add SoC prefix to running_in_* functions
      ARM: OMAP: select correct reset_cpu function at runtime
      ARM: OMAP: Make cpu_is_* macros runtime if necessary
      ARM: dtb: create dt-bindings link
      dt-bindings: Add gpio header file
      dt-bindings: Add omap/am33xx pinctrl header file
      images: socfpga: Do not pollute Make variable namespace
      ARM: Add am33xx SoC dtsi file
      ARM: am335x: Add reg-shift property to uarts
      ARM: dts: AM33xx: Add gpio aliases
      ARM: am33xx: Add am33xx_ prefix to SoC specific functions
      ARM: OMAP: Make debug_ll UART Kconfig selectable
      ARM: OMAP: centralize omap startup
      ARM: am33xx: compile SoC files for pbl aswell
      ARM: OMAP: let UART selection depend on its only user

 arch/arm/boards/beagle/lowlevel.c                |   2 +-
 arch/arm/boards/beaglebone/lowlevel.c            |   8 +-
 arch/arm/boards/omap343xdsp/lowlevel.c           |   2 +-
 arch/arm/boards/omap3evm/lowlevel.c              |   2 +-
 arch/arm/boards/pcm051/lowlevel.c                |   4 +-
 arch/arm/boards/phycard-a-l1/lowlevel.c          |   2 +-
 arch/arm/dts/am33xx.dtsi                         | 806 +++++++++++++++++++++++
 arch/arm/dts/include/dt-bindings                 |   1 +
 arch/arm/mach-omap/Kconfig                       |  32 +-
 arch/arm/mach-omap/Makefile                      |   1 +
 arch/arm/mach-omap/am33xx_clock.c                |   4 +-
 arch/arm/mach-omap/am33xx_generic.c              |  26 +-
 arch/arm/mach-omap/gpmc.c                        |  17 +-
 arch/arm/mach-omap/include/mach/am33xx-clock.h   |   4 +-
 arch/arm/mach-omap/include/mach/am33xx-generic.h |   9 +
 arch/arm/mach-omap/include/mach/debug_ll.h       |  71 +-
 arch/arm/mach-omap/include/mach/generic.h        |  40 +-
 arch/arm/mach-omap/include/mach/omap3-generic.h  |  10 +
 arch/arm/mach-omap/include/mach/omap4-generic.h  |   5 +
 arch/arm/mach-omap/include/mach/sys_info.h       |   4 -
 arch/arm/mach-omap/omap3_clock.c                 |   9 +-
 arch/arm/mach-omap/omap3_generic.c               |  28 +-
 arch/arm/mach-omap/omap4_generic.c               |  19 +-
 arch/arm/mach-omap/omap_generic.c                |  70 +-
 common/Kconfig                                   |  34 +
 images/Makefile.socfpga                          |  12 +-
 include/dt-bindings/gpio/gpio.h                  |  15 +
 include/dt-bindings/pinctrl/am33xx.h             |  42 ++
 include/dt-bindings/pinctrl/omap.h               |  53 ++
 29 files changed, 1201 insertions(+), 131 deletions(-)
 create mode 100644 arch/arm/dts/am33xx.dtsi
 create mode 120000 arch/arm/dts/include/dt-bindings
 create mode 100644 include/dt-bindings/gpio/gpio.h
 create mode 100644 include/dt-bindings/pinctrl/am33xx.h
 create mode 100644 include/dt-bindings/pinctrl/omap.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
