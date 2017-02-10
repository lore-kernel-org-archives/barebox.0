Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cc6H8-0006eM-LR
 for barebox@lists.infradead.org; Fri, 10 Feb 2017 08:09:58 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.84_2)
 (envelope-from <sha@pengutronix.de>) id 1cc6Gm-0001u2-ON
 for barebox@lists.infradead.org; Fri, 10 Feb 2017 09:09:28 +0100
Received: from sha by pty.hi.pengutronix.de with local (Exim 4.84_2)
 (envelope-from <sha@pengutronix.de>) id 1cc6Gm-0007YF-GK
 for barebox@lists.infradead.org; Fri, 10 Feb 2017 09:09:28 +0100
Date: Fri, 10 Feb 2017 09:09:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170210080928.zlr6pknqqey346uj@pengutronix.de>
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
Subject: v2017.02.0
To: Barebox List <barebox@lists.infradead.org>


Hi All,

I just released barebox v0217.02.0. Most notable this time is Andreys
work on Freescale Vybrid. We gained fairly complete VF610 support with
this release. Also nice is that out of 113 patches 26 have the word
"fix" in the commit log which I think is a good sign ;)

Sascha

----------------------------------------------------------------
Alexander Kurz (2):
      scripts: imx imx-usb-loader: sort USB id list
      scripts: imx imx-usb-loader: add i.MX6SL support

Alexander Shiyan (2):
      gpio: gpio-74164: Add 74lvc594 ID
      mci: omap: Add devicetree options parsing by MCI core.

Andrey Smirnov (24):
      regmap: Add regmap_write_bits() function
      gpio: Port SX150x driver from Linux
      commands: i2c: Listen for CTRL-C when probing
      i2c-mux-pca954x: Add code to control reset line
      clk: Port of_clk_set_defaults()
      i.MX: Move clk code from 'mach-imx' to 'drivers'
      i.MX: clk: Port imx_clk_gate2_cgr()
      i.MX: clk: Add IMX_PLLV3_USB_VF610 support
      i.MX: clk: Port imx_check_clocks()
      i.MX: clk: Port imx_clk_mux_flags from Linux
      i.MX: Add VF610 clock tree initialization code
      vf610: Give enet_osc explicit "enet_ext" name
      i.MX: Add 'lpuart' serial driver
      i.MX: i2c: Use read/write adapter functions
      i.MX: i2c: Add Vybrid support
      i.MX: esdhc: Do not rely on CPU type for quirks
      i.MX: esdhc: Request "per" clock explicitly
      i.MX: Kconfig: Enable OCOTP on Vybrid
      i.MX: ocotp: Remove unused #define
      i.MX: ocotp: Account for shadow memory gaps
      i.MX: ocotp: Add Vybrid support
      i.MX: fec: Enable all clocks specified for FEC
      i.MX: fec: Add support for Vybrid variant
      gpio: Add GPIO driver for Vybrid

Antony Pavlov (2):
      MIPS: drop redundant debug_ll_outhexw macro defines
      MIPS: qemu-malta_defconfig: set MAX_IMAGE_SIZE =3D 4 MiB

Christian Hemp (2):
      mci: imx: Add imx6sx compatible
      ARCH: ARM: Add support for phytec-phycore-imx6ul

Enrico Jorns (1):
      bootm: fix magicvar name for global_bootm_verbose

Geyslan G. Bem (1):
      checkpatch: fix another left brace warning

Ian Abbott (1):
      of_path: only handle no driver for device if it is on a bus

Jan Luebbe (3):
      video: IPU framebuffer: honor clock and enable polarities
      PWM: update enable status when using the internal API
      bootchooser: fix help message

Jan Remmet (3):
      imx6qdl-phytec-phycore-som.dtsi: rename eeprom
      imx-bbu-nand-fcb: split up read_fcb
      i.MX habv4: add RVT address for i.MX6UL

Lucas Stach (3):
      defaultenv: select COMMAND_SUPPORT and GLOBALVAR
      usb: gadget: disable AT91 driver on SAMA5D4
      barebox-imd: add dependency on generated/compile.h also for PBL versi=
on

Maik Otto (1):
      pcm049: Add 1 GByte RAM with DUAL DIE Single Rank

Michael Grzeschik (3):
      ARM: i.MX53 Vincell: change dialog compatible to proper vendor prefix
      da9053: reset FAULTLOG after read
      da9053: add dt_ids to be probed by devicetree

Moritz Warning (1):
      docs: fix typos in memcmp help text

Philippe Leduc (1):
      i.MX: IPUv3: Add parallel display support

Sascha Hauer (31):
      ARM: i.MX: Add src fixup
      spi: i.MX: reset controller on init
      input: Fix compiler warning
      globalvar: Make locally used function static
      lib/int_sqrt.c: Fix compiler warning
      ARM: socfpga: fix compiler warning
      nios2: Fix out of tree build
      nios2: Fix compiler warning
      globalvar: Fix compiler warning
      mtd: peb: fix usage of uninitialized variable
      mtd: peb: Fix format specifier
      ARM: socfpga: fix compiler warning
      of: Use %pa to print resource_size_t type
      menu: sanitize menu_add_title
      arm: at91 bootstrap: Fix menu title
      dts: update to v4.9-rc3
      dts: update to v4.9-rc4
      dts: update to v4.9-rc5
      dts: update to v4.9-rc6
      dts: update to v4.9-rc8
      dts: update to v4.9
      dts: update to v4.10-rc1
      dts: update to v4.10-rc3
      Merge branch 'for-next/dts'
      Merge branch 'for-next/i2c'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/mvebu'
      Merge branch 'for-next/truncate'
      Merge branch 'for-next/vybrid'
      Release v2017.02.0

Stefan Lengfeld (4):
      ARM: dts: phycore-imx6: refactor fec nodes
      ARM: dts: phycore-imx6: fix missing ?xc-skew-ps settings for ethphy
      ARM: dts: phycore-imx6: remove unnecessary include
      Documentation: remote-control: fix markup

Steffen Trumtrar (2):
      ARM: socfpga: remove unused entry from Makefile
      ARM: socfpga: dtsi: remove fpgamgr+sysmgr entry

Teresa Remmet (7):
      libfile: copy_file: Only open regular files with O_TRUNC
      devfs: Add optional truncate callback for device files
      ubi: Add truncate callback
      fs: Remove O_TRUNC check for devices when open files
      commands: ubi: ubiupdatevol: Open device with O_TRUNC
      ubi: barebox: Remove character device flag from static volumes
      lib: libfile: Fix copying files to a non existing destination

Ulrich =D6lmann (4):
      ubi: Only read necessary size when reading the VID header
      Documentation: bootchooser: fix typos
      environment: fix typo
      x86: update boot message "UBOOT2" to "BAREBOX"

Uwe Kleine-K=F6nig (20):
      i2c: gpio: fix handling of return code of of_get_gpio
      i2c: gpio: use dynamic bus number unconditionally
      i2c: algo-bit: remove prototype for non-existing function
      mtd: m25p80: add support for Everspin MR25H40
      ata: pata-imx: simplify assignment of device name
      ata/ahci: simplify ahci_read_id
      scripts/kwbimage: fix handling of binary header
      scripts/kwbimage: fix typo
      scripts/kwbimage: use ALIGN_SUP instead of open-coding it
      scripts/kwbimage: allow to overwrite binary
      spi: mvebu: fix error handling for transfer problems
      spi: mvebu: fix register macros for Armada 370/XP clock divider
      spi: mvebu: make sure the value calculated for PSCL is also used
      spi: mvebu: various non-critical improvements to armada_370_xp_spi_se=
t_baudrate
      spi: mvebu: only read from bus when data is needed
      spi: mvebu: use wait_on_timeout instead of a loop with udelay.
      spi: mvebu: add LSB support
      spi: mvebu: improve error reporting
      ARM: mvebu: enable MMU in defconfig
      ata: ide-sff: don't call free for ide_port in error path

Yegor Yefremov (2):
      arm: am33xx: add reset duration control register address definition
      arm: baltos: prolong global reset

 Documentation/user/bootchooser.rst                 |   57 +-
 Documentation/user/remote-control.rst              |    4 +-
 Makefile                                           |    2 +-
 arch/arm/boards/phytec-phycore-omap4460/lowlevel.c |   32 +-
 arch/arm/boards/phytec-som-imx6/Makefile           |    1 +
 arch/arm/boards/phytec-som-imx6/board.c            |   60 +
 .../defaultenv-physom-imx6ul-phycore/boot/nand     |    8 +
 .../init/automount                                 |    9 +
 .../flash-header-phytec-pcl063-512mb.imxcfg        |    9 +
 .../phytec-som-imx6/flash-header-phytec-pcl063.h   |   70 +
 arch/arm/boards/phytec-som-imx6/lowlevel.c         |   21 +-
 arch/arm/boards/vscom-baltos/lowlevel.c            |    6 +
 arch/arm/configs/mvebu_defconfig                   |    1 +
 arch/arm/dts/Makefile                              |    3 +-
 arch/arm/dts/imx53-guf-vincell-lt.dts              |    2 +-
 arch/arm/dts/imx53-guf-vincell.dts                 |    2 +-
 arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts    |   17 +-
 arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts    |   17 +-
 arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts     |   17 +-
 arch/arm/dts/imx6q-phytec-phycore-som-nand.dts     |   17 +-
 arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi       |   20 +-
 arch/arm/dts/imx6ul-phytec-phycore-som.dts         |  185 +++
 arch/arm/dts/socfpga.dtsi                          |   11 -
 arch/arm/dts/vf610-twr.dts                         |    4 +
 arch/arm/mach-at91/bootstrap.c                     |    3 +-
 arch/arm/mach-imx/Kconfig                          |    7 +-
 arch/arm/mach-imx/Makefile                         |   24 +-
 arch/arm/mach-imx/ocotp.c                          |   51 +-
 arch/arm/mach-imx/src.c                            |   57 +
 arch/arm/mach-omap/include/mach/am33xx-silicon.h   |    1 +
 arch/arm/mach-socfpga/Makefile                     |    1 -
 arch/arm/mach-socfpga/xload.c                      |    4 +-
 arch/mips/configs/qemu-malta_defconfig             |    1 +
 arch/mips/include/asm/debug_ll_ns16550.h           |   32 -
 arch/mips/include/asm/pbl_nmon.h                   |   31 +
 arch/mips/mach-ath79/include/mach/debug_ll.h       |   32 -
 arch/nios2/Makefile                                |    2 +-
 arch/nios2/cpu/cpu.c                               |    2 +-
 arch/x86/boot/boot_hdisk.S                         |    2 +-
 commands/bootchooser.c                             |    4 +-
 commands/i2c.c                                     |    2 +-
 commands/memcmp.c                                  |    4 +-
 commands/menu.c                                    |    2 +-
 commands/ubi.c                                     |    2 +-
 common/Kconfig                                     |    2 +
 common/Makefile                                    |    1 +
 common/boot.c                                      |    2 +-
 common/bootm.c                                     |    2 +-
 common/environment.c                               |    2 +-
 common/globalvar.c                                 |    4 +-
 common/imx-bbu-nand-fcb.c                          |   83 +-
 common/menu.c                                      |   12 +-
 drivers/ata/ahci.c                                 |    7 +-
 drivers/ata/ide-sff.c                              |    9 +-
 drivers/ata/pata-imx.c                             |    8 +-
 drivers/base/regmap/regmap.c                       |   27 +
 drivers/clk/Makefile                               |    3 +-
 drivers/clk/clk-conf.c                             |  148 ++
 drivers/clk/clk.c                                  |    2 +
 drivers/clk/imx/Makefile                           |   22 +
 .../clk/imx}/clk-gate-exclusive.c                  |    0
 {arch/arm/mach-imx =3D> drivers/clk/imx}/clk-gate2.c |   12 +-
 {arch/arm/mach-imx =3D> drivers/clk/imx}/clk-imx1.c  |    0
 {arch/arm/mach-imx =3D> drivers/clk/imx}/clk-imx21.c |    0
 {arch/arm/mach-imx =3D> drivers/clk/imx}/clk-imx25.c |    0
 {arch/arm/mach-imx =3D> drivers/clk/imx}/clk-imx27.c |    0
 {arch/arm/mach-imx =3D> drivers/clk/imx}/clk-imx31.c |    0
 {arch/arm/mach-imx =3D> drivers/clk/imx}/clk-imx35.c |    0
 {arch/arm/mach-imx =3D> drivers/clk/imx}/clk-imx5.c  |    0
 {arch/arm/mach-imx =3D> drivers/clk/imx}/clk-imx6.c  |    0
 .../arm/mach-imx =3D> drivers/clk/imx}/clk-imx6sx.c  |    0
 .../arm/mach-imx =3D> drivers/clk/imx}/clk-imx6ul.c  |    0
 {arch/arm/mach-imx =3D> drivers/clk/imx}/clk-pfd.c   |    0
 {arch/arm/mach-imx =3D> drivers/clk/imx}/clk-pllv1.c |    0
 {arch/arm/mach-imx =3D> drivers/clk/imx}/clk-pllv2.c |    0
 {arch/arm/mach-imx =3D> drivers/clk/imx}/clk-pllv3.c |    9 +-
 drivers/clk/imx/clk-vf610.c                        |  446 ++++++
 drivers/clk/imx/clk.c                              |   21 +
 {arch/arm/mach-imx =3D> drivers/clk/imx}/clk.h       |   23 +-
 drivers/gpio/Kconfig                               |   11 +
 drivers/gpio/Makefile                              |    2 +
 drivers/gpio/gpio-74164.c                          |    1 +
 drivers/gpio/gpio-sx150x.c                         |  274 ++++
 drivers/gpio/gpio-vf610.c                          |  166 +++
 drivers/hab/habv4.c                                |    7 +-
 drivers/i2c/busses/i2c-gpio.c                      |   18 +-
 drivers/i2c/busses/i2c-imx.c                       |  222 ++-
 drivers/i2c/muxes/i2c-mux-pca954x.c                |    7 +
 drivers/input/input.c                              |    4 +-
 drivers/mci/imx-esdhc.c                            |  127 +-
 drivers/mci/omap_hsmmc.c                           |    2 +
 drivers/mfd/da9053.c                               |   13 +
 drivers/mtd/devices/m25p80.c                       |    2 +-
 drivers/mtd/peb.c                                  |    7 +-
 drivers/mtd/spi-nor/spi-nor.c                      |    1 +
 drivers/mtd/ubi/barebox.c                          |   19 +-
 drivers/mtd/ubi/io.c                               |    2 +-
 drivers/net/fec_imx.c                              |   74 +-
 drivers/net/fec_imx.h                              |   10 +-
 drivers/of/of_path.c                               |    2 +-
 drivers/of/platform.c                              |    2 +-
 drivers/pwm/core.c                                 |    4 +
 drivers/serial/Kconfig                             |    5 +
 drivers/serial/Makefile                            |    1 +
 drivers/serial/serial_lpuart.c                     |  217 +++
 drivers/spi/imx_spi.c                              |    8 +
 drivers/spi/mvebu_spi.c                            |   87 +-
 drivers/usb/gadget/Kconfig                         |    1 +
 drivers/video/imx-ipu-v3/Kconfig                   |    4 +
 drivers/video/imx-ipu-v3/Makefile                  |    1 +
 drivers/video/imx-ipu-v3/imx-pd.c                  |  118 ++
 drivers/video/imx-ipu-v3/ipufb.c                   |    5 +-
 dts/Bindings/arm/amlogic,scpi.txt                  |   20 +
 dts/Bindings/arm/amlogic.txt                       |   19 +
 dts/Bindings/arm/arch_timer.txt                    |    5 +
 dts/Bindings/arm/arm,scpi.txt                      |   25 +-
 dts/Bindings/arm/arm-boards                        |    3 +-
 dts/Bindings/arm/atmel-at91.txt                    |   16 +
 dts/Bindings/arm/bcm/{ns2.txt =3D> brcm,ns2.txt}     |    0
 dts/Bindings/arm/cpu-capacity.txt                  |  236 ++++
 dts/Bindings/arm/cpus.txt                          |   11 +
 dts/Bindings/arm/fsl.txt                           |   34 +-
 dts/Bindings/arm/hisilicon/hisilicon.txt           |    4 +
 dts/Bindings/arm/juno,scpi.txt                     |   26 +
 dts/Bindings/arm/keystone/ti,sci.txt               |   81 ++
 dts/Bindings/arm/omap/omap.txt                     |    9 +
 dts/Bindings/arm/oxnas.txt                         |    5 +
 dts/Bindings/arm/qcom.txt                          |    3 +
 dts/Bindings/arm/rockchip.txt                      |   16 +
 dts/Bindings/arm/samsung/samsung-boards.txt        |    5 +
 dts/Bindings/arm/shmobile.txt                      |   36 +-
 dts/Bindings/arm/sunxi.txt                         |    1 +
 dts/Bindings/arm/swir.txt                          |   12 +
 dts/Bindings/ata/ahci-fsl-qoriq.txt                |    2 +-
 dts/Bindings/ata/ahci-st.txt                       |   15 -
 dts/Bindings/bus/nvidia,tegra20-gmi.txt            |  132 ++
 dts/Bindings/bus/ti,da850-mstpri.txt               |   20 +
 dts/Bindings/clock/exynos5433-clock.txt            |   13 +-
 .../clock/{hi3519-crg.txt =3D> hisi-crg.txt}         |   12 +-
 dts/Bindings/clock/imx31-clock.txt                 |    2 +-
 dts/Bindings/clock/oxnas,stdclk.txt                |   19 +-
 dts/Bindings/clock/qcom,gcc.txt                    |    1 +
 dts/Bindings/clock/qcom,rpmcc.txt                  |   37 +
 dts/Bindings/clock/qoriq-clock.txt                 |    3 +
 dts/Bindings/clock/renesas,cpg-mssr.txt            |    5 +-
 dts/Bindings/clock/rockchip,rk1108-cru.txt         |   59 +
 dts/Bindings/clock/st,stm32-rcc.txt                |    4 +-
 dts/Bindings/clock/sunxi-ccu.txt                   |    1 +
 dts/Bindings/clock/uniphier-clock.txt              |   16 +-
 dts/Bindings/cpufreq/brcm,stb-avs-cpu-freq.txt     |   78 ++
 dts/Bindings/crypto/fsl-sec4.txt                   |   20 +
 dts/Bindings/display/amlogic,meson-vpu.txt         |  112 ++
 dts/Bindings/display/brcm,bcm-vc4.txt              |   14 +
 dts/Bindings/display/bridge/dumb-vga-dac.txt       |    2 +
 dts/Bindings/display/bridge/dw_hdmi.txt            |    4 +-
 dts/Bindings/display/{ti =3D> bridge}/ti,tfp410.txt  |    9 +-
 dts/Bindings/display/ht16k33.txt                   |   42 +
 dts/Bindings/display/mxsfb.txt                     |   53 +-
 dts/Bindings/display/panel/auo,g133han01.txt       |    7 +
 dts/Bindings/display/panel/auo,g185han01.txt       |    7 +
 dts/Bindings/display/panel/auo,t215hvn01.txt       |    7 +
 .../display/panel/chunghwa,claa070wp03xg.txt       |    7 +
 dts/Bindings/display/panel/display-timing.txt      |    8 +
 dts/Bindings/display/panel/nvd,9128.txt            |    7 +
 dts/Bindings/display/panel/sharp,lq150x1lg11.txt   |   36 +
 dts/Bindings/display/renesas,du.txt                |   12 +-
 dts/Bindings/display/sunxi/sun4i-drm.txt           |   10 +-
 dts/Bindings/display/tilcdc/tilcdc.txt             |    6 +-
 dts/Bindings/display/zte,vou.txt                   |   84 ++
 dts/Bindings/dma/nbpfaxi.txt                       |    8 +
 dts/Bindings/dma/qcom_hidma_mgmt.txt               |   12 +-
 dts/Bindings/dma/renesas,rcar-dmac.txt             |    1 +
 dts/Bindings/dma/snps-dma.txt                      |    2 +
 dts/Bindings/dma/st_fdma.txt                       |   87 ++
 dts/Bindings/extcon/extcon-usb-gpio.txt            |    3 +
 dts/Bindings/firmware/nvidia,tegra186-bpmp.txt     |  108 ++
 dts/Bindings/firmware/qcom,scm.txt                 |    2 +
 dts/Bindings/fpga/altera-fpga2sdram-bridge.txt     |   16 +
 dts/Bindings/fpga/altera-freeze-bridge.txt         |   23 +
 dts/Bindings/fpga/altera-hps2fpga-bridge.txt       |   39 +
 dts/Bindings/fpga/altera-socfpga-a10-fpga-mgr.txt  |   19 +
 dts/Bindings/fpga/fpga-region.txt                  |  494 +++++++
 dts/Bindings/gpio/gpio-sx150x.txt                  |   41 -
 dts/Bindings/gpio/gpio_oxnas.txt                   |    2 +-
 dts/Bindings/gpio/mrvl-gpio.txt                    |    6 +-
 dts/Bindings/hwmon/mcp3021.txt                     |   21 +
 dts/Bindings/hwmon/tmp108.txt                      |   14 +
 dts/Bindings/i2c/i2c-imx-lpi2c.txt                 |   20 +
 dts/Bindings/i2c/i2c-pxa.txt                       |    1 +
 dts/Bindings/i2c/i2c-rcar.txt                      |   32 +-
 dts/Bindings/i2c/i2c-sh_mobile.txt                 |   17 +-
 dts/Bindings/i2c/trivial-devices.txt               |   12 +
 dts/Bindings/iio/adc/envelope-detector.txt         |   54 +
 dts/Bindings/iio/adc/st,stm32-adc.txt              |   83 ++
 dts/Bindings/iio/adc/ti-adc161s626.txt             |    2 +
 dts/Bindings/iio/dac/dpot-dac.txt                  |   41 +
 dts/Bindings/iio/dac/mcp4725.txt                   |   35 +
 dts/Bindings/iio/gyroscope/invensense,mpu3050.txt  |   46 +
 dts/Bindings/iio/humidity/hts221.txt               |   22 +
 dts/Bindings/iio/light/isl29018.txt                |   28 +
 dts/Bindings/iio/light/tsl2583.txt                 |   26 +
 dts/Bindings/iio/potentiostat/lmp91000.txt         |   30 +
 dts/Bindings/iio/st-sensors.txt                    |    1 +
 dts/Bindings/input/da9062-onkey.txt                |   45 +-
 dts/Bindings/input/touchscreen/imx6ul_tsc.txt      |    3 +
 dts/Bindings/input/touchscreen/silead_gsl1680.txt  |    2 +
 dts/Bindings/input/touchscreen/touchscreen.txt     |    3 +
 dts/Bindings/input/tps65218-pwrbutton.txt          |    4 +-
 ...t2400-bt-bmc.txt =3D> aspeed,ast2400-ibt-bmc.txt} |    4 +-
 dts/Bindings/leds/pca963x.txt                      |    3 +
 dts/Bindings/mailbox/brcm,bcm2835-mbox.txt         |    2 +-
 dts/Bindings/mailbox/nvidia,tegra186-hsp.txt       |   52 +
 dts/Bindings/media/exynos5-gsc.txt                 |    3 +-
 dts/Bindings/media/hix5hd2-ir.txt                  |    6 +-
 dts/Bindings/media/i2c/adv7604.txt                 |    3 +-
 dts/Bindings/media/mediatek-mdp.txt                |  109 ++
 dts/Bindings/media/mediatek-vcodec.txt             |   57 +-
 dts/Bindings/media/renesas,fcp.txt                 |    8 +-
 dts/Bindings/media/renesas,fdp1.txt                |   37 +
 dts/Bindings/media/s5p-mfc.txt                     |    1 +
 .../memory-controllers/ti-da8xx-ddrctl.txt         |   20 +
 dts/Bindings/mfd/altera-a10sr.txt                  |   46 +
 dts/Bindings/mfd/lp873x.txt                        |    8 +
 dts/Bindings/mfd/max77620.txt                      |   12 +
 dts/Bindings/mfd/qcom-pm8xxx.txt                   |    1 +
 dts/Bindings/mfd/rn5t618.txt                       |   16 +-
 dts/Bindings/mfd/tps65086.txt                      |    2 +-
 dts/Bindings/mmc/amlogic,meson-gx.txt              |   32 +
 dts/Bindings/mmc/brcm,sdhci-iproc.txt              |    9 +
 dts/Bindings/mmc/renesas,mmcif.txt                 |    3 +
 dts/Bindings/mmc/rockchip-dw-mshc.txt              |    1 +
 dts/Bindings/mmc/sdhci-cadence.txt                 |   32 +
 dts/Bindings/mmc/sdhci-msm.txt                     |    1 +
 dts/Bindings/mmc/sdhci.txt                         |   13 +
 dts/Bindings/mmc/synopsys-dw-mshc.txt              |   13 +-
 dts/Bindings/mmc/tmio_mmc.txt                      |    2 +-
 dts/Bindings/mtd/oxnas-nand.txt                    |   41 +
 dts/Bindings/mtd/samsung-s3c2410.txt               |   56 +
 dts/Bindings/mtd/tango-nand.txt                    |   38 +
 dts/Bindings/net/brcm,amac.txt                     |   16 +-
 dts/Bindings/net/can/rcar_can.txt                  |   12 +-
 dts/Bindings/net/can/rcar_canfd.txt                |   14 +-
 dts/Bindings/net/cpsw.txt                          |    8 +-
 dts/Bindings/net/dsa/marvell.txt                   |   24 +-
 dts/Bindings/net/ethernet.txt                      |   24 +-
 dts/Bindings/net/hisilicon-hix5hd2-gmac.txt        |   30 +-
 dts/Bindings/net/hisilicon-hns-dsaf.txt            |    8 +
 dts/Bindings/net/marvell-armada-370-neta.txt       |    7 +-
 dts/Bindings/net/marvell-orion-net.txt             |    1 +
 dts/Bindings/net/mdio-mux-mmioreg.txt              |    4 +-
 dts/Bindings/net/mscc-phy-vsc8531.txt              |   51 +-
 dts/Bindings/net/oxnas-dwmac.txt                   |   39 +
 dts/Bindings/net/phy.txt                           |   12 +
 dts/Bindings/net/smsc-lan91c111.txt                |    2 +
 dts/Bindings/net/stmmac.txt                        |   14 +-
 dts/Bindings/net/ti,dp83867.txt                    |   12 +
 .../{marvell-sd8xxx.txt =3D> marvell-8xxx.txt}       |    8 +-
 dts/Bindings/net/wireless/qca,ath9k.txt            |   48 +
 dts/Bindings/nvmem/brcm,ocotp.txt                  |   17 +
 dts/Bindings/nvmem/lpc1850-otp.txt                 |   20 +
 dts/Bindings/opp/opp.txt                           |   27 +-
 dts/Bindings/pci/brcm,iproc-pcie.txt               |   43 +-
 dts/Bindings/pci/layerscape-pci.txt                |    1 +
 dts/Bindings/pci/nvidia,tegra20-pcie.txt           |  110 ++
 dts/Bindings/pci/pci.txt                           |    6 +
 dts/Bindings/pci/qcom,pcie.txt                     |   14 +-
 dts/Bindings/pci/rcar-pci.txt                      |    1 +
 dts/Bindings/pci/rockchip-pcie.txt                 |   11 +-
 .../{meson-usb2-phy.txt =3D> meson8b-usb2-phy.txt}   |    6 +-
 dts/Bindings/pinctrl/allwinner,sunxi-pinctrl.txt   |   30 +
 dts/Bindings/pinctrl/atmel,at91-pinctrl.txt        |    2 +
 dts/Bindings/pinctrl/meson,pinctrl.txt             |    2 +
 dts/Bindings/pinctrl/oxnas,pinctrl.txt             |    2 +-
 dts/Bindings/pinctrl/pinctrl-bindings.txt          |   44 +-
 dts/Bindings/pinctrl/pinctrl-palmas.txt            |    9 +
 dts/Bindings/pinctrl/pinctrl-single.txt            |    3 +
 dts/Bindings/pinctrl/pinctrl-sx150x.txt            |   74 +
 dts/Bindings/pinctrl/qcom,msm8994-pinctrl.txt      |  177 +++
 dts/Bindings/pinctrl/rockchip,pinctrl.txt          |    9 +-
 dts/Bindings/pinctrl/samsung-pinctrl.txt           |   19 +
 dts/Bindings/pinctrl/st,stm32-pinctrl.txt          |   10 +-
 dts/Bindings/pinctrl/ti,da850-pupd.txt             |   55 +
 dts/Bindings/power/domain-idle-state.txt           |   33 +
 dts/Bindings/power/power_domain.txt                |   43 +
 dts/Bindings/power/renesas,rcar-sysc.txt           |    8 +-
 dts/Bindings/power/supply/tps65217_charger.txt     |    7 +-
 dts/Bindings/pwm/pwm-bcm2835.txt                   |    2 +-
 dts/Bindings/pwm/pwm-hibvt.txt                     |   21 +
 dts/Bindings/regulator/pwm-regulator.txt           |    4 +-
 dts/Bindings/regulator/tps65218.txt                |   87 +-
 dts/Bindings/remoteproc/qcom,adsp.txt              |   98 ++
 dts/Bindings/remoteproc/qcom,wcnss-pil.txt         |   30 +-
 dts/Bindings/reserved-memory/ramoops.txt           |    3 +
 dts/Bindings/reset/oxnas,reset.txt                 |   44 +-
 dts/Bindings/reset/renesas,rst.txt                 |   37 +
 dts/Bindings/reset/st,sti-powerdown.txt            |   12 +-
 dts/Bindings/reset/st,sti-softreset.txt            |    8 +-
 dts/Bindings/reset/uniphier-reset.txt              |   62 +-
 dts/Bindings/rng/omap_rng.txt                      |   14 +-
 dts/Bindings/rtc/epson,rtc7301.txt                 |   16 +
 dts/Bindings/rtc/ingenic,jz4740-rtc.txt            |   37 +
 dts/Bindings/rtc/maxim,ds3231.txt                  |    2 +-
 dts/Bindings/rtc/pcf8563.txt                       |    2 +-
 dts/Bindings/rtc/twl-rtc.txt                       |   19 +-
 dts/Bindings/scsi/hisilicon-sas.txt                |    1 +
 dts/Bindings/security/tpm/ibmvtpm.txt              |   41 +
 dts/Bindings/security/tpm/tpm-i2c.txt              |   21 +
 dts/Bindings/security/tpm/tpm_tis_mmio.txt         |   25 +
 dts/Bindings/serial/cdns,uart.txt                  |    4 +-
 dts/Bindings/serial/nvidia,tegra20-hsuart.txt      |    2 +-
 dts/Bindings/serial/renesas,sci-serial.txt         |    8 +
 dts/Bindings/{powerpc =3D> soc}/fsl/guts.txt         |    3 +
 dts/Bindings/soc/mediatek/scpsys.txt               |   13 +-
 dts/Bindings/soc/qcom/qcom,smd.txt                 |    7 +
 dts/Bindings/sound/axentia,tse850-pcm5142.txt      |   88 ++
 dts/Bindings/sound/cs35l34.txt                     |   64 +
 dts/Bindings/sound/cs42l42.txt                     |  110 ++
 dts/Bindings/sound/davinci-mcbsp.txt               |    2 +-
 dts/Bindings/sound/omap-abe-twl6040.txt            |    2 +-
 dts/Bindings/sound/qcom,apq8016-sbc.txt            |    5 +-
 dts/Bindings/sound/qcom,msm8916-wcd-analog.txt     |   85 ++
 dts/Bindings/sound/qcom,msm8916-wcd-digital.txt    |   20 +
 dts/Bindings/sound/rt5514.txt                      |    3 +
 dts/Bindings/sound/rt5663.txt                      |    6 +-
 dts/Bindings/sound/rt5665.txt                      |   68 +
 dts/Bindings/sound/samsung,tm2-audio.txt           |   38 +
 dts/Bindings/sound/sun4i-codec.txt                 |   65 +-
 dts/Bindings/sound/sun8i-codec-analog.txt          |   16 +
 dts/Bindings/sound/tlv320aic31xx.txt               |    1 +
 dts/Bindings/sound/wm8580.txt                      |    4 +-
 dts/Bindings/spi/sh-msiof.txt                      |    1 +
 dts/Bindings/spi/spi-armada-3700.txt               |   25 +
 dts/Bindings/spi/spi-fsl-lpspi.txt                 |   19 +
 dts/Bindings/spi/spi-sun6i.txt                     |   25 +-
 dts/Bindings/sram/sram.txt                         |    2 +-
 dts/Bindings/submitting-patches.txt                |    2 +-
 dts/Bindings/thermal/brcm,bcm2835-thermal.txt      |   17 +
 dts/Bindings/thermal/rockchip-thermal.txt          |    3 +
 dts/Bindings/thermal/st-thermal.txt                |   28 +-
 dts/Bindings/timer/ezchip,nps400-timer0.txt        |   17 +
 ...p,nps400-timer.txt =3D> ezchip,nps400-timer1.txt} |    6 +-
 dts/Bindings/ufs/ufs-qcom.txt                      |    7 +-
 dts/Bindings/usb/atmel-usb.txt                     |   10 +-
 dts/Bindings/usb/da8xx-usb.txt                     |   43 +
 dts/Bindings/usb/dwc2.txt                          |    6 +-
 dts/Bindings/usb/mt8173-mtu3.txt                   |   87 ++
 dts/Bindings/usb/mt8173-xhci.txt                   |   54 +-
 dts/Bindings/usb/ohci-da8xx.txt                    |   23 +
 dts/Bindings/usb/s3c2410-usb.txt                   |   22 +
 dts/Bindings/usb/usb-xhci.txt                      |    1 +
 dts/Bindings/vendor-prefixes.txt                   |   20 +
 dts/Bindings/video/bridge/sil-sii8620.txt          |   33 +
 dts/include/dt-bindings/clock/hi3516cv300-clock.h  |   48 +
 dts/include/dt-bindings/clock/histb-clock.h        |   66 +
 dts/include/dt-bindings/clock/imx6ul-clock.h       |   15 +-
 dts/include/dt-bindings/clock/oxsemi,ox810se.h     |   30 +
 dts/include/dt-bindings/clock/oxsemi,ox820.h       |   40 +
 dts/include/dt-bindings/clock/qcom,gcc-msm8994.h   |  137 ++
 dts/include/dt-bindings/clock/qcom,rpmcc.h         |   69 +
 dts/include/dt-bindings/clock/r7s72100-clock.h     |    7 +
 dts/include/dt-bindings/clock/r8a7743-cpg-mssr.h   |   43 +
 dts/include/dt-bindings/clock/r8a7745-cpg-mssr.h   |   44 +
 dts/include/dt-bindings/clock/r8a7794-clock.h      |    3 +-
 dts/include/dt-bindings/clock/rk1108-cru.h         |  269 ++++
 dts/include/dt-bindings/clock/rk3188-cru-common.h  |    8 +-
 dts/include/dt-bindings/clock/stih415-clks.h       |   16 -
 dts/include/dt-bindings/clock/sun50i-a64-ccu.h     |  134 ++
 dts/include/dt-bindings/clock/tegra186-clock.h     |  940 +++++++++++++
 dts/include/dt-bindings/gpio/meson-gxl-gpio.h      |  131 ++
 dts/include/dt-bindings/input/linux-event-codes.h  |    2 +-
 dts/include/dt-bindings/mailbox/tegra186-hsp.h     |   24 +
 dts/include/dt-bindings/net/mscc-phy-vsc8531.h     |   21 -
 dts/include/dt-bindings/pinctrl/at91.h             |    2 +
 dts/include/dt-bindings/pinctrl/bcm2835.h          |    5 +
 dts/include/dt-bindings/pinctrl/qcom,pmic-gpio.h   |    4 +
 dts/include/dt-bindings/pinctrl/qcom,pmic-mpp.h    |    6 +
 dts/include/dt-bindings/pinctrl/rockchip.h         |   33 +
 dts/include/dt-bindings/power/mt2701-power.h       |   27 +
 dts/include/dt-bindings/power/r8a7743-sysc.h       |   25 +
 dts/include/dt-bindings/power/r8a7745-sysc.h       |   25 +
 dts/include/dt-bindings/power/tegra186-powergate.h |   39 +
 dts/include/dt-bindings/reset/oxsemi,ox810se.h     |   53 +
 dts/include/dt-bindings/reset/oxsemi,ox820.h       |   53 +
 dts/include/dt-bindings/reset/sun50i-a64-ccu.h     |   98 ++
 dts/include/dt-bindings/reset/tegra186-reset.h     |  217 +++
 dts/include/dt-bindings/sound/cs42l42.h            |   73 +
 dts/src/arc/abilis_tb10x.dtsi                      |    1 +
 dts/src/arc/axc001.dtsi                            |    2 +-
 dts/src/arc/axs101.dts                             |    2 +-
 dts/src/arc/axs103_idu.dts                         |    2 +-
 dts/src/arc/{zebu_hs.dts =3D> haps_hs.dts}           |    0
 dts/src/arc/{zebu_hs_idu.dts =3D> haps_hs_idu.dts}   |    0
 dts/src/arc/nsim_700.dts                           |    2 +-
 dts/src/arc/nsimosci.dts                           |    4 +
 dts/src/arm/am335x-baltos-ir2110.dts               |   10 +-
 dts/src/arm/am335x-baltos-ir3220.dts               |    2 +-
 dts/src/arm/am335x-baltos-ir5221.dts               |    4 +-
 dts/src/arm/am335x-baltos.dtsi                     |    9 +-
 dts/src/arm/am335x-bone-common.dtsi                |   20 +
 dts/src/arm/am335x-boneblack.dts                   |   11 +
 dts/src/arm/am335x-evm.dts                         |    5 +
 dts/src/arm/am335x-evmsk.dts                       |    5 +
 dts/src/arm/am335x-icev2.dts                       |   47 +-
 dts/src/arm/am33xx.dtsi                            |    7 +
 dts/src/arm/am3517.dtsi                            |    1 +
 dts/src/arm/am4372.dtsi                            |    4 +
 dts/src/arm/am437x-idk-evm.dts                     |  101 ++
 dts/src/arm/am571x-idk.dts                         |   81 ++
 dts/src/arm/am572x-idk.dts                         |   18 +-
 dts/src/arm/am57xx-beagle-x15-common.dtsi          |    1 +
 dts/src/arm/am57xx-idk-common.dtsi                 |   84 +-
 dts/src/arm/armada-370-db.dts                      |   63 +-
 dts/src/arm/armada-370-dlink-dns327l.dts           |   30 +-
 dts/src/arm/armada-370-mirabox.dts                 |   57 +-
 dts/src/arm/armada-370-netgear-rn102.dts           |   55 +-
 dts/src/arm/armada-370-netgear-rn104.dts           |   63 +-
 dts/src/arm/armada-370-rd.dts                      |   57 +-
 dts/src/arm/armada-370-seagate-nas-4bay.dts        |   27 +-
 dts/src/arm/armada-370-seagate-nas-xbay.dtsi       |   45 +-
 dts/src/arm/armada-370-seagate-personal-cloud.dtsi |   44 +-
 dts/src/arm/armada-370-synology-ds213j.dts         |   18 +-
 dts/src/arm/armada-370-xp.dtsi                     |   39 +-
 dts/src/arm/armada-370.dtsi                        |  136 +-
 dts/src/arm/armada-375-db.dts                      |  271 ++--
 dts/src/arm/armada-375.dtsi                        |   72 +-
 dts/src/arm/armada-385-turris-omnia.dts            |  340 +++++
 dts/src/arm/armada-38x.dtsi                        |    2 +-
 dts/src/arm/armada-39x.dtsi                        |    2 +-
 dts/src/arm/armada-xp-axpwifiap.dts                |   68 +-
 dts/src/arm/armada-xp-db.dts                       |  104 +-
 dts/src/arm/armada-xp-gp.dts                       |   80 +-
 dts/src/arm/armada-xp-lenovo-ix4-300d.dts          |   53 +-
 dts/src/arm/armada-xp-linksys-mamba.dts            |   52 +-
 dts/src/arm/armada-xp-matrix.dts                   |   20 +-
 dts/src/arm/armada-xp-mv78230.dtsi                 |   12 +-
 dts/src/arm/armada-xp-mv78260.dtsi                 |   20 +-
 dts/src/arm/armada-xp-mv78460.dtsi                 |   22 +-
 dts/src/arm/armada-xp-netgear-rn2120.dts           |   74 +-
 dts/src/arm/armada-xp-openblocks-ax3-4.dts         |   58 +-
 dts/src/arm/armada-xp-synology-ds414.dts           |   75 +-
 dts/src/arm/armada-xp.dtsi                         |   94 +-
 dts/src/arm/artpec6-devboard.dts                   |    4 +
 dts/src/arm/artpec6.dtsi                           |   29 +-
 dts/src/arm/at91-sama5d4_ma5d4.dtsi                |    4 +-
 dts/src/arm/at91-sama5d4_ma5d4evk.dts              |    4 +-
 dts/src/arm/at91rm9200.dtsi                        |    4 +-
 dts/src/arm/at91sam9260.dtsi                       |    4 +-
 dts/src/arm/at91sam9260ek.dts                      |    4 +-
 dts/src/arm/at91sam9261.dtsi                       |    4 +-
 dts/src/arm/at91sam9263.dtsi                       |    4 +-
 dts/src/arm/at91sam9g45.dtsi                       |    4 +-
 dts/src/arm/at91sam9n12.dtsi                       |    4 +-
 dts/src/arm/at91sam9rl.dtsi                        |    4 +-
 dts/src/arm/at91sam9x5.dtsi                        |    4 +-
 dts/src/arm/bcm-cygnus.dtsi                        |   21 +-
 dts/src/arm/bcm-nsp.dtsi                           |   41 +-
 dts/src/arm/bcm2835-rpi-a-plus.dts                 |   67 +-
 dts/src/arm/bcm2835-rpi-a.dts                      |   69 +-
 dts/src/arm/bcm2835-rpi-b-plus.dts                 |   68 +-
 dts/src/arm/bcm2835-rpi-b-rev2.dts                 |   68 +-
 dts/src/arm/bcm2835-rpi-b.dts                      |   69 +-
 dts/src/arm/bcm2835-rpi-zero.dts                   |   67 +-
 dts/src/arm/bcm2835-rpi.dtsi                       |   15 +-
 dts/src/arm/bcm2835.dtsi                           |    6 +
 dts/src/arm/bcm2836-rpi-2-b.dts                    |    2 +-
 dts/src/arm/bcm2836.dtsi                           |    6 +
 dts/src/arm/bcm283x.dtsi                           |  212 ++-
 dts/src/arm/bcm4708-luxul-xap-1510.dts             |   64 +
 dts/src/arm/bcm4709-asus-rt-ac87u.dts              |    2 +-
 dts/src/arm/bcm4709-buffalo-wxr-1900dhp.dts        |    2 +-
 dts/src/arm/bcm4709-netgear-r7000.dts              |    2 +-
 dts/src/arm/bcm4709-netgear-r8000.dts              |    6 +-
 dts/src/arm/bcm4709-tplink-archer-c9-v1.dts        |  114 ++
 dts/src/arm/bcm4709.dtsi                           |   11 +
 dts/src/arm/bcm47094-dlink-dir-885l.dts            |    3 +-
 dts/src/arm/bcm47094-luxul-xwr-3100.dts            |  111 ++
 dts/src/arm/bcm47094-netgear-r8500.dts             |  103 ++
 dts/src/arm/bcm47094.dtsi                          |   17 +
 dts/src/arm/bcm47189-tenda-ac9.dts                 |   74 +
 dts/src/arm/bcm5301x-nand-cs0-bch4.dtsi            |   13 +
 dts/src/arm/bcm5301x.dtsi                          |    7 +
 dts/src/arm/bcm53573.dtsi                          |  159 +++
 dts/src/arm/bcm958625k.dts                         |   34 +
 dts/src/arm/berlin2q-marvell-dmp.dts               |   12 +-
 dts/src/arm/cloudengines-pogoplug-series-3.dts     |   94 ++
 dts/src/arm/da850-lcdk.dts                         |   19 +-
 dts/src/arm/da850.dtsi                             |   70 +
 dts/src/arm/dm814x.dtsi                            |    2 +
 dts/src/arm/dm816x.dtsi                            |    3 +
 dts/src/arm/dra7.dtsi                              |    2 +
 dts/src/arm/dra71-evm.dts                          |  230 +++
 dts/src/arm/dra72-evm-common.dtsi                  |  348 +----
 dts/src/arm/dra72-evm-revc.dts                     |   31 +-
 dts/src/arm/dra72-evm-tps65917.dtsi                |  150 ++
 dts/src/arm/dra72-evm.dts                          |   14 +-
 dts/src/arm/emev2.dtsi                             |    3 +-
 dts/src/arm/exynos3250-artik5-eval.dts             |    2 +-
 dts/src/arm/exynos3250-artik5.dtsi                 |    2 +-
 dts/src/arm/exynos3250-monk.dts                    |    2 +-
 dts/src/arm/exynos3250-pinctrl.dtsi                |   20 +-
 dts/src/arm/exynos3250-rinato.dts                  |    2 +-
 dts/src/arm/exynos3250.dtsi                        |   97 +-
 dts/src/arm/exynos4.dtsi                           |  100 +-
 dts/src/arm/exynos4210-pinctrl.dtsi                |   20 +-
 dts/src/arm/exynos4210.dtsi                        |   36 +-
 dts/src/arm/exynos4412-itop-elite.dts              |  240 ++++
 dts/src/arm/exynos4412-itop-scp-core.dtsi          |  501 +++++++
 dts/src/arm/exynos4412-odroidx.dts                 |    5 +
 dts/src/arm/exynos4415-pinctrl.dtsi                |  575 --------
 dts/src/arm/exynos4415.dtsi                        |  650 ---------
 dts/src/arm/exynos4x12-pinctrl.dtsi                |   20 +-
 dts/src/arm/exynos4x12.dtsi                        |   50 +-
 dts/src/arm/exynos5.dtsi                           |   64 +-
 dts/src/arm/exynos5250-snow-common.dtsi            |    4 +
 dts/src/arm/exynos5250.dtsi                        |   80 +-
 dts/src/arm/exynos5260.dtsi                        |   43 +-
 dts/src/arm/exynos5410-odroidxu.dts                |   69 +
 dts/src/arm/exynos5410-pinctrl.dtsi                |    9 +
 dts/src/arm/exynos5410.dtsi                        |   85 +-
 dts/src/arm/exynos5420-peach-pit.dts               |    3 +
 dts/src/arm/exynos5420.dtsi                        |   78 +-
 dts/src/arm/exynos5422-odroidxu3-common.dtsi       |   12 +-
 dts/src/arm/exynos5440.dtsi                        |   72 +-
 dts/src/arm/exynos54xx.dtsi                        |   34 +-
 dts/src/arm/exynos5800-peach-pi.dts                |    3 +
 dts/src/arm/hi3620.dtsi                            |    6 +-
 dts/src/arm/hip01.dtsi                             |    2 -
 dts/src/arm/hisi-x5hd2.dtsi                        |   10 +-
 dts/src/arm/imx1.dtsi                              |    4 +-
 dts/src/arm/imx23.dtsi                             |    6 +-
 dts/src/arm/imx25.dtsi                             |    4 +-
 dts/src/arm/imx27.dtsi                             |    4 +-
 dts/src/arm/imx28-m28.dtsi                         |    4 +-
 dts/src/arm/imx28-m28evk.dts                       |    4 +-
 dts/src/arm/imx28.dtsi                             |    4 +-
 dts/src/arm/imx31.dtsi                             |   23 +-
 dts/src/arm/imx35.dtsi                             |    4 +-
 dts/src/arm/imx50.dtsi                             |   48 +-
 dts/src/arm/imx51.dtsi                             |   48 +-
 dts/src/arm/imx53-m53.dtsi                         |    4 +-
 dts/src/arm/imx53-m53evk.dts                       |    4 +-
 dts/src/arm/imx53-qsb.dts                          |   14 +-
 dts/src/arm/imx53.dtsi                             |   72 +-
 dts/src/arm/imx6dl-colibri-eval-v3.dts             |  253 ++++
 dts/src/arm/imx6dl-icore.dts                       |   59 +
 dts/src/arm/imx6dl-riotboard.dts                   |    2 +-
 dts/src/arm/imx6dl-tx6dl-comtft.dts                |    2 +-
 dts/src/arm/imx6dl-tx6u-801x.dts                   |    2 +-
 dts/src/arm/imx6q-apalis-ixora.dts                 |   22 -
 dts/src/arm/imx6q-b650v3.dts                       |    6 +
 dts/src/arm/imx6q-cm-fx6.dts                       |    1 -
 dts/src/arm/imx6q-evi.dts                          |    3 -
 dts/src/arm/imx6q-icore.dts                        |   59 +
 dts/src/arm/imx6q-nitrogen6_som2.dts               |   53 +
 dts/src/arm/imx6q-novena.dts                       |    4 +
 dts/src/arm/imx6q-phytec-pbab01.dts                |    2 +-
 dts/src/arm/imx6q-tx6q-1010-comtft.dts             |    2 +-
 dts/src/arm/imx6q-tx6q-1010.dts                    |    2 +-
 dts/src/arm/imx6q-tx6q-1020-comtft.dts             |    2 +-
 dts/src/arm/imx6q-tx6q-1020.dts                    |    2 +-
 dts/src/arm/imx6q-utilite-pro.dts                  |   53 +-
 dts/src/arm/imx6qdl-apalis.dtsi                    |    9 +
 dts/src/arm/imx6qdl-apf6dev.dtsi                   |   14 +-
 dts/src/arm/imx6qdl-colibri.dtsi                   |  890 ++++++++++++
 dts/src/arm/imx6qdl-gw52xx.dtsi                    |    4 +-
 dts/src/arm/imx6qdl-gw53xx.dtsi                    |    4 +-
 dts/src/arm/imx6qdl-gw54xx.dtsi                    |    4 +-
 dts/src/arm/imx6qdl-gw552x.dtsi                    |    2 +-
 dts/src/arm/imx6qdl-icore.dtsi                     |  265 ++++
 dts/src/arm/imx6qdl-nit6xlite.dtsi                 |   32 +-
 dts/src/arm/imx6qdl-nitrogen6_max.dtsi             |   18 +-
 dts/src/arm/imx6qdl-nitrogen6_som2.dtsi            |  770 +++++++++++
 dts/src/arm/imx6qdl-nitrogen6x.dtsi                |   13 +-
 dts/src/arm/imx6qdl-phytec-pfla02.dtsi             |    6 +-
 dts/src/arm/imx6qdl-sabreauto.dtsi                 |    4 +-
 dts/src/arm/imx6qdl-sabrelite.dtsi                 |   10 +-
 dts/src/arm/imx6qdl-sabresd.dtsi                   |    4 +-
 dts/src/arm/imx6qdl-tx6.dtsi                       |   32 +-
 dts/src/arm/imx6qdl-wandboard-revb1.dtsi           |    2 +-
 dts/src/arm/imx6qdl-wandboard.dtsi                 |    4 +-
 dts/src/arm/imx6qdl.dtsi                           |   15 +-
 dts/src/arm/imx6qp.dtsi                            |   17 +
 dts/src/arm/imx6sl.dtsi                            |    8 +-
 dts/src/arm/imx6sx-sdb.dtsi                        |   16 +-
 dts/src/arm/imx6sx-udoo-neo-basic.dts              |   69 +
 dts/src/arm/imx6sx-udoo-neo-extended.dts           |   54 +
 dts/src/arm/imx6sx-udoo-neo-full.dts               |   69 +
 dts/src/arm/imx6sx-udoo-neo.dtsi                   |  293 ++++
 dts/src/arm/imx6sx.dtsi                            |   18 +-
 dts/src/arm/imx6ul-14x14-evk.dts                   |   10 +-
 dts/src/arm/imx6ul-liteboard.dts                   |  147 ++
 dts/src/arm/imx6ul-litesom.dtsi                    |   82 ++
 dts/src/arm/imx6ul.dtsi                            |    4 +-
 dts/src/arm/imx6ull-14x14-evk.dts                  |   52 +
 dts/src/arm/imx6ull-pinfunc.h                      |   56 +
 dts/src/arm/imx6ull.dtsi                           |   43 +
 dts/src/arm/imx7d-pinfunc.h                        |   12 +-
 dts/src/arm/imx7s.dtsi                             |    9 +-
 dts/src/arm/integratorap.dts                       |   35 +
 dts/src/arm/integratorcp.dts                       |   26 +
 dts/src/arm/keystone-k2g.dtsi                      |    1 +
 dts/src/arm/keystone-k2l.dtsi                      |    1 +
 dts/src/arm/kirkwood-topkick.dts                   |    2 +-
 dts/src/arm/logicpd-som-lv.dtsi                    |    5 +
 dts/src/arm/logicpd-torpedo-som.dtsi               |    4 +-
 dts/src/arm/lpc32xx.dtsi                           |    4 +
 dts/src/arm/ls1021a.dtsi                           |   84 +-
 dts/src/arm/mps2-an385.dts                         |    2 +-
 dts/src/arm/mps2-an399.dts                         |    2 +-
 dts/src/arm/mps2.dtsi                              |    4 +-
 dts/src/arm/mt2701.dtsi                            |   50 +-
 dts/src/arm/omap2.dtsi                             |    1 +
 dts/src/arm/omap2420.dtsi                          |    2 +
 dts/src/arm/omap2430.dtsi                          |    2 +
 dts/src/arm/omap3-n900.dts                         |    2 +
 dts/src/arm/omap3.dtsi                             |    3 +
 dts/src/arm/omap34xx.dtsi                          |    1 +
 dts/src/arm/omap36xx.dtsi                          |    1 +
 dts/src/arm/omap4-droid4-xt894.dts                 |  188 +++
 dts/src/arm/omap4.dtsi                             |    3 +
 dts/src/arm/omap5-board-common.dtsi                |    7 +-
 dts/src/arm/omap5-uevm.dts                         |   92 ++
 dts/src/arm/omap5.dtsi                             |    3 +
 dts/src/arm/orion5x-linkstation-lsgl.dts           |    4 +
 dts/src/arm/orion5x-lschl.dts                      |  171 +++
 dts/src/arm/ox820.dtsi                             |  296 ++++
 dts/src/arm/pxa25x.dtsi                            |  117 ++
 dts/src/arm/pxa27x.dtsi                            |   40 +
 dts/src/arm/pxa2xx.dtsi                            |    4 +-
 dts/src/arm/pxa3xx.dtsi                            |    1 +
 dts/src/arm/qcom-apq8060-dragonboard.dts           |  119 ++
 dts/src/arm/qcom-apq8064-asus-nexus7-flo.dts       |   77 +-
 dts/src/arm/qcom-apq8064-ifc6410.dts               |   74 +
 dts/src/arm/qcom-apq8064.dtsi                      |  325 +++++
 dts/src/arm/qcom-apq8084.dtsi                      |   16 +-
 dts/src/arm/qcom-mdm9615-wp8548-mangoh-green.dts   |  281 ++++
 dts/src/arm/qcom-mdm9615-wp8548.dtsi               |  170 +++
 dts/src/arm/qcom-mdm9615.dtsi                      |  557 ++++++++
 dts/src/arm/qcom-msm8660.dtsi                      |   17 +
 dts/src/arm/qcom-msm8974-lge-nexus5-hammerhead.dts |   29 +
 dts/src/arm/qcom-msm8974.dtsi                      |   16 +-
 dts/src/arm/r7s72100-rskrza1.dts                   |    5 +
 dts/src/arm/r7s72100.dtsi                          |   55 +
 dts/src/arm/r8a73a4.dtsi                           |    5 +
 dts/src/arm/r8a7740.dtsi                           |    4 +-
 dts/src/arm/r8a7743-sk-rzg1m.dts                   |   57 +
 dts/src/arm/r8a7743.dtsi                           |  476 +++++++
 dts/src/arm/r8a7745-sk-rzg1e.dts                   |   52 +
 dts/src/arm/r8a7745.dtsi                           |  476 +++++++
 dts/src/arm/r8a7778.dtsi                           |    9 +-
 dts/src/arm/r8a7779-marzen.dts                     |    2 +-
 dts/src/arm/r8a7779.dtsi                           |   16 +-
 dts/src/arm/r8a7790-lager.dts                      |  118 +-
 dts/src/arm/r8a7790.dtsi                           |   16 +-
 dts/src/arm/r8a7791-koelsch.dts                    |  137 +-
 dts/src/arm/r8a7791.dtsi                           |   19 +-
 dts/src/arm/r8a7792-wheat.dts                      |  126 ++
 dts/src/arm/r8a7792.dtsi                           |   61 +-
 dts/src/arm/r8a7793-gose.dts                       |   12 +-
 dts/src/arm/r8a7793.dtsi                           |   43 +-
 dts/src/arm/r8a7794-alt.dts                        |   62 +-
 dts/src/arm/r8a7794.dtsi                           |   86 +-
 dts/src/arm/rk1108-evb.dts                         |   69 +
 dts/src/arm/rk1108.dtsi                            |  452 ++++++
 dts/src/arm/rk3036-evb.dts                         |    2 +-
 dts/src/arm/rk3036-kylin.dts                       |    2 +-
 dts/src/arm/rk3036.dtsi                            |   11 +-
 dts/src/arm/rk3066a-bqcurie2.dts                   |    2 +-
 dts/src/arm/rk3066a-marsboard.dts                  |    2 +-
 dts/src/arm/rk3066a-mk808.dts                      |  195 +++
 dts/src/arm/rk3066a-rayeager.dts                   |    2 +-
 dts/src/arm/rk3066a.dtsi                           |   31 +-
 dts/src/arm/rk3188-px3-evb.dts                     |  328 +++++
 dts/src/arm/rk3188-radxarock.dts                   |    2 +-
 dts/src/arm/rk3188.dtsi                            |    2 +-
 dts/src/arm/rk3228-evb.dts                         |    2 +-
 dts/src/arm/rk3229-evb.dts                         |    2 +-
 dts/src/arm/rk322x.dtsi                            |    6 +-
 dts/src/arm/rk3288-evb.dtsi                        |    2 +-
 dts/src/arm/rk3288-fennec.dts                      |    2 +-
 dts/src/arm/rk3288-firefly-reload-core.dtsi        |    2 +-
 dts/src/arm/rk3288-firefly.dtsi                    |    2 +-
 dts/src/arm/rk3288-miqi.dts                        |    2 +-
 dts/src/arm/rk3288-popmetal.dts                    |   34 +-
 dts/src/arm/rk3288-r89.dts                         |    2 +-
 dts/src/arm/rk3288-rock2-som.dtsi                  |    2 +-
 dts/src/arm/rk3288-veyron.dtsi                     |    2 +-
 dts/src/arm/rk3288.dtsi                            |   15 +-
 dts/src/arm/rk3xxx.dtsi                            |    5 +-
 dts/src/arm/sama5d2.dtsi                           |   47 +-
 dts/src/arm/sama5d3.dtsi                           |    4 +-
 dts/src/arm/sama5d4.dtsi                           |   31 +-
 dts/src/arm/sh73a0.dtsi                            |    4 +-
 dts/src/arm/socfpga.dtsi                           |   33 +
 dts/src/arm/socfpga_arria10.dtsi                   |   32 +
 dts/src/arm/socfpga_arria10_socdk.dtsi             |   49 +
 dts/src/arm/socfpga_arria10_socdk_qspi.dts         |   49 +
 dts/src/arm/socfpga_arria5_socdk.dts               |   33 +
 dts/src/arm/socfpga_cyclone5_de0_sockit.dts        |    2 +-
 dts/src/arm/socfpga_cyclone5_mcv.dtsi              |    2 +-
 dts/src/arm/socfpga_cyclone5_mcvevk.dts            |    4 +-
 dts/src/arm/socfpga_cyclone5_socdk.dts             |   35 +-
 dts/src/arm/socfpga_cyclone5_sockit.dts            |   23 +-
 dts/src/arm/socfpga_cyclone5_socrates.dts          |   19 +
 dts/src/arm/socfpga_cyclone5_sodia.dts             |  123 ++
 dts/src/arm/socfpga_cyclone5_vining_fpga.dts       |    2 +-
 dts/src/arm/spear13xx.dtsi                         |    2 +
 dts/src/arm/ste-snowball.dts                       |   15 +-
 dts/src/arm/stih407-clock.dtsi                     |   10 +
 dts/src/arm/stih407-family.dtsi                    |   48 +-
 dts/src/arm/stih407-pinctrl.dtsi                   |    2 +-
 dts/src/arm/stih407.dtsi                           |    2 +-
 dts/src/arm/stih410-b2260.dts                      |   24 +-
 dts/src/arm/stih410-clock.dtsi                     |    3 +-
 dts/src/arm/stih410.dtsi                           |    2 +-
 dts/src/arm/stih415-b2000.dts                      |   15 -
 dts/src/arm/stih415-b2020.dts                      |   15 -
 dts/src/arm/stih415-clock.dtsi                     |  533 -------
 dts/src/arm/stih415-pinctrl.dtsi                   |  545 --------
 dts/src/arm/stih415.dtsi                           |  234 ----
 dts/src/arm/stih416-b2000.dts                      |   15 -
 dts/src/arm/stih416-b2020.dts                      |   37 -
 dts/src/arm/stih416-b2020e.dts                     |   65 -
 dts/src/arm/stih416-clock.dtsi                     |  756 ----------
 dts/src/arm/stih416-pinctrl.dtsi                   |  692 ---------
 dts/src/arm/stih416.dtsi                           |  517 -------
 dts/src/arm/stih41x-b2000.dtsi                     |   96 --
 dts/src/arm/stih41x-b2020.dtsi                     |   82 --
 dts/src/arm/stih41x-b2020x.dtsi                    |   32 -
 dts/src/arm/stih41x.dtsi                           |   47 -
 dts/src/arm/stihxxx-b2120.dtsi                     |   21 +-
 dts/src/arm/stm32429i-eval.dts                     |   29 +-
 dts/src/arm/stm32746g-eval.dts                     |   96 ++
 dts/src/arm/stm32f429-disco.dts                    |   13 +
 dts/src/arm/stm32f429.dtsi                         |   40 +-
 dts/src/arm/stm32f469-disco.dts                    |    8 +
 dts/src/arm/stm32f746.dtsi                         |  304 ++++
 dts/src/arm/sun4i-a10.dtsi                         |    3 +-
 dts/src/arm/sun5i-a10s-olinuxino-micro.dts         |    4 +-
 dts/src/arm/sun5i-a10s.dtsi                        |    4 +-
 dts/src/arm/sun5i-a13-olinuxino.dts                |   54 +
 dts/src/arm/sun5i-a13-utoo-p66.dts                 |   38 +-
 dts/src/arm/sun5i-gr8-chip-pro.dts                 |  266 ++++
 dts/src/arm/{ntc-gr8-evb.dts =3D> sun5i-gr8-evb.dts} |   35 +-
 dts/src/arm/{ntc-gr8.dtsi =3D> sun5i-gr8.dtsi}       |   47 +-
 dts/src/arm/sun5i-r8-chip.dts                      |   69 +
 dts/src/arm/sun5i-reference-design-tablet.dtsi     |   25 +
 dts/src/arm/sun5i.dtsi                             |   27 +-
 dts/src/arm/sun6i-a31-hummingbird.dts              |   80 ++
 dts/src/arm/sun6i-a31.dtsi                         |  266 +++-
 dts/src/arm/sun6i-a31s-sina31s.dts                 |    8 +
 dts/src/arm/sun6i-a31s.dtsi                        |    8 +
 dts/src/arm/sun7i-a20-bananapi-m1-plus.dts         |   62 +-
 dts/src/arm/sun7i-a20-olimex-som-evb.dts           |    4 +
 dts/src/arm/sun7i-a20.dtsi                         |    3 +-
 dts/src/arm/sun8i-a23-a33.dtsi                     |   10 +-
 dts/src/arm/sun8i-a23-polaroid-mid2407pxe03.dts    |    7 -
 dts/src/arm/sun8i-a33-sinlinx-sina33.dts           |    5 +
 dts/src/arm/sun8i-h3-nanopi-m1.dts                 |   64 +
 dts/src/arm/sun8i-h3-nanopi-neo.dts                |   79 +-
 dts/src/arm/sun8i-h3-nanopi.dtsi                   |  144 ++
 dts/src/arm/sun8i-h3.dtsi                          |   54 +-
 dts/src/arm/sun8i-reference-design-tablet.dtsi     |    7 +
 dts/src/arm/sun9i-a80-cubieboard4.dts              |   32 +
 dts/src/arm/sun9i-a80-optimus.dts                  |   30 +
 dts/src/arm/sun9i-a80.dtsi                         |   14 +-
 dts/src/arm/tegra124-apalis.dtsi                   |    2 +-
 dts/src/arm/tegra124-nyan.dtsi                     |    8 +-
 dts/src/arm/tegra20.dtsi                           |   13 +
 dts/src/arm/tegra30-apalis.dtsi                    |   49 +
 dts/src/arm/tegra30-colibri.dtsi                   |   49 +
 dts/src/arm/tegra30.dtsi                           |   13 +
 dts/src/arm/tps65217.dtsi                          |   12 +
 dts/src/arm/uniphier-common32.dtsi                 |  199 ---
 dts/src/arm/uniphier-ld4.dtsi                      |  358 +++--
 dts/src/arm/uniphier-pro4.dtsi                     |  378 +++--
 dts/src/arm/uniphier-pro5.dtsi                     |  432 ++++--
 dts/src/arm/uniphier-pxs2.dtsi                     |  399 ++++--
 dts/src/arm/uniphier-sld3.dtsi                     |   21 +-
 dts/src/arm/uniphier-sld8.dtsi                     |  359 +++--
 dts/src/arm/vexpress-v2p-ca15-tc1.dts              |    2 +-
 dts/src/arm/vexpress-v2p-ca15_a7.dts               |    7 +-
 dts/src/arm/vf-colibri.dtsi                        |    4 +
 dts/src/arm/vf500.dtsi                             |    2 +-
 dts/src/arm/vf610-zii-dev-rev-b.dts                |   66 +-
 dts/src/arm/vfxxx.dtsi                             |   18 +
 dts/src/arm/zynq-7000.dtsi                         |   10 +-
 dts/src/arm/zynq-microzed.dts                      |   96 ++
 dts/src/arm/zynq-parallella.dts                    |    2 +-
 dts/src/arm/zynq-zc702.dts                         |    2 +-
 dts/src/arm/zynq-zc706.dts                         |    2 +-
 dts/src/arm/zynq-zed.dts                           |    2 +-
 dts/src/arm/zynq-zybo.dts                          |    2 +-
 dts/src/arm64/allwinner/sun50i-a64-pine64-plus.dts |   50 +
 dts/src/arm64/allwinner/sun50i-a64-pine64.dts      |   74 +
 dts/src/arm64/allwinner/sun50i-a64.dtsi            |  261 ++++
 dts/src/arm64/amlogic/meson-gx-p23x-q20x.dtsi      |  190 +++
 dts/src/arm64/amlogic/meson-gx.dtsi                |  376 +++++
 dts/src/arm64/amlogic/meson-gxbb-nexbox-a95x.dts   |  247 ++++
 dts/src/arm64/amlogic/meson-gxbb-odroidc2.dts      |  119 +-
 dts/src/arm64/amlogic/meson-gxbb-p20x.dtsi         |  145 +-
 dts/src/arm64/amlogic/meson-gxbb-vega-s95.dtsi     |  106 +-
 dts/src/arm64/amlogic/meson-gxbb.dtsi              |  905 +++++-------
 dts/src/arm64/amlogic/meson-gxl-nexbox-a95x.dts    |  221 +++
 dts/src/arm64/amlogic/meson-gxl-s905d-p230.dts     |   77 ++
 dts/src/arm64/amlogic/meson-gxl-s905d-p231.dts     |   58 +
 dts/src/arm64/amlogic/meson-gxl-s905d.dtsi         |   48 +
 dts/src/arm64/amlogic/meson-gxl-s905x-p212.dts     |   69 +
 dts/src/arm64/amlogic/meson-gxl-s905x.dtsi         |   54 +
 dts/src/arm64/amlogic/meson-gxl.dtsi               |  305 ++++
 dts/src/arm64/amlogic/meson-gxm-nexbox-a1.dts      |  185 +++
 dts/src/arm64/amlogic/meson-gxm-s912-q200.dts      |   77 ++
 dts/src/arm64/amlogic/meson-gxm-s912-q201.dts      |   58 +
 dts/src/arm64/amlogic/meson-gxm.dtsi               |  118 ++
 dts/src/arm64/arm/juno-base.dtsi                   |   82 +-
 dts/src/arm64/arm/juno-r1.dts                      |    8 +-
 dts/src/arm64/arm/juno-r2.dts                      |    8 +-
 dts/src/arm64/arm/juno.dts                         |    8 +-
 dts/src/arm64/arm/rtsm_ve-aemv8a.dts               |    2 +-
 dts/src/arm64/broadcom/bcm2835-rpi.dtsi            |   15 +-
 dts/src/arm64/broadcom/bcm2837-rpi-3-b.dts         |    8 +-
 dts/src/arm64/broadcom/bcm2837.dtsi                |    8 +-
 dts/src/arm64/broadcom/bcm283x-rpi-usb-host.dtsi   |    3 +
 dts/src/arm64/broadcom/bcm283x.dtsi                |  212 ++-
 dts/src/arm64/broadcom/ns2-svk.dts                 |   45 +
 dts/src/arm64/broadcom/ns2.dtsi                    |   74 +-
 dts/src/arm64/exynos/exynos5433-pinctrl.dtsi       |  804 +++++++++++
 dts/src/arm64/exynos/exynos5433-tm2.dts            | 1049 ++++++++++++++
 dts/src/arm64/exynos/exynos5433-tm2e.dts           |   41 +
 .../exynos/exynos5433-tmu-g3d-sensor-conf.dtsi     |   23 +
 .../arm64/exynos/exynos5433-tmu-sensor-conf.dtsi   |   22 +
 dts/src/arm64/exynos/exynos5433-tmu.dtsi           |  296 ++++
 dts/src/arm64/exynos/exynos5433.dtsi               | 1462 ++++++++++++++++=
++++
 dts/src/arm64/exynos/exynos7-pinctrl.dtsi          |   20 +-
 dts/src/arm64/exynos/exynos7.dtsi                  |   87 +-
 dts/src/arm64/freescale/fsl-ls1043a-qds.dts        |    2 +-
 dts/src/arm64/freescale/fsl-ls1043a-rdb.dts        |    2 +-
 dts/src/arm64/freescale/fsl-ls1043a.dtsi           |   79 ++
 dts/src/arm64/freescale/fsl-ls1046a-qds.dts        |  212 +++
 dts/src/arm64/freescale/fsl-ls1046a-rdb.dts        |  150 ++
 dts/src/arm64/freescale/fsl-ls1046a.dtsi           |  515 +++++++
 dts/src/arm64/freescale/fsl-ls2080a-qds.dts        |    2 +-
 dts/src/arm64/freescale/fsl-ls2080a-rdb.dts        |    2 +-
 dts/src/arm64/freescale/fsl-ls2080a-simu.dts       |    2 +-
 dts/src/arm64/freescale/fsl-ls2080a.dtsi           |  123 +-
 dts/src/arm64/hisilicon/hi6220.dtsi                |    4 +-
 dts/src/arm64/hisilicon/hip06-d03.dts              |    8 -
 dts/src/arm64/hisilicon/hip06.dtsi                 |   23 +-
 dts/src/arm64/hisilicon/hip07-d05.dts              |   66 +
 dts/src/arm64/hisilicon/hip07.dtsi                 | 1059 ++++++++++++++
 dts/src/arm64/marvell/armada-3720-db.dts           |   25 +-
 dts/src/arm64/marvell/armada-3720-espressobin.dts  |   82 ++
 dts/src/arm64/marvell/armada-37xx.dtsi             |   29 +-
 dts/src/arm64/marvell/armada-ap806.dtsi            |    2 +-
 dts/src/arm64/marvell/armada-cp110-master.dtsi     |   12 +-
 dts/src/arm64/marvell/armada-cp110-slave.dtsi      |   16 +-
 dts/src/arm64/marvell/berlin4ct-dmp.dts            |    2 +-
 dts/src/arm64/marvell/berlin4ct-stb.dts            |    2 +-
 dts/src/arm64/marvell/berlin4ct.dtsi               |    2 +-
 dts/src/arm64/mediatek/mt8173-evb.dts              |   63 +-
 dts/src/arm64/mediatek/mt8173.dtsi                 |  160 ++-
 dts/src/arm64/nvidia/tegra186-p2771-0000.dts       |    8 +
 dts/src/arm64/nvidia/tegra186-p3310.dtsi           |   64 +
 dts/src/arm64/nvidia/tegra186.dtsi                 |  398 ++++++
 dts/src/arm64/nvidia/tegra210-p2180.dtsi           |   18 +
 dts/src/arm64/nvidia/tegra210-p2371-2180.dts       |   26 +
 dts/src/arm64/nvidia/tegra210-smaug.dts            |    3 +-
 dts/src/arm64/nvidia/tegra210.dtsi                 |   63 +
 dts/src/arm64/qcom/apq8016-sbc.dtsi                |   73 +-
 dts/src/arm64/qcom/apq8096-db820c-pmic-pins.dtsi   |   15 +
 dts/src/arm64/qcom/apq8096-db820c.dtsi             |    2 +
 dts/src/arm64/qcom/msm8916.dtsi                    |   73 +-
 dts/src/arm64/qcom/msm8992-bullhead-rev-101.dts    |   41 +
 dts/src/arm64/qcom/msm8992-pins.dtsi               |   38 +
 dts/src/arm64/qcom/msm8992.dtsi                    |  184 +++
 dts/src/arm64/qcom/msm8994-angler-rev-101.dts      |   40 +
 dts/src/arm64/qcom/msm8994-pins.dtsi               |   38 +
 dts/src/arm64/qcom/msm8994.dtsi                    |  216 +++
 dts/src/arm64/qcom/msm8996.dtsi                    |  101 +-
 dts/src/arm64/qcom/pm8916.dtsi                     |   45 +-
 dts/src/arm64/qcom/pm8994.dtsi                     |    1 +
 dts/src/arm64/renesas/r8a7795-h3ulcb.dts           |   53 +-
 dts/src/arm64/renesas/r8a7795-salvator-x.dts       |   85 +-
 dts/src/arm64/renesas/r8a7795.dtsi                 |   34 +-
 dts/src/arm64/renesas/r8a7796-m3ulcb.dts           |  189 +++
 dts/src/arm64/renesas/r8a7796-salvator-x.dts       |  160 +++
 dts/src/arm64/renesas/r8a7796.dtsi                 |  260 ++++
 dts/src/arm64/rockchip/rk3368-geekbox.dts          |    3 -
 dts/src/arm64/rockchip/rk3368-orion-r68-meta.dts   |    6 +-
 dts/src/arm64/rockchip/rk3368-px5-evb.dts          |  314 +++++
 dts/src/arm64/rockchip/rk3368.dtsi                 |   19 +-
 dts/src/arm64/rockchip/rk3399-evb.dts              |   40 +
 dts/src/arm64/rockchip/rk3399.dtsi                 |   63 +-
 dts/src/arm64/socionext/uniphier-ld11.dtsi         |   59 +-
 dts/src/arm64/socionext/uniphier-ld20.dtsi         |  123 +-
 dts/src/arm64/zte/zx296718.dtsi                    |   33 +-
 dts/src/mips/ingenic/jz4740.dtsi                   |   11 +
 dts/src/mips/ingenic/qi_lb60.dts                   |    4 +
 dts/src/mips/mti/malta.dts                         |    3 +-
 dts/src/powerpc/fsl/t1023rdb.dts                   |   29 +
 dts/src/powerpc/fsl/t1023si-post.dtsi              |  103 ++
 dts/src/powerpc/fsl/t1024qds.dts                   |   29 +
 dts/src/powerpc/fsl/t1024rdb.dts                   |   33 +
 dts/src/powerpc/fsl/t1042d4rdb.dts                 |   52 +
 dts/src/powerpc/fsl/t4240rdb.dts                   |    4 +
 dts/src/xtensa/kc705.dts                           |   16 +
 fs/devfs.c                                         |    5 +
 fs/fs.c                                            |    2 +-
 images/Makefile.imx                                |    5 +
 include/driver.h                                   |    1 +
 include/i2c/i2c-algo-bit.h                         |    1 -
 include/linux/clk/clk-conf.h                       |   17 +
 include/menu.h                                     |    2 +-
 include/regmap.h                                   |    6 +-
 lib/int_sqrt.c                                     |    1 +
 lib/libfile.c                                      |   23 +-
 scripts/checkpatch.pl                              |    2 +-
 scripts/imx/imx-usb-loader.c                       |   63 +-
 scripts/kwbimage.c                                 |   56 +-
 919 files changed, 42609 insertions(+), 9764 deletions(-)
 create mode 100644 arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6u=
l-phycore/boot/nand
 create mode 100644 arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6u=
l-phycore/init/automount
 create mode 100644 arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl=
063-512mb.imxcfg
 create mode 100644 arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl=
063.h
 create mode 100644 arch/arm/dts/imx6ul-phytec-phycore-som.dts
 create mode 100644 arch/arm/mach-imx/src.c
 create mode 100644 drivers/clk/clk-conf.c
 create mode 100644 drivers/clk/imx/Makefile
 rename {arch/arm/mach-imx =3D> drivers/clk/imx}/clk-gate-exclusive.c (100%)
 rename {arch/arm/mach-imx =3D> drivers/clk/imx}/clk-gate2.c (91%)
 rename {arch/arm/mach-imx =3D> drivers/clk/imx}/clk-imx1.c (100%)
 rename {arch/arm/mach-imx =3D> drivers/clk/imx}/clk-imx21.c (100%)
 rename {arch/arm/mach-imx =3D> drivers/clk/imx}/clk-imx25.c (100%)
 rename {arch/arm/mach-imx =3D> drivers/clk/imx}/clk-imx27.c (100%)
 rename {arch/arm/mach-imx =3D> drivers/clk/imx}/clk-imx31.c (100%)
 rename {arch/arm/mach-imx =3D> drivers/clk/imx}/clk-imx35.c (100%)
 rename {arch/arm/mach-imx =3D> drivers/clk/imx}/clk-imx5.c (100%)
 rename {arch/arm/mach-imx =3D> drivers/clk/imx}/clk-imx6.c (100%)
 rename {arch/arm/mach-imx =3D> drivers/clk/imx}/clk-imx6sx.c (100%)
 rename {arch/arm/mach-imx =3D> drivers/clk/imx}/clk-imx6ul.c (100%)
 rename {arch/arm/mach-imx =3D> drivers/clk/imx}/clk-pfd.c (100%)
 rename {arch/arm/mach-imx =3D> drivers/clk/imx}/clk-pllv1.c (100%)
 rename {arch/arm/mach-imx =3D> drivers/clk/imx}/clk-pllv2.c (100%)
 rename {arch/arm/mach-imx =3D> drivers/clk/imx}/clk-pllv3.c (97%)
 create mode 100644 drivers/clk/imx/clk-vf610.c
 create mode 100644 drivers/clk/imx/clk.c
 rename {arch/arm/mach-imx =3D> drivers/clk/imx}/clk.h (83%)
 create mode 100644 drivers/gpio/gpio-sx150x.c
 create mode 100644 drivers/gpio/gpio-vf610.c
 create mode 100644 drivers/serial/serial_lpuart.c
 create mode 100644 drivers/video/imx-ipu-v3/imx-pd.c
 create mode 100644 dts/Bindings/arm/amlogic,scpi.txt
 rename dts/Bindings/arm/bcm/{ns2.txt =3D> brcm,ns2.txt} (100%)
 create mode 100644 dts/Bindings/arm/cpu-capacity.txt
 create mode 100644 dts/Bindings/arm/juno,scpi.txt
 create mode 100644 dts/Bindings/arm/keystone/ti,sci.txt
 create mode 100644 dts/Bindings/arm/swir.txt
 create mode 100644 dts/Bindings/bus/nvidia,tegra20-gmi.txt
 create mode 100644 dts/Bindings/bus/ti,da850-mstpri.txt
 rename dts/Bindings/clock/{hi3519-crg.txt =3D> hisi-crg.txt} (80%)
 create mode 100644 dts/Bindings/clock/qcom,rpmcc.txt
 create mode 100644 dts/Bindings/clock/rockchip,rk1108-cru.txt
 create mode 100644 dts/Bindings/cpufreq/brcm,stb-avs-cpu-freq.txt
 create mode 100644 dts/Bindings/display/amlogic,meson-vpu.txt
 rename dts/Bindings/display/{ti =3D> bridge}/ti,tfp410.txt (65%)
 create mode 100644 dts/Bindings/display/ht16k33.txt
 create mode 100644 dts/Bindings/display/panel/auo,g133han01.txt
 create mode 100644 dts/Bindings/display/panel/auo,g185han01.txt
 create mode 100644 dts/Bindings/display/panel/auo,t215hvn01.txt
 create mode 100644 dts/Bindings/display/panel/chunghwa,claa070wp03xg.txt
 create mode 100644 dts/Bindings/display/panel/nvd,9128.txt
 create mode 100644 dts/Bindings/display/panel/sharp,lq150x1lg11.txt
 create mode 100644 dts/Bindings/display/zte,vou.txt
 create mode 100644 dts/Bindings/dma/st_fdma.txt
 create mode 100644 dts/Bindings/firmware/nvidia,tegra186-bpmp.txt
 create mode 100644 dts/Bindings/fpga/altera-fpga2sdram-bridge.txt
 create mode 100644 dts/Bindings/fpga/altera-freeze-bridge.txt
 create mode 100644 dts/Bindings/fpga/altera-hps2fpga-bridge.txt
 create mode 100644 dts/Bindings/fpga/altera-socfpga-a10-fpga-mgr.txt
 create mode 100644 dts/Bindings/fpga/fpga-region.txt
 delete mode 100644 dts/Bindings/gpio/gpio-sx150x.txt
 create mode 100644 dts/Bindings/hwmon/mcp3021.txt
 create mode 100644 dts/Bindings/hwmon/tmp108.txt
 create mode 100644 dts/Bindings/i2c/i2c-imx-lpi2c.txt
 create mode 100644 dts/Bindings/iio/adc/envelope-detector.txt
 create mode 100644 dts/Bindings/iio/adc/st,stm32-adc.txt
 create mode 100644 dts/Bindings/iio/dac/dpot-dac.txt
 create mode 100644 dts/Bindings/iio/dac/mcp4725.txt
 create mode 100644 dts/Bindings/iio/gyroscope/invensense,mpu3050.txt
 create mode 100644 dts/Bindings/iio/humidity/hts221.txt
 create mode 100644 dts/Bindings/iio/light/isl29018.txt
 create mode 100644 dts/Bindings/iio/light/tsl2583.txt
 create mode 100644 dts/Bindings/iio/potentiostat/lmp91000.txt
 rename dts/Bindings/ipmi/{aspeed,ast2400-bt-bmc.txt =3D> aspeed,ast2400-ib=
t-bmc.txt} (85%)
 create mode 100644 dts/Bindings/mailbox/nvidia,tegra186-hsp.txt
 create mode 100644 dts/Bindings/media/mediatek-mdp.txt
 create mode 100644 dts/Bindings/media/renesas,fdp1.txt
 create mode 100644 dts/Bindings/memory-controllers/ti-da8xx-ddrctl.txt
 create mode 100644 dts/Bindings/mfd/altera-a10sr.txt
 create mode 100644 dts/Bindings/mmc/amlogic,meson-gx.txt
 create mode 100644 dts/Bindings/mmc/sdhci-cadence.txt
 create mode 100644 dts/Bindings/mmc/sdhci.txt
 create mode 100644 dts/Bindings/mtd/oxnas-nand.txt
 create mode 100644 dts/Bindings/mtd/samsung-s3c2410.txt
 create mode 100644 dts/Bindings/mtd/tango-nand.txt
 create mode 100644 dts/Bindings/net/oxnas-dwmac.txt
 rename dts/Bindings/net/wireless/{marvell-sd8xxx.txt =3D> marvell-8xxx.txt=
} (91%)
 create mode 100644 dts/Bindings/net/wireless/qca,ath9k.txt
 create mode 100644 dts/Bindings/nvmem/brcm,ocotp.txt
 create mode 100644 dts/Bindings/nvmem/lpc1850-otp.txt
 rename dts/Bindings/phy/{meson-usb2-phy.txt =3D> meson8b-usb2-phy.txt} (87=
%)
 create mode 100644 dts/Bindings/pinctrl/pinctrl-sx150x.txt
 create mode 100644 dts/Bindings/pinctrl/qcom,msm8994-pinctrl.txt
 create mode 100644 dts/Bindings/pinctrl/ti,da850-pupd.txt
 create mode 100644 dts/Bindings/power/domain-idle-state.txt
 create mode 100644 dts/Bindings/pwm/pwm-hibvt.txt
 create mode 100644 dts/Bindings/remoteproc/qcom,adsp.txt
 create mode 100644 dts/Bindings/reset/renesas,rst.txt
 create mode 100644 dts/Bindings/rtc/epson,rtc7301.txt
 create mode 100644 dts/Bindings/rtc/ingenic,jz4740-rtc.txt
 create mode 100644 dts/Bindings/security/tpm/ibmvtpm.txt
 create mode 100644 dts/Bindings/security/tpm/tpm-i2c.txt
 create mode 100644 dts/Bindings/security/tpm/tpm_tis_mmio.txt
 rename dts/Bindings/{powerpc =3D> soc}/fsl/guts.txt (91%)
 create mode 100644 dts/Bindings/sound/axentia,tse850-pcm5142.txt
 create mode 100644 dts/Bindings/sound/cs35l34.txt
 create mode 100644 dts/Bindings/sound/cs42l42.txt
 create mode 100644 dts/Bindings/sound/qcom,msm8916-wcd-analog.txt
 create mode 100644 dts/Bindings/sound/qcom,msm8916-wcd-digital.txt
 create mode 100755 dts/Bindings/sound/rt5665.txt
 create mode 100644 dts/Bindings/sound/samsung,tm2-audio.txt
 create mode 100644 dts/Bindings/sound/sun8i-codec-analog.txt
 create mode 100644 dts/Bindings/spi/spi-armada-3700.txt
 create mode 100644 dts/Bindings/spi/spi-fsl-lpspi.txt
 create mode 100644 dts/Bindings/thermal/brcm,bcm2835-thermal.txt
 create mode 100644 dts/Bindings/timer/ezchip,nps400-timer0.txt
 rename dts/Bindings/timer/{ezchip,nps400-timer.txt =3D> ezchip,nps400-time=
r1.txt} (52%)
 create mode 100644 dts/Bindings/usb/da8xx-usb.txt
 create mode 100644 dts/Bindings/usb/mt8173-mtu3.txt
 create mode 100644 dts/Bindings/usb/ohci-da8xx.txt
 create mode 100644 dts/Bindings/usb/s3c2410-usb.txt
 create mode 100644 dts/Bindings/video/bridge/sil-sii8620.txt
 create mode 100644 dts/include/dt-bindings/clock/hi3516cv300-clock.h
 create mode 100644 dts/include/dt-bindings/clock/histb-clock.h
 create mode 100644 dts/include/dt-bindings/clock/oxsemi,ox810se.h
 create mode 100644 dts/include/dt-bindings/clock/oxsemi,ox820.h
 create mode 100644 dts/include/dt-bindings/clock/qcom,gcc-msm8994.h
 create mode 100644 dts/include/dt-bindings/clock/qcom,rpmcc.h
 create mode 100644 dts/include/dt-bindings/clock/r8a7743-cpg-mssr.h
 create mode 100644 dts/include/dt-bindings/clock/r8a7745-cpg-mssr.h
 create mode 100644 dts/include/dt-bindings/clock/rk1108-cru.h
 delete mode 100644 dts/include/dt-bindings/clock/stih415-clks.h
 create mode 100644 dts/include/dt-bindings/clock/sun50i-a64-ccu.h
 create mode 100644 dts/include/dt-bindings/clock/tegra186-clock.h
 create mode 100644 dts/include/dt-bindings/gpio/meson-gxl-gpio.h
 create mode 100644 dts/include/dt-bindings/mailbox/tegra186-hsp.h
 delete mode 100644 dts/include/dt-bindings/net/mscc-phy-vsc8531.h
 create mode 100644 dts/include/dt-bindings/power/mt2701-power.h
 create mode 100644 dts/include/dt-bindings/power/r8a7743-sysc.h
 create mode 100644 dts/include/dt-bindings/power/r8a7745-sysc.h
 create mode 100644 dts/include/dt-bindings/power/tegra186-powergate.h
 create mode 100644 dts/include/dt-bindings/reset/oxsemi,ox810se.h
 create mode 100644 dts/include/dt-bindings/reset/oxsemi,ox820.h
 create mode 100644 dts/include/dt-bindings/reset/sun50i-a64-ccu.h
 create mode 100644 dts/include/dt-bindings/reset/tegra186-reset.h
 create mode 100644 dts/include/dt-bindings/sound/cs42l42.h
 rename dts/src/arc/{zebu_hs.dts =3D> haps_hs.dts} (100%)
 rename dts/src/arc/{zebu_hs_idu.dts =3D> haps_hs_idu.dts} (100%)
 create mode 100644 dts/src/arm/am571x-idk.dts
 create mode 100644 dts/src/arm/armada-385-turris-omnia.dts
 create mode 100644 dts/src/arm/bcm4708-luxul-xap-1510.dts
 create mode 100644 dts/src/arm/bcm4709-tplink-archer-c9-v1.dts
 create mode 100644 dts/src/arm/bcm4709.dtsi
 create mode 100644 dts/src/arm/bcm47094-luxul-xwr-3100.dts
 create mode 100644 dts/src/arm/bcm47094-netgear-r8500.dts
 create mode 100644 dts/src/arm/bcm47094.dtsi
 create mode 100644 dts/src/arm/bcm47189-tenda-ac9.dts
 create mode 100644 dts/src/arm/bcm5301x-nand-cs0-bch4.dtsi
 create mode 100644 dts/src/arm/bcm53573.dtsi
 create mode 100644 dts/src/arm/cloudengines-pogoplug-series-3.dts
 create mode 100644 dts/src/arm/dra71-evm.dts
 create mode 100644 dts/src/arm/dra72-evm-tps65917.dtsi
 create mode 100644 dts/src/arm/exynos4412-itop-elite.dts
 create mode 100644 dts/src/arm/exynos4412-itop-scp-core.dtsi
 delete mode 100644 dts/src/arm/exynos4415-pinctrl.dtsi
 delete mode 100644 dts/src/arm/exynos4415.dtsi
 create mode 100644 dts/src/arm/imx6dl-colibri-eval-v3.dts
 create mode 100644 dts/src/arm/imx6dl-icore.dts
 create mode 100644 dts/src/arm/imx6q-icore.dts
 create mode 100644 dts/src/arm/imx6q-nitrogen6_som2.dts
 create mode 100644 dts/src/arm/imx6qdl-colibri.dtsi
 create mode 100644 dts/src/arm/imx6qdl-icore.dtsi
 create mode 100644 dts/src/arm/imx6qdl-nitrogen6_som2.dtsi
 create mode 100644 dts/src/arm/imx6sx-udoo-neo-basic.dts
 create mode 100644 dts/src/arm/imx6sx-udoo-neo-extended.dts
 create mode 100644 dts/src/arm/imx6sx-udoo-neo-full.dts
 create mode 100644 dts/src/arm/imx6sx-udoo-neo.dtsi
 create mode 100644 dts/src/arm/imx6ul-liteboard.dts
 create mode 100644 dts/src/arm/imx6ul-litesom.dtsi
 create mode 100644 dts/src/arm/imx6ull-14x14-evk.dts
 create mode 100644 dts/src/arm/imx6ull-pinfunc.h
 create mode 100644 dts/src/arm/imx6ull.dtsi
 create mode 100644 dts/src/arm/omap4-droid4-xt894.dts
 create mode 100644 dts/src/arm/orion5x-lschl.dts
 create mode 100644 dts/src/arm/ox820.dtsi
 create mode 100644 dts/src/arm/pxa25x.dtsi
 create mode 100644 dts/src/arm/qcom-mdm9615-wp8548-mangoh-green.dts
 create mode 100644 dts/src/arm/qcom-mdm9615-wp8548.dtsi
 create mode 100644 dts/src/arm/qcom-mdm9615.dtsi
 create mode 100644 dts/src/arm/r8a7743-sk-rzg1m.dts
 create mode 100644 dts/src/arm/r8a7743.dtsi
 create mode 100644 dts/src/arm/r8a7745-sk-rzg1e.dts
 create mode 100644 dts/src/arm/r8a7745.dtsi
 create mode 100644 dts/src/arm/rk1108-evb.dts
 create mode 100644 dts/src/arm/rk1108.dtsi
 create mode 100644 dts/src/arm/rk3066a-mk808.dts
 create mode 100644 dts/src/arm/rk3188-px3-evb.dts
 create mode 100644 dts/src/arm/socfpga_arria10_socdk_qspi.dts
 create mode 100644 dts/src/arm/socfpga_cyclone5_sodia.dts
 delete mode 100644 dts/src/arm/stih415-b2000.dts
 delete mode 100644 dts/src/arm/stih415-b2020.dts
 delete mode 100644 dts/src/arm/stih415-clock.dtsi
 delete mode 100644 dts/src/arm/stih415-pinctrl.dtsi
 delete mode 100644 dts/src/arm/stih415.dtsi
 delete mode 100644 dts/src/arm/stih416-b2000.dts
 delete mode 100644 dts/src/arm/stih416-b2020.dts
 delete mode 100644 dts/src/arm/stih416-b2020e.dts
 delete mode 100644 dts/src/arm/stih416-clock.dtsi
 delete mode 100644 dts/src/arm/stih416-pinctrl.dtsi
 delete mode 100644 dts/src/arm/stih416.dtsi
 delete mode 100644 dts/src/arm/stih41x-b2000.dtsi
 delete mode 100644 dts/src/arm/stih41x-b2020.dtsi
 delete mode 100644 dts/src/arm/stih41x-b2020x.dtsi
 delete mode 100644 dts/src/arm/stih41x.dtsi
 create mode 100644 dts/src/arm/stm32746g-eval.dts
 create mode 100644 dts/src/arm/stm32f746.dtsi
 create mode 100644 dts/src/arm/sun5i-gr8-chip-pro.dts
 rename dts/src/arm/{ntc-gr8-evb.dts =3D> sun5i-gr8-evb.dts} (92%)
 rename dts/src/arm/{ntc-gr8.dtsi =3D> sun5i-gr8.dtsi} (95%)
 create mode 100644 dts/src/arm/sun8i-h3-nanopi-m1.dts
 create mode 100644 dts/src/arm/sun8i-h3-nanopi.dtsi
 delete mode 100644 dts/src/arm/uniphier-common32.dtsi
 create mode 100644 dts/src/arm/zynq-microzed.dts
 create mode 100644 dts/src/arm64/allwinner/sun50i-a64-pine64-plus.dts
 create mode 100644 dts/src/arm64/allwinner/sun50i-a64-pine64.dts
 create mode 100644 dts/src/arm64/allwinner/sun50i-a64.dtsi
 create mode 100644 dts/src/arm64/amlogic/meson-gx-p23x-q20x.dtsi
 create mode 100644 dts/src/arm64/amlogic/meson-gx.dtsi
 create mode 100644 dts/src/arm64/amlogic/meson-gxbb-nexbox-a95x.dts
 create mode 100644 dts/src/arm64/amlogic/meson-gxl-nexbox-a95x.dts
 create mode 100644 dts/src/arm64/amlogic/meson-gxl-s905d-p230.dts
 create mode 100644 dts/src/arm64/amlogic/meson-gxl-s905d-p231.dts
 create mode 100644 dts/src/arm64/amlogic/meson-gxl-s905d.dtsi
 create mode 100644 dts/src/arm64/amlogic/meson-gxl-s905x-p212.dts
 create mode 100644 dts/src/arm64/amlogic/meson-gxl-s905x.dtsi
 create mode 100644 dts/src/arm64/amlogic/meson-gxl.dtsi
 create mode 100644 dts/src/arm64/amlogic/meson-gxm-nexbox-a1.dts
 create mode 100644 dts/src/arm64/amlogic/meson-gxm-s912-q200.dts
 create mode 100644 dts/src/arm64/amlogic/meson-gxm-s912-q201.dts
 create mode 100644 dts/src/arm64/amlogic/meson-gxm.dtsi
 create mode 100644 dts/src/arm64/broadcom/bcm283x-rpi-usb-host.dtsi
 create mode 100644 dts/src/arm64/exynos/exynos5433-pinctrl.dtsi
 create mode 100644 dts/src/arm64/exynos/exynos5433-tm2.dts
 create mode 100644 dts/src/arm64/exynos/exynos5433-tm2e.dts
 create mode 100644 dts/src/arm64/exynos/exynos5433-tmu-g3d-sensor-conf.dtsi
 create mode 100644 dts/src/arm64/exynos/exynos5433-tmu-sensor-conf.dtsi
 create mode 100644 dts/src/arm64/exynos/exynos5433-tmu.dtsi
 create mode 100644 dts/src/arm64/exynos/exynos5433.dtsi
 create mode 100644 dts/src/arm64/freescale/fsl-ls1046a-qds.dts
 create mode 100644 dts/src/arm64/freescale/fsl-ls1046a-rdb.dts
 create mode 100644 dts/src/arm64/freescale/fsl-ls1046a.dtsi
 create mode 100644 dts/src/arm64/hisilicon/hip07-d05.dts
 create mode 100644 dts/src/arm64/hisilicon/hip07.dtsi
 create mode 100644 dts/src/arm64/marvell/armada-3720-espressobin.dts
 create mode 100644 dts/src/arm64/nvidia/tegra186-p2771-0000.dts
 create mode 100644 dts/src/arm64/nvidia/tegra186-p3310.dtsi
 create mode 100644 dts/src/arm64/nvidia/tegra186.dtsi
 create mode 100644 dts/src/arm64/qcom/apq8096-db820c-pmic-pins.dtsi
 create mode 100644 dts/src/arm64/qcom/msm8992-bullhead-rev-101.dts
 create mode 100644 dts/src/arm64/qcom/msm8992-pins.dtsi
 create mode 100644 dts/src/arm64/qcom/msm8992.dtsi
 create mode 100644 dts/src/arm64/qcom/msm8994-angler-rev-101.dts
 create mode 100644 dts/src/arm64/qcom/msm8994-pins.dtsi
 create mode 100644 dts/src/arm64/qcom/msm8994.dtsi
 create mode 100644 dts/src/arm64/renesas/r8a7796-m3ulcb.dts
 create mode 100644 dts/src/arm64/rockchip/rk3368-px5-evb.dts
 create mode 100644 include/linux/clk/clk-conf.h
-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
