Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eE9aE-0000IV-Ap
 for barebox@lists.infradead.org; Mon, 13 Nov 2017 07:55:13 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.84_2)
 (envelope-from <sha@pengutronix.de>) id 1eE9Zp-0008II-UX
 for barebox@lists.infradead.org; Mon, 13 Nov 2017 08:54:41 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.84_2)
 (envelope-from <sha@pengutronix.de>) id 1eE9Zp-0002d8-NS
 for barebox@lists.infradead.org; Mon, 13 Nov 2017 08:54:41 +0100
Date: Mon, 13 Nov 2017 08:54:41 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20171113075441.uxyggdbln4uobop5@pengutronix.de>
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
Subject: v2017.11.0
To: Barebox List <barebox@lists.infradead.org>

Hi All,

We have a November release. There are a few things worth noting this
time. First there are two fixes in the ARM kernel start code. The code
stumbled upon zImages padded with less than 40 bytes, this has been
fixed by Lucas. Then we have a fix when uImages are started over tftp.
This didn't work properly anymore since the merge of tftp forward
lseeking.
One new nice feature we have is that the fastboot support now can
automatically export all barebox_update handlers, so barebox can
more easily and safely be updated over fastboot. This feature is
enabled with the -b option to the usbgadget command.
Finally Michael and Lucas have put some love into the vexpress code
which now uses device tree probing and also uses the device tree passed
in by QEMU.

Have fun
Sascha

----------------------------------------------------------------
Aleksander Morgado (2):
      lib,ratp: avoid too verbose info messages
      console_countdown: ignore errors in getchar()

Antony Pavlov (3):
      mtd: m25p80: make it possible to use 4K erase block
      eeprom: at24: fix 'assignment from incompatible pointer type' warning
      elf.h: Use EI_NIDENT instead of numeric value

Cl=E9ment Leger (1):
      Marvell: implement marvell_of_reg_init

Enrico Jorns (1):
      efi: add missing Kconfig selects

Lucas Stach (9):
      ARM: vexpress: always build relocatable image
      of: populate clock providers before other devices
      clk: versatile: add basic clocks
      clocksource: sp804: silently ignore secondary instaces
      mci: mmci: add DT support
      ARM: vexpress: switch to DT probe and multi-image build
      ARM: vexpress: regenerate config
      docs: add qemu vexpress
      arm: bootm: don't fall over if image is padded with less than 40 bytes

Marc Kleine-Budde (2):
      imx-bbu-nand-fcb: read_firmware_all(): Spell "Secondary firmware" wit=
h a capital "S"
      UBI: attach: add missing newline at end of pr_err()

Michael Grzeschik (1):
      uimage: fix: add can_lseek_backward and use in uimage_open

Michael Olbrich (4):
      vexpress: use device tree provided by QEMU if available
      vexpress: add bootstate node to the device tree
      of: base: add function to copy a device tree node
      ARM: vexpress: add fixup handler for 'virtio, mmio' devices

Nikita Yushchenko (3):
      2d-primitives: fix missing pixel in gu_draw_line()
      fbtest: add solid pattern
      fbtest: add gradients pattern

Oleksij Rempel (13):
      add ar9331.dtsi and enable mac0
      MIPS: dts: ar9344: add mac0 node
      MIPS: dts: tl_wdr4300: enable mac0
      MIPS: dts: tl_wdr4300: add alias for spiflash
      MIPS: dts: tl_wdr4300: remove RO flag from barebox partition
      net: phy: add ar8327 driver
      MIPS: dts: tl_wdr4300: rename it to tl_wdr4300 v1.7
      MIPS: tplink-wdr4300_defconfig: add network support
      MIPS: dts: ar9344: add APB bus
      net: ag71xx: disable eth interface on barebox shutdown
      net: ag71xx: define parent devices
      clk: add ar9344 clock driver
      MIPS: dts: ar9344: add pll node

Philipp Zabel (1):
      mmc: allow skipping SD card initialization

Sascha Hauer (36):
      scripts: imx imx-usb-loader: Add support for i.MX6ull
      scripts: imx imx-usb-loader: Fix last transfer error message
      usbgadget: autostart: Handle errors in file list gracefully
      usbgadget: do not register when no functions present
      usbgadget: only set to peripheral mode when error checking is done
      usbgadget: unregister when usb_composite_probe() fails
      ARM: cache-armv7: Use designated instructions for isb/dsb/dmb
      ARM: rename flush_icache to icache_invalidate
      file_list: Add function to add an entry to the list
      file_list: Add function to get entry by its name
      file_list: Allow only unique names on list
      file_list: Fix memory leak in failure path
      file_list: Add GPL header to file
      file_list: Add error messages
      usbgadget: fastboot: Use function to find file_list entry by name
      bbu: Add function to iterate over registered handlers
      usbgadget command: catch errors when parsing the file list
      usbgadget: fastboot: Allow to automatically export the bbu handlers
      fastboot command: Add -b option to export bbu handlers
      usbgadget autostart: add usbgadget.fastboot_bbu to automatically expo=
rt bbu handlers
      dts: update to v4.14-rc1
      dts: update to v4.14-rc2
      dts: update to v4.14-rc3
      dts: update to v4.14-rc4
      ARM: i.MX6ul: Add SoC specific lowlevel_init function
      ARM: Add i.MX6ull evk support
      graphic_utils: Fix freeing uninitialzed pointer in fb_open()
      Merge branch 'for-next/arm'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/e1000'
      Merge branch 'for-next/graphics'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/mips'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/usbgadget'
      Release v2017.11.0

Steffen Trumtrar (2):
      regmap: port regmap_update_bits from linux
      ARM: socfpga: dts: sockit: remove upstreamed nodes

Uwe Kleine-K=F6nig (7):
      gpiolib: check validity for gpio_info in *_active()
      ARM: i.MX53 QSB: drop phy reset handling in board file
      pinctrl: mxs: fix error message to mention right property name
      remove checks for xzalloc() returning NULL
      e1000: implement register mapping for E1000_FLSW{CTL, DATA, CNT}
      e1000: implement support for smaller flash chips
      e1000: Don't poll for FLSWCTL.GLDONE before starting a flash transact=
ion

Yegor Yefremov (1):
      net: ath79: add ag71xx Ethernet driver

 Documentation/boards/arm-qemu-vexpress.rst         |  20 +
 Makefile                                           |   2 +-
 arch/arm/boards/Makefile                           |   1 +
 arch/arm/boards/freescale-mx53-qsb/board.c         |  11 -
 arch/arm/boards/nxp-imx6ull-evk/Makefile           |   2 +
 arch/arm/boards/nxp-imx6ull-evk/board.c            |  50 ++
 .../flash-header-nxp-imx6ull-evk.imxcfg            |  75 +++
 arch/arm/boards/nxp-imx6ull-evk/lowlevel.c         |  74 +++
 arch/arm/boards/phytec-som-imx6/lowlevel.c         |   2 +-
 arch/arm/boards/technexion-pico-hobbit/lowlevel.c  |   2 +-
 arch/arm/boards/vexpress/Makefile                  |   2 -
 .../arm/boards/vexpress/defaultenv-vexpress/config |  38 --
 arch/arm/boards/vexpress/init.c                    | 144 +----
 arch/arm/boards/vexpress/lowlevel.c                |  36 +-
 arch/arm/configs/vexpress_ca9_defconfig            |  52 --
 arch/arm/configs/vexpress_defconfig                |  17 +-
 arch/arm/cpu/cache-armv7.S                         |  22 +-
 arch/arm/cpu/common.c                              |   2 +-
 arch/arm/cpu/cpu.c                                 |   2 +-
 arch/arm/cpu/lowlevel.S                            |   7 +
 arch/arm/cpu/start-pbl.c                           |   2 +-
 arch/arm/cpu/uncompress.c                          |   2 +-
 arch/arm/dts/Makefile                              |   3 +
 arch/arm/dts/imx6ull-14x14-evk.dts                 |  29 +
 arch/arm/dts/socfpga_cyclone5_sockit.dts           | 108 ----
 arch/arm/dts/vexpress-v2p-ca15.dts                 |  27 +
 arch/arm/dts/vexpress-v2p-ca9.dts                  |  90 +++
 arch/arm/include/asm/barebox-arm-head.h            |   1 +
 arch/arm/include/asm/cache.h                       |   2 +-
 arch/arm/lib/bootm.c                               |   4 +-
 arch/arm/mach-imx/Kconfig                          |   4 +
 arch/arm/mach-imx/cpu_init.c                       |   7 +
 arch/arm/mach-imx/include/mach/generic.h           |   1 +
 arch/arm/mach-imx/include/mach/imx6-regs.h         |   1 +
 arch/arm/mach-vexpress/Kconfig                     |   7 +-
 arch/arm/mach-vexpress/Makefile                    |   1 -
 arch/arm/mach-vexpress/devices.c                   |  83 ---
 arch/arm/mach-vexpress/include/mach/devices.h      |   9 -
 arch/arm/mach-vexpress/v2m.c                       |  38 --
 arch/mips/configs/tplink-wdr4300_defconfig         |  12 +-
 arch/mips/dts/ar9331.dtsi                          |  12 +
 ...4_tl_wdr4300.dts =3D> ar9344-tl-wdr4300-v1.7.dts} |  10 +-
 arch/mips/dts/ar9344.dtsi                          |  55 +-
 arch/mips/dts/tplink-mr3020.dts                    |   5 +
 arch/mips/mach-ath79/include/mach/ar71xx_regs.h    |  12 +
 commands/fbtest.c                                  | 122 +++-
 commands/usbgadget.c                               |  20 +-
 common/bbu.c                                       |  15 +
 common/console_countdown.c                         |  14 +-
 common/file-list.c                                 |  72 ++-
 common/imx-bbu-nand-fcb.c                          |   2 +-
 common/state/backend_bucket_circular.c             |   2 -
 common/state/backend_format_dtb.c                  |   2 -
 common/state/backend_format_raw.c                  |   4 -
 common/uimage.c                                    |   4 +-
 drivers/base/regmap/regmap.c                       |  29 +
 drivers/clk/Makefile                               |   4 +-
 drivers/clk/clk-ar9344.c                           | 148 +++++
 drivers/clk/mxs/clk-div.c                          |   2 -
 drivers/clk/mxs/clk-pll.c                          |   2 -
 drivers/clk/mxs/clk-ref.c                          |   2 -
 drivers/clk/vexpress/Makefile                      |   1 +
 drivers/clk/vexpress/clk-sp810.c                   | 136 ++++
 drivers/clk/vexpress/clk-vexpress-osc.c            |  42 ++
 drivers/clocksource/amba-sp804.c                   |   4 +-
 drivers/eeprom/at24.c                              |   2 +-
 drivers/efi/Kconfig                                |   2 +
 drivers/gpio/gpio-clps711x.c                       |   2 -
 drivers/gpio/gpio-generic.c                        |   2 -
 drivers/gpio/gpio-vf610.c                          |   2 -
 drivers/gpio/gpiolib.c                             |  12 +
 drivers/mci/mci-core.c                             |  12 +-
 drivers/mci/mmci.c                                 |  39 +-
 drivers/mtd/nand/atmel_nand.c                      |   2 -
 drivers/mtd/spi-nor/Kconfig                        |  13 +
 drivers/mtd/ubi/attach.c                           |   2 +-
 drivers/net/Kconfig                                |   7 +
 drivers/net/Makefile                               |   1 +
 drivers/net/ag71xx.c                               | 684 +++++++++++++++++=
++++
 drivers/net/e1000/e1000.h                          |   9 +-
 drivers/net/e1000/eeprom.c                         |  27 +-
 drivers/net/e1000/regio.c                          |   9 +
 drivers/net/gianfar.c                              |   3 -
 drivers/net/phy/Kconfig                            |   5 +
 drivers/net/phy/Makefile                           |   1 +
 drivers/net/phy/ar8327.c                           | 280 +++++++++
 drivers/net/phy/marvell.c                          |  73 ++-
 drivers/of/base.c                                  |  20 +-
 drivers/pci/pci-imx6.c                             |   2 -
 drivers/pinctrl/pinctrl-mxs.c                      |   2 +-
 drivers/pinctrl/pinctrl-rockchip.c                 |   2 -
 drivers/usb/gadget/autostart.c                     |  25 +-
 drivers/usb/gadget/f_fastboot.c                    |  29 +-
 drivers/usb/gadget/multi.c                         |  11 +-
 drivers/usb/gadget/pxa27x_udc.c                    |   2 -
 drivers/usb/musb/musb_host.c                       |   2 -
 drivers/usb/musb/phy-am335x-control.c              |   4 -
 drivers/usb/musb/phy-am335x.c                      |   2 -
 drivers/video/backlight-pwm.c                      |   2 -
 drivers/video/tc358767.c                           |   2 -
 dts/Bindings/arc/hsdk.txt                          |   7 +
 dts/Bindings/arm/amlogic.txt                       |  41 ++
 dts/Bindings/arm/arch_timer.txt                    |   1 -
 dts/Bindings/arm/bcm/brcm,bcm2835.txt              |   4 +
 dts/Bindings/arm/bhf.txt                           |   6 +
 dts/Bindings/arm/coresight.txt                     |   4 +-
 dts/Bindings/arm/cpus.txt                          |   1 +
 dts/Bindings/arm/marvell/armada-8kp.txt            |  15 +
 .../arm/marvell/cp110-system-controller0.txt       |   1 -
 dts/Bindings/arm/mediatek.txt                      |  18 +-
 dts/Bindings/arm/omap/omap.txt                     |   9 +
 dts/Bindings/arm/pmu.txt                           |   2 +
 dts/Bindings/arm/qcom.txt                          |   2 +
 dts/Bindings/arm/rockchip.txt                      |  12 +
 dts/Bindings/arm/shmobile.txt                      |   8 +
 dts/Bindings/ata/ahci-mtk.txt                      |  51 ++
 dts/Bindings/ata/apm-xgene.txt                     |   2 -
 dts/Bindings/ata/imx-pata.txt                      |   1 -
 dts/Bindings/bus/mvebu-mbus.txt                    |   3 -
 dts/Bindings/bus/nvidia,tegra20-gmi.txt            |   2 -
 dts/Bindings/bus/nvidia,tegra210-aconnect.txt      |   1 -
 dts/Bindings/chosen.txt                            |  26 +-
 dts/Bindings/clock/alphascale,acc.txt              |   1 -
 dts/Bindings/clock/amlogic,gxbb-aoclkc.txt         |  23 +-
 dts/Bindings/clock/amlogic,gxbb-clkc.txt           |   1 -
 dts/Bindings/clock/amlogic,meson8b-clkc.txt        |  10 +-
 dts/Bindings/clock/at91-clock.txt                  |  10 +
 dts/Bindings/clock/brcm,kona-ccu.txt               |   1 -
 dts/Bindings/clock/exynos5433-clock.txt            |   1 -
 dts/Bindings/clock/hi3660-clock.txt                |   1 -
 dts/Bindings/clock/hix5hd2-clock.txt               |   1 -
 dts/Bindings/clock/idt,versaclock5.txt             |  30 +-
 dts/Bindings/clock/imx21-clock.txt                 |   1 -
 dts/Bindings/clock/imx23-clock.txt                 |   1 -
 dts/Bindings/clock/imx25-clock.txt                 |   1 -
 dts/Bindings/clock/imx27-clock.txt                 |   1 -
 dts/Bindings/clock/imx28-clock.txt                 |   1 -
 dts/Bindings/clock/imx31-clock.txt                 |   1 -
 dts/Bindings/clock/imx5-clock.txt                  |   1 -
 dts/Bindings/clock/imx6q-clock.txt                 |   1 -
 dts/Bindings/clock/mt8173-cpu-dvfs.txt             |  83 ---
 dts/Bindings/clock/nvidia,tegra124-dfll.txt        |   1 -
 dts/Bindings/clock/pxa-clock.txt                   |   1 -
 dts/Bindings/clock/renesas,cpg-mssr.txt            |   4 +-
 dts/Bindings/clock/renesas,r8a7778-cpg-clocks.txt  |   1 -
 dts/Bindings/clock/renesas,rcar-usb2-clock-sel.txt |  55 ++
 dts/Bindings/clock/renesas,rz-cpg-clocks.txt       |   1 -
 dts/Bindings/clock/rockchip,rk3128-cru.txt         |   8 +-
 dts/Bindings/clock/samsung,s3c2410-clock.txt       |   1 -
 dts/Bindings/clock/samsung,s3c2412-clock.txt       |   1 -
 dts/Bindings/clock/samsung,s3c2443-clock.txt       |   1 -
 dts/Bindings/clock/samsung,s3c64xx-clock.txt       |   1 -
 dts/Bindings/clock/samsung,s5pv210-clock.txt       |   1 -
 dts/Bindings/clock/silabs,si5351.txt               |   6 +-
 dts/Bindings/clock/snps,hsdk-pll-clock.txt         |  28 +
 dts/Bindings/clock/snps,pll-clock.txt              |  28 +
 dts/Bindings/clock/st,stm32h7-rcc.txt              |  71 +++
 dts/Bindings/clock/sunxi-ccu.txt                   |   6 +
 dts/Bindings/clock/ti,sci-clk.txt                  |   7 +-
 dts/Bindings/clock/ti/dra7-atl.txt                 |   2 -
 dts/Bindings/clock/uniphier-clock.txt              |   8 +-
 dts/Bindings/clock/zx296702-clk.txt                |   1 -
 dts/Bindings/clock/zx296718-clk.txt                |   1 -
 dts/Bindings/cpufreq/cpufreq-mediatek.txt          | 247 ++++++++
 dts/Bindings/crypto/artpec6-crypto.txt             |  16 +
 dts/Bindings/crypto/atmel-crypto.txt               |  13 +
 dts/Bindings/crypto/fsl-dcp.txt                    |   1 -
 dts/Bindings/crypto/inside-secure-safexcel.txt     |   1 -
 dts/Bindings/crypto/marvell-cesa.txt               |   1 -
 dts/Bindings/crypto/mv_cesa.txt                    |   1 -
 dts/Bindings/crypto/rockchip-crypto.txt            |   1 -
 dts/Bindings/crypto/st,stm32-hash.txt              |  30 +
 dts/Bindings/devfreq/event/rockchip-dfi.txt        |   1 -
 dts/Bindings/devfreq/rk3399_dmc.txt                |   1 -
 dts/Bindings/display/atmel,lcdc.txt                |   1 -
 dts/Bindings/display/atmel/hlcdc-dc.txt            |   1 -
 dts/Bindings/display/bridge/dw_mipi_dsi.txt        |  32 +
 .../bridge/megachips-stdpxxxx-ge-b850v3-fw.txt     |   1 -
 dts/Bindings/display/bridge/renesas,dw-hdmi.txt    |   2 +-
 dts/Bindings/display/exynos/exynos5433-decon.txt   |  12 -
 dts/Bindings/display/fsl,tcon.txt                  |   1 -
 dts/Bindings/display/imx/fsl-imx-drm.txt           |   2 +-
 dts/Bindings/display/marvell,pxa2xx-lcdc.txt       |   1 -
 dts/Bindings/display/panel/innolux,p079zca.txt     |   1 -
 dts/Bindings/display/renesas,du.txt                |  51 +-
 dts/Bindings/display/repaper.txt                   |  52 ++
 .../display/rockchip/analogix_dp-rockchip.txt      |   1 -
 dts/Bindings/display/rockchip/dw_hdmi-rockchip.txt |   8 +-
 .../display/rockchip/dw_mipi_dsi_rockchip.txt      |   2 -
 .../display/rockchip/inno_hdmi-rockchip.txt        |   1 -
 dts/Bindings/display/rockchip/rockchip-vop.txt     |   4 +
 dts/Bindings/display/simple-framebuffer-sunxi.txt  |   1 -
 dts/Bindings/display/sitronix,st7586.txt           |  22 +
 dts/Bindings/display/st,stm32-ltdc.txt             | 105 +++-
 dts/Bindings/display/sunxi/sun4i-drm.txt           |  37 +-
 dts/Bindings/dma/fsl-edma.txt                      |   1 -
 dts/Bindings/dma/mv-xor.txt                        |   1 -
 dts/Bindings/dma/qcom_adm.txt                      |   1 -
 dts/Bindings/dma/renesas,rcar-dmac.txt             |   1 +
 dts/Bindings/dma/renesas,usb-dmac.txt              |   1 +
 dts/Bindings/dma/snps-dma.txt                      |   1 -
 dts/Bindings/dma/st_fdma.txt                       |   1 -
 dts/Bindings/dma/ste-dma40.txt                     |   1 -
 dts/Bindings/dma/sun4i-dma.txt                     |   1 -
 dts/Bindings/dma/sun6i-dma.txt                     |   1 +
 dts/Bindings/dma/ti-dma-crossbar.txt               |   1 -
 dts/Bindings/dma/ti-edma.txt                       |  96 ++-
 dts/Bindings/eeprom/eeprom.txt                     |   6 +-
 dts/Bindings/extcon/extcon-usbc-cros-ec.txt        |  24 +
 dts/Bindings/fpga/altera-passive-serial.txt        |  29 +
 dts/Bindings/fpga/xilinx-pr-decoupler.txt          |  36 ++
 dts/Bindings/fpga/xilinx-slave-serial.txt          |   1 -
 dts/Bindings/gpio/gpio-74x164.txt                  |   3 +
 dts/Bindings/gpio/gpio-aspeed.txt                  |   2 +-
 dts/Bindings/gpio/gpio-davinci.txt                 |  91 ++-
 dts/Bindings/gpio/gpio-mpc8xxx.txt                 |   1 -
 dts/Bindings/gpio/gpio-vf610.txt                   |   4 +-
 dts/Bindings/gpio/renesas,gpio-rcar.txt            |  16 +-
 dts/Bindings/gpio/spear_spics.txt                  |   1 -
 dts/Bindings/gpu/arm,mali-midgard.txt              |   1 +
 dts/Bindings/gpu/arm,mali-utgard.txt               |   5 +
 dts/Bindings/gpu/nvidia,gk20a.txt                  |   3 -
 dts/Bindings/gpu/samsung-g2d.txt                   |   1 -
 dts/Bindings/hsi/omap-ssi.txt                      |   1 -
 dts/Bindings/hwmon/aspeed-pwm-tacho.txt            |   9 +
 dts/Bindings/hwmon/ibm,cffps1.txt                  |  21 +
 dts/Bindings/hwmon/ltq-cputemp.txt                 |  10 +
 dts/Bindings/i2c/i2c-altera.txt                    |  39 ++
 dts/Bindings/i2c/i2c-cbus-gpio.txt                 |   4 +-
 dts/Bindings/i2c/i2c-demux-pinctrl.txt             |   1 -
 dts/Bindings/i2c/i2c-efm32.txt                     |   1 -
 dts/Bindings/i2c/i2c-mtk.txt                       |  15 +-
 dts/Bindings/i2c/i2c-rcar.txt                      |   5 +-
 dts/Bindings/i2c/i2c-rk3x.txt                      |   1 +
 dts/Bindings/i2c/i2c-sh_mobile.txt                 |   5 +-
 dts/Bindings/i2c/i2c-sprd.txt                      |  31 +
 dts/Bindings/i2c/i2c-stm32.txt                     |  29 +-
 dts/Bindings/i2c/nvidia,tegra20-i2c.txt            |   1 -
 dts/Bindings/iio/adc/at91-sama5d2_adc.txt          |   6 +
 dts/Bindings/iio/adc/brcm,iproc-static-adc.txt     |   1 -
 dts/Bindings/iio/adc/lpc1850-adc.txt               |   1 -
 dts/Bindings/iio/adc/mt6577_auxadc.txt             |   1 +
 dts/Bindings/iio/adc/rockchip-saradc.txt           |   1 +
 dts/Bindings/iio/adc/st,stm32-adc.txt              |   5 +
 dts/Bindings/iio/counter/stm32-lptimer-cnt.txt     |  27 +
 dts/Bindings/iio/dac/lpc1850-dac.txt               |   1 -
 dts/Bindings/iio/dac/st,stm32-dac.txt              |   4 +-
 dts/Bindings/iio/humidity/hdc100x.txt              |  17 +
 dts/Bindings/iio/humidity/hts221.txt               |  11 +-
 dts/Bindings/iio/humidity/htu21.txt                |  13 +
 dts/Bindings/iio/imu/st_lsm6dsx.txt                |   8 +
 dts/Bindings/iio/pressure/ms5637.txt               |  17 +
 dts/Bindings/iio/st-sensors.txt                    |   3 +
 dts/Bindings/iio/temperature/tsys01.txt            |  19 +
 dts/Bindings/iio/timer/stm32-lptimer-trigger.txt   |  23 +
 dts/Bindings/iio/timer/stm32-timer-trigger.txt     |   6 +-
 dts/Bindings/input/atmel,maxtouch.txt              |   2 +
 dts/Bindings/input/brcm,bcm-keypad.txt             |   1 -
 dts/Bindings/input/pwm-vibrator.txt                |  66 ++
 dts/Bindings/input/ti,drv260x.txt                  |   2 +-
 dts/Bindings/input/touchscreen/colibri-vf50-ts.txt |   1 -
 dts/Bindings/input/touchscreen/imx6ul_tsc.txt      |   1 -
 .../interrupt-controller/fsl,ls-scfg-msi.txt       |   8 +-
 .../interrupt-controller/mediatek,sysirq.txt       |   1 +
 .../socionext,uniphier-aidet.txt                   |  32 +
 dts/Bindings/iommu/qcom,iommu.txt                  | 121 ++++
 dts/Bindings/iommu/rockchip,iommu.txt              |   5 +
 dts/Bindings/leds/ams,as3645a.txt                  |  79 +++
 dts/Bindings/leds/irled/gpio-ir-tx.txt             |  14 +
 dts/Bindings/leds/irled/pwm-ir-tx.txt              |  13 +
 dts/Bindings/leds/leds-gpio.txt                    |   3 +
 dts/Bindings/leds/leds-pca955x.txt                 |  88 +++
 dts/Bindings/media/i2c/adv748x.txt                 |  95 +++
 dts/Bindings/media/i2c/dongwoon,dw9714.txt         |   9 +
 dts/Bindings/media/meson-ao-cec.txt                |  28 +
 dts/Bindings/media/mtk-cir.txt                     |   8 +-
 dts/Bindings/media/pxa-camera.txt                  |   1 -
 dts/Bindings/media/qcom,camss.txt                  | 197 ++++++
 dts/Bindings/media/renesas,drif.txt                |   1 +
 dts/Bindings/media/s5p-cec.txt                     |   1 -
 dts/Bindings/media/samsung-fimc.txt                |   2 -
 dts/Bindings/media/stih407-c8sectpfe.txt           |   1 -
 dts/Bindings/media/ti,da850-vpif.txt               |   1 -
 dts/Bindings/media/video-interfaces.txt            |   8 +-
 dts/Bindings/media/zx-irdec.txt                    |  14 +
 .../memory-controllers/mediatek,smi-larb.txt       |  15 +
 dts/Bindings/memory-controllers/mvebu-devbus.txt   |   1 -
 dts/Bindings/mfd/act8945a.txt                      |   2 -
 dts/Bindings/mfd/atmel-hlcdc.txt                   |   1 -
 dts/Bindings/mfd/atmel-smc.txt                     |   1 +
 dts/Bindings/mfd/axp20x.txt                        |  50 +-
 dts/Bindings/mfd/bd9571mwv.txt                     |  49 ++
 dts/Bindings/mfd/da9052-i2c.txt                    |   9 +-
 dts/Bindings/mfd/mc13xxx.txt                       |   1 -
 dts/Bindings/mfd/mxs-lradc.txt                     |   2 -
 dts/Bindings/mfd/retu.txt                          |  25 +
 dts/Bindings/mfd/rk808.txt                         |  22 +-
 dts/Bindings/mfd/samsung,exynos5433-lpass.txt      |   2 -
 dts/Bindings/mfd/stm32-lptimer.txt                 |  48 ++
 dts/Bindings/mfd/tps6105x.txt                      |  17 +
 dts/Bindings/mfd/wm831x.txt                        |   1 +
 dts/Bindings/mfd/zii,rave-sp.txt                   |  39 ++
 dts/Bindings/mips/lantiq/fpi-bus.txt               |  31 +
 dts/Bindings/mips/lantiq/rcu-gphy.txt              |  36 ++
 dts/Bindings/mips/lantiq/rcu.txt                   |  89 +++
 dts/Bindings/mips/ni.txt                           |   7 +
 dts/Bindings/mips/ralink.txt                       |   1 +
 dts/Bindings/misc/atmel-ssc.txt                    |   1 -
 dts/Bindings/mmc/arasan,sdhci.txt                  |   1 -
 dts/Bindings/mmc/davinci_mmc.txt                   |   1 -
 dts/Bindings/mmc/fsl-imx-mmc.txt                   |   1 -
 dts/Bindings/mmc/marvell,xenon-sdhci.txt           |  12 +-
 dts/Bindings/mmc/mmc-card.txt                      |   1 -
 dts/Bindings/mmc/mmc.txt                           |   1 -
 dts/Bindings/mmc/orion-sdio.txt                    |   1 -
 dts/Bindings/mmc/renesas,mmcif.txt                 |   4 +-
 dts/Bindings/mmc/rockchip-dw-mshc.txt              |   1 +
 dts/Bindings/mmc/sdhci-st.txt                      |   3 -
 dts/Bindings/mmc/sunxi-mmc.txt                     |   1 +
 dts/Bindings/mmc/ti-omap-hsmmc.txt                 |  52 +-
 dts/Bindings/mmc/tmio_mmc.txt                      |   8 +-
 dts/Bindings/mmc/zx-dw-mshc.txt                    |   1 -
 dts/Bindings/mtd/atmel-quadspi.txt                 |   1 -
 dts/Bindings/mtd/mtk-quadspi.txt                   |   1 -
 dts/Bindings/mtd/qcom_nandc.txt                    |  65 +-
 dts/Bindings/mtd/st-fsm.txt                        |   1 -
 dts/Bindings/mtd/sunxi-nand.txt                    |   1 -
 dts/Bindings/net/anarion-gmac.txt                  |  25 +
 dts/Bindings/net/brcm,amac.txt                     |   1 -
 dts/Bindings/net/broadcom-bluetooth.txt            |  35 ++
 dts/Bindings/net/btusb.txt                         |   1 -
 dts/Bindings/net/can/c_can.txt                     |  13 +-
 dts/Bindings/net/can/m_can.txt                     |   1 -
 dts/Bindings/net/dsa/ksz.txt                       |   2 -
 dts/Bindings/net/dsa/lan9303.txt                   |   3 -
 dts/Bindings/net/ethernet.txt                      |   4 +
 dts/Bindings/net/ftgmac100.txt                     |   1 -
 dts/Bindings/net/marvell-armada-370-neta.txt       |   1 -
 dts/Bindings/net/marvell-bt-8xxx.txt               |   2 -
 dts/Bindings/net/marvell-neta-bm.txt               |   2 -
 dts/Bindings/net/marvell-pp2.txt                   |  42 +-
 dts/Bindings/net/mediatek-net.txt                  |  18 +-
 dts/Bindings/net/meson-dwmac.txt                   |   1 -
 dts/Bindings/net/micrel-ksz90x1.txt                |   1 -
 dts/Bindings/net/microchip,enc28j60.txt            |   1 -
 dts/Bindings/net/nfc/nfcmrvl.txt                   |   2 -
 dts/Bindings/net/nfc/nxp-nci.txt                   |   1 -
 dts/Bindings/net/nfc/pn533-i2c.txt                 |   1 -
 dts/Bindings/net/nfc/pn544.txt                     |   1 -
 dts/Bindings/net/nfc/s3fwrn5.txt                   |   1 -
 dts/Bindings/net/nfc/st-nci-i2c.txt                |   1 -
 dts/Bindings/net/nfc/st-nci-spi.txt                |   1 -
 dts/Bindings/net/nfc/st21nfca.txt                  |   1 -
 dts/Bindings/net/nfc/st95hf.txt                    |   2 -
 dts/Bindings/net/nfc/trf7970a.txt                  |   2 -
 dts/Bindings/net/oxnas-dwmac.txt                   |   1 -
 dts/Bindings/net/phy.txt                           |  15 +-
 dts/Bindings/net/qca,qca7000.txt                   |   2 -
 dts/Bindings/net/renesas,ravb.txt                  |  30 +-
 dts/Bindings/net/rockchip-dwmac.txt                |   3 +-
 dts/Bindings/net/sff,sfp.txt                       |  76 +++
 dts/Bindings/net/smsc-lan87xx.txt                  |   1 -
 dts/Bindings/net/socfpga-dwmac.txt                 |   1 -
 dts/Bindings/net/sti-dwmac.txt                     |   1 -
 dts/Bindings/net/stm32-dwmac.txt                   |   1 -
 dts/Bindings/net/wireless/brcm,bcm43xx-fmac.txt    |   1 -
 dts/Bindings/net/wireless/esp,esp8089.txt          |   1 -
 dts/Bindings/net/wireless/marvell-8xxx.txt         |   1 -
 dts/Bindings/net/wireless/ti,wlcore.txt            |   1 -
 dts/Bindings/net/xilinx_axienet.txt                |  55 ++
 dts/Bindings/nvmem/mtk-efuse.txt                   |   5 +-
 dts/Bindings/nvmem/mxs-ocotp.txt                   |   1 -
 dts/Bindings/opp/opp.txt                           |   1 -
 dts/Bindings/pci/83xx-512x-pci.txt                 |   6 +-
 dts/Bindings/pci/aardvark-pci.txt                  |   1 -
 dts/Bindings/pci/altera-pcie.txt                   |  18 +-
 dts/Bindings/pci/axis,artpec6-pcie.txt             |   2 +-
 dts/Bindings/pci/designware-pcie.txt               |  24 +-
 dts/Bindings/pci/fsl,imx6q-pcie.txt                |   2 +-
 dts/Bindings/pci/hisilicon-pcie.txt                |   6 +-
 dts/Bindings/pci/kirin-pcie.txt                    |   8 +-
 dts/Bindings/pci/layerscape-pci.txt                |   4 +-
 dts/Bindings/pci/mediatek,mt7623-pcie.txt          | 130 ----
 dts/Bindings/pci/mediatek-pcie.txt                 | 284 +++++++++
 dts/Bindings/pci/mvebu-pci.txt                     |  15 +-
 dts/Bindings/pci/pci-armada8k.txt                  |   3 +-
 dts/Bindings/pci/pci-keystone.txt                  |  15 +-
 dts/Bindings/pci/pci-rcar-gen2.txt                 |   7 +-
 dts/Bindings/pci/pci.txt                           |   4 +-
 dts/Bindings/pci/qcom,pcie.txt                     |  27 +-
 dts/Bindings/pci/ralink,rt3883-pci.txt             |   2 +-
 dts/Bindings/pci/rcar-pci.txt                      |   8 +-
 dts/Bindings/pci/rockchip-pcie.txt                 |  28 +-
 dts/Bindings/pci/samsung,exynos5440-pcie.txt       |  22 +-
 dts/Bindings/pci/spear13xx-pcie.txt                |   6 +-
 dts/Bindings/pci/ti-pci.txt                        |   8 +-
 dts/Bindings/pci/versatile.txt                     |   2 +-
 dts/Bindings/pci/xgene-pci-msi.txt                 |   6 +-
 dts/Bindings/pci/xgene-pci.txt                     |   8 +-
 dts/Bindings/pci/xilinx-nwl-pcie.txt               |   7 +-
 dts/Bindings/phy/apm-xgene-phy.txt                 |   3 -
 dts/Bindings/phy/keystone-usb-phy.txt              |   1 -
 dts/Bindings/phy/phy-bindings.txt                  |   4 +-
 dts/Bindings/phy/phy-lantiq-rcu-usb2.txt           |  40 ++
 .../phy/{phy-mt65xx-usb.txt =3D> phy-mtk-tphy.txt}   |  21 +-
 dts/Bindings/phy/phy-mvebu-comphy.txt              |  43 ++
 dts/Bindings/phy/phy-mvebu.txt                     |   1 -
 dts/Bindings/phy/phy-rockchip-inno-usb2.txt        |  13 +-
 dts/Bindings/phy/qcom-dwc3-usb-phy.txt             |   2 -
 dts/Bindings/phy/qcom-qmp-phy.txt                  |  11 +
 dts/Bindings/phy/ralink-usb-phy.txt                |  23 +
 dts/Bindings/phy/rockchip-pcie-phy.txt             |   7 +-
 dts/Bindings/phy/samsung-phy.txt                   |   1 -
 dts/Bindings/phy/sun4i-usb-phy.txt                 |  10 +-
 dts/Bindings/phy/sun9i-usb-phy.txt                 |   1 -
 dts/Bindings/pinctrl/atmel,at91-pinctrl.txt        |   1 -
 dts/Bindings/pinctrl/cortina,gemini-pinctrl.txt    |  59 ++
 dts/Bindings/pinctrl/fsl,imx-pinctrl.txt           |   1 -
 dts/Bindings/pinctrl/fsl,imx7d-pinctrl.txt         |   1 -
 dts/Bindings/pinctrl/fsl,imx7ulp-pinctrl.txt       |  61 ++
 .../pinctrl/nvidia,tegra124-dpaux-padctl.txt       |   1 -
 dts/Bindings/pinctrl/oxnas,pinctrl.txt             |   1 -
 dts/Bindings/pinctrl/pinctrl-aspeed.txt            |   8 +-
 dts/Bindings/pinctrl/pinctrl-bindings.txt          |   2 +
 dts/Bindings/pinctrl/pinctrl-mt65xx.txt            |   1 +
 dts/Bindings/pinctrl/pinctrl-rk805.txt             |  63 ++
 dts/Bindings/pinctrl/pinctrl-zx.txt                |   1 -
 dts/Bindings/pinctrl/qcom,apq8064-pinctrl.txt      |   3 +-
 dts/Bindings/pinctrl/qcom,ipq4019-pinctrl.txt      |   6 +-
 dts/Bindings/pinctrl/qcom,pmic-gpio.txt            |  26 +-
 dts/Bindings/pinctrl/renesas,pfc-pinctrl.txt       |   4 +-
 dts/Bindings/pinctrl/rockchip,pinctrl.txt          |   2 +-
 dts/Bindings/pinctrl/sprd,pinctrl.txt              |  83 +++
 dts/Bindings/pinctrl/sprd,sc9860-pinctrl.txt       |  70 +++
 dts/Bindings/pinctrl/st,stm32-pinctrl.txt          |   1 -
 dts/Bindings/power/power-controller.txt            |   1 -
 dts/Bindings/power/renesas,apmu.txt                |   3 +-
 dts/Bindings/power/renesas,rcar-sysc.txt           |   1 +
 dts/Bindings/power/reset/st-reset.txt              |   1 -
 dts/Bindings/power/rockchip-io-domain.txt          |   2 +
 dts/Bindings/power/supply/act8945a-charger.txt     |   2 -
 dts/Bindings/power/supply/bq24190.txt              |  51 ++
 dts/Bindings/power/supply/ltc2941.txt              |  15 +-
 dts/Bindings/power/supply/max8903-charger.txt      |   1 -
 dts/Bindings/power/supply/maxim,max14656.txt       |   1 -
 dts/Bindings/power/wakeup-source.txt               |   9 +-
 dts/Bindings/powerpc/ibm,vas.txt                   |  22 +
 dts/Bindings/powerpc/opal/sensor-groups.txt        |  27 +
 dts/Bindings/pps/pps-gpio.txt                      |   8 +-
 dts/Bindings/ptp/brcm,ptp-dte.txt                  |   1 -
 dts/Bindings/pwm/pwm-bcm2835.txt                   |   4 +-
 dts/Bindings/pwm/pwm-mediatek.txt                  |   6 +-
 dts/Bindings/pwm/pwm-meson.txt                     |   1 -
 dts/Bindings/pwm/pwm-rockchip.txt                  |  11 +-
 dts/Bindings/pwm/pwm-stm32-lp.txt                  |  24 +
 dts/Bindings/pwm/pwm-sun4i.txt                     |   1 -
 dts/Bindings/pwm/pwm-tiecap.txt                    |   1 +
 dts/Bindings/pwm/pwm-tipwmss.txt                   |   2 -
 dts/Bindings/pwm/pwm-zx.txt                        |  22 +
 dts/Bindings/pwm/renesas,tpu-pwm.txt               |   1 -
 dts/Bindings/regulator/act8865-regulator.txt       |   1 -
 dts/Bindings/regulator/act8945a-regulator.txt      |   1 -
 dts/Bindings/regulator/mt6311-regulator.txt        |   2 +-
 dts/Bindings/regulator/mt6323-regulator.txt        |   2 +-
 dts/Bindings/regulator/mt6380-regulator.txt        |  89 +++
 dts/Bindings/regulator/mt6397-regulator.txt        |   2 +-
 dts/Bindings/regulator/pwm-regulator.txt           |   2 +-
 dts/Bindings/regulator/st,stm32-vrefbuf.txt        |  20 +
 dts/Bindings/remoteproc/imx-rproc.txt              |  33 +
 dts/Bindings/remoteproc/qcom,adsp.txt              |   7 +-
 dts/Bindings/remoteproc/qcom,q6v5.txt              |   5 +
 dts/Bindings/remoteproc/ti,davinci-rproc.txt       |  86 +++
 dts/Bindings/remoteproc/ti,keystone-rproc.txt      |  73 ++-
 dts/Bindings/reset/lantiq,reset.txt                |  30 +
 dts/Bindings/reset/nxp,lpc1850-rgu.txt             |   1 -
 dts/Bindings/reset/renesas,rst.txt                 |   1 +
 dts/Bindings/reset/snps,hsdk-reset.txt             |  28 +
 dts/Bindings/reset/uniphier-reset.txt              |  27 +-
 dts/Bindings/rng/imx-rngc.txt                      |  21 +
 dts/Bindings/rtc/google,goldfish-rtc.txt           |  17 +
 dts/Bindings/rtc/isil,isl12057.txt                 |   1 -
 dts/Bindings/rtc/realtek,rtd119x.txt               |  16 +
 dts/Bindings/rtc/st,stm32-rtc.txt                  |   1 -
 dts/Bindings/rtc/sun6i-rtc.txt                     |   4 +-
 dts/Bindings/scsi/hisilicon-sas.txt                |   1 -
 dts/Bindings/security/tpm/st33zp24-i2c.txt         |   1 -
 dts/Bindings/security/tpm/st33zp24-spi.txt         |   1 -
 dts/Bindings/security/tpm/tpm-i2c.txt              |   7 +-
 dts/Bindings/security/tpm/tpm_tis_spi.txt          |   1 -
 dts/Bindings/serial/8250.txt                       |   2 +
 dts/Bindings/serial/arc-uart.txt                   |   1 -
 dts/Bindings/serial/axis,etraxfs-uart.txt          |   1 -
 dts/Bindings/serial/mtk-uart.txt                   |   1 +
 dts/Bindings/serial/nvidia,tegra20-hsuart.txt      |   1 -
 dts/Bindings/serial/qcom,msm-uartdm.txt            |   3 -
 dts/Bindings/serial/renesas,sci-serial.txt         |   4 +
 dts/Bindings/serial/rs485.txt                      |   5 +-
 dts/Bindings/serial/serial.txt                     |   2 -
 dts/Bindings/serial/st,stm32-usart.txt             |  17 +-
 dts/Bindings/serio/allwinner,sun4i-ps2.txt         |   1 -
 dts/Bindings/serio/ps2-gpio.txt                    |  23 +
 dts/Bindings/soc/mediatek/scpsys.txt               |   3 +
 dts/Bindings/soc/qcom/qcom,glink.txt               |  13 +-
 dts/Bindings/soc/qcom/qcom,gsbi.txt                |   1 -
 dts/Bindings/soc/rockchip/grf.txt                  |   3 +
 dts/Bindings/soc/rockchip/power_domain.txt         |   3 +
 dts/Bindings/soc/ti/sci-pm-domain.txt              |   5 +-
 dts/Bindings/sound/armada-370db-audio.txt          |   1 -
 dts/Bindings/sound/atmel-classd.txt                |   9 +-
 dts/Bindings/sound/axentia,tse850-pcm5142.txt      |   1 -
 dts/Bindings/sound/brcm,cygnus-audio.txt           |   4 -
 dts/Bindings/sound/cs43130.txt                     |  67 ++
 dts/Bindings/sound/davinci-mcbsp.txt               |   1 -
 dts/Bindings/sound/dmic.txt                        |  16 +
 dts/Bindings/sound/fsl,asrc.txt                    |   1 -
 dts/Bindings/sound/fsl,esai.txt                    |   1 -
 dts/Bindings/sound/fsl,spdif.txt                   |   1 -
 dts/Bindings/sound/hdmi.txt                        |   1 -
 dts/Bindings/sound/mt2701-afe-pcm.txt              |   4 +-
 dts/Bindings/sound/qcom,msm8916-wcd-analog.txt     |  18 +-
 dts/Bindings/sound/renesas,rsnd.txt                |  70 +--
 dts/Bindings/sound/rockchip,pdm.txt                |   8 +-
 dts/Bindings/sound/rockchip,rk3399-gru-sound.txt   |   2 +-
 dts/Bindings/sound/rockchip-i2s.txt                |   4 +
 dts/Bindings/sound/rockchip-spdif.txt              |   1 -
 dts/Bindings/sound/rt274.txt                       |  33 +
 dts/Bindings/sound/rt5663.txt                      |   8 +
 dts/Bindings/sound/samsung,odroid.txt              |   6 -
 dts/Bindings/sound/simple-card.txt                 |   3 +
 dts/Bindings/sound/simple-scu-card.txt             |   1 +
 dts/Bindings/sound/st,sti-asoc-card.txt            |   5 -
 dts/Bindings/sound/sun4i-i2s.txt                   |   2 +
 dts/Bindings/sound/sunxi,sun4i-spdif.txt           |   1 -
 dts/Bindings/sound/tas5720.txt                     |   1 -
 dts/Bindings/sound/tlv320aic32x4.txt               |  13 +-
 dts/Bindings/sound/tlv320aic3x.txt                 |   5 +
 dts/Bindings/sound/wm8524.txt                      |  16 +
 dts/Bindings/sound/zte,zx-i2s.txt                  |   1 -
 dts/Bindings/sound/zte,zx-spdif.txt                |   1 -
 dts/Bindings/spi/efm32-spi.txt                     |   2 -
 dts/Bindings/spi/fsl-imx-cspi.txt                  |   1 +
 dts/Bindings/spi/nvidia,tegra114-spi.txt           |   1 -
 dts/Bindings/spi/nvidia,tegra20-sflash.txt         |   1 -
 dts/Bindings/spi/nvidia,tegra20-slink.txt          |   1 -
 dts/Bindings/spi/sh-hspi.txt                       |   1 -
 dts/Bindings/spi/sh-msiof.txt                      |   2 +-
 dts/Bindings/spi/spi-clps711x.txt                  |   1 -
 dts/Bindings/spi/spi-fsl-dspi.txt                  |   1 -
 dts/Bindings/spi/spi-mt65xx.txt                    |   1 -
 dts/Bindings/spi/spi-orion.txt                     |   2 -
 dts/Bindings/spi/spi-rockchip.txt                  |   1 +
 dts/Bindings/spi/spi-sun4i.txt                     |   1 -
 dts/Bindings/spi/spi-sun6i.txt                     |   1 -
 dts/Bindings/spi/spi_atmel.txt                     |   1 -
 dts/Bindings/sram/renesas,smp-sram.txt             |  27 +
 dts/Bindings/sram/sunxi-sram.txt                   |  10 +-
 dts/Bindings/thermal/armada-thermal.txt            |   1 -
 dts/Bindings/thermal/exynos-thermal.txt            |   1 -
 dts/Bindings/thermal/mediatek-thermal.txt          |   1 +
 dts/Bindings/thermal/rcar-gen3-thermal.txt         |   1 -
 dts/Bindings/thermal/rockchip-thermal.txt          |   1 +
 dts/Bindings/thermal/uniphier-thermal.txt          |  64 ++
 dts/Bindings/timer/nxp,tpm-timer.txt               |  28 +
 dts/Bindings/timer/renesas,cmt.txt                 |  73 +--
 dts/Bindings/trivial-devices.txt                   |  14 +
 dts/Bindings/unittest.txt                          |   5 -
 dts/Bindings/usb/allwinner,sun4i-a10-musb.txt      |   1 -
 dts/Bindings/usb/am33xx-usb.txt                    |   4 +-
 dts/Bindings/usb/brcm,bdc.txt                      |  29 +
 dts/Bindings/usb/da8xx-usb.txt                     |   2 -
 dts/Bindings/usb/dwc3-st.txt                       |   1 -
 dts/Bindings/usb/dwc3-xilinx.txt                   |   1 -
 dts/Bindings/usb/ehci-st.txt                       |   1 -
 dts/Bindings/usb/exynos-usb.txt                    |   2 -
 dts/Bindings/usb/fcs,fusb302.txt                   |  29 +
 dts/Bindings/usb/isp1301.txt                       |   1 -
 dts/Bindings/usb/keystone-usb.txt                  |  18 +-
 .../usb/{mt8173-xhci.txt =3D> mediatek,mtk-xhci.txt} |  14 +-
 .../usb/{mt8173-mtu3.txt =3D> mediatek,mtu3.txt}     |  10 +-
 dts/Bindings/usb/ohci-st.txt                       |   1 -
 dts/Bindings/usb/qcom,dwc3.txt                     |   3 -
 dts/Bindings/usb/renesas_usb3.txt                  |  16 +-
 dts/Bindings/usb/rockchip,dwc3.txt                 |   4 -
 dts/Bindings/usb/usb-device.txt                    |   3 +-
 dts/Bindings/vendor-prefixes.txt                   |  13 +-
 dts/Bindings/w1/fsl-imx-owire.txt                  |   1 -
 dts/Bindings/watchdog/aspeed-wdt.txt               |  40 ++
 dts/Bindings/watchdog/atmel-sama5d4-wdt.txt        |   1 -
 dts/Bindings/watchdog/atmel-wdt.txt                |   1 -
 dts/Bindings/watchdog/lantiq-wdt.txt               |  24 +
 dts/Bindings/watchdog/marvel.txt                   |   1 -
 dts/Bindings/watchdog/meson-wdt.txt                |   6 +-
 dts/Bindings/watchdog/mtk-wdt.txt                  |   8 +-
 dts/Bindings/watchdog/renesas-wdt.txt              |   1 +
 dts/Bindings/xilinx.txt                            |   2 +
 dts/include/dt-bindings/clock/gxbb-aoclkc.h        |   1 +
 dts/include/dt-bindings/clock/gxbb-clkc.h          |  63 ++
 dts/include/dt-bindings/clock/meson8b-clkc.h       |  70 +++
 dts/include/dt-bindings/clock/qcom,gcc-msm8996.h   |   2 +
 dts/include/dt-bindings/clock/r8a77995-cpg-mssr.h  |  57 ++
 dts/include/dt-bindings/clock/rk3228-cru.h         |   1 +
 dts/include/dt-bindings/clock/rv1108-cru.h         | 125 +++-
 dts/include/dt-bindings/clock/stm32h7-clks.h       | 165 +++++
 dts/include/dt-bindings/clock/sun4i-a10-ccu.h      | 200 ++++++
 dts/include/dt-bindings/clock/sun7i-a20-ccu.h      |  53 ++
 dts/include/dt-bindings/clock/sun8i-r40-ccu.h      | 187 ++++++
 dts/include/dt-bindings/genpd/k2g.h                |  90 ---
 dts/include/dt-bindings/leds/leds-pca955x.h        |  16 +
 dts/include/dt-bindings/memory/mt8173-larb-port.h  |   4 -
 dts/include/dt-bindings/mfd/stm32h7-rcc.h          | 136 ++++
 dts/include/dt-bindings/mips/lantiq_rcu_gphy.h     |  15 +
 dts/include/dt-bindings/pinctrl/dra.h              |   3 +
 dts/include/dt-bindings/pinctrl/qcom,pmic-gpio.h   |   2 +
 dts/include/dt-bindings/pinctrl/samsung.h          |   3 +-
 dts/include/dt-bindings/power/mt7622-power.h       |  22 +
 dts/include/dt-bindings/power/r8a77995-sysc.h      |  23 +
 dts/include/dt-bindings/power/rk3366-power.h       |  24 +
 .../dt-bindings/reset/amlogic,meson8b-clkc-reset.h |  27 +
 dts/include/dt-bindings/reset/snps,hsdk-reset.h    |  17 +
 dts/include/dt-bindings/reset/sun4i-a10-ccu.h      |  69 +++
 dts/include/dt-bindings/reset/sun8i-r40-ccu.h      | 130 ++++
 dts/src/arc/axc001.dtsi                            |   2 +-
 dts/src/arc/axc003.dtsi                            |  13 +-
 dts/src/arc/axc003_idu.dtsi                        |  13 +-
 dts/src/arc/axs10x_mb.dtsi                         |  10 +-
 dts/src/arc/hsdk.dts                               | 215 +++++++
 dts/src/arc/nsim_hs.dts                            |   2 +-
 dts/src/arc/vdk_axs10x_mb.dtsi                     |   1 -
 dts/src/arm/am335x-bone-common.dtsi                |   3 -
 dts/src/arm/am335x-chiliboard.dts                  |   3 -
 dts/src/arm/am335x-evm.dts                         |   1 +
 dts/src/arm/am335x-moxa-uc-8100-me-t.dts           | 525 ++++++++++++++++
 dts/src/arm/am33xx.dtsi                            |   2 +
 dts/src/arm/am437x-gp-evm.dts                      |  15 +
 dts/src/arm/am43x-epos-evm.dts                     |   7 +-
 dts/src/arm/am571x-idk.dts                         |  35 +-
 dts/src/arm/am572x-idk.dts                         |  34 +-
 dts/src/arm/am57xx-beagle-x15-common.dtsi          |  36 +-
 dts/src/arm/am57xx-beagle-x15-revb1.dts            |  17 +-
 dts/src/arm/am57xx-beagle-x15-revc.dts             |  39 ++
 dts/src/arm/am57xx-beagle-x15.dts                  |  11 +
 dts/src/arm/am57xx-idk-common.dtsi                 |   8 +
 dts/src/arm/armada-370.dtsi                        |   4 +-
 dts/src/arm/armada-375.dtsi                        |   4 +-
 dts/src/arm/armada-380.dtsi                        |   5 +-
 dts/src/arm/armada-385-db-ap.dts                   |   2 +-
 dts/src/arm/armada-385-turris-omnia.dts            |   2 +-
 dts/src/arm/armada-385.dtsi                        |   6 +-
 dts/src/arm/armada-388-clearfog.dts                |   2 +-
 dts/src/arm/armada-388-clearfog.dtsi               |   2 +-
 dts/src/arm/armada-388-db.dts                      |   2 +-
 dts/src/arm/armada-388-gp.dts                      |   2 +-
 dts/src/arm/armada-388-rd.dts                      |   2 +-
 dts/src/arm/armada-38x.dtsi                        |   7 +
 dts/src/arm/armada-390-db.dts                      |   2 +-
 dts/src/arm/armada-395-gp.dts                      |   2 +-
 dts/src/arm/armada-398-db.dts                      |   2 +-
 dts/src/arm/armada-39x.dtsi                        |   6 +-
 dts/src/arm/armada-xp-98dx3236.dtsi                |   3 +-
 dts/src/arm/armada-xp-db.dts                       |   2 +-
 dts/src/arm/armada-xp-gp.dts                       |   2 +-
 dts/src/arm/armada-xp-mv78230.dtsi                 |   7 +-
 dts/src/arm/armada-xp-mv78260.dtsi                 |  11 +-
 dts/src/arm/armada-xp-mv78460.dtsi                 |  14 +-
 dts/src/arm/aspeed-g4.dtsi                         |   4 +-
 dts/src/arm/at91-sama5d27_som1.dtsi                | 102 +++
 dts/src/arm/at91-sama5d27_som1_ek.dts              | 540 ++++++++++++++++
 dts/src/arm/at91-sama5d2_xplained.dts              |  39 +-
 dts/src/arm/at91sam9g45.dtsi                       |  21 +
 dts/src/arm/at91sam9m10g45ek.dts                   |   4 +
 dts/src/arm/bcm-cygnus.dtsi                        | 149 ++++-
 dts/src/arm/bcm-nsp.dtsi                           |  59 +-
 dts/src/arm/bcm2835-rpi-a-plus.dts                 |   6 +
 dts/src/arm/bcm2835-rpi-a.dts                      |   6 +
 dts/src/arm/bcm2835-rpi-b-plus.dts                 |   6 +
 dts/src/arm/bcm2835-rpi-b-rev2.dts                 |   6 +
 dts/src/arm/bcm2835-rpi-b.dts                      |   6 +
 dts/src/arm/bcm2835-rpi-zero-w.dts                 | 139 +++++
 dts/src/arm/bcm2835-rpi-zero.dts                   |   6 +
 dts/src/arm/bcm2835-rpi.dtsi                       |   2 +-
 dts/src/arm/bcm2836-rpi-2-b.dts                    |   6 +
 dts/src/arm/bcm2836.dtsi                           |   1 +
 dts/src/arm/bcm2837-rpi-3-b.dts                    |  52 +-
 dts/src/{arm64/broadcom =3D> arm}/bcm2837.dtsi       |   1 +
 dts/src/arm/bcm4708-buffalo-wzr-1750dhp.dts        |   4 +
 dts/src/arm/bcm4708-netgear-r6250.dts              |   3 +
 dts/src/arm/bcm4708-smartrg-sr400ac.dts            |   6 +
 dts/src/arm/bcm47081-tplink-archer-c5-v2.dts       |   4 +
 dts/src/arm/bcm4709-tplink-archer-c9-v1.dts        |   5 +
 dts/src/arm/bcm47094-dlink-dir-885l.dts            |   3 +
 dts/src/arm/bcm47094-luxul-xwr-3100.dts            |   3 +
 dts/src/arm/bcm47189-tenda-ac9.dts                 |   2 +
 dts/src/arm/bcm5301x.dtsi                          |  34 +
 dts/src/arm/bcm53573.dtsi                          |   4 +
 dts/src/arm/bcm911360_entphn.dts                   |   7 +-
 dts/src/arm/bcm947189acdbmr.dts                    |  97 +++
 dts/src/arm/bcm958522er.dts                        |   8 +
 dts/src/arm/bcm958525er.dts                        |   8 +
 dts/src/arm/bcm958525xmc.dts                       |   8 +
 dts/src/arm/bcm958622hr.dts                        |   8 +
 dts/src/arm/bcm958623hr.dts                        |   8 +
 dts/src/arm/bcm958625hr.dts                        |   8 +
 dts/src/arm/bcm958625k.dts                         |   8 +
 dts/src/arm/da850-evm.dts                          |   7 +
 dts/src/arm/da850-lego-ev3.dts                     |  24 +
 dts/src/arm/dove-d3plug.dts                        |   4 +-
 dts/src/arm/dove.dtsi                              |   8 +-
 dts/src/arm/dra7-evm-common.dtsi                   | 258 ++++++++
 dts/src/arm/dra7-evm.dts                           | 277 +--------
 dts/src/arm/dra7.dtsi                              |  36 +-
 dts/src/arm/dra71-evm.dts                          |  32 +-
 dts/src/arm/dra72-evm-common.dtsi                  |   7 +-
 dts/src/arm/dra72-evm-revc.dts                     |  34 +
 dts/src/arm/dra72-evm-tps65917.dtsi                |   2 +-
 dts/src/arm/dra72-evm.dts                          |  32 +
 dts/src/arm/dra72x-mmc-iodelay.dtsi                | 350 +++++++++++
 dts/src/arm/dra74x-mmc-iodelay.dtsi                | 647 +++++++++++++++++=
++
 dts/src/arm/dra76-evm.dts                          | 423 +++++++++++++
 dts/src/arm/dra76x.dtsi                            |  19 +
 dts/src/arm/dra7xx-clocks.dtsi                     |   2 +
 dts/src/arm/exynos3250-artik5-eval.dts             |   1 -
 dts/src/arm/exynos3250-artik5.dtsi                 |   1 -
 dts/src/arm/exynos3250-monk.dts                    |   1 -
 dts/src/arm/exynos3250-rinato.dts                  |  22 -
 dts/src/arm/exynos4210-trats.dts                   |  21 -
 dts/src/arm/exynos4412-itop-scp-core.dtsi          |   1 -
 dts/src/arm/exynos4412-odroid-common.dtsi          |   1 -
 dts/src/arm/exynos4412-origen.dts                  |   1 -
 dts/src/arm/exynos4412-trats2.dts                  |  22 -
 dts/src/arm/exynos5250-arndale.dts                 |   2 -
 dts/src/arm/exynos5250-smdk5250.dts                |   2 -
 dts/src/arm/exynos5250-snow-common.dtsi            |   3 -
 dts/src/arm/exynos5250-spring.dts                  |   2 -
 dts/src/arm/exynos5260-xyref5260.dts               |   2 -
 dts/src/arm/exynos5410-smdk5410.dts                |   2 -
 dts/src/arm/exynos5420-peach-pit.dts               |   3 -
 dts/src/arm/exynos5440.dtsi                        |   2 +
 dts/src/arm/exynos5800-peach-pi.dts                |   3 -
 dts/src/arm/gemini-dlink-dir-685.dts               | 246 ++++++++
 dts/src/arm/gemini-nas4220b.dts                    |  24 +
 dts/src/arm/gemini-rut1xx.dts                      |  39 ++
 dts/src/arm/gemini-sq201.dts                       |  36 +-
 dts/src/arm/gemini-wbd111.dts                      |  26 +
 dts/src/arm/gemini-wbd222.dts                      |  26 +
 dts/src/arm/gemini.dtsi                            | 173 +++++-
 dts/src/arm/imx25.dtsi                             |   7 +
 dts/src/arm/imx53-cx9020.dts                       | 297 +++++++++
 dts/src/arm/imx53-pinfunc.h                        |   4 +
 dts/src/arm/imx53.dtsi                             |   9 +
 dts/src/arm/imx6dl-gw52xx.dts                      |  58 ++
 dts/src/arm/imx6dl-gw53xx.dts                      |  58 ++
 dts/src/arm/imx6dl-gw54xx.dts                      |  58 ++
 dts/src/arm/imx6dl-riotboard.dts                   |  45 ++
 dts/src/arm/imx6q-apalis-eval.dts                  | 278 +++++++++
 dts/src/arm/imx6q-apalis-ixora-v1.1.dts            | 291 +++++++++
 dts/src/arm/imx6q-apalis-ixora.dts                 |  32 +-
 dts/src/arm/imx6q-b850v3.dts                       |   2 +-
 dts/src/arm/imx6q-bx50v3.dtsi                      |  42 ++
 dts/src/arm/imx6q-evi.dts                          |  16 +
 dts/src/arm/imx6q-gw52xx.dts                       |  58 ++
 dts/src/arm/imx6q-gw53xx.dts                       |  58 ++
 dts/src/arm/imx6q-gw54xx.dts                       |  58 ++
 dts/src/arm/imx6qdl-apalis.dtsi                    |  44 +-
 dts/src/arm/imx6qdl-gw51xx.dtsi                    |  54 ++
 dts/src/arm/imx6qdl-gw52xx.dtsi                    |   1 -
 dts/src/arm/imx6qdl-gw53xx.dtsi                    |   1 -
 dts/src/arm/imx6qdl-gw54xx.dtsi                    |   1 -
 dts/src/arm/imx6qdl-gw553x.dtsi                    |  54 ++
 dts/src/arm/imx6qdl-icore-rqs.dtsi                 |   1 -
 dts/src/arm/imx6qdl-nitrogen6x.dtsi                |  19 +
 dts/src/arm/imx6qdl-sabrelite.dtsi                 |  19 +
 dts/src/arm/imx6qdl-zii-rdu2.dtsi                  | 112 +++-
 dts/src/arm/imx6qdl.dtsi                           |   1 +
 dts/src/arm/imx6sl.dtsi                            |   1 +
 dts/src/arm/imx6sx.dtsi                            |   1 +
 dts/src/arm/imx6ul-14x14-evk.dts                   |  40 +-
 dts/src/arm/{imx6ul-geam.dtsi =3D> imx6ul-geam.dts}  |  74 +++
 dts/src/arm/imx6ul-isiot-common.dtsi               | 141 -----
 dts/src/arm/imx6ul-isiot-emmc.dts                  |   1 -
 dts/src/arm/imx6ul-isiot-nand.dts                  |   1 -
 dts/src/arm/imx6ul-isiot.dtsi                      | 183 ++++++
 dts/src/arm/imx6ul-liteboard.dts                   |   4 +
 dts/src/arm/imx6ul.dtsi                            |   1 +
 dts/src/arm/imx7-colibri.dtsi                      |   9 +
 dts/src/arm/imx7d-sdb.dts                          |  93 ++-
 dts/src/arm/imx7s.dtsi                             |  32 +
 dts/src/arm/imx7ulp-pinfunc.h                      | 468 ++++++++++++++
 dts/src/arm/keystone-k2e-evm.dts                   |  18 +
 dts/src/arm/keystone-k2e.dtsi                      |  20 +
 dts/src/arm/keystone-k2g-evm.dts                   |  71 +++
 dts/src/arm/keystone-k2g-ice.dts                   |  18 +
 dts/src/arm/keystone-k2g.dtsi                      | 204 ++++++
 dts/src/arm/keystone-k2hk-evm.dts                  |  53 ++
 dts/src/arm/keystone-k2hk.dtsi                     | 139 +++++
 dts/src/arm/keystone-k2l-evm.dts                   |  33 +
 dts/src/arm/keystone-k2l.dtsi                      |  71 +++
 dts/src/arm/kirkwood-6192.dtsi                     |   3 +-
 dts/src/arm/kirkwood-6281.dtsi                     |   3 +-
 dts/src/arm/kirkwood-6282.dtsi                     |   4 +-
 dts/src/arm/kirkwood-98dx4122.dtsi                 |   3 +-
 dts/src/arm/logicpd-torpedo-37xx-devkit.dts        |   2 +-
 dts/src/arm/ls1021a.dtsi                           |   8 +-
 dts/src/arm/meson.dtsi                             |  30 +-
 dts/src/arm/meson6.dtsi                            |  28 +
 dts/src/arm/meson8.dtsi                            |  16 +
 dts/src/arm/meson8b.dtsi                           |  33 +-
 dts/src/arm/motorola-cpcap-mapphone.dtsi           |   1 +
 dts/src/arm/mt2701.dtsi                            | 106 ++++
 dts/src/arm/mt6323.dtsi                            | 241 ++++++++
 dts/src/arm/mt7623-evb.dts                         |  33 -
 dts/src/arm/mt7623.dtsi                            | 211 +++++--
 dts/src/arm/mt7623n-bananapi-bpi-r2.dts            | 487 +++++++++++++++
 dts/src/arm/mt7623n-rfb-nand.dts                   | 111 ++++
 dts/src/arm/mt7623n-rfb.dtsi                       |  92 +++
 dts/src/arm/omap2420-n8x0-common.dtsi              |   4 +-
 dts/src/arm/omap3-beagle-xm.dts                    |   2 +-
 dts/src/arm/omap3-beagle.dts                       |   2 +-
 dts/src/arm/omap3-cm-t3517.dts                     |   2 +-
 dts/src/arm/omap3-cm-t3730.dts                     |   2 +-
 dts/src/arm/omap3-devkit8000-common.dtsi           |   2 +-
 dts/src/arm/omap3-evm-common.dtsi                  |   2 +-
 dts/src/arm/omap3-n900.dts                         |  78 ++-
 dts/src/arm/omap3-n950-n9.dtsi                     |  18 +
 dts/src/arm/omap3-overo-base.dtsi                  |   2 +-
 dts/src/arm/omap3-tao3530.dtsi                     |   2 +-
 dts/src/arm/omap3-zoom3.dts                        |   2 +-
 dts/src/arm/omap3.dtsi                             |   4 -
 dts/src/arm/omap3430-sdp.dts                       |   2 +-
 dts/src/arm/omap4-droid4-xt894.dts                 |  42 +-
 dts/src/arm/omap4-duovero-parlor.dts               |   2 +-
 dts/src/arm/omap4-panda-common.dtsi                |   2 +-
 dts/src/arm/omap4-sdp-es23plus.dts                 |   2 +-
 dts/src/arm/omap4-sdp.dts                          |   2 +-
 dts/src/arm/omap4-var-om44customboard.dtsi         |   2 +-
 dts/src/arm/omap5-board-common.dtsi                |   2 +-
 dts/src/arm/omap5-cm-t54.dts                       |   2 +-
 dts/src/arm/qcom-ipq4019-ap.dk01.1.dtsi            |  29 +-
 dts/src/arm/qcom-ipq4019.dtsi                      | 109 +++-
 dts/src/arm/qcom-msm8974.dtsi                      |   2 +-
 dts/src/arm/r7s72100-genmai.dts                    |  71 ++-
 dts/src/arm/r7s72100-rskrza1.dts                   |  61 ++
 dts/src/arm/r7s72100.dtsi                          |  78 +++
 dts/src/arm/r8a7743-iwg20d-q7.dts                  |  31 +
 dts/src/arm/r8a7743-iwg20m.dtsi                    |  26 +
 dts/src/arm/r8a7743-sk-rzg1m.dts                   |  25 +-
 dts/src/arm/r8a7743.dtsi                           | 301 ++++++++-
 dts/src/arm/r8a7745-sk-rzg1e.dts                   |  25 +-
 dts/src/arm/r8a7745.dtsi                           |  30 +-
 dts/src/arm/r8a7790.dtsi                           |  30 +-
 dts/src/arm/r8a7791-koelsch.dts                    |  10 +-
 dts/src/arm/r8a7791.dtsi                           |  28 +-
 dts/src/arm/r8a7792.dtsi                           |  18 +
 dts/src/arm/r8a7793.dtsi                           |  18 +
 dts/src/arm/r8a7794.dtsi                           |  22 +-
 dts/src/arm/rk3036-kylin.dts                       |   2 -
 dts/src/arm/rk3036.dtsi                            |   3 +-
 dts/src/arm/rk3066a-bqcurie2.dts                   |   2 -
 dts/src/arm/rk3066a-mk808.dts                      |   2 -
 dts/src/arm/rk3066a-rayeager.dts                   |   3 -
 dts/src/arm/rk3188-px3-evb.dts                     |   2 -
 dts/src/arm/rk3188-radxarock.dts                   |   1 -
 dts/src/arm/rk3228-evb.dts                         |  34 +
 dts/src/arm/rk3229-evb.dts                         | 129 +++-
 dts/src/arm/rk3229.dtsi                            |  89 +++
 dts/src/arm/rk322x.dtsi                            | 199 +++++-
 dts/src/arm/rk3288-evb.dtsi                        |  51 +-
 dts/src/arm/rk3288-fennec.dts                      |   8 +-
 dts/src/arm/rk3288-firefly-reload-core.dtsi        |   3 +-
 dts/src/arm/rk3288-firefly-reload.dts              |   2 -
 dts/src/arm/rk3288-firefly.dtsi                    |   5 +-
 dts/src/arm/rk3288-miqi.dts                        |   4 +-
 dts/src/arm/rk3288-phycore-rdk.dts                 |   1 -
 dts/src/arm/rk3288-phycore-som.dtsi                |   3 +-
 dts/src/arm/rk3288-popmetal.dts                    |   4 +-
 dts/src/arm/rk3288-r89.dts                         |   3 +-
 dts/src/arm/rk3288-rock2-som.dtsi                  |   3 +-
 dts/src/arm/rk3288-rock2-square.dts                |   2 -
 dts/src/arm/rk3288-tinker.dts                      |   8 +-
 dts/src/arm/rk3288-veyron-sdmmc.dtsi               |   1 -
 dts/src/arm/rk3288-veyron.dtsi                     |   4 +-
 dts/src/arm/rk3288.dtsi                            | 215 ++++---
 dts/src/arm/rv1108-evb.dts                         | 190 ++++++
 dts/src/arm/rv1108.dtsi                            | 369 ++++++++++-
 dts/src/arm/sama5d2.dtsi                           |  77 ++-
 dts/src/arm/spear1310.dtsi                         |   3 +
 dts/src/arm/spear1340.dtsi                         |   1 +
 dts/src/arm/ste-dbx5x0.dtsi                        |  15 +-
 dts/src/arm/ste-hrefprev60.dtsi                    |   2 +-
 dts/src/arm/stm32429i-eval.dts                     |   7 +-
 dts/src/arm/stm32f4-pinctrl.dtsi                   | 343 +++++++++++
 dts/src/arm/stm32f429-disco.dts                    |   3 +-
 ...{imx6ul-geam-kit.dts =3D> stm32f429-pinctrl.dtsi} |  98 ++-
 dts/src/arm/stm32f429.dtsi                         | 322 +---------
 dts/src/arm/stm32f469-disco.dts                    |   3 +-
 dts/src/arm/stm32f469-pinctrl.dtsi                 |  96 +++
 dts/src/arm/stm32f746.dtsi                         |  51 ++
 dts/src/arm/stm32f769-disco.dts                    |   6 +
 dts/src/arm/stm32h743.dtsi                         | 127 +++-
 dts/src/arm/stm32h743i-eval.dts                    |  18 +
 dts/src/arm/sun6i-a31.dtsi                         |   6 +-
 dts/src/arm/sun7i-a20-cubietruck.dts               |   4 +
 dts/src/arm/sun8i-a23-a33.dtsi                     |   6 +-
 dts/src/arm/sun8i-a83t-allwinner-h8homlet-v2.dts   |  85 +++
 dts/src/arm/sun8i-a83t-bananapi-m3.dts             | 148 +++++
 dts/src/arm/sun8i-a83t-cubietruck-plus.dts         | 101 +++
 dts/src/arm/sun8i-a83t.dtsi                        | 176 ++++++
 dts/src/arm/sun8i-h3-beelink-x2.dts                |  22 +-
 dts/src/arm/sun8i-r16-bananapi-m2m.dts             | 321 ++++++++++
 dts/src/arm/tango4-smp8758.dtsi                    |   1 -
 dts/src/arm/tegra114-dalmore.dts                   |  10 +
 dts/src/arm/tegra124-jetson-tk1.dts                |  12 +-
 dts/src/arm/tegra124.dtsi                          |   1 +
 dts/src/arm/tegra20-paz00.dts                      |   2 +
 dts/src/arm/tegra30-beaver.dts                     |  10 +
 dts/src/arm/tps65217.dtsi                          |   3 +
 dts/src/arm/uniphier-ld4-ref.dts                   |  10 +-
 dts/src/arm/uniphier-ld4.dtsi                      |  20 +-
 dts/src/arm/uniphier-ld6b-ref.dts                  |  10 +-
 dts/src/arm/uniphier-ld6b.dtsi                     |   2 +-
 dts/src/arm/uniphier-pinctrl.dtsi                  |  58 +-
 dts/src/arm/uniphier-pro4-ace.dts                  |   2 +-
 dts/src/arm/uniphier-pro4-ref.dts                  |  10 +-
 dts/src/arm/uniphier-pro4-sanji.dts                |   2 +-
 dts/src/arm/uniphier-pro4.dtsi                     |  20 +-
 dts/src/arm/uniphier-pro5.dtsi                     |  60 +-
 dts/src/arm/uniphier-pxs2-gentil.dts               |   2 +-
 dts/src/arm/uniphier-pxs2-vodka.dts                |   2 +-
 dts/src/arm/uniphier-pxs2.dtsi                     |  22 +-
 dts/src/arm/uniphier-sld3-ref.dts                  |  75 ---
 dts/src/arm/uniphier-sld3.dtsi                     | 260 --------
 dts/src/arm/uniphier-sld8-ref.dts                  |  10 +-
 dts/src/arm/uniphier-sld8.dtsi                     |  20 +-
 dts/src/arm/versatile-pb.dts                       |   2 +-
 dts/src/arm/zx296702-ad1.dts                       |   2 -
 dts/src/arm/zynq-7000.dtsi                         |   8 +
 dts/src/arm/zynq-parallella.dts                    |   3 +-
 dts/src/arm/zynq-zc702.dts                         |  20 +-
 dts/src/arm/zynq-zc706.dts                         |  20 +-
 dts/src/arm/zynq-zed.dts                           |   5 +-
 dts/src/arm/zynq-zybo.dts                          |   5 +-
 dts/src/arm64/allwinner/axp803.dtsi                | 150 +++++
 .../arm64/allwinner/sun50i-a64-bananapi-m64.dts    | 143 ++++-
 dts/src/arm64/allwinner/sun50i-a64-nanopi-a64.dts  | 207 +++++++
 dts/src/arm64/allwinner/sun50i-a64-olinuxino.dts   | 199 ++++++
 dts/src/arm64/allwinner/sun50i-a64-pine64.dts      | 112 ++++
 .../allwinner/sun50i-a64-sopine-baseboard.dts      |  22 +
 dts/src/arm64/allwinner/sun50i-a64-sopine.dtsi     |  86 +++
 dts/src/arm64/allwinner/sun50i-a64.dtsi            |   9 +
 dts/src/arm64/amlogic/meson-gx-p23x-q20x.dtsi      |  17 +-
 dts/src/arm64/amlogic/meson-gx.dtsi                |  46 +-
 dts/src/arm64/amlogic/meson-gxbb-nanopi-k2.dts     |  77 ++-
 dts/src/arm64/amlogic/meson-gxbb-nexbox-a95x.dts   |  19 +-
 dts/src/arm64/amlogic/meson-gxbb-odroidc2.dts      |   9 +-
 dts/src/arm64/amlogic/meson-gxbb-p20x.dtsi         |  23 +-
 dts/src/arm64/amlogic/meson-gxbb-vega-s95.dtsi     |  10 +-
 dts/src/arm64/amlogic/meson-gxbb-wetek-play2.dts   |   6 +
 dts/src/arm64/amlogic/meson-gxbb.dtsi              |  73 ++-
 dts/src/arm64/amlogic/meson-gxl-s905d-p230.dts     |   8 +-
 .../amlogic/meson-gxl-s905x-hwacom-amazetv.dts     |   7 +-
 .../arm64/amlogic/meson-gxl-s905x-khadas-vim.dts   |  63 ++
 .../arm64/amlogic/meson-gxl-s905x-libretech-cc.dts |  77 ++-
 .../arm64/amlogic/meson-gxl-s905x-nexbox-a95x.dts  |  17 +-
 dts/src/arm64/amlogic/meson-gxl-s905x-p212.dts     |   7 +
 dts/src/arm64/amlogic/meson-gxl-s905x-p212.dtsi    |  10 +-
 dts/src/arm64/amlogic/meson-gxl.dtsi               |  74 ++-
 dts/src/arm64/amlogic/meson-gxm-nexbox-a1.dts      |  14 +-
 dts/src/arm64/amlogic/meson-gxm-rbox-pro.dts       |   1 -
 dts/src/arm64/amlogic/meson-gxm.dtsi               |   4 +
 dts/src/arm64/apm/apm-shadowcat.dtsi               |   2 +
 dts/src/arm64/apm/apm-storm.dtsi                   |   5 +
 dts/src/arm64/arm/foundation-v8.dtsi               |   2 +-
 dts/src/arm64/arm/juno-base.dtsi                   |  14 +-
 dts/src/arm64/arm/rtsm_ve-motherboard.dtsi         |   2 +-
 dts/src/arm64/broadcom/bcm2835-rpi.dtsi            | 108 ----
 dts/src/arm64/broadcom/bcm2837-rpi-3-b.dts         |  42 +-
 dts/src/arm64/broadcom/bcm283x-rpi-smsc9514.dtsi   |  19 -
 dts/src/arm64/broadcom/bcm283x-rpi-usb-host.dtsi   |   3 -
 dts/src/arm64/broadcom/bcm283x.dtsi                | 638 -----------------=
--
 .../arm64/broadcom/{ =3D> northstar2}/ns2-clock.dtsi |   0
 .../arm64/broadcom/{ =3D> northstar2}/ns2-svk.dts    |   0
 .../arm64/broadcom/{ =3D> northstar2}/ns2-xmc.dts    |   0
 dts/src/arm64/broadcom/{ =3D> northstar2}/ns2.dtsi   |   0
 .../arm64/broadcom/stingray/bcm958742-base.dtsi    |  78 +++
 dts/src/arm64/broadcom/stingray/bcm958742k.dts     |   4 +
 dts/src/arm64/broadcom/stingray/bcm958742t.dts     |   4 +
 dts/src/arm64/broadcom/stingray/stingray-fs4.dtsi  | 118 ++++
 dts/src/arm64/broadcom/stingray/stingray-sata.dtsi | 278 +++++++++
 dts/src/arm64/broadcom/stingray/stingray.dtsi      | 136 ++++
 dts/src/arm64/exynos/exynos5433-tm2-common.dtsi    |  25 +-
 dts/src/arm64/exynos/exynos5433.dtsi               |   4 +-
 dts/src/arm64/exynos/exynos7-espresso.dts          |   2 -
 dts/src/arm64/freescale/fsl-ls1012a.dtsi           |  17 +
 dts/src/arm64/freescale/fsl-ls1043a.dtsi           |  12 +-
 dts/src/arm64/freescale/fsl-ls1046a.dtsi           |  31 +
 dts/src/arm64/freescale/fsl-ls1088a-rdb.dts        |   2 +-
 dts/src/arm64/freescale/fsl-ls1088a.dtsi           |  65 ++
 dts/src/arm64/freescale/fsl-ls2080a-qds.dts        |   5 -
 dts/src/arm64/freescale/fsl-ls2080a-rdb.dts        |   5 -
 dts/src/arm64/freescale/fsl-ls2080a-simu.dts       |   5 -
 dts/src/arm64/freescale/fsl-ls2080a.dtsi           |  17 +
 dts/src/arm64/freescale/fsl-ls2088a-qds.dts        |   5 -
 dts/src/arm64/freescale/fsl-ls2088a-rdb.dts        |   5 -
 dts/src/arm64/freescale/fsl-ls2088a.dtsi           |  17 +
 dts/src/arm64/freescale/fsl-ls208xa.dtsi           |  51 ++
 dts/src/arm64/hisilicon/hi3660-hikey960.dts        |  37 +-
 dts/src/arm64/hisilicon/hi3660.dtsi                | 130 ++++
 dts/src/arm64/hisilicon/hi6220.dtsi                |   9 +-
 dts/src/arm64/hisilicon/hip07-d05.dts              |   4 +
 dts/src/arm64/hisilicon/hip07.dtsi                 |  22 +
 dts/src/arm64/marvell/armada-3720-espressobin.dts  |  30 +
 dts/src/arm64/marvell/armada-37xx.dtsi             |  11 +-
 dts/src/arm64/marvell/armada-7040-db.dts           |  39 ++
 dts/src/arm64/marvell/armada-8040-db.dts           |  65 ++
 dts/src/arm64/marvell/armada-8040-mcbin.dts        | 124 +++-
 dts/src/arm64/marvell/armada-8080-db.dts           |  67 ++
 dts/src/arm64/marvell/armada-8080.dtsi             |  53 ++
 dts/src/arm64/marvell/armada-ap806.dtsi            |   4 +-
 .../arm64/marvell/armada-ap810-ap0-octa-core.dtsi  | 104 ++++
 dts/src/arm64/marvell/armada-ap810-ap0.dtsi        | 163 +++++
 dts/src/arm64/marvell/armada-cp110-master.dtsi     |  83 ++-
 dts/src/arm64/marvell/armada-cp110-slave.dtsi      |  83 ++-
 dts/src/arm64/mediatek/mt2712-evb.dts              |  32 +
 dts/src/arm64/mediatek/mt2712e.dtsi                | 171 ++++++
 dts/src/arm64/mediatek/mt6797.dtsi                 |  12 +-
 dts/src/arm64/mediatek/mt7622-rfb1.dts             |  27 +
 dts/src/arm64/mediatek/mt7622.dtsi                 | 110 ++++
 dts/src/arm64/qcom/apq8016-sbc-pmic-pins.dtsi      |   1 +
 dts/src/arm64/qcom/apq8016-sbc.dtsi                |  17 +-
 dts/src/arm64/qcom/apq8096-db820c-pmic-pins.dtsi   |  24 +
 dts/src/arm64/qcom/apq8096-db820c.dtsi             | 198 ++++++
 dts/src/arm64/qcom/ipq8074-hk01.dts                |  52 ++
 dts/src/arm64/qcom/ipq8074.dtsi                    | 194 ++++++
 dts/src/arm64/qcom/msm8916.dtsi                    | 120 +++-
 dts/src/arm64/qcom/msm8996.dtsi                    | 314 ++++++++++
 dts/src/arm64/qcom/pmi8994.dtsi                    |  17 +
 dts/src/arm64/renesas/r8a7795-es1-h3ulcb.dts       |   2 -
 dts/src/arm64/renesas/r8a7795-es1-salvator-x.dts   |   2 -
 dts/src/arm64/renesas/r8a7795-es1.dtsi             |   9 +-
 dts/src/arm64/renesas/r8a7795-h3ulcb.dts           |  16 +-
 dts/src/arm64/renesas/r8a7795-salvator-x.dts       |   2 -
 dts/src/arm64/renesas/r8a7795-salvator-xs.dts      |   8 +-
 dts/src/arm64/renesas/r8a7795.dtsi                 | 314 +++++++++-
 dts/src/arm64/renesas/r8a7796-m3ulcb.dts           |  14 +-
 dts/src/arm64/renesas/r8a7796-salvator-x.dts       |  31 +-
 dts/src/arm64/renesas/r8a7796.dtsi                 | 414 ++++++++++++-
 dts/src/arm64/renesas/r8a77995-draak.dts           |  46 ++
 dts/src/arm64/renesas/r8a77995.dtsi                | 155 +++++
 dts/src/arm64/renesas/salvator-common.dtsi         |   4 -
 dts/src/arm64/renesas/salvator-xs.dtsi             |  10 +
 dts/src/arm64/renesas/ulcb.dtsi                    |  51 ++
 dts/src/arm64/rockchip/rk3328-evb.dts              | 181 ++++++
 dts/src/arm64/rockchip/rk3328-rock64.dts           | 333 ++++++++++
 dts/src/arm64/rockchip/rk3328.dtsi                 | 437 +++++++++++++
 dts/src/arm64/rockchip/rk3368-evb.dtsi             |   1 -
 dts/src/arm64/rockchip/rk3368-geekbox.dts          |   1 -
 dts/src/arm64/rockchip/rk3368-orion-r68-meta.dts   |   2 -
 dts/src/arm64/rockchip/rk3368-px5-evb.dts          |   3 -
 dts/src/arm64/rockchip/rk3368-r88.dts              |   2 -
 dts/src/arm64/rockchip/rk3368.dtsi                 |  68 ++
 dts/src/arm64/rockchip/rk3399-evb.dts              |   2 +-
 dts/src/arm64/rockchip/rk3399-firefly.dts          |  16 +-
 dts/src/arm64/rockchip/rk3399-gru-kevin.dts        |  44 ++
 dts/src/arm64/rockchip/rk3399-gru.dtsi             | 132 ++--
 dts/src/arm64/rockchip/rk3399-op1-opp.dtsi         |  33 +
 dts/src/arm64/rockchip/rk3399-opp.dtsi             |  33 +
 dts/src/arm64/rockchip/rk3399-puma-haikou.dts      | 228 +++++++
 dts/src/arm64/rockchip/rk3399-puma.dtsi            | 547 ++++++++++++++++
 .../arm64/rockchip/rk3399-sapphire-excavator.dts   | 240 ++++++++
 dts/src/arm64/rockchip/rk3399-sapphire.dtsi        | 644 +++++++++++++++++=
++
 dts/src/arm64/rockchip/rk3399.dtsi                 | 292 ++++++++-
 dts/src/arm64/socionext/uniphier-ld11-global.dts   |   6 +-
 dts/src/arm64/socionext/uniphier-ld11-ref.dts      |   6 +-
 dts/src/arm64/socionext/uniphier-ld11.dtsi         |  35 +-
 dts/src/arm64/socionext/uniphier-ld20-global.dts   |   6 +-
 dts/src/arm64/socionext/uniphier-ld20-ref.dts      |   6 +-
 dts/src/arm64/socionext/uniphier-ld20.dtsi         |  37 +-
 dts/src/arm64/socionext/uniphier-pinctrl.dtsi      | 142 +----
 dts/src/arm64/socionext/uniphier-pxs3-ref.dts      |  62 ++
 dts/src/arm64/socionext/uniphier-pxs3.dtsi         | 367 +++++++++++
 dts/src/arm64/socionext/uniphier-ref-daughter.dtsi |  17 +-
 dts/src/arm64/socionext/uniphier-support-card.dtsi |  35 +-
 dts/src/arm64/xilinx/zynqmp-ep108-clk.dtsi         |  50 +-
 dts/src/arm64/xilinx/zynqmp-ep108.dts              |  18 +-
 dts/src/arm64/xilinx/zynqmp.dtsi                   | 277 ++++++++-
 dts/src/arm64/zte/zx296718-evb.dts                 |  68 +-
 dts/src/arm64/zte/zx296718-pcbox.dts               | 143 +++++
 dts/src/arm64/zte/zx296718.dtsi                    | 171 +++++-
 dts/src/mips/ingenic/ci20.dts                      |  37 ++
 dts/src/mips/ingenic/jz4780.dtsi                   |  11 +
 dts/src/mips/ni/169445.dts                         | 100 +++
 dts/src/mips/ralink/mt7628a.dtsi                   | 126 ++++
 dts/src/mips/ralink/omega2p.dts                    |  18 +
 dts/src/mips/ralink/vocore2.dts                    |  18 +
 dts/src/nios2/3c120_devboard.dts                   |   3 +-
 dts/src/powerpc/fsp2.dts                           |  33 +-
 fs/omap4_usbbootfs.c                               |   2 -
 fs/pstore/fs.c                                     |   2 -
 fs/uimagefs.c                                      |   4 +-
 images/Makefile                                    |   1 +
 images/Makefile.imx                                |   5 +
 images/Makefile.vexpress                           |  11 +
 include/bbu.h                                      |   2 +
 include/elf.h                                      |   2 +-
 include/file-list.h                                |   5 +
 include/fs.h                                       |  20 +
 include/mci.h                                      |   1 +
 include/of.h                                       |   2 +
 include/regmap.h                                   |   3 +-
 include/usb/fastboot.h                             |   7 +
 lib/gui/2d-primitives.c                            |   4 +-
 lib/gui/graphic_utils.c                            |   4 +-
 lib/ratp.c                                         |   2 +-
 scripts/imx/imx-usb-loader.c                       |   9 +-
 1113 files changed, 32945 insertions(+), 5031 deletions(-)
 create mode 100644 Documentation/boards/arm-qemu-vexpress.rst
 create mode 100644 arch/arm/boards/nxp-imx6ull-evk/Makefile
 create mode 100644 arch/arm/boards/nxp-imx6ull-evk/board.c
 create mode 100644 arch/arm/boards/nxp-imx6ull-evk/flash-header-nxp-imx6ul=
l-evk.imxcfg
 create mode 100644 arch/arm/boards/nxp-imx6ull-evk/lowlevel.c
 delete mode 100644 arch/arm/boards/vexpress/defaultenv-vexpress/config
 delete mode 100644 arch/arm/configs/vexpress_ca9_defconfig
 create mode 100644 arch/arm/dts/imx6ull-14x14-evk.dts
 create mode 100644 arch/arm/dts/vexpress-v2p-ca15.dts
 create mode 100644 arch/arm/dts/vexpress-v2p-ca9.dts
 delete mode 100644 arch/arm/mach-vexpress/devices.c
 create mode 100644 arch/mips/dts/ar9331.dtsi
 rename arch/mips/dts/{ar9344_tl_wdr4300.dts =3D> ar9344-tl-wdr4300-v1.7.dt=
s} (85%)
 create mode 100644 drivers/clk/clk-ar9344.c
 create mode 100644 drivers/clk/vexpress/Makefile
 create mode 100644 drivers/clk/vexpress/clk-sp810.c
 create mode 100644 drivers/clk/vexpress/clk-vexpress-osc.c
 create mode 100644 drivers/net/ag71xx.c
 create mode 100644 drivers/net/phy/ar8327.c
 create mode 100644 dts/Bindings/arc/hsdk.txt
 create mode 100644 dts/Bindings/arm/bhf.txt
 create mode 100644 dts/Bindings/arm/marvell/armada-8kp.txt
 create mode 100644 dts/Bindings/ata/ahci-mtk.txt
 delete mode 100644 dts/Bindings/clock/mt8173-cpu-dvfs.txt
 create mode 100644 dts/Bindings/clock/renesas,rcar-usb2-clock-sel.txt
 create mode 100644 dts/Bindings/clock/snps,hsdk-pll-clock.txt
 create mode 100644 dts/Bindings/clock/snps,pll-clock.txt
 create mode 100644 dts/Bindings/clock/st,stm32h7-rcc.txt
 create mode 100644 dts/Bindings/cpufreq/cpufreq-mediatek.txt
 create mode 100644 dts/Bindings/crypto/artpec6-crypto.txt
 create mode 100644 dts/Bindings/crypto/st,stm32-hash.txt
 create mode 100644 dts/Bindings/display/bridge/dw_mipi_dsi.txt
 create mode 100644 dts/Bindings/display/repaper.txt
 create mode 100644 dts/Bindings/display/sitronix,st7586.txt
 create mode 100644 dts/Bindings/extcon/extcon-usbc-cros-ec.txt
 create mode 100644 dts/Bindings/fpga/altera-passive-serial.txt
 create mode 100644 dts/Bindings/fpga/xilinx-pr-decoupler.txt
 create mode 100644 dts/Bindings/hwmon/ibm,cffps1.txt
 create mode 100644 dts/Bindings/hwmon/ltq-cputemp.txt
 create mode 100644 dts/Bindings/i2c/i2c-altera.txt
 create mode 100644 dts/Bindings/i2c/i2c-sprd.txt
 create mode 100644 dts/Bindings/iio/counter/stm32-lptimer-cnt.txt
 create mode 100644 dts/Bindings/iio/humidity/hdc100x.txt
 create mode 100644 dts/Bindings/iio/humidity/htu21.txt
 create mode 100644 dts/Bindings/iio/pressure/ms5637.txt
 create mode 100644 dts/Bindings/iio/temperature/tsys01.txt
 create mode 100644 dts/Bindings/iio/timer/stm32-lptimer-trigger.txt
 create mode 100644 dts/Bindings/input/pwm-vibrator.txt
 create mode 100644 dts/Bindings/interrupt-controller/socionext,uniphier-ai=
det.txt
 create mode 100644 dts/Bindings/iommu/qcom,iommu.txt
 create mode 100644 dts/Bindings/leds/ams,as3645a.txt
 create mode 100644 dts/Bindings/leds/irled/gpio-ir-tx.txt
 create mode 100644 dts/Bindings/leds/irled/pwm-ir-tx.txt
 create mode 100644 dts/Bindings/leds/leds-pca955x.txt
 create mode 100644 dts/Bindings/media/i2c/adv748x.txt
 create mode 100644 dts/Bindings/media/i2c/dongwoon,dw9714.txt
 create mode 100644 dts/Bindings/media/meson-ao-cec.txt
 create mode 100644 dts/Bindings/media/qcom,camss.txt
 create mode 100644 dts/Bindings/media/zx-irdec.txt
 create mode 100644 dts/Bindings/mfd/bd9571mwv.txt
 create mode 100644 dts/Bindings/mfd/retu.txt
 create mode 100644 dts/Bindings/mfd/stm32-lptimer.txt
 create mode 100644 dts/Bindings/mfd/tps6105x.txt
 create mode 100644 dts/Bindings/mfd/zii,rave-sp.txt
 create mode 100644 dts/Bindings/mips/lantiq/fpi-bus.txt
 create mode 100644 dts/Bindings/mips/lantiq/rcu-gphy.txt
 create mode 100644 dts/Bindings/mips/lantiq/rcu.txt
 create mode 100644 dts/Bindings/mips/ni.txt
 create mode 100644 dts/Bindings/net/anarion-gmac.txt
 create mode 100644 dts/Bindings/net/broadcom-bluetooth.txt
 create mode 100644 dts/Bindings/net/sff,sfp.txt
 create mode 100644 dts/Bindings/net/xilinx_axienet.txt
 delete mode 100644 dts/Bindings/pci/mediatek,mt7623-pcie.txt
 create mode 100644 dts/Bindings/pci/mediatek-pcie.txt
 create mode 100644 dts/Bindings/phy/phy-lantiq-rcu-usb2.txt
 rename dts/Bindings/phy/{phy-mt65xx-usb.txt =3D> phy-mtk-tphy.txt} (88%)
 create mode 100644 dts/Bindings/phy/phy-mvebu-comphy.txt
 create mode 100644 dts/Bindings/phy/ralink-usb-phy.txt
 create mode 100644 dts/Bindings/pinctrl/cortina,gemini-pinctrl.txt
 create mode 100644 dts/Bindings/pinctrl/fsl,imx7ulp-pinctrl.txt
 create mode 100644 dts/Bindings/pinctrl/pinctrl-rk805.txt
 create mode 100644 dts/Bindings/pinctrl/sprd,pinctrl.txt
 create mode 100644 dts/Bindings/pinctrl/sprd,sc9860-pinctrl.txt
 create mode 100644 dts/Bindings/power/supply/bq24190.txt
 create mode 100644 dts/Bindings/powerpc/ibm,vas.txt
 create mode 100644 dts/Bindings/powerpc/opal/sensor-groups.txt
 create mode 100644 dts/Bindings/pwm/pwm-stm32-lp.txt
 create mode 100644 dts/Bindings/pwm/pwm-zx.txt
 create mode 100644 dts/Bindings/regulator/mt6380-regulator.txt
 create mode 100644 dts/Bindings/regulator/st,stm32-vrefbuf.txt
 create mode 100644 dts/Bindings/remoteproc/imx-rproc.txt
 create mode 100644 dts/Bindings/remoteproc/ti,davinci-rproc.txt
 create mode 100644 dts/Bindings/reset/lantiq,reset.txt
 create mode 100644 dts/Bindings/reset/snps,hsdk-reset.txt
 create mode 100644 dts/Bindings/rng/imx-rngc.txt
 create mode 100644 dts/Bindings/rtc/google,goldfish-rtc.txt
 create mode 100644 dts/Bindings/rtc/realtek,rtd119x.txt
 create mode 100644 dts/Bindings/serio/ps2-gpio.txt
 create mode 100644 dts/Bindings/sound/cs43130.txt
 create mode 100644 dts/Bindings/sound/dmic.txt
 create mode 100644 dts/Bindings/sound/rt274.txt
 create mode 100644 dts/Bindings/sound/wm8524.txt
 create mode 100644 dts/Bindings/sram/renesas,smp-sram.txt
 create mode 100644 dts/Bindings/thermal/uniphier-thermal.txt
 create mode 100644 dts/Bindings/timer/nxp,tpm-timer.txt
 create mode 100644 dts/Bindings/usb/brcm,bdc.txt
 create mode 100644 dts/Bindings/usb/fcs,fusb302.txt
 rename dts/Bindings/usb/{mt8173-xhci.txt =3D> mediatek,mtk-xhci.txt} (85%)
 rename dts/Bindings/usb/{mt8173-mtu3.txt =3D> mediatek,mtu3.txt} (91%)
 create mode 100644 dts/Bindings/watchdog/lantiq-wdt.txt
 create mode 100644 dts/include/dt-bindings/clock/r8a77995-cpg-mssr.h
 create mode 100644 dts/include/dt-bindings/clock/stm32h7-clks.h
 create mode 100644 dts/include/dt-bindings/clock/sun4i-a10-ccu.h
 create mode 100644 dts/include/dt-bindings/clock/sun7i-a20-ccu.h
 create mode 100644 dts/include/dt-bindings/clock/sun8i-r40-ccu.h
 delete mode 100644 dts/include/dt-bindings/genpd/k2g.h
 create mode 100644 dts/include/dt-bindings/leds/leds-pca955x.h
 create mode 100644 dts/include/dt-bindings/mfd/stm32h7-rcc.h
 create mode 100644 dts/include/dt-bindings/mips/lantiq_rcu_gphy.h
 create mode 100644 dts/include/dt-bindings/power/mt7622-power.h
 create mode 100644 dts/include/dt-bindings/power/r8a77995-sysc.h
 create mode 100644 dts/include/dt-bindings/power/rk3366-power.h
 create mode 100644 dts/include/dt-bindings/reset/amlogic,meson8b-clkc-rese=
t.h
 create mode 100644 dts/include/dt-bindings/reset/snps,hsdk-reset.h
 create mode 100644 dts/include/dt-bindings/reset/sun4i-a10-ccu.h
 create mode 100644 dts/include/dt-bindings/reset/sun8i-r40-ccu.h
 create mode 100644 dts/src/arc/hsdk.dts
 create mode 100644 dts/src/arm/am335x-moxa-uc-8100-me-t.dts
 create mode 100644 dts/src/arm/am57xx-beagle-x15-revc.dts
 create mode 100644 dts/src/arm/at91-sama5d27_som1.dtsi
 create mode 100644 dts/src/arm/at91-sama5d27_som1_ek.dts
 create mode 100644 dts/src/arm/bcm2835-rpi-zero-w.dts
 rename dts/src/{arm64/broadcom =3D> arm}/bcm2837.dtsi (96%)
 create mode 100644 dts/src/arm/bcm947189acdbmr.dts
 create mode 100644 dts/src/arm/dra7-evm-common.dtsi
 create mode 100644 dts/src/arm/dra72x-mmc-iodelay.dtsi
 create mode 100644 dts/src/arm/dra74x-mmc-iodelay.dtsi
 create mode 100644 dts/src/arm/dra76-evm.dts
 create mode 100644 dts/src/arm/dra76x.dtsi
 create mode 100644 dts/src/arm/gemini-dlink-dir-685.dts
 create mode 100644 dts/src/arm/imx53-cx9020.dts
 create mode 100644 dts/src/arm/imx6q-apalis-eval.dts
 create mode 100644 dts/src/arm/imx6q-apalis-ixora-v1.1.dts
 rename dts/src/arm/{imx6ul-geam.dtsi =3D> imx6ul-geam.dts} (87%)
 delete mode 100644 dts/src/arm/imx6ul-isiot-common.dtsi
 create mode 100644 dts/src/arm/imx7ulp-pinfunc.h
 create mode 100644 dts/src/arm/mt6323.dtsi
 delete mode 100644 dts/src/arm/mt7623-evb.dts
 create mode 100644 dts/src/arm/mt7623n-bananapi-bpi-r2.dts
 create mode 100644 dts/src/arm/mt7623n-rfb-nand.dts
 create mode 100644 dts/src/arm/mt7623n-rfb.dtsi
 create mode 100644 dts/src/arm/rk3229.dtsi
 create mode 100644 dts/src/arm/stm32f4-pinctrl.dtsi
 rename dts/src/arm/{imx6ul-geam-kit.dts =3D> stm32f429-pinctrl.dtsi} (63%)
 create mode 100644 dts/src/arm/stm32f469-pinctrl.dtsi
 create mode 100644 dts/src/arm/sun8i-a83t-bananapi-m3.dts
 create mode 100644 dts/src/arm/sun8i-r16-bananapi-m2m.dts
 delete mode 100644 dts/src/arm/uniphier-sld3-ref.dts
 delete mode 100644 dts/src/arm/uniphier-sld3.dtsi
 create mode 100644 dts/src/arm64/allwinner/axp803.dtsi
 create mode 100644 dts/src/arm64/allwinner/sun50i-a64-nanopi-a64.dts
 create mode 100644 dts/src/arm64/allwinner/sun50i-a64-olinuxino.dts
 delete mode 100644 dts/src/arm64/broadcom/bcm2835-rpi.dtsi
 delete mode 100644 dts/src/arm64/broadcom/bcm283x-rpi-smsc9514.dtsi
 delete mode 100644 dts/src/arm64/broadcom/bcm283x-rpi-usb-host.dtsi
 delete mode 100644 dts/src/arm64/broadcom/bcm283x.dtsi
 rename dts/src/arm64/broadcom/{ =3D> northstar2}/ns2-clock.dtsi (100%)
 rename dts/src/arm64/broadcom/{ =3D> northstar2}/ns2-svk.dts (100%)
 rename dts/src/arm64/broadcom/{ =3D> northstar2}/ns2-xmc.dts (100%)
 rename dts/src/arm64/broadcom/{ =3D> northstar2}/ns2.dtsi (100%)
 create mode 100644 dts/src/arm64/broadcom/stingray/stingray-fs4.dtsi
 create mode 100644 dts/src/arm64/broadcom/stingray/stingray-sata.dtsi
 create mode 100644 dts/src/arm64/marvell/armada-8080-db.dts
 create mode 100644 dts/src/arm64/marvell/armada-8080.dtsi
 create mode 100644 dts/src/arm64/marvell/armada-ap810-ap0-octa-core.dtsi
 create mode 100644 dts/src/arm64/marvell/armada-ap810-ap0.dtsi
 create mode 100644 dts/src/arm64/mediatek/mt2712-evb.dts
 create mode 100644 dts/src/arm64/mediatek/mt2712e.dtsi
 create mode 100644 dts/src/arm64/mediatek/mt7622-rfb1.dts
 create mode 100644 dts/src/arm64/mediatek/mt7622.dtsi
 create mode 100644 dts/src/arm64/qcom/ipq8074-hk01.dts
 create mode 100644 dts/src/arm64/qcom/ipq8074.dtsi
 create mode 100644 dts/src/arm64/renesas/r8a77995-draak.dts
 create mode 100644 dts/src/arm64/renesas/r8a77995.dtsi
 create mode 100644 dts/src/arm64/rockchip/rk3328-rock64.dts
 create mode 100644 dts/src/arm64/rockchip/rk3399-puma-haikou.dts
 create mode 100644 dts/src/arm64/rockchip/rk3399-puma.dtsi
 create mode 100644 dts/src/arm64/rockchip/rk3399-sapphire-excavator.dts
 create mode 100644 dts/src/arm64/rockchip/rk3399-sapphire.dtsi
 create mode 100644 dts/src/arm64/socionext/uniphier-pxs3-ref.dts
 create mode 100644 dts/src/arm64/socionext/uniphier-pxs3.dtsi
 create mode 100644 dts/src/arm64/zte/zx296718-pcbox.dts
 create mode 100644 dts/src/mips/ni/169445.dts
 create mode 100644 dts/src/mips/ralink/mt7628a.dtsi
 create mode 100644 dts/src/mips/ralink/omega2p.dts
 create mode 100644 dts/src/mips/ralink/vocore2.dts
 create mode 100644 images/Makefile.vexpress
-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
