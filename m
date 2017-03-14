Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x22c.google.com ([2607:f8b0:400e:c05::22c])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cnolC-0005De-7M
 for barebox@lists.infradead.org; Tue, 14 Mar 2017 15:53:20 +0000
Received: by mail-pg0-x22c.google.com with SMTP id 77so92258339pgc.1
 for <barebox@lists.infradead.org>; Tue, 14 Mar 2017 08:52:57 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 14 Mar 2017 08:52:11 -0700
Message-Id: <20170314155222.11657-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 00/11] AT91, at91sam9x5ek updates (part II/III)
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Hi everone,

This is the second batch of AT91 related patches (original thread
[1]). The patches gathered in this set are with a few exceptions are
patches adding DT probing support for various AT91 drivers.

Feedback from Sam has been incorporated, but other than that the code
should be as it was in [1].

Any feedback is appreciated.

Thank you,
Andrey Smirnov

[1] http://lists.infradead.org/pipermail/barebox/2017-March/029337.html

Andrey Smirnov (11):
  clocksource: at91: Add DT compatibility table
  serial: atmel: Add DT compatibility table
  clk: at91: Port at91 DT clock code
  mci: Allow parsing for explicit DT node
  mci: atmel_mci: Add DT support
  spi: atmel_spi: Add DT support
  w1-gpio: Add DT support
  usb: ohci-at91: Add DT support
  usb/host: Allow USB_OHCI_AT91 even if USB_OHCI is disabled
  usb: echi-atmel: Add DT support
  net: macb: Add DT support

 arch/arm/Kconfig                        |   1 +
 arch/arm/mach-at91/Kconfig              |  20 ++
 arch/arm/mach-at91/include/mach/board.h |   6 +-
 drivers/clk/Makefile                    |   1 +
 drivers/clk/at91/Makefile               |  15 +
 drivers/clk/at91/clk-generated.c        | 323 ++++++++++++++++++
 drivers/clk/at91/clk-h32mx.c            | 125 +++++++
 drivers/clk/at91/clk-main.c             | 576 ++++++++++++++++++++++++++++++++
 drivers/clk/at91/clk-master.c           | 245 ++++++++++++++
 drivers/clk/at91/clk-peripheral.c       | 430 ++++++++++++++++++++++++
 drivers/clk/at91/clk-pll.c              | 516 ++++++++++++++++++++++++++++
 drivers/clk/at91/clk-plldiv.c           | 135 ++++++++
 drivers/clk/at91/clk-programmable.c     | 254 ++++++++++++++
 drivers/clk/at91/clk-slow.c             | 108 ++++++
 drivers/clk/at91/clk-smd.c              | 172 ++++++++++
 drivers/clk/at91/clk-system.c           | 160 +++++++++
 drivers/clk/at91/clk-usb.c              | 397 ++++++++++++++++++++++
 drivers/clk/at91/clk-utmi.c             | 138 ++++++++
 drivers/clk/at91/pmc.c                  |  41 +++
 drivers/clk/at91/pmc.h                  |  27 ++
 drivers/clk/at91/sckc.c                 | 485 +++++++++++++++++++++++++++
 drivers/clocksource/timer-atmel-pit.c   |   9 +
 drivers/mci/atmel_mci.c                 | 101 ++++--
 drivers/mci/mci-core.c                  |  13 +-
 drivers/net/macb.c                      |  56 +++-
 drivers/serial/atmel.c                  |   7 +
 drivers/spi/atmel_spi.c                 |  29 +-
 drivers/usb/host/Kconfig                |   5 +-
 drivers/usb/host/ehci-atmel.c           |  11 +-
 drivers/usb/host/ohci-at91.c            |  93 +++++-
 drivers/w1/masters/w1-gpio.c            |  53 +++
 include/linux/clk/at91_pmc.h            | 188 +++++++++++
 include/mci.h                           |   1 +
 33 files changed, 4679 insertions(+), 62 deletions(-)
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
 create mode 100644 include/linux/clk/at91_pmc.h

-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
