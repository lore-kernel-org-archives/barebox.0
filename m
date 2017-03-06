Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x243.google.com ([2607:f8b0:400e:c00::243])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cl1WS-0007aV-PL
 for barebox@lists.infradead.org; Mon, 06 Mar 2017 22:54:35 +0000
Received: by mail-pf0-x243.google.com with SMTP id v190so8047423pfb.0
 for <barebox@lists.infradead.org>; Mon, 06 Mar 2017 14:54:10 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  6 Mar 2017 14:53:11 -0800
Message-Id: <20170306225356.31475-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 00/45] AT91, at91sam9x5ek updates
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Hi everyone,

I recently had a chance to work with at91sam9x5ek board and as a part
of that effort I converted the code to support features found in
Barebox for i.MX based SoCs. Most notably this patchset converts
at91sam9x5ek to use multi-image PBL build process as well as adds
support for board initialization from attached devicetree blob.

Sascha, at least for now, all of the patches, in chronological order,
are included in this submission. However if this proves to be too
burdensome to review, I'd be more than happy to split it into several
individual submissions. One such division could be:

	   - Generic bug fixes/infrastructure enhancements
	   - Peripheral drivers updates
	   - at91sam9x5ek specific changes

Please let me know if that is preferrable.

Thank you,
Andrey Smirnov


Andrey Smirnov (45):
  at91: Fix bug/typo in debug_ll.h
  at91sam9x5ek: Convert to mult-image build
  at91sam9x5ek: Add CONFIG_KALLSYMS to defconfig
  at91sam9x5ek: Add preliminary device tree support
  clocksource: at91: Move to 'drivers/clocksource'
  clocksource: at91: Add DT compatibility table
  serial: atmel: Check result of clk_get()
  serial: atmel: Add DT compatibility table
  regmap: Implement syscon_node_to_regmap()
  clk: Port two helper functions from Linux
  clk: Make COMMON_CLK_OF_PROVIDER depend on OFTREE
  clk: No-op CLK_OF_DECLARE if not enabled
  clk: at91: Port at91 DT clock code
  at91sam9x5ek: Convert to use DT clock tree
  at91sam9x5ek: Remove at91sam9x5ek_mem_init()
  at91sam9x5ek: Configure LEDs in DT
  pinctrl-at91: Fix a bug in at91_pinctrl_set_conf()
  at91: Enable PINCTRL for SOC_AT91SAM9
  at91sam9x5ek: Configure I2C via DT
  mci: Allow parsing for explicit DT node
  mci: atmel_mci: Add DT support
  at91sam9x5ek: Configure MMC in DT
  of: base: Use scoring in DT device matching
  pinctrl: at91: Fix a bug in at91_pinctrl_set_state
  pinctrl: at91: Implement .get_direction hook
  spi: atmel_spi: Add DT support
  spi: atmel_spi: Configure CS GPIO as output
  spi: atmel_spi: Use VERSION register instead of CPU type
  at91sam9x5ek: Configure SPI in DT
  w1-gpio: Add DT support
  at91sam9x5ek: Configure 1-wire in DT
  usb: ohci-at91: Check result of clk_get()
  usb: ohci-at91: Convert global variables to private data
  usb: ohci-at91: Check result of clk_enable()
  usb: ohci-at91: Add DT support
  usb/host: Allow USB_OHCI_AT91 even if USB_OHCI is disabled
  usb: ehci-atmel: Check result of clk_enable()
  usb: echi-atmel: Convert global variables to private data
  usb: ehci-atmel: Zero ehci_data before using it
  usb: echi-atmel: Check result of ehci_register()
  usb: echi-atmel: Add DT support
  at91sam9x5ek: Configure USB in DT
  net: macb: Add DT support
  at91sam9x5ek: Configure Ethernet in DT
  at91sam9x5ek: Configure NAND in DT

 arch/arm/Kconfig                                   |   2 +-
 arch/arm/boards/at91sam9x5ek/Makefile              |   1 +
 arch/arm/boards/at91sam9x5ek/hw_version.c          |   6 +-
 arch/arm/boards/at91sam9x5ek/hw_version.h          |   1 -
 arch/arm/boards/at91sam9x5ek/init.c                | 226 ++------
 arch/arm/boards/at91sam9x5ek/lowlevel.c            |  21 +
 arch/arm/configs/at91sam9x5ek_defconfig            |   8 +-
 arch/arm/dts/Makefile                              |   2 +
 arch/arm/dts/at91sam9x5ek.dts                      |  72 +++
 arch/arm/mach-at91/Kconfig                         |  73 ++-
 arch/arm/mach-at91/Makefile                        |  10 +-
 arch/arm/mach-at91/at91sam9x5.c                    | 311 -----------
 arch/arm/mach-at91/include/mach/board.h            |   6 +-
 arch/arm/mach-at91/include/mach/debug_ll.h         |   2 +-
 arch/arm/mach-at91/setup.c                         |   4 +-
 drivers/clk/Kconfig                                |   1 +
 drivers/clk/Makefile                               |   1 +
 drivers/clk/at91/Makefile                          |  15 +
 drivers/clk/at91/clk-generated.c                   | 323 ++++++++++++
 drivers/clk/at91/clk-h32mx.c                       | 125 +++++
 drivers/clk/at91/clk-main.c                        | 576 +++++++++++++++++++++
 drivers/clk/at91/clk-master.c                      | 245 +++++++++
 drivers/clk/at91/clk-peripheral.c                  | 430 +++++++++++++++
 drivers/clk/at91/clk-pll.c                         | 516 ++++++++++++++++++
 drivers/clk/at91/clk-plldiv.c                      | 135 +++++
 drivers/clk/at91/clk-programmable.c                | 254 +++++++++
 drivers/clk/at91/clk-slow.c                        | 108 ++++
 drivers/clk/at91/clk-smd.c                         | 172 ++++++
 drivers/clk/at91/clk-system.c                      | 160 ++++++
 drivers/clk/at91/clk-usb.c                         | 397 ++++++++++++++
 drivers/clk/at91/clk-utmi.c                        | 138 +++++
 drivers/clk/at91/pmc.c                             |  41 ++
 drivers/clk/at91/pmc.h                             |  27 +
 drivers/clk/at91/sckc.c                            | 485 +++++++++++++++++
 drivers/clk/clk-fixed-factor.c                     |   2 -
 drivers/clk/clk-fixed.c                            |   3 +-
 drivers/clk/clk.c                                  |  41 +-
 drivers/clk/clkdev.c                               |   2 +-
 drivers/clocksource/Kconfig                        |   4 +
 drivers/clocksource/Makefile                       |   1 +
 .../clocksource/timer-atmel-pit.c                  |   9 +
 drivers/mci/atmel_mci.c                            | 101 ++--
 drivers/mci/mci-core.c                             |  13 +-
 drivers/mfd/syscon.c                               |  54 +-
 drivers/net/macb.c                                 |  56 +-
 drivers/of/base.c                                  |  37 +-
 drivers/pinctrl/pinctrl-at91.c                     |  22 +-
 drivers/serial/atmel.c                             |  12 +
 drivers/spi/atmel_spi.c                            |  70 ++-
 drivers/spi/atmel_spi.h                            |   1 +
 drivers/usb/host/Kconfig                           |   5 +-
 drivers/usb/host/ehci-atmel.c                      |  66 ++-
 drivers/usb/host/ohci-at91.c                       | 156 +++++-
 drivers/w1/masters/w1-gpio.c                       |  53 ++
 images/Makefile                                    |   1 +
 images/Makefile.at91                               |   7 +
 include/linux/clk.h                                |   9 +-
 include/linux/clk/at91_pmc.h                       | 188 +++++++
 include/mci.h                                      |   1 +
 include/mfd/syscon.h                               |   8 +
 60 files changed, 5150 insertions(+), 666 deletions(-)
 create mode 100644 arch/arm/boards/at91sam9x5ek/lowlevel.c
 create mode 100644 arch/arm/dts/at91sam9x5ek.dts
 delete mode 100644 arch/arm/mach-at91/at91sam9x5.c
 create mode 100644 drivers/clk/at91/Makefile
 create mode 100644 drivers/clk/at91/clk-generated.c
 create mode 100644 drivers/clk/at91/clk-h32mx.c
 create mode 100644 drivers/clk/at91/clk-main.c
 create mode 100644 drivers/clk/at91/clk-master.c
 create mode 100644 drivers/clk/at91/clk-peripheral.c
 create mode 100644 drivers/clk/at91/clk-pll.c
 create mode 100644 drivers/clk/at91/clk-plldiv.c
 create mode 100644 drivers/clk/at91/clk-programmable.c
 create mode 100644 drivers/clk/at91/clk-slow.c
 create mode 100644 drivers/clk/at91/clk-smd.c
 create mode 100644 drivers/clk/at91/clk-system.c
 create mode 100644 drivers/clk/at91/clk-usb.c
 create mode 100644 drivers/clk/at91/clk-utmi.c
 create mode 100644 drivers/clk/at91/pmc.c
 create mode 100644 drivers/clk/at91/pmc.h
 create mode 100644 drivers/clk/at91/sckc.c
 rename arch/arm/mach-at91/at91sam926x_time.c => drivers/clocksource/timer-atmel-pit.c (93%)
 create mode 100644 images/Makefile.at91
 create mode 100644 include/linux/clk/at91_pmc.h

-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
