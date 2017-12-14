Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ePP30-0004yR-Kd
 for barebox@lists.infradead.org; Thu, 14 Dec 2017 08:39:21 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.84_2)
 (envelope-from <sha@pengutronix.de>) id 1ePP2c-0006bL-0c
 for barebox@lists.infradead.org; Thu, 14 Dec 2017 09:38:54 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.84_2)
 (envelope-from <sha@pengutronix.de>) id 1ePP2b-0001Ij-Q7
 for barebox@lists.infradead.org; Thu, 14 Dec 2017 09:38:53 +0100
Date: Thu, 14 Dec 2017 09:38:53 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20171214083853.woaj44kpmwfqtwzi@pengutronix.de>
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
Subject: v2017.12.0
To: Barebox List <barebox@lists.infradead.org>

Hi All,

We have the last release for this year. It's a rather small one and
there is not much to say about it. One nice thing is that Uwe added
robust (against powercuts) update support for the eMMC boot partitions.
The nv command behaves a little more consistenly thanks to Enrico.

I will only sporadically be online until next year. I wish you all
a Merry Christmas and a Happy New Year.

Thanks
 Sascha

----------------------------------------------------------------
Andrey Smirnov (1):
      fs: Fix can_lseek_backward()

Daniel Schultz (11):
      ARM: boards: phytec-som-am335x: Add unified MLO
      ARM: dts: AM335x: Add state framework
      ARM: configs: am335x_defconfig: Add state config
      common: state: Add variable_type to state_variable
      common: state: Add variable type as enum
      common: state: Add function to read state MAC
      ARM: phytec-som-am335x: Set MAC addresses from state
      ARM: dts: AM335x: Add dummy i2c nodes
      common: oftree: Add autoenable functionality
      ARM: phytec-som-am335x: Add autoenable
      ARM: boards: phytec-som-am335x: Fix SPI boot script

Enrico Jorns (6):
      commands: nv: fail with verbose message if invoked without args
      commands: nv: call nvvar_print() only if no argument is given
      commands: nv: assure error code will be returned when an error occurr=
ed
      common: globvar: let nvvar_remove() report non-existing variable
      commands: nv: adjust command help
      command: nv: rewrap help text lines

Jean-Christophe PLAGNIOL-VILLARD (3):
      EFI: add poweroff support
      efi-gui: add USB IO Protocol GUID definition
      efi-block: detect when the block device is a USB Disk

Lucas Stach (3):
      ARM: imx: santaro: select i2c
      imx-bbu-nand-fcb: fix build on MX28 only
      usbgadget: fastboot: select FILE_LIST

Nikita Yushchenko (1):
      2d-primitives: fix typos in function names in comments

Oleksij Rempel (1):
      i.MX: esdhc: wait until SDSTB is asserted, not other way arround

Roland Hieber (1):
      ARM: dts: bcm2835-rpi: re-enable booting from SD card

Sascha Hauer (7):
      Merge branch 'for-next/efi'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/nv'
      Merge branch 'for-next/omap'
      common: globalvar: fix removing multiple nvvars with wildcards
      Release v2017.12.0

Ulrich =D6lmann (2):
      commands: i2c: do not restrict i2c_write's data to be hex-formatted
      commands: spi: do not restrict spi's data to be hex-formatted

Uwe Kleine-K=F6nig (4):
      ARM: i.MX: bbu-internal: make filename for device to write to adaptab=
le
      ARM: i.MX: bbu-internal: new handler to make use of mmc boot partitio=
ns
      ARM: i.MX: bbu-internal: update tqma6x to make use of new bbu handler
      usb: imx: implement support for "over-current-active-high" property

 Makefile                                           |   2 +-
 arch/arm/boards/phytec-som-am335x/Kconfig          |  13 ++
 arch/arm/boards/phytec-som-am335x/board.c          |  34 +++++
 .../defaultenv-physom-am335x/boot/spi              |   2 +-
 arch/arm/boards/phytec-som-am335x/lowlevel.c       | 150 +++++++++++++++++=
+---
 arch/arm/boards/tqma6x/board.c                     |   2 +-
 arch/arm/configs/am335x_defconfig                  |   3 +
 arch/arm/dts/am335x-phytec-phycore-som-emmc.dts    |   1 +
 .../dts/am335x-phytec-phycore-som-nand-no-spi.dts  |   1 +
 arch/arm/dts/am335x-phytec-phycore-som-nand.dts    |   1 +
 arch/arm/dts/am335x-phytec-phycore-som.dtsi        |  14 ++
 arch/arm/dts/am335x-phytec-state.dtsi              |  52 +++++++
 arch/arm/dts/bcm2835-rpi.dts                       |   8 ++
 arch/arm/dts/imx25.dtsi                            |   8 ++
 arch/arm/mach-imx/Kconfig                          |   2 +
 arch/arm/mach-imx/imx-bbu-internal.c               | 113 +++++++++++++---
 arch/arm/mach-imx/include/mach/bbu.h               |  10 ++
 arch/arm/mach-omap/Kconfig                         |   2 +
 arch/x86/configs/efi_defconfig                     |   1 +
 commands/i2c.c                                     |   2 +-
 commands/nv.c                                      |  45 ++++---
 commands/spi.c                                     |   2 +-
 common/efi-guid.c                                  |   1 +
 common/efi/efi.c                                   |  10 ++
 common/globalvar.c                                 |   5 +-
 common/imx-bbu-nand-fcb.c                          |  18 ++-
 common/oftree.c                                    |  89 ++++++++++++
 common/state/state.c                               |  23 +++-
 common/state/state.h                               |  17 ++-
 common/state/state_variables.c                     |  38 +++++-
 drivers/block/efi-block-io.c                       |  17 ++-
 drivers/efi/Kconfig                                |   1 +
 drivers/mci/imx-esdhc.c                            |   2 +-
 drivers/usb/gadget/Kconfig                         |   1 +
 drivers/usb/imx/chipidea-imx.c                     |   4 +
 images/Makefile.am33xx                             |  24 +---
 include/efi.h                                      |   3 +
 include/fs.h                                       |   2 +-
 include/of.h                                       |  14 ++
 include/state.h                                    |   2 +
 lib/gui/2d-primitives.c                            |   6 +-
 41 files changed, 652 insertions(+), 93 deletions(-)
 create mode 100644 arch/arm/boards/phytec-som-am335x/Kconfig
 create mode 100644 arch/arm/dts/am335x-phytec-state.dtsi
-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
