Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x234.google.com ([2a00:1450:400c:c00::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WqIi0-0002AW-RQ
 for barebox@lists.infradead.org; Fri, 30 May 2014 09:02:42 +0000
Received: by mail-wg0-f52.google.com with SMTP id l18so1660569wgh.35
 for <barebox@lists.infradead.org>; Fri, 30 May 2014 02:02:18 -0700 (PDT)
From: Holger Schurig <holgerschurig@gmail.com>
Date: Fri, 30 May 2014 11:07:26 +0200
Message-Id: <1401440856-6145-1-git-send-email-holgerschurig@gmail.com>
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
Subject: [PATCH 00/10] miscelleanous beautification patches
To: barebox@lists.infradead.org

The following patches mostly change the output of various commands.

Holger Schurig (10):
  drvlist: factor the driver list out of 'devinfo'
  devinfo: reduce indentation
  devinfo: make the output of "devinfo DEVICE" nicer
  parameters: only show possible enumerations if there are any
  net: show enetaddr in lowercase
  meminfo: purely cosmetical changes
  misc: upper-case some abbreviations
  bootm: beautify output
  beautify PHY driver names
  device drivers: harmonize underscore in driver names

 arch/arm/Kconfig                                |    4 +-
 arch/arm/boards/at91rm9200ek/init.c             |    8 ++--
 arch/arm/boards/at91sam9261ek/init.c            |    4 +-
 arch/arm/boards/at91sam9m10g45ek/init.c         |    2 +-
 arch/arm/boards/nhk8815/setup.c                 |    2 +-
 arch/arm/boards/phytec-phycore-imx27/pcm970.c   |    2 +-
 arch/arm/boards/tny-a926x/init.c                |    4 +-
 arch/arm/boards/usb-a926x/init.c                |    4 +-
 arch/arm/cpu/cpu.c                              |    2 +-
 arch/arm/lib/armlinux.c                         |    2 +-
 arch/arm/lib/bootm.c                            |    4 +-
 arch/arm/mach-imx/iim.c                         |    2 +-
 arch/arm/mach-imx/imx25.c                       |    2 +-
 arch/arm/mach-imx/imx27.c                       |    2 +-
 arch/arm/mach-imx/imx31.c                       |    2 +-
 arch/arm/mach-imx/imx35.c                       |    2 +-
 arch/arm/mach-imx/imx51.c                       |    2 +-
 arch/arm/mach-imx/imx53.c                       |    2 +-
 arch/arm/mach-imx/ocotp.c                       |    2 +-
 arch/mips/mach-ar231x/ar231x_reset.c            |    2 +-
 arch/nios2/boards/generic/generic.c             |    2 +-
 arch/x86/boards/x86_generic/intf_platform_ide.c |    4 +-
 commands/Kconfig                                |   44 +++++++++++-------
 commands/Makefile                               |    1 +
 commands/bootm.c                                |   15 ++++---
 commands/devinfo.c                              |   55 +++++++++++------------
 commands/drvinfo.c                              |   47 +++++++++++++++++++
 common/bootm.c                                  |    8 ++--
 common/dlmalloc.c                               |    8 ++--
 common/filetype.c                               |   20 ++++-----
 common/tlsf_malloc.c                            |    2 +-
 drivers/ata/intf_platform_ide.c                 |    2 +-
 drivers/clk/clk-ar933x.c                        |    2 +-
 drivers/clocksource/arm_smp_twd.c               |    2 +-
 drivers/clocksource/nomadik.c                   |    2 +-
 drivers/gpio/gpio-davinci.c                     |    2 +-
 drivers/gpio/gpio-pl061.c                       |    2 +-
 drivers/input/gpio_keys.c                       |    2 +-
 drivers/input/twl6030_pwrbtn.c                  |    2 +-
 drivers/mci/atmel_mci.c                         |    2 +-
 drivers/mci/dw_mmc.c                            |    2 +-
 drivers/mci/mci-bcm2835.c                       |    2 +-
 drivers/mci/mci_spi.c                           |    2 +-
 drivers/mci/mxs.c                               |    2 +-
 drivers/mci/s3c.c                               |    2 +-
 drivers/mtd/devices/mtd_dataflash.c             |    2 +-
 drivers/mtd/nand/atmel_nand.c                   |    2 +-
 drivers/mtd/nand/nand_imx.c                     |    2 +-
 drivers/mtd/nand/nand_mxs.c                     |    2 +-
 drivers/mtd/nand/nand_omap_gpmc.c               |    4 +-
 drivers/mtd/nand/nand_s3c24xx.c                 |    2 +-
 drivers/mtd/nand/nomadik_nand.c                 |    2 +-
 drivers/mtd/nor/cfi_flash.c                     |    2 +-
 drivers/net/altera_tse.c                        |    2 +-
 drivers/net/ar231x.c                            |    2 +-
 drivers/net/arc_emac.c                          |    2 +-
 drivers/net/at91_ether.c                        |    2 +-
 drivers/net/cpsw.c                              |    2 +-
 drivers/net/cs8900.c                            |    2 +-
 drivers/net/davinci_emac.c                      |    2 +-
 drivers/net/designware.c                        |    2 +-
 drivers/net/dm9k.c                              |    2 +-
 drivers/net/ep93xx.c                            |    2 +-
 drivers/net/ethoc.c                             |    2 +-
 drivers/net/fec_imx.c                           |    2 +-
 drivers/net/fec_mpc5200.c                       |    2 +-
 drivers/net/gianfar.c                           |    6 +--
 drivers/net/ks8851_mll.c                        |    2 +-
 drivers/net/ksz8864rmn.c                        |    2 +-
 drivers/net/macb.c                              |    2 +-
 drivers/net/netx_eth.c                          |    2 +-
 drivers/net/orion-gbe.c                         |    2 +-
 drivers/net/phy/at803x.c                        |    6 +--
 drivers/net/phy/lxt.c                           |    2 +-
 drivers/net/phy/mdio_bus.c                      |    2 +-
 drivers/net/phy/micrel.c                        |   18 ++++----
 drivers/net/phy/national.c                      |    2 +-
 drivers/net/phy/phy.c                           |    2 +-
 drivers/net/phy/smsc.c                          |   10 ++---
 drivers/net/smc91111.c                          |    2 +-
 drivers/net/smc911x.c                           |    2 +-
 drivers/net/tap.c                               |    2 +-
 drivers/net/xgmac.c                             |    2 +-
 drivers/pwm/pxa_pwm.c                           |    2 +-
 drivers/serial/arm_dcc.c                        |    4 +-
 drivers/serial/atmel.c                          |    2 +-
 drivers/serial/serial_altera.c                  |    2 +-
 drivers/serial/serial_altera_jtag.c             |    2 +-
 drivers/serial/serial_ar933x.c                  |    2 +-
 drivers/serial/serial_auart.c                   |    2 +-
 drivers/serial/serial_blackfin.c                |    2 +-
 drivers/serial/serial_cadence.c                 |    2 +-
 drivers/serial/serial_imx.c                     |    2 +-
 drivers/serial/serial_mpc5xxx.c                 |    2 +-
 drivers/serial/serial_netx.c                    |    2 +-
 drivers/serial/serial_ns16550.c                 |    2 +-
 drivers/serial/serial_omap4_usbboot.c           |    2 +-
 drivers/serial/serial_pl010.c                   |    2 +-
 drivers/serial/serial_pxa.c                     |    2 +-
 drivers/serial/serial_s3c.c                     |    2 +-
 drivers/serial/stm-serial.c                     |    2 +-
 drivers/spi/altera_spi.c                        |    2 +-
 drivers/spi/atmel_spi.c                         |    2 +-
 drivers/spi/imx_spi.c                           |    2 +-
 drivers/spi/mxs_spi.c                           |    2 +-
 drivers/usb/gadget/dfu.c                        |    2 +-
 drivers/usb/gadget/serial.c                     |    2 +-
 drivers/usb/host/ohci-at91.c                    |    2 +-
 drivers/video/atmel_hlcdfb.c                    |    2 +-
 drivers/video/atmel_lcdfb.c                     |    2 +-
 drivers/video/bcm2835.c                         |    2 +-
 drivers/video/fb.c                              |    7 +--
 drivers/video/imx.c                             |    2 +-
 drivers/video/omap.c                            |    2 +-
 drivers/video/pxa.c                             |    2 +-
 drivers/video/s3c24xx.c                         |    2 +-
 drivers/video/sdl.c                             |    2 +-
 drivers/video/stm.c                             |    2 +-
 drivers/w1/w1.c                                 |    4 +-
 fs/omap4_usbbootfs.c                            |    2 +-
 lib/decompress_bunzip2.c                        |    2 +-
 lib/parameter.c                                 |    3 ++
 net/net.c                                       |    2 +-
 123 files changed, 275 insertions(+), 215 deletions(-)
 create mode 100644 commands/drvinfo.c

-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
