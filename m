Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fRBsL-0000yb-3T
 for barebox@lists.infradead.org; Fri, 08 Jun 2018 07:32:01 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <sha@pengutronix.de>) id 1fRBs7-0007mk-Kk
 for barebox@lists.infradead.org; Fri, 08 Jun 2018 09:31:43 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <sha@pengutronix.de>) id 1fRBs7-0001fv-By
 for barebox@lists.infradead.org; Fri, 08 Jun 2018 09:31:43 +0200
Date: Fri, 8 Jun 2018 09:31:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180608073143.744ow3zxrhwuq4ko@pengutronix.de>
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
Subject: v2018.06.0
To: Barebox List <barebox@lists.infradead.org>

Hi All,

We have a release for June. I'm happy that this time I am not the patch
record holder, it's Andrey who created 60 patches for this release.
Thanks Andrey ;) Among other things we now have serdev support which can
be used to attach devices behind UARTs. Another thing worth noting is
that 'ifup -a' no longer scans for USB devices if not necessary (which
can be annoying on network boots). Also the bootloader spec code now can
filter out entries not matching a configured machine id.

Have fun!
Sascha

Alexander Kurz (2):
      ARM omap beagle xload_defconfig: do not load drivers from DT
      ARM omap beagle defconfig: remove trace initcalls

Andreas Schmidt (1):
      blspec: add checking of optional key machine-id

Andrey Gusakov (2):
      mfd: mc13xxx: add function returning mc13xxx type
      aiodev: mc13xxx: add adc support

Andrey Smirnov (60):
      ARM: Make use of ALIGN_DOWN macro in barebox-arm.h
      pinctrl-vf610: Make use of BIT macro
      ARM: start: Avoid calling arm_mem_barebox_image() twice
      i.MX: vf610-twr: Print '>' when DEBUG_LL is enabled
      i.MX: vf610-twr: Convert to use vf610_setup_pad()
      ARM: i.MX: esdctl: Use IOMEM instead of (void *)
      ARM: i.MX51: esdctl: Replace magic value with ESDMISC_DDR2_8_BANK
      ARM: i.MX6: esdctl: Share memory size calculation code
      ARM: i.MX6: esdctl: Factor out common code in imx6*_barebox_entry()
      ARM: i.MX6: esdctl: Use symbolic constants for RAM base address
      ARM: i.MX: esdctl: Make use of min_t()
      ARM: i.MX: esdctl: Introduce memory_sdram_size()
      ARM: i.MX: esdctl: Add support for Vybrid's memory controller
      i.MX: vf610-twr: Make use of vf610_barebox_entry()
      i.MX: zii-vf610-dev: Make use of vf610_barebox_entry()
      serial/lpuart: Do not enable UART FIFO
      include: Port linux/build_bug.h from Linux kernel
      include: Port linux/bitfield.h from Linux kernel
      ARM: i.MX: Add a function to extract BMOD value
      ARM: i.MX: Simplify serial bootsource detection for i.MX6 and 7
      ARM: i.MX: Account for unprogrammed fuses on i.MX6 and i.MX7
      ARM: i.MX7: boot: Add code to handle SD/MMC manufacture mode
      ARM: i.MX7: boot: Remove incorrect NAND bootsource detection
      ARM: i.MX7: boot: Fix SPI-NOR/QSPI boot source mixup
      ARM: i.MX: boot: Remove unnecessary returns
      ARM: i.MX: boot: Move magic values into small functions
      ARM: i.MX: boot: Share code to detect NAND as a boot source
      ARM: i.MX: boot: Check for NAND boot only if necessary on i.MX53, 6
      ARM: i.MX53: boot: Move magic numbers info utility functions
      ARM: i.MX6: boot: Move magic numbers into utility functions
      ARM: i.MX7: boot: Move magic numbers into utility functions
      bootsource: Add BOOTSOURCE_CAN
      ARM: VFxxx: Implement code to detect bootsource
      ARM: i.MX6: boot: Return BOOTSOURCE_SPI_NOR, not BOOTSOURCE_SPI
      console: Introduce console_drain()
      console: Add simplified 'serdev' framework from Linux kernel
      serdev: Add trivial blocking read function
      serial: Drop .remove functions from all drivers
      serdev: Allow polling interval to be adjusted at runtime
      ARM: i.MX: boot: Coalesce copy-pasted code
      ARM: imx_v7_defconfig: Select various missing v7 boards by default
      common: reset_source: Add the notion of "reset source instance"
      ARM: i.MX: Add infrastructure to record SoC reset reason
      ARM: i.MX6: Record reset reason as a part of startup
      ARM: i.MX7: Record reset reason as a part of startup
      mfd: Port RAVE SP driver from Linux kernel
      watchdog: Port RAVE SP watchdog driver from Linux kernel
      common: reset_source: Introduce reset_source_name()
      ARM: i.MX: Log detected reset reason
      ARM: i.MX: Print "revision unknown" if that is the case
      ARM: VFxxx: Add code to detect cpu variant
      ARM: VFxxx: Detect cpu variant on start
      ARM: VFxxx: Record reset reason as a part of startup
      ARM: i.MX7: Remove unnecessary local variable
      ARM: i.MX51: Replace expicit casts with IOMEM
      ARM: i.MX: Fix incorrect IMX_SRC_SRSR_CSU_RESET
      ARM: i.MX: Make imx6_reset_reasons global
      ARM: i.MX: Introduce IMX_SRC_SRSR
      ARM: i.MX53: Record reset reason as a part of startup
      ARM: i.MX51: Record reset reason as a part of startup

Antony Pavlov (4):
      net: make SoCFPGA-specific designware driver work again
      ARM: socfpga: boards: pll_config.h: remove duplicate macros
      ARM: socfpga: mach/pll_config.h: add guard macro
      ARM: socfpga_defconfig: enable Altera firmware stuff

Christian Hemp (5):
      net: phy: micrel: fix too late link up
      ARM: i.MX: phytec-som-imx: Remove kernel and oftree partiton in NAND
      ARM: dts: imx6qdl: phycore: Sync muxing with kernel
      ARM: i.MX: phytec-som-imx6: phycore: Set BUCK mode to SYNC
      ARM: i.MX: phytec-som-imx6: add phyCORE-i.MX6 QuadPlus with 1GiB RAM

Christoph Fritz (1):
      ARM: Add Advantech imx6 board support

Daniel Schultz (2):
      common: state: Add property to protect existing data
      ARM: dts: AM335x: Add keep-previous-content property

Enrico Scholz (8):
      mfd: da9063: reset watchdog timer
      mfd: da9063: added generic reg_update() function
      mfd: da9063: use da906x_reg_update()
      mfd: da9063: add device specific init function
      mfd: da9063: added of_device_id information
      mfd: da9063: read out and report device id
      ARM: i.MX: phycore-som: added and enabled DA9062 PMIC
      ARM: i.MX: pfla02: set priority of da9063 watchdog

Lucas Stach (5):
      fb: reject enable request when framebuffer has no mode
      video: IPUv3-LDB: demote dual-channel message to info level
      video: tc358767: don't link AUX i2c adapter to parent OF node
      ARM: imx6sx: use correct clocks for GPT
      wdt: da9053: fix missed dev->hwdev conversion

Marc Ohlf (1):
      arm: imx6: don't reset PFDs that are used by periph_clk

Matthias Rabe (3):
      ARM: i.MX: phytec-som-imx: env: automount emmc if available
      ARM: i.MX: phytec-som-imx: env: add boot script for emmc
      ARM: i.MX: phytec-som-imx: env: add android boot options

Michael Grzeschik (1):
      usb: gadget: fastboot: fix barebox update without using buffer

Nikita Yushchenko (1):
      usbnet: increase bulk message timeout

Sascha Hauer (25):
      net: on ifup -a only detect devices when necessary
      clk: i.MX6: Adjust GPMI parent clock
      ARM: i.MX6: de-inline i.MX6 type detection
      ARM: i.MX6: factor out function to read si_rev
      ARM: i.MX6: Add cpu type for 'plus' variants
      clk: i.MX6: Fix enfc_sel for i.MX6dqp
      ARM: imx_v7_defconfig: enable da9063
      ARM: i.MX6: Make cpu_is_mx6xy() greppable
      dts: update to v4.17-rc1
      dts: update to v4.17-rc2
      dts: update to v4.17-rc3
      Merge branch 'for-next/aiodev'
      Merge branch 'for-next/arm'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/fb'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/imx-bootsource'
      Merge branch 'for-next/imx-reset-reason'
      Merge branch 'for-next/mfd-dialog'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/net'
      Merge branch 'for-next/serdev'
      Merge branch 'for-next/socfpga'
      Merge branch 'for-next/state'
      Release v2018.06.0

Stefan Christ (3):
      mfd: da9063: update Kconfig for DA9062
      ARM: i.MX: phytec-som-imx6: add boot device emmc
      ARM: i.MX: phytec-som-imx6: add phyCORE-i.MX6 Solo with 1GiB RAM

Stefan Riedmueller (6):
      ARM: dts: phyCORE-imx6: Add SPINOR env node
      ARM: dts: imx6: phyboard-mira: Add usb support
      ARM: dts: imx6: phyboard-mira: Enable usb host and usb otg port
      ARM: dts: imx6: phyboard-mira: Remove unecessary iomuxc subnode
      ARM: dts: phycore-imx6: Use generic jedec spi nor compatible
      ARM: i.MX: phytec-som-imx6: Change kernel boot image to zImage

Teresa Remmet (1):
      mtd: core: Fix printing partitions in hex

michael grassmann (1):
      ARM: i.MX: phyFLEX: Change Ram Timing for i.MX6 DualLite\Solo (400 MHz)

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
