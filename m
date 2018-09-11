Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fzcMF-000656-DQ
 for barebox@lists.infradead.org; Tue, 11 Sep 2018 06:41:10 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <sha@pengutronix.de>) id 1fzcM3-00018E-Px
 for barebox@lists.infradead.org; Tue, 11 Sep 2018 08:40:55 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <sha@pengutronix.de>) id 1fzcM3-0007XQ-HY
 for barebox@lists.infradead.org; Tue, 11 Sep 2018 08:40:55 +0200
Date: Tue, 11 Sep 2018 08:40:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180911064055.xrd2kesuxkyxrlpd@pengutronix.de>
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
Subject: v2018.09.0
To: Barebox List <barebox@lists.infradead.org>

Hi All,

I just released v2018.09.0.

The big change in this release is the switch to the dentry cache
implementation. With this we now can cache filesystem lookups and don't
have to repeat them over and over again. This significantly speeds up
file lookups on filesystems supporting new implementation. The more
important filesystems are ported over with FAT being an exception.

Andrey has continued his quest to make the i.MX8MQ work with barebox. We
now support loading the ATF bl31 blob.

Several other small changes went into this release, but see below.

Sascha


----------------------------------------------------------------
Aleksander Morgado (1):
      bbremote: add missing 'md' packet handler

Andrey Smirnov (25):
      ARM: nxp-imx8mq-evk: Update DDR initialization code
      ARM: Add code to support SMCCC on AArch64
      ARM: i.MX8MQ: Configure cntfrq only in EL3
      ARM: i.MX8MQ: Add code to load BL31 ATF blob
      ARM: i.MX: fimware: Add pre-built BL31 ATF blob
      ARM: i.MX: Move i.MX header definitions to mach-imx
      ARM: i.MX: xload-esdhc: Make use of <mach/imx-header.h>
      ARM: i.MX: xload-esdhc: Allow placing image to align its entry point
      ARM: nxp-imx8mq-evk: Add code to load ATF BL31 blob
      ARM: i.MX8MQ: Query and display ATF fimware hash if available
      ARM: nxp-imx8mq-evk: Add bootflow comments
      firmware: Fix copy-paste comment mistake
      net: eth: Make use of ETH_ALEN
      ARM: VFxxx: zii-vf610-dev: Add newline before error banner
      ARM: VFxxx: zii-vf610-dev: Make get_sytem_type() static
      ARM: i.MX: freescale-mx6sx-sabresdb: Make ar8031_phy_fixup static
      i.MX: i2c: Fix build error in debug output code
      i.MX: Select DRIVER_SPI_IMX_2_3 for i.MX8MQ
      pinctrl: i.MX: Add code to parse "input-enable"
      ARM: i.MX8M: Expose code to query cpu revision
      ARM: i.MX: boot: Fix accidental comma
      ARM: i.MX: boot: Rework boot source detection for i.MX7 and i.MX8MQ
      ARM: i.MX8MQ: Replace magic numbers with named constants
      ARM: i.MX8MQ: Add code to detect reset reason
      ARM: i.MX8MQ: Save boot location during initialization

Enrico Jorns (1):
      bootm: allow booting SoCFPGA prebootloader image

Eugen Wiens (1):
      imx_thermal: Fixed missing dependency for the IMX_THERMAL config

Fabio Estevam (2):
      Documentation: imx8mq-evk: Fix typo
      mx5: Implement Spectre v2 workaround for Cortex-A8

Lucas Stach (4):
      PCI: link PCI devices with potentially existing OF nodes
      pci: add quirk infrastructure
      ARM: imx6: gw54xx: add fixup for PCIe switch
      mci: imx-esdhc: send required clock pulses to card on init

Oleg.Karfich@wago.com (1):
      commands: of_property: copy value instead of resizing

Roland Hieber (6):
      Documentation: don't highlight literal blocks as shell script
      ARM: i.MX: HAB: fix missing include for EPERM
      ARM: i.MX: OCOTP: fix missing include for uint32_t etc.
      gpio: fix missing includes for bool and struct list_head
      FIT: be more verbose when RSA signature check fails
      Documentation: fix code block and literal block highlighting

Sascha Hauer (34):
      fs: dentry cache implementation
      fs: ramfs: Switch to dentry cache implementation
      fs: devfs: Switch to dentry cache implementation
      fs: ext4: Switch to dentry cache implementation
      fs: ubifs: Switch to dentry cache implementation
      fs: nfs: Switch to dentry cache implementation
      fs: tftp: Switch to dentry cache implementation
      fs: cramfs: Switch to dentry cache implementation
      fs: squashfs: Switch to dentry cache implementation
      block: Adjust cache sizes
      ARM: i.MX: fix compilation with BBU disabled
      aiodev: Fix whitespaces in Kconfig
      fs: ramfs: get chunks zero initialized
      dts: update to v4.18-rc3
      dts: update to v4.18-rc4
      dts: update to v4.18-rc5
      dts: update to v4.18-rc6
      dts: update to v4.18-rc7
      Merge branch 'for-next/dts'
      Merge branch 'for-next/fs-dentry-cache'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/memcmds'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/pci'
      Merge branch 'for-next/socfpga'
      Merge branch 'for-next/state'
      ARM: MMU: fix wrong dma_flush_range in arm_create_pte()
      fs: tftp: overhaul debugging
      fs: tftp: fix memory hole
      fs: tftp: fix return value
      fs: tftp: hide files which are actually not present on the server
      fs: tftp: improve file size handling
      fs: tftp: Use pr_debug for errors
      Release v2018.09.0

Steffen Trumtrar (18):
      reset: socfpga: add missing driver name
      mci: dw_mmc: remove device_d pointer
      mci: dw_mmc: convert to BIT() macro
      mci: dw: move defines to headerfile
      ARM: socfpga: arria10: move debug_ll to common code
      ARM: socfpga: arria10: add ocram base address
      ARM: socfpga: add SMP_TWD_ADDR for Arria10
      ARM: socfpga: arria10-init: split pinsetup
      ARM: socfpga: arria10: set default TEXTBASE
      ARM: socfpga: arria10: fix SDMMC phase shift
      ARM: socfpga: achilles: update handoff files
      ARM: dts: socfpga: Fix achilles dtc warnings
      scripts: socfpga_mkimage: add size feature for PBL barebox
      ARM: socfpga: arria10-reset-manager: don't reset bootsource
      ARM: socfpga: Arria10: support programming FPGA in PBL
      ARM: socfpga: achilles: convert to PBL barebox
      ARM: arria10: update defconfig
      ARM: socfpga: achilles: move environment to raw partition

Teresa Remmet (1):
      arm: mach-omap: bbu_emmc: Fix return value

Ulrich =D6lmann (3):
      Documentation: state: harmonize capitalization in headings
      Documentation: state: fix typos
      Documentation: state: add unit name to state variable in DT

Uwe Kleine-K=F6nig (6):
      net/e1000: allow to overwrite flash size from device tree
      of_node: clarify help text and do stricter commandline parsing
      mci: s3c: fix providing info callback
      libfile: open_and_lseek: don't imply O_RDONLY
      libfile: open_and_lseek: enlarge small files enough to make lseek pos=
sible
      commands: teach commands that write to files to also create them

 Documentation/boards/imx.rst                       |    8 +-
 Documentation/boards/imx/amazon-kindle-3.rst       |    6 +-
 Documentation/boards/imx/garz-fricke-vincell.rst   |    4 +-
 Documentation/boards/imx/nxp-imx8mq-evk.rst        |    4 +-
 Documentation/boards/imx/phytec-phycore-i.mx31.rst |    8 +-
 Documentation/boards/mips/dlink-dir-320.rst        |    4 +-
 Documentation/boards/mips/qemu-malta.rst           |   16 +-
 Documentation/boards/mvebu.rst                     |    4 +-
 Documentation/boards/mxs/Chumby-Falconwing.rst     |    8 +-
 Documentation/boards/mxs/Freescale-i.MX23-evk.rst  |    8 +-
 Documentation/boards/mxs/KaRo-TX28.rst             |    8 +-
 Documentation/boards/mxs/Olimex-olinuxino.rst      |    8 +-
 Documentation/boards/omap.rst                      |    4 +-
 Documentation/boards/openrisc.rst                  |    8 +-
 Documentation/boards/s3c/Digi-a9m2440.rst          |    8 +-
 Documentation/boards/sandbox.rst                   |    6 +-
 Documentation/boards/socfpga.rst                   |   24 +-
 Documentation/boards/x86.rst                       |    3 +-
 Documentation/conf.py                              |    2 +-
 Documentation/filesystems/fat.rst                  |    4 +-
 Documentation/filesystems/nfs.rst                  |    8 +-
 Documentation/filesystems/pstore.rst               |    2 +-
 Documentation/filesystems/ramfs.rst                |    4 +-
 Documentation/filesystems/smhfs.rst                |    4 +-
 Documentation/filesystems/squashfs.rst             |    4 +-
 Documentation/filesystems/tftp.rst                 |    4 +-
 Documentation/user/automount.rst                   |   12 +-
 Documentation/user/barebox.rst                     |    4 +-
 Documentation/user/defaultenv-2.rst                |    4 +-
 Documentation/user/driver-model.rst                |   20 +-
 Documentation/user/hush.rst                        |   24 +-
 Documentation/user/memory-areas.rst                |    8 +-
 Documentation/user/state.rst                       |   86 +-
 Documentation/user/system-setup.rst                |   12 +-
 Documentation/user/updating.rst                    |    8 +-
 Documentation/user/variables.rst                   |   14 +-
 Makefile                                           |    2 +-
 arch/arm/Kconfig                                   |    8 +-
 arch/arm/boards/freescale-mx6sx-sabresdb/board.c   |    2 +-
 arch/arm/boards/gateworks-ventana/board.c          |   29 +
 arch/arm/boards/nxp-imx8mq-evk/ddr_init.c          |  120 +-
 arch/arm/boards/nxp-imx8mq-evk/ddrphy_train.c      |  219 +-
 arch/arm/boards/nxp-imx8mq-evk/lowlevel.c          |   50 +-
 arch/arm/boards/reflex-achilles/Makefile           |    4 +-
 arch/arm/boards/reflex-achilles/board.c            |   19 +
 arch/arm/boards/reflex-achilles/lowlevel.c         |   87 +-
 .../boards/reflex-achilles/pinmux-config-arria10.c |    2 +-
 .../boards/reflex-achilles/pll-config-arria10.c    |   16 +-
 arch/arm/boards/zii-vf610-dev/lowlevel.c           |    4 +-
 arch/arm/configs/socfpga-arria10_defconfig         |    7 +-
 arch/arm/cpu/Makefile                              |    4 +-
 arch/arm/cpu/mmu.c                                 |    2 +-
 arch/arm/cpu/smccc-call_64.S                       |   52 +
 arch/arm/dts/socfpga_arria10_achilles.dts          |   14 +-
 arch/arm/include/asm/asm-offsets.h                 |    1 +
 arch/arm/include/asm/errata.h                      |    9 +
 arch/arm/lib/asm-offsets.c                         |    7 +-
 arch/arm/lib32/barebox.lds.S                       |   12 +
 arch/arm/lib32/bootm.c                             |    7 +
 arch/arm/mach-imx/Kconfig                          |    2 +
 arch/arm/mach-imx/Makefile                         |    2 +-
 arch/arm/mach-imx/atf.c                            |   41 +
 arch/arm/mach-imx/boot.c                           |   99 +-
 arch/arm/mach-imx/cpu_init.c                       |    3 +-
 arch/arm/mach-imx/imx.c                            |   11 +
 arch/arm/mach-imx/imx7.c                           |   11 -
 arch/arm/mach-imx/imx8mq.c                         |   84 +-
 arch/arm/mach-imx/include/mach/atf.h               |   13 +
 arch/arm/mach-imx/include/mach/imx-header.h        |  128 +
 arch/arm/mach-imx/include/mach/imx8mq.h            |   43 +
 arch/arm/mach-imx/include/mach/ocotp.h             |    1 +
 arch/arm/mach-imx/include/mach/reset-reason.h      |    1 +
 arch/arm/mach-imx/xload-esdhc.c                    |   51 +-
 arch/arm/mach-omap/am33xx_bbu_emmc.c               |    2 +-
 arch/arm/mach-socfpga/Kconfig                      |    9 +-
 arch/arm/mach-socfpga/Makefile                     |   12 +-
 arch/arm/mach-socfpga/arria10-bootsource.c         |   16 +-
 arch/arm/mach-socfpga/arria10-generic.c            |    2 +-
 arch/arm/mach-socfpga/arria10-init.c               |   47 +-
 arch/arm/mach-socfpga/arria10-reset-manager.c      |   33 +-
 arch/arm/mach-socfpga/arria10-sdram.c              |    2 +
 arch/arm/mach-socfpga/arria10-xload-emmc.c         |  222 ++
 arch/arm/mach-socfpga/arria10-xload.c              |  457 +++
 arch/arm/mach-socfpga/include/mach/arria10-fpga.h  |   86 +
 arch/arm/mach-socfpga/include/mach/arria10-regs.h  |    2 +
 .../include/mach/arria10-system-manager.h          |    6 +
 arch/arm/mach-socfpga/include/mach/arria10-xload.h |   13 +
 arch/arm/mach-socfpga/include/mach/debug_ll.h      |    2 -
 arch/arm/mach-socfpga/include/mach/generic.h       |   41 +
 commands/memset.c                                  |    2 +-
 commands/mm.c                                      |    2 +-
 commands/mw.c                                      |    2 +-
 commands/of_node.c                                 |    7 +-
 commands/of_property.c                             |    3 +-
 common/block.c                                     |    4 +-
 common/image-fit.c                                 |    5 +-
 drivers/aiodev/Kconfig                             |   10 +-
 drivers/i2c/busses/i2c-imx.c                       |    4 +-
 drivers/mci/dw_mmc.c                               |  152 +-
 drivers/mci/dw_mmc.h                               |  140 +
 drivers/mci/imx-esdhc.c                            |    5 +-
 drivers/mci/s3c.c                                  |    2 +-
 drivers/net/e1000/eeprom.c                         |   56 +-
 drivers/pci/pci.c                                  |   93 +-
 drivers/pinctrl/imx-iomux-v3.c                     |    3 +
 drivers/reset/reset-socfpga.c                      |    1 +
 drivers/spi/Kconfig                                |    2 +-
 dts/Bindings/arm/samsung/samsung-boards.txt        |    2 +-
 dts/Bindings/display/tilcdc/tilcdc.txt             |    2 +-
 dts/Bindings/gpio/nintendo,hollywood-gpio.txt      |    2 +-
 dts/Bindings/input/sprd,sc27xx-vibra.txt           |   23 +
 dts/Bindings/input/touchscreen/hideep.txt          |    2 +-
 .../interrupt-controller/nvidia,tegra20-ictlr.txt  |    2 +-
 .../interrupt-controller/st,stm32-exti.txt         |    2 +-
 dts/Bindings/mips/brcm/soc.txt                     |    2 +-
 dts/Bindings/net/fsl-fman.txt                      |    2 +-
 dts/Bindings/power/power_domain.txt                |    2 +-
 dts/Bindings/regulator/tps65090.txt                |    2 +-
 dts/Bindings/reset/st,sti-softreset.txt            |    2 +-
 dts/Bindings/soc/qcom/qcom,geni-se.txt             |    2 +-
 dts/Bindings/sound/qcom,apq8016-sbc.txt            |    2 +-
 dts/Bindings/sound/qcom,apq8096.txt                |    2 +-
 dts/Bindings/usb/rockchip,dwc3.txt                 |    3 +-
 dts/Bindings/w1/w1-gpio.txt                        |    2 +-
 dts/include/dt-bindings/clock/imx6ul-clock.h       |   40 +-
 dts/src/arm/am335x-bone-common.dtsi                |    1 -
 dts/src/arm/am3517.dtsi                            |    9 +
 dts/src/arm/am437x-sk-evm.dts                      |    2 +
 dts/src/arm/armada-385-synology-ds116.dts          |    2 +-
 dts/src/arm/armada-38x.dtsi                        |    2 +-
 dts/src/arm/bcm-cygnus.dtsi                        |   24 +-
 dts/src/arm/bcm-hr2.dtsi                           |   24 +-
 dts/src/arm/bcm-nsp.dtsi                           |   32 +-
 dts/src/arm/bcm5301x.dtsi                          |    2 +-
 dts/src/arm/da850.dtsi                             |    6 +-
 dts/src/arm/dra7.dtsi                              |    2 +-
 dts/src/arm/imx51-zii-rdu1.dts                     |    2 +-
 dts/src/arm/imx6q.dtsi                             |    2 +-
 dts/src/arm/imx6qdl-zii-rdu2.dtsi                  |    2 +-
 dts/src/arm/imx6sx.dtsi                            |    2 +-
 dts/src/arm/omap4-droid4-xt894.dts                 |    9 +-
 dts/src/arm/socfpga.dtsi                           |    4 +-
 dts/src/arm/socfpga_arria10.dtsi                   |    5 +-
 dts/src/arm64/altera/socfpga_stratix10.dtsi        |    6 +-
 dts/src/arm64/amlogic/meson-axg-s400.dts           |   15 +-
 dts/src/arm64/amlogic/meson-axg.dtsi               |    4 +-
 dts/src/arm64/amlogic/meson-gx.dtsi                |   12 +-
 dts/src/arm64/amlogic/meson-gxl-mali.dtsi          |    2 +-
 .../arm64/amlogic/meson-gxl-s905x-libretech-cc.dts |    3 -
 dts/src/arm64/amlogic/meson-gxl-s905x-p212.dtsi    |    7 +
 dts/src/arm64/amlogic/meson-gxl.dtsi               |    8 -
 dts/src/arm64/broadcom/northstar2/ns2.dtsi         |    8 +-
 dts/src/arm64/broadcom/stingray/bcm958742k.dts     |    4 +
 dts/src/arm64/broadcom/stingray/bcm958742t.dts     |    4 +
 dts/src/arm64/broadcom/stingray/stingray.dtsi      |    4 +-
 dts/src/arm64/hisilicon/hi3660-hikey960.dts        |    2 +
 dts/src/arm64/hisilicon/hi6220-hikey.dts           |    2 +
 dts/src/arm64/marvell/armada-cp110.dtsi            |    2 +-
 dts/src/arm64/qcom/apq8096-db820c.dtsi             |    2 +-
 dts/src/arm64/qcom/msm8916.dtsi                    |    4 +-
 dts/src/arm64/socionext/uniphier-ld11-global.dts   |    2 +-
 dts/src/arm64/socionext/uniphier-ld20-global.dts   |    2 +-
 firmware/Kconfig                                   |    3 +
 firmware/Makefile                                  |    6 +-
 firmware/imx/imx8m-bl31.bin                        |  Bin 0 -> 46744 bytes
 fs/Kconfig                                         |   18 +
 fs/Makefile                                        |    3 +-
 fs/cramfs/cramfs.c                                 |  523 +--
 fs/devfs.c                                         |  150 +-
 fs/ext4/ext_barebox.c                              |  279 +-
 fs/ext4/ext_common.h                               |    3 +
 fs/fat/Kconfig                                     |    1 +
 fs/fs.c                                            | 3632 +++++++++++++---=
----
 fs/legacy.c                                        |  315 ++
 fs/libfs.c                                         |   97 +
 fs/nfs.c                                           |  542 ++-
 fs/pstore/Kconfig                                  |    1 +
 fs/ramfs.c                                         |  403 +--
 fs/squashfs/Makefile                               |    2 +
 fs/squashfs/dir.c                                  |  232 ++
 fs/squashfs/inode.c                                |    9 +
 fs/squashfs/namei.c                                |   17 +-
 fs/squashfs/squashfs.c                             |  186 +-
 fs/squashfs/squashfs.h                             |    9 +-
 fs/squashfs/super.c                                |   13 +-
 fs/squashfs/symlink.c                              |   82 +
 fs/tftp.c                                          |  176 +-
 fs/ubifs/Makefile                                  |    2 +-
 fs/ubifs/dir.c                                     |  291 ++
 fs/ubifs/super.c                                   |  153 +-
 fs/ubifs/ubifs.c                                   |  341 +-
 fs/ubifs/ubifs.h                                   |    7 +-
 images/Makefile.socfpga                            |   17 +-
 include/dirent.h                                   |    3 +
 include/fs.h                                       |   38 +-
 include/gpio.h                                     |    3 +
 include/hab.h                                      |    2 +
 include/linux/arm-smccc.h                          |  135 +
 include/linux/dcache.h                             |  109 +-
 include/linux/fs.h                                 |  131 +-
 include/linux/mount.h                              |    3 +
 include/linux/namei.h                              |   52 +
 include/linux/pci.h                                |   54 +
 include/linux/stat.h                               |    2 +
 lib/libfile.c                                      |   20 +-
 net/eth.c                                          |   14 +-
 scripts/imx/Makefile                               |    1 +
 scripts/imx/imx.h                                  |  114 +-
 scripts/remote/controller.py                       |    3 +
 scripts/socfpga_mkimage.c                          |   25 +-
 210 files changed, 7480 insertions(+), 4038 deletions(-)
 create mode 100644 arch/arm/boards/reflex-achilles/board.c
 create mode 100644 arch/arm/cpu/smccc-call_64.S
 create mode 100644 arch/arm/include/asm/asm-offsets.h
 create mode 100644 arch/arm/mach-imx/atf.c
 create mode 100644 arch/arm/mach-imx/include/mach/atf.h
 create mode 100644 arch/arm/mach-imx/include/mach/imx-header.h
 create mode 100644 arch/arm/mach-imx/include/mach/imx8mq.h
 create mode 100644 arch/arm/mach-socfpga/arria10-xload-emmc.c
 create mode 100644 arch/arm/mach-socfpga/arria10-xload.c
 create mode 100644 arch/arm/mach-socfpga/include/mach/arria10-fpga.h
 create mode 100644 arch/arm/mach-socfpga/include/mach/arria10-xload.h
 create mode 100644 drivers/mci/dw_mmc.h
 create mode 100644 dts/Bindings/input/sprd,sc27xx-vibra.txt
 create mode 100755 firmware/imx/imx8m-bl31.bin
 create mode 100644 fs/legacy.c
 create mode 100644 fs/libfs.c
 create mode 100644 fs/squashfs/dir.c
 create mode 100644 fs/squashfs/symlink.c
 create mode 100644 fs/ubifs/dir.c
 create mode 100644 include/linux/arm-smccc.h
 create mode 100644 include/linux/namei.h
-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
