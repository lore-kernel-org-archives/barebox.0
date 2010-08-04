Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 63.mail-out.ovh.net ([91.121.185.56])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OgT4W-000685-PF
	for barebox@lists.infradead.org; Wed, 04 Aug 2010 01:47:10 +0000
Date: Wed, 4 Aug 2010 03:42:27 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20100804014227.GA16337@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
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
Subject: [PATCH 0/6] common arm clkdev
To: barebox@lists.infradead.org
Cc: Andrea GALLO <andrea.gallo@stericsson.com>

Hi,

	this patch series add the arm common clkdev support with the support
	of the STm8815 soc which use is for the generic ARM amba serial API

Jean-Christophe PLAGNIOL-VILLARD (6):
      string: add strlcpy support
      arm: add common clkdev
      amba: add pl011
      arm: add Nomadik 8815 SoC support
      nand: driver for Nomadik 8815 SoC
      arm: add nhk8815 board support

 arch/arm/Kconfig                                   |   11 +
 arch/arm/Makefile                                  |    4 +-
 arch/arm/boards/nhk8815/Makefile                   |    1 +
 arch/arm/boards/nhk8815/env/bin/_update            |   36 +++
 arch/arm/boards/nhk8815/env/bin/boot               |   38 +++
 arch/arm/boards/nhk8815/env/bin/init               |   28 +++
 .../boards/nhk8815/env/bin/update_barebox_xmodem   |   19 ++
 arch/arm/boards/nhk8815/env/bin/update_kernel      |    8 +
 arch/arm/boards/nhk8815/env/bin/update_root        |    8 +
 arch/arm/boards/nhk8815/env/config                 |   32 +++
 arch/arm/boards/nhk8815/setup.c                    |  106 +++++++++
 arch/arm/common/Kconfig                            |    2 +
 arch/arm/common/Makefile                           |    5 +
 arch/arm/common/clkdev.c                           |  160 +++++++++++++
 arch/arm/configs/nhk8815_defconfig                 |  232 ++++++++++++++++++
 arch/arm/include/asm/clkdev.h                      |   30 +++
 arch/arm/mach-nomadik/8815.c                       |   76 ++++++
 arch/arm/mach-nomadik/Kconfig                      |   24 ++
 arch/arm/mach-nomadik/Makefile                     |    3 +
 arch/arm/mach-nomadik/clock.c                      |   52 ++++
 arch/arm/mach-nomadik/clock.h                      |   14 ++
 arch/arm/mach-nomadik/include/mach/board.h         |   28 +++
 arch/arm/mach-nomadik/include/mach/clkdev.h        |    7 +
 arch/arm/mach-nomadik/include/mach/fsmc.h          |   28 +++
 arch/arm/mach-nomadik/include/mach/hardware.h      |   91 +++++++
 arch/arm/mach-nomadik/include/mach/mtu.h           |   46 ++++
 arch/arm/mach-nomadik/include/mach/nand.h          |   16 ++
 arch/arm/mach-nomadik/include/mach/timex.h         |    6 +
 arch/arm/mach-nomadik/reset.c                      |   36 +++
 arch/arm/mach-nomadik/timer.c                      |   81 +++++++
 drivers/mtd/nand/Kconfig                           |    5 +
 drivers/mtd/nand/Makefile                          |    1 +
 drivers/mtd/nand/nomadik_nand.c                    |  248 ++++++++++++++++++++
 drivers/serial/Kconfig                             |    9 +
 drivers/serial/Makefile                            |    1 +
 drivers/serial/amba-pl011.c                        |  192 +++++++++++++++
 include/linux/amba/serial.h                        |  164 +++++++++++++
 include/linux/string.h                             |    3 +
 include/stdio.h                                    |    1 +
 lib/string.c                                       |   26 ++
 lib/vsprintf.c                                     |   25 ++
 41 files changed, 1902 insertions(+), 1 deletions(-)
 create mode 100644 arch/arm/boards/nhk8815/Makefile
 create mode 100644 arch/arm/boards/nhk8815/config.h
 create mode 100644 arch/arm/boards/nhk8815/env/bin/_update
 create mode 100644 arch/arm/boards/nhk8815/env/bin/boot
 create mode 100644 arch/arm/boards/nhk8815/env/bin/init
 create mode 100644 arch/arm/boards/nhk8815/env/bin/update_barebox_xmodem
 create mode 100644 arch/arm/boards/nhk8815/env/bin/update_kernel
 create mode 100644 arch/arm/boards/nhk8815/env/bin/update_root
 create mode 100644 arch/arm/boards/nhk8815/env/config
 create mode 100644 arch/arm/boards/nhk8815/setup.c
 create mode 100644 arch/arm/common/Kconfig
 create mode 100644 arch/arm/common/Makefile
 create mode 100644 arch/arm/common/clkdev.c
 create mode 100644 arch/arm/configs/nhk8815_defconfig
 create mode 100644 arch/arm/include/asm/clkdev.h
 create mode 100644 arch/arm/mach-nomadik/8815.c
 create mode 100644 arch/arm/mach-nomadik/Kconfig
 create mode 100644 arch/arm/mach-nomadik/Makefile
 create mode 100644 arch/arm/mach-nomadik/clock.c
 create mode 100644 arch/arm/mach-nomadik/clock.h
 create mode 100644 arch/arm/mach-nomadik/include/mach/board.h
 create mode 100644 arch/arm/mach-nomadik/include/mach/clkdev.h
 create mode 100644 arch/arm/mach-nomadik/include/mach/fsmc.h
 create mode 100644 arch/arm/mach-nomadik/include/mach/hardware.h
 create mode 100644 arch/arm/mach-nomadik/include/mach/mtu.h
 create mode 100644 arch/arm/mach-nomadik/include/mach/nand.h
 create mode 100644 arch/arm/mach-nomadik/include/mach/timex.h
 create mode 100644 arch/arm/mach-nomadik/reset.c
 create mode 100644 arch/arm/mach-nomadik/timer.c
 create mode 100644 drivers/mtd/nand/nomadik_nand.c
 create mode 100644 drivers/serial/amba-pl011.c
 create mode 100644 include/linux/amba/serial.h

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
