Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cQrMl-000569-TK
 for barebox@lists.infradead.org; Tue, 10 Jan 2017 08:01:15 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.84_2)
 (envelope-from <sha@pengutronix.de>) id 1cQrMQ-0001HG-7V
 for barebox@lists.infradead.org; Tue, 10 Jan 2017 09:00:50 +0100
Received: from sha by pty.hi.pengutronix.de with local (Exim 4.84_2)
 (envelope-from <sha@pengutronix.de>) id 1cQrMQ-0008AZ-1l
 for barebox@lists.infradead.org; Tue, 10 Jan 2017 09:00:50 +0100
Date: Tue, 10 Jan 2017 09:00:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170110080050.d4zujhfqibg24n3p@pengutronix.de>
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
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: v2017.01.0
To: Barebox List <barebox@lists.infradead.org>

Hi All,

We have the first release for this year: barebox-v2017.01.0 is out.
Most notable this time is that we now have Freescale, ahem, NXP
Vybrid support and i.MX6ul support. I'd like to thanks Lucas here who
set up a randconfig builder and regularly sends compile fixes. Some
fixes for the more unusual configuration builds are from him.

After my parental leave I am now back to business as usual, so you can
expect faster reactions from me again.

Have fun!

Sascha

----------------------------------------------------------------
Alexander Kurz (2):
      mfd: mc13892: more descriptive charger register defines
      scripts imx-image: add DCD NOP command support

Andrey Smirnov (9):
      i.MX: Add primitive functions for VF610 family
      i.MX: Add register definitions for VF610 SoC
      i.MX: Add DEBUG_LL hooks for VF610
      i.MX: scripts: Add "vf610" soc to imx-image
      i.MX: Add support for VF610 Tower board
      pinctrl: Add provisions to control GPIO pin direction
      i.MX: Add pinctrl driver for VF610
      clk: Port clock dependency resolution code
      ARM: Fix a bug in stack's "top" initialization

Antony Pavlov (5):
      sandbox: drop unused header files
      of: fix typos
      sandbox: eliminate sdl_init()
      MIPS: drop redundant start_barebox() declaration
      command.h: drop unused Struct_Section attribute

Daniel Kr=FCger (1):
      ARM: i.MX25/35: Fix bootsource detection

Enrico Jorns (5):
      fs: squashfs: port lzo compression support from kernel
      fs: squashfs: port lz4 compression support from kernel
      fs: squashfs: port zlib compression support from kernel
      Add filetype and detection for squashfs images
      fs: squashfs: append linux rootarg for ubi volume

Ian Abbott (4):
      net/designware: Consecutive writes to the same register to be avoided
      net/designware: Do not select MIIPORT for RGMII interface
      net: designware: Respect "bus mode" register contents on SW reset
      net/designware: add explicit reset of {tx|rx}_currdescnum

Lucas Stach (13):
      net: e1000: set edev parent pointer
      PCI: add some useful debug output
      PCI: only check specific flag for 64bit BAR
      PCI: align address range before scanning bridge
      PCI: align BAR address to BAR size
      PCI: split PCI hierarchy enumeration and config from device registrat=
ion
      fs: squashfs: don't reference UBI symbols if UBI isn't compiled in
      arm64: disable PBL support
      net: e1000: don't try to register eeprom if MTD support is missing
      globalvar: select FNMATCH
      nvvar: add static inline dummy for nvvar_save
      devparam: add static inline dummy for dev_add_param_bitmask
      arm: pbl: rename linker script for uncompressed image data

Philipp Zabel (1):
      of: base: add chosen node if it does not exist when adding initrd

Renaud Barbier (1):
      ubifs: restore symlink support

Sascha Hauer (37):
      arch: refresh defconfigs
      dts: update to v4.9-rc1
      linux/list.h: Add missing include
      complete: Add completion for nv and globalvar commands
      state: pass error code instead of inventing new one
      state: driver: handle EPROBE_DEFER
      of_path: handle no driver for device
      state: Use dev_* for information rather than pr_*
      gen-dtb-s: Put compressed dtb in different section
      fs: squashfs: Enable squashfs XZ support when XZ is enabled
      dts: update to v4.9-rc2
      net: phy: micrel: Do not overwrite reserved bits
      serial: i.MX uart: Allow DTE mode in lowlevel code
      ARM: i.MX: OCOTP: Add functions to access fuses field wise
      ARM: i.MX: beginning i.MX6ul support
      ARM: i.MX6ul: Add clock support
      ARM: i.MX6 gpt: Add i.MX6ul support
      pinmux: imx-iomux-v3: Add i.MX6ul support
      serial: i.MX: Add i.MX6ul support
      ARM: i.MX: ocotp: Add i.MX6ul support
      ARM: i.MX6 esdctl: Add i.MX6ul support
      clk: add clock command completion
      Merge branch 'for-next/arm'
      Merge branch 'for-next/defconfig-update'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/mips'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/mvebu'
      Merge branch 'for-next/net'
      Merge branch 'for-next/pci'
      Merge branch 'for-next/socfpga'
      Merge branch 'for-next/squashfs'
      Merge branch 'for-next/state'
      Merge branch 'for-next/vybrid'
      scripts: mxsimage: Fix build with OpenSSL 1.1.x
      Release v2017.01.0

Stefan Lengfeld (4):
      state: use packed attribute for on storage structs
      state: fix indentation
      docs: state: make string variable type clearer
      commands: spi: fix chip select validation

Steffen Trumtrar (3):
      reset: import socfpga-reset driver from linux
      watchdog: add designware driver
      ARM: socfpga: dtsi: add dw-wdt reset lines

Teresa Remmet (1):
      ARM: dts: am33xx.dtsi: Add spi aliases

Uwe Kleine-K=F6nig (4):
      spi: mvebu: make more than one device on a bus work
      pinctrl: mvebu: sync mpp names to Linux 4.9-rc1
      pinctrl: mvebu: fix a comment about mv78460
      spi: mvebu: fix baudrate selection for Armada 370/XP

Yegor Yefremov (3):
      ubi: fix spelling
      arm: Baltos: setup MPU PLL to run at 600MHz
      arm: Baltos: don't invoke baltos_read_eeprom in MLO

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
