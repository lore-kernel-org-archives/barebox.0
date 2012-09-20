Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo5.mail-out.ovh.net ([46.105.52.148]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TEZRW-0003VN-3k
 for barebox@lists.infradead.org; Thu, 20 Sep 2012 05:36:55 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 1480AFF9528
 for <barebox@lists.infradead.org>; Thu, 20 Sep 2012 07:42:42 +0200 (CEST)
Date: Thu, 20 Sep 2012 07:34:18 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120920053418.GB26553@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/6 v3] sandbox fix + bus
To: barebox@lists.infradead.org

HI,

	now register_driver/device are for bus usage ONLY

	v3:
	 - drop check on NULL pointer
	 - add platform_driver/device_register
	 - use bus_for_each

	v2:
	 - on the sandbox we register device before barebox started
	   this is working today as nothing need to be initialized before
	   regisering a device. But as I attached device to bus this will no
	   be the case anymore so fix it

	 - net/tap fix allocated data to be set to 0

The following changes since commit 4f2aa8ffb124a7f40da2a5bc1a2c225554b24bdd:

  Merge branch 'for-next/testing-menu' into next (2012-09-17 12:15:53 +0200)

are available in the git repository at:


  git://git.jcrosoft.org/barebox.git delivery/bus

for you to fetch changes up to dd3578c2b219dd5c11b1d657ddb81471d6a3f9de:

  switch all platform_bus device/driver registering to platform_driver/device_register (2012-09-20 04:00:27 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (6):
      sandbox: check only image option in the second getopt
      sandbox: do not register device before barebox is started
      net/tap: use xzalloc to allocate data
      driver: register bus
      driver: search device and driver based on the bus instead of all
      switch all platform_bus device/driver registering to platform_driver/device_register

 Documentation/porting.txt                      |    2 +-
 arch/arm/boards/nhk8815/setup.c                |    2 +-
 arch/arm/boards/pcm038/pcm970.c                |    2 +-
 arch/arm/mach-imx/clocksource.c                |    2 +-
 arch/arm/mach-imx/gpio.c                       |    2 +-
 arch/arm/mach-imx/iim.c                        |    2 +-
 arch/arm/mach-imx/include/mach/devices-imx51.h |    2 +-
 arch/arm/mach-imx/include/mach/devices-imx53.h |    2 +-
 arch/arm/mach-mxs/ocotp.c                      |    2 +-
 arch/arm/mach-omap/arch-omap.dox               |    2 +-
 arch/nios2/boards/generic/generic.c            |    2 +-
 arch/sandbox/board/Makefile                    |    1 +
 arch/sandbox/board/board.c                     |    2 +-
 arch/sandbox/board/console.c                   |    2 +-
 arch/sandbox/board/devices.c                   |   33 +++++++++++++++++++++++++++++++++
 arch/sandbox/board/hostfile.c                  |   21 ++++++++++++++++++---
 arch/sandbox/mach-sandbox/include/mach/linux.h |    3 +++
 arch/sandbox/os/common.c                       |   12 +-----------
 commands/mem.c                                 |    2 +-
 common/console.c                               |    2 +-
 common/globalvar.c                             |    2 +-
 drivers/ata/disk_bios_drive.c                  |    2 +-
 drivers/ata/intf_platform_ide.c                |    2 +-
 drivers/base/Makefile                          |    1 +
 drivers/base/bus.c                             |   37 +++++++++++++++++++++++++++++++++++++
 drivers/base/driver.c                          |   29 +++++++----------------------
 drivers/base/platform.c                        |   40 ++++++++++++++++++++++++++++++----------
 drivers/base/resource.c                        |    2 +-
 drivers/gpio/gpio-stmpe.c                      |    2 +-
 drivers/i2c/busses/i2c-imx.c                   |    2 +-
 drivers/i2c/busses/i2c-omap.c                  |    2 +-
 drivers/i2c/i2c.c                              |    7 +++++++
 drivers/input/gpio_keys.c                      |    2 +-
 drivers/input/imx_keypad.c                     |    2 +-
 drivers/mci/atmel_mci.c                        |    2 +-
 drivers/mci/imx-esdhc.c                        |    2 +-
 drivers/mci/imx.c                              |    2 +-
 drivers/mci/mci-core.c                         |    4 ++--
 drivers/mci/mxs.c                              |    2 +-
 drivers/mci/omap_hsmmc.c                       |    2 +-
 drivers/mci/pxamci.c                           |    2 +-
 drivers/mci/s3c.c                              |    2 +-
 drivers/misc/jtag.c                            |    2 +-
 drivers/mtd/core.c                             |    2 +-
 drivers/mtd/devices/docg3.c                    |    2 +-
 drivers/mtd/nand/atmel_nand.c                  |    2 +-
 drivers/mtd/nand/nand_imx.c                    |    2 +-
 drivers/mtd/nand/nand_mxs.c                    |    2 +-
 drivers/mtd/nand/nand_omap_gpmc.c              |    2 +-
 drivers/mtd/nand/nand_s3c24xx.c                |    2 +-
 drivers/mtd/nand/nomadik_nand.c                |    2 +-
 drivers/net/altera_tse.c                       |    2 +-
 drivers/net/at91_ether.c                       |    2 +-
 drivers/net/cs8900.c                           |    2 +-
 drivers/net/davinci_emac.c                     |    2 +-
 drivers/net/designware.c                       |    2 +-
 drivers/net/dm9k.c                             |    2 +-
 drivers/net/ep93xx.c                           |    2 +-
 drivers/net/fec_imx.c                          |    2 +-
 drivers/net/fec_mpc5200.c                      |    2 +-
 drivers/net/gianfar.c                          |    2 +-
 drivers/net/ks8851_mll.c                       |    2 +-
 drivers/net/macb.c                             |    2 +-
 drivers/net/miidev.c                           |    4 ++--
 drivers/net/netx_eth.c                         |    2 +-
 drivers/net/phy/phy.c                          |    7 +++++++
 drivers/net/smc91111.c                         |    2 +-
 drivers/net/smc911x.c                          |    2 +-
 drivers/net/tap.c                              |    6 +++---
 drivers/nor/cfi_flash.c                        |    2 +-
 drivers/of/base.c                              |    2 +-
 drivers/pwm/pxa_pwm.c                          |    2 +-
 drivers/serial/arm_dcc.c                       |    4 ++--
 drivers/serial/atmel.c                         |    2 +-
 drivers/serial/linux_console.c                 |    2 +-
 drivers/serial/serial_altera.c                 |    2 +-
 drivers/serial/serial_altera_jtag.c            |    2 +-
 drivers/serial/serial_blackfin.c               |    2 +-
 drivers/serial/serial_imx.c                    |    2 +-
 drivers/serial/serial_mpc5xxx.c                |    2 +-
 drivers/serial/serial_netx.c                   |    2 +-
 drivers/serial/serial_ns16550.c                |    4 ++--
 drivers/serial/serial_pl010.c                  |    2 +-
 drivers/serial/serial_pxa.c                    |    2 +-
 drivers/serial/serial_s3c.c                    |    2 +-
 drivers/serial/stm-serial.c                    |    2 +-
 drivers/spi/altera_spi.c                       |    2 +-
 drivers/spi/atmel_spi.c                        |    2 +-
 drivers/spi/imx_spi.c                          |    2 +-
 drivers/spi/omap3_spi.c                        |    2 +-
 drivers/spi/spi.c                              |    6 ++++++
 drivers/usb/core/usb.c                         |    5 +++++
 drivers/usb/gadget/at91_udc.c                  |    2 +-
 drivers/usb/gadget/fsl_udc.c                   |    2 +-
 drivers/usb/gadget/pxa27x_udc.c                |    2 +-
 drivers/usb/host/ehci-hcd.c                    |    2 +-
 drivers/usb/host/ohci-at91.c                   |    2 +-
 drivers/usb/host/ohci-hcd.c                    |    2 +-
 drivers/video/fb.c                             |    4 ++--
 drivers/video/imx-ipu-fb.c                     |    2 +-
 drivers/video/imx.c                            |    2 +-
 drivers/video/pxa.c                            |    2 +-
 drivers/video/s3c24xx.c                        |    2 +-
 drivers/video/stm.c                            |    2 +-
 drivers/watchdog/im28wd.c                      |    2 +-
 fs/fs.c                                        |    6 ++++++
 include/driver.h                               |   23 +++++++++++++++++++++++
 net/eth.c                                      |    2 +-
 net/net.c                                      |    2 +-
 109 files changed, 286 insertions(+), 147 deletions(-)
 create mode 100644 arch/sandbox/board/devices.c
 create mode 100644 drivers/base/bus.c

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
