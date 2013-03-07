Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.km20343-01.keymachine.de ([84.19.182.79]
 helo=km20343-01.keymachine.de)
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UDY8h-00033i-Cp
 for barebox@lists.infradead.org; Thu, 07 Mar 2013 10:33:35 +0000
Received: from antimon.pengutronix.de (port-212-202-120-50.static.qsc.de
 [212.202.120.50])
 by km20343-01.keymachine.de (Postfix) with ESMTPA id 2394D7D416E
 for <barebox@lists.infradead.org>; Thu,  7 Mar 2013 11:33:27 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Thu,  7 Mar 2013 11:33:17 +0100
Message-Id: <1362652402-2985-1-git-send-email-dev@lynxeye.de>
In-Reply-To: <1362129773-4579-1-git-send-email-dev@lynxeye.de>
References: <1362129773-4579-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH v2 0/5] Rework current Tegra support
To: barebox@lists.infradead.org

This patchset converts the current ad-hoc implementation within the
Tegra arch into proper barebox drivers. It slightly enhances
functionality, but mostly this is a cleanup to provide a good base
for further work.

V2 incorporates the review feedback I got so far. Mostly avoiding
renaming iomap.h and leaving debug_ll as is.

Lucas Stach (5):
  tegra: pull in iomap.h from the Linux kernel
  tegra: switch to ARMv7 cpu type
  tegra: add driver for the clock and reset module
  tegra: add proper timer driver
  tegra: add power management controller driver

 arch/arm/Kconfig                          |   4 +-
 arch/arm/mach-tegra/Makefile              |   6 +-
 arch/arm/mach-tegra/clock.c               |  56 -------------
 arch/arm/mach-tegra/include/mach/clkdev.h |   7 ++
 arch/arm/mach-tegra/include/mach/iomap.h  |  64 +++++----------
 arch/arm/mach-tegra/reset.c               |  39 ---------
 arch/arm/mach-tegra/tegra20-car.c         | 126 ++++++++++++++++++++++++++++++
 arch/arm/mach-tegra/tegra20-pmc.c         |  89 +++++++++++++++++++++
 arch/arm/mach-tegra/tegra20-timer.c       | 120 ++++++++++++++++++++++++++++
 arch/arm/mach-tegra/tegra20.c             |  38 +++++++++
 10 files changed, 406 insertions(+), 143 deletions(-)
 delete mode 100644 arch/arm/mach-tegra/clock.c
 create mode 100644 arch/arm/mach-tegra/include/mach/clkdev.h
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
