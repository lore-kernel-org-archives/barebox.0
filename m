Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kL3lb-0002Mu-Sh
 for barebox@lists.infradead.org; Wed, 23 Sep 2020 12:21:00 +0000
Date: Wed, 23 Sep 2020 14:20:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200923122057.GF25328@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: v2020.09.0
To: Barebox List <barebox@lists.infradead.org>

Hi All,

barebox-2020.09.0 is out. This is a rather small release this time. The
most significant change is that barebox now honours the load and entry
addresses if given in a FIT image. Still the addresses are optional,
barebox will continue to pick suitable addresses if they are not given.
Another bigger change is that the dwc2 USB controller driver is
completely replaced.  The new version now has USB device support, check
it out.

Have fun!
  Sascha


----------------------------------------------------------------
Ahmad Fatoum (12):
      ARM: socfpga: achilles: remove unused barebox,bootstate node
      ARM: stm32mp: add support for Seeed Odyssey board
      treewide: remove stale instances of struct device
      ARM: at91: pass along bootsource to netbooted barebox
      i2c: sync i2c_parse_fw_timings() with upstream
      i2c: at91: extend for sama5d2 support
      mfd: add Atmel Flexcom support
      spi: add coredevice_spi_driver macro as well
      watchdog: fix watchdog_set_timeout breakage for drivers like imxwd
      clk: at91: sama5d2: fix buffer overflow of clk parent_names
      ARM: at91: fix link error when CONFIG_BOOTM=n
      ARM: at91: sama5d27-giantboard: fix multi-image compatibility

Anees Rehman (2):
      mci: imx-esdhc-pbl: Add support for IMX7
      ARM: i.MX: Add atlascopco sxb board

Antony Pavlov (2):
      image: Convert the IH_... values to enums
      riscv: Makefile: make it possible to use riscv64 compiler

Christian Mauderer (1):
      FIT: Parse `load` and `entry` addresses.

Clement Leger (1):
      kvx: exclude dtb from malloc zone

Denis Osterland-Heim (1):
      dtc_cpp: allow to pass options per target

Du Huanpeng (1):
      Documentation: update for loongson1 board

Hubert Feurstein (1):
      imd: imd_calculate_crc32: initialize imd_crc to NULL

Ian Abbott (1):
      mtd: spi-nor: cadence: fix csqpi corruption in cqspi_set_protocol

Jules Maselbas (17):
      ratp: Abort console_countdown when activated
      ratp: Remove duplicated includes
      USB: gadget: Add serialnumber device parameter
      console_countdown: Add CR as valid return key
      Revert "usb: Add dwc2 host driver"
      usb: dwc2: Add host controller driver
      usb: dwc2: host: Read dr_mode from device tree
      usb: dwc2: Rework roothub interface
      usb: dwc2: Rework timeout
      usb: dwc2: host: Handle dma mapping errors
      usb: dwc2: host: Dynamic fifo size support from Linux
      usb: dwc2: host: Fix toggle reset
      usb: dwc2: host: Rewrite dwc2_hc_init
      usb: dwc2: Add function to flush tx fifo
      usb: dwc2: Add structure for gadget driver
      usb: dwc2: Add gadget driver
      usb: dwc2: Use register_otg_device

Lucas Stach (7):
      ARM: imx8mm: select FIRMWARE_IMX_LPDDR4_PMU_TRAIN from IMX8MM_EVK
      ARM: imx8m: make debug UART selection available on i.MX8MM/MP
      ARM: nxp-imx8mm-evk: always set up UART
      nvmem: ocotp: add support for i.MX8MM
      ARM: vexpress: set stdout path
      ARM: vexpress: enable KALLSYMS in defconfig
      clk: imx8mm: fix CPU clock

Oleksij Rempel (3):
      ARM: dts: imx6q-prti6q: fix PHY register
      ARM: dts: imx6: vicut1: fix network support
      string: add sanity check to the strcmp() and strncmp()

Rouven Czerwinski (6):
      clk: imx7: add IMX7D_OCOTP_CLK
      nvmem: ocotp: retrieve set_timing from structure
      nvmem: ocotp: add new timing function for i.MX7
      nvmem: ocotp: read/write i.MX7 support
      nvmem: enable OCOTP for i.MX7
      ARM: Layerscape: TQMLS1046a: remove ddr calc code

Sascha Hauer (22):
      dts: update to v5.8-rc4
      dts: update to v5.8-rc6
      dts: update to v5.8-rc7
      dts: update to v5.8
      dts: update to v5.9-rc1
      video: ssd1307fb: Honour reset GPIO polarity
      libfile: copy_file: Fix ftruncate called on device files
      Merge branch 'for-next/at91' into master
      Merge branch 'for-next/dts' into master
      Merge branch 'for-next/imx' into master
      Merge branch 'for-next/kvx' into master
      Merge branch 'for-next/misc' into master
      Merge branch 'for-next/stm32' into master
      Merge branch 'for-next/usb-dwc2' into master
      clk: imx-imx8mp: Mark arm_a53_core clk as critical
      fs: squashfs: set s_op in time
      fs: squashfs: Do not free root inode
      fs: Use iget_locked() rather than squashfs specific function
      ARM: imx8m: Make uart setup function name more generic
      ARM: i.MX8M boards: always set up UART
      clk: imx: clk-frac-pll: Use do_div for 64bit division
      Release v2020.09.0

Stefan Riedmueller (1):
      ARM: boards: phytec-som-imx6: Add mmc and emmc-boot bbu update handler

Trent Piepho (1):
      pinctrl-single: Support 2 pinctrl-cells in ,pins mode

Yegor Yefremov (2):
      arm: baltos: add environment node
      arm: baltos: export DIP switch value

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
