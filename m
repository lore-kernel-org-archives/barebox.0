Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo5.mail-out.ovh.net ([178.32.119.138]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TGV7L-0006IM-EU
 for barebox@lists.infradead.org; Tue, 25 Sep 2012 13:24:05 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id C4C47FFAEA0
 for <barebox@lists.infradead.org>; Tue, 25 Sep 2012 15:30:01 +0200 (CEST)
Date: Tue, 25 Sep 2012 15:21:32 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120925132132.GM26553@game.jcrosoft.org>
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
Subject: [PATCH 0/3] final bus cleanup
To: barebox@lists.infradead.org

HI,

The following changes since commit 05b9f24e3ea4071f76ffc4157526946a1c2b1b96:

  Merge branch 'for-next/sandbox' into next (2012-09-25 10:20:03 +0200)

are available in the git repository at:


  git://git.jcrosoft.org/barebox.git tags/bus

for you to fetch changes up to c69f204ed9872d0d05e13ca34d1893181e787374:

  devinfo: display device bus name (2012-09-25 20:56:14 +0800)

----------------------------------------------------------------
Bus finall cleanup

this second patch serie will finally switch all platform_bus
device/driver registering to platform_driver/device_register

now register_driver and register_device are for bus only usage.
if no bus specify with register_device this will allow to register a
pure device such as net or global.

Bus should also register their own device and then attached their
child but this could be done in a second step

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (3):
      fb: move add param to bus probe
      switch all platform_bus device/driver registering to platform_driver/device_register
      devinfo: display device bus name

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
 arch/arm/mach-omap/gpio.c                      |    3 +--
 arch/nios2/boards/generic/generic.c            |    2 +-
 arch/sandbox/board/board.c                     |    4 ++--
 arch/sandbox/board/devices.c                   |    2 +-
 arch/sandbox/board/hostfile.c                  |    2 +-
 commands/mem.c                                 |    2 +-
 common/console.c                               |    2 +-
 drivers/ata/disk_bios_drive.c                  |    2 +-
 drivers/ata/intf_platform_ide.c                |    2 +-
 drivers/base/driver.c                          |   31 ++++++++++---------------------
 drivers/base/platform.c                        |   26 ++++++++++++++++++++++++++
 drivers/base/resource.c                        |    2 +-
 drivers/gpio/gpio-stmpe.c                      |    2 +-
 drivers/i2c/busses/i2c-imx.c                   |    2 +-
 drivers/i2c/busses/i2c-omap.c                  |    2 +-
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
 drivers/net/fec_imx.c                          |    4 ++--
 drivers/net/fec_mpc5200.c                      |    2 +-
 drivers/net/gianfar.c                          |    2 +-
 drivers/net/ks8851_mll.c                       |    2 +-
 drivers/net/macb.c                             |    2 +-
 drivers/net/netx_eth.c                         |    2 +-
 drivers/net/smc91111.c                         |    2 +-
 drivers/net/smc911x.c                          |    2 +-
 drivers/net/tap.c                              |    2 +-
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
 drivers/usb/gadget/at91_udc.c                  |    2 +-
 drivers/usb/gadget/fsl_udc.c                   |    2 +-
 drivers/usb/gadget/pxa27x_udc.c                |    2 +-
 drivers/usb/host/ehci-hcd.c                    |    2 +-
 drivers/usb/host/ohci-at91.c                   |    2 +-
 drivers/usb/host/ohci-hcd.c                    |    2 +-
 drivers/video/fb.c                             |   23 ++++++++++++-----------
 drivers/video/imx-ipu-fb.c                     |    2 +-
 drivers/video/imx.c                            |    2 +-
 drivers/video/pxa.c                            |    2 +-
 drivers/video/s3c24xx.c                        |    2 +-
 drivers/video/sdl.c                            |    2 +-
 drivers/video/stm.c                            |    2 +-
 drivers/watchdog/im28wd.c                      |    2 +-
 include/driver.h                               |    3 +++
 net/eth.c                                      |    2 +-
 97 files changed, 149 insertions(+), 131 deletions(-)

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
