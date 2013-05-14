Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UcNm7-0002G4-9K
 for barebox@lists.infradead.org; Tue, 14 May 2013 22:32:55 +0000
From: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Date: Wed, 15 May 2013 00:32:13 +0200
Message-Id: <1368570745-23348-1-git-send-email-thomas.petazzoni@free-electrons.com>
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
Subject: [PATCH 00/12] Support for Marvell Kirkwood and Dove SoCs
To: barebox@lists.infradead.org
Cc: Lior Amsalem <alior@marvell.com>, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

Hello,

This patch set builds on top of Sebastian Hesselbarth work on the
Marvell Dove support, and adds basic Marvell Kirkwood support, as well
as a number of improvements to the kwbimage tool to have a better
support for v0 images used on Kirkwood and Dove.

In particular, the patches on kwbimage allow a more flexible ordering
of the options in the kwbimage.cfg file, and allows for v0 images to
override the destination address and execution address from the
command line, without having any related settings defined in the
kwbimage.cfg. This way, Barebox can pass the appropriate -d and -e
options when building the kwb images.

The patches apply on top of the current 'next' branch.

Best regards,

Thomas

Sebastian Hesselbarth (3):
  arm: mach-mvebu: rename Armada 370/XP core code
  arm: mvebu: initial support for Marvell Dove SoCs
  arm: mvebu: add basic support for SolidRun CuBox

Thomas Petazzoni (9):
  scripts/kwbimage: add a new function image_count_options()
  scripts/kwbimage: add a few sanity checks
  scripts/kwbimage: make the v0 image creation more flexible
  scripts/kwbimage: simplify the v1 image creation
  scripts/kwbimage: make image_boot_mode_id() return -1 on failure
  scripts/kwbimage: add support for NAND ECC and page size header
    fields
  arm: mvebu: add Feroceon CPU type
  arm: mvebu: initial support for Marvell Kirkwood SoCs
  arm: mvebu: add basic support for Globalscale Guruplug board

 arch/arm/Kconfig                                   |    1 -
 arch/arm/Makefile                                  |    2 +
 arch/arm/boards/globalscale-guruplug/Makefile      |    2 +
 arch/arm/boards/globalscale-guruplug/config.h      |    4 +
 .../globalscale-guruplug/globalscale-guruplug.c    |   26 ++
 arch/arm/boards/globalscale-guruplug/kwbimage.cfg  |   27 ++
 arch/arm/boards/globalscale-guruplug/lowlevel.c    |   26 ++
 arch/arm/boards/solidrun-cubox/Makefile            |    2 +
 arch/arm/boards/solidrun-cubox/config.h            |    4 +
 arch/arm/boards/solidrun-cubox/kwbimage.cfg        |   37 +++
 arch/arm/boards/solidrun-cubox/lowlevel.c          |   26 ++
 arch/arm/boards/solidrun-cubox/solidrun-cubox.c    |   28 ++
 arch/arm/configs/globalscale_guruplug_defconfig    |    6 +
 arch/arm/configs/solidrun_cubox_defconfig          |    9 +
 arch/arm/cpu/Kconfig                               |    8 +
 arch/arm/mach-mvebu/Kconfig                        |   40 +++
 arch/arm/mach-mvebu/Makefile                       |    5 +-
 arch/arm/mach-mvebu/{core.c => armada-370-xp.c}    |    0
 arch/arm/mach-mvebu/dove.c                         |  161 +++++++++++
 arch/arm/mach-mvebu/include/mach/dove-regs.h       |   59 +++++
 arch/arm/mach-mvebu/include/mach/dove.h            |   23 ++
 arch/arm/mach-mvebu/include/mach/kirkwood-regs.h   |   37 +++
 arch/arm/mach-mvebu/include/mach/kirkwood.h        |   22 ++
 arch/arm/mach-mvebu/kirkwood.c                     |  111 ++++++++
 drivers/clocksource/Kconfig                        |    4 +
 drivers/clocksource/Makefile                       |    1 +
 drivers/clocksource/orion.c                        |   76 ++++++
 scripts/kwbimage.c                                 |  279 ++++++++++++--------
 28 files changed, 908 insertions(+), 118 deletions(-)
 create mode 100644 arch/arm/boards/globalscale-guruplug/Makefile
 create mode 100644 arch/arm/boards/globalscale-guruplug/config.h
 create mode 100644 arch/arm/boards/globalscale-guruplug/globalscale-guruplug.c
 create mode 100644 arch/arm/boards/globalscale-guruplug/kwbimage.cfg
 create mode 100644 arch/arm/boards/globalscale-guruplug/lowlevel.c
 create mode 100644 arch/arm/boards/solidrun-cubox/Makefile
 create mode 100644 arch/arm/boards/solidrun-cubox/config.h
 create mode 100644 arch/arm/boards/solidrun-cubox/kwbimage.cfg
 create mode 100644 arch/arm/boards/solidrun-cubox/lowlevel.c
 create mode 100644 arch/arm/boards/solidrun-cubox/solidrun-cubox.c
 create mode 100644 arch/arm/configs/globalscale_guruplug_defconfig
 create mode 100644 arch/arm/configs/solidrun_cubox_defconfig
 rename arch/arm/mach-mvebu/{core.c => armada-370-xp.c} (100%)
 create mode 100644 arch/arm/mach-mvebu/dove.c
 create mode 100644 arch/arm/mach-mvebu/include/mach/dove-regs.h
 create mode 100644 arch/arm/mach-mvebu/include/mach/dove.h
 create mode 100644 arch/arm/mach-mvebu/include/mach/kirkwood-regs.h
 create mode 100644 arch/arm/mach-mvebu/include/mach/kirkwood.h
 create mode 100644 arch/arm/mach-mvebu/kirkwood.c
 create mode 100644 drivers/clocksource/orion.c

-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
