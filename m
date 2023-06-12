Delivery-date: Mon, 12 Jun 2023 15:01:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8hAM-003qSQ-De
	for lore@lore.pengutronix.de; Mon, 12 Jun 2023 15:01:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8hAD-00081i-8g
	for lore@pengutronix.de; Mon, 12 Jun 2023 15:01:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=iC1U3ZszNKMDXK54RQLecb5qbxGckyGLZ70n9i0VT1g=; b=tEPzGCF5tDZzrfB/xgKQHDGPiP
	0p4qkoZaA9k2ev9TJOLsCjlSVki6ao/uAU2C3i4li17ruGTdZH8n6IW1x7wGlglFTItfZyJOL305c
	dHk75uJCD+dQwXRcQUkcDLLmPzwOlQGYHcg0hKfWPE1Ni5I+EFBfgU716O8+MYC0vh/B194eMuF04
	Rl8gfw6i504APzznzZeKLSpwTiEExY9QympyjtVyV8hSIWa8w+Z3ezeAdlosZ0P3fw6U9Cw0zpH2B
	MKKxF4JMBFeldYI6m6LWW4MxXesUAdXd0OYQqz8VziFIYWkdrC3xpugc9cm0K1/sCQYpIEUi+B3Yo
	uQmodKIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8h8g-0046aG-2s;
	Mon, 12 Jun 2023 12:59:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8h8a-0046Yf-0Y
	for barebox@lists.infradead.org;
	Mon, 12 Jun 2023 12:59:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q8h8Y-0007QO-HW; Mon, 12 Jun 2023 14:59:10 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q8h8X-006tUZ-SP; Mon, 12 Jun 2023 14:59:09 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q8h8X-004Ys1-3a; Mon, 12 Jun 2023 14:59:09 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ukl@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 12 Jun 2023 14:59:08 +0200
Message-Id: <20230612125908.1087340-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] treewide: add MODULE_DEVICE_TABLE markers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Syncing device trees with Linux upstream can lead to breakage, when
the device trees are switched to newer bindings, which are not yet
supported in barebox. To make it easier to spot such issues, we want to
start applying some heuristics to flag possibly problematic DT changes.

One step towards being able to do that is to know what nodes barebox
actually consumes. Most of the nodes have a compatible entry, which is
matched by an array of of_device_id, so let's have MODULE_DEVICE_TABLE
point at it for future extraction.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/phytec-phycore-stm32mp1/board.c    | 1 +
 arch/arm/boards/pine64-quartz64/board.c            | 1 +
 arch/arm/boards/protonic-imx8m/board.c             | 1 +
 arch/arm/boards/sama5d3_xplained/board.c           | 1 +
 arch/arm/boards/seeed-odyssey/board.c              | 1 +
 arch/arm/boards/skov-arm9cpu/board.c               | 1 +
 arch/arm/boards/stm32mp15x-ev1/board.c             | 1 +
 arch/arm/boards/tqma6ulx/board.c                   | 1 +
 arch/arm/boards/vexpress/init.c                    | 1 +
 arch/arm/boards/webasto-ccbv2/board.c              | 1 +
 arch/arm/cpu/psci-client.c                         | 1 +
 arch/arm/mach-at91/at91sam9_rst.c                  | 1 +
 arch/arm/mach-at91/ddramc.c                        | 1 +
 arch/arm/mach-clps711x/clock.c                     | 1 +
 arch/arm/mach-clps711x/common.c                    | 1 +
 arch/arm/mach-imx/esdctl.c                         | 1 +
 arch/arm/mach-imx/iim.c                            | 1 +
 arch/arm/mach-imx/src.c                            | 1 +
 arch/arm/mach-mvebu/armada-370-xp.c                | 1 +
 arch/arm/mach-mvebu/common.c                       | 1 +
 arch/arm/mach-mxs/ocotp.c                          | 1 +
 arch/arm/mach-omap/am33xx_scrm.c                   | 1 +
 arch/arm/mach-rockchip/dmc.c                       | 1 +
 arch/arm/mach-stm32mp/ddrctrl.c                    | 1 +
 arch/arm/mach-tegra/tegra20-pmc.c                  | 1 +
 arch/arm/mach-tegra/tegra20-timer.c                | 1 +
 arch/arm/mach-zynqmp/firmware-zynqmp.c             | 1 +
 arch/kvx/lib/poweroff.c                            | 1 +
 arch/mips/mach-ath79/art.c                         | 1 +
 arch/riscv/boards/beaglev/board.c                  | 1 +
 arch/riscv/cpu/core.c                              | 1 +
 arch/sandbox/board/hostfile.c                      | 1 +
 arch/sandbox/board/led.c                           | 1 +
 arch/sandbox/board/power.c                         | 1 +
 arch/sandbox/board/watchdog.c                      | 1 +
 drivers/aiodev/am335x_adc.c                        | 1 +
 drivers/aiodev/imx7d_adc.c                         | 1 +
 drivers/aiodev/imx_thermal.c                       | 1 +
 drivers/aiodev/qoriq_thermal.c                     | 1 +
 drivers/aiodev/rockchip_saradc.c                   | 1 +
 drivers/aiodev/st_gyro.c                           | 1 +
 drivers/aiodev/stm32-adc-core.c                    | 1 +
 drivers/aiodev/stm32-adc.c                         | 1 +
 drivers/ata/ahci.c                                 | 1 +
 drivers/ata/intf_platform_ide.c                    | 1 +
 drivers/ata/pata-imx.c                             | 1 +
 drivers/ata/sata-imx.c                             | 1 +
 drivers/ata/sata_mv.c                              | 1 +
 drivers/bus/imx-weim.c                             | 1 +
 drivers/bus/mvebu-mbus.c                           | 1 +
 drivers/bus/omap-gpmc.c                            | 1 +
 drivers/bus/ti-sysc.c                              | 1 +
 drivers/clk/at91/pmc.c                             | 1 +
 drivers/clk/bcm/clk-bcm2835-aux.c                  | 1 +
 drivers/clk/clk-ar933x.c                           | 1 +
 drivers/clk/clk-ar9344.c                           | 1 +
 drivers/clk/clk-gpio.c                             | 1 +
 drivers/clk/clk-rpi.c                              | 1 +
 drivers/clk/clk-stm32f4.c                          | 1 +
 drivers/clk/clk-stm32mp1.c                         | 1 +
 drivers/clk/imx/clk-imx1.c                         | 1 +
 drivers/clk/imx/clk-imx21.c                        | 1 +
 drivers/clk/imx/clk-imx25.c                        | 1 +
 drivers/clk/imx/clk-imx27.c                        | 1 +
 drivers/clk/imx/clk-imx31.c                        | 1 +
 drivers/clk/imx/clk-imx35.c                        | 1 +
 drivers/clk/imx/clk-imx5.c                         | 3 +++
 drivers/clk/imx/clk-imx6.c                         | 1 +
 drivers/clk/imx/clk-imx6sl.c                       | 1 +
 drivers/clk/imx/clk-imx6sx.c                       | 1 +
 drivers/clk/imx/clk-imx6ul.c                       | 1 +
 drivers/clk/imx/clk-imx7.c                         | 1 +
 drivers/clk/loongson/clk-ls1b200.c                 | 1 +
 drivers/clk/mvebu/common.c                         | 2 ++
 drivers/clk/mvebu/corediv.c                        | 1 +
 drivers/clk/mxs/clk-imx23.c                        | 1 +
 drivers/clk/mxs/clk-imx28.c                        | 1 +
 drivers/clk/rockchip/clk-rk3399.c                  | 1 +
 drivers/clk/rockchip/clk-rk3568.c                  | 1 +
 drivers/clk/rockchip/clk-rk3588.c                  | 1 +
 drivers/clk/sifive/sifive-prci.c                   | 1 +
 drivers/clk/socfpga/clk.c                          | 1 +
 drivers/clk/starfive/jh7100-clkgen.c               | 1 +
 drivers/clk/tegra/clk-tegra124.c                   | 1 +
 drivers/clk/tegra/clk-tegra20.c                    | 1 +
 drivers/clk/tegra/clk-tegra30.c                    | 1 +
 drivers/clk/zynq/clkc.c                            | 1 +
 drivers/clk/zynqmp/clkc.c                          | 1 +
 drivers/clocksource/arm_architected_timer.c        | 1 +
 drivers/clocksource/arm_global_timer.c             | 1 +
 drivers/clocksource/arm_smp_twd.c                  | 1 +
 drivers/clocksource/armv7m_systick.c               | 1 +
 drivers/clocksource/bcm2835.c                      | 1 +
 drivers/clocksource/clps711x.c                     | 1 +
 drivers/clocksource/digic.c                        | 1 +
 drivers/clocksource/dw_apb_timer.c                 | 1 +
 drivers/clocksource/kvx_timer.c                    | 1 +
 drivers/clocksource/mvebu.c                        | 1 +
 drivers/clocksource/orion.c                        | 1 +
 drivers/clocksource/rk_timer.c                     | 1 +
 drivers/clocksource/timer-atmel-pit.c              | 1 +
 drivers/clocksource/timer-clint.c                  | 1 +
 drivers/clocksource/timer-imx-gpt.c                | 1 +
 drivers/clocksource/timer-stm32.c                  | 1 +
 drivers/clocksource/timer-ti-32k.c                 | 1 +
 drivers/clocksource/timer-ti-dm.c                  | 1 +
 drivers/clocksource/uemd.c                         | 1 +
 drivers/crypto/caam/ctrl.c                         | 1 +
 drivers/crypto/imx-scc/scc.c                       | 1 +
 drivers/dma/apbh_dma.c                             | 1 +
 drivers/eeprom/at25.c                              | 1 +
 drivers/firmware/altera_serial.c                   | 1 +
 drivers/firmware/arm_scmi/driver.c                 | 1 +
 drivers/firmware/qemu_fw_cfg.c                     | 1 +
 drivers/firmware/socfpga.c                         | 1 +
 drivers/firmware/zynqmp-fpga.c                     | 1 +
 drivers/fpga/socfpga-fpga2sdram-bridge.c           | 1 +
 drivers/fpga/socfpga-hps2fpga-bridge.c             | 1 +
 drivers/gpio/gpio-74xx-mmio.c                      | 1 +
 drivers/gpio/gpio-ath79.c                          | 1 +
 drivers/gpio/gpio-clps711x.c                       | 1 +
 drivers/gpio/gpio-davinci.c                        | 1 +
 drivers/gpio/gpio-digic.c                          | 1 +
 drivers/gpio/gpio-dw.c                             | 1 +
 drivers/gpio/gpio-generic.c                        | 1 +
 drivers/gpio/gpio-imx.c                            | 1 +
 drivers/gpio/gpio-jz4740.c                         | 1 +
 drivers/gpio/gpio-latch.c                          | 1 +
 drivers/gpio/gpio-libftdi1.c                       | 1 +
 drivers/gpio/gpio-malta-fpga-i2c.c                 | 1 +
 drivers/gpio/gpio-mpc8xxx.c                        | 1 +
 drivers/gpio/gpio-mxs.c                            | 1 +
 drivers/gpio/gpio-omap.c                           | 1 +
 drivers/gpio/gpio-orion.c                          | 1 +
 drivers/gpio/gpio-pca953x.c                        | 1 +
 drivers/gpio/gpio-pcf857x.c                        | 1 +
 drivers/gpio/gpio-raspberrypi-exp.c                | 1 +
 drivers/gpio/gpio-rockchip.c                       | 1 +
 drivers/gpio/gpio-sifive.c                         | 1 +
 drivers/gpio/gpio-starfive-vic.c                   | 1 +
 drivers/gpio/gpio-sx150x.c                         | 1 +
 drivers/gpio/gpio-tegra.c                          | 1 +
 drivers/gpio/gpio-vf610.c                          | 1 +
 drivers/gpio/gpio-zynq.c                           | 1 +
 drivers/hw_random/mxc-rngc.c                       | 1 +
 drivers/hw_random/starfive-vic-rng.c               | 1 +
 drivers/hw_random/stm32-rng.c                      | 1 +
 drivers/i2c/busses/i2c-at91.c                      | 1 +
 drivers/i2c/busses/i2c-bcm283x.c                   | 1 +
 drivers/i2c/busses/i2c-cadence.c                   | 1 +
 drivers/i2c/busses/i2c-designware.c                | 1 +
 drivers/i2c/busses/i2c-gpio.c                      | 1 +
 drivers/i2c/busses/i2c-imx.c                       | 1 +
 drivers/i2c/busses/i2c-mv64xxx.c                   | 1 +
 drivers/i2c/busses/i2c-omap.c                      | 1 +
 drivers/i2c/busses/i2c-rockchip.c                  | 1 +
 drivers/i2c/busses/i2c-stm32.c                     | 1 +
 drivers/i2c/busses/i2c-tegra.c                     | 1 +
 drivers/i2c/busses/i2c-versatile.c                 | 1 +
 drivers/input/gpio_keys.c                          | 1 +
 drivers/input/imx_keypad.c                         | 1 +
 drivers/led/led-gpio.c                             | 1 +
 drivers/led/led-pca955x.c                          | 1 +
 drivers/led/led-pwm.c                              | 1 +
 drivers/mci/arasan-sdhci.c                         | 1 +
 drivers/mci/atmel-sdhci.c                          | 1 +
 drivers/mci/atmel_mci.c                            | 1 +
 drivers/mci/bcm2835-sdhost.c                       | 1 +
 drivers/mci/dove-sdhci.c                           | 1 +
 drivers/mci/dw_mmc.c                               | 1 +
 drivers/mci/imx-esdhc.c                            | 1 +
 drivers/mci/imx.c                                  | 1 +
 drivers/mci/mci-bcm2835.c                          | 1 +
 drivers/mci/mci_spi.c                              | 1 +
 drivers/mci/mxs.c                                  | 1 +
 drivers/mci/omap_hsmmc.c                           | 1 +
 drivers/mci/rockchip-dwcmshc-sdhci.c               | 1 +
 drivers/mci/tegra-sdmmc.c                          | 1 +
 drivers/memory/atmel-ebi.c                         | 1 +
 drivers/memory/mc-tegra124.c                       | 1 +
 drivers/mfd/atmel-flexcom.c                        | 1 +
 drivers/mfd/atmel-smc.c                            | 1 +
 drivers/mfd/axp20x-i2c.c                           | 1 +
 drivers/mfd/da9053.c                               | 1 +
 drivers/mfd/da9063.c                               | 1 +
 drivers/mfd/mc13xxx.c                              | 1 +
 drivers/mfd/mc34704.c                              | 1 +
 drivers/mfd/rave-sp.c                              | 1 +
 drivers/mfd/rk808.c                                | 1 +
 drivers/mfd/rn5t568.c                              | 1 +
 drivers/mfd/stm32-timers.c                         | 1 +
 drivers/mfd/stpmic1.c                              | 1 +
 drivers/misc/sram.c                                | 1 +
 drivers/misc/starfive-pwrseq.c                     | 1 +
 drivers/misc/state.c                               | 1 +
 drivers/misc/storage-by-uuid.c                     | 1 +
 drivers/misc/ubootvar.c                            | 1 +
 drivers/mtd/devices/m25p80.c                       | 1 +
 drivers/mtd/devices/mtd_dataflash.c                | 1 +
 drivers/mtd/devices/mtdram.c                       | 1 +
 drivers/mtd/nand/atmel/pmecc.c                     | 1 +
 drivers/mtd/nand/nand_denali_dt.c                  | 1 +
 drivers/mtd/nand/nand_fsl_ifc.c                    | 1 +
 drivers/mtd/nand/nand_imx.c                        | 1 +
 drivers/mtd/nand/nand_mrvl_nfc.c                   | 1 +
 drivers/mtd/nand/nand_mxs.c                        | 1 +
 drivers/mtd/nand/nand_orion.c                      | 1 +
 drivers/mtd/nand/omap_elm.c                        | 1 +
 drivers/mtd/nor/cfi_flash.c                        | 1 +
 drivers/mtd/spi-nor/cadence-quadspi.c              | 1 +
 drivers/net/ag71xx.c                               | 1 +
 drivers/net/arc_emac.c                             | 1 +
 drivers/net/bcmgenet.c                             | 1 +
 drivers/net/cpsw.c                                 | 2 ++
 drivers/net/davinci_emac.c                         | 2 ++
 drivers/net/designware_generic.c                   | 1 +
 drivers/net/designware_imx8.c                      | 1 +
 drivers/net/designware_rockchip.c                  | 1 +
 drivers/net/designware_socfpga.c                   | 1 +
 drivers/net/designware_starfive.c                  | 1 +
 drivers/net/designware_stm32.c                     | 1 +
 drivers/net/designware_tegra186.c                  | 1 +
 drivers/net/dm9k.c                                 | 1 +
 drivers/net/enc28j60.c                             | 1 +
 drivers/net/ethoc.c                                | 1 +
 drivers/net/fec_imx.c                              | 1 +
 drivers/net/fsl-fman.c                             | 5 +++++
 drivers/net/ksz8873.c                              | 1 +
 drivers/net/ksz9477.c                              | 1 +
 drivers/net/liteeth.c                              | 1 +
 drivers/net/macb.c                                 | 1 +
 drivers/net/mvneta.c                               | 1 +
 drivers/net/orion-gbe.c                            | 1 +
 drivers/net/phy/mdio-gpio.c                        | 1 +
 drivers/net/phy/mdio-mux-gpio.c                    | 1 +
 drivers/net/phy/mdio-mvebu.c                       | 1 +
 drivers/net/phy/mv88e6xxx/chip.c                   | 1 +
 drivers/net/realtek-dsa/realtek-mdio.c             | 1 +
 drivers/net/realtek-dsa/realtek-smi.c              | 1 +
 drivers/net/sja1105.c                              | 1 +
 drivers/net/smc91111.c                             | 2 ++
 drivers/net/smc911x.c                              | 1 +
 drivers/nvmem/bsec.c                               | 1 +
 drivers/nvmem/eeprom_93xx46.c                      | 1 +
 drivers/nvmem/kvx-otp-nv.c                         | 1 +
 drivers/nvmem/ocotp.c                              | 1 +
 drivers/nvmem/rave-sp-eeprom.c                     | 1 +
 drivers/nvmem/rmem.c                               | 1 +
 drivers/nvmem/snvs_lpgpr.c                         | 1 +
 drivers/nvmem/starfive-otp.c                       | 1 +
 drivers/of/barebox.c                               | 1 +
 drivers/of/base.c                                  | 2 ++
 drivers/pci/pci-ecam-generic.c                     | 1 +
 drivers/pci/pci-imx6.c                             | 1 +
 drivers/pci/pci-layerscape.c                       | 1 +
 drivers/pci/pci-mvebu.c                            | 1 +
 drivers/pci/pci-tegra.c                            | 1 +
 drivers/pci/pcie-dw-rockchip.c                     | 1 +
 drivers/phy/freescale/phy-fsl-imx8mq-usb.c         | 1 +
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c      | 1 +
 drivers/phy/rockchip/phy-rockchip-naneng-combphy.c | 1 +
 drivers/phy/usb-nop-xceiv.c                        | 1 +
 drivers/pinctrl/imx-iomux-v1.c                     | 1 +
 drivers/pinctrl/imx-iomux-v2.c                     | 1 +
 drivers/pinctrl/imx-iomux-v3.c                     | 1 +
 drivers/pinctrl/mvebu/armada-370.c                 | 1 +
 drivers/pinctrl/mvebu/armada-xp.c                  | 1 +
 drivers/pinctrl/mvebu/dove.c                       | 1 +
 drivers/pinctrl/mvebu/kirkwood.c                   | 1 +
 drivers/pinctrl/pinctrl-at91-pio4.c                | 1 +
 drivers/pinctrl/pinctrl-at91.c                     | 2 ++
 drivers/pinctrl/pinctrl-bcm2835.c                  | 1 +
 drivers/pinctrl/pinctrl-mxs.c                      | 1 +
 drivers/pinctrl/pinctrl-rockchip.c                 | 1 +
 drivers/pinctrl/pinctrl-single.c                   | 1 +
 drivers/pinctrl/pinctrl-stm32.c                    | 1 +
 drivers/pinctrl/pinctrl-tegra-xusb.c               | 1 +
 drivers/pinctrl/pinctrl-tegra20.c                  | 1 +
 drivers/pinctrl/pinctrl-tegra30.c                  | 1 +
 drivers/pinctrl/pinctrl-vf610.c                    | 1 +
 drivers/power/reset/gpio-poweroff.c                | 1 +
 drivers/power/reset/gpio-restart.c                 | 1 +
 drivers/power/reset/htif-poweroff.c                | 1 +
 drivers/power/reset/nvmem-reboot-mode.c            | 1 +
 drivers/power/reset/syscon-poweroff.c              | 1 +
 drivers/power/reset/syscon-reboot-mode.c           | 1 +
 drivers/power/reset/syscon-reboot.c                | 1 +
 drivers/pwm/pwm-atmel.c                            | 1 +
 drivers/pwm/pwm-imx.c                              | 1 +
 drivers/pwm/pwm-mxs.c                              | 1 +
 drivers/pwm/pwm-stm32.c                            | 1 +
 drivers/regulator/anatop-regulator.c               | 1 +
 drivers/regulator/fixed.c                          | 1 +
 drivers/regulator/pfuze.c                          | 1 +
 drivers/regulator/stm32-pwr.c                      | 1 +
 drivers/regulator/stm32-vrefbuf.c                  | 1 +
 drivers/regulator/stpmic1_regulator.c              | 1 +
 drivers/remoteproc/imx_rproc.c                     | 1 +
 drivers/remoteproc/stm32_rproc.c                   | 1 +
 drivers/reset/reset-imx7.c                         | 1 +
 drivers/reset/reset-simple.c                       | 1 +
 drivers/reset/reset-socfpga.c                      | 1 +
 drivers/reset/reset-starfive-vic.c                 | 1 +
 drivers/rtc/rtc-imxdi.c                            | 1 +
 drivers/rtc/rtc-jz4740.c                           | 1 +
 drivers/serial/atmel.c                             | 1 +
 drivers/serial/serial_ar933x.c                     | 1 +
 drivers/serial/serial_auart.c                      | 1 +
 drivers/serial/serial_cadence.c                    | 1 +
 drivers/serial/serial_clps711x.c                   | 1 +
 drivers/serial/serial_digic.c                      | 1 +
 drivers/serial/serial_imx.c                        | 1 +
 drivers/serial/serial_litex.c                      | 1 +
 drivers/serial/serial_lpuart.c                     | 1 +
 drivers/serial/serial_ns16550.c                    | 1 +
 drivers/serial/serial_sifive.c                     | 1 +
 drivers/serial/serial_stm32.c                      | 1 +
 drivers/serial/stm-serial.c                        | 1 +
 drivers/soc/imx/gpcv2.c                            | 1 +
 drivers/soc/kvx/kvx_socinfo.c                      | 1 +
 drivers/soc/rockchip/io-domain.c                   | 1 +
 drivers/soc/sifive/sifive_l2_cache.c               | 1 +
 drivers/sound/gpio-beeper.c                        | 1 +
 drivers/sound/pwm-beeper.c                         | 1 +
 drivers/sound/sdl.c                                | 1 +
 drivers/spi/ath79_spi.c                            | 1 +
 drivers/spi/atmel-quadspi.c                        | 1 +
 drivers/spi/atmel_spi.c                            | 1 +
 drivers/spi/dspi_spi.c                             | 1 +
 drivers/spi/gpio_spi.c                             | 1 +
 drivers/spi/imx_spi.c                              | 1 +
 drivers/spi/litex_spiflash.c                       | 1 +
 drivers/spi/mvebu_spi.c                            | 1 +
 drivers/spi/omap3_spi.c                            | 1 +
 drivers/spi/spi-fsl-dspi.c                         | 1 +
 drivers/spi/spi-fsl-qspi.c                         | 1 +
 drivers/spi/spi-nxp-fspi.c                         | 1 +
 drivers/spi/spi-sifive.c                           | 1 +
 drivers/spi/stm32_spi.c                            | 1 +
 drivers/spi/zynq_qspi.c                            | 1 +
 drivers/usb/dwc2/dwc2.c                            | 1 +
 drivers/usb/dwc3/core.c                            | 1 +
 drivers/usb/dwc3/dwc3-of-simple.c                  | 1 +
 drivers/usb/gadget/udc/at91_udc.c                  | 1 +
 drivers/usb/host/ehci-atmel.c                      | 1 +
 drivers/usb/host/ehci-hcd.c                        | 1 +
 drivers/usb/host/ohci-at91.c                       | 1 +
 drivers/usb/imx/chipidea-imx.c                     | 1 +
 drivers/usb/imx/imx-usb-misc.c                     | 1 +
 drivers/usb/imx/imx-usb-phy.c                      | 1 +
 drivers/usb/misc/onboard_usb_hub.h                 | 1 +
 drivers/usb/misc/usb251xb.c                        | 1 +
 drivers/usb/musb/musb_am335x.c                     | 1 +
 drivers/usb/musb/musb_dsps.c                       | 1 +
 drivers/usb/musb/phy-am335x-control.c              | 1 +
 drivers/usb/musb/phy-am335x.c                      | 1 +
 drivers/video/atmel_lcdfb.c                        | 1 +
 drivers/video/backlight-pwm.c                      | 1 +
 drivers/video/imx-ipu-v3/imx-hdmi.c                | 1 +
 drivers/video/imx-ipu-v3/imx-ldb.c                 | 1 +
 drivers/video/imx-ipu-v3/imx-pd.c                  | 1 +
 drivers/video/imx-ipu-v3/ipu-common.c              | 1 +
 drivers/video/panel-ilitek-ili9341.c               | 1 +
 drivers/video/rave-sp-backlight.c                  | 1 +
 drivers/video/simple-panel.c                       | 1 +
 drivers/video/simplefb-client.c                    | 1 +
 drivers/video/ssd1307fb.c                          | 1 +
 drivers/video/stm.c                                | 1 +
 drivers/video/stm32_ltdc.c                         | 1 +
 drivers/virtio/virtio_mmio.c                       | 1 +
 drivers/w1/masters/w1-gpio.c                       | 1 +
 drivers/watchdog/ar9344_wdt.c                      | 1 +
 drivers/watchdog/at91sam9_wdt.c                    | 1 +
 drivers/watchdog/bcm2835_wdt.c                     | 1 +
 drivers/watchdog/davinci_wdt.c                     | 1 +
 drivers/watchdog/dw_wdt.c                          | 1 +
 drivers/watchdog/gpio_wdt.c                        | 1 +
 drivers/watchdog/im28wd.c                          | 1 +
 drivers/watchdog/imxwd.c                           | 1 +
 drivers/watchdog/jz4740.c                          | 1 +
 drivers/watchdog/kvx_wdt.c                         | 1 +
 drivers/watchdog/omap_wdt.c                        | 1 +
 drivers/watchdog/orion_wdt.c                       | 1 +
 drivers/watchdog/rave-sp-wdt.c                     | 1 +
 drivers/watchdog/rn5t568_wdt.c                     | 1 +
 drivers/watchdog/starfive_wdt.c                    | 1 +
 drivers/watchdog/stm32_iwdg.c                      | 1 +
 drivers/watchdog/stpmic1_wdt.c                     | 1 +
 fs/pstore/ram.c                                    | 1 +
 389 files changed, 401 insertions(+)

diff --git a/arch/arm/boards/phytec-phycore-stm32mp1/board.c b/arch/arm/boards/phytec-phycore-stm32mp1/board.c
index 09e73cdcfda3..731880c3d16a 100644
--- a/arch/arm/boards/phytec-phycore-stm32mp1/board.c
+++ b/arch/arm/boards/phytec-phycore-stm32mp1/board.c
@@ -19,6 +19,7 @@ static const struct of_device_id phycore_stm32mp1_of_match[] = {
 	{ .compatible = "phytec,phycore-stm32mp1-3" },
 	{ /* sentinel */ },
 };
+MODULE_DEVICE_TABLE(of, phycore_stm32mp1_of_match);
 
 static struct driver phycore_stm32mp1_board_driver = {
 	.name = "board-phycore-stm32mp1",
diff --git a/arch/arm/boards/pine64-quartz64/board.c b/arch/arm/boards/pine64-quartz64/board.c
index caf7ff9cd4ea..1573dd86748f 100644
--- a/arch/arm/boards/pine64-quartz64/board.c
+++ b/arch/arm/boards/pine64-quartz64/board.c
@@ -31,6 +31,7 @@ static const struct of_device_id quartz64_of_match[] = {
 	},
 	{ /* sentinel */ },
 };
+MODULE_DEVICE_TABLE(of, quartz64_of_match);
 
 static struct driver quartz64_board_driver = {
 	.name = "board-quartz64",
diff --git a/arch/arm/boards/protonic-imx8m/board.c b/arch/arm/boards/protonic-imx8m/board.c
index 438cef412d28..d4bacbc6f0fa 100644
--- a/arch/arm/boards/protonic-imx8m/board.c
+++ b/arch/arm/boards/protonic-imx8m/board.c
@@ -75,6 +75,7 @@ static const struct of_device_id prt_imx8mm_of_match[] = {
 	{ .compatible = "prt,prt8mm", },
 	{ /* sentinel */ },
 };
+MODULE_DEVICE_TABLE(of, prt_imx8mm_of_match);
 
 static struct driver prt_prt8mm_board_driver = {
 	.name = "board-protonic-imx8mm",
diff --git a/arch/arm/boards/sama5d3_xplained/board.c b/arch/arm/boards/sama5d3_xplained/board.c
index a5f191191b35..4d908e6b9f62 100644
--- a/arch/arm/boards/sama5d3_xplained/board.c
+++ b/arch/arm/boards/sama5d3_xplained/board.c
@@ -64,6 +64,7 @@ static const struct of_device_id sama5d3_xplained_of_match[] = {
 	{ .compatible = "atmel,sama5d3-xplained" },
 	{ /* sentinel */ },
 };
+MODULE_DEVICE_TABLE(of, sama5d3_xplained_of_match);
 
 static struct driver sama5d3_xplained_board_driver = {
 	.name = "board-sama5d3_xplained",
diff --git a/arch/arm/boards/seeed-odyssey/board.c b/arch/arm/boards/seeed-odyssey/board.c
index af078e451eea..5befd3266475 100644
--- a/arch/arm/boards/seeed-odyssey/board.c
+++ b/arch/arm/boards/seeed-odyssey/board.c
@@ -31,6 +31,7 @@ static const struct of_device_id odyssey_som_of_match[] = {
 	{ .compatible = "seeed,stm32mp157c-odyssey-som" },
 	{ /* sentinel */ },
 };
+MODULE_DEVICE_TABLE(of, odyssey_som_of_match);
 
 static struct driver odyssey_som_driver = {
 	.name = "odyssey-som",
diff --git a/arch/arm/boards/skov-arm9cpu/board.c b/arch/arm/boards/skov-arm9cpu/board.c
index cf2b424cdc57..ddf6b68bcc6f 100644
--- a/arch/arm/boards/skov-arm9cpu/board.c
+++ b/arch/arm/boards/skov-arm9cpu/board.c
@@ -75,6 +75,7 @@ static __maybe_unused struct of_device_id skov_arm9_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, skov_arm9_ids);
 
 static struct driver skov_arm9_driver = {
 	.name = "skov-arm9",
diff --git a/arch/arm/boards/stm32mp15x-ev1/board.c b/arch/arm/boards/stm32mp15x-ev1/board.c
index 99a2f911d8b6..51c3bb21e992 100644
--- a/arch/arm/boards/stm32mp15x-ev1/board.c
+++ b/arch/arm/boards/stm32mp15x-ev1/board.c
@@ -30,6 +30,7 @@ static const struct of_device_id ed1_of_match[] = {
 	{ .compatible = "st,stm32mp157c-ed1" },
 	{ /* sentinel */ },
 };
+MODULE_DEVICE_TABLE(of, ed1_of_match);
 
 static struct driver ed1_board_driver = {
 	.name = "board-stm32mp15x-ed1",
diff --git a/arch/arm/boards/tqma6ulx/board.c b/arch/arm/boards/tqma6ulx/board.c
index fd9a29951115..4a9429a8c34d 100644
--- a/arch/arm/boards/tqma6ulx/board.c
+++ b/arch/arm/boards/tqma6ulx/board.c
@@ -34,6 +34,7 @@ static const struct of_device_id mba6ulx_of_match[] = {
 	{ .compatible = "tq,mba6ulx" },
 	{ /* sentinel */ },
 };
+MODULE_DEVICE_TABLE(of, mba6ulx_of_match);
 
 static struct driver mba6ulx_board_driver = {
 	.name = "board-mba6ulx",
diff --git a/arch/arm/boards/vexpress/init.c b/arch/arm/boards/vexpress/init.c
index d2f82c1d19d5..b3d6ebd72501 100644
--- a/arch/arm/boards/vexpress/init.c
+++ b/arch/arm/boards/vexpress/init.c
@@ -77,6 +77,7 @@ static const struct of_device_id vexpress_of_match[] = {
 	{ .compatible = "arm,vexpress" },
 	{ /* Sentinel */},
 };
+MODULE_DEVICE_TABLE(of, vexpress_of_match);
 
 static struct driver vexpress_board_driver = {
 	.name = "board-vexpress",
diff --git a/arch/arm/boards/webasto-ccbv2/board.c b/arch/arm/boards/webasto-ccbv2/board.c
index 13f3ed129ff4..6b2c8b8cb01c 100644
--- a/arch/arm/boards/webasto-ccbv2/board.c
+++ b/arch/arm/boards/webasto-ccbv2/board.c
@@ -54,6 +54,7 @@ static const struct of_device_id ccbv2_of_match[] = {
 	{ .compatible = "webasto,imx6ul-marvel" },
 	{ /* sentinel */ },
 };
+MODULE_DEVICE_TABLE(of, ccbv2_of_match);
 
 static struct driver ccbv2_board_driver = {
 	.name = "board-imx6ul-ccbv2",
diff --git a/arch/arm/cpu/psci-client.c b/arch/arm/cpu/psci-client.c
index 5d83fc18e837..c865e754fd27 100644
--- a/arch/arm/cpu/psci-client.c
+++ b/arch/arm/cpu/psci-client.c
@@ -181,6 +181,7 @@ static __maybe_unused struct of_device_id psci_dt_ids[] = {
 	{ .compatible = "arm,psci-1.0",	.data = (void*)ARM_PSCI_VER(1,0) },
 	{ /* sentinel */ },
 };
+MODULE_DEVICE_TABLE(of, psci_dt_ids);
 
 static struct driver psci_driver = {
 	.name = "psci",
diff --git a/arch/arm/mach-at91/at91sam9_rst.c b/arch/arm/mach-at91/at91sam9_rst.c
index cccbc7e68f89..db7411a053d6 100644
--- a/arch/arm/mach-at91/at91sam9_rst.c
+++ b/arch/arm/mach-at91/at91sam9_rst.c
@@ -93,6 +93,7 @@ static const __maybe_unused struct of_device_id at91sam9x_rst_dt_ids[] = {
 	{ .compatible = "atmel,sama5d3-rstc", },
 	{ /* sentinel */ },
 };
+MODULE_DEVICE_TABLE(of, at91sam9x_rst_dt_ids);
 
 static struct driver at91sam9x_rst_driver = {
 	.name		= "at91sam9x-rst",
diff --git a/arch/arm/mach-at91/ddramc.c b/arch/arm/mach-at91/ddramc.c
index 4f348c709ff9..4d0637b487a5 100644
--- a/arch/arm/mach-at91/ddramc.c
+++ b/arch/arm/mach-at91/ddramc.c
@@ -58,6 +58,7 @@ static struct of_device_id sama5_ddr_dt_ids[] = {
 	{ .compatible = "atmel,sama5d3-ddramc" },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, sama5_ddr_dt_ids);
 
 static struct driver sama5_ddr_driver = {
 	.name   = "sama5-ddramc",
diff --git a/arch/arm/mach-clps711x/clock.c b/arch/arm/mach-clps711x/clock.c
index 0ddfce82693d..4cb0f2bbfa12 100644
--- a/arch/arm/mach-clps711x/clock.c
+++ b/arch/arm/mach-clps711x/clock.c
@@ -83,6 +83,7 @@ static const struct of_device_id __maybe_unused clps711x_clk_dt_ids[] = {
 	{ .compatible = "cirrus,ep7209-clk", },
 	{ }
 };
+MODULE_DEVICE_TABLE(of, clps711x_clk_dt_ids);
 
 static struct driver clps711x_clk_driver = {
 	.probe = clps711x_clk_probe,
diff --git a/arch/arm/mach-clps711x/common.c b/arch/arm/mach-clps711x/common.c
index ce385fdda383..60db39ad1153 100644
--- a/arch/arm/mach-clps711x/common.c
+++ b/arch/arm/mach-clps711x/common.c
@@ -135,6 +135,7 @@ static const struct of_device_id __maybe_unused clps711x_bus_dt_ids[] = {
 	{ .compatible = "cirrus,ep7209-bus", },
 	{ }
 };
+MODULE_DEVICE_TABLE(of, clps711x_bus_dt_ids);
 
 static struct driver clps711x_bus_driver = {
 	.name = "clps711x-bus",
diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index bbf8163e93e9..1798ad48e50a 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -744,6 +744,7 @@ static __maybe_unused struct of_device_id imx_esdctl_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, imx_esdctl_dt_ids);
 
 static struct driver imx_esdctl_driver = {
 	.name   = "imx-esdctl",
diff --git a/arch/arm/mach-imx/iim.c b/arch/arm/mach-imx/iim.c
index 092cf5bcd38e..8dc70d3caa26 100644
--- a/arch/arm/mach-imx/iim.c
+++ b/arch/arm/mach-imx/iim.c
@@ -572,6 +572,7 @@ static __maybe_unused struct of_device_id imx_iim_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, imx_iim_dt_ids);
 
 static struct driver imx_iim_driver = {
 	.name	= DRIVERNAME,
diff --git a/arch/arm/mach-imx/src.c b/arch/arm/mach-imx/src.c
index 8cfc3878b0b6..ec8d1bf6f6e9 100644
--- a/arch/arm/mach-imx/src.c
+++ b/arch/arm/mach-imx/src.c
@@ -37,6 +37,7 @@ static const struct of_device_id imx_src_dt_ids[] = {
 	{ .compatible = "fsl,imx51-src", },
 	{ /* sentinel */ },
 };
+MODULE_DEVICE_TABLE(of, imx_src_dt_ids);
 
 static struct driver imx_src_reset_driver = {
 	.name = "imx-src",
diff --git a/arch/arm/mach-mvebu/armada-370-xp.c b/arch/arm/mach-mvebu/armada-370-xp.c
index 0a0a1160fc32..1bbc6bd22645 100644
--- a/arch/arm/mach-mvebu/armada-370-xp.c
+++ b/arch/arm/mach-mvebu/armada-370-xp.c
@@ -17,6 +17,7 @@ static const struct of_device_id armada_370_xp_pcie_of_ids[] = {
 	{ .compatible = "marvell,armada-370-pcie", },
 	{ },
 };
+MODULE_DEVICE_TABLE(of, armada_370_xp_pcie_of_ids);
 
 /*
  * Marvell Armada XP MV78230-A0 incorrectly identifies itself as
diff --git a/arch/arm/mach-mvebu/common.c b/arch/arm/mach-mvebu/common.c
index aea2c4384919..bca4a3cb1c3f 100644
--- a/arch/arm/mach-mvebu/common.c
+++ b/arch/arm/mach-mvebu/common.c
@@ -57,6 +57,7 @@ static const struct of_device_id mvebu_pcie_of_ids[] = {
 	{ .compatible = "marvell,kirkwood-pcie" },
 	{ },
 };
+MODULE_DEVICE_TABLE(of, mvebu_pcie_of_ids);
 
 static int mvebu_soc_id_init(void)
 {
diff --git a/arch/arm/mach-mxs/ocotp.c b/arch/arm/mach-mxs/ocotp.c
index ceda5fb5d9e6..9e86ac9559e8 100644
--- a/arch/arm/mach-mxs/ocotp.c
+++ b/arch/arm/mach-mxs/ocotp.c
@@ -215,6 +215,7 @@ static __maybe_unused struct of_device_id mxs_ocotp_compatible[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, mxs_ocotp_compatible);
 
 static struct driver mxs_ocotp_driver = {
 	.name	= DRIVERNAME,
diff --git a/arch/arm/mach-omap/am33xx_scrm.c b/arch/arm/mach-omap/am33xx_scrm.c
index c2ae73d53ec8..431e72fdda15 100644
--- a/arch/arm/mach-omap/am33xx_scrm.c
+++ b/arch/arm/mach-omap/am33xx_scrm.c
@@ -36,6 +36,7 @@ static __maybe_unused struct of_device_id am33xx_scrm_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, am33xx_scrm_dt_ids);
 
 static struct driver am33xx_scrm_driver = {
 	.name   = "am33xx-scrm",
diff --git a/arch/arm/mach-rockchip/dmc.c b/arch/arm/mach-rockchip/dmc.c
index 5c08c78f1596..a167be776540 100644
--- a/arch/arm/mach-rockchip/dmc.c
+++ b/arch/arm/mach-rockchip/dmc.c
@@ -257,6 +257,7 @@ static struct of_device_id rockchip_dmc_dt_ids[] = {
 	},
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, rockchip_dmc_dt_ids);
 
 static struct driver rockchip_dmc_driver = {
 	.name   = "rockchip-dmc",
diff --git a/arch/arm/mach-stm32mp/ddrctrl.c b/arch/arm/mach-stm32mp/ddrctrl.c
index ad3d970e9cae..279a35f30310 100644
--- a/arch/arm/mach-stm32mp/ddrctrl.c
+++ b/arch/arm/mach-stm32mp/ddrctrl.c
@@ -151,6 +151,7 @@ static __maybe_unused struct of_device_id stm32mp1_ddr_dt_ids[] = {
 	{ .compatible = "st,stm32mp13-ddr", .data = (void *)2 },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, stm32mp1_ddr_dt_ids);
 
 static struct driver stm32mp1_ddr_driver = {
 	.name   = "stm32mp1-ddr",
diff --git a/arch/arm/mach-tegra/tegra20-pmc.c b/arch/arm/mach-tegra/tegra20-pmc.c
index 9965d41383fa..11fd8c28be59 100644
--- a/arch/arm/mach-tegra/tegra20-pmc.c
+++ b/arch/arm/mach-tegra/tegra20-pmc.c
@@ -237,6 +237,7 @@ static __maybe_unused struct of_device_id tegra20_pmc_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, tegra20_pmc_dt_ids);
 
 static struct driver tegra20_pmc_driver = {
 	.probe	= tegra20_pmc_probe,
diff --git a/arch/arm/mach-tegra/tegra20-timer.c b/arch/arm/mach-tegra/tegra20-timer.c
index 3dbb2a8fc452..e3cd216f30d4 100644
--- a/arch/arm/mach-tegra/tegra20-timer.c
+++ b/arch/arm/mach-tegra/tegra20-timer.c
@@ -98,6 +98,7 @@ static __maybe_unused struct of_device_id tegra20_timer_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, tegra20_timer_dt_ids);
 
 static struct driver tegra20_timer_driver = {
 	.probe	= tegra20_timer_probe,
diff --git a/arch/arm/mach-zynqmp/firmware-zynqmp.c b/arch/arm/mach-zynqmp/firmware-zynqmp.c
index 521a70bac40e..128f042ddc4c 100644
--- a/arch/arm/mach-zynqmp/firmware-zynqmp.c
+++ b/arch/arm/mach-zynqmp/firmware-zynqmp.c
@@ -630,6 +630,7 @@ static struct of_device_id zynqmp_firmware_id_table[] = {
 	{ .compatible = "xlnx,zynqmp-firmware", },
 	{}
 };
+MODULE_DEVICE_TABLE(of, zynqmp_firmware_id_table);
 
 static struct driver zynqmp_firmware_driver = {
 	.name = "zynqmp_firmware",
diff --git a/arch/kvx/lib/poweroff.c b/arch/kvx/lib/poweroff.c
index fd8406fc6ea8..3ffda026b3e7 100644
--- a/arch/kvx/lib/poweroff.c
+++ b/arch/kvx/lib/poweroff.c
@@ -33,6 +33,7 @@ static __maybe_unused struct of_device_id kvx_scall_poweroff_id[] = {
 	}, {
 	}
 };
+MODULE_DEVICE_TABLE(of, kvx_scall_poweroff_id);
 
 static struct driver kvx_scall_poweroff = {
 	.name  = "kvx_scall_poweroff",
diff --git a/arch/mips/mach-ath79/art.c b/arch/mips/mach-ath79/art.c
index 772fc24e03a3..585cccc5af2f 100644
--- a/arch/mips/mach-ath79/art.c
+++ b/arch/mips/mach-ath79/art.c
@@ -96,6 +96,7 @@ static struct of_device_id art_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, art_dt_ids);
 
 static struct driver art_driver = {
 	.name		= "qca-art",
diff --git a/arch/riscv/boards/beaglev/board.c b/arch/riscv/boards/beaglev/board.c
index d6bd89da19fe..d466eef7f190 100644
--- a/arch/riscv/boards/beaglev/board.c
+++ b/arch/riscv/boards/beaglev/board.c
@@ -21,6 +21,7 @@ static const struct of_device_id beaglev_of_match[] = {
 	{ .compatible = "beagle,beaglev-starlight-jh7100" },
 	{ /* sentinel */ },
 };
+MODULE_DEVICE_TABLE(of, beaglev_of_match);
 
 static struct driver beaglev_board_driver = {
 	.name = "board-beaglev",
diff --git a/arch/riscv/cpu/core.c b/arch/riscv/cpu/core.c
index 8cb9e5196b53..38aa40275829 100644
--- a/arch/riscv/cpu/core.c
+++ b/arch/riscv/cpu/core.c
@@ -98,6 +98,7 @@ static struct of_device_id riscv_dt_ids[] = {
 	{ .compatible = "riscv", },
 	{ /* sentinel */ },
 };
+MODULE_DEVICE_TABLE(of, riscv_dt_ids);
 
 static struct driver riscv_driver = {
 	.name = "riscv",
diff --git a/arch/sandbox/board/hostfile.c b/arch/sandbox/board/hostfile.c
index a1ab06b87770..d3fe8bcb9036 100644
--- a/arch/sandbox/board/hostfile.c
+++ b/arch/sandbox/board/hostfile.c
@@ -194,6 +194,7 @@ static __maybe_unused struct of_device_id hostfile_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, hostfile_dt_ids);
 
 static struct driver hf_drv = {
 	.name  = "hostfile",
diff --git a/arch/sandbox/board/led.c b/arch/sandbox/board/led.c
index a080ae634f83..ced7e82f9908 100644
--- a/arch/sandbox/board/led.c
+++ b/arch/sandbox/board/led.c
@@ -57,6 +57,7 @@ static struct of_device_id sandbox_led_of_ids[] = {
 	{ .compatible = "barebox,sandbox-led", },
 	{ }
 };
+MODULE_DEVICE_TABLE(of, sandbox_led_of_ids);
 
 static struct driver sandbox_led_of_driver = {
 	.name  = "sandbox-led",
diff --git a/arch/sandbox/board/power.c b/arch/sandbox/board/power.c
index 4adc8d7455fc..8300c589c730 100644
--- a/arch/sandbox/board/power.c
+++ b/arch/sandbox/board/power.c
@@ -89,6 +89,7 @@ static __maybe_unused struct of_device_id sandbox_power_dt_ids[] = {
 	{ .compatible = "barebox,sandbox-power" },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, sandbox_power_dt_ids);
 
 static struct driver sandbox_power_drv = {
 	.name  = "sandbox-power",
diff --git a/arch/sandbox/board/watchdog.c b/arch/sandbox/board/watchdog.c
index 5bffad81195e..074c96a8a9fc 100644
--- a/arch/sandbox/board/watchdog.c
+++ b/arch/sandbox/board/watchdog.c
@@ -67,6 +67,7 @@ static __maybe_unused struct of_device_id sandbox_watchdog_dt_ids[] = {
 	{ .compatible = "barebox,sandbox-watchdog" },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, sandbox_watchdog_dt_ids);
 
 static struct driver sandbox_watchdog_drv = {
 	.name  = "sandbox-watchdog",
diff --git a/drivers/aiodev/am335x_adc.c b/drivers/aiodev/am335x_adc.c
index 491866ca36e6..512f0a86faca 100644
--- a/drivers/aiodev/am335x_adc.c
+++ b/drivers/aiodev/am335x_adc.c
@@ -174,6 +174,7 @@ static const struct of_device_id of_am335x_adc_match[] = {
 	{ .compatible = "ti,am3359-tscadc", },
 	{ /* end */ }
 };
+MODULE_DEVICE_TABLE(of, of_am335x_adc_match);
 
 static struct driver am335x_adc_driver = {
 	.name		= "am335x_adc",
diff --git a/drivers/aiodev/imx7d_adc.c b/drivers/aiodev/imx7d_adc.c
index 3d0c0eaa684b..4d1f90203197 100644
--- a/drivers/aiodev/imx7d_adc.c
+++ b/drivers/aiodev/imx7d_adc.c
@@ -295,6 +295,7 @@ static const struct of_device_id imx7d_adc_match[] = {
 	{ .compatible = "fsl,imx7d-adc", },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, imx7d_adc_match);
 
 static void imx7d_adc_power_down(struct imx7d_adc *info)
 {
diff --git a/drivers/aiodev/imx_thermal.c b/drivers/aiodev/imx_thermal.c
index 0b1670708fc9..3263519cb241 100644
--- a/drivers/aiodev/imx_thermal.c
+++ b/drivers/aiodev/imx_thermal.c
@@ -192,6 +192,7 @@ static const struct of_device_id of_imx_thermal_match[] = {
 	{ .compatible = "fsl,imx6sx-tempmon", },
 	{ /* end */ }
 };
+MODULE_DEVICE_TABLE(of, of_imx_thermal_match);
 
 
 static struct driver imx_thermal_driver = {
diff --git a/drivers/aiodev/qoriq_thermal.c b/drivers/aiodev/qoriq_thermal.c
index a9d68ed940ee..20998a0f9767 100644
--- a/drivers/aiodev/qoriq_thermal.c
+++ b/drivers/aiodev/qoriq_thermal.c
@@ -245,6 +245,7 @@ static const struct of_device_id qoriq_tmu_match[] = {
 	{ .compatible = "fsl,imx8mq-tmu",},
 	{},
 };
+MODULE_DEVICE_TABLE(of, qoriq_tmu_match);
 
 static struct driver imx_thermal_driver = {
 	.name		= "qoriq_thermal",
diff --git a/drivers/aiodev/rockchip_saradc.c b/drivers/aiodev/rockchip_saradc.c
index 51408b2619e5..3c5c0e94da4b 100644
--- a/drivers/aiodev/rockchip_saradc.c
+++ b/drivers/aiodev/rockchip_saradc.c
@@ -188,6 +188,7 @@ static const struct of_device_id of_rockchip_saradc_match[] = {
 	{ .compatible = "rockchip,rk3568-saradc", .data = &rk3568_saradc_cfg },
 	{ /* end */ }
 };
+MODULE_DEVICE_TABLE(of, of_rockchip_saradc_match);
 
 static struct driver rockchip_saradc_driver = {
 	.name = "rockchip_saradc",
diff --git a/drivers/aiodev/st_gyro.c b/drivers/aiodev/st_gyro.c
index a7a910287187..3a8b6a7761f5 100644
--- a/drivers/aiodev/st_gyro.c
+++ b/drivers/aiodev/st_gyro.c
@@ -113,6 +113,7 @@ static const struct of_device_id st_gyro_match[] = {
 	{ .compatible = "st,l3gd20-gyro"  },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, st_gyro_match);
 
 static struct driver st_gyro_driver = {
 	.name  = "st_gyro",
diff --git a/drivers/aiodev/stm32-adc-core.c b/drivers/aiodev/stm32-adc-core.c
index d69c2325178d..f4e22d47af16 100644
--- a/drivers/aiodev/stm32-adc-core.c
+++ b/drivers/aiodev/stm32-adc-core.c
@@ -202,6 +202,7 @@ static const struct of_device_id stm32_adc_core_ids[] = {
 	{ .compatible = "st,stm32mp1-adc-core" },
 	{}
 };
+MODULE_DEVICE_TABLE(of, stm32_adc_core_ids);
 
 static struct driver stm32_adc_core_driver = {
 	.name		= "stm32-adc-core",
diff --git a/drivers/aiodev/stm32-adc.c b/drivers/aiodev/stm32-adc.c
index 95940d371175..af644786554d 100644
--- a/drivers/aiodev/stm32-adc.c
+++ b/drivers/aiodev/stm32-adc.c
@@ -367,6 +367,7 @@ static const struct of_device_id stm32_adc_match[] = {
 	{ .compatible = "st,stm32mp1-adc", .data = &stm32mp1_adc_cfg },
 	{}
 };
+MODULE_DEVICE_TABLE(of, stm32_adc_match);
 
 static struct driver stm32_adc_driver = {
 	.name		= "stm32-adc",
diff --git a/drivers/ata/ahci.c b/drivers/ata/ahci.c
index 17e84d35e01a..d4d1005f6165 100644
--- a/drivers/ata/ahci.c
+++ b/drivers/ata/ahci.c
@@ -669,6 +669,7 @@ static __maybe_unused struct of_device_id ahci_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, ahci_dt_ids);
 
 static struct driver ahci_driver = {
 	.name   = "ahci",
diff --git a/drivers/ata/intf_platform_ide.c b/drivers/ata/intf_platform_ide.c
index 0db19ce11eb0..0d69b4b0c32a 100644
--- a/drivers/ata/intf_platform_ide.c
+++ b/drivers/ata/intf_platform_ide.c
@@ -144,6 +144,7 @@ static __maybe_unused struct of_device_id platform_ide_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, platform_ide_dt_ids);
 
 static struct driver platform_ide_driver = {
 	.name   = "ide_intf",
diff --git a/drivers/ata/pata-imx.c b/drivers/ata/pata-imx.c
index 1579041ed878..e10babd1bb3c 100644
--- a/drivers/ata/pata-imx.c
+++ b/drivers/ata/pata-imx.c
@@ -201,6 +201,7 @@ static __maybe_unused struct of_device_id imx_pata_dt_ids[] = {
 		/* sentinel */
 	},
 };
+MODULE_DEVICE_TABLE(of, imx_pata_dt_ids);
 
 static struct driver imx_pata_driver = {
 	.name   = "imx-pata",
diff --git a/drivers/ata/sata-imx.c b/drivers/ata/sata-imx.c
index dc3a5c5fd50f..5bcbfca5b539 100644
--- a/drivers/ata/sata-imx.c
+++ b/drivers/ata/sata-imx.c
@@ -158,6 +158,7 @@ static __maybe_unused struct of_device_id imx_sata_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, imx_sata_dt_ids);
 
 static struct driver imx_sata_driver = {
 	.name   = "imx-sata",
diff --git a/drivers/ata/sata_mv.c b/drivers/ata/sata_mv.c
index 6c6313920640..f92d311c4a7d 100644
--- a/drivers/ata/sata_mv.c
+++ b/drivers/ata/sata_mv.c
@@ -215,6 +215,7 @@ static const struct of_device_id mv_sata_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, mv_sata_dt_ids);
 
 static struct driver mv_sata_driver = {
 	.name = "mv_sata",
diff --git a/drivers/bus/imx-weim.c b/drivers/bus/imx-weim.c
index f452c2303cc1..a85395ac91c1 100644
--- a/drivers/bus/imx-weim.c
+++ b/drivers/bus/imx-weim.c
@@ -64,6 +64,7 @@ static struct of_device_id weim_id_table[] = {
 	}, {
 	}
 };
+MODULE_DEVICE_TABLE(of, weim_id_table);
 
 struct imx_weim {
 	struct device *dev;
diff --git a/drivers/bus/mvebu-mbus.c b/drivers/bus/mvebu-mbus.c
index 5d4dbeb4df57..3e3d3ae2b67c 100644
--- a/drivers/bus/mvebu-mbus.c
+++ b/drivers/bus/mvebu-mbus.c
@@ -483,6 +483,7 @@ static struct of_device_id mvebu_mbus_dt_ids[] = {
 #endif
 	{ },
 };
+MODULE_DEVICE_TABLE(of, mvebu_mbus_dt_ids);
 
 /*
  * Public API of the driver
diff --git a/drivers/bus/omap-gpmc.c b/drivers/bus/omap-gpmc.c
index 4661220c8673..b52333e245b0 100644
--- a/drivers/bus/omap-gpmc.c
+++ b/drivers/bus/omap-gpmc.c
@@ -652,6 +652,7 @@ static struct of_device_id gpmc_id_table[] = {
 	{ .compatible = "ti,am3352-gpmc" },	/* am335x devices */
 	{ }
 };
+MODULE_DEVICE_TABLE(of, gpmc_id_table);
 
 static struct driver gpmc_driver = {
 	.name = "omap-gpmc",
diff --git a/drivers/bus/ti-sysc.c b/drivers/bus/ti-sysc.c
index cc3887de32cb..3b64e29db7b3 100644
--- a/drivers/bus/ti-sysc.c
+++ b/drivers/bus/ti-sysc.c
@@ -27,6 +27,7 @@ static struct of_device_id ti_sysc_dt_ids[] = {
 	{ .compatible = "ti,sysc-omap2",},
 	{ },
 };
+MODULE_DEVICE_TABLE(of, ti_sysc_dt_ids);
 
 static struct driver ti_sysc_driver = {
 	.name = "ti-sysc",
diff --git a/drivers/clk/at91/pmc.c b/drivers/clk/at91/pmc.c
index f260d08c5d54..70b71422ff04 100644
--- a/drivers/clk/at91/pmc.c
+++ b/drivers/clk/at91/pmc.c
@@ -255,6 +255,7 @@ static const struct of_device_id sama5d2_pmc_dt_ids[] = {
 	{ .compatible = "atmel,sama5d2-pmc" },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, sama5d2_pmc_dt_ids);
 
 static int __init pmc_register_ops(void)
 {
diff --git a/drivers/clk/bcm/clk-bcm2835-aux.c b/drivers/clk/bcm/clk-bcm2835-aux.c
index f1fd3f9d8014..aabeb88f5927 100644
--- a/drivers/clk/bcm/clk-bcm2835-aux.c
+++ b/drivers/clk/bcm/clk-bcm2835-aux.c
@@ -53,6 +53,7 @@ static const struct of_device_id bcm2835_aux_clk_of_match[] = {
 	{ .compatible = "brcm,bcm2835-aux", },
 	{},
 };
+MODULE_DEVICE_TABLE(of, bcm2835_aux_clk_of_match);
 
 static struct driver bcm2835_aux_clk_driver = {
 	.name = "bcm2835-aux-clk",
diff --git a/drivers/clk/clk-ar933x.c b/drivers/clk/clk-ar933x.c
index fd97df25a976..c97caaa37e17 100644
--- a/drivers/clk/clk-ar933x.c
+++ b/drivers/clk/clk-ar933x.c
@@ -131,6 +131,7 @@ static __maybe_unused struct of_device_id ar933x_clk_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, ar933x_clk_dt_ids);
 
 static struct driver ar933x_clk_driver = {
 	.probe	= ar933x_clk_probe,
diff --git a/drivers/clk/clk-ar9344.c b/drivers/clk/clk-ar9344.c
index c2ca8fa7d8f9..43a9da2857ce 100644
--- a/drivers/clk/clk-ar9344.c
+++ b/drivers/clk/clk-ar9344.c
@@ -126,6 +126,7 @@ static __maybe_unused struct of_device_id ar9344_clk_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, ar9344_clk_dt_ids);
 
 static struct driver ar9344_clk_driver = {
 	.probe	= ar9344_clk_probe,
diff --git a/drivers/clk/clk-gpio.c b/drivers/clk/clk-gpio.c
index 8cc0c5fc972e..940a20523eb0 100644
--- a/drivers/clk/clk-gpio.c
+++ b/drivers/clk/clk-gpio.c
@@ -110,6 +110,7 @@ static const struct of_device_id clk_gpio_device_id[] = {
 	{ .compatible = "gpio-gate-clock", },
 	{}
 };
+MODULE_DEVICE_TABLE(of, clk_gpio_device_id);
 
 static struct driver gpio_gate_clock_driver = {
 	.probe = of_gpio_clk_probe,
diff --git a/drivers/clk/clk-rpi.c b/drivers/clk/clk-rpi.c
index 14359c5eb19a..d93d96a953b3 100644
--- a/drivers/clk/clk-rpi.c
+++ b/drivers/clk/clk-rpi.c
@@ -96,6 +96,7 @@ static __maybe_unused struct of_device_id bcm2835_cprman_dt_ids[] = {
 	{ .compatible = "brcm,bcm2711-cprman" },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, bcm2835_cprman_dt_ids);
 
 static struct driver bcm2835_cprman_driver = {
 	.probe	= rpi_cprman_probe,
diff --git a/drivers/clk/clk-stm32f4.c b/drivers/clk/clk-stm32f4.c
index 4841d616f5c4..3ef38b361bc4 100644
--- a/drivers/clk/clk-stm32f4.c
+++ b/drivers/clk/clk-stm32f4.c
@@ -1621,6 +1621,7 @@ static const struct of_device_id stm32f4_of_match[] = {
 	},
 	{}
 };
+MODULE_DEVICE_TABLE(of, stm32f4_of_match);
 
 static struct clk_hw *stm32_register_aux_clk(const char *name,
 		const char * const *parent_names, int num_parents,
diff --git a/drivers/clk/clk-stm32mp1.c b/drivers/clk/clk-stm32mp1.c
index c3f6ceebe367..9ea4c0b83041 100644
--- a/drivers/clk/clk-stm32mp1.c
+++ b/drivers/clk/clk-stm32mp1.c
@@ -2067,6 +2067,7 @@ static const struct of_device_id stm32mp1_match_data[] = {
 	},
 	{ }
 };
+MODULE_DEVICE_TABLE(of, stm32mp1_match_data);
 
 static int stm32_register_hw_clk(struct device *dev,
 				 struct clk_hw_onecell_data *clk_data,
diff --git a/drivers/clk/imx/clk-imx1.c b/drivers/clk/imx/clk-imx1.c
index e44f71ffcc6e..3b97fbcc6d5f 100644
--- a/drivers/clk/imx/clk-imx1.c
+++ b/drivers/clk/imx/clk-imx1.c
@@ -95,6 +95,7 @@ static __maybe_unused struct of_device_id imx1_ccm_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, imx1_ccm_dt_ids);
 
 static struct driver imx1_ccm_driver = {
 	.probe	= imx1_ccm_probe,
diff --git a/drivers/clk/imx/clk-imx21.c b/drivers/clk/imx/clk-imx21.c
index bdbd1c79831e..6f2386e7d2e3 100644
--- a/drivers/clk/imx/clk-imx21.c
+++ b/drivers/clk/imx/clk-imx21.c
@@ -169,6 +169,7 @@ static __maybe_unused struct of_device_id imx21_ccm_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, imx21_ccm_dt_ids);
 
 static struct driver imx21_ccm_driver = {
 	.probe	= imx21_ccm_probe,
diff --git a/drivers/clk/imx/clk-imx25.c b/drivers/clk/imx/clk-imx25.c
index d0ab4008d0fb..cbaca348e259 100644
--- a/drivers/clk/imx/clk-imx25.c
+++ b/drivers/clk/imx/clk-imx25.c
@@ -183,6 +183,7 @@ static __maybe_unused struct of_device_id imx25_ccm_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, imx25_ccm_dt_ids);
 
 static struct driver imx25_ccm_driver = {
 	.probe	= imx25_ccm_probe,
diff --git a/drivers/clk/imx/clk-imx27.c b/drivers/clk/imx/clk-imx27.c
index 1489fd1be713..083d87fb341f 100644
--- a/drivers/clk/imx/clk-imx27.c
+++ b/drivers/clk/imx/clk-imx27.c
@@ -257,6 +257,7 @@ static __maybe_unused struct of_device_id imx27_ccm_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, imx27_ccm_dt_ids);
 
 static struct driver imx27_ccm_driver = {
 	.probe	= imx27_ccm_probe,
diff --git a/drivers/clk/imx/clk-imx31.c b/drivers/clk/imx/clk-imx31.c
index 349e4d20b40c..47189f781469 100644
--- a/drivers/clk/imx/clk-imx31.c
+++ b/drivers/clk/imx/clk-imx31.c
@@ -138,6 +138,7 @@ static __maybe_unused struct of_device_id imx31_ccm_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, imx31_ccm_dt_ids);
 
 static struct driver imx31_ccm_driver = {
 	.probe	= imx31_ccm_probe,
diff --git a/drivers/clk/imx/clk-imx35.c b/drivers/clk/imx/clk-imx35.c
index cd67d67b163a..7ea823c6c984 100644
--- a/drivers/clk/imx/clk-imx35.c
+++ b/drivers/clk/imx/clk-imx35.c
@@ -201,6 +201,7 @@ static __maybe_unused struct of_device_id imx35_ccm_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, imx35_ccm_dt_ids);
 
 static struct driver imx35_ccm_driver = {
 	.probe	= imx35_ccm_probe,
diff --git a/drivers/clk/imx/clk-imx5.c b/drivers/clk/imx/clk-imx5.c
index b6cb645ac130..b78611b0d491 100644
--- a/drivers/clk/imx/clk-imx5.c
+++ b/drivers/clk/imx/clk-imx5.c
@@ -342,6 +342,7 @@ static __maybe_unused struct of_device_id imx50_ccm_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, imx50_ccm_dt_ids);
 
 static __maybe_unused struct driver imx50_ccm_driver = {
 	.probe	= imx50_ccm_probe,
@@ -431,6 +432,7 @@ static __maybe_unused struct of_device_id imx51_ccm_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, imx51_ccm_dt_ids);
 
 static __maybe_unused struct driver imx51_ccm_driver = {
 	.probe	= imx51_ccm_probe,
@@ -529,6 +531,7 @@ static __maybe_unused struct of_device_id imx53_ccm_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, imx53_ccm_dt_ids);
 
 static __maybe_unused struct driver imx53_ccm_driver = {
 	.probe	= imx53_ccm_probe,
diff --git a/drivers/clk/imx/clk-imx6.c b/drivers/clk/imx/clk-imx6.c
index f03696fbbcb8..bac0c73d21c4 100644
--- a/drivers/clk/imx/clk-imx6.c
+++ b/drivers/clk/imx/clk-imx6.c
@@ -849,6 +849,7 @@ static __maybe_unused struct of_device_id imx6_ccm_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, imx6_ccm_dt_ids);
 
 static struct driver imx6_ccm_driver = {
 	.probe	= imx6_ccm_probe,
diff --git a/drivers/clk/imx/clk-imx6sl.c b/drivers/clk/imx/clk-imx6sl.c
index 7159ffb8d9ae..93edf24c1d1e 100644
--- a/drivers/clk/imx/clk-imx6sl.c
+++ b/drivers/clk/imx/clk-imx6sl.c
@@ -308,6 +308,7 @@ static __maybe_unused struct of_device_id imx6sl_ccm_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, imx6sl_ccm_dt_ids);
 
 static struct driver imx6sl_ccm_driver = {
 	.probe	= imx6sl_ccm_probe,
diff --git a/drivers/clk/imx/clk-imx6sx.c b/drivers/clk/imx/clk-imx6sx.c
index 21b40a73a27f..bebe1ed685f2 100644
--- a/drivers/clk/imx/clk-imx6sx.c
+++ b/drivers/clk/imx/clk-imx6sx.c
@@ -462,6 +462,7 @@ static __maybe_unused struct of_device_id imx6sx_ccm_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, imx6sx_ccm_dt_ids);
 
 static struct driver imx6sx_ccm_driver = {
 	.probe	= imx6sx_ccm_probe,
diff --git a/drivers/clk/imx/clk-imx6ul.c b/drivers/clk/imx/clk-imx6ul.c
index f3ee60794d85..e60267d8fbc2 100644
--- a/drivers/clk/imx/clk-imx6ul.c
+++ b/drivers/clk/imx/clk-imx6ul.c
@@ -461,6 +461,7 @@ static __maybe_unused struct of_device_id imx6_ccm_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, imx6_ccm_dt_ids);
 
 static struct driver imx6_ccm_driver = {
 	.probe	= imx6_ccm_probe,
diff --git a/drivers/clk/imx/clk-imx7.c b/drivers/clk/imx/clk-imx7.c
index 0b8e96b87de4..224471a98271 100644
--- a/drivers/clk/imx/clk-imx7.c
+++ b/drivers/clk/imx/clk-imx7.c
@@ -872,6 +872,7 @@ static __maybe_unused struct of_device_id imx7_ccm_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, imx7_ccm_dt_ids);
 
 static struct driver imx7_ccm_driver = {
 	.probe	= imx7_ccm_probe,
diff --git a/drivers/clk/loongson/clk-ls1b200.c b/drivers/clk/loongson/clk-ls1b200.c
index 57413e85b79d..4e6aa94d5284 100644
--- a/drivers/clk/loongson/clk-ls1b200.c
+++ b/drivers/clk/loongson/clk-ls1b200.c
@@ -141,6 +141,7 @@ static __maybe_unused struct of_device_id ls1b200_clk_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, ls1b200_clk_dt_ids);
 
 static struct driver ls1b200_clk_driver = {
 	.probe	= ls1b200_clk_probe,
diff --git a/drivers/clk/mvebu/common.c b/drivers/clk/mvebu/common.c
index 27139abb1290..4ed2193e581e 100644
--- a/drivers/clk/mvebu/common.c
+++ b/drivers/clk/mvebu/common.c
@@ -38,6 +38,7 @@ static struct of_device_id mvebu_coreclk_ids[] = {
 	  .data = &mv88f6180_coreclks },
 	{ }
 };
+MODULE_DEVICE_TABLE(of, mvebu_coreclk_ids);
 
 static int mvebu_coreclk_probe(struct device *dev)
 {
@@ -147,6 +148,7 @@ static struct of_device_id mvebu_clk_gating_ids[] = {
 	  .data = &kirkwood_gating_desc },
 	{ }
 };
+MODULE_DEVICE_TABLE(of, mvebu_clk_gating_ids);
 
 static int mvebu_clk_gating_probe(struct device *dev)
 {
diff --git a/drivers/clk/mvebu/corediv.c b/drivers/clk/mvebu/corediv.c
index afd04c3c02f0..7ca53faca45d 100644
--- a/drivers/clk/mvebu/corediv.c
+++ b/drivers/clk/mvebu/corediv.c
@@ -193,6 +193,7 @@ static struct of_device_id mvebu_corediv_clk_ids[] = {
 	  .data = &armada370_corediv_soc },
 	{ }
 };
+MODULE_DEVICE_TABLE(of, mvebu_corediv_clk_ids);
 
 static int mvebu_corediv_clk_probe(struct device *dev)
 {
diff --git a/drivers/clk/mxs/clk-imx23.c b/drivers/clk/mxs/clk-imx23.c
index aa342f3d1bee..d931adda38b4 100644
--- a/drivers/clk/mxs/clk-imx23.c
+++ b/drivers/clk/mxs/clk-imx23.c
@@ -134,6 +134,7 @@ static __maybe_unused struct of_device_id imx23_ccm_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, imx23_ccm_dt_ids);
 
 static struct driver imx23_ccm_driver = {
 	.probe	= imx23_ccm_probe,
diff --git a/drivers/clk/mxs/clk-imx28.c b/drivers/clk/mxs/clk-imx28.c
index 190c997403d1..c2faddb6f4bc 100644
--- a/drivers/clk/mxs/clk-imx28.c
+++ b/drivers/clk/mxs/clk-imx28.c
@@ -197,6 +197,7 @@ static __maybe_unused struct of_device_id imx28_ccm_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, imx28_ccm_dt_ids);
 
 static struct driver imx28_ccm_driver = {
 	.probe	= imx28_ccm_probe,
diff --git a/drivers/clk/rockchip/clk-rk3399.c b/drivers/clk/rockchip/clk-rk3399.c
index 020e4edae0ab..d6c2a04711d4 100644
--- a/drivers/clk/rockchip/clk-rk3399.c
+++ b/drivers/clk/rockchip/clk-rk3399.c
@@ -1626,6 +1626,7 @@ static const struct of_device_id clk_rk3399_match_table[] = {
 	},
 	{ }
 };
+MODULE_DEVICE_TABLE(of, clk_rk3399_match_table);
 
 static int __init clk_rk3399_probe(struct device *dev)
 {
diff --git a/drivers/clk/rockchip/clk-rk3568.c b/drivers/clk/rockchip/clk-rk3568.c
index d8c039ffd8cd..d07d7aef5d8d 100644
--- a/drivers/clk/rockchip/clk-rk3568.c
+++ b/drivers/clk/rockchip/clk-rk3568.c
@@ -1718,6 +1718,7 @@ static const struct of_device_id clk_rk3568_match_table[] = {
 	},
 	{ }
 };
+MODULE_DEVICE_TABLE(of, clk_rk3568_match_table);
 
 static int __init clk_rk3568_probe(struct device *dev)
 {
diff --git a/drivers/clk/rockchip/clk-rk3588.c b/drivers/clk/rockchip/clk-rk3588.c
index 2d31a7f7d544..8b5c68debe8d 100644
--- a/drivers/clk/rockchip/clk-rk3588.c
+++ b/drivers/clk/rockchip/clk-rk3588.c
@@ -2507,6 +2507,7 @@ static const struct of_device_id clk_rk3588_match_table[] = {
 	},
 	{ }
 };
+MODULE_DEVICE_TABLE(of, clk_rk3588_match_table);
 
 static int __init clk_rk3588_probe(struct device *dev)
 {
diff --git a/drivers/clk/sifive/sifive-prci.c b/drivers/clk/sifive/sifive-prci.c
index ebf7693895db..349629d82aa9 100644
--- a/drivers/clk/sifive/sifive-prci.c
+++ b/drivers/clk/sifive/sifive-prci.c
@@ -576,6 +576,7 @@ static const struct of_device_id sifive_prci_of_match[] = {
 	{.compatible = "sifive,fu740-c000-prci", .data = &prci_clk_fu740},
 	{}
 };
+MODULE_DEVICE_TABLE(of, sifive_prci_of_match);
 
 static struct driver sifive_prci_driver = {
 	.name = "sifive-clk-prci",
diff --git a/drivers/clk/socfpga/clk.c b/drivers/clk/socfpga/clk.c
index 943c09ff1499..35de843291b2 100644
--- a/drivers/clk/socfpga/clk.c
+++ b/drivers/clk/socfpga/clk.c
@@ -424,6 +424,7 @@ static __maybe_unused struct of_device_id socfpga_ccm_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, socfpga_ccm_dt_ids);
 
 static struct driver socfpga_ccm_driver = {
 	.probe	= socfpga_ccm_probe,
diff --git a/drivers/clk/starfive/jh7100-clkgen.c b/drivers/clk/starfive/jh7100-clkgen.c
index dc90844ce522..c93b23d44851 100644
--- a/drivers/clk/starfive/jh7100-clkgen.c
+++ b/drivers/clk/starfive/jh7100-clkgen.c
@@ -354,6 +354,7 @@ static __maybe_unused struct of_device_id starfive_clkgen_clk_dt_ids[] = {
 	{ .compatible = "starfive,jh7100-clkgen" },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, starfive_clkgen_clk_dt_ids);
 
 static struct driver starfive_clkgen_clk_driver = {
 	.probe	= starfive_clkgen_clk_probe,
diff --git a/drivers/clk/tegra/clk-tegra124.c b/drivers/clk/tegra/clk-tegra124.c
index bad81108293c..6c4ec06b2835 100644
--- a/drivers/clk/tegra/clk-tegra124.c
+++ b/drivers/clk/tegra/clk-tegra124.c
@@ -361,6 +361,7 @@ static __maybe_unused struct of_device_id tegra124_car_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, tegra124_car_dt_ids);
 
 static struct driver tegra124_car_driver = {
 	.probe	= tegra124_car_probe,
diff --git a/drivers/clk/tegra/clk-tegra20.c b/drivers/clk/tegra/clk-tegra20.c
index 319c7bc7c1b3..77ba62c1324d 100644
--- a/drivers/clk/tegra/clk-tegra20.c
+++ b/drivers/clk/tegra/clk-tegra20.c
@@ -364,6 +364,7 @@ static __maybe_unused struct of_device_id tegra20_car_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, tegra20_car_dt_ids);
 
 static struct driver tegra20_car_driver = {
 	.probe	= tegra20_car_probe,
diff --git a/drivers/clk/tegra/clk-tegra30.c b/drivers/clk/tegra/clk-tegra30.c
index 0cecc19b6639..69cc118ff9fa 100644
--- a/drivers/clk/tegra/clk-tegra30.c
+++ b/drivers/clk/tegra/clk-tegra30.c
@@ -392,6 +392,7 @@ static __maybe_unused struct of_device_id tegra30_car_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, tegra30_car_dt_ids);
 
 static struct driver tegra30_car_driver = {
 	.probe	= tegra30_car_probe,
diff --git a/drivers/clk/zynq/clkc.c b/drivers/clk/zynq/clkc.c
index 8e4beda29546..1219e25f7a58 100644
--- a/drivers/clk/zynq/clkc.c
+++ b/drivers/clk/zynq/clkc.c
@@ -483,6 +483,7 @@ static __maybe_unused struct of_device_id zynq_clock_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, zynq_clock_dt_ids);
 
 static struct driver zynq_clock_driver = {
 	.probe  = zynq_clock_probe,
diff --git a/drivers/clk/zynqmp/clkc.c b/drivers/clk/zynqmp/clkc.c
index 9dd58a2db3d5..35eaf6f18e6f 100644
--- a/drivers/clk/zynqmp/clkc.c
+++ b/drivers/clk/zynqmp/clkc.c
@@ -573,6 +573,7 @@ static struct of_device_id zynqmp_clock_of_match[] = {
 	{.compatible = "xlnx,zynqmp-clk"},
 	{},
 };
+MODULE_DEVICE_TABLE(of, zynqmp_clock_of_match);
 
 static struct driver zynqmp_clock_driver = {
 	.probe	= zynqmp_clock_probe,
diff --git a/drivers/clocksource/arm_architected_timer.c b/drivers/clocksource/arm_architected_timer.c
index 17398ca1e9ff..9a1f2d2b79e9 100644
--- a/drivers/clocksource/arm_architected_timer.c
+++ b/drivers/clocksource/arm_architected_timer.c
@@ -34,6 +34,7 @@ static struct of_device_id arm_arch_timer_dt_ids[] = {
 	{ .compatible = "arm,armv8-timer", },
 	{ }
 };
+MODULE_DEVICE_TABLE(of, arm_arch_timer_dt_ids);
 
 static struct driver arm_arch_timer_driver = {
 	.name = "arm-architected-timer",
diff --git a/drivers/clocksource/arm_global_timer.c b/drivers/clocksource/arm_global_timer.c
index cf3dec502c52..969985f24e89 100644
--- a/drivers/clocksource/arm_global_timer.c
+++ b/drivers/clocksource/arm_global_timer.c
@@ -103,6 +103,7 @@ static struct of_device_id arm_global_timer_dt_ids[] = {
 	{ .compatible = "arm,cortex-a9-global-timer", },
 	{ }
 };
+MODULE_DEVICE_TABLE(of, arm_global_timer_dt_ids);
 
 static struct driver arm_global_timer_driver = {
 	.name = "arm-global-timer",
diff --git a/drivers/clocksource/arm_smp_twd.c b/drivers/clocksource/arm_smp_twd.c
index eb0ec9a2bc18..e677acf13639 100644
--- a/drivers/clocksource/arm_smp_twd.c
+++ b/drivers/clocksource/arm_smp_twd.c
@@ -98,6 +98,7 @@ static __maybe_unused struct of_device_id smp_twd_compatible[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, smp_twd_compatible);
 
 static struct driver smp_twd_driver = {
 	.name = "smp_twd",
diff --git a/drivers/clocksource/armv7m_systick.c b/drivers/clocksource/armv7m_systick.c
index 33ac426878ba..eee028d12a6e 100644
--- a/drivers/clocksource/armv7m_systick.c
+++ b/drivers/clocksource/armv7m_systick.c
@@ -79,6 +79,7 @@ static struct of_device_id armv7m_systick_dt_ids[] = {
 	{ .compatible = "arm,armv7m-systick", },
 	{ }
 };
+MODULE_DEVICE_TABLE(of, armv7m_systick_dt_ids);
 
 static struct driver armv7m_systick_driver = {
 	.name = "armv7m-systick-timer",
diff --git a/drivers/clocksource/bcm2835.c b/drivers/clocksource/bcm2835.c
index 5e4d7db59e24..73f4e8f41156 100644
--- a/drivers/clocksource/bcm2835.c
+++ b/drivers/clocksource/bcm2835.c
@@ -80,6 +80,7 @@ static __maybe_unused struct of_device_id bcm2835_cs_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, bcm2835_cs_dt_ids);
 
 static struct driver bcm2835_cs_driver = {
 	.name = "bcm2835-cs",
diff --git a/drivers/clocksource/clps711x.c b/drivers/clocksource/clps711x.c
index 90ee554f9a2c..f8bdc06ea8fe 100644
--- a/drivers/clocksource/clps711x.c
+++ b/drivers/clocksource/clps711x.c
@@ -55,6 +55,7 @@ static const struct of_device_id __maybe_unused clps711x_timer_dt_ids[] = {
 	{ .compatible = "cirrus,ep7209-timer", },
 	{ }
 };
+MODULE_DEVICE_TABLE(of, clps711x_timer_dt_ids);
 
 static struct driver clps711x_cs_driver = {
 	.name = "clps711x-cs",
diff --git a/drivers/clocksource/digic.c b/drivers/clocksource/digic.c
index b2c142f9cbfc..38c4bd7dd29e 100644
--- a/drivers/clocksource/digic.c
+++ b/drivers/clocksource/digic.c
@@ -73,6 +73,7 @@ static __maybe_unused struct of_device_id digic_timer_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, digic_timer_dt_ids);
 
 static struct driver digic_timer_driver = {
 	.probe	= digic_timer_probe,
diff --git a/drivers/clocksource/dw_apb_timer.c b/drivers/clocksource/dw_apb_timer.c
index 5c2cbbd40bac..3826c7490d24 100644
--- a/drivers/clocksource/dw_apb_timer.c
+++ b/drivers/clocksource/dw_apb_timer.c
@@ -135,6 +135,7 @@ static struct of_device_id dw_apb_timer_dt_ids[] = {
 	{ .compatible = "snps,dw-apb-timer", },
 	{ }
 };
+MODULE_DEVICE_TABLE(of, dw_apb_timer_dt_ids);
 
 static struct driver dw_apb_timer_driver = {
 	.name = "dw-apb-timer",
diff --git a/drivers/clocksource/kvx_timer.c b/drivers/clocksource/kvx_timer.c
index 4d3f1c68b1fa..eaa8f63b1e22 100644
--- a/drivers/clocksource/kvx_timer.c
+++ b/drivers/clocksource/kvx_timer.c
@@ -49,6 +49,7 @@ static struct of_device_id kvx_timer_dt_ids[] = {
 	{ .compatible = "kalray,kvx-core-timer", },
 	{ }
 };
+MODULE_DEVICE_TABLE(of, kvx_timer_dt_ids);
 
 static struct driver kvx_timer_driver = {
 	.name = "kvx-timer",
diff --git a/drivers/clocksource/mvebu.c b/drivers/clocksource/mvebu.c
index 0fc78260d5cf..6a1c3d58de04 100644
--- a/drivers/clocksource/mvebu.c
+++ b/drivers/clocksource/mvebu.c
@@ -89,6 +89,7 @@ static struct of_device_id mvebu_timer_dt_ids[] = {
 	{ .compatible = "marvell,armada-xp-timer", },
 	{ }
 };
+MODULE_DEVICE_TABLE(of, mvebu_timer_dt_ids);
 
 static struct driver mvebu_timer_driver = {
 	.name = "mvebu-timer",
diff --git a/drivers/clocksource/orion.c b/drivers/clocksource/orion.c
index a28fbc686ed6..caa314e8840a 100644
--- a/drivers/clocksource/orion.c
+++ b/drivers/clocksource/orion.c
@@ -63,6 +63,7 @@ static struct of_device_id orion_timer_dt_ids[] = {
 	{ .compatible = "marvell,orion-timer", },
 	{ }
 };
+MODULE_DEVICE_TABLE(of, orion_timer_dt_ids);
 
 static struct driver orion_timer_driver = {
 	.name = "orion-timer",
diff --git a/drivers/clocksource/rk_timer.c b/drivers/clocksource/rk_timer.c
index af5d48670db1..eb6c886af0f1 100644
--- a/drivers/clocksource/rk_timer.c
+++ b/drivers/clocksource/rk_timer.c
@@ -68,6 +68,7 @@ static __maybe_unused struct of_device_id rktimer_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, rktimer_dt_ids);
 
 static struct driver rktimer_driver = {
 	.name = "rockchip-timer",
diff --git a/drivers/clocksource/timer-atmel-pit.c b/drivers/clocksource/timer-atmel-pit.c
index 63244faad049..9d2ff32c48ba 100644
--- a/drivers/clocksource/timer-atmel-pit.c
+++ b/drivers/clocksource/timer-atmel-pit.c
@@ -96,6 +96,7 @@ const static __maybe_unused struct of_device_id at91_pit_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, at91_pit_dt_ids);
 
 static struct driver at91_pit_driver = {
 	.name = "at91-pit",
diff --git a/drivers/clocksource/timer-clint.c b/drivers/clocksource/timer-clint.c
index 7b9fbc56d053..f264eb4cee19 100644
--- a/drivers/clocksource/timer-clint.c
+++ b/drivers/clocksource/timer-clint.c
@@ -85,6 +85,7 @@ static struct of_device_id timer_clint_dt_ids[] = {
 	{ .compatible = "sifive,clint0" },
 	{ /* sentinel */ },
 };
+MODULE_DEVICE_TABLE(of, timer_clint_dt_ids);
 
 static struct driver clint_timer_driver = {
 	.name = "clint-timer",
diff --git a/drivers/clocksource/timer-imx-gpt.c b/drivers/clocksource/timer-imx-gpt.c
index fe46b21a5dc0..6cf60ed3fc28 100644
--- a/drivers/clocksource/timer-imx-gpt.c
+++ b/drivers/clocksource/timer-imx-gpt.c
@@ -153,6 +153,7 @@ static __maybe_unused struct of_device_id imx_gpt_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, imx_gpt_dt_ids);
 
 static struct platform_device_id imx_gpt_ids[] = {
 	{
diff --git a/drivers/clocksource/timer-stm32.c b/drivers/clocksource/timer-stm32.c
index 7e5f57fbb62f..d653beb0eb3b 100644
--- a/drivers/clocksource/timer-stm32.c
+++ b/drivers/clocksource/timer-stm32.c
@@ -113,6 +113,7 @@ static struct of_device_id stm32_timer_dt_ids[] = {
 	{ .compatible = "st,stm32-timer" },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, stm32_timer_dt_ids);
 
 static struct driver stm32_timer_driver = {
 	.name = "stm32-timer",
diff --git a/drivers/clocksource/timer-ti-32k.c b/drivers/clocksource/timer-ti-32k.c
index 2b3ef4360a77..188008206641 100644
--- a/drivers/clocksource/timer-ti-32k.c
+++ b/drivers/clocksource/timer-ti-32k.c
@@ -84,6 +84,7 @@ static __maybe_unused struct of_device_id omap_32ktimer_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, omap_32ktimer_dt_ids);
 
 static struct driver omap_32ktimer_driver = {
 	.name = "omap-32ktimer",
diff --git a/drivers/clocksource/timer-ti-dm.c b/drivers/clocksource/timer-ti-dm.c
index 88bc61dbbf0c..8473cf733d93 100644
--- a/drivers/clocksource/timer-ti-dm.c
+++ b/drivers/clocksource/timer-ti-dm.c
@@ -96,6 +96,7 @@ static __maybe_unused struct of_device_id omap_dmtimer_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, omap_dmtimer_dt_ids);
 
 static struct driver omap_dmtimer_driver = {
 	.name = "omap-dmtimer",
diff --git a/drivers/clocksource/uemd.c b/drivers/clocksource/uemd.c
index b7fbad3bf56e..283fb6d4aa47 100644
--- a/drivers/clocksource/uemd.c
+++ b/drivers/clocksource/uemd.c
@@ -108,6 +108,7 @@ static __maybe_unused struct of_device_id uemd_timer_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, uemd_timer_dt_ids);
 
 static struct driver uemd_timer_driver = {
 	.probe	= uemd_timer_probe,
diff --git a/drivers/crypto/caam/ctrl.c b/drivers/crypto/caam/ctrl.c
index 2e44f60c7f86..24a01ca0943e 100644
--- a/drivers/crypto/caam/ctrl.c
+++ b/drivers/crypto/caam/ctrl.c
@@ -695,6 +695,7 @@ static __maybe_unused struct of_device_id caam_match[] = {
 	},
 	{},
 };
+MODULE_DEVICE_TABLE(of, caam_match);
 
 static struct driver caam_driver = {
 	.name	= "caam",
diff --git a/drivers/crypto/imx-scc/scc.c b/drivers/crypto/imx-scc/scc.c
index d97d802e01d3..afd7ebe9cb2e 100644
--- a/drivers/crypto/imx-scc/scc.c
+++ b/drivers/crypto/imx-scc/scc.c
@@ -486,6 +486,7 @@ static __maybe_unused struct of_device_id imx_scc_dt_ids[] = {
 	{ .compatible = "fsl,imx25-scc", },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, imx_scc_dt_ids);
 
 static struct driver imx_scc_driver = {
 	.name		= "mxc-scc",
diff --git a/drivers/dma/apbh_dma.c b/drivers/dma/apbh_dma.c
index e4e52deec5dd..2f19033aaf71 100644
--- a/drivers/dma/apbh_dma.c
+++ b/drivers/dma/apbh_dma.c
@@ -208,6 +208,7 @@ static __maybe_unused struct of_device_id apbh_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, apbh_dt_ids);
 
 static struct driver apbh_dma_driver = {
 	.name  = "dma-apbh",
diff --git a/drivers/eeprom/at25.c b/drivers/eeprom/at25.c
index 738a2b7379d7..ca1df8212279 100644
--- a/drivers/eeprom/at25.c
+++ b/drivers/eeprom/at25.c
@@ -372,6 +372,7 @@ static __maybe_unused struct of_device_id at25_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, at25_dt_ids);
 
 static struct driver at25_driver = {
 	.name  = DRIVERNAME,
diff --git a/drivers/firmware/altera_serial.c b/drivers/firmware/altera_serial.c
index 99ec3fe3503c..4fe4ec462f2f 100644
--- a/drivers/firmware/altera_serial.c
+++ b/drivers/firmware/altera_serial.c
@@ -391,6 +391,7 @@ static struct of_device_id altera_spi_id_table[] = {
 	{ .compatible = "altr,fpga-arria10-passive-serial", .data = &a10_data },
 	{ }
 };
+MODULE_DEVICE_TABLE(of, altera_spi_id_table);
 
 static struct driver altera_spi_driver = {
 	.name = "altera-fpga",
diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
index ecbd24698014..dcd15528f394 100644
--- a/drivers/firmware/arm_scmi/driver.c
+++ b/drivers/firmware/arm_scmi/driver.c
@@ -1246,6 +1246,7 @@ static const struct of_device_id scmi_of_match[] = {
 #endif
 	{ /* Sentinel */ },
 };
+MODULE_DEVICE_TABLE(of, scmi_of_match);
 
 static struct driver arm_scmi_driver = {
 	.name = "arm-scmi",
diff --git a/drivers/firmware/qemu_fw_cfg.c b/drivers/firmware/qemu_fw_cfg.c
index 661fe5fe3e4e..4c7d90815be2 100644
--- a/drivers/firmware/qemu_fw_cfg.c
+++ b/drivers/firmware/qemu_fw_cfg.c
@@ -287,6 +287,7 @@ static const struct of_device_id qemu_fw_cfg_of_match[] = {
 	{ .compatible = "qemu,fw-cfg-mmio", },
 	{ /* sentinel */ },
 };
+MODULE_DEVICE_TABLE(of, qemu_fw_cfg_of_match);
 
 static struct driver_d qemu_fw_cfg_drv = {
 	.name = "fw_cfg",
diff --git a/drivers/firmware/socfpga.c b/drivers/firmware/socfpga.c
index 4655559c7a35..419bd279458f 100644
--- a/drivers/firmware/socfpga.c
+++ b/drivers/firmware/socfpga.c
@@ -459,6 +459,7 @@ static struct of_device_id socfpga_fpgamgr_id_table[] = {
 	},
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, socfpga_fpgamgr_id_table);
 
 static struct driver socfpga_fpgamgr_driver = {
 	.name = "socfpa-fpgamgr",
diff --git a/drivers/firmware/zynqmp-fpga.c b/drivers/firmware/zynqmp-fpga.c
index fe3a7df6d30f..9c160e909886 100644
--- a/drivers/firmware/zynqmp-fpga.c
+++ b/drivers/firmware/zynqmp-fpga.c
@@ -406,6 +406,7 @@ static struct of_device_id zynqmpp_fpga_id_table[] = {
 	},
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, zynqmpp_fpga_id_table);
 
 static struct driver zynqmp_fpga_driver = {
 	.name = "zynqmp_fpga_manager",
diff --git a/drivers/fpga/socfpga-fpga2sdram-bridge.c b/drivers/fpga/socfpga-fpga2sdram-bridge.c
index a5b683efdd84..202dfaa82b5e 100644
--- a/drivers/fpga/socfpga-fpga2sdram-bridge.c
+++ b/drivers/fpga/socfpga-fpga2sdram-bridge.c
@@ -95,6 +95,7 @@ static struct of_device_id altera_fpga_of_match[] = {
 	{ .compatible = "altr,socfpga-fpga2sdram-bridge" },
 	{},
 };
+MODULE_DEVICE_TABLE(of, altera_fpga_of_match);
 
 static int alt_fpga_bridge_probe(struct device *dev)
 {
diff --git a/drivers/fpga/socfpga-hps2fpga-bridge.c b/drivers/fpga/socfpga-hps2fpga-bridge.c
index b8847c46f575..4855dbcf4dfa 100644
--- a/drivers/fpga/socfpga-hps2fpga-bridge.c
+++ b/drivers/fpga/socfpga-hps2fpga-bridge.c
@@ -112,6 +112,7 @@ static struct of_device_id altera_fpga_of_match[] = {
 	  .data = &fpga2hps_data },
 	{ /* sentinel */ },
 };
+MODULE_DEVICE_TABLE(of, altera_fpga_of_match);
 
 static int alt_fpga_bridge_probe(struct device *dev)
 {
diff --git a/drivers/gpio/gpio-74xx-mmio.c b/drivers/gpio/gpio-74xx-mmio.c
index fe039a138fde..513d071c792c 100644
--- a/drivers/gpio/gpio-74xx-mmio.c
+++ b/drivers/gpio/gpio-74xx-mmio.c
@@ -81,6 +81,7 @@ static const struct of_device_id mmio_74xx_gpio_ids[] = {
 	},
 	{ }
 };
+MODULE_DEVICE_TABLE(of, mmio_74xx_gpio_ids);
 
 static inline
 struct mmio_74xx_gpio_priv *to_mmio_74xx_gpio_priv(struct gpio_chip *gc)
diff --git a/drivers/gpio/gpio-ath79.c b/drivers/gpio/gpio-ath79.c
index 57fcae2dffd1..b32e9552ce14 100644
--- a/drivers/gpio/gpio-ath79.c
+++ b/drivers/gpio/gpio-ath79.c
@@ -102,6 +102,7 @@ static const struct of_device_id ath79_gpio_of_match[] = {
 	{ .compatible = "qca,ar7100-gpio" },
 	{},
 };
+MODULE_DEVICE_TABLE(of, ath79_gpio_of_match);
 
 static int ath79_gpio_probe(struct device *dev)
 {
diff --git a/drivers/gpio/gpio-clps711x.c b/drivers/gpio/gpio-clps711x.c
index a2968483f598..a59bdd212a9c 100644
--- a/drivers/gpio/gpio-clps711x.c
+++ b/drivers/gpio/gpio-clps711x.c
@@ -63,6 +63,7 @@ static const struct of_device_id __maybe_unused clps711x_gpio_dt_ids[] = {
 	{ .compatible = "cirrus,ep7209-gpio", },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, clps711x_gpio_dt_ids);
 
 static struct driver clps711x_gpio_driver = {
 	.name		= "clps711x-gpio",
diff --git a/drivers/gpio/gpio-davinci.c b/drivers/gpio/gpio-davinci.c
index 53a17fdc2650..6a839fb5cd6f 100644
--- a/drivers/gpio/gpio-davinci.c
+++ b/drivers/gpio/gpio-davinci.c
@@ -192,6 +192,7 @@ static struct of_device_id davinci_gpio_ids[] = {
 	{ .compatible = "ti,dm6441-gpio", },
 	{ /* sentinel */ },
 };
+MODULE_DEVICE_TABLE(of, davinci_gpio_ids);
 
 static struct driver davinci_gpio_driver = {
 	.name		= "davinci_gpio",
diff --git a/drivers/gpio/gpio-digic.c b/drivers/gpio/gpio-digic.c
index 19b1d65c22e4..7e2db85efe61 100644
--- a/drivers/gpio/gpio-digic.c
+++ b/drivers/gpio/gpio-digic.c
@@ -156,6 +156,7 @@ static __maybe_unused struct of_device_id digic_gpio_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, digic_gpio_dt_ids);
 
 static struct driver digic_gpio_driver = {
 	.name = "digic-gpio",
diff --git a/drivers/gpio/gpio-dw.c b/drivers/gpio/gpio-dw.c
index cd5f81ba7899..e6eba6b423f5 100644
--- a/drivers/gpio/gpio-dw.c
+++ b/drivers/gpio/gpio-dw.c
@@ -176,6 +176,7 @@ static __maybe_unused struct of_device_id dwgpio_match[] = {
 		/* sentinel */
 	},
 };
+MODULE_DEVICE_TABLE(of, dwgpio_match);
 
 static struct driver dwgpio_driver = {
 	.name = "dw-apb-gpio",
diff --git a/drivers/gpio/gpio-generic.c b/drivers/gpio/gpio-generic.c
index a20230da7251..1902c8396094 100644
--- a/drivers/gpio/gpio-generic.c
+++ b/drivers/gpio/gpio-generic.c
@@ -600,6 +600,7 @@ static const struct of_device_id bgpio_of_match[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, bgpio_of_match);
 
 static struct driver bgpio_driver = {
 	.name		= "basic-mmio-gpio",
diff --git a/drivers/gpio/gpio-imx.c b/drivers/gpio/gpio-imx.c
index d648dfca15b7..49c5555b9859 100644
--- a/drivers/gpio/gpio-imx.c
+++ b/drivers/gpio/gpio-imx.c
@@ -184,6 +184,7 @@ static __maybe_unused struct of_device_id imx_gpio_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, imx_gpio_dt_ids);
 
 static struct platform_device_id imx_gpio_ids[] = {
 	{
diff --git a/drivers/gpio/gpio-jz4740.c b/drivers/gpio/gpio-jz4740.c
index f38249ba92dd..911f9f24704f 100644
--- a/drivers/gpio/gpio-jz4740.c
+++ b/drivers/gpio/gpio-jz4740.c
@@ -119,6 +119,7 @@ static __maybe_unused struct of_device_id jz4740_gpio_dt_ids[] = {
 		/* sentinel */
 	},
 };
+MODULE_DEVICE_TABLE(of, jz4740_gpio_dt_ids);
 
 static struct driver jz4740_gpio_driver = {
 	.name = "jz4740-gpio",
diff --git a/drivers/gpio/gpio-latch.c b/drivers/gpio/gpio-latch.c
index dc9fe6a730ec..9a1a87250e75 100644
--- a/drivers/gpio/gpio-latch.c
+++ b/drivers/gpio/gpio-latch.c
@@ -182,6 +182,7 @@ static const struct of_device_id gpio_latch_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, gpio_latch_ids);
 
 static struct driver gpio_latch_driver = {
 	.name = "gpio-latch",
diff --git a/drivers/gpio/gpio-libftdi1.c b/drivers/gpio/gpio-libftdi1.c
index 6495e614a5fd..b7c94b573dbf 100644
--- a/drivers/gpio/gpio-libftdi1.c
+++ b/drivers/gpio/gpio-libftdi1.c
@@ -112,6 +112,7 @@ static __maybe_unused const struct of_device_id libftdi1_gpio_dt_ids[] = {
 		/* sentinel */
 	},
 };
+MODULE_DEVICE_TABLE(of, libftdi1_gpio_dt_ids);
 
 static void libftdi1_gpio_remove(struct device *dev)
 {
diff --git a/drivers/gpio/gpio-malta-fpga-i2c.c b/drivers/gpio/gpio-malta-fpga-i2c.c
index 7dfe4f1e71da..d0e454015c47 100644
--- a/drivers/gpio/gpio-malta-fpga-i2c.c
+++ b/drivers/gpio/gpio-malta-fpga-i2c.c
@@ -159,6 +159,7 @@ static __maybe_unused struct of_device_id malta_i2c_gpio_dt_ids[] = {
 		/* sentinel */
 	},
 };
+MODULE_DEVICE_TABLE(of, malta_i2c_gpio_dt_ids);
 
 static struct driver malta_i2c_gpio_driver = {
 	.name  = "malta-fpga-i2c-gpio",
diff --git a/drivers/gpio/gpio-mpc8xxx.c b/drivers/gpio/gpio-mpc8xxx.c
index 327ead679df4..bf855958a349 100644
--- a/drivers/gpio/gpio-mpc8xxx.c
+++ b/drivers/gpio/gpio-mpc8xxx.c
@@ -107,6 +107,7 @@ static __maybe_unused struct of_device_id mpc8xxx_gpio_ids[] = {
 		/* sentinel */
 	},
 };
+MODULE_DEVICE_TABLE(of, mpc8xxx_gpio_ids);
 
 static struct driver mpc8xxx_driver = {
 	.name		= "mpc8xxx-gpio",
diff --git a/drivers/gpio/gpio-mxs.c b/drivers/gpio/gpio-mxs.c
index 7909cbd1d597..770acb61c858 100644
--- a/drivers/gpio/gpio-mxs.c
+++ b/drivers/gpio/gpio-mxs.c
@@ -150,6 +150,7 @@ static __maybe_unused struct of_device_id mxs_gpio_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, mxs_gpio_dt_ids);
 
 static struct platform_device_id mxs_gpio_ids[] = {
 	{
diff --git a/drivers/gpio/gpio-omap.c b/drivers/gpio/gpio-omap.c
index 02ac9619199b..3fcb7387e30c 100644
--- a/drivers/gpio/gpio-omap.c
+++ b/drivers/gpio/gpio-omap.c
@@ -161,6 +161,7 @@ static __maybe_unused struct of_device_id omap_gpio_dt_ids[] = {
 	}, {
 	}
 };
+MODULE_DEVICE_TABLE(of, omap_gpio_dt_ids);
 
 static struct driver omap_gpio_driver = {
 	.name = "omap-gpio",
diff --git a/drivers/gpio/gpio-orion.c b/drivers/gpio/gpio-orion.c
index 6acc50e3b09b..0a1b50069b98 100644
--- a/drivers/gpio/gpio-orion.c
+++ b/drivers/gpio/gpio-orion.c
@@ -113,6 +113,7 @@ static struct of_device_id orion_gpio_dt_ids[] = {
 	{ .compatible = "marvell,orion-gpio", },
 	{ }
 };
+MODULE_DEVICE_TABLE(of, orion_gpio_dt_ids);
 
 static struct driver orion_gpio_driver = {
 	.name = "orion-gpio",
diff --git a/drivers/gpio/gpio-pca953x.c b/drivers/gpio/gpio-pca953x.c
index bfcfcfb56c85..2736efce95ad 100644
--- a/drivers/gpio/gpio-pca953x.c
+++ b/drivers/gpio/gpio-pca953x.c
@@ -534,6 +534,7 @@ static const struct of_device_id pca953x_dt_ids[] = {
 	{ .compatible = "exar,xra1202", .data = OF_953X( 8, 0), },
 	{ }
 };
+MODULE_DEVICE_TABLE(of, pca953x_dt_ids);
 
 static struct driver pca953x_driver = {
 	.name	= "pca953x",
diff --git a/drivers/gpio/gpio-pcf857x.c b/drivers/gpio/gpio-pcf857x.c
index 88d7eee35db5..52c3a6d00ac1 100644
--- a/drivers/gpio/gpio-pcf857x.c
+++ b/drivers/gpio/gpio-pcf857x.c
@@ -238,6 +238,7 @@ static const struct of_device_id pcf857x_dt_ids[] = {
 	{ .compatible = "maxim,max7329", .data = (void *)8 },
 	{ }
 };
+MODULE_DEVICE_TABLE(of, pcf857x_dt_ids);
 
 static struct driver pcf857x_driver = {
 	.name	= "pcf857x",
diff --git a/drivers/gpio/gpio-raspberrypi-exp.c b/drivers/gpio/gpio-raspberrypi-exp.c
index 3eba43a91834..a0212534894d 100644
--- a/drivers/gpio/gpio-raspberrypi-exp.c
+++ b/drivers/gpio/gpio-raspberrypi-exp.c
@@ -262,6 +262,7 @@ static __maybe_unused struct of_device_id rpi_exp_gpio_ids[] = {
 		/* sentinel */
 	},
 };
+MODULE_DEVICE_TABLE(of, rpi_exp_gpio_ids);
 
 static struct driver rpi_exp_gpio_driver = {
 	.name = "rpi-exp-gpio",
diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index b01a30c18af4..7c67512ee380 100644
--- a/drivers/gpio/gpio-rockchip.c
+++ b/drivers/gpio/gpio-rockchip.c
@@ -186,6 +186,7 @@ static struct of_device_id rockchip_gpio_dt_match[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, rockchip_gpio_dt_match);
 
 static struct driver rockchip_gpio_driver = {
 	.name = "rockchip-gpio",
diff --git a/drivers/gpio/gpio-sifive.c b/drivers/gpio/gpio-sifive.c
index de441b43f35a..58934fdfa7f4 100644
--- a/drivers/gpio/gpio-sifive.c
+++ b/drivers/gpio/gpio-sifive.c
@@ -78,6 +78,7 @@ static const struct of_device_id sifive_gpio_match[] = {
 	{ .compatible = "sifive,fu540-c000-gpio" },
 	{ },
 };
+MODULE_DEVICE_TABLE(of, sifive_gpio_match);
 
 static struct driver sifive_gpio_driver = {
 	.name		= "sifive_gpio",
diff --git a/drivers/gpio/gpio-starfive-vic.c b/drivers/gpio/gpio-starfive-vic.c
index f36e7810b50c..399219a3a099 100644
--- a/drivers/gpio/gpio-starfive-vic.c
+++ b/drivers/gpio/gpio-starfive-vic.c
@@ -164,6 +164,7 @@ static const struct of_device_id starfive_gpio_match[] = {
 	{ .compatible = "starfive,gpio0", },
 	{ },
 };
+MODULE_DEVICE_TABLE(of, starfive_gpio_match);
 
 static struct driver starfive_gpio_driver = {
 	.probe	= starfive_gpio_probe,
diff --git a/drivers/gpio/gpio-sx150x.c b/drivers/gpio/gpio-sx150x.c
index f6fa062e6c6f..320c76af060b 100644
--- a/drivers/gpio/gpio-sx150x.c
+++ b/drivers/gpio/gpio-sx150x.c
@@ -255,6 +255,7 @@ static __maybe_unused struct of_device_id sx150x_dt_ids[] = {
 	{ .compatible = "semtech,sx1503q", .data = &sx1503q_device_data, },
 	{ }
 };
+MODULE_DEVICE_TABLE(of, sx150x_dt_ids);
 
 static struct driver sx150x_driver = {
 	.name = "sx150x",
diff --git a/drivers/gpio/gpio-tegra.c b/drivers/gpio/gpio-tegra.c
index 5cf2e5e7633f..693432a8c9c6 100644
--- a/drivers/gpio/gpio-tegra.c
+++ b/drivers/gpio/gpio-tegra.c
@@ -181,6 +181,7 @@ static __maybe_unused struct of_device_id tegra_gpio_dt_ids[] = {
 		/* sentinel */
 	},
 };
+MODULE_DEVICE_TABLE(of, tegra_gpio_dt_ids);
 
 static struct driver tegra_gpio_driver = {
 	.name		= "tegra-gpio",
diff --git a/drivers/gpio/gpio-vf610.c b/drivers/gpio/gpio-vf610.c
index a597be45bb13..314dac232653 100644
--- a/drivers/gpio/gpio-vf610.c
+++ b/drivers/gpio/gpio-vf610.c
@@ -33,6 +33,7 @@ static const struct of_device_id vf610_gpio_dt_ids[] = {
 	{ .compatible = "fsl,vf610-gpio" },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, vf610_gpio_dt_ids);
 
 
 static int vf610_gpio_get_value(struct gpio_chip *chip, unsigned int gpio)
diff --git a/drivers/gpio/gpio-zynq.c b/drivers/gpio/gpio-zynq.c
index 97f976c1f109..1358182547c5 100644
--- a/drivers/gpio/gpio-zynq.c
+++ b/drivers/gpio/gpio-zynq.c
@@ -426,6 +426,7 @@ static const struct of_device_id zynq_gpio_of_match[] = {
 	{ .compatible = "xlnx,zynqmp-gpio-1.0", .data = &zynqmp_gpio_def },
 	{ /* end of table */ }
 };
+MODULE_DEVICE_TABLE(of, zynq_gpio_of_match);
 
 static struct driver zynqmp_gpio_driver = {
 	.name = "zynqmp-gpio",
diff --git a/drivers/hw_random/mxc-rngc.c b/drivers/hw_random/mxc-rngc.c
index a7538cbfa29e..39608b97aff6 100644
--- a/drivers/hw_random/mxc-rngc.c
+++ b/drivers/hw_random/mxc-rngc.c
@@ -282,6 +282,7 @@ static const struct of_device_id mxc_rngc_dt_ids[] = {
 	{ .compatible = "fsl,imx25-rngb" },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, mxc_rngc_dt_ids);
 
 static struct driver mxc_rngc_driver = {
 	.name = "mxc_rngc",
diff --git a/drivers/hw_random/starfive-vic-rng.c b/drivers/hw_random/starfive-vic-rng.c
index 4ca540a79446..329e845197cb 100644
--- a/drivers/hw_random/starfive-vic-rng.c
+++ b/drivers/hw_random/starfive-vic-rng.c
@@ -195,6 +195,7 @@ static const struct of_device_id vic_rng_dt_ids[] = {
 	{ .compatible = "starfive,vic-rng" },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, vic_rng_dt_ids);
 
 static struct driver vic_rng_driver = {
 	.name		= "vic-rng",
diff --git a/drivers/hw_random/stm32-rng.c b/drivers/hw_random/stm32-rng.c
index 0ad772b40353..03bc4a5cbf96 100644
--- a/drivers/hw_random/stm32-rng.c
+++ b/drivers/hw_random/stm32-rng.c
@@ -152,6 +152,7 @@ static const struct of_device_id stm32_rng_dt_ids[] = {
 	{ .compatible = "st,stm32-rng" },
 	{ /* sentinel */},
 };
+MODULE_DEVICE_TABLE(of, stm32_rng_dt_ids);
 
 static struct driver stm32_rng_driver = {
 	.name = "stm32-rng",
diff --git a/drivers/i2c/busses/i2c-at91.c b/drivers/i2c/busses/i2c-at91.c
index 86fa4c03b7bf..5b1f45618794 100644
--- a/drivers/i2c/busses/i2c-at91.c
+++ b/drivers/i2c/busses/i2c-at91.c
@@ -511,6 +511,7 @@ static struct of_device_id at91_twi_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, at91_twi_dt_ids);
 
 static int at91_twi_probe(struct device *dev)
 {
diff --git a/drivers/i2c/busses/i2c-bcm283x.c b/drivers/i2c/busses/i2c-bcm283x.c
index b451fb7876a0..b40918932f27 100644
--- a/drivers/i2c/busses/i2c-bcm283x.c
+++ b/drivers/i2c/busses/i2c-bcm283x.c
@@ -325,6 +325,7 @@ static struct of_device_id bcm283x_i2c_dt_ids[] = {
 	{ .compatible = "brcm,bcm2711-i2c", },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, bcm283x_i2c_dt_ids);
 
 static struct driver bcm283x_i2c_driver = {
 	.name		= "i2c-bcm283x",
diff --git a/drivers/i2c/busses/i2c-cadence.c b/drivers/i2c/busses/i2c-cadence.c
index 9f329247bf91..32d8a084e7aa 100644
--- a/drivers/i2c/busses/i2c-cadence.c
+++ b/drivers/i2c/busses/i2c-cadence.c
@@ -444,6 +444,7 @@ static const struct of_device_id cdns_i2c_match[] = {
 	{ .compatible = "cdns,i2c-r1p14" },
 	{},
 };
+MODULE_DEVICE_TABLE(of, cdns_i2c_match);
 
 static struct driver cdns_i2c_driver = {
 	.name = "cdns-i2c",
diff --git a/drivers/i2c/busses/i2c-designware.c b/drivers/i2c/busses/i2c-designware.c
index 9d94f00cb1aa..152b795c37cc 100644
--- a/drivers/i2c/busses/i2c-designware.c
+++ b/drivers/i2c/busses/i2c-designware.c
@@ -599,6 +599,7 @@ static __maybe_unused struct of_device_id i2c_dw_dt_ids[] = {
 	{ .compatible = "snps,designware-i2c", },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, i2c_dw_dt_ids);
 
 static struct driver i2c_dw_driver = {
 	.probe = i2c_dw_probe,
diff --git a/drivers/i2c/busses/i2c-gpio.c b/drivers/i2c/busses/i2c-gpio.c
index 3edf38578bd5..3649c8b189d4 100644
--- a/drivers/i2c/busses/i2c-gpio.c
+++ b/drivers/i2c/busses/i2c-gpio.c
@@ -228,6 +228,7 @@ static struct of_device_id i2c_gpio_dt_ids[] = {
 	{ .compatible = "i2c-gpio", },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, i2c_gpio_dt_ids);
 
 static struct driver i2c_gpio_driver = {
 	.name	= "i2c-gpio",
diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
index e4b04327ee5d..f6a67ec067df 100644
--- a/drivers/i2c/busses/i2c-imx.c
+++ b/drivers/i2c/busses/i2c-imx.c
@@ -650,6 +650,7 @@ static __maybe_unused struct of_device_id imx_i2c_dt_ids[] = {
 	{ .compatible = "fsl,vf610-i2c", .data = &vf610_i2c_hwdata, },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, imx_i2c_dt_ids);
 
 static struct driver i2c_fsl_driver = {
 	.probe	= i2c_fsl_probe,
diff --git a/drivers/i2c/busses/i2c-mv64xxx.c b/drivers/i2c/busses/i2c-mv64xxx.c
index abc2a7f2a2e5..44f1fd4ce64a 100644
--- a/drivers/i2c/busses/i2c-mv64xxx.c
+++ b/drivers/i2c/busses/i2c-mv64xxx.c
@@ -495,6 +495,7 @@ static struct of_device_id mv64xxx_i2c_of_match_table[] = {
 	{ .compatible = "marvell,mv78230-a0-i2c", .data = &mv64xxx_i2c_regs_mv64xxx},
 	{}
 };
+MODULE_DEVICE_TABLE(of, mv64xxx_i2c_of_match_table);
 
 static inline int
 mv64xxx_calc_freq(const int tclk, const int n, const int m)
diff --git a/drivers/i2c/busses/i2c-omap.c b/drivers/i2c/busses/i2c-omap.c
index 5cf33039ed14..023c9673bace 100644
--- a/drivers/i2c/busses/i2c-omap.c
+++ b/drivers/i2c/busses/i2c-omap.c
@@ -1219,6 +1219,7 @@ static __maybe_unused struct of_device_id omap_i2c_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, omap_i2c_dt_ids);
 
 static struct driver omap_i2c_driver = {
 	.probe		= i2c_omap_probe,
diff --git a/drivers/i2c/busses/i2c-rockchip.c b/drivers/i2c/busses/i2c-rockchip.c
index f8c876614bab..23bf4a55d722 100644
--- a/drivers/i2c/busses/i2c-rockchip.c
+++ b/drivers/i2c/busses/i2c-rockchip.c
@@ -452,6 +452,7 @@ static const struct of_device_id rk_i2c_match[] = {
 	{ .compatible = "rockchip,rk3399-i2c" },
 	{},
 };
+MODULE_DEVICE_TABLE(of, rk_i2c_match);
 
 static struct driver rk_i2c_driver = {
 	.name  = "rk3x-i2c",
diff --git a/drivers/i2c/busses/i2c-stm32.c b/drivers/i2c/busses/i2c-stm32.c
index 5b1eba791a2e..39e345e2ccb0 100644
--- a/drivers/i2c/busses/i2c-stm32.c
+++ b/drivers/i2c/busses/i2c-stm32.c
@@ -850,6 +850,7 @@ static __maybe_unused struct of_device_id stm32_i2c_dt_ids[] = {
 	{ .compatible = "st,stm32mp15-i2c", .data = &stm32f7_setup},
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, stm32_i2c_dt_ids);
 
 static struct driver stm32_i2c_driver = {
 	.probe	= stm32_i2c_probe,
diff --git a/drivers/i2c/busses/i2c-tegra.c b/drivers/i2c/busses/i2c-tegra.c
index 0f93b9ae8244..f86f64f573f3 100644
--- a/drivers/i2c/busses/i2c-tegra.c
+++ b/drivers/i2c/busses/i2c-tegra.c
@@ -683,6 +683,7 @@ static __maybe_unused struct of_device_id tegra_i2c_compatible[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, tegra_i2c_compatible);
 
 static struct driver tegra_i2c_driver = {
 	.name  = "tegra-i2c",
diff --git a/drivers/i2c/busses/i2c-versatile.c b/drivers/i2c/busses/i2c-versatile.c
index b287a799870f..f508cf150699 100644
--- a/drivers/i2c/busses/i2c-versatile.c
+++ b/drivers/i2c/busses/i2c-versatile.c
@@ -106,6 +106,7 @@ static struct of_device_id i2c_versatile_match[] = {
 	{ .compatible = "arm,versatile-i2c", },
 	{},
 };
+MODULE_DEVICE_TABLE(of, i2c_versatile_match);
 
 static struct driver i2c_versatile_driver = {
 	.name	= "versatile-i2c",
diff --git a/drivers/input/gpio_keys.c b/drivers/input/gpio_keys.c
index 43072192ac57..77013be13311 100644
--- a/drivers/input/gpio_keys.c
+++ b/drivers/input/gpio_keys.c
@@ -176,6 +176,7 @@ static struct of_device_id key_gpio_of_ids[] = {
 	{ .compatible = "gpio-keys", },
 	{ }
 };
+MODULE_DEVICE_TABLE(of, key_gpio_of_ids);
 
 static struct driver gpio_keys_driver = {
 	.name	= "gpio_keys",
diff --git a/drivers/input/imx_keypad.c b/drivers/input/imx_keypad.c
index 477c5dc9dc98..fc6b45b3cb62 100644
--- a/drivers/input/imx_keypad.c
+++ b/drivers/input/imx_keypad.c
@@ -421,6 +421,7 @@ static __maybe_unused struct of_device_id imx_keypad_dt_ids[] = {
         { .compatible = "fsl,imx21-kpp", },
         { }
 };
+MODULE_DEVICE_TABLE(of, imx_keypad_dt_ids);
 
 static struct driver imx_keypad_driver = {
 	.name   = "imx-kpp",
diff --git a/drivers/led/led-gpio.c b/drivers/led/led-gpio.c
index 670618defb37..0d405268af8d 100644
--- a/drivers/led/led-gpio.c
+++ b/drivers/led/led-gpio.c
@@ -257,6 +257,7 @@ static struct of_device_id led_gpio_of_ids[] = {
 	{ .compatible = "gpio-leds", },
 	{ }
 };
+MODULE_DEVICE_TABLE(of, led_gpio_of_ids);
 
 static struct driver led_gpio_of_driver = {
 	.name  = "gpio-leds",
diff --git a/drivers/led/led-pca955x.c b/drivers/led/led-pca955x.c
index 615437da18ff..cad4db37994b 100644
--- a/drivers/led/led-pca955x.c
+++ b/drivers/led/led-pca955x.c
@@ -325,6 +325,7 @@ static const struct of_device_id of_pca955x_match[] = {
 	{ .compatible = "nxp,pca9553", .data = &pca9553_chipdef },
 	{},
 };
+MODULE_DEVICE_TABLE(of, of_pca955x_match);
 
 static int led_pca955x_probe(struct device *dev)
 {
diff --git a/drivers/led/led-pwm.c b/drivers/led/led-pwm.c
index 59cae438ca8c..2ffb72e692cd 100644
--- a/drivers/led/led-pwm.c
+++ b/drivers/led/led-pwm.c
@@ -80,6 +80,7 @@ static struct of_device_id led_pwm_of_ids[] = {
 	{ .compatible = "pwm-leds", },
 	{ }
 };
+MODULE_DEVICE_TABLE(of, led_pwm_of_ids);
 
 static struct driver led_pwm_of_driver = {
 	.name  = "pwm-leds",
diff --git a/drivers/mci/arasan-sdhci.c b/drivers/mci/arasan-sdhci.c
index 0b839ee7dc5c..71e974c384f5 100644
--- a/drivers/mci/arasan-sdhci.c
+++ b/drivers/mci/arasan-sdhci.c
@@ -278,6 +278,7 @@ static __maybe_unused struct of_device_id arasan_sdhci_compatible[] = {
 	{ .compatible = "arasan,sdhci-8.9a" },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, arasan_sdhci_compatible);
 
 static struct driver arasan_sdhci_driver = {
 	.name = "arasan-sdhci",
diff --git a/drivers/mci/atmel-sdhci.c b/drivers/mci/atmel-sdhci.c
index 2060b491a702..c124e736bb7d 100644
--- a/drivers/mci/atmel-sdhci.c
+++ b/drivers/mci/atmel-sdhci.c
@@ -162,6 +162,7 @@ static const struct of_device_id at91_sdhci_dt_match[] = {
 	{ .compatible = "microchip,sam9x60-sdhci" },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, at91_sdhci_dt_match);
 
 static struct driver at91_sdhci_driver = {
 	.name		= "sdhci-at91",
diff --git a/drivers/mci/atmel_mci.c b/drivers/mci/atmel_mci.c
index 1a8a5d4ab8e5..30738d6f00d3 100644
--- a/drivers/mci/atmel_mci.c
+++ b/drivers/mci/atmel_mci.c
@@ -193,6 +193,7 @@ static __maybe_unused struct of_device_id atmci_compatible[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, atmci_compatible);
 
 static struct driver atmci_driver = {
 	.name	= "atmel_mci",
diff --git a/drivers/mci/bcm2835-sdhost.c b/drivers/mci/bcm2835-sdhost.c
index c11a68aa5af8..2b1336a7d315 100644
--- a/drivers/mci/bcm2835-sdhost.c
+++ b/drivers/mci/bcm2835-sdhost.c
@@ -619,6 +619,7 @@ static __maybe_unused struct of_device_id bcm2835_sdhost_compatible[] = {
 	{ .compatible = "brcm,bcm2835-sdhost" },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, bcm2835_sdhost_compatible);
 
 static struct driver bcm2835_sdhost_driver = {
 	.name  = "bcm2835-sdhost",
diff --git a/drivers/mci/dove-sdhci.c b/drivers/mci/dove-sdhci.c
index 11a9771de8fa..9e6da6a81be1 100644
--- a/drivers/mci/dove-sdhci.c
+++ b/drivers/mci/dove-sdhci.c
@@ -300,6 +300,7 @@ static struct of_device_id dove_sdhci_dt_ids[] = {
 	{ .compatible = "marvell,dove-sdhci", },
 	{ }
 };
+MODULE_DEVICE_TABLE(of, dove_sdhci_dt_ids);
 
 static struct driver dove_sdhci_driver = {
 	.name = "dove-sdhci",
diff --git a/drivers/mci/dw_mmc.c b/drivers/mci/dw_mmc.c
index 73a8ebbc152e..c49e839c943e 100644
--- a/drivers/mci/dw_mmc.c
+++ b/drivers/mci/dw_mmc.c
@@ -648,6 +648,7 @@ static __maybe_unused struct of_device_id dw_mmc_compatible[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, dw_mmc_compatible);
 
 static struct driver dw_mmc_driver = {
 	.name  = "dw_mmc",
diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 94f18fe2b3cf..f30a791fa4b1 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -395,6 +395,7 @@ static __maybe_unused struct of_device_id fsl_esdhc_compatible[] = {
 	{ .compatible = "fsl,ls1046a-esdhc",.data = &esdhc_ls_data  },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, fsl_esdhc_compatible);
 
 static struct platform_device_id imx_esdhc_ids[] = {
 	{
diff --git a/drivers/mci/imx.c b/drivers/mci/imx.c
index b1c1fd9407cb..48a33783357b 100644
--- a/drivers/mci/imx.c
+++ b/drivers/mci/imx.c
@@ -527,6 +527,7 @@ static __maybe_unused struct of_device_id mxcmci_compatible[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, mxcmci_compatible);
 
 static struct driver mxcmci_driver = {
         .name  = DRIVER_NAME,
diff --git a/drivers/mci/mci-bcm2835.c b/drivers/mci/mci-bcm2835.c
index 477a3b83a0e3..92f4498ea514 100644
--- a/drivers/mci/mci-bcm2835.c
+++ b/drivers/mci/mci-bcm2835.c
@@ -429,6 +429,7 @@ static __maybe_unused struct of_device_id bcm2835_mci_compatible[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, bcm2835_mci_compatible);
 
 static struct driver bcm2835_mci_driver = {
 	.name = "bcm2835_mci",
diff --git a/drivers/mci/mci_spi.c b/drivers/mci/mci_spi.c
index 2d72c2148b4a..593ec5c47c14 100644
--- a/drivers/mci/mci_spi.c
+++ b/drivers/mci/mci_spi.c
@@ -450,6 +450,7 @@ static __maybe_unused struct of_device_id spi_mci_compatible[] = {
 	{ .compatible = "mmc-spi-slot" },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, spi_mci_compatible);
 
 static struct driver spi_mci_driver = {
 	.name	= "spi_mci",
diff --git a/drivers/mci/mxs.c b/drivers/mci/mxs.c
index 7c19032230f8..6883b78d5c62 100644
--- a/drivers/mci/mxs.c
+++ b/drivers/mci/mxs.c
@@ -597,6 +597,7 @@ static __maybe_unused struct of_device_id mxs_mmc_compatible[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, mxs_mmc_compatible);
 
 static struct driver mxs_mci_driver = {
         .name  = "mxs_mci",
diff --git a/drivers/mci/omap_hsmmc.c b/drivers/mci/omap_hsmmc.c
index 0052d89525b0..41d5a62f3247 100644
--- a/drivers/mci/omap_hsmmc.c
+++ b/drivers/mci/omap_hsmmc.c
@@ -647,6 +647,7 @@ static __maybe_unused struct of_device_id omap_mmc_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, omap_mmc_dt_ids);
 
 static struct driver omap_mmc_driver = {
 	.name  = "omap-hsmmc",
diff --git a/drivers/mci/rockchip-dwcmshc-sdhci.c b/drivers/mci/rockchip-dwcmshc-sdhci.c
index c44f5731caad..41edeb158b02 100644
--- a/drivers/mci/rockchip-dwcmshc-sdhci.c
+++ b/drivers/mci/rockchip-dwcmshc-sdhci.c
@@ -361,6 +361,7 @@ static __maybe_unused struct of_device_id rk_sdhci_compatible[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, rk_sdhci_compatible);
 
 static struct driver rk_sdhci_driver = {
 	.name = "rk3568-dwcmshc-sdhci",
diff --git a/drivers/mci/tegra-sdmmc.c b/drivers/mci/tegra-sdmmc.c
index 1359663a73ac..f8ce6c8d7ba0 100644
--- a/drivers/mci/tegra-sdmmc.c
+++ b/drivers/mci/tegra-sdmmc.c
@@ -451,6 +451,7 @@ static __maybe_unused struct of_device_id tegra_sdmmc_compatible[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, tegra_sdmmc_compatible);
 
 static struct driver tegra_sdmmc_driver = {
 	.name  = "tegra-sdmmc",
diff --git a/drivers/memory/atmel-ebi.c b/drivers/memory/atmel-ebi.c
index cbb4f4cfe77d..6b2796fda570 100644
--- a/drivers/memory/atmel-ebi.c
+++ b/drivers/memory/atmel-ebi.c
@@ -496,6 +496,7 @@ static const struct of_device_id atmel_ebi_id_table[] = {
 	},
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, atmel_ebi_id_table);
 
 static int atmel_ebi_probe(struct device *dev)
 {
diff --git a/drivers/memory/mc-tegra124.c b/drivers/memory/mc-tegra124.c
index bb4d29cac889..e527ed4f9a7b 100644
--- a/drivers/memory/mc-tegra124.c
+++ b/drivers/memory/mc-tegra124.c
@@ -50,6 +50,7 @@ static __maybe_unused struct of_device_id tegra124_mc_dt_ids[] = {
 		/* sentinel */
 	},
 };
+MODULE_DEVICE_TABLE(of, tegra124_mc_dt_ids);
 
 static struct driver tegra124_mc_driver = {
 	.name		= "tegra124-mc",
diff --git a/drivers/mfd/atmel-flexcom.c b/drivers/mfd/atmel-flexcom.c
index 8649431ca139..58e94c4889e5 100644
--- a/drivers/mfd/atmel-flexcom.c
+++ b/drivers/mfd/atmel-flexcom.c
@@ -64,6 +64,7 @@ static const struct of_device_id atmel_flexcom_of_match[] = {
 	{ .compatible = "atmel,sama5d2-flexcom" },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, atmel_flexcom_of_match);
 
 static struct driver atmel_flexcom_driver = {
 	.probe		= atmel_flexcom_probe,
diff --git a/drivers/mfd/atmel-smc.c b/drivers/mfd/atmel-smc.c
index ed24ef650f5b..0eafbc06cd56 100644
--- a/drivers/mfd/atmel-smc.c
+++ b/drivers/mfd/atmel-smc.c
@@ -330,6 +330,7 @@ static const struct of_device_id atmel_smc_ids[] = {
 	{ .compatible = "atmel,sama5d2-smc", .data = &sama5d2_reg_layout },
 	{ /* sentinel */ },
 };
+MODULE_DEVICE_TABLE(of, atmel_smc_ids);
 
 /**
  * atmel_hsmc_get_reg_layout - retrieve the layout of HSMC registers
diff --git a/drivers/mfd/axp20x-i2c.c b/drivers/mfd/axp20x-i2c.c
index 1087b99bab1e..578f7bfcf2a4 100644
--- a/drivers/mfd/axp20x-i2c.c
+++ b/drivers/mfd/axp20x-i2c.c
@@ -58,6 +58,7 @@ static const struct of_device_id axp20x_i2c_of_match[] = {
 	{ .compatible = "x-powers,axp806", .data = (void *)AXP806_ID },
 	{ },
 };
+MODULE_DEVICE_TABLE(of, axp20x_i2c_of_match);
 
 static struct driver axp20x_i2c_driver = {
 	.name		= "axp20x-i2c",
diff --git a/drivers/mfd/da9053.c b/drivers/mfd/da9053.c
index 435b18334677..cbfb62cef9cd 100644
--- a/drivers/mfd/da9053.c
+++ b/drivers/mfd/da9053.c
@@ -288,6 +288,7 @@ static __maybe_unused struct of_device_id da9053_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, da9053_dt_ids);
 
 static struct driver da9053_driver = {
 	.name  = DRIVERNAME,
diff --git a/drivers/mfd/da9063.c b/drivers/mfd/da9063.c
index 30fc559f8091..04bcad88040c 100644
--- a/drivers/mfd/da9063.c
+++ b/drivers/mfd/da9063.c
@@ -426,6 +426,7 @@ static struct of_device_id const	da906x_dt_ids[] = {
 	}, {
 	}
 };
+MODULE_DEVICE_TABLE(of, da906x_dt_ids);
 
 static struct driver da9063_driver = {
 	.name = "da9063",
diff --git a/drivers/mfd/mc13xxx.c b/drivers/mfd/mc13xxx.c
index 6fc4ea73ea0c..eadb845f6cb9 100644
--- a/drivers/mfd/mc13xxx.c
+++ b/drivers/mfd/mc13xxx.c
@@ -387,6 +387,7 @@ static __maybe_unused struct of_device_id mc13xxx_dt_ids[] = {
 	{ .compatible = "fsl,mc34708", .data = &mc34708_devtype, },
 	{ }
 };
+MODULE_DEVICE_TABLE(of, mc13xxx_dt_ids);
 
 static __maybe_unused struct driver mc13xxx_i2c_driver = {
 	.name		= "mc13xxx-i2c",
diff --git a/drivers/mfd/mc34704.c b/drivers/mfd/mc34704.c
index a03a967e4e84..7a893ef8b7ff 100644
--- a/drivers/mfd/mc34704.c
+++ b/drivers/mfd/mc34704.c
@@ -114,6 +114,7 @@ static __maybe_unused struct of_device_id mc34704_dt_ids[] = {
 	{ .compatible = "fsl,mc34704", },
 	{ }
 };
+MODULE_DEVICE_TABLE(of, mc34704_dt_ids);
 
 static struct driver mc34704_driver = {
 	.name  = DRIVERNAME,
diff --git a/drivers/mfd/rave-sp.c b/drivers/mfd/rave-sp.c
index b12653a5f914..c7968b75f5eb 100644
--- a/drivers/mfd/rave-sp.c
+++ b/drivers/mfd/rave-sp.c
@@ -731,6 +731,7 @@ static const struct of_device_id __maybe_unused rave_sp_dt_ids[] = {
 	{ .compatible = "zii,rave-sp-rdu2", .data = &rave_sp_rdu2   },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, rave_sp_dt_ids);
 
 static int rave_sp_req_ip_addr(struct param_d *p, void *context)
 {
diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
index d16721b87fd1..738ba305ac39 100644
--- a/drivers/mfd/rk808.c
+++ b/drivers/mfd/rk808.c
@@ -380,6 +380,7 @@ static const struct of_device_id rk808_of_match[] = {
 	{ .compatible = "rockchip,rk818" },
 	{ },
 };
+MODULE_DEVICE_TABLE(of, rk808_of_match);
 
 static struct driver rk808_i2c_driver = {
 	.name = "rk808",
diff --git a/drivers/mfd/rn5t568.c b/drivers/mfd/rn5t568.c
index 2fdcdec99ec0..f649df944bf2 100644
--- a/drivers/mfd/rn5t568.c
+++ b/drivers/mfd/rn5t568.c
@@ -156,6 +156,7 @@ static __maybe_unused const struct of_device_id rn5t568_of_match[] = {
 	{ .compatible = "ricoh,rn5t568", .data = NULL, },
 	{ }
 };
+MODULE_DEVICE_TABLE(of, rn5t568_of_match);
 
 static struct driver rn5t568_i2c_driver = {
 	.name		= "rn5t568-i2c",
diff --git a/drivers/mfd/stm32-timers.c b/drivers/mfd/stm32-timers.c
index d079afa6674d..a7e9f53dbfbd 100644
--- a/drivers/mfd/stm32-timers.c
+++ b/drivers/mfd/stm32-timers.c
@@ -65,6 +65,7 @@ static const struct of_device_id stm32_timers_of_match[] = {
 	{ .compatible = "st,stm32-timers", },
 	{ /* sentinel */ },
 };
+MODULE_DEVICE_TABLE(of, stm32_timers_of_match);
 
 static struct driver stm32_timers_driver = {
 	.name = "stm32-timers",
diff --git a/drivers/mfd/stpmic1.c b/drivers/mfd/stpmic1.c
index f878ff70153e..56ab68256639 100644
--- a/drivers/mfd/stpmic1.c
+++ b/drivers/mfd/stpmic1.c
@@ -46,6 +46,7 @@ static __maybe_unused struct of_device_id stpmic1_dt_ids[] = {
 	{ .compatible = "st,stpmic1" },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, stpmic1_dt_ids);
 
 static struct driver stpmic1_i2c_driver = {
 	.name		= "stpmic1-i2c",
diff --git a/drivers/misc/sram.c b/drivers/misc/sram.c
index e4492c65aa09..2ebd82436ebb 100644
--- a/drivers/misc/sram.c
+++ b/drivers/misc/sram.c
@@ -53,6 +53,7 @@ static __maybe_unused struct of_device_id sram_dt_ids[] = {
 	}, {
 	},
 };
+MODULE_DEVICE_TABLE(of, sram_dt_ids);
 
 static struct driver sram_driver = {
 	.name = "mmio-sram",
diff --git a/drivers/misc/starfive-pwrseq.c b/drivers/misc/starfive-pwrseq.c
index 45f3b1c9ff39..794a67c40ec2 100644
--- a/drivers/misc/starfive-pwrseq.c
+++ b/drivers/misc/starfive-pwrseq.c
@@ -36,6 +36,7 @@ static struct of_device_id starfive_pwrseq_dt_ids[] = {
 	{ .compatible = "starfive,spi2ahb" },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, starfive_pwrseq_dt_ids);
 
 static struct driver starfive_pwrseq_driver = {
 	.name	= "starfive_pwrseq",
diff --git a/drivers/misc/state.c b/drivers/misc/state.c
index 9c332339f52f..05b02aa91d7f 100644
--- a/drivers/misc/state.c
+++ b/drivers/misc/state.c
@@ -44,6 +44,7 @@ static __maybe_unused struct of_device_id state_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, state_ids);
 
 static struct driver state_driver = {
 	.name = "state",
diff --git a/drivers/misc/storage-by-uuid.c b/drivers/misc/storage-by-uuid.c
index a7a66a1421a3..5548f477a4c8 100644
--- a/drivers/misc/storage-by-uuid.c
+++ b/drivers/misc/storage-by-uuid.c
@@ -189,6 +189,7 @@ static struct of_device_id storage_by_uuid_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, storage_by_uuid_dt_ids);
 
 static struct driver storage_by_uuid_driver = {
 	.name		= "storage-by-uuid",
diff --git a/drivers/misc/ubootvar.c b/drivers/misc/ubootvar.c
index 92830f91c573..127fdac77971 100644
--- a/drivers/misc/ubootvar.c
+++ b/drivers/misc/ubootvar.c
@@ -350,6 +350,7 @@ static struct of_device_id ubootenv_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, ubootenv_dt_ids);
 
 static struct driver ubootenv_driver = {
 	.name		= "uboot-environment",
diff --git a/drivers/mtd/devices/m25p80.c b/drivers/mtd/devices/m25p80.c
index ce3789c096d0..f4db8c402a78 100644
--- a/drivers/mtd/devices/m25p80.c
+++ b/drivers/mtd/devices/m25p80.c
@@ -274,6 +274,7 @@ static __maybe_unused struct of_device_id m25p80_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, m25p80_dt_ids);
 
 static struct driver m25p80_driver = {
 	.name	= "m25p80",
diff --git a/drivers/mtd/devices/mtd_dataflash.c b/drivers/mtd/devices/mtd_dataflash.c
index b5dbe4de3e21..80d16dec10c7 100644
--- a/drivers/mtd/devices/mtd_dataflash.c
+++ b/drivers/mtd/devices/mtd_dataflash.c
@@ -895,6 +895,7 @@ static __maybe_unused struct of_device_id dataflash_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, dataflash_dt_ids);
 
 static struct driver dataflash_driver = {
 	.name  = "mtd_dataflash",
diff --git a/drivers/mtd/devices/mtdram.c b/drivers/mtd/devices/mtdram.c
index a8417f923fe2..33c221e3a188 100644
--- a/drivers/mtd/devices/mtdram.c
+++ b/drivers/mtd/devices/mtdram.c
@@ -106,6 +106,7 @@ static __maybe_unused struct of_device_id mtdram_dt_ids[] = {
 		/*  sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, mtdram_dt_ids);
 
 static struct driver mtdram_driver = {
 	.name	= "mtdram",
diff --git a/drivers/mtd/nand/atmel/pmecc.c b/drivers/mtd/nand/atmel/pmecc.c
index 50e29d59de3f..1b89607a336b 100644
--- a/drivers/mtd/nand/atmel/pmecc.c
+++ b/drivers/mtd/nand/atmel/pmecc.c
@@ -905,6 +905,7 @@ static const struct of_device_id __maybe_unused atmel_pmecc_legacy_match[] = {
 	{ .compatible = "atmel,sama5d2-nand", &sama5d2_caps },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, atmel_pmecc_legacy_match);
 
 struct atmel_pmecc *dev_atmel_pmecc_get(struct device *userdev)
 {
diff --git a/drivers/mtd/nand/nand_denali_dt.c b/drivers/mtd/nand/nand_denali_dt.c
index 44dd596d9e87..9ccf09f83b30 100644
--- a/drivers/mtd/nand/nand_denali_dt.c
+++ b/drivers/mtd/nand/nand_denali_dt.c
@@ -211,6 +211,7 @@ static __maybe_unused struct of_device_id denali_nand_compatible[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, denali_nand_compatible);
 
 static struct driver denali_dt_driver = {
 	.name	= "denali-nand-dt",
diff --git a/drivers/mtd/nand/nand_fsl_ifc.c b/drivers/mtd/nand/nand_fsl_ifc.c
index 8eef77e93c2f..3b14b4ae150e 100644
--- a/drivers/mtd/nand/nand_fsl_ifc.c
+++ b/drivers/mtd/nand/nand_fsl_ifc.c
@@ -1025,6 +1025,7 @@ static __maybe_unused struct of_device_id fsl_nand_compatible[] = {
 	}, {
 	}
 };
+MODULE_DEVICE_TABLE(of, fsl_nand_compatible);
 
 static struct driver fsl_ifc_driver = {
 	.name = "fsl_nand",
diff --git a/drivers/mtd/nand/nand_imx.c b/drivers/mtd/nand/nand_imx.c
index 39cb2787f4c2..23b9c52e0f76 100644
--- a/drivers/mtd/nand/nand_imx.c
+++ b/drivers/mtd/nand/nand_imx.c
@@ -1480,6 +1480,7 @@ static __maybe_unused struct of_device_id imx_nand_compatible[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, imx_nand_compatible);
 
 static struct driver imx_nand_driver = {
 	.name  = "imx_nand",
diff --git a/drivers/mtd/nand/nand_mrvl_nfc.c b/drivers/mtd/nand/nand_mrvl_nfc.c
index 285743165604..27ca4456c860 100644
--- a/drivers/mtd/nand/nand_mrvl_nfc.c
+++ b/drivers/mtd/nand/nand_mrvl_nfc.c
@@ -299,6 +299,7 @@ static struct of_device_id mrvl_nand_dt_ids[] = {
 	},
 	{}
 };
+MODULE_DEVICE_TABLE(of, mrvl_nand_dt_ids);
 
 /* convert nano-seconds to nand flash controller clock cycles */
 static int ns2cycle(int ns, unsigned long clk_rate)
diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
index 17099f7db21e..c2a7d036d682 100644
--- a/drivers/mtd/nand/nand_mxs.c
+++ b/drivers/mtd/nand/nand_mxs.c
@@ -2306,6 +2306,7 @@ static __maybe_unused struct of_device_id gpmi_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, gpmi_dt_ids);
 
 static struct driver mxs_nand_driver = {
 	.name  = "mxs_nand",
diff --git a/drivers/mtd/nand/nand_orion.c b/drivers/mtd/nand/nand_orion.c
index 085f80541cbd..ff3642939ab3 100644
--- a/drivers/mtd/nand/nand_orion.c
+++ b/drivers/mtd/nand/nand_orion.c
@@ -147,6 +147,7 @@ static __maybe_unused struct of_device_id orion_nand_compatible[] = {
 	{ .compatible = "marvell,orion-nand", },
 	{},
 };
+MODULE_DEVICE_TABLE(of, orion_nand_compatible);
 
 static struct driver orion_nand_driver = {
 	.name  = "orion_nand",
diff --git a/drivers/mtd/nand/omap_elm.c b/drivers/mtd/nand/omap_elm.c
index f6f4a0b115d2..da731e44f38e 100644
--- a/drivers/mtd/nand/omap_elm.c
+++ b/drivers/mtd/nand/omap_elm.c
@@ -404,6 +404,7 @@ static struct of_device_id elm_compatible[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, elm_compatible);
 
 static struct driver omap_elm_driver = {
 	.name = "omap-elm",
diff --git a/drivers/mtd/nor/cfi_flash.c b/drivers/mtd/nor/cfi_flash.c
index f1555a72a42e..ac46575004a5 100644
--- a/drivers/mtd/nor/cfi_flash.c
+++ b/drivers/mtd/nor/cfi_flash.c
@@ -1049,6 +1049,7 @@ static __maybe_unused struct of_device_id cfi_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, cfi_dt_ids);
 
 static struct driver cfi_driver = {
 	.name    = "cfi_flash",
diff --git a/drivers/mtd/spi-nor/cadence-quadspi.c b/drivers/mtd/spi-nor/cadence-quadspi.c
index 8a744d5dad25..5079127be43a 100644
--- a/drivers/mtd/spi-nor/cadence-quadspi.c
+++ b/drivers/mtd/spi-nor/cadence-quadspi.c
@@ -1244,6 +1244,7 @@ static __maybe_unused struct of_device_id cqspi_dt_ids[] = {
 	{.compatible = "cdns,qspi-nor",},
 	{ /* end of table */ }
 };
+MODULE_DEVICE_TABLE(of, cqspi_dt_ids);
 
 static struct driver cqspi_driver = {
 	.name = "cadence_qspi",
diff --git a/drivers/net/ag71xx.c b/drivers/net/ag71xx.c
index 5979d974daa4..cf00c2eb09b0 100644
--- a/drivers/net/ag71xx.c
+++ b/drivers/net/ag71xx.c
@@ -671,6 +671,7 @@ static __maybe_unused struct of_device_id ag71xx_dt_ids[] = {
 	{ .compatible = "qca,ar9344-gmac0", .data = &ag71xx_cfg_ar9344_gmac0, },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, ag71xx_dt_ids);
 
 static struct driver ag71xx_driver = {
 	.name	= "ag71xx-gmac",
diff --git a/drivers/net/arc_emac.c b/drivers/net/arc_emac.c
index 635a1086aa46..fa6e3955db30 100644
--- a/drivers/net/arc_emac.c
+++ b/drivers/net/arc_emac.c
@@ -464,6 +464,7 @@ static __maybe_unused struct of_device_id arc_emac_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, arc_emac_dt_ids);
 
 static struct driver arc_emac_driver = {
 	.name = "arc-emac",
diff --git a/drivers/net/bcmgenet.c b/drivers/net/bcmgenet.c
index 9ec6aaf1e8ee..9e0bacb31adf 100644
--- a/drivers/net/bcmgenet.c
+++ b/drivers/net/bcmgenet.c
@@ -616,6 +616,7 @@ static struct of_device_id bcmgenet_ids[] = {
                 /* sentinel */
         },
 };
+MODULE_DEVICE_TABLE(of, bcmgenet_ids);
 
 static struct driver bcmgenet_driver = {
         .name   = "brcm-genet",
diff --git a/drivers/net/cpsw.c b/drivers/net/cpsw.c
index 0449240f981b..0a9d3186ce4c 100644
--- a/drivers/net/cpsw.c
+++ b/drivers/net/cpsw.c
@@ -653,6 +653,7 @@ static __maybe_unused struct of_device_id cpsw_mdio_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, cpsw_mdio_dt_ids);
 
 static struct driver cpsw_mdio_driver = {
 	.name   = "cpsw-mdio",
@@ -1433,6 +1434,7 @@ static __maybe_unused struct of_device_id cpsw_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, cpsw_dt_ids);
 
 static struct driver cpsw_driver = {
 	.name   = "cpsw",
diff --git a/drivers/net/davinci_emac.c b/drivers/net/davinci_emac.c
index fd1cb37af4c3..04277e692433 100644
--- a/drivers/net/davinci_emac.c
+++ b/drivers/net/davinci_emac.c
@@ -602,6 +602,7 @@ static __maybe_unused struct of_device_id davinci_emac_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, davinci_emac_dt_ids);
 
 static struct driver davinci_emac_driver = {
 	.name   = "davinci_emac",
@@ -658,6 +659,7 @@ static __maybe_unused struct of_device_id davinci_mdio_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, davinci_mdio_dt_ids);
 
 static struct driver davinci_mdio_driver = {
 	.name   = "davinci_mdio",
diff --git a/drivers/net/designware_generic.c b/drivers/net/designware_generic.c
index 037bfbe7fadd..fc9f0745f71d 100644
--- a/drivers/net/designware_generic.c
+++ b/drivers/net/designware_generic.c
@@ -35,6 +35,7 @@ static __maybe_unused struct of_device_id dwc_ether_compatible[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, dwc_ether_compatible);
 
 static struct driver dwc_ether_driver = {
 	.name = "designware_eth",
diff --git a/drivers/net/designware_imx8.c b/drivers/net/designware_imx8.c
index bf32e35b8953..d81dd499ab29 100644
--- a/drivers/net/designware_imx8.c
+++ b/drivers/net/designware_imx8.c
@@ -184,6 +184,7 @@ static __maybe_unused struct of_device_id eqos_imx8_ids[] = {
 	{ .compatible = "nxp,imx8mp-dwmac-eqos"},
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, eqos_imx8_ids);
 
 static struct driver_d eqos_imx8_driver = {
 	.name = "eqos-imx8",
diff --git a/drivers/net/designware_rockchip.c b/drivers/net/designware_rockchip.c
index fbed27abc83c..04f56ce881a4 100644
--- a/drivers/net/designware_rockchip.c
+++ b/drivers/net/designware_rockchip.c
@@ -319,6 +319,7 @@ static __maybe_unused struct of_device_id rk_gmac_compatible[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, rk_gmac_compatible);
 
 static struct driver rk_gmac_driver = {
 	.name = "eqos-rockchip",
diff --git a/drivers/net/designware_socfpga.c b/drivers/net/designware_socfpga.c
index 54fbbaabaccd..a39c945c8191 100644
--- a/drivers/net/designware_socfpga.c
+++ b/drivers/net/designware_socfpga.c
@@ -261,6 +261,7 @@ static __maybe_unused struct of_device_id socfpga_dwc_ether_compatible[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, socfpga_dwc_ether_compatible);
 
 static struct driver socfpga_dwc_ether_driver = {
 	.name = "socfpga_designware_eth",
diff --git a/drivers/net/designware_starfive.c b/drivers/net/designware_starfive.c
index cace9efabc53..9ab0de8be54f 100644
--- a/drivers/net/designware_starfive.c
+++ b/drivers/net/designware_starfive.c
@@ -102,6 +102,7 @@ static struct of_device_id starfive_dwc_ether_compatible[] = {
 	{ .compatible = "starfive,stmmac", .data = &starfive_drvdata },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, starfive_dwc_ether_compatible);
 
 static struct driver starfive_dwc_ether_driver = {
 	.name = "starfive-designware_eth",
diff --git a/drivers/net/designware_stm32.c b/drivers/net/designware_stm32.c
index a4ec356ea045..ffcd4a5b7618 100644
--- a/drivers/net/designware_stm32.c
+++ b/drivers/net/designware_stm32.c
@@ -196,6 +196,7 @@ static const struct of_device_id eqos_stm32_ids[] = {
 	{ .compatible = "st,stm32mp1-dwmac" },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, eqos_stm32_ids);
 
 static struct driver eqos_stm32_driver = {
 	.name = "eqos-stm32",
diff --git a/drivers/net/designware_tegra186.c b/drivers/net/designware_tegra186.c
index 1de3b93a14b2..86f97e853e5e 100644
--- a/drivers/net/designware_tegra186.c
+++ b/drivers/net/designware_tegra186.c
@@ -308,6 +308,7 @@ static const struct of_device_id eqos_tegra186_ids[] = {
 	{ .compatible = "nvidia,tegra186-eqos" },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, eqos_tegra186_ids);
 
 static struct driver eqos_tegra186_driver = {
 	.name = "eqos-tegra186",
diff --git a/drivers/net/dm9k.c b/drivers/net/dm9k.c
index a10bf542a957..29defece4e0c 100644
--- a/drivers/net/dm9k.c
+++ b/drivers/net/dm9k.c
@@ -870,6 +870,7 @@ static struct of_device_id dm9000_of_matches[] = {
 	{ .compatible = "davicom,dm9000", },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, dm9000_of_matches);
 
 static struct driver dm9k_driver = {
 	.name  = "dm9000",
diff --git a/drivers/net/enc28j60.c b/drivers/net/enc28j60.c
index 3351227ef30b..51556ae01366 100644
--- a/drivers/net/enc28j60.c
+++ b/drivers/net/enc28j60.c
@@ -998,6 +998,7 @@ static __maybe_unused struct of_device_id enc28j60_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, enc28j60_dt_ids);
 
 static struct driver enc28j60_driver = {
 	.name = DRV_NAME,
diff --git a/drivers/net/ethoc.c b/drivers/net/ethoc.c
index 7834cad80ac3..c878f498a447 100644
--- a/drivers/net/ethoc.c
+++ b/drivers/net/ethoc.c
@@ -571,6 +571,7 @@ static struct of_device_id ethoc_dt_ids[] = {
 	{ .compatible = "opencores,ethoc", },
 	{ }
 };
+MODULE_DEVICE_TABLE(of, ethoc_dt_ids);
 
 static struct driver ethoc_driver = {
 	.name  = "ethoc",
diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index afac0d40edd6..203a2a8aa191 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -961,6 +961,7 @@ static __maybe_unused struct of_device_id imx_fec_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, imx_fec_dt_ids);
 
 static struct platform_device_id imx_fec_ids[] = {
 	{
diff --git a/drivers/net/fsl-fman.c b/drivers/net/fsl-fman.c
index 1191f7b612f4..74320387b17e 100644
--- a/drivers/net/fsl-fman.c
+++ b/drivers/net/fsl-fman.c
@@ -1241,6 +1241,7 @@ static struct of_device_id fsl_fman_mdio_dt_ids[] = {
 	}, {
 	}
 };
+MODULE_DEVICE_TABLE(of, fsl_fman_mdio_dt_ids);
 
 static struct driver fman_mdio_driver = {
 	.name   = "fsl-fman-mdio",
@@ -1258,6 +1259,7 @@ static struct of_device_id fsl_fman_port_dt_ids[] = {
 	}, {
 	}
 };
+MODULE_DEVICE_TABLE(of, fsl_fman_port_dt_ids);
 
 static struct driver fman_port_driver = {
 	.name   = "fsl-fman-port",
@@ -1271,6 +1273,7 @@ static struct of_device_id fsl_fman_memac_dt_ids[] = {
 	}, {
 	}
 };
+MODULE_DEVICE_TABLE(of, fsl_fman_memac_dt_ids);
 
 static struct driver fman_memac_driver = {
 	.name   = "fsl-fman-memac",
@@ -1285,6 +1288,7 @@ static struct of_device_id fsl_fman_muram_dt_ids[] = {
 	}, {
 	}
 };
+MODULE_DEVICE_TABLE(of, fsl_fman_muram_dt_ids);
 
 static struct driver fman_muram_driver = {
 	.name   = "fsl-fman-muram",
@@ -1329,6 +1333,7 @@ static struct of_device_id fsl_fman_dt_ids[] = {
 	}, {
 	}
 };
+MODULE_DEVICE_TABLE(of, fsl_fman_dt_ids);
 
 static struct driver fman_driver = {
 	.name   = "fsl-fman",
diff --git a/drivers/net/ksz8873.c b/drivers/net/ksz8873.c
index 1df8d6dd924a..35ef0d2da2fb 100644
--- a/drivers/net/ksz8873.c
+++ b/drivers/net/ksz8873.c
@@ -435,6 +435,7 @@ static const struct of_device_id ksz8873_dt_ids[] = {
 	{ .compatible = "microchip,ksz8873", .data = &ksz8873_dcfg },
 	{ }
 };
+MODULE_DEVICE_TABLE(of, ksz8873_dt_ids);
 
 static struct phy_driver ksz8873_driver_mdio = {
 	.drv = {
diff --git a/drivers/net/ksz9477.c b/drivers/net/ksz9477.c
index 0ca9dcc204ea..4b876055f6e8 100644
--- a/drivers/net/ksz9477.c
+++ b/drivers/net/ksz9477.c
@@ -475,6 +475,7 @@ static const struct of_device_id microchip_switch_dt_ids[] = {
 	{ .compatible = "microchip,ksz9563" },
 	{ }
 };
+MODULE_DEVICE_TABLE(of, microchip_switch_dt_ids);
 
 static struct driver microchip_switch_spi_driver = {
 	.name		= "ksz9477-spi",
diff --git a/drivers/net/liteeth.c b/drivers/net/liteeth.c
index 14d2eab831a1..1781e2634866 100644
--- a/drivers/net/liteeth.c
+++ b/drivers/net/liteeth.c
@@ -369,6 +369,7 @@ static const struct of_device_id liteeth_dt_ids[] = {
 	}, {
 	}
 };
+MODULE_DEVICE_TABLE(of, liteeth_dt_ids);
 
 static struct driver liteeth_driver = {
 	.name = DRV_NAME,
diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index 128ada7268d7..260c1e806a58 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -941,6 +941,7 @@ static const struct of_device_id macb_dt_ids[] = {
 	{ .compatible = "sifive,fu540-c000-gem", .data = &fu540_c000_config },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, macb_dt_ids);
 
 static struct driver macb_driver = {
 	.name  = "macb",
diff --git a/drivers/net/mvneta.c b/drivers/net/mvneta.c
index fc23c0c99375..ba32eeabdc7a 100644
--- a/drivers/net/mvneta.c
+++ b/drivers/net/mvneta.c
@@ -755,6 +755,7 @@ static struct of_device_id mvneta_dt_ids[] = {
 	{ .compatible = "marvell,armada-xp-neta" },
 	{ }
 };
+MODULE_DEVICE_TABLE(of, mvneta_dt_ids);
 
 static struct driver mvneta_driver = {
 	.name   = "mvneta",
diff --git a/drivers/net/orion-gbe.c b/drivers/net/orion-gbe.c
index 908e847a765d..e1b763893d77 100644
--- a/drivers/net/orion-gbe.c
+++ b/drivers/net/orion-gbe.c
@@ -538,6 +538,7 @@ static struct of_device_id orion_gbe_dt_ids[] = {
 	{ .compatible = "marvell,kirkwood-eth", },
 	{ }
 };
+MODULE_DEVICE_TABLE(of, orion_gbe_dt_ids);
 
 static struct driver orion_gbe_driver = {
 	.name   = "orion-gbe",
diff --git a/drivers/net/phy/mdio-gpio.c b/drivers/net/phy/mdio-gpio.c
index ba368b825cfc..a28fb961e47e 100644
--- a/drivers/net/phy/mdio-gpio.c
+++ b/drivers/net/phy/mdio-gpio.c
@@ -227,6 +227,7 @@ static const struct of_device_id gpio_mdio_dt_ids[] = {
 	{ .compatible = "microchip,mdio-smi0" },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, gpio_mdio_dt_ids);
 
 static struct driver mdio_gpio_driver = {
 	.name = "mdio-gpio",
diff --git a/drivers/net/phy/mdio-mux-gpio.c b/drivers/net/phy/mdio-mux-gpio.c
index 56ff6b5bc0e3..3dd04830a5d1 100644
--- a/drivers/net/phy/mdio-mux-gpio.c
+++ b/drivers/net/phy/mdio-mux-gpio.c
@@ -126,6 +126,7 @@ static const struct of_device_id mdio_mux_gpio_match[] = {
 	},
 	{},
 };
+MODULE_DEVICE_TABLE(of, mdio_mux_gpio_match);
 
 static struct driver mdio_mux_gpio_driver = {
 	.name	       = "mdio-mux-gpio",
diff --git a/drivers/net/phy/mdio-mvebu.c b/drivers/net/phy/mdio-mvebu.c
index 3528ed205ed8..cd90ddd221bf 100644
--- a/drivers/net/phy/mdio-mvebu.c
+++ b/drivers/net/phy/mdio-mvebu.c
@@ -141,6 +141,7 @@ static struct of_device_id mvebu_mdio_dt_ids[] = {
 	{ .compatible = "marvell,orion-mdio" },
 	{ }
 };
+MODULE_DEVICE_TABLE(of, mvebu_mdio_dt_ids);
 
 static struct driver mvebu_mdio_driver = {
 	.name   = "mvebu-mdio",
diff --git a/drivers/net/phy/mv88e6xxx/chip.c b/drivers/net/phy/mv88e6xxx/chip.c
index 5c1e0a524203..b9b02c52f202 100644
--- a/drivers/net/phy/mv88e6xxx/chip.c
+++ b/drivers/net/phy/mv88e6xxx/chip.c
@@ -961,6 +961,7 @@ static const struct of_device_id mv88e6xxx_of_match[] = {
 	},
 	{},
 };
+MODULE_DEVICE_TABLE(of, mv88e6xxx_of_match);
 
 static struct driver mv88e6xxx_driver = {
 	.name	       = "mv88e6085",
diff --git a/drivers/net/realtek-dsa/realtek-mdio.c b/drivers/net/realtek-dsa/realtek-mdio.c
index 579eefebe233..a869308035c4 100644
--- a/drivers/net/realtek-dsa/realtek-mdio.c
+++ b/drivers/net/realtek-dsa/realtek-mdio.c
@@ -210,6 +210,7 @@ static const struct of_device_id realtek_mdio_of_match[] = {
 	{ /* sentinel */ },
 };
 MODULE_DEVICE_TABLE(of, realtek_mdio_of_match);
+MODULE_DEVICE_TABLE(of, realtek_mdio_of_match);
 
 static struct phy_driver realtek_mdio_driver = {
 	.drv = {
diff --git a/drivers/net/realtek-dsa/realtek-smi.c b/drivers/net/realtek-dsa/realtek-smi.c
index a12cb7ffd4be..35b3d30a060e 100644
--- a/drivers/net/realtek-dsa/realtek-smi.c
+++ b/drivers/net/realtek-dsa/realtek-smi.c
@@ -489,6 +489,7 @@ static const struct of_device_id realtek_smi_of_match[] = {
 	{ /* sentinel */ },
 };
 MODULE_DEVICE_TABLE(of, realtek_smi_of_match);
+MODULE_DEVICE_TABLE(of, realtek_smi_of_match);
 
 static struct driver realtek_smi_driver = {
 	.name = "realtek-smi",
diff --git a/drivers/net/sja1105.c b/drivers/net/sja1105.c
index 328e5a6369c4..ef874ed4829d 100644
--- a/drivers/net/sja1105.c
+++ b/drivers/net/sja1105.c
@@ -2986,6 +2986,7 @@ static const struct of_device_id sja1105_ids[] = {
 	{ .compatible = "nxp,sja1110d", .data = &sja1110d_dcfg },
 	{ }
 };
+MODULE_DEVICE_TABLE(of, sja1105_ids);
 
 static struct driver sja1105_driver = {
 	.name		= "sja1105",
diff --git a/drivers/net/smc91111.c b/drivers/net/smc91111.c
index cc8f5ed362f4..4bbb2a3dee27 100644
--- a/drivers/net/smc91111.c
+++ b/drivers/net/smc91111.c
@@ -1494,6 +1494,8 @@ static __maybe_unused struct of_device_id smc91c111_dt_ids[] = {
 	},
 	{ /* sentinel */ },
 };
+MODULE_DEVICE_TABLE(of, smc91c111_dt_ids);
+MODULE_DEVICE_TABLE(of, smc91c111_dt_ids);
 
 static struct driver smc91c111_driver = {
 	.of_compatible = DRV_OF_COMPAT(smc91c111_dt_ids),
diff --git a/drivers/net/smc911x.c b/drivers/net/smc911x.c
index a0a58131ed84..767d51761b10 100644
--- a/drivers/net/smc911x.c
+++ b/drivers/net/smc911x.c
@@ -642,6 +642,7 @@ static const struct of_device_id smsc911x_dt_ids[] = {
 	{ .compatible = "smsc,lan9115", },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, smsc911x_dt_ids);
 
 static struct driver smc911x_driver = {
         .name  = "smc911x",
diff --git a/drivers/nvmem/bsec.c b/drivers/nvmem/bsec.c
index 31d975019434..c381ee0836e8 100644
--- a/drivers/nvmem/bsec.c
+++ b/drivers/nvmem/bsec.c
@@ -196,6 +196,7 @@ static __maybe_unused struct of_device_id stm32_bsec_dt_ids[] = {
 	{ .compatible = "st,stm32mp15-bsec", .data = &stm32mp15_bsec_data },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, stm32_bsec_dt_ids);
 
 static struct driver stm32_bsec_driver = {
 	.name	= "stm32_bsec",
diff --git a/drivers/nvmem/eeprom_93xx46.c b/drivers/nvmem/eeprom_93xx46.c
index b39977930cda..3180b0cb698f 100644
--- a/drivers/nvmem/eeprom_93xx46.c
+++ b/drivers/nvmem/eeprom_93xx46.c
@@ -300,6 +300,7 @@ static const struct of_device_id eeprom_93xx46_of_table[] = {
 	{ .compatible = "atmel,at93c46d", .data = &atmel_at93c46d_data, },
 	{}
 };
+MODULE_DEVICE_TABLE(of, eeprom_93xx46_of_table);
 
 static int eeprom_93xx46_probe_dt(struct spi_device *spi)
 {
diff --git a/drivers/nvmem/kvx-otp-nv.c b/drivers/nvmem/kvx-otp-nv.c
index 015fdd0ba61f..c4591f582239 100644
--- a/drivers/nvmem/kvx-otp-nv.c
+++ b/drivers/nvmem/kvx-otp-nv.c
@@ -53,6 +53,7 @@ static const struct of_device_id kvx_otp_nv_match[] = {
 	{ .compatible = "kalray,kvx-otp-nv" },
 	{ /* sentinel */},
 };
+MODULE_DEVICE_TABLE(of, kvx_otp_nv_match);
 
 static int kvx_otp_nv_probe(struct device *dev)
 {
diff --git a/drivers/nvmem/ocotp.c b/drivers/nvmem/ocotp.c
index f3bd377f844d..8ba7a8af5da5 100644
--- a/drivers/nvmem/ocotp.c
+++ b/drivers/nvmem/ocotp.c
@@ -992,6 +992,7 @@ static __maybe_unused struct of_device_id imx_ocotp_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, imx_ocotp_dt_ids);
 
 static struct driver imx_ocotp_driver = {
 	.name	= "imx_ocotp",
diff --git a/drivers/nvmem/rave-sp-eeprom.c b/drivers/nvmem/rave-sp-eeprom.c
index 80da8ade1927..aae337853cef 100644
--- a/drivers/nvmem/rave-sp-eeprom.c
+++ b/drivers/nvmem/rave-sp-eeprom.c
@@ -340,6 +340,7 @@ static __maybe_unused const struct of_device_id rave_sp_eeprom_of_match[] = {
 	{ .compatible = "zii,rave-sp-eeprom" },
 	{}
 };
+MODULE_DEVICE_TABLE(of, rave_sp_eeprom_of_match);
 
 static struct driver rave_sp_eeprom_driver = {
 	.name = "rave-sp-eeprom",
diff --git a/drivers/nvmem/rmem.c b/drivers/nvmem/rmem.c
index 069a59866619..afa0dd78c8f4 100644
--- a/drivers/nvmem/rmem.c
+++ b/drivers/nvmem/rmem.c
@@ -50,6 +50,7 @@ static const struct of_device_id rmem_match[] = {
 	{ .compatible = "nvmem-rmem", },
 	{ /* sentinel */ },
 };
+MODULE_DEVICE_TABLE(of, rmem_match);
 
 static struct driver rmem_driver = {
 	.name = "rmem",
diff --git a/drivers/nvmem/snvs_lpgpr.c b/drivers/nvmem/snvs_lpgpr.c
index 8c20ac63d188..dfbd5397d2f2 100644
--- a/drivers/nvmem/snvs_lpgpr.c
+++ b/drivers/nvmem/snvs_lpgpr.c
@@ -124,6 +124,7 @@ static __maybe_unused struct of_device_id snvs_lpgpr_dt_ids[] = {
 	{ .compatible = "fsl,imx6ul-snvs-lpgpr", .data = &snvs_lpgpr_cfg_imx6q },
 	{ },
 };
+MODULE_DEVICE_TABLE(of, snvs_lpgpr_dt_ids);
 
 static struct driver snvs_lpgpr_driver = {
 	.name	= "snvs_lpgpr",
diff --git a/drivers/nvmem/starfive-otp.c b/drivers/nvmem/starfive-otp.c
index 096c963d44e4..d672b93eddf4 100644
--- a/drivers/nvmem/starfive-otp.c
+++ b/drivers/nvmem/starfive-otp.c
@@ -192,6 +192,7 @@ static struct of_device_id starfive_otp_dt_ids[] = {
 	{ .compatible = "starfive,fu740-otp" },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, starfive_otp_dt_ids);
 
 static struct driver starfive_otp_driver = {
 	.name	= "starfive_otp",
diff --git a/drivers/of/barebox.c b/drivers/of/barebox.c
index d57626a529fd..560d9c0d15e0 100644
--- a/drivers/of/barebox.c
+++ b/drivers/of/barebox.c
@@ -80,6 +80,7 @@ static struct of_device_id environment_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, environment_dt_ids);
 
 static struct driver environment_driver = {
 	.name		= "barebox-environment",
diff --git a/drivers/of/base.c b/drivers/of/base.c
index 43a4a923d9c5..0a71c0154ffd 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2504,6 +2504,7 @@ const struct of_device_id of_default_bus_match_table[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, of_default_bus_match_table);
 
 static int of_probe_memory(void)
 {
@@ -2552,6 +2553,7 @@ static const struct of_device_id reserved_mem_matches[] = {
 	{ .compatible = "nvmem-rmem" },
 	{}
 };
+MODULE_DEVICE_TABLE(of, reserved_mem_matches);
 
 /**
  * of_probe - Probe unflattened device tree starting at of_get_root_node
diff --git a/drivers/pci/pci-ecam-generic.c b/drivers/pci/pci-ecam-generic.c
index 0cd169fbb98e..e8609bd4b03a 100644
--- a/drivers/pci/pci-ecam-generic.c
+++ b/drivers/pci/pci-ecam-generic.c
@@ -198,6 +198,7 @@ static struct of_device_id pcie_ecam_dt_ids[] = {
 	{ .compatible = "pci-host-ecam-generic" },
 	{ /* sentinel */ },
 };
+MODULE_DEVICE_TABLE(of, pcie_ecam_dt_ids);
 
 static struct driver pcie_ecam_driver = {
 	.name = "pcie-generic-ecam",
diff --git a/drivers/pci/pci-imx6.c b/drivers/pci/pci-imx6.c
index 40bcf3d89033..ac62d961d92d 100644
--- a/drivers/pci/pci-imx6.c
+++ b/drivers/pci/pci-imx6.c
@@ -874,6 +874,7 @@ static struct of_device_id imx6_pcie_of_match[] = {
 	{ .compatible = "fsl,imx8mq-pcie", .data = &drvdata[IMX8MQ], } ,
 	{},
 };
+MODULE_DEVICE_TABLE(of, imx6_pcie_of_match);
 
 static struct driver imx6_pcie_driver = {
 	.name = "imx6-pcie",
diff --git a/drivers/pci/pci-layerscape.c b/drivers/pci/pci-layerscape.c
index 73bae923eb32..168948047030 100644
--- a/drivers/pci/pci-layerscape.c
+++ b/drivers/pci/pci-layerscape.c
@@ -312,6 +312,7 @@ static const struct of_device_id ls_pcie_of_match[] = {
 	{ .compatible = "fsl,ls1088a-pcie", .data = &ls2088_drvdata },
 	{ },
 };
+MODULE_DEVICE_TABLE(of, ls_pcie_of_match);
 
 static int __init ls_add_pcie_port(struct ls_pcie *pcie)
 {
diff --git a/drivers/pci/pci-mvebu.c b/drivers/pci/pci-mvebu.c
index 50d54f8f841d..9e2c7dc6482c 100644
--- a/drivers/pci/pci-mvebu.c
+++ b/drivers/pci/pci-mvebu.c
@@ -395,6 +395,7 @@ static struct of_device_id mvebu_pcie_dt_ids[] = {
 #endif
 	{ },
 };
+MODULE_DEVICE_TABLE(of, mvebu_pcie_dt_ids);
 
 static int mvebu_pcie_probe(struct device *dev)
 {
diff --git a/drivers/pci/pci-tegra.c b/drivers/pci/pci-tegra.c
index afff5f6138e4..fba8b47ece3b 100644
--- a/drivers/pci/pci-tegra.c
+++ b/drivers/pci/pci-tegra.c
@@ -1230,6 +1230,7 @@ static __maybe_unused struct of_device_id tegra_pcie_of_match[] = {
 		/* sentinel */
 	},
 };
+MODULE_DEVICE_TABLE(of, tegra_pcie_of_match);
 
 static int tegra_pcie_probe(struct device *dev)
 {
diff --git a/drivers/pci/pcie-dw-rockchip.c b/drivers/pci/pcie-dw-rockchip.c
index e82047b3886d..def32c988e28 100644
--- a/drivers/pci/pcie-dw-rockchip.c
+++ b/drivers/pci/pcie-dw-rockchip.c
@@ -290,6 +290,7 @@ static const struct of_device_id rockchip_pcie_of_match[] = {
 	{ .compatible = "rockchip,rk3588-pcie", },
 	{},
 };
+MODULE_DEVICE_TABLE(of, rockchip_pcie_of_match);
 
 static struct driver rockchip_pcie_driver = {
         .name = "rockchip-dw-pcie",
diff --git a/drivers/phy/freescale/phy-fsl-imx8mq-usb.c b/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
index c664894cddc1..b9f9fad1fda0 100644
--- a/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
+++ b/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
@@ -141,6 +141,7 @@ static const struct of_device_id imx8mq_usb_phy_of_match[] = {
 	 .data = &imx8mp_usb_phy_ops,},
 	{ }
 };
+MODULE_DEVICE_TABLE(of, imx8mq_usb_phy_of_match);
 
 static struct phy *imx8mq_usb_phy_xlate(struct device *dev,
 					struct of_phandle_args *args)
diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
index 1f77d430a6d1..fe9f4fd32578 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
@@ -987,6 +987,7 @@ static const struct of_device_id rockchip_usb2phy_dt_match[] = {
 	{ .compatible = "rockchip,rv1108-usb2phy", .data = &rv1108_phy_cfgs },
 	{ }
 };
+MODULE_DEVICE_TABLE(of, rockchip_usb2phy_dt_match);
 
 static struct driver rockchip_usb2phy_driver = {
 	.probe		= rockchip_usb2phy_probe,
diff --git a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
index 2c0e629bab1e..5fbbe1a4e4b5 100644
--- a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
+++ b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
@@ -865,6 +865,7 @@ static const struct of_device_id rockchip_combphy_of_match[] = {
 	},
 	{ },
 };
+MODULE_DEVICE_TABLE(of, rockchip_combphy_of_match);
 
 static struct driver rockchip_combphy_driver = {
 	.probe	= rockchip_combphy_probe,
diff --git a/drivers/phy/usb-nop-xceiv.c b/drivers/phy/usb-nop-xceiv.c
index 80141f9def6c..9a0acf9e7fbb 100644
--- a/drivers/phy/usb-nop-xceiv.c
+++ b/drivers/phy/usb-nop-xceiv.c
@@ -130,6 +130,7 @@ static __maybe_unused struct of_device_id nop_usbphy_dt_ids[] = {
 		/* sentinel */
 	},
 };
+MODULE_DEVICE_TABLE(of, nop_usbphy_dt_ids);
 
 static struct driver nop_usbphy_driver = {
 	.name   = "usb-nop-xceiv",
diff --git a/drivers/pinctrl/imx-iomux-v1.c b/drivers/pinctrl/imx-iomux-v1.c
index 6fe0286a6ae6..d57c503a5d07 100644
--- a/drivers/pinctrl/imx-iomux-v1.c
+++ b/drivers/pinctrl/imx-iomux-v1.c
@@ -296,6 +296,7 @@ static __maybe_unused struct of_device_id imx_iomux_v1_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, imx_iomux_v1_dt_ids);
 
 static struct driver imx_iomux_v1_driver = {
 	.name		= "imx-iomuxv1",
diff --git a/drivers/pinctrl/imx-iomux-v2.c b/drivers/pinctrl/imx-iomux-v2.c
index cc5b8f11bcfe..4757587e378e 100644
--- a/drivers/pinctrl/imx-iomux-v2.c
+++ b/drivers/pinctrl/imx-iomux-v2.c
@@ -123,6 +123,7 @@ static __maybe_unused struct of_device_id imx_iomux_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, imx_iomux_dt_ids);
 
 static struct platform_device_id imx_iomux_ids[] = {
 	{
diff --git a/drivers/pinctrl/imx-iomux-v3.c b/drivers/pinctrl/imx-iomux-v3.c
index 7952c65a5086..025b1100ebc1 100644
--- a/drivers/pinctrl/imx-iomux-v3.c
+++ b/drivers/pinctrl/imx-iomux-v3.c
@@ -251,6 +251,7 @@ static __maybe_unused struct of_device_id imx_iomux_v3_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, imx_iomux_v3_dt_ids);
 
 static struct driver imx_iomux_v3_driver = {
 	.name		= "imx-iomuxv3",
diff --git a/drivers/pinctrl/mvebu/armada-370.c b/drivers/pinctrl/mvebu/armada-370.c
index 8c0035354fbf..116adb2a70fb 100644
--- a/drivers/pinctrl/mvebu/armada-370.c
+++ b/drivers/pinctrl/mvebu/armada-370.c
@@ -384,6 +384,7 @@ static struct of_device_id armada_370_pinctrl_of_match[] = {
 	},
 	{ },
 };
+MODULE_DEVICE_TABLE(of, armada_370_pinctrl_of_match);
 
 static int armada_370_pinctrl_probe(struct device *dev)
 {
diff --git a/drivers/pinctrl/mvebu/armada-xp.c b/drivers/pinctrl/mvebu/armada-xp.c
index c247ee59557c..3a4b0504c84b 100644
--- a/drivers/pinctrl/mvebu/armada-xp.c
+++ b/drivers/pinctrl/mvebu/armada-xp.c
@@ -366,6 +366,7 @@ static struct of_device_id armada_xp_pinctrl_of_match[] = {
 	{ .compatible = "marvell,mv78460-pinctrl", .data = (void *)V_MV78460, },
 	{ },
 };
+MODULE_DEVICE_TABLE(of, armada_xp_pinctrl_of_match);
 
 static int armada_xp_pinctrl_probe(struct device *dev)
 {
diff --git a/drivers/pinctrl/mvebu/dove.c b/drivers/pinctrl/mvebu/dove.c
index 3ec9a39a698d..964ce22ef89e 100644
--- a/drivers/pinctrl/mvebu/dove.c
+++ b/drivers/pinctrl/mvebu/dove.c
@@ -689,6 +689,7 @@ static struct of_device_id dove_pinctrl_of_match[] = {
 	},
 	{ }
 };
+MODULE_DEVICE_TABLE(of, dove_pinctrl_of_match);
 
 static int dove_pinctrl_probe(struct device *dev)
 {
diff --git a/drivers/pinctrl/mvebu/kirkwood.c b/drivers/pinctrl/mvebu/kirkwood.c
index 101ef7386872..6c9e63575ea1 100644
--- a/drivers/pinctrl/mvebu/kirkwood.c
+++ b/drivers/pinctrl/mvebu/kirkwood.c
@@ -425,6 +425,7 @@ static struct of_device_id kirkwood_pinctrl_of_match[] = {
 	},
 	{ }
 };
+MODULE_DEVICE_TABLE(of, kirkwood_pinctrl_of_match);
 
 static int kirkwood_pinctrl_probe(struct device *dev)
 {
diff --git a/drivers/pinctrl/pinctrl-at91-pio4.c b/drivers/pinctrl/pinctrl-at91-pio4.c
index c9203d604910..6251f4c604d8 100644
--- a/drivers/pinctrl/pinctrl-at91-pio4.c
+++ b/drivers/pinctrl/pinctrl-at91-pio4.c
@@ -306,6 +306,7 @@ static __maybe_unused struct of_device_id pinctrl_at91_pio4_dt_ids[] = {
 	{ .compatible = "atmel,sama5d2-pinctrl", .data = &sama5d2_pinctrl_data },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, pinctrl_at91_pio4_dt_ids);
 
 static struct driver pinctrl_at91_pio4_driver = {
 	.name		= "pinctrl-at91-pio4",
diff --git a/drivers/pinctrl/pinctrl-at91.c b/drivers/pinctrl/pinctrl-at91.c
index 93a7ad0a650d..a3372a50359b 100644
--- a/drivers/pinctrl/pinctrl-at91.c
+++ b/drivers/pinctrl/pinctrl-at91.c
@@ -379,6 +379,7 @@ static struct of_device_id at91_pinctrl_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, at91_pinctrl_dt_ids);
 
 static struct at91_pinctrl_mux_ops *at91_pinctrl_get_driver_data(struct device *dev)
 {
@@ -624,6 +625,7 @@ static struct of_device_id at91_gpio_dt_ids[] = {
 		/* sentinel */
 	},
 };
+MODULE_DEVICE_TABLE(of, at91_gpio_dt_ids);
 
 static int at91_gpio_probe(struct device *dev)
 {
diff --git a/drivers/pinctrl/pinctrl-bcm2835.c b/drivers/pinctrl/pinctrl-bcm2835.c
index 453aed435fd0..57c1aee3af56 100644
--- a/drivers/pinctrl/pinctrl-bcm2835.c
+++ b/drivers/pinctrl/pinctrl-bcm2835.c
@@ -208,6 +208,7 @@ static __maybe_unused struct of_device_id bcm2835_gpio_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, bcm2835_gpio_dt_ids);
 
 static struct driver bcm2835_gpio_driver = {
 	.name = "bcm2835-gpio",
diff --git a/drivers/pinctrl/pinctrl-mxs.c b/drivers/pinctrl/pinctrl-mxs.c
index 06b6396456f9..55aef58521fb 100644
--- a/drivers/pinctrl/pinctrl-mxs.c
+++ b/drivers/pinctrl/pinctrl-mxs.c
@@ -145,6 +145,7 @@ static __maybe_unused struct of_device_id mxs_pinctrl_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, mxs_pinctrl_dt_ids);
 
 static struct driver mxs_pinctrl_driver = {
 	.name		= "mxs-pinctrl",
diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index d7ae77d52aa4..917af927b609 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -2986,6 +2986,7 @@ static const struct of_device_id rockchip_pinctrl_dt_match[] = {
 #endif
 	{},
 };
+MODULE_DEVICE_TABLE(of, rockchip_pinctrl_dt_match);
 
 static struct driver rockchip_pinctrl_driver = {
 	.name = "rockchip-pinctrl",
diff --git a/drivers/pinctrl/pinctrl-single.c b/drivers/pinctrl/pinctrl-single.c
index d68f292b5dd8..3b09511acf91 100644
--- a/drivers/pinctrl/pinctrl-single.c
+++ b/drivers/pinctrl/pinctrl-single.c
@@ -203,6 +203,7 @@ static __maybe_unused struct of_device_id pcs_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, pcs_dt_ids);
 
 static struct driver pcs_driver = {
 	.name		= "pinctrl-single",
diff --git a/drivers/pinctrl/pinctrl-stm32.c b/drivers/pinctrl/pinctrl-stm32.c
index 1eed5473f6e0..081d54a24417 100644
--- a/drivers/pinctrl/pinctrl-stm32.c
+++ b/drivers/pinctrl/pinctrl-stm32.c
@@ -390,6 +390,7 @@ static __maybe_unused struct of_device_id stm32_pinctrl_dt_ids[] = {
 	{ .compatible = "st,stm32mp157-z-pinctrl" },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, stm32_pinctrl_dt_ids);
 
 static struct driver stm32_pinctrl_driver = {
 	.name		= "stm32-pinctrl",
diff --git a/drivers/pinctrl/pinctrl-tegra-xusb.c b/drivers/pinctrl/pinctrl-tegra-xusb.c
index 5016ed3d0b3b..f3a9a0203f08 100644
--- a/drivers/pinctrl/pinctrl-tegra-xusb.c
+++ b/drivers/pinctrl/pinctrl-tegra-xusb.c
@@ -496,6 +496,7 @@ static __maybe_unused struct of_device_id pinctrl_tegra_xusb_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, pinctrl_tegra_xusb_dt_ids);
 
 static struct driver pinctrl_tegra_xusb_driver = {
 	.name		= "pinctrl-tegra-xusb",
diff --git a/drivers/pinctrl/pinctrl-tegra20.c b/drivers/pinctrl/pinctrl-tegra20.c
index 64b187d8d678..81644b37446c 100644
--- a/drivers/pinctrl/pinctrl-tegra20.c
+++ b/drivers/pinctrl/pinctrl-tegra20.c
@@ -328,6 +328,7 @@ static __maybe_unused struct of_device_id pinctrl_tegra20_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, pinctrl_tegra20_dt_ids);
 
 static struct driver pinctrl_tegra20_driver = {
 	.name		= "pinctrl-tegra20",
diff --git a/drivers/pinctrl/pinctrl-tegra30.c b/drivers/pinctrl/pinctrl-tegra30.c
index 2d3c1d22b45b..f706ae6bfdfd 100644
--- a/drivers/pinctrl/pinctrl-tegra30.c
+++ b/drivers/pinctrl/pinctrl-tegra30.c
@@ -913,6 +913,7 @@ static __maybe_unused struct of_device_id pinctrl_tegra30_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, pinctrl_tegra30_dt_ids);
 
 static struct driver pinctrl_tegra30_driver = {
 	.name		= "pinctrl-tegra30",
diff --git a/drivers/pinctrl/pinctrl-vf610.c b/drivers/pinctrl/pinctrl-vf610.c
index 9f150cd89d1c..df63865c0f3d 100644
--- a/drivers/pinctrl/pinctrl-vf610.c
+++ b/drivers/pinctrl/pinctrl-vf610.c
@@ -142,6 +142,7 @@ static __maybe_unused struct of_device_id pinctrl_vf610_dt_ids[] = {
 	{ .compatible = "fsl,vf610-iomuxc", },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, pinctrl_vf610_dt_ids);
 
 static struct driver pinctrl_vf610_driver = {
 	.name		= "vf610-pinctrl",
diff --git a/drivers/power/reset/gpio-poweroff.c b/drivers/power/reset/gpio-poweroff.c
index 19f218c9c808..48a479814e6b 100644
--- a/drivers/power/reset/gpio-poweroff.c
+++ b/drivers/power/reset/gpio-poweroff.c
@@ -79,6 +79,7 @@ static const struct of_device_id of_gpio_poweroff_match[] = {
 	{ .compatible = "gpio-poweroff", },
 	{},
 };
+MODULE_DEVICE_TABLE(of, of_gpio_poweroff_match);
 
 static struct driver gpio_poweroff_driver = {
 	.name = "poweroff-gpio",
diff --git a/drivers/power/reset/gpio-restart.c b/drivers/power/reset/gpio-restart.c
index 010ff73626f8..946acd4164c4 100644
--- a/drivers/power/reset/gpio-restart.c
+++ b/drivers/power/reset/gpio-restart.c
@@ -86,6 +86,7 @@ static const struct of_device_id of_gpio_restart_match[] = {
 	{ .compatible = "gpio-restart", },
 	{},
 };
+MODULE_DEVICE_TABLE(of, of_gpio_restart_match);
 
 static struct driver gpio_restart_driver = {
 	.name = "restart-gpio",
diff --git a/drivers/power/reset/htif-poweroff.c b/drivers/power/reset/htif-poweroff.c
index f51682a674cb..e24397f934dc 100644
--- a/drivers/power/reset/htif-poweroff.c
+++ b/drivers/power/reset/htif-poweroff.c
@@ -37,6 +37,7 @@ static const struct of_device_id htif_poweroff_of_match[] = {
 	{ .compatible = "ucb,htif0" },
 	{}
 };
+MODULE_DEVICE_TABLE(of, htif_poweroff_of_match);
 
 static struct driver htif_poweroff_driver = {
 	.name = "htif-poweroff",
diff --git a/drivers/power/reset/nvmem-reboot-mode.c b/drivers/power/reset/nvmem-reboot-mode.c
index bb51ca65954a..b8dd1c1d46ce 100644
--- a/drivers/power/reset/nvmem-reboot-mode.c
+++ b/drivers/power/reset/nvmem-reboot-mode.c
@@ -82,6 +82,7 @@ static const struct of_device_id nvmem_reboot_mode_of_match[] = {
 	{ .compatible = "nvmem-reboot-mode" },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, nvmem_reboot_mode_of_match);
 
 static struct driver nvmem_reboot_mode_driver = {
 	.probe = nvmem_reboot_mode_probe,
diff --git a/drivers/power/reset/syscon-poweroff.c b/drivers/power/reset/syscon-poweroff.c
index a853a9122293..cdcc13268426 100644
--- a/drivers/power/reset/syscon-poweroff.c
+++ b/drivers/power/reset/syscon-poweroff.c
@@ -66,6 +66,7 @@ static const struct of_device_id syscon_poweroff_of_match[] = {
 	{ .compatible = "syscon-poweroff" },
 	{}
 };
+MODULE_DEVICE_TABLE(of, syscon_poweroff_of_match);
 
 static struct driver syscon_poweroff_driver = {
 	.name = "syscon-poweroff",
diff --git a/drivers/power/reset/syscon-reboot-mode.c b/drivers/power/reset/syscon-reboot-mode.c
index 668cabdbeeea..9d379c9dda0e 100644
--- a/drivers/power/reset/syscon-reboot-mode.c
+++ b/drivers/power/reset/syscon-reboot-mode.c
@@ -120,6 +120,7 @@ static const struct of_device_id syscon_reboot_mode_of_match[] = {
 	{ .compatible = "barebox,syscon-reboot-mode", .data = &reboot_nofixup },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, syscon_reboot_mode_of_match);
 
 static struct driver syscon_reboot_mode_driver = {
 	.probe = syscon_reboot_mode_probe,
diff --git a/drivers/power/reset/syscon-reboot.c b/drivers/power/reset/syscon-reboot.c
index 0ecd6c9f93e3..90b125c33519 100644
--- a/drivers/power/reset/syscon-reboot.c
+++ b/drivers/power/reset/syscon-reboot.c
@@ -84,6 +84,7 @@ static const struct of_device_id syscon_reboot_of_match[] = {
 	{ .compatible = "syscon-reboot" },
 	{}
 };
+MODULE_DEVICE_TABLE(of, syscon_reboot_of_match);
 
 static struct driver syscon_reboot_driver = {
 	.probe = syscon_reboot_probe,
diff --git a/drivers/pwm/pwm-atmel.c b/drivers/pwm/pwm-atmel.c
index 2aa4eb3b636e..d5e70600ee59 100644
--- a/drivers/pwm/pwm-atmel.c
+++ b/drivers/pwm/pwm-atmel.c
@@ -410,6 +410,7 @@ static const struct of_device_id atmel_pwm_dt_ids[] = {
 		/* sentinel */
 	},
 };
+MODULE_DEVICE_TABLE(of, atmel_pwm_dt_ids);
 
 static int id = -1;
 
diff --git a/drivers/pwm/pwm-imx.c b/drivers/pwm/pwm-imx.c
index 5b80f0ffbc5a..2dc7e4cfd64d 100644
--- a/drivers/pwm/pwm-imx.c
+++ b/drivers/pwm/pwm-imx.c
@@ -200,6 +200,7 @@ static struct of_device_id imx_pwm_dt_ids[] = {
 	{ .compatible = "fsl,imx27-pwm", .data = &imx_pwm_data_v2, },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, imx_pwm_dt_ids);
 
 static int imx_pwm_probe(struct device *dev)
 {
diff --git a/drivers/pwm/pwm-mxs.c b/drivers/pwm/pwm-mxs.c
index cee3de8a16b9..6b89ac192ad9 100644
--- a/drivers/pwm/pwm-mxs.c
+++ b/drivers/pwm/pwm-mxs.c
@@ -146,6 +146,7 @@ static const struct of_device_id mxs_pwm_dt_ids[] = {
 	{ .compatible = "fsl,imx23-pwm", },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, mxs_pwm_dt_ids);
 
 static struct driver mxs_pwm_driver = {
 	.name	= "mxs-pwm",
diff --git a/drivers/pwm/pwm-stm32.c b/drivers/pwm/pwm-stm32.c
index a8cf8a634ac0..e73e9965576a 100644
--- a/drivers/pwm/pwm-stm32.c
+++ b/drivers/pwm/pwm-stm32.c
@@ -391,6 +391,7 @@ static const struct of_device_id stm32_pwm_of_match[] = {
 	{ .compatible = "st,stm32-pwm",	},
 	{ /* sentinel */ },
 };
+MODULE_DEVICE_TABLE(of, stm32_pwm_of_match);
 
 static struct driver stm32_pwm_driver = {
 	.name = "stm32-pwm",
diff --git a/drivers/regulator/anatop-regulator.c b/drivers/regulator/anatop-regulator.c
index 0bc15d193e72..e78b503d4f71 100644
--- a/drivers/regulator/anatop-regulator.c
+++ b/drivers/regulator/anatop-regulator.c
@@ -138,6 +138,7 @@ static const struct of_device_id of_anatop_regulator_match_tbl[] = {
 	{ .compatible = "fsl,anatop-regulator", },
 	{ /* end */ }
 };
+MODULE_DEVICE_TABLE(of, of_anatop_regulator_match_tbl);
 
 static struct driver anatop_regulator_driver = {
 	.name = "anatop_regulator",
diff --git a/drivers/regulator/fixed.c b/drivers/regulator/fixed.c
index 7f9bb820f748..10428cac7ad3 100644
--- a/drivers/regulator/fixed.c
+++ b/drivers/regulator/fixed.c
@@ -90,6 +90,7 @@ static struct of_device_id regulator_fixed_of_ids[] = {
 	{ .compatible = "regulator-fixed", },
 	{ }
 };
+MODULE_DEVICE_TABLE(of, regulator_fixed_of_ids);
 
 static struct driver regulator_fixed_driver = {
 	.name  = "regulator-fixed",
diff --git a/drivers/regulator/pfuze.c b/drivers/regulator/pfuze.c
index 8945ee7c150d..8426d6f25be2 100644
--- a/drivers/regulator/pfuze.c
+++ b/drivers/regulator/pfuze.c
@@ -186,6 +186,7 @@ static __maybe_unused struct of_device_id pfuze_dt_ids[] = {
 	{ .compatible = "fsl,pfuze3001" },
 	{ }
 };
+MODULE_DEVICE_TABLE(of, pfuze_dt_ids);
 
 static struct driver pfuze_i2c_driver = {
 	.name		= "pfuze-i2c",
diff --git a/drivers/regulator/stm32-pwr.c b/drivers/regulator/stm32-pwr.c
index a7e8fec0fa6e..ca03529b7f82 100644
--- a/drivers/regulator/stm32-pwr.c
+++ b/drivers/regulator/stm32-pwr.c
@@ -206,6 +206,7 @@ static const struct of_device_id stm32_pwr_of_match[] = {
 	{ .compatible = "st,stm32mp1,pwr-reg", },
 	{ /* sentinel */ },
 };
+MODULE_DEVICE_TABLE(of, stm32_pwr_of_match);
 
 static struct driver stm32_pwr_driver = {
 	.probe = stm32_pwr_regulator_probe,
diff --git a/drivers/regulator/stm32-vrefbuf.c b/drivers/regulator/stm32-vrefbuf.c
index 34b48bb2affb..18cf53e7357b 100644
--- a/drivers/regulator/stm32-vrefbuf.c
+++ b/drivers/regulator/stm32-vrefbuf.c
@@ -203,6 +203,7 @@ static const struct of_device_id __maybe_unused stm32_vrefbuf_of_match[] = {
 	{ .compatible = "st,stm32-vrefbuf", },
 	{},
 };
+MODULE_DEVICE_TABLE(of, stm32_vrefbuf_of_match);
 
 static struct driver stm32_vrefbuf_driver = {
 	.probe = stm32_vrefbuf_probe,
diff --git a/drivers/regulator/stpmic1_regulator.c b/drivers/regulator/stpmic1_regulator.c
index c39e01f6daec..c8b56e3a1a18 100644
--- a/drivers/regulator/stpmic1_regulator.c
+++ b/drivers/regulator/stpmic1_regulator.c
@@ -431,6 +431,7 @@ static __maybe_unused const struct of_device_id stpmic1_regulator_of_match[] = {
 	{ .compatible = "st,stpmic1-regulators" },
 	{ /* sentinel */ },
 };
+MODULE_DEVICE_TABLE(of, stpmic1_regulator_of_match);
 
 static struct driver stpmic1_regulator_driver = {
 	.name = "stpmic1-regulator",
diff --git a/drivers/remoteproc/imx_rproc.c b/drivers/remoteproc/imx_rproc.c
index bd0fa4b61cf2..68fe8031e5fb 100644
--- a/drivers/remoteproc/imx_rproc.c
+++ b/drivers/remoteproc/imx_rproc.c
@@ -533,6 +533,7 @@ static const struct of_device_id imx_rproc_of_match[] = {
 	{ .compatible = "fsl,imx8mq-cm4", .data = &imx_rproc_cfg_imx8mq },
 	{},
 };
+MODULE_DEVICE_TABLE(of, imx_rproc_of_match);
 
 static struct driver imx_rproc_driver = {
 	.name = "imx-rproc",
diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/stm32_rproc.c
index d81bcabace35..b6a62634842f 100644
--- a/drivers/remoteproc/stm32_rproc.c
+++ b/drivers/remoteproc/stm32_rproc.c
@@ -190,6 +190,7 @@ static const struct of_device_id stm32_rproc_of_match[] = {
 	{ .compatible = "st,stm32mp1-m4" },
 	{ /* sentinel */ },
 };
+MODULE_DEVICE_TABLE(of, stm32_rproc_of_match);
 
 static struct driver stm32_rproc_driver = {
 	.name = "stm32-rproc",
diff --git a/drivers/reset/reset-imx7.c b/drivers/reset/reset-imx7.c
index 3c043ddcd9ff..20542c536b99 100644
--- a/drivers/reset/reset-imx7.c
+++ b/drivers/reset/reset-imx7.c
@@ -278,6 +278,7 @@ static const struct of_device_id imx7_reset_dt_ids[] = {
 	{ .compatible = "fsl,imx8mq-src", .data = &variant_imx8mq },
 	{ /* sentinel */ },
 };
+MODULE_DEVICE_TABLE(of, imx7_reset_dt_ids);
 
 static struct driver imx7_reset_driver = {
 	.name = "imx7d-src",
diff --git a/drivers/reset/reset-simple.c b/drivers/reset/reset-simple.c
index 897a9fb5a607..20f3df18f4b2 100644
--- a/drivers/reset/reset-simple.c
+++ b/drivers/reset/reset-simple.c
@@ -146,6 +146,7 @@ static const struct of_device_id reset_simple_dt_ids[] = {
 		.data = &reset_simple_active_low },
 	{ /* sentinel */ },
 };
+MODULE_DEVICE_TABLE(of, reset_simple_dt_ids);
 
 static int reset_simple_probe(struct device *dev)
 {
diff --git a/drivers/reset/reset-socfpga.c b/drivers/reset/reset-socfpga.c
index e12d34c5f724..d214ce503e22 100644
--- a/drivers/reset/reset-socfpga.c
+++ b/drivers/reset/reset-socfpga.c
@@ -108,6 +108,7 @@ static const struct of_device_id socfpga_reset_dt_ids[] = {
 	{ .compatible = "altr,rst-mgr", },
 	{ /* sentinel */ },
 };
+MODULE_DEVICE_TABLE(of, socfpga_reset_dt_ids);
 
 static struct driver socfpga_reset_driver = {
 	.name = "socfpga_reset",
diff --git a/drivers/reset/reset-starfive-vic.c b/drivers/reset/reset-starfive-vic.c
index 237e5adca05d..3e9e367215ee 100644
--- a/drivers/reset/reset-starfive-vic.c
+++ b/drivers/reset/reset-starfive-vic.c
@@ -225,6 +225,7 @@ static const struct of_device_id starfive_rstgen_reset_dt_ids[] = {
 	{ .compatible = "starfive,jh7100-rstgen", .data = jh7110_rstgen_sync_resets },
 	{ /* sentinel */ },
 };
+MODULE_DEVICE_TABLE(of, starfive_rstgen_reset_dt_ids);
 
 static struct driver starfive_rstgen_reset_driver = {
 	.name = "starfive_rstgen",
diff --git a/drivers/rtc/rtc-imxdi.c b/drivers/rtc/rtc-imxdi.c
index f38e7580a6e1..e9d68c6739e6 100644
--- a/drivers/rtc/rtc-imxdi.c
+++ b/drivers/rtc/rtc-imxdi.c
@@ -599,6 +599,7 @@ static __maybe_unused const struct of_device_id dryice_dt_ids[] = {
 	{ .compatible = "fsl,imx25-rtc" },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, dryice_dt_ids);
 
 static struct driver dryice_rtc_driver = {
         .name   = "imx-di-rtc",
diff --git a/drivers/rtc/rtc-jz4740.c b/drivers/rtc/rtc-jz4740.c
index 46cfdc7537b0..aa79cb2ac504 100644
--- a/drivers/rtc/rtc-jz4740.c
+++ b/drivers/rtc/rtc-jz4740.c
@@ -153,6 +153,7 @@ static __maybe_unused struct of_device_id jz4740_rtc_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, jz4740_rtc_dt_ids);
 
 static struct driver jz4740_rtc_driver = {
 	.name  = "jz4740-rtc",
diff --git a/drivers/serial/atmel.c b/drivers/serial/atmel.c
index 4fbcfb03be00..b957b75284be 100644
--- a/drivers/serial/atmel.c
+++ b/drivers/serial/atmel.c
@@ -447,6 +447,7 @@ static const struct of_device_id __maybe_unused atmel_serial_dt_ids[] = {
 	{ .compatible = "atmel,at91sam9260-usart" },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, atmel_serial_dt_ids);
 
 static struct driver atmel_serial_driver = {
         .name  = "atmel_usart",
diff --git a/drivers/serial/serial_ar933x.c b/drivers/serial/serial_ar933x.c
index 18c59c6b40d2..f5595ec1eed6 100644
--- a/drivers/serial/serial_ar933x.c
+++ b/drivers/serial/serial_ar933x.c
@@ -188,6 +188,7 @@ static struct of_device_id ar933x_serial_dt_ids[] = {
 		/* sentinel */
 	},
 };
+MODULE_DEVICE_TABLE(of, ar933x_serial_dt_ids);
 
 static struct driver ar933x_serial_driver = {
 	.name  = "ar933x_serial",
diff --git a/drivers/serial/serial_auart.c b/drivers/serial/serial_auart.c
index 2ac7349c6663..217ac5c89183 100644
--- a/drivers/serial/serial_auart.c
+++ b/drivers/serial/serial_auart.c
@@ -216,6 +216,7 @@ static const __maybe_unused struct of_device_id auart_serial_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, auart_serial_dt_ids);
 
 static struct driver auart_serial_driver = {
 	.name = "auart_serial",
diff --git a/drivers/serial/serial_cadence.c b/drivers/serial/serial_cadence.c
index c28ec3639e03..ee162e541aed 100644
--- a/drivers/serial/serial_cadence.c
+++ b/drivers/serial/serial_cadence.c
@@ -240,6 +240,7 @@ static __maybe_unused struct of_device_id cadence_serial_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, cadence_serial_dt_ids);
 
 static struct platform_device_id cadence_serial_ids[] = {
 	{
diff --git a/drivers/serial/serial_clps711x.c b/drivers/serial/serial_clps711x.c
index 658fd762970c..950d22c26cb1 100644
--- a/drivers/serial/serial_clps711x.c
+++ b/drivers/serial/serial_clps711x.c
@@ -185,6 +185,7 @@ static const struct of_device_id __maybe_unused clps711x_uart_dt_ids[] = {
 	{ .compatible = "cirrus,ep7209-uart", },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, clps711x_uart_dt_ids);
 
 static struct driver clps711x_driver = {
 	.name		= "clps711x-uart",
diff --git a/drivers/serial/serial_digic.c b/drivers/serial/serial_digic.c
index 61ba7d06f3ec..48e9cd3248d9 100644
--- a/drivers/serial/serial_digic.c
+++ b/drivers/serial/serial_digic.c
@@ -117,6 +117,7 @@ static __maybe_unused struct of_device_id digic_serial_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, digic_serial_dt_ids);
 
 static struct driver digic_serial_driver = {
 	.name  = "digic-uart",
diff --git a/drivers/serial/serial_imx.c b/drivers/serial/serial_imx.c
index e156654fc1f4..0f9102860591 100644
--- a/drivers/serial/serial_imx.c
+++ b/drivers/serial/serial_imx.c
@@ -299,6 +299,7 @@ static __maybe_unused struct of_device_id imx_serial_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, imx_serial_dt_ids);
 
 static struct platform_device_id imx_serial_ids[] = {
 	{
diff --git a/drivers/serial/serial_litex.c b/drivers/serial/serial_litex.c
index a48f118d8413..04da556f6ae3 100644
--- a/drivers/serial/serial_litex.c
+++ b/drivers/serial/serial_litex.c
@@ -90,6 +90,7 @@ static __maybe_unused struct of_device_id litex_serial_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, litex_serial_dt_ids);
 
 static struct driver litex_serial_driver = {
 	.name  = "litex-uart",
diff --git a/drivers/serial/serial_lpuart.c b/drivers/serial/serial_lpuart.c
index 863bc7e9a006..828a0dd0bb42 100644
--- a/drivers/serial/serial_lpuart.c
+++ b/drivers/serial/serial_lpuart.c
@@ -186,6 +186,7 @@ static struct of_device_id lpuart_serial_dt_ids[] = {
 	{ .compatible = "fsl,vf610-lpuart" },
 	{}
 };
+MODULE_DEVICE_TABLE(of, lpuart_serial_dt_ids);
 
 static struct driver lpuart_serial_driver = {
 	.name   = "lpuart-serial",
diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index d9068439a094..11bf13327517 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -584,6 +584,7 @@ static struct of_device_id ns16550_serial_dt_ids[] = {
 		/* sentinel */
 	},
 };
+MODULE_DEVICE_TABLE(of, ns16550_serial_dt_ids);
 
 static __maybe_unused struct platform_device_id ns16550_serial_ids[] = {
 	{
diff --git a/drivers/serial/serial_sifive.c b/drivers/serial/serial_sifive.c
index fffd0250f01d..f056233b4efc 100644
--- a/drivers/serial/serial_sifive.c
+++ b/drivers/serial/serial_sifive.c
@@ -163,6 +163,7 @@ static __maybe_unused struct of_device_id sifive_serial_dt_ids[] = {
 	{ .compatible = "sifive,uart0" },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, sifive_serial_dt_ids);
 
 static struct driver serial_sifive_driver = {
 	.name   = "serial_sifive",
diff --git a/drivers/serial/serial_stm32.c b/drivers/serial/serial_stm32.c
index 946393484c7f..4a67408f44f6 100644
--- a/drivers/serial/serial_stm32.c
+++ b/drivers/serial/serial_stm32.c
@@ -240,6 +240,7 @@ static struct of_device_id stm32_serial_dt_ids[] = {
 	}, {
 	}
 };
+MODULE_DEVICE_TABLE(of, stm32_serial_dt_ids);
 
 static struct driver stm32_serial_driver = {
 	.name   = "stm32-serial",
diff --git a/drivers/serial/stm-serial.c b/drivers/serial/stm-serial.c
index e7c04654d2f9..af30bfa71d59 100644
--- a/drivers/serial/stm-serial.c
+++ b/drivers/serial/stm-serial.c
@@ -180,6 +180,7 @@ static __maybe_unused struct of_device_id stm_serial_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, stm_serial_dt_ids);
 
 static struct driver stm_serial_driver = {
         .name   = "stm_serial",
diff --git a/drivers/soc/imx/gpcv2.c b/drivers/soc/imx/gpcv2.c
index b662363f79f3..57d9dcc99d9a 100644
--- a/drivers/soc/imx/gpcv2.c
+++ b/drivers/soc/imx/gpcv2.c
@@ -1305,6 +1305,7 @@ static const struct of_device_id imx_gpcv2_dt_ids[] = {
 	{ .compatible = "fsl,imx8mq-gpc", .data = &imx8m_pgc_domain_data, },
 	{ }
 };
+MODULE_DEVICE_TABLE(of, imx_gpcv2_dt_ids);
 
 static struct driver imx_gpcv2_driver = {
 	.name = "imx-gpcv2",
diff --git a/drivers/soc/kvx/kvx_socinfo.c b/drivers/soc/kvx/kvx_socinfo.c
index 3cf8a978abdc..8cac8899d20b 100644
--- a/drivers/soc/kvx/kvx_socinfo.c
+++ b/drivers/soc/kvx/kvx_socinfo.c
@@ -132,6 +132,7 @@ static const struct of_device_id kvx_socinfo_dt_ids[] = {
 	{ .compatible = "kalray,kvx-socinfo" },
 	{ }
 };
+MODULE_DEVICE_TABLE(of, kvx_socinfo_dt_ids);
 
 static struct driver kvx_socinfo_driver = {
 	.name = "kvx-socinfo",
diff --git a/drivers/soc/rockchip/io-domain.c b/drivers/soc/rockchip/io-domain.c
index bb3bc9965dea..5b32dad9ed6b 100644
--- a/drivers/soc/rockchip/io-domain.c
+++ b/drivers/soc/rockchip/io-domain.c
@@ -125,6 +125,7 @@ static const struct of_device_id rockchip_iodomain_match[] = {
 	  .data = &soc_data_rk3568_pmu },
 	{ /* sentinel */ },
 };
+MODULE_DEVICE_TABLE(of, rockchip_iodomain_match);
 
 static int rockchip_iodomain_probe(struct device *dev)
 {
diff --git a/drivers/soc/sifive/sifive_l2_cache.c b/drivers/soc/sifive/sifive_l2_cache.c
index 03945e9beae7..aab21f9f50e6 100644
--- a/drivers/soc/sifive/sifive_l2_cache.c
+++ b/drivers/soc/sifive/sifive_l2_cache.c
@@ -127,6 +127,7 @@ static const struct of_device_id sifive_l2_ids[] = {
 	{ .compatible = "starfive,ccache0" },
 	{ /* end of table */ },
 };
+MODULE_DEVICE_TABLE(of, sifive_l2_ids);
 
 static struct driver sifive_l2_driver = {
 	.name = "sfive-l2cache",
diff --git a/drivers/sound/gpio-beeper.c b/drivers/sound/gpio-beeper.c
index 3783ea8f395f..b809e999bf8b 100644
--- a/drivers/sound/gpio-beeper.c
+++ b/drivers/sound/gpio-beeper.c
@@ -57,6 +57,7 @@ static const struct of_device_id gpio_beeper_match[] = {
 	{ .compatible = "gpio-beeper", },
 	{ },
 };
+MODULE_DEVICE_TABLE(of, gpio_beeper_match);
 
 static struct driver gpio_beeper_driver = {
 	.name		= "gpio-beeper",
diff --git a/drivers/sound/pwm-beeper.c b/drivers/sound/pwm-beeper.c
index a0119d104050..a3d2adb279af 100644
--- a/drivers/sound/pwm-beeper.c
+++ b/drivers/sound/pwm-beeper.c
@@ -115,6 +115,7 @@ static const struct of_device_id pwm_beeper_match[] = {
 	{ .compatible = "pwm-beeper", },
 	{ },
 };
+MODULE_DEVICE_TABLE(of, pwm_beeper_match);
 
 static struct driver pwm_beeper_driver = {
 	.name		= "pwm-beeper",
diff --git a/drivers/sound/sdl.c b/drivers/sound/sdl.c
index a2faf20b6719..396b6cbefb40 100644
--- a/drivers/sound/sdl.c
+++ b/drivers/sound/sdl.c
@@ -78,6 +78,7 @@ static __maybe_unused struct of_device_id sandbox_sound_dt_ids[] = {
 	{ .compatible = "barebox,sandbox-sound" },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, sandbox_sound_dt_ids);
 
 static struct driver sandbox_sound_drv = {
 	.name  = "sandbox-sound",
diff --git a/drivers/spi/ath79_spi.c b/drivers/spi/ath79_spi.c
index 5aa6e5e739a9..41a31ae922e1 100644
--- a/drivers/spi/ath79_spi.c
+++ b/drivers/spi/ath79_spi.c
@@ -284,6 +284,7 @@ static __maybe_unused struct of_device_id ath79_spi_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, ath79_spi_dt_ids);
 
 static struct driver ath79_spi_driver = {
 	.name  = "ath79-spi",
diff --git a/drivers/spi/atmel-quadspi.c b/drivers/spi/atmel-quadspi.c
index 923a170844f6..c680ee15a0ff 100644
--- a/drivers/spi/atmel-quadspi.c
+++ b/drivers/spi/atmel-quadspi.c
@@ -526,6 +526,7 @@ static const struct of_device_id atmel_qspi_dt_ids[] = {
 	},
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, atmel_qspi_dt_ids);
 
 static struct driver atmel_qspi_driver = {
 	.name	= "atmel_qspi",
diff --git a/drivers/spi/atmel_spi.c b/drivers/spi/atmel_spi.c
index 166531feb8b5..5c42ff2e89c5 100644
--- a/drivers/spi/atmel_spi.c
+++ b/drivers/spi/atmel_spi.c
@@ -474,6 +474,7 @@ const static __maybe_unused struct of_device_id atmel_spi_dt_ids[] = {
 	{ .compatible = "atmel,at91rm9200-spi" },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, atmel_spi_dt_ids);
 
 static struct driver atmel_spi_driver = {
 	.name  = "atmel_spi",
diff --git a/drivers/spi/dspi_spi.c b/drivers/spi/dspi_spi.c
index 8d6687cda4f8..75addfd12c6f 100644
--- a/drivers/spi/dspi_spi.c
+++ b/drivers/spi/dspi_spi.c
@@ -400,6 +400,7 @@ static const struct of_device_id dspi_dt_ids[] = {
 	{ .compatible = "fsl,vf610-dspi", .data = (void *)&vf610_data, },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, dspi_dt_ids);
 
 static struct driver dspi_spi_driver = {
 	.name  = "fsl-dspi",
diff --git a/drivers/spi/gpio_spi.c b/drivers/spi/gpio_spi.c
index 81476e44877f..f751ab307879 100644
--- a/drivers/spi/gpio_spi.c
+++ b/drivers/spi/gpio_spi.c
@@ -222,6 +222,7 @@ static struct of_device_id __maybe_unused gpio_spi_dt_ids[] = {
 	{ .compatible = "spi-gpio", },
 	{ }
 };
+MODULE_DEVICE_TABLE(of, gpio_spi_dt_ids);
 
 static struct driver gpio_spi_driver = {
 	.name = "gpio-spi",
diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
index f45b42969951..5310a2715d8a 100644
--- a/drivers/spi/imx_spi.c
+++ b/drivers/spi/imx_spi.c
@@ -671,6 +671,7 @@ static __maybe_unused struct of_device_id imx_spi_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, imx_spi_dt_ids);
 
 static struct platform_device_id imx_spi_ids[] = {
 #if IS_ENABLED(CONFIG_DRIVER_SPI_IMX_0_0)
diff --git a/drivers/spi/litex_spiflash.c b/drivers/spi/litex_spiflash.c
index 0a63c5960fad..58ce6ad5f59d 100644
--- a/drivers/spi/litex_spiflash.c
+++ b/drivers/spi/litex_spiflash.c
@@ -231,6 +231,7 @@ static __maybe_unused struct of_device_id litex_spiflash_spi_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, litex_spiflash_spi_dt_ids);
 
 static struct driver litex_spiflash_spi_driver = {
 	.name  = "litex-spiflash",
diff --git a/drivers/spi/mvebu_spi.c b/drivers/spi/mvebu_spi.c
index f41d15483037..e220d1f9eeaf 100644
--- a/drivers/spi/mvebu_spi.c
+++ b/drivers/spi/mvebu_spi.c
@@ -347,6 +347,7 @@ static struct of_device_id mvebu_spi_dt_ids[] = {
 	  .data = &mvebu_spi_set_baudrate },
 	{ }
 };
+MODULE_DEVICE_TABLE(of, mvebu_spi_dt_ids);
 
 static int mvebu_spi_probe(struct device *dev)
 {
diff --git a/drivers/spi/omap3_spi.c b/drivers/spi/omap3_spi.c
index 2b6fcb14a918..78c3a8233830 100644
--- a/drivers/spi/omap3_spi.c
+++ b/drivers/spi/omap3_spi.c
@@ -422,6 +422,7 @@ static __maybe_unused struct of_device_id omap_spi_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, omap_spi_dt_ids);
 
 static struct platform_device_id omap_spi_ids[] = {
 	{
diff --git a/drivers/spi/spi-fsl-dspi.c b/drivers/spi/spi-fsl-dspi.c
index dd1598efbd05..f827c9fc8244 100644
--- a/drivers/spi/spi-fsl-dspi.c
+++ b/drivers/spi/spi-fsl-dspi.c
@@ -515,6 +515,7 @@ static const struct of_device_id fsl_dspi_dt_ids[] = {
 	{ .compatible = "fsl,ls2085a-dspi", .data = &ls2085a_data, },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, fsl_dspi_dt_ids);
 
 static const struct regmap_config dspi_regmap_config = {
 	.reg_bits	= 32,
diff --git a/drivers/spi/spi-fsl-qspi.c b/drivers/spi/spi-fsl-qspi.c
index bf961b06cd0f..17e6d1df867d 100644
--- a/drivers/spi/spi-fsl-qspi.c
+++ b/drivers/spi/spi-fsl-qspi.c
@@ -860,6 +860,7 @@ static const struct of_device_id fsl_qspi_dt_ids[] = {
 	{ .compatible = "fsl,ls2080a-qspi", .data = &ls2080a_data, },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, fsl_qspi_dt_ids);
 
 static struct driver fsl_qspi_driver = {
 	.name		= "fsl-quadspi",
diff --git a/drivers/spi/spi-nxp-fspi.c b/drivers/spi/spi-nxp-fspi.c
index b17f658e24a2..ed0af241f87d 100644
--- a/drivers/spi/spi-nxp-fspi.c
+++ b/drivers/spi/spi-nxp-fspi.c
@@ -1053,6 +1053,7 @@ static const struct of_device_id nxp_fspi_dt_ids[] = {
 	{ .compatible = "nxp,imx8dxl-fspi", .data = (void *)&imx8dxl_data, },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, nxp_fspi_dt_ids);
 
 static struct driver nxp_fspi_driver = {
 	.name			= "nxp-fspi",
diff --git a/drivers/spi/spi-sifive.c b/drivers/spi/spi-sifive.c
index 5275194604a2..fbe80718e414 100644
--- a/drivers/spi/spi-sifive.c
+++ b/drivers/spi/spi-sifive.c
@@ -512,6 +512,7 @@ static const struct of_device_id sifive_spi_ids[] = {
 	{ .compatible = "sifive,spi0" },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, sifive_spi_ids);
 
 static struct driver sifive_spi_driver = {
 	.name  = "sifive_spi",
diff --git a/drivers/spi/stm32_spi.c b/drivers/spi/stm32_spi.c
index bdaeb6b5d0e5..9ef405a788ff 100644
--- a/drivers/spi/stm32_spi.c
+++ b/drivers/spi/stm32_spi.c
@@ -628,6 +628,7 @@ static const struct of_device_id stm32_spi_ids[] = {
 	{ .compatible = "st,stm32h7-spi", },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, stm32_spi_ids);
 
 static struct driver stm32_spi_driver = {
 	.name  = "stm32_spi",
diff --git a/drivers/spi/zynq_qspi.c b/drivers/spi/zynq_qspi.c
index eda7145ab2d0..3da245feb73a 100644
--- a/drivers/spi/zynq_qspi.c
+++ b/drivers/spi/zynq_qspi.c
@@ -603,6 +603,7 @@ static const struct of_device_id zynq_qspi_of_match[] = {
 	{ .compatible = "xlnx,zynq-qspi-1.0", },
 	{ /* end of table */ }
 };
+MODULE_DEVICE_TABLE(of, zynq_qspi_of_match);
 
 static struct driver zynq_qspi_driver = {
 	.name  = "zynq-qspi",
diff --git a/drivers/usb/dwc2/dwc2.c b/drivers/usb/dwc2/dwc2.c
index 3564cdd1d18c..a35fd0e71763 100644
--- a/drivers/usb/dwc2/dwc2.c
+++ b/drivers/usb/dwc2/dwc2.c
@@ -203,6 +203,7 @@ static const struct of_device_id dwc2_platform_dt_ids[] = {
 	  .data = dwc2_set_stm32mp15_hsotg_params },
 	{ }
 };
+MODULE_DEVICE_TABLE(of, dwc2_platform_dt_ids);
 
 static struct driver dwc2_driver = {
 	.name	= "dwc2",
diff --git a/drivers/usb/dwc3/core.c b/drivers/usb/dwc3/core.c
index 314346fd317b..8e6dc59a5d12 100644
--- a/drivers/usb/dwc3/core.c
+++ b/drivers/usb/dwc3/core.c
@@ -1497,6 +1497,7 @@ static const struct of_device_id of_dwc3_match[] = {
 	},
 	{ },
 };
+MODULE_DEVICE_TABLE(of, of_dwc3_match);
 
 static struct driver dwc3_driver = {
 	.probe = dwc3_probe,
diff --git a/drivers/usb/dwc3/dwc3-of-simple.c b/drivers/usb/dwc3/dwc3-of-simple.c
index d94a18e833a8..e8155321ad22 100644
--- a/drivers/usb/dwc3/dwc3-of-simple.c
+++ b/drivers/usb/dwc3/dwc3-of-simple.c
@@ -75,6 +75,7 @@ static const struct of_device_id of_dwc3_simple_match[] = {
 	{.compatible = "amlogic,meson-gxl-dwc3"},
 	{.compatible = "allwinner,sun50i-h6-dwc3"},
 	{/* Sentinel */}};
+MODULE_DEVICE_TABLE(of, of_dwc3_simple_match);
 
 static struct driver dwc3_of_simple_driver = {
 	.probe		= dwc3_of_simple_probe,
diff --git a/drivers/usb/gadget/udc/at91_udc.c b/drivers/usb/gadget/udc/at91_udc.c
index 654362d69e68..ffd39f489ff9 100644
--- a/drivers/usb/gadget/udc/at91_udc.c
+++ b/drivers/usb/gadget/udc/at91_udc.c
@@ -1522,6 +1522,7 @@ static const struct of_device_id at91_udc_dt_ids[] = {
 	{ .compatible = "atmel,at91sam9263-udc" },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, at91_udc_dt_ids);
 
 static struct driver at91_udc_driver = {
 	.name	= driver_name,
diff --git a/drivers/usb/host/ehci-atmel.c b/drivers/usb/host/ehci-atmel.c
index 67ba7cbcc152..f176babfa73b 100644
--- a/drivers/usb/host/ehci-atmel.c
+++ b/drivers/usb/host/ehci-atmel.c
@@ -113,6 +113,7 @@ static const struct of_device_id atmel_ehci_dt_ids[] = {
 	{ .compatible = "atmel,at91sam9g45-ehci" },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, atmel_ehci_dt_ids);
 
 static struct driver atmel_ehci_driver = {
 	.name = "atmel-ehci",
diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index a0b8b807b6d6..7ae3a285a027 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -1479,6 +1479,7 @@ static __maybe_unused struct of_device_id ehci_platform_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, ehci_platform_dt_ids);
 
 static struct driver ehci_driver = {
 	.name  = "ehci",
diff --git a/drivers/usb/host/ohci-at91.c b/drivers/usb/host/ohci-at91.c
index a7caf7ea046f..867c0977be78 100644
--- a/drivers/usb/host/ohci-at91.c
+++ b/drivers/usb/host/ohci-at91.c
@@ -194,6 +194,7 @@ static const struct of_device_id at91_ohci_dt_ids[] = {
 	{ .compatible = "atmel,at91rm9200-ohci" },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, at91_ohci_dt_ids);
 
 static struct driver at91_ohci_driver = {
 	.name = "at91_ohci",
diff --git a/drivers/usb/imx/chipidea-imx.c b/drivers/usb/imx/chipidea-imx.c
index 053a985a70d2..c5e6ce61e957 100644
--- a/drivers/usb/imx/chipidea-imx.c
+++ b/drivers/usb/imx/chipidea-imx.c
@@ -363,6 +363,7 @@ static __maybe_unused struct of_device_id imx_chipidea_dt_ids[] = {
 		/* sentinel */
 	},
 };
+MODULE_DEVICE_TABLE(of, imx_chipidea_dt_ids);
 
 static struct driver imx_chipidea_driver = {
 	.name   = "imx-usb",
diff --git a/drivers/usb/imx/imx-usb-misc.c b/drivers/usb/imx/imx-usb-misc.c
index b4d7011d5c0d..61d01688a1bd 100644
--- a/drivers/usb/imx/imx-usb-misc.c
+++ b/drivers/usb/imx/imx-usb-misc.c
@@ -622,6 +622,7 @@ static __maybe_unused struct of_device_id imx_usbmisc_dt_ids[] = {
 		/* sentinel */
 	},
 };
+MODULE_DEVICE_TABLE(of, imx_usbmisc_dt_ids);
 
 int imx_usbmisc_port_init(struct device *dev, int port, unsigned flags)
 {
diff --git a/drivers/usb/imx/imx-usb-phy.c b/drivers/usb/imx/imx-usb-phy.c
index 1e9698b98aee..70bf292f80e2 100644
--- a/drivers/usb/imx/imx-usb-phy.c
+++ b/drivers/usb/imx/imx-usb-phy.c
@@ -229,6 +229,7 @@ static __maybe_unused struct of_device_id imx_usbphy_dt_ids[] = {
 		/* sentinel */
 	},
 };
+MODULE_DEVICE_TABLE(of, imx_usbphy_dt_ids);
 
 static struct driver imx_usbphy_driver = {
 	.name   = "imx-usb-phy",
diff --git a/drivers/usb/misc/onboard_usb_hub.h b/drivers/usb/misc/onboard_usb_hub.h
index aca5f50eb0da..b9098182b79a 100644
--- a/drivers/usb/misc/onboard_usb_hub.h
+++ b/drivers/usb/misc/onboard_usb_hub.h
@@ -49,5 +49,6 @@ static const struct of_device_id onboard_hub_match[] = {
 	{ .compatible = "usb2109,2817", .data = &vialab_vl817_data, },
 	{}
 };
+MODULE_DEVICE_TABLE(of, onboard_hub_match);
 
 #endif /* _USB_MISC_ONBOARD_USB_HUB_H */
diff --git a/drivers/usb/misc/usb251xb.c b/drivers/usb/misc/usb251xb.c
index fe831253e281..465d97e779fe 100644
--- a/drivers/usb/misc/usb251xb.c
+++ b/drivers/usb/misc/usb251xb.c
@@ -608,6 +608,7 @@ static const struct of_device_id usb251xb_of_match[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, usb251xb_of_match);
 #else /* CONFIG_OFDEVICE */
 static int usb251xb_get_ofdata(struct usb251xb *hub,
 			       struct usb251xb_data *data)
diff --git a/drivers/usb/musb/musb_am335x.c b/drivers/usb/musb/musb_am335x.c
index 5bbdaf02a1dc..19d780d15bca 100644
--- a/drivers/usb/musb/musb_am335x.c
+++ b/drivers/usb/musb/musb_am335x.c
@@ -21,6 +21,7 @@ static __maybe_unused struct of_device_id am335x_child_dt_ids[] = {
 		/* sentinel */
 	},
 };
+MODULE_DEVICE_TABLE(of, am335x_child_dt_ids);
 
 static struct driver am335x_child_driver = {
 	.name   = "am335x_child_probe",
diff --git a/drivers/usb/musb/musb_dsps.c b/drivers/usb/musb/musb_dsps.c
index b6777607964e..97b64302eccf 100644
--- a/drivers/usb/musb/musb_dsps.c
+++ b/drivers/usb/musb/musb_dsps.c
@@ -428,6 +428,7 @@ static __maybe_unused struct of_device_id musb_dsps_dt_ids[] = {
 		/* sentinel */
 	},
 };
+MODULE_DEVICE_TABLE(of, musb_dsps_dt_ids);
 
 static struct driver dsps_usbss_driver = {
 	.name   = "musb-dsps",
diff --git a/drivers/usb/musb/phy-am335x-control.c b/drivers/usb/musb/phy-am335x-control.c
index c468c76f21e9..313c67ef7ec2 100644
--- a/drivers/usb/musb/phy-am335x-control.c
+++ b/drivers/usb/musb/phy-am335x-control.c
@@ -102,6 +102,7 @@ static __maybe_unused struct of_device_id omap_control_usb_dt_ids[] = {
 		/* sentinel */
 	},
 };
+MODULE_DEVICE_TABLE(of, omap_control_usb_dt_ids);
 
 struct phy_control *am335x_get_phy_control(struct device *dev)
 {
diff --git a/drivers/usb/musb/phy-am335x.c b/drivers/usb/musb/phy-am335x.c
index b13668264262..f2a12182e021 100644
--- a/drivers/usb/musb/phy-am335x.c
+++ b/drivers/usb/musb/phy-am335x.c
@@ -72,6 +72,7 @@ static __maybe_unused struct of_device_id am335x_phy_dt_ids[] = {
 		/* sentinel */
 	},
 };
+MODULE_DEVICE_TABLE(of, am335x_phy_dt_ids);
 
 static struct driver am335x_phy_driver = {
 	.name   = "am335x-phy-driver",
diff --git a/drivers/video/atmel_lcdfb.c b/drivers/video/atmel_lcdfb.c
index 2d95a37722db..5d8dc8f8b94a 100644
--- a/drivers/video/atmel_lcdfb.c
+++ b/drivers/video/atmel_lcdfb.c
@@ -263,6 +263,7 @@ static __maybe_unused struct of_device_id atmel_lcdfb_compatible[] = {
 	{ .compatible = "atmel,at32ap-lcdc",		.data = &at32ap_config, },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, atmel_lcdfb_compatible);
 
 static struct driver atmel_lcdc_driver = {
 	.name	= "atmel_lcdfb",
diff --git a/drivers/video/backlight-pwm.c b/drivers/video/backlight-pwm.c
index 85c7ba0d5a14..87358ca778ec 100644
--- a/drivers/video/backlight-pwm.c
+++ b/drivers/video/backlight-pwm.c
@@ -209,6 +209,7 @@ static struct of_device_id backlight_pwm_of_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, backlight_pwm_of_ids);
 
 static struct driver backlight_pwm_of_driver = {
 	.name  = "pwm-backlight",
diff --git a/drivers/video/imx-ipu-v3/imx-hdmi.c b/drivers/video/imx-ipu-v3/imx-hdmi.c
index 06fa929352d0..2d5fd9866618 100644
--- a/drivers/video/imx-ipu-v3/imx-hdmi.c
+++ b/drivers/video/imx-ipu-v3/imx-hdmi.c
@@ -1197,6 +1197,7 @@ static struct of_device_id dw_hdmi_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, dw_hdmi_dt_ids);
 
 static int dw_hdmi_get_modes(struct dw_hdmi *hdmi, struct display_timings *timings)
 {
diff --git a/drivers/video/imx-ipu-v3/imx-ldb.c b/drivers/video/imx-ipu-v3/imx-ldb.c
index 4a24a3479af4..3ed6d44f5be6 100644
--- a/drivers/video/imx-ipu-v3/imx-ldb.c
+++ b/drivers/video/imx-ipu-v3/imx-ldb.c
@@ -403,6 +403,7 @@ static struct of_device_id imx_ldb_dt_ids[] = {
 	{ .compatible = "fsl,imx53-ldb", &imx_ldb_data_imx53},
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, imx_ldb_dt_ids);
 
 static struct driver imx_ldb_driver = {
 	.probe		= imx_ldb_probe,
diff --git a/drivers/video/imx-ipu-v3/imx-pd.c b/drivers/video/imx-ipu-v3/imx-pd.c
index 9308c20366eb..d8b5f90a6ca0 100644
--- a/drivers/video/imx-ipu-v3/imx-pd.c
+++ b/drivers/video/imx-ipu-v3/imx-pd.c
@@ -108,6 +108,7 @@ static struct of_device_id imx_pd_dt_ids[] = {
 	{ .compatible = "fsl,imx-parallel-display", },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, imx_pd_dt_ids);
 
 static struct driver imx_pd_driver = {
 	.probe			  = imx_pd_probe,
diff --git a/drivers/video/imx-ipu-v3/ipu-common.c b/drivers/video/imx-ipu-v3/ipu-common.c
index 576387dab321..4909119d87b7 100644
--- a/drivers/video/imx-ipu-v3/ipu-common.c
+++ b/drivers/video/imx-ipu-v3/ipu-common.c
@@ -609,6 +609,7 @@ static struct of_device_id imx_ipu_dt_ids[] = {
 	{ .compatible = "fsl,imx6q-ipu", .data = &ipu_type_imx6q, },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, imx_ipu_dt_ids);
 
 static int ipu_submodules_init(struct ipu_soc *ipu,
 		struct device *dev, void __iomem *ipu_base,
diff --git a/drivers/video/panel-ilitek-ili9341.c b/drivers/video/panel-ilitek-ili9341.c
index 7202773b5189..05976783cb61 100644
--- a/drivers/video/panel-ilitek-ili9341.c
+++ b/drivers/video/panel-ilitek-ili9341.c
@@ -528,6 +528,7 @@ static const struct of_device_id ili9341_of_match[] = {
 	},
 	{ }
 };
+MODULE_DEVICE_TABLE(of, ili9341_of_match);
 
 static struct driver ili9341_driver = {
 	.name = "panel-ilitek-ili9341",
diff --git a/drivers/video/rave-sp-backlight.c b/drivers/video/rave-sp-backlight.c
index 17053e0d210e..360b27eebb19 100644
--- a/drivers/video/rave-sp-backlight.c
+++ b/drivers/video/rave-sp-backlight.c
@@ -52,6 +52,7 @@ static const struct of_device_id rave_sp_backlight_of_match[] = {
 	{ .compatible = "zii,rave-sp-backlight" },
 	{}
 };
+MODULE_DEVICE_TABLE(of, rave_sp_backlight_of_match);
 
 static struct driver rave_sp_backlight_driver = {
 	.name  = "rave-sp-backlight",
diff --git a/drivers/video/simple-panel.c b/drivers/video/simple-panel.c
index 2fa7bf940c22..7048e2f51b1c 100644
--- a/drivers/video/simple-panel.c
+++ b/drivers/video/simple-panel.c
@@ -165,6 +165,7 @@ static struct of_device_id simple_panel_of_ids[] = {
 	{ .compatible = "simple-panel", },
 	{ }
 };
+MODULE_DEVICE_TABLE(of, simple_panel_of_ids);
 
 static struct driver simple_panel_driver = {
 	.name  = "simple-panel",
diff --git a/drivers/video/simplefb-client.c b/drivers/video/simplefb-client.c
index d4ce84cfb79d..dafec6178fe6 100644
--- a/drivers/video/simplefb-client.c
+++ b/drivers/video/simplefb-client.c
@@ -138,6 +138,7 @@ static const struct of_device_id simplefb_of_match[] = {
 	{ .compatible = "simple-framebuffer", },
 	{ },
 };
+MODULE_DEVICE_TABLE(of, simplefb_of_match);
 
 static struct driver simplefb_driver = {
 	.name = "simple-framebuffer",
diff --git a/drivers/video/ssd1307fb.c b/drivers/video/ssd1307fb.c
index 7d2769a228af..fb50e895c59a 100644
--- a/drivers/video/ssd1307fb.c
+++ b/drivers/video/ssd1307fb.c
@@ -423,6 +423,7 @@ static const struct of_device_id ssd1307fb_of_match[] = {
 	},
 	{},
 };
+MODULE_DEVICE_TABLE(of, ssd1307fb_of_match);
 
 static int ssd1307fb_probe(struct device *dev)
 {
diff --git a/drivers/video/stm.c b/drivers/video/stm.c
index 68ac4feed3b4..917405ea801f 100644
--- a/drivers/video/stm.c
+++ b/drivers/video/stm.c
@@ -581,6 +581,7 @@ static __maybe_unused struct of_device_id stmfb_compatible[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, stmfb_compatible);
 
 static struct driver stmfb_driver = {
 	.name	= "stmfb",
diff --git a/drivers/video/stm32_ltdc.c b/drivers/video/stm32_ltdc.c
index 855878593f79..b4940ab937ba 100644
--- a/drivers/video/stm32_ltdc.c
+++ b/drivers/video/stm32_ltdc.c
@@ -327,6 +327,7 @@ static __maybe_unused struct of_device_id ltdc_ids[] = {
 	{ .compatible = "st,stm32-ltdc" },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, ltdc_ids);
 
 static struct driver ltdc_driver = {
 	.name = "stm32-ltdc",
diff --git a/drivers/virtio/virtio_mmio.c b/drivers/virtio/virtio_mmio.c
index 3cfd63340f4e..5542674dd1bb 100644
--- a/drivers/virtio/virtio_mmio.c
+++ b/drivers/virtio/virtio_mmio.c
@@ -443,6 +443,7 @@ static const struct of_device_id virtio_mmio_match[] = {
 	{ .compatible = "virtio,mmio", },
 	{},
 };
+MODULE_DEVICE_TABLE(of, virtio_mmio_match);
 
 static struct driver virtio_mmio_driver = {
 	.probe		= virtio_mmio_probe,
diff --git a/drivers/w1/masters/w1-gpio.c b/drivers/w1/masters/w1-gpio.c
index 7f3c8a685471..10841e39dd13 100644
--- a/drivers/w1/masters/w1-gpio.c
+++ b/drivers/w1/masters/w1-gpio.c
@@ -150,6 +150,7 @@ static __maybe_unused const struct of_device_id w1_gpio_dt_ids[] = {
 	{ .compatible = "w1-gpio" },
 	{}
 };
+MODULE_DEVICE_TABLE(of, w1_gpio_dt_ids);
 
 static struct driver w1_gpio_driver = {
 	.name	= "w1-gpio",
diff --git a/drivers/watchdog/ar9344_wdt.c b/drivers/watchdog/ar9344_wdt.c
index f951ad8a5dd3..50e83fa6858b 100644
--- a/drivers/watchdog/ar9344_wdt.c
+++ b/drivers/watchdog/ar9344_wdt.c
@@ -124,6 +124,7 @@ static __maybe_unused struct of_device_id ar9344_wdt_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, ar9344_wdt_dt_ids);
 
 static struct driver ar9344_wdt_driver = {
 	.name   = "ar9344-wdt",
diff --git a/drivers/watchdog/at91sam9_wdt.c b/drivers/watchdog/at91sam9_wdt.c
index d5a83cbb856f..46bb98622907 100644
--- a/drivers/watchdog/at91sam9_wdt.c
+++ b/drivers/watchdog/at91sam9_wdt.c
@@ -95,6 +95,7 @@ static const __maybe_unused struct of_device_id at91sam9x_wdt_dt_ids[] = {
 	{ .compatible = "atmel,sama5d4-wdt", },
 	{ /* sentinel */ },
 };
+MODULE_DEVICE_TABLE(of, at91sam9x_wdt_dt_ids);
 
 static struct driver at91sam9x_wdt_driver = {
 	.name		= "at91sam9x-wdt",
diff --git a/drivers/watchdog/bcm2835_wdt.c b/drivers/watchdog/bcm2835_wdt.c
index a542488cc15e..874315d502a9 100644
--- a/drivers/watchdog/bcm2835_wdt.c
+++ b/drivers/watchdog/bcm2835_wdt.c
@@ -101,6 +101,7 @@ static __maybe_unused struct of_device_id bcm2835_wd_dt_ids[] = {
 		/* sentinel */
 	},
 };
+MODULE_DEVICE_TABLE(of, bcm2835_wd_dt_ids);
 
 static struct driver bcm2835_wd_driver = {
 	.name		= "bcm2835_wd",
diff --git a/drivers/watchdog/davinci_wdt.c b/drivers/watchdog/davinci_wdt.c
index 7494f1452e45..0b2df50c48f3 100644
--- a/drivers/watchdog/davinci_wdt.c
+++ b/drivers/watchdog/davinci_wdt.c
@@ -160,6 +160,7 @@ static __maybe_unused struct of_device_id davinci_wdt_of_match[] = {
 	{ .compatible = "ti,davinci-wdt", },
 	{},
 };
+MODULE_DEVICE_TABLE(of, davinci_wdt_of_match);
 
 static struct driver platform_wdt_driver = {
 	.name = "davinci-wdt",
diff --git a/drivers/watchdog/dw_wdt.c b/drivers/watchdog/dw_wdt.c
index fc0aca13cb70..178e0a29f1a8 100644
--- a/drivers/watchdog/dw_wdt.c
+++ b/drivers/watchdog/dw_wdt.c
@@ -196,6 +196,7 @@ static struct of_device_id dw_wdt_of_match[] = {
 	{ .compatible = "snps,dw-wdt", },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, dw_wdt_of_match);
 
 static struct driver dw_wdt_driver = {
 	.name		= "dw-wdt",
diff --git a/drivers/watchdog/gpio_wdt.c b/drivers/watchdog/gpio_wdt.c
index cf36bf9b2c72..2dbfbe4dd967 100644
--- a/drivers/watchdog/gpio_wdt.c
+++ b/drivers/watchdog/gpio_wdt.c
@@ -129,6 +129,7 @@ static const struct of_device_id gpio_wdt_dt_ids[] = {
 	{ .compatible = "linux,wdt-gpio", },
 	{ }
 };
+MODULE_DEVICE_TABLE(of, gpio_wdt_dt_ids);
 
 static struct driver gpio_wdt_driver = {
 	.name		= "gpio-wdt",
diff --git a/drivers/watchdog/im28wd.c b/drivers/watchdog/im28wd.c
index 226ef4c396c5..7df2e2d99506 100644
--- a/drivers/watchdog/im28wd.c
+++ b/drivers/watchdog/im28wd.c
@@ -227,6 +227,7 @@ static __maybe_unused struct of_device_id imx28_wdt_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, imx28_wdt_dt_ids);
 
 static struct driver imx28_wd_driver = {
 	.name   = "im28wd",
diff --git a/drivers/watchdog/imxwd.c b/drivers/watchdog/imxwd.c
index a8b231731d44..8f4de5a994e6 100644
--- a/drivers/watchdog/imxwd.c
+++ b/drivers/watchdog/imxwd.c
@@ -352,6 +352,7 @@ static __maybe_unused struct of_device_id imx_wdt_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, imx_wdt_dt_ids);
 
 static struct platform_device_id imx_wdt_ids[] = {
 	{
diff --git a/drivers/watchdog/jz4740.c b/drivers/watchdog/jz4740.c
index 91d78182d444..8b4b985cd409 100644
--- a/drivers/watchdog/jz4740.c
+++ b/drivers/watchdog/jz4740.c
@@ -89,6 +89,7 @@ static __maybe_unused struct of_device_id jz4740_wdt_dt_ids[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, jz4740_wdt_dt_ids);
 
 static struct driver jz4740_wdt_driver = {
 	.name   = "jz4740-wdt",
diff --git a/drivers/watchdog/kvx_wdt.c b/drivers/watchdog/kvx_wdt.c
index 68bf54d9015a..be6b08b71c21 100644
--- a/drivers/watchdog/kvx_wdt.c
+++ b/drivers/watchdog/kvx_wdt.c
@@ -83,6 +83,7 @@ static struct of_device_id kvx_wdt_of_match[] = {
 	{ .compatible = "kalray,kvx-core-watchdog", },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, kvx_wdt_of_match);
 
 static struct driver kvx_wdt_driver = {
 	.name		= "kvx-wdt",
diff --git a/drivers/watchdog/omap_wdt.c b/drivers/watchdog/omap_wdt.c
index 54fe17e14a0b..0ebc1172aa3d 100644
--- a/drivers/watchdog/omap_wdt.c
+++ b/drivers/watchdog/omap_wdt.c
@@ -191,6 +191,7 @@ static const struct of_device_id omap_wdt_of_match[] = {
 	{ .compatible = "ti,omap3-wdt", },
 	{},
 };
+MODULE_DEVICE_TABLE(of, omap_wdt_of_match);
 
 static struct driver omap_wdt_driver = {
 	.probe		= omap_wdt_probe,
diff --git a/drivers/watchdog/orion_wdt.c b/drivers/watchdog/orion_wdt.c
index 4d580fc74d81..227f8b7bb135 100644
--- a/drivers/watchdog/orion_wdt.c
+++ b/drivers/watchdog/orion_wdt.c
@@ -104,6 +104,7 @@ static const struct of_device_id orion_wdt_of_match[] = {
 		.compatible = "marvell,armada-xp-wdt",
 	}, { /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, orion_wdt_of_match);
 
 static struct driver orion_wdt_driver = {
 	.probe = orion_wdt_probe,
diff --git a/drivers/watchdog/rave-sp-wdt.c b/drivers/watchdog/rave-sp-wdt.c
index 1d083b86d7cf..b4fc18cb8b99 100644
--- a/drivers/watchdog/rave-sp-wdt.c
+++ b/drivers/watchdog/rave-sp-wdt.c
@@ -252,6 +252,7 @@ static const struct of_device_id rave_sp_wdt_of_match[] = {
 	},
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, rave_sp_wdt_of_match);
 
 static int rave_sp_wdt_set_boot_source(struct param_d *param, void *priv)
 {
diff --git a/drivers/watchdog/rn5t568_wdt.c b/drivers/watchdog/rn5t568_wdt.c
index d755020a1103..0357320822ff 100644
--- a/drivers/watchdog/rn5t568_wdt.c
+++ b/drivers/watchdog/rn5t568_wdt.c
@@ -137,6 +137,7 @@ static __maybe_unused const struct of_device_id rn5t568_wdt_of_match[] = {
 	{ .compatible = "ricoh,rn5t568-wdt" },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, rn5t568_wdt_of_match);
 
 static struct driver rn5t568_wdt_driver = {
 	.name  = "rn5t568-wdt",
diff --git a/drivers/watchdog/starfive_wdt.c b/drivers/watchdog/starfive_wdt.c
index 383661ac2660..90f1e0ae6b42 100644
--- a/drivers/watchdog/starfive_wdt.c
+++ b/drivers/watchdog/starfive_wdt.c
@@ -97,6 +97,7 @@ static struct of_device_id starfive_wdt_of_match[] = {
 	{ .compatible = "starfive,wdt", },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, starfive_wdt_of_match);
 
 static struct driver starfive_wdt_driver = {
 	.name		= "starfive-wdt",
diff --git a/drivers/watchdog/stm32_iwdg.c b/drivers/watchdog/stm32_iwdg.c
index 22e1a75841c4..6ac9e7d56e9e 100644
--- a/drivers/watchdog/stm32_iwdg.c
+++ b/drivers/watchdog/stm32_iwdg.c
@@ -125,6 +125,7 @@ static const struct of_device_id stm32_iwdg_of_match[] = {
 	{ .compatible = "st,stm32mp1-iwdg", .data = &stm32mp1_iwdg_data },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, stm32_iwdg_of_match);
 
 static int stm32_iwdg_probe(struct device *dev)
 {
diff --git a/drivers/watchdog/stpmic1_wdt.c b/drivers/watchdog/stpmic1_wdt.c
index f4a4aac59765..4bde4f4e203e 100644
--- a/drivers/watchdog/stpmic1_wdt.c
+++ b/drivers/watchdog/stpmic1_wdt.c
@@ -208,6 +208,7 @@ static __maybe_unused const struct of_device_id stpmic1_wdt_of_match[] = {
 	{ .compatible = "st,stpmic1-wdt" },
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, stpmic1_wdt_of_match);
 
 static struct driver stpmic1_wdt_driver = {
 	.name  = "stpmic1-wdt",
diff --git a/fs/pstore/ram.c b/fs/pstore/ram.c
index ba4f864b70ac..4732bd4e3154 100644
--- a/fs/pstore/ram.c
+++ b/fs/pstore/ram.c
@@ -675,6 +675,7 @@ static const struct of_device_id ramoops_dt_ids[] = {
 	{ .compatible = "ramoops" },
 	{ },
 };
+MODULE_DEVICE_TABLE(of, ramoops_dt_ids);
 
 static struct driver ramoops_driver = {
 	.name = "ramoops",
-- 
2.39.2



