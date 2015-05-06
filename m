Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YptT2-0006tM-VN
 for barebox@lists.infradead.org; Wed, 06 May 2015 07:10:07 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0]
 ident=Debian-exim)
 by metis.ext.pengutronix.de with esmtps (TLS1.2:DHE_RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <sha@pengutronix.de>) id 1YptSg-0006NX-RU
 for barebox@lists.infradead.org; Wed, 06 May 2015 09:09:42 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1YptSg-0001vd-DZ
 for barebox@lists.infradead.org; Wed, 06 May 2015 09:09:42 +0200
Date: Wed, 6 May 2015 09:09:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150506070942.GD6325@pengutronix.de>
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
Subject: v2015.05.0
To: Barebox List <barebox@lists.infradead.org>

Another month has passed, here's another release. Most notable this time
is Jean-Christophes work in the crypto area which is a good step towards
future secure boot support. Also worth mentioning is the merge of the
state framework which is used internally here for some time. The state
framework allows to store values in EEPROMs and such. Unlike general
nv variables these values are stored redundantly and are described in
the device tree. The binary format is very compact. These features make
the state framework suitable for small but valuable informations like
the current boot state for redundance boot scenarios.

Sascha

----------------------------------------------------------------
Antony Pavlov (3):
      toshiba_ac100: board.c: drop unused headers
      command: hashsum: Conding style fixup
      net: e1000: add HAS_DMA dependency

Bo Shen (1):
      ARM: atmel: sama5d4_xplained: switch to env2

Jan Luebbe (1):
      duckbill: fix PBL debug prefix

Jean-Christophe PLAGNIOL-VILLARD (28):
      digest: move digest.c to crypto
      digest: introduce digest_{init/update/final/length}
      digest: make it multi-instance
      crypto: add sha384 & sha512 support
      command: add sha384sum and sha512sum support
      password: add support for sha512
      digest: add HMAC support for md5, sha1, sha224, sha256, sha384, sha512
      command: add hmac sum supportfor md5, sha1, sha224, sha256, sha384, s=
ha512
      crypto: digest: digest_file_window: check every digest_xxx return
      crypto: digest: digest_file_window/digest_file/digest_file_by_name dr=
op key params
      digest: add verify callback
      digest: add digest callback
      crypto: hmac: use digest_digest and check the return of every digest_=
xxx
      crypto: add pbkdf2 hmac key generator
      command: allow runtime usage
      command: rename digest.c to hashsum.c
      command: add generic digest command
      crypto: digest: speficied when a digest need a key to be used
      password: add pbkdf2 support
      command: digest/hashsum: set key at command level
      digest: allow algo to specify their length at runtime
      crypto: prepare to allow multiple digest driver
      crypto: hmac: move register to hmac
      crypto: sha1: switch to linux implementation
      crypto: sha256: switch to linux implementation
      crypto: sha512: switch to linux implementation
      arm: crypto: add sha1 assembly support
      arm: crypto: add sha256 assembly support

Lucas Stach (5):
      images: move board variable to parent makefile
      images: fix Tegra out-of-tree build
      ARM: highbank: select OFTREE
      PCI: register and active bridge device before proceeding to scan
      PCI: fill in bus primary field

Marc Kleine-Budde (8):
      images: mxs: remove not used PREP_ definitions
      commands: dmesg: fi format security warning
      imx-image: add_header_v2(): replace hardcoded 0x400 by offset paramet=
er
      imx-image: replace 0x400 by FLASH_HEADER_OFFSET
      imx-image: introduce HEADER_LEN and replace several 0x1000 and 4096
      imx-image: mx35: increase load image size, due to dobule header
      imx-image: main: make use of round_up instead of open coding it
      imx-image: pad generated image to 4k

Markus Pargmann (2):
      wdog: imx-wd: Introduce ops struct for imx21/imx1
      wdog: imx-wd: Disable watchdog powerdown counter

Mirko Damiani (1):
      net: ping: return an error exit code when connection fails

Robert Jarzmik (2):
      net: smc1111: add a quirk for pxa pxa27x platforms
      ARM: pxa: add mainstone board support

Sascha Hauer (35):
      state: add framework for persistent state handling
      crypto: digest: Make string arguments const
      crypto: digest: Fix coding style
      driver: fix device remove order
      driver: Call remove function only when available
      driver: Call bus->remove instead of driver->remove
      pci: Use standard pr_debug
      pci: fix copy-paste bug
      pci: pci_regs.h: Sync with Linux
      pci: Add pcie-designware driver
      ARM: i.MX: Add imx_clk_gate_exclusive
      ARM: i.MX6: Add PCI clocks
      pci: Add i.MX6 pcie support
      lib: Add hex2bin and bin2hex implementations
      ARM: i.MX6: ocotp: remove useless code
      ARM: Add ELTEC HiPerCam board support
      net: Add Intel e1000 driver
      dts: update to v4.0-rc2
      dts: update to v4.0-rc3
      dts: update to v4.0-rc4
      dts: update to v4.0-rc6
      .mailmap: Fix Juergens name
      Merge branch 'for-next/at91'
      Merge branch 'for-next/crypto'
      Merge branch 'for-next/driver'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/net'
      Merge branch 'for-next/pci'
      Merge branch 'for-next/pxa'
      Merge branch 'for-next/state'
      mtd: partition: Fix OF partition fixup
      net: phy: Do not double remove phy device
      Release v2015.05.0

Sebastian Hesselbarth (1):
      USB: xHCI: Sync non-coherent DMA buffers

Steffen Trumtrar (1):
      ARM/MXS/i.MX28: recognize watchdog reset

Teresa G=E1mez (1):
      ARM: phytec-som-am335x: Remove bootargs-ip from boot scripts

 .mailmap                                           |    2 +-
 .../devicetree/bindings/barebox/barebox,state.rst  |  107 +
 Makefile                                           |    2 +-
 arch/arm/Makefile                                  |    1 +
 arch/arm/boards/Makefile                           |    2 +
 arch/arm/boards/duckbill/lowlevel.c                |    2 +-
 arch/arm/boards/eltec-hipercam/Makefile            |    2 +
 arch/arm/boards/eltec-hipercam/board.c             |   31 +
 .../flash-header-eltec-hipercam.imxcfg             |  105 +
 arch/arm/boards/eltec-hipercam/lowlevel.c          |   56 +
 arch/arm/boards/mainstone/Makefile                 |    2 +
 arch/arm/boards/mainstone/board.c                  |  134 +
 arch/arm/boards/mainstone/env/boot/nor-ubi         |    5 +
 arch/arm/boards/mainstone/env/init/mtdparts-nor    |   11 +
 .../boards/mainstone/env/nv/linux.bootargs.console |    1 +
 arch/arm/boards/mainstone/lowlevel.c               |  264 ++
 .../defaultenv-physom-am335x/boot/mmc              |    2 -
 .../defaultenv-physom-am335x/boot/nand             |    2 -
 .../defaultenv-physom-am335x/boot/spi              |    2 -
 arch/arm/boards/sama5d4_xplained/env/boot/mmc      |    8 +
 arch/arm/boards/sama5d4_xplained/env/boot/nand     |    8 +
 arch/arm/boards/sama5d4_xplained/env/config        |   42 -
 .../arm/boards/sama5d4_xplained/env/init/automount |    5 +
 .../boards/sama5d4_xplained/env/init/mtdparts-nand |    6 +
 .../env/{bin/init_board =3D> init/splash}            |    0
 .../boards/sama5d4_xplained/env/nv/boot.default    |    1 +
 .../sama5d4_xplained/env/nv/linux.bootargs.console |    1 +
 arch/arm/boards/toshiba-ac100/board.c              |    4 -
 arch/arm/configs/at91rm9200ek_defconfig            |    4 +-
 arch/arm/configs/highbank_defconfig                |    4 +-
 arch/arm/configs/imx_v7_defconfig                  |    1 +
 arch/arm/configs/mainstone_defconfig               |  109 +
 arch/arm/configs/mioa701_defconfig                 |    2 +-
 arch/arm/configs/module-mb7707_defconfig           |    4 +-
 arch/arm/configs/nhk8815_defconfig                 |    2 +-
 arch/arm/configs/phytec-phycard-omap3_defconfig    |    6 +-
 arch/arm/configs/rpi_defconfig                     |    4 +-
 arch/arm/configs/sama5d4_xplained_defconfig        |    5 +-
 arch/arm/configs/versatilepb_arm1176_defconfig     |    4 +-
 arch/arm/configs/versatilepb_defconfig             |    4 +-
 arch/arm/configs/vexpress_ca9_defconfig            |    4 +-
 arch/arm/configs/vexpress_defconfig                |    4 +-
 arch/arm/configs/virt2real_defconfig               |    4 +-
 arch/arm/configs/zylonite310_defconfig             |    2 +-
 arch/arm/crypto/Makefile                           |   17 +
 arch/arm/crypto/sha1-armv4-large.S                 |  497 +++
 arch/arm/crypto/sha1_glue.c                        |  137 +
 arch/arm/crypto/sha256-armv4.pl                    |  717 ++++
 arch/arm/crypto/sha256-core.S_shipped              | 2779 ++++++++++++
 arch/arm/crypto/sha256_glue.c                      |  213 +
 arch/arm/crypto/sha256_glue.h                      |   23 +
 arch/arm/dts/Makefile                              |    1 +
 arch/arm/dts/imx6dl-eltec-hipercam.dts             |  324 ++
 arch/arm/mach-at91/Kconfig                         |    1 +
 arch/arm/mach-highbank/Kconfig                     |    1 +
 arch/arm/mach-imx/Kconfig                          |    5 +
 arch/arm/mach-imx/Makefile                         |    2 +-
 arch/arm/mach-imx/clk-gate-exclusive.c             |  103 +
 arch/arm/mach-imx/clk-imx6.c                       |   29 +
 arch/arm/mach-imx/clk.h                            |    3 +
 arch/arm/mach-imx/ocotp.c                          |    2 -
 arch/arm/mach-pxa/Kconfig                          |    5 +
 arch/efi/efi/efi-device.c                          |    3 +-
 arch/mips/configs/img-ci20_defconfig               |    6 +-
 arch/mips/configs/ritmix-rzx50_defconfig           |    6 +-
 arch/mips/configs/tplink-mr3020_defconfig          |    4 +-
 commands/Kconfig                                   |   51 +-
 commands/Makefile                                  |    4 +-
 commands/digest.c                                  |  228 +-
 commands/dmesg.c                                   |    2 +-
 commands/hashsum.c                                 |  194 +
 commands/internal.h                                |    2 +
 commands/state.c                                   |   77 +
 common/Kconfig                                     |   15 +
 common/Makefile                                    |    2 +-
 common/command.c                                   |    2 +
 common/digest.c                                    |  174 -
 common/password.c                                  |   99 +-
 common/state.c                                     | 1198 ++++++
 crypto/Kconfig                                     |   65 +-
 crypto/Makefile                                    |   14 +-
 crypto/digest.c                                    |  282 ++
 crypto/hmac.c                                      |  199 +
 crypto/md5.c                                       |   43 +-
 crypto/pbkdf2.c                                    |   94 +
 crypto/sha1.c                                      |  543 ++-
 crypto/sha2.c                                      |  610 +--
 crypto/sha4.c                                      |  293 ++
 drivers/base/driver.c                              |    9 +-
 drivers/base/platform.c                            |    3 +-
 drivers/i2c/i2c.c                                  |    3 +-
 drivers/misc/Kconfig                               |    4 +
 drivers/misc/Makefile                              |    1 +
 drivers/misc/state.c                               |   81 +
 drivers/mtd/core.c                                 |    4 +-
 drivers/net/Kconfig                                |    9 +
 drivers/net/Makefile                               |    1 +
 drivers/net/e1000.c                                | 4455 ++++++++++++++++=
++++
 drivers/net/e1000.h                                | 2093 +++++++++
 drivers/net/phy/mdio_bus.c                         |    2 +
 drivers/net/smc91111.c                             |   29 +
 drivers/pci/Kconfig                                |   10 +
 drivers/pci/Makefile                               |    2 +
 drivers/pci/bus.c                                  |    3 +-
 drivers/pci/pci-imx6.c                             |  612 +++
 drivers/pci/pci.c                                  |   45 +-
 drivers/pci/pcie-designware.c                      |  564 +++
 drivers/pci/pcie-designware.h                      |   71 +
 drivers/spi/spi.c                                  |    3 +-
 drivers/usb/host/xhci-hcd.c                        |   23 +-
 drivers/w1/w1.c                                    |    3 +-
 drivers/watchdog/im28wd.c                          |    7 +
 drivers/watchdog/imxwd.c                           |   61 +-
 dts/Bindings/arm/exynos/power_domain.txt           |    2 +
 dts/Bindings/arm/sti.txt                           |    4 +
 dts/Bindings/i2c/i2c-imx.txt                       |    1 +
 dts/Bindings/net/amd-xgbe-phy.txt                  |    4 +
 dts/Bindings/net/apm-xgene-enet.txt                |    5 +-
 dts/Bindings/power/power_domain.txt                |   29 +
 dts/Bindings/serial/{of-serial.txt =3D> 8250.txt}    |    0
 dts/Bindings/serial/axis,etraxfs-uart.txt          |   19 +
 dts/Bindings/serial/snps-dw-apb-uart.txt           |   16 +
 dts/Bindings/submitting-patches.txt                |    3 +
 dts/Bindings/vendor-prefixes.txt                   |    2 +
 dts/Bindings/watchdog/atmel-wdt.txt                |    5 +
 dts/include/dt-bindings/pinctrl/am33xx.h           |    3 +-
 dts/include/dt-bindings/pinctrl/am43xx.h           |    3 +-
 dts/src/arm/am335x-bone-common.dtsi                |    9 +
 dts/src/arm/am335x-bone.dts                        |    8 -
 dts/src/arm/am335x-lxm.dts                         |    4 +
 dts/src/arm/am33xx-clocks.dtsi                     |    6 +-
 dts/src/arm/am437x-idk-evm.dts                     |   25 +-
 dts/src/arm/am43xx-clocks.dtsi                     |   12 +-
 dts/src/arm/am57xx-beagle-x15.dts                  |    8 -
 dts/src/arm/at91sam9260.dtsi                       |    7 +-
 dts/src/arm/at91sam9261.dtsi                       |    9 +-
 dts/src/arm/at91sam9263.dtsi                       |    5 +-
 dts/src/arm/at91sam9g45.dtsi                       |    3 +-
 dts/src/arm/at91sam9n12.dtsi                       |    1 -
 dts/src/arm/at91sam9x5.dtsi                        |    5 +-
 dts/src/arm/dm8168-evm.dts                         |   44 +
 dts/src/arm/dm816x.dtsi                            |   52 +-
 dts/src/arm/dra7-evm.dts                           |   18 +-
 dts/src/arm/dra7.dtsi                              |   10 +-
 dts/src/arm/dra72-evm.dts                          |   18 +-
 dts/src/arm/dra7xx-clocks.dtsi                     |   90 +-
 dts/src/arm/exynos3250.dtsi                        |    2 +
 dts/src/arm/exynos4-cpu-thermal.dtsi               |   52 +
 dts/src/arm/exynos4.dtsi                           |   45 +
 dts/src/arm/exynos4210-trats.dts                   |   19 +
 dts/src/arm/exynos4210-universal_c210.dts          |   57 +
 dts/src/arm/exynos4210.dtsi                        |   38 +-
 dts/src/arm/exynos4212.dtsi                        |    5 +-
 dts/src/arm/exynos4412-odroid-common.dtsi          |   64 +
 dts/src/arm/exynos4412-tmu-sensor-conf.dtsi        |   24 +
 dts/src/arm/exynos4412-trats2.dts                  |   15 +
 dts/src/arm/exynos4412.dtsi                        |    5 +-
 dts/src/arm/exynos4x12.dtsi                        |   12 +
 dts/src/arm/exynos5250.dtsi                        |   44 +-
 dts/src/arm/exynos5420-trip-points.dtsi            |   35 +
 dts/src/arm/exynos5420.dtsi                        |   33 +-
 dts/src/arm/exynos5440-tmu-sensor-conf.dtsi        |   24 +
 dts/src/arm/exynos5440-trip-points.dtsi            |   25 +
 dts/src/arm/exynos5440.dtsi                        |   18 +
 dts/src/arm/imx6qdl-sabresd.dtsi                   |    2 +
 dts/src/arm/imx6sl-evk.dts                         |    2 +
 dts/src/arm/omap2.dtsi                             |    4 +-
 dts/src/arm/omap3-n900.dts                         |    9 +-
 dts/src/arm/omap3.dtsi                             |    8 +-
 dts/src/arm/omap4.dtsi                             |    4 +-
 dts/src/arm/omap5-core-thermal.dtsi                |    2 +-
 dts/src/arm/omap5-gpu-thermal.dtsi                 |    2 +-
 dts/src/arm/omap5.dtsi                             |   12 +-
 dts/src/arm/omap54xx-clocks.dtsi                   |   41 +-
 dts/src/arm/rk3288.dtsi                            |    1 +
 dts/src/arm/sama5d3.dtsi                           |    3 +-
 dts/src/arm/sama5d4.dtsi                           |    9 +-
 dts/src/arm/socfpga.dtsi                           |    8 +-
 dts/src/arm/sun4i-a10-olinuxino-lime.dts           |   16 +
 dts/src/arm/sun4i-a10.dtsi                         |    3 +-
 dts/src/arm/sun5i-a13.dtsi                         |    3 +-
 dts/src/arm/sun7i-a20.dtsi                         |    3 +-
 dts/src/arm64/apm/apm-storm.dtsi                   |    4 +-
 dts/src/arm64/arm/foundation-v8.dts                |    8 +
 dts/src/arm64/arm/juno-clocks.dtsi                 |    2 +-
 dts/src/arm64/arm/juno.dts                         |   14 +
 dts/src/arm64/arm/rtsm_ve-aemv8a.dts               |    8 +
 images/Makefile                                    |    3 +
 images/Makefile.imx                                |    7 +-
 images/Makefile.mvebu                              |    2 -
 images/Makefile.mxs                                |    5 -
 images/Makefile.rockchip                           |    2 -
 images/Makefile.tegra                              |   18 +-
 include/asm-generic/barebox.lds.h                  |    3 +-
 include/command.h                                  |    3 +
 include/crypto/internal.h                          |    9 +
 include/crypto/pbkdf2.h                            |   23 +
 include/crypto/sha.h                               |   95 +
 include/digest.h                                   |  102 +-
 include/init.h                                     |    3 +-
 include/linux/pci_regs.h                           |  769 ++++
 include/mfd/imx6q-iomuxc-gpr.h                     |    8 +
 include/net/smc91111.h                             |    1 +
 include/state.h                                    |   21 +
 net/ping.c                                         |    6 +-
 scripts/imx/imx-image.c                            |   43 +-
 206 files changed, 19103 insertions(+), 1273 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/barebox/barebox,state=
.rst
 create mode 100644 arch/arm/boards/eltec-hipercam/Makefile
 create mode 100644 arch/arm/boards/eltec-hipercam/board.c
 create mode 100644 arch/arm/boards/eltec-hipercam/flash-header-eltec-hiper=
cam.imxcfg
 create mode 100644 arch/arm/boards/eltec-hipercam/lowlevel.c
 create mode 100644 arch/arm/boards/mainstone/Makefile
 create mode 100644 arch/arm/boards/mainstone/board.c
 create mode 100644 arch/arm/boards/mainstone/env/boot/nor-ubi
 create mode 100644 arch/arm/boards/mainstone/env/init/mtdparts-nor
 create mode 100644 arch/arm/boards/mainstone/env/nv/linux.bootargs.console
 create mode 100644 arch/arm/boards/mainstone/lowlevel.c
 create mode 100644 arch/arm/boards/sama5d4_xplained/env/boot/mmc
 create mode 100644 arch/arm/boards/sama5d4_xplained/env/boot/nand
 delete mode 100644 arch/arm/boards/sama5d4_xplained/env/config
 create mode 100644 arch/arm/boards/sama5d4_xplained/env/init/automount
 create mode 100644 arch/arm/boards/sama5d4_xplained/env/init/mtdparts-nand
 rename arch/arm/boards/sama5d4_xplained/env/{bin/init_board =3D> init/spla=
sh} (100%)
 create mode 100644 arch/arm/boards/sama5d4_xplained/env/nv/boot.default
 create mode 100644 arch/arm/boards/sama5d4_xplained/env/nv/linux.bootargs.=
console
 create mode 100644 arch/arm/configs/mainstone_defconfig
 create mode 100644 arch/arm/crypto/Makefile
 create mode 100644 arch/arm/crypto/sha1-armv4-large.S
 create mode 100644 arch/arm/crypto/sha1_glue.c
 create mode 100644 arch/arm/crypto/sha256-armv4.pl
 create mode 100644 arch/arm/crypto/sha256-core.S_shipped
 create mode 100644 arch/arm/crypto/sha256_glue.c
 create mode 100644 arch/arm/crypto/sha256_glue.h
 create mode 100644 arch/arm/dts/imx6dl-eltec-hipercam.dts
 create mode 100644 arch/arm/mach-imx/clk-gate-exclusive.c
 create mode 100644 commands/hashsum.c
 create mode 100644 commands/internal.h
 create mode 100644 commands/state.c
 delete mode 100644 common/digest.c
 create mode 100644 common/state.c
 create mode 100644 crypto/digest.c
 create mode 100644 crypto/hmac.c
 create mode 100644 crypto/pbkdf2.c
 create mode 100644 crypto/sha4.c
 create mode 100644 drivers/misc/state.c
 create mode 100644 drivers/net/e1000.c
 create mode 100644 drivers/net/e1000.h
 create mode 100644 drivers/pci/pci-imx6.c
 create mode 100644 drivers/pci/pcie-designware.c
 create mode 100644 drivers/pci/pcie-designware.h
 rename dts/Bindings/serial/{of-serial.txt =3D> 8250.txt} (100%)
 create mode 100644 dts/Bindings/serial/axis,etraxfs-uart.txt
 create mode 100644 dts/src/arm/exynos4-cpu-thermal.dtsi
 create mode 100644 dts/src/arm/exynos4412-tmu-sensor-conf.dtsi
 create mode 100644 dts/src/arm/exynos5420-trip-points.dtsi
 create mode 100644 dts/src/arm/exynos5440-tmu-sensor-conf.dtsi
 create mode 100644 dts/src/arm/exynos5440-trip-points.dtsi
 create mode 100644 include/crypto/internal.h
 create mode 100644 include/crypto/pbkdf2.h
 create mode 100644 include/crypto/sha.h
 create mode 100644 include/state.h
-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
