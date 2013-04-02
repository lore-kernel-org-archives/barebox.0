Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.km20343-01.keymachine.de ([84.19.182.79]
 helo=km20343-01.keymachine.de)
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UMuZr-0006wB-TS
 for barebox@lists.infradead.org; Tue, 02 Apr 2013 06:20:18 +0000
From: Lucas Stach <dev@lynxeye.de>
Date: Tue,  2 Apr 2013 08:19:02 +0200
Message-Id: <1364883552-6563-1-git-send-email-dev@lynxeye.de>
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
Subject: 
To: barebox@lists.infradead.org

From dc699f96a6f4305793f737c18ded63fea926b675 Mon Sep 17 00:00:00 2001
From: Lucas Stach <dev@lynxeye.de>
Date: Tue, 2 Apr 2013 07:50:22 +0200
Subject: [PATCH v3 00/10] Rework current Tegra support

Round 3 of the Tegra rework. A bit beefier this time, as I folded in
some real advancements. Most notable a working GPIO driver and
the 1st stage loading support. Barebox is now aware of the CPU it's
running on and boots the Tegra main CPU cluster if needed. Don't get
too exited yet, you most likely won't see anything when running first
stage, as the pinmux stays in reset state and there is no driver to
switch it to the state needed for your board. 2nd stage loading
should work as before from the same binary.

I've also converted Tegra to builtin DTB, as I would like to
follow the kernel and go a DT only way. Let's see how this works out,
but as U-Boot isn't far away from defining Tegra boards only through
the DT I'm almost sure we can make it work in barebox.

A note for the review: I won't split patches just for the sake of
it. I'm actively working on this code as long as it isn't pulled into
the basebox repo and it's already hard enough to keep track of which
hunks of code should go into the individual patches.

Antony: I've converted the serial and ramsize detection to the
standard used in U-Boot and Linux. Please test if this works for
your board. If not it's not really a barebox error, as your ODMdata
is most likely wrong in this case, but please let me know anyway as
I would like to avoid breaking existing boards.

Lucas Stach (10):
  tegra: pull in iomap.h from the Linux kernel
  tegra: define TEGRA20 arch type
  tegra: switch to DT only
  tegra: add driver for the clock and reset module
  tegra: add T20 timer driver
  tegra: add T20 power management controller driver
  tegra: add common lowlevel startup
  tegra: add generic debug UART support
  tegra: add generic meminit
  tegra: add GPIO controller driver

 arch/arm/Kconfig                               |  10 +-
 arch/arm/boards/toshiba-ac100/Makefile         |   2 -
 arch/arm/boards/toshiba-ac100/board.c          |   8 -
 arch/arm/boards/toshiba-ac100/lowlevel.c       |  10 --
 arch/arm/boards/toshiba-ac100/serial.c         |  39 -----
 arch/arm/configs/toshiba_ac100_defconfig       |   9 +-
 arch/arm/dts/tegra20-paz00.dts                 |  12 ++
 arch/arm/dts/tegra20.dtsi                      |  41 +++++
 arch/arm/mach-tegra/Kconfig                    |  20 ++-
 arch/arm/mach-tegra/Makefile                   |   8 +-
 arch/arm/mach-tegra/clock.c                    |  56 ------
 arch/arm/mach-tegra/include/mach/clkdev.h      |   7 +
 arch/arm/mach-tegra/include/mach/gpio.h        |   1 +
 arch/arm/mach-tegra/include/mach/iomap.h       |  65 +++----
 arch/arm/mach-tegra/include/mach/lowlevel.h    | 147 ++++++++++++++++
 arch/arm/mach-tegra/include/mach/tegra20-car.h | 179 +++++++++++++++++++
 arch/arm/mach-tegra/include/mach/tegra20-pmc.h |  67 ++++++++
 arch/arm/mach-tegra/reset.c                    |  39 -----
 arch/arm/mach-tegra/tegra20-car.c              | 121 +++++++++++++
 arch/arm/mach-tegra/tegra20-pmc.c              |  68 ++++++++
 arch/arm/mach-tegra/tegra20-timer.c            | 120 +++++++++++++
 arch/arm/mach-tegra/tegra20.c                  |  50 ++++++
 arch/arm/mach-tegra/tegra_avp_init.c           | 228 +++++++++++++++++++++++++
 arch/arm/mach-tegra/tegra_maincomplex_init.c   |  46 +++++
 drivers/gpio/Kconfig                           |   7 +
 drivers/gpio/Makefile                          |   1 +
 drivers/gpio/gpio-tegra.c                      | 226 ++++++++++++++++++++++++
 27 files changed, 1380 insertions(+), 207 deletions(-)
 delete mode 100644 arch/arm/boards/toshiba-ac100/lowlevel.c
 delete mode 100644 arch/arm/boards/toshiba-ac100/serial.c
 create mode 100644 arch/arm/dts/tegra20-paz00.dts
 create mode 100644 arch/arm/dts/tegra20.dtsi
 delete mode 100644 arch/arm/mach-tegra/clock.c
 create mode 100644 arch/arm/mach-tegra/include/mach/clkdev.h
 create mode 100644 arch/arm/mach-tegra/include/mach/gpio.h
 create mode 100644 arch/arm/mach-tegra/include/mach/lowlevel.h
 create mode 100644 arch/arm/mach-tegra/include/mach/tegra20-car.h
 create mode 100644 arch/arm/mach-tegra/include/mach/tegra20-pmc.h
 delete mode 100644 arch/arm/mach-tegra/reset.c
 create mode 100644 arch/arm/mach-tegra/tegra20-car.c
 create mode 100644 arch/arm/mach-tegra/tegra20-pmc.c
 create mode 100644 arch/arm/mach-tegra/tegra20-timer.c
 create mode 100644 arch/arm/mach-tegra/tegra20.c
 create mode 100644 arch/arm/mach-tegra/tegra_avp_init.c
 create mode 100644 arch/arm/mach-tegra/tegra_maincomplex_init.c
 create mode 100644 drivers/gpio/gpio-tegra.c

-- 
1.8.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
