Delivery-date: Wed, 14 Dec 2022 13:38:05 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p5R1Q-003cxD-NA
	for lore@lore.pengutronix.de; Wed, 14 Dec 2022 13:38:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p5R1G-0002Qf-NX
	for lore@pengutronix.de; Wed, 14 Dec 2022 13:38:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=A5/j1hpO21EZilB1W8/fIGTN+x4fs2XPp7GgU4UAme0=; b=3QhiOrWJW1cWAbU8P2MQwgy605
	56+W6/uPteJaW1jgOkRSdOt2RkxZ+DK/nhRESQglOSMdrg0Rl5qkuYljEy5jwRb6Qnrdj69rbtYbE
	vAR2Y+Br6/FSshFKHs+ydHmpacwNm1KtGEtkXwmsewW/T/U7yukEelOk+VFZxwZqz33wNj3iw0X9W
	0HceetmSsxjyV+SfOW9Jt5d5FONCfySecUOxHAvnV3YWxf+bykFosn+2R4/sAbea+xtYMJL7TfNGE
	5xvAWkJU2ZL/Oez6po4nNy4rRAF3D38d2baBkFQIPOyXSXcbsa7y2NVNi5gxdKMiKoq1zK1KcjVVE
	tw1v+Gyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5Qyt-00GMJn-1s; Wed, 14 Dec 2022 12:35:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5Qyh-00GMEp-OR
	for barebox@lists.infradead.org; Wed, 14 Dec 2022 12:35:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1p5Qyg-0001rr-DJ; Wed, 14 Dec 2022 13:35:14 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1p5Qyf-004TO3-1S; Wed, 14 Dec 2022 13:35:13 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1p5Qye-000nNB-PD; Wed, 14 Dec 2022 13:35:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 14 Dec 2022 13:35:08 +0100
Message-Id: <20221214123512.189688-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221214123512.189688-1-s.hauer@pengutronix.de>
References: <20221214123512.189688-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/5] Rename device_d::device_node to device_d::of_node
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Linux struct device has the member of_node for the device_node pointer.
Rename this in barebox accordingly to minimize the necessary changes
when porting Linux code. This was done with the semantic patch:

@@ struct device_d E; @@
- E.device_node
+ E.of_node
@@ struct device_d *E; @@
- E->device_node
+ E->of_node

Plus some manual adjustments.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/devel/porting.rst               |  1 -
 arch/arm/cpu/psci-client.c                    |  2 +-
 arch/arm/mach-clps711x/clock.c                |  2 +-
 arch/arm/mach-clps711x/common.c               | 10 ++++----
 arch/arm/mach-imx/iim.c                       |  2 +-
 arch/arm/mach-zynqmp/firmware-zynqmp.c        |  4 ++--
 arch/mips/mach-ath79/art.c                    |  4 ++--
 arch/riscv/boards/riscvemu/board.c            |  2 +-
 arch/riscv/cpu/core.c                         |  4 ++--
 arch/sandbox/board/hostfile.c                 |  2 +-
 arch/sandbox/board/led.c                      |  2 +-
 arch/sandbox/board/power.c                    |  3 ++-
 arch/sandbox/board/watchdog.c                 |  5 ++--
 commands/devinfo.c                            |  6 ++---
 common/boards/qemu-virt/board.c               |  2 +-
 common/console.c                              |  2 +-
 common/oftree.c                               |  4 ++--
 common/reset_source.c                         |  2 +-
 drivers/aiodev/am335x_adc.c                   |  2 +-
 drivers/aiodev/core.c                         | 10 ++++----
 drivers/aiodev/imx_thermal.c                  |  4 ++--
 drivers/aiodev/qoriq_thermal.c                |  4 ++--
 drivers/aiodev/stm32-adc-core.c               |  2 +-
 drivers/aiodev/stm32-adc.c                    | 12 ++++++----
 drivers/ata/intf_platform_ide.c               |  2 +-
 drivers/ata/pata-imx.c                        |  2 +-
 drivers/base/bus.c                            |  6 ++---
 drivers/base/driver.c                         |  6 ++---
 drivers/base/power.c                          |  6 ++---
 drivers/base/regmap/regmap.c                  |  4 ++--
 drivers/bus/imx-weim.c                        |  6 ++---
 drivers/bus/omap-gpmc.c                       |  4 ++--
 drivers/bus/ti-sysc.c                         |  4 ++--
 drivers/clk/bcm/clk-bcm2835-aux.c             |  4 ++--
 drivers/clk/clk-ar933x.c                      |  2 +-
 drivers/clk/clk-ar9344.c                      |  2 +-
 drivers/clk/clk-bulk.c                        |  2 +-
 drivers/clk/clk-rpi.c                         |  2 +-
 drivers/clk/clk-scmi.c                        |  5 ++--
 drivers/clk/clkdev.c                          |  2 +-
 drivers/clk/imx/clk-imx5.c                    |  6 ++---
 drivers/clk/imx/clk-imx6.c                    |  4 ++--
 drivers/clk/imx/clk-imx6sl.c                  |  2 +-
 drivers/clk/imx/clk-imx6sx.c                  |  2 +-
 drivers/clk/imx/clk-imx6ul.c                  |  2 +-
 drivers/clk/imx/clk-imx7.c                    |  4 ++--
 drivers/clk/loongson/clk-ls1b200.c            |  2 +-
 drivers/clk/mvebu/common.c                    |  4 ++--
 drivers/clk/mvebu/corediv.c                   |  2 +-
 drivers/clk/mxs/clk-imx28.c                   |  5 ++--
 drivers/clk/rockchip/clk-rk3399.c             |  2 +-
 drivers/clk/rockchip/clk-rk3568.c             |  2 +-
 drivers/clk/sifive/sifive-prci.c              |  4 ++--
 drivers/clk/socfpga/clk.c                     |  2 +-
 drivers/clk/starfive/jh7100-clkgen.c          |  4 ++--
 drivers/clk/tegra/clk-tegra124.c              |  4 ++--
 drivers/clk/tegra/clk-tegra20.c               |  4 ++--
 drivers/clk/tegra/clk-tegra30.c               |  4 ++--
 drivers/clk/zynq/clkc.c                       |  4 ++--
 drivers/clk/zynqmp/clkc.c                     |  4 ++--
 drivers/clocksource/armv7m_systick.c          |  2 +-
 drivers/clocksource/bcm2835.c                 |  2 +-
 drivers/clocksource/clps711x.c                |  2 +-
 drivers/clocksource/dw_apb_timer.c            |  2 +-
 drivers/clocksource/mvebu.c                   |  2 +-
 drivers/crypto/caam/ctrl.c                    |  2 +-
 drivers/eeprom/at24.c                         | 14 +++++------
 drivers/eeprom/at25.c                         |  6 ++---
 drivers/firmware/altera_serial.c              |  8 +++----
 drivers/firmware/arm_scmi/bus.c               |  2 +-
 drivers/firmware/arm_scmi/driver.c            |  2 +-
 drivers/firmware/arm_scmi/smc.c               |  6 ++---
 drivers/firmware/socfpga.c                    |  6 ++---
 drivers/firmware/zynqmp-fpga.c                |  6 ++---
 drivers/fpga/fpga-bridge.c                    |  4 ++--
 drivers/fpga/socfpga-hps2fpga-bridge.c        |  4 ++--
 drivers/gpio/gpio-74164.c                     |  6 ++---
 drivers/gpio/gpio-ath79.c                     |  2 +-
 drivers/gpio/gpio-clps711x.c                  |  2 +-
 drivers/gpio/gpio-davinci.c                   |  2 +-
 drivers/gpio/gpio-dw.c                        |  4 ++--
 drivers/gpio/gpio-generic.c                   |  4 ++--
 drivers/gpio/gpio-imx.c                       |  2 +-
 drivers/gpio/gpio-latch.c                     |  2 +-
 drivers/gpio/gpio-libftdi1.c                  |  6 ++---
 drivers/gpio/gpio-mpc8xxx.c                   |  4 ++--
 drivers/gpio/gpio-mxs.c                       |  2 +-
 drivers/gpio/gpio-omap.c                      |  2 +-
 drivers/gpio/gpio-orion.c                     |  4 ++--
 drivers/gpio/gpio-pcf857x.c                   |  2 +-
 drivers/gpio/gpio-sifive.c                    |  2 +-
 drivers/gpio/gpio-vf610.c                     |  6 ++---
 drivers/gpio/gpio-zynq.c                      |  2 +-
 drivers/gpio/gpiolib.c                        | 15 ++++++------
 drivers/hw_random/core.c                      |  2 +-
 drivers/i2c/busses/i2c-at91.c                 |  2 +-
 drivers/i2c/busses/i2c-bcm283x.c              |  4 ++--
 drivers/i2c/busses/i2c-cadence.c              |  4 ++--
 drivers/i2c/busses/i2c-designware.c           |  4 ++--
 drivers/i2c/busses/i2c-gpio.c                 |  6 ++---
 drivers/i2c/busses/i2c-imx.c                  | 16 +++++++------
 drivers/i2c/busses/i2c-mv64xxx.c              |  6 ++---
 drivers/i2c/busses/i2c-omap.c                 |  6 ++---
 drivers/i2c/busses/i2c-rockchip.c             |  4 ++--
 drivers/i2c/busses/i2c-stm32.c                |  2 +-
 drivers/i2c/busses/i2c-tegra.c                |  6 ++---
 drivers/i2c/busses/i2c-versatile.c            |  2 +-
 drivers/i2c/i2c-mux.c                         |  6 ++---
 drivers/i2c/i2c.c                             | 10 ++++----
 drivers/i2c/muxes/i2c-mux-pca954x.c           |  4 ++--
 drivers/input/gpio_keys.c                     |  4 ++--
 drivers/input/matrix-keymap.c                 |  4 ++--
 drivers/led/led-gpio.c                        |  4 ++--
 drivers/led/led-pca955x.c                     |  2 +-
 drivers/led/led-pwm.c                         |  2 +-
 drivers/mci/arasan-sdhci.c                    |  2 +-
 drivers/mci/atmel-sdhci.c                     |  2 +-
 drivers/mci/atmel_mci.c                       |  2 +-
 drivers/mci/dw_mmc.c                          | 19 ++++++++-------
 drivers/mci/mci-core.c                        | 12 +++++-----
 drivers/mci/mmci.c                            |  2 +-
 drivers/mci/sdhci.c                           |  2 +-
 drivers/mci/stm32_sdmmc2.c                    |  2 +-
 drivers/mci/tegra-sdmmc.c                     |  6 ++---
 drivers/mfd/atmel-flexcom.c                   |  4 ++--
 drivers/mfd/axp20x.c                          |  4 ++--
 drivers/mfd/da9053.c                          |  2 +-
 drivers/mfd/da9063.c                          |  6 ++---
 drivers/mfd/mc13xxx.c                         |  2 +-
 drivers/mfd/rave-sp.c                         |  4 ++--
 drivers/mfd/rk808.c                           |  2 +-
 drivers/mfd/rn5t568.c                         |  4 ++--
 drivers/mfd/stm32-timers.c                    |  2 +-
 drivers/mfd/stmpe-i2c.c                       |  4 ++--
 drivers/mfd/stpmic1.c                         |  2 +-
 drivers/misc/starfive-pwrseq.c                |  2 +-
 drivers/misc/state.c                          |  2 +-
 drivers/misc/storage-by-uuid.c                |  4 ++--
 drivers/misc/ubootvar.c                       |  6 ++---
 drivers/mtd/devices/m25p80.c                  |  8 +++----
 drivers/mtd/devices/mtdram.c                  |  4 ++--
 drivers/mtd/nand/atmel_nand.c                 |  4 ++--
 drivers/mtd/nand/nand_denali_dt.c             |  2 +-
 drivers/mtd/nand/nand_fsl_ifc.c               |  2 +-
 drivers/mtd/nand/nand_imx.c                   |  2 +-
 drivers/mtd/nand/nand_mrvl_nfc.c              |  2 +-
 drivers/mtd/nand/nand_mxs.c                   |  2 +-
 drivers/mtd/nand/nand_orion.c                 |  2 +-
 drivers/mtd/nor/cfi_flash.c                   |  2 +-
 drivers/mtd/spi-nor/cadence-quadspi.c         | 10 ++++----
 drivers/mtd/spi-nor/spi-nor.c                 |  2 +-
 drivers/net/bcmgenet.c                        |  6 ++---
 drivers/net/cpsw.c                            | 10 ++++----
 drivers/net/davinci_emac.c                    |  2 +-
 drivers/net/designware.c                      |  6 ++---
 drivers/net/designware_eqos.c                 | 16 ++++++-------
 drivers/net/designware_rockchip.c             |  2 +-
 drivers/net/designware_socfpga.c              |  9 +++----
 drivers/net/designware_starfive.c             |  3 ++-
 drivers/net/designware_stm32.c                |  6 ++---
 drivers/net/designware_tegra186.c             |  2 +-
 drivers/net/dm9k.c                            |  2 +-
 drivers/net/dsa.c                             |  8 +++----
 drivers/net/e1000/eeprom.c                    |  3 +--
 drivers/net/fec_imx.c                         | 15 ++++++------
 drivers/net/fsl-fman.c                        |  6 ++---
 drivers/net/liteeth.c                         |  2 +-
 drivers/net/macb.c                            |  8 +++----
 drivers/net/mvneta.c                          |  2 +-
 drivers/net/orion-gbe.c                       |  6 ++---
 drivers/net/phy/at803x.c                      |  2 +-
 drivers/net/phy/dp83867.c                     |  2 +-
 drivers/net/phy/marvell.c                     |  4 ++--
 drivers/net/phy/mdio-gpio.c                   | 10 ++++----
 drivers/net/phy/mdio-mux-gpio.c               |  6 ++---
 drivers/net/phy/mdio-mux.c                    |  2 +-
 drivers/net/phy/mdio-mvebu.c                  |  2 +-
 drivers/net/phy/mdio_bus.c                    | 16 ++++++-------
 drivers/net/phy/micrel.c                      | 16 ++++++-------
 drivers/net/phy/mv88e6xxx/chip.c              |  4 ++--
 drivers/net/phy/mv88e6xxx/port.c              |  4 ++--
 drivers/net/phy/phy.c                         | 16 +++++++------
 drivers/net/smc911x.c                         | 10 ++++----
 drivers/nvmem/bsec.c                          |  2 +-
 drivers/nvmem/core.c                          | 20 ++++++++--------
 drivers/nvmem/eeprom_93xx46.c                 |  4 ++--
 drivers/nvmem/ocotp.c                         |  2 +-
 drivers/nvmem/rave-sp-eeprom.c                |  4 ++--
 drivers/nvmem/snvs_lpgpr.c                    |  2 +-
 drivers/nvmem/starfive-otp.c                  |  2 +-
 drivers/of/barebox.c                          |  5 ++--
 drivers/of/base.c                             |  6 ++---
 drivers/of/device.c                           |  4 ++--
 drivers/of/of_path.c                          |  4 ++--
 drivers/of/platform.c                         |  8 +++----
 drivers/pci/pci-ecam-generic.c                |  2 +-
 drivers/pci/pci-imx6.c                        |  2 +-
 drivers/pci/pci-layerscape.c                  |  6 ++---
 drivers/pci/pci-mvebu.c                       |  6 ++---
 drivers/pci/pci-tegra.c                       |  4 ++--
 drivers/pci/pci.c                             | 10 ++++----
 drivers/pci/pcie-designware-host.c            |  2 +-
 drivers/pci/pcie-designware.c                 |  2 +-
 drivers/phy/phy-core.c                        | 24 +++++++++----------
 drivers/phy/phy-stm32-usbphyc.c               |  4 ++--
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c |  8 +++----
 .../rockchip/phy-rockchip-naneng-combphy.c    |  4 ++--
 drivers/phy/usb-nop-xceiv.c                   |  2 +-
 drivers/pinctrl/imx-iomux-v1.c                |  4 ++--
 drivers/pinctrl/imx-iomux-v3.c                |  2 +-
 drivers/pinctrl/mvebu/armada-370.c            |  2 +-
 drivers/pinctrl/mvebu/armada-xp.c             |  2 +-
 drivers/pinctrl/mvebu/dove.c                  |  2 +-
 drivers/pinctrl/mvebu/kirkwood.c              |  2 +-
 drivers/pinctrl/pinctrl-at91-pio4.c           |  2 +-
 drivers/pinctrl/pinctrl-at91.c                |  8 +++----
 drivers/pinctrl/pinctrl-rockchip.c            | 10 ++++----
 drivers/pinctrl/pinctrl-single.c              |  2 +-
 drivers/pinctrl/pinctrl-stm32.c               |  2 +-
 drivers/pinctrl/pinctrl-tegra20.c             |  2 +-
 drivers/pinctrl/pinctrl-tegra30.c             |  2 +-
 drivers/pinctrl/pinctrl.c                     |  6 ++---
 drivers/power/reset/gpio-poweroff.c           |  2 +-
 drivers/power/reset/gpio-restart.c            |  4 ++--
 drivers/power/reset/reboot-mode.c             |  4 ++--
 drivers/power/reset/syscon-poweroff.c         |  8 +++----
 drivers/power/reset/syscon-reboot-mode.c      |  4 ++--
 drivers/power/reset/syscon-reboot.c           | 12 +++++-----
 drivers/pwm/core.c                            |  2 +-
 drivers/pwm/pwm-atmel.c                       |  2 +-
 drivers/pwm/pwm-imx.c                         |  4 ++--
 drivers/pwm/pwm-mxs.c                         |  2 +-
 drivers/pwm/pwm-stm32.c                       |  4 ++--
 drivers/regulator/anatop-regulator.c          |  4 ++--
 drivers/regulator/core.c                      |  8 +++----
 drivers/regulator/fixed.c                     |  4 ++--
 drivers/regulator/pfuze.c                     |  2 +-
 drivers/regulator/rk808-regulator.c           |  2 +-
 drivers/regulator/scmi-regulator.c            |  2 +-
 drivers/regulator/stm32-pwr.c                 |  2 +-
 drivers/regulator/stm32-vrefbuf.c             |  2 +-
 drivers/regulator/stpmic1_regulator.c         |  2 +-
 drivers/remoteproc/imx_rproc.c                |  4 ++--
 drivers/remoteproc/remoteproc_core.c          |  4 ++--
 drivers/remoteproc/stm32_rproc.c              |  4 ++--
 drivers/reset/core.c                          | 11 +++++----
 drivers/reset/reset-imx7.c                    |  4 ++--
 drivers/reset/reset-scmi.c                    |  2 +-
 drivers/reset/reset-simple.c                  |  2 +-
 drivers/reset/reset-socfpga.c                 |  2 +-
 drivers/reset/reset-starfive-vic.c            |  2 +-
 drivers/rtc/rtc-ds1307.c                      |  2 +-
 drivers/serial/serial_clps711x.c              |  4 ++--
 drivers/serial/serial_imx.c                   | 10 ++++----
 drivers/serial/serial_lpuart.c                |  4 ++--
 drivers/serial/serial_sifive.c                |  3 ++-
 drivers/serial/serial_stm32.c                 |  4 ++--
 drivers/soc/imx/gpcv2.c                       |  8 +++----
 drivers/soc/kvx/kvx_socinfo.c                 |  2 +-
 drivers/soc/rockchip/io-domain.c              |  2 +-
 drivers/sound/gpio-beeper.c                   |  2 +-
 drivers/sound/pwm-beeper.c                    |  7 +++---
 drivers/spi/ath79_spi.c                       |  2 +-
 drivers/spi/atmel_spi.c                       |  2 +-
 drivers/spi/dspi_spi.c                        |  6 ++---
 drivers/spi/gpio_spi.c                        |  2 +-
 drivers/spi/imx_spi.c                         |  4 ++--
 drivers/spi/mvebu_spi.c                       |  2 +-
 drivers/spi/omap3_spi.c                       |  4 ++--
 drivers/spi/spi-fsl-dspi.c                    |  6 ++---
 drivers/spi/spi-fsl-qspi.c                    |  2 +-
 drivers/spi/spi-nxp-fspi.c                    |  2 +-
 drivers/spi/spi-sifive.c                      |  2 +-
 drivers/spi/spi.c                             |  8 +++----
 drivers/spi/zynq_qspi.c                       |  2 +-
 drivers/usb/dwc3/core.c                       | 22 ++++++++---------
 drivers/usb/dwc3/dwc3-of-simple.c             |  2 +-
 drivers/usb/gadget/at91_udc.c                 |  4 ++--
 drivers/usb/host/ehci-atmel.c                 |  2 +-
 drivers/usb/host/ehci-hcd.c                   |  2 +-
 drivers/usb/host/ohci-at91.c                  |  4 ++--
 drivers/usb/imx/chipidea-imx.c                | 20 ++++++++--------
 drivers/usb/imx/imx-usb-phy.c                 |  2 +-
 drivers/usb/misc/usb251xb.c                   |  4 ++--
 drivers/usb/musb/musb_am335x.c                |  2 +-
 drivers/usb/musb/musb_dsps.c                  |  4 ++--
 drivers/usb/musb/phy-am335x-control.c         |  2 +-
 drivers/usb/musb/phy-am335x.c                 |  2 +-
 drivers/video/atmel_lcdfb_core.c              |  4 ++--
 drivers/video/backlight-pwm.c                 |  6 ++---
 drivers/video/imx-ipu-v3/imx-hdmi.c           |  2 +-
 drivers/video/imx-ipu-v3/imx-ldb.c            |  2 +-
 drivers/video/imx-ipu-v3/imx-pd.c             |  2 +-
 drivers/video/imx-ipu-v3/ipu-common.c         |  2 +-
 drivers/video/imx-ipu-v3/ipufb.c              |  9 +++----
 drivers/video/mtl017.c                        | 11 +++++----
 drivers/video/panel-ilitek-ili9341.c          |  2 +-
 drivers/video/simple-panel.c                  |  4 ++--
 drivers/video/simplefb-client.c               |  4 ++--
 drivers/video/ssd1307fb.c                     |  4 ++--
 drivers/video/stm.c                           |  4 ++--
 drivers/video/stm32_ltdc.c                    |  4 ++--
 drivers/video/tc358767.c                      | 12 +++++-----
 drivers/w1/masters/w1-gpio.c                  |  2 +-
 drivers/watchdog/gpio_wdt.c                   |  2 +-
 drivers/watchdog/imxwd.c                      |  4 ++--
 drivers/watchdog/rave-sp-wdt.c                |  2 +-
 drivers/watchdog/wd_core.c                    |  8 +++----
 fs/devfs-core.c                               |  2 +-
 fs/pstore/ram.c                               |  4 ++--
 include/console.h                             |  6 ++---
 include/driver.h                              |  4 ++--
 include/linux/mtd/mtd.h                       |  8 +++----
 net/eth.c                                     | 20 +++++++++-------
 314 files changed, 712 insertions(+), 691 deletions(-)

diff --git a/Documentation/devel/porting.rst b/Documentation/devel/porting.rst
index f95e8cbba3..7702fee7bb 100644
--- a/Documentation/devel/porting.rst
+++ b/Documentation/devel/porting.rst
@@ -388,7 +388,6 @@ Miscellaneous Linux porting advice:
 
   * Branches dependent on ``system_state``: Take the ``SYSTEM_BOOTING`` branch
   * ``usleep`` and co.: use ``[mud]elay``
-  * ``.of_node``: use ``.device_node`` or ``dev_of_node``
   * ``jiffies``: use ``get_time_ns()``
   * ``time_before``: use ``!is_timeout()``
   * ``clk_hw_register_fixed_rate_with_accuracy``: use ``clk_hw_register_fixed_rate`` without accuracy
diff --git a/arch/arm/cpu/psci-client.c b/arch/arm/cpu/psci-client.c
index f9b1c684bf..917e06d560 100644
--- a/arch/arm/cpu/psci-client.c
+++ b/arch/arm/cpu/psci-client.c
@@ -123,7 +123,7 @@ static int __init psci_probe(struct device_d *dev)
 	if (ret)
 		return -ENODEV;
 
-	ret = of_property_read_string(dev->device_node, "method", &method);
+	ret = of_property_read_string(dev->of_node, "method", &method);
 	if (ret) {
 		dev_warn(dev, "missing \"method\" property\n");
 		return -ENXIO;
diff --git a/arch/arm/mach-clps711x/clock.c b/arch/arm/mach-clps711x/clock.c
index 8674b8c801..573867e415 100644
--- a/arch/arm/mach-clps711x/clock.c
+++ b/arch/arm/mach-clps711x/clock.c
@@ -74,7 +74,7 @@ static int clps711x_clk_probe(struct device_d *dev)
 
 	clk_data.clks = clks;
 	clk_data.clk_num = CLPS711X_CLK_MAX;
-	of_clk_add_provider(dev->device_node, of_clk_src_onecell_get, &clk_data);
+	of_clk_add_provider(dev->of_node, of_clk_src_onecell_get, &clk_data);
 
 	return 0;
 }
diff --git a/arch/arm/mach-clps711x/common.c b/arch/arm/mach-clps711x/common.c
index c0b817872d..dcb97ad236 100644
--- a/arch/arm/mach-clps711x/common.c
+++ b/arch/arm/mach-clps711x/common.c
@@ -115,18 +115,18 @@ static int clps711x_bus_probe(struct device_d *dev)
 	u32 mcfg;
 
 	/* Setup bus timings */
-	if (!of_property_read_u32(dev->device_node,
+	if (!of_property_read_u32(dev->of_node,
 				  "barebox,ep7209-memcfg1", &mcfg))
 		writel(mcfg, MEMCFG1);
-	if (!of_property_read_u32(dev->device_node,
+	if (!of_property_read_u32(dev->of_node,
 				  "barebox,ep7209-memcfg2", &mcfg))
 		writel(mcfg, MEMCFG2);
 
-	clps711x_bus_patch(dev->device_node, 0, CLPS711X_MAP_ADDR);
+	clps711x_bus_patch(dev->of_node, 0, CLPS711X_MAP_ADDR);
 
-	of_platform_populate(dev->device_node, NULL, dev);
+	of_platform_populate(dev->of_node, NULL, dev);
 
-	of_register_fixup(clps711x_bus_fixup, dev->device_node);
+	of_register_fixup(clps711x_bus_fixup, dev->of_node);
 
 	return 0;
 }
diff --git a/arch/arm/mach-imx/iim.c b/arch/arm/mach-imx/iim.c
index 40b9b00cec..638f329c37 100644
--- a/arch/arm/mach-imx/iim.c
+++ b/arch/arm/mach-imx/iim.c
@@ -408,7 +408,7 @@ static void imx_iim_init_dt(struct device_d *dev, struct iim_priv *iim)
 {
 	char mac[6];
 	const __be32 *prop;
-	struct device_node *node = dev->device_node;
+	struct device_node *node = dev->of_node;
 	int len, ret, macnum = 0;
 
 	if (!node)
diff --git a/arch/arm/mach-zynqmp/firmware-zynqmp.c b/arch/arm/mach-zynqmp/firmware-zynqmp.c
index c23b434031..0d1eb5b137 100644
--- a/arch/arm/mach-zynqmp/firmware-zynqmp.c
+++ b/arch/arm/mach-zynqmp/firmware-zynqmp.c
@@ -581,7 +581,7 @@ static int zynqmp_firmware_probe(struct device_d *dev)
 {
 	int ret;
 
-	ret = get_set_conduit_method(dev->device_node);
+	ret = get_set_conduit_method(dev->of_node);
 	if (ret)
 		goto out;
 
@@ -619,7 +619,7 @@ static int zynqmp_firmware_probe(struct device_d *dev)
 	dev_dbg(dev, "Trustzone version v%d.%d\n",
 			pm_tz_version >> 16, pm_tz_version & 0xFFFF);
 
-	of_platform_populate(dev->device_node, NULL, dev);
+	of_platform_populate(dev->of_node, NULL, dev);
 out:
 	if (ret)
 		do_fw_call = do_fw_call_fail;
diff --git a/arch/mips/mach-ath79/art.c b/arch/mips/mach-ath79/art.c
index d119ca6d1a..de9f638e1c 100644
--- a/arch/mips/mach-ath79/art.c
+++ b/arch/mips/mach-ath79/art.c
@@ -20,7 +20,7 @@ struct ar9300_eeprom {
 
 static int art_set_mac(struct device_d *dev, struct ar9300_eeprom *eeprom)
 {
-	struct device_node *node = dev->device_node;
+	struct device_node *node = dev->of_node;
 	struct device_node *rnode;
 
 	if (!node)
@@ -80,7 +80,7 @@ static int art_probe(struct device_d *dev)
 
 	dev_dbg(dev, "found ART partition\n");
 
-	ret = of_find_path(dev->device_node, "device-path", &path, 0);
+	ret = of_find_path(dev->of_node, "device-path", &path, 0);
 	if (ret) {
 		dev_err(dev, "can't find path\n");
 		return ret;
diff --git a/arch/riscv/boards/riscvemu/board.c b/arch/riscv/boards/riscvemu/board.c
index d9c7bd77b8..e735d7e05e 100644
--- a/arch/riscv/boards/riscvemu/board.c
+++ b/arch/riscv/boards/riscvemu/board.c
@@ -43,7 +43,7 @@ static int riscvemu_probe(struct device_d *dev)
 	u64 start;
 
 	overlay = of_unflatten_dtb(__dtb_overlay_of_sram_start, INT_MAX);
-	of_overlay_apply_tree(dev->device_node, overlay);
+	of_overlay_apply_tree(dev->of_node, overlay);
 	/* of_probe() will happen later at of_populate_initcall */
 
 	if (IS_ENABLED(CONFIG_CMD_TUTORIAL))
diff --git a/arch/riscv/cpu/core.c b/arch/riscv/cpu/core.c
index c075301b1b..02b13ada4b 100644
--- a/arch/riscv/cpu/core.c
+++ b/arch/riscv/cpu/core.c
@@ -67,7 +67,7 @@ static int riscv_probe(struct device_d *parent)
 	/* Each hart has a timer, but we only need one */
 	if (IS_ENABLED(CONFIG_RISCV_TIMER) && !timer_dev.parent) {
 		timer_dev.id = DEVICE_ID_SINGLE;
-		timer_dev.device_node = parent->device_node;
+		timer_dev.of_node = parent->of_node;
 		timer_dev.parent = parent;
 		dev_set_name(&timer_dev, "riscv-timer");
 
@@ -78,7 +78,7 @@ static int riscv_probe(struct device_d *parent)
 
 	if (IS_ENABLED(CONFIG_SERIAL_SBI) && !serial_sbi_dev.parent) {
 		serial_sbi_dev.id = DEVICE_ID_SINGLE;
-		serial_sbi_dev.device_node = 0;
+		serial_sbi_dev.of_node = 0;
 		serial_sbi_dev.parent = parent;
 		dev_set_name(&serial_sbi_dev, "riscv-serial-sbi");
 
diff --git a/arch/sandbox/board/hostfile.c b/arch/sandbox/board/hostfile.c
index 52165adec8..d04925d6d4 100644
--- a/arch/sandbox/board/hostfile.c
+++ b/arch/sandbox/board/hostfile.c
@@ -98,7 +98,7 @@ static void hf_info(struct device_d *dev)
 
 static int hf_probe(struct device_d *dev)
 {
-	struct device_node *np = dev->device_node;
+	struct device_node *np = dev->of_node;
 	struct hf_priv *priv = xzalloc(sizeof(*priv));
 	struct cdev *cdev;
 	bool is_blockdev;
diff --git a/arch/sandbox/board/led.c b/arch/sandbox/board/led.c
index b7ab81112b..a4d5b3e89a 100644
--- a/arch/sandbox/board/led.c
+++ b/arch/sandbox/board/led.c
@@ -28,7 +28,7 @@ static void sandbox_led_set(struct led *led, unsigned int brightness)
 
 static int sandbox_led_of_probe(struct device_d *dev)
 {
-	struct device_node *np = dev->device_node;
+	struct device_node *np = dev->of_node;
 	int ret;
 
 	if (sandbox_led.led.set)
diff --git a/arch/sandbox/board/power.c b/arch/sandbox/board/power.c
index 009b410eaa..071a7fd907 100644
--- a/arch/sandbox/board/power.c
+++ b/arch/sandbox/board/power.c
@@ -66,7 +66,8 @@ static int sandbox_power_probe(struct device_d *dev)
 	if (IS_ENABLED(CONFIG_SANDBOX_REEXEC))
 		restart_handler_register(&power->rst_reexec);
 
-	power->reset_source_cell = of_nvmem_cell_get(dev->device_node, "reset-source");
+	power->reset_source_cell = of_nvmem_cell_get(dev->of_node,
+						     "reset-source");
 	if (IS_ERR(power->reset_source_cell)) {
 		dev_warn(dev, "No reset source info available: %pe\n", power->reset_source_cell);
 		return 0;
diff --git a/arch/sandbox/board/watchdog.c b/arch/sandbox/board/watchdog.c
index daaf549642..24e556a918 100644
--- a/arch/sandbox/board/watchdog.c
+++ b/arch/sandbox/board/watchdog.c
@@ -38,7 +38,7 @@ static int sandbox_watchdog_set_timeout(struct watchdog *wdd, unsigned int timeo
 
 static int sandbox_watchdog_probe(struct device_d *dev)
 {
-	struct device_node *np = dev->device_node;
+	struct device_node *np = dev->of_node;
 	struct sandbox_watchdog *wd;
 	struct watchdog *wdd;
 	int ret;
@@ -58,7 +58,8 @@ static int sandbox_watchdog_probe(struct device_d *dev)
 		return ret;
 	}
 
-	wd->reset_source_cell = of_nvmem_cell_get(dev->device_node, "reset-source");
+	wd->reset_source_cell = of_nvmem_cell_get(dev->of_node,
+						  "reset-source");
 	if (IS_ERR(wd->reset_source_cell)) {
 		dev_warn(dev, "No reset source info available: %pe\n", wd->reset_source_cell);
 		goto out;
diff --git a/commands/devinfo.c b/commands/devinfo.c
index e171ecc62c..a0addfbcf1 100644
--- a/commands/devinfo.c
+++ b/commands/devinfo.c
@@ -102,9 +102,9 @@ static int do_devinfo(int argc, char *argv[])
 			printf("\n");
 		}
 #ifdef CONFIG_OFDEVICE
-		if (dev->device_node) {
-			printf("Device node: %s\n", dev->device_node->full_name);
-			of_print_nodes(dev->device_node, 0, ~0);
+		if (dev->of_node) {
+			printf("Device node: %s\n", dev->of_node->full_name);
+			of_print_nodes(dev->of_node, 0, ~0);
 		}
 #endif
 	}
diff --git a/common/boards/qemu-virt/board.c b/common/boards/qemu-virt/board.c
index 4064409c80..bfda86569b 100644
--- a/common/boards/qemu-virt/board.c
+++ b/common/boards/qemu-virt/board.c
@@ -46,7 +46,7 @@ static int virt_probe(struct device_d *dev)
 		init();
 
 	overlay = of_unflatten_dtb(__dtb_overlay_of_flash_start, INT_MAX);
-	of_overlay_apply_tree(dev->device_node, overlay);
+	of_overlay_apply_tree(dev->of_node, overlay);
 	/* of_probe() will happen later at of_populate_initcall */
 
 	return 0;
diff --git a/common/console.c b/common/console.c
index c442c2dde1..56caa12b45 100644
--- a/common/console.c
+++ b/common/console.c
@@ -243,7 +243,7 @@ static void console_set_stdoutpath(struct console_device *cdev, unsigned baudrat
 	if (!cdev->linux_console_name)
 		return;
 
-	id = of_alias_get_id(cdev->dev->device_node, "serial");
+	id = of_alias_get_id(cdev->dev->of_node, "serial");
 	if (id < 0)
 		return;
 
diff --git a/common/oftree.c b/common/oftree.c
index 38752e2c19..4cb74067de 100644
--- a/common/oftree.c
+++ b/common/oftree.c
@@ -233,10 +233,10 @@ static int of_fixup_bootargs(struct device_node *root, void *unused)
 
 
 	dev = reset_source_get_device();
-	if (dev && dev->device_node) {
+	if (dev && dev->of_node) {
 		phandle phandle;
 
-		phandle = of_node_create_phandle(dev->device_node);
+		phandle = of_node_create_phandle(dev->of_node);
 
 		err = of_property_write_u32(node,
 					    "reset-source-device", phandle);
diff --git a/common/reset_source.c b/common/reset_source.c
index 774ea5fc8c..90a34f5f50 100644
--- a/common/reset_source.c
+++ b/common/reset_source.c
@@ -78,7 +78,7 @@ void reset_source_set_device(struct device_d *dev, enum reset_src_type st)
 {
 	unsigned int priority = RESET_SOURCE_DEFAULT_PRIORITY;
 
-	of_property_read_u32(dev->device_node, "reset-source-priority", &priority);
+	of_property_read_u32(dev->of_node, "reset-source-priority", &priority);
 
 	__reset_source_set(dev, st, priority, -1);
 }
diff --git a/drivers/aiodev/am335x_adc.c b/drivers/aiodev/am335x_adc.c
index 0d6cc426eb..2ac1b7ab94 100644
--- a/drivers/aiodev/am335x_adc.c
+++ b/drivers/aiodev/am335x_adc.c
@@ -87,7 +87,7 @@ static int am335x_adc_probe(struct device_d *dev)
 		goto fail_data;
 	}
 
-	node = of_find_compatible_node(dev->device_node, NULL, "ti,am3359-adc");
+	node = of_find_compatible_node(dev->of_node, NULL, "ti,am3359-adc");
 	if (!node) {
 		ret = -EINVAL;
 		goto fail_data;
diff --git a/drivers/aiodev/core.c b/drivers/aiodev/core.c
index 9f5c422500..c66eb449fc 100644
--- a/drivers/aiodev/core.c
+++ b/drivers/aiodev/core.c
@@ -37,10 +37,10 @@ struct aiochannel *aiochannel_get(struct device_d *dev, int index)
 	struct aiodevice *aiodev;
 	int ret, chnum = 0;
 
-	if (!dev->device_node)
+	if (!dev->of_node)
 		return ERR_PTR(-EINVAL);
 
-	ret = of_parse_phandle_with_args(dev->device_node,
+	ret = of_parse_phandle_with_args(dev->of_node,
 					 "io-channels",
 					 "#io-channel-cells",
 					 index, &spec);
@@ -48,7 +48,7 @@ struct aiochannel *aiochannel_get(struct device_d *dev, int index)
                 return ERR_PTR(ret);
 
 	list_for_each_entry(aiodev, &aiodevices, list) {
-		if (aiodev->hwdev->device_node == spec.np)
+		if (aiodev->hwdev->of_node == spec.np)
 			goto found;
 	}
 
@@ -91,10 +91,10 @@ int aiodevice_register(struct aiodevice *aiodev)
 	int i, ret;
 
 	if (!aiodev->name && aiodev->hwdev &&
-	    aiodev->hwdev->device_node) {
+	    aiodev->hwdev->of_node) {
 		aiodev->dev.id = DEVICE_ID_SINGLE;
 
-		aiodev->name = of_alias_get(aiodev->hwdev->device_node);
+		aiodev->name = of_alias_get(aiodev->hwdev->of_node);
 	}
 
 	if (!aiodev->name) {
diff --git a/drivers/aiodev/imx_thermal.c b/drivers/aiodev/imx_thermal.c
index 0bc84ee160..bac51e03d2 100644
--- a/drivers/aiodev/imx_thermal.c
+++ b/drivers/aiodev/imx_thermal.c
@@ -115,7 +115,7 @@ static int imx_thermal_probe(struct device_d *dev)
 	int t1, n1, t2, n2;
 	int ret;
 
-	node = of_parse_phandle(dev->device_node, "fsl,tempmon-data", 0);
+	node = of_parse_phandle(dev->of_node, "fsl,tempmon-data", 0);
 	if (!node) {
 		dev_err(dev, "No calibration data source\n");
 		return -ENODEV;
@@ -135,7 +135,7 @@ static int imx_thermal_probe(struct device_d *dev)
 	}
 
 	imx_thermal = xzalloc(sizeof(*imx_thermal));
-	imx_thermal->base = syscon_base_lookup_by_phandle(dev->device_node,
+	imx_thermal->base = syscon_base_lookup_by_phandle(dev->of_node,
 							  "fsl,tempmon");
 	if (IS_ERR(imx_thermal->base)) {
 		dev_err(dev, "Could not get ANATOP address\n");
diff --git a/drivers/aiodev/qoriq_thermal.c b/drivers/aiodev/qoriq_thermal.c
index 1acb06a9de..ed76945fd1 100644
--- a/drivers/aiodev/qoriq_thermal.c
+++ b/drivers/aiodev/qoriq_thermal.c
@@ -146,7 +146,7 @@ static int qoriq_tmu_calibration(struct qoriq_tmu_data *data)
 	int i, val, len;
 	u32 range[4];
 	const u32 *calibration;
-	struct device_node *np = data->dev->device_node;
+	struct device_node *np = data->dev->of_node;
 
 	if (of_property_read_u32_array(np, "fsl,tmu-range", range, 4)) {
 		dev_err(data->dev, "missing calibration range.\n");
@@ -189,7 +189,7 @@ static void qoriq_tmu_init_device(struct qoriq_tmu_data *data)
 
 static int qoriq_tmu_probe(struct device_d *dev)
 {
-	struct device_node *np = dev->device_node;
+	struct device_node *np = dev->of_node;
 	struct qoriq_tmu_data *data;
 	u32 site;
 	int ret;
diff --git a/drivers/aiodev/stm32-adc-core.c b/drivers/aiodev/stm32-adc-core.c
index 43abed8386..b83cabb973 100644
--- a/drivers/aiodev/stm32-adc-core.c
+++ b/drivers/aiodev/stm32-adc-core.c
@@ -186,7 +186,7 @@ static int stm32_adc_core_probe(struct device_d *dev)
 		goto err_bclk_disable;
 
 	dev->priv = common;
-	return of_platform_populate(dev->device_node, NULL, dev);
+	return of_platform_populate(dev->of_node, NULL, dev);
 
 err_bclk_disable:
 	clk_disable(common->bclk);
diff --git a/drivers/aiodev/stm32-adc.c b/drivers/aiodev/stm32-adc.c
index 930708d4df..3969da5975 100644
--- a/drivers/aiodev/stm32-adc.c
+++ b/drivers/aiodev/stm32-adc.c
@@ -219,7 +219,7 @@ static int stm32_adc_chan_of_init(struct device_d *dev, struct stm32_adc *adc)
 	int ret;
 
 	/* Retrieve single ended channels listed in device tree */
-	of_get_property(dev->device_node, "st,adc-channels", &num_channels);
+	of_get_property(dev->of_node, "st,adc-channels", &num_channels);
 	num_channels /= sizeof(__be32);
 
 	if (num_channels > adc->cfg->max_channels) {
@@ -228,7 +228,7 @@ static int stm32_adc_chan_of_init(struct device_d *dev, struct stm32_adc *adc)
 	}
 
 	/* Optional sample time is provided either for each, or all channels */
-	of_get_property(dev->device_node, "st,min-sample-time-nsecs", &num_times);
+	of_get_property(dev->of_node, "st,min-sample-time-nsecs", &num_times);
 	num_times /= sizeof(__be32);
 	if (num_times > 1 && num_times != num_channels) {
 		dev_err(dev, "Invalid st,min-sample-time-nsecs\n");
@@ -252,7 +252,8 @@ static int stm32_adc_chan_of_init(struct device_d *dev, struct stm32_adc *adc)
 	for (i = 0; i < num_channels; i++) {
 		u32 chan;
 
-		ret = of_property_read_u32_index(dev->device_node, "st,adc-channels", i, &chan);
+		ret = of_property_read_u32_index(dev->of_node,
+						 "st,adc-channels", i, &chan);
 		if (ret)
 			return ret;
 
@@ -273,7 +274,8 @@ static int stm32_adc_chan_of_init(struct device_d *dev, struct stm32_adc *adc)
 		 * get either no value, 1 shared value for all indexes, or one
 		 * value per channel.
 		 */
-		of_property_read_u32_index(dev->device_node, "st,min-sample-time-nsecs",
+		of_property_read_u32_index(dev->of_node,
+					   "st,min-sample-time-nsecs",
 					   i, &smp);
 		/* Prepare sampling time settings */
 		stm32_adc_smpr_init(adc, chan, smp);
@@ -295,7 +297,7 @@ static int stm32_adc_probe(struct device_d *dev)
 	u32 offset;
 	int ret;
 
-	ret = of_property_read_u32(dev->device_node, "reg", &offset);
+	ret = of_property_read_u32(dev->of_node, "reg", &offset);
 	if (ret) {
 		dev_err(dev, "Can't read reg property\n");
 		return ret;
diff --git a/drivers/ata/intf_platform_ide.c b/drivers/ata/intf_platform_ide.c
index 96ea3717b6..b8711d0de3 100644
--- a/drivers/ata/intf_platform_ide.c
+++ b/drivers/ata/intf_platform_ide.c
@@ -74,7 +74,7 @@ static int platform_ide_probe(struct device_d *dev)
 	void *reg_base, *alt_base = NULL;
 	struct resource *reg, *alt;
 	int mmio = 0;
-	struct device_node *dn = dev->device_node;
+	struct device_node *dn = dev->of_node;
 	u32 ioport_shift = 0;
 	int dataif_be = 0;
 	void (*reset)(int) = NULL;
diff --git a/drivers/ata/pata-imx.c b/drivers/ata/pata-imx.c
index 383f5f3bc1..48f7159726 100644
--- a/drivers/ata/pata-imx.c
+++ b/drivers/ata/pata-imx.c
@@ -171,7 +171,7 @@ static int imx_pata_probe(struct device_d *dev)
 
 
 	ide->port.dev = dev;
-	ide->port.devname = xstrdup(of_alias_get(dev->device_node));
+	ide->port.devname = xstrdup(of_alias_get(dev->of_node));
 
 	dev->priv = ide;
 	dev->detect = pata_imx_detect;
diff --git a/drivers/base/bus.c b/drivers/base/bus.c
index 3c2bab937a..09bd621e39 100644
--- a/drivers/base/bus.c
+++ b/drivers/base/bus.c
@@ -49,7 +49,7 @@ int bus_register(struct bus_type *bus)
 
 int device_match(struct device_d *dev, struct driver_d *drv)
 {
-	if (IS_ENABLED(CONFIG_OFDEVICE) && dev->device_node &&
+	if (IS_ENABLED(CONFIG_OFDEVICE) && dev->of_node &&
 	    drv->of_compatible)
 		return of_match(dev, drv);
 
@@ -80,10 +80,10 @@ int device_match_of_modalias(struct device_d *dev, struct driver_d *drv)
 	if (!device_match(dev, drv))
 		return 0;
 
-	if (!id || !IS_ENABLED(CONFIG_OFDEVICE) || !dev->device_node)
+	if (!id || !IS_ENABLED(CONFIG_OFDEVICE) || !dev->of_node)
 		return -1;
 
-	of_property_for_each_string(dev->device_node, "compatible", prop, compat) {
+	of_property_for_each_string(dev->of_node, "compatible", prop, compat) {
 		p = strchr(compat, ',');
 		of_modalias = p ? p + 1 : compat;
 
diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index cbe1c974f4..8057032a81 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -102,7 +102,7 @@ int device_probe(struct device_d *dev)
 	static int depth = 0;
 	int ret;
 
-	ret = of_feature_controller_check(dev->device_node);
+	ret = of_feature_controller_check(dev->of_node);
 	if (ret < 0)
 		return ret;
 	if (ret == FEATCTRL_GATED) {
@@ -115,7 +115,7 @@ int device_probe(struct device_d *dev)
 	pr_report_probe("%*sprobe-> %s\n", depth * 4, "", dev_name(dev));
 
 	pinctrl_select_state_default(dev);
-	of_clk_set_defaults(dev->device_node, false);
+	of_clk_set_defaults(dev->of_node, false);
 
 	list_add(&dev->active, &active_device_list);
 
@@ -291,7 +291,7 @@ int unregister_device(struct device_d *old_dev)
 	if (old_dev->parent)
 		list_del(&old_dev->sibling);
 	if (dev_of_node(old_dev))
-		old_dev->device_node->dev = NULL;
+		old_dev->of_node->dev = NULL;
 
 	return 0;
 }
diff --git a/drivers/base/power.c b/drivers/base/power.c
index 3eabf3c897..d4551879e7 100644
--- a/drivers/base/power.c
+++ b/drivers/base/power.c
@@ -252,18 +252,18 @@ static int __genpd_dev_pm_attach(struct device_d *dev, struct device_node *np,
  */
 int genpd_dev_pm_attach(struct device_d *dev)
 {
-	if (!dev->device_node)
+	if (!dev->of_node)
 		return 0;
 
 	/*
 	 * Devices with multiple PM domains must be attached separately, as we
 	 * can only attach one PM domain per device.
 	 */
-	if (of_count_phandle_with_args(dev->device_node, "power-domains",
+	if (of_count_phandle_with_args(dev->of_node, "power-domains",
 				       "#power-domain-cells") != 1)
 		return 0;
 
-	return __genpd_dev_pm_attach(dev, dev->device_node, 0, true);
+	return __genpd_dev_pm_attach(dev, dev->of_node, 0, true);
 }
 EXPORT_SYMBOL_GPL(genpd_dev_pm_attach);
 
diff --git a/drivers/base/regmap/regmap.c b/drivers/base/regmap/regmap.c
index 35c462f962..a35528227d 100644
--- a/drivers/base/regmap/regmap.c
+++ b/drivers/base/regmap/regmap.c
@@ -35,8 +35,8 @@ enum regmap_endian regmap_get_val_endian(struct device_d *dev,
 		return endian;
 
 	/* If the dev and dev->device_node exist try to get endianness from DT */
-	if (dev && dev->device_node) {
-		np = dev->device_node;
+	if (dev && dev->of_node) {
+		np = dev->of_node;
 
 		/* Parse the device's DT node for an endianness specification */
 		if (of_property_read_bool(np, "big-endian"))
diff --git a/drivers/bus/imx-weim.c b/drivers/bus/imx-weim.c
index 01a35cfc9f..7d8471b7ac 100644
--- a/drivers/bus/imx-weim.c
+++ b/drivers/bus/imx-weim.c
@@ -106,7 +106,7 @@ static int weim_parse_dt(struct imx_weim *weim)
 	struct device_node *child;
 	int ret;
 
-	for_each_child_of_node(weim->dev->device_node, child) {
+	for_each_child_of_node(weim->dev->of_node, child) {
 		if (!child->name)
 			continue;
 
@@ -118,10 +118,10 @@ static int weim_parse_dt(struct imx_weim *weim)
 		}
 	}
 
-	ret = of_platform_populate(weim->dev->device_node, NULL, weim->dev);
+	ret = of_platform_populate(weim->dev->of_node, NULL, weim->dev);
 	if (ret)
 		dev_err(weim->dev, "%s fail to create devices.\n",
-			weim->dev->device_node->full_name);
+			weim->dev->of_node->full_name);
 	return ret;
 }
 
diff --git a/drivers/bus/omap-gpmc.c b/drivers/bus/omap-gpmc.c
index 5f65d59911..2d3a637820 100644
--- a/drivers/bus/omap-gpmc.c
+++ b/drivers/bus/omap-gpmc.c
@@ -523,7 +523,7 @@ static int gpmc_probe_nand_child(struct device_d *dev,
 	dev = device_alloc("gpmc_nand", DEVICE_ID_DYNAMIC);
 	device_add_resource(dev, NULL, (resource_size_t)gpmc_base, SZ_4K, IORESOURCE_MEM);
 	device_add_data(dev, &gpmc_nand_data, sizeof(gpmc_nand_data));
-	dev->device_node = child;
+	dev->of_node = child;
 	platform_device_register(dev);
 
 	return 0;
@@ -602,7 +602,7 @@ err:
 
 static int gpmc_probe(struct device_d *dev)
 {
-	struct device_node *child, *node = dev->device_node;
+	struct device_node *child, *node = dev->of_node;
 	int ret;
 
 	gpmc_generic_init(0x12);
diff --git a/drivers/bus/ti-sysc.c b/drivers/bus/ti-sysc.c
index ff9d2f81cd..e863e01f3b 100644
--- a/drivers/bus/ti-sysc.c
+++ b/drivers/bus/ti-sysc.c
@@ -12,11 +12,11 @@ static int ti_sysc_probe(struct device_d *dev)
 {
 	int ret;
 
-	ret = of_platform_populate(dev->device_node,
+	ret = of_platform_populate(dev->of_node,
 					of_default_bus_match_table, dev);
 	if (ret)
 		dev_err(dev, "%s fail to create devices.\n",
-					dev->device_node->full_name);
+					dev->of_node->full_name);
 	return ret;
 };
 
diff --git a/drivers/clk/bcm/clk-bcm2835-aux.c b/drivers/clk/bcm/clk-bcm2835-aux.c
index 385cfd5d3f..b4636b850e 100644
--- a/drivers/clk/bcm/clk-bcm2835-aux.c
+++ b/drivers/clk/bcm/clk-bcm2835-aux.c
@@ -25,7 +25,7 @@ static int bcm2835_aux_clk_probe(struct device_d *dev)
 		return PTR_ERR(parent_clk);
 	parent = __clk_get_name(parent_clk);
 
-	reg = of_iomap(dev->device_node, 0);
+	reg = of_iomap(dev->of_node, 0);
 	if (!reg)
 		return -ENOMEM;
 
@@ -45,7 +45,7 @@ static int bcm2835_aux_clk_probe(struct device_d *dev)
 	onecell->hws[BCM2835_AUX_CLOCK_SPI2] =
 		clk_hw_register_gate(dev, "aux_spi2", parent, 0, gate, 2, 0, NULL);
 
-	return of_clk_add_hw_provider(dev->device_node, of_clk_hw_onecell_get,
+	return of_clk_add_hw_provider(dev->of_node, of_clk_hw_onecell_get,
 				      onecell);
 }
 
diff --git a/drivers/clk/clk-ar933x.c b/drivers/clk/clk-ar933x.c
index c5e57f41ec..372a9e7457 100644
--- a/drivers/clk/clk-ar933x.c
+++ b/drivers/clk/clk-ar933x.c
@@ -118,7 +118,7 @@ static int ar933x_clk_probe(struct device_d *dev)
 
 	clk_data.clks = clks;
 	clk_data.clk_num = ARRAY_SIZE(clks);
-	of_clk_add_provider(dev->device_node, of_clk_src_onecell_get,
+	of_clk_add_provider(dev->of_node, of_clk_src_onecell_get,
 			    &clk_data);
 
 	return 0;
diff --git a/drivers/clk/clk-ar9344.c b/drivers/clk/clk-ar9344.c
index d2f63f2608..5bb55d2227 100644
--- a/drivers/clk/clk-ar9344.c
+++ b/drivers/clk/clk-ar9344.c
@@ -113,7 +113,7 @@ static int ar9344_clk_probe(struct device_d *dev)
 
 	clk_data.clks = clks;
 	clk_data.clk_num = ARRAY_SIZE(clks);
-	of_clk_add_provider(dev->device_node, of_clk_src_onecell_get,
+	of_clk_add_provider(dev->of_node, of_clk_src_onecell_get,
 			    &clk_data);
 
 	return 0;
diff --git a/drivers/clk/clk-bulk.c b/drivers/clk/clk-bulk.c
index 4510283962..f6fe07a0bf 100644
--- a/drivers/clk/clk-bulk.c
+++ b/drivers/clk/clk-bulk.c
@@ -143,7 +143,7 @@ EXPORT_SYMBOL(clk_bulk_put_all);
 int __must_check clk_bulk_get_all(struct device_d *dev,
 				  struct clk_bulk_data **clks)
 {
-	struct device_node *np = dev->device_node;
+	struct device_node *np = dev->of_node;
 
 	if (!np)
 		return 0;
diff --git a/drivers/clk/clk-rpi.c b/drivers/clk/clk-rpi.c
index 71badc04c0..1eae4540bb 100644
--- a/drivers/clk/clk-rpi.c
+++ b/drivers/clk/clk-rpi.c
@@ -86,7 +86,7 @@ static int rpi_cprman_probe(struct device_d *dev)
 
 	clk_data.clks = clks;
 	clk_data.clk_num = BCM2711_CLOCK_END;
-	of_clk_add_provider(dev->device_node, of_clk_src_onecell_get, &clk_data);
+	of_clk_add_provider(dev->of_node, of_clk_src_onecell_get, &clk_data);
 
 	return 0;
 }
diff --git a/drivers/clk/clk-scmi.c b/drivers/clk/clk-scmi.c
index 9170dba393..fcffe6a438 100644
--- a/drivers/clk/clk-scmi.c
+++ b/drivers/clk/clk-scmi.c
@@ -120,7 +120,7 @@ static int scmi_clocks_probe(struct scmi_device *sdev)
 	struct clk **clks;
 	struct clk_onecell_data *clk_data;
 	struct device_d *dev = &sdev->dev;
-	struct device_node *np = dev->device_node;
+	struct device_node *np = dev->of_node;
 	const struct scmi_handle *handle = sdev->handle;
 	struct scmi_protocol_handle *ph;
 
@@ -172,7 +172,8 @@ static int scmi_clocks_probe(struct scmi_device *sdev)
 		}
 	}
 
-	return of_clk_add_provider(dev->device_node, of_clk_src_onecell_get, clk_data);
+	return of_clk_add_provider(dev->of_node, of_clk_src_onecell_get,
+				   clk_data);
 }
 
 static const struct scmi_device_id scmi_id_table[] = {
diff --git a/drivers/clk/clkdev.c b/drivers/clk/clkdev.c
index 462a7e16ef..d7d0103bdc 100644
--- a/drivers/clk/clkdev.c
+++ b/drivers/clk/clkdev.c
@@ -177,7 +177,7 @@ struct clk *clk_get(struct device_d *dev, const char *con_id)
 		return clk;
 
 	if (dev) {
-		clk = of_clk_get_by_name(dev->device_node, con_id);
+		clk = of_clk_get_by_name(dev->of_node, con_id);
 		if (!IS_ERR(clk) || PTR_ERR(clk) != -ENOENT)
 			return clk;
 	}
diff --git a/drivers/clk/imx/clk-imx5.c b/drivers/clk/imx/clk-imx5.c
index 81af9a9c88..d96aa81358 100644
--- a/drivers/clk/imx/clk-imx5.c
+++ b/drivers/clk/imx/clk-imx5.c
@@ -207,7 +207,7 @@ static void __init mx5_clocks_common_init(struct device_d *dev, void __iomem *ba
 
 	clks[IMX5_CLK_DUMMY] = clk_fixed("dummy", 0);
 
-	if (!IS_ENABLED(CONFIG_COMMON_CLK_OF_PROVIDER) || !dev->device_node) {
+	if (!IS_ENABLED(CONFIG_COMMON_CLK_OF_PROVIDER) || !dev->of_node) {
 		clks[IMX5_CLK_CKIL] = clk_fixed("ckil", 32768);
 		clks[IMX5_CLK_OSC] = clk_fixed("osc", 24000000);
 	}
@@ -418,7 +418,7 @@ static int imx51_ccm_probe(struct device_d *dev)
 
 	clk_data.clks = clks;
 	clk_data.clk_num = IMX5_CLK_END;
-	of_clk_add_provider(dev->device_node, of_clk_src_onecell_get, &clk_data);
+	of_clk_add_provider(dev->of_node, of_clk_src_onecell_get, &clk_data);
 
 	return 0;
 }
@@ -516,7 +516,7 @@ static int imx53_ccm_probe(struct device_d *dev)
 
 	clk_data.clks = clks;
 	clk_data.clk_num = IMX5_CLK_END;
-	of_clk_add_provider(dev->device_node, of_clk_src_onecell_get, &clk_data);
+	of_clk_add_provider(dev->of_node, of_clk_src_onecell_get, &clk_data);
 
 	return 0;
 }
diff --git a/drivers/clk/imx/clk-imx6.c b/drivers/clk/imx/clk-imx6.c
index 06cc992b72..692bbd4e0a 100644
--- a/drivers/clk/imx/clk-imx6.c
+++ b/drivers/clk/imx/clk-imx6.c
@@ -808,7 +808,7 @@ static int imx6_ccm_probe(struct device_d *dev)
 	imx6q_mmdc_ch1_mask_handshake(ccm_base);
 
 	if (IS_ENABLED(CONFIG_DRIVER_VIDEO_IMX_IPUV3))
-		imx6_add_video_clks(anatop_base, ccm_base, dev->device_node);
+		imx6_add_video_clks(anatop_base, ccm_base, dev->of_node);
 
 	writel(0xffffffff, ccm_base + CCGR0);
 	writel(0xf0ffffff, ccm_base + CCGR1); /* gate GPU3D, GPU2D */
@@ -824,7 +824,7 @@ static int imx6_ccm_probe(struct device_d *dev)
 
 	clk_data.clks = clks;
 	clk_data.clk_num = IMX6QDL_CLK_END;
-	of_clk_add_provider(dev->device_node, of_clk_src_onecell_get, &clk_data);
+	of_clk_add_provider(dev->of_node, of_clk_src_onecell_get, &clk_data);
 
 	clk_enable(clks[IMX6QDL_CLK_MMDC_CH0_AXI_PODF]);
 	clk_enable(clks[IMX6QDL_CLK_PLL6_ENET]);
diff --git a/drivers/clk/imx/clk-imx6sl.c b/drivers/clk/imx/clk-imx6sl.c
index 466893f82f..3e6a8c58d0 100644
--- a/drivers/clk/imx/clk-imx6sl.c
+++ b/drivers/clk/imx/clk-imx6sl.c
@@ -85,7 +85,7 @@ static int imx6sl_ccm_probe(struct device_d *dev)
 {
 	struct resource *iores;
 	void __iomem *base, *anatop_base, *ccm_base;
-	struct device_node *ccm_node = dev->device_node;
+	struct device_node *ccm_node = dev->of_node;
 
 	clks[IMX6SL_CLK_DUMMY] = clk_fixed("dummy", 0);
 
diff --git a/drivers/clk/imx/clk-imx6sx.c b/drivers/clk/imx/clk-imx6sx.c
index c11829259e..ae61c138fd 100644
--- a/drivers/clk/imx/clk-imx6sx.c
+++ b/drivers/clk/imx/clk-imx6sx.c
@@ -113,7 +113,7 @@ static int imx6sx_ccm_probe(struct device_d *dev)
 {
 	struct resource *iores;
 	void __iomem *base, *anatop_base, *ccm_base;
-	struct device_node *ccm_node = dev->device_node;
+	struct device_node *ccm_node = dev->of_node;
 
 	clks[IMX6SX_CLK_DUMMY] = clk_fixed("dummy", 0);
 
diff --git a/drivers/clk/imx/clk-imx6ul.c b/drivers/clk/imx/clk-imx6ul.c
index af5d582ffc..24350d63fa 100644
--- a/drivers/clk/imx/clk-imx6ul.c
+++ b/drivers/clk/imx/clk-imx6ul.c
@@ -97,7 +97,7 @@ static int imx6_ccm_probe(struct device_d *dev)
 	struct resource *iores;
 	void __iomem *base, *anatop_base, *ccm_base;
 	int i;
-	struct device_node *ccm_node = dev->device_node;
+	struct device_node *ccm_node = dev->of_node;
 	struct clk_hw *hw;
 
 	anatop_base = IOMEM(MX6_ANATOP_BASE_ADDR);
diff --git a/drivers/clk/imx/clk-imx7.c b/drivers/clk/imx/clk-imx7.c
index 588e9cbe5c..b75928d59e 100644
--- a/drivers/clk/imx/clk-imx7.c
+++ b/drivers/clk/imx/clk-imx7.c
@@ -807,9 +807,9 @@ static int imx7_ccm_probe(struct device_d *dev)
 
 	clk_data.clks = clks;
 	clk_data.clk_num = ARRAY_SIZE(clks);
-	of_clk_add_provider(dev->device_node, of_clk_src_onecell_get, &clk_data);
+	of_clk_add_provider(dev->of_node, of_clk_src_onecell_get, &clk_data);
 
-	ccm_np = dev->device_node;
+	ccm_np = dev->of_node;
 
 	/*
 	 * imx7_clk_setup() requires both the CCM and fixed-clock osc devices
diff --git a/drivers/clk/loongson/clk-ls1b200.c b/drivers/clk/loongson/clk-ls1b200.c
index 6ac545224f..096768c7a1 100644
--- a/drivers/clk/loongson/clk-ls1b200.c
+++ b/drivers/clk/loongson/clk-ls1b200.c
@@ -129,7 +129,7 @@ static int ls1b200_clk_probe(struct device_d *dev)
 
 	clk_data.clks = clks;
 	clk_data.clk_num = ARRAY_SIZE(clks);
-	of_clk_add_provider(dev->device_node, of_clk_src_onecell_get, &clk_data);
+	of_clk_add_provider(dev->of_node, of_clk_src_onecell_get, &clk_data);
 
 	return 0;
 }
diff --git a/drivers/clk/mvebu/common.c b/drivers/clk/mvebu/common.c
index 3d924ccf4d..17cbc77690 100644
--- a/drivers/clk/mvebu/common.c
+++ b/drivers/clk/mvebu/common.c
@@ -42,7 +42,7 @@ static struct of_device_id mvebu_coreclk_ids[] = {
 static int mvebu_coreclk_probe(struct device_d *dev)
 {
 	struct resource *iores;
-	struct device_node *np = dev->device_node;
+	struct device_node *np = dev->of_node;
 	const struct of_device_id *match;
 	const struct coreclk_soc_desc *desc;
 	const char *tclk_name = "tclk";
@@ -151,7 +151,7 @@ static struct of_device_id mvebu_clk_gating_ids[] = {
 static int mvebu_clk_gating_probe(struct device_d *dev)
 {
 	struct resource *iores;
-	struct device_node *np = dev->device_node;
+	struct device_node *np = dev->of_node;
 	const struct of_device_id *match;
 	const struct clk_gating_soc_desc *desc;
 	struct clk_gating_ctrl *ctrl;
diff --git a/drivers/clk/mvebu/corediv.c b/drivers/clk/mvebu/corediv.c
index 1b7fa12701..7b85bd01d3 100644
--- a/drivers/clk/mvebu/corediv.c
+++ b/drivers/clk/mvebu/corediv.c
@@ -197,7 +197,7 @@ static struct of_device_id mvebu_corediv_clk_ids[] = {
 static int mvebu_corediv_clk_probe(struct device_d *dev)
 {
 	struct resource *iores;
-	struct device_node *np = dev->device_node;
+	struct device_node *np = dev->of_node;
 	const struct of_device_id *match;
 	const struct clk_corediv_soc_desc *soc_desc;
 	struct clk_corediv *corediv;
diff --git a/drivers/clk/mxs/clk-imx28.c b/drivers/clk/mxs/clk-imx28.c
index 382021e49c..a10571237f 100644
--- a/drivers/clk/mxs/clk-imx28.c
+++ b/drivers/clk/mxs/clk-imx28.c
@@ -147,10 +147,11 @@ static int __init mx28_clocks_init(struct device_d *dev, void __iomem *regs)
 	clk_set_parent(clks[lcdif_sel], clks[ref_pix]);
 	clk_set_parent(clks[gpmi_sel], clks[ref_gpmi]);
 
-	if (dev->device_node) {
+	if (dev->of_node) {
 		clk_data.clks = clks;
 		clk_data.clk_num = clk_max;
-		of_clk_add_provider(dev->device_node, of_clk_src_onecell_get, &clk_data);
+		of_clk_add_provider(dev->of_node, of_clk_src_onecell_get,
+				    &clk_data);
 	} else {
 		clkdev_add_physbase(clks[ssp0], IMX_SSP0_BASE, NULL);
 		clkdev_add_physbase(clks[ssp1], IMX_SSP1_BASE, NULL);
diff --git a/drivers/clk/rockchip/clk-rk3399.c b/drivers/clk/rockchip/clk-rk3399.c
index 399d6006c6..1f2430e521 100644
--- a/drivers/clk/rockchip/clk-rk3399.c
+++ b/drivers/clk/rockchip/clk-rk3399.c
@@ -1629,7 +1629,7 @@ static const struct of_device_id clk_rk3399_match_table[] = {
 
 static int __init clk_rk3399_probe(struct device_d *dev)
 {
-	struct device_node *np = dev->device_node;
+	struct device_node *np = dev->of_node;
 	const struct of_device_id *match;
 	const struct clk_rk3399_inits *init_data;
 
diff --git a/drivers/clk/rockchip/clk-rk3568.c b/drivers/clk/rockchip/clk-rk3568.c
index 7f9c29316a..3e788f2c5a 100644
--- a/drivers/clk/rockchip/clk-rk3568.c
+++ b/drivers/clk/rockchip/clk-rk3568.c
@@ -1721,7 +1721,7 @@ static const struct of_device_id clk_rk3568_match_table[] = {
 
 static int __init clk_rk3568_probe(struct device_d *dev)
 {
-	struct device_node *np = dev->device_node;
+	struct device_node *np = dev->of_node;
 	const struct clk_rk3568_inits *init_data;
 
 	init_data = of_device_get_match_data(dev);
diff --git a/drivers/clk/sifive/sifive-prci.c b/drivers/clk/sifive/sifive-prci.c
index 2ef10f9693..010ccb92af 100644
--- a/drivers/clk/sifive/sifive-prci.c
+++ b/drivers/clk/sifive/sifive-prci.c
@@ -477,7 +477,7 @@ static int __prci_register_clocks(struct device_d *dev, struct __prci_data *pd,
 	struct __prci_clock *pic;
 	int parent_count, i, r;
 
-	parent_count = of_clk_get_parent_count(dev->device_node);
+	parent_count = of_clk_get_parent_count(dev->of_node);
 	if (parent_count != EXPECTED_CLK_PARENT_COUNT) {
 		dev_err(dev, "expected only two parent clocks, found %d\n",
 			parent_count);
@@ -520,7 +520,7 @@ static int __prci_register_clocks(struct device_d *dev, struct __prci_data *pd,
 
 	pd->hw_clks.clk_num = i;
 
-	r = of_clk_add_provider(dev->device_node, of_clk_src_onecell_get,
+	r = of_clk_add_provider(dev->of_node, of_clk_src_onecell_get,
 				&pd->hw_clks);
 	if (r) {
 		dev_err(dev, "could not add hw_provider: %d\n", r);
diff --git a/drivers/clk/socfpga/clk.c b/drivers/clk/socfpga/clk.c
index 8ee405c6c6..6691403843 100644
--- a/drivers/clk/socfpga/clk.c
+++ b/drivers/clk/socfpga/clk.c
@@ -407,7 +407,7 @@ static int socfpga_ccm_probe(struct device_d *dev)
 
 	clk_mgr_base_addr = regs;
 
-	clknode = of_get_child_by_name(dev->device_node, "clocks");
+	clknode = of_get_child_by_name(dev->of_node, "clocks");
 	if (!clknode)
 		return -EINVAL;
 
diff --git a/drivers/clk/starfive/jh7100-clkgen.c b/drivers/clk/starfive/jh7100-clkgen.c
index 36dc91991e..29095aa991 100644
--- a/drivers/clk/starfive/jh7100-clkgen.c
+++ b/drivers/clk/starfive/jh7100-clkgen.c
@@ -340,11 +340,11 @@ static int starfive_clkgen_clk_probe(struct device_d *dev)
 	if (IS_ERR(iores))
 		return PTR_ERR(iores);
 
-	starfive_clkgen_init(dev->device_node, IOMEM(iores->start));
+	starfive_clkgen_init(dev->of_node, IOMEM(iores->start));
 
 	clk_data.clks = clks;
 	clk_data.clk_num = ARRAY_SIZE(clks);
-	of_clk_add_provider(dev->device_node, of_clk_src_onecell_get,
+	of_clk_add_provider(dev->of_node, of_clk_src_onecell_get,
 			    &clk_data);
 
 	return 0;
diff --git a/drivers/clk/tegra/clk-tegra124.c b/drivers/clk/tegra/clk-tegra124.c
index bdd822e296..c7644361f3 100644
--- a/drivers/clk/tegra/clk-tegra124.c
+++ b/drivers/clk/tegra/clk-tegra124.c
@@ -345,10 +345,10 @@ static int tegra124_car_probe(struct device_d *dev)
 
 	clk_data.clks = clks;
 	clk_data.clk_num = ARRAY_SIZE(clks);
-	of_clk_add_provider(dev->device_node, of_clk_src_onecell_get,
+	of_clk_add_provider(dev->of_node, of_clk_src_onecell_get,
 			    &clk_data);
 
-	tegra_clk_init_rst_controller(car_base, dev->device_node, 6 * 32);
+	tegra_clk_init_rst_controller(car_base, dev->of_node, 6 * 32);
 	tegra_clk_reset_uarts();
 
 	return 0;
diff --git a/drivers/clk/tegra/clk-tegra20.c b/drivers/clk/tegra/clk-tegra20.c
index 6e5fa144e4..04bcec1f25 100644
--- a/drivers/clk/tegra/clk-tegra20.c
+++ b/drivers/clk/tegra/clk-tegra20.c
@@ -348,10 +348,10 @@ static int tegra20_car_probe(struct device_d *dev)
 
 	clk_data.clks = clks;
 	clk_data.clk_num = ARRAY_SIZE(clks);
-	of_clk_add_provider(dev->device_node, of_clk_src_onecell_get,
+	of_clk_add_provider(dev->of_node, of_clk_src_onecell_get,
 			    &clk_data);
 
-	tegra_clk_init_rst_controller(car_base, dev->device_node, 3 * 32);
+	tegra_clk_init_rst_controller(car_base, dev->of_node, 3 * 32);
 	tegra_clk_reset_uarts();
 
 	return 0;
diff --git a/drivers/clk/tegra/clk-tegra30.c b/drivers/clk/tegra/clk-tegra30.c
index 505851f8f5..cbb3b959b4 100644
--- a/drivers/clk/tegra/clk-tegra30.c
+++ b/drivers/clk/tegra/clk-tegra30.c
@@ -376,10 +376,10 @@ static int tegra30_car_probe(struct device_d *dev)
 
 	clk_data.clks = clks;
 	clk_data.clk_num = ARRAY_SIZE(clks);
-	of_clk_add_provider(dev->device_node, of_clk_src_onecell_get,
+	of_clk_add_provider(dev->of_node, of_clk_src_onecell_get,
 			    &clk_data);
 
-	tegra_clk_init_rst_controller(car_base, dev->device_node, 6 * 32);
+	tegra_clk_init_rst_controller(car_base, dev->of_node, 6 * 32);
 	tegra_clk_reset_uarts();
 
 	return 0;
diff --git a/drivers/clk/zynq/clkc.c b/drivers/clk/zynq/clkc.c
index e4ce102d6e..a6916bf448 100644
--- a/drivers/clk/zynq/clkc.c
+++ b/drivers/clk/zynq/clkc.c
@@ -380,7 +380,7 @@ static int zynq_clock_probe(struct device_d *dev)
 	 * in the SCLR region. So we can't directly map the address we get from
 	 * the DT, but need to add the SCLR base offset.
 	 */
-	if (dev->device_node) {
+	if (dev->of_node) {
 		struct resource *parent_res;
 
 		parent_res = dev_get_resource(dev->parent, IORESOURCE_MEM, 0);
@@ -470,7 +470,7 @@ static int zynq_clock_probe(struct device_d *dev)
 
 	clk_data.clks = clks;
 	clk_data.clk_num = ARRAY_SIZE(clks);
-	of_clk_add_provider(dev->device_node, of_clk_src_onecell_get,
+	of_clk_add_provider(dev->of_node, of_clk_src_onecell_get,
 			    &clk_data);
 
 	return 0;
diff --git a/drivers/clk/zynqmp/clkc.c b/drivers/clk/zynqmp/clkc.c
index d7ac0bdb36..a5cb99ba8d 100644
--- a/drivers/clk/zynqmp/clkc.c
+++ b/drivers/clk/zynqmp/clkc.c
@@ -452,7 +452,7 @@ static int zynqmp_register_clocks(struct device_d *dev,
 	unsigned int i;
 	const char *parent_names[MAX_PARENT];
 	char *name;
-	struct device_node *node = dev->device_node;
+	struct device_node *node = dev->of_node;
 	int num_parents;
 
 	for (i = 0; i < num_clocks; i++) {
@@ -558,7 +558,7 @@ static int zynqmp_clock_probe(struct device_d *dev)
 
 	zynqmp_register_clocks(dev, clk_data->clks, num_clocks);
 	clk_data->clk_num = num_clocks;
-	of_clk_add_provider(dev->device_node, of_clk_src_onecell_get, clk_data);
+	of_clk_add_provider(dev->of_node, of_clk_src_onecell_get, clk_data);
 
 	/*
 	 * We can free clock_info now, as is only used to store clock info
diff --git a/drivers/clocksource/armv7m_systick.c b/drivers/clocksource/armv7m_systick.c
index 16d89c23bd..9eb292ee94 100644
--- a/drivers/clocksource/armv7m_systick.c
+++ b/drivers/clocksource/armv7m_systick.c
@@ -47,7 +47,7 @@ static int armv7m_systick_probe(struct device_d *dev)
 	if (!systick_base)
 		return -ENOENT;
 
-	ret = of_property_read_u32(dev->device_node, "clock-frequency", &rate);
+	ret = of_property_read_u32(dev->of_node, "clock-frequency", &rate);
 	if (ret) {
 		clk = clk_get(dev, NULL);
 		if (IS_ERR(clk))
diff --git a/drivers/clocksource/bcm2835.c b/drivers/clocksource/bcm2835.c
index d5d3e3477d..26c1382738 100644
--- a/drivers/clocksource/bcm2835.c
+++ b/drivers/clocksource/bcm2835.c
@@ -41,7 +41,7 @@ static int bcm2835_cs_probe(struct device_d *dev)
 
 	/* try to read rate from DT property first */
 	if (IS_ENABLED(CONFIG_OFTREE))
-		of_property_read_u32(dev->device_node, "clock-frequency",
+		of_property_read_u32(dev->of_node, "clock-frequency",
 				     &rate);
 
 	/* if rate is still empty, try to get rate from clk */
diff --git a/drivers/clocksource/clps711x.c b/drivers/clocksource/clps711x.c
index d6ab695afa..e96924b750 100644
--- a/drivers/clocksource/clps711x.c
+++ b/drivers/clocksource/clps711x.c
@@ -29,7 +29,7 @@ static int clps711x_cs_probe(struct device_d *dev)
 	struct clk *timer_clk;
 	int id;
 
-	id = of_alias_get_id(dev->device_node, "timer");
+	id = of_alias_get_id(dev->of_node, "timer");
 	if (id != 1)
 		return 0;
 
diff --git a/drivers/clocksource/dw_apb_timer.c b/drivers/clocksource/dw_apb_timer.c
index 251089cf7e..d0be26b380 100644
--- a/drivers/clocksource/dw_apb_timer.c
+++ b/drivers/clocksource/dw_apb_timer.c
@@ -99,7 +99,7 @@ static struct clocksource dw_apb_clksrc = {
 
 static int dw_apb_timer_probe(struct device_d *dev)
 {
-	struct device_node *np = dev->device_node;
+	struct device_node *np = dev->of_node;
 	struct resource *iores;
 	struct clk *clk;
 	uint32_t clk_freq;
diff --git a/drivers/clocksource/mvebu.c b/drivers/clocksource/mvebu.c
index d3214955dc..47a4e379c1 100644
--- a/drivers/clocksource/mvebu.c
+++ b/drivers/clocksource/mvebu.c
@@ -58,7 +58,7 @@ static int mvebu_timer_probe(struct device_d *dev)
 
 	val = __raw_readl(timer_base + TIMER_CTRL_OFF);
 	val &= ~(TIMER0_25MHZ | TIMER0_DIV_MASK);
-	if (of_device_is_compatible(dev->device_node,
+	if (of_device_is_compatible(dev->of_node,
 				    "marvell,armada-370-timer")) {
 		clk = clk_get(dev, NULL);
 		div = TIMER_DIVIDER;
diff --git a/drivers/crypto/caam/ctrl.c b/drivers/crypto/caam/ctrl.c
index e271051575..3a86c5f9a3 100644
--- a/drivers/crypto/caam/ctrl.c
+++ b/drivers/crypto/caam/ctrl.c
@@ -366,7 +366,7 @@ static int caam_probe(struct device_d *dev)
 
 	dev->priv = ctrlpriv;
 	ctrlpriv->pdev = dev;
-	nprop = dev->device_node;
+	nprop = dev->of_node;
 
 	ctrlpriv->caam_ipg = clk_get(dev, "ipg");
 	if (IS_ERR(ctrlpriv->caam_ipg)) {
diff --git a/drivers/eeprom/at24.c b/drivers/eeprom/at24.c
index 3103d7722a..88be3098cc 100644
--- a/drivers/eeprom/at24.c
+++ b/drivers/eeprom/at24.c
@@ -390,8 +390,8 @@ static int at24_probe(struct device_d *dev)
 		chip.byte_len = BIT(magic & AT24_BITMASK(AT24_SIZE_BYTELEN));
 		magic >>= AT24_SIZE_BYTELEN;
 		chip.flags = magic & AT24_BITMASK(AT24_SIZE_FLAGS);
-		if (dev->device_node &&
-		    !of_property_read_u32(dev->device_node, "pagesize", &page_size))
+		if (dev->of_node &&
+		    !of_property_read_u32(dev->of_node, "pagesize", &page_size))
 			chip.page_size = page_size;
 		else {
 			/*
@@ -427,7 +427,7 @@ static int at24_probe(struct device_d *dev)
 	at24->chip = chip;
 	at24->num_addresses = num_addresses;
 
-	alias = of_alias_get(dev->device_node);
+	alias = of_alias_get(dev->of_node);
 	if (alias) {
 		devname = xstrdup(alias);
 	} else {
@@ -441,7 +441,7 @@ static int at24_probe(struct device_d *dev)
 
 	writable = !(chip.flags & AT24_FLAG_READONLY);
 
-	if (of_get_property(dev->device_node, "read-only", NULL))
+	if (of_get_property(dev->of_node, "read-only", NULL))
 		writable = 0;
 
 	if (writable) {
@@ -456,10 +456,10 @@ static int at24_probe(struct device_d *dev)
 	}
 
 	at24->wp_gpio = -1;
-	if (dev->device_node) {
+	if (dev->of_node) {
 		enum of_gpio_flags flags;
-		at24->wp_gpio = of_get_named_gpio_flags(dev->device_node,
-				"wp-gpios", 0, &flags);
+		at24->wp_gpio = of_get_named_gpio_flags(dev->of_node,
+							"wp-gpios", 0, &flags);
 		if (gpio_is_valid(at24->wp_gpio)) {
 			at24->wp_active_low = flags & OF_GPIO_ACTIVE_LOW;
 			gpio_request(at24->wp_gpio, "eeprom-wp");
diff --git a/drivers/eeprom/at25.c b/drivers/eeprom/at25.c
index ee4663270b..21dea33fbd 100644
--- a/drivers/eeprom/at25.c
+++ b/drivers/eeprom/at25.c
@@ -301,8 +301,8 @@ static int at25_probe(struct device_d *dev)
 	at25 = xzalloc(sizeof(*at25));
 
 	/* Chip description */
-	if (dev->device_node) {
-		err = at25_np_to_chip(dev, dev->device_node, &at25->chip);
+	if (dev->of_node) {
+		err = at25_np_to_chip(dev, dev->of_node, &at25->chip);
 		if (err)
 			goto fail;
 	} else {
@@ -354,7 +354,7 @@ static int at25_probe(struct device_d *dev)
 		goto fail;
 
 	dev_dbg(dev, "%s probed\n", at25->cdev.name);
-	of_parse_partitions(&at25->cdev, dev->device_node);
+	of_parse_partitions(&at25->cdev, dev->of_node);
 	of_partitions_register_fixup(&at25->cdev);
 
 	return 0;
diff --git a/drivers/firmware/altera_serial.c b/drivers/firmware/altera_serial.c
index dcb49ad4dd..27eb367a68 100644
--- a/drivers/firmware/altera_serial.c
+++ b/drivers/firmware/altera_serial.c
@@ -267,7 +267,7 @@ static int altera_spi_close(struct firmware_handler *fh)
 
 static int altera_spi_of(struct device_d *dev, struct fpga_spi *this)
 {
-	struct device_node *n = dev->device_node;
+	struct device_node *n = dev->of_node;
 	const char *name;
 	int ret;
 
@@ -334,7 +334,7 @@ static int altera_spi_probe(struct device_d *dev)
 	int rc;
 	struct fpga_spi *this;
 	struct firmware_handler *fh;
-	const char *alias = of_alias_get(dev->device_node);
+	const char *alias = of_alias_get(dev->of_node);
 	const char *model = NULL;
 	const struct altera_ps_data *data;
 
@@ -359,11 +359,11 @@ static int altera_spi_probe(struct device_d *dev)
 	fh->open = altera_spi_open;
 	fh->write = altera_spi_write;
 	fh->close = altera_spi_close;
-	of_property_read_string(dev->device_node, "compatible", &model);
+	of_property_read_string(dev->of_node, "compatible", &model);
 	if (model)
 		fh->model = xstrdup(model);
 	fh->dev = dev;
-	fh->device_node = dev->device_node;
+	fh->device_node = dev->of_node;
 
 	this->spi = (struct spi_device *)dev->type_data;
 	this->data = data;
diff --git a/drivers/firmware/arm_scmi/bus.c b/drivers/firmware/arm_scmi/bus.c
index e8297be4d2..1f6338aa2f 100644
--- a/drivers/firmware/arm_scmi/bus.c
+++ b/drivers/firmware/arm_scmi/bus.c
@@ -159,7 +159,7 @@ scmi_device_alloc(struct device_node *np, struct device_d *parent, int protocol,
 	scmi_dev->dev.id = DEVICE_ID_DYNAMIC;
 	scmi_dev->protocol_id = protocol;
 	scmi_dev->dev.parent = parent;
-	scmi_dev->dev.device_node = np;
+	scmi_dev->dev.of_node = np;
 	scmi_dev->dev.bus = &scmi_bus_type;
 	dev_set_name(&scmi_dev->dev, "scmi_dev");
 
diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
index fc02a53a2b..a74746ac30 100644
--- a/drivers/firmware/arm_scmi/driver.c
+++ b/drivers/firmware/arm_scmi/driver.c
@@ -1154,7 +1154,7 @@ static int scmi_probe(struct device_d *dev)
 	struct scmi_handle *handle;
 	const struct scmi_desc *desc;
 	struct scmi_info *info;
-	struct device_node *child, *np = dev->device_node;
+	struct device_node *child, *np = dev->of_node;
 
 	desc = of_device_get_match_data(dev);
 	if (!desc)
diff --git a/drivers/firmware/arm_scmi/smc.c b/drivers/firmware/arm_scmi/smc.c
index 67f19a7b43..fd45d55b2e 100644
--- a/drivers/firmware/arm_scmi/smc.c
+++ b/drivers/firmware/arm_scmi/smc.c
@@ -31,7 +31,7 @@ struct scmi_smc {
 
 static bool smc_chan_available(struct device_d *dev, int idx)
 {
-	return of_parse_phandle(dev->device_node, "shmem", 0) != NULL;
+	return of_parse_phandle(dev->of_node, "shmem", 0) != NULL;
 }
 
 static int smc_chan_setup(struct scmi_chan_info *cinfo, struct device_d *dev,
@@ -52,7 +52,7 @@ static int smc_chan_setup(struct scmi_chan_info *cinfo, struct device_d *dev,
 	if (!scmi_info)
 		return -ENOMEM;
 
-	np = of_parse_phandle(cdev->device_node, "shmem", 0);
+	np = of_parse_phandle(cdev->of_node, "shmem", 0);
 	ret = of_address_to_resource(np, 0, &res);
 	if (ret) {
 		dev_err(cdev, "failed to get SCMI Tx shared memory\n");
@@ -62,7 +62,7 @@ static int smc_chan_setup(struct scmi_chan_info *cinfo, struct device_d *dev,
 	size = resource_size(&res);
 	scmi_info->shmem = IOMEM(res.start);
 
-	ret = of_property_read_u32(dev->device_node, "arm,smc-id", &func_id);
+	ret = of_property_read_u32(dev->of_node, "arm,smc-id", &func_id);
 	if (ret < 0)
 		return ret;
 
diff --git a/drivers/firmware/socfpga.c b/drivers/firmware/socfpga.c
index 98b47f6570..4ab41cbf79 100644
--- a/drivers/firmware/socfpga.c
+++ b/drivers/firmware/socfpga.c
@@ -382,7 +382,7 @@ static int socfpga_fpgamgr_probe(struct device_d *dev)
 	struct resource *iores;
 	struct fpgamgr *mgr;
 	struct firmware_handler *fh;
-	const char *alias = of_alias_get(dev->device_node);
+	const char *alias = of_alias_get(dev->of_node);
 	const char *model = NULL;
 	struct param_d *p;
 	int ret;
@@ -414,7 +414,7 @@ static int socfpga_fpgamgr_probe(struct device_d *dev)
 	fh->open = socfpga_fpgamgr_program_start;
 	fh->write = socfpga_fpgamgr_program_write_buf;
 	fh->close = socfpga_fpgamgr_program_finish;
-	of_property_read_string(dev->device_node, "compatible", &model);
+	of_property_read_string(dev->of_node, "compatible", &model);
 	if (model)
 		fh->model = xstrdup(model);
 	fh->dev = dev;
@@ -435,7 +435,7 @@ static int socfpga_fpgamgr_probe(struct device_d *dev)
 	}
 
 	fh->dev = &mgr->dev;
-	fh->device_node = dev->device_node;
+	fh->device_node = dev->of_node;
 
 	ret = firmwaremgr_register(fh);
 	if (ret != 0) {
diff --git a/drivers/firmware/zynqmp-fpga.c b/drivers/firmware/zynqmp-fpga.c
index 63d7398fd4..0c40522ddf 100644
--- a/drivers/firmware/zynqmp-fpga.c
+++ b/drivers/firmware/zynqmp-fpga.c
@@ -330,7 +330,7 @@ static int zynqmp_fpga_probe(struct device_d *dev)
 {
 	struct fpgamgr *mgr;
 	struct firmware_handler *fh;
-	const char *alias = of_alias_get(dev->device_node);
+	const char *alias = of_alias_get(dev->of_node);
 	const char *model = NULL;
 	struct param_d *p;
 	u32 api_version;
@@ -347,7 +347,7 @@ static int zynqmp_fpga_probe(struct device_d *dev)
 	fh->open = fpgamgr_program_start;
 	fh->write = fpgamgr_program_write_buf;
 	fh->close = fpgamgr_program_finish;
-	of_property_read_string(dev->device_node, "compatible", &model);
+	of_property_read_string(dev->of_node, "compatible", &model);
 	if (model)
 		fh->model = xstrdup(model);
 	fh->dev = dev;
@@ -381,7 +381,7 @@ static int zynqmp_fpga_probe(struct device_d *dev)
 	}
 
 	fh->dev = &mgr->dev;
-	fh->device_node = dev->device_node;
+	fh->device_node = dev->of_node;
 
 	ret = firmwaremgr_register(fh);
 	if (ret != 0) {
diff --git a/drivers/fpga/fpga-bridge.c b/drivers/fpga/fpga-bridge.c
index dd52b4cb20..022498cd32 100644
--- a/drivers/fpga/fpga-bridge.c
+++ b/drivers/fpga/fpga-bridge.c
@@ -201,7 +201,7 @@ int fpga_bridge_register(struct device_d *dev, const char *name,
 	bridge->priv = priv;
 
 	bridge->dev.parent = dev;
-	bridge->dev.device_node = dev->device_node;
+	bridge->dev.of_node = dev->of_node;
 	bridge->dev.id = DEVICE_ID_DYNAMIC;
 
 	bridge->dev.name = xstrdup(name);
@@ -218,7 +218,7 @@ int fpga_bridge_register(struct device_d *dev, const char *name,
 	if (IS_ERR(p))
 		return PTR_ERR(p);
 
-	of_platform_populate(dev->device_node, NULL, dev);
+	of_platform_populate(dev->of_node, NULL, dev);
 
 	dev_info(bridge->dev.parent, "fpga bridge [%s] registered\n",
 		 bridge->dev.name);
diff --git a/drivers/fpga/socfpga-hps2fpga-bridge.c b/drivers/fpga/socfpga-hps2fpga-bridge.c
index b41db4512f..0eaaabf6c6 100644
--- a/drivers/fpga/socfpga-hps2fpga-bridge.c
+++ b/drivers/fpga/socfpga-hps2fpga-bridge.c
@@ -123,7 +123,7 @@ static int alt_fpga_bridge_probe(struct device_d *dev)
 	of_id = of_match_device(altera_fpga_of_match, dev);
 	priv = (struct altera_hps2fpga_data *)of_id->data;
 
-	priv->bridge_reset = of_reset_control_get(dev->device_node, NULL);
+	priv->bridge_reset = of_reset_control_get(dev->of_node, NULL);
 	if (IS_ERR(priv->bridge_reset)) {
 		dev_err(dev, "Could not get %s reset control\n", priv->name);
 		return PTR_ERR(priv->bridge_reset);
@@ -143,7 +143,7 @@ static int alt_fpga_bridge_probe(struct device_d *dev)
 
 	priv->dev = dev;
 
-	if (!of_property_read_u32(dev->device_node, "bridge-enable", &enable)) {
+	if (!of_property_read_u32(dev->of_node, "bridge-enable", &enable)) {
 		if (enable > 1) {
 			dev_warn(dev, "invalid bridge-enable %u > 1\n", enable);
 		} else {
diff --git a/drivers/gpio/gpio-74164.c b/drivers/gpio/gpio-74164.c
index 23dec89ec8..2e8ecf6b53 100644
--- a/drivers/gpio/gpio-74164.c
+++ b/drivers/gpio/gpio-74164.c
@@ -101,9 +101,9 @@ static int gpio_74164_probe(struct device_d *dev)
 	u32 num_regs = 1;
 
 	dev->id = DEVICE_ID_DYNAMIC;
-	if (IS_ENABLED(CONFIG_OFDEVICE) && dev->device_node) {
-		dev->id = of_alias_get_id(dev->device_node, "gpio");
-		of_property_read_u32(dev->device_node, "registers-number",
+	if (IS_ENABLED(CONFIG_OFDEVICE) && dev->of_node) {
+		dev->id = of_alias_get_id(dev->of_node, "gpio");
+		of_property_read_u32(dev->of_node, "registers-number",
 				     &num_regs);
 	}
 
diff --git a/drivers/gpio/gpio-ath79.c b/drivers/gpio/gpio-ath79.c
index 72f76c8a54..08d19c2a7c 100644
--- a/drivers/gpio/gpio-ath79.c
+++ b/drivers/gpio/gpio-ath79.c
@@ -106,7 +106,7 @@ static const struct of_device_id ath79_gpio_of_match[] = {
 static int ath79_gpio_probe(struct device_d *dev)
 {
 	struct resource *iores;
-	struct device_node *np = dev->device_node;
+	struct device_node *np = dev->of_node;
 	int err;
 
 	if (!np) {
diff --git a/drivers/gpio/gpio-clps711x.c b/drivers/gpio/gpio-clps711x.c
index cb4bd4025c..1c5f714aa5 100644
--- a/drivers/gpio/gpio-clps711x.c
+++ b/drivers/gpio/gpio-clps711x.c
@@ -10,7 +10,7 @@
 static int clps711x_gpio_probe(struct device_d *dev)
 {
 	struct resource *iores;
-	int err, id = of_alias_get_id(dev->device_node, "gpio");
+	int err, id = of_alias_get_id(dev->of_node, "gpio");
 	void __iomem *dat, *dir = NULL, *dir_inv = NULL;
 	struct bgpio_chip *bgc;
 
diff --git a/drivers/gpio/gpio-davinci.c b/drivers/gpio/gpio-davinci.c
index b4f2176606..655621b179 100644
--- a/drivers/gpio/gpio-davinci.c
+++ b/drivers/gpio/gpio-davinci.c
@@ -143,7 +143,7 @@ static int davinci_gpio_probe(struct device_d *dev)
 	unsigned ngpio;
 	struct davinci_gpio_controller *chips;
 
-	ret = of_property_read_u32(dev->device_node, "ti,ngpio", &val);
+	ret = of_property_read_u32(dev->of_node, "ti,ngpio", &val);
 	if (ret) {
 		dev_err(dev, "could not read 'ti,ngpio' property\n");
 		return -EINVAL;
diff --git a/drivers/gpio/gpio-dw.c b/drivers/gpio/gpio-dw.c
index 448a04d4ba..0d810310ce 100644
--- a/drivers/gpio/gpio-dw.c
+++ b/drivers/gpio/gpio-dw.c
@@ -138,7 +138,7 @@ static int dw_gpio_add_port(struct device_d *dev, struct device_node *node,
 		return -ENODEV;
 	}
 
-	chip->chip.dev->device_node = node;
+	chip->chip.dev->of_node = node;
 
 	ret = gpiochip_add(&chip->chip);
 	if (ret)
@@ -163,7 +163,7 @@ static int dw_gpio_probe(struct device_d *dev)
 		return PTR_ERR(iores);
 	gpio->regs = IOMEM(iores->start);
 
-	for_each_child_of_node(dev->device_node, node)
+	for_each_child_of_node(dev->of_node, node)
 		dw_gpio_add_port(dev, node, gpio);
 
 	return 0;
diff --git a/drivers/gpio/gpio-generic.c b/drivers/gpio/gpio-generic.c
index 3066b3f7a1..49b5b2bf8d 100644
--- a/drivers/gpio/gpio-generic.c
+++ b/drivers/gpio/gpio-generic.c
@@ -510,10 +510,10 @@ static struct bgpio_pdata *bgpio_parse_dt(struct device_d *dev,
 
 	pdata->base = -1;
 
-	if (of_device_is_big_endian(dev->device_node))
+	if (of_device_is_big_endian(dev->of_node))
 		*flags |= BGPIOF_BIG_ENDIAN_BYTE_ORDER;
 
-	if (of_property_read_bool(dev->device_node, "no-output"))
+	if (of_property_read_bool(dev->of_node, "no-output"))
 		*flags |= BGPIOF_NO_OUTPUT;
 
 	return pdata;
diff --git a/drivers/gpio/gpio-imx.c b/drivers/gpio/gpio-imx.c
index 8ddec1244b..f670d109ac 100644
--- a/drivers/gpio/gpio-imx.c
+++ b/drivers/gpio/gpio-imx.c
@@ -135,7 +135,7 @@ static int imx_gpio_probe(struct device_d *dev)
 	imxgpio->base = IOMEM(iores->start);
 	imxgpio->chip.ops = &imx_gpio_ops;
 	if (dev->id < 0) {
-		imxgpio->chip.base = of_alias_get_id(dev->device_node, "gpio");
+		imxgpio->chip.base = of_alias_get_id(dev->of_node, "gpio");
 		if (imxgpio->chip.base < 0)
 			return imxgpio->chip.base;
 		imxgpio->chip.base *= 32;
diff --git a/drivers/gpio/gpio-latch.c b/drivers/gpio/gpio-latch.c
index 2a89f22401..fbb86a953f 100644
--- a/drivers/gpio/gpio-latch.c
+++ b/drivers/gpio/gpio-latch.c
@@ -98,7 +98,7 @@ static int gpio_latch_probe(struct device_d *dev)
 {
 	struct gpio_latch_priv *priv;
 	int n_latches, i, ret;
-	struct device_node *np = dev->device_node;
+	struct device_node *np = dev->of_node;
 	enum of_gpio_flags flags;
 
 	priv = xzalloc(sizeof(*priv));
diff --git a/drivers/gpio/gpio-libftdi1.c b/drivers/gpio/gpio-libftdi1.c
index d8e1fc8b34..fbbb4d3944 100644
--- a/drivers/gpio/gpio-libftdi1.c
+++ b/drivers/gpio/gpio-libftdi1.c
@@ -74,13 +74,13 @@ static int libftdi1_gpio_probe(struct device_d *dev)
 	uint32_t id_vendor, id_product;
 	const char *i_serial_number = NULL;
 
-	of_property_read_u32(dev->device_node, "usb,id_vendor",
+	of_property_read_u32(dev->of_node, "usb,id_vendor",
 				&id_vendor);
 
-	of_property_read_u32(dev->device_node, "usb,id_product",
+	of_property_read_u32(dev->of_node, "usb,id_product",
 				&id_product);
 
-	of_property_read_string(dev->device_node, "usb,i_serial_number",
+	of_property_read_string(dev->of_node, "usb,i_serial_number",
 				&i_serial_number);
 
 	ftbb = barebox_libftdi1_open(id_vendor, id_product,
diff --git a/drivers/gpio/gpio-mpc8xxx.c b/drivers/gpio/gpio-mpc8xxx.c
index d48a8aa7fb..b41a11aac2 100644
--- a/drivers/gpio/gpio-mpc8xxx.c
+++ b/drivers/gpio/gpio-mpc8xxx.c
@@ -44,8 +44,8 @@ static int mpc8xxx_probe(struct device_d *dev)
 
 	mpc8xxx_gc = xzalloc(sizeof(*mpc8xxx_gc));
 
-	if (dev->device_node) {
-		np = dev->device_node;
+	if (dev->of_node) {
+		np = dev->of_node;
 	} else {
 		dev_err(dev, "no device_node\n");
 		return -ENODEV;
diff --git a/drivers/gpio/gpio-mxs.c b/drivers/gpio/gpio-mxs.c
index dde79f8fe8..1a49a2b3dd 100644
--- a/drivers/gpio/gpio-mxs.c
+++ b/drivers/gpio/gpio-mxs.c
@@ -111,7 +111,7 @@ static int mxs_gpio_probe(struct device_d *dev)
 	mxsgpio = xzalloc(sizeof(*mxsgpio));
 	mxsgpio->chip.ops = &mxs_gpio_ops;
 	if (dev->id < 0) {
-		id = of_alias_get_id(dev->device_node, "gpio");
+		id = of_alias_get_id(dev->of_node, "gpio");
 		if (id < 0)
 			return id;
 		mxsgpio->base = dev_get_mem_region(dev->parent, 0);
diff --git a/drivers/gpio/gpio-omap.c b/drivers/gpio/gpio-omap.c
index a328317ce8..ad23810467 100644
--- a/drivers/gpio/gpio-omap.c
+++ b/drivers/gpio/gpio-omap.c
@@ -134,7 +134,7 @@ static int omap_gpio_probe(struct device_d *dev)
 
 	omapgpio->chip.ops = &omap_gpio_ops;
 	if (dev->id < 0) {
-		omapgpio->chip.base = of_alias_get_id(dev->device_node, "gpio");
+		omapgpio->chip.base = of_alias_get_id(dev->of_node, "gpio");
 		if (omapgpio->chip.base < 0)
 			return omapgpio->chip.base;
 		omapgpio->chip.base *= 32;
diff --git a/drivers/gpio/gpio-orion.c b/drivers/gpio/gpio-orion.c
index afbcb9d321..cd9a4fb638 100644
--- a/drivers/gpio/gpio-orion.c
+++ b/drivers/gpio/gpio-orion.c
@@ -94,13 +94,13 @@ static int orion_gpio_probe(struct device_d *dev)
 	gpio->chip.dev = dev;
 	gpio->chip.ops = &orion_gpio_ops;
 
-	id = of_alias_get_id(dev->device_node, "gpio");
+	id = of_alias_get_id(dev->of_node, "gpio");
 	if (id < 0)
 		return id;
 
 	gpio->chip.base = id * 32;
 	gpio->chip.ngpio = 32;
-	of_property_read_u32(dev->device_node, "ngpios", &gpio->chip.ngpio);
+	of_property_read_u32(dev->of_node, "ngpios", &gpio->chip.ngpio);
 
 	gpiochip_add(&gpio->chip);
 
diff --git a/drivers/gpio/gpio-pcf857x.c b/drivers/gpio/gpio-pcf857x.c
index 612ef3a82e..58a2f7e1ba 100644
--- a/drivers/gpio/gpio-pcf857x.c
+++ b/drivers/gpio/gpio-pcf857x.c
@@ -148,7 +148,7 @@ static struct gpio_ops pcf857x_gpio_ops = {
 static int pcf857x_probe(struct device_d *dev)
 {
 	struct i2c_client		*client = to_i2c_client(dev);
-	struct device_node		*np = dev->device_node;
+	struct device_node		*np = dev->of_node;
 	struct pcf857x			*gpio;
 	unsigned long			driver_data;
 	unsigned int			n_latch = 0;
diff --git a/drivers/gpio/gpio-sifive.c b/drivers/gpio/gpio-sifive.c
index 4d0e12b0a8..70a07ff0f7 100644
--- a/drivers/gpio/gpio-sifive.c
+++ b/drivers/gpio/gpio-sifive.c
@@ -44,7 +44,7 @@ static int sifive_gpio_probe(struct device_d *dev)
 	}
 	base = IOMEM(res->start);
 
-	ngpio = __of_irq_count(dev->device_node);
+	ngpio = __of_irq_count(dev->of_node);
 	if (ngpio > SIFIVE_GPIO_MAX) {
 		dev_err(dev, "Too many GPIO interrupts (max=%d)\n",
 			SIFIVE_GPIO_MAX);
diff --git a/drivers/gpio/gpio-vf610.c b/drivers/gpio/gpio-vf610.c
index f8e31736f8..1438a74785 100644
--- a/drivers/gpio/gpio-vf610.c
+++ b/drivers/gpio/gpio-vf610.c
@@ -97,10 +97,10 @@ static int vf610_gpio_probe(struct device_d *dev)
 
 	port = xzalloc(sizeof(*port));
 
-	gpio_ranges = of_get_property(dev->device_node, "gpio-ranges", &size);
+	gpio_ranges = of_get_property(dev->of_node, "gpio-ranges", &size);
 	if (!gpio_ranges) {
 		dev_err(dev, "Couldn't read 'gpio-ranges' propery of %s\n",
-			dev->device_node->full_name);
+			dev->of_node->full_name);
 		ret = -EINVAL;
 		goto free_port;
 	}
@@ -119,7 +119,7 @@ static int vf610_gpio_probe(struct device_d *dev)
 
 	port->chip.ops  = &vf610_gpio_ops;
 	if (dev->id < 0) {
-		port->chip.base = of_alias_get_id(dev->device_node, "gpio");
+		port->chip.base = of_alias_get_id(dev->of_node, "gpio");
 		if (port->chip.base < 0) {
 			ret = port->chip.base;
 			dev_dbg(dev, "Failed to get GPIO alias\n");
diff --git a/drivers/gpio/gpio-zynq.c b/drivers/gpio/gpio-zynq.c
index bb77857611..c53c3da059 100644
--- a/drivers/gpio/gpio-zynq.c
+++ b/drivers/gpio/gpio-zynq.c
@@ -376,7 +376,7 @@ static int zynqmp_gpio_probe(struct device_d *dev)
 	}
 
 	gpio->base_addr = IOMEM(iores->start);
-	gpio->chip.base = of_alias_get_id(dev->device_node, "gpio");
+	gpio->chip.base = of_alias_get_id(dev->of_node, "gpio");
 	gpio->chip.ops = &zynq_gpio_ops;
 	gpio->chip.ngpio = p_data->ngpio;
 	gpio->chip.dev = dev;
diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index 2503262d65..944cb1cb2a 100644
--- a/drivers/gpio/gpiolib.c
+++ b/drivers/gpio/gpiolib.c
@@ -443,7 +443,7 @@ static int gpiochip_find_base(int ngpio)
 static int of_hog_gpio(struct device_node *np, struct gpio_chip *chip,
 		       unsigned int idx)
 {
-	struct device_node *chip_np = chip->dev->device_node;
+	struct device_node *chip_np = chip->dev->of_node;
 	struct of_phandle_args gpiospec;
 	unsigned long flags = 0;
 	u32 gpio_flags;
@@ -500,15 +500,16 @@ static int of_gpiochip_scan_hogs(struct gpio_chip *chip)
 	struct device_node *np;
 	int ret, i, count;
 
-	if (!IS_ENABLED(CONFIG_OFDEVICE) || !chip->dev->device_node)
+	if (!IS_ENABLED(CONFIG_OFDEVICE) || !chip->dev->of_node)
 		return 0;
 
-	count = of_property_count_strings(chip->dev->device_node, "gpio-line-names");
+	count = of_property_count_strings(chip->dev->of_node,
+					  "gpio-line-names");
 
 	if (count > 0) {
 		const char **arr = xzalloc(count * sizeof(char *));
 
-		of_property_read_string_array(chip->dev->device_node,
+		of_property_read_string_array(chip->dev->of_node,
 					      "gpio-line-names", arr, count);
 
 		for (i = 0; i < chip->ngpio && i < count; i++)
@@ -517,7 +518,7 @@ static int of_gpiochip_scan_hogs(struct gpio_chip *chip)
 		free(arr);
 	}
 
-	for_each_available_child_of_node(chip->dev->device_node, np) {
+	for_each_available_child_of_node(chip->dev->of_node, np) {
 		if (!of_property_read_bool(np, "gpio-hog"))
 			continue;
 
@@ -544,14 +545,14 @@ static const char *gpio_suffixes[] = {
 /* Linux compatibility helper: Get a GPIO descriptor from device tree */
 int gpiod_get(struct device_d *dev, const char *_con_id, enum gpiod_flags flags)
 {
-	struct device_node *np = dev->device_node;
+	struct device_node *np = dev->of_node;
 	enum of_gpio_flags of_flags;
 	const char *label = dev_name(dev);
 	char *buf = NULL, *con_id;
 	int gpio;
 	int ret, i;
 
-	if (!IS_ENABLED(CONFIG_OFDEVICE) || !dev->device_node)
+	if (!IS_ENABLED(CONFIG_OFDEVICE) || !dev->of_node)
 		return -ENODEV;
 
 	for (i = 0; i < ARRAY_SIZE(gpio_suffixes); i++) {
diff --git a/drivers/hw_random/core.c b/drivers/hw_random/core.c
index f68ca070f5..4b6a403337 100644
--- a/drivers/hw_random/core.c
+++ b/drivers/hw_random/core.c
@@ -69,7 +69,7 @@ static int hwrng_register_cdev(struct hwrng *rng)
 	char *devname;
 	int err;
 
-	alias = of_alias_get(dev->device_node);
+	alias = of_alias_get(dev->of_node);
 	if (alias) {
 		devname = xstrdup(alias);
 	} else {
diff --git a/drivers/i2c/busses/i2c-at91.c b/drivers/i2c/busses/i2c-at91.c
index b100dc6c17..49f0338df3 100644
--- a/drivers/i2c/busses/i2c-at91.c
+++ b/drivers/i2c/busses/i2c-at91.c
@@ -546,7 +546,7 @@ static int at91_twi_probe(struct device_d *dev)
 	i2c_at91->adapter.master_xfer = at91_twi_xfer;
 	i2c_at91->adapter.dev.parent = dev;
 	i2c_at91->adapter.nr = dev->id;
-	i2c_at91->adapter.dev.device_node = dev->device_node;
+	i2c_at91->adapter.dev.of_node = dev->of_node;
 
 	rc = i2c_add_numbered_adapter(&i2c_at91->adapter);
 	if (rc) {
diff --git a/drivers/i2c/busses/i2c-bcm283x.c b/drivers/i2c/busses/i2c-bcm283x.c
index d9bbc17b13..63380d632e 100644
--- a/drivers/i2c/busses/i2c-bcm283x.c
+++ b/drivers/i2c/busses/i2c-bcm283x.c
@@ -271,7 +271,7 @@ static int bcm283x_i2c_probe(struct device_d *dev)
 	int ret;
 	struct resource *iores;
 	struct bcm283x_i2c *bcm_i2c;
-	struct device_node *np = dev->device_node;
+	struct device_node *np = dev->of_node;
 
 	bcm_i2c = xzalloc(sizeof(*bcm_i2c));
 
@@ -308,7 +308,7 @@ static int bcm283x_i2c_probe(struct device_d *dev)
 	bcm_i2c->adapter.master_xfer = bcm283x_i2c_xfer;
 	bcm_i2c->adapter.nr = dev->id;
 	bcm_i2c->adapter.dev.parent = dev;
-	bcm_i2c->adapter.dev.device_node = np;
+	bcm_i2c->adapter.dev.of_node = np;
 
 	ret = bcm283x_i2c_init(bcm_i2c);
 	if (ret)
diff --git a/drivers/i2c/busses/i2c-cadence.c b/drivers/i2c/busses/i2c-cadence.c
index 5537efff23..255e085d90 100644
--- a/drivers/i2c/busses/i2c-cadence.c
+++ b/drivers/i2c/busses/i2c-cadence.c
@@ -398,7 +398,7 @@ static int cdns_i2c_xfer(struct i2c_adapter *adapter, struct i2c_msg *msg,
 
 static int cdns_i2c_probe(struct device_d *dev)
 {
-	struct device_node *np = dev->device_node;
+	struct device_node *np = dev->of_node;
 	struct resource *iores;
 	struct cdns_i2c *i2c;
 	u32 bitrate;
@@ -424,7 +424,7 @@ static int cdns_i2c_probe(struct device_d *dev)
 	i2c->adapter.master_xfer = cdns_i2c_xfer;
 	i2c->adapter.nr = dev->id;
 	i2c->adapter.dev.parent = dev;
-	i2c->adapter.dev.device_node = np;
+	i2c->adapter.dev.of_node = np;
 
 	cdns_i2c_reset_hardware(i2c);
 
diff --git a/drivers/i2c/busses/i2c-designware.c b/drivers/i2c/busses/i2c-designware.c
index 93b7af6623..70bb0dc4cc 100644
--- a/drivers/i2c/busses/i2c-designware.c
+++ b/drivers/i2c/busses/i2c-designware.c
@@ -245,7 +245,7 @@ static void i2c_dw_setup_timings(struct dw_i2c_dev *dw)
 		u32 ht;
 		int ret;
 
-		ret = of_property_read_u32(dw->adapter.dev.device_node,
+		ret = of_property_read_u32(dw->adapter.dev.of_node,
 					   "i2c-sda-hold-time-ns", &ht);
 		if (ret) {
 			/* Keep previous hold time setting if no one set it */
@@ -527,7 +527,7 @@ static int i2c_dw_probe(struct device_d *pdev)
 	dw->adapter.master_xfer = i2c_dw_xfer;
 	dw->adapter.nr = pdev->id;
 	dw->adapter.dev.parent = pdev;
-	dw->adapter.dev.device_node = pdev->device_node;
+	dw->adapter.dev.of_node = pdev->of_node;
 
 	iores = dev_request_mem_resource(pdev, 0);
 	if (IS_ERR(iores)) {
diff --git a/drivers/i2c/busses/i2c-gpio.c b/drivers/i2c/busses/i2c-gpio.c
index ad0c4c8f82..abe3b804dd 100644
--- a/drivers/i2c/busses/i2c-gpio.c
+++ b/drivers/i2c/busses/i2c-gpio.c
@@ -140,8 +140,8 @@ static int i2c_gpio_probe(struct device_d *dev)
 	bit_data = &priv->bit_data;
 	pdata = &priv->pdata;
 
-	if (dev->device_node) {
-		ret = of_i2c_gpio_probe(dev->device_node, pdata);
+	if (dev->of_node) {
+		ret = of_i2c_gpio_probe(dev->of_node, pdata);
 		if (ret)
 			return ret;
 	} else {
@@ -193,7 +193,7 @@ static int i2c_gpio_probe(struct device_d *dev)
 
 	adap->algo_data = bit_data;
 	adap->dev.parent = dev;
-	adap->dev.device_node = dev->device_node;
+	adap->dev.of_node = dev->of_node;
 	adap->bus_recovery_info = xzalloc(sizeof(*adap->bus_recovery_info));
 	adap->bus_recovery_info->scl_gpio = pdata->scl_pin;
 	adap->bus_recovery_info->sda_gpio = pdata->sda_pin;
diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
index a2abfa5b43..8145990716 100644
--- a/drivers/i2c/busses/i2c-imx.c
+++ b/drivers/i2c/busses/i2c-imx.c
@@ -527,13 +527,15 @@ static void i2c_fsl_unprepare_recovery(struct i2c_adapter *adapter)
 
 static void i2c_fsl_init_recovery(struct fsl_i2c_struct *i2c_fsl, struct device_d *dev)
 {
-	if (!dev->device_node)
+	if (!dev->of_node)
 		return;
 
-	i2c_fsl->rinfo.sda_gpio = of_get_named_gpio_flags(dev->device_node,
-			"sda-gpios", 0, NULL);
-	i2c_fsl->rinfo.scl_gpio = of_get_named_gpio_flags(dev->device_node,
-			"scl-gpios", 0, NULL);
+	i2c_fsl->rinfo.sda_gpio = of_get_named_gpio_flags(dev->of_node,
+							  "sda-gpios", 0,
+							  NULL);
+	i2c_fsl->rinfo.scl_gpio = of_get_named_gpio_flags(dev->of_node,
+							  "scl-gpios", 0,
+							  NULL);
 
 	if (!gpio_is_valid(i2c_fsl->rinfo.sda_gpio) ||
 	    !gpio_is_valid(i2c_fsl->rinfo.scl_gpio))
@@ -585,7 +587,7 @@ static int __init i2c_fsl_probe(struct device_d *pdev)
 	i2c_fsl->adapter.master_xfer = i2c_fsl_xfer;
 	i2c_fsl->adapter.nr = pdev->id;
 	i2c_fsl->adapter.dev.parent = pdev;
-	i2c_fsl->adapter.dev.device_node = pdev->device_node;
+	i2c_fsl->adapter.dev.of_node = pdev->of_node;
 	iores = dev_request_mem_resource(pdev, 0);
 	if (IS_ERR(iores)) {
 		ret = PTR_ERR(iores);
@@ -599,7 +601,7 @@ static int __init i2c_fsl_probe(struct device_d *pdev)
 
 	/* Set up clock divider */
 	bitrate = 100000;
-	of_property_read_u32(pdev->device_node, "clock-frequency", &bitrate);
+	of_property_read_u32(pdev->of_node, "clock-frequency", &bitrate);
 	if (pdata && pdata->bitrate)
 		bitrate = pdata->bitrate;
 
diff --git a/drivers/i2c/busses/i2c-mv64xxx.c b/drivers/i2c/busses/i2c-mv64xxx.c
index 765fc9926b..20b262e081 100644
--- a/drivers/i2c/busses/i2c-mv64xxx.c
+++ b/drivers/i2c/busses/i2c-mv64xxx.c
@@ -530,7 +530,7 @@ static int
 mv64xxx_of_config(struct mv64xxx_i2c_data *drv_data,
 		  struct device_d *pd)
 {
-	struct device_node *np = pd->device_node;
+	struct device_node *np = pd->of_node;
 	u32 bus_freq, tclk;
 	int rc = 0;
 	u32 prop;
@@ -602,7 +602,7 @@ mv64xxx_i2c_probe(struct device_d *pd)
 	struct mv64xxx_i2c_data		*drv_data;
 	int	rc;
 
-	if (!pd->device_node)
+	if (!pd->of_node)
 		return -ENODEV;
 
 	drv_data = xzalloc(sizeof(*drv_data));
@@ -625,7 +625,7 @@ mv64xxx_i2c_probe(struct device_d *pd)
 	drv_data->adapter.master_xfer = mv64xxx_i2c_xfer;
 	drv_data->adapter.dev.parent = pd;
 	drv_data->adapter.nr = pd->id;
-	drv_data->adapter.dev.device_node = pd->device_node;
+	drv_data->adapter.dev.of_node = pd->of_node;
 
 	mv64xxx_i2c_hw_init(drv_data);
 
diff --git a/drivers/i2c/busses/i2c-omap.c b/drivers/i2c/busses/i2c-omap.c
index 29a618c8b2..74161288ae 100644
--- a/drivers/i2c/busses/i2c-omap.c
+++ b/drivers/i2c/busses/i2c-omap.c
@@ -1091,8 +1091,8 @@ i2c_omap_probe(struct device_d *pdev)
 	if (pdev->platform_data != NULL) {
 		speed = *(u32 *)pdev->platform_data;
 	} else {
-		of_property_read_u32(pdev->device_node, "clock-frequency",
-			&speed);
+		of_property_read_u32(pdev->of_node, "clock-frequency",
+				     &speed);
 		/* convert DT freq value in Hz into kHz for speed */
 		speed /= 1000;
 	}
@@ -1170,7 +1170,7 @@ i2c_omap_probe(struct device_d *pdev)
 	i2c_omap->adapter.master_xfer = omap_i2c_xfer;
 	i2c_omap->adapter.nr = pdev->id;
 	i2c_omap->adapter.dev.parent = pdev;
-	i2c_omap->adapter.dev.device_node = pdev->device_node;
+	i2c_omap->adapter.dev.of_node = pdev->of_node;
 	i2c_omap->adapter.bus_recovery_info = &omap_i2c_bus_recovery_info;
 
 	/* i2c device drivers may be active on return from add_adapter() */
diff --git a/drivers/i2c/busses/i2c-rockchip.c b/drivers/i2c/busses/i2c-rockchip.c
index ca33905335..df71a8a733 100644
--- a/drivers/i2c/busses/i2c-rockchip.c
+++ b/drivers/i2c/busses/i2c-rockchip.c
@@ -410,7 +410,7 @@ static int rockchip_i2c_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs,
 
 static int rk_i2c_probe(struct device_d *dev)
 {
-	struct device_node *np = dev->device_node;
+	struct device_node *np = dev->of_node;
 	struct resource *iores;
 	struct rk_i2c *i2c;
 	unsigned bitrate;
@@ -434,7 +434,7 @@ static int rk_i2c_probe(struct device_d *dev)
 	i2c->adapter.master_xfer = rockchip_i2c_xfer;
 	i2c->adapter.nr = dev->id;
 	i2c->adapter.dev.parent = dev;
-	i2c->adapter.dev.device_node = np;
+	i2c->adapter.dev.of_node = np;
 
 	/* Set up clock divider */
 	bitrate = 100000;
diff --git a/drivers/i2c/busses/i2c-stm32.c b/drivers/i2c/busses/i2c-stm32.c
index d412630365..7825b50d9e 100644
--- a/drivers/i2c/busses/i2c-stm32.c
+++ b/drivers/i2c/busses/i2c-stm32.c
@@ -823,7 +823,7 @@ static int __init stm32_i2c_probe(struct device_d *dev)
 	stm32_i2c->adapter.master_xfer = stm32_i2c_xfer;
 	stm32_i2c->adapter.nr = dev->id;
 	stm32_i2c->adapter.dev.parent = dev;
-	stm32_i2c->adapter.dev.device_node = dev->device_node;
+	stm32_i2c->adapter.dev.of_node = dev->of_node;
 	iores = dev_request_mem_resource(dev, 0);
 	if (IS_ERR(iores))
 		return PTR_ERR(iores);
diff --git a/drivers/i2c/busses/i2c-tegra.c b/drivers/i2c/busses/i2c-tegra.c
index 077b55e175..eec377fc8a 100644
--- a/drivers/i2c/busses/i2c-tegra.c
+++ b/drivers/i2c/busses/i2c-tegra.c
@@ -627,14 +627,14 @@ static int tegra_i2c_probe(struct device_d *dev)
 		return PTR_ERR(i2c_dev->rst);
 	}
 
-	ret = of_property_read_u32(dev->device_node, "clock-frequency",
+	ret = of_property_read_u32(dev->of_node, "clock-frequency",
 	                           &i2c_dev->bus_clk_rate);
 	if (ret)
 		i2c_dev->bus_clk_rate = 100000; /* default clock rate */
 
 	i2c_dev->hw = &tegra20_i2c_hw;
 	dev_get_drvdata(dev, (const void **)&i2c_dev->hw);
-	i2c_dev->is_dvc = of_device_is_compatible(dev->device_node,
+	i2c_dev->is_dvc = of_device_is_compatible(dev->of_node,
 	                                          "nvidia,tegra20-i2c-dvc");
 
 	if (!i2c_dev->hw->has_single_clk_source) {
@@ -655,7 +655,7 @@ static int tegra_i2c_probe(struct device_d *dev)
 	i2c_dev->adapter.master_xfer = tegra_i2c_xfer;
 	i2c_dev->adapter.dev.parent = dev;
 	i2c_dev->adapter.nr = dev->id;
-	i2c_dev->adapter.dev.device_node = dev->device_node;
+	i2c_dev->adapter.dev.of_node = dev->of_node;
 
 	ret = i2c_add_numbered_adapter(&i2c_dev->adapter);
 	if (ret) {
diff --git a/drivers/i2c/busses/i2c-versatile.c b/drivers/i2c/busses/i2c-versatile.c
index ece483f6f5..998d69422b 100644
--- a/drivers/i2c/busses/i2c-versatile.c
+++ b/drivers/i2c/busses/i2c-versatile.c
@@ -86,7 +86,7 @@ static int i2c_versatile_probe(struct device_d *dev)
 
 	i2c->adap.algo_data = &i2c->algo;
 	i2c->adap.dev.parent = dev;
-	i2c->adap.dev.device_node = dev->device_node;
+	i2c->adap.dev.of_node = dev->of_node;
 	i2c->algo = i2c_versatile_algo;
 	i2c->algo.data = i2c;
 
diff --git a/drivers/i2c/i2c-mux.c b/drivers/i2c/i2c-mux.c
index 233d231525..1e5fd1e552 100644
--- a/drivers/i2c/i2c-mux.c
+++ b/drivers/i2c/i2c-mux.c
@@ -95,16 +95,16 @@ struct i2c_adapter *i2c_add_mux_adapter(struct i2c_adapter *parent,
 	 * Try to populate the mux adapter's device_node, expands to
 	 * nothing if !CONFIG_OFDEVICE.
 	 */
-	if (mux_dev->device_node) {
+	if (mux_dev->of_node) {
 		struct device_node *child;
 		u32 reg;
 
-		for_each_child_of_node(mux_dev->device_node, child) {
+		for_each_child_of_node(mux_dev->of_node, child) {
 			ret = of_property_read_u32(child, "reg", &reg);
 			if (ret)
 				continue;
 			if (chan_id == reg) {
-				priv->adap.dev.device_node = child;
+				priv->adap.dev.of_node = child;
 				break;
 			}
 		}
diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
index 40590b7d11..ffcc866ad0 100644
--- a/drivers/i2c/i2c.c
+++ b/drivers/i2c/i2c.c
@@ -394,7 +394,7 @@ static struct i2c_client *i2c_new_device(struct i2c_adapter *adapter,
 	client->dev.platform_data = chip->platform_data;
 	client->dev.id = DEVICE_ID_DYNAMIC;
 	client->dev.bus = &i2c_bus;
-	client->dev.device_node = chip->of_node;
+	client->dev.of_node = chip->of_node;
 	client->adapter = adapter;
 	client->addr = chip->addr;
 
@@ -418,10 +418,10 @@ static void of_i2c_register_devices(struct i2c_adapter *adap)
 	struct device_node *n;
 
 	/* Only register child devices if the adapter has a node pointer set */
-	if (!IS_ENABLED(CONFIG_OFDEVICE) || !adap->dev.device_node)
+	if (!IS_ENABLED(CONFIG_OFDEVICE) || !adap->dev.of_node)
 		return;
 
-	for_each_available_child_of_node(adap->dev.device_node, n) {
+	for_each_available_child_of_node(adap->dev.of_node, n) {
 		struct i2c_board_info info = {};
 		struct i2c_client *result;
 		const __be32 *addr;
@@ -578,7 +578,7 @@ struct i2c_adapter *of_find_i2c_adapter_by_node(struct device_node *node)
 		return ERR_PTR(ret);
 
 	for_each_i2c_adapter(adap)
-		if (adap->dev.device_node == node)
+		if (adap->dev.of_node == node)
 			return adap;
 
 	return NULL;
@@ -615,7 +615,7 @@ static void i2c_parse_timing(struct device_d *dev, char *prop_name, u32 *cur_val
 {
 	int ret;
 
-	ret = of_property_read_u32(dev->device_node, prop_name, cur_val_p);
+	ret = of_property_read_u32(dev->of_node, prop_name, cur_val_p);
 	if (ret && use_def)
 		*cur_val_p = def_val;
 
diff --git a/drivers/i2c/muxes/i2c-mux-pca954x.c b/drivers/i2c/muxes/i2c-mux-pca954x.c
index f547527fed..a05d25f344 100644
--- a/drivers/i2c/muxes/i2c-mux-pca954x.c
+++ b/drivers/i2c/muxes/i2c-mux-pca954x.c
@@ -199,7 +199,7 @@ static int pca954x_probe(struct device_d *dev)
 
 	i2c_set_clientdata(client, data);
 
-	gpio = of_get_named_gpio(dev->device_node, "reset-gpios", 0);
+	gpio = of_get_named_gpio(dev->of_node, "reset-gpios", 0);
 	if (gpio_is_valid(gpio))
 		gpio_direction_output(gpio, 1);
 
@@ -215,7 +215,7 @@ static int pca954x_probe(struct device_d *dev)
 	if (ret)
 		goto exit_free;
 
-	idle_disconnect = of_property_read_bool(dev->device_node,
+	idle_disconnect = of_property_read_bool(dev->of_node,
 						"i2c-mux-idle-disconnect");
 
 	data->last_chan = 0;		   /* force the first selection */
diff --git a/drivers/input/gpio_keys.c b/drivers/input/gpio_keys.c
index 45b3c562f8..c188cf34bd 100644
--- a/drivers/input/gpio_keys.c
+++ b/drivers/input/gpio_keys.c
@@ -94,7 +94,7 @@ static int gpio_keys_probe_pdata(struct gpio_keys *gk, struct device_d *dev)
 
 static int gpio_keys_probe_dt(struct gpio_keys *gk, struct device_d *dev)
 {
-	struct device_node *npkey, *np = dev->device_node;
+	struct device_node *npkey, *np = dev->of_node;
 	int i = 0, ret;
 
 	if (!IS_ENABLED(CONFIG_OFDEVICE) || !IS_ENABLED(CONFIG_OF_GPIO))
@@ -140,7 +140,7 @@ static int __init gpio_keys_probe(struct device_d *dev)
 
 	gk->dev = dev;
 
-	if (dev->device_node)
+	if (dev->of_node)
 		ret = gpio_keys_probe_dt(gk, dev);
 	else
 		ret = gpio_keys_probe_pdata(gk, dev);
diff --git a/drivers/input/matrix-keymap.c b/drivers/input/matrix-keymap.c
index 68dc5d2f06..1d974f7f7a 100644
--- a/drivers/input/matrix-keymap.c
+++ b/drivers/input/matrix-keymap.c
@@ -9,7 +9,7 @@ static int matrix_keypad_parse_of_keymap(struct device_d *dev,
 {
 	unsigned int proplen, i, size;
 	const __be32 *prop;
-	struct device_node *np = dev->device_node;
+	struct device_node *np = dev->of_node;
 	const char *propname = "linux,keymap";
 
 	prop = of_get_property(np, propname, &proplen);
@@ -61,7 +61,7 @@ int matrix_keypad_build_keymap(struct device_d *dev, const struct matrix_keymap_
 {
 	int i;
 
-	if (IS_ENABLED(CONFIG_OFDEVICE) && dev->device_node)
+	if (IS_ENABLED(CONFIG_OFDEVICE) && dev->of_node)
 		return matrix_keypad_parse_of_keymap(dev, row_shift, keymap);
 
 	if (!keymap_data)
diff --git a/drivers/led/led-gpio.c b/drivers/led/led-gpio.c
index 1a5eda0371..1458ca0bac 100644
--- a/drivers/led/led-gpio.c
+++ b/drivers/led/led-gpio.c
@@ -199,13 +199,13 @@ static int led_gpio_of_probe(struct device_d *dev)
 	int num_leds;
 	int ret = 0, n = 0;
 
-	num_leds = of_get_child_count(dev->device_node);
+	num_leds = of_get_child_count(dev->of_node);
 	if (num_leds <= 0)
 		return num_leds;
 
 	leds = xzalloc(num_leds * sizeof(struct gpio_led));
 
-	for_each_child_of_node(dev->device_node, child) {
+	for_each_child_of_node(dev->of_node, child) {
 		struct gpio_led *gled = &leds[n];
 		const char *default_state;
 		enum of_gpio_flags flags;
diff --git a/drivers/led/led-pca955x.c b/drivers/led/led-pca955x.c
index aa518fe738..8eeef60fb1 100644
--- a/drivers/led/led-pca955x.c
+++ b/drivers/led/led-pca955x.c
@@ -365,7 +365,7 @@ static int led_pca955x_probe(struct device_d *dev)
 	pca955x->client = client;
 	pca955x->chipdef = chip;
 
-	pdata =	led_pca955x_pdata_of_init(dev->device_node, pca955x);
+	pdata =	led_pca955x_pdata_of_init(dev->of_node, pca955x);
 	if (IS_ERR(pdata))
 		return PTR_ERR(pdata);
 
diff --git a/drivers/led/led-pwm.c b/drivers/led/led-pwm.c
index 071e219d73..9dbf510dc6 100644
--- a/drivers/led/led-pwm.c
+++ b/drivers/led/led-pwm.c
@@ -44,7 +44,7 @@ static int led_pwm_of_probe(struct device_d *dev)
 	struct device_node *child;
 	int ret;
 
-	for_each_child_of_node(dev->device_node, child) {
+	for_each_child_of_node(dev->of_node, child) {
 		struct pwmled *pwmled;
 		struct pwm_device *pwm;
 
diff --git a/drivers/mci/arasan-sdhci.c b/drivers/mci/arasan-sdhci.c
index d45f9184cd..460d1df709 100644
--- a/drivers/mci/arasan-sdhci.c
+++ b/drivers/mci/arasan-sdhci.c
@@ -235,7 +235,7 @@ error:
 
 static int arasan_sdhci_probe(struct device_d *dev)
 {
-	struct device_node *np = dev->device_node;
+	struct device_node *np = dev->of_node;
 	struct arasan_sdhci_host *arasan_sdhci;
 	struct clk *clk_xin, *clk_ahb;
 	struct resource *iores;
diff --git a/drivers/mci/atmel-sdhci.c b/drivers/mci/atmel-sdhci.c
index 380a79d33e..059a21d774 100644
--- a/drivers/mci/atmel-sdhci.c
+++ b/drivers/mci/atmel-sdhci.c
@@ -135,7 +135,7 @@ static int at91_sdhci_probe(struct device_d *dev)
 	 * if SDCAL pin is wrongly connected, we must enable
 	 * the analog calibration cell permanently.
 	 */
-	priv->cal_always_on = of_property_read_bool(dev->device_node,
+	priv->cal_always_on = of_property_read_bool(dev->of_node,
 						    "microchip,sdcal-inverted");
 
 	at91_sdhci_mmio_init(&priv->host, IOMEM(iores->start));
diff --git a/drivers/mci/atmel_mci.c b/drivers/mci/atmel_mci.c
index e676c1bd5c..8835f0eda5 100644
--- a/drivers/mci/atmel_mci.c
+++ b/drivers/mci/atmel_mci.c
@@ -71,7 +71,7 @@ static int atmci_probe(struct device_d *hw_dev)
 {
 	struct resource *iores;
 	struct atmel_mci *host;
-	struct device_node *np = hw_dev->device_node;
+	struct device_node *np = hw_dev->of_node;
 	struct atmel_mci_platform_data *pd = hw_dev->platform_data;
 	int ret;
 
diff --git a/drivers/mci/dw_mmc.c b/drivers/mci/dw_mmc.c
index 86c4f43e88..46a69808e9 100644
--- a/drivers/mci/dw_mmc.c
+++ b/drivers/mci/dw_mmc.c
@@ -528,8 +528,8 @@ static int dwmci_init(struct mci_host *mci, struct device_d *dev)
 	/*
 	 * If fifo-depth property is set, use this value
 	 */
-	if (!of_property_read_u32(host->mci.hw_dev->device_node,
-		    "fifo-depth", &fifo_size)) {
+	if (!of_property_read_u32(host->mci.hw_dev->of_node,
+				  "fifo-depth", &fifo_size)) {
 		host->fifo_size_bytes = fifo_size;
 		dev_dbg(host->mci.hw_dev, "Using fifo-depth=%u\n",
 		    host->fifo_size_bytes);
@@ -603,22 +603,23 @@ static int dw_mmc_probe(struct device_d *dev)
 		host->ciu_div = pdata->ciu_div;
 		host->mci.host_caps &= ~MMC_CAP_BIT_DATA_MASK;
 		host->mci.host_caps |= pdata->bus_width_caps;
-	} else if (dev->device_node) {
-		of_property_read_u32(dev->device_node, "dw-mshc-ciu-div",
-				&host->ciu_div);
+	} else if (dev->of_node) {
+		of_property_read_u32(dev->of_node, "dw-mshc-ciu-div",
+				     &host->ciu_div);
 	}
 
 	/* divider is 0 based in pdata and 1 based in our private struct */
 	host->ciu_div++;
 
-	if (of_device_is_compatible(dev->device_node,
-	    "rockchip,rk2928-dw-mshc"))
+	if (of_device_is_compatible(dev->of_node,
+				    "rockchip,rk2928-dw-mshc"))
 		host->pwren_value = 0;
 	else
 		host->pwren_value = 1;
 
-	if (of_device_is_compatible(dev->device_node, "starfive,jh7100-dw-mshc"))
-		of_property_read_u32(dev->device_node, "clock-frequency", &host->clkrate);
+	if (of_device_is_compatible(dev->of_node, "starfive,jh7100-dw-mshc"))
+		of_property_read_u32(dev->of_node, "clock-frequency",
+				     &host->clkrate);
 	if (!host->clkrate)
 		host->clkrate = clk_get_rate(host->clk_ciu);
 
diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 8cda07e711..7dcbae9951 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -428,7 +428,7 @@ static void mci_part_add(struct mci *mci, uint64_t size,
 	part->idx = idx;
 
 	if (area_type == MMC_BLK_DATA_AREA_MAIN) {
-		part->blk.cdev.device_node = mci->host->hw_dev->device_node;
+		part->blk.cdev.device_node = mci->host->hw_dev->of_node;
 		part->blk.cdev.flags |= DEVFS_IS_MCI_MAIN_PART_DEV;
 	}
 
@@ -1699,7 +1699,7 @@ static int mci_register_partition(struct mci_part *part)
 	}
 	dev_info(&mci->dev, "registered %s\n", part->blk.cdev.name);
 
-	np = host->hw_dev->device_node;
+	np = host->hw_dev->of_node;
 
 	/* create partitions on demand */
 	switch (part->area_type) {
@@ -1709,7 +1709,7 @@ static int mci_register_partition(struct mci_part *part)
 		else
 			partnodename = "boot1-partitions";
 
-		np = of_get_child_by_name(host->hw_dev->device_node,
+		np = of_get_child_by_name(host->hw_dev->of_node,
 					  partnodename);
 		break;
 	case MMC_BLK_DATA_AREA_MAIN:
@@ -1749,12 +1749,12 @@ static int of_broken_cd_fixup(struct device_node *root, void *ctx)
 	if (!host->broken_cd)
 		return 0;
 
-	name = of_get_reproducible_name(hw_dev->device_node);
+	name = of_get_reproducible_name(hw_dev->of_node);
 	np = of_find_node_by_reproducible_name(root, name);
 	free(name);
 	if (!np) {
 		dev_warn(hw_dev, "Cannot find nodepath %s, cannot fixup\n",
-			 hw_dev->device_node->full_name);
+			 hw_dev->of_node->full_name);
 		return -EINVAL;
 	}
 
@@ -2091,7 +2091,7 @@ void mci_of_parse_node(struct mci_host *host,
 
 void mci_of_parse(struct mci_host *host)
 {
-	return mci_of_parse_node(host, host->hw_dev->device_node);
+	return mci_of_parse_node(host, host->hw_dev->of_node);
 }
 
 struct mci *mci_get_device_by_name(const char *name)
diff --git a/drivers/mci/mmci.c b/drivers/mci/mmci.c
index 2edc37c681..8c1e8dc7fd 100644
--- a/drivers/mci/mmci.c
+++ b/drivers/mci/mmci.c
@@ -552,7 +552,7 @@ static int mmci_of_parse(struct device_node *np,
 static int mmci_probe(struct amba_device *dev, const struct amba_id *id)
 {
 	struct device_d *hw_dev = &dev->dev;
-	struct device_node *np = hw_dev->device_node;
+	struct device_node *np = hw_dev->of_node;
 	struct mmci_platform_data *plat = hw_dev->platform_data;
 	struct variant_data *variant = id->data;
 	u32 sdi_u32;
diff --git a/drivers/mci/sdhci.c b/drivers/mci/sdhci.c
index 8da32d57c2..2ec38cb93f 100644
--- a/drivers/mci/sdhci.c
+++ b/drivers/mci/sdhci.c
@@ -459,7 +459,7 @@ void __sdhci_read_caps(struct sdhci *host, const u16 *ver,
 	u16 v;
 	u64 dt_caps_mask = 0;
 	u64 dt_caps = 0;
-	struct device_node *np = host->mci->hw_dev->device_node;
+	struct device_node *np = host->mci->hw_dev->of_node;
 
 	BUG_ON(!host->mci); /* Call sdhci_setup_host() before using this */
 
diff --git a/drivers/mci/stm32_sdmmc2.c b/drivers/mci/stm32_sdmmc2.c
index 40ffc17908..af01c9b47b 100644
--- a/drivers/mci/stm32_sdmmc2.c
+++ b/drivers/mci/stm32_sdmmc2.c
@@ -575,7 +575,7 @@ static int stm32_sdmmc2_probe(struct amba_device *adev,
 			      const struct amba_id *id)
 {
 	struct device_d *dev = &adev->dev;
-	struct device_node *np = dev->device_node;
+	struct device_node *np = dev->of_node;
 	struct stm32_sdmmc2_priv *priv;
 	struct mci_host *mci;
 	int ret;
diff --git a/drivers/mci/tegra-sdmmc.c b/drivers/mci/tegra-sdmmc.c
index 756fb94c52..9ff43440fb 100644
--- a/drivers/mci/tegra-sdmmc.c
+++ b/drivers/mci/tegra-sdmmc.c
@@ -308,8 +308,8 @@ static int tegra_sdmmc_init(struct mci_host *mci, struct device_d *dev)
 	sdhci_write32(&host->sdhci, TEGRA_SDMMC_PWR_CNTL, val);
 
 	/* sdmmc1 and sdmmc3 on T30 need a bit of padctrl init */
-	if (of_device_is_compatible(mci->hw_dev->device_node,
-			"nvidia,tegra30-sdhci") &&
+	if (of_device_is_compatible(mci->hw_dev->of_node,
+				    "nvidia,tegra30-sdhci") &&
 			((u32)regs == 0x78000000 || (u32)regs == 78000400)) {
 		val = readl(regs + TEGRA_SDMMC_SDMEMCOMPPADCTRL);
 		val &= 0xfffffff0;
@@ -366,7 +366,7 @@ static int tegra_sdmmc_card_present(struct mci_host *mci)
 
 static void tegra_sdmmc_parse_dt(struct tegra_sdmmc_host *host)
 {
-	struct device_node *np = host->mci.hw_dev->device_node;
+	struct device_node *np = host->mci.hw_dev->of_node;
 
 	host->gpio_cd = of_get_named_gpio(np, "cd-gpios", 0);
 	host->gpio_pwr = of_get_named_gpio(np, "power-gpios", 0);
diff --git a/drivers/mfd/atmel-flexcom.c b/drivers/mfd/atmel-flexcom.c
index 996d4850ee..13b648f903 100644
--- a/drivers/mfd/atmel-flexcom.c
+++ b/drivers/mfd/atmel-flexcom.c
@@ -27,7 +27,7 @@ static int atmel_flexcom_probe(struct device_d *dev)
 	u32 opmode;
 	int err;
 
-	err = of_property_read_u32(dev->device_node,
+	err = of_property_read_u32(dev->of_node,
 				   "atmel,flexcom-mode", &opmode);
 	if (err)
 		return err;
@@ -57,7 +57,7 @@ static int atmel_flexcom_probe(struct device_d *dev)
 
 	clk_disable(clk);
 
-	return of_platform_populate(dev->device_node, NULL, dev);
+	return of_platform_populate(dev->of_node, NULL, dev);
 }
 
 static const struct of_device_id atmel_flexcom_of_match[] = {
diff --git a/drivers/mfd/axp20x.c b/drivers/mfd/axp20x.c
index 62df91ff01..3004a9b1fa 100644
--- a/drivers/mfd/axp20x.c
+++ b/drivers/mfd/axp20x.c
@@ -348,9 +348,9 @@ int axp20x_device_probe(struct axp20x_dev *axp20x)
 	 * property "x-powers,master-mode" to override the default.
 	 */
 	if (axp20x->variant == AXP806_ID) {
-		if (of_property_read_bool(axp20x->dev->device_node,
+		if (of_property_read_bool(axp20x->dev->of_node,
 					  "x-powers,master-mode") ||
-		    of_property_read_bool(axp20x->dev->device_node,
+		    of_property_read_bool(axp20x->dev->of_node,
 					  "x-powers,self-working-mode"))
 			regmap_write(axp20x->regmap, AXP806_REG_ADDR_EXT,
 				     AXP806_REG_ADDR_EXT_ADDR_MASTER_MODE);
diff --git a/drivers/mfd/da9053.c b/drivers/mfd/da9053.c
index 693c0ca606..4115551911 100644
--- a/drivers/mfd/da9053.c
+++ b/drivers/mfd/da9053.c
@@ -272,7 +272,7 @@ static int da9053_probe(struct device_d *dev)
 
 	da9053_detect_reset_source(da9053);
 
-	da9053->restart.of_node = dev->device_node;
+	da9053->restart.of_node = dev->of_node;
 	da9053->restart.name = "da9063";
 	da9053->restart.restart = &da9053_force_system_reset;
 
diff --git a/drivers/mfd/da9063.c b/drivers/mfd/da9063.c
index 4627dd1aa5..b30f55a6ff 100644
--- a/drivers/mfd/da9063.c
+++ b/drivers/mfd/da9063.c
@@ -383,7 +383,7 @@ static int da9063_probe(struct device_d *dev)
 
 	da9063_detect_reset_source(priv);
 
-	priv->restart.of_node = dev->device_node;
+	priv->restart.of_node = dev->of_node;
 	priv->restart.name = "da9063";
 	priv->restart.restart = &da9063_restart;
 
@@ -399,8 +399,8 @@ static int da9063_probe(struct device_d *dev)
 			goto on_error;
 	}
 
-	if (IS_ENABLED(CONFIG_OFDEVICE) && dev->device_node)
-		return of_platform_populate(dev->device_node, NULL, dev);
+	if (IS_ENABLED(CONFIG_OFDEVICE) && dev->of_node)
+		return of_platform_populate(dev->of_node, NULL, dev);
 
 	return 0;
 
diff --git a/drivers/mfd/mc13xxx.c b/drivers/mfd/mc13xxx.c
index 1851950406..057224855f 100644
--- a/drivers/mfd/mc13xxx.c
+++ b/drivers/mfd/mc13xxx.c
@@ -353,7 +353,7 @@ static int __init mc13xxx_probe(struct device_d *dev)
 	if (mc13xxx_init_callback)
 		mc13xxx_init_callback(mc_dev);
 
-	if (of_property_read_bool(dev->device_node, "fsl,mc13xxx-uses-adc"))
+	if (of_property_read_bool(dev->of_node, "fsl,mc13xxx-uses-adc"))
 		mc13xxx_adc_probe(dev, mc_dev);
 
 	return 0;
diff --git a/drivers/mfd/rave-sp.c b/drivers/mfd/rave-sp.c
index 30d4bde5dc..e323c49716 100644
--- a/drivers/mfd/rave-sp.c
+++ b/drivers/mfd/rave-sp.c
@@ -795,7 +795,7 @@ static int rave_sp_probe(struct device_d *dev)
 	u32 baud;
 	int ret;
 
-	if (of_property_read_u32(dev->device_node, "current-speed", &baud)) {
+	if (of_property_read_u32(dev->of_node, "current-speed", &baud)) {
 		dev_err(dev,
 			"'current-speed' is not specified in device node\n");
 		return -EINVAL;
@@ -850,7 +850,7 @@ static int rave_sp_probe(struct device_d *dev)
 		return ret;
 	}
 
-	return of_platform_populate(dev->device_node, NULL, dev);
+	return of_platform_populate(dev->of_node, NULL, dev);
 }
 
 static struct driver_d rave_sp_drv = {
diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
index 1b5b9d3a17..53eadde4cb 100644
--- a/drivers/mfd/rk808.c
+++ b/drivers/mfd/rk808.c
@@ -249,7 +249,7 @@ static void rk808_poweroff(struct poweroff_handler *handler)
 static int rk808_probe(struct device_d *dev)
 {
 	struct i2c_client *client = to_i2c_client(dev);
-	struct device_node *np = dev->device_node;
+	struct device_node *np = dev->of_node;
 	struct rk808 *rk808;
 	const struct rk808_reg_data *pre_init_reg;
 	const struct mfd_cell *cells;
diff --git a/drivers/mfd/rn5t568.c b/drivers/mfd/rn5t568.c
index 4bbab54fe4..6e40105e32 100644
--- a/drivers/mfd/rn5t568.c
+++ b/drivers/mfd/rn5t568.c
@@ -138,7 +138,7 @@ static int __init rn5t568_i2c_probe(struct device_d *dev)
 	regmap_write(pmic_instance->regmap, RN5T568_REPCNT, RN5T568_REPCNT_OFF_RESETO_16MS |
 		     RN5T568_REPCNT_OFF_REPWRTIM_1000MS | RN5T568_REPCNT_OFF_REPWRON);
 
-	pmic_instance->restart.of_node = dev->device_node;
+	pmic_instance->restart.of_node = dev->of_node;
 	pmic_instance->restart.name = "RN5T568";
 	pmic_instance->restart.restart = &rn5t568_restart;
 	restart_handler_register(&pmic_instance->restart);
@@ -148,7 +148,7 @@ static int __init rn5t568_i2c_probe(struct device_d *dev)
 	if (ret)
 		dev_warn(dev, "Failed to query reset reason\n");
 
-	return of_platform_populate(dev->device_node, NULL, dev);
+	return of_platform_populate(dev->of_node, NULL, dev);
 }
 
 static __maybe_unused const struct of_device_id rn5t568_of_match[] = {
diff --git a/drivers/mfd/stm32-timers.c b/drivers/mfd/stm32-timers.c
index 4814c06a62..294860613f 100644
--- a/drivers/mfd/stm32-timers.c
+++ b/drivers/mfd/stm32-timers.c
@@ -58,7 +58,7 @@ static int stm32_timers_probe(struct device_d *dev)
 
 	dev->priv = ddata;
 
-	return of_platform_populate(dev->device_node, NULL, dev);
+	return of_platform_populate(dev->of_node, NULL, dev);
 }
 
 static const struct of_device_id stm32_timers_of_match[] = {
diff --git a/drivers/mfd/stmpe-i2c.c b/drivers/mfd/stmpe-i2c.c
index 37cf6b8b36..55a794d75f 100644
--- a/drivers/mfd/stmpe-i2c.c
+++ b/drivers/mfd/stmpe-i2c.c
@@ -100,12 +100,12 @@ static struct stmpe_platform_data *stmpe_of_probe(struct device_d *dev)
 	struct stmpe_platform_data *pdata;
 	struct device_node *node;
 
-	if (!IS_ENABLED(CONFIG_OFDEVICE) || !dev->device_node)
+	if (!IS_ENABLED(CONFIG_OFDEVICE) || !dev->of_node)
 		return NULL;
 
 	pdata = xzalloc(sizeof(*pdata));
 
-	for_each_child_of_node(dev->device_node, node) {
+	for_each_child_of_node(dev->of_node, node) {
 		if (!strcmp(node->name, "stmpe_gpio")) {
 			pdata->blocks |= STMPE_BLOCK_GPIO;
 		}
diff --git a/drivers/mfd/stpmic1.c b/drivers/mfd/stpmic1.c
index 1de5afa2ef..68c1b70b2a 100644
--- a/drivers/mfd/stpmic1.c
+++ b/drivers/mfd/stpmic1.c
@@ -39,7 +39,7 @@ static int __init stpmic1_probe(struct device_d *dev)
 	}
 	dev_info(dev, "PMIC Chip Version: 0x%x\n", reg);
 
-	return of_platform_populate(dev->device_node, NULL, dev);
+	return of_platform_populate(dev->of_node, NULL, dev);
 }
 
 static __maybe_unused struct of_device_id stpmic1_dt_ids[] = {
diff --git a/drivers/misc/starfive-pwrseq.c b/drivers/misc/starfive-pwrseq.c
index 8527d12504..62c36f3e5b 100644
--- a/drivers/misc/starfive-pwrseq.c
+++ b/drivers/misc/starfive-pwrseq.c
@@ -21,7 +21,7 @@ static int starfive_pwrseq_probe(struct device_d *dev)
 	if (ret)
 		return ret;
 
-	return of_platform_populate(dev->device_node, NULL, dev);
+	return of_platform_populate(dev->of_node, NULL, dev);
 }
 
 static struct of_device_id starfive_pwrseq_dt_ids[] = {
diff --git a/drivers/misc/state.c b/drivers/misc/state.c
index cb0d9cf3ad..2e393505d1 100644
--- a/drivers/misc/state.c
+++ b/drivers/misc/state.c
@@ -14,7 +14,7 @@
 
 static int state_probe(struct device_d *dev)
 {
-	struct device_node *np = dev->device_node;
+	struct device_node *np = dev->of_node;
 	struct state *state;
 	bool readonly = false;
 	int ret;
diff --git a/drivers/misc/storage-by-uuid.c b/drivers/misc/storage-by-uuid.c
index c57cbb57d8..13efb9d01f 100644
--- a/drivers/misc/storage-by-uuid.c
+++ b/drivers/misc/storage-by-uuid.c
@@ -132,7 +132,7 @@ static void storage_by_uuid_add_partitions(struct sbu *sbu, struct cdev *rcdev)
 		return;
 	}
 
-	of_parse_partitions(&sbu->cdev, sbu->dev->device_node);
+	of_parse_partitions(&sbu->cdev, sbu->dev->of_node);
 }
 
 static void check_exist(struct sbu *sbu)
@@ -166,7 +166,7 @@ static int storage_by_uuid_probe(struct device_d *dev)
 
 	sbu = xzalloc(sizeof(*sbu));
 
-	ret = of_property_read_string(dev->device_node, "uuid", &uuid);
+	ret = of_property_read_string(dev->of_node, "uuid", &uuid);
 	if (ret)
 		return ret;
 
diff --git a/drivers/misc/ubootvar.c b/drivers/misc/ubootvar.c
index e5095bb2d2..1c291343d1 100644
--- a/drivers/misc/ubootvar.c
+++ b/drivers/misc/ubootvar.c
@@ -195,11 +195,11 @@ static int ubootenv_probe(struct device_d *dev)
 
 	ubdata = xzalloc(sizeof(*ubdata));
 
-	ret = of_find_path(dev->device_node, "device-path-0",
+	ret = of_find_path(dev->of_node, "device-path-0",
 			   &ubdata->path[0],
 			   OF_FIND_PATH_FLAGS_BB);
 	if (ret)
-		ret = of_find_path(dev->device_node, "device-path",
+		ret = of_find_path(dev->of_node, "device-path",
 				   &ubdata->path[0],
 				   OF_FIND_PATH_FLAGS_BB);
 
@@ -210,7 +210,7 @@ static int ubootenv_probe(struct device_d *dev)
 
 	count++;
 
-	if (!of_find_path(dev->device_node, "device-path-1",
+	if (!of_find_path(dev->of_node, "device-path-1",
 			  &ubdata->path[1],
 			  OF_FIND_PATH_FLAGS_BB)) {
 		count++;
diff --git a/drivers/mtd/devices/m25p80.c b/drivers/mtd/devices/m25p80.c
index 5592f9597e..5bbe4cec01 100644
--- a/drivers/mtd/devices/m25p80.c
+++ b/drivers/mtd/devices/m25p80.c
@@ -257,16 +257,16 @@ static int m25p_probe(struct device_d *dev)
 	else
 		flash_name = NULL; /* auto-detect */
 
-	use_large_blocks = of_property_read_bool(dev->device_node,
-			"use-large-blocks");
+	use_large_blocks = of_property_read_bool(dev->of_node,
+						 "use-large-blocks");
 
 	ret = spi_nor_scan(nor, flash_name, &hwcaps, use_large_blocks);
 	if (ret)
 		return ret;
 
 	device_id = DEVICE_ID_SINGLE;
-	if (dev->device_node)
-		flash_name = of_alias_get(dev->device_node);
+	if (dev->of_node)
+		flash_name = of_alias_get(dev->of_node);
 	else if (data && data->name)
 		flash_name = data->name;
 
diff --git a/drivers/mtd/devices/mtdram.c b/drivers/mtd/devices/mtdram.c
index abef07d9c0..2f81c4f766 100644
--- a/drivers/mtd/devices/mtdram.c
+++ b/drivers/mtd/devices/mtdram.c
@@ -48,8 +48,8 @@ static int mtdram_probe(struct device_d *dev)
 	mtd = xzalloc(sizeof(struct mtd_info));
 
 	device_id = DEVICE_ID_SINGLE;
-	if (dev->device_node) {
-		const char *alias = of_alias_get(dev->device_node);
+	if (dev->of_node) {
+		const char *alias = of_alias_get(dev->of_node);
 		if (alias)
 			mtd->name = xstrdup(alias);
 	}
diff --git a/drivers/mtd/nand/atmel_nand.c b/drivers/mtd/nand/atmel_nand.c
index 6a54add93b..7541eeb302 100644
--- a/drivers/mtd/nand/atmel_nand.c
+++ b/drivers/mtd/nand/atmel_nand.c
@@ -1281,8 +1281,8 @@ static int __init atmel_nand_probe(struct device_d *dev)
 	host->board = pdata;
 	host->dev = dev;
 
-	if (dev->device_node) {
-		res = atmel_nand_of_init(host, dev->device_node);
+	if (dev->of_node) {
+		res = atmel_nand_of_init(host, dev->of_node);
 		if (res)
 			goto err_no_card;
 	} else {
diff --git a/drivers/mtd/nand/nand_denali_dt.c b/drivers/mtd/nand/nand_denali_dt.c
index 5cb62cd733..bd4dd4cffd 100644
--- a/drivers/mtd/nand/nand_denali_dt.c
+++ b/drivers/mtd/nand/nand_denali_dt.c
@@ -189,7 +189,7 @@ static int denali_dt_probe(struct device_d *ofdev)
 	if (ret)
 		goto out_disable_clk;
 
-	for_each_child_of_node(ofdev->device_node, np) {
+	for_each_child_of_node(ofdev->of_node, np) {
 		ret = denali_dt_chip_init(denali, np);
 		if (ret)
 			goto out_disable_clk;
diff --git a/drivers/mtd/nand/nand_fsl_ifc.c b/drivers/mtd/nand/nand_fsl_ifc.c
index 64dc9c225f..d5ff3b0141 100644
--- a/drivers/mtd/nand/nand_fsl_ifc.c
+++ b/drivers/mtd/nand/nand_fsl_ifc.c
@@ -851,7 +851,7 @@ static int fsl_ifc_chip_init(struct fsl_ifc_mtd *priv)
 	}
 	ctrl = priv->ctrl = ifc_ctrl;
 
-	if (priv->dev->device_node) {
+	if (priv->dev->of_node) {
 		int bank, banks;
 
 		 /* find which chip select it is connected to */
diff --git a/drivers/mtd/nand/nand_imx.c b/drivers/mtd/nand/nand_imx.c
index 66c53670d3..09e26a6910 100644
--- a/drivers/mtd/nand/nand_imx.c
+++ b/drivers/mtd/nand/nand_imx.c
@@ -1106,7 +1106,7 @@ static struct nand_bbt_descr bbt_mirror_descr = {
 
 static int __init mxcnd_probe_dt(struct imx_nand_host *host)
 {
-	struct device_node *np = host->dev->device_node;
+	struct device_node *np = host->dev->of_node;
 	int buswidth;
 
 	if (!IS_ENABLED(CONFIG_OFDEVICE))
diff --git a/drivers/mtd/nand/nand_mrvl_nfc.c b/drivers/mtd/nand/nand_mrvl_nfc.c
index 064853b344..fe2cd2c865 100644
--- a/drivers/mtd/nand/nand_mrvl_nfc.c
+++ b/drivers/mtd/nand/nand_mrvl_nfc.c
@@ -1188,7 +1188,7 @@ static struct mrvl_nand_host *alloc_nand_resource(struct device_d *dev)
 
 static int mrvl_nand_probe_dt(struct mrvl_nand_host *host)
 {
-	struct device_node *np = host->dev->device_node;
+	struct device_node *np = host->dev->of_node;
 	const struct of_device_id *match;
 	const struct mrvl_nand_variant *variant;
 
diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
index 79a8fbdefa..9387cd7a3a 100644
--- a/drivers/mtd/nand/nand_mxs.c
+++ b/drivers/mtd/nand/nand_mxs.c
@@ -1407,7 +1407,7 @@ static void mxs_nand_probe_dt(struct device_d *dev, struct mxs_nand_info *nand_i
 	if (!IS_ENABLED(CONFIG_OFTREE))
 		return;
 
-	if (of_get_nand_on_flash_bbt(dev->device_node))
+	if (of_get_nand_on_flash_bbt(dev->of_node))
 		chip->bbt_options |= NAND_BBT_USE_FLASH | NAND_BBT_NO_OOB;
 }
 
diff --git a/drivers/mtd/nand/nand_orion.c b/drivers/mtd/nand/nand_orion.c
index bb41b006e2..63c7aa461f 100644
--- a/drivers/mtd/nand/nand_orion.c
+++ b/drivers/mtd/nand/nand_orion.c
@@ -76,7 +76,7 @@ static void orion_nand_read_buf(struct nand_chip *chip, uint8_t *buf, int len)
 static int orion_nand_probe(struct device_d *dev)
 {
 	struct resource *iores;
-	struct device_node *dev_node = dev->device_node;
+	struct device_node *dev_node = dev->of_node;
 	struct orion_nand *priv;
 	struct mtd_info *mtd;
 	struct nand_chip *chip;
diff --git a/drivers/mtd/nor/cfi_flash.c b/drivers/mtd/nor/cfi_flash.c
index 3b0d2332aa..179f2c718b 100644
--- a/drivers/mtd/nor/cfi_flash.c
+++ b/drivers/mtd/nor/cfi_flash.c
@@ -997,7 +997,7 @@ static int cfi_probe(struct device_d *dev)
 	priv->infos = xzalloc(sizeof(*priv->infos) * priv->num_devs);
 	priv->mtds = xzalloc(sizeof(*priv->mtds) * priv->num_devs);
 
-	of_property_read_string(dev->device_node, "linux,mtd-name", &mtd_name);
+	of_property_read_string(dev->of_node, "linux,mtd-name", &mtd_name);
 
 	if (!mtd_name)
 		mtd_name = dev_name(dev);
diff --git a/drivers/mtd/spi-nor/cadence-quadspi.c b/drivers/mtd/spi-nor/cadence-quadspi.c
index 98b84cab1e..c7c5f21efd 100644
--- a/drivers/mtd/spi-nor/cadence-quadspi.c
+++ b/drivers/mtd/spi-nor/cadence-quadspi.c
@@ -1058,7 +1058,7 @@ static int cqspi_of_get_flash_pdata(struct device_d *dev,
 
 static int cqspi_parse_dt(struct cqspi_st *cqspi)
 {
-	struct device_node *np = cqspi->dev->device_node;
+	struct device_node *np = cqspi->dev->of_node;
 	struct device_d *dev = cqspi->dev;
 
 	cqspi->is_decoded_cs = of_property_read_bool(np, "cdns,is-decoded-cs");
@@ -1101,7 +1101,7 @@ static int cqspi_setup_flash(struct device_d *dev,
 
 		dev_set_name(nor->dev, np->name);
 
-		nor->dev->device_node = np;
+		nor->dev->of_node = np;
 		nor->dev->id = DEVICE_ID_SINGLE;
 		nor->dev->parent = dev;
 		ret = register_device(nor->dev);
@@ -1155,7 +1155,7 @@ static void cqspi_controller_init(struct cqspi_st *cqspi)
 static int cqspi_probe(struct device_d *dev)
 {
 	struct resource *iores;
-	struct device_node *np = dev->device_node;
+	struct device_node *np = dev->of_node;
 	struct cqspi_st *cqspi;
 	struct cadence_qspi_platform_data *pdata = dev->platform_data;
 	int ret;
@@ -1203,7 +1203,7 @@ static int cqspi_probe(struct device_d *dev)
 	cqspi->current_cs = -1;
 	cqspi->sclk = 0;
 
-	if (!dev->device_node) {
+	if (!dev->of_node) {
 		struct cqspi_flash_pdata *f_pdata;
 
 		f_pdata = &cqspi->f_pdata[0];
@@ -1213,7 +1213,7 @@ static int cqspi_probe(struct device_d *dev)
 			goto probe_failed;
 	} else {
 		/* Get flash device data */
-		for_each_available_child_of_node(dev->device_node, np) {
+		for_each_available_child_of_node(dev->of_node, np) {
 			struct cqspi_flash_pdata *f_pdata;
 			unsigned int cs;
 			if (of_property_read_u32(np, "reg", &cs)) {
diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 0ed7fd3d04..ab5aff6a57 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -1372,7 +1372,7 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
 	struct flash_info		*info;
 	struct device_d *dev = nor->dev;
 	struct mtd_info *mtd = nor->mtd;
-	struct device_node *np = dev->device_node;
+	struct device_node *np = dev->of_node;
 	int ret;
 	int i;
 
diff --git a/drivers/net/bcmgenet.c b/drivers/net/bcmgenet.c
index 8df5fd5dea..cc951c7ddb 100644
--- a/drivers/net/bcmgenet.c
+++ b/drivers/net/bcmgenet.c
@@ -561,7 +561,7 @@ static int bcmgenet_probe(struct device_d *dev)
 		return -ENODEV;
 	}
 
-	ret = of_get_phy_mode(dev->device_node);
+	ret = of_get_phy_mode(dev->of_node);
 	if (ret < 0)
 		priv->interface = PHY_INTERFACE_MODE_MII;
 	else
@@ -579,8 +579,8 @@ static int bcmgenet_probe(struct device_d *dev)
 
 	priv->miibus.priv = priv;
 	priv->miibus.parent = dev;
-	priv->miibus.dev.device_node
-		= of_get_compatible_child(dev->device_node, "brcm,genet-mdio-v5");
+	priv->miibus.dev.of_node
+		= of_get_compatible_child(dev->of_node, "brcm,genet-mdio-v5");
 
 	ret = mdiobus_register(&priv->miibus);
 	if (ret)
diff --git a/drivers/net/cpsw.c b/drivers/net/cpsw.c
index 73671ae2d4..ec464e5c03 100644
--- a/drivers/net/cpsw.c
+++ b/drivers/net/cpsw.c
@@ -1229,7 +1229,7 @@ static void cpsw_add_slave(struct cpsw_slave *slave, struct device_node *child,
 			dev_warn(slave->cpsw->dev, "phy_id is deprecated, use phy-handle\n");
 	}
 
-	slave->dev.device_node = child;
+	slave->dev.of_node = child;
 	slave->phy_id = phy_id[1];
 	slave->phy_if = of_get_phy_mode(child);
 	slave->slave_num = i;
@@ -1238,7 +1238,7 @@ static void cpsw_add_slave(struct cpsw_slave *slave, struct device_node *child,
 static int cpsw_legacy_probe_dt(struct cpsw_priv *priv)
 {
 	struct device_d *dev = priv->dev;
-	struct device_node *np = dev->device_node, *child;
+	struct device_node *np = dev->of_node, *child;
 	int ret, i = 0;
 
 	ret = of_property_read_u32(np, "slaves", &priv->num_slaves);
@@ -1266,7 +1266,7 @@ static int cpsw_legacy_probe_dt(struct cpsw_priv *priv)
 static int cpsw_switch_probe_dt(struct cpsw_priv *priv)
 {
 	struct device_d *dev = priv->dev;
-	struct device_node *np = dev->device_node, *child;
+	struct device_node *np = dev->of_node, *child;
 	struct device_node *ports = NULL;
 	int ret, i = 0;
 
@@ -1342,14 +1342,14 @@ static int cpsw_probe(struct device_d *dev)
 		return PTR_ERR(iores);
 	regs = IOMEM(iores->start);
 
-	ret = of_platform_populate(dev->device_node, NULL, dev);
+	ret = of_platform_populate(dev->of_node, NULL, dev);
 	if (ret)
 		return ret;
 
 	priv = xzalloc(sizeof(*priv));
 	priv->dev = dev;
 
-	if (dev->device_node) {
+	if (dev->of_node) {
 		ret = cpsw_probe_dt(priv);
 		if (ret)
 			goto out;
diff --git a/drivers/net/davinci_emac.c b/drivers/net/davinci_emac.c
index ff35b746e2..463c5fc11e 100644
--- a/drivers/net/davinci_emac.c
+++ b/drivers/net/davinci_emac.c
@@ -539,7 +539,7 @@ static int davinci_emac_probe(struct device_d *dev)
 	struct davinci_emac_priv *priv;
 	uint32_t ctrl_reg_offset;
 	uint32_t ctrl_ram_offset;
-	struct device_node *np = dev->device_node;
+	struct device_node *np = dev->of_node;
 
 	dev_dbg(dev, "+ emac_probe\n");
 
diff --git a/drivers/net/designware.c b/drivers/net/designware.c
index afc275e81e..c0683bfec4 100644
--- a/drivers/net/designware.c
+++ b/drivers/net/designware.c
@@ -427,12 +427,12 @@ static int dwc_probe_dt(struct device_d *dev, struct dw_eth_dev *priv)
 		return -ENODEV;
 
 	priv->phy_addr = -1;
-	priv->interface = of_get_phy_mode(dev->device_node);
+	priv->interface = of_get_phy_mode(dev->of_node);
 
 	/* Set MDIO bus device node, if present. */
-	for_each_child_of_node(dev->device_node, child) {
+	for_each_child_of_node(dev->of_node, child) {
 		if (of_device_is_compatible(child, "snps,dwmac-mdio")) {
-			priv->miibus.dev.device_node = child;
+			priv->miibus.dev.of_node = child;
 			break;
 		}
 	}
diff --git a/drivers/net/designware_eqos.c b/drivers/net/designware_eqos.c
index 7ff0b8489c..e998d35d5c 100644
--- a/drivers/net/designware_eqos.c
+++ b/drivers/net/designware_eqos.c
@@ -204,7 +204,7 @@ static int eqos_phy_reset(struct device_d *dev, struct eqos *eqos)
 	if (!gpio_is_valid(phy_reset))
 		return 0;
 
-	of_property_read_u32_array(dev->device_node,
+	of_property_read_u32_array(dev->of_node,
 				   "snps,reset-delays-us",
 				   delays, ARRAY_SIZE(delays));
 
@@ -808,14 +808,14 @@ static void eqos_probe_dt(struct device_d *dev, struct eqos *eqos)
 {
 	struct device_node *child;
 
-	eqos->interface = of_get_phy_mode(dev->device_node);
+	eqos->interface = of_get_phy_mode(dev->of_node);
 	eqos->phy_addr = -1;
 
 	/* Set MDIO bus device node, if present. */
-	for_each_child_of_node(dev->device_node, child) {
+	for_each_child_of_node(dev->of_node, child) {
 		if (of_device_is_compatible(child, "snps,dwmac-mdio") ||
 		    (child->name && !of_node_cmp(child->name, "mdio"))) {
-			eqos->miibus.dev.device_node = child;
+			eqos->miibus.dev.of_node = child;
 			break;
 		}
 	}
@@ -823,7 +823,7 @@ static void eqos_probe_dt(struct device_d *dev, struct eqos *eqos)
 
 int eqos_probe(struct device_d *dev, const struct eqos_ops *ops, void *priv)
 {
-	struct device_node *np = dev->device_node;
+	struct device_node *np = dev->of_node;
 	struct mii_bus *miibus;
 	struct resource *iores;
 	struct eqos *eqos;
@@ -863,9 +863,9 @@ int eqos_probe(struct device_d *dev, const struct eqos_ops *ops, void *priv)
 	miibus->write = eqos_mdio_write;
 	miibus->priv = eqos;
 
-	miibus->dev.device_node = of_get_compatible_child(np, "snps,dwmac-mdio");
-	if (!miibus->dev.device_node)
-		miibus->dev.device_node = of_get_child_by_name(np, "mdio");
+	miibus->dev.of_node = of_get_compatible_child(np, "snps,dwmac-mdio");
+	if (!miibus->dev.of_node)
+		miibus->dev.of_node = of_get_child_by_name(np, "mdio");
 
 	ret = eqos_init(dev, eqos);
 	if (ret)
diff --git a/drivers/net/designware_rockchip.c b/drivers/net/designware_rockchip.c
index a3859dce0c..fbb6be5fa1 100644
--- a/drivers/net/designware_rockchip.c
+++ b/drivers/net/designware_rockchip.c
@@ -232,7 +232,7 @@ static void eqos_rk_adjust_link(struct eth_device *edev)
 
 static int eqos_init_rk_gmac(struct device_d *dev, struct eqos *eqos)
 {
-	struct device_node *np = dev->device_node;
+	struct device_node *np = dev->of_node;
 	struct eqos_rk_gmac *priv = to_rk_gmac(eqos);
 	int i = 0, ret;
 	const char *strings;
diff --git a/drivers/net/designware_socfpga.c b/drivers/net/designware_socfpga.c
index d6c28af45e..0c2bc5797d 100644
--- a/drivers/net/designware_socfpga.c
+++ b/drivers/net/designware_socfpga.c
@@ -162,7 +162,7 @@ static int socfpga_dwc_probe_dt(struct device_d *dev, struct socfpga_dwc_dev *pr
 	if (!IS_ENABLED(CONFIG_OFTREE))
 		return -ENODEV;
 
-	ret = of_property_read_u32_index(dev->device_node, "altr,sysmgr-syscon",
+	ret = of_property_read_u32_index(dev->of_node, "altr,sysmgr-syscon",
 					 1, &reg_offset);
 	if (ret) {
 		dev_err(dev, "Could not read reg_offset from sysmgr-syscon! Please update the devicetree.\n");
@@ -170,14 +170,15 @@ static int socfpga_dwc_probe_dt(struct device_d *dev, struct socfpga_dwc_dev *pr
 		return -EINVAL;
 	}
 
-	ret = of_property_read_u32_index(dev->device_node, "altr,sysmgr-syscon",
+	ret = of_property_read_u32_index(dev->of_node, "altr,sysmgr-syscon",
 					 2, &reg_shift);
 	if (ret) {
 		dev_err(dev, "Could not read reg_shift from sysmgr-syscon! Please update the devicetree.\n");
 		return -EINVAL;
 	}
 
-	priv->f2h_ptp_ref_clk = of_property_read_bool(dev->device_node, "altr,f2h_ptp_ref_clk");
+	priv->f2h_ptp_ref_clk = of_property_read_bool(dev->of_node,
+						      "altr,f2h_ptp_ref_clk");
 
 	priv->reg_offset = reg_offset;
 	priv->reg_shift = reg_shift;
@@ -215,7 +216,7 @@ static int socfpga_dwc_ether_probe(struct device_d *dev)
 
 	dwc_dev->priv = priv;
 
-	dwc_dev->sys_mgr_base = syscon_base_lookup_by_phandle(dev->device_node,
+	dwc_dev->sys_mgr_base = syscon_base_lookup_by_phandle(dev->of_node,
 							      "altr,sysmgr-syscon");
 	if (IS_ERR(dwc_dev->sys_mgr_base)) {
 		dev_err(dev, "Could not get sysmgr-syscon node\n");
diff --git a/drivers/net/designware_starfive.c b/drivers/net/designware_starfive.c
index 3dc9d14e11..c6acb94644 100644
--- a/drivers/net/designware_starfive.c
+++ b/drivers/net/designware_starfive.c
@@ -67,7 +67,8 @@ static int starfive_dwc_ether_probe(struct device_d *dev)
 		{ .id = "tx" },
 	};
 
-	regmap = syscon_regmap_lookup_by_phandle(dev->device_node, "starfive,sysmain");
+	regmap = syscon_regmap_lookup_by_phandle(dev->of_node,
+						 "starfive,sysmain");
 	if (IS_ERR(regmap)) {
 		dev_err(dev, "Could not get starfive,sysmain node\n");
 		return PTR_ERR(regmap);
diff --git a/drivers/net/designware_stm32.c b/drivers/net/designware_stm32.c
index 43f2d0987c..a8e5bfbfad 100644
--- a/drivers/net/designware_stm32.c
+++ b/drivers/net/designware_stm32.c
@@ -114,7 +114,7 @@ static int eqos_set_mode_stm32(struct eqos_stm32 *priv, phy_interface_t interfac
 
 static int eqos_init_stm32(struct device_d *dev, struct eqos *eqos)
 {
-	struct device_node *np = dev->device_node;
+	struct device_node *np = dev->of_node;
 	struct eqos_stm32 *priv = to_stm32(eqos);
 	struct clk_bulk_data *eth_ck;
 	int ret;
@@ -126,14 +126,14 @@ static int eqos_init_stm32(struct device_d *dev, struct eqos *eqos)
 	priv->eth_ref_clk_sel_reg =
 		of_property_read_bool(np, "st,eth-ref-clk-sel");
 
-	priv->regmap = syscon_regmap_lookup_by_phandle(dev->device_node,
+	priv->regmap = syscon_regmap_lookup_by_phandle(dev->of_node,
 						       "st,syscon");
 	if (IS_ERR(priv->regmap)) {
 		dev_err(dev, "Could not get st,syscon node\n");
 		return PTR_ERR(priv->regmap);
 	}
 
-	ret = of_property_read_u32_index(dev->device_node, "st,syscon",
+	ret = of_property_read_u32_index(dev->of_node, "st,syscon",
 					 1, &priv->mode_reg);
 	if (ret) {
 		dev_err(dev, "Can't get sysconfig mode offset (%s)\n",
diff --git a/drivers/net/designware_tegra186.c b/drivers/net/designware_tegra186.c
index 0cbbdb46a4..78818a1ed6 100644
--- a/drivers/net/designware_tegra186.c
+++ b/drivers/net/designware_tegra186.c
@@ -217,7 +217,7 @@ static int eqos_init_tegra186(struct device_d *dev, struct eqos *eqos)
 		return PTR_ERR(priv->rst);
 	}
 
-	phy_reset = of_get_named_gpio(dev->device_node, "phy-reset-gpios", 0);
+	phy_reset = of_get_named_gpio(dev->of_node, "phy-reset-gpios", 0);
 	if (gpio_is_valid(phy_reset)) {
 		ret = gpio_request(phy_reset, "phy-reset");
 		if (ret)
diff --git a/drivers/net/dm9k.c b/drivers/net/dm9k.c
index d183ab55c9..a13e94e164 100644
--- a/drivers/net/dm9k.c
+++ b/drivers/net/dm9k.c
@@ -722,7 +722,7 @@ static int dm9k_init_dev(struct eth_device *edev)
 
 static int dm9000_parse_dt(struct device_d *dev, struct dm9k *priv)
 {
-	struct device_node *np = dev->device_node;
+	struct device_node *np = dev->of_node;
 	uint32_t prop;
 
 	if (!IS_ENABLED(CONFIG_OFDEVICE) || !np)
diff --git a/drivers/net/dsa.c b/drivers/net/dsa.c
index bc33892f39..1d34221dcb 100644
--- a/drivers/net/dsa.c
+++ b/drivers/net/dsa.c
@@ -59,7 +59,7 @@ static int dsa_port_probe(struct eth_device *edev)
 	int ret;
 
 	if (ops->port_probe) {
-		interface = of_get_phy_mode(dp->dev->device_node);
+		interface = of_get_phy_mode(dp->dev->of_node);
 		ret = ops->port_probe(dp, dp->index, interface);
 		if (ret)
 			return ret;
@@ -93,7 +93,7 @@ static int dsa_port_start(struct eth_device *edev)
 	if (dp->enabled)
 		return -EBUSY;
 
-	interface = of_get_phy_mode(dp->dev->device_node);
+	interface = of_get_phy_mode(dp->dev->of_node);
 
 	if (ops->port_pre_enable) {
 		/* In case of RMII interface we need to enable RMII clock
@@ -416,7 +416,7 @@ int dsa_register_switch(struct dsa_switch *ds)
 		return -ENODEV;
 	}
 
-	if (!ds->dev->device_node)
+	if (!ds->dev->of_node)
 		return -ENODEV;
 
 	if (!ds->num_ports || ds->num_ports > DSA_MAX_PORTS) {
@@ -424,7 +424,7 @@ int dsa_register_switch(struct dsa_switch *ds)
 		return -EINVAL;
 	}
 
-	ret = dsa_switch_parse_ports_of(ds, ds->dev->device_node);
+	ret = dsa_switch_parse_ports_of(ds, ds->dev->of_node);
 	if (ret)
 		return ret;
 
diff --git a/drivers/net/e1000/eeprom.c b/drivers/net/e1000/eeprom.c
index 27143bd6d0..d7f5afe66d 100644
--- a/drivers/net/e1000/eeprom.c
+++ b/drivers/net/e1000/eeprom.c
@@ -410,8 +410,7 @@ static void e1000_eeprom_uses_microwire(struct e1000_eeprom_info *eeprom,
 
 static size_t e1000_igb_get_flash_size(struct e1000_hw *hw)
 {
-	struct device_node *node =
-		hw->pdev->dev.device_node;
+	struct device_node *node = hw->pdev->dev.of_node;
 	u32 flash_size;
 	uint32_t fla;
 	int ret = 0;
diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index a2fc02d6f9..5e34357371 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -657,15 +657,15 @@ static int fec_probe_dt(struct device_d *dev, struct fec_priv *fec)
 	struct device_node *mdiobus;
 	int ret;
 
-	ret = of_get_phy_mode(dev->device_node);
+	ret = of_get_phy_mode(dev->of_node);
 	if (ret < 0)
 		fec->interface = PHY_INTERFACE_MODE_MII;
 	else
 		fec->interface = ret;
 
-	mdiobus = of_get_child_by_name(dev->device_node, "mdio");
+	mdiobus = of_get_child_by_name(dev->of_node, "mdio");
 	if (mdiobus)
-		fec->miibus.dev.device_node = mdiobus;
+		fec->miibus.dev.of_node = mdiobus;
 
 	return 0;
 }
@@ -825,10 +825,11 @@ static int fec_probe(struct device_d *dev)
 		goto release_res;
 	}
 
-	phy_reset = of_get_named_gpio(dev->device_node, "phy-reset-gpios", 0);
+	phy_reset = of_get_named_gpio(dev->of_node, "phy-reset-gpios", 0);
 	if (gpio_is_valid(phy_reset)) {
-		of_property_read_u32(dev->device_node, "phy-reset-duration", &msec);
-		of_property_read_u32(dev->device_node, "phy-reset-post-delay",
+		of_property_read_u32(dev->of_node, "phy-reset-duration",
+				     &msec);
+		of_property_read_u32(dev->of_node, "phy-reset-post-delay",
 				     &phy_post_delay);
 		/* valid reset duration should be less than 1s */
 		if (phy_post_delay > 1000)
@@ -873,7 +874,7 @@ static int fec_probe(struct device_d *dev)
 	if (ret < 0)
 		goto free_xbd;
 
-	if (dev->device_node) {
+	if (dev->of_node) {
 		ret = fec_probe_dt(dev, fec);
 		fec->phy_addr = -1;
 	} else if (pdata) {
diff --git a/drivers/net/fsl-fman.c b/drivers/net/fsl-fman.c
index 4d72933105..617fd11e25 100644
--- a/drivers/net/fsl-fman.c
+++ b/drivers/net/fsl-fman.c
@@ -1121,7 +1121,7 @@ static int fsl_fman_port_probe(struct device_d *dev)
 
 static int fsl_fman_memac_port_bind(struct fm_eth *fm_eth, enum fman_port_type type)
 {
-	struct device_node *macnp = fm_eth->dev->device_node;
+	struct device_node *macnp = fm_eth->dev->of_node;
 	struct device_node *portnp;
 	struct device_d *portdev;
 	struct fsl_fman_port *port;
@@ -1178,7 +1178,7 @@ static int fsl_fman_memac_probe(struct device_d *dev)
 	if (ret)
 		return ret;
 
-	phy_mode = of_get_phy_mode(dev->device_node);
+	phy_mode = of_get_phy_mode(dev->of_node);
 	if (phy_mode < 0)
 		return phy_mode;
 
@@ -1306,7 +1306,7 @@ static int fsl_fman_probe(struct device_d *dev)
 	reg = IOMEM(iores->start);
 	dev->priv = reg;
 
-	ret = of_platform_populate(dev->device_node, NULL, dev);
+	ret = of_platform_populate(dev->of_node, NULL, dev);
 	if (ret)
 		return ret;
 
diff --git a/drivers/net/liteeth.c b/drivers/net/liteeth.c
index 547f5486ae..c713d3412f 100644
--- a/drivers/net/liteeth.c
+++ b/drivers/net/liteeth.c
@@ -274,7 +274,7 @@ static int liteeth_set_ethaddr(struct eth_device *edev,
 
 static int liteeth_probe(struct device_d *dev)
 {
-	struct device_node *np = dev->device_node;
+	struct device_node *np = dev->of_node;
 	struct eth_device *edev;
 	void __iomem *buf_base;
 	struct liteeth *priv;
diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index 5dbca1553e..7ccc112c0c 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -815,19 +815,19 @@ static int macb_probe(struct device_d *dev)
 		macb->phy_flags = pdata->phy_flags;
 		pclk_name = "macb_clk";
 		hclk_name = NULL;
-	} else if (IS_ENABLED(CONFIG_OFDEVICE) && dev->device_node) {
+	} else if (IS_ENABLED(CONFIG_OFDEVICE) && dev->of_node) {
 		int ret;
 		struct device_node *mdiobus;
 
-		ret = of_get_phy_mode(dev->device_node);
+		ret = of_get_phy_mode(dev->of_node);
 		if (ret < 0)
 			macb->interface = PHY_INTERFACE_MODE_MII;
 		else
 			macb->interface = ret;
 
-		mdiobus = of_get_child_by_name(dev->device_node, "mdio");
+		mdiobus = of_get_child_by_name(dev->of_node, "mdio");
 		if (mdiobus)
-			macb->miibus.dev.device_node = mdiobus;
+			macb->miibus.dev.of_node = mdiobus;
 
 		macb->phy_addr = -1;
 		pclk_name = "pclk";
diff --git a/drivers/net/mvneta.c b/drivers/net/mvneta.c
index 359c70c927..6dc0ceeafc 100644
--- a/drivers/net/mvneta.c
+++ b/drivers/net/mvneta.c
@@ -720,7 +720,7 @@ static int mvneta_probe(struct device_d *dev)
 		return PTR_ERR(priv->clk);
 	clk_enable(priv->clk);
 
-	ret = of_get_phy_mode(dev->device_node);
+	ret = of_get_phy_mode(dev->of_node);
 	if (ret < 0)
 		return ret;
 	priv->intf = ret;
diff --git a/drivers/net/orion-gbe.c b/drivers/net/orion-gbe.c
index 0ae94e6840..99fde13f3e 100644
--- a/drivers/net/orion-gbe.c
+++ b/drivers/net/orion-gbe.c
@@ -451,7 +451,7 @@ static int port_probe(struct device_d *parent, struct port_priv *port)
 	dev_set_name(dev, "%08x.ethernet-port", (u32)gbe->regs);
 	dev->id = port->portno;
 	dev->parent = parent;
-	dev->device_node = port->np;
+	dev->of_node = port->np;
 	ret = register_device(dev);
 	if (ret)
 		return ret;
@@ -499,13 +499,13 @@ static int orion_gbe_probe(struct device_d *dev)
 	 * Although untested, the driver should also be able to
 	 * deal with multi-port controllers.
 	 */
-	for_each_child_of_node(dev->device_node, pnp)
+	for_each_child_of_node(dev->of_node, pnp)
 		gbe->num_ports++;
 
 	gbe->ports = xzalloc(gbe->num_ports * sizeof(*gbe->ports));
 
 	ppriv = gbe->ports;
-	for_each_child_of_node(dev->device_node, pnp) {
+	for_each_child_of_node(dev->of_node, pnp) {
 		ppriv->np = pnp;
 
 		ret = port_probe(dev, ppriv);
diff --git a/drivers/net/phy/at803x.c b/drivers/net/phy/at803x.c
index 93a8bb9df1..2e62d03bf9 100644
--- a/drivers/net/phy/at803x.c
+++ b/drivers/net/phy/at803x.c
@@ -139,7 +139,7 @@ static bool at803x_match_phy_id(struct phy_device *phydev, u32 phy_id)
 static int at803x_parse_dt(struct phy_device *phydev)
 {
 	const struct device_d *dev = &phydev->dev;
-	const struct device_node *node = dev->device_node;
+	const struct device_node *node = dev->of_node;
 	struct at803x_priv *priv = phydev->priv;
 	unsigned int sel;
 	u32 freq, strength;
diff --git a/drivers/net/phy/dp83867.c b/drivers/net/phy/dp83867.c
index 2435df1b47..df6ab74de6 100644
--- a/drivers/net/phy/dp83867.c
+++ b/drivers/net/phy/dp83867.c
@@ -165,7 +165,7 @@ static int dp83867_of_init(struct phy_device *phydev)
 {
 	struct dp83867_private *dp83867 = phydev->priv;
 	struct device_d *dev = &phydev->dev;
-	struct device_node *of_node = dev->device_node;
+	struct device_node *of_node = dev->of_node;
 	int ret;
 
 	if (!of_node)
diff --git a/drivers/net/phy/marvell.c b/drivers/net/phy/marvell.c
index d81632dfc7..c0b819b109 100644
--- a/drivers/net/phy/marvell.c
+++ b/drivers/net/phy/marvell.c
@@ -188,10 +188,10 @@ static int marvell_of_reg_init(struct phy_device *phydev)
 	const __be32 *paddr;
 	int len, i, saved_page, current_page, page_changed, ret;
 
-	if (!phydev->dev.device_node)
+	if (!phydev->dev.of_node)
 		return 0;
 
-	paddr = of_get_property(phydev->dev.device_node,
+	paddr = of_get_property(phydev->dev.of_node,
 				"marvell,reg-init", &len);
 	if (!paddr || len < (4 * sizeof(*paddr)))
 		return 0;
diff --git a/drivers/net/phy/mdio-gpio.c b/drivers/net/phy/mdio-gpio.c
index c64f2b3925..f161685715 100644
--- a/drivers/net/phy/mdio-gpio.c
+++ b/drivers/net/phy/mdio-gpio.c
@@ -50,7 +50,7 @@ static struct mdio_gpio_info *mdio_gpio_of_get_info(struct device_d *dev)
 
 	info = xzalloc(sizeof(*info));
 
-	ret = of_get_gpio_flags(dev->device_node, 0, &flags);
+	ret = of_get_gpio_flags(dev->of_node, 0, &flags);
 	if (ret < 0) {
 		dev_dbg(dev, "failed to get MDC information from DT\n");
 		goto free_info;
@@ -59,7 +59,7 @@ static struct mdio_gpio_info *mdio_gpio_of_get_info(struct device_d *dev)
 	info->mdc = ret;
 	info->mdc_active_low = flags & OF_GPIO_ACTIVE_LOW;
 
-	ret = of_get_gpio_flags(dev->device_node, 1, &flags);
+	ret = of_get_gpio_flags(dev->of_node, 1, &flags);
 	if (ret < 0) {
 		dev_dbg(dev, "failed to get MDIO information from DT\n");
 		goto free_info;
@@ -68,7 +68,7 @@ static struct mdio_gpio_info *mdio_gpio_of_get_info(struct device_d *dev)
 	info->mdio = ret;
 	info->mdio_active_low = flags & OF_GPIO_ACTIVE_LOW;
 
-	ret = of_get_gpio_flags(dev->device_node, 2, &flags);
+	ret = of_get_gpio_flags(dev->of_node, 2, &flags);
 	if (ret > 0) {
 		dev_dbg(dev, "found MDO information in DT\n");
 		info->mdo = ret;
@@ -145,7 +145,7 @@ static struct mdiobb_ops mdio_gpio_ops = {
 static int mdio_gpio_probe(struct device_d *dev)
 {
 	int ret;
-	struct device_node *np = dev->device_node;
+	struct device_node *np = dev->of_node;
 	struct mdio_gpio_info *info;
 	struct mii_bus *bus;
 
@@ -202,7 +202,7 @@ static int mdio_gpio_probe(struct device_d *dev)
 
 	bus = alloc_mdio_bitbang(&info->ctrl);
 	bus->parent = dev;
-	bus->dev.device_node = np;
+	bus->dev.of_node = np;
 
 	dev->priv = bus;
 
diff --git a/drivers/net/phy/mdio-mux-gpio.c b/drivers/net/phy/mdio-mux-gpio.c
index a36782c0b6..7d93fb2aa0 100644
--- a/drivers/net/phy/mdio-mux-gpio.c
+++ b/drivers/net/phy/mdio-mux-gpio.c
@@ -74,7 +74,7 @@ static int mdio_mux_gpio_probe(struct device_d *dev)
 
 	s = xzalloc(sizeof(*s));
 
-	s->gpios_num = of_gpio_count(dev->device_node);
+	s->gpios_num = of_gpio_count(dev->of_node);
 	if (s->gpios_num <= 0) {
 		dev_err(dev, "No GPIOs specified\n");
 		r = -EINVAL;
@@ -86,7 +86,7 @@ static int mdio_mux_gpio_probe(struct device_d *dev)
 	for (i = 0; i < s->gpios_num; i++) {
 		enum of_gpio_flags flags;
 
-		r = of_get_gpio_flags(dev->device_node, i, &flags);
+		r = of_get_gpio_flags(dev->of_node, i, &flags);
 		if (!gpio_is_valid(r)) {
 			r = (r < 0) ? r : -EINVAL;
 			goto free_mem;
@@ -105,7 +105,7 @@ static int mdio_mux_gpio_probe(struct device_d *dev)
 		goto free_gpios;
 
 
-	r = mdio_mux_init(dev, dev->device_node,
+	r = mdio_mux_init(dev, dev->of_node,
 			  mdio_mux_gpio_switch_fn, s, NULL);
 	if (r < 0)
 		goto free_gpios;
diff --git a/drivers/net/phy/mdio-mux.c b/drivers/net/phy/mdio-mux.c
index 1e6278ef35..67d5664de9 100644
--- a/drivers/net/phy/mdio-mux.c
+++ b/drivers/net/phy/mdio-mux.c
@@ -117,7 +117,7 @@ int mdio_mux_init(struct device_d *dev,
 		cb->mii_bus.parent = dev;
 		cb->mii_bus.read   = mdio_mux_read;
 		cb->mii_bus.write  = mdio_mux_write;
-		cb->mii_bus.dev.device_node = child_bus_node;
+		cb->mii_bus.dev.of_node = child_bus_node;
 
 		r = mdiobus_register(&cb->mii_bus);
 		if (r) {
diff --git a/drivers/net/phy/mdio-mvebu.c b/drivers/net/phy/mdio-mvebu.c
index 289ff4b05d..0672481fea 100644
--- a/drivers/net/phy/mdio-mvebu.c
+++ b/drivers/net/phy/mdio-mvebu.c
@@ -119,7 +119,7 @@ static int mvebu_mdio_probe(struct device_d *dev)
 		return PTR_ERR(priv->clk);
 	clk_enable(priv->clk);
 
-	priv->miibus.dev.device_node = dev->device_node;
+	priv->miibus.dev.of_node = dev->of_node;
 	priv->miibus.priv = priv;
 	priv->miibus.parent = dev;
 	priv->miibus.read = mvebu_mdio_read;
diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
index a68b0e47c0..ee38143096 100644
--- a/drivers/net/phy/mdio_bus.c
+++ b/drivers/net/phy/mdio_bus.c
@@ -119,7 +119,7 @@ static int of_mdiobus_register_phy(struct mii_bus *mdio, struct device_node *chi
 	 * Associate the OF node with the device structure so it
 	 * can be looked up later
 	 */
-	phy->dev.device_node = child;
+	phy->dev.of_node = child;
 
 	/*
 	 * All data is now stored in the phy struct;
@@ -145,7 +145,7 @@ static int of_mdiobus_register_device(struct mii_bus *mdio,
 	if (IS_ERR(mdiodev))
 		return PTR_ERR(mdiodev);
 
-	mdiodev->dev.device_node = child;
+	mdiodev->dev.of_node = child;
 
 	ret = mdio_register_device(mdiodev);
 	if (ret)
@@ -314,16 +314,16 @@ int mdiobus_register(struct mii_bus *bus)
 
 	pr_info("%s: probed\n", dev_name(&bus->dev));
 
-	if (bus->dev.device_node) {
+	if (bus->dev.of_node) {
 		/* Register PHY's as child node to mdio node */
-		of_mdiobus_register(bus, bus->dev.device_node);
+		of_mdiobus_register(bus, bus->dev.of_node);
 	}
-	else if (bus->parent->device_node) {
+	else if (bus->parent->of_node) {
 		/*
 		 * Register PHY's as child node to the ethernet node,
 		 * if there was no mdio node
 		 */
-		of_mdiobus_register(bus, bus->parent->device_node);
+		of_mdiobus_register(bus, bus->parent->of_node);
 	}
 
 	return 0;
@@ -399,7 +399,7 @@ struct mii_bus *of_mdio_find_bus(struct device_node *mdio_bus_np)
 		return NULL;
 
 	for_each_mii_bus(mii)
-		if (mii->dev.device_node == mdio_bus_np)
+		if (mii->dev.of_node == mdio_bus_np)
 			return mii;
 
 	return NULL;
@@ -509,7 +509,7 @@ static struct cdev_operations phydev_ops = {
 
 static void of_set_phy_supported(struct phy_device *phydev)
 {
-	struct device_node *node = phydev->dev.device_node;
+	struct device_node *node = phydev->dev.of_node;
 	u32 max_speed;
 
 	if (!IS_ENABLED(CONFIG_OFDEVICE))
diff --git a/drivers/net/phy/micrel.c b/drivers/net/phy/micrel.c
index 8a30faa92b..7b551969ab 100644
--- a/drivers/net/phy/micrel.c
+++ b/drivers/net/phy/micrel.c
@@ -129,7 +129,7 @@ static int kszphy_rmii_clk_sel(struct phy_device *phydev, bool val)
 static int kszphy_led_mode(struct phy_device *phydev, int reg, int shift)
 {
 	const struct device_d *dev = &phydev->dev;
-	const struct device_node *of_node = dev->device_node ? : dev->parent->device_node;
+	const struct device_node *of_node = dev->of_node ? : dev->parent->of_node;
 	u32 val;
 
 	if (!of_property_read_u32(of_node, "micrel,led-mode", &val)) {
@@ -279,7 +279,7 @@ static int ksz9021_load_values_from_of(struct phy_device *phydev,
 static int ksz9021_config_init(struct phy_device *phydev)
 {
 	const struct device_d *dev = &phydev->dev;
-	const struct device_node *of_node = dev->device_node;
+	const struct device_node *of_node = dev->of_node;
 	const char *clk_pad_skew_names[] = {
 		"txen-skew-ps", "txc-skew-ps",
 		"rxdv-skew-ps", "rxc-skew-ps"
@@ -293,8 +293,8 @@ static int ksz9021_config_init(struct phy_device *phydev)
 		"txd2-skew-ps", "txd3-skew-ps"
 	};
 
-	if (!of_node && dev->parent->device_node)
-		of_node = dev->parent->device_node;
+	if (!of_node && dev->parent->of_node)
+		of_node = dev->parent->of_node;
 
 	if (of_node) {
 		ksz9021_load_values_from_of(phydev, of_node,
@@ -472,7 +472,7 @@ static int ksz9031_config_rgmii_delay(struct phy_device *phydev)
 static int ksz9031_config_init(struct phy_device *phydev)
 {
 	const struct device_d *dev = &phydev->dev;
-	const struct device_node *of_node = dev->device_node;
+	const struct device_node *of_node = dev->of_node;
 	static const char *clk_skews[2] = {"rxc-skew-ps", "txc-skew-ps"};
 	static const char *rx_data_skews[4] = {
 		"rxd0-skew-ps", "rxd1-skew-ps",
@@ -485,8 +485,8 @@ static int ksz9031_config_init(struct phy_device *phydev)
 	static const char *control_skews[2] = {"txen-skew-ps", "rxdv-skew-ps"};
 	int ret;
 
-	if (!of_node && dev->parent->device_node)
-		of_node = dev->parent->device_node;
+	if (!of_node && dev->parent->of_node)
+		of_node = dev->parent->of_node;
 
 	if (of_node) {
 		if (phy_interface_is_rgmii(phydev)) {
@@ -612,7 +612,7 @@ static int ksz8873mll_config_init(struct phy_device *phydev)
 static int kszphy_probe(struct phy_device *phydev)
 {
 	struct device_d *dev = &phydev->dev;
-	struct device_node *np = dev->device_node;
+	struct device_node *np = dev->of_node;
 	struct phy_driver *drv = to_phy_driver(dev->driver);
 	const struct kszphy_type *type = drv->driver_data;
 	struct kszphy_priv *priv;
diff --git a/drivers/net/phy/mv88e6xxx/chip.c b/drivers/net/phy/mv88e6xxx/chip.c
index a7d707095b..07df19e99b 100644
--- a/drivers/net/phy/mv88e6xxx/chip.c
+++ b/drivers/net/phy/mv88e6xxx/chip.c
@@ -839,7 +839,7 @@ static const struct nvmem_bus mv88e6xxx_eeprom_nvmem_bus = {
 
 static int mv88e6xxx_probe(struct device_d *dev)
 {
-	struct device_node *np = dev->device_node;
+	struct device_node *np = dev->of_node;
 	struct device_node *mdio_node;
 	struct mv88e6xxx_chip *chip;
 	enum of_gpio_flags of_flags;
@@ -941,7 +941,7 @@ static int mv88e6xxx_probe(struct device_d *dev)
 
 	mdio_node = of_get_child_by_name(np, "mdio");
 	if (mdio_node)
-		chip->miibus.dev.device_node = mdio_node;
+		chip->miibus.dev.of_node = mdio_node;
 
 	err = mv88e6xxx_port_probe(chip);
 	if (err)
diff --git a/drivers/net/phy/mv88e6xxx/port.c b/drivers/net/phy/mv88e6xxx/port.c
index 93a789e658..5a00802361 100644
--- a/drivers/net/phy/mv88e6xxx/port.c
+++ b/drivers/net/phy/mv88e6xxx/port.c
@@ -565,7 +565,7 @@ device_phy_driver(mv88e6xxx_port_driver);
 int mv88e6xxx_port_probe(struct mv88e6xxx_chip *chip)
 {
 	struct device_d *dev = chip->dev;
-	struct device_node *np = dev->device_node;
+	struct device_node *np = dev->of_node;
 	struct device_node *port_node, *switch_node;
 	struct device_node *port_nodes[DSA_MAX_PORTS] = { NULL };
 	int err, i;
@@ -659,7 +659,7 @@ int mv88e6xxx_port_probe(struct mv88e6xxx_chip *chip)
  		phydev = phy_device_create(chip->parent_miibus,
 					   chip->info->port_base_addr + i,
 					   MV88E6XXX_SWITCH_PORT_PHY_ID);
-		phydev->dev.device_node = port_nodes[i];
+		phydev->dev.of_node = port_nodes[i];
 		phydev->dev.priv = chip;
 		phydev->duplex = DUPLEX_UNFORCED;
 
diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index 56ec8a28df..7377cb014d 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -338,16 +338,18 @@ static struct phy_device *of_mdio_find_phy(struct eth_device *edev)
 	if (!IS_ENABLED(CONFIG_OFDEVICE))
 		return NULL;
 
-	if (!edev->parent || !edev->parent->device_node)
+	if (!edev->parent || !edev->parent->of_node)
 		return NULL;
 
-	phy_node = of_parse_phandle(edev->parent->device_node, "phy-handle", 0);
+	phy_node = of_parse_phandle(edev->parent->of_node, "phy-handle", 0);
 	if (!phy_node)
-		phy_node = of_parse_phandle(edev->parent->device_node, "phy", 0);
+		phy_node = of_parse_phandle(edev->parent->of_node, "phy", 0);
 	if (!phy_node)
-		phy_node = of_parse_phandle(edev->parent->device_node, "phy-device", 0);
+		phy_node = of_parse_phandle(edev->parent->of_node,
+					    "phy-device", 0);
 	if (!phy_node) {
-		phy_node = of_get_child_by_name(edev->parent->device_node, "fixed-link");
+		phy_node = of_get_child_by_name(edev->parent->of_node,
+						"fixed-link");
 		if (phy_node)
 			return of_phy_register_fixed_link(phy_node, edev);
 	}
@@ -358,7 +360,7 @@ static struct phy_device *of_mdio_find_phy(struct eth_device *edev)
 	if (!of_property_read_u32(phy_node, "reg", &addr)) {
 		of_device_ensure_probed(phy_node->parent);
 		for_each_mii_bus(bus) {
-			if (bus->parent->device_node == phy_node->parent) {
+			if (bus->parent->of_node == phy_node->parent) {
 				struct phy_device *phy = mdiobus_scan(bus, addr);
 				if (!IS_ERR(phy))
 					return phy;
@@ -367,7 +369,7 @@ static struct phy_device *of_mdio_find_phy(struct eth_device *edev)
 	}
 
 	bus_for_each_device(&mdio_bus_type, dev) {
-		if (dev->device_node == phy_node)
+		if (dev->of_node == phy_node)
 			return container_of(dev, struct phy_device, dev);
 	}
 
diff --git a/drivers/net/smc911x.c b/drivers/net/smc911x.c
index 7fd5c2aadb..c660b1d13f 100644
--- a/drivers/net/smc911x.c
+++ b/drivers/net/smc911x.c
@@ -505,18 +505,18 @@ static int smc911x_probe(struct device_d *dev)
 		priv->shift = pdata->shift;
 		priv->flags = pdata->flags;
 		priv->phy_mask = pdata->phy_mask;
-	} else if (IS_ENABLED(CONFIG_OFDEVICE) && dev->device_node) {
-		ret = of_property_read_u32(dev->device_node, "reg-io-width", &val);
+	} else if (IS_ENABLED(CONFIG_OFDEVICE) && dev->of_node) {
+		ret = of_property_read_u32(dev->of_node, "reg-io-width", &val);
 		if (ret)
 			return ret;
 		is_32bit = (val == 4);
 
-		of_property_read_u32(dev->device_node, "reg-shift", &priv->shift);
+		of_property_read_u32(dev->of_node, "reg-shift", &priv->shift);
 
-		if (of_property_read_bool(dev->device_node, "smsc,force-internal-phy"))
+		if (of_property_read_bool(dev->of_node, "smsc,force-internal-phy"))
 			priv->flags |= SMC911X_FORCE_INTERNAL_PHY;
 
-		if (of_property_read_bool(dev->device_node, "smsc,force-external-phy"))
+		if (of_property_read_bool(dev->of_node, "smsc,force-external-phy"))
 			priv->flags |= SMC911X_FORCE_EXTERNAL_PHY;
 	}
 
diff --git a/drivers/nvmem/bsec.c b/drivers/nvmem/bsec.c
index 86b943a45d..937a1b223c 100644
--- a/drivers/nvmem/bsec.c
+++ b/drivers/nvmem/bsec.c
@@ -111,7 +111,7 @@ static int stm32_bsec_read_mac(struct bsec_priv *priv, int offset, u8 *mac)
 static void stm32_bsec_init_dt(struct bsec_priv *priv, struct device_d *dev,
 			       struct regmap *map)
 {
-	struct device_node *node = dev->device_node;
+	struct device_node *node = dev->of_node;
 	struct device_node *rnode;
 	u32 phandle, offset;
 	char mac[ETH_ALEN];
diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
index fded8b6f4b..c056b3b63a 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -100,7 +100,7 @@ static int nvmem_register_cdev(struct nvmem_device *nvmem, const char *name)
 	const char *alias;
 	int ret;
 
-	alias = of_alias_get(dev->device_node);
+	alias = of_alias_get(dev->of_node);
 
 	cdev->name = xstrdup(alias ?: name);
 	cdev->ops = &nvmem_chrdev_ops;
@@ -111,7 +111,7 @@ static int nvmem_register_cdev(struct nvmem_device *nvmem, const char *name)
 	if (ret)
 		return ret;
 
-	of_parse_partitions(cdev, dev->device_node);
+	of_parse_partitions(cdev, dev->of_node);
 	of_partitions_register_fixup(cdev);
 
 	return 0;
@@ -125,7 +125,7 @@ static struct nvmem_device *of_nvmem_find(struct device_node *nvmem_np)
 		return NULL;
 
 	list_for_each_entry(dev, &nvmem_devs, node)
-		if (dev->dev.device_node == nvmem_np)
+		if (dev->dev.of_node == nvmem_np)
 			return dev;
 
 	return NULL;
@@ -206,8 +206,8 @@ struct nvmem_device *nvmem_register(const struct nvmem_config *config)
 	nvmem->size = config->size;
 	nvmem->dev.parent = config->dev;
 	nvmem->bus = config->bus;
-	np = config->cdev ? config->cdev->device_node : config->dev->device_node;
-	nvmem->dev.device_node = np;
+	np = config->cdev ? config->cdev->device_node : config->dev->of_node;
+	nvmem->dev.of_node = np;
 	nvmem->priv = config->priv;
 
 	if (config->read_only || !config->bus->write || of_property_read_bool(np, "read-only"))
@@ -327,10 +327,10 @@ EXPORT_SYMBOL_GPL(of_nvmem_device_get);
  */
 struct nvmem_device *nvmem_device_get(struct device_d *dev, const char *dev_name)
 {
-	if (dev->device_node) { /* try dt first */
+	if (dev->of_node) { /* try dt first */
 		struct nvmem_device *nvmem;
 
-		nvmem = of_nvmem_device_get(dev->device_node, dev_name);
+		nvmem = of_nvmem_device_get(dev->of_node, dev_name);
 
 		if (!IS_ERR(nvmem) || PTR_ERR(nvmem) == -EPROBE_DEFER)
 			return nvmem;
@@ -467,8 +467,8 @@ struct nvmem_cell *nvmem_cell_get(struct device_d *dev, const char *cell_id)
 {
 	struct nvmem_cell *cell;
 
-	if (dev->device_node) { /* try dt first */
-		cell = of_nvmem_cell_get(dev->device_node, cell_id);
+	if (dev->of_node) { /* try dt first */
+		cell = of_nvmem_cell_get(dev->of_node, cell_id);
 		if (!IS_ERR(cell) || PTR_ERR(cell) == -EPROBE_DEFER)
 			return cell;
 	}
@@ -826,7 +826,7 @@ int nvmem_cell_read_variable_le_u32(struct device_d *dev, const char *cell_id,
 
 	len = sizeof(*val);
 
-	buf = nvmem_cell_get_and_read(dev->device_node, cell_id, len);
+	buf = nvmem_cell_get_and_read(dev->of_node, cell_id, len);
 	if (IS_ERR(buf))
 		return PTR_ERR(buf);
 
diff --git a/drivers/nvmem/eeprom_93xx46.c b/drivers/nvmem/eeprom_93xx46.c
index 0d19bc2877..0340697f2a 100644
--- a/drivers/nvmem/eeprom_93xx46.c
+++ b/drivers/nvmem/eeprom_93xx46.c
@@ -305,7 +305,7 @@ static int eeprom_93xx46_probe_dt(struct spi_device *spi)
 {
 	const struct of_device_id *of_id =
 		of_match_device(eeprom_93xx46_of_table, &spi->dev);
-	struct device_node *np = spi->dev.device_node;
+	struct device_node *np = spi->dev.of_node;
 	struct eeprom_93xx46_platform_data *pd;
 	enum of_gpio_flags of_flags;
 	unsigned long flags = GPIOF_OUT_INIT_INACTIVE;
@@ -374,7 +374,7 @@ static int eeprom_93xx46_probe(struct device_d *dev)
 	struct eeprom_93xx46_dev *edev;
 	int err;
 
-	if (dev->device_node) {
+	if (dev->of_node) {
 		err = eeprom_93xx46_probe_dt(spi);
 		if (err < 0)
 			return err;
diff --git a/drivers/nvmem/ocotp.c b/drivers/nvmem/ocotp.c
index 08171cb5cd..d3d05fe46f 100644
--- a/drivers/nvmem/ocotp.c
+++ b/drivers/nvmem/ocotp.c
@@ -644,7 +644,7 @@ static int imx_ocotp_init_dt(struct ocotp_priv *priv)
 {
 	char mac[MAC_BYTES];
 	const __be32 *prop;
-	struct device_node *node = priv->dev.parent->device_node;
+	struct device_node *node = priv->dev.parent->of_node;
 	u32 tester4;
 	int ret, len;
 
diff --git a/drivers/nvmem/rave-sp-eeprom.c b/drivers/nvmem/rave-sp-eeprom.c
index 2345b24936..7aef0d90a9 100644
--- a/drivers/nvmem/rave-sp-eeprom.c
+++ b/drivers/nvmem/rave-sp-eeprom.c
@@ -293,7 +293,7 @@ static int rave_sp_eeprom_probe(struct device_d *dev)
 	struct nvmem_device *nvmem;
 	u32 reg[2], size;
 
-	if (of_property_read_u32_array(dev->device_node,
+	if (of_property_read_u32_array(dev->of_node,
 				       "reg", reg, ARRAY_SIZE(reg))) {
 		dev_err(dev, "Failed to parse \"reg\" property\n");
 		return -EINVAL;
@@ -322,7 +322,7 @@ static int rave_sp_eeprom_probe(struct device_d *dev)
 	/*
 	 * If a name is specified via DT, override the above with it.
 	 */
-	of_property_read_string(dev->device_node, "zii,eeprom-name",
+	of_property_read_string(dev->of_node, "zii,eeprom-name",
 				&config.name);
 	config.dev       = dev;
 	config.priv      = eeprom;
diff --git a/drivers/nvmem/snvs_lpgpr.c b/drivers/nvmem/snvs_lpgpr.c
index ddfc15e147..4d0d5779c0 100644
--- a/drivers/nvmem/snvs_lpgpr.c
+++ b/drivers/nvmem/snvs_lpgpr.c
@@ -80,7 +80,7 @@ static const struct nvmem_bus snvs_lpgpr_nvmem_bus = {
 
 static int snvs_lpgpr_probe(struct device_d *dev)
 {
-	struct device_node *node = dev->device_node;
+	struct device_node *node = dev->of_node;
 	struct device_node *syscon_node;
 	struct snvs_lpgpr_priv *priv;
 	struct nvmem_config *cfg;
diff --git a/drivers/nvmem/starfive-otp.c b/drivers/nvmem/starfive-otp.c
index 52c5292839..0f668abdcc 100644
--- a/drivers/nvmem/starfive-otp.c
+++ b/drivers/nvmem/starfive-otp.c
@@ -162,7 +162,7 @@ static int starfive_otp_probe(struct device_d *dev)
 	if (IS_ERR(iores))
 		return PTR_ERR(iores);
 
-	ret = of_property_read_u32(dev->device_node, "fuse-count", &total_fuses);
+	ret = of_property_read_u32(dev->of_node, "fuse-count", &total_fuses);
 	if (ret < 0) {
 		dev_err(dev, "missing required fuse-count property\n");
 		return ret;
diff --git a/drivers/of/barebox.c b/drivers/of/barebox.c
index d3a5ae04dc..23319c336a 100644
--- a/drivers/of/barebox.c
+++ b/drivers/of/barebox.c
@@ -26,7 +26,7 @@ static int environment_check_mount(struct device_d *dev, char **devpath)
 	if (!IS_ENABLED(CONFIG_OF_BAREBOX_ENV_IN_FS))
 		return 0;
 
-	ret = of_property_read_string(dev->device_node, "file-path", &filepath);
+	ret = of_property_read_string(dev->of_node, "file-path", &filepath);
 	if (ret == -EINVAL) {
 		/* No file-path so just use device-path */
 		return 0;
@@ -57,7 +57,8 @@ static int environment_probe(struct device_d *dev)
 	char *path;
 	int ret;
 
-	ret = of_find_path(dev->device_node, "device-path", &path, OF_FIND_PATH_FLAGS_BB);
+	ret = of_find_path(dev->of_node, "device-path", &path,
+			   OF_FIND_PATH_FLAGS_BB);
 	if (ret)
 		return ret;
 
diff --git a/drivers/of/base.c b/drivers/of/base.c
index 221050a197..447cbb0e2f 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -743,7 +743,7 @@ int of_match(struct device_d *dev, struct driver_d *drv)
 {
 	const struct of_device_id *id;
 
-	id = of_match_node(drv->of_compatible, dev->device_node);
+	id = of_match_node(drv->of_compatible, dev->of_node);
 	if (!id)
 		return 1;
 
@@ -2522,7 +2522,7 @@ static void of_platform_device_create_root(struct device_node *np)
 
 	dev = xzalloc(sizeof(*dev));
 	dev->id = DEVICE_ID_SINGLE;
-	dev->device_node = np;
+	dev->of_node = np;
 	dev_set_name(dev, "machine");
 
 	ret = platform_device_register(dev);
@@ -2702,7 +2702,7 @@ int of_device_is_stdout_path(struct device_d *dev, unsigned int *baudrate)
 {
 	unsigned int tmp = *baudrate;
 
-	if (!dev || !dev->device_node || dev->device_node != of_get_stdoutpath(&tmp))
+	if (!dev || !dev->of_node || dev->of_node != of_get_stdoutpath(&tmp))
 		return false;
 
 	*baudrate = tmp;
diff --git a/drivers/of/device.c b/drivers/of/device.c
index 5cc288efbe..5d3d016e03 100644
--- a/drivers/of/device.c
+++ b/drivers/of/device.c
@@ -14,10 +14,10 @@
 const struct of_device_id *of_match_device(const struct of_device_id *matches,
 					   const struct device_d *dev)
 {
-	if ((!matches) || (!dev->device_node))
+	if ((!matches) || (!dev->of_node))
 		return NULL;
 
-	return of_match_node(matches, dev->device_node);
+	return of_match_node(matches, dev->of_node);
 }
 EXPORT_SYMBOL(of_match_device);
 
diff --git a/drivers/of/of_path.c b/drivers/of/of_path.c
index 05c28bf052..bac95a6edf 100644
--- a/drivers/of/of_path.c
+++ b/drivers/of/of_path.c
@@ -17,9 +17,9 @@ struct device_d *of_find_device_by_node_path(const char *path)
 	struct device_d *dev;
 
 	for_each_device(dev) {
-		if (!dev->device_node)
+		if (!dev->of_node)
 			continue;
-		if (!strcmp(path, dev->device_node->full_name))
+		if (!strcmp(path, dev->of_node->full_name))
 			return dev;
 	}
 
diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index 2b5ad08c12..ac51a6f8e1 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -32,7 +32,7 @@ struct device_d *of_find_device_by_node(struct device_node *np)
 		return np->dev;
 
 	for_each_device(dev)
-		if (dev->device_node == np)
+		if (dev->of_node == np)
 			return dev;
 	return NULL;
 }
@@ -48,7 +48,7 @@ EXPORT_SYMBOL(of_find_device_by_node);
  */
 static void of_device_make_bus_id(struct device_d *dev)
 {
-	struct device_node *node = dev->device_node;
+	struct device_node *node = dev->of_node;
 	const __be32 *reg;
 	u64 addr;
 
@@ -176,7 +176,7 @@ struct device_d *of_platform_device_create(struct device_node *np,
 	/* setup generic device info */
 	dev = xzalloc(sizeof(*dev));
 	dev->id = DEVICE_ID_SINGLE;
-	dev->device_node = np;
+	dev->of_node = np;
 	dev->parent = parent;
 	dev->resource = res;
 	dev->num_resources = num_reg;
@@ -298,7 +298,7 @@ static struct device_d *of_amba_device_create(struct device_node *np)
 
 	/* setup generic device info */
 	dev->dev.id = DEVICE_ID_SINGLE;
-	dev->dev.device_node = np;
+	dev->dev.of_node = np;
 	of_device_make_bus_id(&dev->dev);
 
 	ret = of_address_to_resource(np, 0, &dev->res);
diff --git a/drivers/pci/pci-ecam-generic.c b/drivers/pci/pci-ecam-generic.c
index 58c81ecbb6..61de58f7d8 100644
--- a/drivers/pci/pci-ecam-generic.c
+++ b/drivers/pci/pci-ecam-generic.c
@@ -129,7 +129,7 @@ static inline bool is_64bit(const struct resource *res)
 static int pcie_ecam_parse_dt(struct generic_ecam_pcie *ecam)
 {
 	struct device_d *dev = ecam->pci.parent;
-	struct device_node *np = dev->device_node;
+	struct device_node *np = dev->of_node;
 	struct of_pci_range_parser parser;
 	struct of_pci_range range;
 	struct resource res;
diff --git a/drivers/pci/pci-imx6.c b/drivers/pci/pci-imx6.c
index e7ea0ebb94..a65c251669 100644
--- a/drivers/pci/pci-imx6.c
+++ b/drivers/pci/pci-imx6.c
@@ -691,7 +691,7 @@ static int imx6_pcie_probe(struct device_d *dev)
 	struct resource *iores;
 	struct dw_pcie *pci;
 	struct imx6_pcie *imx6_pcie;
-	struct device_node *np = dev->device_node;
+	struct device_node *np = dev->of_node;
 	int ret;
 
 	imx6_pcie = xzalloc(sizeof(*imx6_pcie));
diff --git a/drivers/pci/pci-layerscape.c b/drivers/pci/pci-layerscape.c
index b0a1ce8135..130d1dccdb 100644
--- a/drivers/pci/pci-layerscape.c
+++ b/drivers/pci/pci-layerscape.c
@@ -221,7 +221,7 @@ static int ls1021_pcie_host_init(struct pcie_port *pp)
 	u32 index[2];
 	int ret;
 
-	pcie->scfg = syscon_regmap_lookup_by_phandle(dev->device_node,
+	pcie->scfg = syscon_regmap_lookup_by_phandle(dev->of_node,
 						     "fsl,pcie-scfg");
 	if (IS_ERR(pcie->scfg)) {
 		ret = PTR_ERR(pcie->scfg);
@@ -230,7 +230,7 @@ static int ls1021_pcie_host_init(struct pcie_port *pp)
 		return ret;
 	}
 
-	if (of_property_read_u32_array(dev->device_node,
+	if (of_property_read_u32_array(dev->of_node,
 				       "fsl,pcie-scfg", index, 2)) {
 		pcie->scfg = NULL;
 		return -EINVAL;
@@ -378,7 +378,7 @@ static int ls_pcie_of_fixup(struct device_node *root, void *ctx)
 	int ret, i;
 	u32 devid, stream_id;
 
-	name = of_get_reproducible_name(dev->device_node);
+	name = of_get_reproducible_name(dev->of_node);
 
 	np = root;
 	do {
diff --git a/drivers/pci/pci-mvebu.c b/drivers/pci/pci-mvebu.c
index 41bccd2783..ea07aa734f 100644
--- a/drivers/pci/pci-mvebu.c
+++ b/drivers/pci/pci-mvebu.c
@@ -292,14 +292,14 @@ static struct mvebu_pcie *mvebu_pcie_port_probe(struct device_d *dev,
 		return ERR_PTR(-EINVAL);
 	}
 
-	if (mvebu_get_target_attr(dev->device_node, devfn, IORESOURCE_MEM,
+	if (mvebu_get_target_attr(dev->of_node, devfn, IORESOURCE_MEM,
 				  &mem_target, &mem_attr)) {
 		dev_err(dev, "unable to get target/attr for mem window\n");
 		return ERR_PTR(-EINVAL);
 	}
 
 	/* I/O windows are optional */
-	mvebu_get_target_attr(dev->device_node, devfn, IORESOURCE_IO,
+	mvebu_get_target_attr(dev->of_node, devfn, IORESOURCE_IO,
 			      &io_target, &io_attr);
 
 	reset_gpio = of_get_named_gpio_flags(np, "reset-gpios", 0, &flags);
@@ -398,7 +398,7 @@ static struct of_device_id mvebu_pcie_dt_ids[] = {
 
 static int mvebu_pcie_probe(struct device_d *dev)
 {
-	struct device_node *np = dev->device_node;
+	struct device_node *np = dev->of_node;
 	const struct of_device_id *match = of_match_node(mvebu_pcie_dt_ids, np);
 	struct mvebu_pcie_ops *ops = (struct mvebu_pcie_ops *)match->data;
 	struct device_node *pnp;
diff --git a/drivers/pci/pci-tegra.c b/drivers/pci/pci-tegra.c
index d3b8ab59b2..272f16d6d3 100644
--- a/drivers/pci/pci-tegra.c
+++ b/drivers/pci/pci-tegra.c
@@ -903,7 +903,7 @@ static int tegra_pcie_put_resources(struct tegra_pcie *pcie)
 static int tegra_pcie_get_xbar_config(struct tegra_pcie *pcie, u32 lanes,
 				      u32 *xbar)
 {
-	struct device_node *np = pcie->dev->device_node;
+	struct device_node *np = pcie->dev->of_node;
 
 	if (of_device_is_compatible(np, "nvidia,tegra124-pcie")) {
 		switch (lanes) {
@@ -954,7 +954,7 @@ static int tegra_pcie_get_xbar_config(struct tegra_pcie *pcie, u32 lanes,
 static int tegra_pcie_parse_dt(struct tegra_pcie *pcie)
 {
 	const struct tegra_pcie_soc_data *soc = pcie->soc_data;
-	struct device_node *np = pcie->dev->device_node, *port;
+	struct device_node *np = pcie->dev->of_node, *port;
 	struct of_pci_range_parser parser;
 	struct of_pci_range range;
 	struct resource *rp_res;
diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index 9b00a1c9eb..d46d996efd 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -346,10 +346,10 @@ pci_of_match_device(struct device_d *parent, unsigned int devfn)
 	struct device_node *np;
 	u32 reg;
 
-	if (!IS_ENABLED(CONFIG_OFTREE) || !parent || !parent->device_node)
+	if (!IS_ENABLED(CONFIG_OFTREE) || !parent || !parent->of_node)
 		return NULL;
 
-	for_each_child_of_node(parent->device_node, np) {
+	for_each_child_of_node(parent->of_node, np) {
 		if (!of_property_read_u32_array(np, "reg", &reg, 1)) {
 			/*
 			 * Only match device/function pair of the device
@@ -399,10 +399,10 @@ static unsigned int pci_scan_bus(struct pci_bus *bus)
 		dev->vendor = l & 0xffff;
 		dev->device = (l >> 16) & 0xffff;
 		dev->dev.parent = bus->parent;
-		dev->dev.device_node = pci_of_match_device(bus->parent, devfn);
-		if (dev->dev.device_node)
+		dev->dev.of_node = pci_of_match_device(bus->parent, devfn);
+		if (dev->dev.of_node)
 			pr_debug("found DT node %s for device %04x:%04x\n",
-				 dev->dev.device_node->full_name,
+				 dev->dev.of_node->full_name,
 				 dev->vendor, dev->device);
 
 		/* non-destructively determine if device can be a master: */
diff --git a/drivers/pci/pcie-designware-host.c b/drivers/pci/pcie-designware-host.c
index a8309653c6..34a6dd06d8 100644
--- a/drivers/pci/pcie-designware-host.c
+++ b/drivers/pci/pcie-designware-host.c
@@ -72,7 +72,7 @@ int __init dw_pcie_host_init(struct pcie_port *pp)
 {
 	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
 	struct device_d *dev = pci->dev;
-	struct device_node *np = dev->device_node;
+	struct device_node *np = dev->of_node;
 	struct of_pci_range range;
 	struct of_pci_range_parser parser;
 	struct resource *cfg_res;
diff --git a/drivers/pci/pcie-designware.c b/drivers/pci/pcie-designware.c
index ecfd6d5fa6..2b3a01c7b6 100644
--- a/drivers/pci/pcie-designware.c
+++ b/drivers/pci/pcie-designware.c
@@ -282,7 +282,7 @@ void dw_pcie_setup(struct dw_pcie *pci)
 	u32 val;
 	u32 lanes;
 	struct device_d *dev = pci->dev;
-	struct device_node *np = dev->device_node;
+	struct device_node *np = dev->of_node;
 
 	if (pci->version >= 0x480A || (!pci->version &&
 				       dw_pcie_iatu_unroll_enabled(pci))) {
diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index 3a36f0a1b2..1e6fa4d6c2 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -43,7 +43,7 @@ struct phy *phy_create(struct device_d *dev, struct device_node *node,
 	dev_set_name(&phy->dev, "phy");
 	phy->dev.id = id;
 	phy->dev.parent = dev;
-	phy->dev.device_node = node ?: dev->device_node;
+	phy->dev.of_node = node ?: dev->of_node;
 	phy->id = id;
 	phy->ops = ops;
 
@@ -225,10 +225,10 @@ static struct phy_provider *of_phy_provider_lookup(struct device_node *node)
 		return ERR_PTR(ret);
 
 	list_for_each_entry(phy_provider, &phy_provider_list, list) {
-		if (phy_provider->dev->device_node == node)
+		if (phy_provider->dev->of_node == node)
 			return phy_provider;
 
-		for_each_child_of_node(phy_provider->dev->device_node, child)
+		for_each_child_of_node(phy_provider->dev->of_node, child)
 			if (child == node)
 				return phy_provider;
 	}
@@ -301,15 +301,15 @@ struct phy *of_phy_get_by_phandle(struct device_d *dev, const char *phandle,
 	struct device_node *np;
 	struct phy_provider *phy_provider;
 
-	if (!dev->device_node) {
+	if (!dev->of_node) {
 		dev_dbg(dev, "device does not have a device node entry\n");
 		return ERR_PTR(-EINVAL);
 	}
 
-	np = of_parse_phandle(dev->device_node, phandle, index);
+	np = of_parse_phandle(dev->of_node, phandle, index);
 	if (!np) {
 		dev_dbg(dev, "failed to get %s phandle in %s node\n", phandle,
-			dev->device_node->full_name);
+			dev->of_node->full_name);
 		return ERR_PTR(-ENODEV);
 	}
 
@@ -341,10 +341,10 @@ struct phy *phy_get(struct device_d *dev, const char *string)
 		return ERR_PTR(-EINVAL);
 	}
 
-	if (dev->device_node) {
-		index = of_property_match_string(dev->device_node, "phy-names",
-			string);
-		phy = _of_phy_get(dev->device_node, index);
+	if (dev->of_node) {
+		index = of_property_match_string(dev->of_node, "phy-names",
+						 string);
+		phy = _of_phy_get(dev->of_node, index);
 	}
 
 	return phy;
@@ -379,8 +379,8 @@ struct phy *phy_optional_get(struct device_d *dev, const char *string)
  */
 struct phy *phy_get_by_index(struct device_d *dev, int index)
 {
-	if (!dev->device_node)
+	if (!dev->of_node)
 		return ERR_PTR(-ENODEV);
 
-	return _of_phy_get(dev->device_node, index);
+	return _of_phy_get(dev->of_node, index);
 }
diff --git a/drivers/phy/phy-stm32-usbphyc.c b/drivers/phy/phy-stm32-usbphyc.c
index 2fa1f0fd01..93547243b8 100644
--- a/drivers/phy/phy-stm32-usbphyc.c
+++ b/drivers/phy/phy-stm32-usbphyc.c
@@ -315,7 +315,7 @@ static struct phy *stm32_usbphyc_of_xlate(struct device_d *dev,
 	int port = 0;
 
 	for (port = 0; port < usbphyc->nphys; port++) {
-		if (phynode == usbphyc->phys[port]->phy->dev.device_node) {
+		if (phynode == usbphyc->phys[port]->phy->dev.of_node) {
 			usbphyc_phy = usbphyc->phys[port];
 			break;
 		}
@@ -351,7 +351,7 @@ static struct phy *stm32_usbphyc_of_xlate(struct device_d *dev,
 static int stm32_usbphyc_probe(struct device_d *dev)
 {
 	struct stm32_usbphyc *usbphyc;
-	struct device_node *child, *np = dev->device_node;
+	struct device_node *child, *np = dev->of_node;
 	struct resource *iores;
 	struct phy_provider *phy_provider;
 	u32 pllen, version;
diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
index 459ad9b355..f20477cd67 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
@@ -267,7 +267,7 @@ static struct phy *rockchip_usb2phy_of_xlate(struct device_d *dev,
 		if (!rphy->phys[port].phy)
 			continue;
 
-		if (phynode == rphy->phys[port].phy->dev.device_node) {
+		if (phynode == rphy->phys[port].phy->dev.of_node) {
 			p = &rphy->phys[port];
 			return p->phy;
 		}
@@ -338,7 +338,7 @@ static const struct clk_ops rockchip_usb2phy_clkout_ops = {
 
 static int rockchip_usb2phy_clk480m_register(struct rockchip_usb2phy *rphy)
 {
-	struct device_node *node = rphy->dev->device_node;
+	struct device_node *node = rphy->dev->of_node;
 	struct clk_init_data init = {};
 	const char *clk_name;
 	int ret;
@@ -385,7 +385,7 @@ static int rockchip_usb2phy_probe(struct device_d *dev)
 	struct rockchip_usb2phy *rphy;
 	u32 reg, index;
 	int ret, port = 0;
-	struct device_node *child, *np = dev->device_node;
+	struct device_node *child, *np = dev->of_node;
 	struct resource *iores;
 
 	rphy = xzalloc(sizeof(*rphy));
@@ -396,7 +396,7 @@ static int rockchip_usb2phy_probe(struct device_d *dev)
 	    of_device_is_compatible(np, "rockchip,rk3568-usb2phy"))
 		rphy->grf_base = syscon_regmap_lookup_by_phandle(np, "rockchip,usbgrf");
 	else
-		rphy->grf_base = syscon_node_to_regmap(dev->parent->device_node);
+		rphy->grf_base = syscon_node_to_regmap(dev->parent->of_node);
 
 	if (IS_ERR(rphy->grf_base))
 		return PTR_ERR(rphy->grf_base);
diff --git a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
index 2d86d86334..4d0fec6e7a 100644
--- a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
+++ b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
@@ -287,7 +287,7 @@ static struct phy *rockchip_combphy_xlate(struct device_d *dev,
 static int rockchip_combphy_parse_dt(struct device_d *dev,
 				     struct rockchip_combphy_priv *priv)
 {
-	struct device_node *np = dev->device_node;
+	struct device_node *np = dev->of_node;
 	const struct rockchip_combphy_cfg *phy_cfg = priv->cfg;
 	int ret, mac_id;
 
@@ -386,7 +386,7 @@ static int rockchip_combphy_probe(struct device_d *dev)
 
 static int rk3568_combphy_cfg(struct rockchip_combphy_priv *priv)
 {
-	struct device_node *np = priv->dev->device_node;
+	struct device_node *np = priv->dev->of_node;
 	const struct rockchip_combphy_grfcfg *cfg = priv->cfg->grfcfg;
 	struct clk *refclk = NULL;
 	unsigned long rate;
diff --git a/drivers/phy/usb-nop-xceiv.c b/drivers/phy/usb-nop-xceiv.c
index 06a1ff9791..86849120b8 100644
--- a/drivers/phy/usb-nop-xceiv.c
+++ b/drivers/phy/usb-nop-xceiv.c
@@ -80,7 +80,7 @@ static int nop_usbphy_probe(struct device_d *dev)
 	if (IS_ERR(nopphy->clk))
 		nopphy->clk = NULL;
 
-	nopphy->reset = of_get_named_gpio_flags(dev->device_node,
+	nopphy->reset = of_get_named_gpio_flags(dev->of_node,
 						"reset-gpios", 0, &of_flags);
 	if (gpio_is_valid(nopphy->reset)) {
 		/* assert reset */
diff --git a/drivers/pinctrl/imx-iomux-v1.c b/drivers/pinctrl/imx-iomux-v1.c
index c82d716e1c..c276f51cb3 100644
--- a/drivers/pinctrl/imx-iomux-v1.c
+++ b/drivers/pinctrl/imx-iomux-v1.c
@@ -279,9 +279,9 @@ static int imx_iomux_v1_probe(struct device_d *dev)
 	if (IS_ERR(base))
 		return PTR_ERR(base);
 
-	ret = of_platform_populate(dev->device_node, NULL, NULL);
+	ret = of_platform_populate(dev->of_node, NULL, NULL);
 
-	if (IS_ENABLED(CONFIG_PINCTRL) && dev->device_node)
+	if (IS_ENABLED(CONFIG_PINCTRL) && dev->of_node)
 		ret = imx_pinctrl_dt(dev, base);
 
 	return ret;
diff --git a/drivers/pinctrl/imx-iomux-v3.c b/drivers/pinctrl/imx-iomux-v3.c
index ecadff5e82..e09934fe85 100644
--- a/drivers/pinctrl/imx-iomux-v3.c
+++ b/drivers/pinctrl/imx-iomux-v3.c
@@ -198,7 +198,7 @@ static int imx_iomux_v3_probe(struct device_d *dev)
 		 */
 		iomuxv3_base = base;
 
-	if (IS_ENABLED(CONFIG_PINCTRL) && dev->device_node)
+	if (IS_ENABLED(CONFIG_PINCTRL) && dev->of_node)
 		ret = imx_pinctrl_dt(dev, base);
 
 	return ret;
diff --git a/drivers/pinctrl/mvebu/armada-370.c b/drivers/pinctrl/mvebu/armada-370.c
index 8b574b89b9..23000986ff 100644
--- a/drivers/pinctrl/mvebu/armada-370.c
+++ b/drivers/pinctrl/mvebu/armada-370.c
@@ -389,7 +389,7 @@ static int armada_370_pinctrl_probe(struct device_d *dev)
 {
 	struct resource *iores;
 	const struct of_device_id *match =
-		of_match_node(armada_370_pinctrl_of_match, dev->device_node);
+		of_match_node(armada_370_pinctrl_of_match, dev->of_node);
 	struct mvebu_pinctrl_soc_info *soc =
 		(struct mvebu_pinctrl_soc_info *)match->data;
 
diff --git a/drivers/pinctrl/mvebu/armada-xp.c b/drivers/pinctrl/mvebu/armada-xp.c
index 31286c59ee..f0761c4d3d 100644
--- a/drivers/pinctrl/mvebu/armada-xp.c
+++ b/drivers/pinctrl/mvebu/armada-xp.c
@@ -371,7 +371,7 @@ static int armada_xp_pinctrl_probe(struct device_d *dev)
 {
 	struct resource *iores;
 	const struct of_device_id *match =
-		of_match_node(armada_xp_pinctrl_of_match, dev->device_node);
+		of_match_node(armada_xp_pinctrl_of_match, dev->of_node);
 	struct mvebu_pinctrl_soc_info *soc = &armada_xp_pinctrl_info;
 
 	iores = dev_request_mem_resource(dev, 0);
diff --git a/drivers/pinctrl/mvebu/dove.c b/drivers/pinctrl/mvebu/dove.c
index 49553f1b28..5177abed3b 100644
--- a/drivers/pinctrl/mvebu/dove.c
+++ b/drivers/pinctrl/mvebu/dove.c
@@ -694,7 +694,7 @@ static int dove_pinctrl_probe(struct device_d *dev)
 {
 	struct resource *iores;
 	const struct of_device_id *match =
-		of_match_node(dove_pinctrl_of_match, dev->device_node);
+		of_match_node(dove_pinctrl_of_match, dev->of_node);
 	struct mvebu_pinctrl_soc_info *soc =
 		(struct mvebu_pinctrl_soc_info *)match->data;
 	struct device_node *np;
diff --git a/drivers/pinctrl/mvebu/kirkwood.c b/drivers/pinctrl/mvebu/kirkwood.c
index 1df51e443d..bceb561c5f 100644
--- a/drivers/pinctrl/mvebu/kirkwood.c
+++ b/drivers/pinctrl/mvebu/kirkwood.c
@@ -430,7 +430,7 @@ static int kirkwood_pinctrl_probe(struct device_d *dev)
 {
 	struct resource *iores;
 	const struct of_device_id *match =
-		of_match_node(kirkwood_pinctrl_of_match, dev->device_node);
+		of_match_node(kirkwood_pinctrl_of_match, dev->of_node);
 	struct mvebu_pinctrl_soc_info *soc =
 		(struct mvebu_pinctrl_soc_info *)match->data;
 
diff --git a/drivers/pinctrl/pinctrl-at91-pio4.c b/drivers/pinctrl/pinctrl-at91-pio4.c
index c1eb4518dc..afe74a12c0 100644
--- a/drivers/pinctrl/pinctrl-at91-pio4.c
+++ b/drivers/pinctrl/pinctrl-at91-pio4.c
@@ -271,7 +271,7 @@ static struct pinctrl_ops pinctrl_at91_pio4_ops = {
 
 static int pinctrl_at91_pio4_probe(struct device_d *dev)
 {
-	struct device_node *np = dev->device_node;
+	struct device_node *np = dev->of_node;
 	struct pinctrl_at91_pio4 *pinctrl;
 	struct resource *io;
 	int ret;
diff --git a/drivers/pinctrl/pinctrl-at91.c b/drivers/pinctrl/pinctrl-at91.c
index 0295d928cf..1551b0eda9 100644
--- a/drivers/pinctrl/pinctrl-at91.c
+++ b/drivers/pinctrl/pinctrl-at91.c
@@ -376,9 +376,9 @@ static struct at91_pinctrl_mux_ops *at91_pinctrl_get_driver_data(struct device_d
 	struct at91_pinctrl_mux_ops *ops_data = NULL;
 	int rc;
 
-	if (dev->device_node) {
+	if (dev->of_node) {
 		const struct of_device_id *match;
-		match = of_match_node(at91_pinctrl_dt_ids, dev->device_node);
+		match = of_match_node(at91_pinctrl_dt_ids, dev->of_node);
 		if (!match)
 			ops_data = NULL;
 		else
@@ -623,8 +623,8 @@ static int at91_gpio_probe(struct device_d *dev)
 	int ret;
 	int alias_idx;
 
-	if (dev->device_node)
-		alias_idx = of_alias_get_id(dev->device_node, "gpio");
+	if (dev->of_node)
+		alias_idx = of_alias_get_id(dev->of_node, "gpio");
 	else
 		alias_idx = dev->id;
 
diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index c99074407f..bd780399fe 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -333,7 +333,7 @@ static int rockchip_gpio_probe(struct device_d *dev)
 	void __iomem *reg_base;
 	int ret, bankno;
 
-	bankno = of_alias_get_id(dev->device_node, "gpio");
+	bankno = of_alias_get_id(dev->of_node, "gpio");
 	if (bankno >= ctrl->nr_banks)
 		bankno = -EINVAL;
 	if (bankno < 0)
@@ -873,7 +873,7 @@ static struct rockchip_pin_ctrl *rockchip_pinctrl_get_soc_data(
 	struct rockchip_pinctrl *d, struct device_d *dev)
 {
 	const struct of_device_id *match;
-	struct device_node *node = dev->device_node;
+	struct device_node *node = dev->of_node;
 	struct device_node *np;
 	struct rockchip_pin_ctrl *ctrl;
 	struct rockchip_pin_bank *bank;
@@ -1010,14 +1010,14 @@ static int rockchip_pinctrl_probe(struct device_d *dev)
 	}
 	info->ctrl = ctrl;
 
-	info->reg_base = syscon_base_lookup_by_phandle(dev->device_node,
+	info->reg_base = syscon_base_lookup_by_phandle(dev->of_node,
 						       "rockchip,grf");
 	if (IS_ERR(info->reg_base)) {
 		dev_err(dev, "Could not get grf syscon address\n");
 		return -ENODEV;
 	}
 
-	info->reg_pmu = syscon_base_lookup_by_phandle(dev->device_node,
+	info->reg_pmu = syscon_base_lookup_by_phandle(dev->of_node,
 						      "rockchip,pmu");
 	if (IS_ERR(info->reg_pmu)) {
 		dev_err(dev, "Could not get pmu syscon address\n");
@@ -1029,7 +1029,7 @@ static int rockchip_pinctrl_probe(struct device_d *dev)
 
 	dev->priv = info;
 
-	of_platform_populate(dev->device_node, NULL, dev);
+	of_platform_populate(dev->of_node, NULL, dev);
 
 	if (!IS_ENABLED(CONFIG_PINCTRL))
 		return 0;
diff --git a/drivers/pinctrl/pinctrl-single.c b/drivers/pinctrl/pinctrl-single.c
index edf2d046f0..f45948a447 100644
--- a/drivers/pinctrl/pinctrl-single.c
+++ b/drivers/pinctrl/pinctrl-single.c
@@ -123,7 +123,7 @@ int pinctrl_single_probe(struct device_d *dev)
 {
 	struct resource *iores;
 	struct pinctrl_single *pcs;
-	struct device_node *np = dev->device_node;
+	struct device_node *np = dev->of_node;
 	int ret = 0;
 
 	pcs = xzalloc(sizeof(*pcs));
diff --git a/drivers/pinctrl/pinctrl-stm32.c b/drivers/pinctrl/pinctrl-stm32.c
index fc0cc78f43..deaec56b16 100644
--- a/drivers/pinctrl/pinctrl-stm32.c
+++ b/drivers/pinctrl/pinctrl-stm32.c
@@ -344,7 +344,7 @@ static int stm32_pinctrl_probe(struct device_d *dev)
 	struct stm32_pinctrl *pinctrl;
 	unsigned nbanks = 0;
 	struct stm32_gpio_bank *gpio_bank;
-	struct device_node *np = dev->device_node, *child;
+	struct device_node *np = dev->of_node, *child;
 	int ret;
 
 	if (!of_find_property(np, "pins-are-numbered", NULL)) {
diff --git a/drivers/pinctrl/pinctrl-tegra20.c b/drivers/pinctrl/pinctrl-tegra20.c
index 04431e3875..53254d073e 100644
--- a/drivers/pinctrl/pinctrl-tegra20.c
+++ b/drivers/pinctrl/pinctrl-tegra20.c
@@ -316,7 +316,7 @@ static int pinctrl_tegra20_probe(struct device_d *dev)
 		return ret;
 	}
 
-	of_pinctrl_select_state(dev->device_node, "boot");
+	of_pinctrl_select_state(dev->of_node, "boot");
 
 	return 0;
 }
diff --git a/drivers/pinctrl/pinctrl-tegra30.c b/drivers/pinctrl/pinctrl-tegra30.c
index 78751f9f39..71c0a1357d 100644
--- a/drivers/pinctrl/pinctrl-tegra30.c
+++ b/drivers/pinctrl/pinctrl-tegra30.c
@@ -893,7 +893,7 @@ static int pinctrl_tegra30_probe(struct device_d *dev)
 		return ret;
 	}
 
-	of_pinctrl_select_state(dev->device_node, "boot");
+	of_pinctrl_select_state(dev->of_node, "boot");
 
 	return 0;
 }
diff --git a/drivers/pinctrl/pinctrl.c b/drivers/pinctrl/pinctrl.c
index 423040ecf3..a441adaf08 100644
--- a/drivers/pinctrl/pinctrl.c
+++ b/drivers/pinctrl/pinctrl.c
@@ -165,7 +165,7 @@ int pinctrl_select_state(struct device_d *dev, const char *name)
 {
 	struct device_node *np;
 
-	np = dev->device_node;
+	np = dev->of_node;
 	if (!np)
 		return 0;
 
@@ -182,11 +182,11 @@ int pinctrl_register(struct pinctrl_device *pdev)
 	if (!IS_ENABLED(CONFIG_PINCTRL))
 		return -ENOSYS;
 
-	BUG_ON(!pdev->dev->device_node);
+	BUG_ON(!pdev->dev->of_node);
 
 	list_add_tail(&pdev->list, &pinctrl_list);
 
-	pdev->node = pdev->dev->device_node;
+	pdev->node = pdev->dev->of_node;
 
 	pinctrl_select_state_default(pdev->dev);
 
diff --git a/drivers/power/reset/gpio-poweroff.c b/drivers/power/reset/gpio-poweroff.c
index 45b0d274e7..0cda8ceef6 100644
--- a/drivers/power/reset/gpio-poweroff.c
+++ b/drivers/power/reset/gpio-poweroff.c
@@ -45,7 +45,7 @@ static struct poweroff_handler handler;
 
 static int gpio_poweroff_probe(struct device_d *dev)
 {
-	struct device_node *np = dev->device_node;
+	struct device_node *np = dev->of_node;
 	bool input = false;
 	enum gpiod_flags flags;
 
diff --git a/drivers/power/reset/gpio-restart.c b/drivers/power/reset/gpio-restart.c
index 72c690a3cf..65a4407a7d 100644
--- a/drivers/power/reset/gpio-restart.c
+++ b/drivers/power/reset/gpio-restart.c
@@ -45,7 +45,7 @@ static void __noreturn gpio_restart_handle(struct restart_handler *this)
 
 static int gpio_restart_probe(struct device_d *dev)
 {
-	struct device_node *np = dev->device_node;
+	struct device_node *np = dev->of_node;
 	struct gpio_restart *gpio_restart;
 	bool open_source = false;
 	u32 property;
@@ -71,7 +71,7 @@ static int gpio_restart_probe(struct device_d *dev)
 	gpio_restart->inactive_delay_ms = 100;
 	gpio_restart->wait_delay_ms = 3000;
 
-	ret = of_property_read_u32(dev->device_node, "priority", &property);
+	ret = of_property_read_u32(dev->of_node, "priority", &property);
 	if (!ret)
 		gpio_restart->restart_handler.priority = property;
 
diff --git a/drivers/power/reset/reboot-mode.c b/drivers/power/reset/reboot-mode.c
index 5761128f8e..70be774be0 100644
--- a/drivers/power/reset/reboot-mode.c
+++ b/drivers/power/reset/reboot-mode.c
@@ -53,7 +53,7 @@ static int of_reboot_mode_fixup(struct device_node *root, void *ctx)
 	struct reboot_mode_driver *reboot = ctx;
 	struct device_node *dstnp, *srcnp, *dstparent;
 
-	srcnp = reboot->dev->device_node;
+	srcnp = reboot->dev->of_node;
 	dstnp = of_get_node_by_reproducible_name(root, srcnp);
 
 	if (dstnp) {
@@ -120,7 +120,7 @@ int reboot_mode_register(struct reboot_mode_driver *reboot,
 			 const u32 *reboot_mode, size_t nelems)
 {
 	struct property *prop;
-	struct device_node *np = reboot->dev->device_node;
+	struct device_node *np = reboot->dev->of_node;
 	const char *alias;
 	size_t nmodes = 0;
 	int i = 0;
diff --git a/drivers/power/reset/syscon-poweroff.c b/drivers/power/reset/syscon-poweroff.c
index 3664c4d8bd..239e549819 100644
--- a/drivers/power/reset/syscon-poweroff.c
+++ b/drivers/power/reset/syscon-poweroff.c
@@ -30,19 +30,19 @@ static int syscon_poweroff_probe(struct device_d *dev)
 {
 	int mask_err, value_err;
 
-	map = syscon_regmap_lookup_by_phandle(dev->device_node, "regmap");
+	map = syscon_regmap_lookup_by_phandle(dev->of_node, "regmap");
 	if (IS_ERR(map)) {
 		dev_err(dev, "unable to get syscon");
 		return PTR_ERR(map);
 	}
 
-	if (of_property_read_u32(dev->device_node, "offset", &offset)) {
+	if (of_property_read_u32(dev->of_node, "offset", &offset)) {
 		dev_err(dev, "unable to read 'offset'");
 		return -EINVAL;
 	}
 
-	value_err = of_property_read_u32(dev->device_node, "value", &value);
-	mask_err = of_property_read_u32(dev->device_node, "mask", &mask);
+	value_err = of_property_read_u32(dev->of_node, "value", &value);
+	mask_err = of_property_read_u32(dev->of_node, "mask", &mask);
 	if (value_err && mask_err) {
 		dev_err(dev, "unable to read 'value' and 'mask'");
 		return -EINVAL;
diff --git a/drivers/power/reset/syscon-reboot-mode.c b/drivers/power/reset/syscon-reboot-mode.c
index 0cbc9d0803..69530a409e 100644
--- a/drivers/power/reset/syscon-reboot-mode.c
+++ b/drivers/power/reset/syscon-reboot-mode.c
@@ -51,7 +51,7 @@ static int syscon_reboot_mode_probe(struct device_d *dev)
 	int ret, i, nelems;
 	struct syscon_reboot_mode *syscon_rbm;
 	struct reboot_mode_driver *reboot_template;
-	struct device_node *np = dev->device_node;
+	struct device_node *np = dev->of_node;
 	u32 *magic;
 
 	nelems = of_property_count_elems_of_size(np, "offset", sizeof(__be32));
@@ -67,7 +67,7 @@ static int syscon_reboot_mode_probe(struct device_d *dev)
 	syscon_rbm->reboot = *reboot_template;
 	syscon_rbm->reboot.dev = dev;
 
-	syscon_rbm->map = syscon_node_to_regmap(dev->parent->device_node);
+	syscon_rbm->map = syscon_node_to_regmap(dev->parent->of_node);
 	if (IS_ERR(syscon_rbm->map))
 		return PTR_ERR(syscon_rbm->map);
 
diff --git a/drivers/power/reset/syscon-reboot.c b/drivers/power/reset/syscon-reboot.c
index b6b8db75ca..1c3f7666ee 100644
--- a/drivers/power/reset/syscon-reboot.c
+++ b/drivers/power/reset/syscon-reboot.c
@@ -42,18 +42,18 @@ static int syscon_reboot_probe(struct device_d *dev)
 	if (!ctx)
 		return -ENOMEM;
 
-	ctx->map = syscon_regmap_lookup_by_phandle(dev->device_node, "regmap");
+	ctx->map = syscon_regmap_lookup_by_phandle(dev->of_node, "regmap");
 	if (IS_ERR(ctx->map)) {
-		ctx->map = syscon_node_to_regmap(dev->parent->device_node);
+		ctx->map = syscon_node_to_regmap(dev->parent->of_node);
 		if (IS_ERR(ctx->map))
 			return PTR_ERR(ctx->map);
 	}
 
-	if (of_property_read_u32(dev->device_node, "offset", &ctx->offset))
+	if (of_property_read_u32(dev->of_node, "offset", &ctx->offset))
 		return -EINVAL;
 
-	value_err = of_property_read_u32(dev->device_node, "value", &ctx->value);
-	mask_err = of_property_read_u32(dev->device_node, "mask", &ctx->mask);
+	value_err = of_property_read_u32(dev->of_node, "value", &ctx->value);
+	mask_err = of_property_read_u32(dev->of_node, "mask", &ctx->mask);
 	if (value_err && mask_err) {
 		dev_err(dev, "unable to read 'value' and 'mask'");
 		return -EINVAL;
@@ -71,7 +71,7 @@ static int syscon_reboot_probe(struct device_d *dev)
 	ctx->restart_handler.name = "syscon-reboot";
 	ctx->restart_handler.restart = syscon_restart_handle;
 	ctx->restart_handler.priority = 192;
-	ctx->restart_handler.of_node = dev->device_node;
+	ctx->restart_handler.of_node = dev->of_node;
 
 	err = restart_handler_register(&ctx->restart_handler);
 	if (err)
diff --git a/drivers/pwm/core.c b/drivers/pwm/core.c
index aba6c2a709..e61050050c 100644
--- a/drivers/pwm/core.c
+++ b/drivers/pwm/core.c
@@ -194,7 +194,7 @@ static struct pwm_device *of_node_to_pwm_device(struct device_node *np, int id)
 	struct pwm_device *pwm;
 
 	list_for_each_entry(pwm, &pwm_list, node) {
-		if (pwm->hwdev && pwm->hwdev->device_node == np &&
+		if (pwm->hwdev && pwm->hwdev->of_node == np &&
 				pwm->chip->id == id)
 			return pwm;
 	}
diff --git a/drivers/pwm/pwm-atmel.c b/drivers/pwm/pwm-atmel.c
index 9ec81e18b1..21d07913ce 100644
--- a/drivers/pwm/pwm-atmel.c
+++ b/drivers/pwm/pwm-atmel.c
@@ -438,7 +438,7 @@ static int atmel_pwm_probe(struct device_d *dev)
 		return PTR_ERR(iores);
 
 	atmel_pwm->base = IOMEM(iores->start);
-	alias = of_alias_get(dev->device_node);
+	alias = of_alias_get(dev->of_node);
 	if (!alias)
 		id++;
 
diff --git a/drivers/pwm/pwm-imx.c b/drivers/pwm/pwm-imx.c
index c542b72796..d6ddcc28a2 100644
--- a/drivers/pwm/pwm-imx.c
+++ b/drivers/pwm/pwm-imx.c
@@ -224,8 +224,8 @@ static int imx_pwm_probe(struct device_d *dev)
 	imx->mmio_base = IOMEM(iores->start);
 
 	imx->chip.ops = &imx_pwm_ops;
-	if (dev->device_node) {
-		imx->chip.devname = of_alias_get(dev->device_node);
+	if (dev->of_node) {
+		imx->chip.devname = of_alias_get(dev->of_node);
 		if (!imx->chip.devname)
 			imx->chip.devname = basprintf("pwm_%p",
 							imx->mmio_base);
diff --git a/drivers/pwm/pwm-mxs.c b/drivers/pwm/pwm-mxs.c
index 8f77ca07a6..007ff1cfee 100644
--- a/drivers/pwm/pwm-mxs.c
+++ b/drivers/pwm/pwm-mxs.c
@@ -96,7 +96,7 @@ static struct pwm_ops mxs_pwm_ops = {
 static int mxs_pwm_probe(struct device_d *dev)
 {
 	struct resource *iores;
-	struct device_node *np = dev->device_node;
+	struct device_node *np = dev->of_node;
 	struct mxs_pwm *mxs;
 	int ret, i;
 	uint32_t npwm;
diff --git a/drivers/pwm/pwm-stm32.c b/drivers/pwm/pwm-stm32.c
index 4e1a65207e..69baa88753 100644
--- a/drivers/pwm/pwm-stm32.c
+++ b/drivers/pwm/pwm-stm32.c
@@ -337,7 +337,7 @@ static int id = -1;
 
 static int stm32_pwm_probe(struct device_d *dev)
 {
-	struct device_node *np = dev->device_node;
+	struct device_node *np = dev->of_node;
 	struct stm32_timers *ddata = dev->parent->priv;
 	struct stm32_pwm *priv;
 	const char *alias;
@@ -362,7 +362,7 @@ static int stm32_pwm_probe(struct device_d *dev)
 
 	npwms = stm32_pwm_detect_channels(priv);
 
-	alias = of_alias_get(dev->device_node);
+	alias = of_alias_get(dev->of_node);
 	if (!alias)
 		id++;
 
diff --git a/drivers/regulator/anatop-regulator.c b/drivers/regulator/anatop-regulator.c
index 3f8473ec07..6d54129523 100644
--- a/drivers/regulator/anatop-regulator.c
+++ b/drivers/regulator/anatop-regulator.c
@@ -35,7 +35,7 @@ static struct regulator_ops anatop_rops = {
 
 static int anatop_regulator_probe(struct device_d *dev)
 {
-	struct device_node *np = dev->device_node;
+	struct device_node *np = dev->of_node;
 	struct device_node *anatop_np;
 	struct regulator_desc *rdesc;
 	struct regulator_dev *rdev;
@@ -131,7 +131,7 @@ static int anatop_regulator_probe(struct device_d *dev)
 		}
 	}
 
-	return of_regulator_register(rdev, dev->device_node);
+	return of_regulator_register(rdev, dev->of_node);
 }
 
 static const struct of_device_id of_anatop_regulator_match_tbl[] = {
diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
index d25aba38c3..d25aea8d62 100644
--- a/drivers/regulator/core.c
+++ b/drivers/regulator/core.c
@@ -255,7 +255,7 @@ static struct regulator_internal *of_regulator_get(struct device_d *dev, const c
 	/*
 	 * If the device does have a device node return the dummy regulator.
 	 */
-	if (!dev->device_node)
+	if (!dev->of_node)
 		return NULL;
 
 	propname = basprintf("%s-supply", supply);
@@ -264,7 +264,7 @@ static struct regulator_internal *of_regulator_get(struct device_d *dev, const c
 	 * If the device node does not contain a supply property, this device doesn't
 	 * need a regulator. Return the dummy regulator in this case.
 	 */
-	if (!of_get_property(dev->device_node, propname, NULL)) {
+	if (!of_get_property(dev->of_node, propname, NULL)) {
 		dev_dbg(dev, "No %s-supply node found, using dummy regulator\n",
 				supply);
 		ri = NULL;
@@ -275,7 +275,7 @@ static struct regulator_internal *of_regulator_get(struct device_d *dev, const c
 	 * The device node specifies a supply, so it's mandatory. Return an error when
 	 * something goes wrong below.
 	 */
-	node = of_parse_phandle(dev->device_node, propname, 0);
+	node = of_parse_phandle(dev->of_node, propname, 0);
 	if (!node) {
 		dev_dbg(dev, "No %s node found\n", propname);
 		ri = ERR_PTR(-EINVAL);
@@ -388,7 +388,7 @@ struct regulator *regulator_get(struct device_d *dev, const char *supply)
 	struct regulator *r;
 	int ret;
 
-	if (dev->device_node && supply) {
+	if (dev->of_node && supply) {
 		ri = of_regulator_get(dev, supply);
 		if (IS_ERR(ri))
 			return ERR_CAST(ri);
diff --git a/drivers/regulator/fixed.c b/drivers/regulator/fixed.c
index bdb01c0a95..65b0fba2fe 100644
--- a/drivers/regulator/fixed.c
+++ b/drivers/regulator/fixed.c
@@ -46,12 +46,12 @@ const static struct regulator_ops fixed_ops = {
 
 static int regulator_fixed_probe(struct device_d *dev)
 {
-	struct device_node *np = dev->device_node;
+	struct device_node *np = dev->of_node;
 	struct regulator_fixed *fix;
 	u32 delay;
 	int ret;
 
-	if (!dev->device_node)
+	if (!dev->of_node)
 		return -EINVAL;
 
 	fix = xzalloc(sizeof(*fix));
diff --git a/drivers/regulator/pfuze.c b/drivers/regulator/pfuze.c
index 5ef5dacc6f..d9450711e3 100644
--- a/drivers/regulator/pfuze.c
+++ b/drivers/regulator/pfuze.c
@@ -165,7 +165,7 @@ static int __init pfuze_probe(struct device_d *dev)
 	if (pfuze_init_callback)
 		pfuze_init_callback(pfuze_dev->map);
 
-	if (of_property_read_bool(dev->device_node,
+	if (of_property_read_bool(dev->of_node,
 				  "fsl,pmic-stby-poweroff"))
 		return poweroff_handler_register_fn(pfuze_power_off_prepare);
 
diff --git a/drivers/regulator/rk808-regulator.c b/drivers/regulator/rk808-regulator.c
index f8bc31f354..e0e06acad4 100644
--- a/drivers/regulator/rk808-regulator.c
+++ b/drivers/regulator/rk808-regulator.c
@@ -889,7 +889,7 @@ static int rk808_regulator_dt_parse(struct device_d *dev,
 				    struct of_regulator_match *matches,
 				    int nregulators)
 {
-	struct device_node *np = dev->device_node;
+	struct device_node *np = dev->of_node;
 
 	np = of_get_child_by_name(np, "regulators");
 	if (!np)
diff --git a/drivers/regulator/scmi-regulator.c b/drivers/regulator/scmi-regulator.c
index 3e6fd3ec60..5bab296102 100644
--- a/drivers/regulator/scmi-regulator.c
+++ b/drivers/regulator/scmi-regulator.c
@@ -335,7 +335,7 @@ static int scmi_regulator_probe(struct scmi_device *sdev)
 	 * plausible SCMI Voltage Domain number, all belonging to this SCMI
 	 * platform instance node (handle->dev->of_node).
 	 */
-	np = of_find_node_by_name(handle->dev->device_node, "regulators");
+	np = of_find_node_by_name(handle->dev->of_node, "regulators");
 	for_each_child_of_node(np, child) {
 		ret = process_scmi_regulator_of_node(sdev, ph, child, rinfo);
 		/* abort on any mem issue */
diff --git a/drivers/regulator/stm32-pwr.c b/drivers/regulator/stm32-pwr.c
index 8cb0b0c12e..ac738b4ee9 100644
--- a/drivers/regulator/stm32-pwr.c
+++ b/drivers/regulator/stm32-pwr.c
@@ -152,7 +152,7 @@ static int stm32_pwr_regulator_probe(struct device_d *dev)
 	if (IS_ERR(iores))
 		return PTR_ERR(iores);
 
-	for_each_child_of_node(dev->device_node, child) {
+	for_each_child_of_node(dev->of_node, child) {
 		const struct stm32_pwr_desc *desc = NULL;
 
 		for (i = 0; i < STM32PWR_REG_NUM_REGS; i++) {
diff --git a/drivers/regulator/stm32-vrefbuf.c b/drivers/regulator/stm32-vrefbuf.c
index 77287c2b0e..80733fed3d 100644
--- a/drivers/regulator/stm32-vrefbuf.c
+++ b/drivers/regulator/stm32-vrefbuf.c
@@ -173,7 +173,7 @@ static int stm32_vrefbuf_probe(struct device_d *dev)
 	rdev->dev = dev;
 	rdev->desc = &stm32_vrefbuf_regu.desc;
 
-	ret = of_regulator_register(rdev, dev->device_node);
+	ret = of_regulator_register(rdev, dev->of_node);
 	if (ret) {
 		ret = PTR_ERR(rdev);
 		dev_err(dev, "register failed with error %d\n", ret);
diff --git a/drivers/regulator/stpmic1_regulator.c b/drivers/regulator/stpmic1_regulator.c
index 63ed4468ed..ee4abb5b81 100644
--- a/drivers/regulator/stpmic1_regulator.c
+++ b/drivers/regulator/stpmic1_regulator.c
@@ -408,7 +408,7 @@ static int stpmic1_regulator_probe(struct device_d *dev)
 {
 	int i, ret;
 
-	ret = of_regulator_match(dev, dev->device_node, stpmic1_matches,
+	ret = of_regulator_match(dev, dev->of_node, stpmic1_matches,
 				 ARRAY_SIZE(stpmic1_matches));
 	if (ret < 0) {
 		dev_err(dev, "Error in PMIC regulator device tree node");
diff --git a/drivers/remoteproc/imx_rproc.c b/drivers/remoteproc/imx_rproc.c
index ff74adb112..5e575bac5c 100644
--- a/drivers/remoteproc/imx_rproc.c
+++ b/drivers/remoteproc/imx_rproc.c
@@ -387,7 +387,7 @@ static int imx_rproc_addr_init(struct imx_rproc *priv,
 			       struct device_d *dev)
 {
 	const struct imx_rproc_dcfg *dcfg = priv->dcfg;
-	struct device_node *np = dev->device_node;
+	struct device_node *np = dev->of_node;
 	int a, b = 0, err, nph;
 
 	/* remap required addresses */
@@ -451,7 +451,7 @@ static int imx_rproc_addr_init(struct imx_rproc *priv,
 
 static int imx_rproc_probe(struct device_d *dev)
 {
-	struct device_node *np = dev->device_node;
+	struct device_node *np = dev->of_node;
 	struct imx_rproc *priv;
 	struct rproc *rproc;
 	const struct imx_rproc_dcfg *dcfg;
diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
index a81787bc6c..8dff3c72ae 100644
--- a/drivers/remoteproc/remoteproc_core.c
+++ b/drivers/remoteproc/remoteproc_core.c
@@ -127,8 +127,8 @@ int rproc_add(struct rproc *rproc)
 	const char *alias = NULL;
 	int ret;
 
-	if (dev->device_node)
-		alias = of_alias_get(dev->device_node);
+	if (dev->of_node)
+		alias = of_alias_get(dev->of_node);
 
 	ret = rproc_register_dev(rproc, alias);
 	if (ret)
diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/stm32_rproc.c
index d29b59bcdc..fbbc7dff89 100644
--- a/drivers/remoteproc/stm32_rproc.c
+++ b/drivers/remoteproc/stm32_rproc.c
@@ -40,7 +40,7 @@ static void *stm32_rproc_da_to_va(struct rproc *rproc, u64 da, int len)
 	struct device_d *dev = &rproc->dev;
 	u64 paddr;
 
-	paddr = of_translate_dma_address(dev->parent->device_node, &in_addr);
+	paddr = of_translate_dma_address(dev->parent->of_node, &in_addr);
 	if (paddr == OF_BAD_ADDR)
 		return NULL;
 
@@ -130,7 +130,7 @@ out:
 
 static int stm32_rproc_parse_dt(struct device_d *dev, struct stm32_rproc *ddata)
 {
-	struct device_node *np = dev->device_node;
+	struct device_node *np = dev->of_node;
 	struct stm32_syscon tz;
 	unsigned int tzen;
 	int err;
diff --git a/drivers/reset/core.c b/drivers/reset/core.c
index b252f94d6e..fe9a6ea7cf 100644
--- a/drivers/reset/core.c
+++ b/drivers/reset/core.c
@@ -164,7 +164,8 @@ EXPORT_SYMBOL_GPL(reset_control_deassert);
  */
 int reset_control_get_count(struct device_d *dev)
 {
-	return of_count_phandle_with_args(dev->device_node, "resets", "#reset-cells");
+	return of_count_phandle_with_args(dev->of_node, "resets",
+					  "#reset-cells");
 }
 
 /**
@@ -255,10 +256,10 @@ gpio_reset_control_get(struct device_d *dev, const char *id)
 	if (id)
 		return ERR_PTR(-EINVAL);
 
-	if (!of_get_property(dev->device_node, "reset-gpios", NULL))
+	if (!of_get_property(dev->of_node, "reset-gpios", NULL))
 		return NULL;
 
-	gpio = of_get_named_gpio_flags(dev->device_node, "reset-gpios", 0, &flags);
+	gpio = of_get_named_gpio_flags(dev->of_node, "reset-gpios", 0, &flags);
 	if (gpio < 0)
 		return ERR_PTR(gpio);
 
@@ -285,7 +286,7 @@ struct reset_control *reset_control_get(struct device_d *dev, const char *id)
 	if (!dev)
 		return ERR_PTR(-EINVAL);
 
-	rstc = of_reset_control_get(dev->device_node, id);
+	rstc = of_reset_control_get(dev->of_node, id);
 	if (IS_ERR(rstc))
 		return ERR_CAST(rstc);
 
@@ -360,7 +361,7 @@ int device_reset_all(struct device_d *dev)
 	for (i = 0; i < reset_control_get_count(dev); i++) {
 		int ret;
 
-		rstc = of_reset_control_get_by_index(dev->device_node, i);
+		rstc = of_reset_control_get_by_index(dev->of_node, i);
 		if (IS_ERR(rstc))
 			return PTR_ERR(rstc);
 
diff --git a/drivers/reset/reset-imx7.c b/drivers/reset/reset-imx7.c
index 1591ace2cd..23d371f0c5 100644
--- a/drivers/reset/reset-imx7.c
+++ b/drivers/reset/reset-imx7.c
@@ -260,7 +260,7 @@ static int imx7_reset_probe(struct device_d *dev)
 
 	imx7src = xzalloc(sizeof(*imx7src));
 	imx7src->signals = variant->signals;
-	imx7src->regmap = syscon_node_to_regmap(dev->device_node);
+	imx7src->regmap = syscon_node_to_regmap(dev->of_node);
 	if (IS_ERR(imx7src->regmap)) {
 		dev_err(dev, "Unable to get imx7-src regmap");
 		return PTR_ERR(imx7src->regmap);
@@ -268,7 +268,7 @@ static int imx7_reset_probe(struct device_d *dev)
 
 	imx7src->rcdev.nr_resets = variant->signals_num;
 	imx7src->rcdev.ops       = &variant->ops;
-	imx7src->rcdev.of_node   = dev->device_node;
+	imx7src->rcdev.of_node   = dev->of_node;
 
 	return reset_controller_register(&imx7src->rcdev);
 }
diff --git a/drivers/reset/reset-scmi.c b/drivers/reset/reset-scmi.c
index c33bbc5c8a..5f8473690d 100644
--- a/drivers/reset/reset-scmi.c
+++ b/drivers/reset/reset-scmi.c
@@ -90,7 +90,7 @@ static int scmi_reset_probe(struct scmi_device *sdev)
 {
 	struct scmi_reset_data *data;
 	struct device_d *dev = &sdev->dev;
-	struct device_node *np = dev->device_node;
+	struct device_node *np = dev->of_node;
 	const struct scmi_handle *handle = sdev->handle;
 	struct scmi_protocol_handle *ph;
 
diff --git a/drivers/reset/reset-simple.c b/drivers/reset/reset-simple.c
index 9db00f64f4..0f3f6a53fe 100644
--- a/drivers/reset/reset-simple.c
+++ b/drivers/reset/reset-simple.c
@@ -167,7 +167,7 @@ static int reset_simple_probe(struct device_d *dev)
 	data->membase = IOMEM(res->start);
 	data->rcdev.nr_resets = resource_size(res) * BITS_PER_BYTE;
 	data->rcdev.ops = &reset_simple_ops;
-	data->rcdev.of_node = dev->device_node;
+	data->rcdev.of_node = dev->of_node;
 
 	if (devdata) {
 		reg_offset = devdata->reg_offset;
diff --git a/drivers/reset/reset-socfpga.c b/drivers/reset/reset-socfpga.c
index 146cc92eb3..c33e4d3c51 100644
--- a/drivers/reset/reset-socfpga.c
+++ b/drivers/reset/reset-socfpga.c
@@ -78,7 +78,7 @@ static int socfpga_reset_probe(struct device_d *dev)
 {
 	struct socfpga_reset_data *data;
 	struct resource *res;
-	struct device_node *np = dev->device_node;
+	struct device_node *np = dev->of_node;
 	u32 modrst_offset;
 
 	data = xzalloc(sizeof(*data));
diff --git a/drivers/reset/reset-starfive-vic.c b/drivers/reset/reset-starfive-vic.c
index 960e82e824..01765b00d0 100644
--- a/drivers/reset/reset-starfive-vic.c
+++ b/drivers/reset/reset-starfive-vic.c
@@ -216,7 +216,7 @@ static int starfive_rstgen_probe(struct device_d *dev)
 	priv->base = IOMEM(iores->start);
 	priv->rcdev.nr_resets = RSTN_END;
 	priv->rcdev.ops = &starfive_rstgen_ops;
-	priv->rcdev.of_node = dev->device_node;
+	priv->rcdev.of_node = dev->of_node;
 
 	return reset_controller_register(&priv->rcdev);
 }
diff --git a/drivers/rtc/rtc-ds1307.c b/drivers/rtc/rtc-ds1307.c
index 314d794f11..680611fea7 100644
--- a/drivers/rtc/rtc-ds1307.c
+++ b/drivers/rtc/rtc-ds1307.c
@@ -288,7 +288,7 @@ static int ds1307_probe(struct device_d *dev)
 	int			tmp;
 	unsigned char		*buf;
 	unsigned long driver_data;
-	const struct device_node *np = dev->device_node;
+	const struct device_node *np = dev->of_node;
 
 	ds1307 = xzalloc(sizeof(struct ds1307));
 
diff --git a/drivers/serial/serial_clps711x.c b/drivers/serial/serial_clps711x.c
index 81eb85429e..a348c625f3 100644
--- a/drivers/serial/serial_clps711x.c
+++ b/drivers/serial/serial_clps711x.c
@@ -148,7 +148,7 @@ static int clps711x_probe(struct device_d *dev)
 		goto out_err;
 	}
 
-	syscon = of_parse_phandle(dev->device_node, "syscon", 0);
+	syscon = of_parse_phandle(dev->of_node, "syscon", 0);
 	s->regmap = syscon_node_to_regmap(syscon);
 	if (IS_ERR(s->regmap)) {
 		err = PTR_ERR(s->regmap);
@@ -164,7 +164,7 @@ static int clps711x_probe(struct device_d *dev)
 	s->cdev.setbrg	= clps711x_setbaudrate;
 	s->cdev.linux_console_name = "ttyCL";
 
-	devname = of_alias_get(dev->device_node);
+	devname = of_alias_get(dev->of_node);
 	if (devname) {
 		s->cdev.devname = xstrdup(devname);
 		s->cdev.devid = DEVICE_ID_SINGLE;
diff --git a/drivers/serial/serial_imx.c b/drivers/serial/serial_imx.c
index cf9c3f02a7..225049e52a 100644
--- a/drivers/serial/serial_imx.c
+++ b/drivers/serial/serial_imx.c
@@ -236,19 +236,19 @@ static int imx_serial_probe(struct device_d *dev)
 	cdev->linux_console_name = "ttymxc";
 	cdev->linux_earlycon_name = "ec_imx6q";
 	cdev->phys_base = priv->regs;
-	if (dev->device_node) {
-		devname = of_alias_get(dev->device_node);
+	if (dev->of_node) {
+		devname = of_alias_get(dev->of_node);
 		if (devname) {
 			cdev->devname = xstrdup(devname);
 			cdev->devid = DEVICE_ID_SINGLE;
 		}
 	}
 
-	if (of_property_read_bool(dev->device_node, "fsl,dte-mode"))
+	if (of_property_read_bool(dev->of_node, "fsl,dte-mode"))
 		priv->dte_mode = 1;
 
-	if (of_property_read_bool(dev->device_node, "linux,rs485-enabled-at-boot-time") &&
-	    !of_property_read_bool(dev->device_node, "rs485-rts-active-low"))
+	if (of_property_read_bool(dev->of_node, "linux,rs485-enabled-at-boot-time") &&
+	    !of_property_read_bool(dev->of_node, "rs485-rts-active-low"))
 		priv->rs485_mode = 1;
 
 	imx_serial_init_port(cdev);
diff --git a/drivers/serial/serial_lpuart.c b/drivers/serial/serial_lpuart.c
index 720018c9ac..2f51221a03 100644
--- a/drivers/serial/serial_lpuart.c
+++ b/drivers/serial/serial_lpuart.c
@@ -151,8 +151,8 @@ static int lpuart_serial_probe(struct device_d *dev)
 	cdev->flush  = lpuart_serial_flush;
 	cdev->setbrg = lpuart_serial_setbaudrate;
 
-	if (dev->device_node) {
-		devname = of_alias_get(dev->device_node);
+	if (dev->of_node) {
+		devname = of_alias_get(dev->of_node);
 		if (devname) {
 			cdev->devname = xstrdup(devname);
 			cdev->devid   = DEVICE_ID_SINGLE;
diff --git a/drivers/serial/serial_sifive.c b/drivers/serial/serial_sifive.c
index 931269f2e3..9257363fd1 100644
--- a/drivers/serial/serial_sifive.c
+++ b/drivers/serial/serial_sifive.c
@@ -130,7 +130,8 @@ static int sifive_serial_probe(struct device_d *dev)
 	} else {
 		dev_dbg(dev, "failed to get clock. Fallback to device tree.\n");
 
-		ret = of_property_read_u32(dev->device_node, "clock-frequency", &freq);
+		ret = of_property_read_u32(dev->of_node, "clock-frequency",
+					   &freq);
 		if (ret) {
 			dev_warn(dev, "unknown clock frequency\n");
 			return ret;
diff --git a/drivers/serial/serial_stm32.c b/drivers/serial/serial_stm32.c
index f1d4c6de90..f0571f986b 100644
--- a/drivers/serial/serial_stm32.c
+++ b/drivers/serial/serial_stm32.c
@@ -186,8 +186,8 @@ static int stm32_serial_probe(struct device_d *dev)
 	cdev->setbrg = stm32_serial_setbaudrate;
 	cdev->linux_console_name = "ttySTM";
 
-	if (dev->device_node) {
-		devname = of_alias_get(dev->device_node);
+	if (dev->of_node) {
+		devname = of_alias_get(dev->of_node);
 		if (devname) {
 			cdev->devname = xstrdup(devname);
 			cdev->devid   = DEVICE_ID_SINGLE;
diff --git a/drivers/soc/imx/gpcv2.c b/drivers/soc/imx/gpcv2.c
index 304f6d81eb..248763db54 100644
--- a/drivers/soc/imx/gpcv2.c
+++ b/drivers/soc/imx/gpcv2.c
@@ -1178,7 +1178,7 @@ static int imx_pgc_domain_probe(struct device_d *dev)
 		goto out_domain_unmap;
 	}
 
-	ret = of_genpd_add_provider_simple(domain->dev->device_node,
+	ret = of_genpd_add_provider_simple(domain->dev->of_node,
 					   &domain->genpd);
 	if (ret) {
 		dev_err(domain->dev, "Failed to add genpd provider\n");
@@ -1222,7 +1222,7 @@ static int imx_gpcv2_probe(struct device_d *dev)
 	struct regmap *regmap;
 	int ret, pass = 0;
 
-	pgc_np = of_get_child_by_name(dev->device_node, "pgc");
+	pgc_np = of_get_child_by_name(dev->of_node, "pgc");
 	if (!pgc_np) {
 		dev_err(dev, "No power domains specified in DT\n");
 		return -EINVAL;
@@ -1277,8 +1277,8 @@ again:
 		domain->genpd.power_off = imx_pgc_power_down;
 
 		pd_dev = xzalloc(sizeof(*pd_dev));
-		pd_dev->device_node = np;
-		pd_dev->device_node->dev = pd_dev;
+		pd_dev->of_node = np;
+		pd_dev->of_node->dev = pd_dev;
 		pd_dev->id = domain_index;
 		pd_dev->parent = dev;
 		pd_dev->priv = domain;
diff --git a/drivers/soc/kvx/kvx_socinfo.c b/drivers/soc/kvx/kvx_socinfo.c
index 100faae766..9e3a167fc7 100644
--- a/drivers/soc/kvx/kvx_socinfo.c
+++ b/drivers/soc/kvx/kvx_socinfo.c
@@ -125,7 +125,7 @@ static int kvx_socinfo_probe(struct device_d *dev)
 {
 	kvx_soc_info_read_revision();
 
-	return kvx_read_serial(dev->device_node);
+	return kvx_read_serial(dev->of_node);
 }
 
 static const struct of_device_id kvx_socinfo_dt_ids[] = {
diff --git a/drivers/soc/rockchip/io-domain.c b/drivers/soc/rockchip/io-domain.c
index ac5724c0e7..7ff6bd38a2 100644
--- a/drivers/soc/rockchip/io-domain.c
+++ b/drivers/soc/rockchip/io-domain.c
@@ -128,7 +128,7 @@ static const struct of_device_id rockchip_iodomain_match[] = {
 
 static int rockchip_iodomain_probe(struct device_d *dev)
 {
-	struct device_node *np = dev->device_node, *parent;
+	struct device_node *np = dev->of_node, *parent;
 	struct rockchip_iodomain *iod;
 	int i, ret = 0;
 
diff --git a/drivers/sound/gpio-beeper.c b/drivers/sound/gpio-beeper.c
index 300998d607..714bbee3c3 100644
--- a/drivers/sound/gpio-beeper.c
+++ b/drivers/sound/gpio-beeper.c
@@ -24,7 +24,7 @@ static int gpio_beeper_beep(struct sound_card *card, unsigned freq, unsigned dur
 
 static int gpio_beeper_probe(struct device_d *dev)
 {
-	struct device_node *np = dev->device_node;
+	struct device_node *np = dev->of_node;
 	struct gpio_beeper *beeper;
 	struct sound_card *card;
 	int gpio;
diff --git a/drivers/sound/pwm-beeper.c b/drivers/sound/pwm-beeper.c
index ef053f97cf..83401f5dad 100644
--- a/drivers/sound/pwm-beeper.c
+++ b/drivers/sound/pwm-beeper.c
@@ -60,7 +60,7 @@ static int pwm_beeper_probe(struct device_d *dev)
 	beeper = xzalloc(sizeof(*beeper));
 	dev->priv = beeper;
 
-	beeper->pwm = of_pwm_request(dev->device_node, NULL);
+	beeper->pwm = of_pwm_request(dev->of_node, NULL);
 	if (IS_ERR(beeper->pwm)) {
 		error = PTR_ERR(beeper->pwm);
 		if (error != -EPROBE_DEFER)
@@ -88,7 +88,8 @@ static int pwm_beeper_probe(struct device_d *dev)
 		return error;
 	}
 
-	error = of_property_read_u32(dev->device_node, "beeper-hz", &bell_frequency);
+	error = of_property_read_u32(dev->of_node, "beeper-hz",
+				     &bell_frequency);
 	if (error) {
 		bell_frequency = 1000;
 		dev_dbg(dev, "failed to parse 'beeper-hz' property, using default: %uHz\n",
@@ -96,7 +97,7 @@ static int pwm_beeper_probe(struct device_d *dev)
 	}
 
 	card = &beeper->card;
-	card->name = dev->device_node->full_name;
+	card->name = dev->of_node->full_name;
 	card->bell_frequency = bell_frequency;
 	card->beep = pwm_beeper_beep;
 
diff --git a/drivers/spi/ath79_spi.c b/drivers/spi/ath79_spi.c
index 383570b253..5b1f984be4 100644
--- a/drivers/spi/ath79_spi.c
+++ b/drivers/spi/ath79_spi.c
@@ -238,7 +238,7 @@ static int ath79_spi_probe(struct device_d *dev)
 	master->num_chipselect = 3;
 
 	if (IS_ENABLED(CONFIG_OFDEVICE)) {
-		struct device_node *node = dev->device_node;
+		struct device_node *node = dev->of_node;
 		u32 num_cs;
 		int ret;
 
diff --git a/drivers/spi/atmel_spi.c b/drivers/spi/atmel_spi.c
index ec90330e53..6c2809cfff 100644
--- a/drivers/spi/atmel_spi.c
+++ b/drivers/spi/atmel_spi.c
@@ -389,7 +389,7 @@ static int atmel_spi_probe(struct device_d *dev)
 	int ret = 0;
 	int i;
 	struct spi_master *master;
-	struct device_node *node = dev->device_node;
+	struct device_node *node = dev->of_node;
 	struct atmel_spi *as;
 	struct at91_spi_platform_data *pdata = dev->platform_data;
 
diff --git a/drivers/spi/dspi_spi.c b/drivers/spi/dspi_spi.c
index fcfa2a830d..6e498dd67e 100644
--- a/drivers/spi/dspi_spi.c
+++ b/drivers/spi/dspi_spi.c
@@ -319,7 +319,7 @@ static int dspi_probe(struct device_d *dev)
 	struct resource *io;
 	struct fsl_dspi *dspi;
 	struct spi_master *master;
-	struct device_node *np = dev->device_node;
+	struct device_node *np = dev->of_node;
 
 	int ret = 0;
 	uint32_t bus_num = 0;
@@ -351,9 +351,9 @@ static int dspi_probe(struct device_d *dev)
 	else
 		master->bus_num = dev->id;
 
-	of_property_read_u32(dev->device_node, "fsl,spi-cs-sck-delay",
+	of_property_read_u32(dev->of_node, "fsl,spi-cs-sck-delay",
 			     &dspi->cs_sck_delay);
-	of_property_read_u32(dev->device_node, "fsl,spi-sck-cs-delay",
+	of_property_read_u32(dev->of_node, "fsl,spi-sck-cs-delay",
 			     &dspi->sck_cs_delay);
 
 	io = dev_request_mem_resource(dev, 0);
diff --git a/drivers/spi/gpio_spi.c b/drivers/spi/gpio_spi.c
index 1956eed9cc..8434c37cc9 100644
--- a/drivers/spi/gpio_spi.c
+++ b/drivers/spi/gpio_spi.c
@@ -128,7 +128,7 @@ static int gpio_spi_setup(struct spi_device *spi)
 
 static int gpio_spi_of_probe(struct device_d *dev)
 {
-	struct device_node *np = dev->device_node;
+	struct device_node *np = dev->of_node;
 	struct gpio_spi_pdata *pdata;
 	int n, sck;
 
diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
index 3e0ad2db00..f70b543b4c 100644
--- a/drivers/spi/imx_spi.c
+++ b/drivers/spi/imx_spi.c
@@ -562,7 +562,7 @@ static __maybe_unused struct spi_imx_devtype_data spi_imx_devtype_data_2_3 = {
 
 static int imx_spi_dt_probe(struct imx_spi *imx)
 {
-	struct device_node *node = imx->master.dev->device_node;
+	struct device_node *node = imx->master.dev->of_node;
 	int i;
 
 	if (!node)
@@ -603,7 +603,7 @@ static int imx_spi_probe(struct device_d *dev)
 		master->num_chipselect = pdata->num_chipselect;
 		imx->cs_array = pdata->chipselect;
 	} else if (IS_ENABLED(CONFIG_OFDEVICE)) {
-		ret = of_alias_get_id(dev->device_node, "spi");
+		ret = of_alias_get_id(dev->of_node, "spi");
 		if (ret < 0)
 			goto err_free;
 		master->bus_num = ret;
diff --git a/drivers/spi/mvebu_spi.c b/drivers/spi/mvebu_spi.c
index 3325138604..8584adfd07 100644
--- a/drivers/spi/mvebu_spi.c
+++ b/drivers/spi/mvebu_spi.c
@@ -356,7 +356,7 @@ static int mvebu_spi_probe(struct device_d *dev)
 	const struct of_device_id *match;
 	int ret = 0;
 
-	match = of_match_node(mvebu_spi_dt_ids, dev->device_node);
+	match = of_match_node(mvebu_spi_dt_ids, dev->of_node);
 	if (!match)
 		return -EINVAL;
 
diff --git a/drivers/spi/omap3_spi.c b/drivers/spi/omap3_spi.c
index 44c35673d8..ca79eaf111 100644
--- a/drivers/spi/omap3_spi.c
+++ b/drivers/spi/omap3_spi.c
@@ -334,10 +334,10 @@ static int omap3_spi_setup(struct spi_device *spi)
 
 static int omap3_spi_probe_dt(struct device_d *dev, struct omap3_spi_master *omap3_master)
 {
-	if (!IS_ENABLED(CONFIG_OFDEVICE) || !dev->device_node)
+	if (!IS_ENABLED(CONFIG_OFDEVICE) || !dev->of_node)
 		return -ENODEV;
 
-	if (of_property_read_bool(dev->device_node, "ti,pindir-d0-out-d1-in"))
+	if (of_property_read_bool(dev->of_node, "ti,pindir-d0-out-d1-in"))
 		omap3_master->swap_miso_mosi = 1;
 
 	return 0;
diff --git a/drivers/spi/spi-fsl-dspi.c b/drivers/spi/spi-fsl-dspi.c
index 21cf84233b..5c8469576b 100644
--- a/drivers/spi/spi-fsl-dspi.c
+++ b/drivers/spi/spi-fsl-dspi.c
@@ -462,10 +462,10 @@ static int dspi_setup(struct spi_device *spi)
 			return -ENOMEM;
 	}
 
-	of_property_read_u32(spi->dev.device_node, "fsl,spi-cs-sck-delay",
+	of_property_read_u32(spi->dev.of_node, "fsl,spi-cs-sck-delay",
 			     &cs_sck_delay);
 
-	of_property_read_u32(spi->dev.device_node, "fsl,spi-sck-cs-delay",
+	of_property_read_u32(spi->dev.of_node, "fsl,spi-sck-cs-delay",
 			     &sck_cs_delay);
 
 	chip->void_write_data = 0;
@@ -555,7 +555,7 @@ static void dspi_init(struct fsl_dspi *dspi)
 
 static int dspi_probe(struct device_d *dev)
 {
-	struct device_node *np = dev->device_node;
+	struct device_node *np = dev->of_node;
 	const struct regmap_config *regmap_config;
 	struct spi_master *master;
 	int ret, cs_num, bus_num = -1;
diff --git a/drivers/spi/spi-fsl-qspi.c b/drivers/spi/spi-fsl-qspi.c
index f9bf888603..835c93565c 100644
--- a/drivers/spi/spi-fsl-qspi.c
+++ b/drivers/spi/spi-fsl-qspi.c
@@ -751,7 +751,7 @@ static const char *fsl_qspi_get_name(struct spi_mem *mem)
 	 * mtd/spi-nor/fsl-quadspi.c, we set a custom name derived from the
 	 * platform_device of the controller.
 	 */
-	if (of_get_available_child_count(q->dev->device_node) == 1)
+	if (of_get_available_child_count(q->dev->of_node) == 1)
 		return dev_name(q->dev);
 
 	name = basprintf("%s-%d", dev_name(q->dev), mem->spi->chip_select);
diff --git a/drivers/spi/spi-nxp-fspi.c b/drivers/spi/spi-nxp-fspi.c
index 673b91d6dc..b0378126a3 100644
--- a/drivers/spi/spi-nxp-fspi.c
+++ b/drivers/spi/spi-nxp-fspi.c
@@ -942,7 +942,7 @@ static const char *nxp_fspi_get_name(struct spi_mem *mem)
 
 	/* Set custom name derived from the platform_device of the controller.
 	 */
-	if (of_get_available_child_count(f->dev->device_node) == 1)
+	if (of_get_available_child_count(f->dev->of_node) == 1)
 		return dev_name(f->dev);
 
 	name = basprintf("%s-%d", dev_name(f->dev), mem->spi->chip_select);
diff --git a/drivers/spi/spi-sifive.c b/drivers/spi/spi-sifive.c
index 713bcc0c3b..eb87ba1d8c 100644
--- a/drivers/spi/spi-sifive.c
+++ b/drivers/spi/spi-sifive.c
@@ -457,7 +457,7 @@ static const struct spi_controller_mem_ops sifive_spi_mem_ops = {
 
 static void sifive_spi_dt_probe(struct sifive_spi *spi)
 {
-	struct device_node *node = spi->ctlr.dev->device_node;
+	struct device_node *node = spi->ctlr.dev->of_node;
 
 	spi->fifo_depth = SIFIVE_SPI_DEFAULT_DEPTH;
 	of_property_read_u32(node, "sifive,fifo-depth", &spi->fifo_depth);
diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index b840dbe286..15c8a9f447 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -71,7 +71,7 @@ struct spi_device *spi_new_device(struct spi_controller *ctrl,
 	/* allocate a free id for this chip */
 	proxy->dev.id = DEVICE_ID_DYNAMIC;
 	proxy->dev.type_data = proxy;
-	proxy->dev.device_node = chip->device_node;
+	proxy->dev.of_node = chip->device_node;
 	proxy->dev.parent = ctrl->dev;
 	proxy->master = proxy->controller = ctrl;
 
@@ -110,7 +110,7 @@ static void spi_of_register_slaves(struct spi_controller *ctrl)
 	struct device_node *n;
 	struct spi_board_info chip;
 	struct property *reg;
-	struct device_node *node = ctrl->dev->device_node;
+	struct device_node *node = ctrl->dev->of_node;
 
 	if (!IS_ENABLED(CONFIG_OFDEVICE))
 		return;
@@ -259,8 +259,8 @@ int spi_register_controller(struct spi_controller *ctrl)
 	if (ctrl->num_chipselect == 0)
 		return -EINVAL;
 
-	if ((ctrl->bus_num < 0) && ctrl->dev->device_node)
-		ctrl->bus_num = of_alias_get_id(ctrl->dev->device_node, "spi");
+	if ((ctrl->bus_num < 0) && ctrl->dev->of_node)
+		ctrl->bus_num = of_alias_get_id(ctrl->dev->of_node, "spi");
 
 	/* convention:  dynamically assigned bus IDs count down from the max */
 	if (ctrl->bus_num < 0)
diff --git a/drivers/spi/zynq_qspi.c b/drivers/spi/zynq_qspi.c
index f0edc41c37..f8073d8f90 100644
--- a/drivers/spi/zynq_qspi.c
+++ b/drivers/spi/zynq_qspi.c
@@ -541,7 +541,7 @@ static const struct spi_controller_mem_ops zynq_qspi_mem_ops = {
 
 static int zynq_qspi_probe(struct device_d *dev)
 {
-	struct device_node *np = dev->device_node;
+	struct device_node *np = dev->of_node;
 	struct spi_controller *ctlr;
 	struct zynq_qspi *xqspi;
 	struct resource *iores;
diff --git a/drivers/usb/dwc3/core.c b/drivers/usb/dwc3/core.c
index 7be3b18df9..77e225e47a 100644
--- a/drivers/usb/dwc3/core.c
+++ b/drivers/usb/dwc3/core.c
@@ -654,7 +654,7 @@ static void dwc3_set_incr_burst_type(struct dwc3 *dwc)
 	 * result = 1, means INCRx burst mode supported.
 	 * result > 1, means undefined length burst mode supported.
 	 */
-	of_find_property(dev->device_node, "snps,incr-burst-type-adjustment",
+	of_find_property(dev->of_node, "snps,incr-burst-type-adjustment",
 			       &ntype);
 
 	ntype /= sizeof(u32);
@@ -669,7 +669,7 @@ static void dwc3_set_incr_burst_type(struct dwc3 *dwc)
 	}
 
 	/* Get INCR burst type, and parse it */
-	ret = of_property_read_u32_array(dev->device_node,
+	ret = of_property_read_u32_array(dev->of_node,
 					 "snps,incr-burst-type-adjustment",
 					 vals, ntype);
 	if (ret) {
@@ -997,20 +997,20 @@ static void dwc3_get_properties(struct dwc3 *dwc)
 	 */
 	hird_threshold = 12;
 
-	dwc->maximum_speed = of_usb_get_maximum_speed(dev->device_node, NULL);
-	dwc->dr_mode = of_usb_get_dr_mode(dev->device_node, NULL);
-	dwc->hsphy_mode = of_usb_get_phy_mode(dev->device_node, NULL);
+	dwc->maximum_speed = of_usb_get_maximum_speed(dev->of_node, NULL);
+	dwc->dr_mode = of_usb_get_dr_mode(dev->of_node, NULL);
+	dwc->hsphy_mode = of_usb_get_phy_mode(dev->of_node, NULL);
 
-	dwc->dis_u2_freeclk_exists_quirk = of_property_read_bool(dev->device_node,
-		"snps,dis-u2-freeclk-exists-quirk");
+	dwc->dis_u2_freeclk_exists_quirk = of_property_read_bool(dev->of_node,
+								 "snps,dis-u2-freeclk-exists-quirk");
 	dwc->lpm_nyet_threshold = lpm_nyet_threshold;
 	dwc->tx_de_emphasis = tx_de_emphasis;
 
-	if (of_get_property(dev->device_node, "snps,dis_rxdet_inp3_quirk",
+	if (of_get_property(dev->of_node, "snps,dis_rxdet_inp3_quirk",
 			    NULL))
 		dwc->dis_rxdet_inp3_quirk = 1;
 
-	of_property_read_u32_array(dev->device_node,
+	of_property_read_u32_array(dev->of_node,
 				   "snps,quirk-frame-length-adjustment",
 				   &dwc->fladj, 1);
 
@@ -1114,10 +1114,10 @@ static int dwc3_probe(struct device_d *dev)
 
 	dwc3_get_properties(dwc);
 
-	if (dev->device_node) {
+	if (dev->of_node) {
 		dwc->num_clks = match->num_clks;
 
-		if (of_find_property(dev->device_node, "clocks", NULL)) {
+		if (of_find_property(dev->of_node, "clocks", NULL)) {
 			ret = clk_bulk_get(dev, dwc->num_clks, dwc->clks);
 			if (ret)
 				return ret;
diff --git a/drivers/usb/dwc3/dwc3-of-simple.c b/drivers/usb/dwc3/dwc3-of-simple.c
index 6261122a12..c2785a5336 100644
--- a/drivers/usb/dwc3/dwc3-of-simple.c
+++ b/drivers/usb/dwc3/dwc3-of-simple.c
@@ -28,7 +28,7 @@ struct dwc3_of_simple {
 static int dwc3_of_simple_probe(struct device_d *dev)
 {
 	struct dwc3_of_simple	*simple;
-	struct device_node	*np = dev->device_node;
+	struct device_node	*np = dev->of_node;
 
 	int			ret;
 
diff --git a/drivers/usb/gadget/at91_udc.c b/drivers/usb/gadget/at91_udc.c
index 80cbd36118..c026e49dd9 100644
--- a/drivers/usb/gadget/at91_udc.c
+++ b/drivers/usb/gadget/at91_udc.c
@@ -1407,12 +1407,12 @@ static int __init at91udc_probe(struct device_d *dev)
 		iclk_name = "udc_clk";
 		fclk_name = "udpck";
 	} else {
-		if (!IS_ENABLED(CONFIG_OFDEVICE) || !dev->device_node) {
+		if (!IS_ENABLED(CONFIG_OFDEVICE) || !dev->of_node) {
 			dev_err(dev, "no DT and no platform_data\n");
 			return -ENODEV;
 		}
 
-		at91udc_of_init(udc, dev->device_node);
+		at91udc_of_init(udc, dev->of_node);
 		iclk_name = "pclk";
 		fclk_name = "hclk";
 	}
diff --git a/drivers/usb/host/ehci-atmel.c b/drivers/usb/host/ehci-atmel.c
index ba24709e13..914c0486de 100644
--- a/drivers/usb/host/ehci-atmel.c
+++ b/drivers/usb/host/ehci-atmel.c
@@ -56,7 +56,7 @@ static int atmel_ehci_probe(struct device_d *dev)
 	const char *uclk_name;
 	struct ehci_host *ehci;
 
-	uclk_name = (dev->device_node) ? "usb_clk" : "uhpck";
+	uclk_name = (dev->of_node) ? "usb_clk" : "uhpck";
 
 	atehci = xzalloc(sizeof(*atehci));
 	atehci->dev = dev;
diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index 068504557b..8989c57f4c 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -1403,7 +1403,7 @@ static int ehci_probe(struct device_d *dev)
 	struct resource *iores;
 	struct ehci_data data = {};
 	struct ehci_platform_data *pdata = dev->platform_data;
-	struct device_node *dn = dev->device_node;
+	struct device_node *dn = dev->of_node;
 	struct ehci_host *ehci;
 	struct clk_bulk_data *clks;
 	int num_clocks, ret;
diff --git a/drivers/usb/host/ohci-at91.c b/drivers/usb/host/ohci-at91.c
index a77e2cae14..8fd55b4cdf 100644
--- a/drivers/usb/host/ohci-at91.c
+++ b/drivers/usb/host/ohci-at91.c
@@ -60,7 +60,7 @@ static int at91_ohci_probe_dt(struct device_d *dev)
 	int i, ret, gpio;
 	enum of_gpio_flags flags;
 	struct at91_usbh_data *pdata;
-	struct device_node *np = dev->device_node;
+	struct device_node *np = dev->of_node;
 
 	pdata = xzalloc(sizeof(*pdata));
 	dev->platform_data = pdata;
@@ -116,7 +116,7 @@ static int at91_ohci_probe(struct device_d *dev)
 	dev->priv = ohci_at91;
 	ohci_at91->dev = dev;
 
-	if (dev->device_node) {
+	if (dev->of_node) {
 		ret = at91_ohci_probe_dt(dev);
 		if (ret < 0)
 			return ret;
diff --git a/drivers/usb/imx/chipidea-imx.c b/drivers/usb/imx/chipidea-imx.c
index f71cf80b7d..75fe81f068 100644
--- a/drivers/usb/imx/chipidea-imx.c
+++ b/drivers/usb/imx/chipidea-imx.c
@@ -104,7 +104,7 @@ static int imx_chipidea_probe_dt(struct imx_chipidea *ci)
 	struct of_phandle_args out_args;
 
 	if (ci->have_usb_misc) {
-		if (of_parse_phandle_with_args(ci->dev->device_node, "fsl,usbmisc",
+		if (of_parse_phandle_with_args(ci->dev->of_node, "fsl,usbmisc",
 						"#index-cells", 0, &out_args))
 			return -ENODEV;
 
@@ -117,7 +117,7 @@ static int imx_chipidea_probe_dt(struct imx_chipidea *ci)
 
 	ci->flags = MXC_EHCI_MODE_UTMI_8BIT;
 
-	ci->mode = of_usb_get_dr_mode(ci->dev->device_node, NULL);
+	ci->mode = of_usb_get_dr_mode(ci->dev->of_node, NULL);
 
 	if (ci->mode == USB_DR_MODE_UNKNOWN) {
 		/*
@@ -130,7 +130,7 @@ static int imx_chipidea_probe_dt(struct imx_chipidea *ci)
 			ci->mode = USB_DR_MODE_HOST;
 	}
 
-	ci->phymode = of_usb_get_phy_mode(ci->dev->device_node, NULL);
+	ci->phymode = of_usb_get_phy_mode(ci->dev->of_node, NULL);
 	switch (ci->phymode) {
 	case USBPHY_INTERFACE_MODE_UTMI:
 		ci->flags = MXC_EHCI_MODE_UTMI_8BIT;
@@ -151,18 +151,18 @@ static int imx_chipidea_probe_dt(struct imx_chipidea *ci)
 		dev_dbg(ci->dev, "no phy_type setting. Relying on reset default\n");
 	}
 
-	if (of_find_property(ci->dev->device_node,
+	if (of_find_property(ci->dev->of_node,
 				"disable-over-current", NULL))
 		ci->flags |= MXC_EHCI_DISABLE_OVERCURRENT;
 
-	else if (!of_find_property(ci->dev->device_node,
+	else if (!of_find_property(ci->dev->of_node,
 				   "over-current-active-high", NULL))
 		ci->flags |= MXC_EHCI_OC_PIN_ACTIVE_LOW;
 
-	if (of_find_property(ci->dev->device_node, "power-active-high", NULL))
+	if (of_find_property(ci->dev->of_node, "power-active-high", NULL))
 		ci->flags |= MXC_EHCI_PWR_PIN_ACTIVE_HIGH;
 
-	if (of_usb_get_maximum_speed(ci->dev->device_node, NULL) ==
+	if (of_usb_get_maximum_speed(ci->dev->of_node, NULL) ==
 			USB_SPEED_FULL)
 		ci->flags |= MXC_EHCI_PFSC;
 
@@ -232,7 +232,7 @@ static int imx_chipidea_probe(struct device_d *dev)
 	if (!ret)
 		ci->have_usb_misc = imx_data->have_usb_misc;
 
-	if (IS_ENABLED(CONFIG_OFDEVICE) && dev->device_node) {
+	if (IS_ENABLED(CONFIG_OFDEVICE) && dev->of_node) {
 		ret = imx_chipidea_probe_dt(ci);
 		if (ret)
 			return ret;
@@ -265,9 +265,9 @@ static int imx_chipidea_probe(struct device_d *dev)
 	 * more modern former one but fall back to the old one.
 	 *
 	 * Code should be removed when all devicetrees are using "phys" */
-	if (of_property_read_bool(dev->device_node, "phys"))
+	if (of_property_read_bool(dev->of_node, "phys"))
 		phynode_name = "phys";
-	else if (of_property_read_bool(dev->device_node, "fsl,usbphy"))
+	else if (of_property_read_bool(dev->of_node, "fsl,usbphy"))
 		phynode_name = "fsl,usbphy";
 	else
 		phynode_name = NULL;
diff --git a/drivers/usb/imx/imx-usb-phy.c b/drivers/usb/imx/imx-usb-phy.c
index fc7f84d064..e3c6832cc8 100644
--- a/drivers/usb/imx/imx-usb-phy.c
+++ b/drivers/usb/imx/imx-usb-phy.c
@@ -146,7 +146,7 @@ static int imx_usbphy_get_vbus_state(struct param_d *p, void *priv)
 static int imx_usbphy_probe(struct device_d *dev)
 {
 	struct resource *iores;
-	struct device_node *np = dev->device_node;
+	struct device_node *np = dev->of_node;
 	int ret;
 	struct imx_usbphy *imxphy;
 
diff --git a/drivers/usb/misc/usb251xb.c b/drivers/usb/misc/usb251xb.c
index 4871faf451..b5b5e97c06 100644
--- a/drivers/usb/misc/usb251xb.c
+++ b/drivers/usb/misc/usb251xb.c
@@ -338,7 +338,7 @@ static int usb251xb_get_ofdata(struct usb251xb *hub,
 			       struct usb251xb_data *data)
 {
 	struct device_d *dev = hub->dev;
-	struct device_node *np = dev->device_node;
+	struct device_node *np = dev->of_node;
 	int len, i;
 	u32 port, property_u32 = 0;
 	const u32 *cproperty_u32;
@@ -619,7 +619,7 @@ static int usb251xb_get_ofdata(struct usb251xb *hub,
 static int usb251xb_probe(struct usb251xb *hub)
 {
 	struct device_d *dev = hub->dev;
-	struct device_node *np = dev->device_node;
+	struct device_node *np = dev->of_node;
 	const struct of_device_id *of_id = of_match_device(usb251xb_of_match,
 							   dev);
 	int err;
diff --git a/drivers/usb/musb/musb_am335x.c b/drivers/usb/musb/musb_am335x.c
index 03f30d92aa..14307c95d5 100644
--- a/drivers/usb/musb/musb_am335x.c
+++ b/drivers/usb/musb/musb_am335x.c
@@ -7,7 +7,7 @@ static int am335x_child_probe(struct device_d *dev)
 {
 	int ret;
 
-	ret = of_platform_populate(dev->device_node, NULL, dev);
+	ret = of_platform_populate(dev->of_node, NULL, dev);
 	if (ret)
 		return ret;
 
diff --git a/drivers/usb/musb/musb_dsps.c b/drivers/usb/musb/musb_dsps.c
index ee0215024a..397a5792e2 100644
--- a/drivers/usb/musb/musb_dsps.c
+++ b/drivers/usb/musb/musb_dsps.c
@@ -264,7 +264,7 @@ static int get_musb_port_mode(struct device_d *dev)
 {
 	enum usb_dr_mode mode;
 
-	mode = of_usb_get_dr_mode(dev->device_node, NULL);
+	mode = of_usb_get_dr_mode(dev->of_node, NULL);
 	switch (mode) {
 	case USB_DR_MODE_HOST:
 		return MUSB_PORT_MODE_HOST;
@@ -302,7 +302,7 @@ static int dsps_probe(struct device_d *dev)
 	struct resource *iores[2];
 	struct musb_hdrc_platform_data *pdata;
 	struct musb_hdrc_config	*config;
-	struct device_node *dn = dev->device_node;
+	struct device_node *dn = dev->of_node;
 	const struct dsps_musb_wrapper *wrp;
 	struct device_node *phy_node;
 	struct device_d *phy_dev;
diff --git a/drivers/usb/musb/phy-am335x-control.c b/drivers/usb/musb/phy-am335x-control.c
index bc0f6b9485..2cdf8a2105 100644
--- a/drivers/usb/musb/phy-am335x-control.c
+++ b/drivers/usb/musb/phy-am335x-control.c
@@ -108,7 +108,7 @@ struct phy_control *am335x_get_phy_control(struct device_d *dev)
 	struct device_node *node;
 	struct am335x_control_usb *ctrl_usb;
 
-	node = of_parse_phandle(dev->device_node, "ti,ctrl_mod", 0);
+	node = of_parse_phandle(dev->of_node, "ti,ctrl_mod", 0);
 	if (!node)
 		return ERR_PTR(-ENOENT);
 
diff --git a/drivers/usb/musb/phy-am335x.c b/drivers/usb/musb/phy-am335x.c
index 67787cfec3..aa0aec70d4 100644
--- a/drivers/usb/musb/phy-am335x.c
+++ b/drivers/usb/musb/phy-am335x.c
@@ -43,7 +43,7 @@ static int am335x_phy_probe(struct device_d *dev)
 		goto err_release;
 	}
 
-	am_usbphy->id = of_alias_get_id(dev->device_node, "phy");
+	am_usbphy->id = of_alias_get_id(dev->of_node, "phy");
 	if (am_usbphy->id < 0) {
 		dev_err(dev, "Missing PHY id: %d\n", am_usbphy->id);
 		ret = am_usbphy->id;
diff --git a/drivers/video/atmel_lcdfb_core.c b/drivers/video/atmel_lcdfb_core.c
index 17f754b566..f6ff9ab8fa 100644
--- a/drivers/video/atmel_lcdfb_core.c
+++ b/drivers/video/atmel_lcdfb_core.c
@@ -328,7 +328,7 @@ static int lcdfb_of_init(struct device_d *dev, struct atmel_lcdfb_info *sinfo)
 	}
 
 	/* Required properties */
-	display = of_parse_phandle(dev->device_node, "display", 0);
+	display = of_parse_phandle(dev->of_node, "display", 0);
 	if (!display) {
 		dev_err(dev, "no display phandle\n");
 		return -ENOENT;
@@ -450,7 +450,7 @@ int atmel_lcdc_register(struct device_d *dev, struct atmel_lcdfb_devdata *data)
 		}
 		bus_clk_name = "hck1";
 	} else {
-		if (!IS_ENABLED(CONFIG_OFDEVICE) || !dev->device_node)
+		if (!IS_ENABLED(CONFIG_OFDEVICE) || !dev->of_node)
 			return -EINVAL;
 
 		ret = lcdfb_of_init(dev, sinfo);
diff --git a/drivers/video/backlight-pwm.c b/drivers/video/backlight-pwm.c
index ffa58c2b2d..bbacddec87 100644
--- a/drivers/video/backlight-pwm.c
+++ b/drivers/video/backlight-pwm.c
@@ -104,7 +104,7 @@ static int backlight_pwm_set(struct backlight_device *backlight,
 static int pwm_backlight_parse_dt(struct device_d *dev,
 		struct pwm_backlight *pwm_backlight)
 {
-	struct device_node *node = dev->device_node;
+	struct device_node *node = dev->of_node;
 	struct property *prop;
 	int length;
 	u32 value;
@@ -170,7 +170,7 @@ static int backlight_pwm_of_probe(struct device_d *dev)
 	struct pwm_backlight *pwm_backlight;
 	struct pwm_device *pwm;
 
-	pwm = of_pwm_request(dev->device_node, NULL);
+	pwm = of_pwm_request(dev->of_node, NULL);
 	if (IS_ERR(pwm)) {
 		dev_err(dev, "Cannot find PWM device\n");
 		return PTR_ERR(pwm);
@@ -193,7 +193,7 @@ static int backlight_pwm_of_probe(struct device_d *dev)
 	pwm_backlight->backlight.slew_time_ms = 100;
 	pwm_backlight->backlight.brightness_set = backlight_pwm_set;
 	pwm_backlight->backlight.dev.parent = dev;
-	pwm_backlight->backlight.node = dev->device_node;
+	pwm_backlight->backlight.node = dev->of_node;
 
 	ret = backlight_register(&pwm_backlight->backlight);
 	if (ret)
diff --git a/drivers/video/imx-ipu-v3/imx-hdmi.c b/drivers/video/imx-ipu-v3/imx-hdmi.c
index d63f2c2111..285034270d 100644
--- a/drivers/video/imx-ipu-v3/imx-hdmi.c
+++ b/drivers/video/imx-ipu-v3/imx-hdmi.c
@@ -1251,7 +1251,7 @@ static int dw_hdmi_ioctl(struct vpl *vpl, unsigned int port,
 static int dw_hdmi_probe(struct device_d *dev)
 {
 	struct resource *iores;
-	struct device_node *np = dev->device_node;
+	struct device_node *np = dev->of_node;
 	struct dw_hdmi *hdmi;
 	int ret;
 
diff --git a/drivers/video/imx-ipu-v3/imx-ldb.c b/drivers/video/imx-ipu-v3/imx-ldb.c
index 4c934bc72e..08b5e5950c 100644
--- a/drivers/video/imx-ipu-v3/imx-ldb.c
+++ b/drivers/video/imx-ipu-v3/imx-ldb.c
@@ -304,7 +304,7 @@ static int imx_ldb_ioctl(struct vpl *vpl, unsigned int port,
 
 static int imx_ldb_probe(struct device_d *dev)
 {
-	struct device_node *np = dev->device_node;
+	struct device_node *np = dev->of_node;
 	struct device_node *child;
 	struct imx_ldb *imx_ldb;
 	int ret, i;
diff --git a/drivers/video/imx-ipu-v3/imx-pd.c b/drivers/video/imx-ipu-v3/imx-pd.c
index 92fa4ed4b4..ee30d3b57d 100644
--- a/drivers/video/imx-ipu-v3/imx-pd.c
+++ b/drivers/video/imx-ipu-v3/imx-pd.c
@@ -63,7 +63,7 @@ static int imx_pd_ioctl(struct vpl *vpl, unsigned int port,
 
 static int imx_pd_probe(struct device_d *dev)
 {
-	struct device_node *node = dev->device_node;
+	struct device_node *node = dev->of_node;
 	struct imx_pd *imx_pd;
 	struct device_node *port;
 	const char *fmt;
diff --git a/drivers/video/imx-ipu-v3/ipu-common.c b/drivers/video/imx-ipu-v3/ipu-common.c
index 3d7a19e9c0..556f737fc5 100644
--- a/drivers/video/imx-ipu-v3/ipu-common.c
+++ b/drivers/video/imx-ipu-v3/ipu-common.c
@@ -714,7 +714,7 @@ static int ipu_add_subdevice_pdata(struct device_d *ipu_dev,
 	dev = device_alloc(reg->name, ipu_client_id++);
 	dev->parent = ipu_dev;
 	device_add_data(dev, &reg->pdata, sizeof(reg->pdata));
-	((struct ipu_client_platformdata *)dev->platform_data)->device_node = ipu_dev->device_node;
+	((struct ipu_client_platformdata *)dev->platform_data)->device_node = ipu_dev->of_node;
 
 	ret = platform_device_register(dev);
 
diff --git a/drivers/video/imx-ipu-v3/ipufb.c b/drivers/video/imx-ipu-v3/ipufb.c
index f8bb69da06..f880622787 100644
--- a/drivers/video/imx-ipu-v3/ipufb.c
+++ b/drivers/video/imx-ipu-v3/ipufb.c
@@ -282,7 +282,7 @@ static int ipufb_probe(struct device_d *dev)
 	fbi = xzalloc(sizeof(*fbi));
 	info = &fbi->info;
 
-	ipuid = of_alias_get_id(dev->parent->device_node, "ipu");
+	ipuid = of_alias_get_id(dev->parent->of_node, "ipu");
 	fbi->name = basprintf("ipu%d-di%d", ipuid + 1, pdata->di);
 	fbi->id = ipuid * 2 + pdata->di;
 	fbi->dino = pdata->di;
@@ -305,11 +305,12 @@ static int ipufb_probe(struct device_d *dev)
 	if (ret)
 		return ret;
 
-	node = of_graph_get_port_by_id(dev->parent->device_node, 2 + pdata->di);
+	node = of_graph_get_port_by_id(dev->parent->of_node, 2 + pdata->di);
 	if (node && of_graph_port_is_available(node)) {
-		dev_dbg(fbi->dev, "register vpl for %s\n", dev->parent->device_node->full_name);
+		dev_dbg(fbi->dev, "register vpl for %s\n",
+			dev->parent->of_node->full_name);
 
-		fbi->vpl.node = dev->parent->device_node;
+		fbi->vpl.node = dev->parent->of_node;
 		ret = vpl_register(&fbi->vpl);
 		if (ret)
 			return ret;
diff --git a/drivers/video/mtl017.c b/drivers/video/mtl017.c
index 46c826be21..f5b6178967 100644
--- a/drivers/video/mtl017.c
+++ b/drivers/video/mtl017.c
@@ -225,7 +225,7 @@ static int mtl017_probe(struct device_d *dev)
 	enum of_gpio_flags flags;
 
 	mtl017 = xzalloc(sizeof(struct mtl017));
-	mtl017->vpl.node = dev->device_node;
+	mtl017->vpl.node = dev->of_node;
 	mtl017->vpl.ioctl = mtl017_ioctl;
 	mtl017->dev = dev;
 	mtl017->client = to_i2c_client(dev);
@@ -234,15 +234,16 @@ static int mtl017_probe(struct device_d *dev)
 	if (IS_ERR(mtl017->regulator))
 		mtl017->regulator = NULL;
 
-	mtl017->enable_gpio = of_get_named_gpio_flags(dev->device_node,
-			"enable-gpios", 0, &flags);
+	mtl017->enable_gpio = of_get_named_gpio_flags(dev->of_node,
+						      "enable-gpios", 0,
+						      &flags);
 	if (gpio_is_valid(mtl017->enable_gpio)) {
 		if (!(flags & OF_GPIO_ACTIVE_LOW))
 			mtl017->enable_active_high = 1;
 	}
 
-	mtl017->reset_gpio = of_get_named_gpio_flags(dev->device_node,
-			"reset-gpios", 0, &flags);
+	mtl017->reset_gpio = of_get_named_gpio_flags(dev->of_node,
+						     "reset-gpios", 0, &flags);
 	if (gpio_is_valid(mtl017->reset_gpio)) {
 		if (!(flags & OF_GPIO_ACTIVE_LOW))
 			mtl017->reset_active_high = 1;
diff --git a/drivers/video/panel-ilitek-ili9341.c b/drivers/video/panel-ilitek-ili9341.c
index d877442022..dde9a61d59 100644
--- a/drivers/video/panel-ilitek-ili9341.c
+++ b/drivers/video/panel-ilitek-ili9341.c
@@ -499,7 +499,7 @@ static int ili9341_dpi_probe(struct spi_device *spi, int dc, int reset)
 
 	ili->dev = dev;
 	ili->max_spi_speed = ili->conf->max_spi_speed;
-	ili->vpl.node = dev->device_node;
+	ili->vpl.node = dev->of_node;
 	ili->vpl.ioctl = ili9341_ioctl;
 
 	return vpl_register(&ili->vpl);
diff --git a/drivers/video/simple-panel.c b/drivers/video/simple-panel.c
index a87adcca64..ffbfa067d2 100644
--- a/drivers/video/simple-panel.c
+++ b/drivers/video/simple-panel.c
@@ -99,7 +99,7 @@ static int simple_panel_get_modes(struct simple_panel *panel, struct display_tim
 		}
 	}
 
-	modes = of_get_display_timings(panel->dev->device_node);
+	modes = of_get_display_timings(panel->dev->of_node);
 	if (modes) {
 		timings->modes = modes->modes;
 		timings->num_modes = modes->num_modes;
@@ -132,7 +132,7 @@ static int simple_panel_ioctl(struct vpl *vpl, unsigned int port,
 static int simple_panel_probe(struct device_d *dev)
 {
 	struct simple_panel *panel;
-	struct device_node *node = dev->device_node;
+	struct device_node *node = dev->of_node;
 	enum of_gpio_flags flags;
 	int ret;
 
diff --git a/drivers/video/simplefb-client.c b/drivers/video/simplefb-client.c
index 2367713ba4..e89bf22681 100644
--- a/drivers/video/simplefb-client.c
+++ b/drivers/video/simplefb-client.c
@@ -38,7 +38,7 @@ struct simplefb {
 static int simplefb_parse_dt(struct device_d *dev,
 			   struct simplefb_params *params)
 {
-	struct device_node *np = dev->device_node;
+	struct device_node *np = dev->of_node;
 	int ret;
 	const char *format;
 	int i;
@@ -90,7 +90,7 @@ static int simplefb_probe(struct device_d *dev)
 	struct resource *mem;
 
 	ret = -ENODEV;
-	if (dev->device_node)
+	if (dev->of_node)
 		ret = simplefb_parse_dt(dev, &params);
 
 	if (ret)
diff --git a/drivers/video/ssd1307fb.c b/drivers/video/ssd1307fb.c
index 9e141a851f..4e98b4277b 100644
--- a/drivers/video/ssd1307fb.c
+++ b/drivers/video/ssd1307fb.c
@@ -427,9 +427,9 @@ static const struct of_device_id ssd1307fb_of_match[] = {
 static int ssd1307fb_probe(struct device_d *dev)
 {
 	struct fb_info *info;
-	struct device_node *node = dev->device_node;
+	struct device_node *node = dev->of_node;
 	const struct of_device_id *match =
-		of_match_node(ssd1307fb_of_match, dev->device_node);
+		of_match_node(ssd1307fb_of_match, dev->of_node);
 	u32 vmem_size;
 	struct ssd1307fb_par *par;
 	struct ssd1307fb_array *array;
diff --git a/drivers/video/stm.c b/drivers/video/stm.c
index 14182f8c46..154145bd1d 100644
--- a/drivers/video/stm.c
+++ b/drivers/video/stm.c
@@ -532,10 +532,10 @@ static int stmfb_probe(struct device_d *hw_dev)
 		struct display_timings *modes;
 		struct device_node *display;
 
-		if (!IS_ENABLED(CONFIG_OFDEVICE) || !hw_dev->device_node)
+		if (!IS_ENABLED(CONFIG_OFDEVICE) || !hw_dev->of_node)
 			return -EINVAL;
 
-		display = of_parse_phandle(hw_dev->device_node, "display", 0);
+		display = of_parse_phandle(hw_dev->of_node, "display", 0);
 		if (!display) {
 			dev_err(hw_dev, "no display phandle\n");
 			return -EINVAL;
diff --git a/drivers/video/stm32_ltdc.c b/drivers/video/stm32_ltdc.c
index 9dc35ade61..5bbf9c1093 100644
--- a/drivers/video/stm32_ltdc.c
+++ b/drivers/video/stm32_ltdc.c
@@ -273,7 +273,7 @@ static int ltdc_probe(struct device_d *dev)
 		return PTR_ERR(hw->pclk);
 	}
 
-	for_each_available_child_of_node(dev->device_node, np) {
+	for_each_available_child_of_node(dev->of_node, np) {
 		struct ltdc_fb *priv;
 		struct of_endpoint ep;
 		struct fb_info *info;
@@ -290,7 +290,7 @@ static int ltdc_probe(struct device_d *dev)
 		priv = xzalloc(sizeof(*priv));
 		priv->hw = hw;
 		priv->id = ep.id;
-		priv->vpl.node = dev->device_node;
+		priv->vpl.node = dev->of_node;
 
 		ret = vpl_register(&priv->vpl);
 		if (ret)
diff --git a/drivers/video/tc358767.c b/drivers/video/tc358767.c
index 36f4125414..ad0d753235 100644
--- a/drivers/video/tc358767.c
+++ b/drivers/video/tc358767.c
@@ -1347,16 +1347,16 @@ static int tc_probe(struct device_d *dev)
 	tc->dev = dev;
 
 	/* Shut down GPIO is optional */
-	tc->sd_gpio = of_get_named_gpio_flags(dev->device_node,
-			"shutdown-gpios", 0, &flags);
+	tc->sd_gpio = of_get_named_gpio_flags(dev->of_node,
+					      "shutdown-gpios", 0, &flags);
 	if (gpio_is_valid(tc->sd_gpio)) {
 		if (!(flags & OF_GPIO_ACTIVE_LOW))
 			tc->sd_active_high = 1;
 	}
 
 	/* Reset GPIO is optional */
-	tc->reset_gpio = of_get_named_gpio_flags(dev->device_node,
-			"reset-gpios", 0, &flags);
+	tc->reset_gpio = of_get_named_gpio_flags(dev->of_node,
+						 "reset-gpios", 0, &flags);
 	if (gpio_is_valid(tc->reset_gpio)) {
 		if (!(flags & OF_GPIO_ACTIVE_LOW))
 			tc->reset_active_high = 1;
@@ -1371,7 +1371,7 @@ static int tc_probe(struct device_d *dev)
 		gpio_direction_output(tc->sd_gpio, 0);
 	}
 
-	tc->refclk = of_clk_get_by_name(dev->device_node, "ref");
+	tc->refclk = of_clk_get_by_name(dev->of_node, "ref");
 	if (IS_ERR(tc->refclk)) {
 		ret = PTR_ERR(tc->refclk);
 		dev_err(dev, "Failed to get refclk: %d\n", ret);
@@ -1410,7 +1410,7 @@ static int tc_probe(struct device_d *dev)
 	}
 
 	/* add vlp */
-	tc->vpl.node = dev->device_node;
+	tc->vpl.node = dev->of_node;
 	tc->vpl.ioctl = tc_ioctl;
 	return vpl_register(&tc->vpl);
 
diff --git a/drivers/w1/masters/w1-gpio.c b/drivers/w1/masters/w1-gpio.c
index 8f2f772c6e..9e38dc361c 100644
--- a/drivers/w1/masters/w1-gpio.c
+++ b/drivers/w1/masters/w1-gpio.c
@@ -42,7 +42,7 @@ static u8 w1_gpio_read_bit(struct w1_bus *bus)
 static int w1_gpio_probe_dt(struct device_d *dev)
 {
 	struct w1_gpio_platform_data *pdata;
-	struct device_node *np = dev->device_node;
+	struct device_node *np = dev->of_node;
 	int gpio;
 
 	if (dev->platform_data)
diff --git a/drivers/watchdog/gpio_wdt.c b/drivers/watchdog/gpio_wdt.c
index 4de49dcee3..c5da28467b 100644
--- a/drivers/watchdog/gpio_wdt.c
+++ b/drivers/watchdog/gpio_wdt.c
@@ -83,7 +83,7 @@ static int gpio_wdt_set_timeout(struct watchdog *wdd, unsigned int new_timeout)
 
 static int gpio_wdt_probe(struct device_d *dev)
 {
-	struct device_node *np = dev->device_node;
+	struct device_node *np = dev->of_node;
 	struct gpio_wdt_priv *priv;
 	enum gpiod_flags gflags;
 	unsigned int hw_margin;
diff --git a/drivers/watchdog/imxwd.c b/drivers/watchdog/imxwd.c
index 5e9962866f..0cc1d07ba2 100644
--- a/drivers/watchdog/imxwd.c
+++ b/drivers/watchdog/imxwd.c
@@ -269,9 +269,9 @@ static int imx_wd_probe(struct device_d *dev)
 	priv->wd.timeout_max = priv->ops->timeout_max;
 	priv->wd.hwdev = dev;
 	priv->dev = dev;
-	priv->bigendian = of_device_is_big_endian(dev->device_node);
+	priv->bigendian = of_device_is_big_endian(dev->of_node);
 
-	priv->ext_reset = of_property_read_bool(dev->device_node,
+	priv->ext_reset = of_property_read_bool(dev->of_node,
 						"fsl,ext-reset-output");
 
 	if (IS_ENABLED(CONFIG_WATCHDOG_IMX)) {
diff --git a/drivers/watchdog/rave-sp-wdt.c b/drivers/watchdog/rave-sp-wdt.c
index 26540395cb..f5531d9d37 100644
--- a/drivers/watchdog/rave-sp-wdt.c
+++ b/drivers/watchdog/rave-sp-wdt.c
@@ -286,7 +286,7 @@ static int rave_sp_wdt_get_boot_source(struct param_d *param, void *priv)
 static int rave_sp_wdt_add_params(struct rave_sp_wdt *sp_wd)
 {
 	struct watchdog *wdd = &sp_wd->wdd;
-	struct device_node *np = wdd->hwdev->device_node;
+	struct device_node *np = wdd->hwdev->of_node;
 	struct param_d *p;
 
 	sp_wd->boot_source_cell = of_nvmem_cell_get(np, "boot-source");
diff --git a/drivers/watchdog/wd_core.c b/drivers/watchdog/wd_core.c
index aa5dee8d20..a872580d78 100644
--- a/drivers/watchdog/wd_core.c
+++ b/drivers/watchdog/wd_core.c
@@ -144,7 +144,7 @@ static unsigned int dev_get_watchdog_priority(struct device_d *dev)
 	unsigned int priority = WATCHDOG_DEFAULT_PRIORITY;
 
 	if (dev)
-		of_property_read_u32(dev->device_node, "watchdog-priority",
+		of_property_read_u32(dev->of_node, "watchdog-priority",
 				     &priority);
 
 	return priority;
@@ -194,7 +194,7 @@ int watchdog_register(struct watchdog *wd)
 	int ret = 0;
 
 	if (wd->hwdev)
-		alias = of_alias_get(wd->hwdev->device_node);
+		alias = of_alias_get(wd->hwdev->of_node);
 
 	if (alias)
 		ret = watchdog_register_dev(wd, alias, DEVICE_ID_SINGLE);
@@ -309,7 +309,7 @@ EXPORT_SYMBOL(watchdog_get_default);
 
 int watchdog_get_alias_id_from(struct watchdog *wd, struct device_node *root)
 {
-	struct device_node *dstnp, *srcnp = wd->hwdev ? wd->hwdev->device_node : NULL;
+	struct device_node *dstnp, *srcnp = wd->hwdev ? wd->hwdev->of_node : NULL;
 	char *name;
 
 	if (!srcnp)
@@ -322,7 +322,7 @@ int watchdog_get_alias_id_from(struct watchdog *wd, struct device_node *root)
 	if (!dstnp)
 		return -ENODEV;
 
-	return of_alias_get_id_from(root, wd->hwdev->device_node, "watchdog");
+	return of_alias_get_id_from(root, wd->hwdev->of_node, "watchdog");
 }
 EXPORT_SYMBOL(watchdog_get_alias_id_from);
 
diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index 1d8b2664f2..93de976fb6 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -315,7 +315,7 @@ int devfs_create(struct cdev *new)
 	if (new->dev) {
 		list_add_tail(&new->devices_list, &new->dev->cdevs);
 		if (!new->device_node)
-			new->device_node = new->dev->device_node;
+			new->device_node = new->dev->of_node;
 	}
 
 	return 0;
diff --git a/fs/pstore/ram.c b/fs/pstore/ram.c
index 29585bff59..c1c8b0caab 100644
--- a/fs/pstore/ram.c
+++ b/fs/pstore/ram.c
@@ -416,7 +416,7 @@ static int ramoops_parse_dt_size(struct device_d *dev,
 	u32 val32 = 0;
 	int ret;
 
-	ret = of_property_read_u32(dev->device_node, propname, &val32);
+	ret = of_property_read_u32(dev->of_node, propname, &val32);
 	if (ret < 0 && ret != -EINVAL) {
 		dev_err(dev, "failed to parse property %s: %d\n",
 			propname, ret);
@@ -435,7 +435,7 @@ static int ramoops_parse_dt_size(struct device_d *dev,
 static int ramoops_parse_dt(struct device_d *dev,
 			    struct ramoops_platform_data *pdata)
 {
-	struct device_node *of_node = dev->device_node;
+	struct device_node *of_node = dev->of_node;
 	struct resource *res;
 	u32 value;
 	int ret;
diff --git a/include/console.h b/include/console.h
index 7fea8eeb9e..d3b62f3f9f 100644
--- a/include/console.h
+++ b/include/console.h
@@ -79,9 +79,9 @@ static inline struct device_node *
 console_is_serdev_node(struct console_device *cdev)
 {
 	struct device_d *dev = cdev->dev;
-	if (dev && dev->device_node &&
-	    of_get_child_count(dev->device_node))
-		return dev->device_node;
+	if (dev && dev->of_node &&
+	    of_get_child_count(dev->of_node))
+		return dev->of_node;
 
 	return NULL;
 }
diff --git a/include/driver.h b/include/driver.h
index 2386949c31..b52b5c47cf 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -74,7 +74,7 @@ struct device_d {
 	struct list_head cdevs;
 
 	const struct platform_device_id *id_entry;
-	struct device_node *device_node;
+	struct device_node *of_node;
 
 	const struct of_device_id *of_id_entry;
 
@@ -612,7 +612,7 @@ struct device_d *device_find_child(struct device_d *parent, void *data,
 
 static inline struct device_node *dev_of_node(struct device_d *dev)
 {
-	return IS_ENABLED(CONFIG_OFDEVICE) ? dev->device_node : NULL;
+	return IS_ENABLED(CONFIG_OFDEVICE) ? dev->of_node : NULL;
 }
 
 static inline void *dev_get_priv(struct device_d *dev)
diff --git a/include/linux/mtd/mtd.h b/include/linux/mtd/mtd.h
index f9c4645180..3fe3bdb678 100644
--- a/include/linux/mtd/mtd.h
+++ b/include/linux/mtd/mtd.h
@@ -288,15 +288,15 @@ int mtd_read_oob(struct mtd_info *mtd, loff_t from, struct mtd_oob_ops *ops);
 static inline void mtd_set_of_node(struct mtd_info *mtd,
 				   struct device_node *np)
 {
-	mtd->dev.device_node = np;
+	mtd->dev.of_node = np;
 }
 
 static inline struct device_node *mtd_get_of_node(struct mtd_info *mtd)
 {
-	if (mtd->dev.device_node)
-		return mtd->dev.device_node;
+	if (mtd->dev.of_node)
+		return mtd->dev.of_node;
 	if (mtd->dev.parent)
-		return mtd->dev.parent->device_node;
+		return mtd->dev.parent->of_node;
 	return NULL;
 }
 
diff --git a/net/eth.c b/net/eth.c
index 19654cdd51..82fd629905 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -69,7 +69,7 @@ static int eth_get_registered_ethaddr(struct eth_device *edev, void *buf)
 	struct device_node *node = NULL;
 
 	if (edev->parent)
-		node = edev->parent->device_node;
+		node = edev->parent->of_node;
 
 	list_for_each_entry(addr, &ethaddr_list, list) {
 		if ((node && node == addr->node) ||
@@ -121,9 +121,9 @@ static struct eth_device *eth_get_by_node(struct device_node *node)
 	for_each_netdev(edev) {
 		if (!edev->parent)
 			continue;
-		if (!edev->parent->device_node)
+		if (!edev->parent->of_node)
 			continue;
-		if (edev->parent->device_node == node)
+		if (edev->parent->of_node == node)
 			return edev;
 	}
 	return NULL;
@@ -399,8 +399,9 @@ int eth_register(struct eth_device *edev)
 	if (edev->parent)
 		edev->dev.parent = edev->parent;
 
-	if (edev->dev.parent && edev->dev.parent->device_node) {
-		edev->dev.id = of_alias_get_id(edev->dev.parent->device_node, "ethernet");
+	if (edev->dev.parent && edev->dev.parent->of_node) {
+		edev->dev.id = of_alias_get_id(edev->dev.parent->of_node,
+					       "ethernet");
 		if (edev->dev.id < 0)
 			edev->dev.id = DEVICE_ID_DYNAMIC;
 	} else {
@@ -450,8 +451,8 @@ int eth_register(struct eth_device *edev)
 		register_preset_mac_address(edev, ethaddr);
 
 	if (IS_ENABLED(CONFIG_OFDEVICE) && edev->parent &&
-			edev->parent->device_node)
-		edev->nodepath = xstrdup(edev->parent->device_node->full_name);
+			edev->parent->of_node)
+		edev->nodepath = xstrdup(edev->parent->of_node->full_name);
 
 	return 0;
 }
@@ -524,7 +525,7 @@ struct eth_device *of_find_eth_device_by_node(struct device_node *np)
 		return NULL;
 
 	list_for_each_entry(edev, &netdev_list, list)
-		if (edev->parent->device_node == np)
+		if (edev->parent->of_node == np)
 			return edev;
 	return NULL;
 }
@@ -548,7 +549,8 @@ static int of_populate_ethaddr(void)
 		if (!edev->parent || is_valid_ether_addr(edev->ethaddr))
 			continue;
 
-		ret = of_get_mac_addr_nvmem(edev->parent->device_node, edev->ethaddr);
+		ret = of_get_mac_addr_nvmem(edev->parent->of_node,
+					    edev->ethaddr);
 		if (ret)
 			continue;
 
-- 
2.30.2



