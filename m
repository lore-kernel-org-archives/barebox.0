Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp6-g21.free.fr ([2a01:e0c:1:1599::15])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RTPaU-0007dJ-V2
 for barebox@lists.infradead.org; Thu, 24 Nov 2011 03:03:00 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Thu, 24 Nov 2011 04:02:35 +0100
Message-Id: <1322103764-6265-1-git-send-email-robert.jarzmik@free.fr>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/9] Initial PXA support and Mitac MIOA701 board
To: barebox@lists.infradead.org

This patchset aims at providing support for the Mitac Mio A701 board.
The core pxa support was taken from barebox development tree, and
brought up to date with current development tree.

The mioa701 board support is just born, and enables a console over
the USB serial line. A following patchset should add support for
the on-disk chip (docg3) and will open way to full integration on
the board.

Cheers.

--
Robert

Luotao Fu (2):
  fix association of cache handling code for PXA
  fix core version selection

Marc Kleine-Budde (2):
  initial Intel/Marvell PXA support
  add PXA framebuffer support

Robert Jarzmik (5):
  drivers: pxafb: Fix IOMEM API evolution
  drivers: pxafb: add include ifdefery
  arm/mach-pxa: add gpio direction functions
  arm/mach-pxa: add basic devices hooks
  arm/mach-pxa: add mioa701 board

 Makefile                                     |    4 +-
 arch/arm/Kconfig                             |    5 +
 arch/arm/Makefile                            |    3 +
 arch/arm/boards/mioa701/Makefile             |    2 +
 arch/arm/boards/mioa701/board.c              |  251 ++++++++++++
 arch/arm/boards/mioa701/config.h             |  207 ++++++++++
 arch/arm/boards/mioa701/env/bin/init         |   13 +
 arch/arm/boards/mioa701/env/config           |    4 +
 arch/arm/boards/mioa701/lowlevel_init.S      |   46 +++
 arch/arm/boards/mioa701/mioa701.h            |   86 ++++
 arch/arm/cpu/Kconfig                         |    5 +
 arch/arm/mach-pxa/Kconfig                    |   46 +++
 arch/arm/mach-pxa/Makefile                   |    7 +
 arch/arm/mach-pxa/clocksource.c              |   50 +++
 arch/arm/mach-pxa/common.c                   |   42 ++
 arch/arm/mach-pxa/devices.c                  |   32 ++
 arch/arm/mach-pxa/gpio.c                     |   70 ++++
 arch/arm/mach-pxa/include/mach/bitfield.h    |  113 +++++
 arch/arm/mach-pxa/include/mach/clock.h       |   17 +
 arch/arm/mach-pxa/include/mach/devices.h     |    9 +
 arch/arm/mach-pxa/include/mach/gpio.h        |  136 +++++++
 arch/arm/mach-pxa/include/mach/hardware.h    |   31 ++
 arch/arm/mach-pxa/include/mach/mfp-pxa27x.h  |  438 ++++++++++++++++++++
 arch/arm/mach-pxa/include/mach/mfp-pxa2xx.h  |  133 ++++++
 arch/arm/mach-pxa/include/mach/mfp.h         |   21 +
 arch/arm/mach-pxa/include/mach/pxa-regs.h    |   33 ++
 arch/arm/mach-pxa/include/mach/pxa27x-regs.h |    6 +
 arch/arm/mach-pxa/include/mach/pxa2xx-regs.h |  267 ++++++++++++
 arch/arm/mach-pxa/include/mach/pxafb.h       |   80 ++++
 arch/arm/mach-pxa/include/mach/regs-intc.h   |   34 ++
 arch/arm/mach-pxa/include/mach/regs-lcd.h    |  198 +++++++++
 arch/arm/mach-pxa/include/mach/regs-ost.h    |   34 ++
 arch/arm/mach-pxa/include/plat/gpio.h        |   74 ++++
 arch/arm/mach-pxa/include/plat/mfp.h         |  468 +++++++++++++++++++++
 arch/arm/mach-pxa/mfp-pxa2xx.c               |  189 +++++++++
 arch/arm/mach-pxa/speed-pxa27x.c             |   44 ++
 drivers/serial/Kconfig                       |    4 +
 drivers/serial/Makefile                      |    1 +
 drivers/serial/serial_pxa.c                  |  203 ++++++++++
 drivers/video/Kconfig                        |    7 +
 drivers/video/Makefile                       |    1 +
 drivers/video/pxa.c                          |  562 ++++++++++++++++++++++++++
 42 files changed, 3974 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/boards/mioa701/Makefile
 create mode 100644 arch/arm/boards/mioa701/board.c
 create mode 100644 arch/arm/boards/mioa701/config.h
 create mode 100644 arch/arm/boards/mioa701/env/bin/init
 create mode 100644 arch/arm/boards/mioa701/env/config
 create mode 100644 arch/arm/boards/mioa701/lowlevel_init.S
 create mode 100644 arch/arm/boards/mioa701/mioa701.h
 create mode 100644 arch/arm/mach-pxa/Kconfig
 create mode 100644 arch/arm/mach-pxa/Makefile
 create mode 100644 arch/arm/mach-pxa/clocksource.c
 create mode 100644 arch/arm/mach-pxa/common.c
 create mode 100644 arch/arm/mach-pxa/devices.c
 create mode 100644 arch/arm/mach-pxa/gpio.c
 create mode 100644 arch/arm/mach-pxa/include/mach/bitfield.h
 create mode 100644 arch/arm/mach-pxa/include/mach/clock.h
 create mode 100644 arch/arm/mach-pxa/include/mach/devices.h
 create mode 100644 arch/arm/mach-pxa/include/mach/gpio.h
 create mode 100644 arch/arm/mach-pxa/include/mach/hardware.h
 create mode 100644 arch/arm/mach-pxa/include/mach/mfp-pxa27x.h
 create mode 100644 arch/arm/mach-pxa/include/mach/mfp-pxa2xx.h
 create mode 100644 arch/arm/mach-pxa/include/mach/mfp.h
 create mode 100644 arch/arm/mach-pxa/include/mach/pxa-regs.h
 create mode 100644 arch/arm/mach-pxa/include/mach/pxa27x-regs.h
 create mode 100644 arch/arm/mach-pxa/include/mach/pxa2xx-regs.h
 create mode 100644 arch/arm/mach-pxa/include/mach/pxafb.h
 create mode 100644 arch/arm/mach-pxa/include/mach/regs-intc.h
 create mode 100644 arch/arm/mach-pxa/include/mach/regs-lcd.h
 create mode 100644 arch/arm/mach-pxa/include/mach/regs-ost.h
 create mode 100644 arch/arm/mach-pxa/include/plat/gpio.h
 create mode 100644 arch/arm/mach-pxa/include/plat/mfp.h
 create mode 100644 arch/arm/mach-pxa/mfp-pxa2xx.c
 create mode 100644 arch/arm/mach-pxa/speed-pxa27x.c
 create mode 100644 drivers/serial/serial_pxa.c
 create mode 100644 drivers/video/pxa.c

-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
