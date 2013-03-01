Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.km20343-01.keymachine.de ([84.19.182.79]
 helo=km20343-01.keymachine.de)
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UBMBC-0001uI-Cl
 for barebox@lists.infradead.org; Fri, 01 Mar 2013 09:23:03 +0000
Received: from antimon.pengutronix.de (port-212-202-120-50.static.qsc.de
 [212.202.120.50])
 by km20343-01.keymachine.de (Postfix) with ESMTPA id 713B27D416E
 for <barebox@lists.infradead.org>; Fri,  1 Mar 2013 10:22:59 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Fri,  1 Mar 2013 10:22:46 +0100
Message-Id: <1362129773-4579-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 0/7] Rework current Tegra support
To: barebox@lists.infradead.org

This patchset converts the current ad-hoc implementation within the
Tegra arch into proper barebox drivers. It slightly enhances
functionality, but mostly this is a cleanup to provide a good base
for further work.

Lucas Stach (7):
  tegra: move address map to tegra20-silicon.h
  tegra: remove debug_ll
  tegra: switch to ARMv7 cpu type
  tegra: add blank tegra20 platform init
  tegra: add driver for the clock and reset module
  tegra: add proper timer driver
  tegra: add power management controller driver

 arch/arm/Kconfig                                   |   5 +-
 arch/arm/boards/toshiba-ac100/board.c              |   2 +-
 arch/arm/boards/toshiba-ac100/serial.c             |   2 +-
 arch/arm/mach-tegra/Makefile                       |   6 +-
 arch/arm/mach-tegra/clock.c                        |  56 ----
 arch/arm/mach-tegra/include/mach/clkdev.h          |   7 +
 arch/arm/mach-tegra/include/mach/debug_ll.h        |  42 ---
 arch/arm/mach-tegra/include/mach/iomap.h           | 292 ---------------------
 arch/arm/mach-tegra/include/mach/tegra20-silicon.h | 229 ++++++++++++++++
 arch/arm/mach-tegra/reset.c                        |  39 ---
 arch/arm/mach-tegra/tegra20-car.c                  | 123 +++++++++
 arch/arm/mach-tegra/tegra20-pmc.c                  |  89 +++++++
 arch/arm/mach-tegra/tegra20-timer.c                | 117 +++++++++
 arch/arm/mach-tegra/tegra20.c                      |  38 +++
 14 files changed, 612 insertions(+), 435 deletions(-)
 delete mode 100644 arch/arm/mach-tegra/clock.c
 create mode 100644 arch/arm/mach-tegra/include/mach/clkdev.h
 delete mode 100644 arch/arm/mach-tegra/include/mach/debug_ll.h
 delete mode 100644 arch/arm/mach-tegra/include/mach/iomap.h
 create mode 100644 arch/arm/mach-tegra/include/mach/tegra20-silicon.h
 delete mode 100644 arch/arm/mach-tegra/reset.c
 create mode 100644 arch/arm/mach-tegra/tegra20-car.c
 create mode 100644 arch/arm/mach-tegra/tegra20-pmc.c
 create mode 100644 arch/arm/mach-tegra/tegra20-timer.c
 create mode 100644 arch/arm/mach-tegra/tegra20.c

-- 
1.8.1.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
