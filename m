Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kIA1m-0007hN-7Z
 for barebox@lists.infradead.org; Tue, 15 Sep 2020 12:25:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 Sep 2020 14:25:29 +0200
Message-Id: <20200915122539.18744-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 00/10] Compiler warning fixes
To: Barebox List <barebox@lists.infradead.org>

This contains a bunch of annoying compiler warnings.

Sascha Hauer (10):
  ARM: dts: beaglebone: Remove unnecessary tps65217.dtsi
  arm: Add prototypes for functions called from assembly
  openrisc: Add prototypes for functions called from assembly
  ARM: tx28: provide header file with function prototype
  ARM: tegra20-colibri-iris: drop regulators node
  ARM: versatile: Remove unused function
  openrisc: Add missing includes
  openrisc: Make locally used functions static
  scripts: tegra: Add missing include
  ARM: zync: Fix include path

 arch/arm/boards/edb93xx/flash_cfg.c   |  3 ++
 arch/arm/boards/edb93xx/pll_cfg.c     |  3 ++
 arch/arm/boards/edb93xx/sdram_cfg.c   |  3 ++
 arch/arm/boards/karo-tx28/tx28-stk5.c |  2 +
 arch/arm/boards/karo-tx28/tx28.c      |  4 +-
 arch/arm/boards/karo-tx28/tx28.h      |  3 ++
 arch/arm/dts/tegra20-colibri-iris.dts | 36 ++++++++---------
 arch/arm/dts/tps65217.dtsi            | 56 ---------------------------
 arch/arm/mach-ep93xx/header.c         |  2 +
 arch/arm/mach-versatile/core.c        | 13 -------
 arch/openrisc/cpu/cache.c             |  3 +-
 arch/openrisc/cpu/exceptions.c        |  4 ++
 arch/openrisc/lib/board.c             |  3 ++
 arch/openrisc/lib/cpuinfo.c           |  2 +-
 images/Makefile.zynq                  |  2 +-
 scripts/tegra/context.c               |  1 +
 16 files changed, 46 insertions(+), 94 deletions(-)
 create mode 100644 arch/arm/boards/karo-tx28/tx28.h
 delete mode 100644 arch/arm/dts/tps65217.dtsi

-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
