Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-f48.google.com ([74.125.83.48])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UbW1y-0002tP-98
 for barebox@lists.infradead.org; Sun, 12 May 2013 13:09:46 +0000
Received: by mail-ee0-f48.google.com with SMTP id c4so2668346eek.35
 for <barebox@lists.infradead.org>; Sun, 12 May 2013 06:09:14 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Sun, 12 May 2013 15:09:01 +0200
Message-Id: <1368364146-6024-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 0/5] Initial support for Marvell Dove SoCs
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

With latest patches from Thomas Petazzoni, barebox now has support for
Marvell MVEBU SoCs. Besides Armada 370/XP there is also Dove and famous
Kirkwood within this SoC family. Therefore, this patch set adds initial
support for the Marvell Dove SoC. 

First, recently introduced tools for Marvell MVEBU SoCs are updated to
also reference Dove. The kwboot tools is also extended, as Dove requires
a different procedure for UART bootmode. (Patches 1-2)

Then initial SoC code and clocksource is added, as the timer found on
Dove and Kirkwood is slightly different from Armada 370/XP. It is named
after the Marvell MVEBU SoC subset Orion which Dove and Kirkwood belong
to. (Patch 3)

As first board using Dove, the SolidRun CuBox is added. The whole patch
set also have been tested on that board. (Patch 4)

As setup for the different Marvell MVEBU SoCs depends on the SoC and
to avoid irritation about source file names, existing setup source for
Armada 370/XP is renamed to reflect the purpose of the source file.
(Patch 5)

Note: For Dove and Kirkwood, Linux expects the internal registers to be
remapped to different addresses for some ancient reasons. Linux for Armada
370/XP does not have this requirement. To avoid messing with lowlevel
routines (e.g. debug_ll.h), I do not remap the internal registers in
barebox.

I rather suggest to have some mach hooks at start_linux to perform such
tweaks required to boot linux.

Sebastian Hesselbarth (5):
  scripts: kwbimage: add references to Marvell Dove SoC
  scripts: kwboot: add support for Marvell Dove
  arm: initial support for Marvell Dove SoCs
  arm: add basic support for SolidRun CuBox
  arm: mach-mvebu: rename Armada 370/XP core code

 arch/arm/Kconfig                                |    1 -
 arch/arm/Makefile                               |    1 +
 arch/arm/boards/solidrun-cubox/Makefile         |    2 +
 arch/arm/boards/solidrun-cubox/config.h         |    4 +
 arch/arm/boards/solidrun-cubox/kwbimage.cfg     |   39 ++++++
 arch/arm/boards/solidrun-cubox/lowlevel.c       |   26 ++++
 arch/arm/boards/solidrun-cubox/solidrun-cubox.c |   28 ++++
 arch/arm/configs/solidrun_cubox_defconfig       |    9 ++
 arch/arm/mach-mvebu/Kconfig                     |   21 +++
 arch/arm/mach-mvebu/Makefile                    |    4 +-
 arch/arm/mach-mvebu/armada-370-xp.c             |  142 ++++++++++++++++++++
 arch/arm/mach-mvebu/core.c                      |  142 --------------------
 arch/arm/mach-mvebu/dove.c                      |  161 +++++++++++++++++++++++
 arch/arm/mach-mvebu/include/mach/dove-regs.h    |   59 +++++++++
 arch/arm/mach-mvebu/include/mach/dove.h         |   23 ++++
 drivers/clocksource/Kconfig                     |    4 +
 drivers/clocksource/Makefile                    |    1 +
 drivers/clocksource/orion.c                     |   76 +++++++++++
 scripts/kwbimage.c                              |    9 +-
 scripts/kwboot.c                                |   31 +++--
 20 files changed, 626 insertions(+), 157 deletions(-)
 create mode 100644 arch/arm/boards/solidrun-cubox/Makefile
 create mode 100644 arch/arm/boards/solidrun-cubox/config.h
 create mode 100644 arch/arm/boards/solidrun-cubox/kwbimage.cfg
 create mode 100644 arch/arm/boards/solidrun-cubox/lowlevel.c
 create mode 100644 arch/arm/boards/solidrun-cubox/solidrun-cubox.c
 create mode 100644 arch/arm/configs/solidrun_cubox_defconfig
 create mode 100644 arch/arm/mach-mvebu/armada-370-xp.c
 delete mode 100644 arch/arm/mach-mvebu/core.c
 create mode 100644 arch/arm/mach-mvebu/dove.c
 create mode 100644 arch/arm/mach-mvebu/include/mach/dove-regs.h
 create mode 100644 arch/arm/mach-mvebu/include/mach/dove.h
 create mode 100644 drivers/clocksource/orion.c
---
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Cc: barebox@lists.infradead.org
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
