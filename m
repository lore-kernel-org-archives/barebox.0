Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOf6k-0006qO-63
 for barebox@lists.infradead.org; Wed, 15 Apr 2020 10:17:29 +0000
Date: Wed, 15 Apr 2020 12:17:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200415101723.GM1694@pengutronix.de>
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
Subject: v2020.04.0
To: Barebox List <barebox@lists.infradead.org>

Hi All,

I just released barebox-2020.04.0.

This time we gained support for a new variant of i.MX8 SoCs, the
i.MX8MM. It is very similar to the already supported i.MX8MQ, so
support for the new SoC is fairly complete already. A nice thing to note
is that we can now pick up a running USB controller in barebox, so we
can for the first time initialize SDRAM in code on i.MX8MM and still
upload the full barebox image over USB.

barebox now supports discard_range() on block devices. This helps the
rather naive block layer to not do a read-modify-write on block devices
when only an image is written. This greatly improves writing speed on
block devices.

ARM64 can now also boot FIT images and Ahmad ported the regulator_bulk
API over to barebox. Other than that see below for a full list of
changes that went into this release.

Have fun!
 Sascha

----------------------------------------------------------------
Ahmad Fatoum (28):
      reset_source: introduce reset_source_to_string
      watchdog: f71808e: only print reset reason if one's indicated
      reset_source: migrate from reset_source_name to reset_source_to_string
      reset: stm32: migrate restart reason and handler from stm32_iwdg
      ARM: stm32mp: dk2: delete unused includes
      ARM: stm32mp: add aliases for mmc1 and mmc2
      images: i.MX: fix marsboard image file name
      regulator: import Linux regulator_bulk API
      phy: remove unused init_data parameter
      phy: populate existing ->pwr member with phy-supply
      phy: introduce phy_get_by_index
      regulator: port over Linux stm32 PWR regulator driver
      phy: port over Linux stm32 usbphyc driver
      net: designware: eqos: remove left-over PHY quirk work around
      net: designware: eqos: mimic Linux gmac4 mdio_{read, write}
      usb: gadget: fastboot: call discard_range for sparse files as well
      Revert "block: Adjust cache sizes"
      reset: add stub for device_reset when CONFIG_RESET_CONTROLLER=n
      video/ssd1307fb: fix NULL pointer dereference in probe
      video/ssd1307fb: drop unneeded regulator NULL checks
      video/ssd1307fb: make reset GPIO optional
      state: backend_storage: deal gracefully with runtime bucket corruption
      state: treat state with all-invalid buckets as dirty
      ARM: at91: add support for SAM9 SoC reset
      ARM: at91: sama5d27-som1: clean up lowlevel.c
      ARM: at91: sama5d27-som1: branch to noinline function after stack setup
      ARM: at91: add sama5d27-based Groboards Giant Board support
      commands: remove CONFIG_ prefix from Kconfig symbol

Andrey Smirnov (1):
      mfd: rave-sp: Fix rave_sp_emulated_get_status()

Christian Eggers (2):
      usb: rename "struct usb_configuration" to "struct usb_config"
      gadget: f_fastboot: New Kconfig option USB_GADGET_FASTBOOT_CMD_OEM

Christoph Fritz (3):
      ARM: dts: advantech-rom-7421: fix sd-card cd pin
      ARM: dts: advantech-rom-7421: Add ocotp node to provide mac address
      ARM: phytec-som-imx6: Add imx6dl with 512mb RAM

Franck Jullien (1):
      scripts/bareboximd: add mode argument to open call

Lucas Stach (2):
      ARM64: add support for booting a FIT image
      reset: remove duplicate imx8mq-reset.h and use correct defines

Masahiro Yamada (6):
      kbuild: remove unused barebox-head
      kbuild: remove dead code for modpost
      kbuild: rename barebox-pbl-common to BAREBOX_PBL_OBJS
      kbuild: rename barebox-{common, lds} to BAREBOX_{OBJS, LDS}
      kbuild: replace barebox-all with BAREBOX_OBJS
      mfd: double-quote the menu prompt of MFD

Oleksij Rempel (1):
      MIPS: ath79: add support for OpenEmbed SOM9331 board

Peter Mamonov (1):
      usb: host: ehci: distinguish DMA addresses

Rouven Czerwinski (2):
      of: add missing newline to pr_warn
      of: overlay: rework error message for symbols

Sascha Hauer (74):
      fs: Introduce discard_range()
      cdev: Add discard_range hook
      block: Implement discard_range
      copy_file: call discard_range on destination file
      ARM: i.MX8: Move iomux header to make space for i.MX8MM
      ARM: i.MX8M: Add base addresses common to i.MX8M
      ARM: i.MX8M: add and use imx8mq_setup_pad()
      ARM: i.MX: Drop iomux argument from mx7_setup_pad()
      ARM: i.MX8M: Add iomux header for i.MX8MM
      ARM: i.MX8M: Add imx8mm-regs.h
      ARM: i.MX8M: Add ARCH_IMX8M symbol
      ARM: i.MX: esdctl: rename functions to imx8m_*
      ARM: i.MX8M: Use imx8mq.c for other i.MX8M as well
      ARM: i.MX8M: rename imx8_* bootsource functions to imx8mq_*
      ARM: i.MX8M: Detect serial downloader mode correctly
      HAB: i.MX8M: rename imx8_* functions to imx8m_*
      ARM: i.MX8M: rename i.MX8M specific function
      ARM: i.MX8M: rename functions to be i.MX8M specific
      mci: imx-esdhc-pbl: Add instance 2 for i.MX8MM
      USB: gadget: fsl_udc: move register definitions to header file
      usb: gadget: fsl_udc: Add PBL image loading support
      usb: gadget: fsl_udc: Fix warnings on 64bit compilation
      usb: imx: Add i.MX8mm support
      serial: imx: Add imx8mm compatible
      mci: imx-esdhc: Add i.MX8mm support
      I2C: i.MX: Add early i2c support for i.MX8M
      clk: imx: Add pll14xx support
      clk: imx: Add imx8m_clk_composite_critical
      clk: imx: Add imx8mm clk driver
      ARM: i.MX: Add SoC namespace to imx7/8m CCM defines
      Add some CCM defines for i.MX8M
      ARM: i.MX8M: rename imx8-ccm-regs.h to imx8m-ccm-regs.h
      ARM: i.MX8M: Add some lowlevel clock functions
      ARM: i.MX7: Add and use function for early UART clock setup
      ARM: i.MX8M: Add and use function for early UART clock setup
      iomux: Add i.MX8MM support
      mfd: Add Rohm bd71837 header file
      scripts: imx-usb-loader: Add 2nd stage loading support
      scripts: imx-usb-loader: Add i.MX8MM support
      ARM: i.MX8MQ boards: Add missing includes
      ARM: i.MX8M: Add DDR controller support
      ARM: i.MX8M: Add TF-A loading support for i.MX8MM
      ARM: i.MX8M: Add i.MX8MM support
      scripts: imx-image: Add i.MX8MM support
      ARM: i.MX: Add i.MX8MM EVK board support
      ARM: i.MX: update imx_v8_defconfig for i.MX8MM
      scripts: imx-usb-loader: Fix i.MX8MM
      usb: imx: add i.MX8MM support for usbmisc
      clk: initially enable critical clocks
      clk: Do not let the enable count of critical clocks go below 1
      clk: print more consistent clock states
      firmware: Fix dependencies for firmware in PBL
      arm: dts: Fix node names
      arm: vf610-zii-scu4-aib: Remove non effective properties
      ARM: dts: Add missing #size/address-cells properties
      dts: update to v5.6-rc2
      dts: update to v5.6-rc3
      dts: update to v5.6-rc4
      dts: update to v5.6-rc5
      dts: update to v5.6-rc6
      Merge branch 'for-next/arm'
      Merge branch 'for-next/at91'
      Merge branch 'for-next/block'
      Merge branch 'for-next/clk'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/mips'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/stm32'
      crypto: pbkdf2: Select HMAC
      regulator: void function returns void
      net: phy: Add missing inline to function
      imd: Use %zu for printing size_t
      Release v2020.04.0

Yegor Yefremov (1):
      arm: baltos: use compressed DTB images

Yunus Bas (2):
      ARM: dts: phycore-imx6: change mtd-partition names for compatibility with kernel
      ARM: i.MX: phytec-som-imx6: Fix paths to SPI-NOR partition

 Documentation/boards/imx/nxp-imx8mm-evk.rst        |   71 +
 Makefile                                           |   40 +-
 arch/arm/boards/Makefile                           |    2 +
 arch/arm/boards/freescale-mx7-sabresd/lowlevel.c   |   12 +-
 arch/arm/boards/nxp-imx8mm-evk/Makefile            |    2 +
 arch/arm/boards/nxp-imx8mm-evk/board.c             |   81 +
 .../nxp-imx8mm-evk/flash-header-imx8mm-evk.imxcfg  |    5 +
 arch/arm/boards/nxp-imx8mm-evk/lowlevel.c          |  184 ++
 arch/arm/boards/nxp-imx8mm-evk/lpddr4-timing.c     | 1976 ++++++++++++++++++++
 arch/arm/boards/nxp-imx8mq-evk/ddr.h               |    9 +-
 arch/arm/boards/nxp-imx8mq-evk/lowlevel.c          |   25 +-
 .../defaultenv-physom-imx6/boot/spi                |    4 +-
 .../flash-header-phytec-pcm058dl-512mb.imxcfg      |    9 +
 arch/arm/boards/phytec-som-imx6/lowlevel.c         |    1 +
 arch/arm/boards/phytec-som-imx8mq/ddr.h            |    7 +-
 arch/arm/boards/phytec-som-imx8mq/ddrphy_train.c   |    1 -
 arch/arm/boards/phytec-som-imx8mq/lowlevel.c       |   25 +-
 arch/arm/boards/sama5d27-giantboard/Makefile       |    1 +
 arch/arm/boards/sama5d27-giantboard/lowlevel.c     |   63 +
 arch/arm/boards/sama5d27-som1/lowlevel.c           |   21 +-
 arch/arm/boards/stm32mp157c-dk2/board.c            |    3 -
 arch/arm/boards/vscom-baltos/lowlevel.c            |    6 +-
 arch/arm/boards/zii-imx7d-dev/lowlevel.c           |   12 +-
 arch/arm/boards/zii-imx8mq-dev/ddr.h               |    9 +-
 arch/arm/boards/zii-imx8mq-dev/lowlevel.c          |   25 +-
 arch/arm/configs/imx23_defconfig                   |    1 +
 arch/arm/configs/imx28_defconfig                   |    1 +
 arch/arm/configs/imx_v7_defconfig                  |    1 +
 arch/arm/configs/imx_v8_defconfig                  |   18 +-
 arch/arm/configs/kindle-mx50_defconfig             |    1 +
 arch/arm/configs/omap_defconfig                    |    1 +
 arch/arm/configs/zii_vf610_dev_defconfig           |    1 +
 arch/arm/dts/Makefile                              |    2 +
 arch/arm/dts/at91-sama5d27_giantboard.dts          |  299 +++
 arch/arm/dts/imx51-genesi-efika-sb.dts             |    6 +-
 arch/arm/dts/imx53-guf-vincell-lt.dts              |    2 +-
 arch/arm/dts/imx6dl-advantech-rom-7421.dts         |   12 +-
 arch/arm/dts/imx6dl-eltec-hipercam.dts             |    4 +-
 arch/arm/dts/imx6q-guf-santaro.dts                 |    4 +-
 arch/arm/dts/imx6qdl-cm-fx6.dtsi                   |    2 +
 arch/arm/dts/imx6qdl-hummingboard2.dtsi            |    2 +-
 arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi       |   10 +-
 arch/arm/dts/imx6qdl-tqma6x.dtsi                   |    2 +-
 arch/arm/dts/imx6qdl-tx6x.dtsi                     |    2 +
 arch/arm/dts/imx7d-phycore-som.dtsi                |    2 +-
 arch/arm/dts/imx8mm-evk.dts                        |   62 +
 arch/arm/dts/stm32mp151.dtsi                       |    2 +
 arch/arm/dts/vf610-zii-scu4-aib.dts                |    8 -
 arch/arm/lib64/armlinux.c                          |   15 +-
 arch/arm/mach-at91/Kconfig                         |   13 +
 arch/arm/mach-at91/Makefile                        |    1 +
 arch/arm/mach-at91/at91sam9_rst.c                  |   72 +
 arch/arm/mach-imx/Kconfig                          |   21 +-
 arch/arm/mach-imx/Makefile                         |    4 +-
 arch/arm/mach-imx/atf.c                            |   26 +-
 arch/arm/mach-imx/boot.c                           |   42 +-
 arch/arm/mach-imx/cpu_init.c                       |   14 +-
 arch/arm/mach-imx/esdctl.c                         |   30 +-
 arch/arm/mach-imx/imx-bbu-internal.c               |    4 +-
 arch/arm/mach-imx/imx.c                            |    6 +-
 arch/arm/mach-imx/imx8-ddrc.c                      |   91 -
 arch/arm/mach-imx/imx8m.c                          |  279 +++
 arch/arm/mach-imx/imx8mq.c                         |  111 --
 arch/arm/mach-imx/include/mach/atf.h               |    9 +-
 arch/arm/mach-imx/include/mach/debug_ll.h          |    4 +-
 arch/arm/mach-imx/include/mach/esdctl.h            |    1 +
 arch/arm/mach-imx/include/mach/generic.h           |   22 +-
 arch/arm/mach-imx/include/mach/imx7-ccm-regs.h     |   45 +-
 arch/arm/mach-imx/include/mach/imx8-ccm-regs.h     |   15 -
 arch/arm/mach-imx/include/mach/imx8-ddrc.h         |   66 -
 arch/arm/mach-imx/include/mach/imx8m-ccm-regs.h    |   57 +
 arch/arm/mach-imx/include/mach/imx8m-regs.h        |   37 +
 arch/arm/mach-imx/include/mach/imx8mm-regs.h       |   46 +
 arch/arm/mach-imx/include/mach/imx8mq-regs.h       |    2 +
 arch/arm/mach-imx/include/mach/imx8mq.h            |   13 +-
 arch/arm/mach-imx/include/mach/imx_cpu_types.h     |    1 +
 arch/arm/mach-imx/include/mach/iomux-mx7.h         |    4 +-
 arch/arm/mach-imx/include/mach/iomux-mx8m.h        |   27 +
 arch/arm/mach-imx/include/mach/iomux-mx8mm.h       |  701 +++++++
 .../include/mach/{iomux-mx8.h => iomux-mx8mq.h}    |   24 +-
 arch/arm/mach-imx/include/mach/xload.h             |    2 +-
 arch/mips/Makefile                                 |    6 +-
 arch/mips/boards/Makefile                          |    1 +
 arch/mips/boards/openembed-som9331/Makefile        |    1 +
 arch/mips/boards/openembed-som9331/lowlevel.S      |   23 +
 arch/mips/configs/ath79_defconfig                  |    1 +
 arch/mips/dts/Makefile                             |    1 +
 arch/mips/dts/ar9331-openembed-som9331-board.dts   |  113 ++
 arch/mips/mach-ath79/Kconfig                       |    7 +
 arch/mips/pbl/Makefile                             |    2 +-
 arch/sandbox/Makefile                              |    4 +-
 arch/x86/Makefile                                  |    4 +-
 commands/Kconfig                                   |    2 +-
 common/block.c                                     |   25 +-
 common/imd.c                                       |    2 +-
 common/reset_source.c                              |    6 +-
 common/state/backend_storage.c                     |    2 +
 common/state/state.c                               |    7 +-
 crypto/Kconfig                                     |    1 +
 drivers/clk/clk.c                                  |   43 +-
 drivers/clk/imx/Makefile                           |    3 +
 drivers/clk/imx/clk-imx8mm.c                       |  577 ++++++
 drivers/clk/imx/clk-pll14xx.c                      |  446 +++++
 drivers/clk/imx/clk.h                              |   47 +
 drivers/ddr/Kconfig                                |    1 +
 drivers/ddr/Makefile                               |    1 +
 drivers/ddr/imx8m/Kconfig                          |    7 +
 drivers/ddr/imx8m/Makefile                         |    7 +
 drivers/ddr/imx8m/ddr_init.c                       |  211 +++
 drivers/ddr/imx8m/ddrphy_csr.c                     |  732 ++++++++
 drivers/ddr/imx8m/ddrphy_train.c                   |  112 ++
 drivers/ddr/imx8m/ddrphy_utils.c                   |  306 +++
 drivers/ddr/imx8m/helper.c                         |   86 +
 drivers/hab/habv4.c                                |   12 +-
 drivers/i2c/busses/i2c-imx-early.c                 |   12 +
 drivers/mci/imx-esdhc-pbl.c                        |   23 +-
 drivers/mci/imx-esdhc.c                            |    1 +
 drivers/mfd/Kconfig                                |    2 +-
 drivers/mfd/rave-sp.c                              |    2 +-
 drivers/net/designware_eqos.c                      |   33 +-
 drivers/net/designware_eqos.h                      |    1 -
 drivers/net/designware_stm32.c                     |    1 -
 drivers/net/designware_tegra186.c                  |    1 -
 drivers/of/overlay.c                               |   20 +-
 drivers/phy/Kconfig                                |   13 +
 drivers/phy/Makefile                               |    1 +
 drivers/phy/freescale/phy-fsl-imx8mq-usb.c         |    2 +-
 drivers/phy/phy-core.c                             |   29 +-
 drivers/phy/phy-stm32-usbphyc.c                    |  434 +++++
 drivers/phy/usb-nop-xceiv.c                        |    2 +-
 drivers/pinctrl/imx-iomux-v3.c                     |    2 +
 drivers/pinctrl/pinctrl-tegra-xusb.c               |    4 +-
 drivers/regulator/Kconfig                          |    7 +
 drivers/regulator/Makefile                         |    1 +
 drivers/regulator/core.c                           |  139 ++
 drivers/regulator/stm32-pwr.c                      |  215 +++
 drivers/reset/reset-imx7.c                         |   12 +-
 drivers/reset/reset-stm32.c                        |  117 +-
 drivers/serial/serial_imx.c                        |    3 +
 drivers/usb/Makefile                               |    2 +-
 drivers/usb/gadget/Kconfig                         |   14 +
 drivers/usb/gadget/Makefile                        |    1 +
 drivers/usb/gadget/f_fastboot.c                    |    6 +-
 drivers/usb/gadget/fsl_udc.c                       |  394 +---
 drivers/usb/gadget/fsl_udc_pbl.c                   |  210 +++
 drivers/usb/host/ehci-hcd.c                        |  101 +-
 drivers/usb/imx/chipidea-imx.c                     |    2 +
 drivers/usb/imx/imx-usb-misc.c                     |    6 +
 drivers/usb/imx/imx-usb-phy.c                      |    2 +-
 drivers/video/ssd1307fb.c                          |   63 +-
 drivers/watchdog/f71808e_wdt.c                     |    8 +-
 drivers/watchdog/stm32_iwdg.c                      |   99 -
 drivers/watchdog/stpmic1_wdt.c                     |    2 +-
 dts/Bindings/arm/arm,scmi.txt                      |    2 +-
 dts/Bindings/arm/arm,scpi.txt                      |    2 +-
 dts/Bindings/arm/bcm/brcm,bcm63138.txt             |    2 +-
 dts/Bindings/arm/cpus.yaml                         |    2 +-
 dts/Bindings/arm/fsl.yaml                          |    2 +-
 dts/Bindings/arm/hisilicon/hi3519-sysctrl.txt      |    2 +-
 dts/Bindings/arm/msm/qcom,idle-state.txt           |    2 +-
 dts/Bindings/arm/omap/mpu.txt                      |    2 +-
 dts/Bindings/arm/psci.yaml                         |   36 +-
 dts/Bindings/arm/stm32/st,mlahb.yaml               |    2 +-
 dts/Bindings/bus/allwinner,sun8i-a23-rsb.yaml      |    1 -
 .../clock/allwinner,sun4i-a10-osc-clk.yaml         |    2 +-
 dts/Bindings/clock/allwinner,sun9i-a80-gt-clk.yaml |    2 +-
 dts/Bindings/clock/qcom,gcc-apq8064.yaml           |    2 +-
 dts/Bindings/display/allwinner,sun4i-a10-tcon.yaml |    6 +-
 .../display/allwinner,sun4i-a10-tv-encoder.yaml    |    6 +-
 dts/Bindings/display/bridge/anx6345.yaml           |   10 +-
 .../display/panel/leadtek,ltk500hd1829.yaml        |    2 +
 dts/Bindings/display/panel/xinpeng,xpp055c272.yaml |    2 +
 dts/Bindings/display/simple-framebuffer.yaml       |    6 +-
 dts/Bindings/display/tilcdc/tilcdc.txt             |    2 +-
 dts/Bindings/dma/ti/k3-udma.yaml                   |   14 +-
 dts/Bindings/gpu/arm,mali-bifrost.yaml             |   14 +-
 dts/Bindings/gpu/arm,mali-midgard.yaml             |   14 +-
 dts/Bindings/iio/adc/samsung,exynos-adc.yaml       |    2 +-
 dts/Bindings/input/ilitek,ili2xxx.txt              |    3 +-
 dts/Bindings/input/touchscreen/goodix.yaml         |    2 +-
 dts/Bindings/input/twl4030-pwrbutton.txt           |    2 +-
 dts/Bindings/leds/common.yaml                      |    2 +-
 dts/Bindings/leds/register-bit-led.txt             |    2 +-
 dts/Bindings/media/allwinner,sun4i-a10-csi.yaml    |   40 +-
 dts/Bindings/media/ti,cal.yaml                     |    2 +-
 .../memory-controllers/nvidia,tegra124-emc.yaml    |   20 +-
 dts/Bindings/memory-controllers/ti/emif.txt        |    2 +-
 dts/Bindings/mfd/max77650.yaml                     |    4 +-
 dts/Bindings/mfd/tps65910.txt                      |    4 +-
 .../mfd/{twl-familly.txt => twl-family.txt}        |    0
 dts/Bindings/mfd/zii,rave-sp.txt                   |    2 +-
 dts/Bindings/misc/fsl,qoriq-mc.txt                 |    2 +-
 dts/Bindings/mmc/mmc-controller.yaml               |    1 +
 dts/Bindings/mmc/ti-omap-hsmmc.txt                 |    2 +-
 dts/Bindings/mtd/cadence-nand-controller.txt       |    2 +-
 dts/Bindings/net/brcm,bcm7445-switch-v4.0.txt      |    2 +-
 dts/Bindings/net/fsl-fman.txt                      |    7 +
 dts/Bindings/net/mdio.yaml                         |    1 -
 dts/Bindings/nvmem/nvmem.yaml                      |    2 +
 dts/Bindings/phy/allwinner,sun4i-a10-usb-phy.yaml  |    2 +-
 dts/Bindings/pinctrl/aspeed,ast2400-pinctrl.yaml   |    2 +-
 dts/Bindings/pinctrl/aspeed,ast2500-pinctrl.yaml   |    2 +-
 dts/Bindings/pinctrl/aspeed,ast2600-pinctrl.yaml   |    2 +-
 dts/Bindings/pinctrl/st,stm32-pinctrl.yaml         |    2 +-
 dts/Bindings/power/amlogic,meson-ee-pwrc.yaml      |    2 +-
 dts/Bindings/power/domain-idle-state.txt           |   33 -
 dts/Bindings/power/domain-idle-state.yaml          |   64 +
 dts/Bindings/power/power-domain.yaml               |   24 +-
 dts/Bindings/power/power_domain.txt                |    2 +-
 dts/Bindings/regulator/qcom,spmi-regulator.txt     |    2 +-
 dts/Bindings/regulator/regulator.yaml              |    2 +-
 dts/Bindings/reset/intel,rcu-gw.yaml               |    6 +-
 dts/Bindings/reset/st,stm32mp1-rcc.txt             |    2 +-
 dts/Bindings/sound/st,stm32-sai.txt                |    2 +-
 dts/Bindings/sound/st,stm32-spdifrx.txt            |    2 +-
 dts/Bindings/spi/st,stm32-spi.yaml                 |    2 +-
 .../sram/allwinner,sun4i-a10-system-control.yaml   |    2 +-
 dts/Bindings/thermal/brcm,avs-ro-thermal.yaml      |    2 +-
 dts/Bindings/timer/allwinner,sun4i-a10-timer.yaml  |    2 +-
 dts/COPYING                                        |    2 +
 dts/include/dt-bindings/clock/imx8mn-clock.h       |    4 +-
 dts/src/arm/am437x-idk-evm.dts                     |    4 +-
 dts/src/arm/bcm2711-rpi-4-b.dts                    |    3 +
 dts/src/arm/bcm2837-rpi-3-a-plus.dts               |    2 +
 dts/src/arm/bcm2837-rpi-3-b-plus.dts               |    2 +
 dts/src/arm/dra7-evm.dts                           |    4 +-
 dts/src/arm/dra7-l4.dtsi                           |    4 +
 dts/src/arm/dra7.dtsi                              |    2 +
 dts/src/arm/dra76x.dtsi                            |    5 +
 dts/src/arm/dra7xx-clocks.dtsi                     |   12 +-
 dts/src/arm/imx6dl-colibri-eval-v3.dts             |    4 +-
 dts/src/arm/imx6qdl-phytec-phycore-som.dtsi        |    1 -
 dts/src/arm/imx7-colibri.dtsi                      |    1 -
 dts/src/arm/imx7d.dtsi                             |    6 +-
 dts/src/arm/ls1021a.dtsi                           |    4 +-
 dts/src/arm/motorola-mapphone-common.dtsi          |   13 +-
 dts/src/arm/r8a7779.dtsi                           |    2 +-
 dts/src/arm/stih410-b2260.dts                      |    3 -
 dts/src/arm/stihxxx-b2120.dtsi                     |    2 +-
 dts/src/arm64/amlogic/meson-gxm-khadas-vim2.dts    |    2 +-
 dts/src/arm64/amlogic/meson-sm1-sei610.dts         |    1 +
 dts/src/arm64/arm/fvp-base-revc.dts                |    8 +-
 dts/src/arm64/freescale/fsl-ls1043-post.dtsi       |    2 +
 dts/src/arm64/freescale/imx8qxp-mek.dts            |    5 -
 dts/src/arm64/intel/socfpga_agilex.dtsi            |    6 +-
 dts/src/mips/ingenic/ci20.dts                      |   44 +-
 dts/src/mips/ingenic/jz4740.dtsi                   |   17 +-
 dts/src/mips/ingenic/jz4780.dtsi                   |   17 +-
 dts/src/mips/ingenic/x1000.dtsi                    |    6 +-
 dts/src/riscv/sifive/hifive-unleashed-a00.dts      |    5 +
 firmware/Kconfig                                   |    3 +
 firmware/Makefile                                  |    4 +
 fs/devfs.c                                         |   21 +
 fs/fs.c                                            |   25 +
 images/Makefile                                    |    4 +-
 images/Makefile.at91                               |    4 +
 images/Makefile.ath79                              |    4 +
 images/Makefile.imx                                |   10 +-
 include/block.h                                    |    3 +
 include/driver.h                                   |    1 +
 include/dt-bindings/reset/imx8mq-reset.h           |   64 -
 include/fs.h                                       |    3 +
 include/i2c/i2c-early.h                            |    1 +
 include/linux/phy/phy.h                            |   14 +-
 include/linux/reset.h                              |    6 +
 include/mfd/bd71837.h                              |  103 +
 include/regulator.h                                |   48 +
 include/reset_source.h                             |    9 +-
 include/soc/fsl/fsl_udc.h                          |  383 ++++
 include/soc/imx8m/clk-early.h                      |    7 +
 include/soc/imx8m/ddr.h                            |  407 ++++
 include/soc/imx8m/lpddr4_define.h                  |   97 +
 include/usb/usb.h                                  |    4 +-
 lib/libfile.c                                      |    2 +
 scripts/bareboximd.c                               |    2 +-
 scripts/imx/imx-image.c                            |   11 +-
 scripts/imx/imx-usb-loader.c                       |   56 +-
 scripts/imx/imx.c                                  |    4 +-
 scripts/imx/imx.h                                  |    6 +
 279 files changed, 10016 insertions(+), 1515 deletions(-)
 create mode 100644 Documentation/boards/imx/nxp-imx8mm-evk.rst
 create mode 100644 arch/arm/boards/nxp-imx8mm-evk/Makefile
 create mode 100644 arch/arm/boards/nxp-imx8mm-evk/board.c
 create mode 100644 arch/arm/boards/nxp-imx8mm-evk/flash-header-imx8mm-evk.imxcfg
 create mode 100644 arch/arm/boards/nxp-imx8mm-evk/lowlevel.c
 create mode 100644 arch/arm/boards/nxp-imx8mm-evk/lpddr4-timing.c
 create mode 100644 arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl-512mb.imxcfg
 create mode 100644 arch/arm/boards/sama5d27-giantboard/Makefile
 create mode 100644 arch/arm/boards/sama5d27-giantboard/lowlevel.c
 create mode 100644 arch/arm/dts/at91-sama5d27_giantboard.dts
 create mode 100644 arch/arm/dts/imx8mm-evk.dts
 create mode 100644 arch/arm/mach-at91/at91sam9_rst.c
 delete mode 100644 arch/arm/mach-imx/imx8-ddrc.c
 create mode 100644 arch/arm/mach-imx/imx8m.c
 delete mode 100644 arch/arm/mach-imx/imx8mq.c
 delete mode 100644 arch/arm/mach-imx/include/mach/imx8-ccm-regs.h
 delete mode 100644 arch/arm/mach-imx/include/mach/imx8-ddrc.h
 create mode 100644 arch/arm/mach-imx/include/mach/imx8m-ccm-regs.h
 create mode 100644 arch/arm/mach-imx/include/mach/imx8m-regs.h
 create mode 100644 arch/arm/mach-imx/include/mach/imx8mm-regs.h
 create mode 100644 arch/arm/mach-imx/include/mach/iomux-mx8m.h
 create mode 100644 arch/arm/mach-imx/include/mach/iomux-mx8mm.h
 rename arch/arm/mach-imx/include/mach/{iomux-mx8.h => iomux-mx8mq.h} (98%)
 create mode 100644 arch/mips/boards/openembed-som9331/Makefile
 create mode 100644 arch/mips/boards/openembed-som9331/lowlevel.S
 create mode 100644 arch/mips/dts/ar9331-openembed-som9331-board.dts
 create mode 100644 drivers/clk/imx/clk-imx8mm.c
 create mode 100644 drivers/clk/imx/clk-pll14xx.c
 create mode 100644 drivers/ddr/imx8m/Kconfig
 create mode 100644 drivers/ddr/imx8m/Makefile
 create mode 100644 drivers/ddr/imx8m/ddr_init.c
 create mode 100644 drivers/ddr/imx8m/ddrphy_csr.c
 create mode 100644 drivers/ddr/imx8m/ddrphy_train.c
 create mode 100644 drivers/ddr/imx8m/ddrphy_utils.c
 create mode 100644 drivers/ddr/imx8m/helper.c
 create mode 100644 drivers/phy/phy-stm32-usbphyc.c
 create mode 100644 drivers/regulator/stm32-pwr.c
 create mode 100644 drivers/usb/gadget/fsl_udc_pbl.c
 rename dts/Bindings/mfd/{twl-familly.txt => twl-family.txt} (100%)
 delete mode 100644 dts/Bindings/power/domain-idle-state.txt
 create mode 100644 dts/Bindings/power/domain-idle-state.yaml
 delete mode 100644 include/dt-bindings/reset/imx8mq-reset.h
 create mode 100644 include/mfd/bd71837.h
 create mode 100644 include/soc/fsl/fsl_udc.h
 create mode 100644 include/soc/imx8m/clk-early.h
 create mode 100644 include/soc/imx8m/ddr.h
 create mode 100644 include/soc/imx8m/lpddr4_define.h
-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
