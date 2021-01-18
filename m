Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l1RpT-0006FU-3Q
 for barebox@lists.infradead.org; Mon, 18 Jan 2021 10:32:12 +0000
Date: Mon, 18 Jan 2021 11:32:09 +0100
Message-ID: <20210118103209.GQ19063@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
From: Sascha Hauer <sha@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: v2021.01.0
To: Barebox List <barebox@lists.infradead.org>

Hi All,

The first release for the new year is out: barebox-2021.01.0

This release brings us support for the qemu virt platform on ARM, thanks
Rouven. Furthermore there are several fixes for the updated NAND layer,
among other things different ECC modes and write support are now optional
again, so that the produced binaries are small enough again to compile
NAND boot for AM335x platforms. Ahmad has improved Raspberry Pi support
a bit: The RPi zero now has the UART support straight, so output should
appear on the right port. Apart from that there are several more fixes
and small improvements, see below.

Have Fun!
  Sascha

----------------------------------------------------------------
Ahmad Fatoum (36):
      fs: introduce unsetenv() to prepare for changing setenv(var, "") beha=
vior
      setenv: align with POSIX in handling of setenv(var, "")
      fb: sync enable device parameter with internal state
      bootm: adapt help text and naming for bootm.provide_machine_id
      boot: drop uneeded header #includes
      commands: boot: fix error code/clean up behavior when not booting
      commands: boot: display each list entry in a separate line
      commands: boot: include blspec path name in entry title
      clk: imx6: demote warning about ldb_di_clk reparenting
      ARM: at91: sama5d2: giantboard: fix typo in SPDX-License-Identifier
      common: dummy_malloc: remove unintended GPL2 eCos-exception-2.0
      LICENSES: exceptions: factor out eCos-exception-2.0 for GPL
      common: replace license statements with SPDX-License-Identifiers
      hush: remove non-functional code
      commands: nv: fix set/remove of multiple variables in one go
      commands: nv: pass empty string for nv
      commands: implement and use parse_assignment helper
      watchdog: implement watchdog_get_alias_id_from
      boot: introduce option to pass barebox-enabled watchdog to systemd
      usb: host: ehci: fix mismatch in format string
      commands: memtester: fix mismatched format string
      ARM: i.MX: add low level gpio helpers for i.MX8M
      ARM: i.MX8M: bbu: rename imx8mq_bbu_* functions to imx8m_bbu_*
      Revert "ARM: dts: bcm2835-rpi: re-enable booting from SD card"
      ARM: dts: rpi: drop unnecessary /chosen/stdout-path overrides
      ARM: rpi: make functions in rpi-common.c static
      ARM: rpi: move rpi_model_init() to postcore
      ARM: rpi: support raspberry pi 1 and zero mini-uart
      ARM: rpi: add new init function for Raspberry Pi Zero
      ARM: rpi: Add Raspberry Pi Zero W mini-uart support
      ARM: rpi: drop no longer needed environment
      ARM: rpi: fix model description string
      ARM: rpi: add new rpi boot target
      doc: bcm283x: document use of mini-uart on Raspberry Pi Zero W / CM3
      ARM: at91: at91sam9x5: fix co-existance of erratum-aware and generic =
reset
      Documentation: boards: sandbox: describe --image flags

Alexander Shiyan (2):
      ARM: dts: imx6qdl: pfla02: Use upstream som_flash node
      ARM: dts: imx6qdl: pfla02: Fix NAND offsets for partitions

Du Huanpeng (1):
      clk: ls1b200: add clk driver for loongson 1b

Lucas Stach (2):
      usb: imx: add support for setting power pin polarity on i.MX6/7
      usb: imx: get power pin polarity from DT

Michael Tretter (1):
      overlay: return error if target for firmware is missing

Oleksij Rempel (1):
      ARM i.MX6Q: fix network configuration for Protonic PRTI6G board

Robert Karszniewicz (1):
      ARM: i.MX: OCOTP: read serial number with correct endianness

Rouven Czerwinski (6):
      amba: add *_amba_driver helper macros
      ARM: vexpress: remove unused KConfig file
      ARM: vexpress: convert to board driver
      ARM: vexpress: move Options to ARCH_VEXPRESS
      ARM: qemu: add support for qemu virt platform
      ARM: vexpress: enable virt and vexpress boards

Sascha Hauer (35):
      ARM: nxp i.MX8MP evk: make locally used data static
      ARM: i.MX: esdctl: Add missing compatible
      usb: fastboot: Fix error path
      i.MX: HABv4: Improve HAB event printing
      mtd: Remove set but not used of_path
      of: Add no-op wrappers for of reproducible name functions
      of: partitions: export of_fixup_partitions
      mtd: Add hook to fix up kernel partitions
      mtd: nand: denali: cope with kernel device trees without chip subnodes
      dts: update to v5.10-rc4
      dts: update to v5.10-rc5
      dts: update to v5.10-rc6
      imd command: Bail out when crc generation/check fails
      imd command: Document verbose option
      mtd: nand: omap: print error when ELM config failed
      mtd: nand: omap: Bail out when omap_gpmc_eccmode() fails
      mtd: spi-nor: Make write support optional
      mtd: nand: Make support for syndrome hardware ecc optional
      mtd: nand: Make software ECC support optional
      spi: store names in struct spi_device_id as pointers
      dts: update to v5.10-rc7
      Merge branch 'for-next/arm-qemu'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/imd'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/mips'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/mtd'
      Merge branch 'for-next/rpi'
      Merge branch 'for-next/spdx'
      mtd:nand_mxs: Add missing include
      MIPS: ls1b200: move ls1b-clk.h to include/dt-bindings
      mtd: nand: fix NAND_ECC_HW mode
      startup: export PATH variable
      Release v2021.01.0

Steffen Trumtrar (3):
      image-sparse: change retlen to size_t
      image-sparse: change chunk_data_sz to u64
      imd: change disabled checksum tag info to debug

Uwe Kleine-K=F6nig (2):
      arm/lib: Replace license and copyright boilerplate by SPDX identifiers
      mci: Replace license and copyright boilerplate by SPDX identifiers

jameszxj (1):
      mtd:nand_mxs:update get/set features legacy function call

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
