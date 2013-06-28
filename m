Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x22f.google.com ([2a00:1450:4013:c01::22f])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UsdNC-0003gs-Gg
 for barebox@lists.infradead.org; Fri, 28 Jun 2013 18:26:21 +0000
Received: by mail-ea0-f175.google.com with SMTP id z7so1184680eaf.20
 for <barebox@lists.infradead.org>; Fri, 28 Jun 2013 11:25:56 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Fri, 28 Jun 2013 20:25:41 +0200
Message-Id: <1372443947-12599-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 0/6] ARM: mvebu: DT support, SPI driver, and Dove DT
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

This patch set is a first attempt to bring full DT support to Marvell
MVEBU SoCs. It also introduces a driver for the SPI controller found
on these SoCs with special treatment of additional functions for Dove
and Armada 370/XP SoCs.

First, current soc_init is moved from postcore initcall to core initcall,
to allow clocks to be accessed early. Then DT support is added for both
clocksource drivers found on Orion and Armada 370/XP SoCs, respectively.
Third, a DT-only SPI driver is added to allow access to SPI devices found
on boards comprising Marvell SoCs.

The last two patches extend SolidRun CuBox defconfig with a bunch of
options for future drivers and debug commands and import DTS files from
Linux with an additional node for the timer.

The patch set depends on the MVEBU/Orion clocksource callback patch sent
earlier.

Sebastian Hesselbarth (6):
  ARM: mvebu: move soc_init to core_initcall
  clocksource: orion: add DT support
  clocksource: mvebu: add DT support
  spi: add Marvell MVEBU SoC SPI driver
  ARM: mvebu: add more options to SolidRun CuBox defconfig
  ARM: mvebu: import DT files for Dove SoC and SolidRun CuBox

 arch/arm/configs/solidrun_cubox_defconfig |   71 ++++++
 arch/arm/dts/dove-cubox.dts               |  154 ++++++++++++
 arch/arm/dts/dove.dtsi                    |  285 ++++++++++++++++++++++
 arch/arm/mach-mvebu/armada-370-xp.c       |    2 +-
 arch/arm/mach-mvebu/dove.c                |    2 +-
 arch/arm/mach-mvebu/kirkwood.c            |    2 +-
 drivers/clocksource/mvebu.c               |    9 +-
 drivers/clocksource/orion.c               |    8 +-
 drivers/spi/Kconfig                       |    4 +
 drivers/spi/Makefile                      |    1 +
 drivers/spi/mvebu_spi.c                   |  378 +++++++++++++++++++++++++++++
 11 files changed, 910 insertions(+), 6 deletions(-)
 create mode 100644 arch/arm/dts/dove-cubox.dts
 create mode 100644 arch/arm/dts/dove.dtsi
 create mode 100644 drivers/spi/mvebu_spi.c

---
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: barebox@lists.infradead.org
-- 
1.7.2.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
