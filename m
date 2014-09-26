Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XXQnZ-0004hB-PC
 for barebox@lists.infradead.org; Fri, 26 Sep 2014 08:22:43 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1XXQnC-0007Nc-TI
 for barebox@lists.infradead.org; Fri, 26 Sep 2014 10:22:18 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.84)
 (envelope-from <sha@pengutronix.de>) id 1XXQnC-00083v-MN
 for barebox@lists.infradead.org; Fri, 26 Sep 2014 10:22:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 26 Sep 2014 10:22:06 +0200
Message-Id: <1411719735-30949-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: MUSB support
To: barebox@lists.infradead.org

This series adds MUSB support for AM33xx to barebox. The driver is
based on the Linux driver and stripped down for barebox. This series
is based on Rolf Evers Fischers work who unfortunately was not aware
of Christoph Fritz work at that time. I used Rolfs driver to continue
the work because his version already has device tree support.

I decided to first add the necessary files of the MUSB driver
without any changes and in a second patch add the barebox specific
changes. This way we'll find the barebox changes in the repository.
Instead of ifdeffing half of the driver away I removed the parts we
don't need for barebox which keeps the driver in a readable state.
Parts removed are: DMA, Host negotiation protocol and power management
stuff.

The driver has been tested in both host and device mode on the Beaglebone
black and a custom board. On the Beaglebone the OTG port only works
in device mode, I don't know why yet. The host port properly works
in host mode though.

The driver supports a poor mans otg mode. For device trees which specify
dr_mode = "otg" the driver registers a otg device which has a 'mode'
parameter which can be used to select host/peripheral mode during runtime.
For example otg0.mode="host" specifies host mode. The same behaviour
is implemented in the i.MX chipidea driver, the code for this should
be merged at some point.

Sascha


The following changes since commit b1536a3298e25dfdd0136c0fc8d68d2a12cff63c:

  USB: gadget: dfu: Add max_speed to dfu_driver (2014-09-25 16:25:46 +0200)

are available in the git repository at:

  git://git.pengutronix.de/git/barebox.git 

for you to fetch changes up to f2368af41f5283a1b804c2cb2f62da56630c20f9:

  ARM: am335x_defconfig: Enable USB support (2014-09-26 10:20:28 +0200)

----------------------------------------------------------------
Rolf Evers-Fischer (1):
      ARM: AM33xx: Enable USB and USB phy clocks

Sascha Hauer (8):
      USB: add usb phy header file
      USB: gadget: put poller into core
      USB: gadget: allow multiple udc drivers
      USB: Add MUSB driver from Linux
      USB: MUSB: Add barebox specific changes
      ARM: dts: Update am335x-bone-common.dtsi
      Documentation: USB: Add description for OTG device
      ARM: am335x_defconfig: Enable USB support

 Documentation/user/usb.rst                       |   21 +
 arch/arm/configs/am335x_defconfig                |   13 +
 arch/arm/dts/am335x-bone-common.dtsi             |   38 +-
 arch/arm/mach-omap/am33xx_clock.c                |   15 +-
 arch/arm/mach-omap/am33xx_generic.c              |    2 +
 arch/arm/mach-omap/include/mach/am33xx-clock.h   |    2 +
 arch/arm/mach-omap/include/mach/am33xx-generic.h |    1 +
 drivers/usb/Kconfig                              |    2 +
 drivers/usb/Makefile                             |    1 +
 drivers/usb/core/of.c                            |    1 +
 drivers/usb/gadget/Kconfig                       |   12 +-
 drivers/usb/gadget/at91_udc.c                    |   23 +-
 drivers/usb/gadget/fsl_udc.c                     |   44 +-
 drivers/usb/gadget/pxa27x_udc.c                  |   27 +-
 drivers/usb/gadget/udc-core.c                    |   34 +
 drivers/usb/imx/chipidea-imx.c                   |    1 +
 drivers/usb/musb/Kconfig                         |   29 +
 drivers/usb/musb/Makefile                        |   11 +
 drivers/usb/musb/am35x-phy-control.h             |   21 +
 drivers/usb/musb/musb_am335x.c                   |   29 +
 drivers/usb/musb/musb_barebox.c                  |  146 ++
 drivers/usb/musb/musb_core.c                     | 1156 ++++++++++++++
 drivers/usb/musb/musb_core.h                     |  585 ++++++++
 drivers/usb/musb/musb_dma.h                      |  194 +++
 drivers/usb/musb/musb_dsps.c                     |  464 ++++++
 drivers/usb/musb/musb_gadget.c                   | 1308 ++++++++++++++++
 drivers/usb/musb/musb_gadget.h                   |  147 ++
 drivers/usb/musb/musb_gadget_ep0.c               | 1079 +++++++++++++
 drivers/usb/musb/musb_host.c                     | 1749 ++++++++++++++++++++++
 drivers/usb/musb/musb_host.h                     |  258 ++++
 drivers/usb/musb/musb_io.h                       |  122 ++
 drivers/usb/musb/musb_regs.h                     |  652 ++++++++
 drivers/usb/musb/phy-am335x-control.c            |  168 +++
 drivers/usb/musb/phy-am335x.c                    |   86 ++
 drivers/usb/musb/phy-am335x.h                    |    6 +
 include/linux/barebox-wrapper.h                  |    7 +
 include/usb/gadget.h                             |    1 +
 include/usb/musb.h                               |  152 ++
 include/usb/phy.h                                |  220 +++
 include/usb/usb.h                                |    9 -
 40 files changed, 8723 insertions(+), 113 deletions(-)
 create mode 100644 drivers/usb/musb/Kconfig
 create mode 100644 drivers/usb/musb/Makefile
 create mode 100644 drivers/usb/musb/am35x-phy-control.h
 create mode 100644 drivers/usb/musb/musb_am335x.c
 create mode 100644 drivers/usb/musb/musb_barebox.c
 create mode 100644 drivers/usb/musb/musb_core.c
 create mode 100644 drivers/usb/musb/musb_core.h
 create mode 100644 drivers/usb/musb/musb_dma.h
 create mode 100644 drivers/usb/musb/musb_dsps.c
 create mode 100644 drivers/usb/musb/musb_gadget.c
 create mode 100644 drivers/usb/musb/musb_gadget.h
 create mode 100644 drivers/usb/musb/musb_gadget_ep0.c
 create mode 100644 drivers/usb/musb/musb_host.c
 create mode 100644 drivers/usb/musb/musb_host.h
 create mode 100644 drivers/usb/musb/musb_io.h
 create mode 100644 drivers/usb/musb/musb_regs.h
 create mode 100644 drivers/usb/musb/phy-am335x-control.c
 create mode 100644 drivers/usb/musb/phy-am335x.c
 create mode 100644 drivers/usb/musb/phy-am335x.h
 create mode 100644 include/usb/musb.h
 create mode 100644 include/usb/phy.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
