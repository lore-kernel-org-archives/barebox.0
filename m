Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aWMAR-0001N0-AA
 for barebox@lists.infradead.org; Thu, 18 Feb 2016 10:50:41 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <sha@pengutronix.de>) id 1aWMA5-00071V-N1
 for barebox@lists.infradead.org; Thu, 18 Feb 2016 11:50:17 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.86)
 (envelope-from <sha@pengutronix.de>) id 1aWMA5-0004v4-Fn
 for barebox@lists.infradead.org; Thu, 18 Feb 2016 11:50:17 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 18 Feb 2016 11:50:14 +0100
Message-Id: <1455792617-13671-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] dev_request_mem_region -> dev_request_mem_resource conversion
To: Barebox List <barebox@lists.infradead.org>

Find my first steps with coccinelle attached. Using coccinelle already
felt better than doing it by hand. Patch 3/3 needs some manual fixups.
I'll do that before applying it, but before that I'm posting it here
just in case somebody has some improvements for my coccinelle patch
making some manual fixups unnecessary.

Sascha

----------------------------------------------------------------
Sascha Hauer (3):
      Fix return check of dev_request_mem_region
      driver: Introduce dev_request_mem_resource
      driver: replace dev_request_mem_region with dev_request_mem_resource

 arch/arm/mach-at91/sam9_smc.c         |  8 +++++---
 arch/arm/mach-imx/clk-imx1.c          |  8 +++++---
 arch/arm/mach-imx/clk-imx21.c         |  8 +++++---
 arch/arm/mach-imx/clk-imx25.c         |  8 +++++---
 arch/arm/mach-imx/clk-imx27.c         |  8 +++++---
 arch/arm/mach-imx/clk-imx31.c         |  8 +++++---
 arch/arm/mach-imx/clk-imx35.c         |  8 +++++---
 arch/arm/mach-imx/clk-imx5.c          | 14 ++++++++++----
 arch/arm/mach-imx/clk-imx6.c          |  8 +++++---
 arch/arm/mach-imx/clk-imx6sx.c        |  8 +++++---
 arch/arm/mach-imx/clocksource.c       |  8 +++++---
 arch/arm/mach-imx/esdctl.c            |  8 +++++---
 arch/arm/mach-imx/iim.c               |  8 +++++---
 arch/arm/mach-imx/ocotp.c             |  8 +++++---
 arch/arm/mach-mxs/ocotp.c             |  8 +++++---
 arch/arm/mach-tegra/tegra20-pmc.c     |  8 +++++---
 arch/arm/mach-tegra/tegra20-timer.c   |  8 +++++---
 arch/arm/mach-zynq/clk-zynq7000.c     |  8 +++++---
 arch/mips/mach-ar231x/ar231x_reset.c  |  8 +++++---
 drivers/ata/ahci.c                    |  8 +++++---
 drivers/ata/intf_platform_ide.c       | 11 +++++++++--
 drivers/ata/pata-imx.c                |  8 +++++---
 drivers/ata/sata-imx.c                |  8 +++++---
 drivers/base/driver.c                 | 11 +++++++++--
 drivers/bus/imx-weim.c                |  7 ++++---
 drivers/clk/clk-ar933x.c              |  8 +++++---
 drivers/clk/mvebu/common.c            | 16 ++++++++++------
 drivers/clk/mvebu/corediv.c           |  8 +++++---
 drivers/clk/mxs/clk-imx23.c           |  8 +++++---
 drivers/clk/mxs/clk-imx28.c           |  8 +++++---
 drivers/clk/socfpga.c                 |  8 +++++---
 drivers/clk/tegra/clk-tegra124.c      |  8 +++++---
 drivers/clk/tegra/clk-tegra20.c       |  8 +++++---
 drivers/clk/tegra/clk-tegra30.c       |  8 +++++---
 drivers/clocksource/arm_smp_twd.c     |  8 +++++---
 drivers/clocksource/bcm2835.c         |  8 +++++---
 drivers/clocksource/clps711x.c        |  8 +++++---
 drivers/clocksource/digic.c           |  8 +++++---
 drivers/clocksource/mvebu.c           |  8 +++++---
 drivers/clocksource/nomadik.c         |  8 +++++---
 drivers/clocksource/orion.c           |  8 +++++---
 drivers/clocksource/uemd.c            |  8 +++++---
 drivers/dma/apbh_dma.c                |  8 +++++---
 drivers/firmware/socfpga.c            | 11 +++++++++--
 drivers/gpio/gpio-ath79.c             |  8 +++++---
 drivers/gpio/gpio-bcm2835.c           |  6 +++++-
 drivers/gpio/gpio-clps711x.c          | 22 ++++++++++++---------
 drivers/gpio/gpio-davinci.c           |  8 +++++---
 drivers/gpio/gpio-digic.c             |  6 +++++-
 drivers/gpio/gpio-dw.c                |  8 +++++---
 drivers/gpio/gpio-imx.c               |  6 +++++-
 drivers/gpio/gpio-jz4740.c            |  8 +++++---
 drivers/gpio/gpio-malta-fpga-i2c.c    |  8 +++++---
 drivers/gpio/gpio-omap.c              |  8 +++++---
 drivers/gpio/gpio-orion.c             |  8 +++++---
 drivers/gpio/gpio-tegra.c             |  8 +++++---
 drivers/i2c/busses/i2c-at91.c         |  6 +++++-
 drivers/i2c/busses/i2c-designware.c   |  7 ++++---
 drivers/i2c/busses/i2c-imx.c          |  7 ++++---
 drivers/i2c/busses/i2c-mv64xxx.c      |  8 +++++---
 drivers/i2c/busses/i2c-omap.c         |  8 +++++---
 drivers/i2c/busses/i2c-tegra.c        |  8 +++++---
 drivers/i2c/busses/i2c-versatile.c    |  7 ++++---
 drivers/input/imx_keypad.c            |  8 +++++---
 drivers/mci/atmel_mci.c               |  8 +++++---
 drivers/mci/dw_mmc.c                  |  8 +++++---
 drivers/mci/imx-esdhc.c               |  8 +++++---
 drivers/mci/imx.c                     |  8 +++++---
 drivers/mci/mci-bcm2835.c             |  8 +++++---
 drivers/mci/mxs.c                     |  8 +++++---
 drivers/mci/omap_hsmmc.c              |  8 +++++---
 drivers/mci/pxamci.c                  |  8 +++++---
 drivers/mci/s3c.c                     |  8 +++++---
 drivers/mci/tegra-sdmmc.c             |  8 +++++---
 drivers/misc/sram.c                   |  8 +++++---
 drivers/mtd/devices/docg3.c           |  6 +++++-
 drivers/mtd/devices/mtdram.c          |  9 +++++----
 drivers/mtd/nand/atmel_nand.c         | 36 ++++++++++++++++++++++-------------
 drivers/mtd/nand/nand_denali_dt.c     | 15 +++++++++------
 drivers/mtd/nand/nand_imx.c           | 21 ++++++++++++++++----
 drivers/mtd/nand/nand_mrvl_nfc.c      |  6 +++++-
 drivers/mtd/nand/nand_mxs.c           | 16 +++++++++-------
 drivers/mtd/nand/nand_omap_gpmc.c     |  6 +++++-
 drivers/mtd/nand/nand_orion.c         |  8 +++++---
 drivers/mtd/nand/nand_s3c24xx.c       |  6 +++++-
 drivers/mtd/nor/cfi_flash.c           |  8 +++++---
 drivers/mtd/spi-nor/cadence-quadspi.c | 11 +++++++++--
 drivers/net/altera_tse.c              | 29 ++++++++++++++++------------
 drivers/net/ar231x.c                  | 15 +++++++++------
 drivers/net/arc_emac.c                |  8 +++++---
 drivers/net/cpsw.c                    |  8 +++++---
 drivers/net/cs8900.c                  |  6 +++++-
 drivers/net/davinci_emac.c            | 21 ++++++++++++++++----
 drivers/net/designware.c              |  8 +++++---
 drivers/net/dm9k.c                    | 11 +++++++++--
 drivers/net/ethoc.c                   |  8 +++++---
 drivers/net/fec_imx.c                 |  6 +++++-
 drivers/net/fec_mpc5200.c             |  8 +++++---
 drivers/net/ks8851_mll.c              | 16 +++++++++-------
 drivers/net/macb.c                    |  8 +++++---
 drivers/net/smc91111.c                |  8 +++++---
 drivers/net/smc911x.c                 |  6 +++++-
 drivers/net/xgmac.c                   |  6 +++++-
 drivers/pci/pci-imx6.c                |  8 +++++---
 drivers/pinctrl/imx-iomux-v2.c        |  8 +++++---
 drivers/pinctrl/imx-iomux-v3.c        |  6 +++++-
 drivers/pinctrl/mvebu/armada-370.c    |  8 +++++---
 drivers/pinctrl/mvebu/armada-xp.c     |  8 +++++---
 drivers/pinctrl/mvebu/dove.c          | 11 +++++++++--
 drivers/pinctrl/mvebu/kirkwood.c      |  8 +++++---
 drivers/pinctrl/pinctrl-single.c      |  6 +++++-
 drivers/pinctrl/pinctrl-tegra-xusb.c  |  8 +++++---
 drivers/pinctrl/pinctrl-tegra20.c     |  8 +++++---
 drivers/pinctrl/pinctrl-tegra30.c     |  8 +++++---
 drivers/pwm/pwm-imx.c                 |  8 +++++---
 drivers/pwm/pwm-mxs.c                 |  8 +++++---
 drivers/pwm/pxa_pwm.c                 |  6 +++++-
 drivers/rtc/rtc-jz4740.c              |  8 +++++---
 drivers/serial/serial_altera.c        |  6 +++++-
 drivers/serial/serial_altera_jtag.c   |  6 +++++-
 drivers/serial/serial_ar933x.c        |  8 +++++---
 drivers/serial/serial_auart.c         |  8 +++++---
 drivers/serial/serial_cadence.c       |  7 ++++---
 drivers/serial/serial_digic.c         |  6 +++++-
 drivers/serial/serial_imx.c           |  6 +++++-
 drivers/serial/serial_mpc5xxx.c       |  8 +++++---
 drivers/serial/serial_netx.c          |  6 +++++-
 drivers/serial/serial_ns16550.c       |  8 +++++---
 drivers/serial/serial_pl010.c         |  6 +++++-
 drivers/serial/serial_pxa.c           |  6 +++++-
 drivers/serial/serial_s3c.c           |  6 +++++-
 drivers/serial/stm-serial.c           |  8 +++++---
 drivers/spi/altera_spi.c              |  8 +++++---
 drivers/spi/ath79_spi.c               |  6 +++++-
 drivers/spi/atmel_spi.c               |  6 +++++-
 drivers/spi/imx_spi.c                 |  6 +++++-
 drivers/spi/mvebu_spi.c               |  7 ++++---
 drivers/spi/mxs_spi.c                 |  8 +++++---
 drivers/spi/omap3_spi.c               |  6 +++++-
 drivers/usb/gadget/at91_udc.c         |  6 +++++-
 drivers/usb/gadget/pxa27x_udc.c       |  8 +++++---
 drivers/usb/host/ehci-atmel.c         |  6 +++++-
 drivers/usb/host/ehci-hcd.c           | 16 +++++++++++-----
 drivers/usb/host/ohci-hcd.c           |  8 +++++---
 drivers/usb/host/xhci-hcd.c           |  6 +++++-
 drivers/usb/imx/chipidea-imx.c        |  8 +++++---
 drivers/usb/imx/imx-usb-misc.c        |  8 +++++---
 drivers/usb/imx/imx-usb-phy.c         |  9 +++++----
 drivers/usb/musb/musb_dsps.c          | 16 +++++++++-------
 drivers/usb/musb/phy-am335x-control.c | 16 +++++++++-------
 drivers/usb/musb/phy-am335x.c         |  9 +++++----
 drivers/video/atmel_lcdfb_core.c      |  8 +++++---
 drivers/video/imx-ipu-fb.c            |  8 +++++---
 drivers/video/imx-ipu-v3/imx-hdmi.c   |  8 +++++---
 drivers/video/imx-ipu-v3/ipu-common.c |  8 +++++---
 drivers/video/imx.c                   |  8 +++++---
 drivers/video/pxa.c                   |  8 +++++---
 drivers/video/s3c24xx.c               |  6 +++++-
 drivers/video/stm.c                   |  6 +++++-
 drivers/watchdog/davinci_wdt.c        |  8 +++++---
 drivers/watchdog/im28wd.c             |  8 +++++---
 drivers/watchdog/imxwd.c              |  8 +++++---
 drivers/watchdog/jz4740.c             |  8 +++++---
 drivers/watchdog/omap_wdt.c           |  7 ++++---
 include/driver.h                      |  6 ++++++
 165 files changed, 945 insertions(+), 480 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
