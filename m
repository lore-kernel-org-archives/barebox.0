Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VQN6x-0001zQ-H3
 for barebox@lists.infradead.org; Sun, 29 Sep 2013 19:57:00 +0000
Received: from tellur.localdomain (p54831980.dip0.t-ipconnect.de
 [84.131.25.128]) by lynxeye.de (Postfix) with ESMTPA id EE61D26C2001
 for <barebox@lists.infradead.org>; Sun, 29 Sep 2013 21:56:04 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Sun, 29 Sep 2013 21:59:28 +0200
Message-Id: <1380484776-32266-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 0/8] Tegra multi image support
To: barebox@lists.infradead.org

This series adds multi image support to the Tegra arch. We can
now build all TWO supported boards together in one go.

Lucas Stach (8):
  images: correctly linebreak built images output
  tegra: try harder inlining early startup functions
  tegra: start maincomplex execution at correct offset
  tegra: fix PBL build
  tegra: mandate relocatable binary
  tegra: don't force to choose between Tegra arches
  tegra: ac100: delete custom Kconfig
  tegra: switch to multi image

 arch/arm/Kconfig                                  |  4 ++-
 arch/arm/boards/Makefile                          |  1 +
 arch/arm/boards/toradex-colibri-t20-iris/Makefile |  2 ++
 arch/arm/boards/toradex-colibri-t20-iris/entry.c  | 36 +++++++++++++++++++
 arch/arm/boards/toshiba-ac100/Kconfig             |  7 ----
 arch/arm/boards/toshiba-ac100/Makefile            |  2 ++
 arch/arm/boards/toshiba-ac100/entry.c             | 36 +++++++++++++++++++
 arch/arm/configs/tegra20_colibri_iris_defconfig   | 24 -------------
 arch/arm/configs/tegra_v7_defconfig               | 27 ++++++++++++++
 arch/arm/configs/toshiba_ac100_defconfig          | 42 ----------------------
 arch/arm/dts/Makefile                             |  5 +++
 arch/arm/mach-tegra/Kconfig                       | 43 ++++++++---------------
 arch/arm/mach-tegra/Makefile                      |  1 +
 arch/arm/mach-tegra/include/mach/lowlevel.h       | 36 +++++++++++++++----
 arch/arm/mach-tegra/include/mach/tegra20-pmc.h    |  2 ++
 arch/arm/mach-tegra/tegra_avp_init.c              | 34 ++++--------------
 arch/arm/mach-tegra/tegra_maincomplex_init.c      | 12 +++----
 images/Makefile                                   |  3 +-
 images/Makefile.tegra                             | 14 ++++++++
 19 files changed, 185 insertions(+), 146 deletions(-)
 create mode 100644 arch/arm/boards/toradex-colibri-t20-iris/Makefile
 create mode 100644 arch/arm/boards/toradex-colibri-t20-iris/entry.c
 delete mode 100644 arch/arm/boards/toshiba-ac100/Kconfig
 create mode 100644 arch/arm/boards/toshiba-ac100/entry.c
 delete mode 100644 arch/arm/configs/tegra20_colibri_iris_defconfig
 create mode 100644 arch/arm/configs/tegra_v7_defconfig
 delete mode 100644 arch/arm/configs/toshiba_ac100_defconfig
 create mode 100644 images/Makefile.tegra

-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
