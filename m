Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1knfoY-0006L6-TK
 for barebox@lists.infradead.org; Fri, 11 Dec 2020 10:38:19 +0000
Date: Fri, 11 Dec 2020 11:38:17 +0100
Message-ID: <20201211103817.GY3977@pengutronix.de>
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
Subject: barebox-2020.12.0
To: Barebox List <barebox@lists.infradead.org>

Hi All,

I am happy to announce that I just released barebox-2020.12.0.

The biggest change this time is the update of the NAND layer to
Linux-5.9. With that we now have a chance to update the NAND drivers to
newer versions as well.
Otherwise we have the usual flow of smaller patches, see below for a
shortlog.

Have fun!
  Sascha

----------------------------------------------------------------
Ahmad Fatoum (15):
      doc: at91: delete done TODOs
      ARM: at91: define new at91_multi_defconfig
      kbuild: force compiler to assume two's complement
      Revert "common: ubsan: ignore shifting one into sign bit"
      commands: bootchooser: migrate menu entry to boot menu
      x86: configs: efi: enable some more useful options
      mci: stm32_sdmmc2: add support for SDMMC v2.0 as well
      nv: fix use-after-free when clearing from shell
      mtd: nand-imx: fix passing pointer of wrong type on NAND_CMD_READOOB
      doc: add note about characters like hyphens in variable names
      Documentation: state: clarify how to access state device parameters
      usb: gadget: fastboot: fix no longer accurate help text
      doc: bcm283x: fix mix up regarding SoC on raspberry pi zero
      usbgadget: autostart: don't print error on repeated nv.usbgadget.auto=
start=3D1
      sandbox: retire CONFIG_LINUX symbol in favor of CONFIG_SANDBOX

Alexander Shiyan (3):
      ARM: CCMX51: Add new module ID variant
      ARM: dts: imx6qdl: pfla02: Remove eeprom node
      i2c_probe: Use "read_byte" command for probing

Du Huanpeng (2):
      MIPS: ls1b: enable pbl support for ls1bdev board
      MIPS: dtb: remove unused variable ``root''

Lucas Stach (3):
      ddr: imx8m: correct the pwrctl setting of selfref_en
      ddr: imx8m: clean up entry points
      ddr: imx8m: add workaround for DDRPHY rank to rank issue

Michael Tretter (5):
      net: macb: reduce DEBUG output to make it more useful
      net: macb: adjust clk_tx rate for link speed changes
      net: macb: fix compiler warning for 64 bit systems
      ARM: mmu64: allow to disable null pointer trap on zero page
      uimage: disable zero page when loading to SDRAM at address 0x0

Peter Mamonov (1):
      commands: import memtester 4.3.0 from Debian GNU/Linux

Robin van der Gracht (1):
      nvmem: ocotp: fix fusing on fsl,imx6q-ocotp compatible boards

Roland Hieber (2):
      sandbox: remove MXS tools from hosttools_defconfig
      mxs: always build mxsimage and mxsboot tools

Rouven Czerwinski (1):
      of: base: ignore disabled memory nodes

Sascha Hauer (52):
      ARM: at91sam9263ek: Update NAND partitioning
      ARM: at91sam9x5ek: Update NAND partitioning
      ARM: at91: remove at91sam9263ek_defconfig
      ARM: at91: remove at91sam9x5ek_defconfig
      mtd: Drop asynchronous erase support
      mtd: nand: remove unused header file
      mtd: nand: drop unused erase_cmd hook
      mtd: nand: drop unused errstat hook
      mtd: nand: Pass struct nand_chip around
      mtd: Add underscore prefix to mtd hooks
      mtd: Use classdev->parent
      dts: update to v5.10-rc1
      dts: update to v5.10-rc2
      dts: update to v5.10-rc3
      mtd: rename class_dev to dev
      mtd: rename master to parent
      lib: Add match_string()
      mtd: nand: move function hooks to struct nand_legacy
      mtd: Add ecc_step_size
      mtd: nand: omap_gpmc: Drop unused variable
      mtd: nand: omap_gpmc: Fix wrong length check
      mtd: nand: omap_gpmc: Add missing bch16 string
      mtd: nand: denali: Drop multichip support
      mtd: nand: marvell: Use nand_to_mtd()
      mtd: nand: gpmi: Use nand_to_mtd()
      mtd: nand: orion: Use nand_to_mtd()
      mtd: nand: Update to Linux-5.9
      mtd: nand: denali: Update to Linux-5.9
      mtd: nand: atmel: Return number of bitflips
      mtd: nand: atmel: drop dead code
      mtd: nand: atmel: Fix pmecc ecc settings
      nand command: Print OOB information
      nand command: Allow offsets with [kM] suffixes
      Merge branch 'for-next/at91'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/imd-checksum'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/mips'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/mtd-nand'
      Merge branch 'for-next/sandbox'
      mtd: nand: Fix dependeny on CONFIG_NAND_BBT
      ARM: layerscape: ppa: Fix use after free
      ARM: nxp i.MX8MP evk: make locally used data static
      ARM: i.MX: esdctl: Add missing compatible
      common/Makefile: Fix dependency
      ubifs: remove wrong assertion
      mtd: nand: Allow non page aligned length writes
      nand: omap: Fix BCH16 read
      mtd: nand: Make write support optional
      ARM: am335x: Use xz compression for MLO
      Release v2020.12.0

Ulrich =D6lmann (3):
      bootstrap_read_devfs(): optionally inform the caller of the buffer si=
ze
      bootstrap_read_disk(): optionally inform the caller of the buffer size
      ARM: socfpga: xload: evaluate integrity of second stage barebox images

Uwe Kleine-K=F6nig (7):
      mfd: mc34704: fix register reading
      mtd: nand-imx: repair reading the oob area
      ARM: dts: imx6qdl: pfla02: document motivation for dropping supply
      net: Replace license and copyright boilerplate by SPDX identfiers
      imx: Fix copyright claim
      arm: imx: Convert mach headers to SPDX
      nfs: check return value of various rpc calls

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
