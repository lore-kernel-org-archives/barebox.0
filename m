Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XSNrr-00039r-Ef
 for barebox@lists.infradead.org; Fri, 12 Sep 2014 10:14:17 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1XSNrU-0006bM-Gb
 for barebox@lists.infradead.org; Fri, 12 Sep 2014 12:13:52 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.84)
 (envelope-from <sha@pengutronix.de>) id 1XSNrU-0003Yr-FL
 for barebox@lists.infradead.org; Fri, 12 Sep 2014 12:13:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 12 Sep 2014 12:13:40 +0200
Message-Id: <1410516830-9403-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Return error pointers from resource handling functions
To: barebox@lists.infradead.org

Many many drivers do not check the return value of dev_request_mem_region(),
so in case of an error here the drivers usually crash with a NULL pointer
dereference later. This series adds the error checks to the drivers. While
at it, this series lets the resource functions return an ERR_PTR instead
of NULL to allow the users to just forward the error instead of inventing
an error code.

Sascha

----------------------------------------------------------------
Sascha Hauer (10):
      ata: platform_ide: cleanup resource requesting
      resource: Let dev_get_resource_by_name return an error pointer
      resource: Let dev_get_mem_region_by_name return an error pointer
      resource: Let __request_region return an error pointer
      resource: Let request_iomem_region return an error pointer
      resource: Let dev_get_resource return an error pointer
      resource: Let dev_get_mem_region return an error pointer
      resource: Let dev_request_mem_region_by_name return an error pointer
      resource: Let dev_request_mem_region return an error pointer
      resource: Let request_ioport_region return an error pointer

 arch/arm/mach-at91/at91sam926x_time.c |  2 ++
 arch/arm/mach-at91/sam9_smc.c         |  5 +--
 arch/arm/mach-imx/clk-imx1.c          |  2 ++
 arch/arm/mach-imx/clk-imx21.c         |  2 ++
 arch/arm/mach-imx/clk-imx25.c         |  2 ++
 arch/arm/mach-imx/clk-imx27.c         |  2 ++
 arch/arm/mach-imx/clk-imx31.c         |  2 ++
 arch/arm/mach-imx/clk-imx35.c         |  2 ++
 arch/arm/mach-imx/clk-imx5.c          |  2 ++
 arch/arm/mach-imx/clk-imx6.c          |  2 ++
 arch/arm/mach-imx/clocksource.c       |  2 ++
 arch/arm/mach-imx/esdctl.c            |  5 +--
 arch/arm/mach-imx/iim.c               |  4 +--
 arch/arm/mach-imx/ocotp.c             |  4 +--
 arch/arm/mach-mxs/ocotp.c             |  3 ++
 arch/arm/mach-tegra/tegra20-pmc.c     |  5 +--
 arch/arm/mach-tegra/tegra20-timer.c   |  5 +--
 arch/arm/mach-zynq/clk-zynq7000.c     |  4 +--
 arch/mips/mach-ar231x/ar231x_reset.c  |  5 +--
 common/memory.c                       |  7 ++--
 common/resource.c                     | 15 +++++---
 drivers/amba/bus.c                    |  5 +--
 drivers/ata/ahci.c                    |  3 ++
 drivers/ata/intf_platform_ide.c       | 53 ++++++++++++++--------------
 drivers/ata/pata-imx.c                |  2 ++
 drivers/ata/sata-imx.c                |  4 +--
 drivers/base/driver.c                 | 34 ++++++++++--------
 drivers/bus/imx-weim.c                |  5 +--
 drivers/bus/omap-gpmc.c               |  5 +--
 drivers/clk/clk-ar933x.c              |  4 +--
 drivers/clk/mvebu/common.c            |  5 +--
 drivers/clk/mxs/clk-imx23.c           |  2 ++
 drivers/clk/mxs/clk-imx28.c           |  2 ++
 drivers/clk/socfpga.c                 |  4 +--
 drivers/clk/tegra/clk-tegra124.c      |  4 +--
 drivers/clk/tegra/clk-tegra20.c       |  4 +--
 drivers/clk/tegra/clk-tegra30.c       |  4 +--
 drivers/clocksource/arm_smp_twd.c     |  2 ++
 drivers/clocksource/bcm2835.c         |  2 ++
 drivers/clocksource/clps711x.c        |  4 +--
 drivers/clocksource/digic.c           |  5 +--
 drivers/clocksource/mvebu.c           |  2 ++
 drivers/clocksource/nomadik.c         |  2 ++
 drivers/clocksource/orion.c           |  3 ++
 drivers/clocksource/uemd.c            |  5 +--
 drivers/dma/apbh_dma.c                |  5 +--
 drivers/gpio/gpio-clps711x.c          | 10 ++++--
 drivers/gpio/gpio-davinci.c           |  4 +--
 drivers/gpio/gpio-dw.c                |  5 +--
 drivers/gpio/gpio-generic.c           | 11 +++---
 drivers/gpio/gpio-jz4740.c            |  5 +--
 drivers/gpio/gpio-malta-fpga-i2c.c    |  4 +--
 drivers/gpio/gpio-omap.c              |  4 +++
 drivers/gpio/gpio-tegra.c             |  4 +--
 drivers/i2c/busses/i2c-imx.c          |  3 ++
 drivers/i2c/busses/i2c-omap.c         |  2 ++
 drivers/i2c/busses/i2c-versatile.c    |  5 +--
 drivers/input/imx_keypad.c            |  3 ++
 drivers/mci/atmel_mci.c               |  2 ++
 drivers/mci/dw_mmc.c                  |  4 +--
 drivers/mci/imx-esdhc.c               |  2 ++
 drivers/mci/imx.c                     |  2 ++
 drivers/mci/mci-bcm2835.c             |  5 +--
 drivers/mci/mxs.c                     |  2 ++
 drivers/mci/omap_hsmmc.c              |  3 ++
 drivers/mci/pxamci.c                  |  3 ++
 drivers/mci/s3c.c                     |  4 +++
 drivers/mci/tegra-sdmmc.c             |  5 +--
 drivers/mfd/syscon.c                  |  8 ++---
 drivers/misc/sram.c                   |  7 ++--
 drivers/mtd/nand/atmel_nand.c         |  3 ++
 drivers/mtd/nand/nand_mxs.c           |  5 +++
 drivers/mtd/nand/nand_orion.c         |  4 +--
 drivers/mtd/nand/nomadik_nand.c       |  7 ++++
 drivers/mtd/nor/cfi_flash.c           |  4 +++
 drivers/net/altera_tse.c              |  9 +++++
 drivers/net/ar231x.c                  |  9 ++---
 drivers/net/arc_emac.c                |  3 ++
 drivers/net/cpsw.c                    |  3 ++
 drivers/net/designware.c              |  4 +++
 drivers/net/ethoc.c                   |  3 ++
 drivers/net/fec_mpc5200.c             |  3 ++
 drivers/net/gianfar.c                 | 11 +++---
 drivers/net/ks8851_mll.c              |  6 ++++
 drivers/net/macb.c                    |  2 ++
 drivers/net/orion-gbe.c               |  5 +++
 drivers/net/phy/mdio-mvebu.c          |  5 +--
 drivers/net/smc91111.c                |  3 ++
 drivers/pinctrl/imx-iomux-v1.c        |  3 ++
 drivers/pinctrl/imx-iomux-v2.c        |  3 ++
 drivers/pinctrl/mvebu/armada-xp.c     |  4 +--
 drivers/pinctrl/mvebu/kirkwood.c      |  5 +--
 drivers/pinctrl/pinctrl-at91.c        |  4 +--
 drivers/pinctrl/pinctrl-rockchip.c    |  4 +--
 drivers/pinctrl/pinctrl-tegra20.c     |  5 +--
 drivers/pinctrl/pinctrl-tegra30.c     |  5 +--
 drivers/pwm/pwm-imx.c                 |  5 +--
 drivers/serial/atmel.c                |  3 ++
 drivers/serial/serial_ar933x.c        |  3 ++
 drivers/serial/serial_auart.c         |  2 ++
 drivers/serial/serial_cadence.c       |  4 +--
 drivers/serial/serial_clps711x.c      |  2 ++
 drivers/serial/serial_mpc5xxx.c       |  3 ++
 drivers/serial/serial_ns16550.c       | 14 ++++----
 drivers/serial/stm-serial.c           |  2 ++
 drivers/spi/altera_spi.c              |  3 ++
 drivers/spi/mvebu_spi.c               |  4 +--
 drivers/spi/mxs_spi.c                 |  3 ++
 drivers/usb/gadget/at91_udc.c         |  4 +--
 drivers/usb/gadget/fsl_udc.c          |  4 +++
 drivers/usb/host/ehci-hcd.c           |  4 +++
 drivers/usb/host/ohci-hcd.c           |  3 ++
 drivers/usb/imx/chipidea-imx.c        |  5 +--
 drivers/video/atmel_lcdfb_core.c      |  2 ++
 drivers/video/imx-ipu-fb.c            |  2 ++
 drivers/video/imx.c                   |  3 ++
 drivers/video/omap.c                  |  3 +-
 drivers/video/pxa.c                   |  3 ++
 drivers/watchdog/im28wd.c             |  3 ++
 zz                                    | 66 +++++++++++++++++++++++++++++++++++
 120 files changed, 467 insertions(+), 164 deletions(-)
 create mode 100644 zz


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
