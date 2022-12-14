Delivery-date: Wed, 14 Dec 2022 13:38:09 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p5R1U-003cxp-Mw
	for lore@lore.pengutronix.de; Wed, 14 Dec 2022 13:38:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p5R1L-0002Rv-40
	for lore@pengutronix.de; Wed, 14 Dec 2022 13:38:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yIjQ3kRBj4Z45NGUScIn9PpqdPlW2D75U+gpfKKkfFo=; b=CUvGphw8k2PRU8YS4LvMsAA0ar
	vSyrzlFt6YJ+LaqoJUgoQTkdsiacYK/E3Ax47EYTFXaP0G+ZgkKIXvAVNIxYm7YDNZXvZSeVmu/uL
	I5p/Bx+u11LQkcH3ujokh6feuXQ0K0eaQwimt0JimGQuLbdKoI2iLQx1pBy8ATdPZuWOmXqNjv75S
	ZU75gu8bRthraEDHylsfLegk+my3UZoHEN4O0OcDaLYH1mPHoIyiKTWEln4TSJFkc8dxxtQtuwaVN
	m+gA1+5rgIDmfUYSaLMZfts6608JBon9A9p34bb95Z6lx3z78tQJOnF2xg2if7OFWRCOyXVc777WT
	dfH6jbjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5Qz1-00GMOQ-8j; Wed, 14 Dec 2022 12:35:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5Qyj-00GMFN-8e
	for barebox@lists.infradead.org; Wed, 14 Dec 2022 12:35:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1p5Qyh-0001sX-Tg; Wed, 14 Dec 2022 13:35:16 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1p5Qyg-004TOL-GP; Wed, 14 Dec 2022 13:35:15 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1p5Qyf-000nNI-Pu; Wed, 14 Dec 2022 13:35:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 14 Dec 2022 13:35:10 +0100
Message-Id: <20221214123512.189688-4-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/5] Rename struct driver_d to driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The '_d' suffix was originally meant to distinguish barebox struct
names from Linux struct names. struct driver doesn't exist in Linux,
so we can rename it and remove the meaningless suffix.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/embest-marsboard/board.c         |  2 +-
 arch/arm/boards/freescale-mx6-sabrelite/board.c  |  2 +-
 arch/arm/boards/innocomm-imx8mm-wb15/board.c     |  2 +-
 arch/arm/boards/lxa-mc1/board.c                  |  2 +-
 arch/arm/boards/mnt-reform/board.c               |  2 +-
 arch/arm/boards/nxp-imx8mm-evk/board.c           |  2 +-
 arch/arm/boards/nxp-imx8mn-evk/board.c           |  2 +-
 arch/arm/boards/nxp-imx8mp-evk/board.c           |  2 +-
 arch/arm/boards/phytec-phycore-stm32mp1/board.c  |  2 +-
 arch/arm/boards/phytec-som-imx6/board.c          |  2 +-
 arch/arm/boards/pine64-quartz64/board.c          |  2 +-
 arch/arm/boards/protonic-imx6/board.c            |  2 +-
 arch/arm/boards/protonic-imx8m/board.c           |  2 +-
 arch/arm/boards/protonic-stm32mp1/board.c        |  2 +-
 arch/arm/boards/radxa-rock3/board.c              |  2 +-
 arch/arm/boards/raspberry-pi/rpi-common.c        |  2 +-
 .../arm/boards/rockchip-rk3568-bpi-r2pro/board.c |  2 +-
 arch/arm/boards/rockchip-rk3568-evb/board.c      |  2 +-
 arch/arm/boards/sama5d3_xplained/board.c         |  2 +-
 arch/arm/boards/seeed-odyssey/board.c            |  2 +-
 arch/arm/boards/skov-arm9cpu/board.c             |  2 +-
 arch/arm/boards/skov-imx6/board.c                |  2 +-
 arch/arm/boards/stm32mp15x-ev1/board.c           |  2 +-
 arch/arm/boards/stm32mp15xx-dkx/board.c          |  2 +-
 arch/arm/boards/tqma6ulx/board.c                 |  2 +-
 arch/arm/boards/tqma8mpxl/board.c                |  2 +-
 arch/arm/boards/vexpress/init.c                  |  2 +-
 arch/arm/boards/webasto-ccbv2/board.c            |  2 +-
 arch/arm/cpu/psci-client.c                       |  2 +-
 arch/arm/mach-at91/at91sam9_rst.c                |  2 +-
 arch/arm/mach-at91/ddramc.c                      |  2 +-
 arch/arm/mach-at91/sam9_smc.c                    |  2 +-
 arch/arm/mach-clps711x/clock.c                   |  2 +-
 arch/arm/mach-clps711x/common.c                  |  2 +-
 arch/arm/mach-imx/esdctl.c                       |  2 +-
 arch/arm/mach-imx/iim.c                          |  2 +-
 arch/arm/mach-imx/src.c                          |  2 +-
 arch/arm/mach-mxs/ocotp.c                        |  2 +-
 arch/arm/mach-omap/am33xx_scrm.c                 |  2 +-
 arch/arm/mach-stm32mp/ddrctrl.c                  |  2 +-
 arch/arm/mach-tegra/tegra20-pmc.c                |  2 +-
 arch/arm/mach-tegra/tegra20-timer.c              |  2 +-
 arch/arm/mach-zynqmp/firmware-zynqmp.c           |  2 +-
 arch/kvx/lib/poweroff.c                          |  2 +-
 arch/mips/mach-ar231x/ar231x_reset.c             |  2 +-
 arch/mips/mach-ath79/art.c                       |  2 +-
 arch/riscv/boards/beaglev/board.c                |  2 +-
 arch/riscv/boards/riscvemu/board.c               |  2 +-
 arch/riscv/cpu/core.c                            |  2 +-
 arch/sandbox/board/board.c                       |  2 +-
 arch/sandbox/board/hostfile.c                    |  2 +-
 arch/sandbox/board/led.c                         |  2 +-
 arch/sandbox/board/power.c                       |  2 +-
 arch/sandbox/board/watchdog.c                    |  2 +-
 commands/drvinfo.c                               |  2 +-
 commands/mount.c                                 |  2 +-
 common/boards/qemu-virt/board.c                  |  2 +-
 drivers/aiodev/am335x_adc.c                      |  2 +-
 drivers/aiodev/imx7d_adc.c                       |  2 +-
 drivers/aiodev/imx_thermal.c                     |  2 +-
 drivers/aiodev/lm75.c                            |  2 +-
 drivers/aiodev/qoriq_thermal.c                   |  2 +-
 drivers/aiodev/rockchip_saradc.c                 |  2 +-
 drivers/aiodev/st_gyro.c                         |  2 +-
 drivers/aiodev/stm32-adc-core.c                  |  2 +-
 drivers/aiodev/stm32-adc.c                       |  2 +-
 drivers/amba/bus.c                               |  2 +-
 drivers/ata/ahci.c                               |  2 +-
 drivers/ata/intf_platform_ide.c                  |  2 +-
 drivers/ata/pata-imx.c                           |  2 +-
 drivers/ata/sata-imx.c                           |  2 +-
 drivers/ata/sata_mv.c                            |  2 +-
 drivers/base/bus.c                               |  4 ++--
 drivers/base/driver.c                            | 12 ++++++------
 drivers/base/platform.c                          |  2 +-
 drivers/bus/acpi.c                               |  2 +-
 drivers/bus/imx-weim.c                           |  2 +-
 drivers/bus/omap-gpmc.c                          |  2 +-
 drivers/bus/ti-sysc.c                            |  2 +-
 drivers/clk/bcm/clk-bcm2835-aux.c                |  2 +-
 drivers/clk/clk-ar933x.c                         |  2 +-
 drivers/clk/clk-ar9344.c                         |  2 +-
 drivers/clk/clk-rpi.c                            |  2 +-
 drivers/clk/clk-stm32mp1.c                       |  2 +-
 drivers/clk/imx/clk-imx1.c                       |  2 +-
 drivers/clk/imx/clk-imx21.c                      |  2 +-
 drivers/clk/imx/clk-imx25.c                      |  2 +-
 drivers/clk/imx/clk-imx27.c                      |  2 +-
 drivers/clk/imx/clk-imx31.c                      |  2 +-
 drivers/clk/imx/clk-imx35.c                      |  2 +-
 drivers/clk/imx/clk-imx5.c                       |  6 +++---
 drivers/clk/imx/clk-imx6.c                       |  2 +-
 drivers/clk/imx/clk-imx6sl.c                     |  2 +-
 drivers/clk/imx/clk-imx6sx.c                     |  2 +-
 drivers/clk/imx/clk-imx6ul.c                     |  2 +-
 drivers/clk/imx/clk-imx7.c                       |  2 +-
 drivers/clk/loongson/clk-ls1b200.c               |  2 +-
 drivers/clk/mvebu/common.c                       |  4 ++--
 drivers/clk/mvebu/corediv.c                      |  2 +-
 drivers/clk/mxs/clk-imx23.c                      |  2 +-
 drivers/clk/mxs/clk-imx28.c                      |  2 +-
 drivers/clk/rockchip/clk-rk3399.c                |  2 +-
 drivers/clk/rockchip/clk-rk3568.c                |  2 +-
 drivers/clk/sifive/sifive-prci.c                 |  2 +-
 drivers/clk/socfpga/clk.c                        |  2 +-
 drivers/clk/starfive/jh7100-clkgen.c             |  2 +-
 drivers/clk/tegra/clk-tegra124.c                 |  2 +-
 drivers/clk/tegra/clk-tegra20.c                  |  2 +-
 drivers/clk/tegra/clk-tegra30.c                  |  2 +-
 drivers/clk/zynq/clkc.c                          |  2 +-
 drivers/clk/zynqmp/clkc.c                        |  2 +-
 drivers/clocksource/arm_architected_timer.c      |  2 +-
 drivers/clocksource/arm_global_timer.c           |  2 +-
 drivers/clocksource/arm_smp_twd.c                |  2 +-
 drivers/clocksource/armv7m_systick.c             |  2 +-
 drivers/clocksource/bcm2835.c                    |  2 +-
 drivers/clocksource/clps711x.c                   |  2 +-
 drivers/clocksource/digic.c                      |  2 +-
 drivers/clocksource/dw_apb_timer.c               |  2 +-
 drivers/clocksource/efi.c                        |  2 +-
 drivers/clocksource/efi_x86.c                    |  2 +-
 drivers/clocksource/kvx_timer.c                  |  2 +-
 drivers/clocksource/mvebu.c                      |  2 +-
 drivers/clocksource/nomadik.c                    |  2 +-
 drivers/clocksource/orion.c                      |  2 +-
 drivers/clocksource/rk_timer.c                   |  2 +-
 drivers/clocksource/timer-atmel-pit.c            |  2 +-
 drivers/clocksource/timer-clint.c                |  2 +-
 drivers/clocksource/timer-imx-gpt.c              |  2 +-
 drivers/clocksource/timer-riscv.c                |  2 +-
 drivers/clocksource/timer-stm32.c                |  2 +-
 drivers/clocksource/timer-ti-32k.c               |  2 +-
 drivers/clocksource/timer-ti-dm.c                |  2 +-
 drivers/clocksource/uemd.c                       |  2 +-
 drivers/crypto/caam/ctrl.c                       |  2 +-
 drivers/crypto/imx-scc/scc.c                     |  2 +-
 drivers/dma/apbh_dma.c                           |  2 +-
 drivers/eeprom/at24.c                            |  2 +-
 drivers/eeprom/at25.c                            |  2 +-
 drivers/efi/efi-device.c                         |  6 +++---
 drivers/firmware/altera_serial.c                 |  2 +-
 drivers/firmware/arm_scmi/bus.c                  |  2 +-
 drivers/firmware/arm_scmi/driver.c               |  2 +-
 drivers/firmware/socfpga.c                       |  2 +-
 drivers/firmware/zynqmp-fpga.c                   |  2 +-
 drivers/fpga/socfpga-fpga2sdram-bridge.c         |  2 +-
 drivers/fpga/socfpga-hps2fpga-bridge.c           |  2 +-
 drivers/gpio/gpio-74164.c                        |  2 +-
 drivers/gpio/gpio-74xx-mmio.c                    |  2 +-
 drivers/gpio/gpio-ath79.c                        |  2 +-
 drivers/gpio/gpio-clps711x.c                     |  2 +-
 drivers/gpio/gpio-davinci.c                      |  2 +-
 drivers/gpio/gpio-digic.c                        |  2 +-
 drivers/gpio/gpio-dw.c                           |  2 +-
 drivers/gpio/gpio-generic.c                      |  2 +-
 drivers/gpio/gpio-imx.c                          |  2 +-
 drivers/gpio/gpio-jz4740.c                       |  2 +-
 drivers/gpio/gpio-latch.c                        |  2 +-
 drivers/gpio/gpio-libftdi1.c                     |  2 +-
 drivers/gpio/gpio-malta-fpga-i2c.c               |  2 +-
 drivers/gpio/gpio-mpc8xxx.c                      |  2 +-
 drivers/gpio/gpio-mxs.c                          |  2 +-
 drivers/gpio/gpio-omap.c                         |  2 +-
 drivers/gpio/gpio-orion.c                        |  2 +-
 drivers/gpio/gpio-pca953x.c                      |  2 +-
 drivers/gpio/gpio-pcf857x.c                      |  2 +-
 drivers/gpio/gpio-raspberrypi-exp.c              |  2 +-
 drivers/gpio/gpio-sifive.c                       |  2 +-
 drivers/gpio/gpio-starfive-vic.c                 |  2 +-
 drivers/gpio/gpio-stmpe.c                        |  2 +-
 drivers/gpio/gpio-sx150x.c                       |  2 +-
 drivers/gpio/gpio-tegra.c                        |  2 +-
 drivers/gpio/gpio-vf610.c                        |  2 +-
 drivers/gpio/gpio-zynq.c                         |  2 +-
 drivers/hw_random/dev-random.c                   |  2 +-
 drivers/hw_random/mxc-rngc.c                     |  2 +-
 drivers/hw_random/starfive-vic-rng.c             |  2 +-
 drivers/hw_random/stm32-rng.c                    |  2 +-
 drivers/i2c/busses/i2c-at91.c                    |  2 +-
 drivers/i2c/busses/i2c-bcm283x.c                 |  2 +-
 drivers/i2c/busses/i2c-cadence.c                 |  2 +-
 drivers/i2c/busses/i2c-designware.c              |  2 +-
 drivers/i2c/busses/i2c-gpio.c                    |  2 +-
 drivers/i2c/busses/i2c-imx.c                     |  2 +-
 drivers/i2c/busses/i2c-mv64xxx.c                 |  2 +-
 drivers/i2c/busses/i2c-omap.c                    |  2 +-
 drivers/i2c/busses/i2c-rockchip.c                |  2 +-
 drivers/i2c/busses/i2c-stm32.c                   |  2 +-
 drivers/i2c/busses/i2c-tegra.c                   |  2 +-
 drivers/i2c/busses/i2c-versatile.c               |  2 +-
 drivers/i2c/muxes/i2c-mux-pca954x.c              |  2 +-
 drivers/input/gpio_keys.c                        |  2 +-
 drivers/input/imx_keypad.c                       |  2 +-
 drivers/input/qt1070.c                           |  2 +-
 drivers/input/twl6030_pwrbtn.c                   |  2 +-
 drivers/led/led-gpio.c                           |  2 +-
 drivers/led/led-pca955x.c                        |  2 +-
 drivers/led/led-pwm.c                            |  2 +-
 drivers/mci/arasan-sdhci.c                       |  2 +-
 drivers/mci/atmel-sdhci.c                        |  2 +-
 drivers/mci/atmel_mci.c                          |  2 +-
 drivers/mci/bcm2835-sdhost.c                     |  2 +-
 drivers/mci/dove-sdhci.c                         |  2 +-
 drivers/mci/dw_mmc.c                             |  2 +-
 drivers/mci/imx-esdhc.c                          |  2 +-
 drivers/mci/imx.c                                |  2 +-
 drivers/mci/mci-bcm2835.c                        |  2 +-
 drivers/mci/mci_spi.c                            |  2 +-
 drivers/mci/mxs.c                                |  2 +-
 drivers/mci/omap_hsmmc.c                         |  2 +-
 drivers/mci/pxamci.c                             |  2 +-
 drivers/mci/rockchip-dwcmshc-sdhci.c             |  2 +-
 drivers/mci/s3c.c                                |  2 +-
 drivers/mci/tegra-sdmmc.c                        |  2 +-
 drivers/memory/mc-tegra124.c                     |  2 +-
 drivers/mfd/act8846.c                            |  2 +-
 drivers/mfd/atmel-flexcom.c                      |  2 +-
 drivers/mfd/axp20x-i2c.c                         |  2 +-
 drivers/mfd/da9053.c                             |  2 +-
 drivers/mfd/da9063.c                             |  2 +-
 drivers/mfd/lp3972.c                             |  2 +-
 drivers/mfd/mc13xxx.c                            |  4 ++--
 drivers/mfd/mc34704.c                            |  2 +-
 drivers/mfd/mc9sdz60.c                           |  2 +-
 drivers/mfd/rave-sp.c                            |  2 +-
 drivers/mfd/rk808.c                              |  2 +-
 drivers/mfd/rn5t568.c                            |  2 +-
 drivers/mfd/stm32-timers.c                       |  2 +-
 drivers/mfd/stmpe-i2c.c                          |  2 +-
 drivers/mfd/stpmic1.c                            |  2 +-
 drivers/mfd/syscon.c                             |  2 +-
 drivers/mfd/twl4030.c                            |  2 +-
 drivers/mfd/twl6030.c                            |  2 +-
 drivers/misc/jtag.c                              |  2 +-
 drivers/misc/mem.c                               |  2 +-
 drivers/misc/sram.c                              |  2 +-
 drivers/misc/starfive-pwrseq.c                   |  2 +-
 drivers/misc/state.c                             |  2 +-
 drivers/misc/storage-by-uuid.c                   |  2 +-
 drivers/misc/ubootvar.c                          |  2 +-
 drivers/mtd/devices/docg3.c                      |  2 +-
 drivers/mtd/devices/m25p80.c                     |  2 +-
 drivers/mtd/devices/mtd_dataflash.c              |  2 +-
 drivers/mtd/devices/mtdram.c                     |  2 +-
 drivers/mtd/nand/atmel_nand.c                    |  2 +-
 drivers/mtd/nand/nand_denali_dt.c                |  2 +-
 drivers/mtd/nand/nand_fsl_ifc.c                  |  2 +-
 drivers/mtd/nand/nand_imx.c                      |  2 +-
 drivers/mtd/nand/nand_mrvl_nfc.c                 |  2 +-
 drivers/mtd/nand/nand_mxs.c                      |  2 +-
 drivers/mtd/nand/nand_omap_gpmc.c                |  2 +-
 drivers/mtd/nand/nand_orion.c                    |  2 +-
 drivers/mtd/nand/nand_s3c24xx.c                  |  2 +-
 drivers/mtd/nand/nomadik_nand.c                  |  2 +-
 drivers/mtd/nand/omap_elm.c                      |  2 +-
 drivers/mtd/nor/cfi_flash.c                      |  2 +-
 drivers/mtd/spi-nor/cadence-quadspi.c            |  2 +-
 drivers/net/ag71xx.c                             |  2 +-
 drivers/net/ar231x.c                             |  2 +-
 drivers/net/arc_emac.c                           |  2 +-
 drivers/net/at91_ether.c                         |  2 +-
 drivers/net/bcmgenet.c                           |  2 +-
 drivers/net/cpsw.c                               |  4 ++--
 drivers/net/cs8900.c                             |  2 +-
 drivers/net/davinci_emac.c                       |  4 ++--
 drivers/net/designware_generic.c                 |  2 +-
 drivers/net/designware_rockchip.c                |  2 +-
 drivers/net/designware_socfpga.c                 |  2 +-
 drivers/net/designware_starfive.c                |  2 +-
 drivers/net/designware_stm32.c                   |  2 +-
 drivers/net/designware_tegra186.c                |  2 +-
 drivers/net/dm9k.c                               |  2 +-
 drivers/net/enc28j60.c                           |  2 +-
 drivers/net/ep93xx.c                             |  2 +-
 drivers/net/ethoc.c                              |  2 +-
 drivers/net/fec_imx.c                            |  2 +-
 drivers/net/fec_mpc5200.c                        |  2 +-
 drivers/net/fsl-fman.c                           | 10 +++++-----
 drivers/net/gianfar.c                            |  6 +++---
 drivers/net/ks8851_mll.c                         |  2 +-
 drivers/net/ksz8864rmn.c                         |  2 +-
 drivers/net/ksz9477.c                            |  2 +-
 drivers/net/liteeth.c                            |  2 +-
 drivers/net/macb.c                               |  2 +-
 drivers/net/mvneta.c                             |  2 +-
 drivers/net/orion-gbe.c                          |  2 +-
 drivers/net/phy/mdio-gpio.c                      |  2 +-
 drivers/net/phy/mdio-mux-gpio.c                  |  2 +-
 drivers/net/phy/mdio-mvebu.c                     |  2 +-
 drivers/net/phy/mdio_bus.c                       |  2 +-
 drivers/net/phy/mv88e6xxx/chip.c                 |  2 +-
 drivers/net/sja1105.c                            |  2 +-
 drivers/net/smc91111.c                           |  2 +-
 drivers/net/smc911x.c                            |  2 +-
 drivers/net/tap.c                                |  2 +-
 drivers/nvmem/bsec.c                             |  2 +-
 drivers/nvmem/eeprom_93xx46.c                    |  2 +-
 drivers/nvmem/kvx-otp-nv.c                       |  2 +-
 drivers/nvmem/ocotp.c                            |  2 +-
 drivers/nvmem/rave-sp-eeprom.c                   |  2 +-
 drivers/nvmem/rmem.c                             |  2 +-
 drivers/nvmem/snvs_lpgpr.c                       |  2 +-
 drivers/nvmem/starfive-otp.c                     |  2 +-
 drivers/of/barebox.c                             |  2 +-
 drivers/of/base.c                                |  2 +-
 drivers/of/platform.c                            |  2 +-
 drivers/pci/bus.c                                |  4 ++--
 drivers/pci/pci-ecam-generic.c                   |  2 +-
 drivers/pci/pci-imx6.c                           |  2 +-
 drivers/pci/pci-layerscape.c                     |  2 +-
 drivers/pci/pci-mvebu.c                          |  2 +-
 drivers/pci/pci-tegra.c                          |  2 +-
 drivers/phy/freescale/phy-fsl-imx8mq-usb.c       |  2 +-
 drivers/phy/phy-stm32-usbphyc.c                  |  2 +-
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c    |  2 +-
 .../phy/rockchip/phy-rockchip-naneng-combphy.c   |  2 +-
 drivers/phy/usb-nop-xceiv.c                      |  2 +-
 drivers/pinctrl/imx-iomux-v1.c                   |  2 +-
 drivers/pinctrl/imx-iomux-v2.c                   |  2 +-
 drivers/pinctrl/imx-iomux-v3.c                   |  2 +-
 drivers/pinctrl/mvebu/armada-370.c               |  2 +-
 drivers/pinctrl/mvebu/armada-xp.c                |  2 +-
 drivers/pinctrl/mvebu/dove.c                     |  2 +-
 drivers/pinctrl/mvebu/kirkwood.c                 |  2 +-
 drivers/pinctrl/pinctrl-at91-pio4.c              |  2 +-
 drivers/pinctrl/pinctrl-at91.c                   |  4 ++--
 drivers/pinctrl/pinctrl-bcm2835.c                |  2 +-
 drivers/pinctrl/pinctrl-mxs.c                    |  2 +-
 drivers/pinctrl/pinctrl-rockchip.c               |  4 ++--
 drivers/pinctrl/pinctrl-single.c                 |  2 +-
 drivers/pinctrl/pinctrl-stm32.c                  |  2 +-
 drivers/pinctrl/pinctrl-tegra-xusb.c             |  2 +-
 drivers/pinctrl/pinctrl-tegra20.c                |  2 +-
 drivers/pinctrl/pinctrl-tegra30.c                |  2 +-
 drivers/pinctrl/pinctrl-vf610.c                  |  2 +-
 drivers/power/reset/gpio-poweroff.c              |  2 +-
 drivers/power/reset/gpio-restart.c               |  2 +-
 drivers/power/reset/htif-poweroff.c              |  2 +-
 drivers/power/reset/nvmem-reboot-mode.c          |  2 +-
 drivers/power/reset/syscon-poweroff.c            |  2 +-
 drivers/power/reset/syscon-reboot-mode.c         |  2 +-
 drivers/power/reset/syscon-reboot.c              |  2 +-
 drivers/pwm/pwm-atmel.c                          |  2 +-
 drivers/pwm/pwm-imx.c                            |  2 +-
 drivers/pwm/pwm-mxs.c                            |  2 +-
 drivers/pwm/pwm-stm32.c                          |  2 +-
 drivers/pwm/pxa_pwm.c                            |  2 +-
 drivers/regulator/anatop-regulator.c             |  2 +-
 drivers/regulator/bcm2835.c                      |  2 +-
 drivers/regulator/fixed.c                        |  2 +-
 drivers/regulator/pfuze.c                        |  2 +-
 drivers/regulator/rk808-regulator.c              |  2 +-
 drivers/regulator/stm32-pwr.c                    |  2 +-
 drivers/regulator/stm32-vrefbuf.c                |  2 +-
 drivers/regulator/stpmic1_regulator.c            |  2 +-
 drivers/remoteproc/imx_rproc.c                   |  2 +-
 drivers/remoteproc/stm32_rproc.c                 |  2 +-
 drivers/reset/reset-imx7.c                       |  2 +-
 drivers/reset/reset-simple.c                     |  2 +-
 drivers/reset/reset-socfpga.c                    |  2 +-
 drivers/reset/reset-starfive-vic.c               |  2 +-
 drivers/rtc/rtc-abracon.c                        |  2 +-
 drivers/rtc/rtc-ds1307.c                         |  2 +-
 drivers/rtc/rtc-imxdi.c                          |  2 +-
 drivers/rtc/rtc-jz4740.c                         |  2 +-
 drivers/rtc/rtc-pcf85363.c                       |  2 +-
 drivers/serial/arm_dcc.c                         |  2 +-
 drivers/serial/atmel.c                           |  2 +-
 drivers/serial/efi-stdio.c                       |  2 +-
 drivers/serial/linux_console.c                   |  2 +-
 drivers/serial/serial_altera.c                   |  2 +-
 drivers/serial/serial_altera_jtag.c              |  2 +-
 drivers/serial/serial_ar933x.c                   |  2 +-
 drivers/serial/serial_auart.c                    |  2 +-
 drivers/serial/serial_cadence.c                  |  2 +-
 drivers/serial/serial_clps711x.c                 |  2 +-
 drivers/serial/serial_digic.c                    |  2 +-
 drivers/serial/serial_imx.c                      |  2 +-
 drivers/serial/serial_litex.c                    |  2 +-
 drivers/serial/serial_lpuart.c                   |  2 +-
 drivers/serial/serial_mpc5xxx.c                  |  2 +-
 drivers/serial/serial_ns16550.c                  |  2 +-
 drivers/serial/serial_omap4_usbboot.c            |  2 +-
 drivers/serial/serial_pl010.c                    |  2 +-
 drivers/serial/serial_pxa.c                      |  2 +-
 drivers/serial/serial_s3c.c                      |  2 +-
 drivers/serial/serial_sbi.c                      |  2 +-
 drivers/serial/serial_sifive.c                   |  2 +-
 drivers/serial/serial_stm32.c                    |  2 +-
 drivers/serial/stm-serial.c                      |  2 +-
 drivers/soc/imx/gpcv2.c                          |  4 ++--
 drivers/soc/kvx/kvx_socinfo.c                    |  2 +-
 drivers/soc/rockchip/io-domain.c                 |  2 +-
 drivers/soc/sifive/sifive_l2_cache.c             |  2 +-
 drivers/sound/gpio-beeper.c                      |  2 +-
 drivers/sound/pwm-beeper.c                       |  2 +-
 drivers/sound/sdl.c                              |  2 +-
 drivers/spi/altera_spi.c                         |  2 +-
 drivers/spi/ath79_spi.c                          |  2 +-
 drivers/spi/atmel-quadspi.c                      |  2 +-
 drivers/spi/atmel_spi.c                          |  2 +-
 drivers/spi/dspi_spi.c                           |  2 +-
 drivers/spi/gpio_spi.c                           |  2 +-
 drivers/spi/imx_spi.c                            |  2 +-
 drivers/spi/litex_spiflash.c                     |  2 +-
 drivers/spi/mvebu_spi.c                          |  2 +-
 drivers/spi/mxs_spi.c                            |  2 +-
 drivers/spi/omap3_spi.c                          |  2 +-
 drivers/spi/spi-fsl-dspi.c                       |  2 +-
 drivers/spi/spi-fsl-qspi.c                       |  2 +-
 drivers/spi/spi-nxp-fspi.c                       |  2 +-
 drivers/spi/spi-sifive.c                         |  2 +-
 drivers/spi/stm32_spi.c                          |  2 +-
 drivers/spi/zynq_qspi.c                          |  2 +-
 drivers/usb/core/usb.c                           |  2 +-
 drivers/usb/dwc2/dwc2.c                          |  2 +-
 drivers/usb/dwc3/core.c                          |  2 +-
 drivers/usb/dwc3/dwc3-of-simple.c                |  2 +-
 drivers/usb/gadget/at91_udc.c                    |  2 +-
 drivers/usb/gadget/fsl_udc.c                     |  2 +-
 drivers/usb/gadget/pxa27x_udc.c                  |  2 +-
 drivers/usb/host/ehci-atmel.c                    |  2 +-
 drivers/usb/host/ehci-hcd.c                      |  2 +-
 drivers/usb/host/ohci-at91.c                     |  2 +-
 drivers/usb/host/ohci-hcd.c                      |  2 +-
 drivers/usb/host/xhci.c                          |  2 +-
 drivers/usb/imx/chipidea-imx.c                   |  2 +-
 drivers/usb/imx/imx-usb-misc.c                   |  2 +-
 drivers/usb/imx/imx-usb-phy.c                    |  2 +-
 drivers/usb/misc/usb251xb.c                      |  2 +-
 drivers/usb/musb/musb_am335x.c                   |  2 +-
 drivers/usb/musb/musb_dsps.c                     |  2 +-
 drivers/usb/musb/phy-am335x-control.c            |  2 +-
 drivers/usb/musb/phy-am335x.c                    |  2 +-
 drivers/video/atmel_hlcdfb.c                     |  2 +-
 drivers/video/atmel_lcdfb.c                      |  2 +-
 drivers/video/backlight-pwm.c                    |  2 +-
 drivers/video/bcm2835.c                          |  2 +-
 drivers/video/imx-ipu-fb.c                       |  2 +-
 drivers/video/imx-ipu-v3/imx-hdmi.c              |  2 +-
 drivers/video/imx-ipu-v3/imx-ldb.c               |  2 +-
 drivers/video/imx-ipu-v3/imx-pd.c                |  2 +-
 drivers/video/imx-ipu-v3/ipu-common.c            |  2 +-
 drivers/video/imx-ipu-v3/ipufb.c                 |  2 +-
 drivers/video/imx.c                              |  2 +-
 drivers/video/mtl017.c                           |  2 +-
 drivers/video/omap.c                             |  2 +-
 drivers/video/panel-ilitek-ili9341.c             |  2 +-
 drivers/video/pxa.c                              |  2 +-
 drivers/video/rave-sp-backlight.c                |  2 +-
 drivers/video/s3c24xx.c                          |  2 +-
 drivers/video/sdl.c                              |  2 +-
 drivers/video/simple-panel.c                     |  2 +-
 drivers/video/simplefb-client.c                  |  2 +-
 drivers/video/ssd1307fb.c                        |  4 ++--
 drivers/video/stm.c                              |  2 +-
 drivers/video/stm32_ltdc.c                       |  2 +-
 drivers/video/tc358767.c                         |  2 +-
 drivers/virtio/virtio.c                          |  2 +-
 drivers/virtio/virtio_mmio.c                     |  2 +-
 drivers/w1/masters/w1-gpio.c                     |  2 +-
 drivers/w1/w1.c                                  |  2 +-
 drivers/w1/w1.h                                  |  2 +-
 drivers/watchdog/ar9344_wdt.c                    |  2 +-
 drivers/watchdog/at91sam9_wdt.c                  |  2 +-
 drivers/watchdog/bcm2835_wdt.c                   |  2 +-
 drivers/watchdog/davinci_wdt.c                   |  2 +-
 drivers/watchdog/dw_wdt.c                        |  2 +-
 drivers/watchdog/efi_wdt.c                       |  2 +-
 drivers/watchdog/f71808e_wdt.c                   |  2 +-
 drivers/watchdog/gpio_wdt.c                      |  2 +-
 drivers/watchdog/im28wd.c                        |  2 +-
 drivers/watchdog/imxwd.c                         |  2 +-
 drivers/watchdog/jz4740.c                        |  2 +-
 drivers/watchdog/kvx_wdt.c                       |  2 +-
 drivers/watchdog/omap_wdt.c                      |  2 +-
 drivers/watchdog/orion_wdt.c                     |  2 +-
 drivers/watchdog/rave-sp-wdt.c                   |  2 +-
 drivers/watchdog/rn5t568_wdt.c                   |  2 +-
 drivers/watchdog/starfive_wdt.c                  |  2 +-
 drivers/watchdog/stm32_iwdg.c                    |  2 +-
 drivers/watchdog/stpmic1_wdt.c                   |  2 +-
 fs/fs.c                                          |  6 +++---
 fs/pstore/ram.c                                  |  2 +-
 include/acpi.h                                   |  4 ++--
 include/driver.h                                 | 16 ++++++++--------
 include/efi/efi-device.h                         |  4 ++--
 include/fs.h                                     |  2 +-
 include/i2c/i2c.h                                |  2 +-
 include/linux/amba/bus.h                         |  2 +-
 include/linux/pci.h                              |  2 +-
 include/linux/phy.h                              |  2 +-
 include/linux/scmi_protocol.h                    |  2 +-
 include/linux/spi/spi-mem.h                      |  2 +-
 include/linux/virtio.h                           |  4 ++--
 include/of.h                                     |  4 ++--
 include/of_device.h                              |  2 +-
 include/spi/spi.h                                |  2 +-
 include/usb/gadget.h                             |  2 +-
 include/usb/usb.h                                |  2 +-
 500 files changed, 538 insertions(+), 538 deletions(-)

diff --git a/arch/arm/boards/embest-marsboard/board.c b/arch/arm/boards/embest-marsboard/board.c
index 545934648c..028e1d7bb1 100644
--- a/arch/arm/boards/embest-marsboard/board.c
+++ b/arch/arm/boards/embest-marsboard/board.c
@@ -53,7 +53,7 @@ static const struct of_device_id marsboard_of_match[] = {
 };
 BAREBOX_DEEP_PROBE_ENABLE(marsboard_of_match);
 
-static struct driver_d marsboard_driver = {
+static struct driver marsboard_driver = {
 	.name = "board-mars",
 	.probe = marsboard_device_init,
 	.of_compatible = marsboard_of_match,
diff --git a/arch/arm/boards/freescale-mx6-sabrelite/board.c b/arch/arm/boards/freescale-mx6-sabrelite/board.c
index 6b4c9d9f5a..8700c9faf4 100644
--- a/arch/arm/boards/freescale-mx6-sabrelite/board.c
+++ b/arch/arm/boards/freescale-mx6-sabrelite/board.c
@@ -159,7 +159,7 @@ static const struct of_device_id sabrelite_match[] = {
 	{ /* Sentinel */ },
 };
 
-static struct driver_d sabrelite_driver = {
+static struct driver sabrelite_driver = {
 	.name = "physom-imx6",
 	.probe = sabrelite_probe,
 	.of_compatible = sabrelite_match,
diff --git a/arch/arm/boards/innocomm-imx8mm-wb15/board.c b/arch/arm/boards/innocomm-imx8mm-wb15/board.c
index 44941c5a31..e647200b83 100644
--- a/arch/arm/boards/innocomm-imx8mm-wb15/board.c
+++ b/arch/arm/boards/innocomm-imx8mm-wb15/board.c
@@ -32,7 +32,7 @@ static const struct of_device_id innocomm_wb15_evk_of_match[] = {
 };
 BAREBOX_DEEP_PROBE_ENABLE(innocomm_wb15_evk_of_match);
 
-static struct driver_d innocomm_wb15_evkboard_driver = {
+static struct driver innocomm_wb15_evkboard_driver = {
 	.name = "board-innocomm-wb15-evk",
 	.probe = innocomm_wb15_evk_probe,
 	.of_compatible = DRV_OF_COMPAT(innocomm_wb15_evk_of_match),
diff --git a/arch/arm/boards/lxa-mc1/board.c b/arch/arm/boards/lxa-mc1/board.c
index b50c1af0be..3e8158c9b5 100644
--- a/arch/arm/boards/lxa-mc1/board.c
+++ b/arch/arm/boards/lxa-mc1/board.c
@@ -61,7 +61,7 @@ static const struct of_device_id mc1_of_match[] = {
 };
 BAREBOX_DEEP_PROBE_ENABLE(mc1_of_match);
 
-static struct driver_d mc1_board_driver = {
+static struct driver mc1_board_driver = {
 	.name = "board-lxa-mc1",
 	.probe = mc1_probe,
 	.of_compatible = mc1_of_match,
diff --git a/arch/arm/boards/mnt-reform/board.c b/arch/arm/boards/mnt-reform/board.c
index f37798b995..e8a406f777 100644
--- a/arch/arm/boards/mnt-reform/board.c
+++ b/arch/arm/boards/mnt-reform/board.c
@@ -34,7 +34,7 @@ static const struct of_device_id mnt_reform_of_match[] = {
 };
 BAREBOX_DEEP_PROBE_ENABLE(mnt_reform_of_match);
 
-static struct driver_d mnt_reform_board_driver = {
+static struct driver mnt_reform_board_driver = {
 	.name = "board-mnt-reform",
 	.probe = mnt_reform_probe,
 	.of_compatible = DRV_OF_COMPAT(mnt_reform_of_match),
diff --git a/arch/arm/boards/nxp-imx8mm-evk/board.c b/arch/arm/boards/nxp-imx8mm-evk/board.c
index 8655e39e9b..362ccc7f5a 100644
--- a/arch/arm/boards/nxp-imx8mm-evk/board.c
+++ b/arch/arm/boards/nxp-imx8mm-evk/board.c
@@ -66,7 +66,7 @@ static const struct of_device_id imx8mm_evk_of_match[] = {
 	{ /* sentinel */ }
 };
 
-static struct driver_d imx8mm_evk_board_driver = {
+static struct driver imx8mm_evk_board_driver = {
 	.name = "board-imx8mm-evk",
 	.probe = imx8mm_evk_probe,
 	.of_compatible = imx8mm_evk_of_match,
diff --git a/arch/arm/boards/nxp-imx8mn-evk/board.c b/arch/arm/boards/nxp-imx8mn-evk/board.c
index c7666e10a4..7d928f0b30 100644
--- a/arch/arm/boards/nxp-imx8mn-evk/board.c
+++ b/arch/arm/boards/nxp-imx8mn-evk/board.c
@@ -65,7 +65,7 @@ static const struct of_device_id imx8mn_evk_of_match[] = {
 };
 BAREBOX_DEEP_PROBE_ENABLE(imx8mn_evk_of_match);
 
-static struct driver_d imx8mn_evkboard_driver = {
+static struct driver imx8mn_evkboard_driver = {
 	.name = "board-imx8mn-evk",
 	.probe = imx8mn_evk_probe,
 	.of_compatible = DRV_OF_COMPAT(imx8mn_evk_of_match),
diff --git a/arch/arm/boards/nxp-imx8mp-evk/board.c b/arch/arm/boards/nxp-imx8mp-evk/board.c
index d506f5d980..d557d17004 100644
--- a/arch/arm/boards/nxp-imx8mp-evk/board.c
+++ b/arch/arm/boards/nxp-imx8mp-evk/board.c
@@ -51,7 +51,7 @@ static const struct of_device_id nxp_imx8mp_evk_of_match[] = {
 };
 BAREBOX_DEEP_PROBE_ENABLE(nxp_imx8mp_evk_of_match);
 
-static struct driver_d nxp_imx8mp_evk_board_driver = {
+static struct driver nxp_imx8mp_evk_board_driver = {
 	.name = "board-nxp-imx8mp-evk",
 	.probe = nxp_imx8mp_evk_probe,
 	.of_compatible = nxp_imx8mp_evk_of_match,
diff --git a/arch/arm/boards/phytec-phycore-stm32mp1/board.c b/arch/arm/boards/phytec-phycore-stm32mp1/board.c
index adb882f91d..09e73cdcfd 100644
--- a/arch/arm/boards/phytec-phycore-stm32mp1/board.c
+++ b/arch/arm/boards/phytec-phycore-stm32mp1/board.c
@@ -20,7 +20,7 @@ static const struct of_device_id phycore_stm32mp1_of_match[] = {
 	{ /* sentinel */ },
 };
 
-static struct driver_d phycore_stm32mp1_board_driver = {
+static struct driver phycore_stm32mp1_board_driver = {
 	.name = "board-phycore-stm32mp1",
 	.probe = phycore_stm32mp1_probe,
 	.of_compatible = phycore_stm32mp1_of_match,
diff --git a/arch/arm/boards/phytec-som-imx6/board.c b/arch/arm/boards/phytec-som-imx6/board.c
index 59868f35c8..b3a74c7dee 100644
--- a/arch/arm/boards/phytec-som-imx6/board.c
+++ b/arch/arm/boards/phytec-som-imx6/board.c
@@ -360,7 +360,7 @@ static const struct of_device_id physom_imx6_match[] = {
 	{ /* Sentinel */ },
 };
 
-static struct driver_d physom_imx6_driver = {
+static struct driver physom_imx6_driver = {
 	.name = "physom-imx6",
 	.probe = physom_imx6_probe,
 	.of_compatible = physom_imx6_match,
diff --git a/arch/arm/boards/pine64-quartz64/board.c b/arch/arm/boards/pine64-quartz64/board.c
index cd48a61ab0..caf7ff9cd4 100644
--- a/arch/arm/boards/pine64-quartz64/board.c
+++ b/arch/arm/boards/pine64-quartz64/board.c
@@ -32,7 +32,7 @@ static const struct of_device_id quartz64_of_match[] = {
 	{ /* sentinel */ },
 };
 
-static struct driver_d quartz64_board_driver = {
+static struct driver quartz64_board_driver = {
 	.name = "board-quartz64",
 	.probe = quartz64_probe,
 	.of_compatible = quartz64_of_match,
diff --git a/arch/arm/boards/protonic-imx6/board.c b/arch/arm/boards/protonic-imx6/board.c
index d9ea721f55..2db66189e0 100644
--- a/arch/arm/boards/protonic-imx6/board.c
+++ b/arch/arm/boards/protonic-imx6/board.c
@@ -1277,7 +1277,7 @@ static const struct of_device_id prt_imx6_of_match[] = {
 };
 BAREBOX_DEEP_PROBE_ENABLE(prt_imx6_of_match);
 
-static struct driver_d prt_imx6_board_driver = {
+static struct driver prt_imx6_board_driver = {
 	.name = "board-protonic-imx6",
 	.probe = prt_imx6_probe,
 	.of_compatible = DRV_OF_COMPAT(prt_imx6_of_match),
diff --git a/arch/arm/boards/protonic-imx8m/board.c b/arch/arm/boards/protonic-imx8m/board.c
index e7e5c529af..69b3e22d22 100644
--- a/arch/arm/boards/protonic-imx8m/board.c
+++ b/arch/arm/boards/protonic-imx8m/board.c
@@ -76,7 +76,7 @@ static const struct of_device_id prt_imx8mm_of_match[] = {
 	{ /* sentinel */ },
 };
 
-static struct driver_d prt_prt8mm_board_driver = {
+static struct driver prt_prt8mm_board_driver = {
 	.name = "board-protonic-imx8mm",
 	.probe = prt_prt8mm_probe,
 	.of_compatible = DRV_OF_COMPAT(prt_imx8mm_of_match),
diff --git a/arch/arm/boards/protonic-stm32mp1/board.c b/arch/arm/boards/protonic-stm32mp1/board.c
index fe23bc3164..e8bbbd1bb1 100644
--- a/arch/arm/boards/protonic-stm32mp1/board.c
+++ b/arch/arm/boards/protonic-stm32mp1/board.c
@@ -121,7 +121,7 @@ static const struct of_device_id prt_stm32_of_match[] = {
 };
 BAREBOX_DEEP_PROBE_ENABLE(prt_stm32_of_match);
 
-static struct driver_d prt_stm32_board_driver = {
+static struct driver prt_stm32_board_driver = {
 	.name = "board-protonic-stm32",
 	.probe = prt_stm32_probe,
 	.of_compatible = prt_stm32_of_match,
diff --git a/arch/arm/boards/radxa-rock3/board.c b/arch/arm/boards/radxa-rock3/board.c
index 039d75f250..235c431ab6 100644
--- a/arch/arm/boards/radxa-rock3/board.c
+++ b/arch/arm/boards/radxa-rock3/board.c
@@ -46,7 +46,7 @@ static const struct of_device_id rock3_of_match[] = {
 	{ /* sentinel */ },
 };
 
-static struct driver_d rock3_board_driver = {
+static struct driver rock3_board_driver = {
 	.name = "board-rock3",
 	.probe = rock3_probe,
 	.of_compatible = rock3_of_match,
diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
index 8d2be6e399..67239befe3 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -620,7 +620,7 @@ static const struct of_device_id rpi_of_match[] = {
 };
 BAREBOX_DEEP_PROBE_ENABLE(rpi_of_match);
 
-static struct driver_d rpi_board_driver = {
+static struct driver rpi_board_driver = {
 	.name = "board-rpi",
 	.probe = rpi_devices_probe,
 	.of_compatible = DRV_OF_COMPAT(rpi_of_match),
diff --git a/arch/arm/boards/rockchip-rk3568-bpi-r2pro/board.c b/arch/arm/boards/rockchip-rk3568-bpi-r2pro/board.c
index 3b448fae86..c88d7f8b6d 100644
--- a/arch/arm/boards/rockchip-rk3568-bpi-r2pro/board.c
+++ b/arch/arm/boards/rockchip-rk3568-bpi-r2pro/board.c
@@ -40,7 +40,7 @@ static const struct of_device_id rk3568_bpi_r2pro_of_match[] = {
 	{ /* Sentinel */},
 };
 
-static struct driver_d rk3568_bpi_r2pro_board_driver = {
+static struct driver rk3568_bpi_r2pro_board_driver = {
 	.name = "board-rk3568-bpi-r2pro",
 	.probe = rk3568_bpi_r2pro_probe,
 	.of_compatible = rk3568_bpi_r2pro_of_match,
diff --git a/arch/arm/boards/rockchip-rk3568-evb/board.c b/arch/arm/boards/rockchip-rk3568-evb/board.c
index 69acf0798c..db6275bdad 100644
--- a/arch/arm/boards/rockchip-rk3568-evb/board.c
+++ b/arch/arm/boards/rockchip-rk3568-evb/board.c
@@ -40,7 +40,7 @@ static const struct of_device_id rk3568_evb_of_match[] = {
 	{ /* Sentinel */},
 };
 
-static struct driver_d rk3568_evb_board_driver = {
+static struct driver rk3568_evb_board_driver = {
 	.name = "board-rk3568-evb",
 	.probe = rk3568_evb_probe,
 	.of_compatible = rk3568_evb_of_match,
diff --git a/arch/arm/boards/sama5d3_xplained/board.c b/arch/arm/boards/sama5d3_xplained/board.c
index 4350d97425..3e07491419 100644
--- a/arch/arm/boards/sama5d3_xplained/board.c
+++ b/arch/arm/boards/sama5d3_xplained/board.c
@@ -65,7 +65,7 @@ static const struct of_device_id sama5d3_xplained_of_match[] = {
 	{ /* sentinel */ },
 };
 
-static struct driver_d sama5d3_xplained_board_driver = {
+static struct driver sama5d3_xplained_board_driver = {
 	.name = "board-sama5d3_xplained",
 	.probe = sama5d3_xplained_probe,
 	.of_compatible = sama5d3_xplained_of_match,
diff --git a/arch/arm/boards/seeed-odyssey/board.c b/arch/arm/boards/seeed-odyssey/board.c
index f811127023..beae8ec24c 100644
--- a/arch/arm/boards/seeed-odyssey/board.c
+++ b/arch/arm/boards/seeed-odyssey/board.c
@@ -32,7 +32,7 @@ static const struct of_device_id odyssey_som_of_match[] = {
 	{ /* sentinel */ },
 };
 
-static struct driver_d odyssey_som_driver = {
+static struct driver odyssey_som_driver = {
 	.name = "odyssey-som",
 	.probe = odyssey_som_probe,
 	.of_compatible = odyssey_som_of_match,
diff --git a/arch/arm/boards/skov-arm9cpu/board.c b/arch/arm/boards/skov-arm9cpu/board.c
index 1f092b37cc..4af8c9c04a 100644
--- a/arch/arm/boards/skov-arm9cpu/board.c
+++ b/arch/arm/boards/skov-arm9cpu/board.c
@@ -76,7 +76,7 @@ static __maybe_unused struct of_device_id skov_arm9_ids[] = {
 	}
 };
 
-static struct driver_d skov_arm9_driver = {
+static struct driver skov_arm9_driver = {
 	.name = "skov-arm9",
 	.probe = skov_arm9_probe,
 	.of_compatible = DRV_OF_COMPAT(skov_arm9_ids),
diff --git a/arch/arm/boards/skov-imx6/board.c b/arch/arm/boards/skov-imx6/board.c
index 4ce0112a58..d5d229ae81 100644
--- a/arch/arm/boards/skov-imx6/board.c
+++ b/arch/arm/boards/skov-imx6/board.c
@@ -669,7 +669,7 @@ static __maybe_unused struct of_device_id skov_version_ids[] = {
 };
 BAREBOX_DEEP_PROBE_ENABLE(skov_version_ids);
 
-static struct driver_d skov_version_driver = {
+static struct driver skov_version_driver = {
 	.name = "skov-imx6",
 	.probe = skov_imx6_probe,
 	.of_compatible = DRV_OF_COMPAT(skov_version_ids),
diff --git a/arch/arm/boards/stm32mp15x-ev1/board.c b/arch/arm/boards/stm32mp15x-ev1/board.c
index e05caf3a46..76c148a752 100644
--- a/arch/arm/boards/stm32mp15x-ev1/board.c
+++ b/arch/arm/boards/stm32mp15x-ev1/board.c
@@ -31,7 +31,7 @@ static const struct of_device_id ed1_of_match[] = {
 	{ /* sentinel */ },
 };
 
-static struct driver_d ed1_board_driver = {
+static struct driver ed1_board_driver = {
 	.name = "board-stm32mp15x-ed1",
 	.probe = ed1_probe,
 	.of_compatible = ed1_of_match,
diff --git a/arch/arm/boards/stm32mp15xx-dkx/board.c b/arch/arm/boards/stm32mp15xx-dkx/board.c
index 42ff4aa4d2..56e7ac25de 100644
--- a/arch/arm/boards/stm32mp15xx-dkx/board.c
+++ b/arch/arm/boards/stm32mp15xx-dkx/board.c
@@ -24,7 +24,7 @@ static const struct of_device_id dkx_of_match[] = {
 	{ /* sentinel */ },
 };
 
-static struct driver_d dkx_board_driver = {
+static struct driver dkx_board_driver = {
 	.name = "board-stm32mp15xx-dkx",
 	.probe = dkx_probe,
 	.of_compatible = dkx_of_match,
diff --git a/arch/arm/boards/tqma6ulx/board.c b/arch/arm/boards/tqma6ulx/board.c
index 6ede15b498..c25b0ce2e3 100644
--- a/arch/arm/boards/tqma6ulx/board.c
+++ b/arch/arm/boards/tqma6ulx/board.c
@@ -35,7 +35,7 @@ static const struct of_device_id mba6ulx_of_match[] = {
 	{ /* sentinel */ },
 };
 
-static struct driver_d mba6ulx_board_driver = {
+static struct driver mba6ulx_board_driver = {
 	.name = "board-mba6ulx",
 	.probe = mba6ulx_probe,
 	.of_compatible = mba6ulx_of_match,
diff --git a/arch/arm/boards/tqma8mpxl/board.c b/arch/arm/boards/tqma8mpxl/board.c
index 70f5e387a0..18c3d413ff 100644
--- a/arch/arm/boards/tqma8mpxl/board.c
+++ b/arch/arm/boards/tqma8mpxl/board.c
@@ -41,7 +41,7 @@ static const struct of_device_id tqma8mpxl_of_match[] = {
 };
 BAREBOX_DEEP_PROBE_ENABLE(tqma8mpxl_of_match);
 
-static struct driver_d tqma8mpxl_board_driver = {
+static struct driver tqma8mpxl_board_driver = {
 	.name = "board-tqma8mpxl",
 	.probe = tqma8mpxl_probe,
 	.of_compatible = DRV_OF_COMPAT(tqma8mpxl_of_match),
diff --git a/arch/arm/boards/vexpress/init.c b/arch/arm/boards/vexpress/init.c
index e3577ec2e4..a60556d67b 100644
--- a/arch/arm/boards/vexpress/init.c
+++ b/arch/arm/boards/vexpress/init.c
@@ -78,7 +78,7 @@ static const struct of_device_id vexpress_of_match[] = {
 	{ /* Sentinel */},
 };
 
-static struct driver_d vexpress_board_driver = {
+static struct driver vexpress_board_driver = {
 	.name = "board-vexpress",
 	.probe = vexpress_probe,
 	.of_compatible = vexpress_of_match,
diff --git a/arch/arm/boards/webasto-ccbv2/board.c b/arch/arm/boards/webasto-ccbv2/board.c
index dbd83a682b..71e35e0970 100644
--- a/arch/arm/boards/webasto-ccbv2/board.c
+++ b/arch/arm/boards/webasto-ccbv2/board.c
@@ -55,7 +55,7 @@ static const struct of_device_id ccbv2_of_match[] = {
 	{ /* sentinel */ },
 };
 
-static struct driver_d ccbv2_board_driver = {
+static struct driver ccbv2_board_driver = {
 	.name = "board-imx6ul-ccbv2",
 	.probe = ccbv2_probe,
 	.of_compatible = ccbv2_of_match,
diff --git a/arch/arm/cpu/psci-client.c b/arch/arm/cpu/psci-client.c
index 0df7f7e171..5d83fc18e8 100644
--- a/arch/arm/cpu/psci-client.c
+++ b/arch/arm/cpu/psci-client.c
@@ -182,7 +182,7 @@ static __maybe_unused struct of_device_id psci_dt_ids[] = {
 	{ /* sentinel */ },
 };
 
-static struct driver_d psci_driver = {
+static struct driver psci_driver = {
 	.name = "psci",
 	.probe = psci_probe,
 	.of_compatible = DRV_OF_COMPAT(psci_dt_ids),
diff --git a/arch/arm/mach-at91/at91sam9_rst.c b/arch/arm/mach-at91/at91sam9_rst.c
index cb3ee37f3e..741569fa8c 100644
--- a/arch/arm/mach-at91/at91sam9_rst.c
+++ b/arch/arm/mach-at91/at91sam9_rst.c
@@ -94,7 +94,7 @@ static const __maybe_unused struct of_device_id at91sam9x_rst_dt_ids[] = {
 	{ /* sentinel */ },
 };
 
-static struct driver_d at91sam9x_rst_driver = {
+static struct driver at91sam9x_rst_driver = {
 	.name		= "at91sam9x-rst",
 	.of_compatible	= DRV_OF_COMPAT(at91sam9x_rst_dt_ids),
 	.probe		= at91sam9x_rst_probe,
diff --git a/arch/arm/mach-at91/ddramc.c b/arch/arm/mach-at91/ddramc.c
index c7222e686f..6383789f64 100644
--- a/arch/arm/mach-at91/ddramc.c
+++ b/arch/arm/mach-at91/ddramc.c
@@ -52,7 +52,7 @@ static struct of_device_id sama5_ddr_dt_ids[] = {
 	{ /* sentinel */ }
 };
 
-static struct driver_d sama5_ddr_driver = {
+static struct driver sama5_ddr_driver = {
 	.name   = "sama5-ddramc",
 	.probe  = sama5_ddr_probe,
 	.of_compatible = sama5_ddr_dt_ids,
diff --git a/arch/arm/mach-at91/sam9_smc.c b/arch/arm/mach-at91/sam9_smc.c
index 165fd1d28a..51e6cf4a83 100644
--- a/arch/arm/mach-at91/sam9_smc.c
+++ b/arch/arm/mach-at91/sam9_smc.c
@@ -190,7 +190,7 @@ static int at91sam9_smc_probe(struct device *dev)
 	return 0;
 }
 
-static struct driver_d at91sam9_smc_driver = {
+static struct driver at91sam9_smc_driver = {
 	.name = "at91sam9-smc",
 	.probe = at91sam9_smc_probe,
 };
diff --git a/arch/arm/mach-clps711x/clock.c b/arch/arm/mach-clps711x/clock.c
index 7ad43842f6..fda4e9a01d 100644
--- a/arch/arm/mach-clps711x/clock.c
+++ b/arch/arm/mach-clps711x/clock.c
@@ -84,7 +84,7 @@ static const struct of_device_id __maybe_unused clps711x_clk_dt_ids[] = {
 	{ }
 };
 
-static struct driver_d clps711x_clk_driver = {
+static struct driver clps711x_clk_driver = {
 	.probe = clps711x_clk_probe,
 	.name = "clps711x-clk",
 	.of_compatible = DRV_OF_COMPAT(clps711x_clk_dt_ids),
diff --git a/arch/arm/mach-clps711x/common.c b/arch/arm/mach-clps711x/common.c
index a185110213..d27ed41ef9 100644
--- a/arch/arm/mach-clps711x/common.c
+++ b/arch/arm/mach-clps711x/common.c
@@ -136,7 +136,7 @@ static const struct of_device_id __maybe_unused clps711x_bus_dt_ids[] = {
 	{ }
 };
 
-static struct driver_d clps711x_bus_driver = {
+static struct driver clps711x_bus_driver = {
 	.name = "clps711x-bus",
 	.probe = clps711x_bus_probe,
 	.of_compatible = DRV_OF_COMPAT(clps711x_bus_dt_ids),
diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index e5698f438b..eb47957db0 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -748,7 +748,7 @@ static __maybe_unused struct of_device_id imx_esdctl_dt_ids[] = {
 	}
 };
 
-static struct driver_d imx_esdctl_driver = {
+static struct driver imx_esdctl_driver = {
 	.name   = "imx-esdctl",
 	.probe  = imx_esdctl_probe,
 	.id_table = imx_esdctl_ids,
diff --git a/arch/arm/mach-imx/iim.c b/arch/arm/mach-imx/iim.c
index cab60aac7f..f5190ef3c7 100644
--- a/arch/arm/mach-imx/iim.c
+++ b/arch/arm/mach-imx/iim.c
@@ -573,7 +573,7 @@ static __maybe_unused struct of_device_id imx_iim_dt_ids[] = {
 	}
 };
 
-static struct driver_d imx_iim_driver = {
+static struct driver imx_iim_driver = {
 	.name	= DRIVERNAME,
 	.probe	= imx_iim_probe,
 	.of_compatible = DRV_OF_COMPAT(imx_iim_dt_ids),
diff --git a/arch/arm/mach-imx/src.c b/arch/arm/mach-imx/src.c
index fbbea6bd47..4557e623a6 100644
--- a/arch/arm/mach-imx/src.c
+++ b/arch/arm/mach-imx/src.c
@@ -38,7 +38,7 @@ static const struct of_device_id imx_src_dt_ids[] = {
 	{ /* sentinel */ },
 };
 
-static struct driver_d imx_src_reset_driver = {
+static struct driver imx_src_reset_driver = {
 	.name = "imx-src",
 	.probe	= imx_src_reset_probe,
 	.of_compatible	= DRV_OF_COMPAT(imx_src_dt_ids),
diff --git a/arch/arm/mach-mxs/ocotp.c b/arch/arm/mach-mxs/ocotp.c
index 1a094c6f98..665c4c9a88 100644
--- a/arch/arm/mach-mxs/ocotp.c
+++ b/arch/arm/mach-mxs/ocotp.c
@@ -216,7 +216,7 @@ static __maybe_unused struct of_device_id mxs_ocotp_compatible[] = {
 	}
 };
 
-static struct driver_d mxs_ocotp_driver = {
+static struct driver mxs_ocotp_driver = {
 	.name	= DRIVERNAME,
 	.probe	= mxs_ocotp_probe,
 	.of_compatible = DRV_OF_COMPAT(mxs_ocotp_compatible),
diff --git a/arch/arm/mach-omap/am33xx_scrm.c b/arch/arm/mach-omap/am33xx_scrm.c
index dfe6253086..aeb828001c 100644
--- a/arch/arm/mach-omap/am33xx_scrm.c
+++ b/arch/arm/mach-omap/am33xx_scrm.c
@@ -37,7 +37,7 @@ static __maybe_unused struct of_device_id am33xx_scrm_dt_ids[] = {
 	}
 };
 
-static struct driver_d am33xx_scrm_driver = {
+static struct driver am33xx_scrm_driver = {
 	.name   = "am33xx-scrm",
 	.probe  = am33xx_scrm_probe,
 	.of_compatible = DRV_OF_COMPAT(am33xx_scrm_dt_ids),
diff --git a/arch/arm/mach-stm32mp/ddrctrl.c b/arch/arm/mach-stm32mp/ddrctrl.c
index ce45155420..ad4662c44d 100644
--- a/arch/arm/mach-stm32mp/ddrctrl.c
+++ b/arch/arm/mach-stm32mp/ddrctrl.c
@@ -152,7 +152,7 @@ static __maybe_unused struct of_device_id stm32mp1_ddr_dt_ids[] = {
 	{ /* sentinel */ }
 };
 
-static struct driver_d stm32mp1_ddr_driver = {
+static struct driver stm32mp1_ddr_driver = {
 	.name   = "stm32mp1-ddr",
 	.probe  = stm32mp1_ddr_probe,
 	.of_compatible = DRV_OF_COMPAT(stm32mp1_ddr_dt_ids),
diff --git a/arch/arm/mach-tegra/tegra20-pmc.c b/arch/arm/mach-tegra/tegra20-pmc.c
index 5c6327047f..6efff56746 100644
--- a/arch/arm/mach-tegra/tegra20-pmc.c
+++ b/arch/arm/mach-tegra/tegra20-pmc.c
@@ -238,7 +238,7 @@ static __maybe_unused struct of_device_id tegra20_pmc_dt_ids[] = {
 	}
 };
 
-static struct driver_d tegra20_pmc_driver = {
+static struct driver tegra20_pmc_driver = {
 	.probe	= tegra20_pmc_probe,
 	.name	= "tegra20-pmc",
 	.of_compatible = DRV_OF_COMPAT(tegra20_pmc_dt_ids),
diff --git a/arch/arm/mach-tegra/tegra20-timer.c b/arch/arm/mach-tegra/tegra20-timer.c
index 287c83aa9c..0dc6fc2d11 100644
--- a/arch/arm/mach-tegra/tegra20-timer.c
+++ b/arch/arm/mach-tegra/tegra20-timer.c
@@ -99,7 +99,7 @@ static __maybe_unused struct of_device_id tegra20_timer_dt_ids[] = {
 	}
 };
 
-static struct driver_d tegra20_timer_driver = {
+static struct driver tegra20_timer_driver = {
 	.probe	= tegra20_timer_probe,
 	.name	= "tegra20-timer",
 	.of_compatible = DRV_OF_COMPAT(tegra20_timer_dt_ids),
diff --git a/arch/arm/mach-zynqmp/firmware-zynqmp.c b/arch/arm/mach-zynqmp/firmware-zynqmp.c
index 5e1017fa8f..0406e66c5d 100644
--- a/arch/arm/mach-zynqmp/firmware-zynqmp.c
+++ b/arch/arm/mach-zynqmp/firmware-zynqmp.c
@@ -631,7 +631,7 @@ static struct of_device_id zynqmp_firmware_id_table[] = {
 	{}
 };
 
-static struct driver_d zynqmp_firmware_driver = {
+static struct driver zynqmp_firmware_driver = {
 	.name = "zynqmp_firmware",
 	.probe = zynqmp_firmware_probe,
 	.of_compatible = DRV_OF_COMPAT(zynqmp_firmware_id_table),
diff --git a/arch/kvx/lib/poweroff.c b/arch/kvx/lib/poweroff.c
index bcdb43d82c..fd8406fc6e 100644
--- a/arch/kvx/lib/poweroff.c
+++ b/arch/kvx/lib/poweroff.c
@@ -34,7 +34,7 @@ static __maybe_unused struct of_device_id kvx_scall_poweroff_id[] = {
 	}
 };
 
-static struct driver_d kvx_scall_poweroff = {
+static struct driver kvx_scall_poweroff = {
 	.name  = "kvx_scall_poweroff",
 	.probe = kvx_scall_poweroff_probe,
 	.of_compatible = DRV_OF_COMPAT(kvx_scall_poweroff_id),
diff --git a/arch/mips/mach-ar231x/ar231x_reset.c b/arch/mips/mach-ar231x/ar231x_reset.c
index bdaceb65b2..7479f3ce4a 100644
--- a/arch/mips/mach-ar231x/ar231x_reset.c
+++ b/arch/mips/mach-ar231x/ar231x_reset.c
@@ -61,7 +61,7 @@ static int ar231x_reset_probe(struct device *dev)
 	return 0;
 }
 
-static struct driver_d ar231x_reset_driver = {
+static struct driver ar231x_reset_driver = {
 	.probe	= ar231x_reset_probe,
 	.name	= "ar231x_reset",
 };
diff --git a/arch/mips/mach-ath79/art.c b/arch/mips/mach-ath79/art.c
index c1a9263559..772fc24e03 100644
--- a/arch/mips/mach-ath79/art.c
+++ b/arch/mips/mach-ath79/art.c
@@ -97,7 +97,7 @@ static struct of_device_id art_dt_ids[] = {
 	}
 };
 
-static struct driver_d art_driver = {
+static struct driver art_driver = {
 	.name		= "qca-art",
 	.probe		= art_probe,
 	.of_compatible	= art_dt_ids,
diff --git a/arch/riscv/boards/beaglev/board.c b/arch/riscv/boards/beaglev/board.c
index b8606410f1..d6bd89da19 100644
--- a/arch/riscv/boards/beaglev/board.c
+++ b/arch/riscv/boards/beaglev/board.c
@@ -22,7 +22,7 @@ static const struct of_device_id beaglev_of_match[] = {
 	{ /* sentinel */ },
 };
 
-static struct driver_d beaglev_board_driver = {
+static struct driver beaglev_board_driver = {
 	.name = "board-beaglev",
 	.probe = beaglev_probe,
 	.of_compatible = beaglev_of_match,
diff --git a/arch/riscv/boards/riscvemu/board.c b/arch/riscv/boards/riscvemu/board.c
index 0eb68cdbf4..c1d008ab5d 100644
--- a/arch/riscv/boards/riscvemu/board.c
+++ b/arch/riscv/boards/riscvemu/board.c
@@ -69,7 +69,7 @@ static const struct of_device_id riscvemu_of_match[] = {
 };
 BAREBOX_DEEP_PROBE_ENABLE(riscvemu_of_match);
 
-static struct driver_d riscvemu_board_driver = {
+static struct driver riscvemu_board_driver = {
 	.name = "board-riscvemu",
 	.probe = riscvemu_probe,
 	.of_compatible = riscvemu_of_match,
diff --git a/arch/riscv/cpu/core.c b/arch/riscv/cpu/core.c
index ce073af307..8cb9e5196b 100644
--- a/arch/riscv/cpu/core.c
+++ b/arch/riscv/cpu/core.c
@@ -99,7 +99,7 @@ static struct of_device_id riscv_dt_ids[] = {
 	{ /* sentinel */ },
 };
 
-static struct driver_d riscv_driver = {
+static struct driver riscv_driver = {
 	.name = "riscv",
 	.probe = riscv_probe,
 	.of_compatible = riscv_dt_ids,
diff --git a/arch/sandbox/board/board.c b/arch/sandbox/board/board.c
index 7857ede5c6..c8d1c99897 100644
--- a/arch/sandbox/board/board.c
+++ b/arch/sandbox/board/board.c
@@ -68,7 +68,7 @@ static struct of_device_id sandbox_dt_ids[] = {
 };
 BAREBOX_DEEP_PROBE_ENABLE(sandbox_dt_ids);
 
-static struct driver_d sandbox_board_drv = {
+static struct driver sandbox_board_drv = {
 	.name  = "sandbox-board",
 	.of_compatible = sandbox_dt_ids,
 	.probe = devices_init,
diff --git a/arch/sandbox/board/hostfile.c b/arch/sandbox/board/hostfile.c
index a6273664d3..436a7503be 100644
--- a/arch/sandbox/board/hostfile.c
+++ b/arch/sandbox/board/hostfile.c
@@ -175,7 +175,7 @@ static __maybe_unused struct of_device_id hostfile_dt_ids[] = {
 	}
 };
 
-static struct driver_d hf_drv = {
+static struct driver hf_drv = {
 	.name  = "hostfile",
 	.of_compatible = DRV_OF_COMPAT(hostfile_dt_ids),
 	.probe = hf_probe,
diff --git a/arch/sandbox/board/led.c b/arch/sandbox/board/led.c
index 02f181b382..a080ae634f 100644
--- a/arch/sandbox/board/led.c
+++ b/arch/sandbox/board/led.c
@@ -58,7 +58,7 @@ static struct of_device_id sandbox_led_of_ids[] = {
 	{ }
 };
 
-static struct driver_d sandbox_led_of_driver = {
+static struct driver sandbox_led_of_driver = {
 	.name  = "sandbox-led",
 	.probe = sandbox_led_of_probe,
 	.remove = sandbox_led_of_remove,
diff --git a/arch/sandbox/board/power.c b/arch/sandbox/board/power.c
index ba5ab88a81..51f0968447 100644
--- a/arch/sandbox/board/power.c
+++ b/arch/sandbox/board/power.c
@@ -88,7 +88,7 @@ static __maybe_unused struct of_device_id sandbox_power_dt_ids[] = {
 	{ /* sentinel */ }
 };
 
-static struct driver_d sandbox_power_drv = {
+static struct driver sandbox_power_drv = {
 	.name  = "sandbox-power",
 	.of_compatible = sandbox_power_dt_ids,
 	.probe = sandbox_power_probe,
diff --git a/arch/sandbox/board/watchdog.c b/arch/sandbox/board/watchdog.c
index d54661018d..54e87cdde4 100644
--- a/arch/sandbox/board/watchdog.c
+++ b/arch/sandbox/board/watchdog.c
@@ -76,7 +76,7 @@ static __maybe_unused struct of_device_id sandbox_watchdog_dt_ids[] = {
 	{ /* sentinel */ }
 };
 
-static struct driver_d sandbox_watchdog_drv = {
+static struct driver sandbox_watchdog_drv = {
 	.name  = "sandbox-watchdog",
 	.of_compatible = sandbox_watchdog_dt_ids,
 	.probe = sandbox_watchdog_probe,
diff --git a/commands/drvinfo.c b/commands/drvinfo.c
index 4961f4c7dd..b984b94725 100644
--- a/commands/drvinfo.c
+++ b/commands/drvinfo.c
@@ -8,7 +8,7 @@
 
 static int do_drvinfo(int argc, char *argv[])
 {
-	struct driver_d *drv;
+	struct driver *drv;
 	struct device *dev;
 
 	printf("Driver\tDevice(s)\n");
diff --git a/commands/mount.c b/commands/mount.c
index ff1d8bc5e5..966807a1f4 100644
--- a/commands/mount.c
+++ b/commands/mount.c
@@ -13,7 +13,7 @@
 static int do_mount(int argc, char *argv[])
 {
 	int opt, verbose = 0;
-	struct driver_d *drv;
+	struct driver *drv;
 	const char *type = NULL;
 	const char *mountpoint, *devstr;
 	const char *fsoptions = NULL;
diff --git a/common/boards/qemu-virt/board.c b/common/boards/qemu-virt/board.c
index 5062ad2c7f..d0f4412cde 100644
--- a/common/boards/qemu-virt/board.c
+++ b/common/boards/qemu-virt/board.c
@@ -59,7 +59,7 @@ static const struct of_device_id virt_of_match[] = {
 };
 BAREBOX_DEEP_PROBE_ENABLE(virt_of_match);
 
-static struct driver_d virt_board_driver = {
+static struct driver virt_board_driver = {
 	.name = "board-qemu-virt",
 	.probe = virt_probe,
 	.of_compatible = virt_of_match,
diff --git a/drivers/aiodev/am335x_adc.c b/drivers/aiodev/am335x_adc.c
index f658396ec5..ceb7531dc0 100644
--- a/drivers/aiodev/am335x_adc.c
+++ b/drivers/aiodev/am335x_adc.c
@@ -175,7 +175,7 @@ static const struct of_device_id of_am335x_adc_match[] = {
 	{ /* end */ }
 };
 
-static struct driver_d am335x_adc_driver = {
+static struct driver am335x_adc_driver = {
 	.name		= "am335x_adc",
 	.probe		= am335x_adc_probe,
 	.of_compatible	= DRV_OF_COMPAT(of_am335x_adc_match),
diff --git a/drivers/aiodev/imx7d_adc.c b/drivers/aiodev/imx7d_adc.c
index 1d4e755fd8..3d0c0eaa68 100644
--- a/drivers/aiodev/imx7d_adc.c
+++ b/drivers/aiodev/imx7d_adc.c
@@ -418,7 +418,7 @@ static void imx7d_adc_disable(struct device *dev)
 	regulator_disable(info->vref);
 }
 
-static struct driver_d imx7d_adc_driver = {
+static struct driver imx7d_adc_driver = {
 	.probe		= imx7d_adc_probe,
 	.name		= "imx7d_adc",
 	.of_compatible	= imx7d_adc_match,
diff --git a/drivers/aiodev/imx_thermal.c b/drivers/aiodev/imx_thermal.c
index c2d2faa071..4d24f6cae3 100644
--- a/drivers/aiodev/imx_thermal.c
+++ b/drivers/aiodev/imx_thermal.c
@@ -194,7 +194,7 @@ static const struct of_device_id of_imx_thermal_match[] = {
 };
 
 
-static struct driver_d imx_thermal_driver = {
+static struct driver imx_thermal_driver = {
 	.name		= "imx_thermal",
 	.probe		= imx_thermal_probe,
 	.of_compatible	= DRV_OF_COMPAT(of_imx_thermal_match),
diff --git a/drivers/aiodev/lm75.c b/drivers/aiodev/lm75.c
index 3281c6893b..13b7ac4710 100644
--- a/drivers/aiodev/lm75.c
+++ b/drivers/aiodev/lm75.c
@@ -237,7 +237,7 @@ static const struct platform_device_id lm75_ids[] = {
 	{ /* LIST END */ }
 };
 
-static struct driver_d lm75_driver = {
+static struct driver lm75_driver = {
 	.name  = "lm75",
 	.probe = lm75_probe,
 	.id_table = lm75_ids,
diff --git a/drivers/aiodev/qoriq_thermal.c b/drivers/aiodev/qoriq_thermal.c
index fc33ed8a21..a9d68ed940 100644
--- a/drivers/aiodev/qoriq_thermal.c
+++ b/drivers/aiodev/qoriq_thermal.c
@@ -246,7 +246,7 @@ static const struct of_device_id qoriq_tmu_match[] = {
 	{},
 };
 
-static struct driver_d imx_thermal_driver = {
+static struct driver imx_thermal_driver = {
 	.name		= "qoriq_thermal",
 	.probe		= qoriq_tmu_probe,
 	.of_compatible	= DRV_OF_COMPAT(qoriq_tmu_match),
diff --git a/drivers/aiodev/rockchip_saradc.c b/drivers/aiodev/rockchip_saradc.c
index b190df17a4..51408b2619 100644
--- a/drivers/aiodev/rockchip_saradc.c
+++ b/drivers/aiodev/rockchip_saradc.c
@@ -189,7 +189,7 @@ static const struct of_device_id of_rockchip_saradc_match[] = {
 	{ /* end */ }
 };
 
-static struct driver_d rockchip_saradc_driver = {
+static struct driver rockchip_saradc_driver = {
 	.name = "rockchip_saradc",
 	.probe = rockchip_saradc_probe,
 	.of_compatible = DRV_OF_COMPAT(of_rockchip_saradc_match),
diff --git a/drivers/aiodev/st_gyro.c b/drivers/aiodev/st_gyro.c
index 29b6e0e840..a7a9102871 100644
--- a/drivers/aiodev/st_gyro.c
+++ b/drivers/aiodev/st_gyro.c
@@ -114,7 +114,7 @@ static const struct of_device_id st_gyro_match[] = {
 	{ /* sentinel */ }
 };
 
-static struct driver_d st_gyro_driver = {
+static struct driver st_gyro_driver = {
 	.name  = "st_gyro",
 	.probe = st_gyro_probe,
 	.of_compatible = st_gyro_match,
diff --git a/drivers/aiodev/stm32-adc-core.c b/drivers/aiodev/stm32-adc-core.c
index 0712f2a5e0..d69c232517 100644
--- a/drivers/aiodev/stm32-adc-core.c
+++ b/drivers/aiodev/stm32-adc-core.c
@@ -203,7 +203,7 @@ static const struct of_device_id stm32_adc_core_ids[] = {
 	{}
 };
 
-static struct driver_d stm32_adc_core_driver = {
+static struct driver stm32_adc_core_driver = {
 	.name		= "stm32-adc-core",
 	.probe		= stm32_adc_core_probe,
 	.of_compatible	= DRV_OF_COMPAT(stm32_adc_core_ids),
diff --git a/drivers/aiodev/stm32-adc.c b/drivers/aiodev/stm32-adc.c
index 497a865a09..95940d3711 100644
--- a/drivers/aiodev/stm32-adc.c
+++ b/drivers/aiodev/stm32-adc.c
@@ -368,7 +368,7 @@ static const struct of_device_id stm32_adc_match[] = {
 	{}
 };
 
-static struct driver_d stm32_adc_driver = {
+static struct driver stm32_adc_driver = {
 	.name		= "stm32-adc",
 	.probe		= stm32_adc_probe,
 	.of_compatible	= DRV_OF_COMPAT(stm32_adc_match),
diff --git a/drivers/amba/bus.c b/drivers/amba/bus.c
index bef6cc4ba2..cf43aaa76e 100644
--- a/drivers/amba/bus.c
+++ b/drivers/amba/bus.c
@@ -28,7 +28,7 @@ amba_lookup(const struct amba_id *table, struct amba_device *dev)
 	return ret ? table : NULL;
 }
 
-static int amba_match(struct device *dev, struct driver_d *drv)
+static int amba_match(struct device *dev, struct driver *drv)
 {
 	struct amba_device *pcdev = to_amba_device(dev);
 
diff --git a/drivers/ata/ahci.c b/drivers/ata/ahci.c
index baa4919b33..17e84d35e0 100644
--- a/drivers/ata/ahci.c
+++ b/drivers/ata/ahci.c
@@ -670,7 +670,7 @@ static __maybe_unused struct of_device_id ahci_dt_ids[] = {
 	}
 };
 
-static struct driver_d ahci_driver = {
+static struct driver ahci_driver = {
 	.name   = "ahci",
 	.probe  = ahci_probe,
 	.of_compatible = DRV_OF_COMPAT(ahci_dt_ids),
diff --git a/drivers/ata/intf_platform_ide.c b/drivers/ata/intf_platform_ide.c
index 41989bdb12..0db19ce11e 100644
--- a/drivers/ata/intf_platform_ide.c
+++ b/drivers/ata/intf_platform_ide.c
@@ -145,7 +145,7 @@ static __maybe_unused struct of_device_id platform_ide_dt_ids[] = {
 	}
 };
 
-static struct driver_d platform_ide_driver = {
+static struct driver platform_ide_driver = {
 	.name   = "ide_intf",
 	.probe  = platform_ide_probe,
 	.of_compatible = DRV_OF_COMPAT(platform_ide_dt_ids),
diff --git a/drivers/ata/pata-imx.c b/drivers/ata/pata-imx.c
index 0a658b00eb..1579041ed8 100644
--- a/drivers/ata/pata-imx.c
+++ b/drivers/ata/pata-imx.c
@@ -202,7 +202,7 @@ static __maybe_unused struct of_device_id imx_pata_dt_ids[] = {
 	},
 };
 
-static struct driver_d imx_pata_driver = {
+static struct driver imx_pata_driver = {
 	.name   = "imx-pata",
 	.probe  = imx_pata_probe,
 	.of_compatible = DRV_OF_COMPAT(imx_pata_dt_ids),
diff --git a/drivers/ata/sata-imx.c b/drivers/ata/sata-imx.c
index 898cd18518..fce72987bb 100644
--- a/drivers/ata/sata-imx.c
+++ b/drivers/ata/sata-imx.c
@@ -159,7 +159,7 @@ static __maybe_unused struct of_device_id imx_sata_dt_ids[] = {
 	}
 };
 
-static struct driver_d imx_sata_driver = {
+static struct driver imx_sata_driver = {
 	.name   = "imx-sata",
 	.probe  = imx_sata_probe,
 	.id_table = imx_sata_ids,
diff --git a/drivers/ata/sata_mv.c b/drivers/ata/sata_mv.c
index f0137c07a5..6c63139206 100644
--- a/drivers/ata/sata_mv.c
+++ b/drivers/ata/sata_mv.c
@@ -216,7 +216,7 @@ static const struct of_device_id mv_sata_dt_ids[] = {
 	}
 };
 
-static struct driver_d mv_sata_driver = {
+static struct driver mv_sata_driver = {
 	.name = "mv_sata",
 	.probe = mv_sata_probe,
 	.of_compatible = mv_sata_dt_ids,
diff --git a/drivers/base/bus.c b/drivers/base/bus.c
index c4e3e7b320..a5c9c930da 100644
--- a/drivers/base/bus.c
+++ b/drivers/base/bus.c
@@ -47,7 +47,7 @@ int bus_register(struct bus_type *bus)
 	return 0;
 }
 
-int device_match(struct device *dev, struct driver_d *drv)
+int device_match(struct device *dev, struct driver *drv)
 {
 	if (IS_ENABLED(CONFIG_OFDEVICE) && dev->of_node &&
 	    drv->of_compatible)
@@ -70,7 +70,7 @@ int device_match(struct device *dev, struct driver_d *drv)
 	return -1;
 }
 
-int device_match_of_modalias(struct device *dev, struct driver_d *drv)
+int device_match_of_modalias(struct device *dev, struct driver *drv)
 {
 	const struct platform_device_id *id = drv->id_table;
 	const char *of_modalias = NULL, *p;
diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 1b0ed5aa68..839a8513fc 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -191,7 +191,7 @@ void device_detect_all(void)
 		device_detect(dev);
 }
 
-static int match(struct driver_d *drv, struct device *dev)
+static int match(struct driver *drv, struct device *dev)
 {
 	int ret;
 
@@ -214,7 +214,7 @@ err_out:
 
 int register_device(struct device *new_device)
 {
-	struct driver_d *drv;
+	struct driver *drv;
 
 	if (new_device->id == DEVICE_ID_DYNAMIC) {
 		new_device->id = get_free_deviceid(new_device->name);
@@ -338,7 +338,7 @@ EXPORT_SYMBOL(free_device);
 static int device_probe_deferred(void)
 {
 	struct device *dev, *tmp;
-	struct driver_d *drv;
+	struct driver *drv;
 	bool success;
 
 	do {
@@ -372,9 +372,9 @@ static int device_probe_deferred(void)
 }
 late_initcall(device_probe_deferred);
 
-struct driver_d *get_driver_by_name(const char *name)
+struct driver *get_driver_by_name(const char *name)
 {
-	struct driver_d *drv;
+	struct driver *drv;
 
 	for_each_driver(drv) {
 		if(!strcmp(name, drv->name))
@@ -384,7 +384,7 @@ struct driver_d *get_driver_by_name(const char *name)
 	return NULL;
 }
 
-int register_driver(struct driver_d *drv)
+int register_driver(struct driver *drv)
 {
 	struct device *dev = NULL;
 
diff --git a/drivers/base/platform.c b/drivers/base/platform.c
index 3bc0b71790..f995478560 100644
--- a/drivers/base/platform.c
+++ b/drivers/base/platform.c
@@ -28,7 +28,7 @@ static void platform_remove(struct device *dev)
 		dev->driver->remove(dev);
 }
 
-int platform_driver_register(struct driver_d *drv)
+int platform_driver_register(struct driver *drv)
 {
 	drv->bus = &platform_bus;
 
diff --git a/drivers/bus/acpi.c b/drivers/bus/acpi.c
index c69473394f..354a6119b9 100644
--- a/drivers/bus/acpi.c
+++ b/drivers/bus/acpi.c
@@ -203,7 +203,7 @@ static int acpi_register_devices(struct bus_type *bus)
 	return 0;
 }
 
-static int acpi_bus_match(struct device *dev, struct driver_d *drv)
+static int acpi_bus_match(struct device *dev, struct driver *drv)
 {
 	struct acpi_driver *acpidrv = to_acpi_driver(drv);
 	struct acpi_sdt *sdt = acpi_get_dev_sdt(dev);
diff --git a/drivers/bus/imx-weim.c b/drivers/bus/imx-weim.c
index 3ac2609f47..f452c2303c 100644
--- a/drivers/bus/imx-weim.c
+++ b/drivers/bus/imx-weim.c
@@ -163,7 +163,7 @@ weim_err:
 	return ret;
 }
 
-static struct driver_d weim_driver = {
+static struct driver weim_driver = {
 	.name = "imx-weim",
 	.of_compatible = DRV_OF_COMPAT(weim_id_table),
 	.probe   = weim_probe,
diff --git a/drivers/bus/omap-gpmc.c b/drivers/bus/omap-gpmc.c
index df9e66b54a..1f4580e5d7 100644
--- a/drivers/bus/omap-gpmc.c
+++ b/drivers/bus/omap-gpmc.c
@@ -653,7 +653,7 @@ static struct of_device_id gpmc_id_table[] = {
 	{ }
 };
 
-static struct driver_d gpmc_driver = {
+static struct driver gpmc_driver = {
 	.name = "omap-gpmc",
 	.of_compatible = DRV_OF_COMPAT(gpmc_id_table),
 	.probe   = gpmc_probe,
diff --git a/drivers/bus/ti-sysc.c b/drivers/bus/ti-sysc.c
index 862e9d0cc3..cc3887de32 100644
--- a/drivers/bus/ti-sysc.c
+++ b/drivers/bus/ti-sysc.c
@@ -28,7 +28,7 @@ static struct of_device_id ti_sysc_dt_ids[] = {
 	{ },
 };
 
-static struct driver_d ti_sysc_driver = {
+static struct driver ti_sysc_driver = {
 	.name = "ti-sysc",
 	.probe = ti_sysc_probe,
 	.of_compatible = DRV_OF_COMPAT(ti_sysc_dt_ids),
diff --git a/drivers/clk/bcm/clk-bcm2835-aux.c b/drivers/clk/bcm/clk-bcm2835-aux.c
index 39d61a429e..f1fd3f9d80 100644
--- a/drivers/clk/bcm/clk-bcm2835-aux.c
+++ b/drivers/clk/bcm/clk-bcm2835-aux.c
@@ -54,7 +54,7 @@ static const struct of_device_id bcm2835_aux_clk_of_match[] = {
 	{},
 };
 
-static struct driver_d bcm2835_aux_clk_driver = {
+static struct driver bcm2835_aux_clk_driver = {
 	.name = "bcm2835-aux-clk",
 	.of_compatible = bcm2835_aux_clk_of_match,
 	.probe          = bcm2835_aux_clk_probe,
diff --git a/drivers/clk/clk-ar933x.c b/drivers/clk/clk-ar933x.c
index cc43f1ab35..fd97df25a9 100644
--- a/drivers/clk/clk-ar933x.c
+++ b/drivers/clk/clk-ar933x.c
@@ -132,7 +132,7 @@ static __maybe_unused struct of_device_id ar933x_clk_dt_ids[] = {
 	}
 };
 
-static struct driver_d ar933x_clk_driver = {
+static struct driver ar933x_clk_driver = {
 	.probe	= ar933x_clk_probe,
 	.name	= "ar933x_clk",
 	.of_compatible = DRV_OF_COMPAT(ar933x_clk_dt_ids),
diff --git a/drivers/clk/clk-ar9344.c b/drivers/clk/clk-ar9344.c
index 8afce4f72e..c2ca8fa7d8 100644
--- a/drivers/clk/clk-ar9344.c
+++ b/drivers/clk/clk-ar9344.c
@@ -127,7 +127,7 @@ static __maybe_unused struct of_device_id ar9344_clk_dt_ids[] = {
 	}
 };
 
-static struct driver_d ar9344_clk_driver = {
+static struct driver ar9344_clk_driver = {
 	.probe	= ar9344_clk_probe,
 	.name	= "ar9344_clk",
 	.of_compatible = DRV_OF_COMPAT(ar9344_clk_dt_ids),
diff --git a/drivers/clk/clk-rpi.c b/drivers/clk/clk-rpi.c
index b745518854..49d69709d2 100644
--- a/drivers/clk/clk-rpi.c
+++ b/drivers/clk/clk-rpi.c
@@ -97,7 +97,7 @@ static __maybe_unused struct of_device_id bcm2835_cprman_dt_ids[] = {
 	{ /* sentinel */ }
 };
 
-static struct driver_d bcm2835_cprman_driver = {
+static struct driver bcm2835_cprman_driver = {
 	.probe	= rpi_cprman_probe,
 	.name	= "raspberrypi-cprman",
 	.of_compatible = DRV_OF_COMPAT(bcm2835_cprman_dt_ids),
diff --git a/drivers/clk/clk-stm32mp1.c b/drivers/clk/clk-stm32mp1.c
index 93c77dfc72..c3f6ceebe3 100644
--- a/drivers/clk/clk-stm32mp1.c
+++ b/drivers/clk/clk-stm32mp1.c
@@ -2332,7 +2332,7 @@ static void stm32mp1_rcc_clocks_remove(struct device *dev)
 		of_clk_del_provider(child);
 }
 
-static struct driver_d stm32mp1_rcc_clocks_driver = {
+static struct driver stm32mp1_rcc_clocks_driver = {
 	.name = "stm32mp1_rcc",
 	.of_compatible = stm32mp1_match_data,
 	.probe = stm32mp1_rcc_clocks_probe,
diff --git a/drivers/clk/imx/clk-imx1.c b/drivers/clk/imx/clk-imx1.c
index c38111cd3c..7c6e09316e 100644
--- a/drivers/clk/imx/clk-imx1.c
+++ b/drivers/clk/imx/clk-imx1.c
@@ -96,7 +96,7 @@ static __maybe_unused struct of_device_id imx1_ccm_dt_ids[] = {
 	}
 };
 
-static struct driver_d imx1_ccm_driver = {
+static struct driver imx1_ccm_driver = {
 	.probe	= imx1_ccm_probe,
 	.name	= "imx1-ccm",
 	.of_compatible = DRV_OF_COMPAT(imx1_ccm_dt_ids),
diff --git a/drivers/clk/imx/clk-imx21.c b/drivers/clk/imx/clk-imx21.c
index 7a9cbb1c6f..57ad1b466b 100644
--- a/drivers/clk/imx/clk-imx21.c
+++ b/drivers/clk/imx/clk-imx21.c
@@ -170,7 +170,7 @@ static __maybe_unused struct of_device_id imx21_ccm_dt_ids[] = {
 	}
 };
 
-static struct driver_d imx21_ccm_driver = {
+static struct driver imx21_ccm_driver = {
 	.probe	= imx21_ccm_probe,
 	.name	= "imx21-ccm",
 	.of_compatible = DRV_OF_COMPAT(imx21_ccm_dt_ids),
diff --git a/drivers/clk/imx/clk-imx25.c b/drivers/clk/imx/clk-imx25.c
index 9edf1ad925..285a1b5a05 100644
--- a/drivers/clk/imx/clk-imx25.c
+++ b/drivers/clk/imx/clk-imx25.c
@@ -184,7 +184,7 @@ static __maybe_unused struct of_device_id imx25_ccm_dt_ids[] = {
 	}
 };
 
-static struct driver_d imx25_ccm_driver = {
+static struct driver imx25_ccm_driver = {
 	.probe	= imx25_ccm_probe,
 	.name	= "imx25-ccm",
 	.of_compatible = DRV_OF_COMPAT(imx25_ccm_dt_ids),
diff --git a/drivers/clk/imx/clk-imx27.c b/drivers/clk/imx/clk-imx27.c
index 78b2d60da3..3a4be36d2a 100644
--- a/drivers/clk/imx/clk-imx27.c
+++ b/drivers/clk/imx/clk-imx27.c
@@ -258,7 +258,7 @@ static __maybe_unused struct of_device_id imx27_ccm_dt_ids[] = {
 	}
 };
 
-static struct driver_d imx27_ccm_driver = {
+static struct driver imx27_ccm_driver = {
 	.probe	= imx27_ccm_probe,
 	.name	= "imx27-ccm",
 	.of_compatible = DRV_OF_COMPAT(imx27_ccm_dt_ids),
diff --git a/drivers/clk/imx/clk-imx31.c b/drivers/clk/imx/clk-imx31.c
index b0ea02580d..adee9b83b6 100644
--- a/drivers/clk/imx/clk-imx31.c
+++ b/drivers/clk/imx/clk-imx31.c
@@ -139,7 +139,7 @@ static __maybe_unused struct of_device_id imx31_ccm_dt_ids[] = {
 	}
 };
 
-static struct driver_d imx31_ccm_driver = {
+static struct driver imx31_ccm_driver = {
 	.probe	= imx31_ccm_probe,
 	.name	= "imx31-ccm",
 	.of_compatible = DRV_OF_COMPAT(imx31_ccm_dt_ids),
diff --git a/drivers/clk/imx/clk-imx35.c b/drivers/clk/imx/clk-imx35.c
index eb83748582..f8f503cb99 100644
--- a/drivers/clk/imx/clk-imx35.c
+++ b/drivers/clk/imx/clk-imx35.c
@@ -202,7 +202,7 @@ static __maybe_unused struct of_device_id imx35_ccm_dt_ids[] = {
 	}
 };
 
-static struct driver_d imx35_ccm_driver = {
+static struct driver imx35_ccm_driver = {
 	.probe	= imx35_ccm_probe,
 	.name	= "imx35-ccm",
 	.of_compatible = DRV_OF_COMPAT(imx35_ccm_dt_ids),
diff --git a/drivers/clk/imx/clk-imx5.c b/drivers/clk/imx/clk-imx5.c
index 2c7dca01ef..68df361fb4 100644
--- a/drivers/clk/imx/clk-imx5.c
+++ b/drivers/clk/imx/clk-imx5.c
@@ -343,7 +343,7 @@ static __maybe_unused struct of_device_id imx50_ccm_dt_ids[] = {
 	}
 };
 
-static __maybe_unused struct driver_d imx50_ccm_driver = {
+static __maybe_unused struct driver imx50_ccm_driver = {
 	.probe	= imx50_ccm_probe,
 	.name	= "imx50-ccm",
 	.of_compatible = DRV_OF_COMPAT(imx50_ccm_dt_ids),
@@ -432,7 +432,7 @@ static __maybe_unused struct of_device_id imx51_ccm_dt_ids[] = {
 	}
 };
 
-static __maybe_unused struct driver_d imx51_ccm_driver = {
+static __maybe_unused struct driver imx51_ccm_driver = {
 	.probe	= imx51_ccm_probe,
 	.name	= "imx51-ccm",
 	.of_compatible = DRV_OF_COMPAT(imx51_ccm_dt_ids),
@@ -530,7 +530,7 @@ static __maybe_unused struct of_device_id imx53_ccm_dt_ids[] = {
 	}
 };
 
-static __maybe_unused struct driver_d imx53_ccm_driver = {
+static __maybe_unused struct driver imx53_ccm_driver = {
 	.probe	= imx53_ccm_probe,
 	.name	= "imx53-ccm",
 	.of_compatible = DRV_OF_COMPAT(imx53_ccm_dt_ids),
diff --git a/drivers/clk/imx/clk-imx6.c b/drivers/clk/imx/clk-imx6.c
index bf444d7cfc..6d2d5329cf 100644
--- a/drivers/clk/imx/clk-imx6.c
+++ b/drivers/clk/imx/clk-imx6.c
@@ -850,7 +850,7 @@ static __maybe_unused struct of_device_id imx6_ccm_dt_ids[] = {
 	}
 };
 
-static struct driver_d imx6_ccm_driver = {
+static struct driver imx6_ccm_driver = {
 	.probe	= imx6_ccm_probe,
 	.name	= "imx6-ccm",
 	.of_compatible = DRV_OF_COMPAT(imx6_ccm_dt_ids),
diff --git a/drivers/clk/imx/clk-imx6sl.c b/drivers/clk/imx/clk-imx6sl.c
index 4c0e4856bd..ca184b4a44 100644
--- a/drivers/clk/imx/clk-imx6sl.c
+++ b/drivers/clk/imx/clk-imx6sl.c
@@ -309,7 +309,7 @@ static __maybe_unused struct of_device_id imx6sl_ccm_dt_ids[] = {
 	}
 };
 
-static struct driver_d imx6sl_ccm_driver = {
+static struct driver imx6sl_ccm_driver = {
 	.probe	= imx6sl_ccm_probe,
 	.name	= "imx6-ccm",
 	.of_compatible = DRV_OF_COMPAT(imx6sl_ccm_dt_ids),
diff --git a/drivers/clk/imx/clk-imx6sx.c b/drivers/clk/imx/clk-imx6sx.c
index 8877bbef83..57840b4c3c 100644
--- a/drivers/clk/imx/clk-imx6sx.c
+++ b/drivers/clk/imx/clk-imx6sx.c
@@ -463,7 +463,7 @@ static __maybe_unused struct of_device_id imx6sx_ccm_dt_ids[] = {
 	}
 };
 
-static struct driver_d imx6sx_ccm_driver = {
+static struct driver imx6sx_ccm_driver = {
 	.probe	= imx6sx_ccm_probe,
 	.name	= "imx6-ccm",
 	.of_compatible = DRV_OF_COMPAT(imx6sx_ccm_dt_ids),
diff --git a/drivers/clk/imx/clk-imx6ul.c b/drivers/clk/imx/clk-imx6ul.c
index 523aa02529..08546009b3 100644
--- a/drivers/clk/imx/clk-imx6ul.c
+++ b/drivers/clk/imx/clk-imx6ul.c
@@ -462,7 +462,7 @@ static __maybe_unused struct of_device_id imx6_ccm_dt_ids[] = {
 	}
 };
 
-static struct driver_d imx6_ccm_driver = {
+static struct driver imx6_ccm_driver = {
 	.probe	= imx6_ccm_probe,
 	.name	= "imx6-ccm",
 	.of_compatible = DRV_OF_COMPAT(imx6_ccm_dt_ids),
diff --git a/drivers/clk/imx/clk-imx7.c b/drivers/clk/imx/clk-imx7.c
index 38d3ca7efc..15254d10df 100644
--- a/drivers/clk/imx/clk-imx7.c
+++ b/drivers/clk/imx/clk-imx7.c
@@ -873,7 +873,7 @@ static __maybe_unused struct of_device_id imx7_ccm_dt_ids[] = {
 	}
 };
 
-static struct driver_d imx7_ccm_driver = {
+static struct driver imx7_ccm_driver = {
 	.probe	= imx7_ccm_probe,
 	.name	= "imx6-ccm",
 	.of_compatible = DRV_OF_COMPAT(imx7_ccm_dt_ids),
diff --git a/drivers/clk/loongson/clk-ls1b200.c b/drivers/clk/loongson/clk-ls1b200.c
index ada6e73a40..57413e85b7 100644
--- a/drivers/clk/loongson/clk-ls1b200.c
+++ b/drivers/clk/loongson/clk-ls1b200.c
@@ -142,7 +142,7 @@ static __maybe_unused struct of_device_id ls1b200_clk_dt_ids[] = {
 	}
 };
 
-static struct driver_d ls1b200_clk_driver = {
+static struct driver ls1b200_clk_driver = {
 	.probe	= ls1b200_clk_probe,
 	.name	= "ls1b-clk",
 	.of_compatible = DRV_OF_COMPAT(ls1b200_clk_dt_ids),
diff --git a/drivers/clk/mvebu/common.c b/drivers/clk/mvebu/common.c
index c0a74a9655..27139abb12 100644
--- a/drivers/clk/mvebu/common.c
+++ b/drivers/clk/mvebu/common.c
@@ -96,7 +96,7 @@ static int mvebu_coreclk_probe(struct device *dev)
 	return of_clk_add_provider(np, of_clk_src_onecell_get, &clk_data);
 }
 
-static struct driver_d mvebu_coreclk_driver = {
+static struct driver mvebu_coreclk_driver = {
 	.probe	= mvebu_coreclk_probe,
 	.name	= "mvebu-core-clk",
 	.of_compatible = DRV_OF_COMPAT(mvebu_coreclk_ids),
@@ -197,7 +197,7 @@ static int mvebu_clk_gating_probe(struct device *dev)
 	return of_clk_add_provider(np, clk_gating_get_src, ctrl);
 }
 
-static struct driver_d mvebu_clk_gating_driver = {
+static struct driver mvebu_clk_gating_driver = {
 	.probe	= mvebu_clk_gating_probe,
 	.name	= "mvebu-clk-gating",
 	.of_compatible = DRV_OF_COMPAT(mvebu_clk_gating_ids),
diff --git a/drivers/clk/mvebu/corediv.c b/drivers/clk/mvebu/corediv.c
index 194fce700d..afd04c3c02 100644
--- a/drivers/clk/mvebu/corediv.c
+++ b/drivers/clk/mvebu/corediv.c
@@ -248,7 +248,7 @@ static int mvebu_corediv_clk_probe(struct device *dev)
 	return of_clk_add_provider(np, of_clk_src_onecell_get, &clk_data);
 }
 
-static struct driver_d mvebu_corediv_clk_driver = {
+static struct driver mvebu_corediv_clk_driver = {
 	.probe	= mvebu_corediv_clk_probe,
 	.name	= "mvebu-corediv-clk",
 	.of_compatible = DRV_OF_COMPAT(mvebu_corediv_clk_ids),
diff --git a/drivers/clk/mxs/clk-imx23.c b/drivers/clk/mxs/clk-imx23.c
index 8181238b71..b207e5f194 100644
--- a/drivers/clk/mxs/clk-imx23.c
+++ b/drivers/clk/mxs/clk-imx23.c
@@ -135,7 +135,7 @@ static __maybe_unused struct of_device_id imx23_ccm_dt_ids[] = {
 	}
 };
 
-static struct driver_d imx23_ccm_driver = {
+static struct driver imx23_ccm_driver = {
 	.probe	= imx23_ccm_probe,
 	.name	= "imx23-clkctrl",
 	.of_compatible = DRV_OF_COMPAT(imx23_ccm_dt_ids),
diff --git a/drivers/clk/mxs/clk-imx28.c b/drivers/clk/mxs/clk-imx28.c
index cb76258b26..3edf430464 100644
--- a/drivers/clk/mxs/clk-imx28.c
+++ b/drivers/clk/mxs/clk-imx28.c
@@ -198,7 +198,7 @@ static __maybe_unused struct of_device_id imx28_ccm_dt_ids[] = {
 	}
 };
 
-static struct driver_d imx28_ccm_driver = {
+static struct driver imx28_ccm_driver = {
 	.probe	= imx28_ccm_probe,
 	.name	= "imx28-clkctrl",
 	.of_compatible = DRV_OF_COMPAT(imx28_ccm_dt_ids),
diff --git a/drivers/clk/rockchip/clk-rk3399.c b/drivers/clk/rockchip/clk-rk3399.c
index 4f7722220d..020e4edae0 100644
--- a/drivers/clk/rockchip/clk-rk3399.c
+++ b/drivers/clk/rockchip/clk-rk3399.c
@@ -1644,7 +1644,7 @@ static int __init clk_rk3399_probe(struct device *dev)
 	return 0;
 }
 
-static struct driver_d clk_rk3399_driver = {
+static struct driver clk_rk3399_driver = {
 	.probe  = clk_rk3399_probe,
 	.name   = "clk-rk3399",
 	.of_compatible = DRV_OF_COMPAT(clk_rk3399_match_table),
diff --git a/drivers/clk/rockchip/clk-rk3568.c b/drivers/clk/rockchip/clk-rk3568.c
index 632298a023..d8c039ffd8 100644
--- a/drivers/clk/rockchip/clk-rk3568.c
+++ b/drivers/clk/rockchip/clk-rk3568.c
@@ -1731,7 +1731,7 @@ static int __init clk_rk3568_probe(struct device *dev)
 	return 0;
 }
 
-static struct driver_d clk_rk3568_driver = {
+static struct driver clk_rk3568_driver = {
 	.probe  = clk_rk3568_probe,
 	.name   = "clk-rk3568",
 	.of_compatible = DRV_OF_COMPAT(clk_rk3568_match_table),
diff --git a/drivers/clk/sifive/sifive-prci.c b/drivers/clk/sifive/sifive-prci.c
index eb4d963eff..ebf7693895 100644
--- a/drivers/clk/sifive/sifive-prci.c
+++ b/drivers/clk/sifive/sifive-prci.c
@@ -577,7 +577,7 @@ static const struct of_device_id sifive_prci_of_match[] = {
 	{}
 };
 
-static struct driver_d sifive_prci_driver = {
+static struct driver sifive_prci_driver = {
 	.name = "sifive-clk-prci",
 	.of_compatible = sifive_prci_of_match,
 	.probe = sifive_prci_probe,
diff --git a/drivers/clk/socfpga/clk.c b/drivers/clk/socfpga/clk.c
index a1ed9c92d1..943c09ff14 100644
--- a/drivers/clk/socfpga/clk.c
+++ b/drivers/clk/socfpga/clk.c
@@ -425,7 +425,7 @@ static __maybe_unused struct of_device_id socfpga_ccm_dt_ids[] = {
 	}
 };
 
-static struct driver_d socfpga_ccm_driver = {
+static struct driver socfpga_ccm_driver = {
 	.probe	= socfpga_ccm_probe,
 	.name	= "socfpga-ccm",
 	.of_compatible = DRV_OF_COMPAT(socfpga_ccm_dt_ids),
diff --git a/drivers/clk/starfive/jh7100-clkgen.c b/drivers/clk/starfive/jh7100-clkgen.c
index 0d165c99a6..dc90844ce5 100644
--- a/drivers/clk/starfive/jh7100-clkgen.c
+++ b/drivers/clk/starfive/jh7100-clkgen.c
@@ -355,7 +355,7 @@ static __maybe_unused struct of_device_id starfive_clkgen_clk_dt_ids[] = {
 	{ /* sentinel */ }
 };
 
-static struct driver_d starfive_clkgen_clk_driver = {
+static struct driver starfive_clkgen_clk_driver = {
 	.probe	= starfive_clkgen_clk_probe,
 	.name	= "starfive-clkgen",
 	.of_compatible = starfive_clkgen_clk_dt_ids,
diff --git a/drivers/clk/tegra/clk-tegra124.c b/drivers/clk/tegra/clk-tegra124.c
index 1a16d95d9b..18cfac33e9 100644
--- a/drivers/clk/tegra/clk-tegra124.c
+++ b/drivers/clk/tegra/clk-tegra124.c
@@ -362,7 +362,7 @@ static __maybe_unused struct of_device_id tegra124_car_dt_ids[] = {
 	}
 };
 
-static struct driver_d tegra124_car_driver = {
+static struct driver tegra124_car_driver = {
 	.probe	= tegra124_car_probe,
 	.name	= "tegra124-car",
 	.of_compatible = DRV_OF_COMPAT(tegra124_car_dt_ids),
diff --git a/drivers/clk/tegra/clk-tegra20.c b/drivers/clk/tegra/clk-tegra20.c
index ae0434b87f..2ecfa33561 100644
--- a/drivers/clk/tegra/clk-tegra20.c
+++ b/drivers/clk/tegra/clk-tegra20.c
@@ -365,7 +365,7 @@ static __maybe_unused struct of_device_id tegra20_car_dt_ids[] = {
 	}
 };
 
-static struct driver_d tegra20_car_driver = {
+static struct driver tegra20_car_driver = {
 	.probe	= tegra20_car_probe,
 	.name	= "tegra20-car",
 	.of_compatible = DRV_OF_COMPAT(tegra20_car_dt_ids),
diff --git a/drivers/clk/tegra/clk-tegra30.c b/drivers/clk/tegra/clk-tegra30.c
index 078dec958d..b602832bc6 100644
--- a/drivers/clk/tegra/clk-tegra30.c
+++ b/drivers/clk/tegra/clk-tegra30.c
@@ -393,7 +393,7 @@ static __maybe_unused struct of_device_id tegra30_car_dt_ids[] = {
 	}
 };
 
-static struct driver_d tegra30_car_driver = {
+static struct driver tegra30_car_driver = {
 	.probe	= tegra30_car_probe,
 	.name	= "tegra30-car",
 	.of_compatible = DRV_OF_COMPAT(tegra30_car_dt_ids),
diff --git a/drivers/clk/zynq/clkc.c b/drivers/clk/zynq/clkc.c
index 6a75ade5ac..53b4592c7f 100644
--- a/drivers/clk/zynq/clkc.c
+++ b/drivers/clk/zynq/clkc.c
@@ -484,7 +484,7 @@ static __maybe_unused struct of_device_id zynq_clock_dt_ids[] = {
 	}
 };
 
-static struct driver_d zynq_clock_driver = {
+static struct driver zynq_clock_driver = {
 	.probe  = zynq_clock_probe,
 	.name   = "zynq-clock",
 	.of_compatible = DRV_OF_COMPAT(zynq_clock_dt_ids),
diff --git a/drivers/clk/zynqmp/clkc.c b/drivers/clk/zynqmp/clkc.c
index acbbc481a0..afa6693caf 100644
--- a/drivers/clk/zynqmp/clkc.c
+++ b/drivers/clk/zynqmp/clkc.c
@@ -574,7 +574,7 @@ static struct of_device_id zynqmp_clock_of_match[] = {
 	{},
 };
 
-static struct driver_d zynqmp_clock_driver = {
+static struct driver zynqmp_clock_driver = {
 	.probe	= zynqmp_clock_probe,
 	.name	= "zynqmp_clock",
 	.of_compatible = DRV_OF_COMPAT(zynqmp_clock_of_match),
diff --git a/drivers/clocksource/arm_architected_timer.c b/drivers/clocksource/arm_architected_timer.c
index f8a60e4439..17398ca1e9 100644
--- a/drivers/clocksource/arm_architected_timer.c
+++ b/drivers/clocksource/arm_architected_timer.c
@@ -35,7 +35,7 @@ static struct of_device_id arm_arch_timer_dt_ids[] = {
 	{ }
 };
 
-static struct driver_d arm_arch_timer_driver = {
+static struct driver arm_arch_timer_driver = {
 	.name = "arm-architected-timer",
 	.probe = arm_arch_timer_probe,
 	.of_compatible = DRV_OF_COMPAT(arm_arch_timer_dt_ids),
diff --git a/drivers/clocksource/arm_global_timer.c b/drivers/clocksource/arm_global_timer.c
index 11039f7472..cf3dec502c 100644
--- a/drivers/clocksource/arm_global_timer.c
+++ b/drivers/clocksource/arm_global_timer.c
@@ -104,7 +104,7 @@ static struct of_device_id arm_global_timer_dt_ids[] = {
 	{ }
 };
 
-static struct driver_d arm_global_timer_driver = {
+static struct driver arm_global_timer_driver = {
 	.name = "arm-global-timer",
 	.probe = arm_global_timer_probe,
 	.of_compatible = DRV_OF_COMPAT(arm_global_timer_dt_ids),
diff --git a/drivers/clocksource/arm_smp_twd.c b/drivers/clocksource/arm_smp_twd.c
index 407d0e4052..eb0ec9a2bc 100644
--- a/drivers/clocksource/arm_smp_twd.c
+++ b/drivers/clocksource/arm_smp_twd.c
@@ -99,7 +99,7 @@ static __maybe_unused struct of_device_id smp_twd_compatible[] = {
 	}
 };
 
-static struct driver_d smp_twd_driver = {
+static struct driver smp_twd_driver = {
 	.name = "smp_twd",
 	.probe = smp_twd_probe,
 	.of_compatible = DRV_OF_COMPAT(smp_twd_compatible),
diff --git a/drivers/clocksource/armv7m_systick.c b/drivers/clocksource/armv7m_systick.c
index 4167e97655..f299d334a7 100644
--- a/drivers/clocksource/armv7m_systick.c
+++ b/drivers/clocksource/armv7m_systick.c
@@ -80,7 +80,7 @@ static struct of_device_id armv7m_systick_dt_ids[] = {
 	{ }
 };
 
-static struct driver_d armv7m_systick_driver = {
+static struct driver armv7m_systick_driver = {
 	.name = "armv7m-systick-timer",
 	.probe = armv7m_systick_probe,
 	.of_compatible = DRV_OF_COMPAT(armv7m_systick_dt_ids),
diff --git a/drivers/clocksource/bcm2835.c b/drivers/clocksource/bcm2835.c
index 5e3f0c0618..5e4d7db59e 100644
--- a/drivers/clocksource/bcm2835.c
+++ b/drivers/clocksource/bcm2835.c
@@ -81,7 +81,7 @@ static __maybe_unused struct of_device_id bcm2835_cs_dt_ids[] = {
 	}
 };
 
-static struct driver_d bcm2835_cs_driver = {
+static struct driver bcm2835_cs_driver = {
 	.name = "bcm2835-cs",
 	.probe = bcm2835_cs_probe,
 	.of_compatible = DRV_OF_COMPAT(bcm2835_cs_dt_ids),
diff --git a/drivers/clocksource/clps711x.c b/drivers/clocksource/clps711x.c
index 43d7d4de70..90ee554f9a 100644
--- a/drivers/clocksource/clps711x.c
+++ b/drivers/clocksource/clps711x.c
@@ -56,7 +56,7 @@ static const struct of_device_id __maybe_unused clps711x_timer_dt_ids[] = {
 	{ }
 };
 
-static struct driver_d clps711x_cs_driver = {
+static struct driver clps711x_cs_driver = {
 	.name = "clps711x-cs",
 	.probe = clps711x_cs_probe,
 	.of_compatible = DRV_OF_COMPAT(clps711x_timer_dt_ids),
diff --git a/drivers/clocksource/digic.c b/drivers/clocksource/digic.c
index cece33b582..b2c142f9cb 100644
--- a/drivers/clocksource/digic.c
+++ b/drivers/clocksource/digic.c
@@ -74,7 +74,7 @@ static __maybe_unused struct of_device_id digic_timer_dt_ids[] = {
 	}
 };
 
-static struct driver_d digic_timer_driver = {
+static struct driver digic_timer_driver = {
 	.probe	= digic_timer_probe,
 	.name	= "digic-timer",
 	.of_compatible = DRV_OF_COMPAT(digic_timer_dt_ids),
diff --git a/drivers/clocksource/dw_apb_timer.c b/drivers/clocksource/dw_apb_timer.c
index 62382b9105..5c2cbbd40b 100644
--- a/drivers/clocksource/dw_apb_timer.c
+++ b/drivers/clocksource/dw_apb_timer.c
@@ -136,7 +136,7 @@ static struct of_device_id dw_apb_timer_dt_ids[] = {
 	{ }
 };
 
-static struct driver_d dw_apb_timer_driver = {
+static struct driver dw_apb_timer_driver = {
 	.name = "dw-apb-timer",
 	.probe = dw_apb_timer_probe,
 	.of_compatible = DRV_OF_COMPAT(dw_apb_timer_dt_ids),
diff --git a/drivers/clocksource/efi.c b/drivers/clocksource/efi.c
index 4f9fbc3975..11dbb61897 100644
--- a/drivers/clocksource/efi.c
+++ b/drivers/clocksource/efi.c
@@ -101,7 +101,7 @@ static int efi_cs_probe(struct device *dev)
 	return init_clock(&efi_cs);
 }
 
-static struct driver_d efi_cs_driver = {
+static struct driver efi_cs_driver = {
 	.name = "efi-cs",
 	.probe = efi_cs_probe,
 };
diff --git a/drivers/clocksource/efi_x86.c b/drivers/clocksource/efi_x86.c
index bce75351ab..f5a822eef7 100644
--- a/drivers/clocksource/efi_x86.c
+++ b/drivers/clocksource/efi_x86.c
@@ -67,7 +67,7 @@ static int efi_x86_cs_probe(struct device *dev)
 	return init_clock(&efi_x86_cs);
 }
 
-static struct driver_d efi_x86_cs_driver = {
+static struct driver efi_x86_cs_driver = {
 	.name = "efi-cs-x86",
 	.probe = efi_x86_cs_probe,
 };
diff --git a/drivers/clocksource/kvx_timer.c b/drivers/clocksource/kvx_timer.c
index 77ecd64d41..4d3f1c68b1 100644
--- a/drivers/clocksource/kvx_timer.c
+++ b/drivers/clocksource/kvx_timer.c
@@ -50,7 +50,7 @@ static struct of_device_id kvx_timer_dt_ids[] = {
 	{ }
 };
 
-static struct driver_d kvx_timer_driver = {
+static struct driver kvx_timer_driver = {
 	.name = "kvx-timer",
 	.probe = kvx_timer_probe,
 	.of_compatible = DRV_OF_COMPAT(kvx_timer_dt_ids),
diff --git a/drivers/clocksource/mvebu.c b/drivers/clocksource/mvebu.c
index 27bb324a2e..0fc78260d5 100644
--- a/drivers/clocksource/mvebu.c
+++ b/drivers/clocksource/mvebu.c
@@ -90,7 +90,7 @@ static struct of_device_id mvebu_timer_dt_ids[] = {
 	{ }
 };
 
-static struct driver_d mvebu_timer_driver = {
+static struct driver mvebu_timer_driver = {
 	.name = "mvebu-timer",
 	.probe = mvebu_timer_probe,
 	.of_compatible = DRV_OF_COMPAT(mvebu_timer_dt_ids),
diff --git a/drivers/clocksource/nomadik.c b/drivers/clocksource/nomadik.c
index 6707fc2cc4..cffe9cdd03 100644
--- a/drivers/clocksource/nomadik.c
+++ b/drivers/clocksource/nomadik.c
@@ -135,7 +135,7 @@ static int nmdk_mtu_probe(struct device *dev)
 	return init_clock(&nmdk_clksrc);
 }
 
-static struct driver_d nmdk_mtu_driver = {
+static struct driver nmdk_mtu_driver = {
 	.name = "nomadik_mtu",
 	.probe = nmdk_mtu_probe,
 };
diff --git a/drivers/clocksource/orion.c b/drivers/clocksource/orion.c
index 634ec022fa..a28fbc686e 100644
--- a/drivers/clocksource/orion.c
+++ b/drivers/clocksource/orion.c
@@ -64,7 +64,7 @@ static struct of_device_id orion_timer_dt_ids[] = {
 	{ }
 };
 
-static struct driver_d orion_timer_driver = {
+static struct driver orion_timer_driver = {
 	.name = "orion-timer",
 	.probe = orion_timer_probe,
 	.of_compatible = DRV_OF_COMPAT(orion_timer_dt_ids),
diff --git a/drivers/clocksource/rk_timer.c b/drivers/clocksource/rk_timer.c
index 00c884949e..36aa6949e3 100644
--- a/drivers/clocksource/rk_timer.c
+++ b/drivers/clocksource/rk_timer.c
@@ -61,7 +61,7 @@ static __maybe_unused struct of_device_id rktimer_dt_ids[] = {
 	}
 };
 
-static struct driver_d rktimer_driver = {
+static struct driver rktimer_driver = {
 	.name = "rockchip-timer",
 	.probe = rockchip_timer_probe,
 	.of_compatible = DRV_OF_COMPAT(rktimer_dt_ids),
diff --git a/drivers/clocksource/timer-atmel-pit.c b/drivers/clocksource/timer-atmel-pit.c
index 72fe1368a1..1b0f2150db 100644
--- a/drivers/clocksource/timer-atmel-pit.c
+++ b/drivers/clocksource/timer-atmel-pit.c
@@ -97,7 +97,7 @@ const static __maybe_unused struct of_device_id at91_pit_dt_ids[] = {
 	}
 };
 
-static struct driver_d at91_pit_driver = {
+static struct driver at91_pit_driver = {
 	.name = "at91-pit",
 	.probe = at91_pit_probe,
 	.of_compatible = DRV_OF_COMPAT(at91_pit_dt_ids),
diff --git a/drivers/clocksource/timer-clint.c b/drivers/clocksource/timer-clint.c
index b5ac16e9bf..7b9fbc56d0 100644
--- a/drivers/clocksource/timer-clint.c
+++ b/drivers/clocksource/timer-clint.c
@@ -86,7 +86,7 @@ static struct of_device_id timer_clint_dt_ids[] = {
 	{ /* sentinel */ },
 };
 
-static struct driver_d clint_timer_driver = {
+static struct driver clint_timer_driver = {
 	.name = "clint-timer",
 	.probe = clint_timer_init_dt,
 	.of_compatible = timer_clint_dt_ids,
diff --git a/drivers/clocksource/timer-imx-gpt.c b/drivers/clocksource/timer-imx-gpt.c
index 6a2fb3f335..fe46b21a5d 100644
--- a/drivers/clocksource/timer-imx-gpt.c
+++ b/drivers/clocksource/timer-imx-gpt.c
@@ -166,7 +166,7 @@ static struct platform_device_id imx_gpt_ids[] = {
 	},
 };
 
-static struct driver_d imx_gpt_driver = {
+static struct driver imx_gpt_driver = {
 	.name = "imx-gpt",
 	.probe = imx_gpt_probe,
 	.of_compatible = DRV_OF_COMPAT(imx_gpt_dt_ids),
diff --git a/drivers/clocksource/timer-riscv.c b/drivers/clocksource/timer-riscv.c
index 22dfe6539f..93f88711dc 100644
--- a/drivers/clocksource/timer-riscv.c
+++ b/drivers/clocksource/timer-riscv.c
@@ -67,7 +67,7 @@ static int riscv_timer_init(struct device * dev)
 	return init_clock(&riscv_clocksource);
 }
 
-static struct driver_d riscv_timer_driver = {
+static struct driver riscv_timer_driver = {
 	.name = "riscv-timer",
 	.probe = riscv_timer_init,
 };
diff --git a/drivers/clocksource/timer-stm32.c b/drivers/clocksource/timer-stm32.c
index 4d1ca1080d..7e5f57fbb6 100644
--- a/drivers/clocksource/timer-stm32.c
+++ b/drivers/clocksource/timer-stm32.c
@@ -114,7 +114,7 @@ static struct of_device_id stm32_timer_dt_ids[] = {
 	{ /* sentinel */ }
 };
 
-static struct driver_d stm32_timer_driver = {
+static struct driver stm32_timer_driver = {
 	.name = "stm32-timer",
 	.probe = stm32_timer_probe,
 	.of_compatible = stm32_timer_dt_ids,
diff --git a/drivers/clocksource/timer-ti-32k.c b/drivers/clocksource/timer-ti-32k.c
index bf31e46270..658e0a226c 100644
--- a/drivers/clocksource/timer-ti-32k.c
+++ b/drivers/clocksource/timer-ti-32k.c
@@ -85,7 +85,7 @@ static __maybe_unused struct of_device_id omap_32ktimer_dt_ids[] = {
 	}
 };
 
-static struct driver_d omap_32ktimer_driver = {
+static struct driver omap_32ktimer_driver = {
 	.name = "omap-32ktimer",
 	.probe = omap_32ktimer_probe,
 	.of_compatible = DRV_OF_COMPAT(omap_32ktimer_dt_ids),
diff --git a/drivers/clocksource/timer-ti-dm.c b/drivers/clocksource/timer-ti-dm.c
index 0fea2221da..17412198b9 100644
--- a/drivers/clocksource/timer-ti-dm.c
+++ b/drivers/clocksource/timer-ti-dm.c
@@ -97,7 +97,7 @@ static __maybe_unused struct of_device_id omap_dmtimer_dt_ids[] = {
 	}
 };
 
-static struct driver_d omap_dmtimer_driver = {
+static struct driver omap_dmtimer_driver = {
 	.name = "omap-dmtimer",
 	.probe = omap_dmtimer_probe,
 	.of_compatible = DRV_OF_COMPAT(omap_dmtimer_dt_ids),
diff --git a/drivers/clocksource/uemd.c b/drivers/clocksource/uemd.c
index 54c79c29be..b7fbad3bf5 100644
--- a/drivers/clocksource/uemd.c
+++ b/drivers/clocksource/uemd.c
@@ -109,7 +109,7 @@ static __maybe_unused struct of_device_id uemd_timer_dt_ids[] = {
 	}
 };
 
-static struct driver_d uemd_timer_driver = {
+static struct driver uemd_timer_driver = {
 	.probe	= uemd_timer_probe,
 	.name	= "uemd-timer",
 	.of_compatible = DRV_OF_COMPAT(uemd_timer_dt_ids),
diff --git a/drivers/crypto/caam/ctrl.c b/drivers/crypto/caam/ctrl.c
index 72a422eb7c..f78940e1ac 100644
--- a/drivers/crypto/caam/ctrl.c
+++ b/drivers/crypto/caam/ctrl.c
@@ -690,7 +690,7 @@ static __maybe_unused struct of_device_id caam_match[] = {
 	{},
 };
 
-static struct driver_d caam_driver = {
+static struct driver caam_driver = {
 	.name	= "caam",
 	.probe	= caam_probe,
 	.of_compatible = DRV_OF_COMPAT(caam_match),
diff --git a/drivers/crypto/imx-scc/scc.c b/drivers/crypto/imx-scc/scc.c
index cf9613ec15..d97d802e01 100644
--- a/drivers/crypto/imx-scc/scc.c
+++ b/drivers/crypto/imx-scc/scc.c
@@ -487,7 +487,7 @@ static __maybe_unused struct of_device_id imx_scc_dt_ids[] = {
 	{ /* sentinel */ }
 };
 
-static struct driver_d imx_scc_driver = {
+static struct driver imx_scc_driver = {
 	.name		= "mxc-scc",
 	.probe		= imx_scc_probe,
 	.of_compatible	= imx_scc_dt_ids,
diff --git a/drivers/dma/apbh_dma.c b/drivers/dma/apbh_dma.c
index f03391fb89..e4e52deec5 100644
--- a/drivers/dma/apbh_dma.c
+++ b/drivers/dma/apbh_dma.c
@@ -209,7 +209,7 @@ static __maybe_unused struct of_device_id apbh_dt_ids[] = {
 	}
 };
 
-static struct driver_d apbh_dma_driver = {
+static struct driver apbh_dma_driver = {
 	.name  = "dma-apbh",
 	.id_table = apbh_ids,
 	.of_compatible = DRV_OF_COMPAT(apbh_dt_ids),
diff --git a/drivers/eeprom/at24.c b/drivers/eeprom/at24.c
index 1a7acedf57..059a92c718 100644
--- a/drivers/eeprom/at24.c
+++ b/drivers/eeprom/at24.c
@@ -515,7 +515,7 @@ err_out:
 
 }
 
-static struct driver_d at24_driver = {
+static struct driver at24_driver = {
 	.name		= "at24",
 	.probe		= at24_probe,
 	.id_table	= at24_ids,
diff --git a/drivers/eeprom/at25.c b/drivers/eeprom/at25.c
index e91bfc2980..738a2b7379 100644
--- a/drivers/eeprom/at25.c
+++ b/drivers/eeprom/at25.c
@@ -373,7 +373,7 @@ static __maybe_unused struct of_device_id at25_dt_ids[] = {
 	}
 };
 
-static struct driver_d at25_driver = {
+static struct driver at25_driver = {
 	.name  = DRIVERNAME,
 	.of_compatible = DRV_OF_COMPAT(at25_dt_ids),
 	.probe = at25_probe,
diff --git a/drivers/efi/efi-device.c b/drivers/efi/efi-device.c
index 9fbdc4e16d..ad6899ad5c 100644
--- a/drivers/efi/efi-device.c
+++ b/drivers/efi/efi-device.c
@@ -304,7 +304,7 @@ int efi_connect_all(void)
 	return 0;
 }
 
-static int efi_bus_match(struct device *dev, struct driver_d *drv)
+static int efi_bus_match(struct device *dev, struct driver *drv)
 {
 	struct efi_driver *efidrv = to_efi_driver(drv);
 	struct efi_device *efidev = to_efi_device(dev);
@@ -469,7 +469,7 @@ void efi_pause_devices(void)
 	struct device *dev;
 
 	bus_for_each_device(&efi_bus, dev) {
-		struct driver_d *drv = dev->driver;
+		struct driver *drv = dev->driver;
 		struct efi_device *efidev = to_efi_device(dev);
 		struct efi_driver *efidrv;
 
@@ -488,7 +488,7 @@ void efi_continue_devices(void)
 	struct device *dev;
 
 	bus_for_each_device(&efi_bus, dev) {
-		struct driver_d *drv = dev->driver;
+		struct driver *drv = dev->driver;
 		struct efi_device *efidev = to_efi_device(dev);
 		struct efi_driver *efidrv;
 
diff --git a/drivers/firmware/altera_serial.c b/drivers/firmware/altera_serial.c
index c6be89caae..99ec3fe350 100644
--- a/drivers/firmware/altera_serial.c
+++ b/drivers/firmware/altera_serial.c
@@ -392,7 +392,7 @@ static struct of_device_id altera_spi_id_table[] = {
 	{ }
 };
 
-static struct driver_d altera_spi_driver = {
+static struct driver altera_spi_driver = {
 	.name = "altera-fpga",
 	.of_compatible = DRV_OF_COMPAT(altera_spi_id_table),
 	.probe = altera_spi_probe,
diff --git a/drivers/firmware/arm_scmi/bus.c b/drivers/firmware/arm_scmi/bus.c
index 7431489cb4..b86c414ac9 100644
--- a/drivers/firmware/arm_scmi/bus.c
+++ b/drivers/firmware/arm_scmi/bus.c
@@ -36,7 +36,7 @@ scmi_dev_match_id(struct scmi_device *scmi_dev, struct scmi_driver *scmi_drv)
 	return NULL;
 }
 
-static int scmi_dev_match(struct device *dev, struct driver_d *drv)
+static int scmi_dev_match(struct device *dev, struct driver *drv)
 {
 	struct scmi_driver *scmi_drv = to_scmi_driver(drv);
 	struct scmi_device *scmi_dev = to_scmi_dev(dev);
diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
index abccaf2a1b..ecbd246980 100644
--- a/drivers/firmware/arm_scmi/driver.c
+++ b/drivers/firmware/arm_scmi/driver.c
@@ -1247,7 +1247,7 @@ static const struct of_device_id scmi_of_match[] = {
 	{ /* Sentinel */ },
 };
 
-static struct driver_d arm_scmi_driver = {
+static struct driver arm_scmi_driver = {
 	.name = "arm-scmi",
 	.of_compatible = scmi_of_match,
 	.probe = scmi_probe,
diff --git a/drivers/firmware/socfpga.c b/drivers/firmware/socfpga.c
index d875726ee6..b6bc15785b 100644
--- a/drivers/firmware/socfpga.c
+++ b/drivers/firmware/socfpga.c
@@ -460,7 +460,7 @@ static struct of_device_id socfpga_fpgamgr_id_table[] = {
 	{ /* sentinel */ }
 };
 
-static struct driver_d socfpga_fpgamgr_driver = {
+static struct driver socfpga_fpgamgr_driver = {
 	.name = "socfpa-fpgamgr",
 	.of_compatible = DRV_OF_COMPAT(socfpga_fpgamgr_id_table),
 	.probe = socfpga_fpgamgr_probe,
diff --git a/drivers/firmware/zynqmp-fpga.c b/drivers/firmware/zynqmp-fpga.c
index 8729991578..f4e8456843 100644
--- a/drivers/firmware/zynqmp-fpga.c
+++ b/drivers/firmware/zynqmp-fpga.c
@@ -406,7 +406,7 @@ static struct of_device_id zynqmpp_fpga_id_table[] = {
 	{ /* sentinel */ }
 };
 
-static struct driver_d zynqmp_fpga_driver = {
+static struct driver zynqmp_fpga_driver = {
 	.name = "zynqmp_fpga_manager",
 	.of_compatible = DRV_OF_COMPAT(zynqmpp_fpga_id_table),
 	.probe = zynqmp_fpga_probe,
diff --git a/drivers/fpga/socfpga-fpga2sdram-bridge.c b/drivers/fpga/socfpga-fpga2sdram-bridge.c
index d4297d5b8e..a5b683efdd 100644
--- a/drivers/fpga/socfpga-fpga2sdram-bridge.c
+++ b/drivers/fpga/socfpga-fpga2sdram-bridge.c
@@ -120,7 +120,7 @@ static int alt_fpga_bridge_probe(struct device *dev)
 	return ret;
 }
 
-static struct driver_d altera_fpga_driver = {
+static struct driver altera_fpga_driver = {
 	.probe = alt_fpga_bridge_probe,
 	.name = "altera-fpga2sdram-bridge",
 	.of_compatible = DRV_OF_COMPAT(altera_fpga_of_match),
diff --git a/drivers/fpga/socfpga-hps2fpga-bridge.c b/drivers/fpga/socfpga-hps2fpga-bridge.c
index af33f283c7..b8847c46f5 100644
--- a/drivers/fpga/socfpga-hps2fpga-bridge.c
+++ b/drivers/fpga/socfpga-hps2fpga-bridge.c
@@ -160,7 +160,7 @@ static int alt_fpga_bridge_probe(struct device *dev)
 				    priv);
 }
 
-static struct driver_d alt_fpga_bridge_driver = {
+static struct driver alt_fpga_bridge_driver = {
 	.probe = alt_fpga_bridge_probe,
 	.name = "altera-hps2fpga-bridge",
 	.of_compatible = DRV_OF_COMPAT(altera_fpga_of_match),
diff --git a/drivers/gpio/gpio-74164.c b/drivers/gpio/gpio-74164.c
index 84dc30069a..fb96e281b2 100644
--- a/drivers/gpio/gpio-74164.c
+++ b/drivers/gpio/gpio-74164.c
@@ -121,7 +121,7 @@ static int gpio_74164_probe(struct device *dev)
 	return gpiochip_add(&priv->chip);
 }
 
-static struct driver_d gpio_74164_driver = {
+static struct driver gpio_74164_driver = {
 	.name = "gpio-74164",
 	.probe = gpio_74164_probe,
 	.id_table = gpio_74164_ids,
diff --git a/drivers/gpio/gpio-74xx-mmio.c b/drivers/gpio/gpio-74xx-mmio.c
index 8c7d60939b..fe039a138f 100644
--- a/drivers/gpio/gpio-74xx-mmio.c
+++ b/drivers/gpio/gpio-74xx-mmio.c
@@ -152,7 +152,7 @@ static int mmio_74xx_gpio_probe(struct device *dev)
 	return gpiochip_add(gc);
 }
 
-static struct driver_d mmio_74xx_gpio_driver = {
+static struct driver mmio_74xx_gpio_driver = {
 	.name = "74xx-mmio-gpio",
 	.of_compatible	= DRV_OF_COMPAT(mmio_74xx_gpio_ids),
 	.probe = mmio_74xx_gpio_probe,
diff --git a/drivers/gpio/gpio-ath79.c b/drivers/gpio/gpio-ath79.c
index 083a942869..57fcae2dff 100644
--- a/drivers/gpio/gpio-ath79.c
+++ b/drivers/gpio/gpio-ath79.c
@@ -143,7 +143,7 @@ static int ath79_gpio_probe(struct device *dev)
 	return 0;
 }
 
-static struct driver_d ath79_gpio_driver = {
+static struct driver ath79_gpio_driver = {
 	.name = "ath79-gpio",
 	.probe = ath79_gpio_probe,
 	.of_compatible = DRV_OF_COMPAT(ath79_gpio_of_match),
diff --git a/drivers/gpio/gpio-clps711x.c b/drivers/gpio/gpio-clps711x.c
index 190ff2115a..a2968483f5 100644
--- a/drivers/gpio/gpio-clps711x.c
+++ b/drivers/gpio/gpio-clps711x.c
@@ -64,7 +64,7 @@ static const struct of_device_id __maybe_unused clps711x_gpio_dt_ids[] = {
 	{ /* sentinel */ }
 };
 
-static struct driver_d clps711x_gpio_driver = {
+static struct driver clps711x_gpio_driver = {
 	.name		= "clps711x-gpio",
 	.probe		= clps711x_gpio_probe,
 	.of_compatible	= DRV_OF_COMPAT(clps711x_gpio_dt_ids),
diff --git a/drivers/gpio/gpio-davinci.c b/drivers/gpio/gpio-davinci.c
index 899bb2e578..53a17fdc26 100644
--- a/drivers/gpio/gpio-davinci.c
+++ b/drivers/gpio/gpio-davinci.c
@@ -193,7 +193,7 @@ static struct of_device_id davinci_gpio_ids[] = {
 	{ /* sentinel */ },
 };
 
-static struct driver_d davinci_gpio_driver = {
+static struct driver davinci_gpio_driver = {
 	.name		= "davinci_gpio",
 	.probe		= davinci_gpio_probe,
 	.of_compatible	= DRV_OF_COMPAT(davinci_gpio_ids),
diff --git a/drivers/gpio/gpio-digic.c b/drivers/gpio/gpio-digic.c
index 2cfa728a6b..19b1d65c22 100644
--- a/drivers/gpio/gpio-digic.c
+++ b/drivers/gpio/gpio-digic.c
@@ -157,7 +157,7 @@ static __maybe_unused struct of_device_id digic_gpio_dt_ids[] = {
 	}
 };
 
-static struct driver_d digic_gpio_driver = {
+static struct driver digic_gpio_driver = {
 	.name = "digic-gpio",
 	.probe = digic_gpio_probe,
 	.of_compatible = DRV_OF_COMPAT(digic_gpio_dt_ids),
diff --git a/drivers/gpio/gpio-dw.c b/drivers/gpio/gpio-dw.c
index bdb840f8d0..cd5f81ba78 100644
--- a/drivers/gpio/gpio-dw.c
+++ b/drivers/gpio/gpio-dw.c
@@ -177,7 +177,7 @@ static __maybe_unused struct of_device_id dwgpio_match[] = {
 	},
 };
 
-static struct driver_d dwgpio_driver = {
+static struct driver dwgpio_driver = {
 	.name = "dw-apb-gpio",
 	.probe = dw_gpio_probe,
 	.of_compatible = DRV_OF_COMPAT(dwgpio_match),
diff --git a/drivers/gpio/gpio-generic.c b/drivers/gpio/gpio-generic.c
index cdb15d8639..a20230da72 100644
--- a/drivers/gpio/gpio-generic.c
+++ b/drivers/gpio/gpio-generic.c
@@ -601,7 +601,7 @@ static const struct of_device_id bgpio_of_match[] = {
 	}
 };
 
-static struct driver_d bgpio_driver = {
+static struct driver bgpio_driver = {
 	.name		= "basic-mmio-gpio",
 	.of_compatible	= bgpio_of_match,
 	.probe		= bgpio_dev_probe,
diff --git a/drivers/gpio/gpio-imx.c b/drivers/gpio/gpio-imx.c
index b4f0fbfbfe..d648dfca15 100644
--- a/drivers/gpio/gpio-imx.c
+++ b/drivers/gpio/gpio-imx.c
@@ -197,7 +197,7 @@ static struct platform_device_id imx_gpio_ids[] = {
 	},
 };
 
-static struct driver_d imx_gpio_driver = {
+static struct driver imx_gpio_driver = {
 	.name = "imx-gpio",
 	.probe = imx_gpio_probe,
 	.of_compatible = DRV_OF_COMPAT(imx_gpio_dt_ids),
diff --git a/drivers/gpio/gpio-jz4740.c b/drivers/gpio/gpio-jz4740.c
index bce240aa61..f38249ba92 100644
--- a/drivers/gpio/gpio-jz4740.c
+++ b/drivers/gpio/gpio-jz4740.c
@@ -120,7 +120,7 @@ static __maybe_unused struct of_device_id jz4740_gpio_dt_ids[] = {
 	},
 };
 
-static struct driver_d jz4740_gpio_driver = {
+static struct driver jz4740_gpio_driver = {
 	.name = "jz4740-gpio",
 	.probe = jz4740_gpio_probe,
 	.of_compatible	= DRV_OF_COMPAT(jz4740_gpio_dt_ids),
diff --git a/drivers/gpio/gpio-latch.c b/drivers/gpio/gpio-latch.c
index c6ba584537..dc9fe6a730 100644
--- a/drivers/gpio/gpio-latch.c
+++ b/drivers/gpio/gpio-latch.c
@@ -183,7 +183,7 @@ static const struct of_device_id gpio_latch_ids[] = {
 	}
 };
 
-static struct driver_d gpio_latch_driver = {
+static struct driver gpio_latch_driver = {
 	.name = "gpio-latch",
 	.probe = gpio_latch_probe,
 	.of_compatible = DRV_OF_COMPAT(gpio_latch_ids),
diff --git a/drivers/gpio/gpio-libftdi1.c b/drivers/gpio/gpio-libftdi1.c
index 043faefbf5..6495e614a5 100644
--- a/drivers/gpio/gpio-libftdi1.c
+++ b/drivers/gpio/gpio-libftdi1.c
@@ -118,7 +118,7 @@ static void libftdi1_gpio_remove(struct device *dev)
 	barebox_libftdi1_close();
 }
 
-static struct driver_d libftdi1_gpio_driver = {
+static struct driver libftdi1_gpio_driver = {
 	.name = "libftdi1-gpio",
 	.probe = libftdi1_gpio_probe,
 	.remove = libftdi1_gpio_remove,
diff --git a/drivers/gpio/gpio-malta-fpga-i2c.c b/drivers/gpio/gpio-malta-fpga-i2c.c
index 28ccf31cd6..7dfe4f1e71 100644
--- a/drivers/gpio/gpio-malta-fpga-i2c.c
+++ b/drivers/gpio/gpio-malta-fpga-i2c.c
@@ -160,7 +160,7 @@ static __maybe_unused struct of_device_id malta_i2c_gpio_dt_ids[] = {
 	},
 };
 
-static struct driver_d malta_i2c_gpio_driver = {
+static struct driver malta_i2c_gpio_driver = {
 	.name  = "malta-fpga-i2c-gpio",
 	.probe = malta_i2c_gpio_probe,
 	.of_compatible	= DRV_OF_COMPAT(malta_i2c_gpio_dt_ids),
diff --git a/drivers/gpio/gpio-mpc8xxx.c b/drivers/gpio/gpio-mpc8xxx.c
index c12ba2a3ae..327ead679d 100644
--- a/drivers/gpio/gpio-mpc8xxx.c
+++ b/drivers/gpio/gpio-mpc8xxx.c
@@ -108,7 +108,7 @@ static __maybe_unused struct of_device_id mpc8xxx_gpio_ids[] = {
 	},
 };
 
-static struct driver_d mpc8xxx_driver = {
+static struct driver mpc8xxx_driver = {
 	.name		= "mpc8xxx-gpio",
 	.probe		= mpc8xxx_probe,
 	.of_compatible  = DRV_OF_COMPAT(mpc8xxx_gpio_ids),
diff --git a/drivers/gpio/gpio-mxs.c b/drivers/gpio/gpio-mxs.c
index 8ca6e676ea..7909cbd1d5 100644
--- a/drivers/gpio/gpio-mxs.c
+++ b/drivers/gpio/gpio-mxs.c
@@ -163,7 +163,7 @@ static struct platform_device_id mxs_gpio_ids[] = {
 	},
 };
 
-static struct driver_d mxs_gpio_driver = {
+static struct driver mxs_gpio_driver = {
 	.name = "gpio-mxs",
 	.probe = mxs_gpio_probe,
 	.of_compatible = DRV_OF_COMPAT(mxs_gpio_dt_ids),
diff --git a/drivers/gpio/gpio-omap.c b/drivers/gpio/gpio-omap.c
index 3b3e589baf..02ac961919 100644
--- a/drivers/gpio/gpio-omap.c
+++ b/drivers/gpio/gpio-omap.c
@@ -162,7 +162,7 @@ static __maybe_unused struct of_device_id omap_gpio_dt_ids[] = {
 	}
 };
 
-static struct driver_d omap_gpio_driver = {
+static struct driver omap_gpio_driver = {
 	.name = "omap-gpio",
 	.probe = omap_gpio_probe,
 	.of_compatible = DRV_OF_COMPAT(omap_gpio_dt_ids),
diff --git a/drivers/gpio/gpio-orion.c b/drivers/gpio/gpio-orion.c
index 4c02c9a41d..6acc50e3b0 100644
--- a/drivers/gpio/gpio-orion.c
+++ b/drivers/gpio/gpio-orion.c
@@ -114,7 +114,7 @@ static struct of_device_id orion_gpio_dt_ids[] = {
 	{ }
 };
 
-static struct driver_d orion_gpio_driver = {
+static struct driver orion_gpio_driver = {
 	.name = "orion-gpio",
 	.probe = orion_gpio_probe,
 	.of_compatible = DRV_OF_COMPAT(orion_gpio_dt_ids),
diff --git a/drivers/gpio/gpio-pca953x.c b/drivers/gpio/gpio-pca953x.c
index 656fcd0492..4633d4f15d 100644
--- a/drivers/gpio/gpio-pca953x.c
+++ b/drivers/gpio/gpio-pca953x.c
@@ -497,7 +497,7 @@ static const struct of_device_id pca953x_dt_ids[] = {
 	{ }
 };
 
-static struct driver_d pca953x_driver = {
+static struct driver pca953x_driver = {
 	.name	= "pca953x",
 	.probe		= pca953x_probe,
 	.of_compatible	= DRV_OF_COMPAT(pca953x_dt_ids),
diff --git a/drivers/gpio/gpio-pcf857x.c b/drivers/gpio/gpio-pcf857x.c
index 613c0cb47d..88d7eee35d 100644
--- a/drivers/gpio/gpio-pcf857x.c
+++ b/drivers/gpio/gpio-pcf857x.c
@@ -239,7 +239,7 @@ static const struct of_device_id pcf857x_dt_ids[] = {
 	{ }
 };
 
-static struct driver_d pcf857x_driver = {
+static struct driver pcf857x_driver = {
 	.name	= "pcf857x",
 	.probe	= pcf857x_probe,
 	.of_compatible = DRV_OF_COMPAT(pcf857x_dt_ids),
diff --git a/drivers/gpio/gpio-raspberrypi-exp.c b/drivers/gpio/gpio-raspberrypi-exp.c
index 86440a7cec..c6344996db 100644
--- a/drivers/gpio/gpio-raspberrypi-exp.c
+++ b/drivers/gpio/gpio-raspberrypi-exp.c
@@ -263,7 +263,7 @@ static __maybe_unused struct of_device_id rpi_exp_gpio_ids[] = {
 	},
 };
 
-static struct driver_d rpi_exp_gpio_driver = {
+static struct driver rpi_exp_gpio_driver = {
 	.name = "rpi-exp-gpio",
 	.probe = rpi_exp_gpio_probe,
 	.of_compatible = DRV_OF_COMPAT(rpi_exp_gpio_ids),
diff --git a/drivers/gpio/gpio-sifive.c b/drivers/gpio/gpio-sifive.c
index c56672d2a0..de441b43f3 100644
--- a/drivers/gpio/gpio-sifive.c
+++ b/drivers/gpio/gpio-sifive.c
@@ -79,7 +79,7 @@ static const struct of_device_id sifive_gpio_match[] = {
 	{ },
 };
 
-static struct driver_d sifive_gpio_driver = {
+static struct driver sifive_gpio_driver = {
 	.name		= "sifive_gpio",
 	.of_compatible	= sifive_gpio_match,
 	.probe		= sifive_gpio_probe,
diff --git a/drivers/gpio/gpio-starfive-vic.c b/drivers/gpio/gpio-starfive-vic.c
index d34ab6a602..f36e7810b5 100644
--- a/drivers/gpio/gpio-starfive-vic.c
+++ b/drivers/gpio/gpio-starfive-vic.c
@@ -165,7 +165,7 @@ static const struct of_device_id starfive_gpio_match[] = {
 	{ },
 };
 
-static struct driver_d starfive_gpio_driver = {
+static struct driver starfive_gpio_driver = {
 	.probe	= starfive_gpio_probe,
 	.name		= "starfive_gpio",
 	.of_compatible	= starfive_gpio_match,
diff --git a/drivers/gpio/gpio-stmpe.c b/drivers/gpio/gpio-stmpe.c
index e4ec77936a..b736f66c7e 100644
--- a/drivers/gpio/gpio-stmpe.c
+++ b/drivers/gpio/gpio-stmpe.c
@@ -136,7 +136,7 @@ static int stmpe_gpio_probe(struct device *dev)
 	return 0;
 }
 
-static struct driver_d stmpe_gpio_driver = {
+static struct driver stmpe_gpio_driver = {
 	.name = "stmpe-gpio",
 	.probe = stmpe_gpio_probe,
 };
diff --git a/drivers/gpio/gpio-sx150x.c b/drivers/gpio/gpio-sx150x.c
index af4530e639..f6fa062e6c 100644
--- a/drivers/gpio/gpio-sx150x.c
+++ b/drivers/gpio/gpio-sx150x.c
@@ -256,7 +256,7 @@ static __maybe_unused struct of_device_id sx150x_dt_ids[] = {
 	{ }
 };
 
-static struct driver_d sx150x_driver = {
+static struct driver sx150x_driver = {
 	.name = "sx150x",
 	.probe = sx150x_probe,
 	.of_compatible = sx150x_dt_ids,
diff --git a/drivers/gpio/gpio-tegra.c b/drivers/gpio/gpio-tegra.c
index 6ee7bc9399..5cf2e5e763 100644
--- a/drivers/gpio/gpio-tegra.c
+++ b/drivers/gpio/gpio-tegra.c
@@ -182,7 +182,7 @@ static __maybe_unused struct of_device_id tegra_gpio_dt_ids[] = {
 	},
 };
 
-static struct driver_d tegra_gpio_driver = {
+static struct driver tegra_gpio_driver = {
 	.name		= "tegra-gpio",
 	.of_compatible	= DRV_OF_COMPAT(tegra_gpio_dt_ids),
 	.probe		= tegra_gpio_probe,
diff --git a/drivers/gpio/gpio-vf610.c b/drivers/gpio/gpio-vf610.c
index bf9bf32cf9..a597be45bb 100644
--- a/drivers/gpio/gpio-vf610.c
+++ b/drivers/gpio/gpio-vf610.c
@@ -140,7 +140,7 @@ free_port:
 	return ret;
 }
 
-static struct driver_d vf610_gpio_driver = {
+static struct driver vf610_gpio_driver = {
 	.name	= "gpio-vf610",
 	.probe  = vf610_gpio_probe,
 	.of_compatible = DRV_OF_COMPAT(vf610_gpio_dt_ids),
diff --git a/drivers/gpio/gpio-zynq.c b/drivers/gpio/gpio-zynq.c
index be27f9d282..97f976c1f1 100644
--- a/drivers/gpio/gpio-zynq.c
+++ b/drivers/gpio/gpio-zynq.c
@@ -427,7 +427,7 @@ static const struct of_device_id zynq_gpio_of_match[] = {
 	{ /* end of table */ }
 };
 
-static struct driver_d zynqmp_gpio_driver = {
+static struct driver zynqmp_gpio_driver = {
 	.name = "zynqmp-gpio",
 	.of_compatible = zynq_gpio_of_match,
 	.probe = zynqmp_gpio_probe,
diff --git a/drivers/hw_random/dev-random.c b/drivers/hw_random/dev-random.c
index 5290c1e4f6..52f4847e4a 100644
--- a/drivers/hw_random/dev-random.c
+++ b/drivers/hw_random/dev-random.c
@@ -56,7 +56,7 @@ static int devrandom_rnd_probe(struct device *dev)
 	return 0;
 }
 
-static struct driver_d devrandom_rnd_driver = {
+static struct driver devrandom_rnd_driver = {
 	.name	= "devrandom",
 	.probe	= devrandom_rnd_probe,
 };
diff --git a/drivers/hw_random/mxc-rngc.c b/drivers/hw_random/mxc-rngc.c
index 8fdb00f163..a7538cbfa2 100644
--- a/drivers/hw_random/mxc-rngc.c
+++ b/drivers/hw_random/mxc-rngc.c
@@ -283,7 +283,7 @@ static const struct of_device_id mxc_rngc_dt_ids[] = {
 	{ /* sentinel */ }
 };
 
-static struct driver_d mxc_rngc_driver = {
+static struct driver mxc_rngc_driver = {
 	.name = "mxc_rngc",
 	.probe = mxc_rngc_probe,
 	.of_compatible = mxc_rngc_dt_ids,
diff --git a/drivers/hw_random/starfive-vic-rng.c b/drivers/hw_random/starfive-vic-rng.c
index bf96ff25ed..4ca540a794 100644
--- a/drivers/hw_random/starfive-vic-rng.c
+++ b/drivers/hw_random/starfive-vic-rng.c
@@ -196,7 +196,7 @@ static const struct of_device_id vic_rng_dt_ids[] = {
 	{ /* sentinel */ }
 };
 
-static struct driver_d vic_rng_driver = {
+static struct driver vic_rng_driver = {
 	.name		= "vic-rng",
 	.probe		= vic_rng_probe,
 	.of_compatible	= vic_rng_dt_ids,
diff --git a/drivers/hw_random/stm32-rng.c b/drivers/hw_random/stm32-rng.c
index 5dbd12bf04..0ad772b403 100644
--- a/drivers/hw_random/stm32-rng.c
+++ b/drivers/hw_random/stm32-rng.c
@@ -153,7 +153,7 @@ static const struct of_device_id stm32_rng_dt_ids[] = {
 	{ /* sentinel */},
 };
 
-static struct driver_d stm32_rng_driver = {
+static struct driver stm32_rng_driver = {
 	.name = "stm32-rng",
 	.probe = stm32_rng_probe,
 	.remove = stm32_rng_remove,
diff --git a/drivers/i2c/busses/i2c-at91.c b/drivers/i2c/busses/i2c-at91.c
index a1a37980d5..2fe21a7ec9 100644
--- a/drivers/i2c/busses/i2c-at91.c
+++ b/drivers/i2c/busses/i2c-at91.c
@@ -565,7 +565,7 @@ out_free:
 	return rc;
 }
 
-static struct driver_d at91_twi_driver = {
+static struct driver at91_twi_driver = {
 	.name		= "at91-twi",
 	.probe		= at91_twi_probe,
 	.id_table	= at91_twi_devtypes,
diff --git a/drivers/i2c/busses/i2c-bcm283x.c b/drivers/i2c/busses/i2c-bcm283x.c
index 1dc542f984..b451fb7876 100644
--- a/drivers/i2c/busses/i2c-bcm283x.c
+++ b/drivers/i2c/busses/i2c-bcm283x.c
@@ -326,7 +326,7 @@ static struct of_device_id bcm283x_i2c_dt_ids[] = {
 	{ /* sentinel */ }
 };
 
-static struct driver_d bcm283x_i2c_driver = {
+static struct driver bcm283x_i2c_driver = {
 	.name		= "i2c-bcm283x",
 	.probe		= bcm283x_i2c_probe,
 	.of_compatible	= DRV_OF_COMPAT(bcm283x_i2c_dt_ids),
diff --git a/drivers/i2c/busses/i2c-cadence.c b/drivers/i2c/busses/i2c-cadence.c
index 7c8beb61e4..9f329247bf 100644
--- a/drivers/i2c/busses/i2c-cadence.c
+++ b/drivers/i2c/busses/i2c-cadence.c
@@ -445,7 +445,7 @@ static const struct of_device_id cdns_i2c_match[] = {
 	{},
 };
 
-static struct driver_d cdns_i2c_driver = {
+static struct driver cdns_i2c_driver = {
 	.name = "cdns-i2c",
 	.of_compatible = cdns_i2c_match,
 	.probe = cdns_i2c_probe,
diff --git a/drivers/i2c/busses/i2c-designware.c b/drivers/i2c/busses/i2c-designware.c
index e8ece4a2e2..9d94f00cb1 100644
--- a/drivers/i2c/busses/i2c-designware.c
+++ b/drivers/i2c/busses/i2c-designware.c
@@ -600,7 +600,7 @@ static __maybe_unused struct of_device_id i2c_dw_dt_ids[] = {
 	{ /* sentinel */ }
 };
 
-static struct driver_d i2c_dw_driver = {
+static struct driver i2c_dw_driver = {
 	.probe = i2c_dw_probe,
 	.name = "i2c-designware",
 	.of_compatible = DRV_OF_COMPAT(i2c_dw_dt_ids),
diff --git a/drivers/i2c/busses/i2c-gpio.c b/drivers/i2c/busses/i2c-gpio.c
index 6da80e9f0c..3edf38578b 100644
--- a/drivers/i2c/busses/i2c-gpio.c
+++ b/drivers/i2c/busses/i2c-gpio.c
@@ -229,7 +229,7 @@ static struct of_device_id i2c_gpio_dt_ids[] = {
 	{ /* sentinel */ }
 };
 
-static struct driver_d i2c_gpio_driver = {
+static struct driver i2c_gpio_driver = {
 	.name	= "i2c-gpio",
 	.probe	= i2c_gpio_probe,
 	.of_compatible = DRV_OF_COMPAT(i2c_gpio_dt_ids),
diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
index d739a3250a..c0af446bcc 100644
--- a/drivers/i2c/busses/i2c-imx.c
+++ b/drivers/i2c/busses/i2c-imx.c
@@ -649,7 +649,7 @@ static __maybe_unused struct of_device_id imx_i2c_dt_ids[] = {
 	{ /* sentinel */ }
 };
 
-static struct driver_d i2c_fsl_driver = {
+static struct driver i2c_fsl_driver = {
 	.probe	= i2c_fsl_probe,
 	.name	= "i2c-fsl",
 	.of_compatible = DRV_OF_COMPAT(imx_i2c_dt_ids),
diff --git a/drivers/i2c/busses/i2c-mv64xxx.c b/drivers/i2c/busses/i2c-mv64xxx.c
index 33e46f540e..abc2a7f2a2 100644
--- a/drivers/i2c/busses/i2c-mv64xxx.c
+++ b/drivers/i2c/busses/i2c-mv64xxx.c
@@ -643,7 +643,7 @@ exit_clk:
 	return rc;
 }
 
-static struct driver_d mv64xxx_i2c_driver = {
+static struct driver mv64xxx_i2c_driver = {
 	.probe	= mv64xxx_i2c_probe,
 	.name = "mv64xxx_i2c",
 	.of_compatible = DRV_OF_COMPAT(mv64xxx_i2c_of_match_table),
diff --git a/drivers/i2c/busses/i2c-omap.c b/drivers/i2c/busses/i2c-omap.c
index 79821be6f7..d9436b17c0 100644
--- a/drivers/i2c/busses/i2c-omap.c
+++ b/drivers/i2c/busses/i2c-omap.c
@@ -1220,7 +1220,7 @@ static __maybe_unused struct of_device_id omap_i2c_dt_ids[] = {
 	}
 };
 
-static struct driver_d omap_i2c_driver = {
+static struct driver omap_i2c_driver = {
 	.probe		= i2c_omap_probe,
 	.name		= DRIVER_NAME,
 	.id_table	= omap_i2c_ids,
diff --git a/drivers/i2c/busses/i2c-rockchip.c b/drivers/i2c/busses/i2c-rockchip.c
index 0d3fd2c6bb..f8c876614b 100644
--- a/drivers/i2c/busses/i2c-rockchip.c
+++ b/drivers/i2c/busses/i2c-rockchip.c
@@ -453,7 +453,7 @@ static const struct of_device_id rk_i2c_match[] = {
 	{},
 };
 
-static struct driver_d rk_i2c_driver = {
+static struct driver rk_i2c_driver = {
 	.name  = "rk3x-i2c",
 	.of_compatible = rk_i2c_match,
 	.probe   = rk_i2c_probe,
diff --git a/drivers/i2c/busses/i2c-stm32.c b/drivers/i2c/busses/i2c-stm32.c
index 9a0e374be2..5b1eba791a 100644
--- a/drivers/i2c/busses/i2c-stm32.c
+++ b/drivers/i2c/busses/i2c-stm32.c
@@ -851,7 +851,7 @@ static __maybe_unused struct of_device_id stm32_i2c_dt_ids[] = {
 	{ /* sentinel */ }
 };
 
-static struct driver_d stm32_i2c_driver = {
+static struct driver stm32_i2c_driver = {
 	.probe	= stm32_i2c_probe,
 	.name	= "stm32f7-i2c",
 	.of_compatible = DRV_OF_COMPAT(stm32_i2c_dt_ids),
diff --git a/drivers/i2c/busses/i2c-tegra.c b/drivers/i2c/busses/i2c-tegra.c
index 117bc8154c..0f93b9ae82 100644
--- a/drivers/i2c/busses/i2c-tegra.c
+++ b/drivers/i2c/busses/i2c-tegra.c
@@ -684,7 +684,7 @@ static __maybe_unused struct of_device_id tegra_i2c_compatible[] = {
 	}
 };
 
-static struct driver_d tegra_i2c_driver = {
+static struct driver tegra_i2c_driver = {
 	.name  = "tegra-i2c",
 	.probe   = tegra_i2c_probe,
 	.of_compatible = DRV_OF_COMPAT(tegra_i2c_compatible),
diff --git a/drivers/i2c/busses/i2c-versatile.c b/drivers/i2c/busses/i2c-versatile.c
index 2348631870..b287a79987 100644
--- a/drivers/i2c/busses/i2c-versatile.c
+++ b/drivers/i2c/busses/i2c-versatile.c
@@ -107,7 +107,7 @@ static struct of_device_id i2c_versatile_match[] = {
 	{},
 };
 
-static struct driver_d i2c_versatile_driver = {
+static struct driver i2c_versatile_driver = {
 	.name	= "versatile-i2c",
 	.probe	= i2c_versatile_probe,
 	.of_compatible = DRV_OF_COMPAT(i2c_versatile_match),
diff --git a/drivers/i2c/muxes/i2c-mux-pca954x.c b/drivers/i2c/muxes/i2c-mux-pca954x.c
index 9efee55d15..6c21b92860 100644
--- a/drivers/i2c/muxes/i2c-mux-pca954x.c
+++ b/drivers/i2c/muxes/i2c-mux-pca954x.c
@@ -255,7 +255,7 @@ err:
 	return ret;
 }
 
-static struct driver_d pca954x_driver = {
+static struct driver pca954x_driver = {
 	.name	= "pca954x",
 	.probe		= pca954x_probe,
 	.id_table	= pca954x_id,
diff --git a/drivers/input/gpio_keys.c b/drivers/input/gpio_keys.c
index f3639e744d..43072192ac 100644
--- a/drivers/input/gpio_keys.c
+++ b/drivers/input/gpio_keys.c
@@ -177,7 +177,7 @@ static struct of_device_id key_gpio_of_ids[] = {
 	{ }
 };
 
-static struct driver_d gpio_keys_driver = {
+static struct driver gpio_keys_driver = {
 	.name	= "gpio_keys",
 	.probe	= gpio_keys_probe,
 	.of_compatible = DRV_OF_COMPAT(key_gpio_of_ids),
diff --git a/drivers/input/imx_keypad.c b/drivers/input/imx_keypad.c
index b46d1f8106..477c5dc9dc 100644
--- a/drivers/input/imx_keypad.c
+++ b/drivers/input/imx_keypad.c
@@ -422,7 +422,7 @@ static __maybe_unused struct of_device_id imx_keypad_dt_ids[] = {
         { }
 };
 
-static struct driver_d imx_keypad_driver = {
+static struct driver imx_keypad_driver = {
 	.name   = "imx-kpp",
 	.probe  = imx_keypad_probe,
 	.of_compatible = DRV_OF_COMPAT(imx_keypad_dt_ids),
diff --git a/drivers/input/qt1070.c b/drivers/input/qt1070.c
index fb0e0ded33..c0fd85b03d 100644
--- a/drivers/input/qt1070.c
+++ b/drivers/input/qt1070.c
@@ -278,7 +278,7 @@ err:
 	return ret;
 }
 
-static struct driver_d qt1070_driver = {
+static struct driver qt1070_driver = {
 	.name	= "qt1070",
 	.probe	= qt1070_probe,
 };
diff --git a/drivers/input/twl6030_pwrbtn.c b/drivers/input/twl6030_pwrbtn.c
index 41a039f752..3e9e01f38b 100644
--- a/drivers/input/twl6030_pwrbtn.c
+++ b/drivers/input/twl6030_pwrbtn.c
@@ -90,7 +90,7 @@ static int __init twl6030_pwrbtn_probe(struct device *dev)
 	return poller_register(&idata->poller, dev_name(dev));
 }
 
-static struct driver_d twl6030_pwrbtn_driver = {
+static struct driver twl6030_pwrbtn_driver = {
 	.name	= "twl6030_pwrbtn",
 	.probe	= twl6030_pwrbtn_probe,
 };
diff --git a/drivers/led/led-gpio.c b/drivers/led/led-gpio.c
index 3daaf33aee..670618defb 100644
--- a/drivers/led/led-gpio.c
+++ b/drivers/led/led-gpio.c
@@ -258,7 +258,7 @@ static struct of_device_id led_gpio_of_ids[] = {
 	{ }
 };
 
-static struct driver_d led_gpio_of_driver = {
+static struct driver led_gpio_of_driver = {
 	.name  = "gpio-leds",
 	.probe = led_gpio_of_probe,
 	.of_compatible = DRV_OF_COMPAT(led_gpio_of_ids),
diff --git a/drivers/led/led-pca955x.c b/drivers/led/led-pca955x.c
index 80354c2cdf..615437da18 100644
--- a/drivers/led/led-pca955x.c
+++ b/drivers/led/led-pca955x.c
@@ -393,7 +393,7 @@ static int led_pca955x_probe(struct device *dev)
 	return err;
 }
 
-static struct driver_d led_pca955x_driver = {
+static struct driver led_pca955x_driver = {
 	.name	= "led-pca955x",
 	.probe	= led_pca955x_probe,
 	.id_table = led_pca955x_id,
diff --git a/drivers/led/led-pwm.c b/drivers/led/led-pwm.c
index 74cc31e7fb..59cae438ca 100644
--- a/drivers/led/led-pwm.c
+++ b/drivers/led/led-pwm.c
@@ -81,7 +81,7 @@ static struct of_device_id led_pwm_of_ids[] = {
 	{ }
 };
 
-static struct driver_d led_pwm_of_driver = {
+static struct driver led_pwm_of_driver = {
 	.name  = "pwm-leds",
 	.probe = led_pwm_of_probe,
 	.of_compatible = DRV_OF_COMPAT(led_pwm_of_ids),
diff --git a/drivers/mci/arasan-sdhci.c b/drivers/mci/arasan-sdhci.c
index 60a2785e2d..22389503be 100644
--- a/drivers/mci/arasan-sdhci.c
+++ b/drivers/mci/arasan-sdhci.c
@@ -307,7 +307,7 @@ static __maybe_unused struct of_device_id arasan_sdhci_compatible[] = {
 	{ /* sentinel */ }
 };
 
-static struct driver_d arasan_sdhci_driver = {
+static struct driver arasan_sdhci_driver = {
 	.name = "arasan-sdhci",
 	.probe = arasan_sdhci_probe,
 	.of_compatible = DRV_OF_COMPAT(arasan_sdhci_compatible),
diff --git a/drivers/mci/atmel-sdhci.c b/drivers/mci/atmel-sdhci.c
index 02af3c487f..2060b491a7 100644
--- a/drivers/mci/atmel-sdhci.c
+++ b/drivers/mci/atmel-sdhci.c
@@ -163,7 +163,7 @@ static const struct of_device_id at91_sdhci_dt_match[] = {
 	{ /* sentinel */ }
 };
 
-static struct driver_d at91_sdhci_driver = {
+static struct driver at91_sdhci_driver = {
 	.name		= "sdhci-at91",
 	.of_compatible	= DRV_OF_COMPAT(at91_sdhci_dt_match),
 	.probe		= at91_sdhci_probe,
diff --git a/drivers/mci/atmel_mci.c b/drivers/mci/atmel_mci.c
index 4975c3a306..1a8a5d4ab8 100644
--- a/drivers/mci/atmel_mci.c
+++ b/drivers/mci/atmel_mci.c
@@ -194,7 +194,7 @@ static __maybe_unused struct of_device_id atmci_compatible[] = {
 	}
 };
 
-static struct driver_d atmci_driver = {
+static struct driver atmci_driver = {
 	.name	= "atmel_mci",
 	.probe	= atmci_probe,
 	.of_compatible = DRV_OF_COMPAT(atmci_compatible),
diff --git a/drivers/mci/bcm2835-sdhost.c b/drivers/mci/bcm2835-sdhost.c
index c3b844f28e..c11a68aa5a 100644
--- a/drivers/mci/bcm2835-sdhost.c
+++ b/drivers/mci/bcm2835-sdhost.c
@@ -620,7 +620,7 @@ static __maybe_unused struct of_device_id bcm2835_sdhost_compatible[] = {
 	{ /* sentinel */ }
 };
 
-static struct driver_d bcm2835_sdhost_driver = {
+static struct driver bcm2835_sdhost_driver = {
 	.name  = "bcm2835-sdhost",
 	.probe = bcm2835_sdhost_probe,
 	.of_compatible = DRV_OF_COMPAT(bcm2835_sdhost_compatible),
diff --git a/drivers/mci/dove-sdhci.c b/drivers/mci/dove-sdhci.c
index 308195303d..ff75bb8059 100644
--- a/drivers/mci/dove-sdhci.c
+++ b/drivers/mci/dove-sdhci.c
@@ -299,7 +299,7 @@ static struct of_device_id dove_sdhci_dt_ids[] = {
 	{ }
 };
 
-static struct driver_d dove_sdhci_driver = {
+static struct driver dove_sdhci_driver = {
 	.name = "dove-sdhci",
 	.probe = dove_sdhci_probe,
 	.of_compatible = DRV_OF_COMPAT(dove_sdhci_dt_ids),
diff --git a/drivers/mci/dw_mmc.c b/drivers/mci/dw_mmc.c
index 1f05e86740..8f3317deb5 100644
--- a/drivers/mci/dw_mmc.c
+++ b/drivers/mci/dw_mmc.c
@@ -649,7 +649,7 @@ static __maybe_unused struct of_device_id dw_mmc_compatible[] = {
 	}
 };
 
-static struct driver_d dw_mmc_driver = {
+static struct driver dw_mmc_driver = {
 	.name  = "dw_mmc",
 	.probe = dw_mmc_probe,
 	.of_compatible = DRV_OF_COMPAT(dw_mmc_compatible),
diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index c593b301d8..2e2bc14ef9 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -375,7 +375,7 @@ static struct platform_device_id imx_esdhc_ids[] = {
 	}
 };
 
-static struct driver_d fsl_esdhc_driver = {
+static struct driver fsl_esdhc_driver = {
 	.name  = "imx-esdhc",
 	.probe = fsl_esdhc_probe,
 	.of_compatible = DRV_OF_COMPAT(fsl_esdhc_compatible),
diff --git a/drivers/mci/imx.c b/drivers/mci/imx.c
index 9197509489..b1c1fd9407 100644
--- a/drivers/mci/imx.c
+++ b/drivers/mci/imx.c
@@ -528,7 +528,7 @@ static __maybe_unused struct of_device_id mxcmci_compatible[] = {
 	}
 };
 
-static struct driver_d mxcmci_driver = {
+static struct driver mxcmci_driver = {
         .name  = DRIVER_NAME,
         .probe = mxcmci_probe,
 	.of_compatible = DRV_OF_COMPAT(mxcmci_compatible),
diff --git a/drivers/mci/mci-bcm2835.c b/drivers/mci/mci-bcm2835.c
index 3c7bf5ad21..bcdf1b6196 100644
--- a/drivers/mci/mci-bcm2835.c
+++ b/drivers/mci/mci-bcm2835.c
@@ -430,7 +430,7 @@ static __maybe_unused struct of_device_id bcm2835_mci_compatible[] = {
 	}
 };
 
-static struct driver_d bcm2835_mci_driver = {
+static struct driver bcm2835_mci_driver = {
 	.name = "bcm2835_mci",
 	.probe = bcm2835_mci_probe,
 	.of_compatible = DRV_OF_COMPAT(bcm2835_mci_compatible),
diff --git a/drivers/mci/mci_spi.c b/drivers/mci/mci_spi.c
index 815cca0383..2d72c2148b 100644
--- a/drivers/mci/mci_spi.c
+++ b/drivers/mci/mci_spi.c
@@ -451,7 +451,7 @@ static __maybe_unused struct of_device_id spi_mci_compatible[] = {
 	{ /* sentinel */ }
 };
 
-static struct driver_d spi_mci_driver = {
+static struct driver spi_mci_driver = {
 	.name	= "spi_mci",
 	.probe	= spi_mci_probe,
 	.of_compatible = DRV_OF_COMPAT(spi_mci_compatible),
diff --git a/drivers/mci/mxs.c b/drivers/mci/mxs.c
index f9084fda7c..8e0753fe95 100644
--- a/drivers/mci/mxs.c
+++ b/drivers/mci/mxs.c
@@ -599,7 +599,7 @@ static __maybe_unused struct of_device_id mxs_mmc_compatible[] = {
 	}
 };
 
-static struct driver_d mxs_mci_driver = {
+static struct driver mxs_mci_driver = {
         .name  = "mxs_mci",
         .probe = mxs_mci_probe,
 	.of_compatible = DRV_OF_COMPAT(mxs_mmc_compatible),
diff --git a/drivers/mci/omap_hsmmc.c b/drivers/mci/omap_hsmmc.c
index 0c326c7818..205d5b434a 100644
--- a/drivers/mci/omap_hsmmc.c
+++ b/drivers/mci/omap_hsmmc.c
@@ -648,7 +648,7 @@ static __maybe_unused struct of_device_id omap_mmc_dt_ids[] = {
 	}
 };
 
-static struct driver_d omap_mmc_driver = {
+static struct driver omap_mmc_driver = {
 	.name  = "omap-hsmmc",
 	.probe = omap_mmc_probe,
 	.id_table = omap_mmc_ids,
diff --git a/drivers/mci/pxamci.c b/drivers/mci/pxamci.c
index 9227f1537a..d5807c0fc9 100644
--- a/drivers/mci/pxamci.c
+++ b/drivers/mci/pxamci.c
@@ -375,7 +375,7 @@ static int pxamci_probe(struct device *dev)
 	return 0;
 }
 
-static struct driver_d pxamci_driver = {
+static struct driver pxamci_driver = {
 	.name  = DRIVER_NAME,
 	.probe = pxamci_probe,
 };
diff --git a/drivers/mci/rockchip-dwcmshc-sdhci.c b/drivers/mci/rockchip-dwcmshc-sdhci.c
index ccf4b4183d..87cbe9836c 100644
--- a/drivers/mci/rockchip-dwcmshc-sdhci.c
+++ b/drivers/mci/rockchip-dwcmshc-sdhci.c
@@ -369,7 +369,7 @@ static __maybe_unused struct of_device_id rk_sdhci_compatible[] = {
 	}
 };
 
-static struct driver_d rk_sdhci_driver = {
+static struct driver rk_sdhci_driver = {
 	.name = "rk3568-dwcmshc-sdhci",
 	.probe = rk_sdhci_probe,
 	.of_compatible = DRV_OF_COMPAT(rk_sdhci_compatible),
diff --git a/drivers/mci/s3c.c b/drivers/mci/s3c.c
index 496714b167..f1d00ecdc2 100644
--- a/drivers/mci/s3c.c
+++ b/drivers/mci/s3c.c
@@ -755,7 +755,7 @@ static int s3c_mci_probe(struct device *hw_dev)
 	return mci_register(&s3c_host->host);
 }
 
-static struct driver_d s3c_mci_driver = {
+static struct driver s3c_mci_driver = {
         .name  = "s3c_mci",
         .probe = s3c_mci_probe,
 };
diff --git a/drivers/mci/tegra-sdmmc.c b/drivers/mci/tegra-sdmmc.c
index 1f6cdf90b1..d3eb39bb32 100644
--- a/drivers/mci/tegra-sdmmc.c
+++ b/drivers/mci/tegra-sdmmc.c
@@ -452,7 +452,7 @@ static __maybe_unused struct of_device_id tegra_sdmmc_compatible[] = {
 	}
 };
 
-static struct driver_d tegra_sdmmc_driver = {
+static struct driver tegra_sdmmc_driver = {
 	.name  = "tegra-sdmmc",
 	.probe = tegra_sdmmc_probe,
 	.of_compatible = DRV_OF_COMPAT(tegra_sdmmc_compatible),
diff --git a/drivers/memory/mc-tegra124.c b/drivers/memory/mc-tegra124.c
index 0254bf3212..bb4d29cac8 100644
--- a/drivers/memory/mc-tegra124.c
+++ b/drivers/memory/mc-tegra124.c
@@ -51,7 +51,7 @@ static __maybe_unused struct of_device_id tegra124_mc_dt_ids[] = {
 	},
 };
 
-static struct driver_d tegra124_mc_driver = {
+static struct driver tegra124_mc_driver = {
 	.name		= "tegra124-mc",
 	.of_compatible	= DRV_OF_COMPAT(tegra124_mc_dt_ids),
 	.probe		= tegra124_mc_probe,
diff --git a/drivers/mfd/act8846.c b/drivers/mfd/act8846.c
index a9eee8c155..f15310f507 100644
--- a/drivers/mfd/act8846.c
+++ b/drivers/mfd/act8846.c
@@ -127,7 +127,7 @@ static int act8846_probe(struct device *dev)
 	return 0;
 }
 
-static struct driver_d act8846_driver = {
+static struct driver act8846_driver = {
 	.name  = DRIVERNAME,
 	.probe = act8846_probe,
 };
diff --git a/drivers/mfd/atmel-flexcom.c b/drivers/mfd/atmel-flexcom.c
index 0f111f9c22..8649431ca1 100644
--- a/drivers/mfd/atmel-flexcom.c
+++ b/drivers/mfd/atmel-flexcom.c
@@ -65,7 +65,7 @@ static const struct of_device_id atmel_flexcom_of_match[] = {
 	{ /* sentinel */ }
 };
 
-static struct driver_d atmel_flexcom_driver = {
+static struct driver atmel_flexcom_driver = {
 	.probe		= atmel_flexcom_probe,
 	.name		= "atmel_flexcom",
 	.of_compatible	= atmel_flexcom_of_match,
diff --git a/drivers/mfd/axp20x-i2c.c b/drivers/mfd/axp20x-i2c.c
index 14899caba9..1087b99bab 100644
--- a/drivers/mfd/axp20x-i2c.c
+++ b/drivers/mfd/axp20x-i2c.c
@@ -59,7 +59,7 @@ static const struct of_device_id axp20x_i2c_of_match[] = {
 	{ },
 };
 
-static struct driver_d axp20x_i2c_driver = {
+static struct driver axp20x_i2c_driver = {
 	.name		= "axp20x-i2c",
 	.probe		= axp20x_i2c_probe,
 	.of_compatible	= DRV_OF_COMPAT(axp20x_i2c_of_match),
diff --git a/drivers/mfd/da9053.c b/drivers/mfd/da9053.c
index f7c3bd89dd..435b183346 100644
--- a/drivers/mfd/da9053.c
+++ b/drivers/mfd/da9053.c
@@ -289,7 +289,7 @@ static __maybe_unused struct of_device_id da9053_dt_ids[] = {
 	}
 };
 
-static struct driver_d da9053_driver = {
+static struct driver da9053_driver = {
 	.name  = DRIVERNAME,
 	.probe = da9053_probe,
 	.of_compatible = DRV_OF_COMPAT(da9053_dt_ids),
diff --git a/drivers/mfd/da9063.c b/drivers/mfd/da9063.c
index 5df29ef1d8..30fc559f80 100644
--- a/drivers/mfd/da9063.c
+++ b/drivers/mfd/da9063.c
@@ -427,7 +427,7 @@ static struct of_device_id const	da906x_dt_ids[] = {
 	}
 };
 
-static struct driver_d da9063_driver = {
+static struct driver da9063_driver = {
 	.name = "da9063",
 	.probe = da9063_probe,
 	.id_table = da9063_id,
diff --git a/drivers/mfd/lp3972.c b/drivers/mfd/lp3972.c
index 6758f166a7..d72f697da5 100644
--- a/drivers/mfd/lp3972.c
+++ b/drivers/mfd/lp3972.c
@@ -80,7 +80,7 @@ static int lp_probe(struct device *dev)
 	return 0;
 }
 
-static struct driver_d lp_driver = {
+static struct driver lp_driver = {
 	.name  = DRIVERNAME,
 	.probe = lp_probe,
 };
diff --git a/drivers/mfd/mc13xxx.c b/drivers/mfd/mc13xxx.c
index 727ed65bb0..6fc4ea73ea 100644
--- a/drivers/mfd/mc13xxx.c
+++ b/drivers/mfd/mc13xxx.c
@@ -388,7 +388,7 @@ static __maybe_unused struct of_device_id mc13xxx_dt_ids[] = {
 	{ }
 };
 
-static __maybe_unused struct driver_d mc13xxx_i2c_driver = {
+static __maybe_unused struct driver mc13xxx_i2c_driver = {
 	.name		= "mc13xxx-i2c",
 	.probe		= mc13xxx_probe,
 	.id_table	= mc13xxx_ids,
@@ -399,7 +399,7 @@ static __maybe_unused struct driver_d mc13xxx_i2c_driver = {
 coredevice_i2c_driver(mc13xxx_i2c_driver);
 #endif
 
-static __maybe_unused struct driver_d mc13xxx_spi_driver = {
+static __maybe_unused struct driver mc13xxx_spi_driver = {
 	.name		= "mc13xxx-spi",
 	.probe		= mc13xxx_probe,
 	.id_table	= mc13xxx_ids,
diff --git a/drivers/mfd/mc34704.c b/drivers/mfd/mc34704.c
index 28765453ea..a03a967e4e 100644
--- a/drivers/mfd/mc34704.c
+++ b/drivers/mfd/mc34704.c
@@ -115,7 +115,7 @@ static __maybe_unused struct of_device_id mc34704_dt_ids[] = {
 	{ }
 };
 
-static struct driver_d mc34704_driver = {
+static struct driver mc34704_driver = {
 	.name  = DRIVERNAME,
 	.probe = mc34704_probe,
 	.of_compatible = DRV_OF_COMPAT(mc34704_dt_ids),
diff --git a/drivers/mfd/mc9sdz60.c b/drivers/mfd/mc9sdz60.c
index 0f8ded11d8..1f8a5611b4 100644
--- a/drivers/mfd/mc9sdz60.c
+++ b/drivers/mfd/mc9sdz60.c
@@ -122,7 +122,7 @@ static int mc_probe(struct device *dev)
 	return 0;
 }
 
-static struct driver_d mc_driver = {
+static struct driver mc_driver = {
 	.name  = DRIVERNAME,
 	.probe = mc_probe,
 };
diff --git a/drivers/mfd/rave-sp.c b/drivers/mfd/rave-sp.c
index 26a0fa3fbd..b12653a5f9 100644
--- a/drivers/mfd/rave-sp.c
+++ b/drivers/mfd/rave-sp.c
@@ -853,7 +853,7 @@ static int rave_sp_probe(struct device *dev)
 	return of_platform_populate(dev->of_node, NULL, dev);
 }
 
-static struct driver_d rave_sp_drv = {
+static struct driver rave_sp_drv = {
 	.name = "rave-sp",
 	.probe = rave_sp_probe,
 	.of_compatible = DRV_OF_COMPAT(rave_sp_dt_ids),
diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
index d7f1e659e2..d16721b87f 100644
--- a/drivers/mfd/rk808.c
+++ b/drivers/mfd/rk808.c
@@ -381,7 +381,7 @@ static const struct of_device_id rk808_of_match[] = {
 	{ },
 };
 
-static struct driver_d rk808_i2c_driver = {
+static struct driver rk808_i2c_driver = {
 	.name = "rk808",
 	.of_compatible = rk808_of_match,
 	.probe    = rk808_probe,
diff --git a/drivers/mfd/rn5t568.c b/drivers/mfd/rn5t568.c
index a5b116c6b8..2fdcdec99e 100644
--- a/drivers/mfd/rn5t568.c
+++ b/drivers/mfd/rn5t568.c
@@ -157,7 +157,7 @@ static __maybe_unused const struct of_device_id rn5t568_of_match[] = {
 	{ }
 };
 
-static struct driver_d rn5t568_i2c_driver = {
+static struct driver rn5t568_i2c_driver = {
 	.name		= "rn5t568-i2c",
 	.probe		= rn5t568_i2c_probe,
 	.of_compatible	= DRV_OF_COMPAT(rn5t568_of_match),
diff --git a/drivers/mfd/stm32-timers.c b/drivers/mfd/stm32-timers.c
index e3bf8469e7..d079afa667 100644
--- a/drivers/mfd/stm32-timers.c
+++ b/drivers/mfd/stm32-timers.c
@@ -66,7 +66,7 @@ static const struct of_device_id stm32_timers_of_match[] = {
 	{ /* sentinel */ },
 };
 
-static struct driver_d stm32_timers_driver = {
+static struct driver stm32_timers_driver = {
 	.name = "stm32-timers",
 	.probe = stm32_timers_probe,
 	.of_compatible = stm32_timers_of_match,
diff --git a/drivers/mfd/stmpe-i2c.c b/drivers/mfd/stmpe-i2c.c
index 916c22e48a..08dc48246e 100644
--- a/drivers/mfd/stmpe-i2c.c
+++ b/drivers/mfd/stmpe-i2c.c
@@ -156,7 +156,7 @@ static struct platform_device_id stmpe_i2c_id[] = {
 	{ }
 };
 
-static struct driver_d stmpe_driver = {
+static struct driver stmpe_driver = {
 	.name  = DRIVERNAME,
 	.probe = stmpe_probe,
 	.id_table = stmpe_i2c_id,
diff --git a/drivers/mfd/stpmic1.c b/drivers/mfd/stpmic1.c
index 69cfd07682..f878ff7015 100644
--- a/drivers/mfd/stpmic1.c
+++ b/drivers/mfd/stpmic1.c
@@ -47,7 +47,7 @@ static __maybe_unused struct of_device_id stpmic1_dt_ids[] = {
 	{ /* sentinel */ }
 };
 
-static struct driver_d stpmic1_i2c_driver = {
+static struct driver stpmic1_i2c_driver = {
 	.name		= "stpmic1-i2c",
 	.probe		= stpmic1_probe,
 	.of_compatible	= DRV_OF_COMPAT(stpmic1_dt_ids),
diff --git a/drivers/mfd/syscon.c b/drivers/mfd/syscon.c
index 585d2ecc9c..5d1fed4aee 100644
--- a/drivers/mfd/syscon.c
+++ b/drivers/mfd/syscon.c
@@ -257,7 +257,7 @@ static struct platform_device_id syscon_ids[] = {
 	{ }
 };
 
-static struct driver_d syscon_driver = {
+static struct driver syscon_driver = {
 	.name		= "syscon",
 	.probe		= syscon_probe,
 	.id_table	= syscon_ids,
diff --git a/drivers/mfd/twl4030.c b/drivers/mfd/twl4030.c
index 4db15b802d..7acf9b18bd 100644
--- a/drivers/mfd/twl4030.c
+++ b/drivers/mfd/twl4030.c
@@ -43,7 +43,7 @@ static int twl_probe(struct device *dev)
 	return 0;
 }
 
-static struct driver_d twl_driver = {
+static struct driver twl_driver = {
 	.name  = DRIVERNAME,
 	.probe = twl_probe,
 };
diff --git a/drivers/mfd/twl6030.c b/drivers/mfd/twl6030.c
index 11eef883cf..d7a7d9baf8 100644
--- a/drivers/mfd/twl6030.c
+++ b/drivers/mfd/twl6030.c
@@ -61,7 +61,7 @@ static int twl_probe(struct device *dev)
 	return 0;
 }
 
-static struct driver_d twl_driver = {
+static struct driver twl_driver = {
 	.name  = DRIVERNAME,
 	.probe = twl_probe,
 };
diff --git a/drivers/misc/jtag.c b/drivers/misc/jtag.c
index ab241106af..e884e58bac 100644
--- a/drivers/misc/jtag.c
+++ b/drivers/misc/jtag.c
@@ -358,7 +358,7 @@ static void jtag_remove(struct device *pdev)
 	dev_notice(pdev, "Device removed\n");
 }
 
-static struct driver_d jtag_driver = {
+static struct driver jtag_driver = {
 	.name = JTAG_NAME,
 	.probe = jtag_probe,
 	.remove = jtag_remove,
diff --git a/drivers/misc/mem.c b/drivers/misc/mem.c
index e1eabbffdb..0cf021cf97 100644
--- a/drivers/misc/mem.c
+++ b/drivers/misc/mem.c
@@ -41,7 +41,7 @@ static int mem_probe(struct device *dev)
 	return 0;
 }
 
-static struct driver_d mem_drv = {
+static struct driver mem_drv = {
 	.name  = "mem",
 	.probe = mem_probe,
 };
diff --git a/drivers/misc/sram.c b/drivers/misc/sram.c
index 7e4e8dcdd9..e4492c65aa 100644
--- a/drivers/misc/sram.c
+++ b/drivers/misc/sram.c
@@ -54,7 +54,7 @@ static __maybe_unused struct of_device_id sram_dt_ids[] = {
 	},
 };
 
-static struct driver_d sram_driver = {
+static struct driver sram_driver = {
 	.name = "mmio-sram",
 	.probe = sram_probe,
 	.of_compatible = sram_dt_ids,
diff --git a/drivers/misc/starfive-pwrseq.c b/drivers/misc/starfive-pwrseq.c
index e8b52b57bb..45f3b1c9ff 100644
--- a/drivers/misc/starfive-pwrseq.c
+++ b/drivers/misc/starfive-pwrseq.c
@@ -37,7 +37,7 @@ static struct of_device_id starfive_pwrseq_dt_ids[] = {
 	{ /* sentinel */ }
 };
 
-static struct driver_d starfive_pwrseq_driver = {
+static struct driver starfive_pwrseq_driver = {
 	.name	= "starfive_pwrseq",
 	.probe	= starfive_pwrseq_probe,
 	.of_compatible = starfive_pwrseq_dt_ids,
diff --git a/drivers/misc/state.c b/drivers/misc/state.c
index 3dbfe7dd20..9c332339f5 100644
--- a/drivers/misc/state.c
+++ b/drivers/misc/state.c
@@ -45,7 +45,7 @@ static __maybe_unused struct of_device_id state_ids[] = {
 	}
 };
 
-static struct driver_d state_driver = {
+static struct driver state_driver = {
 	.name = "state",
 	.probe = state_probe,
 	.of_compatible = DRV_OF_COMPAT(state_ids),
diff --git a/drivers/misc/storage-by-uuid.c b/drivers/misc/storage-by-uuid.c
index 6434a077ea..a938bfaaa2 100644
--- a/drivers/misc/storage-by-uuid.c
+++ b/drivers/misc/storage-by-uuid.c
@@ -190,7 +190,7 @@ static struct of_device_id storage_by_uuid_dt_ids[] = {
 	}
 };
 
-static struct driver_d storage_by_uuid_driver = {
+static struct driver storage_by_uuid_driver = {
 	.name		= "storage-by-uuid",
 	.probe		= storage_by_uuid_probe,
 	.of_compatible	= storage_by_uuid_dt_ids,
diff --git a/drivers/misc/ubootvar.c b/drivers/misc/ubootvar.c
index 059059c92f..92830f91c5 100644
--- a/drivers/misc/ubootvar.c
+++ b/drivers/misc/ubootvar.c
@@ -351,7 +351,7 @@ static struct of_device_id ubootenv_dt_ids[] = {
 	}
 };
 
-static struct driver_d ubootenv_driver = {
+static struct driver ubootenv_driver = {
 	.name		= "uboot-environment",
 	.probe		= ubootenv_probe,
 	.of_compatible	= ubootenv_dt_ids,
diff --git a/drivers/mtd/devices/docg3.c b/drivers/mtd/devices/docg3.c
index feda38fefc..593a7035e5 100644
--- a/drivers/mtd/devices/docg3.c
+++ b/drivers/mtd/devices/docg3.c
@@ -1186,7 +1186,7 @@ nomem2:
 	return ret;
 }
 
-static struct driver_d  g3_driver = {
+static struct driver  g3_driver = {
 	.name	= "docg3",
 	.probe	= docg3_probe,
 };
diff --git a/drivers/mtd/devices/m25p80.c b/drivers/mtd/devices/m25p80.c
index 35c4ff3911..05c6473a28 100644
--- a/drivers/mtd/devices/m25p80.c
+++ b/drivers/mtd/devices/m25p80.c
@@ -288,7 +288,7 @@ static __maybe_unused struct of_device_id m25p80_dt_ids[] = {
 	}
 };
 
-static struct driver_d m25p80_driver = {
+static struct driver m25p80_driver = {
 	.name	= "m25p80",
 	.probe	= m25p_probe,
 	.of_compatible = DRV_OF_COMPAT(m25p80_dt_ids),
diff --git a/drivers/mtd/devices/mtd_dataflash.c b/drivers/mtd/devices/mtd_dataflash.c
index 32801d3cb1..b6a0c79d2f 100644
--- a/drivers/mtd/devices/mtd_dataflash.c
+++ b/drivers/mtd/devices/mtd_dataflash.c
@@ -898,7 +898,7 @@ static __maybe_unused struct of_device_id dataflash_dt_ids[] = {
 	}
 };
 
-static struct driver_d dataflash_driver = {
+static struct driver dataflash_driver = {
 	.name  = "mtd_dataflash",
 	.probe = dataflash_probe,
 	.of_compatible = DRV_OF_COMPAT(dataflash_dt_ids),
diff --git a/drivers/mtd/devices/mtdram.c b/drivers/mtd/devices/mtdram.c
index f80e34ee82..a8417f923f 100644
--- a/drivers/mtd/devices/mtdram.c
+++ b/drivers/mtd/devices/mtdram.c
@@ -107,7 +107,7 @@ static __maybe_unused struct of_device_id mtdram_dt_ids[] = {
 	}
 };
 
-static struct driver_d mtdram_driver = {
+static struct driver mtdram_driver = {
 	.name	= "mtdram",
 	.probe	= mtdram_probe,
 	.of_compatible	= DRV_OF_COMPAT(mtdram_dt_ids),
diff --git a/drivers/mtd/nand/atmel_nand.c b/drivers/mtd/nand/atmel_nand.c
index 302d5cb2ae..2884a9d1fe 100644
--- a/drivers/mtd/nand/atmel_nand.c
+++ b/drivers/mtd/nand/atmel_nand.c
@@ -1433,7 +1433,7 @@ static struct of_device_id atmel_nand_dt_ids[] = {
 	{ /* sentinel */ }
 };
 
-static struct driver_d atmel_nand_driver = {
+static struct driver atmel_nand_driver = {
 	.name	= "atmel_nand",
 	.probe	= atmel_nand_probe,
 	.of_compatible	= DRV_OF_COMPAT(atmel_nand_dt_ids),
diff --git a/drivers/mtd/nand/nand_denali_dt.c b/drivers/mtd/nand/nand_denali_dt.c
index 3a0e56bc91..44dd596d9e 100644
--- a/drivers/mtd/nand/nand_denali_dt.c
+++ b/drivers/mtd/nand/nand_denali_dt.c
@@ -212,7 +212,7 @@ static __maybe_unused struct of_device_id denali_nand_compatible[] = {
 	}
 };
 
-static struct driver_d denali_dt_driver = {
+static struct driver denali_dt_driver = {
 	.name	= "denali-nand-dt",
 	.probe		= denali_dt_probe,
 	.of_compatible = DRV_OF_COMPAT(denali_nand_compatible)
diff --git a/drivers/mtd/nand/nand_fsl_ifc.c b/drivers/mtd/nand/nand_fsl_ifc.c
index 8fba4c2e10..74bc9fe1ed 100644
--- a/drivers/mtd/nand/nand_fsl_ifc.c
+++ b/drivers/mtd/nand/nand_fsl_ifc.c
@@ -1026,7 +1026,7 @@ static __maybe_unused struct of_device_id fsl_nand_compatible[] = {
 	}
 };
 
-static struct driver_d fsl_ifc_driver = {
+static struct driver fsl_ifc_driver = {
 	.name = "fsl_nand",
 	.probe = fsl_ifc_nand_probe,
 	.of_compatible = DRV_OF_COMPAT(fsl_nand_compatible),
diff --git a/drivers/mtd/nand/nand_imx.c b/drivers/mtd/nand/nand_imx.c
index a250741657..3438e9fc79 100644
--- a/drivers/mtd/nand/nand_imx.c
+++ b/drivers/mtd/nand/nand_imx.c
@@ -1481,7 +1481,7 @@ static __maybe_unused struct of_device_id imx_nand_compatible[] = {
 	}
 };
 
-static struct driver_d imx_nand_driver = {
+static struct driver imx_nand_driver = {
 	.name  = "imx_nand",
 	.probe = imxnd_probe,
 	.of_compatible = DRV_OF_COMPAT(imx_nand_compatible),
diff --git a/drivers/mtd/nand/nand_mrvl_nfc.c b/drivers/mtd/nand/nand_mrvl_nfc.c
index ff3e350a7f..2857431656 100644
--- a/drivers/mtd/nand/nand_mrvl_nfc.c
+++ b/drivers/mtd/nand/nand_mrvl_nfc.c
@@ -1250,7 +1250,7 @@ static int mrvl_nand_probe(struct device *dev)
 	return ret;
 }
 
-static struct driver_d mrvl_nand_driver = {
+static struct driver mrvl_nand_driver = {
 	.name		= "mrvl_nand",
 	.probe		= mrvl_nand_probe,
 	.of_compatible	= DRV_OF_COMPAT(mrvl_nand_dt_ids),
diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
index 434849bc82..213e0d25d4 100644
--- a/drivers/mtd/nand/nand_mxs.c
+++ b/drivers/mtd/nand/nand_mxs.c
@@ -2307,7 +2307,7 @@ static __maybe_unused struct of_device_id gpmi_dt_ids[] = {
 	}
 };
 
-static struct driver_d mxs_nand_driver = {
+static struct driver mxs_nand_driver = {
 	.name  = "mxs_nand",
 	.probe = mxs_nand_probe,
 	.of_compatible = DRV_OF_COMPAT(gpmi_dt_ids),
diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index 349b569939..e8e6903111 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -1343,7 +1343,7 @@ out_release_mem:
 }
 
 /** GMPC nand driver -> device registered by platforms */
-static struct driver_d gpmc_nand_driver = {
+static struct driver gpmc_nand_driver = {
 	.name = "gpmc_nand",
 	.probe = gpmc_nand_probe,
 };
diff --git a/drivers/mtd/nand/nand_orion.c b/drivers/mtd/nand/nand_orion.c
index 16238ad588..085f80541c 100644
--- a/drivers/mtd/nand/nand_orion.c
+++ b/drivers/mtd/nand/nand_orion.c
@@ -148,7 +148,7 @@ static __maybe_unused struct of_device_id orion_nand_compatible[] = {
 	{},
 };
 
-static struct driver_d orion_nand_driver = {
+static struct driver orion_nand_driver = {
 	.name  = "orion_nand",
 	.probe = orion_nand_probe,
 	.of_compatible = DRV_OF_COMPAT(orion_nand_compatible),
diff --git a/drivers/mtd/nand/nand_s3c24xx.c b/drivers/mtd/nand/nand_s3c24xx.c
index c1ac6404c3..65d9a261c2 100644
--- a/drivers/mtd/nand/nand_s3c24xx.c
+++ b/drivers/mtd/nand/nand_s3c24xx.c
@@ -480,7 +480,7 @@ on_error:
 	return ret;
 }
 
-static struct driver_d s3c24x0_nand_driver = {
+static struct driver s3c24x0_nand_driver = {
 	.name  = "s3c24x0_nand",
 	.probe = s3c24x0_nand_probe,
 };
diff --git a/drivers/mtd/nand/nomadik_nand.c b/drivers/mtd/nand/nomadik_nand.c
index d44170bafb..ef8df3ef80 100644
--- a/drivers/mtd/nand/nomadik_nand.c
+++ b/drivers/mtd/nand/nomadik_nand.c
@@ -227,7 +227,7 @@ err:
 	return ret;
 }
 
-static struct driver_d nomadik_nand_driver = {
+static struct driver nomadik_nand_driver = {
 	.probe = nomadik_nand_probe,
 	.name = "nomadik_nand",
 };
diff --git a/drivers/mtd/nand/omap_elm.c b/drivers/mtd/nand/omap_elm.c
index aedcd710bf..f6f4a0b115 100644
--- a/drivers/mtd/nand/omap_elm.c
+++ b/drivers/mtd/nand/omap_elm.c
@@ -405,7 +405,7 @@ static struct of_device_id elm_compatible[] = {
 	}
 };
 
-static struct driver_d omap_elm_driver = {
+static struct driver omap_elm_driver = {
 	.name = "omap-elm",
 	.probe = elm_probe,
 	.of_compatible = DRV_OF_COMPAT(elm_compatible)
diff --git a/drivers/mtd/nor/cfi_flash.c b/drivers/mtd/nor/cfi_flash.c
index ef48ae68e1..8b5302d7a7 100644
--- a/drivers/mtd/nor/cfi_flash.c
+++ b/drivers/mtd/nor/cfi_flash.c
@@ -1047,7 +1047,7 @@ static __maybe_unused struct of_device_id cfi_dt_ids[] = {
 	}
 };
 
-static struct driver_d cfi_driver = {
+static struct driver cfi_driver = {
 	.name    = "cfi_flash",
 	.probe   = cfi_probe,
 	.of_compatible = DRV_OF_COMPAT(cfi_dt_ids),
diff --git a/drivers/mtd/spi-nor/cadence-quadspi.c b/drivers/mtd/spi-nor/cadence-quadspi.c
index 1ecf7ccc45..8a744d5dad 100644
--- a/drivers/mtd/spi-nor/cadence-quadspi.c
+++ b/drivers/mtd/spi-nor/cadence-quadspi.c
@@ -1245,7 +1245,7 @@ static __maybe_unused struct of_device_id cqspi_dt_ids[] = {
 	{ /* end of table */ }
 };
 
-static struct driver_d cqspi_driver = {
+static struct driver cqspi_driver = {
 	.name = "cadence_qspi",
 	.probe = cqspi_probe,
 	.of_compatible = DRV_OF_COMPAT(cqspi_dt_ids),
diff --git a/drivers/net/ag71xx.c b/drivers/net/ag71xx.c
index 36d77752d8..13e104d225 100644
--- a/drivers/net/ag71xx.c
+++ b/drivers/net/ag71xx.c
@@ -672,7 +672,7 @@ static __maybe_unused struct of_device_id ag71xx_dt_ids[] = {
 	{ /* sentinel */ }
 };
 
-static struct driver_d ag71xx_driver = {
+static struct driver ag71xx_driver = {
 	.name	= "ag71xx-gmac",
 	.probe		= ag71xx_probe,
 	.remove		= ag71xx_remove,
diff --git a/drivers/net/ar231x.c b/drivers/net/ar231x.c
index 83e4f2814e..1af34a3117 100644
--- a/drivers/net/ar231x.c
+++ b/drivers/net/ar231x.c
@@ -419,7 +419,7 @@ static int ar231x_eth_probe(struct device *dev)
 	return 0;
 }
 
-static struct driver_d ar231x_eth_driver = {
+static struct driver ar231x_eth_driver = {
 	.name = "ar231x_eth",
 	.probe = ar231x_eth_probe,
 };
diff --git a/drivers/net/arc_emac.c b/drivers/net/arc_emac.c
index 2b4419d792..6a68405889 100644
--- a/drivers/net/arc_emac.c
+++ b/drivers/net/arc_emac.c
@@ -465,7 +465,7 @@ static __maybe_unused struct of_device_id arc_emac_dt_ids[] = {
 	}
 };
 
-static struct driver_d arc_emac_driver = {
+static struct driver arc_emac_driver = {
 	.name = "arc-emac",
 	.probe = arc_emac_probe,
 	.of_compatible = DRV_OF_COMPAT(arc_emac_dt_ids),
diff --git a/drivers/net/at91_ether.c b/drivers/net/at91_ether.c
index e97ff69718..6cf700ad90 100644
--- a/drivers/net/at91_ether.c
+++ b/drivers/net/at91_ether.c
@@ -353,7 +353,7 @@ static int at91_ether_probe(struct device *dev)
 	return 0;
 }
 
-static struct driver_d at91_ether_driver = {
+static struct driver at91_ether_driver = {
 	.name = "at91_ether",
 	.probe = at91_ether_probe,
 };
diff --git a/drivers/net/bcmgenet.c b/drivers/net/bcmgenet.c
index 4730a80099..32ec36eff6 100644
--- a/drivers/net/bcmgenet.c
+++ b/drivers/net/bcmgenet.c
@@ -617,7 +617,7 @@ static struct of_device_id bcmgenet_ids[] = {
         },
 };
 
-static struct driver_d bcmgenet_driver = {
+static struct driver bcmgenet_driver = {
         .name   = "brcm-genet",
         .probe  = bcmgenet_probe,
         .remove = bcmgenet_remove,
diff --git a/drivers/net/cpsw.c b/drivers/net/cpsw.c
index bf6e7dbe02..82a1fb974e 100644
--- a/drivers/net/cpsw.c
+++ b/drivers/net/cpsw.c
@@ -654,7 +654,7 @@ static __maybe_unused struct of_device_id cpsw_mdio_dt_ids[] = {
 	}
 };
 
-static struct driver_d cpsw_mdio_driver = {
+static struct driver cpsw_mdio_driver = {
 	.name   = "cpsw-mdio",
 	.probe  = cpsw_mdio_probe,
 	.of_compatible = DRV_OF_COMPAT(cpsw_mdio_dt_ids),
@@ -1434,7 +1434,7 @@ static __maybe_unused struct of_device_id cpsw_dt_ids[] = {
 	}
 };
 
-static struct driver_d cpsw_driver = {
+static struct driver cpsw_driver = {
 	.name   = "cpsw",
 	.probe  = cpsw_probe,
 	.remove = cpsw_remove,
diff --git a/drivers/net/cs8900.c b/drivers/net/cs8900.c
index 9717df91ea..0dfd3f1303 100644
--- a/drivers/net/cs8900.c
+++ b/drivers/net/cs8900.c
@@ -463,7 +463,7 @@ static int cs8900_probe(struct device *dev)
 	return 0;
 }
 
-static struct driver_d cs8900_driver = {
+static struct driver cs8900_driver = {
 	.name = "cs8900",
 	.probe = cs8900_probe,
 };
diff --git a/drivers/net/davinci_emac.c b/drivers/net/davinci_emac.c
index 8237530ba3..2415aa7443 100644
--- a/drivers/net/davinci_emac.c
+++ b/drivers/net/davinci_emac.c
@@ -603,7 +603,7 @@ static __maybe_unused struct of_device_id davinci_emac_dt_ids[] = {
 	}
 };
 
-static struct driver_d davinci_emac_driver = {
+static struct driver davinci_emac_driver = {
 	.name   = "davinci_emac",
 	.probe  = davinci_emac_probe,
 	.remove = davinci_emac_remove,
@@ -659,7 +659,7 @@ static __maybe_unused struct of_device_id davinci_mdio_dt_ids[] = {
 	}
 };
 
-static struct driver_d davinci_mdio_driver = {
+static struct driver davinci_mdio_driver = {
 	.name   = "davinci_mdio",
 	.probe  = davinci_mdio_probe,
 	.of_compatible = DRV_OF_COMPAT(davinci_mdio_dt_ids),
diff --git a/drivers/net/designware_generic.c b/drivers/net/designware_generic.c
index f7ea13791a..037bfbe7fa 100644
--- a/drivers/net/designware_generic.c
+++ b/drivers/net/designware_generic.c
@@ -36,7 +36,7 @@ static __maybe_unused struct of_device_id dwc_ether_compatible[] = {
 	}
 };
 
-static struct driver_d dwc_ether_driver = {
+static struct driver dwc_ether_driver = {
 	.name = "designware_eth",
 	.probe = dwc_ether_probe,
 	.remove	= dwc_drv_remove,
diff --git a/drivers/net/designware_rockchip.c b/drivers/net/designware_rockchip.c
index 9b5e60448c..fbed27abc8 100644
--- a/drivers/net/designware_rockchip.c
+++ b/drivers/net/designware_rockchip.c
@@ -320,7 +320,7 @@ static __maybe_unused struct of_device_id rk_gmac_compatible[] = {
 	}
 };
 
-static struct driver_d rk_gmac_driver = {
+static struct driver rk_gmac_driver = {
 	.name = "eqos-rockchip",
 	.probe = rk_gmac_probe,
 	.remove = eqos_remove,
diff --git a/drivers/net/designware_socfpga.c b/drivers/net/designware_socfpga.c
index efc170ba9e..54fbbaabac 100644
--- a/drivers/net/designware_socfpga.c
+++ b/drivers/net/designware_socfpga.c
@@ -262,7 +262,7 @@ static __maybe_unused struct of_device_id socfpga_dwc_ether_compatible[] = {
 	}
 };
 
-static struct driver_d socfpga_dwc_ether_driver = {
+static struct driver socfpga_dwc_ether_driver = {
 	.name = "socfpga_designware_eth",
 	.probe = socfpga_dwc_ether_probe,
 	.remove	= dwc_drv_remove,
diff --git a/drivers/net/designware_starfive.c b/drivers/net/designware_starfive.c
index 25e69ab2c4..cace9efabc 100644
--- a/drivers/net/designware_starfive.c
+++ b/drivers/net/designware_starfive.c
@@ -103,7 +103,7 @@ static struct of_device_id starfive_dwc_ether_compatible[] = {
 	{ /* sentinel */ }
 };
 
-static struct driver_d starfive_dwc_ether_driver = {
+static struct driver starfive_dwc_ether_driver = {
 	.name = "starfive-designware_eth",
 	.probe = starfive_dwc_ether_probe,
 	.of_compatible = starfive_dwc_ether_compatible,
diff --git a/drivers/net/designware_stm32.c b/drivers/net/designware_stm32.c
index ad2a0324b2..a4ec356ea0 100644
--- a/drivers/net/designware_stm32.c
+++ b/drivers/net/designware_stm32.c
@@ -197,7 +197,7 @@ static const struct of_device_id eqos_stm32_ids[] = {
 	{ /* sentinel */ }
 };
 
-static struct driver_d eqos_stm32_driver = {
+static struct driver eqos_stm32_driver = {
 	.name = "eqos-stm32",
 	.probe = eqos_probe_stm32,
 	.remove	= eqos_remove_stm32,
diff --git a/drivers/net/designware_tegra186.c b/drivers/net/designware_tegra186.c
index 0fe253581f..1de3b93a14 100644
--- a/drivers/net/designware_tegra186.c
+++ b/drivers/net/designware_tegra186.c
@@ -309,7 +309,7 @@ static const struct of_device_id eqos_tegra186_ids[] = {
 	{ /* sentinel */ }
 };
 
-static struct driver_d eqos_tegra186_driver = {
+static struct driver eqos_tegra186_driver = {
 	.name = "eqos-tegra186",
 	.probe = eqos_probe_tegra186,
 	.remove	= eqos_remove_tegra186,
diff --git a/drivers/net/dm9k.c b/drivers/net/dm9k.c
index 1e9038db65..a10bf542a9 100644
--- a/drivers/net/dm9k.c
+++ b/drivers/net/dm9k.c
@@ -871,7 +871,7 @@ static struct of_device_id dm9000_of_matches[] = {
 	{ /* sentinel */ }
 };
 
-static struct driver_d dm9k_driver = {
+static struct driver dm9k_driver = {
 	.name  = "dm9000",
 	.probe = dm9k_probe,
 	.of_compatible = DRV_OF_COMPAT(dm9000_of_matches),
diff --git a/drivers/net/enc28j60.c b/drivers/net/enc28j60.c
index 1afd17d1dc..3351227ef3 100644
--- a/drivers/net/enc28j60.c
+++ b/drivers/net/enc28j60.c
@@ -999,7 +999,7 @@ static __maybe_unused struct of_device_id enc28j60_dt_ids[] = {
 	}
 };
 
-static struct driver_d enc28j60_driver = {
+static struct driver enc28j60_driver = {
 	.name = DRV_NAME,
 	.probe = enc28j60_probe,
 	.of_compatible = DRV_OF_COMPAT(enc28j60_dt_ids),
diff --git a/drivers/net/ep93xx.c b/drivers/net/ep93xx.c
index 5ff5df21dc..ee650cdeea 100644
--- a/drivers/net/ep93xx.c
+++ b/drivers/net/ep93xx.c
@@ -650,7 +650,7 @@ static int ep93xx_phy_write(struct mii_bus *bus, int phy_addr,
 	return 0;
 }
 
-static struct driver_d ep93xx_eth_driver = {
+static struct driver ep93xx_eth_driver = {
 	.name  = "ep93xx_eth",
 	.probe = ep93xx_eth_probe,
 };
diff --git a/drivers/net/ethoc.c b/drivers/net/ethoc.c
index 38fc7cdd74..7834cad80a 100644
--- a/drivers/net/ethoc.c
+++ b/drivers/net/ethoc.c
@@ -572,7 +572,7 @@ static struct of_device_id ethoc_dt_ids[] = {
 	{ }
 };
 
-static struct driver_d ethoc_driver = {
+static struct driver ethoc_driver = {
 	.name  = "ethoc",
 	.probe = ethoc_probe,
 	.of_compatible = DRV_OF_COMPAT(ethoc_dt_ids),
diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 0a87f8f9b7..c817d6c767 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -980,7 +980,7 @@ static struct platform_device_id imx_fec_ids[] = {
 /**
  * Driver description for registering
  */
-static struct driver_d fec_driver = {
+static struct driver fec_driver = {
 	.name   = "fec_imx",
 	.probe  = fec_probe,
 	.remove = fec_remove,
diff --git a/drivers/net/fec_mpc5200.c b/drivers/net/fec_mpc5200.c
index 1abd4c5a8a..53b5a861ae 100644
--- a/drivers/net/fec_mpc5200.c
+++ b/drivers/net/fec_mpc5200.c
@@ -687,7 +687,7 @@ static void mpc5xxx_fec_remove(struct device *dev)
 	mpc5xxx_fec_halt(edev);
 }
 
-static struct driver_d mpc5xxx_driver = {
+static struct driver mpc5xxx_driver = {
         .name  = "fec_mpc5xxx",
         .probe = mpc5xxx_fec_probe,
 	.remove = mpc5xxx_fec_remove,
diff --git a/drivers/net/fsl-fman.c b/drivers/net/fsl-fman.c
index 8928f91a9b..0b85283040 100644
--- a/drivers/net/fsl-fman.c
+++ b/drivers/net/fsl-fman.c
@@ -1241,7 +1241,7 @@ static struct of_device_id fsl_fman_mdio_dt_ids[] = {
 	}
 };
 
-static struct driver_d fman_mdio_driver = {
+static struct driver fman_mdio_driver = {
 	.name   = "fsl-fman-mdio",
 	.probe  = fsl_fman_mdio_probe,
 	.of_compatible = DRV_OF_COMPAT(fsl_fman_mdio_dt_ids),
@@ -1258,7 +1258,7 @@ static struct of_device_id fsl_fman_port_dt_ids[] = {
 	}
 };
 
-static struct driver_d fman_port_driver = {
+static struct driver fman_port_driver = {
 	.name   = "fsl-fman-port",
 	.probe  = fsl_fman_port_probe,
 	.of_compatible = DRV_OF_COMPAT(fsl_fman_port_dt_ids),
@@ -1271,7 +1271,7 @@ static struct of_device_id fsl_fman_memac_dt_ids[] = {
 	}
 };
 
-static struct driver_d fman_memac_driver = {
+static struct driver fman_memac_driver = {
 	.name   = "fsl-fman-memac",
 	.probe  = fsl_fman_memac_probe,
 	.remove = fsl_fman_memac_remove,
@@ -1285,7 +1285,7 @@ static struct of_device_id fsl_fman_muram_dt_ids[] = {
 	}
 };
 
-static struct driver_d fman_muram_driver = {
+static struct driver fman_muram_driver = {
 	.name   = "fsl-fman-muram",
 	.probe  = fsl_fman_muram_probe,
 	.of_compatible = DRV_OF_COMPAT(fsl_fman_muram_dt_ids),
@@ -1329,7 +1329,7 @@ static struct of_device_id fsl_fman_dt_ids[] = {
 	}
 };
 
-static struct driver_d fman_driver = {
+static struct driver fman_driver = {
 	.name   = "fsl-fman",
 	.probe  = fsl_fman_probe,
 	.of_compatible = DRV_OF_COMPAT(fsl_fman_dt_ids),
diff --git a/drivers/net/gianfar.c b/drivers/net/gianfar.c
index 4117faec2a..4b374b4a50 100644
--- a/drivers/net/gianfar.c
+++ b/drivers/net/gianfar.c
@@ -536,7 +536,7 @@ static int gfar_probe(struct device *dev)
 	return eth_register(edev);
 }
 
-static struct driver_d gfar_eth_driver = {
+static struct driver gfar_eth_driver = {
 	.name  = "gfar",
 	.probe = gfar_probe,
 };
@@ -567,7 +567,7 @@ static int gfar_phy_probe(struct device *dev)
 	return 0;
 }
 
-static struct driver_d gfar_phy_driver = {
+static struct driver gfar_phy_driver = {
 	.name  = "gfar-mdio",
 	.probe = gfar_phy_probe,
 };
@@ -597,7 +597,7 @@ static int gfar_tbiphy_probe(struct device *dev)
 	return 0;
 }
 
-static struct driver_d gfar_tbiphy_driver = {
+static struct driver gfar_tbiphy_driver = {
 	.name  = "gfar-tbiphy",
 	.probe = gfar_tbiphy_probe,
 };
diff --git a/drivers/net/ks8851_mll.c b/drivers/net/ks8851_mll.c
index 3d45eddd9d..972a127655 100644
--- a/drivers/net/ks8851_mll.c
+++ b/drivers/net/ks8851_mll.c
@@ -872,7 +872,7 @@ static int ks8851_probe(struct device *dev)
 	return 0;
 }
 
-static struct driver_d ks8851_driver = {
+static struct driver ks8851_driver = {
 	.name  = "ks8851_mll",
 	.probe = ks8851_probe,
 };
diff --git a/drivers/net/ksz8864rmn.c b/drivers/net/ksz8864rmn.c
index e6734786c9..c4c30377af 100644
--- a/drivers/net/ksz8864rmn.c
+++ b/drivers/net/ksz8864rmn.c
@@ -187,7 +187,7 @@ static const struct platform_device_id ksz_ids[] = {
 	{ }
 };
 
-static struct driver_d micrel_switch_driver = {
+static struct driver micrel_switch_driver = {
 	.name  = "ksz8864rmn",
 	.probe = micrel_switch_probe,
 	.id_table = ksz_ids,
diff --git a/drivers/net/ksz9477.c b/drivers/net/ksz9477.c
index 382de4e127..99deaf6381 100644
--- a/drivers/net/ksz9477.c
+++ b/drivers/net/ksz9477.c
@@ -557,7 +557,7 @@ static const struct of_device_id microchip_switch_dt_ids[] = {
 	{ }
 };
 
-static struct driver_d microchip_switch_driver = {
+static struct driver microchip_switch_driver = {
 	.name		= "ksz9477",
 	.probe		= microchip_switch_probe,
 	.of_compatible	= DRV_OF_COMPAT(microchip_switch_dt_ids),
diff --git a/drivers/net/liteeth.c b/drivers/net/liteeth.c
index ea9ec18d41..14d2eab831 100644
--- a/drivers/net/liteeth.c
+++ b/drivers/net/liteeth.c
@@ -370,7 +370,7 @@ static const struct of_device_id liteeth_dt_ids[] = {
 	}
 };
 
-static struct driver_d liteeth_driver = {
+static struct driver liteeth_driver = {
 	.name = DRV_NAME,
 	.probe = liteeth_probe,
 	.of_compatible = DRV_OF_COMPAT(liteeth_dt_ids),
diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index e15b4dadc5..29d62b4f10 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -941,7 +941,7 @@ static const struct of_device_id macb_dt_ids[] = {
 	{ /* sentinel */ }
 };
 
-static struct driver_d macb_driver = {
+static struct driver macb_driver = {
 	.name  = "macb",
 	.probe = macb_probe,
 	.remove = macb_remove,
diff --git a/drivers/net/mvneta.c b/drivers/net/mvneta.c
index 575f0c12bb..779cc636a0 100644
--- a/drivers/net/mvneta.c
+++ b/drivers/net/mvneta.c
@@ -756,7 +756,7 @@ static struct of_device_id mvneta_dt_ids[] = {
 	{ }
 };
 
-static struct driver_d mvneta_driver = {
+static struct driver mvneta_driver = {
 	.name   = "mvneta",
 	.probe  = mvneta_probe,
 	.of_compatible = DRV_OF_COMPAT(mvneta_dt_ids),
diff --git a/drivers/net/orion-gbe.c b/drivers/net/orion-gbe.c
index 70e18a3165..abd588e013 100644
--- a/drivers/net/orion-gbe.c
+++ b/drivers/net/orion-gbe.c
@@ -539,7 +539,7 @@ static struct of_device_id orion_gbe_dt_ids[] = {
 	{ }
 };
 
-static struct driver_d orion_gbe_driver = {
+static struct driver orion_gbe_driver = {
 	.name   = "orion-gbe",
 	.probe  = orion_gbe_probe,
 	.remove = orion_gbe_remove,
diff --git a/drivers/net/phy/mdio-gpio.c b/drivers/net/phy/mdio-gpio.c
index 06846c03ff..ba368b825c 100644
--- a/drivers/net/phy/mdio-gpio.c
+++ b/drivers/net/phy/mdio-gpio.c
@@ -228,7 +228,7 @@ static const struct of_device_id gpio_mdio_dt_ids[] = {
 	{ /* sentinel */ }
 };
 
-static struct driver_d mdio_gpio_driver = {
+static struct driver mdio_gpio_driver = {
 	.name = "mdio-gpio",
 	.probe = mdio_gpio_probe,
 	.of_compatible = DRV_OF_COMPAT(gpio_mdio_dt_ids),
diff --git a/drivers/net/phy/mdio-mux-gpio.c b/drivers/net/phy/mdio-mux-gpio.c
index 8fcff8fb70..56ff6b5bc0 100644
--- a/drivers/net/phy/mdio-mux-gpio.c
+++ b/drivers/net/phy/mdio-mux-gpio.c
@@ -127,7 +127,7 @@ static const struct of_device_id mdio_mux_gpio_match[] = {
 	{},
 };
 
-static struct driver_d mdio_mux_gpio_driver = {
+static struct driver mdio_mux_gpio_driver = {
 	.name	       = "mdio-mux-gpio",
 	.probe         = mdio_mux_gpio_probe,
 	.of_compatible = mdio_mux_gpio_match,
diff --git a/drivers/net/phy/mdio-mvebu.c b/drivers/net/phy/mdio-mvebu.c
index 025212f92f..3528ed205e 100644
--- a/drivers/net/phy/mdio-mvebu.c
+++ b/drivers/net/phy/mdio-mvebu.c
@@ -142,7 +142,7 @@ static struct of_device_id mvebu_mdio_dt_ids[] = {
 	{ }
 };
 
-static struct driver_d mvebu_mdio_driver = {
+static struct driver mvebu_mdio_driver = {
 	.name   = "mvebu-mdio",
 	.probe  = mvebu_mdio_probe,
 	.remove = mvebu_mdio_remove,
diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
index 9679d701ac..581d134649 100644
--- a/drivers/net/phy/mdio_bus.c
+++ b/drivers/net/phy/mdio_bus.c
@@ -415,7 +415,7 @@ EXPORT_SYMBOL(of_mdio_find_bus);
  * Description: Given a PHY device, and a PHY driver, return 0 if
  *   the driver supports the device.  Otherwise, return 1.
  */
-static int mdio_bus_match(struct device *dev, struct driver_d *drv)
+static int mdio_bus_match(struct device *dev, struct driver *drv)
 {
 	struct phy_device *phydev = to_phy_device(dev);
 	struct phy_driver *phydrv = to_phy_driver(drv);
diff --git a/drivers/net/phy/mv88e6xxx/chip.c b/drivers/net/phy/mv88e6xxx/chip.c
index dad0ba9b3d..4dbc4cc341 100644
--- a/drivers/net/phy/mv88e6xxx/chip.c
+++ b/drivers/net/phy/mv88e6xxx/chip.c
@@ -966,7 +966,7 @@ static const struct of_device_id mv88e6xxx_of_match[] = {
 	{},
 };
 
-static struct driver_d mv88e6xxx_driver = {
+static struct driver mv88e6xxx_driver = {
 	.name	       = "mv88e6085",
 	.probe         = mv88e6xxx_probe,
 	.of_compatible = mv88e6xxx_of_match,
diff --git a/drivers/net/sja1105.c b/drivers/net/sja1105.c
index 1b36ba748e..595a002ff1 100644
--- a/drivers/net/sja1105.c
+++ b/drivers/net/sja1105.c
@@ -2978,7 +2978,7 @@ static const struct of_device_id sja1105_ids[] = {
 	{ }
 };
 
-static struct driver_d sja1105_driver = {
+static struct driver sja1105_driver = {
 	.name		= "sja1105",
 	.probe		= sja1105_probe,
 	.of_compatible	= DRV_OF_COMPAT(sja1105_ids),
diff --git a/drivers/net/smc91111.c b/drivers/net/smc91111.c
index 9a3cfde3a3..89195fc826 100644
--- a/drivers/net/smc91111.c
+++ b/drivers/net/smc91111.c
@@ -1489,7 +1489,7 @@ static int smc91c111_probe(struct device *dev)
 	return 0;
 }
 
-static struct driver_d smc91c111_driver = {
+static struct driver smc91c111_driver = {
         .name  = "smc91c111",
         .probe = smc91c111_probe,
 };
diff --git a/drivers/net/smc911x.c b/drivers/net/smc911x.c
index 97a209ad2d..a0a58131ed 100644
--- a/drivers/net/smc911x.c
+++ b/drivers/net/smc911x.c
@@ -643,7 +643,7 @@ static const struct of_device_id smsc911x_dt_ids[] = {
 	{ /* sentinel */ }
 };
 
-static struct driver_d smc911x_driver = {
+static struct driver smc911x_driver = {
         .name  = "smc911x",
         .probe = smc911x_probe,
 	.of_compatible = DRV_OF_COMPAT(smsc911x_dt_ids),
diff --git a/drivers/net/tap.c b/drivers/net/tap.c
index 10c91e6b37..18f83c6a2c 100644
--- a/drivers/net/tap.c
+++ b/drivers/net/tap.c
@@ -97,7 +97,7 @@ out:
 	return ret;
 }
 
-static struct driver_d tap_driver = {
+static struct driver tap_driver = {
 	.name  = "tap",
 	.probe = tap_probe,
 };
diff --git a/drivers/nvmem/bsec.c b/drivers/nvmem/bsec.c
index 1bda25cd10..dfb6ad8bc9 100644
--- a/drivers/nvmem/bsec.c
+++ b/drivers/nvmem/bsec.c
@@ -197,7 +197,7 @@ static __maybe_unused struct of_device_id stm32_bsec_dt_ids[] = {
 	{ /* sentinel */ }
 };
 
-static struct driver_d stm32_bsec_driver = {
+static struct driver stm32_bsec_driver = {
 	.name	= "stm32_bsec",
 	.probe	= stm32_bsec_probe,
 	.of_compatible = DRV_OF_COMPAT(stm32_bsec_dt_ids),
diff --git a/drivers/nvmem/eeprom_93xx46.c b/drivers/nvmem/eeprom_93xx46.c
index b4aad88de3..fbc516e1e7 100644
--- a/drivers/nvmem/eeprom_93xx46.c
+++ b/drivers/nvmem/eeprom_93xx46.c
@@ -427,7 +427,7 @@ fail:
 	return err;
 }
 
-static struct driver_d eeprom_93xx46_driver = {
+static struct driver eeprom_93xx46_driver = {
 	.name = "93xx46",
 	.probe = eeprom_93xx46_probe,
 	.of_compatible = DRV_OF_COMPAT(eeprom_93xx46_of_table),
diff --git a/drivers/nvmem/kvx-otp-nv.c b/drivers/nvmem/kvx-otp-nv.c
index 5f3e71afda..b888da2de7 100644
--- a/drivers/nvmem/kvx-otp-nv.c
+++ b/drivers/nvmem/kvx-otp-nv.c
@@ -90,7 +90,7 @@ static int kvx_otp_nv_probe(struct device *dev)
 	return PTR_ERR_OR_ZERO(nvmem);
 }
 
-static struct driver_d kvx_otp_nv_driver = {
+static struct driver kvx_otp_nv_driver = {
 	.name	= "kvx-otp-nv",
 	.probe	= kvx_otp_nv_probe,
 	.of_compatible = DRV_OF_COMPAT(kvx_otp_nv_match),
diff --git a/drivers/nvmem/ocotp.c b/drivers/nvmem/ocotp.c
index b420b3b68f..7545059aa9 100644
--- a/drivers/nvmem/ocotp.c
+++ b/drivers/nvmem/ocotp.c
@@ -1000,7 +1000,7 @@ static __maybe_unused struct of_device_id imx_ocotp_dt_ids[] = {
 	}
 };
 
-static struct driver_d imx_ocotp_driver = {
+static struct driver imx_ocotp_driver = {
 	.name	= "imx_ocotp",
 	.probe	= imx_ocotp_probe,
 	.of_compatible = DRV_OF_COMPAT(imx_ocotp_dt_ids),
diff --git a/drivers/nvmem/rave-sp-eeprom.c b/drivers/nvmem/rave-sp-eeprom.c
index 987ab1a4f5..a16b8a5a7e 100644
--- a/drivers/nvmem/rave-sp-eeprom.c
+++ b/drivers/nvmem/rave-sp-eeprom.c
@@ -345,7 +345,7 @@ static __maybe_unused const struct of_device_id rave_sp_eeprom_of_match[] = {
 	{}
 };
 
-static struct driver_d rave_sp_eeprom_driver = {
+static struct driver rave_sp_eeprom_driver = {
 	.name = "rave-sp-eeprom",
 	.probe = rave_sp_eeprom_probe,
 	.of_compatible = DRV_OF_COMPAT(rave_sp_eeprom_of_match),
diff --git a/drivers/nvmem/rmem.c b/drivers/nvmem/rmem.c
index 19b404402a..8982ee836d 100644
--- a/drivers/nvmem/rmem.c
+++ b/drivers/nvmem/rmem.c
@@ -55,7 +55,7 @@ static const struct of_device_id rmem_match[] = {
 	{ /* sentinel */ },
 };
 
-static struct driver_d rmem_driver = {
+static struct driver rmem_driver = {
 	.name = "rmem",
 	.of_compatible = rmem_match,
 	.probe = rmem_probe,
diff --git a/drivers/nvmem/snvs_lpgpr.c b/drivers/nvmem/snvs_lpgpr.c
index d67d94fcd0..fc4b2c2bb6 100644
--- a/drivers/nvmem/snvs_lpgpr.c
+++ b/drivers/nvmem/snvs_lpgpr.c
@@ -129,7 +129,7 @@ static __maybe_unused struct of_device_id snvs_lpgpr_dt_ids[] = {
 	{ },
 };
 
-static struct driver_d snvs_lpgpr_driver = {
+static struct driver snvs_lpgpr_driver = {
 	.name	= "snvs_lpgpr",
 	.probe	= snvs_lpgpr_probe,
 	.of_compatible = DRV_OF_COMPAT(snvs_lpgpr_dt_ids),
diff --git a/drivers/nvmem/starfive-otp.c b/drivers/nvmem/starfive-otp.c
index 06ede3510c..096c963d44 100644
--- a/drivers/nvmem/starfive-otp.c
+++ b/drivers/nvmem/starfive-otp.c
@@ -193,7 +193,7 @@ static struct of_device_id starfive_otp_dt_ids[] = {
 	{ /* sentinel */ }
 };
 
-static struct driver_d starfive_otp_driver = {
+static struct driver starfive_otp_driver = {
 	.name	= "starfive_otp",
 	.probe	= starfive_otp_probe,
 	.of_compatible = starfive_otp_dt_ids,
diff --git a/drivers/of/barebox.c b/drivers/of/barebox.c
index a605d2445d..d57626a529 100644
--- a/drivers/of/barebox.c
+++ b/drivers/of/barebox.c
@@ -81,7 +81,7 @@ static struct of_device_id environment_dt_ids[] = {
 	}
 };
 
-static struct driver_d environment_driver = {
+static struct driver environment_driver = {
 	.name		= "barebox-environment",
 	.probe		= environment_probe,
 	.of_compatible	= environment_dt_ids,
diff --git a/drivers/of/base.c b/drivers/of/base.c
index 189349f89b..9504ac47cb 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -739,7 +739,7 @@ struct device_node *of_find_matching_node_and_match(struct device_node *from,
 }
 EXPORT_SYMBOL(of_find_matching_node_and_match);
 
-int of_match(struct device *dev, struct driver_d *drv)
+int of_match(struct device *dev, struct driver *drv)
 {
 	const struct of_device_id *id;
 
diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index 725ceeb150..ff7096b6ee 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -205,7 +205,7 @@ struct device *of_platform_device_create(struct device_node *np,
 	return NULL;
 }
 
-struct driver_d dummy_driver = {
+struct driver dummy_driver = {
 	.name = "dummy-driver",
 };
 
diff --git a/drivers/pci/bus.c b/drivers/pci/bus.c
index e812c1bb8d..fdd012733a 100644
--- a/drivers/pci/bus.c
+++ b/drivers/pci/bus.c
@@ -50,7 +50,7 @@ const struct pci_device_id *pci_match_id(const struct pci_device_id *ids,
 }
 EXPORT_SYMBOL(pci_match_id);
 
-static int pci_match(struct device *dev, struct driver_d *drv)
+static int pci_match(struct device *dev, struct driver *drv)
 {
 	struct pci_dev *pdev = to_pci_dev(dev);
 	struct pci_driver *pdrv = to_pci_driver(drv);
@@ -97,7 +97,7 @@ pure_initcall(pci_bus_init);
 
 int pci_register_driver(struct pci_driver *pdrv)
 {
-	struct driver_d *drv = &pdrv->driver;
+	struct driver *drv = &pdrv->driver;
 
 	if (!pdrv->id_table)
 		return -EIO;
diff --git a/drivers/pci/pci-ecam-generic.c b/drivers/pci/pci-ecam-generic.c
index a5ae69dbad..0cd169fbb9 100644
--- a/drivers/pci/pci-ecam-generic.c
+++ b/drivers/pci/pci-ecam-generic.c
@@ -199,7 +199,7 @@ static struct of_device_id pcie_ecam_dt_ids[] = {
 	{ /* sentinel */ },
 };
 
-static struct driver_d pcie_ecam_driver = {
+static struct driver pcie_ecam_driver = {
 	.name = "pcie-generic-ecam",
 	.probe = pcie_ecam_probe,
 	.of_compatible = pcie_ecam_dt_ids,
diff --git a/drivers/pci/pci-imx6.c b/drivers/pci/pci-imx6.c
index ad44cedef0..6212a00913 100644
--- a/drivers/pci/pci-imx6.c
+++ b/drivers/pci/pci-imx6.c
@@ -875,7 +875,7 @@ static struct of_device_id imx6_pcie_of_match[] = {
 	{},
 };
 
-static struct driver_d imx6_pcie_driver = {
+static struct driver imx6_pcie_driver = {
 	.name = "imx6-pcie",
 	.of_compatible = DRV_OF_COMPAT(imx6_pcie_of_match),
 	.probe = imx6_pcie_probe,
diff --git a/drivers/pci/pci-layerscape.c b/drivers/pci/pci-layerscape.c
index 1bf9695c71..73bae923eb 100644
--- a/drivers/pci/pci-layerscape.c
+++ b/drivers/pci/pci-layerscape.c
@@ -532,7 +532,7 @@ static int __init ls_pcie_probe(struct device *dev)
 	return 0;
 }
 
-static struct driver_d ls_pcie_driver = {
+static struct driver ls_pcie_driver = {
 	.name = "layerscape-pcie",
 	.of_compatible = DRV_OF_COMPAT(ls_pcie_of_match),
 	.probe = ls_pcie_probe,
diff --git a/drivers/pci/pci-mvebu.c b/drivers/pci/pci-mvebu.c
index 6ce64afd5d..50d54f8f84 100644
--- a/drivers/pci/pci-mvebu.c
+++ b/drivers/pci/pci-mvebu.c
@@ -437,7 +437,7 @@ static int mvebu_pcie_probe(struct device *dev)
 	return 0;
 }
 
-static struct driver_d mvebu_pcie_driver = {
+static struct driver mvebu_pcie_driver = {
 	.name = "mvebu-pcie",
 	.probe = mvebu_pcie_probe,
 	.of_compatible = mvebu_pcie_dt_ids,
diff --git a/drivers/pci/pci-tegra.c b/drivers/pci/pci-tegra.c
index c518e6f88f..06a5bd9d82 100644
--- a/drivers/pci/pci-tegra.c
+++ b/drivers/pci/pci-tegra.c
@@ -1277,7 +1277,7 @@ put_resources:
 	return err;
 }
 
-static struct driver_d tegra_pcie_driver = {
+static struct driver tegra_pcie_driver = {
 	.name = "tegra-pcie",
 	.of_compatible = DRV_OF_COMPAT(tegra_pcie_of_match),
 	.probe = tegra_pcie_probe,
diff --git a/drivers/phy/freescale/phy-fsl-imx8mq-usb.c b/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
index 7ad6ca41a8..e0d7d7818c 100644
--- a/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
+++ b/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
@@ -183,7 +183,7 @@ static int imx8mq_usb_phy_probe(struct device *dev)
 	return PTR_ERR_OR_ZERO(phy_provider);
 }
 
-static struct driver_d imx8mq_usb_phy_driver = {
+static struct driver imx8mq_usb_phy_driver = {
 	.name	= "imx8mq-usb-phy",
 	.probe	= imx8mq_usb_phy_probe,
 	.of_compatible = DRV_OF_COMPAT(imx8mq_usb_phy_of_match),
diff --git a/drivers/phy/phy-stm32-usbphyc.c b/drivers/phy/phy-stm32-usbphyc.c
index bf092907c6..657824405f 100644
--- a/drivers/phy/phy-stm32-usbphyc.c
+++ b/drivers/phy/phy-stm32-usbphyc.c
@@ -504,7 +504,7 @@ static const struct of_device_id stm32_usbphyc_of_match[] = {
 	{ /* sentinel */ },
 };
 
-static struct driver_d stm32_usbphyc_driver = {
+static struct driver stm32_usbphyc_driver = {
 	.name = "stm32-usbphyc",
 	.probe = stm32_usbphyc_probe,
 	.remove = stm32_usbphyc_remove,
diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
index e8d48905fd..ab7d65389c 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
@@ -988,7 +988,7 @@ static const struct of_device_id rockchip_usb2phy_dt_match[] = {
 	{ }
 };
 
-static struct driver_d rockchip_usb2phy_driver = {
+static struct driver rockchip_usb2phy_driver = {
 	.probe		= rockchip_usb2phy_probe,
 	.name	= "rockchip-usb2phy",
 	.of_compatible = rockchip_usb2phy_dt_match,
diff --git a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
index 092ef2928a..65869efd3f 100644
--- a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
+++ b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
@@ -588,7 +588,7 @@ static const struct of_device_id rockchip_combphy_of_match[] = {
 	{ },
 };
 
-static struct driver_d rockchip_combphy_driver = {
+static struct driver rockchip_combphy_driver = {
 	.probe	= rockchip_combphy_probe,
 	.name = "naneng-combphy",
 	.of_compatible = rockchip_combphy_of_match,
diff --git a/drivers/phy/usb-nop-xceiv.c b/drivers/phy/usb-nop-xceiv.c
index ab50d97048..7fa412cab6 100644
--- a/drivers/phy/usb-nop-xceiv.c
+++ b/drivers/phy/usb-nop-xceiv.c
@@ -131,7 +131,7 @@ static __maybe_unused struct of_device_id nop_usbphy_dt_ids[] = {
 	},
 };
 
-static struct driver_d nop_usbphy_driver = {
+static struct driver nop_usbphy_driver = {
 	.name   = "usb-nop-xceiv",
 	.probe  = nop_usbphy_probe,
 	.of_compatible = DRV_OF_COMPAT(nop_usbphy_dt_ids),
diff --git a/drivers/pinctrl/imx-iomux-v1.c b/drivers/pinctrl/imx-iomux-v1.c
index f7fc2ae35a..ccbacebab9 100644
--- a/drivers/pinctrl/imx-iomux-v1.c
+++ b/drivers/pinctrl/imx-iomux-v1.c
@@ -297,7 +297,7 @@ static __maybe_unused struct of_device_id imx_iomux_v1_dt_ids[] = {
 	}
 };
 
-static struct driver_d imx_iomux_v1_driver = {
+static struct driver imx_iomux_v1_driver = {
 	.name		= "imx-iomuxv1",
 	.probe		= imx_iomux_v1_probe,
 	.of_compatible	= DRV_OF_COMPAT(imx_iomux_v1_dt_ids),
diff --git a/drivers/pinctrl/imx-iomux-v2.c b/drivers/pinctrl/imx-iomux-v2.c
index f1f6486930..806c3f882c 100644
--- a/drivers/pinctrl/imx-iomux-v2.c
+++ b/drivers/pinctrl/imx-iomux-v2.c
@@ -132,7 +132,7 @@ static struct platform_device_id imx_iomux_ids[] = {
 	},
 };
 
-static struct driver_d imx_iomux_driver = {
+static struct driver imx_iomux_driver = {
 	.name = "imx-iomuxv2",
 	.probe = imx_iomux_probe,
 	.of_compatible = DRV_OF_COMPAT(imx_iomux_dt_ids),
diff --git a/drivers/pinctrl/imx-iomux-v3.c b/drivers/pinctrl/imx-iomux-v3.c
index 5331bb90c5..aacab2ad51 100644
--- a/drivers/pinctrl/imx-iomux-v3.c
+++ b/drivers/pinctrl/imx-iomux-v3.c
@@ -252,7 +252,7 @@ static __maybe_unused struct of_device_id imx_iomux_v3_dt_ids[] = {
 	}
 };
 
-static struct driver_d imx_iomux_v3_driver = {
+static struct driver imx_iomux_v3_driver = {
 	.name		= "imx-iomuxv3",
 	.probe		= imx_iomux_v3_probe,
 	.of_compatible	= DRV_OF_COMPAT(imx_iomux_v3_dt_ids),
diff --git a/drivers/pinctrl/mvebu/armada-370.c b/drivers/pinctrl/mvebu/armada-370.c
index 017982adf3..8c0035354f 100644
--- a/drivers/pinctrl/mvebu/armada-370.c
+++ b/drivers/pinctrl/mvebu/armada-370.c
@@ -401,7 +401,7 @@ static int armada_370_pinctrl_probe(struct device *dev)
 	return mvebu_pinctrl_probe(dev, soc);
 }
 
-static struct driver_d armada_370_pinctrl_driver = {
+static struct driver armada_370_pinctrl_driver = {
 	.name		= "pinctrl-armada-370",
 	.probe		= armada_370_pinctrl_probe,
 	.of_compatible	= armada_370_pinctrl_of_match,
diff --git a/drivers/pinctrl/mvebu/armada-xp.c b/drivers/pinctrl/mvebu/armada-xp.c
index d6abf1cc7f..c247ee5955 100644
--- a/drivers/pinctrl/mvebu/armada-xp.c
+++ b/drivers/pinctrl/mvebu/armada-xp.c
@@ -391,7 +391,7 @@ static int armada_xp_pinctrl_probe(struct device *dev)
 	return mvebu_pinctrl_probe(dev, soc);
 }
 
-static struct driver_d armada_xp_pinctrl_driver = {
+static struct driver armada_xp_pinctrl_driver = {
 	.name		= "pinctrl-armada-xp",
 	.probe		= armada_xp_pinctrl_probe,
 	.of_compatible	= armada_xp_pinctrl_of_match,
diff --git a/drivers/pinctrl/mvebu/dove.c b/drivers/pinctrl/mvebu/dove.c
index a21fda2cfc..3ec9a39a69 100644
--- a/drivers/pinctrl/mvebu/dove.c
+++ b/drivers/pinctrl/mvebu/dove.c
@@ -728,7 +728,7 @@ static int dove_pinctrl_probe(struct device *dev)
 	return mvebu_pinctrl_probe(dev, soc);
 }
 
-static struct driver_d dove_pinctrl_driver = {
+static struct driver dove_pinctrl_driver = {
 	.name		= "pinctrl-dove",
 	.probe		= dove_pinctrl_probe,
 	.of_compatible	= dove_pinctrl_of_match,
diff --git a/drivers/pinctrl/mvebu/kirkwood.c b/drivers/pinctrl/mvebu/kirkwood.c
index 067cfe2897..101ef73868 100644
--- a/drivers/pinctrl/mvebu/kirkwood.c
+++ b/drivers/pinctrl/mvebu/kirkwood.c
@@ -442,7 +442,7 @@ static int kirkwood_pinctrl_probe(struct device *dev)
 	return mvebu_pinctrl_probe(dev, soc);
 }
 
-static struct driver_d kirkwood_pinctrl_driver = {
+static struct driver kirkwood_pinctrl_driver = {
 	.name		= "pinctrl-kirkwood",
 	.probe		= kirkwood_pinctrl_probe,
 	.of_compatible	= kirkwood_pinctrl_of_match,
diff --git a/drivers/pinctrl/pinctrl-at91-pio4.c b/drivers/pinctrl/pinctrl-at91-pio4.c
index 0262429fdf..7f507bedb4 100644
--- a/drivers/pinctrl/pinctrl-at91-pio4.c
+++ b/drivers/pinctrl/pinctrl-at91-pio4.c
@@ -307,7 +307,7 @@ static __maybe_unused struct of_device_id pinctrl_at91_pio4_dt_ids[] = {
 	{ /* sentinel */ }
 };
 
-static struct driver_d pinctrl_at91_pio4_driver = {
+static struct driver pinctrl_at91_pio4_driver = {
 	.name		= "pinctrl-at91-pio4",
 	.probe		= pinctrl_at91_pio4_probe,
 	.of_compatible	= DRV_OF_COMPAT(pinctrl_at91_pio4_dt_ids),
diff --git a/drivers/pinctrl/pinctrl-at91.c b/drivers/pinctrl/pinctrl-at91.c
index 197ee54f56..1f0a8fe038 100644
--- a/drivers/pinctrl/pinctrl-at91.c
+++ b/drivers/pinctrl/pinctrl-at91.c
@@ -509,7 +509,7 @@ static struct platform_device_id at91_pinctrl_ids[] = {
 	},
 };
 
-static struct driver_d at91_pinctrl_driver = {
+static struct driver at91_pinctrl_driver = {
 	.name = "pinctrl-at91",
 	.probe = at91_pinctrl_probe,
 	.id_table = at91_pinctrl_ids,
@@ -685,7 +685,7 @@ static struct platform_device_id at91_gpio_ids[] = {
 	},
 };
 
-static struct driver_d at91_gpio_driver = {
+static struct driver at91_gpio_driver = {
 	.name = "gpio-at91",
 	.probe = at91_gpio_probe,
 	.id_table = at91_gpio_ids,
diff --git a/drivers/pinctrl/pinctrl-bcm2835.c b/drivers/pinctrl/pinctrl-bcm2835.c
index aed679ffc6..453aed435f 100644
--- a/drivers/pinctrl/pinctrl-bcm2835.c
+++ b/drivers/pinctrl/pinctrl-bcm2835.c
@@ -209,7 +209,7 @@ static __maybe_unused struct of_device_id bcm2835_gpio_dt_ids[] = {
 	}
 };
 
-static struct driver_d bcm2835_gpio_driver = {
+static struct driver bcm2835_gpio_driver = {
 	.name = "bcm2835-gpio",
 	.probe = bcm2835_gpio_probe,
 	.of_compatible = DRV_OF_COMPAT(bcm2835_gpio_dt_ids),
diff --git a/drivers/pinctrl/pinctrl-mxs.c b/drivers/pinctrl/pinctrl-mxs.c
index c70e2f943e..06b6396456 100644
--- a/drivers/pinctrl/pinctrl-mxs.c
+++ b/drivers/pinctrl/pinctrl-mxs.c
@@ -146,7 +146,7 @@ static __maybe_unused struct of_device_id mxs_pinctrl_dt_ids[] = {
 	}
 };
 
-static struct driver_d mxs_pinctrl_driver = {
+static struct driver mxs_pinctrl_driver = {
 	.name		= "mxs-pinctrl",
 	.probe		= mxs_pinctrl_probe,
 	.of_compatible	= DRV_OF_COMPAT(mxs_pinctrl_dt_ids),
diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index d7ded69675..1e51b1574e 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -1264,7 +1264,7 @@ static struct of_device_id rockchip_pinctrl_dt_match[] = {
 	}
 };
 
-static struct driver_d rockchip_pinctrl_driver = {
+static struct driver rockchip_pinctrl_driver = {
 	.name = "rockchip-pinctrl",
 	.probe = rockchip_pinctrl_probe,
 	.of_compatible = DRV_OF_COMPAT(rockchip_pinctrl_dt_match),
@@ -1281,7 +1281,7 @@ static struct of_device_id rockchip_gpio_dt_match[] = {
 	}
 };
 
-static struct driver_d rockchip_gpio_driver = {
+static struct driver rockchip_gpio_driver = {
 	.name = "rockchip-gpio",
 	.probe = rockchip_gpio_probe,
 	.of_compatible = DRV_OF_COMPAT(rockchip_gpio_dt_match),
diff --git a/drivers/pinctrl/pinctrl-single.c b/drivers/pinctrl/pinctrl-single.c
index 18af3a4034..d68f292b5d 100644
--- a/drivers/pinctrl/pinctrl-single.c
+++ b/drivers/pinctrl/pinctrl-single.c
@@ -204,7 +204,7 @@ static __maybe_unused struct of_device_id pcs_dt_ids[] = {
 	}
 };
 
-static struct driver_d pcs_driver = {
+static struct driver pcs_driver = {
 	.name		= "pinctrl-single",
 	.probe		= pinctrl_single_probe,
 	.of_compatible	= DRV_OF_COMPAT(pcs_dt_ids),
diff --git a/drivers/pinctrl/pinctrl-stm32.c b/drivers/pinctrl/pinctrl-stm32.c
index 4badb6bb25..5e6625072a 100644
--- a/drivers/pinctrl/pinctrl-stm32.c
+++ b/drivers/pinctrl/pinctrl-stm32.c
@@ -404,7 +404,7 @@ static __maybe_unused struct of_device_id stm32_pinctrl_dt_ids[] = {
 	{ /* sentinel */ }
 };
 
-static struct driver_d stm32_pinctrl_driver = {
+static struct driver stm32_pinctrl_driver = {
 	.name		= "stm32-pinctrl",
 	.probe		= stm32_pinctrl_probe,
 	.of_compatible	= DRV_OF_COMPAT(stm32_pinctrl_dt_ids),
diff --git a/drivers/pinctrl/pinctrl-tegra-xusb.c b/drivers/pinctrl/pinctrl-tegra-xusb.c
index f40da72a9c..5016ed3d0b 100644
--- a/drivers/pinctrl/pinctrl-tegra-xusb.c
+++ b/drivers/pinctrl/pinctrl-tegra-xusb.c
@@ -497,7 +497,7 @@ static __maybe_unused struct of_device_id pinctrl_tegra_xusb_dt_ids[] = {
 	}
 };
 
-static struct driver_d pinctrl_tegra_xusb_driver = {
+static struct driver pinctrl_tegra_xusb_driver = {
 	.name		= "pinctrl-tegra-xusb",
 	.probe		= pinctrl_tegra_xusb_probe,
 	.of_compatible	= DRV_OF_COMPAT(pinctrl_tegra_xusb_dt_ids),
diff --git a/drivers/pinctrl/pinctrl-tegra20.c b/drivers/pinctrl/pinctrl-tegra20.c
index cb24e84b19..64b187d8d6 100644
--- a/drivers/pinctrl/pinctrl-tegra20.c
+++ b/drivers/pinctrl/pinctrl-tegra20.c
@@ -329,7 +329,7 @@ static __maybe_unused struct of_device_id pinctrl_tegra20_dt_ids[] = {
 	}
 };
 
-static struct driver_d pinctrl_tegra20_driver = {
+static struct driver pinctrl_tegra20_driver = {
 	.name		= "pinctrl-tegra20",
 	.probe		= pinctrl_tegra20_probe,
 	.of_compatible	= DRV_OF_COMPAT(pinctrl_tegra20_dt_ids),
diff --git a/drivers/pinctrl/pinctrl-tegra30.c b/drivers/pinctrl/pinctrl-tegra30.c
index 771dc9c23f..2d3c1d22b4 100644
--- a/drivers/pinctrl/pinctrl-tegra30.c
+++ b/drivers/pinctrl/pinctrl-tegra30.c
@@ -914,7 +914,7 @@ static __maybe_unused struct of_device_id pinctrl_tegra30_dt_ids[] = {
 	}
 };
 
-static struct driver_d pinctrl_tegra30_driver = {
+static struct driver pinctrl_tegra30_driver = {
 	.name		= "pinctrl-tegra30",
 	.probe		= pinctrl_tegra30_probe,
 	.of_compatible	= DRV_OF_COMPAT(pinctrl_tegra30_dt_ids),
diff --git a/drivers/pinctrl/pinctrl-vf610.c b/drivers/pinctrl/pinctrl-vf610.c
index 36d877578c..73194e9efa 100644
--- a/drivers/pinctrl/pinctrl-vf610.c
+++ b/drivers/pinctrl/pinctrl-vf610.c
@@ -143,7 +143,7 @@ static __maybe_unused struct of_device_id pinctrl_vf610_dt_ids[] = {
 	{ /* sentinel */ }
 };
 
-static struct driver_d pinctrl_vf610_driver = {
+static struct driver pinctrl_vf610_driver = {
 	.name		= "vf610-pinctrl",
 	.probe		= pinctrl_vf610_probe,
 	.of_compatible	= DRV_OF_COMPAT(pinctrl_vf610_dt_ids),
diff --git a/drivers/power/reset/gpio-poweroff.c b/drivers/power/reset/gpio-poweroff.c
index 78ac74336d..19f218c9c8 100644
--- a/drivers/power/reset/gpio-poweroff.c
+++ b/drivers/power/reset/gpio-poweroff.c
@@ -80,7 +80,7 @@ static const struct of_device_id of_gpio_poweroff_match[] = {
 	{},
 };
 
-static struct driver_d gpio_poweroff_driver = {
+static struct driver gpio_poweroff_driver = {
 	.name = "poweroff-gpio",
 	.of_compatible = of_gpio_poweroff_match,
 	.probe = gpio_poweroff_probe,
diff --git a/drivers/power/reset/gpio-restart.c b/drivers/power/reset/gpio-restart.c
index 058c772622..010ff73626 100644
--- a/drivers/power/reset/gpio-restart.c
+++ b/drivers/power/reset/gpio-restart.c
@@ -87,7 +87,7 @@ static const struct of_device_id of_gpio_restart_match[] = {
 	{},
 };
 
-static struct driver_d gpio_restart_driver = {
+static struct driver gpio_restart_driver = {
 	.name = "restart-gpio",
 	.of_compatible = of_gpio_restart_match,
 	.probe = gpio_restart_probe,
diff --git a/drivers/power/reset/htif-poweroff.c b/drivers/power/reset/htif-poweroff.c
index 106bc44daa..f51682a674 100644
--- a/drivers/power/reset/htif-poweroff.c
+++ b/drivers/power/reset/htif-poweroff.c
@@ -38,7 +38,7 @@ static const struct of_device_id htif_poweroff_of_match[] = {
 	{}
 };
 
-static struct driver_d htif_poweroff_driver = {
+static struct driver htif_poweroff_driver = {
 	.name = "htif-poweroff",
 	.of_compatible = htif_poweroff_of_match,
 	.probe = htif_poweroff_probe,
diff --git a/drivers/power/reset/nvmem-reboot-mode.c b/drivers/power/reset/nvmem-reboot-mode.c
index afc72958ee..bb51ca6595 100644
--- a/drivers/power/reset/nvmem-reboot-mode.c
+++ b/drivers/power/reset/nvmem-reboot-mode.c
@@ -83,7 +83,7 @@ static const struct of_device_id nvmem_reboot_mode_of_match[] = {
 	{ /* sentinel */ }
 };
 
-static struct driver_d nvmem_reboot_mode_driver = {
+static struct driver nvmem_reboot_mode_driver = {
 	.probe = nvmem_reboot_mode_probe,
 	.name = "nvmem-reboot-mode",
 	.of_compatible = nvmem_reboot_mode_of_match,
diff --git a/drivers/power/reset/syscon-poweroff.c b/drivers/power/reset/syscon-poweroff.c
index 5998f4e914..a853a91222 100644
--- a/drivers/power/reset/syscon-poweroff.c
+++ b/drivers/power/reset/syscon-poweroff.c
@@ -67,7 +67,7 @@ static const struct of_device_id syscon_poweroff_of_match[] = {
 	{}
 };
 
-static struct driver_d syscon_poweroff_driver = {
+static struct driver syscon_poweroff_driver = {
 	.name = "syscon-poweroff",
 	.of_compatible = syscon_poweroff_of_match,
 	.probe = syscon_poweroff_probe,
diff --git a/drivers/power/reset/syscon-reboot-mode.c b/drivers/power/reset/syscon-reboot-mode.c
index c5fa9b29e6..668cabdbee 100644
--- a/drivers/power/reset/syscon-reboot-mode.c
+++ b/drivers/power/reset/syscon-reboot-mode.c
@@ -121,7 +121,7 @@ static const struct of_device_id syscon_reboot_mode_of_match[] = {
 	{ /* sentinel */ }
 };
 
-static struct driver_d syscon_reboot_mode_driver = {
+static struct driver syscon_reboot_mode_driver = {
 	.probe = syscon_reboot_mode_probe,
 	.name = "syscon-reboot-mode",
 	.of_compatible = syscon_reboot_mode_of_match,
diff --git a/drivers/power/reset/syscon-reboot.c b/drivers/power/reset/syscon-reboot.c
index 93d05d9c2b..0ecd6c9f93 100644
--- a/drivers/power/reset/syscon-reboot.c
+++ b/drivers/power/reset/syscon-reboot.c
@@ -85,7 +85,7 @@ static const struct of_device_id syscon_reboot_of_match[] = {
 	{}
 };
 
-static struct driver_d syscon_reboot_driver = {
+static struct driver syscon_reboot_driver = {
 	.probe = syscon_reboot_probe,
 	.name = "syscon-reboot",
 	.of_compatible = syscon_reboot_of_match,
diff --git a/drivers/pwm/pwm-atmel.c b/drivers/pwm/pwm-atmel.c
index dce039ff66..2aa4eb3b63 100644
--- a/drivers/pwm/pwm-atmel.c
+++ b/drivers/pwm/pwm-atmel.c
@@ -462,7 +462,7 @@ static int atmel_pwm_probe(struct device *dev)
 	return 0;
 }
 
-static struct driver_d atmel_pwm_driver = {
+static struct driver atmel_pwm_driver = {
 	.name		= "atmel-pwm",
 	.of_compatible	= atmel_pwm_dt_ids,
 	.probe		= atmel_pwm_probe,
diff --git a/drivers/pwm/pwm-imx.c b/drivers/pwm/pwm-imx.c
index ceaa521e3b..5b80f0ffbc 100644
--- a/drivers/pwm/pwm-imx.c
+++ b/drivers/pwm/pwm-imx.c
@@ -239,7 +239,7 @@ static int imx_pwm_probe(struct device *dev)
 	return pwmchip_add(&imx->chip, dev);;
 }
 
-static struct driver_d imx_pwm_driver = {
+static struct driver imx_pwm_driver = {
 	.name	= "imx-pwm",
 	.of_compatible	= imx_pwm_dt_ids,
 	.probe		= imx_pwm_probe,
diff --git a/drivers/pwm/pwm-mxs.c b/drivers/pwm/pwm-mxs.c
index dc32011179..cee3de8a16 100644
--- a/drivers/pwm/pwm-mxs.c
+++ b/drivers/pwm/pwm-mxs.c
@@ -147,7 +147,7 @@ static const struct of_device_id mxs_pwm_dt_ids[] = {
 	{ /* sentinel */ }
 };
 
-static struct driver_d mxs_pwm_driver = {
+static struct driver mxs_pwm_driver = {
 	.name	= "mxs-pwm",
 	.of_compatible	= mxs_pwm_dt_ids,
 	.probe		= mxs_pwm_probe,
diff --git a/drivers/pwm/pwm-stm32.c b/drivers/pwm/pwm-stm32.c
index 251128c677..a8cf8a634a 100644
--- a/drivers/pwm/pwm-stm32.c
+++ b/drivers/pwm/pwm-stm32.c
@@ -392,7 +392,7 @@ static const struct of_device_id stm32_pwm_of_match[] = {
 	{ /* sentinel */ },
 };
 
-static struct driver_d stm32_pwm_driver = {
+static struct driver stm32_pwm_driver = {
 	.name = "stm32-pwm",
 	.probe	= stm32_pwm_probe,
 	.of_compatible = stm32_pwm_of_match,
diff --git a/drivers/pwm/pxa_pwm.c b/drivers/pwm/pxa_pwm.c
index 1c2f384f8e..305dc06bdd 100644
--- a/drivers/pwm/pxa_pwm.c
+++ b/drivers/pwm/pxa_pwm.c
@@ -146,7 +146,7 @@ static int pxa_pwm_probe(struct device *dev)
 	return pwmchip_add(&chip->chip, dev);
 }
 
-static struct driver_d pxa_pwm_driver = {
+static struct driver pxa_pwm_driver = {
 	.name  = "pxa_pwm",
 	.probe = pxa_pwm_probe,
 };
diff --git a/drivers/regulator/anatop-regulator.c b/drivers/regulator/anatop-regulator.c
index 210e064099..0bc15d193e 100644
--- a/drivers/regulator/anatop-regulator.c
+++ b/drivers/regulator/anatop-regulator.c
@@ -139,7 +139,7 @@ static const struct of_device_id of_anatop_regulator_match_tbl[] = {
 	{ /* end */ }
 };
 
-static struct driver_d anatop_regulator_driver = {
+static struct driver anatop_regulator_driver = {
 	.name = "anatop_regulator",
 	.probe = anatop_regulator_probe,
 	.of_compatible = DRV_OF_COMPAT(of_anatop_regulator_match_tbl),
diff --git a/drivers/regulator/bcm2835.c b/drivers/regulator/bcm2835.c
index bda5a74fd1..61dc7cda1f 100644
--- a/drivers/regulator/bcm2835.c
+++ b/drivers/regulator/bcm2835.c
@@ -130,7 +130,7 @@ static int regulator_bcm2835_probe(struct device *dev)
 	return 0;
 }
 
-static struct driver_d regulator_bcm2835_driver = {
+static struct driver regulator_bcm2835_driver = {
 	.name  = "regulator-bcm2835",
 	.probe = regulator_bcm2835_probe,
 };
diff --git a/drivers/regulator/fixed.c b/drivers/regulator/fixed.c
index 9a88a72925..7f9bb820f7 100644
--- a/drivers/regulator/fixed.c
+++ b/drivers/regulator/fixed.c
@@ -91,7 +91,7 @@ static struct of_device_id regulator_fixed_of_ids[] = {
 	{ }
 };
 
-static struct driver_d regulator_fixed_driver = {
+static struct driver regulator_fixed_driver = {
 	.name  = "regulator-fixed",
 	.probe = regulator_fixed_probe,
 	.of_compatible = DRV_OF_COMPAT(regulator_fixed_of_ids),
diff --git a/drivers/regulator/pfuze.c b/drivers/regulator/pfuze.c
index cec9ca41a5..51a2ca1245 100644
--- a/drivers/regulator/pfuze.c
+++ b/drivers/regulator/pfuze.c
@@ -188,7 +188,7 @@ static __maybe_unused struct of_device_id pfuze_dt_ids[] = {
 	{ }
 };
 
-static struct driver_d pfuze_i2c_driver = {
+static struct driver pfuze_i2c_driver = {
 	.name		= "pfuze-i2c",
 	.probe		= pfuze_probe,
 	.id_table	= pfuze_ids,
diff --git a/drivers/regulator/rk808-regulator.c b/drivers/regulator/rk808-regulator.c
index 53927e3617..3da6cca294 100644
--- a/drivers/regulator/rk808-regulator.c
+++ b/drivers/regulator/rk808-regulator.c
@@ -951,7 +951,7 @@ static int rk808_regulator_probe(struct device *dev)
 	return 0;
 }
 
-static struct driver_d rk808_regulator_driver = {
+static struct driver rk808_regulator_driver = {
 	.name = "rk808-regulator",
 	.probe = rk808_regulator_probe,
 };
diff --git a/drivers/regulator/stm32-pwr.c b/drivers/regulator/stm32-pwr.c
index 6014c66a5d..a7e8fec0fa 100644
--- a/drivers/regulator/stm32-pwr.c
+++ b/drivers/regulator/stm32-pwr.c
@@ -207,7 +207,7 @@ static const struct of_device_id stm32_pwr_of_match[] = {
 	{ /* sentinel */ },
 };
 
-static struct driver_d stm32_pwr_driver = {
+static struct driver stm32_pwr_driver = {
 	.probe = stm32_pwr_regulator_probe,
 	.name  = "stm32-pwr-regulator",
 	.of_compatible = stm32_pwr_of_match,
diff --git a/drivers/regulator/stm32-vrefbuf.c b/drivers/regulator/stm32-vrefbuf.c
index 586329eddc..34b48bb2af 100644
--- a/drivers/regulator/stm32-vrefbuf.c
+++ b/drivers/regulator/stm32-vrefbuf.c
@@ -204,7 +204,7 @@ static const struct of_device_id __maybe_unused stm32_vrefbuf_of_match[] = {
 	{},
 };
 
-static struct driver_d stm32_vrefbuf_driver = {
+static struct driver stm32_vrefbuf_driver = {
 	.probe = stm32_vrefbuf_probe,
 	.name  = "stm32-vrefbuf",
 	.remove = stm32_vrefbuf_remove,
diff --git a/drivers/regulator/stpmic1_regulator.c b/drivers/regulator/stpmic1_regulator.c
index 066ad8d7ae..c39e01f6da 100644
--- a/drivers/regulator/stpmic1_regulator.c
+++ b/drivers/regulator/stpmic1_regulator.c
@@ -432,7 +432,7 @@ static __maybe_unused const struct of_device_id stpmic1_regulator_of_match[] = {
 	{ /* sentinel */ },
 };
 
-static struct driver_d stpmic1_regulator_driver = {
+static struct driver stpmic1_regulator_driver = {
 	.name = "stpmic1-regulator",
 	.probe = stpmic1_regulator_probe,
 	.of_compatible = DRV_OF_COMPAT(stpmic1_regulator_of_match),
diff --git a/drivers/remoteproc/imx_rproc.c b/drivers/remoteproc/imx_rproc.c
index 6e45a84589..bd0fa4b61c 100644
--- a/drivers/remoteproc/imx_rproc.c
+++ b/drivers/remoteproc/imx_rproc.c
@@ -534,7 +534,7 @@ static const struct of_device_id imx_rproc_of_match[] = {
 	{},
 };
 
-static struct driver_d imx_rproc_driver = {
+static struct driver imx_rproc_driver = {
 	.name = "imx-rproc",
 	.probe = imx_rproc_probe,
 	.of_compatible = DRV_OF_COMPAT(imx_rproc_of_match),
diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/stm32_rproc.c
index 1fd2054248..afd78026f5 100644
--- a/drivers/remoteproc/stm32_rproc.c
+++ b/drivers/remoteproc/stm32_rproc.c
@@ -191,7 +191,7 @@ static const struct of_device_id stm32_rproc_of_match[] = {
 	{ /* sentinel */ },
 };
 
-static struct driver_d stm32_rproc_driver = {
+static struct driver stm32_rproc_driver = {
 	.name = "stm32-rproc",
 	.probe = stm32_rproc_probe,
 	.of_compatible = DRV_OF_COMPAT(stm32_rproc_of_match),
diff --git a/drivers/reset/reset-imx7.c b/drivers/reset/reset-imx7.c
index e42a964437..3c043ddcd9 100644
--- a/drivers/reset/reset-imx7.c
+++ b/drivers/reset/reset-imx7.c
@@ -279,7 +279,7 @@ static const struct of_device_id imx7_reset_dt_ids[] = {
 	{ /* sentinel */ },
 };
 
-static struct driver_d imx7_reset_driver = {
+static struct driver imx7_reset_driver = {
 	.name = "imx7d-src",
 	.probe = imx7_reset_probe,
 	.of_compatible = DRV_OF_COMPAT(imx7_reset_dt_ids),
diff --git a/drivers/reset/reset-simple.c b/drivers/reset/reset-simple.c
index a72fa43012..897a9fb5a6 100644
--- a/drivers/reset/reset-simple.c
+++ b/drivers/reset/reset-simple.c
@@ -182,7 +182,7 @@ static int reset_simple_probe(struct device *dev)
 	return reset_controller_register(&data->rcdev);
 }
 
-static struct driver_d reset_simple_driver = {
+static struct driver reset_simple_driver = {
 	.probe	= reset_simple_probe,
 	.name		= "simple-reset",
 	.of_compatible	= reset_simple_dt_ids,
diff --git a/drivers/reset/reset-socfpga.c b/drivers/reset/reset-socfpga.c
index 6904aacecd..e12d34c5f7 100644
--- a/drivers/reset/reset-socfpga.c
+++ b/drivers/reset/reset-socfpga.c
@@ -109,7 +109,7 @@ static const struct of_device_id socfpga_reset_dt_ids[] = {
 	{ /* sentinel */ },
 };
 
-static struct driver_d socfpga_reset_driver = {
+static struct driver socfpga_reset_driver = {
 	.name = "socfpga_reset",
 	.probe	= socfpga_reset_probe,
 	.of_compatible	= DRV_OF_COMPAT(socfpga_reset_dt_ids),
diff --git a/drivers/reset/reset-starfive-vic.c b/drivers/reset/reset-starfive-vic.c
index 0f4fa090c5..237e5adca0 100644
--- a/drivers/reset/reset-starfive-vic.c
+++ b/drivers/reset/reset-starfive-vic.c
@@ -226,7 +226,7 @@ static const struct of_device_id starfive_rstgen_reset_dt_ids[] = {
 	{ /* sentinel */ },
 };
 
-static struct driver_d starfive_rstgen_reset_driver = {
+static struct driver starfive_rstgen_reset_driver = {
 	.name = "starfive_rstgen",
 	.probe = starfive_rstgen_probe,
 	.of_compatible = starfive_rstgen_reset_dt_ids,
diff --git a/drivers/rtc/rtc-abracon.c b/drivers/rtc/rtc-abracon.c
index b6c0c63de0..d43b1b4021 100644
--- a/drivers/rtc/rtc-abracon.c
+++ b/drivers/rtc/rtc-abracon.c
@@ -100,7 +100,7 @@ static struct platform_device_id abracon_id[] = {
 	{ }
 };
 
-static struct driver_d abracon_driver = {
+static struct driver abracon_driver = {
 	.name	= "rtc-abracon",
 	.probe		= abracon_probe,
 	.id_table	= abracon_id,
diff --git a/drivers/rtc/rtc-ds1307.c b/drivers/rtc/rtc-ds1307.c
index 92cffff717..e1a8e214d2 100644
--- a/drivers/rtc/rtc-ds1307.c
+++ b/drivers/rtc/rtc-ds1307.c
@@ -481,7 +481,7 @@ exit:
 	return err;
 }
 
-static struct driver_d ds1307_driver = {
+static struct driver ds1307_driver = {
 	.name	= "rtc-ds1307",
 	.probe		= ds1307_probe,
 	.id_table	= ds1307_id,
diff --git a/drivers/rtc/rtc-imxdi.c b/drivers/rtc/rtc-imxdi.c
index d196d25558..08e49d8fb6 100644
--- a/drivers/rtc/rtc-imxdi.c
+++ b/drivers/rtc/rtc-imxdi.c
@@ -604,7 +604,7 @@ static __maybe_unused const struct of_device_id dryice_dt_ids[] = {
 	{ /* sentinel */ }
 };
 
-static struct driver_d dryice_rtc_driver = {
+static struct driver dryice_rtc_driver = {
         .name   = "imx-di-rtc",
         .probe  = dryice_rtc_probe,
         .of_compatible = DRV_OF_COMPAT(dryice_dt_ids),
diff --git a/drivers/rtc/rtc-jz4740.c b/drivers/rtc/rtc-jz4740.c
index 16d3e66c09..46cfdc7537 100644
--- a/drivers/rtc/rtc-jz4740.c
+++ b/drivers/rtc/rtc-jz4740.c
@@ -154,7 +154,7 @@ static __maybe_unused struct of_device_id jz4740_rtc_dt_ids[] = {
 	}
 };
 
-static struct driver_d jz4740_rtc_driver = {
+static struct driver jz4740_rtc_driver = {
 	.name  = "jz4740-rtc",
 	.probe	 = jz4740_rtc_probe,
 	.of_compatible = DRV_OF_COMPAT(jz4740_rtc_dt_ids),
diff --git a/drivers/rtc/rtc-pcf85363.c b/drivers/rtc/rtc-pcf85363.c
index d4906bb65d..5b2c4e62b0 100644
--- a/drivers/rtc/rtc-pcf85363.c
+++ b/drivers/rtc/rtc-pcf85363.c
@@ -154,7 +154,7 @@ static struct platform_device_id dev_ids[] = {
 	{ /* sentinel */ }
 };
 
-static struct driver_d pcf85363_driver = {
+static struct driver pcf85363_driver = {
 	.name		= "pcf85363",
 	.probe		= pcf85363_probe,
 	.id_table	= dev_ids,
diff --git a/drivers/serial/arm_dcc.c b/drivers/serial/arm_dcc.c
index 5ac2da167c..1e2b4e425c 100644
--- a/drivers/serial/arm_dcc.c
+++ b/drivers/serial/arm_dcc.c
@@ -125,7 +125,7 @@ static int arm_dcc_probe(struct device *dev)
 	return 0;
 }
 
-static struct driver_d arm_dcc_driver = {
+static struct driver arm_dcc_driver = {
 	.name	= "arm_dcc",
 	.probe	= arm_dcc_probe,
 };
diff --git a/drivers/serial/atmel.c b/drivers/serial/atmel.c
index 69ab60bca2..4fbcfb03be 100644
--- a/drivers/serial/atmel.c
+++ b/drivers/serial/atmel.c
@@ -448,7 +448,7 @@ static const struct of_device_id __maybe_unused atmel_serial_dt_ids[] = {
 	{ /* sentinel */ }
 };
 
-static struct driver_d atmel_serial_driver = {
+static struct driver atmel_serial_driver = {
         .name  = "atmel_usart",
         .probe = atmel_serial_probe,
 	.of_compatible = DRV_OF_COMPAT(atmel_serial_dt_ids),
diff --git a/drivers/serial/efi-stdio.c b/drivers/serial/efi-stdio.c
index eae9df72c3..b3b696d8fb 100644
--- a/drivers/serial/efi-stdio.c
+++ b/drivers/serial/efi-stdio.c
@@ -467,7 +467,7 @@ static int efi_console_probe(struct device *dev)
 	return 0;
 }
 
-static struct driver_d efi_console_driver = {
+static struct driver efi_console_driver = {
         .name  = "efi-stdio",
         .probe = efi_console_probe,
 };
diff --git a/drivers/serial/linux_console.c b/drivers/serial/linux_console.c
index 7e5838b972..b8303dfd12 100644
--- a/drivers/serial/linux_console.c
+++ b/drivers/serial/linux_console.c
@@ -67,7 +67,7 @@ static int linux_console_probe(struct device *dev)
 	return 0;
 }
 
-static struct driver_d linux_console_driver = {
+static struct driver linux_console_driver = {
         .name  = "console",
         .probe = linux_console_probe,
 };
diff --git a/drivers/serial/serial_altera.c b/drivers/serial/serial_altera.c
index ccc90c4a78..b13050cfbe 100644
--- a/drivers/serial/serial_altera.c
+++ b/drivers/serial/serial_altera.c
@@ -87,7 +87,7 @@ static int altera_serial_probe(struct device *dev)
 	return 0;
 }
 
-static struct driver_d altera_serial_driver = {
+static struct driver altera_serial_driver = {
 	.name = "altera_serial",
 	.probe = altera_serial_probe,
 };
diff --git a/drivers/serial/serial_altera_jtag.c b/drivers/serial/serial_altera_jtag.c
index 4ca3eb5ed5..ad278d1a61 100644
--- a/drivers/serial/serial_altera_jtag.c
+++ b/drivers/serial/serial_altera_jtag.c
@@ -92,7 +92,7 @@ static int altera_serial_jtag_probe(struct device *dev) {
 	return 0;
 }
 
-static struct driver_d altera_serial_jtag_driver = {
+static struct driver altera_serial_jtag_driver = {
 	.name = "altera_serial_jtag",
 	.probe = altera_serial_jtag_probe,
 };
diff --git a/drivers/serial/serial_ar933x.c b/drivers/serial/serial_ar933x.c
index 360bd2c4d3..18c59c6b40 100644
--- a/drivers/serial/serial_ar933x.c
+++ b/drivers/serial/serial_ar933x.c
@@ -189,7 +189,7 @@ static struct of_device_id ar933x_serial_dt_ids[] = {
 	},
 };
 
-static struct driver_d ar933x_serial_driver = {
+static struct driver ar933x_serial_driver = {
 	.name  = "ar933x_serial",
 	.probe = ar933x_serial_probe,
 	.of_compatible = DRV_OF_COMPAT(ar933x_serial_dt_ids),
diff --git a/drivers/serial/serial_auart.c b/drivers/serial/serial_auart.c
index 163b6fe5ba..a0163bef6f 100644
--- a/drivers/serial/serial_auart.c
+++ b/drivers/serial/serial_auart.c
@@ -219,7 +219,7 @@ static const __maybe_unused struct of_device_id auart_serial_dt_ids[] = {
 	}
 };
 
-static struct driver_d auart_serial_driver = {
+static struct driver auart_serial_driver = {
 	.name = "auart_serial",
 	.probe = auart_serial_probe,
 	.of_compatible = DRV_OF_COMPAT(auart_serial_dt_ids),
diff --git a/drivers/serial/serial_cadence.c b/drivers/serial/serial_cadence.c
index 88b1806ca1..c28ec3639e 100644
--- a/drivers/serial/serial_cadence.c
+++ b/drivers/serial/serial_cadence.c
@@ -250,7 +250,7 @@ static struct platform_device_id cadence_serial_ids[] = {
 	},
 };
 
-static struct driver_d cadence_serial_driver = {
+static struct driver cadence_serial_driver = {
 	.name   = "cadence_serial",
 	.probe  = cadence_serial_probe,
 	.of_compatible = DRV_OF_COMPAT(cadence_serial_dt_ids),
diff --git a/drivers/serial/serial_clps711x.c b/drivers/serial/serial_clps711x.c
index de83a8c601..658fd76297 100644
--- a/drivers/serial/serial_clps711x.c
+++ b/drivers/serial/serial_clps711x.c
@@ -186,7 +186,7 @@ static const struct of_device_id __maybe_unused clps711x_uart_dt_ids[] = {
 	{ /* sentinel */ }
 };
 
-static struct driver_d clps711x_driver = {
+static struct driver clps711x_driver = {
 	.name		= "clps711x-uart",
 	.probe		= clps711x_probe,
 	.of_compatible	= DRV_OF_COMPAT(clps711x_uart_dt_ids),
diff --git a/drivers/serial/serial_digic.c b/drivers/serial/serial_digic.c
index 1188cd2052..31880ca996 100644
--- a/drivers/serial/serial_digic.c
+++ b/drivers/serial/serial_digic.c
@@ -118,7 +118,7 @@ static __maybe_unused struct of_device_id digic_serial_dt_ids[] = {
 	}
 };
 
-static struct driver_d digic_serial_driver = {
+static struct driver digic_serial_driver = {
 	.name  = "digic-uart",
 	.probe = digic_serial_probe,
 	.of_compatible = DRV_OF_COMPAT(digic_serial_dt_ids),
diff --git a/drivers/serial/serial_imx.c b/drivers/serial/serial_imx.c
index d29c3f8a5b..e156654fc1 100644
--- a/drivers/serial/serial_imx.c
+++ b/drivers/serial/serial_imx.c
@@ -312,7 +312,7 @@ static struct platform_device_id imx_serial_ids[] = {
 	},
 };
 
-static struct driver_d imx_serial_driver = {
+static struct driver imx_serial_driver = {
 	.name   = "imx_serial",
 	.probe  = imx_serial_probe,
 	.of_compatible = DRV_OF_COMPAT(imx_serial_dt_ids),
diff --git a/drivers/serial/serial_litex.c b/drivers/serial/serial_litex.c
index 6802743ac5..a48f118d84 100644
--- a/drivers/serial/serial_litex.c
+++ b/drivers/serial/serial_litex.c
@@ -91,7 +91,7 @@ static __maybe_unused struct of_device_id litex_serial_dt_ids[] = {
 	}
 };
 
-static struct driver_d litex_serial_driver = {
+static struct driver litex_serial_driver = {
 	.name  = "litex-uart",
 	.probe = litex_serial_probe,
 	.of_compatible = DRV_OF_COMPAT(litex_serial_dt_ids),
diff --git a/drivers/serial/serial_lpuart.c b/drivers/serial/serial_lpuart.c
index 0f37aab68f..863bc7e9a0 100644
--- a/drivers/serial/serial_lpuart.c
+++ b/drivers/serial/serial_lpuart.c
@@ -187,7 +187,7 @@ static struct of_device_id lpuart_serial_dt_ids[] = {
 	{}
 };
 
-static struct driver_d lpuart_serial_driver = {
+static struct driver lpuart_serial_driver = {
 	.name   = "lpuart-serial",
 	.probe  = lpuart_serial_probe,
 	.of_compatible = DRV_OF_COMPAT(lpuart_serial_dt_ids),
diff --git a/drivers/serial/serial_mpc5xxx.c b/drivers/serial/serial_mpc5xxx.c
index a77780d7c9..4408de9e91 100644
--- a/drivers/serial/serial_mpc5xxx.c
+++ b/drivers/serial/serial_mpc5xxx.c
@@ -153,7 +153,7 @@ static int mpc5xxx_serial_probe(struct device *dev)
 	return 0;
 }
 
-static struct driver_d mpc5xxx_serial_driver = {
+static struct driver mpc5xxx_serial_driver = {
         .name  = "mpc5xxx_serial",
         .probe = mpc5xxx_serial_probe,
 };
diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index ee8b1d0d3c..16f3576645 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -593,7 +593,7 @@ static __maybe_unused struct platform_device_id ns16550_serial_ids[] = {
 /**
  * @brief Driver registration structure
  */
-static struct driver_d ns16550_serial_driver = {
+static struct driver ns16550_serial_driver = {
 	.name = "ns16550_serial",
 	.probe = ns16550_probe,
 	.of_compatible = DRV_OF_COMPAT(ns16550_serial_dt_ids),
diff --git a/drivers/serial/serial_omap4_usbboot.c b/drivers/serial/serial_omap4_usbboot.c
index 75634b7b8c..ea018444d5 100644
--- a/drivers/serial/serial_omap4_usbboot.c
+++ b/drivers/serial/serial_omap4_usbboot.c
@@ -60,7 +60,7 @@ static int serial_omap4_usbboot_probe(struct device *dev)
 	return console_register(&priv->cdev);
 }
 
-static struct driver_d serial_omap4_usbboot_driver = {
+static struct driver serial_omap4_usbboot_driver = {
 	.name = "serial_omap4_usbboot",
 	.probe = serial_omap4_usbboot_probe,
 };
diff --git a/drivers/serial/serial_pl010.c b/drivers/serial/serial_pl010.c
index 717bf7a9f9..56b9e67610 100644
--- a/drivers/serial/serial_pl010.c
+++ b/drivers/serial/serial_pl010.c
@@ -138,7 +138,7 @@ static int pl010_probe(struct device *dev)
 	return 0;
 }
 
-static struct driver_d pl010_driver = {
+static struct driver pl010_driver = {
 	.name  = "pl010_serial",
 	.probe = pl010_probe,
 };
diff --git a/drivers/serial/serial_pxa.c b/drivers/serial/serial_pxa.c
index 8dae25966f..9a591a0be8 100644
--- a/drivers/serial/serial_pxa.c
+++ b/drivers/serial/serial_pxa.c
@@ -175,7 +175,7 @@ static int pxa_serial_probe(struct device *dev)
 	return 0;
 }
 
-static struct driver_d pxa_serial_driver = {
+static struct driver pxa_serial_driver = {
 	.name = "pxa_serial",
 	.probe = pxa_serial_probe,
 };
diff --git a/drivers/serial/serial_s3c.c b/drivers/serial/serial_s3c.c
index 696dbf9b7d..5f6f2082eb 100644
--- a/drivers/serial/serial_s3c.c
+++ b/drivers/serial/serial_s3c.c
@@ -191,7 +191,7 @@ static int s3c_serial_probe(struct device *dev)
 	return 0;
 }
 
-static struct driver_d s3c_serial_driver = {
+static struct driver s3c_serial_driver = {
 	.name   = "s3c_serial",
 	.probe  = s3c_serial_probe,
 };
diff --git a/drivers/serial/serial_sbi.c b/drivers/serial/serial_sbi.c
index ec2728345d..dd3eef41d1 100644
--- a/drivers/serial/serial_sbi.c
+++ b/drivers/serial/serial_sbi.c
@@ -51,7 +51,7 @@ static int sbi_serial_probe(struct device *dev)
 	return console_register(&priv->cdev);
 }
 
-static struct driver_d serial_sbi_driver = {
+static struct driver serial_sbi_driver = {
 	.name   = "riscv-serial-sbi",
 	.probe  = sbi_serial_probe,
 };
diff --git a/drivers/serial/serial_sifive.c b/drivers/serial/serial_sifive.c
index 93b118cb32..fffd0250f0 100644
--- a/drivers/serial/serial_sifive.c
+++ b/drivers/serial/serial_sifive.c
@@ -164,7 +164,7 @@ static __maybe_unused struct of_device_id sifive_serial_dt_ids[] = {
 	{ /* sentinel */ }
 };
 
-static struct driver_d serial_sifive_driver = {
+static struct driver serial_sifive_driver = {
 	.name   = "serial_sifive",
 	.probe  = sifive_serial_probe,
 	.of_compatible = sifive_serial_dt_ids,
diff --git a/drivers/serial/serial_stm32.c b/drivers/serial/serial_stm32.c
index 2e45f383d3..946393484c 100644
--- a/drivers/serial/serial_stm32.c
+++ b/drivers/serial/serial_stm32.c
@@ -241,7 +241,7 @@ static struct of_device_id stm32_serial_dt_ids[] = {
 	}
 };
 
-static struct driver_d stm32_serial_driver = {
+static struct driver stm32_serial_driver = {
 	.name   = "stm32-serial",
 	.probe  = stm32_serial_probe,
 	.of_compatible = DRV_OF_COMPAT(stm32_serial_dt_ids),
diff --git a/drivers/serial/stm-serial.c b/drivers/serial/stm-serial.c
index 0c4e68f0e7..bddb422ac5 100644
--- a/drivers/serial/stm-serial.c
+++ b/drivers/serial/stm-serial.c
@@ -182,7 +182,7 @@ static __maybe_unused struct of_device_id stm_serial_dt_ids[] = {
 	}
 };
 
-static struct driver_d stm_serial_driver = {
+static struct driver stm_serial_driver = {
         .name   = "stm_serial",
         .probe  = stm_serial_probe,
 	.of_compatible = DRV_OF_COMPAT(stm_serial_dt_ids),
diff --git a/drivers/soc/imx/gpcv2.c b/drivers/soc/imx/gpcv2.c
index a3a2719bc7..b662363f79 100644
--- a/drivers/soc/imx/gpcv2.c
+++ b/drivers/soc/imx/gpcv2.c
@@ -1199,7 +1199,7 @@ static const struct platform_device_id imx_pgc_domain_id[] = {
 	{ },
 };
 
-static struct driver_d imx_pgc_domain_driver = {
+static struct driver imx_pgc_domain_driver = {
 	.name = "imx-pgc",
 	.probe = imx_pgc_domain_probe,
 	.id_table = imx_pgc_domain_id,
@@ -1306,7 +1306,7 @@ static const struct of_device_id imx_gpcv2_dt_ids[] = {
 	{ }
 };
 
-static struct driver_d imx_gpcv2_driver = {
+static struct driver imx_gpcv2_driver = {
 	.name = "imx-gpcv2",
 	.probe = imx_gpcv2_probe,
 	.of_compatible = DRV_OF_COMPAT(imx_gpcv2_dt_ids),
diff --git a/drivers/soc/kvx/kvx_socinfo.c b/drivers/soc/kvx/kvx_socinfo.c
index a623a6c2e4..3cf8a978ab 100644
--- a/drivers/soc/kvx/kvx_socinfo.c
+++ b/drivers/soc/kvx/kvx_socinfo.c
@@ -133,7 +133,7 @@ static const struct of_device_id kvx_socinfo_dt_ids[] = {
 	{ }
 };
 
-static struct driver_d kvx_socinfo_driver = {
+static struct driver kvx_socinfo_driver = {
 	.name = "kvx-socinfo",
 	.probe = kvx_socinfo_probe,
 	.of_compatible = DRV_OF_COMPAT(kvx_socinfo_dt_ids),
diff --git a/drivers/soc/rockchip/io-domain.c b/drivers/soc/rockchip/io-domain.c
index 2d9f71b961..bb3bc9965d 100644
--- a/drivers/soc/rockchip/io-domain.c
+++ b/drivers/soc/rockchip/io-domain.c
@@ -215,7 +215,7 @@ out:
 	return ret;
 }
 
-static struct driver_d rockchip_iodomain_driver = {
+static struct driver rockchip_iodomain_driver = {
 	.name = "rockchip-iodomain",
 	.probe = rockchip_iodomain_probe,
 	.of_compatible = rockchip_iodomain_match,
diff --git a/drivers/soc/sifive/sifive_l2_cache.c b/drivers/soc/sifive/sifive_l2_cache.c
index 5a272ec7b3..03945e9bea 100644
--- a/drivers/soc/sifive/sifive_l2_cache.c
+++ b/drivers/soc/sifive/sifive_l2_cache.c
@@ -128,7 +128,7 @@ static const struct of_device_id sifive_l2_ids[] = {
 	{ /* end of table */ },
 };
 
-static struct driver_d sifive_l2_driver = {
+static struct driver sifive_l2_driver = {
 	.name = "sfive-l2cache",
 	.probe = sifive_l2_probe,
 	.of_compatible = sifive_l2_ids,
diff --git a/drivers/sound/gpio-beeper.c b/drivers/sound/gpio-beeper.c
index 5be525b30a..3783ea8f39 100644
--- a/drivers/sound/gpio-beeper.c
+++ b/drivers/sound/gpio-beeper.c
@@ -58,7 +58,7 @@ static const struct of_device_id gpio_beeper_match[] = {
 	{ },
 };
 
-static struct driver_d gpio_beeper_driver = {
+static struct driver gpio_beeper_driver = {
 	.name		= "gpio-beeper",
 	.probe		= gpio_beeper_probe,
 	.remove		= gpio_beeper_suspend,
diff --git a/drivers/sound/pwm-beeper.c b/drivers/sound/pwm-beeper.c
index 448c813964..a0119d1040 100644
--- a/drivers/sound/pwm-beeper.c
+++ b/drivers/sound/pwm-beeper.c
@@ -116,7 +116,7 @@ static const struct of_device_id pwm_beeper_match[] = {
 	{ },
 };
 
-static struct driver_d pwm_beeper_driver = {
+static struct driver pwm_beeper_driver = {
 	.name		= "pwm-beeper",
 	.probe		= pwm_beeper_probe,
 	.remove		= pwm_beeper_suspend,
diff --git a/drivers/sound/sdl.c b/drivers/sound/sdl.c
index b71151de96..a2faf20b67 100644
--- a/drivers/sound/sdl.c
+++ b/drivers/sound/sdl.c
@@ -79,7 +79,7 @@ static __maybe_unused struct of_device_id sandbox_sound_dt_ids[] = {
 	{ /* sentinel */ }
 };
 
-static struct driver_d sandbox_sound_drv = {
+static struct driver sandbox_sound_drv = {
 	.name  = "sandbox-sound",
 	.of_compatible = sandbox_sound_dt_ids,
 	.probe = sandbox_sound_probe,
diff --git a/drivers/spi/altera_spi.c b/drivers/spi/altera_spi.c
index e160c65d10..50d77723da 100644
--- a/drivers/spi/altera_spi.c
+++ b/drivers/spi/altera_spi.c
@@ -229,7 +229,7 @@ static int altera_spi_probe(struct device *dev)
 	return 0;
 }
 
-static struct driver_d altera_spi_driver = {
+static struct driver altera_spi_driver = {
 	.name  = "altera_spi",
 	.probe = altera_spi_probe,
 };
diff --git a/drivers/spi/ath79_spi.c b/drivers/spi/ath79_spi.c
index 802c9d5539..5aa6e5e739 100644
--- a/drivers/spi/ath79_spi.c
+++ b/drivers/spi/ath79_spi.c
@@ -285,7 +285,7 @@ static __maybe_unused struct of_device_id ath79_spi_dt_ids[] = {
 	}
 };
 
-static struct driver_d ath79_spi_driver = {
+static struct driver ath79_spi_driver = {
 	.name  = "ath79-spi",
 	.probe = ath79_spi_probe,
 	.remove = ath79_spi_remove,
diff --git a/drivers/spi/atmel-quadspi.c b/drivers/spi/atmel-quadspi.c
index 9b5c488a0c..189aab705d 100644
--- a/drivers/spi/atmel-quadspi.c
+++ b/drivers/spi/atmel-quadspi.c
@@ -528,7 +528,7 @@ static const struct of_device_id atmel_qspi_dt_ids[] = {
 	{ /* sentinel */ }
 };
 
-static struct driver_d atmel_qspi_driver = {
+static struct driver atmel_qspi_driver = {
 	.name	= "atmel_qspi",
 	.of_compatible	= atmel_qspi_dt_ids,
 	.probe		= atmel_qspi_probe,
diff --git a/drivers/spi/atmel_spi.c b/drivers/spi/atmel_spi.c
index 2dcf394427..399c47c81d 100644
--- a/drivers/spi/atmel_spi.c
+++ b/drivers/spi/atmel_spi.c
@@ -475,7 +475,7 @@ const static __maybe_unused struct of_device_id atmel_spi_dt_ids[] = {
 	{ /* sentinel */ }
 };
 
-static struct driver_d atmel_spi_driver = {
+static struct driver atmel_spi_driver = {
 	.name  = "atmel_spi",
 	.probe = atmel_spi_probe,
 	.of_compatible = DRV_OF_COMPAT(atmel_spi_dt_ids),
diff --git a/drivers/spi/dspi_spi.c b/drivers/spi/dspi_spi.c
index 52c1340016..5ad9bd0179 100644
--- a/drivers/spi/dspi_spi.c
+++ b/drivers/spi/dspi_spi.c
@@ -401,7 +401,7 @@ static const struct of_device_id dspi_dt_ids[] = {
 	{ /* sentinel */ }
 };
 
-static struct driver_d dspi_spi_driver = {
+static struct driver dspi_spi_driver = {
 	.name  = "fsl-dspi",
 	.probe = dspi_probe,
 	.of_compatible = DRV_OF_COMPAT(dspi_dt_ids),
diff --git a/drivers/spi/gpio_spi.c b/drivers/spi/gpio_spi.c
index fab8d6c4ff..81476e4487 100644
--- a/drivers/spi/gpio_spi.c
+++ b/drivers/spi/gpio_spi.c
@@ -223,7 +223,7 @@ static struct of_device_id __maybe_unused gpio_spi_dt_ids[] = {
 	{ }
 };
 
-static struct driver_d gpio_spi_driver = {
+static struct driver gpio_spi_driver = {
 	.name = "gpio-spi",
 	.probe = gpio_spi_probe,
 	.of_compatible = DRV_OF_COMPAT(gpio_spi_dt_ids),
diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
index d7caa71752..eb30d757d5 100644
--- a/drivers/spi/imx_spi.c
+++ b/drivers/spi/imx_spi.c
@@ -696,7 +696,7 @@ static struct platform_device_id imx_spi_ids[] = {
 	}
 };
 
-static struct driver_d imx_spi_driver = {
+static struct driver imx_spi_driver = {
 	.name  = "imx_spi",
 	.probe = imx_spi_probe,
 	.of_compatible = DRV_OF_COMPAT(imx_spi_dt_ids),
diff --git a/drivers/spi/litex_spiflash.c b/drivers/spi/litex_spiflash.c
index 896b71ae84..0a63c5960f 100644
--- a/drivers/spi/litex_spiflash.c
+++ b/drivers/spi/litex_spiflash.c
@@ -232,7 +232,7 @@ static __maybe_unused struct of_device_id litex_spiflash_spi_dt_ids[] = {
 	}
 };
 
-static struct driver_d litex_spiflash_spi_driver = {
+static struct driver litex_spiflash_spi_driver = {
 	.name  = "litex-spiflash",
 	.probe = litex_spiflash_spi_probe,
 	.remove = litex_spiflash_spi_remove,
diff --git a/drivers/spi/mvebu_spi.c b/drivers/spi/mvebu_spi.c
index 50c0a12fc3..f41d154830 100644
--- a/drivers/spi/mvebu_spi.c
+++ b/drivers/spi/mvebu_spi.c
@@ -391,7 +391,7 @@ err_free:
 	return ret;
 }
 
-static struct driver_d mvebu_spi_driver = {
+static struct driver mvebu_spi_driver = {
 	.name  = "mvebu-spi",
 	.probe = mvebu_spi_probe,
 	.of_compatible = DRV_OF_COMPAT(mvebu_spi_dt_ids),
diff --git a/drivers/spi/mxs_spi.c b/drivers/spi/mxs_spi.c
index 3a7bf18001..c44f551408 100644
--- a/drivers/spi/mxs_spi.c
+++ b/drivers/spi/mxs_spi.c
@@ -275,7 +275,7 @@ static int mxs_spi_probe(struct device *dev)
 	return 0;
 }
 
-static struct driver_d mxs_spi_driver = {
+static struct driver mxs_spi_driver = {
 	.name  = "mxs_spi",
 	.probe = mxs_spi_probe,
 };
diff --git a/drivers/spi/omap3_spi.c b/drivers/spi/omap3_spi.c
index d770b07d36..2b6fcb14a9 100644
--- a/drivers/spi/omap3_spi.c
+++ b/drivers/spi/omap3_spi.c
@@ -435,7 +435,7 @@ static struct platform_device_id omap_spi_ids[] = {
 	},
 };
 
-static struct driver_d omap3_spi_driver = {
+static struct driver omap3_spi_driver = {
 	.name = "omap-spi",
 	.probe = omap3_spi_probe,
 	.of_compatible = DRV_OF_COMPAT(omap_spi_dt_ids),
diff --git a/drivers/spi/spi-fsl-dspi.c b/drivers/spi/spi-fsl-dspi.c
index 76b2b8102c..dd1598efbd 100644
--- a/drivers/spi/spi-fsl-dspi.c
+++ b/drivers/spi/spi-fsl-dspi.c
@@ -647,7 +647,7 @@ out_ctlr_put:
 	return ret;
 }
 
-static struct driver_d fsl_dspi_driver = {
+static struct driver fsl_dspi_driver = {
 	.name  = "fsl-dspi",
 	.probe = dspi_probe,
 	.of_compatible = DRV_OF_COMPAT(fsl_dspi_dt_ids),
diff --git a/drivers/spi/spi-fsl-qspi.c b/drivers/spi/spi-fsl-qspi.c
index 4c86ff07cc..bf961b06cd 100644
--- a/drivers/spi/spi-fsl-qspi.c
+++ b/drivers/spi/spi-fsl-qspi.c
@@ -861,7 +861,7 @@ static const struct of_device_id fsl_qspi_dt_ids[] = {
 	{ /* sentinel */ }
 };
 
-static struct driver_d fsl_qspi_driver = {
+static struct driver fsl_qspi_driver = {
 	.name		= "fsl-quadspi",
 	.probe          = fsl_qspi_probe,
 	.of_compatible	= DRV_OF_COMPAT(fsl_qspi_dt_ids),
diff --git a/drivers/spi/spi-nxp-fspi.c b/drivers/spi/spi-nxp-fspi.c
index 768f739972..b17f658e24 100644
--- a/drivers/spi/spi-nxp-fspi.c
+++ b/drivers/spi/spi-nxp-fspi.c
@@ -1054,7 +1054,7 @@ static const struct of_device_id nxp_fspi_dt_ids[] = {
 	{ /* sentinel */ }
 };
 
-static struct driver_d nxp_fspi_driver = {
+static struct driver nxp_fspi_driver = {
 	.name			= "nxp-fspi",
 	.probe			= nxp_fspi_probe,
 	.of_compatible	= DRV_OF_COMPAT(nxp_fspi_dt_ids),
diff --git a/drivers/spi/spi-sifive.c b/drivers/spi/spi-sifive.c
index 53709092b5..5275194604 100644
--- a/drivers/spi/spi-sifive.c
+++ b/drivers/spi/spi-sifive.c
@@ -513,7 +513,7 @@ static const struct of_device_id sifive_spi_ids[] = {
 	{ /* sentinel */ }
 };
 
-static struct driver_d sifive_spi_driver = {
+static struct driver sifive_spi_driver = {
 	.name  = "sifive_spi",
 	.probe = sifive_spi_probe,
 	.of_compatible = sifive_spi_ids,
diff --git a/drivers/spi/stm32_spi.c b/drivers/spi/stm32_spi.c
index 08cb71aa79..55e9942343 100644
--- a/drivers/spi/stm32_spi.c
+++ b/drivers/spi/stm32_spi.c
@@ -601,7 +601,7 @@ static const struct of_device_id stm32_spi_ids[] = {
 	{ /* sentinel */ }
 };
 
-static struct driver_d stm32_spi_driver = {
+static struct driver stm32_spi_driver = {
 	.name  = "stm32_spi",
 	.probe = stm32_spi_probe,
 	.remove = stm32_spi_remove,
diff --git a/drivers/spi/zynq_qspi.c b/drivers/spi/zynq_qspi.c
index 8d9ef21694..eda7145ab2 100644
--- a/drivers/spi/zynq_qspi.c
+++ b/drivers/spi/zynq_qspi.c
@@ -604,7 +604,7 @@ static const struct of_device_id zynq_qspi_of_match[] = {
 	{ /* end of table */ }
 };
 
-static struct driver_d zynq_qspi_driver = {
+static struct driver zynq_qspi_driver = {
 	.name  = "zynq-qspi",
 	.probe = zynq_qspi_probe,
 	.of_compatible = DRV_OF_COMPAT(zynq_qspi_of_match),
diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index 037bf1bd94..7c589ec06f 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -1102,7 +1102,7 @@ static const struct usb_device_id *usb_match_id(struct usb_device *usbdev,
 }
 EXPORT_SYMBOL(usb_match_id);
 
-static int usb_match(struct device *dev, struct driver_d *drv)
+static int usb_match(struct device *dev, struct driver *drv)
 {
 	struct usb_device *usbdev = container_of(dev, struct usb_device, dev);
 	struct usb_driver *usbdrv = container_of(dev->driver, struct usb_driver, driver);
diff --git a/drivers/usb/dwc2/dwc2.c b/drivers/usb/dwc2/dwc2.c
index 6c71efee8e..ef957534c9 100644
--- a/drivers/usb/dwc2/dwc2.c
+++ b/drivers/usb/dwc2/dwc2.c
@@ -202,7 +202,7 @@ static const struct of_device_id dwc2_platform_dt_ids[] = {
 	{ }
 };
 
-static struct driver_d dwc2_driver = {
+static struct driver dwc2_driver = {
 	.name	= "dwc2",
 	.probe	= dwc2_probe,
 	.remove = dwc2_remove,
diff --git a/drivers/usb/dwc3/core.c b/drivers/usb/dwc3/core.c
index 66947c97a9..bf71038133 100644
--- a/drivers/usb/dwc3/core.c
+++ b/drivers/usb/dwc3/core.c
@@ -1218,7 +1218,7 @@ static const struct of_device_id of_dwc3_match[] = {
 	{ },
 };
 
-static struct driver_d dwc3_driver = {
+static struct driver dwc3_driver = {
 	.probe = dwc3_probe,
 	.remove	= dwc3_remove,
 	.name = "dwc3",
diff --git a/drivers/usb/dwc3/dwc3-of-simple.c b/drivers/usb/dwc3/dwc3-of-simple.c
index f470e916eb..d94a18e833 100644
--- a/drivers/usb/dwc3/dwc3-of-simple.c
+++ b/drivers/usb/dwc3/dwc3-of-simple.c
@@ -76,7 +76,7 @@ static const struct of_device_id of_dwc3_simple_match[] = {
 	{.compatible = "allwinner,sun50i-h6-dwc3"},
 	{/* Sentinel */}};
 
-static struct driver_d dwc3_of_simple_driver = {
+static struct driver dwc3_of_simple_driver = {
 	.probe		= dwc3_of_simple_probe,
 	.remove		= dwc3_of_simple_remove,
 	.name		= "dwc3-of-simple",
diff --git a/drivers/usb/gadget/at91_udc.c b/drivers/usb/gadget/at91_udc.c
index 74ab40bb6c..9a1a376a7a 100644
--- a/drivers/usb/gadget/at91_udc.c
+++ b/drivers/usb/gadget/at91_udc.c
@@ -1522,7 +1522,7 @@ static const struct of_device_id at91_udc_dt_ids[] = {
 	{ /* sentinel */ }
 };
 
-static struct driver_d at91_udc_driver = {
+static struct driver at91_udc_driver = {
 	.name	= driver_name,
 	.probe	= at91udc_probe,
 	.of_compatible = DRV_OF_COMPAT(at91_udc_dt_ids),
diff --git a/drivers/usb/gadget/fsl_udc.c b/drivers/usb/gadget/fsl_udc.c
index 3d8e1ece70..2f2f4caebb 100644
--- a/drivers/usb/gadget/fsl_udc.c
+++ b/drivers/usb/gadget/fsl_udc.c
@@ -1959,7 +1959,7 @@ static void fsl_udc_remove(struct device *dev)
 	ci_udc_unregister(udc);
 }
 
-static struct driver_d fsl_udc_driver = {
+static struct driver fsl_udc_driver = {
         .name   = "fsl-udc",
         .probe  = fsl_udc_probe,
 	.remove = fsl_udc_remove,
diff --git a/drivers/usb/gadget/pxa27x_udc.c b/drivers/usb/gadget/pxa27x_udc.c
index 940a836cd4..bae0a40642 100644
--- a/drivers/usb/gadget/pxa27x_udc.c
+++ b/drivers/usb/gadget/pxa27x_udc.c
@@ -1472,7 +1472,7 @@ static int __init pxa_udc_probe(struct device *dev)
 
 #define pxa27x_clear_otgph()   do {} while (0)
 
-static struct driver_d udc_driver = {
+static struct driver udc_driver = {
 	.name		= "pxa27x-udc",
 	.probe		= pxa_udc_probe,
 };
diff --git a/drivers/usb/host/ehci-atmel.c b/drivers/usb/host/ehci-atmel.c
index 89a1be7bd3..17bc896a8b 100644
--- a/drivers/usb/host/ehci-atmel.c
+++ b/drivers/usb/host/ehci-atmel.c
@@ -114,7 +114,7 @@ static const struct of_device_id atmel_ehci_dt_ids[] = {
 	{ /* sentinel */ }
 };
 
-static struct driver_d atmel_ehci_driver = {
+static struct driver atmel_ehci_driver = {
 	.name = "atmel-ehci",
 	.probe = atmel_ehci_probe,
 	.remove = atmel_ehci_remove,
diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index 142404b7e4..53d06a46fa 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -1480,7 +1480,7 @@ static __maybe_unused struct of_device_id ehci_platform_dt_ids[] = {
 	}
 };
 
-static struct driver_d ehci_driver = {
+static struct driver ehci_driver = {
 	.name  = "ehci",
 	.probe = ehci_probe,
 	.remove = ehci_remove,
diff --git a/drivers/usb/host/ohci-at91.c b/drivers/usb/host/ohci-at91.c
index 1157c63912..0738c03890 100644
--- a/drivers/usb/host/ohci-at91.c
+++ b/drivers/usb/host/ohci-at91.c
@@ -195,7 +195,7 @@ static const struct of_device_id at91_ohci_dt_ids[] = {
 	{ /* sentinel */ }
 };
 
-static struct driver_d at91_ohci_driver = {
+static struct driver at91_ohci_driver = {
 	.name = "at91_ohci",
 	.probe = at91_ohci_probe,
 	.remove = at91_ohci_remove,
diff --git a/drivers/usb/host/ohci-hcd.c b/drivers/usb/host/ohci-hcd.c
index 2049675f5d..fcec5eee5e 100644
--- a/drivers/usb/host/ohci-hcd.c
+++ b/drivers/usb/host/ohci-hcd.c
@@ -1810,7 +1810,7 @@ static int ohci_probe(struct device *dev)
 	return 0;
 }
 
-static struct driver_d ohci_driver = {
+static struct driver ohci_driver = {
 	.name  = "ohci",
 	.probe = ohci_probe,
 };
diff --git a/drivers/usb/host/xhci.c b/drivers/usb/host/xhci.c
index a5d47346d7..55f51ca951 100644
--- a/drivers/usb/host/xhci.c
+++ b/drivers/usb/host/xhci.c
@@ -1422,7 +1422,7 @@ static void xhci_remove(struct device *dev)
 	xhci_deregister(ctrl);
 }
 
-static struct driver_d xhci_driver = {
+static struct driver xhci_driver = {
 	.name  = "xHCI",
 	.probe = xhci_probe,
 	.remove = xhci_remove,
diff --git a/drivers/usb/imx/chipidea-imx.c b/drivers/usb/imx/chipidea-imx.c
index e509775fc7..2493e6d202 100644
--- a/drivers/usb/imx/chipidea-imx.c
+++ b/drivers/usb/imx/chipidea-imx.c
@@ -364,7 +364,7 @@ static __maybe_unused struct of_device_id imx_chipidea_dt_ids[] = {
 	},
 };
 
-static struct driver_d imx_chipidea_driver = {
+static struct driver imx_chipidea_driver = {
 	.name   = "imx-usb",
 	.probe  = imx_chipidea_probe,
 	.of_compatible = DRV_OF_COMPAT(imx_chipidea_dt_ids),
diff --git a/drivers/usb/imx/imx-usb-misc.c b/drivers/usb/imx/imx-usb-misc.c
index 7ca782ed34..ec3ad81cdd 100644
--- a/drivers/usb/imx/imx-usb-misc.c
+++ b/drivers/usb/imx/imx-usb-misc.c
@@ -673,7 +673,7 @@ static int imx_usbmisc_probe(struct device *dev)
 	return 0;
 }
 
-static struct driver_d imx_usbmisc_driver = {
+static struct driver imx_usbmisc_driver = {
 	.name   = "imx-usbmisc",
 	.probe  = imx_usbmisc_probe,
 	.id_table = imx_usbmisc_ids,
diff --git a/drivers/usb/imx/imx-usb-phy.c b/drivers/usb/imx/imx-usb-phy.c
index 8e13aa7aa5..628e569820 100644
--- a/drivers/usb/imx/imx-usb-phy.c
+++ b/drivers/usb/imx/imx-usb-phy.c
@@ -230,7 +230,7 @@ static __maybe_unused struct of_device_id imx_usbphy_dt_ids[] = {
 	},
 };
 
-static struct driver_d imx_usbphy_driver = {
+static struct driver imx_usbphy_driver = {
 	.name   = "imx-usb-phy",
 	.probe  = imx_usbphy_probe,
 	.of_compatible = DRV_OF_COMPAT(imx_usbphy_dt_ids),
diff --git a/drivers/usb/misc/usb251xb.c b/drivers/usb/misc/usb251xb.c
index d6ff0f4c1e..fe831253e2 100644
--- a/drivers/usb/misc/usb251xb.c
+++ b/drivers/usb/misc/usb251xb.c
@@ -670,7 +670,7 @@ static const struct platform_device_id usb251xb_id[] = {
 	{ /* sentinel */ }
 };
 
-static struct driver_d usb251xb_i2c_driver = {
+static struct driver usb251xb_i2c_driver = {
 	.name = DRIVER_NAME,
 	.probe    = usb251xb_i2c_probe,
 	.id_table = usb251xb_id,
diff --git a/drivers/usb/musb/musb_am335x.c b/drivers/usb/musb/musb_am335x.c
index 0e0665c7b1..5bbdaf02a1 100644
--- a/drivers/usb/musb/musb_am335x.c
+++ b/drivers/usb/musb/musb_am335x.c
@@ -22,7 +22,7 @@ static __maybe_unused struct of_device_id am335x_child_dt_ids[] = {
 	},
 };
 
-static struct driver_d am335x_child_driver = {
+static struct driver am335x_child_driver = {
 	.name   = "am335x_child_probe",
 	.probe  = am335x_child_probe,
 	.of_compatible = DRV_OF_COMPAT(am335x_child_dt_ids),
diff --git a/drivers/usb/musb/musb_dsps.c b/drivers/usb/musb/musb_dsps.c
index 974601e4fb..910ab347aa 100644
--- a/drivers/usb/musb/musb_dsps.c
+++ b/drivers/usb/musb/musb_dsps.c
@@ -429,7 +429,7 @@ static __maybe_unused struct of_device_id musb_dsps_dt_ids[] = {
 	},
 };
 
-static struct driver_d dsps_usbss_driver = {
+static struct driver dsps_usbss_driver = {
 	.name   = "musb-dsps",
 	.probe  = dsps_probe,
 	.of_compatible = DRV_OF_COMPAT(musb_dsps_dt_ids),
diff --git a/drivers/usb/musb/phy-am335x-control.c b/drivers/usb/musb/phy-am335x-control.c
index 4156a6d071..c468c76f21 100644
--- a/drivers/usb/musb/phy-am335x-control.c
+++ b/drivers/usb/musb/phy-am335x-control.c
@@ -169,7 +169,7 @@ free_ctrl:
 	return 0;
 };
 
-static struct driver_d am335x_control_driver = {
+static struct driver am335x_control_driver = {
 	.name   = "am335x-control-usb",
 	.probe  = am335x_control_usb_probe,
 	.of_compatible = DRV_OF_COMPAT(omap_control_usb_dt_ids),
diff --git a/drivers/usb/musb/phy-am335x.c b/drivers/usb/musb/phy-am335x.c
index 3f34e202cc..b136682642 100644
--- a/drivers/usb/musb/phy-am335x.c
+++ b/drivers/usb/musb/phy-am335x.c
@@ -73,7 +73,7 @@ static __maybe_unused struct of_device_id am335x_phy_dt_ids[] = {
 	},
 };
 
-static struct driver_d am335x_phy_driver = {
+static struct driver am335x_phy_driver = {
 	.name   = "am335x-phy-driver",
 	.probe  = am335x_phy_probe,
 	.of_compatible = DRV_OF_COMPAT(am335x_phy_dt_ids),
diff --git a/drivers/video/atmel_hlcdfb.c b/drivers/video/atmel_hlcdfb.c
index 0ca3dce8d9..9817c33ae5 100644
--- a/drivers/video/atmel_hlcdfb.c
+++ b/drivers/video/atmel_hlcdfb.c
@@ -265,7 +265,7 @@ static int atmel_hlcdc_probe(struct device *dev)
 	return atmel_lcdc_register(dev, &atmel_hlcdfb_data);
 }
 
-static struct driver_d atmel_hlcdc_driver = {
+static struct driver atmel_hlcdc_driver = {
 	.name	= "atmel_hlcdfb",
 	.probe	= atmel_hlcdc_probe,
 };
diff --git a/drivers/video/atmel_lcdfb.c b/drivers/video/atmel_lcdfb.c
index f65b1797b3..8c056a8ffb 100644
--- a/drivers/video/atmel_lcdfb.c
+++ b/drivers/video/atmel_lcdfb.c
@@ -264,7 +264,7 @@ static __maybe_unused struct of_device_id atmel_lcdfb_compatible[] = {
 	{ /* sentinel */ }
 };
 
-static struct driver_d atmel_lcdc_driver = {
+static struct driver atmel_lcdc_driver = {
 	.name	= "atmel_lcdfb",
 	.probe	= atmel_lcdc_probe,
 	.of_compatible = DRV_OF_COMPAT(atmel_lcdfb_compatible),
diff --git a/drivers/video/backlight-pwm.c b/drivers/video/backlight-pwm.c
index 65a621015d..85c7ba0d5a 100644
--- a/drivers/video/backlight-pwm.c
+++ b/drivers/video/backlight-pwm.c
@@ -210,7 +210,7 @@ static struct of_device_id backlight_pwm_of_ids[] = {
 	}
 };
 
-static struct driver_d backlight_pwm_of_driver = {
+static struct driver backlight_pwm_of_driver = {
 	.name  = "pwm-backlight",
 	.probe = backlight_pwm_of_probe,
 	.of_compatible = DRV_OF_COMPAT(backlight_pwm_of_ids),
diff --git a/drivers/video/bcm2835.c b/drivers/video/bcm2835.c
index d0b15782a7..43593785f3 100644
--- a/drivers/video/bcm2835.c
+++ b/drivers/video/bcm2835.c
@@ -147,7 +147,7 @@ static int bcm2835fb_probe(struct device *dev)
 	return 0;
 }
 
-static struct driver_d bcm2835fb_driver = {
+static struct driver bcm2835fb_driver = {
 	.name	= "bcm2835_fb",
 	.probe	= bcm2835fb_probe,
 };
diff --git a/drivers/video/imx-ipu-fb.c b/drivers/video/imx-ipu-fb.c
index a525032873..cca11dcd84 100644
--- a/drivers/video/imx-ipu-fb.c
+++ b/drivers/video/imx-ipu-fb.c
@@ -1043,7 +1043,7 @@ static int imxfb_probe(struct device *dev)
 	return ret;
 }
 
-static struct driver_d imx3fb_driver = {
+static struct driver imx3fb_driver = {
 	.name = "imx-ipu-fb",
 	.probe = imxfb_probe,
 };
diff --git a/drivers/video/imx-ipu-v3/imx-hdmi.c b/drivers/video/imx-ipu-v3/imx-hdmi.c
index 21dfc929d8..84b5d92fa6 100644
--- a/drivers/video/imx-ipu-v3/imx-hdmi.c
+++ b/drivers/video/imx-ipu-v3/imx-hdmi.c
@@ -1347,7 +1347,7 @@ err_isfr:
 	return ret;
 }
 
-static struct driver_d dw_hdmi_driver = {
+static struct driver dw_hdmi_driver = {
 	.probe		= dw_hdmi_probe,
 	.of_compatible	= dw_hdmi_dt_ids,
 	.name		= "imx-hdmi",
diff --git a/drivers/video/imx-ipu-v3/imx-ldb.c b/drivers/video/imx-ipu-v3/imx-ldb.c
index 01aa7f3683..36e7f7a80a 100644
--- a/drivers/video/imx-ipu-v3/imx-ldb.c
+++ b/drivers/video/imx-ipu-v3/imx-ldb.c
@@ -404,7 +404,7 @@ static struct of_device_id imx_ldb_dt_ids[] = {
 	{ /* sentinel */ }
 };
 
-static struct driver_d imx_ldb_driver = {
+static struct driver imx_ldb_driver = {
 	.probe		= imx_ldb_probe,
 	.of_compatible	= imx_ldb_dt_ids,
 	.name		= "imx-ldb",
diff --git a/drivers/video/imx-ipu-v3/imx-pd.c b/drivers/video/imx-ipu-v3/imx-pd.c
index e5b6d9122b..9308c20366 100644
--- a/drivers/video/imx-ipu-v3/imx-pd.c
+++ b/drivers/video/imx-ipu-v3/imx-pd.c
@@ -109,7 +109,7 @@ static struct of_device_id imx_pd_dt_ids[] = {
 	{ /* sentinel */ }
 };
 
-static struct driver_d imx_pd_driver = {
+static struct driver imx_pd_driver = {
 	.probe			  = imx_pd_probe,
 	.of_compatible	= imx_pd_dt_ids,
 	.name				= "imx-parallel-display",
diff --git a/drivers/video/imx-ipu-v3/ipu-common.c b/drivers/video/imx-ipu-v3/ipu-common.c
index 095f1d3564..4da027c584 100644
--- a/drivers/video/imx-ipu-v3/ipu-common.c
+++ b/drivers/video/imx-ipu-v3/ipu-common.c
@@ -844,7 +844,7 @@ out_failed_reset:
 	return ret;
 }
 
-static struct driver_d imx_ipu_driver = {
+static struct driver imx_ipu_driver = {
 	.name = "imx-ipuv3",
 	.of_compatible = imx_ipu_dt_ids,
 	.probe = ipu_probe,
diff --git a/drivers/video/imx-ipu-v3/ipufb.c b/drivers/video/imx-ipu-v3/ipufb.c
index 27e1edb48c..b39f70cb20 100644
--- a/drivers/video/imx-ipu-v3/ipufb.c
+++ b/drivers/video/imx-ipu-v3/ipufb.c
@@ -346,7 +346,7 @@ static void ipufb_remove(struct device *dev)
 {
 }
 
-static struct driver_d ipufb_driver = {
+static struct driver ipufb_driver = {
 	.name		= "imx-ipuv3-crtc",
 	.probe		= ipufb_probe,
 	.remove		= ipufb_remove,
diff --git a/drivers/video/imx.c b/drivers/video/imx.c
index 43198ad5ce..5bf5345619 100644
--- a/drivers/video/imx.c
+++ b/drivers/video/imx.c
@@ -602,7 +602,7 @@ static int imxfb_probe(struct device *dev)
 	return 0;
 }
 
-static struct driver_d imxfb_driver = {
+static struct driver imxfb_driver = {
 	.name		= "imxfb",
 	.probe		= imxfb_probe,
 };
diff --git a/drivers/video/mtl017.c b/drivers/video/mtl017.c
index 8d0c5da7f8..ba214b47ae 100644
--- a/drivers/video/mtl017.c
+++ b/drivers/video/mtl017.c
@@ -256,7 +256,7 @@ static int mtl017_probe(struct device *dev)
 	return 0;
 }
 
-static struct driver_d mtl_driver = {
+static struct driver mtl_driver = {
 	.name  = "mtl017",
 	.probe = mtl017_probe,
 };
diff --git a/drivers/video/omap.c b/drivers/video/omap.c
index c959285a62..3b1ec89c38 100644
--- a/drivers/video/omap.c
+++ b/drivers/video/omap.c
@@ -499,7 +499,7 @@ out:
 	return rc;
 }
 
-static struct driver_d omapfb_driver = {
+static struct driver omapfb_driver = {
 	.name	= "omap_fb",
 	.probe	= omapfb_probe,
 };
diff --git a/drivers/video/panel-ilitek-ili9341.c b/drivers/video/panel-ilitek-ili9341.c
index b3cb6389be..7202773b51 100644
--- a/drivers/video/panel-ilitek-ili9341.c
+++ b/drivers/video/panel-ilitek-ili9341.c
@@ -529,7 +529,7 @@ static const struct of_device_id ili9341_of_match[] = {
 	{ }
 };
 
-static struct driver_d ili9341_driver = {
+static struct driver ili9341_driver = {
 	.name = "panel-ilitek-ili9341",
 	.of_compatible = ili9341_of_match,
 	.probe = ili9341_probe,
diff --git a/drivers/video/pxa.c b/drivers/video/pxa.c
index 784a3d2c85..99aa435bbe 100644
--- a/drivers/video/pxa.c
+++ b/drivers/video/pxa.c
@@ -534,7 +534,7 @@ static int pxafb_probe(struct device *dev)
 	return 0;
 }
 
-static struct driver_d pxafb_driver = {
+static struct driver pxafb_driver = {
 	.name	= "pxafb",
 	.probe	= pxafb_probe,
 };
diff --git a/drivers/video/rave-sp-backlight.c b/drivers/video/rave-sp-backlight.c
index 7a074b3a83..17053e0d21 100644
--- a/drivers/video/rave-sp-backlight.c
+++ b/drivers/video/rave-sp-backlight.c
@@ -53,7 +53,7 @@ static const struct of_device_id rave_sp_backlight_of_match[] = {
 	{}
 };
 
-static struct driver_d rave_sp_backlight_driver = {
+static struct driver rave_sp_backlight_driver = {
 	.name  = "rave-sp-backlight",
 	.probe = rave_sp_backlight_probe,
 	.of_compatible = DRV_OF_COMPAT(rave_sp_backlight_of_match),
diff --git a/drivers/video/s3c24xx.c b/drivers/video/s3c24xx.c
index 151b0f769a..8fd56bbc7b 100644
--- a/drivers/video/s3c24xx.c
+++ b/drivers/video/s3c24xx.c
@@ -394,7 +394,7 @@ static int s3cfb_probe(struct device *hw_dev)
 	return 0;
 }
 
-static struct driver_d s3cfb_driver = {
+static struct driver s3cfb_driver = {
 	.name	= "s3c_fb",
 	.probe	= s3cfb_probe,
 };
diff --git a/drivers/video/sdl.c b/drivers/video/sdl.c
index c4d09e59dd..06e13b7735 100644
--- a/drivers/video/sdl.c
+++ b/drivers/video/sdl.c
@@ -89,7 +89,7 @@ static void sdlfb_remove(struct device *dev)
 	kfree(fb);
 }
 
-static struct driver_d sdlfb_driver = {
+static struct driver sdlfb_driver = {
 	.name	= "sdlfb",
 	.probe	= sdlfb_probe,
 	.remove	= sdlfb_remove,
diff --git a/drivers/video/simple-panel.c b/drivers/video/simple-panel.c
index 27b42dcd25..2fa7bf940c 100644
--- a/drivers/video/simple-panel.c
+++ b/drivers/video/simple-panel.c
@@ -166,7 +166,7 @@ static struct of_device_id simple_panel_of_ids[] = {
 	{ }
 };
 
-static struct driver_d simple_panel_driver = {
+static struct driver simple_panel_driver = {
 	.name  = "simple-panel",
 	.probe = simple_panel_probe,
 	.of_compatible = DRV_OF_COMPAT(simple_panel_of_ids),
diff --git a/drivers/video/simplefb-client.c b/drivers/video/simplefb-client.c
index 6bb160a97f..d4ce84cfb7 100644
--- a/drivers/video/simplefb-client.c
+++ b/drivers/video/simplefb-client.c
@@ -139,7 +139,7 @@ static const struct of_device_id simplefb_of_match[] = {
 	{ },
 };
 
-static struct driver_d simplefb_driver = {
+static struct driver simplefb_driver = {
 	.name = "simple-framebuffer",
 	.of_compatible = simplefb_of_match,
 	.probe = simplefb_probe,
diff --git a/drivers/video/ssd1307fb.c b/drivers/video/ssd1307fb.c
index d2dd67c634..c2b5cd9b34 100644
--- a/drivers/video/ssd1307fb.c
+++ b/drivers/video/ssd1307fb.c
@@ -634,14 +634,14 @@ fb_alloc_error:
 	return ret;
 }
 
-static __maybe_unused struct driver_d ssd1307fb_i2c_driver = {
+static __maybe_unused struct driver ssd1307fb_i2c_driver = {
 	.name = "ssd1307fb-i2c",
 	.probe = ssd1307fb_probe,
 	.of_compatible = DRV_OF_COMPAT(ssd1307fb_of_match),
 };
 device_i2c_driver(ssd1307fb_i2c_driver);
 
-static __maybe_unused struct driver_d ssd1307fb_spi_driver = {
+static __maybe_unused struct driver ssd1307fb_spi_driver = {
 	.name = "ssd1307fb-spi",
 	.probe = ssd1307fb_probe,
 	.of_compatible = DRV_OF_COMPAT(ssd1307fb_of_match),
diff --git a/drivers/video/stm.c b/drivers/video/stm.c
index 3ece96c09d..1998e1996e 100644
--- a/drivers/video/stm.c
+++ b/drivers/video/stm.c
@@ -582,7 +582,7 @@ static __maybe_unused struct of_device_id stmfb_compatible[] = {
 	}
 };
 
-static struct driver_d stmfb_driver = {
+static struct driver stmfb_driver = {
 	.name	= "stmfb",
 	.probe	= stmfb_probe,
 	.of_compatible = DRV_OF_COMPAT(stmfb_compatible),
diff --git a/drivers/video/stm32_ltdc.c b/drivers/video/stm32_ltdc.c
index e5064503ba..855878593f 100644
--- a/drivers/video/stm32_ltdc.c
+++ b/drivers/video/stm32_ltdc.c
@@ -328,7 +328,7 @@ static __maybe_unused struct of_device_id ltdc_ids[] = {
 	{ /* sentinel */ }
 };
 
-static struct driver_d ltdc_driver = {
+static struct driver ltdc_driver = {
 	.name = "stm32-ltdc",
 	.probe = ltdc_probe,
 	.of_compatible = DRV_OF_COMPAT(ltdc_ids),
diff --git a/drivers/video/tc358767.c b/drivers/video/tc358767.c
index 8e473f607f..da106496fc 100644
--- a/drivers/video/tc358767.c
+++ b/drivers/video/tc358767.c
@@ -1419,7 +1419,7 @@ err:
 	return ret;
 }
 
-static struct driver_d tc_driver = {
+static struct driver tc_driver = {
 	.name		= "tc358767",
 	.probe		= tc_probe,
 };
diff --git a/drivers/virtio/virtio.c b/drivers/virtio/virtio.c
index b40281cc69..aeca04aa92 100644
--- a/drivers/virtio/virtio.c
+++ b/drivers/virtio/virtio.c
@@ -47,7 +47,7 @@ static inline int virtio_id_match(const struct virtio_device *dev,
 
 /* This looks through all the IDs a driver claims to support.  If any of them
  * match, we return 1 and the kernel will call virtio_dev_probe(). */
-static int virtio_dev_match(struct device *_dv, struct driver_d *_dr)
+static int virtio_dev_match(struct device *_dv, struct driver *_dr)
 {
 	unsigned int i;
 	struct virtio_device *dev = dev_to_virtio(_dv);
diff --git a/drivers/virtio/virtio_mmio.c b/drivers/virtio/virtio_mmio.c
index 9054d66eb1..3cfd63340f 100644
--- a/drivers/virtio/virtio_mmio.c
+++ b/drivers/virtio/virtio_mmio.c
@@ -444,7 +444,7 @@ static const struct of_device_id virtio_mmio_match[] = {
 	{},
 };
 
-static struct driver_d virtio_mmio_driver = {
+static struct driver virtio_mmio_driver = {
 	.probe		= virtio_mmio_probe,
 	.remove		= virtio_mmio_remove,
 	.name		= "virtio-mmio",
diff --git a/drivers/w1/masters/w1-gpio.c b/drivers/w1/masters/w1-gpio.c
index 64090edb5f..7f3c8a6854 100644
--- a/drivers/w1/masters/w1-gpio.c
+++ b/drivers/w1/masters/w1-gpio.c
@@ -151,7 +151,7 @@ static __maybe_unused const struct of_device_id w1_gpio_dt_ids[] = {
 	{}
 };
 
-static struct driver_d w1_gpio_driver = {
+static struct driver w1_gpio_driver = {
 	.name	= "w1-gpio",
 	.probe	= w1_gpio_probe,
 	.of_compatible = DRV_OF_COMPAT(w1_gpio_dt_ids),
diff --git a/drivers/w1/w1.c b/drivers/w1/w1.c
index 88258c5acb..ac5fd38982 100644
--- a/drivers/w1/w1.c
+++ b/drivers/w1/w1.c
@@ -362,7 +362,7 @@ int w1_reset_select_slave(struct w1_device *dev)
 #define to_w1_device(d)	container_of(d, struct w1_device, dev)
 #define to_w1_driver(d) container_of(d, struct w1_driver, drv)
 
-static int w1_bus_match(struct device *_dev, struct driver_d *_drv)
+static int w1_bus_match(struct device *_dev, struct driver *_drv)
 {
 	struct w1_device *dev = to_w1_device(_dev);
 	struct w1_driver *drv = to_w1_driver(_drv);
diff --git a/drivers/w1/w1.h b/drivers/w1/w1.h
index 3bf88909f3..f268e42545 100644
--- a/drivers/w1/w1.h
+++ b/drivers/w1/w1.h
@@ -28,7 +28,7 @@ struct w1_driver {
 
 	int	(*probe) (struct w1_device *dev);
 	void	(*remove) (struct w1_device *dev);
-	struct driver_d drv;
+	struct driver drv;
 };
 
 int w1_driver_register(struct w1_driver *drv);
diff --git a/drivers/watchdog/ar9344_wdt.c b/drivers/watchdog/ar9344_wdt.c
index 64bb591f55..f951ad8a5d 100644
--- a/drivers/watchdog/ar9344_wdt.c
+++ b/drivers/watchdog/ar9344_wdt.c
@@ -125,7 +125,7 @@ static __maybe_unused struct of_device_id ar9344_wdt_dt_ids[] = {
 	}
 };
 
-static struct driver_d ar9344_wdt_driver = {
+static struct driver ar9344_wdt_driver = {
 	.name   = "ar9344-wdt",
 	.probe  = ar9344_wdt_probe,
 	.of_compatible = DRV_OF_COMPAT(ar9344_wdt_dt_ids),
diff --git a/drivers/watchdog/at91sam9_wdt.c b/drivers/watchdog/at91sam9_wdt.c
index cd7703a4dd..1b33529124 100644
--- a/drivers/watchdog/at91sam9_wdt.c
+++ b/drivers/watchdog/at91sam9_wdt.c
@@ -96,7 +96,7 @@ static const __maybe_unused struct of_device_id at91sam9x_wdt_dt_ids[] = {
 	{ /* sentinel */ },
 };
 
-static struct driver_d at91sam9x_wdt_driver = {
+static struct driver at91sam9x_wdt_driver = {
 	.name		= "at91sam9x-wdt",
 	.of_compatible	= DRV_OF_COMPAT(at91sam9x_wdt_dt_ids),
 	.probe		= at91sam9x_wdt_probe,
diff --git a/drivers/watchdog/bcm2835_wdt.c b/drivers/watchdog/bcm2835_wdt.c
index 78b5292c8a..a542488cc1 100644
--- a/drivers/watchdog/bcm2835_wdt.c
+++ b/drivers/watchdog/bcm2835_wdt.c
@@ -102,7 +102,7 @@ static __maybe_unused struct of_device_id bcm2835_wd_dt_ids[] = {
 	},
 };
 
-static struct driver_d bcm2835_wd_driver = {
+static struct driver bcm2835_wd_driver = {
 	.name		= "bcm2835_wd",
 	.of_compatible	= DRV_OF_COMPAT(bcm2835_wd_dt_ids),
 	.probe		= bcm2835_wd_probe,
diff --git a/drivers/watchdog/davinci_wdt.c b/drivers/watchdog/davinci_wdt.c
index f5bc83d662..7494f1452e 100644
--- a/drivers/watchdog/davinci_wdt.c
+++ b/drivers/watchdog/davinci_wdt.c
@@ -161,7 +161,7 @@ static __maybe_unused struct of_device_id davinci_wdt_of_match[] = {
 	{},
 };
 
-static struct driver_d platform_wdt_driver = {
+static struct driver platform_wdt_driver = {
 	.name = "davinci-wdt",
 	.of_compatible = DRV_OF_COMPAT(davinci_wdt_of_match),
 	.probe = davinci_wdt_probe,
diff --git a/drivers/watchdog/dw_wdt.c b/drivers/watchdog/dw_wdt.c
index 3c26eef8e2..fc0aca13cb 100644
--- a/drivers/watchdog/dw_wdt.c
+++ b/drivers/watchdog/dw_wdt.c
@@ -197,7 +197,7 @@ static struct of_device_id dw_wdt_of_match[] = {
 	{ /* sentinel */ }
 };
 
-static struct driver_d dw_wdt_driver = {
+static struct driver dw_wdt_driver = {
 	.name		= "dw-wdt",
 	.probe		= dw_wdt_drv_probe,
 	.of_compatible	= DRV_OF_COMPAT(dw_wdt_of_match),
diff --git a/drivers/watchdog/efi_wdt.c b/drivers/watchdog/efi_wdt.c
index 2203d6dfbc..072240fcaf 100644
--- a/drivers/watchdog/efi_wdt.c
+++ b/drivers/watchdog/efi_wdt.c
@@ -58,7 +58,7 @@ on_error:
 	return ret;
 }
 
-static struct driver_d efi_wdt_driver = {
+static struct driver efi_wdt_driver = {
 	.name = "efi-wdt",
 	.probe = efi_wdt_probe,
 };
diff --git a/drivers/watchdog/f71808e_wdt.c b/drivers/watchdog/f71808e_wdt.c
index 543f535151..5bee066366 100644
--- a/drivers/watchdog/f71808e_wdt.c
+++ b/drivers/watchdog/f71808e_wdt.c
@@ -396,7 +396,7 @@ static int f71808e_probe(struct device *dev)
 	return f71808e_wdt_init(wd, dev);
 }
 
-static struct driver_d f71808e_wdt_driver = {
+static struct driver f71808e_wdt_driver = {
 	.probe	= f71808e_probe,
 	.name	= "f71808e_wdt",
 	.id_table = f71808e_wdt_ids,
diff --git a/drivers/watchdog/gpio_wdt.c b/drivers/watchdog/gpio_wdt.c
index 7e5203a261..cf36bf9b2c 100644
--- a/drivers/watchdog/gpio_wdt.c
+++ b/drivers/watchdog/gpio_wdt.c
@@ -130,7 +130,7 @@ static const struct of_device_id gpio_wdt_dt_ids[] = {
 	{ }
 };
 
-static struct driver_d gpio_wdt_driver = {
+static struct driver gpio_wdt_driver = {
 	.name		= "gpio-wdt",
 	.of_compatible	= gpio_wdt_dt_ids,
 	.probe	= gpio_wdt_probe,
diff --git a/drivers/watchdog/im28wd.c b/drivers/watchdog/im28wd.c
index c1b4b933d3..226ef4c396 100644
--- a/drivers/watchdog/im28wd.c
+++ b/drivers/watchdog/im28wd.c
@@ -228,7 +228,7 @@ static __maybe_unused struct of_device_id imx28_wdt_dt_ids[] = {
 	}
 };
 
-static struct driver_d imx28_wd_driver = {
+static struct driver imx28_wd_driver = {
 	.name   = "im28wd",
 	.probe  = imx28_wd_probe,
 	.remove = imx28_wd_remove,
diff --git a/drivers/watchdog/imxwd.c b/drivers/watchdog/imxwd.c
index a29999cbca..a8b231731d 100644
--- a/drivers/watchdog/imxwd.c
+++ b/drivers/watchdog/imxwd.c
@@ -365,7 +365,7 @@ static struct platform_device_id imx_wdt_ids[] = {
 	},
 };
 
-static struct driver_d imx_wd_driver = {
+static struct driver imx_wd_driver = {
 	.name   = "imx-watchdog",
 	.probe  = imx_wd_probe,
 	.of_compatible = DRV_OF_COMPAT(imx_wdt_dt_ids),
diff --git a/drivers/watchdog/jz4740.c b/drivers/watchdog/jz4740.c
index a8afbbf00a..91d78182d4 100644
--- a/drivers/watchdog/jz4740.c
+++ b/drivers/watchdog/jz4740.c
@@ -90,7 +90,7 @@ static __maybe_unused struct of_device_id jz4740_wdt_dt_ids[] = {
 	}
 };
 
-static struct driver_d jz4740_wdt_driver = {
+static struct driver jz4740_wdt_driver = {
 	.name   = "jz4740-wdt",
 	.probe  = jz4740_wdt_probe,
 	.of_compatible = DRV_OF_COMPAT(jz4740_wdt_dt_ids),
diff --git a/drivers/watchdog/kvx_wdt.c b/drivers/watchdog/kvx_wdt.c
index 56bc851675..68bf54d901 100644
--- a/drivers/watchdog/kvx_wdt.c
+++ b/drivers/watchdog/kvx_wdt.c
@@ -84,7 +84,7 @@ static struct of_device_id kvx_wdt_of_match[] = {
 	{ /* sentinel */ }
 };
 
-static struct driver_d kvx_wdt_driver = {
+static struct driver kvx_wdt_driver = {
 	.name		= "kvx-wdt",
 	.probe		= kvx_wdt_drv_probe,
 	.of_compatible	= DRV_OF_COMPAT(kvx_wdt_of_match),
diff --git a/drivers/watchdog/omap_wdt.c b/drivers/watchdog/omap_wdt.c
index 80006bfb3d..54fe17e14a 100644
--- a/drivers/watchdog/omap_wdt.c
+++ b/drivers/watchdog/omap_wdt.c
@@ -192,7 +192,7 @@ static const struct of_device_id omap_wdt_of_match[] = {
 	{},
 };
 
-static struct driver_d omap_wdt_driver = {
+static struct driver omap_wdt_driver = {
 	.probe		= omap_wdt_probe,
 	.name	= "omap_wdt",
 	.of_compatible = DRV_OF_COMPAT(omap_wdt_of_match),
diff --git a/drivers/watchdog/orion_wdt.c b/drivers/watchdog/orion_wdt.c
index ba69933009..4d580fc74d 100644
--- a/drivers/watchdog/orion_wdt.c
+++ b/drivers/watchdog/orion_wdt.c
@@ -105,7 +105,7 @@ static const struct of_device_id orion_wdt_of_match[] = {
 	}, { /* sentinel */ }
 };
 
-static struct driver_d orion_wdt_driver = {
+static struct driver orion_wdt_driver = {
 	.probe = orion_wdt_probe,
 	.name = "orion_wdt",
 	.of_compatible = DRV_OF_COMPAT(orion_wdt_of_match),
diff --git a/drivers/watchdog/rave-sp-wdt.c b/drivers/watchdog/rave-sp-wdt.c
index 0e41655024..1d083b86d7 100644
--- a/drivers/watchdog/rave-sp-wdt.c
+++ b/drivers/watchdog/rave-sp-wdt.c
@@ -415,7 +415,7 @@ static int rave_sp_wdt_probe(struct device *dev)
 	return 0;
 }
 
-static struct driver_d rave_sp_wdt_driver = {
+static struct driver rave_sp_wdt_driver = {
 	.name  = "rave-sp-wdt",
 	.probe = rave_sp_wdt_probe,
 	.of_compatible = DRV_OF_COMPAT(rave_sp_wdt_of_match),
diff --git a/drivers/watchdog/rn5t568_wdt.c b/drivers/watchdog/rn5t568_wdt.c
index e7db8f088d..d755020a11 100644
--- a/drivers/watchdog/rn5t568_wdt.c
+++ b/drivers/watchdog/rn5t568_wdt.c
@@ -138,7 +138,7 @@ static __maybe_unused const struct of_device_id rn5t568_wdt_of_match[] = {
 	{ /* sentinel */ }
 };
 
-static struct driver_d rn5t568_wdt_driver = {
+static struct driver rn5t568_wdt_driver = {
 	.name  = "rn5t568-wdt",
 	.probe = rn5t568_wdt_probe,
 	.of_compatible = DRV_OF_COMPAT(rn5t568_wdt_of_match),
diff --git a/drivers/watchdog/starfive_wdt.c b/drivers/watchdog/starfive_wdt.c
index 354e62ea47..383661ac26 100644
--- a/drivers/watchdog/starfive_wdt.c
+++ b/drivers/watchdog/starfive_wdt.c
@@ -98,7 +98,7 @@ static struct of_device_id starfive_wdt_of_match[] = {
 	{ /* sentinel */ }
 };
 
-static struct driver_d starfive_wdt_driver = {
+static struct driver starfive_wdt_driver = {
 	.name		= "starfive-wdt",
 	.probe		= starfive_wdt_drv_probe,
 	.of_compatible	= starfive_wdt_of_match,
diff --git a/drivers/watchdog/stm32_iwdg.c b/drivers/watchdog/stm32_iwdg.c
index 3f589d485a..22e1a75841 100644
--- a/drivers/watchdog/stm32_iwdg.c
+++ b/drivers/watchdog/stm32_iwdg.c
@@ -187,7 +187,7 @@ static int stm32_iwdg_probe(struct device *dev)
 	return 0;
 }
 
-static struct driver_d stm32_iwdg_driver = {
+static struct driver stm32_iwdg_driver = {
 	.name  = "stm32-iwdg",
 	.probe = stm32_iwdg_probe,
 	.of_compatible = DRV_OF_COMPAT(stm32_iwdg_of_match),
diff --git a/drivers/watchdog/stpmic1_wdt.c b/drivers/watchdog/stpmic1_wdt.c
index fea01c0a04..f4a4aac597 100644
--- a/drivers/watchdog/stpmic1_wdt.c
+++ b/drivers/watchdog/stpmic1_wdt.c
@@ -209,7 +209,7 @@ static __maybe_unused const struct of_device_id stpmic1_wdt_of_match[] = {
 	{ /* sentinel */ }
 };
 
-static struct driver_d stpmic1_wdt_driver = {
+static struct driver stpmic1_wdt_driver = {
 	.name  = "stpmic1-wdt",
 	.probe = stpmic1_wdt_probe,
 	.of_compatible = DRV_OF_COMPAT(stpmic1_wdt_of_match),
diff --git a/fs/fs.c b/fs/fs.c
index 4f6e7f8607..52751fe37b 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -726,7 +726,7 @@ int close(int fd)
 }
 EXPORT_SYMBOL(close);
 
-static int fs_match(struct device *dev, struct driver_d *drv)
+static int fs_match(struct device *dev, struct driver *drv)
 {
 	return strcmp(dev->name, drv->name) ? -1 : 0;
 }
@@ -734,7 +734,7 @@ static int fs_match(struct device *dev, struct driver_d *drv)
 static int fs_probe(struct device *dev)
 {
 	struct fs_device_d *fsdev = dev_to_fs_device(dev);
-	struct driver_d *drv = dev->driver;
+	struct driver *drv = dev->driver;
 	struct fs_driver_d *fsdrv = container_of(drv, struct fs_driver_d, drv);
 	int ret;
 
@@ -862,7 +862,7 @@ EXPORT_SYMBOL(register_fs_driver);
 const char *fs_detect(const char *filename, const char *fsoptions)
 {
 	enum filetype type;
-	struct driver_d *drv;
+	struct driver *drv;
 	struct fs_driver_d *fdrv;
 	bool loop = false;
 	unsigned long long offset = 0;
diff --git a/fs/pstore/ram.c b/fs/pstore/ram.c
index 6a57586543..ba4f864b70 100644
--- a/fs/pstore/ram.c
+++ b/fs/pstore/ram.c
@@ -676,7 +676,7 @@ static const struct of_device_id ramoops_dt_ids[] = {
 	{ },
 };
 
-static struct driver_d ramoops_driver = {
+static struct driver ramoops_driver = {
 	.name = "ramoops",
 	.probe = ramoops_probe,
 	.of_compatible = DRV_OF_COMPAT(ramoops_dt_ids),
diff --git a/include/acpi.h b/include/acpi.h
index 04f722da23..2761fe6050 100644
--- a/include/acpi.h
+++ b/include/acpi.h
@@ -118,13 +118,13 @@ struct __packed acpi_rsdt { /* system description table header */
 };
 
 struct acpi_driver {
-	struct driver_d driver;
+	struct driver driver;
 	acpi_sig_t signature;
 };
 
 extern struct bus_type acpi_bus;
 
-static inline struct acpi_driver *to_acpi_driver(struct driver_d *drv)
+static inline struct acpi_driver *to_acpi_driver(struct driver *drv)
 {
 	return container_of(drv, struct acpi_driver, driver);
 }
diff --git a/include/driver.h b/include/driver.h
index dbbb48cbf9..693d5cb3e5 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -55,7 +55,7 @@ struct device {
 	void *type_data;     /*! In case this device is a specific device, this pointer
 			      * points to the type specific device, i.e. eth_device
 			      */
-	struct driver_d *driver; /*! The driver for this device */
+	struct driver *driver; /*! The driver for this device */
 
 	struct list_head list;     /* The list of all devices */
 	struct list_head bus_list; /* our bus            */
@@ -96,7 +96,7 @@ struct device {
 };
 
 /** @brief Describes a driver present in the system */
-struct driver_d {
+struct driver {
 	/*! The name of this driver. Used to match to
 	 * the corresponding device. */
 	const char *name;
@@ -128,7 +128,7 @@ struct driver_d {
 
 /* Register devices and drivers.
  */
-int register_driver(struct driver_d *);
+int register_driver(struct driver *);
 int register_device(struct device *);
 
 /* manualy probe a device
@@ -363,7 +363,7 @@ extern struct list_head active_device_list;
  * uses this to get the driver from the name the user specifies with the
  * mount command
  */
-struct driver_d *get_driver_by_name(const char *name);
+struct driver *get_driver_by_name(const char *name);
 
 struct cdev;
 
@@ -389,7 +389,7 @@ static inline int dev_close_default(struct device *dev, struct filep *f)
 
 struct bus_type {
 	char *name;
-	int (*match)(struct device *dev, struct driver_d *drv);
+	int (*match)(struct device *dev, struct driver *drv);
 	int (*probe)(struct device *dev);
 	void (*remove)(struct device *dev);
 
@@ -401,7 +401,7 @@ struct bus_type {
 };
 
 int bus_register(struct bus_type *bus);
-int device_match(struct device *dev, struct driver_d *drv);
+int device_match(struct device *dev, struct driver *drv);
 
 extern struct list_head bus_list;
 
@@ -419,7 +419,7 @@ extern struct list_head bus_list;
 
 extern struct bus_type platform_bus;
 
-int platform_driver_register(struct driver_d *drv);
+int platform_driver_register(struct driver *drv);
 
 /* register_driver_macro() - Helper macro for drivers that don't do
  * anything special in module registration. This eliminates a lot of
@@ -608,7 +608,7 @@ int dev_get_drvdata(struct device *dev, const void **data);
  */
 const void *device_get_match_data(struct device *dev);
 
-int device_match_of_modalias(struct device *dev, struct driver_d *drv);
+int device_match_of_modalias(struct device *dev, struct driver *drv);
 
 struct device *device_find_child(struct device *parent, void *data,
 				 int (*match)(struct device *dev, void *data));
diff --git a/include/efi/efi-device.h b/include/efi/efi-device.h
index 937f4a0ff0..cb665edf65 100644
--- a/include/efi/efi-device.h
+++ b/include/efi/efi-device.h
@@ -13,7 +13,7 @@ struct efi_device {
 };
 
 struct efi_driver {
-	struct driver_d driver;
+	struct driver driver;
 	int (*probe)(struct efi_device *efidev);
 	void (*remove)(struct efi_device *efidev);
 	int (*dev_pause)(struct efi_device *efidev);
@@ -28,7 +28,7 @@ static inline struct efi_device *to_efi_device(struct device *dev)
 	return container_of(dev, struct efi_device, dev);
 }
 
-static inline struct efi_driver *to_efi_driver(struct driver_d *drv)
+static inline struct efi_driver *to_efi_driver(struct driver *drv)
 {
 	return container_of(drv, struct efi_driver, driver);
 }
diff --git a/include/fs.h b/include/fs.h
index f3f95334f7..3c63158602 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -79,7 +79,7 @@ struct fs_driver_d {
 	int (*closedir)(struct device *dev, DIR *dir);
 	int (*stat)(struct device *dev, const char *file, struct stat *stat);
 
-	struct driver_d drv;
+	struct driver drv;
 
 	enum filetype type;
 
diff --git a/include/i2c/i2c.h b/include/i2c/i2c.h
index 757e800daf..5cca73a2f8 100644
--- a/include/i2c/i2c.h
+++ b/include/i2c/i2c.h
@@ -330,7 +330,7 @@ extern int i2c_write_reg(struct i2c_client *client, u32 addr, const u8 *buf, u16
 
 extern struct bus_type i2c_bus;
 
-static inline int i2c_driver_register(struct driver_d *drv)
+static inline int i2c_driver_register(struct driver *drv)
 {
 	drv->bus = &i2c_bus;
 	return register_driver(drv);
diff --git a/include/linux/amba/bus.h b/include/linux/amba/bus.h
index a324c41d90..cc24b38e83 100644
--- a/include/linux/amba/bus.h
+++ b/include/linux/amba/bus.h
@@ -45,7 +45,7 @@ struct amba_device {
 };
 
 struct amba_driver {
-	struct driver_d		drv;
+	struct driver		drv;
 	int			(*probe)(struct amba_device *, const struct amba_id *);
 	int			(*remove)(struct amba_device *);
 	const struct amba_id	*id_table;
diff --git a/include/linux/pci.h b/include/linux/pci.h
index a97124a5a9..31488bf8ac 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -196,7 +196,7 @@ struct pci_driver {
 	const struct pci_device_id *id_table;	/* must be non-NULL for probe to be called */
 	int  (*probe)  (struct pci_dev *dev, const struct pci_device_id *id);	/* New device inserted */
 	void (*remove) (struct pci_dev *dev);	/* Device removed (NULL if not a hot-plug capable driver) */
-	struct driver_d	driver;
+	struct driver	driver;
 };
 
 #define	to_pci_driver(drv) container_of(drv, struct pci_driver, driver)
diff --git a/include/linux/phy.h b/include/linux/phy.h
index 39f2faa38d..5c3ad91d5e 100644
--- a/include/linux/phy.h
+++ b/include/linux/phy.h
@@ -257,7 +257,7 @@ struct phy_driver {
 	int (*read_page)(struct phy_device *phydev);
 	int (*write_page)(struct phy_device *phydev, int page);
 
-	struct driver_d	 drv;
+	struct driver	 drv;
 };
 #define to_phy_driver(d) ((d) ? container_of(d, struct phy_driver, drv) : NULL)
 
diff --git a/include/linux/scmi_protocol.h b/include/linux/scmi_protocol.h
index 82c2930ce8..7dfc3b0d02 100644
--- a/include/linux/scmi_protocol.h
+++ b/include/linux/scmi_protocol.h
@@ -602,7 +602,7 @@ struct scmi_driver {
 	void (*remove)(struct scmi_device *sdev);
 	const struct scmi_device_id *id_table;
 
-	struct driver_d driver;
+	struct driver driver;
 };
 
 #define to_scmi_driver(d) container_of(d, struct scmi_driver, driver)
diff --git a/include/linux/spi/spi-mem.h b/include/linux/spi/spi-mem.h
index f65104d2d1..b5dfb0ca84 100644
--- a/include/linux/spi/spi-mem.h
+++ b/include/linux/spi/spi-mem.h
@@ -280,7 +280,7 @@ struct spi_controller_mem_ops {
  * useless fields to the spi_device object.
  */
 struct spi_mem_driver {
-	struct driver_d spidrv;
+	struct driver spidrv;
 	int (*probe)(struct spi_mem *mem);
 	int (*remove)(struct spi_mem *mem);
 };
diff --git a/include/linux/virtio.h b/include/linux/virtio.h
index 6f7c670bfe..a4a54531ca 100644
--- a/include/linux/virtio.h
+++ b/include/linux/virtio.h
@@ -101,7 +101,7 @@ size_t virtio_max_dma_size(struct virtio_device *vdev);
  * @restore: optional function to call on resume.
  */
 struct virtio_driver {
-	struct driver_d driver;
+	struct driver driver;
 	const struct virtio_device_id *id_table;
 	const unsigned int *feature_table;
 	unsigned int feature_table_size;
@@ -114,7 +114,7 @@ struct virtio_driver {
 	void (*config_changed)(struct virtio_device *dev);
 };
 
-static inline struct virtio_driver *drv_to_virtio(struct driver_d *drv)
+static inline struct virtio_driver *drv_to_virtio(struct driver *drv)
 {
 	return container_of(drv, struct virtio_driver, driver);
 }
diff --git a/include/of.h b/include/of.h
index f3384b52a2..c69fa96054 100644
--- a/include/of.h
+++ b/include/of.h
@@ -62,12 +62,12 @@ void of_clean_reserve_map(void);
 void fdt_add_reserve_map(void *fdt);
 
 struct device;
-struct driver_d;
+struct driver;
 struct resource;
 
 int of_fix_tree(struct device_node *);
 
-int of_match(struct device *dev, struct driver_d *drv);
+int of_match(struct device *dev, struct driver *drv);
 
 int of_add_initrd(struct device_node *root, resource_size_t start,
 		resource_size_t end);
diff --git a/include/of_device.h b/include/of_device.h
index eec9c90368..5afcc5ff94 100644
--- a/include/of_device.h
+++ b/include/of_device.h
@@ -16,7 +16,7 @@ extern const struct of_device_id *of_match_device(
  * @dev: the device structure to match against
  */
 static inline int of_driver_match_device(struct device *dev,
-					 const struct driver_d *drv)
+					 const struct driver *drv)
 {
 	return of_match_device(drv->of_compatible, dev) != NULL;
 }
diff --git a/include/spi/spi.h b/include/spi/spi.h
index fb397e807a..7591d0ff3b 100644
--- a/include/spi/spi.h
+++ b/include/spi/spi.h
@@ -558,7 +558,7 @@ extern struct bus_type spi_bus;
 
 struct spi_controller *spi_get_controller(int bus);
 
-static inline int spi_driver_register(struct driver_d *drv)
+static inline int spi_driver_register(struct driver *drv)
 {
 	drv->bus = &spi_bus;
 	return register_driver(drv);
diff --git a/include/usb/gadget.h b/include/usb/gadget.h
index 296b2b7481..830e3dfe83 100644
--- a/include/usb/gadget.h
+++ b/include/usb/gadget.h
@@ -881,7 +881,7 @@ struct usb_gadget_driver {
 	void			(*resume)(struct usb_gadget *);
 
 	/* FIXME support safe rmmod */
-	struct driver_d		driver;
+	struct driver		driver;
 };
 
 
diff --git a/include/usb/usb.h b/include/usb/usb.h
index 47d3c0fb6a..9b36122436 100644
--- a/include/usb/usb.h
+++ b/include/usb/usb.h
@@ -137,7 +137,7 @@ struct usb_driver {
 
 	const struct usb_device_id *id_table;
 
-	struct driver_d driver;
+	struct driver driver;
 };
 
 extern struct bus_type usb_bus_type;
-- 
2.30.2



