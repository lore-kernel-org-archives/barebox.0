Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x243.google.com ([2607:f8b0:400e:c05::243])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cljmC-0006dB-0V
 for barebox@lists.infradead.org; Wed, 08 Mar 2017 22:09:46 +0000
Received: by mail-pg0-x243.google.com with SMTP id g2so150237pge.2
 for <barebox@lists.infradead.org>; Wed, 08 Mar 2017 14:09:23 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  8 Mar 2017 14:08:49 -0800
Message-Id: <20170308220909.4560-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 00/20] AT91, at91sam9x5ek updates (part I/III)
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Hi everone,

As discussed in original thread [1], here is a first batch of AT91
related patches. The patches gathered in this set are bugfixes, port
of functionality form Linux or code refactoring.

Feedback from Sascha and Sam has been incorporated, but other than
that the code should be as it was in [1].

Any feedback is appreciated.

Thank you,
Andrey Smirnov

[1] http://lists.infradead.org/pipermail/barebox/2017-March/029337.html


Andrey Smirnov (20):
  at91: Fix bug/typo in debug_ll.h
  regmap: Implement syscon_node_to_regmap()
  pinctrl: at91: Fix a bug in at91_pinctrl_set_conf()
  pinctrl: at91: Fix a bug in at91_pinctrl_set_state()
  pinctrl: at91: Implement .get_direction hook
  clk: Port two helper functions from Linux
  clk: Make COMMON_CLK_OF_PROVIDER depend on OFTREE
  clk: No-op CLK_OF_DECLARE if not enabled
  of: base: Use scoring in DT device matching
  serial: atmel: Check result of clk_get()
  usb: ohci-at91: Check result of clk_get()
  usb: ohci-at91: Convert global variables to private data
  usb: ohci-at91: Check result of clk_enable()
  usb: ehci-atmel: Check result of clk_enable()
  usb: echi-atmel: Convert global variables to private data
  usb: ehci-atmel: Zero ehci_data before using it
  usb: echi-atmel: Check result of ehci_register()
  spi: atmel_spi: Configure CS GPIO as output
  spi: atmel_spi: Use VERSION register instead of CPU type
  clocksource: at91: Move to 'drivers/clocksource'

 arch/arm/mach-at91/Kconfig                         |  7 +-
 arch/arm/mach-at91/Makefile                        |  1 -
 arch/arm/mach-at91/include/mach/debug_ll.h         |  2 +-
 drivers/clk/Kconfig                                |  1 +
 drivers/clk/clk-fixed-factor.c                     |  2 -
 drivers/clk/clk-fixed.c                            |  3 +-
 drivers/clk/clk.c                                  | 41 +++++++++++-
 drivers/clk/clkdev.c                               |  2 +-
 drivers/clocksource/Kconfig                        |  4 ++
 drivers/clocksource/Makefile                       |  1 +
 .../clocksource/timer-atmel-pit.c                  |  0
 drivers/mfd/syscon.c                               | 54 ++++++++++++++-
 drivers/of/base.c                                  | 37 ++++++-----
 drivers/pinctrl/pinctrl-at91.c                     | 22 ++++++-
 drivers/serial/atmel.c                             |  5 ++
 drivers/spi/atmel_spi.c                            | 41 ++++++++++--
 drivers/spi/atmel_spi.h                            |  1 +
 drivers/usb/host/ehci-atmel.c                      | 57 +++++++++++-----
 drivers/usb/host/ohci-at91.c                       | 76 +++++++++++++++++-----
 include/linux/clk.h                                |  9 ++-
 include/mfd/syscon.h                               |  8 +++
 21 files changed, 299 insertions(+), 75 deletions(-)
 rename arch/arm/mach-at91/at91sam926x_time.c => drivers/clocksource/timer-atmel-pit.c (100%)

-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
