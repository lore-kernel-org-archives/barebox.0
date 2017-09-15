Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dsmA7-0000dg-0X
 for barebox@lists.infradead.org; Fri, 15 Sep 2017 08:39:51 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
 (envelope-from <l.stach@pengutronix.de>) id 1dsm9i-0005Jd-DZ
 for barebox@lists.infradead.org; Fri, 15 Sep 2017 10:39:22 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 15 Sep 2017 10:39:10 +0200
Message-Id: <20170915083922.25134-1-l.stach@pengutronix.de>
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
Subject: [PATCH 00/12] Vexpress rework
To: barebox@lists.infradead.org

Hi all,

this series converts the VExpress architecture to probe from DT and
switches it over to a multi-image build, to make it more alike the
other ARM architectures.

Based atop that are some patches from Michael to make it more useful
when running on the QEMU emulated platform.

Regards,
Lucas

Lucas Stach (8):
  ARM: vexpress: always build relocatable image
  of: populate clock providers before other devices
  clk: versatile: add basic clocks
  clocksource: sp804: silently ignore secondary instaces
  mci: mmci: add DT support
  ARM: vexpress: switch to DT probe and multi-image build
  ARM: vexpress: regenerate config
  docs: add qemu vexpress

Michael Olbrich (4):
  vexpress: use device tree provided by QEMU if available
  vexpress: add bootstate node to the device tree
  of: base: add funtion to copy a device tree node
  ARM: vexpress: add fixup handler for 'virtio,mmio' devices

 Documentation/boards/arm-qemu-vexpress.rst         |  20 +++
 arch/arm/boards/vexpress/Makefile                  |   2 -
 .../arm/boards/vexpress/defaultenv-vexpress/config |  38 ------
 arch/arm/boards/vexpress/init.c                    | 144 +++++----------------
 arch/arm/boards/vexpress/lowlevel.c                |  36 +++++-
 arch/arm/configs/vexpress_ca9_defconfig            |  52 --------
 arch/arm/configs/vexpress_defconfig                |  17 ++-
 arch/arm/dts/Makefile                              |   2 +
 arch/arm/dts/vexpress-v2p-ca15.dts                 |  27 ++++
 arch/arm/dts/vexpress-v2p-ca9.dts                  |  90 +++++++++++++
 arch/arm/mach-vexpress/Kconfig                     |   7 +-
 arch/arm/mach-vexpress/Makefile                    |   1 -
 arch/arm/mach-vexpress/devices.c                   |  83 ------------
 arch/arm/mach-vexpress/include/mach/devices.h      |   9 --
 arch/arm/mach-vexpress/v2m.c                       |  38 ------
 drivers/clk/Makefile                               |   1 +
 drivers/clk/vexpress/Makefile                      |   1 +
 drivers/clk/vexpress/clk-sp810.c                   | 137 ++++++++++++++++++++
 drivers/clk/vexpress/clk-vexpress-osc.c            |  42 ++++++
 drivers/clocksource/amba-sp804.c                   |   4 +-
 drivers/mci/mmci.c                                 |  39 +++++-
 drivers/of/base.c                                  |  18 ++-
 images/Makefile                                    |   1 +
 images/Makefile.vexpress                           |  11 ++
 include/of.h                                       |   8 ++
 25 files changed, 481 insertions(+), 347 deletions(-)
 create mode 100644 Documentation/boards/arm-qemu-vexpress.rst
 delete mode 100644 arch/arm/boards/vexpress/defaultenv-vexpress/config
 delete mode 100644 arch/arm/configs/vexpress_ca9_defconfig
 create mode 100644 arch/arm/dts/vexpress-v2p-ca15.dts
 create mode 100644 arch/arm/dts/vexpress-v2p-ca9.dts
 delete mode 100644 arch/arm/mach-vexpress/devices.c
 create mode 100644 drivers/clk/vexpress/Makefile
 create mode 100644 drivers/clk/vexpress/clk-sp810.c
 create mode 100644 drivers/clk/vexpress/clk-vexpress-osc.c
 create mode 100644 images/Makefile.vexpress

-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
