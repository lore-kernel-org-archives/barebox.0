Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo2.mail-out.ovh.net ([188.165.52.147]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Rh0lj-0000If-GC
 for barebox@lists.infradead.org; Sat, 31 Dec 2011 15:22:48 +0000
Received: from mail190.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id BD459DC36C8
 for <barebox@lists.infradead.org>; Sat, 31 Dec 2011 16:23:39 +0100 (CET)
Date: Sat, 31 Dec 2011 16:16:55 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20111231151655.GB945@game.jcrosoft.org>
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
Subject: AT91: Pull
To: barebox@lists.infradead.org

Hi,

	the following patch serie update nand, lowlevel init sram, gpio and
	Atmel and Calao boards

The following changes since commit 06d9b16d98f9da5ff2b8ddf4bb3dea9e9352abf0:

  atmel_nand: add on_flash_btt option to enable bbt option (2011-12-31 22:17:29 +0800)

are available in the git repository at:
  git://uboot.jcrosoft.org/barebox.git at91

Jean-Christophe PLAGNIOL-VILLARD (12):
      atmel: reference boards and Caloa boards bbt option enabled
      ARM: import memcpy_from/toio and memset_io from linux
      mtd: atmel_nand: optimize read/write buffer functions
      atmel_nand: drop dead code
      at91: add sram memory devices
      at91sam9263ek: add nor partition
      at91sam9x: switch lowlevel init to c
      at91/gpio: simplify resources
      usb-a926x: add led support
      usb-a926x: add dfu support
      at91_udc: update vbus param only if updated
      usb-a926x: update defconfig

 arch/arm/boards/at91sam9260ek/init.c           |    1 +
 arch/arm/boards/at91sam9261ek/init.c           |    1 +
 arch/arm/boards/at91sam9263ek/config.h         |   18 --
 arch/arm/boards/at91sam9263ek/env/config       |    2 +
 arch/arm/boards/at91sam9263ek/init.c           |    1 +
 arch/arm/boards/at91sam9m10g45ek/init.c        |    1 +
 arch/arm/boards/mmccpu/config.h                |   18 --
 arch/arm/boards/pm9261/config.h                |   18 --
 arch/arm/boards/pm9263/config.h                |   18 --
 arch/arm/boards/usb-a926x/env/bin/init_board   |   43 ++++
 arch/arm/boards/usb-a926x/init.c               |   28 +++
 arch/arm/configs/usb_a9260_defconfig           |   20 ++-
 arch/arm/configs/usb_a9263_128mib_defconfig    |   20 ++-
 arch/arm/configs/usb_a9263_defconfig           |   20 ++-
 arch/arm/configs/usb_a9g20_128mib_defconfig    |   20 ++-
 arch/arm/configs/usb_a9g20_defconfig           |   20 ++-
 arch/arm/include/asm/io.h                      |    7 +
 arch/arm/lib/Makefile                          |    1 +
 arch/arm/lib/io.c                              |   50 +++++
 arch/arm/mach-at91/at91rm9200.c                |   12 +-
 arch/arm/mach-at91/at91rm9200_devices.c        |    2 +
 arch/arm/mach-at91/at91sam9260.c               |    9 +-
 arch/arm/mach-at91/at91sam9260_devices.c       |   12 +
 arch/arm/mach-at91/at91sam9261.c               |    9 +-
 arch/arm/mach-at91/at91sam9261_devices.c       |    7 +
 arch/arm/mach-at91/at91sam9263.c               |   15 +-
 arch/arm/mach-at91/at91sam9263_devices.c       |    4 +
 arch/arm/mach-at91/at91sam926x_lowlevel_init.S |  278 ------------------------
 arch/arm/mach-at91/at91sam926x_lowlevel_init.c |  171 +++++++++++++++
 arch/arm/mach-at91/at91sam9g45.c               |   15 +-
 arch/arm/mach-at91/at91sam9g45_devices.c       |    2 +
 arch/arm/mach-at91/gpio.c                      |   13 +-
 arch/arm/mach-at91/include/mach/at91rm9200.h   |    9 +-
 arch/arm/mach-at91/include/mach/at91sam9260.h  |   17 ++-
 arch/arm/mach-at91/include/mach/at91sam9261.h  |   10 +-
 arch/arm/mach-at91/include/mach/at91sam9263.h  |   11 +-
 arch/arm/mach-at91/include/mach/at91sam9g45.h  |   11 +-
 arch/arm/mach-at91/include/mach/gpio.h         |    4 -
 drivers/mtd/nand/atmel_nand.c                  |   46 +----
 drivers/usb/gadget/at91_udc.c                  |   17 ++-
 drivers/usb/gadget/at91_udc.h                  |    1 +
 41 files changed, 497 insertions(+), 485 deletions(-)
 create mode 100644 arch/arm/boards/usb-a926x/env/bin/init_board
 create mode 100644 arch/arm/lib/io.c
 delete mode 100644 arch/arm/mach-at91/at91sam926x_lowlevel_init.S
 create mode 100644 arch/arm/mach-at91/at91sam926x_lowlevel_init.c

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
