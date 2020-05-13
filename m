Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYmaD-0007uG-6H
 for barebox@lists.infradead.org; Wed, 13 May 2020 08:17:43 +0000
Date: Wed, 13 May 2020 10:17:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200513081739.GO5877@pengutronix.de>
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
Subject: v2020.05.0
To: Barebox List <barebox@lists.infradead.org>

Hi All,

Our barebox release for may is out.

This release comes with a new architecture supported by barebox: The
Kalray Coolidge architecture, see
https://www.kalrayinc.com/portfolio/processors/ for more details of this
very interesting architecture.

Quite some USB patches went into this release as well. We now have real
USB 3.0 support, so far the XHCI driver only worked with USB 2.0 devices
or at least with a USB 2.0 only cable in between.

That's for the bigger changes, as usual there are many more, see below.

Have Fun!
 Sascha

----------------------------------------------------------------
Ahmad Fatoum (33):
      mci: core: use SECTOR_SIZE instead of direct 512
      commands: of_property: fix crashes on incorrect number of arguments
      led: pwm: always initialize PWM LEDs as inactive
      PWM: core: remove FLAG_ENABLED
      PWM: core: remove ineffectual pwm_{set,get}_duty_cycle
      PWM: core: group PWM state into new struct pwm_state
      PWM: core: remove old PWM API in favor of Linux ->apply
      PWM: core: retire pwm_set_period
      PWM: core: apply initial state in of_pwm_request
      led: pwm: use new pwm_apply_state API
      PWM: core: add apply API support for polarity
      of: introduce of_property_count_elems_of_size
      PWM: add support for STM32
      of: overlay: fix uninitialized read of variable
      mfd: syscon: enable specified clocks on syscon_base_lookup_by_phandle
      mfd: syscon: refactor of_syscon_register compatible check
      mfd: syscon: implement device_node_to_regmap
      regmap: retire of_node_to_regmap in favor of device_node_to_regmap
      ARM: include: remove unused <asm/processor.h>
      treewide: use cpu_relax() where appropriate
      of: port Linux of_get_compatible_child helper
      clk: implement clk_register_fixed_rate
      clk: add clk_unregister stub
      include: linux/kernel.h: port DIV_ROUND_CLOSEST_ULL definition
      clk: migrate to SPDX-License-Identifier use
      clk: at91: delete no-longer required DT compat code
      clk: at91: compile dt-compat for all platforms that require it
      clk: at91: add __init marker where appropriate
      clk: at91: add sama5d2 audio PLL support
      clk: at91: port Linux v5.6 SAM9X60 (new ARM926EJ-S) clock support
      clk: at91: sckc: fix off-by-1000 in udelay()
      ARM: dts. i.MX7: add stopgap solution for barebox UART clock breakage
      video: ssd1307fb: fix null pointer dereference on error

Alexandre Belloni (2):
      clk: at91: fix masterck name
      clk: at91: fix possible deadlock

Andrey Smirnov (25):
      ARM: imx7d-zii-rpu2: Drop redundant chosen node
      ARM: zii-imx7d-dev: Fix compatible name
      ARM: zii-common: Check for I2C errors in do_rdu2_switch_reset()
      i2c: Port of_find_i2c_device_by_node() from Linux
      ARM: zii-common: Find switch watchdog via DT
      ARM: zii-common: Support rave_switch_reset on ZII Ultra
      ARM: zii-imx6q-rdu2: Differentiate between RDU2 and RDU2+
      ARM: zii-imx7d-dev: Differentiate between RPU2 and RMU2
      ARM: zii-imx8mq-dev: Differentiate between Zest and RMB3
      ARM: Drop unused macros in exceptions.S
      kbuild: Allow building with ARCH set to "arm64"
      ARM: zii-common: Add common environment directory
      ARM: zii-imx6q-rdu2: Register SD card slot with BBU
      ARM: zii-vf610-dev: Register SD card slot with BBU
      ARM: zii-imx8mq-dev: Register SD card slot with BBU
      ARM: zii-vf610-dev: Add newline to end of board.c
      ARM: rdu2: Drop redundant USB GPIO hog nodes
      ARM: imx8mq: Drop trailing whitespace
      ARM: imx8mq: Drop redundant DT nodes
      ARM: zii-imx8mq-dev: Add boot source info
      ARM: zii-imx8mq-dev: Drop redundant "stdout-path"
      ARM: zii-imx7d-dev: Drop redundant RMU2 .dtsi
      ARM: zii-imx7d-rmu2: Add SPI NOR partition info
      ARM: zii-imx7d-rmu2: Add boot source info
      ARM: zii-common: Gate rdu_i210_invm() call with CONFIG_PCI_IMX6

Antony Pavlov (1):
      checkpatch.pl: Update DT vendor prefix check

Clement Leger (10):
      common: oftree: trim leading spaces from bootargs
      of: base: allow of_add_memory to be called multiple times
      of: base: parse all available memory nodes
      kvx: Initial Kalray Coolidge (kv3) architecture support
      kvx: Add processor definitions
      kvx: Add support for device tree
      kvx: Implement reset source and reset
      clocksource: kvx: Add kvx clocksource support
      watchdog: kvx: Add kvx watchdog support
      Documentation: kvx: add first documentation

Eugen Hristev (1):
      clk: at91: allow 24 Mhz clock as input for PLL

Giorgio Dal Molin (2):
      ARM: i.MX: fixed enabling the MMU after switching in non secure mode.
      ARM: sm.c: add the attribute 'volatile' to some asm() statements.

Jules Maselbas (4):
      usb: gadget: dfu: Reset global variables on unbind
      usb: gadget: dfu: Add manifestation phase
      usb: gadget: dfu: Progressive erase if file is a mtd
      usb: gadget: dfu: Fix DFU mode interface descriptor

Lucas Stach (1):
      dtc: remove redundant YYLOC global declaration

Masahiro Yamada (9):
      kbuild: remove clean-dirs syntax
      kbuild: change *FLAGS_<basetarget>.o to take the path relative to $(obj)
      kconfig: update to Linux 5.5
      ppc,riscv: set something to KBUILD_DEFCONFIG
      kbuild: rename hostprogs-y/always to hostprogs/always-y
      kbuild: update flex and bison rules to Linux 5.7-rc1
      fixdep: update to Linux 5.7-rc1
      libfdt: update <linux/libfdt.h> and <linux/libfdt_env.h> to Linux 5.7-rc1
      kbuild: add $(always-y) to 'targets'

Michael Graichen (6):
      mmc: add MCI_SDHCI dependency to Arasan driver
      mmc: arasan: fix false bit
      scripts: zynq_mkimage: remove compiler warning
      arm: avnet zedboard: fix gem0 mio settings
      arm: avnet zedboard: add fpga and pcap clock control
      arm: avnet zedboard: turn on mio7 led on startup

Michael Tretter (1):
      of: use of_get_child_by_name() to find child node

Sascha Hauer (74):
      usb: hub: Make debugging output more consistent
      usb: hub: do not reset devices twice
      usb: hub: let usb_scan_port() return void
      usb: Remove hack from the early days
      usb: Pass portstatus/portchange to usb_hub_port_connect_change()
      usb: hub: Do not power-cycle usb devices on init
      usb: Make driver_info const
      usb: Set new USB device name earlier
      usb: Use dev_*
      usb: hub: Parse and save TT details from device descriptor
      usb: host: make init hook optional
      usb: support set hub depth request for USB 3.0 hubs
      usb: Assign dev_index once
      usb: remove unnecessary variable
      ARM: bootm: make sure we place the kernel in free memory
      regmap-mmio: Add missing pieces for 64bit support
      PCI: layerscape: be less noisy when no iommu node is found
      ARM: Layerscape: Be less noisy when no iommu node found
      ARM: bootm: Add some printfs when request_sdram_region() fails
      usb: net: Allocate rx buffer dynamically
      usb: net: Allocate tx buffer dynamically
      net: usb: add hook for link changes
      usb: net: Add support for the Asix AX88179
      usb: factor out a usb_setup_descriptor() function
      usb: hub: Translate USB 3.0 hub port status into old version
      usb: Add super speed support
      usb: hub: When no connection came up remove from scanning list
      usb: host: remove xhci driver
      usb: Add U-Boot xhci driver
      nfs: Add function to free packets
      nfs: Add missing free
      nfs: remove unnecessary check
      nfs: Fix rpc_check_reply() return value for stale packets
      nfs: Fix polling for packets
      nfs: queue received packets
      fs: nfs: don't maintain nfs dentries in dcache
      nfs: Do not allow to abort
      ARM64: Setup vectors in all lower execption levels
      ARM64: attribute argument to create_sections() is 64bit
      arm64: Set PXN/UXN attributes for uncached mem
      net: fec_imx: Do not clear MII interrupt during receive
      miitool: Use mdiobus_read()
      net: phy: mdio-mux: Use mdiobus_read/write()
      net: Open ethernet devices explicitly
      net: ifup command: add ethernet device completion
      net: phy: Do not claim the link is up initially
      net: phy: Also print link down messages
      net: Add ifdown support and command
      dts: update to v5.6
      serial: ns16550_pci: Use %pa to print resource_size_t
      arm: rk3288-phycore-som: Fix memory node
      arm: omap: Fix no previous prototype warnings
      regmap-mmio: Add big endian support
      spi: validate spi messages
      spi: Add fsl-dspi driver
      mtd: spi-nor: Add support for cy15x104q
      Merge branch 'for-next/arm'
      Merge branch 'for-next/at91-clk'
      Merge branch 'for-next/dfu'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/kalray-coolidge'
      Merge branch 'for-next/layerscape'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/net'
      Merge branch 'for-next/nfs'
      Merge branch 'for-next/pwm'
      Merge branch 'for-next/spi'
      Merge branch 'for-next/usb'
      Merge branch 'for-next/zii'
      Merge branch 'for-next/zynq'
      ppc: Test for compiler options
      ARM: Phytec phyFLEX i.MX6: delete wrong memory node
      fs: Fix inode size setting in ftruncate
      Release v2020.05.0

Stephen Boyd (1):
      clk: at91: Mark struct clk_range as const

Yegor Yefremov (1):
      common: fix typos found with codespell

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
