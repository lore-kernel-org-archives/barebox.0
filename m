Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x22e.google.com ([2a00:1450:4008:c01::22e])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uu5MG-000633-Rg
 for barebox@lists.infradead.org; Tue, 02 Jul 2013 18:31:21 +0000
Received: by mail-bk0-f46.google.com with SMTP id na10so2495141bkb.19
 for <barebox@lists.infradead.org>; Tue, 02 Jul 2013 11:30:58 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Tue,  2 Jul 2013 20:30:39 +0200
Message-Id: <1372789849-12194-1-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1372443947-12599-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1372443947-12599-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2 00/10] ARM: mvebu: DT support, SPI, GPIO driver, and Dove DT
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

This patch set is a first attempt to bring full DT support to Marvell
MVEBU SoCs. It also introduces a driver for the SPI controller found
on these SoCs with special treatment of additional functions for Dove
and Armada 370/XP SoCs. Also a GPIO driver is added that I have written
during OF patches.

First, current soc_init is moved from postcore initcall to core initcall,
to allow clocks to be accessed early. Clock lookup for timers is converted
to physbase instead of name-based lookup. Then DT support is added for both
clocksource drivers found on Orion and Armada 370/XP SoCs, respectively.

Also, a DT-only SPI driver is added to allow access to SPI devices found
on boards comprising Marvell SoCs. Then a DT-only GPIO driver compatible
with MVEBU SoCs and device tree parsing for gpio-leds is added.

The last two patches extend SolidRun CuBox defconfig with a bunch of
options for future drivers and debug commands and import DTS files from
Linux with an additional node for the timer.

Sebastian Hesselbarth (10):
  ARM: mvebu: move soc_init to core_initcall
  clocksource: orion: lookup clock by physbase
  clocksource: orion: add DT support
  clocksource: mvebu: lookup clock by physbase
  clocksource: mvebu: add DT support
  spi: add Marvell MVEBU SoC SPI driver
  GPIO: add Marvell Orion/MVEBU SoC GPIO driver
  LED: add support for device tree parsing of gpio-leds
  ARM: mvebu: add more options to SolidRun CuBox defconfig
  ARM: mvebu: import DT files for Dove SoC and SolidRun CuBox

 arch/arm/Kconfig                          |    1 +
 arch/arm/configs/solidrun_cubox_defconfig |   72 ++++++
 arch/arm/dts/dove-cubox.dts               |  155 ++++++++++++
 arch/arm/dts/dove.dtsi                    |  285 +++++++++++++++++++++
 arch/arm/mach-mvebu/armada-370-xp.c       |    5 +-
 arch/arm/mach-mvebu/dove.c                |    5 +-
 arch/arm/mach-mvebu/include/mach/gpio.h   |    6 +
 arch/arm/mach-mvebu/kirkwood.c            |    5 +-
 drivers/clocksource/mvebu.c               |    9 +-
 drivers/clocksource/orion.c               |    8 +-
 drivers/gpio/Kconfig                      |    8 +
 drivers/gpio/Makefile                     |    1 +
 drivers/gpio/gpio-orion.c                 |  132 ++++++++++
 drivers/led/Kconfig                       |    4 +
 drivers/led/led-gpio.c                    |   45 ++++
 drivers/spi/Kconfig                       |    4 +
 drivers/spi/Makefile                      |    1 +
 drivers/spi/mvebu_spi.c                   |  382 +++++++++++++++++++++++++++++
 18 files changed, 1119 insertions(+), 9 deletions(-)
 create mode 100644 arch/arm/dts/dove-cubox.dts
 create mode 100644 arch/arm/dts/dove.dtsi
 create mode 100644 arch/arm/mach-mvebu/include/mach/gpio.h
 create mode 100644 drivers/gpio/gpio-orion.c
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
