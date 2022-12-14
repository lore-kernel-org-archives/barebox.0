Delivery-date: Wed, 14 Dec 2022 13:46:52 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p5R9u-003dLf-Vy
	for lore@lore.pengutronix.de; Wed, 14 Dec 2022 13:46:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p5R9S-0003X4-KS
	for lore@pengutronix.de; Wed, 14 Dec 2022 13:46:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=F/FbVp1sZjAA8oLG7UezC7+9aE0Ec0A702ZZMMbAjRU=; b=vhHFv7SAhyT6W2iud5537ygYrT
	qleanoifLjfmvsh2J2zvjIEQTQX9XBgWB072U2iA/4+zfaSu7mciiL0vA8DQwti41KyP9r8ZUgcZf
	MMpIZrKlvivtLiKwWUtZh7anM0+XJ/y7TbvbMWv/paLMKhCqBidQj90XSS4vyRXeppBEnvQTU7Tw2
	jSEIvtt6a+gtxDlsrMKuHJUsP2Usc7uPm6geX043sOC3bFB5oY6h3TTX6Y1eeI65ym8mZJOK6GmCl
	l7L5NEPBt8tL0oFReDc/8Wv5Of8oe8jbe+zF+JTCGylL49pQtMryLxQlg1REjkcivJOpe5f5cqlb9
	W9UQyS9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5R5G-00GPKa-Po; Wed, 14 Dec 2022 12:42:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5Qyi-00GMF0-Ol
	for barebox@lists.infradead.org; Wed, 14 Dec 2022 12:35:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1p5Qyh-0001sO-7T; Wed, 14 Dec 2022 13:35:15 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1p5Qyf-004TOB-Nn; Wed, 14 Dec 2022 13:35:14 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1p5Qyf-000nNE-2h; Wed, 14 Dec 2022 13:35:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 14 Dec 2022 13:35:09 +0100
Message-Id: <20221214123512.189688-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221214123512.189688-1-s.hauer@pengutronix.de>
References: <20221214123512.189688-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Wed, 14 Dec 2022 04:41:59 -0800
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
Subject: [PATCH 2/5] Rename struct device_d to device
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The '_d' suffix was originally introduced in case we want to import
Linux struct device as a separate struct into barebox. Over time it
became clear that this won't happen, instead barebox struct device_d
is basically the same as Linux struct device. Rename the struct name
accordingly to make porting Linux code easier.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/devel/porting.rst               |   2 +-
 arch/arm/boards/animeo_ip/init.c              |   4 +-
 arch/arm/boards/at91sam9m10ihd/hw_version.c   |   2 +-
 arch/arm/boards/at91sam9x5ek/hw_version.c     |   2 +-
 arch/arm/boards/embest-marsboard/board.c      |   2 +-
 .../boards/freescale-mx6-sabrelite/board.c    |   2 +-
 arch/arm/boards/grinn-liteboard/board.c       |   2 +-
 arch/arm/boards/innocomm-imx8mm-wb15/board.c  |   2 +-
 arch/arm/boards/kindle-mx50/board.c           |   2 +-
 arch/arm/boards/lxa-mc1/board.c               |   2 +-
 arch/arm/boards/mnt-reform/board.c            |   2 +-
 arch/arm/boards/nhk8815/setup.c               |   2 +-
 arch/arm/boards/nxp-imx8mm-evk/board.c        |   2 +-
 arch/arm/boards/nxp-imx8mn-evk/board.c        |   2 +-
 arch/arm/boards/nxp-imx8mp-evk/board.c        |   2 +-
 arch/arm/boards/phytec-phycore-imx27/pcm970.c |   2 +-
 .../boards/phytec-phycore-stm32mp1/board.c    |   2 +-
 arch/arm/boards/phytec-som-imx6/board.c       |   2 +-
 arch/arm/boards/pine64-quartz64/board.c       |   2 +-
 arch/arm/boards/protonic-imx6/board.c         |  20 +-
 arch/arm/boards/protonic-imx8m/board.c        |   2 +-
 arch/arm/boards/protonic-stm32mp1/board.c     |   2 +-
 arch/arm/boards/radxa-rock3/board.c           |   2 +-
 arch/arm/boards/raspberry-pi/rpi-common.c     |   4 +-
 .../boards/rockchip-rk3568-bpi-r2pro/board.c  |   2 +-
 arch/arm/boards/rockchip-rk3568-evb/board.c   |   2 +-
 arch/arm/boards/sama5d3_xplained/board.c      |   2 +-
 arch/arm/boards/sama5d3xek/hw_version.c       |   2 +-
 arch/arm/boards/seeed-odyssey/board.c         |   2 +-
 arch/arm/boards/skov-arm9cpu/board.c          |   2 +-
 arch/arm/boards/skov-imx6/board.c             |   8 +-
 arch/arm/boards/stm32mp15x-ev1/board.c        |   2 +-
 arch/arm/boards/stm32mp15xx-dkx/board.c       |   2 +-
 arch/arm/boards/tqma6ulx/board.c              |   2 +-
 arch/arm/boards/tqma8mpxl/board.c             |   2 +-
 arch/arm/boards/usb-a926x/init.c              |   2 +-
 arch/arm/boards/vexpress/init.c               |   2 +-
 arch/arm/boards/webasto-ccbv2/board.c         |   2 +-
 arch/arm/boards/zii-common/board.c            |   2 +-
 arch/arm/boards/zii-common/switch-cmd.c       |   2 +-
 arch/arm/boards/zii-imx8mq-dev/board.c        |   2 +-
 arch/arm/cpu/psci-client.c                    |   2 +-
 arch/arm/mach-at91/at91sam9260_devices.c      |   2 +-
 arch/arm/mach-at91/at91sam9261_devices.c      |   2 +-
 arch/arm/mach-at91/at91sam9_rst.c             |   4 +-
 arch/arm/mach-at91/ddramc.c                   |   2 +-
 arch/arm/mach-at91/generic.h                  |   8 +-
 arch/arm/mach-at91/include/mach/board.h       |   4 +-
 arch/arm/mach-at91/sam9_smc.c                 |   2 +-
 arch/arm/mach-at91/setup.c                    |   2 +-
 arch/arm/mach-clps711x/clock.c                |   2 +-
 arch/arm/mach-clps711x/common.c               |   2 +-
 arch/arm/mach-imx/devices.c                   |  36 +--
 arch/arm/mach-imx/esdctl.c                    |   2 +-
 arch/arm/mach-imx/iim.c                       |   8 +-
 arch/arm/mach-imx/include/mach/devices-imx1.h |   4 +-
 .../arm/mach-imx/include/mach/devices-imx21.h |  12 +-
 .../arm/mach-imx/include/mach/devices-imx25.h |  32 +-
 .../arm/mach-imx/include/mach/devices-imx27.h |  34 +--
 .../arm/mach-imx/include/mach/devices-imx31.h |  36 +--
 .../arm/mach-imx/include/mach/devices-imx35.h |  28 +-
 .../arm/mach-imx/include/mach/devices-imx50.h |  32 +-
 .../arm/mach-imx/include/mach/devices-imx51.h |  38 +--
 .../arm/mach-imx/include/mach/devices-imx53.h |  34 +--
 arch/arm/mach-imx/include/mach/devices-imx6.h |  36 +--
 arch/arm/mach-imx/include/mach/devices.h      |  34 +--
 arch/arm/mach-imx/src.c                       |   2 +-
 arch/arm/mach-mxs/include/mach/devices.h      |   8 +-
 arch/arm/mach-mxs/ocotp.c                     |   4 +-
 arch/arm/mach-omap/am33xx_generic.c           |   2 +-
 arch/arm/mach-omap/am33xx_scrm.c              |   2 +-
 arch/arm/mach-omap/include/mach/devices.h     |   4 +-
 .../mach-omap/include/mach/omap3-devices.h    |  30 +-
 .../mach-omap/include/mach/omap4-devices.h    |  26 +-
 arch/arm/mach-omap/omap_devices.c             |   6 +-
 arch/arm/mach-pxa/devices.c                   |  12 +-
 arch/arm/mach-pxa/include/mach/devices.h      |  10 +-
 arch/arm/mach-pxa/include/mach/mci_pxa2xx.h   |   4 +-
 arch/arm/mach-socfpga/cyclone5-generic.c      |   6 +-
 arch/arm/mach-stm32mp/ddrctrl.c               |   2 +-
 arch/arm/mach-tegra/tegra20-pmc.c             |   2 +-
 arch/arm/mach-tegra/tegra20-timer.c           |   2 +-
 arch/arm/mach-zynqmp/firmware-zynqmp.c        |   2 +-
 arch/kvx/lib/poweroff.c                       |   2 +-
 arch/mips/mach-ar231x/ar231x_reset.c          |   2 +-
 arch/mips/mach-ath79/art.c                    |   6 +-
 arch/mips/mach-xburst/include/mach/devices.h  |   2 +-
 arch/riscv/boards/beaglev/board.c             |   2 +-
 arch/riscv/boards/riscvemu/board.c            |   2 +-
 arch/riscv/cpu/core.c                         |   6 +-
 arch/sandbox/board/board.c                    |   8 +-
 arch/sandbox/board/console.c                  |   4 +-
 arch/sandbox/board/devices.c                  |   4 +-
 arch/sandbox/board/hostfile.c                 |   4 +-
 arch/sandbox/board/led.c                      |   4 +-
 arch/sandbox/board/power.c                    |   2 +-
 arch/sandbox/board/watchdog.c                 |   2 +-
 .../sandbox/mach-sandbox/include/mach/linux.h |   4 +-
 arch/x86/mach-efi/clocksource.c               |   2 +-
 commands/detect.c                             |   2 +-
 commands/devinfo.c                            |   6 +-
 commands/devunbind.c                          |   2 +-
 commands/drvinfo.c                            |   2 +-
 commands/gpio.c                               |   2 +-
 commands/miitool.c                            |   2 +-
 common/blspec.c                               |  10 +-
 common/boards/qemu-virt/board.c               |   2 +-
 common/complete.c                             |   6 +-
 common/console.c                              |   4 +-
 common/console_common.c                       |   6 +-
 common/efi/payload/init.c                     |   2 +-
 common/env.c                                  |   4 +-
 common/globalvar.c                            |  32 +-
 common/oftree.c                               |   2 +-
 common/partitions/efi.c                       |   3 +-
 common/reset_source.c                         |   8 +-
 common/serdev.c                               |   4 +-
 common/state/backend_bucket_circular.c        |   4 +-
 common/state/backend_bucket_direct.c          |   4 +-
 common/state/backend_format_dtb.c             |   4 +-
 common/state/backend_format_raw.c             |   4 +-
 common/state/state.h                          |  14 +-
 common/usbgadget.c                            |   2 +-
 drivers/aiodev/am335x_adc.c                   |   2 +-
 drivers/aiodev/core.c                         |   2 +-
 drivers/aiodev/imx7d_adc.c                    |  12 +-
 drivers/aiodev/imx_thermal.c                  |   2 +-
 drivers/aiodev/lm75.c                         |   4 +-
 drivers/aiodev/mc13xxx_adc.c                  |   2 +-
 drivers/aiodev/qoriq_thermal.c                |   4 +-
 drivers/aiodev/rockchip_saradc.c              |   2 +-
 drivers/aiodev/st_gyro.c                      |   2 +-
 drivers/aiodev/stm32-adc-core.c               |   4 +-
 drivers/aiodev/stm32-adc.c                    |   8 +-
 drivers/amba/bus.c                            |   8 +-
 drivers/ata/ahci.c                            |   6 +-
 drivers/ata/ahci.h                            |   4 +-
 drivers/ata/disk_ata_drive.c                  |   6 +-
 drivers/ata/intf_platform_ide.c               |   2 +-
 drivers/ata/pata-imx.c                        |   4 +-
 drivers/ata/sata-imx.c                        |   2 +-
 drivers/ata/sata_mv.c                         |   2 +-
 drivers/base/bus.c                            |   4 +-
 drivers/base/driver.c                         |  79 ++---
 drivers/base/platform.c                       |   6 +-
 drivers/base/power.c                          |   4 +-
 drivers/base/regmap/internal.h                |   4 +-
 drivers/base/regmap/regmap-mmio.c             |   8 +-
 drivers/base/regmap/regmap.c                  |   8 +-
 drivers/base/resource.c                       |  28 +-
 drivers/block/efi-block-io.c                  |   8 +-
 drivers/bus/acpi.c                            |  16 +-
 drivers/bus/imx-weim.c                        |   4 +-
 drivers/bus/omap-gpmc.c                       |  10 +-
 drivers/bus/ti-sysc.c                         |   2 +-
 drivers/clk/bcm/clk-bcm2835-aux.c             |   2 +-
 drivers/clk/clk-ar933x.c                      |   2 +-
 drivers/clk/clk-ar9344.c                      |   2 +-
 drivers/clk/clk-bulk.c                        |   8 +-
 drivers/clk/clk-composite.c                   |  18 +-
 drivers/clk/clk-divider.c                     |  44 +--
 drivers/clk/clk-fixed-factor.c                |  16 +-
 drivers/clk/clk-fixed.c                       |   2 +-
 drivers/clk/clk-gate.c                        |   8 +-
 drivers/clk/clk-mux.c                         |  22 +-
 drivers/clk/clk-rpi.c                         |   6 +-
 drivers/clk/clk-scmi.c                        |   4 +-
 drivers/clk/clk-stm32f4.c                     |  23 +-
 drivers/clk/clk-stm32mp1.c                    |  48 +--
 drivers/clk/clk.c                             |   2 +-
 drivers/clk/clkdev.c                          |   6 +-
 drivers/clk/imx/clk-imx1.c                    |   2 +-
 drivers/clk/imx/clk-imx21.c                   |   2 +-
 drivers/clk/imx/clk-imx25.c                   |   2 +-
 drivers/clk/imx/clk-imx27.c                   |   2 +-
 drivers/clk/imx/clk-imx31.c                   |   2 +-
 drivers/clk/imx/clk-imx35.c                   |   2 +-
 drivers/clk/imx/clk-imx5.c                    |  15 +-
 drivers/clk/imx/clk-imx6.c                    |   2 +-
 drivers/clk/imx/clk-imx6sl.c                  |   2 +-
 drivers/clk/imx/clk-imx6sx.c                  |   2 +-
 drivers/clk/imx/clk-imx6ul.c                  |   2 +-
 drivers/clk/imx/clk-imx7.c                    |   2 +-
 drivers/clk/loongson/clk-ls1b200.c            |   2 +-
 drivers/clk/mvebu/common.c                    |   4 +-
 drivers/clk/mvebu/corediv.c                   |   2 +-
 drivers/clk/mxs/clk-imx23.c                   |   2 +-
 drivers/clk/mxs/clk-imx28.c                   |   4 +-
 drivers/clk/rockchip/clk-rk3399.c             |   2 +-
 drivers/clk/rockchip/clk-rk3568.c             |   2 +-
 drivers/clk/sifive/sifive-prci.c              |   4 +-
 drivers/clk/socfpga/clk.c                     |   5 +-
 drivers/clk/starfive/jh7100-clkgen.c          |   2 +-
 drivers/clk/tegra/clk-tegra124.c              |   2 +-
 drivers/clk/tegra/clk-tegra20.c               |   2 +-
 drivers/clk/tegra/clk-tegra30.c               |   2 +-
 drivers/clk/zynq/clkc.c                       |   2 +-
 drivers/clk/zynqmp/clkc.c                     |   4 +-
 drivers/clocksource/arm_architected_timer.c   |   2 +-
 drivers/clocksource/arm_global_timer.c        |   2 +-
 drivers/clocksource/arm_smp_twd.c             |   2 +-
 drivers/clocksource/armv7m_systick.c          |   2 +-
 drivers/clocksource/bcm2835.c                 |   2 +-
 drivers/clocksource/clps711x.c                |   2 +-
 drivers/clocksource/digic.c                   |   2 +-
 drivers/clocksource/dw_apb_timer.c            |   2 +-
 drivers/clocksource/efi.c                     |   2 +-
 drivers/clocksource/efi_x86.c                 |   2 +-
 drivers/clocksource/kvx_timer.c               |   2 +-
 drivers/clocksource/mvebu.c                   |   2 +-
 drivers/clocksource/nomadik.c                 |   2 +-
 drivers/clocksource/orion.c                   |   2 +-
 drivers/clocksource/rk_timer.c                |   2 +-
 drivers/clocksource/timer-atmel-pit.c         |   2 +-
 drivers/clocksource/timer-clint.c             |   2 +-
 drivers/clocksource/timer-imx-gpt.c           |   2 +-
 drivers/clocksource/timer-riscv.c             |   2 +-
 drivers/clocksource/timer-stm32.c             |   2 +-
 drivers/clocksource/timer-ti-32k.c            |   2 +-
 drivers/clocksource/timer-ti-dm.c             |   2 +-
 drivers/clocksource/uemd.c                    |   2 +-
 drivers/crypto/caam/caam-blobgen.c            |   8 +-
 drivers/crypto/caam/caamrng.c                 |  10 +-
 drivers/crypto/caam/ctrl.c                    |  14 +-
 drivers/crypto/caam/error.c                   |  16 +-
 drivers/crypto/caam/error.h                   |   2 +-
 drivers/crypto/caam/intern.h                  |  14 +-
 drivers/crypto/caam/jr.c                      |  12 +-
 drivers/crypto/caam/jr.h                      |   4 +-
 drivers/crypto/caam/rng_self_test.c           |   6 +-
 drivers/crypto/caam/rng_self_test.h           |   3 +-
 drivers/crypto/imx-scc/scc-blobgen.c          |   2 +-
 drivers/crypto/imx-scc/scc.c                  |   4 +-
 drivers/crypto/imx-scc/scc.h                  |   2 +-
 drivers/dma/apbh_dma.c                        |   2 +-
 drivers/dma/map.c                             |   9 +-
 drivers/eeprom/at24.c                         |   2 +-
 drivers/eeprom/at25.c                         |   4 +-
 drivers/efi/efi-device.c                      |  16 +-
 drivers/firmware/altera_serial.c              |  12 +-
 drivers/firmware/arm_scmi/base.c              |   4 +-
 drivers/firmware/arm_scmi/bus.c               |  14 +-
 drivers/firmware/arm_scmi/common.h            |  12 +-
 drivers/firmware/arm_scmi/driver.c            |  22 +-
 drivers/firmware/arm_scmi/smc.c               |   6 +-
 drivers/firmware/arm_scmi/voltage.c           |   4 +-
 drivers/firmware/socfpga.c                    |   2 +-
 drivers/firmware/zynqmp-fpga.c                |   8 +-
 drivers/fpga/fpga-bridge.c                    |   4 +-
 drivers/fpga/socfpga-fpga2sdram-bridge.c      |   4 +-
 drivers/fpga/socfpga-hps2fpga-bridge.c        |   4 +-
 drivers/gpio/gpio-74164.c                     |   2 +-
 drivers/gpio/gpio-74xx-mmio.c                 |   2 +-
 drivers/gpio/gpio-ath79.c                     |   2 +-
 drivers/gpio/gpio-clps711x.c                  |   2 +-
 drivers/gpio/gpio-davinci.c                   |   2 +-
 drivers/gpio/gpio-digic.c                     |   2 +-
 drivers/gpio/gpio-dw.c                        |   4 +-
 drivers/gpio/gpio-generic.c                   |  12 +-
 drivers/gpio/gpio-imx.c                       |   2 +-
 drivers/gpio/gpio-jz4740.c                    |   2 +-
 drivers/gpio/gpio-latch.c                     |   2 +-
 drivers/gpio/gpio-libftdi1.c                  |   4 +-
 drivers/gpio/gpio-malta-fpga-i2c.c            |   2 +-
 drivers/gpio/gpio-mpc8xxx.c                   |   2 +-
 drivers/gpio/gpio-mxs.c                       |   2 +-
 drivers/gpio/gpio-omap.c                      |   2 +-
 drivers/gpio/gpio-orion.c                     |   2 +-
 drivers/gpio/gpio-pca953x.c                   |   2 +-
 drivers/gpio/gpio-pcf857x.c                   |   2 +-
 drivers/gpio/gpio-raspberrypi-exp.c           |   2 +-
 drivers/gpio/gpio-sifive.c                    |   2 +-
 drivers/gpio/gpio-starfive-vic.c              |   2 +-
 drivers/gpio/gpio-stmpe.c                     |   2 +-
 drivers/gpio/gpio-sx150x.c                    |   2 +-
 drivers/gpio/gpio-tegra.c                     |   2 +-
 drivers/gpio/gpio-vf610.c                     |   2 +-
 drivers/gpio/gpio-zynq.c                      |   2 +-
 drivers/gpio/gpiolib.c                        |   9 +-
 drivers/hw_random/core.c                      |   4 +-
 drivers/hw_random/dev-random.c                |   2 +-
 drivers/hw_random/mxc-rngc.c                  |   4 +-
 drivers/hw_random/starfive-vic-rng.c          |   4 +-
 drivers/hw_random/stm32-rng.c                 |   4 +-
 drivers/i2c/algos/i2c-algo-bit.c              |   2 +-
 drivers/i2c/busses/i2c-at91.c                 |   4 +-
 drivers/i2c/busses/i2c-bcm283x.c              |   6 +-
 drivers/i2c/busses/i2c-cadence.c              |   2 +-
 drivers/i2c/busses/i2c-designware.c           |   2 +-
 drivers/i2c/busses/i2c-gpio.c                 |   2 +-
 drivers/i2c/busses/i2c-imx.c                  |   5 +-
 drivers/i2c/busses/i2c-mv64xxx.c              |   4 +-
 drivers/i2c/busses/i2c-omap.c                 |   2 +-
 drivers/i2c/busses/i2c-rockchip.c             |  16 +-
 drivers/i2c/busses/i2c-stm32.c                |  10 +-
 drivers/i2c/busses/i2c-tegra.c                |   4 +-
 drivers/i2c/busses/i2c-versatile.c            |   2 +-
 drivers/i2c/i2c-mux.c                         |   4 +-
 drivers/i2c/i2c.c                             |  18 +-
 drivers/i2c/muxes/i2c-mux-pca954x.c           |   2 +-
 drivers/input/gpio_keys.c                     |   8 +-
 drivers/input/imx_keypad.c                    |   4 +-
 drivers/input/matrix-keymap.c                 |   9 +-
 drivers/input/qt1070.c                        |   4 +-
 drivers/input/twl6030_pwrbtn.c                |   2 +-
 drivers/input/virtio_input.c                  |   2 +-
 drivers/led/led-gpio.c                        |   2 +-
 drivers/led/led-pca955x.c                     |   2 +-
 drivers/led/led-pwm.c                         |   2 +-
 drivers/mci/arasan-sdhci.c                    |   4 +-
 drivers/mci/atmel-mci-regs.h                  |   4 +-
 drivers/mci/atmel-sdhci.c                     |   4 +-
 drivers/mci/atmel-sdhci.h                     |   2 +-
 drivers/mci/atmel_mci.c                       |   4 +-
 drivers/mci/atmel_mci_common.c                |   2 +-
 drivers/mci/bcm2835-sdhost.c                  |   4 +-
 drivers/mci/dove-sdhci.c                      |   4 +-
 drivers/mci/dw_mmc.c                          |   6 +-
 drivers/mci/imx-esdhc.c                       |   4 +-
 drivers/mci/imx-esdhc.h                       |   2 +-
 drivers/mci/imx.c                             |   4 +-
 drivers/mci/mci-bcm2835.c                     |   6 +-
 drivers/mci/mci-core.c                        |  10 +-
 drivers/mci/mci_spi.c                         |   6 +-
 drivers/mci/mmci.c                            |   6 +-
 drivers/mci/mxs.c                             |   6 +-
 drivers/mci/omap_hsmmc.c                      |   6 +-
 drivers/mci/pxamci.c                          |   4 +-
 drivers/mci/rockchip-dwcmshc-sdhci.c          |   4 +-
 drivers/mci/s3c.c                             |   9 +-
 drivers/mci/sdhci.c                           |   6 +-
 drivers/mci/stm32_sdmmc2.c                    |   6 +-
 drivers/mci/tegra-sdmmc.c                     |   4 +-
 drivers/memory/mc-tegra124.c                  |   2 +-
 drivers/mfd/act8846.c                         |   2 +-
 drivers/mfd/atmel-flexcom.c                   |   2 +-
 drivers/mfd/axp20x-i2c.c                      |   2 +-
 drivers/mfd/axp20x.c                          |   2 +-
 drivers/mfd/core.c                            |   5 +-
 drivers/mfd/da9053.c                          |   6 +-
 drivers/mfd/da9063.c                          |   6 +-
 drivers/mfd/lp3972.c                          |   2 +-
 drivers/mfd/mc13xxx.c                         |   4 +-
 drivers/mfd/mc34704.c                         |   2 +-
 drivers/mfd/mc9sdz60.c                        |   2 +-
 drivers/mfd/rave-sp.c                         |  18 +-
 drivers/mfd/rk808.c                           |   2 +-
 drivers/mfd/rn5t568.c                         |   5 +-
 drivers/mfd/stm32-timers.c                    |   2 +-
 drivers/mfd/stmpe-i2c.c                       |   4 +-
 drivers/mfd/stpmic1.c                         |   2 +-
 drivers/mfd/superio.c                         |   4 +-
 drivers/mfd/syscon.c                          |   4 +-
 drivers/mfd/twl4030.c                         |   2 +-
 drivers/mfd/twl6030.c                         |   2 +-
 drivers/misc/jtag.c                           |   6 +-
 drivers/misc/mem.c                            |   4 +-
 drivers/misc/sram.c                           |   2 +-
 drivers/misc/starfive-pwrseq.c                |   2 +-
 drivers/misc/state.c                          |   2 +-
 drivers/misc/storage-by-uuid.c                |   6 +-
 drivers/misc/ubootvar.c                       |  12 +-
 drivers/mtd/core.c                            |   2 +-
 drivers/mtd/devices/docg3.c                   |   4 +-
 drivers/mtd/devices/docg3.h                   |   2 +-
 drivers/mtd/devices/m25p80.c                  |   2 +-
 drivers/mtd/devices/mtd_dataflash.c           |   2 +-
 drivers/mtd/devices/mtdram.c                  |   2 +-
 drivers/mtd/nand/atmel_nand.c                 |  10 +-
 drivers/mtd/nand/denali.h                     |   2 +-
 drivers/mtd/nand/nand_denali_dt.c             |   2 +-
 drivers/mtd/nand/nand_fsl_ifc.c               |   4 +-
 drivers/mtd/nand/nand_imx.c                   |   4 +-
 drivers/mtd/nand/nand_mrvl_nfc.c              |   6 +-
 drivers/mtd/nand/nand_mxs.c                   |   7 +-
 drivers/mtd/nand/nand_omap_gpmc.c             |   4 +-
 drivers/mtd/nand/nand_orion.c                 |   2 +-
 drivers/mtd/nand/nand_s3c24xx.c               |   4 +-
 drivers/mtd/nand/nomadik_nand.c               |   2 +-
 drivers/mtd/nand/omap_elm.c                   |   4 +-
 drivers/mtd/nor/cfi_flash.c                   |   4 +-
 drivers/mtd/nor/cfi_flash.h                   |   2 +-
 drivers/mtd/spi-nor/cadence-quadspi.c         |  10 +-
 drivers/mtd/spi-nor/spi-nor.c                 |   2 +-
 drivers/mtd/ubi/ubi.h                         |   4 +-
 drivers/net/ag71xx.c                          |  12 +-
 drivers/net/ar231x.c                          |   2 +-
 drivers/net/arc_emac.c                        |   2 +-
 drivers/net/at91_ether.c                      |   2 +-
 drivers/net/bcmgenet.c                        |   6 +-
 drivers/net/cpsw.c                            |  22 +-
 drivers/net/cs8900.c                          |   4 +-
 drivers/net/davinci_emac.c                    |  10 +-
 drivers/net/designware.c                      |   8 +-
 drivers/net/designware.h                      |   4 +-
 drivers/net/designware_eqos.c                 |  14 +-
 drivers/net/designware_eqos.h                 |   8 +-
 drivers/net/designware_generic.c              |   2 +-
 drivers/net/designware_rockchip.c             |  14 +-
 drivers/net/designware_socfpga.c              |   5 +-
 drivers/net/designware_starfive.c             |   2 +-
 drivers/net/designware_stm32.c                |   6 +-
 drivers/net/designware_tegra186.c             |   6 +-
 drivers/net/dm9k.c                            |  24 +-
 drivers/net/dsa.c                             |   2 +-
 drivers/net/e1000/e1000.h                     |   4 +-
 drivers/net/efi-snp.c                         |   2 +-
 drivers/net/enc28j60.c                        |   4 +-
 drivers/net/ep93xx.c                          |   2 +-
 drivers/net/ethoc.c                           |   2 +-
 drivers/net/fec_imx.c                         |   8 +-
 drivers/net/fec_imx.h                         |   2 +-
 drivers/net/fec_mpc5200.c                     |   4 +-
 drivers/net/fsl-fman.c                        |  20 +-
 drivers/net/gianfar.c                         |  12 +-
 drivers/net/gianfar.h                         |   2 +-
 drivers/net/ks8851_mll.c                      |  14 +-
 drivers/net/ksz8864rmn.c                      |   2 +-
 drivers/net/ksz8873.c                         |   8 +-
 drivers/net/ksz9477.c                         |  10 +-
 drivers/net/liteeth.c                         |   4 +-
 drivers/net/macb.c                            |  12 +-
 drivers/net/mvneta.c                          |   4 +-
 drivers/net/orion-gbe.c                       |  10 +-
 drivers/net/phy/ar8327.c                      |   4 +-
 drivers/net/phy/at803x.c                      |   2 +-
 drivers/net/phy/dp83867.c                     |   2 +-
 drivers/net/phy/mdio-gpio.c                   |   4 +-
 drivers/net/phy/mdio-mux-gpio.c               |   2 +-
 drivers/net/phy/mdio-mux.c                    |   2 +-
 drivers/net/phy/mdio-mvebu.c                  |   4 +-
 drivers/net/phy/mdio_bus.c                    |   8 +-
 drivers/net/phy/micrel.c                      |  14 +-
 drivers/net/phy/mv88e6xxx/chip.c              |   2 +-
 drivers/net/phy/mv88e6xxx/chip.h              |   2 +-
 drivers/net/phy/mv88e6xxx/port.c              |   2 +-
 drivers/net/phy/phy.c                         |   2 +-
 drivers/net/phy/realtek.c                     |   2 +-
 drivers/net/rtl8139.c                         |   2 +-
 drivers/net/rtl8169.c                         |   2 +-
 drivers/net/sja1105.c                         |  14 +-
 drivers/net/smc91111.c                        |   2 +-
 drivers/net/smc911x.c                         |   2 +-
 drivers/net/tap.c                             |   2 +-
 drivers/nvme/host/core.c                      |   2 +-
 drivers/nvme/host/nvme.h                      |   4 +-
 drivers/nvme/host/pci.c                       |   2 +-
 drivers/nvmem/bsec.c                          |   6 +-
 drivers/nvmem/core.c                          |  11 +-
 drivers/nvmem/eeprom_93xx46.c                 |   2 +-
 drivers/nvmem/kvx-otp-nv.c                    |   2 +-
 drivers/nvmem/ocotp.c                         |   4 +-
 drivers/nvmem/rave-sp-eeprom.c                |   2 +-
 drivers/nvmem/rmem.c                          |   4 +-
 drivers/nvmem/snvs_lpgpr.c                    |   4 +-
 drivers/nvmem/starfive-otp.c                  |   2 +-
 drivers/of/barebox.c                          |   4 +-
 drivers/of/base.c                             |   6 +-
 drivers/of/device.c                           |   6 +-
 drivers/of/of_gpio.c                          |   2 +-
 drivers/of/of_path.c                          |   6 +-
 drivers/of/platform.c                         |  40 +--
 drivers/pci/bus.c                             |   8 +-
 drivers/pci/pci-ecam-generic.c                |   4 +-
 drivers/pci/pci-efi.c                         |   6 +-
 drivers/pci/pci-imx6.c                        |  18 +-
 drivers/pci/pci-layerscape.c                  |   8 +-
 drivers/pci/pci-mvebu.c                       |   4 +-
 drivers/pci/pci-tegra.c                       |   6 +-
 drivers/pci/pci.c                             |   2 +-
 drivers/pci/pcie-designware-host.c            |   2 +-
 drivers/pci/pcie-designware.c                 |   2 +-
 drivers/pci/pcie-designware.h                 |   2 +-
 drivers/phy/freescale/phy-fsl-imx8mq-usb.c    |   4 +-
 drivers/phy/phy-core.c                        |  16 +-
 drivers/phy/phy-stm32-usbphyc.c               |  10 +-
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c |  10 +-
 .../rockchip/phy-rockchip-naneng-combphy.c    |   8 +-
 drivers/phy/usb-nop-xceiv.c                   |   4 +-
 drivers/pinctrl/imx-iomux-v1.c                |   4 +-
 drivers/pinctrl/imx-iomux-v2.c                |   2 +-
 drivers/pinctrl/imx-iomux-v3.c                |   4 +-
 drivers/pinctrl/mvebu/armada-370.c            |   2 +-
 drivers/pinctrl/mvebu/armada-xp.c             |   2 +-
 drivers/pinctrl/mvebu/common.c                |   2 +-
 drivers/pinctrl/mvebu/common.h                |   2 +-
 drivers/pinctrl/mvebu/dove.c                  |   2 +-
 drivers/pinctrl/mvebu/kirkwood.c              |   2 +-
 drivers/pinctrl/pinctrl-at91-pio4.c           |   4 +-
 drivers/pinctrl/pinctrl-at91.c                |   8 +-
 drivers/pinctrl/pinctrl-bcm2835.c             |   2 +-
 drivers/pinctrl/pinctrl-mxs.c                 |   2 +-
 drivers/pinctrl/pinctrl-rockchip.c            |   8 +-
 drivers/pinctrl/pinctrl-single.c              |   2 +-
 drivers/pinctrl/pinctrl-stm32.c               |  11 +-
 drivers/pinctrl/pinctrl-tegra-xusb.c          |   6 +-
 drivers/pinctrl/pinctrl-tegra20.c             |   2 +-
 drivers/pinctrl/pinctrl-tegra30.c             |   2 +-
 drivers/pinctrl/pinctrl-vf610.c               |   2 +-
 drivers/pinctrl/pinctrl.c                     |   4 +-
 drivers/power/reset/gpio-poweroff.c           |   2 +-
 drivers/power/reset/gpio-restart.c            |   2 +-
 drivers/power/reset/htif-poweroff.c           |   2 +-
 drivers/power/reset/nvmem-reboot-mode.c       |   2 +-
 drivers/power/reset/reboot-mode.c             |   2 +-
 drivers/power/reset/stm32-reboot.c            |   2 +-
 drivers/power/reset/syscon-poweroff.c         |   2 +-
 drivers/power/reset/syscon-reboot-mode.c      |   2 +-
 drivers/power/reset/syscon-reboot.c           |   2 +-
 drivers/pwm/core.c                            |   6 +-
 drivers/pwm/pwm-atmel.c                       |   4 +-
 drivers/pwm/pwm-imx.c                         |   2 +-
 drivers/pwm/pwm-mxs.c                         |   2 +-
 drivers/pwm/pwm-stm32.c                       |   2 +-
 drivers/pwm/pxa_pwm.c                         |   2 +-
 drivers/regulator/anatop-regulator.c          |   2 +-
 drivers/regulator/bcm2835.c                   |   2 +-
 drivers/regulator/core.c                      |  15 +-
 drivers/regulator/fixed.c                     |   2 +-
 drivers/regulator/of_regulator.c              |   2 +-
 drivers/regulator/pfuze.c                     |   4 +-
 drivers/regulator/rk808-regulator.c           |   6 +-
 drivers/regulator/scmi-regulator.c            |   2 +-
 drivers/regulator/stm32-pwr.c                 |   2 +-
 drivers/regulator/stm32-vrefbuf.c             |   6 +-
 drivers/regulator/stpmic1_regulator.c         |   4 +-
 drivers/remoteproc/imx_rproc.c                |   6 +-
 drivers/remoteproc/remoteproc_core.c          |   8 +-
 drivers/remoteproc/remoteproc_elf_loader.c    |   2 +-
 drivers/remoteproc/stm32_rproc.c              |   6 +-
 drivers/reset/core.c                          |  14 +-
 drivers/reset/reset-imx7.c                    |   2 +-
 drivers/reset/reset-scmi.c                    |   2 +-
 drivers/reset/reset-simple.c                  |   2 +-
 drivers/reset/reset-socfpga.c                 |   2 +-
 drivers/reset/reset-starfive-vic.c            |   2 +-
 drivers/rtc/class.c                           |   2 +-
 drivers/rtc/rtc-abracon.c                     |   2 +-
 drivers/rtc/rtc-ds1307.c                      |   6 +-
 drivers/rtc/rtc-imxdi.c                       |   4 +-
 drivers/rtc/rtc-jz4740.c                      |   2 +-
 drivers/rtc/rtc-pcf85363.c                    |   4 +-
 drivers/serial/arm_dcc.c                      |   4 +-
 drivers/serial/atmel.c                        |   4 +-
 drivers/serial/efi-stdio.c                    |   2 +-
 drivers/serial/linux_console.c                |   8 +-
 drivers/serial/serial_altera.c                |   2 +-
 drivers/serial/serial_altera_jtag.c           |   2 +-
 drivers/serial/serial_ar933x.c                |   2 +-
 drivers/serial/serial_auart.c                 |   2 +-
 drivers/serial/serial_cadence.c               |   2 +-
 drivers/serial/serial_clps711x.c              |   2 +-
 drivers/serial/serial_digic.c                 |   2 +-
 drivers/serial/serial_imx.c                   |   2 +-
 drivers/serial/serial_litex.c                 |   2 +-
 drivers/serial/serial_lpuart.c                |   2 +-
 drivers/serial/serial_mpc5xxx.c               |  12 +-
 drivers/serial/serial_ns16550.c               |   8 +-
 drivers/serial/serial_ns16550_pci.c           |   2 +-
 drivers/serial/serial_omap4_usbboot.c         |   2 +-
 drivers/serial/serial_pl010.c                 |   2 +-
 drivers/serial/serial_pxa.c                   |   2 +-
 drivers/serial/serial_s3c.c                   |   2 +-
 drivers/serial/serial_sbi.c                   |   2 +-
 drivers/serial/serial_sifive.c                |   2 +-
 drivers/serial/serial_stm32.c                 |   2 +-
 drivers/serial/stm-serial.c                   |   2 +-
 drivers/soc/imx/gpcv2.c                       |   8 +-
 drivers/soc/imx/imx8m-featctrl.c              |   2 +-
 drivers/soc/kvx/kvx_socinfo.c                 |   2 +-
 drivers/soc/rockchip/io-domain.c              |   4 +-
 drivers/soc/sifive/sifive_l2_cache.c          |   4 +-
 drivers/sound/gpio-beeper.c                   |   4 +-
 drivers/sound/pwm-beeper.c                    |   4 +-
 drivers/sound/sdl.c                           |   2 +-
 drivers/spi/altera_spi.c                      |   4 +-
 drivers/spi/ath79_spi.c                       |   6 +-
 drivers/spi/atmel-quadspi.c                   |   2 +-
 drivers/spi/atmel_spi.c                       |   2 +-
 drivers/spi/dspi_spi.c                        |   6 +-
 drivers/spi/gpio_spi.c                        |   4 +-
 drivers/spi/imx_spi.c                         |   2 +-
 drivers/spi/litex_spiflash.c                  |   6 +-
 drivers/spi/mvebu_spi.c                       |   2 +-
 drivers/spi/mxs_spi.c                         |   2 +-
 drivers/spi/omap3_spi.c                       |   5 +-
 drivers/spi/spi-fsl-dspi.c                    |   4 +-
 drivers/spi/spi-fsl-qspi.c                    |   6 +-
 drivers/spi/spi-nxp-fspi.c                    |  11 +-
 drivers/spi/spi-sifive.c                      |   6 +-
 drivers/spi/spi.c                             |   4 +-
 drivers/spi/stm32_spi.c                       |   8 +-
 drivers/spi/zynq_qspi.c                       |   4 +-
 drivers/usb/core/hub.c                        |   2 +-
 drivers/usb/core/usb.c                        |   8 +-
 drivers/usb/dwc2/core.h                       |   2 +-
 drivers/usb/dwc2/dwc2.c                       |   4 +-
 drivers/usb/dwc2/host.c                       |   4 +-
 drivers/usb/dwc3/core.c                       |  16 +-
 drivers/usb/dwc3/core.h                       |   4 +-
 drivers/usb/dwc3/dwc3-of-simple.c             |   6 +-
 drivers/usb/dwc3/gadget.c                     |   2 +-
 drivers/usb/dwc3/host.c                       |   2 +-
 drivers/usb/gadget/at91_udc.c                 |   2 +-
 drivers/usb/gadget/at91_udc.h                 |   2 +-
 drivers/usb/gadget/fsl_udc.c                  |   8 +-
 drivers/usb/gadget/pxa27x_udc.c               |   2 +-
 drivers/usb/gadget/pxa27x_udc.h               |   2 +-
 drivers/usb/gadget/storage_common.h           |   2 +-
 drivers/usb/gadget/udc-core.c                 |   9 +-
 drivers/usb/host/ehci-atmel.c                 |   6 +-
 drivers/usb/host/ehci-hcd.c                   |  10 +-
 drivers/usb/host/ohci-at91.c                  |   8 +-
 drivers/usb/host/ohci-hcd.c                   |   2 +-
 drivers/usb/host/xhci.c                       |   6 +-
 drivers/usb/host/xhci.h                       |   2 +-
 drivers/usb/imx/chipidea-imx.c                |   8 +-
 drivers/usb/imx/imx-usb-misc.c                |   6 +-
 drivers/usb/imx/imx-usb-phy.c                 |   4 +-
 drivers/usb/misc/usb251xb.c                   |  10 +-
 drivers/usb/musb/am35x-phy-control.h          |   2 +-
 drivers/usb/musb/musb_am335x.c                |   2 +-
 drivers/usb/musb/musb_core.h                  |   2 +-
 drivers/usb/musb/musb_dsps.c                  |  10 +-
 drivers/usb/musb/phy-am335x-control.c         |   6 +-
 drivers/usb/musb/phy-am335x.c                 |   2 +-
 drivers/usb/otg/otgdev.c                      |   8 +-
 drivers/usb/storage/transport.c               |   6 +-
 drivers/usb/storage/usb.c                     |  24 +-
 drivers/video/atmel_hlcdfb.c                  |   2 +-
 drivers/video/atmel_lcdfb.c                   |   2 +-
 drivers/video/atmel_lcdfb.h                   |   4 +-
 drivers/video/atmel_lcdfb_core.c              |  13 +-
 drivers/video/backlight-pwm.c                 |   6 +-
 drivers/video/bcm2835.c                       |   2 +-
 drivers/video/bochs/bochs_hw.c                |   3 +-
 drivers/video/bochs/bochs_hw.h                |   4 +-
 drivers/video/bochs/bochs_isa.c               |   2 +-
 drivers/video/efi_gop.c                       |   2 +-
 drivers/video/fb.c                            |   6 +-
 drivers/video/imx-ipu-fb.c                    |   4 +-
 drivers/video/imx-ipu-v3/imx-hdmi.c           |   4 +-
 drivers/video/imx-ipu-v3/imx-ldb.c            |   4 +-
 drivers/video/imx-ipu-v3/imx-pd.c             |   4 +-
 drivers/video/imx-ipu-v3/ipu-common.c         |  10 +-
 drivers/video/imx-ipu-v3/ipu-dc.c             |   4 +-
 drivers/video/imx-ipu-v3/ipu-di.c             |   2 +-
 drivers/video/imx-ipu-v3/ipu-dmfc.c           |   6 +-
 drivers/video/imx-ipu-v3/ipu-dp.c             |   4 +-
 drivers/video/imx-ipu-v3/ipu-prv.h            |  15 +-
 drivers/video/imx-ipu-v3/ipufb.c              |   6 +-
 drivers/video/imx-ipu-v3/ipuv3-plane.c        |   2 +-
 drivers/video/imx.c                           |   6 +-
 drivers/video/mipi_dbi.c                      |   2 +-
 drivers/video/mtl017.c                        |   4 +-
 drivers/video/omap.c                          |   4 +-
 drivers/video/panel-ilitek-ili9341.c          |  10 +-
 drivers/video/pxa.c                           |   4 +-
 drivers/video/rave-sp-backlight.c             |   2 +-
 drivers/video/s3c24xx.c                       |   6 +-
 drivers/video/sdl.c                           |   4 +-
 drivers/video/simple-panel.c                  |   4 +-
 drivers/video/simplefb-client.c               |   6 +-
 drivers/video/ssd1307fb.c                     |   2 +-
 drivers/video/stm.c                           |   4 +-
 drivers/video/stm32_ltdc.c                    |   4 +-
 drivers/video/tc358767.c                      |   6 +-
 drivers/virtio/virtio.c                       |   8 +-
 drivers/virtio/virtio_mmio.c                  |   4 +-
 drivers/virtio/virtio_pci_modern.c            |   2 +-
 drivers/virtio/virtio_ring.c                  |   2 +-
 drivers/w1/masters/w1-gpio.c                  |   4 +-
 drivers/w1/w1.c                               |   8 +-
 drivers/w1/w1.h                               |   6 +-
 drivers/watchdog/ar9344_wdt.c                 |   4 +-
 drivers/watchdog/at91sam9_wdt.c               |   2 +-
 drivers/watchdog/bcm2835_wdt.c                |   4 +-
 drivers/watchdog/davinci_wdt.c                |   2 +-
 drivers/watchdog/dw_wdt.c                     |   2 +-
 drivers/watchdog/efi_wdt.c                    |   4 +-
 drivers/watchdog/f71808e_wdt.c                |   4 +-
 drivers/watchdog/gpio_wdt.c                   |   2 +-
 drivers/watchdog/im28wd.c                     |   4 +-
 drivers/watchdog/imxwd.c                      |   4 +-
 drivers/watchdog/jz4740.c                     |   2 +-
 drivers/watchdog/kvx_wdt.c                    |   2 +-
 drivers/watchdog/omap_wdt.c                   |   2 +-
 drivers/watchdog/orion_wdt.c                  |   2 +-
 drivers/watchdog/rave-sp-wdt.c                |   2 +-
 drivers/watchdog/rn5t568_wdt.c                |   2 +-
 drivers/watchdog/starfive_wdt.c               |   2 +-
 drivers/watchdog/stm32_iwdg.c                 |   2 +-
 drivers/watchdog/stpmic1_wdt.c                |   2 +-
 drivers/watchdog/wd_core.c                    |   4 +-
 drivers/watchdog/wdat_wdt.c                   |   2 +-
 fs/bpkfs.c                                    |  22 +-
 fs/cramfs/cramfs.c                            |   6 +-
 fs/devfs-core.c                               |  10 +-
 fs/devfs.c                                    |  31 +-
 fs/efi.c                                      |  44 +--
 fs/efivarfs.c                                 |  30 +-
 fs/ext4/ext4fs.h                              |   2 +-
 fs/ext4/ext_barebox.c                         |   6 +-
 fs/fat/fat.c                                  |  33 +-
 fs/fs.c                                       |  10 +-
 fs/jffs2/fs.c                                 |  10 +-
 fs/nfs.c                                      |  18 +-
 fs/omap4_usbbootfs.c                          |  25 +-
 fs/pstore/fs.c                                |  20 +-
 fs/pstore/ram.c                               |   6 +-
 fs/ramfs.c                                    |  13 +-
 fs/ratpfs.c                                   |  44 +--
 fs/smhfs.c                                    |  26 +-
 fs/squashfs/squashfs.c                        |  12 +-
 fs/squashfs/squashfs_fs_sb.h                  |   2 +-
 fs/tftp.c                                     |  23 +-
 fs/ubifs/super.c                              |   3 +-
 fs/ubifs/ubifs.c                              |  10 +-
 fs/ubifs/ubifs.h                              |   5 +-
 fs/ubootvarfs.c                               |  12 +-
 fs/uimagefs.c                                 |  24 +-
 include/aiodev.h                              |   6 +-
 include/ata_drive.h                           |   6 +-
 include/blobgen.h                             |   4 +-
 include/block.h                               |   2 +-
 include/blspec.h                              |   2 +-
 include/console.h                             |  10 +-
 include/dirent.h                              |   2 +-
 include/dma.h                                 |   8 +-
 include/driver.h                              | 131 ++++----
 include/dsa.h                                 |   4 +-
 include/efi/efi-device.h                      |   4 +-
 include/fb.h                                  |   2 +-
 include/featctrl.h                            |   2 +-
 include/firmware.h                            |   2 +-
 include/fpga-bridge.h                         |   4 +-
 include/fpga-mgr.h                            |   2 +-
 include/fs.h                                  |  55 ++--
 include/globalvar.h                           |   7 +-
 include/gpio.h                                |   9 +-
 include/gpiod.h                               |   2 +-
 include/hwspinlock.h                          |   2 +-
 include/i2c/i2c-mux.h                         |   2 +-
 include/i2c/i2c.h                             |   7 +-
 include/input/matrix_keypad.h                 |   2 +-
 include/linux/amba/bus.h                      |   8 +-
 include/linux/basic_mmio_gpio.h               |   2 +-
 include/linux/clk.h                           | 161 +++++-----
 include/linux/clkdev.h                        |   4 +-
 include/linux/font.h                          |   8 +-
 include/linux/hw_random.h                     |   4 +-
 include/linux/mdio-mux.h                      |   2 +-
 include/linux/mfd/axp20x.h                    |   2 +-
 include/linux/mfd/core.h                      |   5 +-
 include/linux/mtd/mtd.h                       |   2 +-
 include/linux/mtd/spi-nor.h                   |   2 +-
 include/linux/nvmem-consumer.h                |  14 +-
 include/linux/nvmem-provider.h                |   2 +-
 include/linux/pci.h                           |   6 +-
 include/linux/phy.h                           |   8 +-
 include/linux/phy/phy.h                       |  39 ++-
 include/linux/printk.h                        |  14 +-
 include/linux/reboot-mode.h                   |   4 +-
 include/linux/regulator/of_regulator.h        |   6 +-
 include/linux/remoteproc.h                    |   4 +-
 include/linux/reset.h                         |  25 +-
 include/linux/rtc.h                           |   4 +-
 include/linux/scmi_protocol.h                 |  14 +-
 include/linux/virtio.h                        |   6 +-
 include/mci.h                                 |   6 +-
 include/mfd/mc13xxx.h                         |   5 +-
 include/net.h                                 |   6 +-
 include/of.h                                  |  45 +--
 include/of_device.h                           |  18 +-
 include/param.h                               | 286 ++++++++++--------
 include/pinctrl.h                             |  14 +-
 include/pm_domain.h                           |   8 +-
 include/printk.h                              |   4 +-
 include/pwm.h                                 |   4 +-
 include/regmap.h                              |  10 +-
 include/regulator.h                           |  13 +-
 include/reset_source.h                        |   8 +-
 include/serdev.h                              |   2 +-
 include/soc/imx8m/featctrl.h                  |   4 +-
 include/soc/stm32/reboot.h                    |   6 +-
 include/spi/spi.h                             |   6 +-
 include/superio.h                             |   4 +-
 include/usb/chipidea-imx.h                    |   8 +-
 include/usb/ehci.h                            |   4 +-
 include/usb/fsl_usb2.h                        |   2 +-
 include/usb/gadget.h                          |  12 +-
 include/usb/musb.h                            |   2 +-
 include/usb/phy.h                             |   2 +-
 include/usb/usb.h                             |   6 +-
 include/video/backlight.h                     |   2 +-
 include/video/mipi_dbi.h                      |   2 +-
 include/watchdog.h                            |   4 +-
 lib/blobgen.c                                 |   4 +-
 lib/fonts/fonts.c                             |   8 +-
 lib/hexdump.c                                 |   2 +-
 lib/parameter.c                               | 143 +++++----
 net/eth.c                                     |   2 +-
 802 files changed, 2766 insertions(+), 2596 deletions(-)

diff --git a/Documentation/devel/porting.rst b/Documentation/devel/porting.rst
index 7702fee7bb..8af0456ab2 100644
--- a/Documentation/devel/porting.rst
+++ b/Documentation/devel/porting.rst
@@ -247,7 +247,7 @@ If you need board-specific setup that's not covered by any upstream device
 tree binding, you can write a driver that matches against your board's
 ``/compatible``::
 
-  static int my_board_probe(struct device_d *dev)
+  static int my_board_probe(struct device *dev)
   {
   	/* Do some board-specific setup */
   	return 0;
diff --git a/arch/arm/boards/animeo_ip/init.c b/arch/arm/boards/animeo_ip/init.c
index 127bb31dbb..b854f254fb 100644
--- a/arch/arm/boards/animeo_ip/init.c
+++ b/arch/arm/boards/animeo_ip/init.c
@@ -55,7 +55,7 @@ static int animeo_ip_get_pio_revision(int gpio, char *name)
 
 static void animeo_ip_detect_version(void)
 {
-	struct device_d *dev = NULL;
+	struct device *dev = NULL;
 	char *model, *version;
 	int val;
 
@@ -311,7 +311,7 @@ static int animeo_ip_devices_init(void)
 
 device_initcall(animeo_ip_devices_init);
 
-static struct device_d *usart0, *usart1;
+static struct device *usart0, *usart1;
 
 static void animeo_ip_shutdown_uart(void __iomem *base)
 {
diff --git a/arch/arm/boards/at91sam9m10ihd/hw_version.c b/arch/arm/boards/at91sam9m10ihd/hw_version.c
index 1387c13718..0b8b7cc884 100644
--- a/arch/arm/boards/at91sam9m10ihd/hw_version.c
+++ b/arch/arm/boards/at91sam9m10ihd/hw_version.c
@@ -133,7 +133,7 @@ static void at91sam9m10ihd_devices_detect_one(const char *name)
 	struct one_wire_info info;
 	struct board_info* binfo;
 	struct vendor_info* vinfo;
-	struct device_d *dev = NULL;
+	struct device *dev = NULL;
 	char str[16];
 	u8 vendor_id = 0;
 
diff --git a/arch/arm/boards/at91sam9x5ek/hw_version.c b/arch/arm/boards/at91sam9x5ek/hw_version.c
index 4038f42ec2..1224f4753c 100644
--- a/arch/arm/boards/at91sam9x5ek/hw_version.c
+++ b/arch/arm/boards/at91sam9x5ek/hw_version.c
@@ -149,7 +149,7 @@ static void at91sam9x5ek_devices_detect_one(const char *name)
 	struct one_wire_info info;
 	struct board_info* binfo;
 	struct vendor_info* vinfo;
-	struct device_d *dev = NULL;
+	struct device *dev = NULL;
 	char str[16];
 	u8 vendor_id = 0;
 
diff --git a/arch/arm/boards/embest-marsboard/board.c b/arch/arm/boards/embest-marsboard/board.c
index a11b7b6579..545934648c 100644
--- a/arch/arm/boards/embest-marsboard/board.c
+++ b/arch/arm/boards/embest-marsboard/board.c
@@ -33,7 +33,7 @@ static int ar8035_phy_fixup(struct phy_device *dev)
 	return 0;
 }
 
-static int marsboard_device_init(struct device_d *dev)
+static int marsboard_device_init(struct device *dev)
 {
 	barebox_set_hostname("marsboard");
 
diff --git a/arch/arm/boards/freescale-mx6-sabrelite/board.c b/arch/arm/boards/freescale-mx6-sabrelite/board.c
index 300a85839b..6b4c9d9f5a 100644
--- a/arch/arm/boards/freescale-mx6-sabrelite/board.c
+++ b/arch/arm/boards/freescale-mx6-sabrelite/board.c
@@ -124,7 +124,7 @@ static void sabrelite_ehci_init(void)
 	gpio_set_value(IMX_GPIO_NR(7, 12), 1);
 }
 
-static int sabrelite_probe(struct device_d *dev)
+static int sabrelite_probe(struct device *dev)
 {
 	int ret;
 
diff --git a/arch/arm/boards/grinn-liteboard/board.c b/arch/arm/boards/grinn-liteboard/board.c
index 3e69ea520a..5b52c8de18 100644
--- a/arch/arm/boards/grinn-liteboard/board.c
+++ b/arch/arm/boards/grinn-liteboard/board.c
@@ -25,7 +25,7 @@ static void bbu_register_handler_emmc(bool is_boot_source)
 {
 	int emmc_boot_flag = 0, emmc_flag = 0;
 	const char *bootpart;
-	struct device_d *dev;
+	struct device *dev;
 	int ret;
 
 	if (!is_boot_source)
diff --git a/arch/arm/boards/innocomm-imx8mm-wb15/board.c b/arch/arm/boards/innocomm-imx8mm-wb15/board.c
index 8bc4dabb66..44941c5a31 100644
--- a/arch/arm/boards/innocomm-imx8mm-wb15/board.c
+++ b/arch/arm/boards/innocomm-imx8mm-wb15/board.c
@@ -7,7 +7,7 @@
 #include <init.h>
 #include <mach/bbu.h>
 
-static int innocomm_wb15_evk_probe(struct device_d *dev)
+static int innocomm_wb15_evk_probe(struct device *dev)
 {
 	int emmc_bbu_flag = 0;
 	int sd_bbu_flag = 0;
diff --git a/arch/arm/boards/kindle-mx50/board.c b/arch/arm/boards/kindle-mx50/board.c
index 76472d71bb..7366047582 100644
--- a/arch/arm/boards/kindle-mx50/board.c
+++ b/arch/arm/boards/kindle-mx50/board.c
@@ -140,7 +140,7 @@ mem_initcall(kindle_mx50_mem_init);
 
 static int kindle_mx50_devices_init(void)
 {
-	struct device_d *dev;
+	struct device *dev;
 
 	if (!is_mx50_kindle())
 		return 0;
diff --git a/arch/arm/boards/lxa-mc1/board.c b/arch/arm/boards/lxa-mc1/board.c
index f8a7a6bd1f..b50c1af0be 100644
--- a/arch/arm/boards/lxa-mc1/board.c
+++ b/arch/arm/boards/lxa-mc1/board.c
@@ -29,7 +29,7 @@ static int of_fixup_regulator_supply_disable(struct device_node *root, void *pat
 	return 0;
 }
 
-static int mc1_probe(struct device_d *dev)
+static int mc1_probe(struct device *dev)
 {
 	int flags;
 
diff --git a/arch/arm/boards/mnt-reform/board.c b/arch/arm/boards/mnt-reform/board.c
index 010690ecbd..f37798b995 100644
--- a/arch/arm/boards/mnt-reform/board.c
+++ b/arch/arm/boards/mnt-reform/board.c
@@ -9,7 +9,7 @@
 #include <init.h>
 #include <mach/bbu.h>
 
-static int mnt_reform_probe(struct device_d *dev)
+static int mnt_reform_probe(struct device *dev)
 {
 	int emmc_bbu_flag = 0;
 	int sd_bbu_flag = 0;
diff --git a/arch/arm/boards/nhk8815/setup.c b/arch/arm/boards/nhk8815/setup.c
index d0ac9a0250..90ec33f710 100644
--- a/arch/arm/boards/nhk8815/setup.c
+++ b/arch/arm/boards/nhk8815/setup.c
@@ -52,7 +52,7 @@ static struct resource nhk8815_nand_resources[] = {
 	}
 };
 
-static struct device_d nhk8815_nand_device = {
+static struct device nhk8815_nand_device = {
 	.id		= DEVICE_ID_DYNAMIC,
 	.name		= "nomadik_nand",
 	.num_resources	= ARRAY_SIZE(nhk8815_nand_resources),
diff --git a/arch/arm/boards/nxp-imx8mm-evk/board.c b/arch/arm/boards/nxp-imx8mm-evk/board.c
index db694943e5..8655e39e9b 100644
--- a/arch/arm/boards/nxp-imx8mm-evk/board.c
+++ b/arch/arm/boards/nxp-imx8mm-evk/board.c
@@ -31,7 +31,7 @@ static int ar8031_phy_fixup(struct phy_device *phydev)
 	return 0;
 }
 
-static int imx8mm_evk_probe(struct device_d *dev)
+static int imx8mm_evk_probe(struct device *dev)
 {
 	int emmc_bbu_flag = 0;
 	int sd_bbu_flag = 0;
diff --git a/arch/arm/boards/nxp-imx8mn-evk/board.c b/arch/arm/boards/nxp-imx8mn-evk/board.c
index 3606dabe9d..c7666e10a4 100644
--- a/arch/arm/boards/nxp-imx8mn-evk/board.c
+++ b/arch/arm/boards/nxp-imx8mn-evk/board.c
@@ -31,7 +31,7 @@ static int ar8031_phy_fixup(struct phy_device *phydev)
 	return 0;
 }
 
-static int imx8mn_evk_probe(struct device_d *dev)
+static int imx8mn_evk_probe(struct device *dev)
 {
 	int emmc_bbu_flag = 0;
 	int sd_bbu_flag = 0;
diff --git a/arch/arm/boards/nxp-imx8mp-evk/board.c b/arch/arm/boards/nxp-imx8mp-evk/board.c
index 57c41aa8d8..d506f5d980 100644
--- a/arch/arm/boards/nxp-imx8mp-evk/board.c
+++ b/arch/arm/boards/nxp-imx8mp-evk/board.c
@@ -15,7 +15,7 @@
 #include <gpio.h>
 #include <envfs.h>
 
-static int nxp_imx8mp_evk_probe(struct device_d *dev)
+static int nxp_imx8mp_evk_probe(struct device *dev)
 {
 	int emmc_bbu_flag = 0;
 	int sd_bbu_flag = 0;
diff --git a/arch/arm/boards/phytec-phycore-imx27/pcm970.c b/arch/arm/boards/phytec-phycore-imx27/pcm970.c
index b7fad6dcbc..479e5566a0 100644
--- a/arch/arm/boards/phytec-phycore-imx27/pcm970.c
+++ b/arch/arm/boards/phytec-phycore-imx27/pcm970.c
@@ -28,7 +28,7 @@ static struct ide_port_info pcm970_ide_pdata = {
 	.reset		= &pcm970_ide_reset,
 };
 
-static struct device_d pcm970_ide_device = {
+static struct device pcm970_ide_device = {
 	.id		= DEVICE_ID_DYNAMIC,
 	.name		= "ide_intf",
 	.num_resources	= ARRAY_SIZE(pcm970_ide_resources),
diff --git a/arch/arm/boards/phytec-phycore-stm32mp1/board.c b/arch/arm/boards/phytec-phycore-stm32mp1/board.c
index eb6147785f..adb882f91d 100644
--- a/arch/arm/boards/phytec-phycore-stm32mp1/board.c
+++ b/arch/arm/boards/phytec-phycore-stm32mp1/board.c
@@ -3,7 +3,7 @@
 #include <driver.h>
 #include <bootsource.h>
 
-static int phycore_stm32mp1_probe(struct device_d *dev)
+static int phycore_stm32mp1_probe(struct device *dev)
 {
 	if (bootsource_get_instance() == 0)
 		of_device_enable_path("/chosen/environment-sd");
diff --git a/arch/arm/boards/phytec-som-imx6/board.c b/arch/arm/boards/phytec-som-imx6/board.c
index c540aaeb3f..59868f35c8 100644
--- a/arch/arm/boards/phytec-som-imx6/board.c
+++ b/arch/arm/boards/phytec-som-imx6/board.c
@@ -157,7 +157,7 @@ struct board_data {
 	unsigned flags;
 };
 
-static int physom_imx6_probe(struct device_d *dev)
+static int physom_imx6_probe(struct device *dev)
 {
 	int ret;
 	char *environment_path, *default_environment_path;
diff --git a/arch/arm/boards/pine64-quartz64/board.c b/arch/arm/boards/pine64-quartz64/board.c
index 981de90dd7..cd48a61ab0 100644
--- a/arch/arm/boards/pine64-quartz64/board.c
+++ b/arch/arm/boards/pine64-quartz64/board.c
@@ -7,7 +7,7 @@ struct quartz64_model {
 	const char *shortname;
 };
 
-static int quartz64_probe(struct device_d *dev)
+static int quartz64_probe(struct device *dev)
 {
 	const struct quartz64_model *model;
 
diff --git a/arch/arm/boards/protonic-imx6/board.c b/arch/arm/boards/protonic-imx6/board.c
index a0dec5b1e2..d9ea721f55 100644
--- a/arch/arm/boards/protonic-imx6/board.c
+++ b/arch/arm/boards/protonic-imx6/board.c
@@ -84,7 +84,7 @@ struct prt_machine_data {
 };
 
 struct prt_imx6_priv {
-	struct device_d *dev;
+	struct device *dev;
 	const struct prt_machine_data *dcfg;
 	unsigned int hw_id;
 	unsigned int hw_rev;
@@ -147,7 +147,7 @@ static int prt_imx6_read_rfid(struct prt_imx6_priv *priv, void *buf,
 			      size_t size)
 {
 	const struct prt_machine_data *dcfg = priv->dcfg;
-	struct device_d *dev = priv->dev;
+	struct device *dev = priv->dev;
 	struct i2c_client cl;
 	int ret;
 
@@ -187,7 +187,7 @@ static u8 prt_imx6_calc_rfid_cs(void *buf, size_t size)
 static int prt_imx6_set_mac(struct prt_imx6_priv *priv,
 			    struct prti6q_rfid_contents *rfid)
 {
-	struct device_d *dev = priv->dev;
+	struct device *dev = priv->dev;
 	struct device_node *node;
 
 	node = of_find_node_by_alias(of_get_root_node(), "ethernet0");
@@ -224,7 +224,7 @@ static int prt_imx6_set_serial(struct prt_imx6_priv *priv, char *serial)
 
 static int prt_imx6_read_i2c_mac_serial(struct prt_imx6_priv *priv)
 {
-	struct device_d *dev = priv->dev;
+	struct device *dev = priv->dev;
 	struct prti6q_rfid_contents rfid;
 	int ret;
 
@@ -294,7 +294,7 @@ static int prt_imx6_set_ocotp_serial(struct param_d *param, void *driver_priv)
 
 static int prt_imx6_usb_mount(struct prt_imx6_priv *priv)
 {
-	struct device_d *dev = priv->dev;
+	struct device *dev = priv->dev;
 	const char *path;
 	struct stat s;
 	int ret;
@@ -333,7 +333,7 @@ exit_usb_mount:
 static int prt_imx6_usb_boot(struct bootentry *entry, int verbose, int dryrun)
 {
 	struct prt_imx6_priv *priv = prt_priv;
-	struct device_d *dev = priv->dev;
+	struct device *dev = priv->dev;
 	char *second_word;
 	char buf[sizeof("vicut1q recovery")] = {};
 	struct bootm_data bootm_data = {};
@@ -465,7 +465,7 @@ static int prt_imx6_bootentry_provider(struct bootentries *bootentries,
 static int prt_imx6_env_init(struct prt_imx6_priv *priv)
 {
 	const struct prt_machine_data *dcfg = priv->dcfg;
-	struct device_d *dev = priv->dev;
+	struct device *dev = priv->dev;
 	char *delay, *bootsrc, *boot_targets;
 	unsigned int autoboot_timeout;
 	int ret;
@@ -559,7 +559,7 @@ exit_bbu:
 static int prt_imx6_devices_init(void)
 {
 	struct prt_imx6_priv *priv = prt_priv;
-	struct device_d *ocotp_dev;
+	struct device *ocotp_dev;
 	struct param_d *p;
 
 	if (!priv)
@@ -615,7 +615,7 @@ static int prt_imx6_yaco_set_kvg_power_mode(struct prt_imx6_priv *priv,
 					    const char *serial)
 {
 	static const char command[] = "{\"command\":\"mode\",\"value\":\"kvg\",\"on2\":true}";
-	struct device_d *dev = priv->dev;
+	struct device *dev = priv->dev;
 	struct console_device *yccon;
 	int ret;
 
@@ -914,7 +914,7 @@ exit_get_dcfg:
 	return ret;
 }
 
-static int prt_imx6_probe(struct device_d *dev)
+static int prt_imx6_probe(struct device *dev)
 {
 	struct prt_imx6_priv *priv;
 	struct param_d *p;
diff --git a/arch/arm/boards/protonic-imx8m/board.c b/arch/arm/boards/protonic-imx8m/board.c
index 87264f0c97..e7e5c529af 100644
--- a/arch/arm/boards/protonic-imx8m/board.c
+++ b/arch/arm/boards/protonic-imx8m/board.c
@@ -39,7 +39,7 @@ static int prt_prt8mm_init_power(void)
 	return 0;
 }
 
-static int prt_prt8mm_probe(struct device_d *dev)
+static int prt_prt8mm_probe(struct device *dev)
 {
 	int emmc_bbu_flag = 0;
 	int sd_bbu_flag = 0;
diff --git a/arch/arm/boards/protonic-stm32mp1/board.c b/arch/arm/boards/protonic-stm32mp1/board.c
index 174454ed27..fe23bc3164 100644
--- a/arch/arm/boards/protonic-stm32mp1/board.c
+++ b/arch/arm/boards/protonic-stm32mp1/board.c
@@ -54,7 +54,7 @@ static const struct prt_stm32_boot_dev prt_stm32_boot_devs[] = {
 	},
 };
 
-static int prt_stm32_probe(struct device_d *dev)
+static int prt_stm32_probe(struct device *dev)
 {
 	const struct prt_stm32_machine_data *dcfg;
 	char *env_path_back = NULL, *env_path = NULL;
diff --git a/arch/arm/boards/radxa-rock3/board.c b/arch/arm/boards/radxa-rock3/board.c
index cea00b9773..039d75f250 100644
--- a/arch/arm/boards/radxa-rock3/board.c
+++ b/arch/arm/boards/radxa-rock3/board.c
@@ -10,7 +10,7 @@ struct rock3_model {
 	const char *shortname;
 };
 
-static int rock3_probe(struct device_d *dev)
+static int rock3_probe(struct device *dev)
 {
 	enum bootsource bootsource = bootsource_get();
 	int instance = bootsource_get_instance();
diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
index 77935e5c88..8d2be6e399 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -54,7 +54,7 @@ struct rpi_machine_data {
 };
 
 struct rpi_priv {
-	struct device_d *dev;
+	struct device *dev;
 	const struct rpi_machine_data *dcfg;
 	unsigned int hw_id;
 	const char *name;
@@ -414,7 +414,7 @@ static const struct rpi_machine_data *rpi_get_dcfg(struct rpi_priv *priv)
 	return ERR_PTR(-ENODEV);
 }
 
-static int rpi_devices_probe(struct device_d *dev)
+static int rpi_devices_probe(struct device *dev)
 {
 	const struct rpi_machine_data *dcfg;
 	struct regulator *reg;
diff --git a/arch/arm/boards/rockchip-rk3568-bpi-r2pro/board.c b/arch/arm/boards/rockchip-rk3568-bpi-r2pro/board.c
index b5d406576f..3b448fae86 100644
--- a/arch/arm/boards/rockchip-rk3568-bpi-r2pro/board.c
+++ b/arch/arm/boards/rockchip-rk3568-bpi-r2pro/board.c
@@ -14,7 +14,7 @@
 
 static bool machine_is_bpi_r2pro = false;
 
-static int rk3568_bpi_r2pro_probe(struct device_d *dev)
+static int rk3568_bpi_r2pro_probe(struct device *dev)
 {
 	enum bootsource bootsource = bootsource_get();
 	int instance = bootsource_get_instance();
diff --git a/arch/arm/boards/rockchip-rk3568-evb/board.c b/arch/arm/boards/rockchip-rk3568-evb/board.c
index ef886e67ed..69acf0798c 100644
--- a/arch/arm/boards/rockchip-rk3568-evb/board.c
+++ b/arch/arm/boards/rockchip-rk3568-evb/board.c
@@ -14,7 +14,7 @@
 
 static bool machine_is_rk3568_evb = false;
 
-static int rk3568_evb_probe(struct device_d *dev)
+static int rk3568_evb_probe(struct device *dev)
 {
 	enum bootsource bootsource = bootsource_get();
 	int instance = bootsource_get_instance();
diff --git a/arch/arm/boards/sama5d3_xplained/board.c b/arch/arm/boards/sama5d3_xplained/board.c
index 69357df0fb..4350d97425 100644
--- a/arch/arm/boards/sama5d3_xplained/board.c
+++ b/arch/arm/boards/sama5d3_xplained/board.c
@@ -35,7 +35,7 @@ static struct sam9_smc_config sama5d3_xplained_nand_smc_config = {
 	.nfsel			= 1
 };
 
-static int sama5d3_xplained_probe(struct device_d *dev)
+static int sama5d3_xplained_probe(struct device *dev)
 {
 	struct clk *clk;
 
diff --git a/arch/arm/boards/sama5d3xek/hw_version.c b/arch/arm/boards/sama5d3xek/hw_version.c
index 03c8df2cad..c64d4566c6 100644
--- a/arch/arm/boards/sama5d3xek/hw_version.c
+++ b/arch/arm/boards/sama5d3xek/hw_version.c
@@ -151,7 +151,7 @@ static void at91sama5d3xek_devices_detect_one(const char *name)
 	struct one_wire_info info;
 	struct board_info* binfo;
 	struct vendor_info* vinfo;
-	struct device_d *dev = NULL;
+	struct device *dev = NULL;
 	char str[16];
 	char *bname, *vname;
 	u8 vendor_id = 0;
diff --git a/arch/arm/boards/seeed-odyssey/board.c b/arch/arm/boards/seeed-odyssey/board.c
index 8c011898a3..f811127023 100644
--- a/arch/arm/boards/seeed-odyssey/board.c
+++ b/arch/arm/boards/seeed-odyssey/board.c
@@ -7,7 +7,7 @@
 #include <bootsource.h>
 #include <of.h>
 
-static int odyssey_som_probe(struct device_d *dev)
+static int odyssey_som_probe(struct device *dev)
 {
 	int flags;
 	int instance = bootsource_get_instance();
diff --git a/arch/arm/boards/skov-arm9cpu/board.c b/arch/arm/boards/skov-arm9cpu/board.c
index 8d5eadbb9a..1f092b37cc 100644
--- a/arch/arm/boards/skov-arm9cpu/board.c
+++ b/arch/arm/boards/skov-arm9cpu/board.c
@@ -45,7 +45,7 @@ static int mem;
  * But is required before we start the other drives.
  * Use device_initcall() to maintain this order.
  */
-static int skov_arm9_probe(struct device_d *dev)
+static int skov_arm9_probe(struct device *dev)
 {
 	unsigned long csa;
 
diff --git a/arch/arm/boards/skov-imx6/board.c b/arch/arm/boards/skov-imx6/board.c
index 19f91ab481..4ce0112a58 100644
--- a/arch/arm/boards/skov-imx6/board.c
+++ b/arch/arm/boards/skov-imx6/board.c
@@ -18,7 +18,7 @@
 #include "version.h"
 
 struct skov_imx6_priv {
-	struct device_d *dev;
+	struct device *dev;
 };
 
 static struct skov_imx6_priv *skov_priv;
@@ -577,8 +577,8 @@ static int skov_set_switch_lan2_mac(struct skov_imx6_priv *priv)
 
 static int skov_switch_test(void)
 {
-	struct device_d *sw_dev;
-	struct device_d *eth0;
+	struct device *sw_dev;
+	struct device *eth0;
 	int ret;
 
 	if (skov_board_no < 0)
@@ -618,7 +618,7 @@ no_switch:
 }
 late_initcall(skov_switch_test);
 
-static int skov_imx6_probe(struct device_d *dev)
+static int skov_imx6_probe(struct device *dev)
 {
 	struct skov_imx6_priv *priv;
 	unsigned v = 0;
diff --git a/arch/arm/boards/stm32mp15x-ev1/board.c b/arch/arm/boards/stm32mp15x-ev1/board.c
index b8e26cd37b..e05caf3a46 100644
--- a/arch/arm/boards/stm32mp15x-ev1/board.c
+++ b/arch/arm/boards/stm32mp15x-ev1/board.c
@@ -5,7 +5,7 @@
 #include <init.h>
 #include <mach/bbu.h>
 
-static int ed1_probe(struct device_d *dev)
+static int ed1_probe(struct device *dev)
 {
 	int flags;
 
diff --git a/arch/arm/boards/stm32mp15xx-dkx/board.c b/arch/arm/boards/stm32mp15xx-dkx/board.c
index 1ddfee698d..42ff4aa4d2 100644
--- a/arch/arm/boards/stm32mp15xx-dkx/board.c
+++ b/arch/arm/boards/stm32mp15xx-dkx/board.c
@@ -3,7 +3,7 @@
 #include <init.h>
 #include <mach/bbu.h>
 
-static int dkx_probe(struct device_d *dev)
+static int dkx_probe(struct device *dev)
 {
 	const void *model;
 
diff --git a/arch/arm/boards/tqma6ulx/board.c b/arch/arm/boards/tqma6ulx/board.c
index 06b5e1322c..6ede15b498 100644
--- a/arch/arm/boards/tqma6ulx/board.c
+++ b/arch/arm/boards/tqma6ulx/board.c
@@ -11,7 +11,7 @@
 #include <of.h>
 #include <string.h>
 
-static int mba6ulx_probe(struct device_d *dev)
+static int mba6ulx_probe(struct device *dev)
 {
 	int flags;
 
diff --git a/arch/arm/boards/tqma8mpxl/board.c b/arch/arm/boards/tqma8mpxl/board.c
index 648286d3b2..70f5e387a0 100644
--- a/arch/arm/boards/tqma8mpxl/board.c
+++ b/arch/arm/boards/tqma8mpxl/board.c
@@ -15,7 +15,7 @@
 #include <gpio.h>
 #include <envfs.h>
 
-static int tqma8mpxl_probe(struct device_d *dev)
+static int tqma8mpxl_probe(struct device *dev)
 {
 	int emmc_bbu_flag = 0;
 	int sd_bbu_flag = 0;
diff --git a/arch/arm/boards/usb-a926x/init.c b/arch/arm/boards/usb-a926x/init.c
index 010e094587..a4c55b6236 100644
--- a/arch/arm/boards/usb-a926x/init.c
+++ b/arch/arm/boards/usb-a926x/init.c
@@ -395,7 +395,7 @@ device_initcall(usb_a9260_devices_init);
 #ifndef CONFIG_CONSOLE_NONE
 static int usb_a9260_console_init(void)
 {
-	struct device_d *dev;
+	struct device *dev;
 
 	if (machine_is_usb_a9260()) {
 		barebox_set_model("Calao USB-A9260");
diff --git a/arch/arm/boards/vexpress/init.c b/arch/arm/boards/vexpress/init.c
index 6ba23bbb62..e3577ec2e4 100644
--- a/arch/arm/boards/vexpress/init.c
+++ b/arch/arm/boards/vexpress/init.c
@@ -42,7 +42,7 @@ static int of_fixup_virtio_mmio(struct device_node *root, void *unused)
 	return 0;
 }
 
-static int vexpress_probe(struct device_d *dev)
+static int vexpress_probe(struct device *dev)
 {
 	char *hostname = "vexpress-unknown";
 	int ret = 0;
diff --git a/arch/arm/boards/webasto-ccbv2/board.c b/arch/arm/boards/webasto-ccbv2/board.c
index fd6ea6f406..dbd83a682b 100644
--- a/arch/arm/boards/webasto-ccbv2/board.c
+++ b/arch/arm/boards/webasto-ccbv2/board.c
@@ -12,7 +12,7 @@
 
 #include "ccbv2.h"
 
-static int ccbv2_probe(struct device_d *dev)
+static int ccbv2_probe(struct device *dev)
 {
 	struct device_node *overlay;
 	struct fdt_header *fdt;
diff --git a/arch/arm/boards/zii-common/board.c b/arch/arm/boards/zii-common/board.c
index 5d81bd51e9..96f9243591 100644
--- a/arch/arm/boards/zii-common/board.c
+++ b/arch/arm/boards/zii-common/board.c
@@ -68,7 +68,7 @@ late_initcall(rdu_ethernet_init);
 static int rdu_networkconfig(void)
 {
 	static char *rdu_netconfig;
-	struct device_d *sp_dev;
+	struct device *sp_dev;
 
 	if (!of_machine_is_compatible("zii,imx8mq-ultra") &&
 	    !of_machine_is_compatible("zii,imx6q-zii-rdu2") &&
diff --git a/arch/arm/boards/zii-common/switch-cmd.c b/arch/arm/boards/zii-common/switch-cmd.c
index df6ed66b23..6aa1c391f4 100644
--- a/arch/arm/boards/zii-common/switch-cmd.c
+++ b/arch/arm/boards/zii-common/switch-cmd.c
@@ -61,7 +61,7 @@ static int do_rdu2_switch_reset(void)
 
 static int do_rdu1_switch_reset(void)
 {
-	struct device_d *sp_dev = get_device_by_name("sp");
+	struct device *sp_dev = get_device_by_name("sp");
 	struct rave_sp *sp = sp_dev->parent->priv;
 	u8 cmd[] = {
 		[0] = RAVE_SP_CMD_RESET_ETH_SWITCH,
diff --git a/arch/arm/boards/zii-imx8mq-dev/board.c b/arch/arm/boards/zii-imx8mq-dev/board.c
index 02e257f35f..a56ebbc669 100644
--- a/arch/arm/boards/zii-imx8mq-dev/board.c
+++ b/arch/arm/boards/zii-imx8mq-dev/board.c
@@ -81,7 +81,7 @@ static int zii_imx8mq_dev_fixup_egalax_ts(struct device_node *root, void *ctx)
 static int zii_imx8mq_dev_fixup_deb_internal(void)
 {
 	struct device_node *np, *aliases;
-	struct device_d *dev;
+	struct device *dev;
 
 	/*
 	 * In the internal DT remove the complete FEC hierarchy and move the
diff --git a/arch/arm/cpu/psci-client.c b/arch/arm/cpu/psci-client.c
index 917e06d560..0df7f7e171 100644
--- a/arch/arm/cpu/psci-client.c
+++ b/arch/arm/cpu/psci-client.c
@@ -113,7 +113,7 @@ static int of_psci_do_fixup(struct device_node *root, void *method)
 	return of_psci_fixup(root, version, (const void *)method);
 }
 
-static int __init psci_probe(struct device_d *dev)
+static int __init psci_probe(struct device *dev)
 {
 	const char *method;
 	ulong of_version, actual_version;
diff --git a/arch/arm/mach-at91/at91sam9260_devices.c b/arch/arm/mach-at91/at91sam9260_devices.c
index 5ebe21c88a..4fc7f2fcbd 100644
--- a/arch/arm/mach-at91/at91sam9260_devices.c
+++ b/arch/arm/mach-at91/at91sam9260_devices.c
@@ -342,7 +342,7 @@ resource_size_t __init at91_configure_usart5(unsigned pins)
 /* Consider only one slot : slot 0 */
 void at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *data)
 {
-	struct device_d *dev;
+	struct device *dev;
 
 	if (!data)
 		return;
diff --git a/arch/arm/mach-at91/at91sam9261_devices.c b/arch/arm/mach-at91/at91sam9261_devices.c
index dfde848aa3..0c7ef6dade 100644
--- a/arch/arm/mach-at91/at91sam9261_devices.c
+++ b/arch/arm/mach-at91/at91sam9261_devices.c
@@ -309,7 +309,7 @@ resource_size_t __init at91_configure_usart2(unsigned pins)
 /* Consider only one slot : slot 0 */
 void at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *data)
 {
-	struct device_d *dev;
+	struct device *dev;
 
 	if (!data)
 		return;
diff --git a/arch/arm/mach-at91/at91sam9_rst.c b/arch/arm/mach-at91/at91sam9_rst.c
index a61a26936f..cb3ee37f3e 100644
--- a/arch/arm/mach-at91/at91sam9_rst.c
+++ b/arch/arm/mach-at91/at91sam9_rst.c
@@ -25,7 +25,7 @@ static int reasons[] = {
 	RESET_EXT, /* USER     NRST pin detected low */
 };
 
-static void at91sam9x_set_reset_reason(struct device_d *dev,
+static void at91sam9x_set_reset_reason(struct device *dev,
 				       void __iomem *base)
 {
 	enum reset_src_type type = RESET_UKWN;
@@ -56,7 +56,7 @@ static void __noreturn at91sam9x_restart_soc(struct restart_handler *rst)
 	hang();
 }
 
-static int at91sam9x_rst_probe(struct device_d *dev)
+static int at91sam9x_rst_probe(struct device *dev)
 {
 	struct at91sam9x_rst *priv;
 	struct resource *iores;
diff --git a/arch/arm/mach-at91/ddramc.c b/arch/arm/mach-at91/ddramc.c
index 8f70b4ada2..c7222e686f 100644
--- a/arch/arm/mach-at91/ddramc.c
+++ b/arch/arm/mach-at91/ddramc.c
@@ -34,7 +34,7 @@ void __noreturn sama5d3_barebox_entry(unsigned int r4, void *boarddata)
 			  boarddata);
 }
 
-static int sama5_ddr_probe(struct device_d *dev)
+static int sama5_ddr_probe(struct device *dev)
 {
 	struct resource *iores;
 	void __iomem *base;
diff --git a/arch/arm/mach-at91/generic.h b/arch/arm/mach-at91/generic.h
index cdc1b7598a..4ea9779d34 100644
--- a/arch/arm/mach-at91/generic.h
+++ b/arch/arm/mach-at91/generic.h
@@ -13,25 +13,25 @@ static inline int __init at91_clock_init(void) { return 0; }
 extern int __init at91_clock_init(void);
 #endif
 
-static inline struct device_d *at91_add_rm9200_gpio(int id, resource_size_t start)
+static inline struct device *at91_add_rm9200_gpio(int id, resource_size_t start)
 {
 	return add_generic_device("at91rm9200-gpio", id, NULL, start, 512,
 				  IORESOURCE_MEM, NULL);
 }
 
-static inline struct device_d *at91_add_sam9x5_gpio(int id, resource_size_t start)
+static inline struct device *at91_add_sam9x5_gpio(int id, resource_size_t start)
 {
 	return add_generic_device("at91sam9x5-gpio", id, NULL, start, 512,
 				  IORESOURCE_MEM, NULL);
 }
 
-static inline struct device_d *at91_add_pit(resource_size_t start)
+static inline struct device *at91_add_pit(resource_size_t start)
 {
 	return add_generic_device("at91-pit", DEVICE_ID_SINGLE, NULL, start, 16,
 				  IORESOURCE_MEM, NULL);
 }
 
-static inline struct device_d *at91_add_sam9_smc(int id, resource_size_t start,
+static inline struct device *at91_add_sam9_smc(int id, resource_size_t start,
 						 resource_size_t size)
 {
 	return add_generic_device("at91sam9-smc", id, NULL, start, size,
diff --git a/arch/arm/mach-at91/include/mach/board.h b/arch/arm/mach-at91/include/mach/board.h
index 754a6b7c5e..e426e0b3f5 100644
--- a/arch/arm/mach-at91/include/mach/board.h
+++ b/arch/arm/mach-at91/include/mach/board.h
@@ -93,7 +93,7 @@ resource_size_t __init at91_configure_usart5(unsigned pins);
 resource_size_t __init at91_configure_usart6(unsigned pins);
 
 #if defined(CONFIG_DRIVER_SERIAL_ATMEL)
-static inline struct device_d * at91_register_uart(unsigned id, unsigned pins)
+static inline struct device * at91_register_uart(unsigned id, unsigned pins)
 {
 	resource_size_t start;
 	resource_size_t size = SZ_16K;
@@ -129,7 +129,7 @@ static inline struct device_d * at91_register_uart(unsigned id, unsigned pins)
 			   IORESOURCE_MEM, NULL);
 }
 #else
-static inline struct device_d * at91_register_uart(unsigned id, unsigned pins)
+static inline struct device * at91_register_uart(unsigned id, unsigned pins)
 {
 	return NULL;
 }
diff --git a/arch/arm/mach-at91/sam9_smc.c b/arch/arm/mach-at91/sam9_smc.c
index 77d62012df..165fd1d28a 100644
--- a/arch/arm/mach-at91/sam9_smc.c
+++ b/arch/arm/mach-at91/sam9_smc.c
@@ -168,7 +168,7 @@ void sama5_smc_configure(int id, int cs, struct sam9_smc_config *config)
         sam9_smc_cs_write_timings(AT91_SMC_CS(id, cs), config);
 }
 
-static int at91sam9_smc_probe(struct device_d *dev)
+static int at91sam9_smc_probe(struct device *dev)
 {
 	struct resource *iores;
 	int id = dev->id;
diff --git a/arch/arm/mach-at91/setup.c b/arch/arm/mach-at91/setup.c
index 47247dc97c..8a21d8debc 100644
--- a/arch/arm/mach-at91/setup.c
+++ b/arch/arm/mach-at91/setup.c
@@ -371,7 +371,7 @@ postcore_initcall(at91_detect);
 
 static int at91_soc_device(void)
 {
-	struct device_d *dev;
+	struct device *dev;
 
 	dev = add_generic_device_res("soc", DEVICE_ID_SINGLE, NULL, 0, NULL);
 	dev_add_param_fixed(dev, "name", (char*)at91_get_soc_type(&at91_soc_initdata));
diff --git a/arch/arm/mach-clps711x/clock.c b/arch/arm/mach-clps711x/clock.c
index 573867e415..7ad43842f6 100644
--- a/arch/arm/mach-clps711x/clock.c
+++ b/arch/arm/mach-clps711x/clock.c
@@ -23,7 +23,7 @@ static const struct clk_div_table tdiv_tbl[] = {
 	{ }
 };
 
-static int clps711x_clk_probe(struct device_d *dev)
+static int clps711x_clk_probe(struct device *dev)
 {
 	unsigned int f_cpu, f_bus, f_uart, f_timer_ref, pll;
 	u32 tmp;
diff --git a/arch/arm/mach-clps711x/common.c b/arch/arm/mach-clps711x/common.c
index dcb97ad236..a185110213 100644
--- a/arch/arm/mach-clps711x/common.c
+++ b/arch/arm/mach-clps711x/common.c
@@ -110,7 +110,7 @@ static int clps711x_bus_fixup(struct device_node *root, void *context)
 	return 0;
 }
 
-static int clps711x_bus_probe(struct device_d *dev)
+static int clps711x_bus_probe(struct device *dev)
 {
 	u32 mcfg;
 
diff --git a/arch/arm/mach-imx/devices.c b/arch/arm/mach-imx/devices.c
index 58c0a8aff3..ae2769d259 100644
--- a/arch/arm/mach-imx/devices.c
+++ b/arch/arm/mach-imx/devices.c
@@ -4,93 +4,93 @@
 #include <driver.h>
 #include <mach/devices.h>
 
-static inline struct device_d *imx_add_device(char *name, int id, void *base, int size, void *pdata)
+static inline struct device *imx_add_device(char *name, int id, void *base, int size, void *pdata)
 {
 	return add_generic_device(name, id, NULL, (resource_size_t)base, size,
 				  IORESOURCE_MEM, pdata);
 }
 
-struct device_d *imx_add_fec_imx27(void *base, struct fec_platform_data *pdata)
+struct device *imx_add_fec_imx27(void *base, struct fec_platform_data *pdata)
 {
 	return imx_add_device("imx27-fec", -1, base, 0x1000, pdata);
 }
 
-struct device_d *imx_add_fec_imx6(void *base, struct fec_platform_data *pdata)
+struct device *imx_add_fec_imx6(void *base, struct fec_platform_data *pdata)
 {
 	return imx_add_device("imx6-fec", -1, base, 0x1000, pdata);
 }
 
-struct device_d *imx_add_spi_imx27(void *base, int id, struct spi_imx_master *pdata)
+struct device *imx_add_spi_imx27(void *base, int id, struct spi_imx_master *pdata)
 {
 	return imx_add_device("imx27-spi", id, base, 0x1000, pdata);
 }
 
-struct device_d *imx_add_spi_imx35(void *base, int id, struct spi_imx_master *pdata)
+struct device *imx_add_spi_imx35(void *base, int id, struct spi_imx_master *pdata)
 {
 	return imx_add_device("imx35-spi", id, base, 0x1000, pdata);
 }
 
-struct device_d *imx_add_spi_imx51(void *base, int id, struct spi_imx_master *pdata)
+struct device *imx_add_spi_imx51(void *base, int id, struct spi_imx_master *pdata)
 {
 	return imx_add_device("imx51-spi", id, base, 0x1000, pdata);
 }
 
-struct device_d *imx_add_i2c(void *base, int id, struct i2c_platform_data *pdata)
+struct device *imx_add_i2c(void *base, int id, struct i2c_platform_data *pdata)
 {
 	return imx_add_device("i2c-fsl", id, base, 0x1000, pdata);
 }
 
-struct device_d *imx_add_uart_imx1(void *base, int id)
+struct device *imx_add_uart_imx1(void *base, int id)
 {
 	return imx_add_device("imx1-uart", id, base, 0x1000, NULL);
 }
 
-struct device_d *imx_add_uart_imx21(void *base, int id)
+struct device *imx_add_uart_imx21(void *base, int id)
 {
 	return imx_add_device("imx21-uart", id, base, 0x1000, NULL);
 }
 
-struct device_d *imx_add_nand(void *base, struct imx_nand_platform_data *pdata)
+struct device *imx_add_nand(void *base, struct imx_nand_platform_data *pdata)
 {
 	return imx_add_device("imx_nand", -1, base, 0x1000, pdata);
 }
 
-struct device_d *imx_add_fb(void *base, struct imx_fb_platform_data *pdata)
+struct device *imx_add_fb(void *base, struct imx_fb_platform_data *pdata)
 {
 	return imx_add_device("imxfb", -1, base, 0x1000, pdata);
 }
 
-struct device_d *imx_add_ipufb(void *base, struct imx_ipu_fb_platform_data *pdata)
+struct device *imx_add_ipufb(void *base, struct imx_ipu_fb_platform_data *pdata)
 {
 	return imx_add_device("imx-ipu-fb", -1, base, 0x1000, pdata);
 }
 
-struct device_d *imx_add_mmc(void *base, int id, void *pdata)
+struct device *imx_add_mmc(void *base, int id, void *pdata)
 {
 	return imx_add_device("imx-mmc", id, base, 0x1000, pdata);
 }
 
-struct device_d *imx_add_esdhc_imx25(void *base, int id, struct esdhc_platform_data *pdata)
+struct device *imx_add_esdhc_imx25(void *base, int id, struct esdhc_platform_data *pdata)
 {
 	return imx_add_device("imx25-esdhc", id, base, 0x1000, pdata);
 }
 
-struct device_d *imx_add_esdhc_imx5(void *base, int id, struct esdhc_platform_data *pdata)
+struct device *imx_add_esdhc_imx5(void *base, int id, struct esdhc_platform_data *pdata)
 {
 	return imx_add_device("imx5-esdhc", id, base, 0x1000, pdata);
 }
 
-struct device_d *imx_add_kpp(void *base, struct matrix_keymap_data *pdata)
+struct device *imx_add_kpp(void *base, struct matrix_keymap_data *pdata)
 {
        return imx_add_device("imx-kpp", -1, base, 0x1000, pdata);
 }
 
-struct device_d *imx_add_pata(void *base)
+struct device *imx_add_pata(void *base)
 {
 	return imx_add_device("imx-pata", -1, base, 0x1000, NULL);
 }
 
-struct device_d *imx_add_usb(void *base, int id, struct imxusb_platformdata *pdata)
+struct device *imx_add_usb(void *base, int id, struct imxusb_platformdata *pdata)
 {
 	return imx_add_device("imx-usb", id, base, 0x200, pdata);
 }
diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index 8de20ed423..e5698f438b 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -568,7 +568,7 @@ static int imx7d_ddrc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
 			   imx7d_ddrc_sdram_size(mmdcbase));
 }
 
-static int imx_esdctl_probe(struct device_d *dev)
+static int imx_esdctl_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct imx_esdctl_data *data;
diff --git a/arch/arm/mach-imx/iim.c b/arch/arm/mach-imx/iim.c
index 638f329c37..cab60aac7f 100644
--- a/arch/arm/mach-imx/iim.c
+++ b/arch/arm/mach-imx/iim.c
@@ -43,7 +43,7 @@ struct iim_bank {
 };
 
 struct iim_priv {
-	struct device_d dev;
+	struct device dev;
 	void __iomem *base;
 	void __iomem *bankbase;
 	struct iim_bank *bank[IIM_NUM_BANKS];
@@ -404,7 +404,7 @@ static void imx_iim_add_mac_param(struct iim_priv *iim, int macnum, int bank, in
  */
 #define MAC_ADDRESS_PROPLEN	(3 * sizeof(__be32))
 
-static void imx_iim_init_dt(struct device_d *dev, struct iim_priv *iim)
+static void imx_iim_init_dt(struct device *dev, struct iim_priv *iim)
 {
 	char mac[6];
 	const __be32 *prop;
@@ -442,12 +442,12 @@ static void imx_iim_init_dt(struct device_d *dev, struct iim_priv *iim)
 	}
 }
 #else
-static inline void imx_iim_init_dt(struct device_d *dev, struct iim_priv *iim)
+static inline void imx_iim_init_dt(struct device *dev, struct iim_priv *iim)
 {
 }
 #endif
 
-static int imx_iim_probe(struct device_d *dev)
+static int imx_iim_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct iim_priv *iim;
diff --git a/arch/arm/mach-imx/include/mach/devices-imx1.h b/arch/arm/mach-imx/include/mach/devices-imx1.h
index 2b5cb8bcbd..795149c92f 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx1.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx1.h
@@ -3,12 +3,12 @@
 #include <mach/devices.h>
 #include <mach/imx1-regs.h>
 
-static inline struct device_d *imx1_add_uart0(void)
+static inline struct device *imx1_add_uart0(void)
 {
 	return imx_add_uart_imx1((void *)MX1_UART1_BASE_ADDR, 0);
 }
 
-static inline struct device_d *imx1_add_uart1(void)
+static inline struct device *imx1_add_uart1(void)
 {
 	return imx_add_uart_imx1((void *)MX1_UART2_BASE_ADDR, 1);
 }
diff --git a/arch/arm/mach-imx/include/mach/devices-imx21.h b/arch/arm/mach-imx/include/mach/devices-imx21.h
index 429b01165e..c4951f7fd9 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx21.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx21.h
@@ -3,32 +3,32 @@
 #include <mach/devices.h>
 #include <mach/imx21-regs.h>
 
-static inline struct device_d *imx21_add_uart0(void)
+static inline struct device *imx21_add_uart0(void)
 {
 	return imx_add_uart_imx21((void *)MX21_UART1_BASE_ADDR, 0);
 }
 
-static inline struct device_d *imx21_add_uart1(void)
+static inline struct device *imx21_add_uart1(void)
 {
 	return imx_add_uart_imx21((void *)MX21_UART2_BASE_ADDR, 1);
 }
 
-static inline struct device_d *imx21_add_uart2(void)
+static inline struct device *imx21_add_uart2(void)
 {
 	return imx_add_uart_imx21((void *)MX21_UART2_BASE_ADDR, 2);
 }
 
-static inline struct device_d *imx21_add_uart3(void)
+static inline struct device *imx21_add_uart3(void)
 {
 	return imx_add_uart_imx21((void *)MX21_UART2_BASE_ADDR, 3);
 }
 
-static inline struct device_d *imx21_add_nand(struct imx_nand_platform_data *pdata)
+static inline struct device *imx21_add_nand(struct imx_nand_platform_data *pdata)
 {
 	return imx_add_nand((void *)0xDF003000, pdata);
 }
 
-static inline struct device_d *imx21_add_fb(struct imx_fb_platform_data *pdata)
+static inline struct device *imx21_add_fb(struct imx_fb_platform_data *pdata)
 {
 	return imx_add_fb((void *)0x10021000, pdata);
 }
diff --git a/arch/arm/mach-imx/include/mach/devices-imx25.h b/arch/arm/mach-imx/include/mach/devices-imx25.h
index ec358fbbfa..6c768218c4 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx25.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx25.h
@@ -3,82 +3,82 @@
 #include <mach/devices.h>
 #include <mach/imx25-regs.h>
 
-static inline struct device_d *imx25_add_i2c0(struct i2c_platform_data *pdata)
+static inline struct device *imx25_add_i2c0(struct i2c_platform_data *pdata)
 {
 	return imx_add_i2c((void *)MX25_I2C1_BASE_ADDR, 0, pdata);
 }
 
-static inline struct device_d *imx25_add_i2c1(struct i2c_platform_data *pdata)
+static inline struct device *imx25_add_i2c1(struct i2c_platform_data *pdata)
 {
 	return imx_add_i2c((void *)MX25_I2C2_BASE_ADDR, 1, pdata);
 }
 
-static inline struct device_d *imx25_add_i2c2(struct i2c_platform_data *pdata)
+static inline struct device *imx25_add_i2c2(struct i2c_platform_data *pdata)
 {
 	return imx_add_i2c((void *)MX25_I2C3_BASE_ADDR, 2, pdata);
 }
 
-static inline struct device_d *imx25_add_spi0(struct spi_imx_master *pdata)
+static inline struct device *imx25_add_spi0(struct spi_imx_master *pdata)
 {
 	return imx_add_spi_imx35((void *)MX25_CSPI1_BASE_ADDR, 0, pdata);
 }
 
-static inline struct device_d *imx25_add_spi1(struct spi_imx_master *pdata)
+static inline struct device *imx25_add_spi1(struct spi_imx_master *pdata)
 {
 	return imx_add_spi_imx35((void *)MX25_CSPI2_BASE_ADDR, 1, pdata);
 }
 
-static inline struct device_d *imx25_add_spi2(struct spi_imx_master *pdata)
+static inline struct device *imx25_add_spi2(struct spi_imx_master *pdata)
 {
 	return imx_add_spi_imx35((void *)MX25_CSPI3_BASE_ADDR, 2, pdata);
 }
 
-static inline struct device_d *imx25_add_uart0(void)
+static inline struct device *imx25_add_uart0(void)
 {
 	return imx_add_uart_imx21((void *)MX25_UART1_BASE_ADDR, 0);
 }
 
-static inline struct device_d *imx25_add_uart1(void)
+static inline struct device *imx25_add_uart1(void)
 {
 	return imx_add_uart_imx21((void *)MX25_UART2_BASE_ADDR, 1);
 }
 
-static inline struct device_d *imx25_add_uart2(void)
+static inline struct device *imx25_add_uart2(void)
 {
 	return imx_add_uart_imx21((void *)MX25_UART3_BASE_ADDR, 2);
 }
 
-static inline struct device_d *imx25_add_uart3(void)
+static inline struct device *imx25_add_uart3(void)
 {
 	return imx_add_uart_imx21((void *)MX25_UART4_BASE_ADDR, 3);
 }
 
-static inline struct device_d *imx25_add_uart4(void)
+static inline struct device *imx25_add_uart4(void)
 {
 	return imx_add_uart_imx21((void *)MX25_UART5_BASE_ADDR, 4);
 }
 
-static inline struct device_d *imx25_add_nand(struct imx_nand_platform_data *pdata)
+static inline struct device *imx25_add_nand(struct imx_nand_platform_data *pdata)
 {
 	return imx_add_nand((void *)MX25_NFC_BASE_ADDR, pdata);
 }
 
-static inline struct device_d *imx25_add_fb(struct imx_fb_platform_data *pdata)
+static inline struct device *imx25_add_fb(struct imx_fb_platform_data *pdata)
 {
 	return imx_add_fb((void *)MX25_LCDC_BASE_ADDR, pdata);
 }
 
-static inline struct device_d *imx25_add_fec(struct fec_platform_data *pdata)
+static inline struct device *imx25_add_fec(struct fec_platform_data *pdata)
 {
 	return imx_add_fec_imx27((void *)MX25_FEC_BASE_ADDR, pdata);
 }
 
-static inline struct device_d *imx25_add_mmc0(struct esdhc_platform_data *pdata)
+static inline struct device *imx25_add_mmc0(struct esdhc_platform_data *pdata)
 {
 	return imx_add_esdhc_imx25((void *)MX25_ESDHC1_BASE_ADDR, 0, pdata);
 }
 
-static inline struct device_d *imx25_add_mmc1(struct esdhc_platform_data *pdata)
+static inline struct device *imx25_add_mmc1(struct esdhc_platform_data *pdata)
 {
 	return imx_add_esdhc_imx25((void *)MX25_ESDHC2_BASE_ADDR, 1, pdata);
 }
diff --git a/arch/arm/mach-imx/include/mach/devices-imx27.h b/arch/arm/mach-imx/include/mach/devices-imx27.h
index 8ea7ea7eb3..0e1c90e697 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx27.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx27.h
@@ -3,87 +3,87 @@
 #include <mach/devices.h>
 #include <mach/imx27-regs.h>
 
-static inline struct device_d *imx27_add_spi0(struct spi_imx_master *pdata)
+static inline struct device *imx27_add_spi0(struct spi_imx_master *pdata)
 {
 	return imx_add_spi_imx27((void *)MX27_CSPI1_BASE_ADDR, 0, pdata);
 }
 
-static inline struct device_d *imx27_add_spi1(struct spi_imx_master *pdata)
+static inline struct device *imx27_add_spi1(struct spi_imx_master *pdata)
 {
 	return imx_add_spi_imx27((void *)MX27_CSPI2_BASE_ADDR, 1, pdata);
 }
 
-static inline struct device_d *imx27_add_i2c0(struct i2c_platform_data *pdata)
+static inline struct device *imx27_add_i2c0(struct i2c_platform_data *pdata)
 {
 	return imx_add_i2c((void *)MX27_I2C1_BASE_ADDR, 0, pdata);
 }
 
-static inline struct device_d *imx27_add_i2c1(struct i2c_platform_data *pdata)
+static inline struct device *imx27_add_i2c1(struct i2c_platform_data *pdata)
 {
 	return imx_add_i2c((void *)MX27_I2C2_BASE_ADDR, 1, pdata);
 }
 
-static inline struct device_d *imx27_add_uart0(void)
+static inline struct device *imx27_add_uart0(void)
 {
 	return imx_add_uart_imx21((void *)MX27_UART1_BASE_ADDR, 0);
 }
 
-static inline struct device_d *imx27_add_uart1(void)
+static inline struct device *imx27_add_uart1(void)
 {
 	return imx_add_uart_imx21((void *)MX27_UART2_BASE_ADDR, 1);
 }
 
-static inline struct device_d *imx27_add_uart2(void)
+static inline struct device *imx27_add_uart2(void)
 {
 	return imx_add_uart_imx21((void *)MX27_UART3_BASE_ADDR, 2);
 }
 
-static inline struct device_d *imx27_add_uart3(void)
+static inline struct device *imx27_add_uart3(void)
 {
 	return imx_add_uart_imx21((void *)MX27_UART4_BASE_ADDR, 3);
 }
 
-static inline struct device_d *imx27_add_nand(struct imx_nand_platform_data *pdata)
+static inline struct device *imx27_add_nand(struct imx_nand_platform_data *pdata)
 {
 	return imx_add_nand((void *)MX27_NFC_BASE_ADDR, pdata);
 }
 
-static inline struct device_d *imx27_add_fb(struct imx_fb_platform_data *pdata)
+static inline struct device *imx27_add_fb(struct imx_fb_platform_data *pdata)
 {
 	return imx_add_fb((void *)MX27_LCDC_BASE_ADDR, pdata);
 }
 
-static inline struct device_d *imx27_add_fec(struct fec_platform_data *pdata)
+static inline struct device *imx27_add_fec(struct fec_platform_data *pdata)
 {
 	return imx_add_fec_imx27((void *)MX27_FEC_BASE_ADDR, pdata);
 }
 
-static inline struct device_d *imx27_add_mmc0(void *pdata)
+static inline struct device *imx27_add_mmc0(void *pdata)
 {
 	return imx_add_mmc((void *)MX27_SDHC1_BASE_ADDR, 0, pdata);
 }
 
-static inline struct device_d *imx27_add_mmc1(void *pdata)
+static inline struct device *imx27_add_mmc1(void *pdata)
 {
 	return imx_add_mmc((void *)MX27_SDHC2_BASE_ADDR, 1, pdata);
 }
 
-static inline struct device_d *imx27_add_mmc2(void *pdata)
+static inline struct device *imx27_add_mmc2(void *pdata)
 {
 	return imx_add_mmc((void *)MX27_SDHC3_BASE_ADDR, 2, pdata);
 }
 
-static inline struct device_d *imx27_add_usbotg(void *pdata)
+static inline struct device *imx27_add_usbotg(void *pdata)
 {
 	return imx_add_usb((void *)MX27_USB_OTG_BASE_ADDR, 0, pdata);
 }
 
-static inline struct device_d *imx27_add_usbh1(void *pdata)
+static inline struct device *imx27_add_usbh1(void *pdata)
 {
 	return imx_add_usb((void *)MX27_USB_OTG_BASE_ADDR + 0x200, 1, pdata);
 }
 
-static inline struct device_d *imx27_add_usbh2(void *pdata)
+static inline struct device *imx27_add_usbh2(void *pdata)
 {
 	return imx_add_usb((void *)MX27_USB_OTG_BASE_ADDR + 0x400, 2, pdata);
 }
diff --git a/arch/arm/mach-imx/include/mach/devices-imx31.h b/arch/arm/mach-imx/include/mach/devices-imx31.h
index 37eacb0436..b926a6ac33 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx31.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx31.h
@@ -3,92 +3,92 @@
 #include <mach/imx31-regs.h>
 #include <mach/devices.h>
 
-static inline struct device_d *imx31_add_i2c0(void *pdata)
+static inline struct device *imx31_add_i2c0(void *pdata)
 {
 	return imx_add_i2c((void *)MX31_I2C1_BASE_ADDR, 0, pdata);
 }
 
-static inline struct device_d *imx31_add_i2c1(void *pdata)
+static inline struct device *imx31_add_i2c1(void *pdata)
 {
 	return imx_add_i2c((void *)MX31_I2C2_BASE_ADDR, 1, pdata);
 }
 
-static inline struct device_d *imx31_add_i2c2(void *pdata)
+static inline struct device *imx31_add_i2c2(void *pdata)
 {
 	return imx_add_i2c((void *)MX31_I2C3_BASE_ADDR, 2, pdata);
 }
 
-static inline struct device_d *imx31_add_spi0(struct spi_imx_master *pdata)
+static inline struct device *imx31_add_spi0(struct spi_imx_master *pdata)
 {
 	return imx_add_spi_imx35((void *)MX31_CSPI1_BASE_ADDR, 0, pdata);
 }
 
-static inline struct device_d *imx31_add_spi1(struct spi_imx_master *pdata)
+static inline struct device *imx31_add_spi1(struct spi_imx_master *pdata)
 {
 	return imx_add_spi_imx35((void *)MX31_CSPI2_BASE_ADDR, 1, pdata);
 }
 
-static inline struct device_d *imx31_add_spi2(struct spi_imx_master *pdata)
+static inline struct device *imx31_add_spi2(struct spi_imx_master *pdata)
 {
 	return imx_add_spi_imx35((void *)MX31_CSPI3_BASE_ADDR, 2, pdata);
 }
 
-static inline struct device_d *imx31_add_uart0(void)
+static inline struct device *imx31_add_uart0(void)
 {
 	return imx_add_uart_imx21((void *)MX31_UART1_BASE_ADDR, 0);
 }
 
-static inline struct device_d *imx31_add_uart1(void)
+static inline struct device *imx31_add_uart1(void)
 {
 	return imx_add_uart_imx21((void *)MX31_UART2_BASE_ADDR, 1);
 }
 
-static inline struct device_d *imx31_add_uart2(void)
+static inline struct device *imx31_add_uart2(void)
 {
 	return imx_add_uart_imx21((void *)MX31_UART3_BASE_ADDR, 2);
 }
 
-static inline struct device_d *imx31_add_uart3(void)
+static inline struct device *imx31_add_uart3(void)
 {
 	return imx_add_uart_imx21((void *)MX31_UART4_BASE_ADDR, 3);
 }
 
-static inline struct device_d *imx31_add_uart4(void)
+static inline struct device *imx31_add_uart4(void)
 {
 	return imx_add_uart_imx21((void *)MX31_UART5_BASE_ADDR, 4);
 }
 
-static inline struct device_d *imx31_add_nand(struct imx_nand_platform_data *pdata)
+static inline struct device *imx31_add_nand(struct imx_nand_platform_data *pdata)
 {
 	return imx_add_nand((void *)MX31_NFC_BASE_ADDR, pdata);
 }
 
-static inline struct device_d *imx31_add_fb(struct imx_ipu_fb_platform_data *pdata)
+static inline struct device *imx31_add_fb(struct imx_ipu_fb_platform_data *pdata)
 {
 	return imx_add_ipufb((void *)MX31_IPU_CTRL_BASE_ADDR, pdata);
 }
 
-static inline struct device_d *imx31_add_mmc0(void *pdata)
+static inline struct device *imx31_add_mmc0(void *pdata)
 {
 	return imx_add_mmc((void *)MX31_SDHC1_BASE_ADDR, 0, pdata);
 }
 
-static inline struct device_d *imx31_add_mmc1(void *pdata)
+static inline struct device *imx31_add_mmc1(void *pdata)
 {
 	return imx_add_mmc((void *)MX31_SDHC2_BASE_ADDR, 1, pdata);
 }
 
-static inline struct device_d *imx31_add_usbotg(void *pdata)
+static inline struct device *imx31_add_usbotg(void *pdata)
 {
 	return imx_add_usb((void *)MX31_USB_OTG_BASE_ADDR, 0, pdata);
 }
 
-static inline struct device_d *imx31_add_usbh1(void *pdata)
+static inline struct device *imx31_add_usbh1(void *pdata)
 {
 	return imx_add_usb((void *)MX31_USB_OTG_BASE_ADDR + 0x200, 1, pdata);
 }
 
-static inline struct device_d *imx31_add_usbh2(void *pdata)
+static inline struct device *imx31_add_usbh2(void *pdata)
 {
 	return imx_add_usb((void *)MX31_USB_OTG_BASE_ADDR + 0x400, 2, pdata);
 }
diff --git a/arch/arm/mach-imx/include/mach/devices-imx35.h b/arch/arm/mach-imx/include/mach/devices-imx35.h
index 04aa7775dd..a48641bdbb 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx35.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx35.h
@@ -3,72 +3,72 @@
 #include <mach/devices.h>
 #include <mach/imx35-regs.h>
 
-static inline struct device_d *imx35_add_i2c0(struct i2c_platform_data *pdata)
+static inline struct device *imx35_add_i2c0(struct i2c_platform_data *pdata)
 {
 	return imx_add_i2c((void *)MX35_I2C1_BASE_ADDR, 0, pdata);
 }
 
-static inline struct device_d *imx35_add_i2c1(struct i2c_platform_data *pdata)
+static inline struct device *imx35_add_i2c1(struct i2c_platform_data *pdata)
 {
 	return imx_add_i2c((void *)MX35_I2C2_BASE_ADDR, 1, pdata);
 }
 
-static inline struct device_d *imx35_add_i2c2(struct i2c_platform_data *pdata)
+static inline struct device *imx35_add_i2c2(struct i2c_platform_data *pdata)
 {
 	return imx_add_i2c((void *)MX35_I2C3_BASE_ADDR, 2, pdata);
 }
 
-static inline struct device_d *imx35_add_spi0(struct spi_imx_master *pdata)
+static inline struct device *imx35_add_spi0(struct spi_imx_master *pdata)
 {
 	return imx_add_spi_imx35((void *)MX35_CSPI1_BASE_ADDR, 0, pdata);
 }
 
-static inline struct device_d *imx35_add_spi(struct spi_imx_master *pdata)
+static inline struct device *imx35_add_spi(struct spi_imx_master *pdata)
 {
 	return imx_add_spi_imx35((void *)MX35_CSPI2_BASE_ADDR, 1, pdata);
 }
 
-static inline struct device_d *imx35_add_uart0(void)
+static inline struct device *imx35_add_uart0(void)
 {
 	return imx_add_uart_imx21((void *)MX35_UART1_BASE_ADDR, 0);
 }
 
-static inline struct device_d *imx35_add_uart1(void)
+static inline struct device *imx35_add_uart1(void)
 {
 	return imx_add_uart_imx21((void *)MX35_UART2_BASE_ADDR, 1);
 }
 
-static inline struct device_d *imx35_add_uart2(void)
+static inline struct device *imx35_add_uart2(void)
 {
 	return imx_add_uart_imx21((void *)MX35_UART3_BASE_ADDR, 2);
 }
 
-static inline struct device_d *imx35_add_nand(struct imx_nand_platform_data *pdata)
+static inline struct device *imx35_add_nand(struct imx_nand_platform_data *pdata)
 {
 	return imx_add_nand((void *)MX35_NFC_BASE_ADDR, pdata);
 }
 
-static inline struct device_d *imx35_add_fb(struct imx_ipu_fb_platform_data *pdata)
+static inline struct device *imx35_add_fb(struct imx_ipu_fb_platform_data *pdata)
 {
 	return imx_add_ipufb((void *)MX35_IPU_CTRL_BASE_ADDR, pdata);
 }
 
-static inline struct device_d *imx35_add_fec(struct fec_platform_data *pdata)
+static inline struct device *imx35_add_fec(struct fec_platform_data *pdata)
 {
 	return imx_add_fec_imx27((void *)MX35_FEC_BASE_ADDR, pdata);
 }
 
-static inline struct device_d *imx35_add_mmc0(struct esdhc_platform_data *pdata)
+static inline struct device *imx35_add_mmc0(struct esdhc_platform_data *pdata)
 {
 	return imx_add_esdhc_imx25((void *)MX35_ESDHC1_BASE_ADDR, 0, pdata);
 }
 
-static inline struct device_d *imx35_add_mmc1(struct esdhc_platform_data *pdata)
+static inline struct device *imx35_add_mmc1(struct esdhc_platform_data *pdata)
 {
 	return imx_add_esdhc_imx25((void *)MX35_ESDHC2_BASE_ADDR, 1, pdata);
 }
 
-static inline struct device_d *imx35_add_mmc2(struct esdhc_platform_data *pdata)
+static inline struct device *imx35_add_mmc2(struct esdhc_platform_data *pdata)
 {
 	return imx_add_esdhc_imx25((void *)MX35_ESDHC3_BASE_ADDR, 2, pdata);
 }
diff --git a/arch/arm/mach-imx/include/mach/devices-imx50.h b/arch/arm/mach-imx/include/mach/devices-imx50.h
index 5f534d4aec..ebfc9c07c1 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx50.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx50.h
@@ -3,82 +3,82 @@
 #include <mach/devices.h>
 #include <mach/imx50-regs.h>
 
-static inline struct device_d *imx50_add_spi0(struct spi_imx_master *pdata)
+static inline struct device *imx50_add_spi0(struct spi_imx_master *pdata)
 {
 	return imx_add_spi_imx51((void *)MX50_ECSPI1_BASE_ADDR, 0, pdata);
 }
 
-static inline struct device_d *imx50_add_spi1(struct spi_imx_master *pdata)
+static inline struct device *imx50_add_spi1(struct spi_imx_master *pdata)
 {
 	return imx_add_spi_imx51((void *)MX50_ECSPI2_BASE_ADDR, 1, pdata);
 }
 
-static inline struct device_d *imx50_add_cspi(struct spi_imx_master *pdata)
+static inline struct device *imx50_add_cspi(struct spi_imx_master *pdata)
 {
 	return imx_add_spi_imx35((void *)MX50_CSPI_BASE_ADDR, 2, pdata);
 }
 
-static inline struct device_d *imx50_add_i2c0(struct i2c_platform_data *pdata)
+static inline struct device *imx50_add_i2c0(struct i2c_platform_data *pdata)
 {
 	return imx_add_i2c((void *)MX50_I2C1_BASE_ADDR, 0, pdata);
 }
 
-static inline struct device_d *imx50_add_i2c1(struct i2c_platform_data *pdata)
+static inline struct device *imx50_add_i2c1(struct i2c_platform_data *pdata)
 {
 	return imx_add_i2c((void *)MX50_I2C2_BASE_ADDR, 1, pdata);
 }
 
-static inline struct device_d *imx50_add_i2c2(struct i2c_platform_data *pdata)
+static inline struct device *imx50_add_i2c2(struct i2c_platform_data *pdata)
 {
 	return imx_add_i2c((void *)MX50_I2C3_BASE_ADDR, 2, pdata);
 }
 
-static inline struct device_d *imx50_add_uart0(void)
+static inline struct device *imx50_add_uart0(void)
 {
 	return imx_add_uart_imx21((void *)MX50_UART1_BASE_ADDR, 0);
 }
 
-static inline struct device_d *imx50_add_uart1(void)
+static inline struct device *imx50_add_uart1(void)
 {
 	return imx_add_uart_imx21((void *)MX50_UART2_BASE_ADDR, 1);
 }
 
-static inline struct device_d *imx50_add_uart2(void)
+static inline struct device *imx50_add_uart2(void)
 {
 	return imx_add_uart_imx21((void *)MX50_UART3_BASE_ADDR, 2);
 }
 
-static inline struct device_d *imx50_add_uart3(void)
+static inline struct device *imx50_add_uart3(void)
 {
 	return imx_add_uart_imx21((void *)MX50_UART4_BASE_ADDR, 3);
 }
 
-static inline struct device_d *imx50_add_fec(struct fec_platform_data *pdata)
+static inline struct device *imx50_add_fec(struct fec_platform_data *pdata)
 {
 	return imx_add_fec_imx27((void *)MX50_FEC_BASE_ADDR, pdata);
 }
 
-static inline struct device_d *imx50_add_mmc0(struct esdhc_platform_data *pdata)
+static inline struct device *imx50_add_mmc0(struct esdhc_platform_data *pdata)
 {
 	return imx5_add_esdhc((void *)MX50_ESDHC1_BASE_ADDR, 0, pdata);
 }
 
-static inline struct device_d *imx50_add_mmc1(struct esdhc_platform_data *pdata)
+static inline struct device *imx50_add_mmc1(struct esdhc_platform_data *pdata)
 {
 	return imx5_add_esdhc((void *)MX50_ESDHC2_BASE_ADDR, 1, pdata);
 }
 
-static inline struct device_d *imx50_add_mmc2(struct esdhc_platform_data *pdata)
+static inline struct device *imx50_add_mmc2(struct esdhc_platform_data *pdata)
 {
 	return imx5_add_esdhc((void *)MX50_ESDHC3_BASE_ADDR, 2, pdata);
 }
 
-static inline struct device_d *imx50_add_mmc3(struct esdhc_platform_data *pdata)
+static inline struct device *imx50_add_mmc3(struct esdhc_platform_data *pdata)
 {
 	return imx5_add_esdhc((void *)MX50_ESDHC4_BASE_ADDR, 3, pdata);
 }
 
-static inline struct device_d *imx50_add_kpp(struct matrix_keymap_data *pdata)
+static inline struct device *imx50_add_kpp(struct matrix_keymap_data *pdata)
 {
 	return imx_add_kpp((void *)MX50_KPP_BASE_ADDR, pdata);
 }
diff --git a/arch/arm/mach-imx/include/mach/devices-imx51.h b/arch/arm/mach-imx/include/mach/devices-imx51.h
index 1a23632491..453ae9a0aa 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx51.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx51.h
@@ -4,67 +4,67 @@
 #include <mach/devices.h>
 #include <mach/imx51-regs.h>
 
-static inline struct device_d *imx51_add_spi0(struct spi_imx_master *pdata)
+static inline struct device *imx51_add_spi0(struct spi_imx_master *pdata)
 {
 	return imx_add_spi_imx51((void *)MX51_ECSPI1_BASE_ADDR, 0, pdata);
 }
 
-static inline struct device_d *imx51_add_spi1(struct spi_imx_master *pdata)
+static inline struct device *imx51_add_spi1(struct spi_imx_master *pdata)
 {
 	return imx_add_spi_imx51((void *)MX51_ECSPI2_BASE_ADDR, 1, pdata);
 }
 
-static inline struct device_d *imx51_add_cspi(struct spi_imx_master *pdata)
+static inline struct device *imx51_add_cspi(struct spi_imx_master *pdata)
 {
 	return imx_add_spi_imx35((void *)MX51_CSPI_BASE_ADDR, 2, pdata);
 }
 
-static inline struct device_d *imx51_add_i2c0(struct i2c_platform_data *pdata)
+static inline struct device *imx51_add_i2c0(struct i2c_platform_data *pdata)
 {
 	return imx_add_i2c((void *)MX51_I2C1_BASE_ADDR, 0, pdata);
 }
 
-static inline struct device_d *imx51_add_i2c1(struct i2c_platform_data *pdata)
+static inline struct device *imx51_add_i2c1(struct i2c_platform_data *pdata)
 {
 	return imx_add_i2c((void *)MX51_I2C2_BASE_ADDR, 1, pdata);
 }
 
-static inline struct device_d *imx51_add_uart0(void)
+static inline struct device *imx51_add_uart0(void)
 {
 	return imx_add_uart_imx21((void *)MX51_UART1_BASE_ADDR, 0);
 }
 
-static inline struct device_d *imx51_add_uart1(void)
+static inline struct device *imx51_add_uart1(void)
 {
 	return imx_add_uart_imx21((void *)MX51_UART2_BASE_ADDR, 1);
 }
 
-static inline struct device_d *imx51_add_uart2(void)
+static inline struct device *imx51_add_uart2(void)
 {
 	return imx_add_uart_imx21((void *)MX51_UART3_BASE_ADDR, 2);
 }
 
-static inline struct device_d *imx51_add_fec(struct fec_platform_data *pdata)
+static inline struct device *imx51_add_fec(struct fec_platform_data *pdata)
 {
 	return imx_add_fec_imx27((void *)MX51_MXC_FEC_BASE_ADDR, pdata);
 }
 
-static inline struct device_d *imx51_add_mmc0(struct esdhc_platform_data *pdata)
+static inline struct device *imx51_add_mmc0(struct esdhc_platform_data *pdata)
 {
 	return imx_add_esdhc_imx5((void *)MX51_MMC_SDHC1_BASE_ADDR, 0, pdata);
 }
 
-static inline struct device_d *imx51_add_mmc1(struct esdhc_platform_data *pdata)
+static inline struct device *imx51_add_mmc1(struct esdhc_platform_data *pdata)
 {
 	return imx_add_esdhc_imx5((void *)MX51_MMC_SDHC2_BASE_ADDR, 1, pdata);
 }
 
-static inline struct device_d *imx51_add_mmc2(struct esdhc_platform_data *pdata)
+static inline struct device *imx51_add_mmc2(struct esdhc_platform_data *pdata)
 {
 	return imx_add_esdhc_imx5((void *)MX51_MMC_SDHC3_BASE_ADDR, 2, pdata);
 }
 
-static inline struct device_d *imx51_add_nand(struct imx_nand_platform_data *pdata)
+static inline struct device *imx51_add_nand(struct imx_nand_platform_data *pdata)
 {
 	struct resource res[] = {
 		{
@@ -77,7 +77,7 @@ static inline struct device_d *imx51_add_nand(struct imx_nand_platform_data *pda
 			.flags = IORESOURCE_MEM,
 		},
 	};
-	struct device_d *dev = xzalloc(sizeof(*dev));
+	struct device *dev = xzalloc(sizeof(*dev));
 
 	dev->resource = xzalloc(sizeof(struct resource) * ARRAY_SIZE(res));
 	memcpy(dev->resource, res, sizeof(struct resource) * ARRAY_SIZE(res));
@@ -91,27 +91,27 @@ static inline struct device_d *imx51_add_nand(struct imx_nand_platform_data *pda
 	return dev;
 }
 
-static inline struct device_d *imx51_add_kpp(struct matrix_keymap_data *pdata)
+static inline struct device *imx51_add_kpp(struct matrix_keymap_data *pdata)
 {
 	return imx_add_kpp((void *)MX51_KPP_BASE_ADDR, pdata);
 }
 
-static inline struct device_d *imx51_add_pata(void)
+static inline struct device *imx51_add_pata(void)
 {
 	return imx_add_pata((void *)MX51_ATA_BASE_ADDR);
 }
 
-static inline struct device_d *imx51_add_usbotg(void *pdata)
+static inline struct device *imx51_add_usbotg(void *pdata)
 {
 	return imx_add_usb((void *)MX51_OTG_BASE_ADDR, 0, pdata);
 }
 
-static inline struct device_d *imx51_add_usbh1(void *pdata)
+static inline struct device *imx51_add_usbh1(void *pdata)
 {
 	return imx_add_usb((void *)MX51_OTG_BASE_ADDR + 0x200, 1, pdata);
 }
 
-static inline struct device_d *imx51_add_usbh2(void *pdata)
+static inline struct device *imx51_add_usbh2(void *pdata)
 {
 	return imx_add_usb((void *)MX51_OTG_BASE_ADDR + 0x400, 2, pdata);
 }
diff --git a/arch/arm/mach-imx/include/mach/devices-imx53.h b/arch/arm/mach-imx/include/mach/devices-imx53.h
index 7b96fb3e27..392687a191 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx53.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx53.h
@@ -3,87 +3,87 @@
 #include <mach/devices.h>
 #include <mach/imx53-regs.h>
 
-static inline struct device_d *imx53_add_cspi(struct spi_imx_master *pdata)
+static inline struct device *imx53_add_cspi(struct spi_imx_master *pdata)
 {
 	return imx_add_spi_imx35((void *)MX53_CSPI_BASE_ADDR, 0, pdata);
 }
 
-static inline struct device_d *imx53_add_spi0(struct spi_imx_master *pdata)
+static inline struct device *imx53_add_spi0(struct spi_imx_master *pdata)
 {
 	return imx_add_spi_imx51((void *)MX53_ECSPI1_BASE_ADDR, 0, pdata);
 }
 
-static inline struct device_d *imx53_add_spi1(struct spi_imx_master *pdata)
+static inline struct device *imx53_add_spi1(struct spi_imx_master *pdata)
 {
 	return imx_add_spi_imx51((void *)MX53_ECSPI2_BASE_ADDR, 1, pdata);
 }
 
-static inline struct device_d *imx53_add_i2c0(struct i2c_platform_data *pdata)
+static inline struct device *imx53_add_i2c0(struct i2c_platform_data *pdata)
 {
 	return imx_add_i2c((void *)MX53_I2C1_BASE_ADDR, 0, pdata);
 }
 
-static inline struct device_d *imx53_add_i2c1(struct i2c_platform_data *pdata)
+static inline struct device *imx53_add_i2c1(struct i2c_platform_data *pdata)
 {
 	return imx_add_i2c((void *)MX53_I2C2_BASE_ADDR, 1, pdata);
 }
 
-static inline struct device_d *imx53_add_i2c2(struct i2c_platform_data *pdata)
+static inline struct device *imx53_add_i2c2(struct i2c_platform_data *pdata)
 {
        return imx_add_i2c((void *)MX53_I2C3_BASE_ADDR, 2, pdata);
 }
 
-static inline struct device_d *imx53_add_uart0(void)
+static inline struct device *imx53_add_uart0(void)
 {
 	return imx_add_uart_imx21((void *)MX53_UART1_BASE_ADDR, 0);
 }
 
-static inline struct device_d *imx53_add_uart1(void)
+static inline struct device *imx53_add_uart1(void)
 {
 	return imx_add_uart_imx21((void *)MX53_UART2_BASE_ADDR, 1);
 }
 
-static inline struct device_d *imx53_add_uart2(void)
+static inline struct device *imx53_add_uart2(void)
 {
 	return imx_add_uart_imx21((void *)MX53_UART3_BASE_ADDR, 2);
 }
 
-static inline struct device_d *imx53_add_uart3(void)
+static inline struct device *imx53_add_uart3(void)
 {
 	return imx_add_uart_imx21((void *)MX53_UART4_BASE_ADDR, 3);
 }
 
-static inline struct device_d *imx53_add_fec(struct fec_platform_data *pdata)
+static inline struct device *imx53_add_fec(struct fec_platform_data *pdata)
 {
 	return imx_add_fec_imx27((void *)MX53_FEC_BASE_ADDR, pdata);
 }
 
-static inline struct device_d *imx53_add_mmc0(struct esdhc_platform_data *pdata)
+static inline struct device *imx53_add_mmc0(struct esdhc_platform_data *pdata)
 {
 	return imx_add_esdhc_imx5((void *)MX53_ESDHC1_BASE_ADDR, 0, pdata);
 }
 
-static inline struct device_d *imx53_add_mmc1(struct esdhc_platform_data *pdata)
+static inline struct device *imx53_add_mmc1(struct esdhc_platform_data *pdata)
 {
 	return imx_add_esdhc_imx5((void *)MX53_ESDHC2_BASE_ADDR, 1, pdata);
 }
 
-static inline struct device_d *imx53_add_mmc2(struct esdhc_platform_data *pdata)
+static inline struct device *imx53_add_mmc2(struct esdhc_platform_data *pdata)
 {
 	return imx_add_esdhc_imx5((void *)MX53_ESDHC3_BASE_ADDR, 2, pdata);
 }
 
-static inline struct device_d *imx53_add_mmc3(struct esdhc_platform_data *pdata)
+static inline struct device *imx53_add_mmc3(struct esdhc_platform_data *pdata)
 {
 	return imx_add_esdhc_imx5((void *)MX53_ESDHC4_BASE_ADDR, 3, pdata);
 }
 
-static inline struct device_d *imx53_add_kpp(struct matrix_keymap_data *pdata)
+static inline struct device *imx53_add_kpp(struct matrix_keymap_data *pdata)
 {
 	return imx_add_kpp((void *)MX53_KPP_BASE_ADDR, pdata);
 }
 
-static inline struct device_d *imx53_add_sata(void)
+static inline struct device *imx53_add_sata(void)
 {
 	return add_generic_device("imx53-sata", 0, NULL, MX53_SATA_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 }
diff --git a/arch/arm/mach-imx/include/mach/devices-imx6.h b/arch/arm/mach-imx/include/mach/devices-imx6.h
index 981dd1c7ca..38a940391e 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx6.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx6.h
@@ -3,77 +3,77 @@
 #include <mach/devices.h>
 #include <mach/imx6-regs.h>
 
-static inline struct device_d *imx6_add_uart0(void)
+static inline struct device *imx6_add_uart0(void)
 {
 	return imx_add_uart_imx21((void *)MX6_UART1_BASE_ADDR, 0);
 }
 
-static inline struct device_d *imx6_add_uart1(void)
+static inline struct device *imx6_add_uart1(void)
 {
 	return imx_add_uart_imx21((void *)MX6_UART2_BASE_ADDR, 1);
 }
 
-static inline struct device_d *imx6_add_uart2(void)
+static inline struct device *imx6_add_uart2(void)
 {
 	return imx_add_uart_imx21((void *)MX6_UART3_BASE_ADDR, 2);
 }
 
-static inline struct device_d *imx6_add_uart3(void)
+static inline struct device *imx6_add_uart3(void)
 {
 	return imx_add_uart_imx21((void *)MX6_UART4_BASE_ADDR, 3);
 }
 
-static inline struct device_d *imx6_add_fec(struct fec_platform_data *pdata)
+static inline struct device *imx6_add_fec(struct fec_platform_data *pdata)
 {
 	return imx_add_fec_imx6((void *)MX6_ENET_BASE_ADDR, pdata);
 }
 
-static inline struct device_d *imx6_add_spi0(struct spi_imx_master *pdata)
+static inline struct device *imx6_add_spi0(struct spi_imx_master *pdata)
 {
 	return imx_add_spi_imx51((void *)MX6_ECSPI1_BASE_ADDR, 0, pdata);
 }
 
-static inline struct device_d *imx6_add_spi1(struct spi_imx_master *pdata)
+static inline struct device *imx6_add_spi1(struct spi_imx_master *pdata)
 {
 	return imx_add_spi_imx51((void *)MX6_ECSPI2_BASE_ADDR, 1, pdata);
 }
 
-static inline struct device_d *imx6_add_spi2(struct spi_imx_master *pdata)
+static inline struct device *imx6_add_spi2(struct spi_imx_master *pdata)
 {
 	return imx_add_spi_imx51((void *)MX6_ECSPI3_BASE_ADDR, 2, pdata);
 }
 
-static inline struct device_d *imx6_add_spi3(struct spi_imx_master *pdata)
+static inline struct device *imx6_add_spi3(struct spi_imx_master *pdata)
 {
 	return imx_add_spi_imx51((void *)MX6_ECSPI4_BASE_ADDR, 3, pdata);
 }
 
-static inline struct device_d *imx6_add_spi4(struct spi_imx_master *pdata)
+static inline struct device *imx6_add_spi4(struct spi_imx_master *pdata)
 {
 	return imx_add_spi_imx51((void *)MX6_ECSPI5_BASE_ADDR, 4, pdata);
 }
 
-static inline struct device_d *imx6_add_i2c0(struct i2c_platform_data *pdata)
+static inline struct device *imx6_add_i2c0(struct i2c_platform_data *pdata)
 {
 	return imx_add_i2c((void *)MX6_I2C1_BASE_ADDR, 0, pdata);
 }
 
-static inline struct device_d *imx6_add_i2c1(struct i2c_platform_data *pdata)
+static inline struct device *imx6_add_i2c1(struct i2c_platform_data *pdata)
 {
 	return imx_add_i2c((void *)MX6_I2C2_BASE_ADDR, 1, pdata);
 }
 
-static inline struct device_d *imx6_add_i2c2(struct i2c_platform_data *pdata)
+static inline struct device *imx6_add_i2c2(struct i2c_platform_data *pdata)
 {
 	return imx_add_i2c((void *)MX6_I2C3_BASE_ADDR, 2, pdata);
 }
 
-static inline struct device_d *imx6_add_sata(void)
+static inline struct device *imx6_add_sata(void)
 {
 	return add_generic_device("imx6-sata", 0, NULL, MX6_SATA_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 }
 
-static inline struct device_d *imx6_add_usbotg(void *pdata)
+static inline struct device *imx6_add_usbotg(void *pdata)
 {
 	add_generic_device("imx-usb-phy", 0, NULL, MX6_USBPHY1_BASE_ADDR, 0x1000,
 			IORESOURCE_MEM, NULL);
@@ -81,7 +81,7 @@ static inline struct device_d *imx6_add_usbotg(void *pdata)
 	return imx_add_usb((void *)MX6_USBOH3_USB_BASE_ADDR, 0, pdata);
 }
 
-static inline struct device_d *imx6_add_usbh1(void *pdata)
+static inline struct device *imx6_add_usbh1(void *pdata)
 {
 	add_generic_device("imx-usb-phy", 1, NULL, MX6_USBPHY2_BASE_ADDR, 0x1000,
 			IORESOURCE_MEM, NULL);
@@ -89,12 +89,12 @@ static inline struct device_d *imx6_add_usbh1(void *pdata)
 	return imx_add_usb((void *)MX6_USBOH3_USB_BASE_ADDR + 0x200, 1, pdata);
 }
 
-static inline struct device_d *imx6_add_usbh2(void *pdata)
+static inline struct device *imx6_add_usbh2(void *pdata)
 {
 	return imx_add_usb((void *)MX6_USBOH3_USB_BASE_ADDR + 0x400, 2, pdata);
 }
 
-static inline struct device_d *imx6_add_usbh3(void *pdata)
+static inline struct device *imx6_add_usbh3(void *pdata)
 {
 	return imx_add_usb((void *)MX6_USBOH3_USB_BASE_ADDR + 0x600, 2, pdata);
 }
diff --git a/arch/arm/mach-imx/include/mach/devices.h b/arch/arm/mach-imx/include/mach/devices.h
index 45da5bb6cc..3f785548ff 100644
--- a/arch/arm/mach-imx/include/mach/devices.h
+++ b/arch/arm/mach-imx/include/mach/devices.h
@@ -10,20 +10,20 @@
 #include <platform_data/mmc-esdhc-imx.h>
 #include <usb/chipidea-imx.h>
 
-struct device_d *imx_add_fec_imx27(void *base, struct fec_platform_data *pdata);
-struct device_d *imx_add_fec_imx6(void *base, struct fec_platform_data *pdata);
-struct device_d *imx_add_spi_imx27(void *base, int id, struct spi_imx_master *pdata);
-struct device_d *imx_add_spi_imx35(void *base, int id, struct spi_imx_master *pdata);
-struct device_d *imx_add_spi_imx51(void *base, int id, struct spi_imx_master *pdata);
-struct device_d *imx_add_i2c(void *base, int id, struct i2c_platform_data *pdata);
-struct device_d *imx_add_uart_imx1(void *base, int id);
-struct device_d *imx_add_uart_imx21(void *base, int id);
-struct device_d *imx_add_nand(void *base, struct imx_nand_platform_data *pdata);
-struct device_d *imx_add_fb(void *base, struct imx_fb_platform_data *pdata);
-struct device_d *imx_add_ipufb(void *base, struct imx_ipu_fb_platform_data *pdata);
-struct device_d *imx_add_mmc(void *base, int id, void *pdata);
-struct device_d *imx_add_esdhc_imx25(void *base, int id, struct esdhc_platform_data *pdata);
-struct device_d *imx_add_esdhc_imx5(void *base, int id, struct esdhc_platform_data *pdata);
-struct device_d *imx_add_kpp(void *base, struct matrix_keymap_data *pdata);
-struct device_d *imx_add_pata(void *base);
-struct device_d *imx_add_usb(void *base, int id, struct imxusb_platformdata *pdata);
+struct device *imx_add_fec_imx27(void *base, struct fec_platform_data *pdata);
+struct device *imx_add_fec_imx6(void *base, struct fec_platform_data *pdata);
+struct device *imx_add_spi_imx27(void *base, int id, struct spi_imx_master *pdata);
+struct device *imx_add_spi_imx35(void *base, int id, struct spi_imx_master *pdata);
+struct device *imx_add_spi_imx51(void *base, int id, struct spi_imx_master *pdata);
+struct device *imx_add_i2c(void *base, int id, struct i2c_platform_data *pdata);
+struct device *imx_add_uart_imx1(void *base, int id);
+struct device *imx_add_uart_imx21(void *base, int id);
+struct device *imx_add_nand(void *base, struct imx_nand_platform_data *pdata);
+struct device *imx_add_fb(void *base, struct imx_fb_platform_data *pdata);
+struct device *imx_add_ipufb(void *base, struct imx_ipu_fb_platform_data *pdata);
+struct device *imx_add_mmc(void *base, int id, void *pdata);
+struct device *imx_add_esdhc_imx25(void *base, int id, struct esdhc_platform_data *pdata);
+struct device *imx_add_esdhc_imx5(void *base, int id, struct esdhc_platform_data *pdata);
+struct device *imx_add_kpp(void *base, struct matrix_keymap_data *pdata);
+struct device *imx_add_pata(void *base);
+struct device *imx_add_usb(void *base, int id, struct imxusb_platformdata *pdata);
diff --git a/arch/arm/mach-imx/src.c b/arch/arm/mach-imx/src.c
index 8272d5b720..fbbea6bd47 100644
--- a/arch/arm/mach-imx/src.c
+++ b/arch/arm/mach-imx/src.c
@@ -10,7 +10,7 @@
 
 #define SCR_WARM_RESET_ENABLE	BIT(0)
 
-static int imx_src_reset_probe(struct device_d *dev)
+static int imx_src_reset_probe(struct device *dev)
 {
 	struct resource *res;
 	u32 val;
diff --git a/arch/arm/mach-mxs/include/mach/devices.h b/arch/arm/mach-mxs/include/mach/devices.h
index 4743a4a8c0..c23f484973 100644
--- a/arch/arm/mach-mxs/include/mach/devices.h
+++ b/arch/arm/mach-mxs/include/mach/devices.h
@@ -9,7 +9,7 @@
 #include <driver.h>
 #include <mach/imx-regs.h>
 
-static inline struct device_d *mxs_add_nand(unsigned long gpmi_base, unsigned long bch_base)
+static inline struct device *mxs_add_nand(unsigned long gpmi_base, unsigned long bch_base)
 {
 	struct resource res[] = {
 		{
@@ -23,7 +23,7 @@ static inline struct device_d *mxs_add_nand(unsigned long gpmi_base, unsigned lo
 		},
 	};
 
-	struct device_d *dev = xzalloc(sizeof(*dev));
+	struct device *dev = xzalloc(sizeof(*dev));
 
 	dev->resource = xzalloc(sizeof(struct resource) * ARRAY_SIZE(res));
 	memcpy(dev->resource, res, sizeof(struct resource) * ARRAY_SIZE(res));
@@ -36,12 +36,12 @@ static inline struct device_d *mxs_add_nand(unsigned long gpmi_base, unsigned lo
 	return dev;
 };
 
-static inline struct device_d *imx23_add_nand(void)
+static inline struct device *imx23_add_nand(void)
 {
 	return mxs_add_nand(MXS_GPMI_BASE, MXS_BCH_BASE);
 }
 
-static inline struct device_d *imx28_add_nand(void)
+static inline struct device *imx28_add_nand(void)
 {
 	return mxs_add_nand(MXS_GPMI_BASE, MXS_BCH_BASE);
 }
diff --git a/arch/arm/mach-mxs/ocotp.c b/arch/arm/mach-mxs/ocotp.c
index 9bcd913cc1..1a094c6f98 100644
--- a/arch/arm/mach-mxs/ocotp.c
+++ b/arch/arm/mach-mxs/ocotp.c
@@ -36,7 +36,7 @@
 #define OCOTP_WORD_OFFSET		0x20
 
 struct ocotp_priv {
-	struct device_d dev;
+	struct device dev;
 	struct cdev cdev;
 	void __iomem *base;
 	unsigned int write_enable;
@@ -169,7 +169,7 @@ static struct cdev_operations mxs_ocotp_ops = {
 	.read	= mxs_ocotp_cdev_read,
 };
 
-static int mxs_ocotp_probe(struct device_d *dev)
+static int mxs_ocotp_probe(struct device *dev)
 {
 	struct resource *iores;
 	int err;
diff --git a/arch/arm/mach-omap/am33xx_generic.c b/arch/arm/mach-omap/am33xx_generic.c
index 7f9a2bcf37..94fe26b2b2 100644
--- a/arch/arm/mach-omap/am33xx_generic.c
+++ b/arch/arm/mach-omap/am33xx_generic.c
@@ -419,7 +419,7 @@ void am33xx_select_rmii2_crs_dv(void)
 
 int am33xx_of_register_bootdevice(void)
 {
-	struct device_d *dev;
+	struct device *dev;
 
 	switch (bootsource_get()) {
 	case BOOTSOURCE_MMC:
diff --git a/arch/arm/mach-omap/am33xx_scrm.c b/arch/arm/mach-omap/am33xx_scrm.c
index e10e80ce31..dfe6253086 100644
--- a/arch/arm/mach-omap/am33xx_scrm.c
+++ b/arch/arm/mach-omap/am33xx_scrm.c
@@ -23,7 +23,7 @@
 #include <mach/am33xx-silicon.h>
 #include <mach/emif4.h>
 
-static int am33xx_scrm_probe(struct device_d *dev)
+static int am33xx_scrm_probe(struct device *dev)
 {
 	return arm_add_mem_device("ram0", 0x80000000,
 				  emif4_sdram_size(IOMEM(AM33XX_EMIF4_BASE)));
diff --git a/arch/arm/mach-omap/include/mach/devices.h b/arch/arm/mach-omap/include/mach/devices.h
index 06fd2a8dd3..0549dbb2f1 100644
--- a/arch/arm/mach-omap/include/mach/devices.h
+++ b/arch/arm/mach-omap/include/mach/devices.h
@@ -10,8 +10,8 @@ void omap_add_ram0(resource_size_t size);
 
 void omap_add_sram0(resource_size_t base, resource_size_t size);
 
-struct device_d *omap_add_uart(int id, unsigned long base);
+struct device *omap_add_uart(int id, unsigned long base);
 
-struct device_d *omap_add_display(struct omapfb_platform_data *o_pdata);
+struct device *omap_add_display(struct omapfb_platform_data *o_pdata);
 
 #endif /* __MACH_OMAP_DEVICES_H */
diff --git a/arch/arm/mach-omap/include/mach/omap3-devices.h b/arch/arm/mach-omap/include/mach/omap3-devices.h
index 5d7bc8bf1e..16ef2184db 100644
--- a/arch/arm/mach-omap/include/mach/omap3-devices.h
+++ b/arch/arm/mach-omap/include/mach/omap3-devices.h
@@ -18,84 +18,84 @@ static inline void omap3_add_sram0(void)
 
 /* the device numbering is the same as in the device tree */
 
-static inline struct device_d *omap3_add_spi(int id, resource_size_t start)
+static inline struct device *omap3_add_spi(int id, resource_size_t start)
 {
 	return add_generic_device("omap3_spi", id, NULL, start, SZ_4K,
 				   IORESOURCE_MEM, NULL);
 }
 
-static inline struct device_d *omap3_add_spi1(void)
+static inline struct device *omap3_add_spi1(void)
 {
 	return omap3_add_spi(1, OMAP3_MCSPI1_BASE);
 }
 
-static inline struct device_d *omap3_add_spi2(void)
+static inline struct device *omap3_add_spi2(void)
 {
 	return omap3_add_spi(2, OMAP3_MCSPI2_BASE);
 }
 
-static inline struct device_d *omap3_add_spi3(void)
+static inline struct device *omap3_add_spi3(void)
 {
 	return omap3_add_spi(3, OMAP3_MCSPI3_BASE);
 }
 
-static inline struct device_d *omap3_add_spi4(void)
+static inline struct device *omap3_add_spi4(void)
 {
 	return omap3_add_spi(4, OMAP3_MCSPI4_BASE);
 }
 
-static inline struct device_d *omap3_add_uart1(void)
+static inline struct device *omap3_add_uart1(void)
 {
 	return omap_add_uart(0, OMAP3_UART1_BASE);
 }
 
-static inline struct device_d *omap3_add_uart2(void)
+static inline struct device *omap3_add_uart2(void)
 {
 	return omap_add_uart(1, OMAP3_UART2_BASE);
 }
 
-static inline struct device_d *omap3_add_uart3(void)
+static inline struct device *omap3_add_uart3(void)
 {
 	return omap_add_uart(2, OMAP3_UART3_BASE);
 }
 
-static inline struct device_d *omap3_add_mmc1(struct omap_hsmmc_platform_data *pdata)
+static inline struct device *omap3_add_mmc1(struct omap_hsmmc_platform_data *pdata)
 {
 	return add_generic_device("omap3-hsmmc", 0, NULL,
 			OMAP3_MMC1_BASE, SZ_4K, IORESOURCE_MEM, pdata);
 }
 
-static inline struct device_d *omap3_add_mmc2(struct omap_hsmmc_platform_data *pdata)
+static inline struct device *omap3_add_mmc2(struct omap_hsmmc_platform_data *pdata)
 {
 	return add_generic_device("omap3-hsmmc", 1, NULL,
 			OMAP3_MMC2_BASE, SZ_4K, IORESOURCE_MEM, pdata);
 }
 
-static inline struct device_d *omap3_add_mmc3(struct omap_hsmmc_platform_data *pdata)
+static inline struct device *omap3_add_mmc3(struct omap_hsmmc_platform_data *pdata)
 {
 	return add_generic_device("omap3-hsmmc", 2, NULL,
 			OMAP3_MMC3_BASE, SZ_4K, IORESOURCE_MEM, pdata);
 }
 
-static inline struct device_d *omap3_add_i2c1(void *pdata)
+static inline struct device *omap3_add_i2c1(void *pdata)
 {
 	return add_generic_device("i2c-omap3", 0, NULL, OMAP3_I2C1_BASE,
 			SZ_4K, IORESOURCE_MEM, pdata);
 }
 
-static inline struct device_d *omap3_add_i2c2(void *pdata)
+static inline struct device *omap3_add_i2c2(void *pdata)
 {
 	return add_generic_device("i2c-omap3", 1, NULL, OMAP3_I2C2_BASE,
 			SZ_4K, IORESOURCE_MEM, pdata);
 }
 
-static inline struct device_d *omap3_add_i2c3(void *pdata)
+static inline struct device *omap3_add_i2c3(void *pdata)
 {
 	return add_generic_device("i2c-omap3", 2, NULL, OMAP3_I2C3_BASE,
 			SZ_4K, IORESOURCE_MEM, pdata);
 }
 
-static inline struct device_d *omap3_add_ehci(void *pdata)
+static inline struct device *omap3_add_ehci(void *pdata)
 {
 	return add_usb_ehci_device(DEVICE_ID_DYNAMIC, OMAP3_EHCI_BASE,
 					OMAP3_EHCI_BASE + 0x10, pdata);
diff --git a/arch/arm/mach-omap/include/mach/omap4-devices.h b/arch/arm/mach-omap/include/mach/omap4-devices.h
index 22a1eb79fc..530132998c 100644
--- a/arch/arm/mach-omap/include/mach/omap4-devices.h
+++ b/arch/arm/mach-omap/include/mach/omap4-devices.h
@@ -15,76 +15,76 @@ static inline void omap44xx_add_sram0(void)
 	return omap_add_sram0(OMAP44XX_SRAM_BASE, 48 * SZ_1K);
 }
 
-static inline struct device_d *omap44xx_add_uart1(void)
+static inline struct device *omap44xx_add_uart1(void)
 {
 	return omap_add_uart(0, OMAP44XX_UART1_BASE);
 }
 
-static inline struct device_d *omap44xx_add_uart2(void)
+static inline struct device *omap44xx_add_uart2(void)
 {
 	return omap_add_uart(1, OMAP44XX_UART2_BASE);
 }
 
-static inline struct device_d *omap44xx_add_uart3(void)
+static inline struct device *omap44xx_add_uart3(void)
 {
 	return omap_add_uart(2, OMAP44XX_UART3_BASE);
 }
 
-static inline struct device_d *omap44xx_add_mmc1(struct omap_hsmmc_platform_data *pdata)
+static inline struct device *omap44xx_add_mmc1(struct omap_hsmmc_platform_data *pdata)
 {
 	return add_generic_device("omap4-hsmmc", 0, NULL,
 			OMAP44XX_MMC1_BASE, SZ_4K, IORESOURCE_MEM, pdata);
 }
 
-static inline struct device_d *omap44xx_add_mmc2(struct omap_hsmmc_platform_data *pdata)
+static inline struct device *omap44xx_add_mmc2(struct omap_hsmmc_platform_data *pdata)
 {
 	return add_generic_device("omap4-hsmmc", 1, NULL,
 			OMAP44XX_MMC2_BASE, SZ_4K, IORESOURCE_MEM, pdata);
 }
 
-static inline struct device_d *omap44xx_add_mmc3(struct omap_hsmmc_platform_data *pdata)
+static inline struct device *omap44xx_add_mmc3(struct omap_hsmmc_platform_data *pdata)
 {
 	return add_generic_device("omap4-hsmmc", 2, NULL,
 			OMAP44XX_MMC3_BASE, SZ_4K, IORESOURCE_MEM, pdata);
 }
 
-static inline struct device_d *omap44xx_add_mmc4(struct omap_hsmmc_platform_data *pdata)
+static inline struct device *omap44xx_add_mmc4(struct omap_hsmmc_platform_data *pdata)
 {
 	return add_generic_device("omap4-hsmmc", 3, NULL,
 			OMAP44XX_MMC4_BASE, SZ_4K, IORESOURCE_MEM, pdata);
 }
 
-static inline struct device_d *omap44xx_add_mmc5(struct omap_hsmmc_platform_data *pdata)
+static inline struct device *omap44xx_add_mmc5(struct omap_hsmmc_platform_data *pdata)
 {
 	return add_generic_device("omap4-hsmmc", 4, NULL,
 			OMAP44XX_MMC5_BASE, SZ_4K, IORESOURCE_MEM, pdata);
 }
 
-static inline struct device_d *omap44xx_add_i2c1(void *pdata)
+static inline struct device *omap44xx_add_i2c1(void *pdata)
 {
 	return add_generic_device("i2c-omap4", 0, NULL, OMAP44XX_I2C1_BASE,
 			SZ_4K, IORESOURCE_MEM, pdata);
 }
 
-static inline struct device_d *omap44xx_add_i2c2(void *pdata)
+static inline struct device *omap44xx_add_i2c2(void *pdata)
 {
 	return add_generic_device("i2c-omap4", 1, NULL, OMAP44XX_I2C2_BASE,
 			SZ_4K, IORESOURCE_MEM, pdata);
 }
 
-static inline struct device_d *omap44xx_add_i2c3(void *pdata)
+static inline struct device *omap44xx_add_i2c3(void *pdata)
 {
 	return add_generic_device("i2c-omap4", 2, NULL, OMAP44XX_I2C3_BASE,
 			SZ_4K, IORESOURCE_MEM, pdata);
 }
 
-static inline struct device_d *omap44xx_add_i2c4(void *pdata)
+static inline struct device *omap44xx_add_i2c4(void *pdata)
 {
 	return add_generic_device("i2c-omap4", 3, NULL, OMAP44XX_I2C4_BASE,
 			SZ_4K, IORESOURCE_MEM, pdata);
 }
 
-static inline struct device_d *omap44xx_add_ehci(void *pdata)
+static inline struct device *omap44xx_add_ehci(void *pdata)
 {
 	return add_usb_ehci_device(DEVICE_ID_DYNAMIC, OMAP44XX_EHCI_BASE,
 				OMAP44XX_EHCI_BASE + 0x10, pdata);
diff --git a/arch/arm/mach-omap/omap_devices.c b/arch/arm/mach-omap/omap_devices.c
index 022616ba54..15a4618931 100644
--- a/arch/arm/mach-omap/omap_devices.c
+++ b/arch/arm/mach-omap/omap_devices.c
@@ -15,7 +15,7 @@ void omap_add_sram0(resource_size_t base, resource_size_t size)
 	add_mem_device("sram0", base, size, IORESOURCE_MEM_WRITEABLE);
 }
 
-struct device_d *omap_add_uart(int id, unsigned long base)
+struct device *omap_add_uart(int id, unsigned long base)
 {
 	return add_generic_device("omap-uart", id, NULL, base, 1024,
 				  IORESOURCE_MEM | IORESOURCE_MEM_8BIT, NULL);
@@ -36,7 +36,7 @@ static struct resource omapfb_resources[] = {
 	},
 };
 
-struct device_d *omap_add_display(struct omapfb_platform_data *o_pdata)
+struct device *omap_add_display(struct omapfb_platform_data *o_pdata)
 {
 	return add_generic_device_res("omap_fb", -1,
 				      omapfb_resources,
@@ -44,7 +44,7 @@ struct device_d *omap_add_display(struct omapfb_platform_data *o_pdata)
 				      o_pdata);
 }
 #else
-struct device_d *omap_add_display(struct omapfb_platform_data *o_pdata)
+struct device *omap_add_display(struct omapfb_platform_data *o_pdata)
 {
 	return NULL;
 }
diff --git a/arch/arm/mach-pxa/devices.c b/arch/arm/mach-pxa/devices.c
index 16f45273af..4c43f6374e 100644
--- a/arch/arm/mach-pxa/devices.c
+++ b/arch/arm/mach-pxa/devices.c
@@ -17,35 +17,35 @@
 #include <mach/devices.h>
 #include <mach/pxafb.h>
 
-static inline struct device_d *pxa_add_device(char *name, int id, void *base,
+static inline struct device *pxa_add_device(char *name, int id, void *base,
 					      int size, void *pdata)
 {
 	return add_generic_device(name, id, NULL, (resource_size_t)base, size,
 				  IORESOURCE_MEM, pdata);
 }
 
-struct device_d *pxa_add_i2c(void *base, int id,
+struct device *pxa_add_i2c(void *base, int id,
 			     struct i2c_platform_data *pdata)
 {
 	return pxa_add_device("i2c-pxa", id, base, 0x1000, pdata);
 }
 
-struct device_d *pxa_add_uart(void *base, int id)
+struct device *pxa_add_uart(void *base, int id)
 {
 	return pxa_add_device("pxa_serial", id, base, 0x1000, NULL);
 }
 
-struct device_d *pxa_add_fb(void *base, struct pxafb_platform_data *pdata)
+struct device *pxa_add_fb(void *base, struct pxafb_platform_data *pdata)
 {
 	return pxa_add_device("pxafb", -1, base, 0x1000, pdata);
 }
 
-struct device_d *pxa_add_mmc(void *base, int id, void *pdata)
+struct device *pxa_add_mmc(void *base, int id, void *pdata)
 {
 	return pxa_add_device("pxa-mmc", id, base, 0x1000, pdata);
 }
 
-struct device_d *pxa_add_pwm(void *base, int id)
+struct device *pxa_add_pwm(void *base, int id)
 {
 	return pxa_add_device("pxa_pwm", id, base, 0x10, NULL);
 }
diff --git a/arch/arm/mach-pxa/include/mach/devices.h b/arch/arm/mach-pxa/include/mach/devices.h
index 0f2e38dbae..a50a1862d0 100644
--- a/arch/arm/mach-pxa/include/mach/devices.h
+++ b/arch/arm/mach-pxa/include/mach/devices.h
@@ -15,9 +15,9 @@
 #include <i2c/i2c.h>
 #include <mach/pxafb.h>
 
-struct device_d *pxa_add_i2c(void *base, int id,
+struct device *pxa_add_i2c(void *base, int id,
 			     struct i2c_platform_data *pdata);
-struct device_d *pxa_add_uart(void *base, int id);
-struct device_d *pxa_add_fb(void *base, struct pxafb_platform_data *pdata);
-struct device_d *pxa_add_mmc(void *base, int id, void *pdata);
-struct device_d *pxa_add_pwm(void *base, int id);
+struct device *pxa_add_uart(void *base, int id);
+struct device *pxa_add_fb(void *base, struct pxafb_platform_data *pdata);
+struct device *pxa_add_mmc(void *base, int id, void *pdata);
+struct device *pxa_add_pwm(void *base, int id);
diff --git a/arch/arm/mach-pxa/include/mach/mci_pxa2xx.h b/arch/arm/mach-pxa/include/mach/mci_pxa2xx.h
index e5bc211ea8..299e543479 100644
--- a/arch/arm/mach-pxa/include/mach/mci_pxa2xx.h
+++ b/arch/arm/mach-pxa/include/mach/mci_pxa2xx.h
@@ -2,11 +2,11 @@
 
 
 struct mci_host;
-struct device_d;
+struct device;
 
 struct pxamci_platform_data {
 	int gpio_power;
 	int gpio_power_invert;
-	int (*init)(struct mci_host*, struct device_d*);
+	int (*init)(struct mci_host*, struct device*);
 	int (*setpower)(struct mci_host*, int on);
 };
diff --git a/arch/arm/mach-socfpga/cyclone5-generic.c b/arch/arm/mach-socfpga/cyclone5-generic.c
index c494f048ec..5931653a63 100644
--- a/arch/arm/mach-socfpga/cyclone5-generic.c
+++ b/arch/arm/mach-socfpga/cyclone5-generic.c
@@ -62,7 +62,7 @@ static struct cadence_qspi_platform_data qspi_pdata = {
 static void add_cadence_qspi_device(int id, resource_size_t ctrl,
 				    resource_size_t data, void *pdata)
 {
-	struct device_d *dev;
+	struct device *dev;
 	struct resource *res;
 
 	res = xzalloc(sizeof(struct resource) * 2);
@@ -102,7 +102,7 @@ static struct NS16550_plat uart_pdata = {
 
 void socfpga_cyclone5_uart_init(void)
 {
-	struct device_d *dev;
+	struct device *dev;
 
 	clks[uart] = clk_fixed("uart", 100000000);
 	clkdev_add_physbase(clks[uart], CYCLONE5_UART0_ADDRESS, NULL);
@@ -115,7 +115,7 @@ void socfpga_cyclone5_uart_init(void)
 
 void socfpga_cyclone5_timer_init(void)
 {
-	struct device_d *dev;
+	struct device *dev;
 
 	clks[timer] = clk_fixed("timer", 200000000);
 	clkdev_add_physbase(clks[timer], CYCLONE5_SMP_TWD_ADDRESS, NULL);
diff --git a/arch/arm/mach-stm32mp/ddrctrl.c b/arch/arm/mach-stm32mp/ddrctrl.c
index 31bddba764..ce45155420 100644
--- a/arch/arm/mach-stm32mp/ddrctrl.c
+++ b/arch/arm/mach-stm32mp/ddrctrl.c
@@ -129,7 +129,7 @@ void __noreturn stm32mp1_barebox_entry(void *boarddata)
 }
 
 
-static int stm32mp1_ddr_probe(struct device_d *dev)
+static int stm32mp1_ddr_probe(struct device *dev)
 {
 	struct resource *iores;
 	void __iomem *base;
diff --git a/arch/arm/mach-tegra/tegra20-pmc.c b/arch/arm/mach-tegra/tegra20-pmc.c
index a252c995ea..5c6327047f 100644
--- a/arch/arm/mach-tegra/tegra20-pmc.c
+++ b/arch/arm/mach-tegra/tegra20-pmc.c
@@ -200,7 +200,7 @@ static void tegra20_pmc_detect_reset_cause(void)
 	}
 }
 
-static int tegra20_pmc_probe(struct device_d *dev)
+static int tegra20_pmc_probe(struct device *dev)
 {
 	struct resource *iores;
 	iores = dev_request_mem_resource(dev, 0);
diff --git a/arch/arm/mach-tegra/tegra20-timer.c b/arch/arm/mach-tegra/tegra20-timer.c
index 8ca8cb24fa..287c83aa9c 100644
--- a/arch/arm/mach-tegra/tegra20-timer.c
+++ b/arch/arm/mach-tegra/tegra20-timer.c
@@ -44,7 +44,7 @@ static struct clocksource cs = {
 	.priority = 80,
 };
 
-static int tegra20_timer_probe(struct device_d *dev)
+static int tegra20_timer_probe(struct device *dev)
 {
 	struct resource *iores;
 	u32 reg;
diff --git a/arch/arm/mach-zynqmp/firmware-zynqmp.c b/arch/arm/mach-zynqmp/firmware-zynqmp.c
index 0d1eb5b137..5e1017fa8f 100644
--- a/arch/arm/mach-zynqmp/firmware-zynqmp.c
+++ b/arch/arm/mach-zynqmp/firmware-zynqmp.c
@@ -577,7 +577,7 @@ const struct zynqmp_eemi_ops *zynqmp_pm_get_eemi_ops(void)
 EXPORT_SYMBOL_GPL(zynqmp_pm_get_eemi_ops);
 
 
-static int zynqmp_firmware_probe(struct device_d *dev)
+static int zynqmp_firmware_probe(struct device *dev)
 {
 	int ret;
 
diff --git a/arch/kvx/lib/poweroff.c b/arch/kvx/lib/poweroff.c
index f2683a5835..bcdb43d82c 100644
--- a/arch/kvx/lib/poweroff.c
+++ b/arch/kvx/lib/poweroff.c
@@ -20,7 +20,7 @@ static void __noreturn kvx_poweroff(struct poweroff_handler *handler)
 	hang();
 }
 
-static int kvx_scall_poweroff_probe(struct device_d *dev)
+static int kvx_scall_poweroff_probe(struct device *dev)
 {
 	poweroff_handler_register_fn(kvx_poweroff);
 
diff --git a/arch/mips/mach-ar231x/ar231x_reset.c b/arch/mips/mach-ar231x/ar231x_reset.c
index 91414edd26..bdaceb65b2 100644
--- a/arch/mips/mach-ar231x/ar231x_reset.c
+++ b/arch/mips/mach-ar231x/ar231x_reset.c
@@ -48,7 +48,7 @@ void ar231x_reset_bit(u32 val, enum reset_state state)
 }
 EXPORT_SYMBOL(ar231x_reset_bit);
 
-static int ar231x_reset_probe(struct device_d *dev)
+static int ar231x_reset_probe(struct device *dev)
 {
 	struct resource *iores;
 	iores = dev_request_mem_resource(dev, 0);
diff --git a/arch/mips/mach-ath79/art.c b/arch/mips/mach-ath79/art.c
index de9f638e1c..c1a9263559 100644
--- a/arch/mips/mach-ath79/art.c
+++ b/arch/mips/mach-ath79/art.c
@@ -18,7 +18,7 @@ struct ar9300_eeprom {
 	u8 mac_addr[6];
 };
 
-static int art_set_mac(struct device_d *dev, struct ar9300_eeprom *eeprom)
+static int art_set_mac(struct device *dev, struct ar9300_eeprom *eeprom)
 {
 	struct device_node *node = dev->of_node;
 	struct device_node *rnode;
@@ -36,7 +36,7 @@ static int art_set_mac(struct device_d *dev, struct ar9300_eeprom *eeprom)
 	return 0;
 }
 
-static int art_read_mac(struct device_d *dev, const char *file)
+static int art_read_mac(struct device *dev, const char *file)
 {
 	int fd, rbytes;
 	struct ar9300_eeprom eeprom;
@@ -73,7 +73,7 @@ static int art_read_mac(struct device_d *dev, const char *file)
 	return art_set_mac(dev, &eeprom);
 }
 
-static int art_probe(struct device_d *dev)
+static int art_probe(struct device *dev)
 {
 	char *path;
 	int ret;
diff --git a/arch/mips/mach-xburst/include/mach/devices.h b/arch/mips/mach-xburst/include/mach/devices.h
index 1e5e9476aa..ea567a3161 100644
--- a/arch/mips/mach-xburst/include/mach/devices.h
+++ b/arch/mips/mach-xburst/include/mach/devices.h
@@ -5,6 +5,6 @@
 
 #include <driver.h>
 
-struct device_d *jz_add_uart(int id, unsigned long base, unsigned int clock);
+struct device *jz_add_uart(int id, unsigned long base, unsigned int clock);
 
 #endif /* __MACH_XBURST_DEVICES_H */
diff --git a/arch/riscv/boards/beaglev/board.c b/arch/riscv/boards/beaglev/board.c
index 110754ea95..b8606410f1 100644
--- a/arch/riscv/boards/beaglev/board.c
+++ b/arch/riscv/boards/beaglev/board.c
@@ -8,7 +8,7 @@
 #include <bbu.h>
 #include <envfs.h>
 
-static int beaglev_probe(struct device_d *dev)
+static int beaglev_probe(struct device *dev)
 {
 	barebox_set_hostname("beaglev-starlight");
 
diff --git a/arch/riscv/boards/riscvemu/board.c b/arch/riscv/boards/riscvemu/board.c
index e735d7e05e..0eb68cdbf4 100644
--- a/arch/riscv/boards/riscvemu/board.c
+++ b/arch/riscv/boards/riscvemu/board.c
@@ -35,7 +35,7 @@ static void __noreturn riscvemu_restart(struct restart_handler *rst)
 
 extern char __dtb_overlay_of_sram_start[];
 
-static int riscvemu_probe(struct device_d *dev)
+static int riscvemu_probe(struct device *dev)
 {
 	struct device_node *of_chosen;
 	struct device_node *overlay;
diff --git a/arch/riscv/cpu/core.c b/arch/riscv/cpu/core.c
index 02b13ada4b..ce073af307 100644
--- a/arch/riscv/cpu/core.c
+++ b/arch/riscv/cpu/core.c
@@ -32,8 +32,8 @@ static int riscv_request_stack(void)
 }
 coredevice_initcall(riscv_request_stack);
 
-static struct device_d timer_dev;
-static struct device_d serial_sbi_dev;
+static struct device timer_dev;
+static struct device serial_sbi_dev;
 
 static s64 hartid;
 
@@ -60,7 +60,7 @@ static int riscv_fixup_cpus(struct device_node *root, void *context)
 	return 0;
 }
 
-static int riscv_probe(struct device_d *parent)
+static int riscv_probe(struct device *parent)
 {
 	int ret;
 
diff --git a/arch/sandbox/board/board.c b/arch/sandbox/board/board.c
index 43e355afe8..7857ede5c6 100644
--- a/arch/sandbox/board/board.c
+++ b/arch/sandbox/board/board.c
@@ -29,23 +29,23 @@ struct fb_videomode mode = {
 	.yres = 480,
 };
 
-static struct device_d tap_device = {
+static struct device tap_device = {
 	.id	  = DEVICE_ID_DYNAMIC,
 	.name     = "tap",
 };
 
-static struct device_d sdl_device = {
+static struct device sdl_device = {
 	.id	  = DEVICE_ID_DYNAMIC,
 	.name     = "sdlfb",
 	.platform_data = &mode,
 };
 
-static struct device_d devrandom_device = {
+static struct device devrandom_device = {
 	.id	  = DEVICE_ID_DYNAMIC,
 	.name     = "devrandom",
 };
 
-static int devices_init(struct device_d *dev)
+static int devices_init(struct device *dev)
 {
 	platform_device_register(&tap_device);
 
diff --git a/arch/sandbox/board/console.c b/arch/sandbox/board/console.c
index cea62d57b1..274ef67aef 100644
--- a/arch/sandbox/board/console.c
+++ b/arch/sandbox/board/console.c
@@ -21,10 +21,10 @@
 
 int barebox_register_console(int stdinfd, int stdoutfd)
 {
-	struct device_d *dev;
+	struct device *dev;
 	struct linux_console_data *data;
 
-	dev = xzalloc(sizeof(struct device_d) + sizeof(struct linux_console_data));
+	dev = xzalloc(sizeof(struct device) + sizeof(struct linux_console_data));
 
 	data = (struct linux_console_data *)(dev + 1);
 
diff --git a/arch/sandbox/board/devices.c b/arch/sandbox/board/devices.c
index f7305a8ead..ecd24e9207 100644
--- a/arch/sandbox/board/devices.c
+++ b/arch/sandbox/board/devices.c
@@ -14,7 +14,7 @@ unsigned char __pci_iobase[IO_SPACE_LIMIT];
 
 static LIST_HEAD(sandbox_device_list);
 
-int sandbox_add_device(struct device_d *dev)
+int sandbox_add_device(struct device *dev)
 {
 	list_add(&dev->list, &sandbox_device_list);
 
@@ -23,7 +23,7 @@ int sandbox_add_device(struct device_d *dev)
 
 static int sandbox_device_init(void)
 {
-	struct device_d *dev, *tmp;
+	struct device *dev, *tmp;
 
 	list_for_each_entry_safe(dev, tmp, &sandbox_device_list, list) {
 		/* reset the list_head before registering for real */
diff --git a/arch/sandbox/board/hostfile.c b/arch/sandbox/board/hostfile.c
index d04925d6d4..a6273664d3 100644
--- a/arch/sandbox/board/hostfile.c
+++ b/arch/sandbox/board/hostfile.c
@@ -89,14 +89,14 @@ static struct block_device_ops hf_blk_ops = {
 	.write = hf_blk_write,
 };
 
-static void hf_info(struct device_d *dev)
+static void hf_info(struct device *dev)
 {
 	struct hf_priv *priv = dev->priv;
 
 	printf("file: %s\n", priv->filename);
 }
 
-static int hf_probe(struct device_d *dev)
+static int hf_probe(struct device *dev)
 {
 	struct device_node *np = dev->of_node;
 	struct hf_priv *priv = xzalloc(sizeof(*priv));
diff --git a/arch/sandbox/board/led.c b/arch/sandbox/board/led.c
index a4d5b3e89a..02f181b382 100644
--- a/arch/sandbox/board/led.c
+++ b/arch/sandbox/board/led.c
@@ -26,7 +26,7 @@ static void sandbox_led_set(struct led *led, unsigned int brightness)
 	sandbox_led.active = true;
 }
 
-static int sandbox_led_of_probe(struct device_d *dev)
+static int sandbox_led_of_probe(struct device *dev)
 {
 	struct device_node *np = dev->of_node;
 	int ret;
@@ -47,7 +47,7 @@ static int sandbox_led_of_probe(struct device_d *dev)
 	return 0;
 }
 
-static void sandbox_led_of_remove(struct device_d *dev)
+static void sandbox_led_of_remove(struct device *dev)
 {
 	if (sandbox_led.active)
 		sandbox_led_set(NULL, 0);
diff --git a/arch/sandbox/board/power.c b/arch/sandbox/board/power.c
index 071a7fd907..ba5ab88a81 100644
--- a/arch/sandbox/board/power.c
+++ b/arch/sandbox/board/power.c
@@ -38,7 +38,7 @@ static void sandbox_rst_reexec(struct restart_handler *rst)
 	linux_reexec();
 }
 
-static int sandbox_power_probe(struct device_d *dev)
+static int sandbox_power_probe(struct device *dev)
 {
 	struct sandbox_power *power = xzalloc(sizeof(*power));
 	size_t len;
diff --git a/arch/sandbox/board/watchdog.c b/arch/sandbox/board/watchdog.c
index 24e556a918..d54661018d 100644
--- a/arch/sandbox/board/watchdog.c
+++ b/arch/sandbox/board/watchdog.c
@@ -36,7 +36,7 @@ static int sandbox_watchdog_set_timeout(struct watchdog *wdd, unsigned int timeo
 	return 0;
 }
 
-static int sandbox_watchdog_probe(struct device_d *dev)
+static int sandbox_watchdog_probe(struct device *dev)
 {
 	struct device_node *np = dev->of_node;
 	struct sandbox_watchdog *wd;
diff --git a/arch/sandbox/mach-sandbox/include/mach/linux.h b/arch/sandbox/mach-sandbox/include/mach/linux.h
index 1584d8065c..028bc2fa90 100644
--- a/arch/sandbox/mach-sandbox/include/mach/linux.h
+++ b/arch/sandbox/mach-sandbox/include/mach/linux.h
@@ -5,9 +5,9 @@
 
 struct hf_info;
 
-struct device_d;
+struct device;
 
-int sandbox_add_device(struct device_d *dev);
+int sandbox_add_device(struct device *dev);
 
 struct fb_bitfield;
 
diff --git a/arch/x86/mach-efi/clocksource.c b/arch/x86/mach-efi/clocksource.c
index 3d01ff9d1e..c7e557d7a2 100644
--- a/arch/x86/mach-efi/clocksource.c
+++ b/arch/x86/mach-efi/clocksource.c
@@ -6,7 +6,7 @@
 
 static int efi_x86_pure_init(void)
 {
-	struct device_d *dev = device_alloc("efi-cs-x86", DEVICE_ID_SINGLE);
+	struct device *dev = device_alloc("efi-cs-x86", DEVICE_ID_SINGLE);
 
 	return platform_device_register(dev);
 }
diff --git a/commands/detect.c b/commands/detect.c
index 70eca57537..ad1745adce 100644
--- a/commands/detect.c
+++ b/commands/detect.c
@@ -12,7 +12,7 @@
 
 static int do_detect(int argc, char *argv[])
 {
-	struct device_d *dev;
+	struct device *dev;
 	int opt, i, ret, err;
 	int option_list = 0;
 	int option_all = 0;
diff --git a/commands/devinfo.c b/commands/devinfo.c
index a0addfbcf1..2487786c71 100644
--- a/commands/devinfo.c
+++ b/commands/devinfo.c
@@ -6,9 +6,9 @@
 #include <complete.h>
 #include <driver.h>
 
-static int do_devinfo_subtree(struct device_d *dev, int depth)
+static int do_devinfo_subtree(struct device *dev, int depth)
 {
-	struct device_d *child;
+	struct device *child;
 	struct cdev *cdev, *cdevl;
 	int i;
 
@@ -46,7 +46,7 @@ static int do_devinfo_subtree(struct device_d *dev, int depth)
 
 static int do_devinfo(int argc, char *argv[])
 {
-	struct device_d *dev;
+	struct device *dev;
 	struct param_d *param;
 	int i;
 	int first;
diff --git a/commands/devunbind.c b/commands/devunbind.c
index 3f9cd7b849..dab7f834db 100644
--- a/commands/devunbind.c
+++ b/commands/devunbind.c
@@ -10,7 +10,7 @@
 static int do_devunbind(int argc, char *argv[])
 {
 	bool unregister = false;
-	struct device_d *dev;
+	struct device *dev;
 	int ret = COMMAND_SUCCESS, i, opt;
 
 	while ((opt = getopt(argc, argv, "fl")) > 0) {
diff --git a/commands/drvinfo.c b/commands/drvinfo.c
index 9f8f971ee9..4961f4c7dd 100644
--- a/commands/drvinfo.c
+++ b/commands/drvinfo.c
@@ -9,7 +9,7 @@
 static int do_drvinfo(int argc, char *argv[])
 {
 	struct driver_d *drv;
-	struct device_d *dev;
+	struct device *dev;
 
 	printf("Driver\tDevice(s)\n");
 	printf("--------------------\n");
diff --git a/commands/gpio.c b/commands/gpio.c
index 5e5eb20583..caabb5adc0 100644
--- a/commands/gpio.c
+++ b/commands/gpio.c
@@ -10,7 +10,7 @@ static int get_gpio_and_value(int argc, char *argv[],
 			      int *gpio, int *value)
 {
 	struct gpio_chip *chip = NULL;
-	struct device_d *dev;
+	struct device *dev;
 	int count = 1;
 	int ret = 0;
 	int opt;
diff --git a/commands/miitool.c b/commands/miitool.c
index 47494f5089..24e383736a 100644
--- a/commands/miitool.c
+++ b/commands/miitool.c
@@ -217,7 +217,7 @@ static int show_basic_mii(struct mii_bus *mii, struct phy_device *phydev,
 	return 0;
 }
 
-static void mdiobus_show(struct device_d *dev, const char *phydevname,
+static void mdiobus_show(struct device *dev, const char *phydevname,
 			 int verbose)
 {
 	struct mii_bus *mii = to_mii_bus(dev);
diff --git a/common/blspec.c b/common/blspec.c
index 9ae7b49a77..e023259bac 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -622,7 +622,7 @@ err_out:
  */
 static int blspec_scan_ubi(struct bootentries *bootentries, struct cdev *cdev)
 {
-	struct device_d *child;
+	struct device *child;
 	int ret, found = 0;
 
 	pr_debug("%s: %s\n", __func__, cdev->name);
@@ -696,7 +696,7 @@ static int blspec_scan_cdev(struct bootentries *bootentries, struct cdev *cdev)
  */
 int blspec_scan_devices(struct bootentries *bootentries)
 {
-	struct device_d *dev;
+	struct device *dev;
 	struct block_device *bdev;
 	int ret, found = 0;
 
@@ -724,9 +724,9 @@ int blspec_scan_devices(struct bootentries *bootentries)
  * Returns the number of entries found or a negative error code if some unexpected
  * error occurred.
  */
-int blspec_scan_device(struct bootentries *bootentries, struct device_d *dev)
+int blspec_scan_device(struct bootentries *bootentries, struct device *dev)
 {
-	struct device_d *child;
+	struct device *child;
 	struct cdev *cdev;
 	int ret, found = 0;
 
@@ -788,7 +788,7 @@ int blspec_scan_device(struct bootentries *bootentries, struct device_d *dev)
  */
 int blspec_scan_devicename(struct bootentries *bootentries, const char *devname)
 {
-	struct device_d *dev;
+	struct device *dev;
 	struct cdev *cdev;
 
 	pr_debug("%s: %s\n", __func__, devname);
diff --git a/common/boards/qemu-virt/board.c b/common/boards/qemu-virt/board.c
index bfda86569b..5062ad2c7f 100644
--- a/common/boards/qemu-virt/board.c
+++ b/common/boards/qemu-virt/board.c
@@ -36,7 +36,7 @@ static inline void arm_virt_init(void) {}
 
 extern char __dtb_overlay_of_flash_start[];
 
-static int virt_probe(struct device_d *dev)
+static int virt_probe(struct device *dev)
 {
 	struct device_node *overlay;
 	void (*init)(void);
diff --git a/common/complete.c b/common/complete.c
index ab3c985493..327e82dd0a 100644
--- a/common/complete.c
+++ b/common/complete.c
@@ -135,7 +135,7 @@ EXPORT_SYMBOL(command_complete);
 
 int device_complete(struct string_list *sl, char *instr)
 {
-	struct device_d *dev;
+	struct device *dev;
 	int len;
 
 	if (!instr)
@@ -154,7 +154,7 @@ int device_complete(struct string_list *sl, char *instr)
 }
 EXPORT_SYMBOL(device_complete);
 
-static int device_param_complete(struct device_d *dev, struct string_list *sl,
+static int device_param_complete(struct device *dev, struct string_list *sl,
 				 char *instr, int eval)
 {
 	struct param_d *param;
@@ -267,7 +267,7 @@ EXPORT_SYMBOL(tutorial_complete);
 
 static int env_param_complete(struct string_list *sl, char *instr, int eval)
 {
-	struct device_d *dev;
+	struct device *dev;
 	struct variable_d *var;
 	struct env_context *c;
 	int len;
diff --git a/common/console.c b/common/console.c
index 56caa12b45..c09c8e7d44 100644
--- a/common/console.c
+++ b/common/console.c
@@ -309,7 +309,7 @@ static ssize_t fops_write(struct cdev* dev, const void* buf, size_t count,
 int console_register(struct console_device *newcdev)
 {
 	struct device_node *serdev_node = console_is_serdev_node(newcdev);
-	struct device_d *dev = &newcdev->class_dev;
+	struct device *dev = &newcdev->class_dev;
 	int activate = 0, ret;
 	unsigned baudrate = CONFIG_BAUDRATE;
 
@@ -406,7 +406,7 @@ EXPORT_SYMBOL(console_register);
 
 int console_unregister(struct console_device *cdev)
 {
-	struct device_d *dev = &cdev->class_dev;
+	struct device *dev = &cdev->class_dev;
 	int status;
 
 	/*
diff --git a/common/console_common.c b/common/console_common.c
index ca1dad0f15..866a7cbf65 100644
--- a/common/console_common.c
+++ b/common/console_common.c
@@ -134,7 +134,7 @@ int pr_print(int level, const char *fmt, ...)
 	return i;
 }
 
-int dev_printf(int level, const struct device_d *dev, const char *format, ...)
+int dev_printf(int level, const struct device *dev, const char *format, ...)
 {
 	va_list args;
 	int ret = 0;
@@ -284,7 +284,7 @@ int vprintf(const char *fmt, va_list args)
 }
 EXPORT_SYMBOL(vprintf);
 
-struct console_device *console_get_by_dev(struct device_d *dev)
+struct console_device *console_get_by_dev(struct device *dev)
 {
 	struct console_device *cdev;
 
@@ -336,7 +336,7 @@ EXPORT_SYMBOL(console_get_first_active);
 struct console_device *of_console_get_by_alias(const char *alias)
 {
 	struct device_node *node;
-	struct device_d *dev;
+	struct device *dev;
 
 	node = of_find_node_by_alias(NULL, alias);
 	if (!node)
diff --git a/common/efi/payload/init.c b/common/efi/payload/init.c
index 6976285fb3..3ee5d66d60 100644
--- a/common/efi/payload/init.c
+++ b/common/efi/payload/init.c
@@ -271,7 +271,7 @@ void efi_main(efi_handle_t image, efi_system_table_t *sys_table)
 
 static int efi_core_init(void)
 {
-	struct device_d *dev;
+	struct device *dev;
 	int ret;
 
 	dev = device_alloc("efi-cs", DEVICE_ID_SINGLE);
diff --git a/common/env.c b/common/env.c
index 9e9988e415..d673b061ab 100644
--- a/common/env.c
+++ b/common/env.c
@@ -127,7 +127,7 @@ static const char *dev_getenv(const char *name)
 {
 	const char *pos, *val, *dot, *varname;
 	char *devname;
-	struct device_d *dev;
+	struct device *dev;
 
 	pos = name;
 
@@ -215,7 +215,7 @@ static int dev_setenv(const char *name, const char *val)
 {
 	const char *pos, *dot, *varname;
 	char *devname;
-	struct device_d *dev;
+	struct device *dev;
 
 	pos = name;
 
diff --git a/common/globalvar.c b/common/globalvar.c
index 4fd6361c2f..b3a7f6d755 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -16,12 +16,12 @@
 
 static int nv_dirty;
 
-struct device_d global_device = {
+struct device global_device = {
 	.name = "global",
 	.id = DEVICE_ID_SINGLE,
 };
 
-struct device_d nv_device = {
+struct device nv_device = {
 	.name = "nv",
 	.id = DEVICE_ID_SINGLE,
 };
@@ -101,7 +101,7 @@ static int nv_save(const char *name, const char *val)
  * This function initializes a newly created device parameter from the corresponding
  * nv.dev.<devname>.<paramname> variable.
  */
-void dev_param_init_from_nv(struct device_d *dev, const char *name)
+void dev_param_init_from_nv(struct device *dev, const char *name)
 {
 	char *nvname;
 	const char *val;
@@ -142,7 +142,7 @@ void dev_param_init_from_nv(struct device_d *dev, const char *name)
  * parameter name. A negative error code is returned when the incoming string belongs to
  * the device namespace, but cannot be dispatched.
  */
-static int nvvar_device_dispatch(const char *name, struct device_d **dev,
+static int nvvar_device_dispatch(const char *name, struct device **dev,
 				 const char **pname)
 {
 	char *devname;
@@ -177,7 +177,8 @@ static int nvvar_device_dispatch(const char *name, struct device_d **dev,
 	return 1;
 }
 
-static int nv_set(struct device_d *dev, struct param_d *p, const char *name, const char *val)
+static int nv_set(struct device *dev, struct param_d *p, const char *name,
+		  const char *val)
 {
 	int ret;
 
@@ -195,12 +196,13 @@ static int nv_set(struct device_d *dev, struct param_d *p, const char *name, con
 	return 0;
 }
 
-static const char *nv_param_get(struct device_d *dev, struct param_d *p)
+static const char *nv_param_get(struct device *dev, struct param_d *p)
 {
 	return p->value ? p->value : "";
 }
 
-static int nv_param_set(struct device_d *dev, struct param_d *p, const char *val)
+static int nv_param_set(struct device *dev, struct param_d *p,
+			const char *val)
 {
 	int ret;
 
@@ -214,7 +216,7 @@ static int nv_param_set(struct device_d *dev, struct param_d *p, const char *val
 static int __nvvar_add(const char *name, const char *value)
 {
 	struct param_d *p;
-	struct device_d *dev = NULL;
+	struct device *dev = NULL;
 	const char *pname;
 	int ret;
 
@@ -375,7 +377,7 @@ int nvvar_load(void)
 	return 0;
 }
 
-static void device_param_print(struct device_d *dev)
+static void device_param_print(struct device *dev)
 {
 	struct param_d *param;
 
@@ -452,9 +454,10 @@ void globalvar_set(const char *name, const char *val)
 	dev_set_param(&global_device, name, val);
 }
 
-static int globalvar_simple_set(struct device_d *dev, struct param_d *p, const char *val)
+static int globalvar_simple_set(struct device *dev, struct param_d *p,
+				const char *val)
 {
-	struct device_d *rdev;
+	struct device *rdev;
 	const char *pname = NULL;
 	int ret;
 
@@ -744,8 +747,9 @@ static void nv_exit(void)
 }
 predevshutdown_exitcall(nv_exit);
 
-static int nv_global_param_complete(struct device_d *dev, struct string_list *sl,
-				 char *instr, int eval)
+static int nv_global_param_complete(struct device *dev,
+				    struct string_list *sl,
+				    char *instr, int eval)
 {
 	struct param_d *param;
 	int len;
@@ -766,7 +770,7 @@ static int nv_global_param_complete(struct device_d *dev, struct string_list *sl
 
 int nv_complete(struct string_list *sl, char *instr)
 {
-	struct device_d *dev;
+	struct device *dev;
 	struct param_d *param;
 	char *str;
 	int len;
diff --git a/common/oftree.c b/common/oftree.c
index 4cb74067de..4beadc5aaa 100644
--- a/common/oftree.c
+++ b/common/oftree.c
@@ -205,7 +205,7 @@ static int of_fixup_bootargs(struct device_node *root, void *unused)
 	struct device_node *node;
 	int err;
 	int instance = reset_source_get_instance();
-	struct device_d *dev;
+	struct device *dev;
 	const char *serialno;
 	const char *compat;
 
diff --git a/common/partitions/efi.c b/common/partitions/efi.c
index 0f3f790539..ffdbd9a56f 100644
--- a/common/partitions/efi.c
+++ b/common/partitions/efi.c
@@ -249,7 +249,8 @@ is_pte_valid(const gpt_entry *pte, const u64 lastlba)
  *
  */
 static void
-compare_gpts(struct device_d *dev, gpt_header *pgpt, gpt_header *agpt, u64 lastlba)
+compare_gpts(struct device *dev, gpt_header *pgpt, gpt_header *agpt,
+	     u64 lastlba)
 {
 	int error_found = 0;
 	if (!pgpt || !agpt)
diff --git a/common/reset_source.c b/common/reset_source.c
index 90a34f5f50..f28be90dcb 100644
--- a/common/reset_source.c
+++ b/common/reset_source.c
@@ -25,7 +25,7 @@ static const char * const reset_src_names[] = {
 static enum reset_src_type reset_source;
 static unsigned int reset_source_priority;
 static int reset_source_instance;
-static struct device_d *reset_source_device;
+static struct device *reset_source_device;
 
 enum reset_src_type reset_source_get(void)
 {
@@ -45,13 +45,13 @@ int reset_source_get_instance(void)
 }
 EXPORT_SYMBOL(reset_source_get_instance);
 
-struct device_d *reset_source_get_device(void)
+struct device *reset_source_get_device(void)
 {
 	return reset_source_device;
 }
 EXPORT_SYMBOL(reset_source_get_device);
 
-static void __reset_source_set(struct device_d *dev,
+static void __reset_source_set(struct device *dev,
 			       enum reset_src_type st,
 			       unsigned int priority, int instance)
 {
@@ -74,7 +74,7 @@ void reset_source_set_prinst(enum reset_src_type st,
 }
 EXPORT_SYMBOL(reset_source_set_prinst);
 
-void reset_source_set_device(struct device_d *dev, enum reset_src_type st)
+void reset_source_set_device(struct device *dev, enum reset_src_type st)
 {
 	unsigned int priority = RESET_SOURCE_DEFAULT_PRIORITY;
 
diff --git a/common/serdev.c b/common/serdev.c
index 1d328c6a33..5399a20627 100644
--- a/common/serdev.c
+++ b/common/serdev.c
@@ -132,7 +132,7 @@ static int serdev_device_reader_receive_buf(struct serdev_device *serdev,
 					    const unsigned char *buf,
 					    size_t size)
 {
-	struct device_d *dev = serdev->dev;
+	struct device *dev = serdev->dev;
 	struct serdev_device_reader *r = dev->priv;
 	const size_t room = min(r->capacity - r->len, size);
 
@@ -186,7 +186,7 @@ int serdev_device_reader_open(struct serdev_device *serdev, size_t capacity)
 int serdev_device_read(struct serdev_device *serdev, unsigned char *buf,
 		       size_t count, unsigned long timeout)
 {
-	struct device_d *dev = serdev->dev;
+	struct device *dev = serdev->dev;
 	struct serdev_device_reader *r = dev->priv;
 	int ret;
 
diff --git a/common/state/backend_bucket_circular.c b/common/state/backend_bucket_circular.c
index 735510e0d3..2ac5bf6a82 100644
--- a/common/state/backend_bucket_circular.c
+++ b/common/state/backend_bucket_circular.c
@@ -62,7 +62,7 @@ struct state_backend_storage_bucket_circular {
 #endif
 
 	/* For outputs */
-	struct device_d *dev;
+	struct device *dev;
 };
 
 /*
@@ -456,7 +456,7 @@ static int bucket_circular_is_block_bad(struct state_backend_storage_bucket_circ
 }
 #endif
 
-int state_backend_bucket_circular_create(struct device_d *dev, const char *path,
+int state_backend_bucket_circular_create(struct device *dev, const char *path,
 					 struct state_backend_storage_bucket **bucket,
 					 unsigned int eraseblock,
 					 ssize_t writesize,
diff --git a/common/state/backend_bucket_direct.c b/common/state/backend_bucket_direct.c
index 117cdfb46c..3818c6f0b0 100644
--- a/common/state/backend_bucket_direct.c
+++ b/common/state/backend_bucket_direct.c
@@ -29,7 +29,7 @@ struct state_backend_storage_bucket_direct {
 
 	int fd;
 
-	struct device_d *dev;
+	struct device *dev;
 };
 
 struct __attribute__((__packed__)) state_backend_storage_bucket_direct_meta {
@@ -162,7 +162,7 @@ static void state_backend_bucket_direct_free(struct
 	free(direct);
 }
 
-int state_backend_bucket_direct_create(struct device_d *dev, const char *path,
+int state_backend_bucket_direct_create(struct device *dev, const char *path,
 				       struct state_backend_storage_bucket **bucket,
 				       off_t offset, ssize_t max_size)
 {
diff --git a/common/state/backend_format_dtb.c b/common/state/backend_format_dtb.c
index d0fc948859..b41b896aac 100644
--- a/common/state/backend_format_dtb.c
+++ b/common/state/backend_format_dtb.c
@@ -28,7 +28,7 @@ struct state_backend_format_dtb {
 	struct device_node *root;
 
 	/* For outputs */
-	struct device_d *dev;
+	struct device *dev;
 };
 
 static inline struct state_backend_format_dtb *get_format_dtb(struct
@@ -131,7 +131,7 @@ static void state_backend_format_dtb_free(struct state_backend_format *format)
 }
 
 int backend_format_dtb_create(struct state_backend_format **format,
-			      struct device_d *dev)
+			      struct device *dev)
 {
 	struct state_backend_format_dtb *dtb;
 
diff --git a/common/state/backend_format_raw.c b/common/state/backend_format_raw.c
index 7835f977c9..105f7dd444 100644
--- a/common/state/backend_format_raw.c
+++ b/common/state/backend_format_raw.c
@@ -32,7 +32,7 @@ struct state_backend_format_raw {
 	unsigned int digest_length;
 
 	/* For outputs */
-	struct device_d *dev;
+	struct device *dev;
 
 	char *secret_name;
 	int needs_secret;
@@ -299,7 +299,7 @@ static int backend_format_raw_init_digest(struct state_backend_format_raw *raw,
 
 int backend_format_raw_create(struct state_backend_format **format,
 			      struct device_node *node, const char *secret_name,
-			      struct device_d *dev)
+			      struct device *dev)
 {
 	struct state_backend_format_raw *raw;
 	int ret;
diff --git a/common/state/state.h b/common/state/state.h
index 0545cf6ac1..7eb51bbdb5 100644
--- a/common/state/state.h
+++ b/common/state/state.h
@@ -90,7 +90,7 @@ struct state_backend_storage {
 	struct list_head buckets;
 
 	/* For outputs */
-	struct device_d *dev;
+	struct device *dev;
 
 	const char *name;
 
@@ -105,7 +105,7 @@ struct state_backend_storage {
 struct state {
 	struct list_head list; /* Entry to enqueue on list of states */
 
-	struct device_d dev;
+	struct device dev;
 	char *of_path;
 	const char *name;
 	uint32_t magic;
@@ -202,21 +202,21 @@ struct device_node *state_to_node(struct state *state,
 				  enum state_convert conv);
 int backend_format_raw_create(struct state_backend_format **format,
 			      struct device_node *node, const char *secret_name,
-			      struct device_d *dev);
+			      struct device *dev);
 int backend_format_dtb_create(struct state_backend_format **format,
-			      struct device_d *dev);
+			      struct device *dev);
 int state_storage_init(struct state *state, const char *path,
 		       off_t offset, size_t max_size, uint32_t stridesize,
 		       const char *storagetype);
 void state_storage_set_readonly(struct state_backend_storage *storage);
 void state_add_var(struct state *state, struct state_variable *var);
 struct variable_type *state_find_type_by_name(const char *name);
-int state_backend_bucket_circular_create(struct device_d *dev, const char *path,
+int state_backend_bucket_circular_create(struct device *dev, const char *path,
 					 struct state_backend_storage_bucket **bucket,
 					 unsigned int eraseblock,
 					 ssize_t writesize,
 					 struct mtd_info_user *mtd_uinfo);
-int state_backend_bucket_cached_create(struct device_d *dev,
+int state_backend_bucket_cached_create(struct device *dev,
 				       struct state_backend_storage_bucket *raw,
 				       struct state_backend_storage_bucket **out);
 struct state_variable *state_find_var(struct state *state, const char *name);
@@ -224,7 +224,7 @@ struct digest *state_backend_format_raw_get_digest(struct state_backend_format
 						   *format);
 void state_backend_set_readonly(struct state *state);
 void state_storage_free(struct state_backend_storage *storage);
-int state_backend_bucket_direct_create(struct device_d *dev, const char *path,
+int state_backend_bucket_direct_create(struct device *dev, const char *path,
 				       struct state_backend_storage_bucket **bucket,
 				       off_t offset, ssize_t max_size);
 int state_storage_write(struct state_backend_storage *storage,
diff --git a/common/usbgadget.c b/common/usbgadget.c
index 7291fbf4d5..59b9e635f4 100644
--- a/common/usbgadget.c
+++ b/common/usbgadget.c
@@ -35,7 +35,7 @@ int usbgadget_register(const struct usbgadget_funcs *funcs)
 {
 	int ret;
 	int flags = funcs->flags;
-	struct device_d *dev;
+	struct device *dev;
 	struct f_multi_opts *opts;
 
 	opts = xzalloc(sizeof(*opts));
diff --git a/drivers/aiodev/am335x_adc.c b/drivers/aiodev/am335x_adc.c
index 2ac1b7ab94..f658396ec5 100644
--- a/drivers/aiodev/am335x_adc.c
+++ b/drivers/aiodev/am335x_adc.c
@@ -72,7 +72,7 @@ static int am335x_adc_read(struct aiochannel *chan, int *val)
 	return 0;
 }
 
-static int am335x_adc_probe(struct device_d *dev)
+static int am335x_adc_probe(struct device *dev)
 {
 	struct device_node *node;
 	struct am335x_adc_data *data;
diff --git a/drivers/aiodev/core.c b/drivers/aiodev/core.c
index c66eb449fc..1fbb7b9188 100644
--- a/drivers/aiodev/core.c
+++ b/drivers/aiodev/core.c
@@ -31,7 +31,7 @@ struct aiochannel *aiochannel_by_name(const char *name)
 }
 EXPORT_SYMBOL(aiochannel_by_name);
 
-struct aiochannel *aiochannel_get(struct device_d *dev, int index)
+struct aiochannel *aiochannel_get(struct device *dev, int index)
 {
 	struct of_phandle_args spec;
 	struct aiodevice *aiodev;
diff --git a/drivers/aiodev/imx7d_adc.c b/drivers/aiodev/imx7d_adc.c
index 21cb063686..1d4e755fd8 100644
--- a/drivers/aiodev/imx7d_adc.c
+++ b/drivers/aiodev/imx7d_adc.c
@@ -80,11 +80,11 @@ struct imx7d_adc_feature {
 };
 
 struct imx7d_adc {
-	struct device_d *dev;
+	struct device *dev;
 	void __iomem *regs;
 	struct clk *clk;
 	struct aiodevice aiodev;
-	void (*aiodev_info)(struct device_d *);
+	void (*aiodev_info)(struct device *);
 
 	u32 vref_uv;
 	u32 pre_div_num;
@@ -309,7 +309,7 @@ static void imx7d_adc_power_down(struct imx7d_adc *info)
 
 static int imx7d_adc_enable(struct imx7d_adc *info)
 {
-	struct device_d *dev = info->dev;
+	struct device *dev = info->dev;
 	int ret;
 
 	ret = regulator_enable(info->vref);
@@ -345,7 +345,7 @@ static u32 imx7d_adc_get_sample_rate(struct imx7d_adc *info)
 	return analogue_core_clk / tmp;
 }
 
-static void imx7d_adc_devinfo(struct device_d *dev)
+static void imx7d_adc_devinfo(struct device *dev)
 {
 	struct imx7d_adc *info = dev->parent->priv;
 
@@ -355,7 +355,7 @@ static void imx7d_adc_devinfo(struct device_d *dev)
 	printf("Sample Rate: %u\n", imx7d_adc_get_sample_rate(info));
 }
 
-static int imx7d_adc_probe(struct device_d *dev)
+static int imx7d_adc_probe(struct device *dev)
 {
 	struct aiodevice *aiodev;
 	struct imx7d_adc *info;
@@ -408,7 +408,7 @@ static int imx7d_adc_probe(struct device_d *dev)
 	return 0;
 }
 
-static void imx7d_adc_disable(struct device_d *dev)
+static void imx7d_adc_disable(struct device *dev)
 {
 	struct imx7d_adc *info = dev->priv;
 
diff --git a/drivers/aiodev/imx_thermal.c b/drivers/aiodev/imx_thermal.c
index bac51e03d2..c2d2faa071 100644
--- a/drivers/aiodev/imx_thermal.c
+++ b/drivers/aiodev/imx_thermal.c
@@ -106,7 +106,7 @@ static int imx_thermal_read(struct aiochannel *chan, int *val)
 	return 0;
 }
 
-static int imx_thermal_probe(struct device_d *dev)
+static int imx_thermal_probe(struct device *dev)
 {
 	uint32_t ocotp_ana1;
 	struct device_node *node;
diff --git a/drivers/aiodev/lm75.c b/drivers/aiodev/lm75.c
index 1900636555..3281c6893b 100644
--- a/drivers/aiodev/lm75.c
+++ b/drivers/aiodev/lm75.c
@@ -57,7 +57,7 @@ static const u8 LM75_REG_TEMP[3] = {
 /* Each client has this additional data */
 struct lm75_data {
 	struct i2c_client	*client;
-	struct device_d		dev;
+	struct device		dev;
 	u8			resolution;	/* In bits, between 9 and 12 */
 	struct aiochannel	aiochan;
 	struct aiodevice	aiodev;
@@ -102,7 +102,7 @@ static int lm75_get_temp(struct aiochannel *chan, int *val)
 	return 0;
 }
 
-static int lm75_probe(struct device_d *dev)
+static int lm75_probe(struct device *dev)
 {
 	struct lm75_data *data;
 	int status;
diff --git a/drivers/aiodev/mc13xxx_adc.c b/drivers/aiodev/mc13xxx_adc.c
index 13436e8936..21eea1f525 100644
--- a/drivers/aiodev/mc13xxx_adc.c
+++ b/drivers/aiodev/mc13xxx_adc.c
@@ -178,7 +178,7 @@ err:
 	return ret;
 }
 
-int mc13xxx_adc_probe(struct device_d *dev, struct mc13xxx *mc_dev)
+int mc13xxx_adc_probe(struct device *dev, struct mc13xxx *mc_dev)
 {
 	int i;
 	int ret;
diff --git a/drivers/aiodev/qoriq_thermal.c b/drivers/aiodev/qoriq_thermal.c
index ed76945fd1..fc33ed8a21 100644
--- a/drivers/aiodev/qoriq_thermal.c
+++ b/drivers/aiodev/qoriq_thermal.c
@@ -67,7 +67,7 @@ struct qoriq_tmu_regs {
  * Thermal zone data
  */
 struct qoriq_tmu_data {
-	struct device_d *dev;
+	struct device *dev;
 	struct clk *clk;
 	struct qoriq_tmu_regs __iomem *regs;
 	int sensor_id;
@@ -187,7 +187,7 @@ static void qoriq_tmu_init_device(struct qoriq_tmu_data *data)
 	tmu_write(data, TMR_DISABLE, &data->regs->tmr);
 }
 
-static int qoriq_tmu_probe(struct device_d *dev)
+static int qoriq_tmu_probe(struct device *dev)
 {
 	struct device_node *np = dev->of_node;
 	struct qoriq_tmu_data *data;
diff --git a/drivers/aiodev/rockchip_saradc.c b/drivers/aiodev/rockchip_saradc.c
index 707df71950..b190df17a4 100644
--- a/drivers/aiodev/rockchip_saradc.c
+++ b/drivers/aiodev/rockchip_saradc.c
@@ -85,7 +85,7 @@ static int rockchip_saradc_read(struct aiochannel *chan, int *val)
 	return 0;
 }
 
-static int rockchip_saradc_probe(struct device_d *dev)
+static int rockchip_saradc_probe(struct device *dev)
 {
 	struct rockchip_saradc_data *data;
 	int i, ret;
diff --git a/drivers/aiodev/st_gyro.c b/drivers/aiodev/st_gyro.c
index 3938d8239e..29b6e0e840 100644
--- a/drivers/aiodev/st_gyro.c
+++ b/drivers/aiodev/st_gyro.c
@@ -66,7 +66,7 @@ static int st_gyro_read(struct aiochannel *chan, int *val)
 	return 0;
 }
 
-static int st_gyro_probe(struct device_d *dev)
+static int st_gyro_probe(struct device *dev)
 {
 	u8 tx[2], rx[2];
 	struct st_gyro *gyro;
diff --git a/drivers/aiodev/stm32-adc-core.c b/drivers/aiodev/stm32-adc-core.c
index b83cabb973..0712f2a5e0 100644
--- a/drivers/aiodev/stm32-adc-core.c
+++ b/drivers/aiodev/stm32-adc-core.c
@@ -56,7 +56,7 @@ static const struct stm32h7_adc_ck_spec stm32h7_adc_ckmodes_spec[] = {
 	{ 3, 0, 4 },
 };
 
-static int stm32h7_adc_clk_sel(struct device_d *dev,
+static int stm32h7_adc_clk_sel(struct device *dev,
 			       struct stm32_adc_common *common)
 {
 	u32 ckmode, presc;
@@ -137,7 +137,7 @@ out:
 	return 0;
 }
 
-static int stm32_adc_core_probe(struct device_d *dev)
+static int stm32_adc_core_probe(struct device *dev)
 {
 	struct stm32_adc_common *common;
 	int ret;
diff --git a/drivers/aiodev/stm32-adc.c b/drivers/aiodev/stm32-adc.c
index 3969da5975..497a865a09 100644
--- a/drivers/aiodev/stm32-adc.c
+++ b/drivers/aiodev/stm32-adc.c
@@ -91,7 +91,7 @@ static void stm32_adc_stop(struct stm32_adc *adc)
 
 static int stm32_adc_start_channel(struct stm32_adc *adc, int channel)
 {
-	struct device_d *dev = adc->aiodev.hwdev;
+	struct device *dev = adc->aiodev.hwdev;
 	struct stm32_adc_common *common = adc->common;
 	int ret;
 	u32 val;
@@ -153,7 +153,7 @@ static int stm32_adc_start_channel(struct stm32_adc *adc, int channel)
 static int stm32_adc_channel_data(struct stm32_adc *adc, int channel,
 				  int *data)
 {
-	struct device_d *dev = &adc->aiodev.dev;
+	struct device *dev = &adc->aiodev.dev;
 	int ret;
 	u32 val;
 
@@ -211,7 +211,7 @@ static void stm32_adc_smpr_init(struct stm32_adc *adc, int channel, u32 smp_ns)
 	adc->smpr_val[r] = (adc->smpr_val[r] & ~mask) | (smp << shift);
 }
 
-static int stm32_adc_chan_of_init(struct device_d *dev, struct stm32_adc *adc)
+static int stm32_adc_chan_of_init(struct device *dev, struct stm32_adc *adc)
 {
 	unsigned int i;
 	int num_channels = 0, num_times = 0;
@@ -290,7 +290,7 @@ static int stm32_adc_chan_of_init(struct device_d *dev, struct stm32_adc *adc)
 	return ret;
 }
 
-static int stm32_adc_probe(struct device_d *dev)
+static int stm32_adc_probe(struct device *dev)
 {
 	struct stm32_adc_common *common = dev->parent->priv;
 	struct stm32_adc *adc;
diff --git a/drivers/amba/bus.c b/drivers/amba/bus.c
index 571aa0e8bf..bef6cc4ba2 100644
--- a/drivers/amba/bus.c
+++ b/drivers/amba/bus.c
@@ -28,7 +28,7 @@ amba_lookup(const struct amba_id *table, struct amba_device *dev)
 	return ret ? table : NULL;
 }
 
-static int amba_match(struct device_d *dev, struct driver_d *drv)
+static int amba_match(struct device *dev, struct driver_d *drv)
 {
 	struct amba_device *pcdev = to_amba_device(dev);
 
@@ -55,7 +55,7 @@ static int amba_get_enable_pclk(struct amba_device *pcdev)
 	return ret;
 }
 
-static int amba_probe(struct device_d *dev)
+static int amba_probe(struct device *dev)
 {
 	struct amba_device *pcdev = to_amba_device(dev);
 	struct amba_driver *pcdrv = to_amba_driver(dev->driver);
@@ -64,7 +64,7 @@ static int amba_probe(struct device_d *dev)
 	return pcdrv->probe(pcdev, id);
 }
 
-static void amba_remove(struct device_d *dev)
+static void amba_remove(struct device *dev)
 {
 	struct amba_device *pcdev = to_amba_device(dev);
 	struct amba_driver *drv = to_amba_driver(dev->driver);
@@ -163,7 +163,7 @@ int amba_device_add(struct amba_device *dev)
 }
 
 struct amba_device *
-amba_aphb_device_add(struct device_d *parent, const char *name, int id,
+amba_aphb_device_add(struct device *parent, const char *name, int id,
 		     resource_size_t base, size_t size,
 		     void *pdata, unsigned int periphid)
 {
diff --git a/drivers/ata/ahci.c b/drivers/ata/ahci.c
index f4b93183ce..baa4919b33 100644
--- a/drivers/ata/ahci.c
+++ b/drivers/ata/ahci.c
@@ -541,14 +541,14 @@ void ahci_print_info(struct ahci_device *ahci)
 	       cap2 & HOST_CAP2_BOH ? "boh " : "");
 }
 
-void ahci_info(struct device_d *dev)
+void ahci_info(struct device *dev)
 {
 	struct ahci_device *ahci = dev->priv;
 
 	ahci_print_info(ahci);
 }
 
-static int ahci_detect(struct device_d *dev)
+static int ahci_detect(struct device *dev)
 {
 	struct ahci_device *ahci = dev->priv;
 	int n_ports = max_t(int, ahci->n_ports, fls(ahci->port_map));
@@ -636,7 +636,7 @@ int ahci_add_host(struct ahci_device *ahci)
 	return 0;
 }
 
-static int ahci_probe(struct device_d *dev)
+static int ahci_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct ahci_device *ahci;
diff --git a/drivers/ata/ahci.h b/drivers/ata/ahci.h
index 77196592ed..196bde73c2 100644
--- a/drivers/ata/ahci.h
+++ b/drivers/ata/ahci.h
@@ -184,7 +184,7 @@ struct ahci_port {
 };
 
 struct ahci_device {
-	struct device_d		*dev;
+	struct device		*dev;
 	struct ahci_port	ports[AHCI_MAX_PORTS];
 	u32			n_ports;
 	void __iomem		*mmio_base;
@@ -197,6 +197,6 @@ struct ahci_device {
 
 int ahci_add_host(struct ahci_device *ahci);
 void ahci_print_info(struct ahci_device *ahci);
-void ahci_info(struct device_d *dev);
+void ahci_info(struct device *dev);
 
 #endif
diff --git a/drivers/ata/disk_ata_drive.c b/drivers/ata/disk_ata_drive.c
index 7df0879b19..c1c736a0a8 100644
--- a/drivers/ata/disk_ata_drive.c
+++ b/drivers/ata/disk_ata_drive.c
@@ -199,7 +199,7 @@ static int ata_port_init(struct ata_port *port)
 {
 	int rc;
 	struct ata_port_operations *ops = port->ops;
-	struct device_d *dev = &port->class_dev;
+	struct device *dev = &port->class_dev;
 
 	if (ops->init) {
 		rc = ops->init(port);
@@ -293,14 +293,14 @@ static int ata_set_probe(struct param_d *param, void *priv)
 	return ata_port_detect(port);
 }
 
-static int ata_detect(struct device_d *dev)
+static int ata_detect(struct device *dev)
 {
 	struct ata_port *port = container_of(dev, struct ata_port, class_dev);
 
 	return ata_port_detect(port);
 }
 
-static void ata_info(struct device_d *dev)
+static void ata_info(struct device *dev)
 {
 	struct ata_port *port = container_of(dev, struct ata_port, class_dev);
 
diff --git a/drivers/ata/intf_platform_ide.c b/drivers/ata/intf_platform_ide.c
index b8711d0de3..41989bdb12 100644
--- a/drivers/ata/intf_platform_ide.c
+++ b/drivers/ata/intf_platform_ide.c
@@ -65,7 +65,7 @@ static void platform_ide_setup_port(void *reg_base, void *alt_base,
 	}
 }
 
-static int platform_ide_probe(struct device_d *dev)
+static int platform_ide_probe(struct device *dev)
 {
 	struct resource *iores;
 	int rc;
diff --git a/drivers/ata/pata-imx.c b/drivers/ata/pata-imx.c
index 48f7159726..0a658b00eb 100644
--- a/drivers/ata/pata-imx.c
+++ b/drivers/ata/pata-imx.c
@@ -132,14 +132,14 @@ static void imx_pata_setup_port(void *reg_base, void *alt_base,
 	}
 }
 
-static int pata_imx_detect(struct device_d *dev)
+static int pata_imx_detect(struct device *dev)
 {
 	struct ide_port *ide = dev->priv;
 
 	return ata_port_detect(&ide->port);
 }
 
-static int imx_pata_probe(struct device_d *dev)
+static int imx_pata_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct ide_port *ide;
diff --git a/drivers/ata/sata-imx.c b/drivers/ata/sata-imx.c
index 9415e34055..898cd18518 100644
--- a/drivers/ata/sata-imx.c
+++ b/drivers/ata/sata-imx.c
@@ -83,7 +83,7 @@ static int imx_sata_init_1ms(struct imx_ahci *imx_ahci)
 	return 0;
 }
 
-static int imx_sata_probe(struct device_d *dev)
+static int imx_sata_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct imx_ahci *imx_ahci;
diff --git a/drivers/ata/sata_mv.c b/drivers/ata/sata_mv.c
index 05b27f1008..f0137c07a5 100644
--- a/drivers/ata/sata_mv.c
+++ b/drivers/ata/sata_mv.c
@@ -90,7 +90,7 @@ static void mv_soc_65n_phy_errata(void __iomem *base)
 	writel(reg, base + PHY_MODE9_GEN1);
 }
 
-static int mv_sata_probe(struct device_d *dev)
+static int mv_sata_probe(struct device *dev)
 {
 	struct resource *iores;
 	void __iomem *base;
diff --git a/drivers/base/bus.c b/drivers/base/bus.c
index 09bd621e39..c4e3e7b320 100644
--- a/drivers/base/bus.c
+++ b/drivers/base/bus.c
@@ -47,7 +47,7 @@ int bus_register(struct bus_type *bus)
 	return 0;
 }
 
-int device_match(struct device_d *dev, struct driver_d *drv)
+int device_match(struct device *dev, struct driver_d *drv)
 {
 	if (IS_ENABLED(CONFIG_OFDEVICE) && dev->of_node &&
 	    drv->of_compatible)
@@ -70,7 +70,7 @@ int device_match(struct device_d *dev, struct driver_d *drv)
 	return -1;
 }
 
-int device_match_of_modalias(struct device_d *dev, struct driver_d *drv)
+int device_match_of_modalias(struct device *dev, struct driver_d *drv)
 {
 	const struct platform_device_id *id = drv->id_table;
 	const char *of_modalias = NULL, *p;
diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 8057032a81..1b0ed5aa68 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -46,9 +46,9 @@ LIST_HEAD(active_device_list);
 EXPORT_SYMBOL(active_device_list);
 static LIST_HEAD(deferred);
 
-struct device_d *find_device(const char *str)
+struct device *find_device(const char *str)
 {
-	struct device_d *dev;
+	struct device *dev;
 	struct device_node *np;
 
 	dev = get_device_by_name(str);
@@ -62,9 +62,9 @@ struct device_d *find_device(const char *str)
 	return NULL;
 }
 
-struct device_d *get_device_by_name(const char *name)
+struct device *get_device_by_name(const char *name)
 {
-	struct device_d *dev;
+	struct device *dev;
 
 	for_each_device(dev) {
 		if(!strcmp(dev_name(dev), name))
@@ -74,9 +74,9 @@ struct device_d *get_device_by_name(const char *name)
 	return NULL;
 }
 
-static struct device_d *get_device_by_name_id(const char *name, int id)
+static struct device *get_device_by_name_id(const char *name, int id)
 {
-	struct device_d *dev;
+	struct device *dev;
 
 	for_each_device(dev) {
 		if(!strcmp(dev->name, name) && id == dev->id)
@@ -97,7 +97,7 @@ int get_free_deviceid(const char *name_template)
 	};
 }
 
-int device_probe(struct device_d *dev)
+int device_probe(struct device *dev)
 {
 	static int depth = 0;
 	int ret;
@@ -151,7 +151,7 @@ out:
 	return ret;
 }
 
-int device_detect(struct device_d *dev)
+int device_detect(struct device *dev)
 {
 	if (!dev->detect)
 		return -ENOSYS;
@@ -162,7 +162,7 @@ int device_detect_by_name(const char *__devname)
 {
 	char *devname = xstrdup(__devname);
 	char *str = devname;
-	struct device_d *dev;
+	struct device *dev;
 	int ret = -ENODEV;
 
 	while (1) {
@@ -185,13 +185,13 @@ int device_detect_by_name(const char *__devname)
 
 void device_detect_all(void)
 {
-	struct device_d *dev;
+	struct device *dev;
 
 	for_each_device(dev)
 		device_detect(dev);
 }
 
-static int match(struct driver_d *drv, struct device_d *dev)
+static int match(struct driver_d *drv, struct device *dev)
 {
 	int ret;
 
@@ -212,7 +212,7 @@ err_out:
 	return -1;
 }
 
-int register_device(struct device_d *new_device)
+int register_device(struct device *new_device)
 {
 	struct driver_d *drv;
 
@@ -259,10 +259,10 @@ int register_device(struct device_d *new_device)
 }
 EXPORT_SYMBOL(register_device);
 
-int unregister_device(struct device_d *old_dev)
+int unregister_device(struct device *old_dev)
 {
 	struct cdev *cdev, *ct;
-	struct device_d *child, *dt;
+	struct device *child, *dt;
 
 	dev_dbg(old_dev, "unregister\n");
 
@@ -304,7 +304,7 @@ EXPORT_SYMBOL(unregister_device);
  * This frees dynamically allocated resources allocated during device
  * lifetime, but not the device itself.
  */
-void free_device_res(struct device_d *dev)
+void free_device_res(struct device *dev)
 {
 	free(dev->name);
 	dev->name = NULL;
@@ -321,7 +321,7 @@ EXPORT_SYMBOL(free_device_res);
  * This frees dynamically allocated resources allocated during device
  * lifetime and finally the device itself.
  */
-void free_device(struct device_d *dev)
+void free_device(struct device *dev)
 {
 	free_device_res(dev);
 	free(dev);
@@ -337,7 +337,7 @@ EXPORT_SYMBOL(free_device);
  */
 static int device_probe_deferred(void)
 {
-	struct device_d *dev, *tmp;
+	struct device *dev, *tmp;
 	struct driver_d *drv;
 	bool success;
 
@@ -386,7 +386,7 @@ struct driver_d *get_driver_by_name(const char *name)
 
 int register_driver(struct driver_d *drv)
 {
-	struct device_d *dev = NULL;
+	struct device *dev = NULL;
 
 	if (!drv->name)
 		return -EINVAL;
@@ -405,7 +405,7 @@ int register_driver(struct driver_d *drv)
 }
 EXPORT_SYMBOL(register_driver);
 
-struct resource *dev_get_resource(struct device_d *dev, unsigned long type,
+struct resource *dev_get_resource(struct device *dev, unsigned long type,
 				  int num)
 {
 	int i, n = 0;
@@ -422,7 +422,7 @@ struct resource *dev_get_resource(struct device_d *dev, unsigned long type,
 	return ERR_PTR(-ENOENT);
 }
 
-void *dev_get_mem_region(struct device_d *dev, int num)
+void *dev_get_mem_region(struct device *dev, int num)
 {
 	struct resource *res;
 
@@ -434,7 +434,7 @@ void *dev_get_mem_region(struct device_d *dev, int num)
 }
 EXPORT_SYMBOL(dev_get_mem_region);
 
-struct resource *dev_get_resource_by_name(struct device_d *dev,
+struct resource *dev_get_resource_by_name(struct device *dev,
 					  unsigned long type,
 					  const char *name)
 {
@@ -453,7 +453,8 @@ struct resource *dev_get_resource_by_name(struct device_d *dev,
 	return ERR_PTR(-ENOENT);
 }
 
-struct resource *dev_request_mem_resource_by_name(struct device_d *dev, const char *name)
+struct resource *dev_request_mem_resource_by_name(struct device *dev,
+						  const char *name)
 {
 	struct resource *res;
 
@@ -465,7 +466,8 @@ struct resource *dev_request_mem_resource_by_name(struct device_d *dev, const ch
 }
 EXPORT_SYMBOL(dev_request_mem_resource_by_name);
 
-void __iomem *dev_request_mem_region_by_name(struct device_d *dev, const char *name)
+void __iomem *dev_request_mem_region_by_name(struct device *dev,
+					     const char *name)
 {
 	struct resource *res;
 
@@ -477,7 +479,7 @@ void __iomem *dev_request_mem_region_by_name(struct device_d *dev, const char *n
 }
 EXPORT_SYMBOL(dev_request_mem_region_by_name);
 
-struct resource *dev_request_mem_resource(struct device_d *dev, int num)
+struct resource *dev_request_mem_resource(struct device *dev, int num)
 {
 	struct resource *res;
 
@@ -488,7 +490,7 @@ struct resource *dev_request_mem_resource(struct device_d *dev, int num)
 	return request_iomem_region(dev_name(dev), res->start, res->end);
 }
 
-void __iomem *dev_request_mem_region_err_null(struct device_d *dev, int num)
+void __iomem *dev_request_mem_region_err_null(struct device *dev, int num)
 {
 	struct resource *res;
 
@@ -500,7 +502,7 @@ void __iomem *dev_request_mem_region_err_null(struct device_d *dev, int num)
 }
 EXPORT_SYMBOL(dev_request_mem_region_err_null);
 
-void __iomem *dev_request_mem_region(struct device_d *dev, int num)
+void __iomem *dev_request_mem_region(struct device *dev, int num)
 {
 	struct resource *res;
 
@@ -537,9 +539,9 @@ int generic_memmap_ro(struct cdev *cdev, void **map, int flags)
  *
  * NOTE: This function expects dev->name to be free()-able, so extra
  * precautions needs to be taken when mixing its usage with manual
- * assignement of device_d.name.
+ * assignement of device.name.
  */
-int dev_set_name(struct device_d *dev, const char *fmt, ...)
+int dev_set_name(struct device *dev, const char *fmt, ...)
 {
 	va_list vargs;
 	int err;
@@ -564,7 +566,7 @@ EXPORT_SYMBOL_GPL(dev_set_name);
 
 static void devices_shutdown(void)
 {
-	struct device_d *dev;
+	struct device *dev;
 	int depth = 0;
 
 	list_for_each_entry(dev, &active_device_list, active) {
@@ -579,7 +581,7 @@ static void devices_shutdown(void)
 }
 devshutdown_exitcall(devices_shutdown);
 
-int dev_get_drvdata(struct device_d *dev, const void **data)
+int dev_get_drvdata(struct device *dev, const void **data)
 {
 	if (dev->of_id_entry) {
 		*data = dev->of_id_entry->data;
@@ -594,7 +596,7 @@ int dev_get_drvdata(struct device_d *dev, const void **data)
 	return -ENODEV;
 }
 
-const void *device_get_match_data(struct device_d *dev)
+const void *device_get_match_data(struct device *dev)
 {
 	if (dev->of_id_entry)
 		return dev->of_id_entry->data;
@@ -605,7 +607,8 @@ const void *device_get_match_data(struct device_d *dev)
 	return NULL;
 }
 
-static void device_set_deferred_probe_reason(struct device_d *dev, const struct va_format *vaf)
+static void device_set_deferred_probe_reason(struct device *dev,
+					     const struct va_format *vaf)
 {
 	char *reason;
 	char *last_char;
@@ -655,8 +658,8 @@ static void device_set_deferred_probe_reason(struct device_d *dev, const struct
  * Returns @err.
  *
  */
-int dev_err_probe(struct device_d *dev, int err, const char *fmt, ...);
-int dev_err_probe(struct device_d *dev, int err, const char *fmt, ...)
+int dev_err_probe(struct device *dev, int err, const char *fmt, ...);
+int dev_err_probe(struct device *dev, int err, const char *fmt, ...)
 {
 	struct va_format vaf;
 	va_list args;
@@ -679,7 +682,7 @@ EXPORT_SYMBOL_GPL(dev_err_probe);
 
 /*
  * device_find_child - device iterator for locating a particular device.
- * @parent: parent struct device_d
+ * @parent: parent struct device
  * @match: Callback function to check device
  * @data: Data to pass to match function
  *
@@ -688,10 +691,10 @@ EXPORT_SYMBOL_GPL(dev_err_probe);
  * current device can be obtained, this function will return to the caller
  * and not iterate over any more devices.
  */
-struct device_d *device_find_child(struct device_d *parent, void *data,
-				 int (*match)(struct device_d *dev, void *data))
+struct device *device_find_child(struct device *parent, void *data,
+				 int (*match)(struct device *dev, void *data))
 {
-	struct device_d *child;
+	struct device *child;
 
 	if (!parent)
 		return NULL;
diff --git a/drivers/base/platform.c b/drivers/base/platform.c
index c0ea2746b3..3bc0b71790 100644
--- a/drivers/base/platform.c
+++ b/drivers/base/platform.c
@@ -11,7 +11,7 @@
 #include <of.h>
 #include <pm_domain.h>
 
-static int platform_probe(struct device_d *dev)
+static int platform_probe(struct device *dev)
 {
 	int ret;
 
@@ -22,7 +22,7 @@ static int platform_probe(struct device_d *dev)
 	return dev->driver->probe(dev);
 }
 
-static void platform_remove(struct device_d *dev)
+static void platform_remove(struct device *dev)
 {
 	if (dev->driver->remove)
 		dev->driver->remove(dev);
@@ -35,7 +35,7 @@ int platform_driver_register(struct driver_d *drv)
 	return register_driver(drv);
 }
 
-int platform_device_register(struct device_d *new_device)
+int platform_device_register(struct device *new_device)
 {
 	new_device->bus = &platform_bus;
 
diff --git a/drivers/base/power.c b/drivers/base/power.c
index d4551879e7..8e999c3e14 100644
--- a/drivers/base/power.c
+++ b/drivers/base/power.c
@@ -205,7 +205,7 @@ static int genpd_power_on(struct generic_pm_domain *genpd, unsigned int depth)
 	return 0;
 }
 
-static int __genpd_dev_pm_attach(struct device_d *dev, struct device_node *np,
+static int __genpd_dev_pm_attach(struct device *dev, struct device_node *np,
 				 unsigned int index, bool power_on)
 {
 	struct of_phandle_args pd_args;
@@ -250,7 +250,7 @@ static int __genpd_dev_pm_attach(struct device_d *dev, struct device_node *np,
  * found or turned on, then return -EPROBE_DEFER to ensure that the device is
  * not probed and to re-try again later.
  */
-int genpd_dev_pm_attach(struct device_d *dev)
+int genpd_dev_pm_attach(struct device *dev)
 {
 	if (!dev->of_node)
 		return 0;
diff --git a/drivers/base/regmap/internal.h b/drivers/base/regmap/internal.h
index 05f8f8d622..f17456ebd2 100644
--- a/drivers/base/regmap/internal.h
+++ b/drivers/base/regmap/internal.h
@@ -8,7 +8,7 @@
 struct regmap_bus;
 
 struct regmap {
-	struct device_d *dev;
+	struct device *dev;
 	const struct regmap_bus *bus;
 	const char *name;
 	void *bus_context;
@@ -23,7 +23,7 @@ struct regmap {
 	struct cdev cdev;
 };
 
-enum regmap_endian regmap_get_val_endian(struct device_d *dev,
+enum regmap_endian regmap_get_val_endian(struct device *dev,
 					 const struct regmap_bus *bus,
 					 const struct regmap_config *config);
 
diff --git a/drivers/base/regmap/regmap-mmio.c b/drivers/base/regmap/regmap-mmio.c
index 7b1501df93..6e6ae5ed54 100644
--- a/drivers/base/regmap/regmap-mmio.c
+++ b/drivers/base/regmap/regmap-mmio.c
@@ -185,9 +185,9 @@ static const struct regmap_bus regmap_mmio = {
 	.val_format_endian_default = REGMAP_ENDIAN_LITTLE,
 };
 
-static struct regmap_mmio_context *regmap_mmio_gen_context(struct device_d *dev,
-					void __iomem *regs,
-					const struct regmap_config *config)
+static struct regmap_mmio_context *regmap_mmio_gen_context(struct device *dev,
+							   void __iomem *regs,
+							   const struct regmap_config *config)
 {
 	struct regmap_mmio_context *ctx;
 	int min_stride;
@@ -277,7 +277,7 @@ err_free:
 	return ERR_PTR(ret);
 }
 
-struct regmap *regmap_init_mmio_clk(struct device_d *dev,
+struct regmap *regmap_init_mmio_clk(struct device *dev,
 				    const char *clk_id,
 				    void __iomem *regs,
 				    const struct regmap_config *config)
diff --git a/drivers/base/regmap/regmap.c b/drivers/base/regmap/regmap.c
index a35528227d..97662751be 100644
--- a/drivers/base/regmap/regmap.c
+++ b/drivers/base/regmap/regmap.c
@@ -20,7 +20,7 @@
 
 static LIST_HEAD(regmaps);
 
-enum regmap_endian regmap_get_val_endian(struct device_d *dev,
+enum regmap_endian regmap_get_val_endian(struct device *dev,
 					 const struct regmap_bus *bus,
 					 const struct regmap_config *config)
 {
@@ -74,7 +74,7 @@ EXPORT_SYMBOL_GPL(regmap_get_val_endian);
  *
  * Returns a pointer to the new map or a ERR_PTR value on failure
  */
-struct regmap *regmap_init(struct device_d *dev,
+struct regmap *regmap_init(struct device *dev,
 			     const struct regmap_bus *bus,
 			     void *bus_context,
 			     const struct regmap_config *config)
@@ -108,7 +108,7 @@ struct regmap *regmap_init(struct device_d *dev,
  *
  * Returns a pointer to the regmap or a ERR_PTR value on failure
  */
-struct regmap *dev_get_regmap(struct device_d *dev, const char *name)
+struct regmap *dev_get_regmap(struct device *dev, const char *name)
 {
 	struct regmap *map;
 
@@ -124,7 +124,7 @@ struct regmap *dev_get_regmap(struct device_d *dev, const char *name)
 	return ERR_PTR(-ENOENT);
 }
 
-struct device_d *regmap_get_device(struct regmap *map)
+struct device *regmap_get_device(struct regmap *map)
 {
 	return map->dev;
 }
diff --git a/drivers/base/resource.c b/drivers/base/resource.c
index 0134456ffa..3725c79eb9 100644
--- a/drivers/base/resource.c
+++ b/drivers/base/resource.c
@@ -9,9 +9,9 @@
 #include <xfuncs.h>
 #include <malloc.h>
 
-struct device_d *device_alloc(const char *devname, int id)
+struct device *device_alloc(const char *devname, int id)
 {
-	struct device_d *dev;
+	struct device *dev;
 
 	dev = xzalloc(sizeof(*dev));
 	dev_set_name(dev, devname);
@@ -20,7 +20,7 @@ struct device_d *device_alloc(const char *devname, int id)
 	return dev;
 }
 
-int device_add_data(struct device_d *dev, const void *data, size_t size)
+int device_add_data(struct device *dev, const void *data, size_t size)
 {
 	free(dev->platform_data);
 
@@ -32,7 +32,8 @@ int device_add_data(struct device_d *dev, const void *data, size_t size)
 	return 0;
 }
 
-int device_add_resources(struct device_d *dev, const struct resource *res, int num)
+int device_add_resources(struct device *dev, const struct resource *res,
+			 int num)
 {
 	dev->resource = xmemdup(res, sizeof(*res) * num);
 	dev->num_resources = num;
@@ -40,8 +41,9 @@ int device_add_resources(struct device_d *dev, const struct resource *res, int n
 	return 0;
 }
 
-int device_add_resource(struct device_d *dev, const char *resname,
-		resource_size_t start, resource_size_t size, unsigned int flags)
+int device_add_resource(struct device *dev, const char *resname,
+			resource_size_t start, resource_size_t size,
+			unsigned int flags)
 {
 	struct resource res = {
 		.start = start,
@@ -55,11 +57,11 @@ int device_add_resource(struct device_d *dev, const char *resname,
 	return device_add_resources(dev, &res, 1);
 }
 
-struct device_d *add_generic_device(const char* devname, int id, const char *resname,
+struct device *add_generic_device(const char* devname, int id, const char *resname,
 		resource_size_t start, resource_size_t size, unsigned int flags,
 		void *pdata)
 {
-	struct device_d *dev;
+	struct device *dev;
 
 	dev = device_alloc(devname, id);
 	dev->platform_data = pdata;
@@ -71,10 +73,10 @@ struct device_d *add_generic_device(const char* devname, int id, const char *res
 }
 EXPORT_SYMBOL(add_generic_device);
 
-struct device_d *add_generic_device_res(const char* devname, int id,
+struct device *add_generic_device_res(const char* devname, int id,
 		struct resource *res, int nb, void *pdata)
 {
-	struct device_d *dev;
+	struct device *dev;
 
 	dev = device_alloc(devname, id);
 	dev->platform_data = pdata;
@@ -87,7 +89,7 @@ struct device_d *add_generic_device_res(const char* devname, int id,
 EXPORT_SYMBOL(add_generic_device_res);
 
 #ifdef CONFIG_DRIVER_NET_DM9K
-struct device_d *add_dm9000_device(int id, resource_size_t base,
+struct device *add_dm9000_device(int id, resource_size_t base,
 		resource_size_t data, int flags, void *pdata)
 {
 	struct resource *res;
@@ -123,7 +125,7 @@ EXPORT_SYMBOL(add_dm9000_device);
 #endif
 
 #ifdef CONFIG_USB_EHCI
-struct device_d *add_usb_ehci_device(int id, resource_size_t hccr,
+struct device *add_usb_ehci_device(int id, resource_size_t hccr,
 		resource_size_t hcor, void *pdata)
 {
 	struct resource *res;
@@ -142,7 +144,7 @@ EXPORT_SYMBOL(add_usb_ehci_device);
 #endif
 
 #ifdef CONFIG_DRIVER_NET_KS8851_MLL
-struct device_d *add_ks8851_device(int id, resource_size_t addr,
+struct device *add_ks8851_device(int id, resource_size_t addr,
 		resource_size_t addr_cmd, int flags, void *pdata)
 {
 	struct resource *res;
diff --git a/drivers/block/efi-block-io.c b/drivers/block/efi-block-io.c
index b78117d445..a4365ac7c3 100644
--- a/drivers/block/efi-block-io.c
+++ b/drivers/block/efi-block-io.c
@@ -49,10 +49,10 @@ struct efi_block_io_protocol {
 
 struct efi_bio_priv {
 	struct efi_block_io_protocol *protocol;
-	struct device_d *dev;
+	struct device *dev;
 	struct block_device blk;
 	u32 media_id;
-	void (*efi_info)(struct device_d *);
+	void (*efi_info)(struct device *);
 };
 
 static int efi_bio_read(struct block_device *blk, void *buffer, sector_t block,
@@ -102,7 +102,7 @@ static struct block_device_ops efi_bio_ops = {
 	.flush = efi_bio_flush,
 };
 
-static void efi_bio_print_info(struct device_d *dev)
+static void efi_bio_print_info(struct device *dev)
 {
 	struct efi_bio_priv *priv = dev->priv;
 	struct efi_block_io_media *media = priv->protocol->media;
@@ -150,7 +150,7 @@ static int efi_bio_probe(struct efi_device *efidev)
 	int instance;
 	struct efi_bio_priv *priv;
 	struct efi_block_io_media *media;
-	struct device_d *dev = &efidev->dev;
+	struct device *dev = &efidev->dev;
 
 	priv = xzalloc(sizeof(*priv));
 
diff --git a/drivers/bus/acpi.c b/drivers/bus/acpi.c
index 1d6069b6d8..c69473394f 100644
--- a/drivers/bus/acpi.c
+++ b/drivers/bus/acpi.c
@@ -84,7 +84,7 @@ static struct sig_desc {
 	{ /* sentinel */ }
 };
 
-static struct acpi_sdt *acpi_get_dev_sdt(struct device_d *dev)
+static struct acpi_sdt *acpi_get_dev_sdt(struct device *dev)
 {
 	int i;
 
@@ -96,7 +96,7 @@ static struct acpi_sdt *acpi_get_dev_sdt(struct device_d *dev)
 	return NULL;
 }
 
-static void acpi_devinfo(struct device_d *dev)
+static void acpi_devinfo(struct device *dev)
 {
 	struct acpi_sdt *sdt = acpi_get_dev_sdt(dev);
 	struct sig_desc *sig_desc;
@@ -120,7 +120,7 @@ static void acpi_devinfo(struct device_d *dev)
 	printf("CreatorRevision: %u\n", sdt->creator_revision);
 }
 
-static int acpi_register_device(struct device_d *dev, struct acpi_sdt *sdt)
+static int acpi_register_device(struct device *dev, struct acpi_sdt *sdt)
 {
 	int ret;
 
@@ -136,10 +136,10 @@ static int acpi_register_device(struct device_d *dev, struct acpi_sdt *sdt)
 	return 0;
 }
 
-static struct device_d *acpi_add_device(struct bus_type *bus,
+static struct device *acpi_add_device(struct bus_type *bus,
 					acpi_sig_t signature)
 {
-	struct device_d *dev;
+	struct device *dev;
 
 	dev = xzalloc(sizeof(*dev));
 
@@ -203,7 +203,7 @@ static int acpi_register_devices(struct bus_type *bus)
 	return 0;
 }
 
-static int acpi_bus_match(struct device_d *dev, struct driver_d *drv)
+static int acpi_bus_match(struct device *dev, struct driver_d *drv)
 {
 	struct acpi_driver *acpidrv = to_acpi_driver(drv);
 	struct acpi_sdt *sdt = acpi_get_dev_sdt(dev);
@@ -211,12 +211,12 @@ static int acpi_bus_match(struct device_d *dev, struct driver_d *drv)
 	return acpi_sigcmp(acpidrv->signature, sdt->signature);
 }
 
-static int acpi_bus_probe(struct device_d *dev)
+static int acpi_bus_probe(struct device *dev)
 {
 	return dev->driver->probe(dev);
 }
 
-static void acpi_bus_remove(struct device_d *dev)
+static void acpi_bus_remove(struct device *dev)
 {
 	if (dev->driver->remove)
 		dev->driver->remove(dev);
diff --git a/drivers/bus/imx-weim.c b/drivers/bus/imx-weim.c
index 7d8471b7ac..3ac2609f47 100644
--- a/drivers/bus/imx-weim.c
+++ b/drivers/bus/imx-weim.c
@@ -66,7 +66,7 @@ static struct of_device_id weim_id_table[] = {
 };
 
 struct imx_weim {
-	struct device_d *dev;
+	struct device *dev;
 	void __iomem *base;
 	struct imx_weim_devtype *devtype;
 };
@@ -125,7 +125,7 @@ static int weim_parse_dt(struct imx_weim *weim)
 	return ret;
 }
 
-static int weim_probe(struct device_d *dev)
+static int weim_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct imx_weim_devtype *devtype;
diff --git a/drivers/bus/omap-gpmc.c b/drivers/bus/omap-gpmc.c
index 2d3a637820..df9e66b54a 100644
--- a/drivers/bus/omap-gpmc.c
+++ b/drivers/bus/omap-gpmc.c
@@ -141,7 +141,7 @@ struct gpmc_settings {
 };
 
 struct imx_gpmc {
-	struct device_d *dev;
+	struct device *dev;
 	void __iomem *base;
 	struct imx_gpmc_devtype *devtype;
 };
@@ -452,7 +452,7 @@ static struct dt_eccmode modes[] = {
 	},
 };
 
-static int gpmc_probe_nand_child(struct device_d *dev,
+static int gpmc_probe_nand_child(struct device *dev,
 				 struct device_node *child)
 {
 	u32 val;
@@ -537,8 +537,8 @@ static int gpmc_probe_nand_child(struct device_d *dev,
  * Allocates and configures a GPMC chip-select for a child device.
  * Returns 0 on success and appropriate negative error code on failure.
  */
-static int gpmc_probe_generic_child(struct device_d *dev,
-				struct device_node *child)
+static int gpmc_probe_generic_child(struct device *dev,
+				    struct device_node *child)
 {
 	struct gpmc_settings gpmc_s = {};
 	struct gpmc_timings gpmc_t = {};
@@ -600,7 +600,7 @@ err:
 	return ret;
 }
 
-static int gpmc_probe(struct device_d *dev)
+static int gpmc_probe(struct device *dev)
 {
 	struct device_node *child, *node = dev->of_node;
 	int ret;
diff --git a/drivers/bus/ti-sysc.c b/drivers/bus/ti-sysc.c
index e863e01f3b..862e9d0cc3 100644
--- a/drivers/bus/ti-sysc.c
+++ b/drivers/bus/ti-sysc.c
@@ -8,7 +8,7 @@
 #include <of.h>
 #include <linux/err.h>
 
-static int ti_sysc_probe(struct device_d *dev)
+static int ti_sysc_probe(struct device *dev)
 {
 	int ret;
 
diff --git a/drivers/clk/bcm/clk-bcm2835-aux.c b/drivers/clk/bcm/clk-bcm2835-aux.c
index b4636b850e..39d61a429e 100644
--- a/drivers/clk/bcm/clk-bcm2835-aux.c
+++ b/drivers/clk/bcm/clk-bcm2835-aux.c
@@ -13,7 +13,7 @@
 #define BCM2835_AUXIRQ		0x00
 #define BCM2835_AUXENB		0x04
 
-static int bcm2835_aux_clk_probe(struct device_d *dev)
+static int bcm2835_aux_clk_probe(struct device *dev)
 {
 	struct clk_hw_onecell_data *onecell;
 	const char *parent;
diff --git a/drivers/clk/clk-ar933x.c b/drivers/clk/clk-ar933x.c
index 372a9e7457..cc43f1ab35 100644
--- a/drivers/clk/clk-ar933x.c
+++ b/drivers/clk/clk-ar933x.c
@@ -104,7 +104,7 @@ static void ar933x_pll_init(void __iomem *base)
 		AR933X_PLL_CLOCK_CTRL_AHB_DIV_MASK);
 }
 
-static int ar933x_clk_probe(struct device_d *dev)
+static int ar933x_clk_probe(struct device *dev)
 {
 	struct resource *iores;
 	void __iomem *base;
diff --git a/drivers/clk/clk-ar9344.c b/drivers/clk/clk-ar9344.c
index 5bb55d2227..8afce4f72e 100644
--- a/drivers/clk/clk-ar9344.c
+++ b/drivers/clk/clk-ar9344.c
@@ -99,7 +99,7 @@ static void ar9344_pll_init(void __iomem *base)
 	clks[ATH79_CLK_CPU] = clk_ar9344("cpu", "ref", base);
 }
 
-static int ar9344_clk_probe(struct device_d *dev)
+static int ar9344_clk_probe(struct device *dev)
 {
 	struct resource *iores;
 	void __iomem *base;
diff --git a/drivers/clk/clk-bulk.c b/drivers/clk/clk-bulk.c
index f6fe07a0bf..37982db9aa 100644
--- a/drivers/clk/clk-bulk.c
+++ b/drivers/clk/clk-bulk.c
@@ -23,7 +23,7 @@ void clk_bulk_put(int num_clks, struct clk_bulk_data *clks)
 }
 EXPORT_SYMBOL_GPL(clk_bulk_put);
 
-static int __clk_bulk_get(struct device_d *dev, int num_clks,
+static int __clk_bulk_get(struct device *dev, int num_clks,
 			      struct clk_bulk_data *clks,
 			      bool optional)
 {
@@ -58,14 +58,14 @@ err:
 	return ret;
 }
 
-int __must_check clk_bulk_get(struct device_d *dev, int num_clks,
+int __must_check clk_bulk_get(struct device *dev, int num_clks,
 			      struct clk_bulk_data *clks)
 {
 	return __clk_bulk_get(dev, num_clks, clks, false);
 }
 EXPORT_SYMBOL(clk_bulk_get);
 
-int __must_check clk_bulk_get_optional(struct device_d *dev, int num_clks,
+int __must_check clk_bulk_get_optional(struct device *dev, int num_clks,
 				       struct clk_bulk_data *clks)
 {
 	return __clk_bulk_get(dev, num_clks, clks, true);
@@ -140,7 +140,7 @@ void clk_bulk_put_all(int num_clks, struct clk_bulk_data *clks)
 }
 EXPORT_SYMBOL(clk_bulk_put_all);
 
-int __must_check clk_bulk_get_all(struct device_d *dev,
+int __must_check clk_bulk_get_all(struct device *dev,
 				  struct clk_bulk_data **clks)
 {
 	struct device_node *np = dev->of_node;
diff --git a/drivers/clk/clk-composite.c b/drivers/clk/clk-composite.c
index 4ebdd399b4..45dec790d7 100644
--- a/drivers/clk/clk-composite.c
+++ b/drivers/clk/clk-composite.c
@@ -172,13 +172,17 @@ err:
 	return 0;
 }
 
-struct clk_hw *clk_hw_register_composite(struct device_d *dev,
-		const char *name, const char * const *parent_names,
-		int num_parents,
-		struct clk_hw *mux_hw, const struct clk_ops *mux_ops,
-		struct clk_hw *rate_hw, const struct clk_ops *rate_ops,
-		struct clk_hw *gate_hw, const struct clk_ops *gate_ops,
-		unsigned long flags)
+struct clk_hw *clk_hw_register_composite(struct device *dev,
+					 const char *name,
+					 const char * const *parent_names,
+					 int num_parents,
+					 struct clk_hw *mux_hw,
+					 const struct clk_ops *mux_ops,
+					 struct clk_hw *rate_hw,
+					 const struct clk_ops *rate_ops,
+					 struct clk_hw *gate_hw,
+					 const struct clk_ops *gate_ops,
+					 unsigned long flags)
 {
 	struct clk *clk;
 
diff --git a/drivers/clk/clk-divider.c b/drivers/clk/clk-divider.c
index fed9ad9d24..e095b40bfa 100644
--- a/drivers/clk/clk-divider.c
+++ b/drivers/clk/clk-divider.c
@@ -410,40 +410,48 @@ struct clk *clk_divider_table(const char *name, const char *parent,
 	return &div->hw.clk;
 }
 
-struct clk *clk_register_divider_table(struct device_d *dev, const char *name,
-		const char *parent_name, unsigned long flags,
-		void __iomem *reg, u8 shift, u8 width,
-		u8 clk_divider_flags, const struct clk_div_table *table,
-		spinlock_t *lock)
+struct clk *clk_register_divider_table(struct device *dev, const char *name,
+				       const char *parent_name,
+				       unsigned long flags,
+				       void __iomem *reg, u8 shift, u8 width,
+				       u8 clk_divider_flags,
+				       const struct clk_div_table *table,
+				       spinlock_t *lock)
 {
 	return clk_divider_table(name, parent_name, flags, reg, shift, width,
 				 table, clk_divider_flags);
 }
 
-struct clk *clk_register_divider(struct device_d *dev, const char *name,
-		const char *parent_name, unsigned long flags,
-		void __iomem *reg, u8 shift, u8 width,
-		u8 clk_divider_flags, spinlock_t *lock)
+struct clk *clk_register_divider(struct device *dev, const char *name,
+				 const char *parent_name, unsigned long flags,
+				 void __iomem *reg, u8 shift, u8 width,
+				 u8 clk_divider_flags, spinlock_t *lock)
 {
 	return clk_divider(name, parent_name, flags, reg, shift, width,
 			   clk_divider_flags);
 }
 
-struct clk_hw *clk_hw_register_divider_table(struct device_d *dev,
-	        const char *name, const char *parent_name, unsigned long flags,
-		void __iomem *reg, u8 shift, u8 width,
-		u8 clk_divider_flags, const struct clk_div_table *table,
-		spinlock_t *lock)
+struct clk_hw *clk_hw_register_divider_table(struct device *dev,
+					     const char *name,
+					     const char *parent_name,
+					     unsigned long flags,
+					     void __iomem *reg, u8 shift,
+					     u8 width,
+					     u8 clk_divider_flags,
+					     const struct clk_div_table *table,
+					     spinlock_t *lock)
 {
 	return clk_to_clk_hw(clk_register_divider_table(dev, xstrdup(name),
 		xstrdup(parent_name), flags, reg, shift, width,
 		clk_divider_flags, table, lock));
 }
 
-struct clk_hw *clk_hw_register_divider(struct device_d *dev,
-	        const char *name, const char *parent_name, unsigned long flags,
-		void __iomem *reg, u8 shift, u8 width,
-		u8 clk_divider_flags, spinlock_t *lock)
+struct clk_hw *clk_hw_register_divider(struct device *dev,
+				       const char *name,
+				       const char *parent_name,
+				       unsigned long flags,
+				       void __iomem *reg, u8 shift, u8 width,
+				       u8 clk_divider_flags, spinlock_t *lock)
 {
 	return clk_to_clk_hw(clk_register_divider(dev, xstrdup(name),
 		xstrdup(parent_name), flags, reg, shift, width,
diff --git a/drivers/clk/clk-fixed-factor.c b/drivers/clk/clk-fixed-factor.c
index a6d3fdc6a1..d2c808d40c 100644
--- a/drivers/clk/clk-fixed-factor.c
+++ b/drivers/clk/clk-fixed-factor.c
@@ -77,16 +77,20 @@ struct clk *clk_fixed_factor(const char *name,
 	return &f->hw.clk;
 }
 
-struct clk *clk_register_fixed_factor(struct device_d *dev, const char *name,
-		const char *parent_name, unsigned long flags,
-		unsigned int mult, unsigned int div)
+struct clk *clk_register_fixed_factor(struct device *dev, const char *name,
+				      const char *parent_name,
+				      unsigned long flags,
+				      unsigned int mult, unsigned int div)
 {
 	return clk_fixed_factor(name, parent_name, mult, div, flags);
 }
 
-struct clk_hw *clk_hw_register_fixed_factor(struct device_d *dev,
-		const char *name, const char *parent_name, unsigned long flags,
-		unsigned int mult, unsigned int div)
+struct clk_hw *clk_hw_register_fixed_factor(struct device *dev,
+					    const char *name,
+					    const char *parent_name,
+					    unsigned long flags,
+					    unsigned int mult,
+					    unsigned int div)
 {
 	return clk_to_clk_hw(clk_register_fixed_factor(dev, xstrdup(name),
 						       xstrdup(parent_name),
diff --git a/drivers/clk/clk-fixed.c b/drivers/clk/clk-fixed.c
index 9e5a07817b..6ec2feb84f 100644
--- a/drivers/clk/clk-fixed.c
+++ b/drivers/clk/clk-fixed.c
@@ -63,7 +63,7 @@ struct clk *clk_register_fixed_rate(const char *name,
 	return &fix->hw.clk;
 }
 
-struct clk_hw *clk_hw_register_fixed_rate(struct device_d *dev,
+struct clk_hw *clk_hw_register_fixed_rate(struct device *dev,
 					  const char *name, const char *parent_name,
 					  unsigned long flags, unsigned long rate)
 {
diff --git a/drivers/clk/clk-gate.c b/drivers/clk/clk-gate.c
index 3cfd707238..d31920fd0b 100644
--- a/drivers/clk/clk-gate.c
+++ b/drivers/clk/clk-gate.c
@@ -117,10 +117,10 @@ struct clk *clk_gate_inverted(const char *name, const char *parent,
 	return clk_gate(name, parent, reg, shift, flags, CLK_GATE_SET_TO_DISABLE);
 }
 
-struct clk *clk_register_gate(struct device_d *dev, const char *name,
-		const char *parent_name, unsigned long flags,
-		void __iomem *reg, u8 bit_idx,
-		u8 clk_gate_flags, spinlock_t *lock)
+struct clk *clk_register_gate(struct device *dev, const char *name,
+			      const char *parent_name, unsigned long flags,
+			      void __iomem *reg, u8 bit_idx,
+			      u8 clk_gate_flags, spinlock_t *lock)
 {
 	return clk_gate(name, parent_name, reg, bit_idx, flags, clk_gate_flags);
 }
diff --git a/drivers/clk/clk-mux.c b/drivers/clk/clk-mux.c
index 8463f1ee82..ad82d97ea8 100644
--- a/drivers/clk/clk-mux.c
+++ b/drivers/clk/clk-mux.c
@@ -204,21 +204,23 @@ struct clk *clk_mux(const char *name, unsigned clk_flags, void __iomem *reg,
 	return m;
 }
 
-struct clk *clk_register_mux(struct device_d *dev, const char *name,
-		const char * const *parent_names, u8 num_parents,
-		unsigned long flags,
-		void __iomem *reg, u8 shift, u8 width,
-		u8 clk_mux_flags, spinlock_t *lock)
+struct clk *clk_register_mux(struct device *dev, const char *name,
+			     const char * const *parent_names, u8 num_parents,
+			     unsigned long flags,
+			     void __iomem *reg, u8 shift, u8 width,
+			     u8 clk_mux_flags, spinlock_t *lock)
 {
 	return clk_mux(name, flags, reg, shift, width, parent_names,
 		       num_parents, clk_mux_flags);
 }
 
-struct clk_hw *__clk_hw_register_mux(struct device_d *dev,
-		const char *name, u8 num_parents,
-		const char * const *parent_names,
-		unsigned long flags, void __iomem *reg, u8 shift, u32 mask,
-		u8 clk_mux_flags, u32 *table, spinlock_t *lock)
+struct clk_hw *__clk_hw_register_mux(struct device *dev,
+				     const char *name, u8 num_parents,
+				     const char * const *parent_names,
+				     unsigned long flags, void __iomem *reg,
+				     u8 shift, u32 mask,
+				     u8 clk_mux_flags, u32 *table,
+				     spinlock_t *lock)
 {
 	struct clk_mux *mux;
 	struct clk_hw *hw;
diff --git a/drivers/clk/clk-rpi.c b/drivers/clk/clk-rpi.c
index 1eae4540bb..b745518854 100644
--- a/drivers/clk/clk-rpi.c
+++ b/drivers/clk/clk-rpi.c
@@ -40,7 +40,7 @@ static struct clk *rpi_register_firmware_clock(u32 clock_id, const char *name)
 	return clk_fixed(name, msg->get_clock_rate.body.resp.rate_hz);
 }
 
-static int bcm2835_cprman_init(struct device_d *dev)
+static int bcm2835_cprman_init(struct device *dev)
 {
 	struct clk *clk_cs;
 
@@ -50,9 +50,9 @@ static int bcm2835_cprman_init(struct device_d *dev)
 	return 0;
 }
 
-static int rpi_cprman_probe(struct device_d *dev)
+static int rpi_cprman_probe(struct device *dev)
 {
-	int (*init)(struct device_d *dev);
+	int (*init)(struct device *dev);
 
 	init = device_get_match_data(dev);
 	if (init) {
diff --git a/drivers/clk/clk-scmi.c b/drivers/clk/clk-scmi.c
index fcffe6a438..55141a7b54 100644
--- a/drivers/clk/clk-scmi.c
+++ b/drivers/clk/clk-scmi.c
@@ -101,7 +101,7 @@ static const struct clk_ops scmi_clk_ops = {
 	.disable = scmi_clk_disable,
 };
 
-static int scmi_clk_ops_init(struct device_d *dev, struct scmi_clk *sclk)
+static int scmi_clk_ops_init(struct device *dev, struct scmi_clk *sclk)
 {
 	struct clk_init_data init = {
 		.flags = CLK_GET_RATE_NOCACHE,
@@ -119,7 +119,7 @@ static int scmi_clocks_probe(struct scmi_device *sdev)
 	int idx, count, err;
 	struct clk **clks;
 	struct clk_onecell_data *clk_data;
-	struct device_d *dev = &sdev->dev;
+	struct device *dev = &sdev->dev;
 	struct device_node *np = dev->of_node;
 	const struct scmi_handle *handle = sdev->handle;
 	struct scmi_protocol_handle *ph;
diff --git a/drivers/clk/clk-stm32f4.c b/drivers/clk/clk-stm32f4.c
index 4611038f4b..4841d616f5 100644
--- a/drivers/clk/clk-stm32f4.c
+++ b/drivers/clk/clk-stm32f4.c
@@ -457,7 +457,7 @@ static const struct clk_ops clk_apb_mul_factor_ops = {
 	.recalc_rate = clk_apb_mul_recalc_rate,
 };
 
-static struct clk *clk_register_apb_mul(struct device_d *dev, const char *name,
+static struct clk *clk_register_apb_mul(struct device *dev, const char *name,
 					const char *parent_name,
 					unsigned long flags, u8 bit_idx)
 {
@@ -952,10 +952,12 @@ static const struct clk_ops rgclk_ops = {
 	.is_enabled = rgclk_is_enabled,
 };
 
-static struct clk_hw *clk_register_rgate(struct device_d *dev, const char *name,
-		const char *parent_name, unsigned long flags,
-		void __iomem *reg, u8 bit_idx, u8 bit_rdy_idx,
-		u8 clk_gate_flags, spinlock_t *lock)
+static struct clk_hw *clk_register_rgate(struct device *dev, const char *name,
+					 const char *parent_name,
+					 unsigned long flags,
+					 void __iomem *reg, u8 bit_idx,
+					 u8 bit_rdy_idx,
+					 u8 clk_gate_flags, spinlock_t *lock)
 {
 	struct stm32_rgate *rgate;
 	struct clk_init_data init = { NULL };
@@ -1047,10 +1049,13 @@ static const struct clk_ops cclk_mux_ops = {
 	.set_parent = cclk_mux_set_parent,
 };
 
-static struct clk_hw *stm32_register_cclk(struct device_d *dev, const char *name,
-		const char * const *parent_names, int num_parents,
-		void __iomem *reg, u8 bit_idx, u8 shift, unsigned long flags,
-		spinlock_t *lock)
+static struct clk_hw *stm32_register_cclk(struct device *dev,
+					  const char *name,
+					  const char * const *parent_names,
+					  int num_parents,
+					  void __iomem *reg, u8 bit_idx,
+					  u8 shift, unsigned long flags,
+					  spinlock_t *lock)
 {
 	struct clk_hw *hw;
 	struct clk_gate *gate;
diff --git a/drivers/clk/clk-stm32mp1.c b/drivers/clk/clk-stm32mp1.c
index 6753a36890..93c77dfc72 100644
--- a/drivers/clk/clk-stm32mp1.c
+++ b/drivers/clk/clk-stm32mp1.c
@@ -320,7 +320,7 @@ struct clock_config {
 	int num_parents;
 	unsigned long flags;
 	void *cfg;
-	struct clk_hw * (*func)(struct device_d *dev,
+	struct clk_hw * (*func)(struct device *dev,
 				struct clk_hw_onecell_data *clk_data,
 				void __iomem *base, spinlock_t *lock,
 				const struct clock_config *cfg);
@@ -380,7 +380,7 @@ struct stm32_composite_cfg {
 };
 
 static struct clk_hw *
-_clk_hw_register_gate(struct device_d *dev,
+_clk_hw_register_gate(struct device *dev,
 		      struct clk_hw_onecell_data *clk_data,
 		      void __iomem *base, spinlock_t *lock,
 		      const struct clock_config *cfg)
@@ -398,7 +398,7 @@ _clk_hw_register_gate(struct device_d *dev,
 }
 
 static struct clk_hw *
-_clk_hw_register_fixed_factor(struct device_d *dev,
+_clk_hw_register_fixed_factor(struct device *dev,
 			      struct clk_hw_onecell_data *clk_data,
 			      void __iomem *base, spinlock_t *lock,
 			      const struct clock_config *cfg)
@@ -411,7 +411,7 @@ _clk_hw_register_fixed_factor(struct device_d *dev,
 }
 
 static struct clk_hw *
-_clk_hw_register_divider_table(struct device_d *dev,
+_clk_hw_register_divider_table(struct device *dev,
 			       struct clk_hw_onecell_data *clk_data,
 			       void __iomem *base, spinlock_t *lock,
 			       const struct clock_config *cfg)
@@ -431,7 +431,7 @@ _clk_hw_register_divider_table(struct device_d *dev,
 }
 
 static struct clk_hw *
-_clk_hw_register_mux(struct device_d *dev,
+_clk_hw_register_mux(struct device *dev,
 		     struct clk_hw_onecell_data *clk_data,
 		     void __iomem *base, spinlock_t *lock,
 		     const struct clock_config *cfg)
@@ -472,7 +472,7 @@ static const struct clk_ops mp1_gate_clk_ops = {
 	.is_enabled	= clk_gate_is_enabled,
 };
 
-static struct clk_hw *_get_stm32_mux(struct device_d *dev, void __iomem *base,
+static struct clk_hw *_get_stm32_mux(struct device *dev, void __iomem *base,
 				     const struct stm32_mux_cfg *cfg,
 				     spinlock_t *lock)
 {
@@ -512,7 +512,7 @@ static struct clk_hw *_get_stm32_mux(struct device_d *dev, void __iomem *base,
 	return mux_hw;
 }
 
-static struct clk_hw *_get_stm32_div(struct device_d *dev, void __iomem *base,
+static struct clk_hw *_get_stm32_div(struct device *dev, void __iomem *base,
 				     const struct stm32_div_cfg *cfg,
 				     spinlock_t *lock)
 {
@@ -533,7 +533,7 @@ static struct clk_hw *_get_stm32_div(struct device_d *dev, void __iomem *base,
 	return &div->hw;
 }
 
-static struct clk_hw *_get_stm32_gate(struct device_d *dev, void __iomem *base,
+static struct clk_hw *_get_stm32_gate(struct device *dev, void __iomem *base,
 				      const struct stm32_gate_cfg *cfg,
 				      spinlock_t *lock)
 {
@@ -573,7 +573,7 @@ static struct clk_hw *_get_stm32_gate(struct device_d *dev, void __iomem *base,
 }
 
 static struct clk_hw *
-clk_stm32_register_gate_ops(struct device_d *dev,
+clk_stm32_register_gate_ops(struct device *dev,
 			    const char *name,
 			    const char *parent_name,
 			    unsigned long flags,
@@ -609,7 +609,7 @@ clk_stm32_register_gate_ops(struct device_d *dev,
 }
 
 static struct clk_hw *
-clk_stm32_register_composite(struct device_d *dev,
+clk_stm32_register_composite(struct device *dev,
 			     const char *name, const char * const *parent_names,
 			     int num_parents, void __iomem *base,
 			     const struct stm32_composite_cfg *cfg,
@@ -852,7 +852,7 @@ static const struct clk_ops pll_ops = {
 	.get_parent	= pll_get_parent,
 };
 
-static struct clk_hw *clk_register_pll(struct device_d *dev, const char *name,
+static struct clk_hw *clk_register_pll(struct device *dev, const char *name,
 				       const char * const *parent_names,
 				       int num_parents,
 				       void __iomem *reg,
@@ -989,7 +989,7 @@ static const struct clk_ops timer_ker_ops = {
 
 };
 
-static struct clk_hw *clk_register_cktim(struct device_d *dev, const char *name,
+static struct clk_hw *clk_register_cktim(struct device *dev, const char *name,
 					 const char *parent_name,
 					 unsigned long flags,
 					 void __iomem *apbdiv,
@@ -1030,7 +1030,7 @@ struct stm32_pll_cfg {
 	u32 muxoff;
 };
 
-static struct clk_hw *_clk_register_pll(struct device_d *dev,
+static struct clk_hw *_clk_register_pll(struct device *dev,
 					struct clk_hw_onecell_data *clk_data,
 					void __iomem *base, spinlock_t *lock,
 					const struct clock_config *cfg)
@@ -1049,7 +1049,7 @@ struct stm32_cktim_cfg {
 	u32 offset_timpre;
 };
 
-static struct clk_hw *_clk_register_cktim(struct device_d *dev,
+static struct clk_hw *_clk_register_cktim(struct device *dev,
 					  struct clk_hw_onecell_data *clk_data,
 					  void __iomem *base, spinlock_t *lock,
 					  const struct clock_config *cfg)
@@ -1062,7 +1062,7 @@ static struct clk_hw *_clk_register_cktim(struct device_d *dev,
 }
 
 static struct clk_hw *
-_clk_stm32_register_gate(struct device_d *dev,
+_clk_stm32_register_gate(struct device *dev,
 			 struct clk_hw_onecell_data *clk_data,
 			 void __iomem *base, spinlock_t *lock,
 			 const struct clock_config *cfg)
@@ -1077,7 +1077,7 @@ _clk_stm32_register_gate(struct device_d *dev,
 }
 
 static struct clk_hw *
-_clk_stm32_register_composite(struct device_d *dev,
+_clk_stm32_register_composite(struct device *dev,
 			      struct clk_hw_onecell_data *clk_data,
 			      void __iomem *base, spinlock_t *lock,
 			      const struct clock_config *cfg)
@@ -2068,7 +2068,7 @@ static const struct of_device_id stm32mp1_match_data[] = {
 	{ }
 };
 
-static int stm32_register_hw_clk(struct device_d *dev,
+static int stm32_register_hw_clk(struct device *dev,
 				 struct clk_hw_onecell_data *clk_data,
 				 void __iomem *base, spinlock_t *lock,
 				 const struct clock_config *cfg)
@@ -2178,7 +2178,7 @@ static const struct reset_control_ops stm32_reset_ops = {
 	.status		= stm32_reset_status,
 };
 
-static int stm32_rcc_reset_init(struct device_d *dev, void __iomem *base,
+static int stm32_rcc_reset_init(struct device *dev, void __iomem *base,
 				const struct of_device_id *match)
 {
 	const struct stm32_rcc_match_data *data = match->data;
@@ -2197,7 +2197,7 @@ static int stm32_rcc_reset_init(struct device_d *dev, void __iomem *base,
 	return reset_controller_register(&reset_data->rcdev);
 }
 
-static int stm32_rcc_clock_init(struct device_d *dev, void __iomem *base,
+static int stm32_rcc_clock_init(struct device *dev, void __iomem *base,
 				const struct of_device_id *match)
 {
 	const struct stm32_rcc_match_data *data = match->data;
@@ -2236,7 +2236,7 @@ static int stm32_rcc_clock_init(struct device_d *dev, void __iomem *base,
 	return of_clk_add_hw_provider(dev_of_node(dev), of_clk_hw_onecell_get, clk_data);
 }
 
-static int stm32_rcc_init(struct device_d *dev, void __iomem *base,
+static int stm32_rcc_init(struct device *dev, void __iomem *base,
 			  const struct of_device_id *match_data)
 {
 	const struct of_device_id *match;
@@ -2265,7 +2265,7 @@ static int stm32_rcc_init(struct device_d *dev, void __iomem *base,
 	return 0;
 }
 
-static int stm32mp1_rcc_init(struct device_d *dev)
+static int stm32mp1_rcc_init(struct device *dev)
 {
 	void __iomem *base;
 	int ret;
@@ -2284,7 +2284,7 @@ static int stm32mp1_rcc_init(struct device_d *dev)
 	return 0;
 }
 
-static int get_clock_deps(struct device_d *dev)
+static int get_clock_deps(struct device *dev)
 {
 	static const char * const clock_deps_name[] = {
 		"hsi", "hse", "csi", "lsi", "lse",
@@ -2314,7 +2314,7 @@ static int get_clock_deps(struct device_d *dev)
 	return 0;
 }
 
-static int stm32mp1_rcc_clocks_probe(struct device_d *dev)
+static int stm32mp1_rcc_clocks_probe(struct device *dev)
 {
 	int ret = get_clock_deps(dev);
 
@@ -2324,7 +2324,7 @@ static int stm32mp1_rcc_clocks_probe(struct device_d *dev)
 	return ret;
 }
 
-static void stm32mp1_rcc_clocks_remove(struct device_d *dev)
+static void stm32mp1_rcc_clocks_remove(struct device *dev)
 {
 	struct device_node *child, *np = dev_of_node(dev);
 
diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index 52e309e877..30fe43032b 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -416,7 +416,7 @@ out:
 	return ret;
 }
 
-struct clk *clk_register(struct device_d *dev, struct clk_hw *hw)
+struct clk *clk_register(struct device *dev, struct clk_hw *hw)
 {
 	struct clk *clk;
 	const struct clk_init_data *init = hw->init;
diff --git a/drivers/clk/clkdev.c b/drivers/clk/clkdev.c
index d7d0103bdc..c5f2135f54 100644
--- a/drivers/clk/clkdev.c
+++ b/drivers/clk/clkdev.c
@@ -129,7 +129,7 @@ static struct clk *clk_find(const char *dev_id, const char *con_id)
 	return clk;
 }
 
-static struct clk *clk_find_physbase(struct device_d *dev, const char *con_id)
+static struct clk *clk_find_physbase(struct device *dev, const char *con_id)
 {
 	struct clk_lookup *p;
 	unsigned long start;
@@ -167,7 +167,7 @@ struct clk *clk_get_sys(const char *dev_id, const char *con_id)
 }
 EXPORT_SYMBOL(clk_get_sys);
 
-struct clk *clk_get(struct device_d *dev, const char *con_id)
+struct clk *clk_get(struct device *dev, const char *con_id)
 {
 	const char *dev_id = dev ? dev_name(dev) : NULL;
 	struct clk *clk;
@@ -265,7 +265,7 @@ int clk_register_clkdev(struct clk *clk, const char *con_id,
 }
 
 int clk_add_alias(const char *alias, const char *alias_dev_name, char *id,
-	struct device_d *dev)
+	struct device *dev)
 {
 	struct clk *r = clk_get(dev, id);
 	struct clk_lookup *l;
diff --git a/drivers/clk/imx/clk-imx1.c b/drivers/clk/imx/clk-imx1.c
index cff32c0f99..c38111cd3c 100644
--- a/drivers/clk/imx/clk-imx1.c
+++ b/drivers/clk/imx/clk-imx1.c
@@ -73,7 +73,7 @@ static int __init mx1_clocks_init(void __iomem *regs, unsigned long fref)
 	return 0;
 }
 
-static int imx1_ccm_probe(struct device_d *dev)
+static int imx1_ccm_probe(struct device *dev)
 {
 	struct resource *iores;
 	void __iomem *regs;
diff --git a/drivers/clk/imx/clk-imx21.c b/drivers/clk/imx/clk-imx21.c
index 7abd82eeb1..7a9cbb1c6f 100644
--- a/drivers/clk/imx/clk-imx21.c
+++ b/drivers/clk/imx/clk-imx21.c
@@ -92,7 +92,7 @@ static const char *spll_sel_clks[] = {
 	"ckih",
 };
 
-static int imx21_ccm_probe(struct device_d *dev)
+static int imx21_ccm_probe(struct device *dev)
 {
 	struct resource *iores;
 	void __iomem *base;
diff --git a/drivers/clk/imx/clk-imx25.c b/drivers/clk/imx/clk-imx25.c
index 2bd0d6004b..9edf1ad925 100644
--- a/drivers/clk/imx/clk-imx25.c
+++ b/drivers/clk/imx/clk-imx25.c
@@ -70,7 +70,7 @@ static const char *per_sel_clks[] = {
 	"upll",
 };
 
-static int imx25_ccm_probe(struct device_d *dev)
+static int imx25_ccm_probe(struct device *dev)
 {
 	struct resource *iores;
 	void __iomem *base;
diff --git a/drivers/clk/imx/clk-imx27.c b/drivers/clk/imx/clk-imx27.c
index 54894d1032..78b2d60da3 100644
--- a/drivers/clk/imx/clk-imx27.c
+++ b/drivers/clk/imx/clk-imx27.c
@@ -155,7 +155,7 @@ static const char *clko_sel_clks[] = {
 	NULL,
 };
 
-static int imx27_ccm_probe(struct device_d *dev)
+static int imx27_ccm_probe(struct device *dev)
 {
 	struct resource *iores;
 	void __iomem *base;
diff --git a/drivers/clk/imx/clk-imx31.c b/drivers/clk/imx/clk-imx31.c
index fe241cba5f..b0ea02580d 100644
--- a/drivers/clk/imx/clk-imx31.c
+++ b/drivers/clk/imx/clk-imx31.c
@@ -79,7 +79,7 @@ static const char *per_sel[] = {
 	"ipg",
 };
 
-static int imx31_ccm_probe(struct device_d *dev)
+static int imx31_ccm_probe(struct device *dev)
 {
 	struct resource *iores;
 	void __iomem *base;
diff --git a/drivers/clk/imx/clk-imx35.c b/drivers/clk/imx/clk-imx35.c
index 9af149f68e..eb83748582 100644
--- a/drivers/clk/imx/clk-imx35.c
+++ b/drivers/clk/imx/clk-imx35.c
@@ -85,7 +85,7 @@ static const char *ipg_per_sel[] = {
 	"arm_per_div",
 };
 
-static int imx35_ccm_probe(struct device_d *dev)
+static int imx35_ccm_probe(struct device *dev)
 {
 	struct resource *iores;
 	u32 pdr0, consumer_sel, hsp_sel;
diff --git a/drivers/clk/imx/clk-imx5.c b/drivers/clk/imx/clk-imx5.c
index d96aa81358..2c7dca01ef 100644
--- a/drivers/clk/imx/clk-imx5.c
+++ b/drivers/clk/imx/clk-imx5.c
@@ -194,7 +194,8 @@ static const char *ipu_sel[] = {
 	"ahb",
 };
 
-static void __init mx5_clocks_common_init(struct device_d *dev, void __iomem *base)
+static void __init mx5_clocks_common_init(struct device *dev,
+					  void __iomem *base)
 {
 	writel(0xffffffff, base + CCM_CCGR0);
 	writel(0xffffffff, base + CCM_CCGR1);
@@ -279,7 +280,7 @@ static void mx5_clocks_ipu_init(void __iomem *regs)
 	clks[IMX5_CLK_IPU_SEL]		= imx_clk_mux("ipu_sel", regs + CCM_CBCMR, 6, 2, ipu_sel, ARRAY_SIZE(ipu_sel));
 }
 
-static int __init mx50_clocks_init(struct device_d *dev, void __iomem *regs)
+static int __init mx50_clocks_init(struct device *dev, void __iomem *regs)
 {
 	clks[IMX5_CLK_PLL1_SW] = imx_clk_pllv2("pll1_sw", "osc",
 					       (void *)MX50_PLL1_BASE_ADDR);
@@ -319,7 +320,7 @@ static int __init mx50_clocks_init(struct device_d *dev, void __iomem *regs)
 	return 0;
 }
 
-static int imx50_ccm_probe(struct device_d *dev)
+static int imx50_ccm_probe(struct device *dev)
 {
 	struct resource *iores;
 	void __iomem *regs;
@@ -369,7 +370,7 @@ static void mx51_clocks_ipu_init(void __iomem *regs)
 	clkdev_add_physbase(clks[IMX5_CLK_IPU_DI1_SEL], MX51_IPU_BASE_ADDR, "di1");
 }
 
-static int __init mx51_clocks_init(struct device_d *dev, void __iomem *regs)
+static int __init mx51_clocks_init(struct device *dev, void __iomem *regs)
 {
 	clks[IMX5_CLK_PLL1_SW] = imx_clk_pllv2("pll1_sw", "osc", (void *)MX51_PLL1_BASE_ADDR);
 	clks[IMX5_CLK_PLL2_SW] = imx_clk_pllv2("pll2_sw", "osc", (void *)MX51_PLL2_BASE_ADDR);
@@ -404,7 +405,7 @@ static int __init mx51_clocks_init(struct device_d *dev, void __iomem *regs)
 	return 0;
 }
 
-static int imx51_ccm_probe(struct device_d *dev)
+static int imx51_ccm_probe(struct device *dev)
 {
 	struct resource *iores;
 	void __iomem *regs;
@@ -463,7 +464,7 @@ static void mx53_clocks_ipu_init(void __iomem *regs)
 	clkdev_add_physbase(clks[IMX5_CLK_IPU_DI1_SEL], MX53_IPU_BASE_ADDR, "di1");
 }
 
-static int __init mx53_clocks_init(struct device_d *dev, void __iomem *regs)
+static int __init mx53_clocks_init(struct device *dev, void __iomem *regs)
 {
 	clks[IMX5_CLK_PLL1_SW] = imx_clk_pllv2("pll1_sw", "osc", (void *)MX53_PLL1_BASE_ADDR);
 	clks[IMX5_CLK_PLL2_SW] = imx_clk_pllv2("pll2_sw", "osc", (void *)MX53_PLL2_BASE_ADDR);
@@ -502,7 +503,7 @@ static int __init mx53_clocks_init(struct device_d *dev, void __iomem *regs)
 	return 0;
 }
 
-static int imx53_ccm_probe(struct device_d *dev)
+static int imx53_ccm_probe(struct device *dev)
 {
 	struct resource *iores;
 	void __iomem *regs;
diff --git a/drivers/clk/imx/clk-imx6.c b/drivers/clk/imx/clk-imx6.c
index 692bbd4e0a..bf444d7cfc 100644
--- a/drivers/clk/imx/clk-imx6.c
+++ b/drivers/clk/imx/clk-imx6.c
@@ -647,7 +647,7 @@ static void imx6_add_video_clks(void __iomem *anab, void __iomem *cb, struct dev
 	clk_set_parent(clks[IMX6QDL_CLK_IPU2_DI1_PRE_SEL], clks[IMX6QDL_CLK_PLL5_VIDEO_DIV]);
 }
 
-static int imx6_ccm_probe(struct device_d *dev)
+static int imx6_ccm_probe(struct device *dev)
 {
 	struct resource *iores;
 	void __iomem *base, *anatop_base, *ccm_base;
diff --git a/drivers/clk/imx/clk-imx6sl.c b/drivers/clk/imx/clk-imx6sl.c
index 3e6a8c58d0..4c0e4856bd 100644
--- a/drivers/clk/imx/clk-imx6sl.c
+++ b/drivers/clk/imx/clk-imx6sl.c
@@ -81,7 +81,7 @@ static struct clk_div_table video_div_table[] = {
 	{ }
 };
 
-static int imx6sl_ccm_probe(struct device_d *dev)
+static int imx6sl_ccm_probe(struct device *dev)
 {
 	struct resource *iores;
 	void __iomem *base, *anatop_base, *ccm_base;
diff --git a/drivers/clk/imx/clk-imx6sx.c b/drivers/clk/imx/clk-imx6sx.c
index ae61c138fd..8877bbef83 100644
--- a/drivers/clk/imx/clk-imx6sx.c
+++ b/drivers/clk/imx/clk-imx6sx.c
@@ -109,7 +109,7 @@ static struct clk_div_table video_div_table[] = {
 	{ }
 };
 
-static int imx6sx_ccm_probe(struct device_d *dev)
+static int imx6sx_ccm_probe(struct device *dev)
 {
 	struct resource *iores;
 	void __iomem *base, *anatop_base, *ccm_base;
diff --git a/drivers/clk/imx/clk-imx6ul.c b/drivers/clk/imx/clk-imx6ul.c
index 24350d63fa..523aa02529 100644
--- a/drivers/clk/imx/clk-imx6ul.c
+++ b/drivers/clk/imx/clk-imx6ul.c
@@ -92,7 +92,7 @@ static struct clk_div_table clk_enet_ref_table[] = {
 	{ }
 };
 
-static int imx6_ccm_probe(struct device_d *dev)
+static int imx6_ccm_probe(struct device *dev)
 {
 	struct resource *iores;
 	void __iomem *base, *anatop_base, *ccm_base;
diff --git a/drivers/clk/imx/clk-imx7.c b/drivers/clk/imx/clk-imx7.c
index b75928d59e..38d3ca7efc 100644
--- a/drivers/clk/imx/clk-imx7.c
+++ b/drivers/clk/imx/clk-imx7.c
@@ -363,7 +363,7 @@ static struct device_node *ccm_np;
 
 static int imx7_clk_setup(void);
 
-static int imx7_ccm_probe(struct device_d *dev)
+static int imx7_ccm_probe(struct device *dev)
 {
 	struct resource *iores;
 	void __iomem *base, *anatop_base, *ccm_base;
diff --git a/drivers/clk/loongson/clk-ls1b200.c b/drivers/clk/loongson/clk-ls1b200.c
index 096768c7a1..ada6e73a40 100644
--- a/drivers/clk/loongson/clk-ls1b200.c
+++ b/drivers/clk/loongson/clk-ls1b200.c
@@ -114,7 +114,7 @@ static void ls1b200_pll_init(void __iomem *base)
 		10, 1, dc_mux,  ARRAY_SIZE(dc_mux), 0);
 }
 
-static int ls1b200_clk_probe(struct device_d *dev)
+static int ls1b200_clk_probe(struct device *dev)
 {
 	struct resource *iores;
 	void __iomem *base;
diff --git a/drivers/clk/mvebu/common.c b/drivers/clk/mvebu/common.c
index 17cbc77690..c0a74a9655 100644
--- a/drivers/clk/mvebu/common.c
+++ b/drivers/clk/mvebu/common.c
@@ -39,7 +39,7 @@ static struct of_device_id mvebu_coreclk_ids[] = {
 	{ }
 };
 
-static int mvebu_coreclk_probe(struct device_d *dev)
+static int mvebu_coreclk_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct device_node *np = dev->of_node;
@@ -148,7 +148,7 @@ static struct of_device_id mvebu_clk_gating_ids[] = {
 	{ }
 };
 
-static int mvebu_clk_gating_probe(struct device_d *dev)
+static int mvebu_clk_gating_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct device_node *np = dev->of_node;
diff --git a/drivers/clk/mvebu/corediv.c b/drivers/clk/mvebu/corediv.c
index 7b85bd01d3..194fce700d 100644
--- a/drivers/clk/mvebu/corediv.c
+++ b/drivers/clk/mvebu/corediv.c
@@ -194,7 +194,7 @@ static struct of_device_id mvebu_corediv_clk_ids[] = {
 	{ }
 };
 
-static int mvebu_corediv_clk_probe(struct device_d *dev)
+static int mvebu_corediv_clk_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct device_node *np = dev->of_node;
diff --git a/drivers/clk/mxs/clk-imx23.c b/drivers/clk/mxs/clk-imx23.c
index a211b64f2c..8181238b71 100644
--- a/drivers/clk/mxs/clk-imx23.c
+++ b/drivers/clk/mxs/clk-imx23.c
@@ -112,7 +112,7 @@ static int __init mx23_clocks_init(void __iomem *regs)
 	return 0;
 }
 
-static int imx23_ccm_probe(struct device_d *dev)
+static int imx23_ccm_probe(struct device *dev)
 {
 	struct resource *iores;
 	void __iomem *regs;
diff --git a/drivers/clk/mxs/clk-imx28.c b/drivers/clk/mxs/clk-imx28.c
index a10571237f..cb76258b26 100644
--- a/drivers/clk/mxs/clk-imx28.c
+++ b/drivers/clk/mxs/clk-imx28.c
@@ -67,7 +67,7 @@ enum imx28_clk {
 static struct clk *clks[clk_max];
 static struct clk_onecell_data clk_data;
 
-static int __init mx28_clocks_init(struct device_d *dev, void __iomem *regs)
+static int __init mx28_clocks_init(struct device *dev, void __iomem *regs)
 {
 	struct device_node *dcnp;
 
@@ -175,7 +175,7 @@ static int __init mx28_clocks_init(struct device_d *dev, void __iomem *regs)
 	return 0;
 }
 
-static int imx28_ccm_probe(struct device_d *dev)
+static int imx28_ccm_probe(struct device *dev)
 {
 	struct resource *iores;
 	void __iomem *regs;
diff --git a/drivers/clk/rockchip/clk-rk3399.c b/drivers/clk/rockchip/clk-rk3399.c
index 1f2430e521..4f7722220d 100644
--- a/drivers/clk/rockchip/clk-rk3399.c
+++ b/drivers/clk/rockchip/clk-rk3399.c
@@ -1627,7 +1627,7 @@ static const struct of_device_id clk_rk3399_match_table[] = {
 	{ }
 };
 
-static int __init clk_rk3399_probe(struct device_d *dev)
+static int __init clk_rk3399_probe(struct device *dev)
 {
 	struct device_node *np = dev->of_node;
 	const struct of_device_id *match;
diff --git a/drivers/clk/rockchip/clk-rk3568.c b/drivers/clk/rockchip/clk-rk3568.c
index 3e788f2c5a..632298a023 100644
--- a/drivers/clk/rockchip/clk-rk3568.c
+++ b/drivers/clk/rockchip/clk-rk3568.c
@@ -1719,7 +1719,7 @@ static const struct of_device_id clk_rk3568_match_table[] = {
 	{ }
 };
 
-static int __init clk_rk3568_probe(struct device_d *dev)
+static int __init clk_rk3568_probe(struct device *dev)
 {
 	struct device_node *np = dev->of_node;
 	const struct clk_rk3568_inits *init_data;
diff --git a/drivers/clk/sifive/sifive-prci.c b/drivers/clk/sifive/sifive-prci.c
index 010ccb92af..eb4d963eff 100644
--- a/drivers/clk/sifive/sifive-prci.c
+++ b/drivers/clk/sifive/sifive-prci.c
@@ -470,7 +470,7 @@ void sifive_prci_hfpclkpllsel_use_hfpclkpll(struct __prci_data *pd)
  *
  * Return: 0 upon success or a negative error code upon failure.
  */
-static int __prci_register_clocks(struct device_d *dev, struct __prci_data *pd,
+static int __prci_register_clocks(struct device *dev, struct __prci_data *pd,
 				  const struct prci_clk_desc *desc)
 {
 	struct clk_init_data init = { };
@@ -536,7 +536,7 @@ static int __prci_register_clocks(struct device_d *dev, struct __prci_data *pd,
  *
  * Return: 0 upon success or a negative error code upon failure.
  */
-static int sifive_prci_probe(struct device_d *dev)
+static int sifive_prci_probe(struct device *dev)
 {
 	struct resource *res;
 	struct __prci_data *pd;
diff --git a/drivers/clk/socfpga/clk.c b/drivers/clk/socfpga/clk.c
index 6691403843..a1ed9c92d1 100644
--- a/drivers/clk/socfpga/clk.c
+++ b/drivers/clk/socfpga/clk.c
@@ -367,7 +367,8 @@ static struct clk *socfpga_gate_clk(struct device_node *node)
 	return &cs->hw.clk;
 }
 
-static void socfpga_register_clocks(struct device_d *dev, struct device_node *node)
+static void socfpga_register_clocks(struct device *dev,
+				    struct device_node *node)
 {
 	struct device_node *child;
 	struct clk *clk;
@@ -394,7 +395,7 @@ static void socfpga_register_clocks(struct device_d *dev, struct device_node *no
 	of_clk_add_provider(node, of_clk_src_simple_get, clk);
 }
 
-static int socfpga_ccm_probe(struct device_d *dev)
+static int socfpga_ccm_probe(struct device *dev)
 {
 	struct resource *iores;
 	void __iomem *regs;
diff --git a/drivers/clk/starfive/jh7100-clkgen.c b/drivers/clk/starfive/jh7100-clkgen.c
index 29095aa991..0d165c99a6 100644
--- a/drivers/clk/starfive/jh7100-clkgen.c
+++ b/drivers/clk/starfive/jh7100-clkgen.c
@@ -332,7 +332,7 @@ static void starfive_clkgen_init(struct device_node *np, void __iomem *base)
 
 static struct clk_onecell_data clk_data;
 
-static int starfive_clkgen_clk_probe(struct device_d *dev)
+static int starfive_clkgen_clk_probe(struct device *dev)
 {
 	struct resource *iores;
 
diff --git a/drivers/clk/tegra/clk-tegra124.c b/drivers/clk/tegra/clk-tegra124.c
index c7644361f3..1a16d95d9b 100644
--- a/drivers/clk/tegra/clk-tegra124.c
+++ b/drivers/clk/tegra/clk-tegra124.c
@@ -322,7 +322,7 @@ static struct tegra_clk_init_table init_table[] = {
 	{TEGRA124_CLK_CLK_MAX,		TEGRA124_CLK_CLK_MAX,	0,	0}, /* sentinel */
 };
 
-static int tegra124_car_probe(struct device_d *dev)
+static int tegra124_car_probe(struct device *dev)
 {
 	struct resource *iores;
 	iores = dev_request_mem_resource(dev, 0);
diff --git a/drivers/clk/tegra/clk-tegra20.c b/drivers/clk/tegra/clk-tegra20.c
index 04bcec1f25..ae0434b87f 100644
--- a/drivers/clk/tegra/clk-tegra20.c
+++ b/drivers/clk/tegra/clk-tegra20.c
@@ -325,7 +325,7 @@ static struct tegra_clk_init_table init_table[] = {
 	{TEGRA20_CLK_CLK_MAX,		TEGRA20_CLK_CLK_MAX,	0,	0}, /* sentinel */
 };
 
-static int tegra20_car_probe(struct device_d *dev)
+static int tegra20_car_probe(struct device *dev)
 {
 	struct resource *iores;
 	iores = dev_request_mem_resource(dev, 0);
diff --git a/drivers/clk/tegra/clk-tegra30.c b/drivers/clk/tegra/clk-tegra30.c
index cbb3b959b4..078dec958d 100644
--- a/drivers/clk/tegra/clk-tegra30.c
+++ b/drivers/clk/tegra/clk-tegra30.c
@@ -353,7 +353,7 @@ static struct tegra_clk_init_table init_table[] = {
 	{TEGRA30_CLK_CLK_MAX,		TEGRA30_CLK_CLK_MAX,	0,	0}, /* sentinel */
 };
 
-static int tegra30_car_probe(struct device_d *dev)
+static int tegra30_car_probe(struct device *dev)
 {
 	struct resource *iores;
 	iores = dev_request_mem_resource(dev, 0);
diff --git a/drivers/clk/zynq/clkc.c b/drivers/clk/zynq/clkc.c
index a6916bf448..6a75ade5ac 100644
--- a/drivers/clk/zynq/clkc.c
+++ b/drivers/clk/zynq/clkc.c
@@ -364,7 +364,7 @@ static struct clk *zynq_cpu_subclk(const char *name,
 	return &subclk->hw.clk;
 }
 
-static int zynq_clock_probe(struct device_d *dev)
+static int zynq_clock_probe(struct device *dev)
 {
 	struct resource *iores;
 	void __iomem *clk_base;
diff --git a/drivers/clk/zynqmp/clkc.c b/drivers/clk/zynqmp/clkc.c
index a5cb99ba8d..acbbc481a0 100644
--- a/drivers/clk/zynqmp/clkc.c
+++ b/drivers/clk/zynqmp/clkc.c
@@ -446,7 +446,7 @@ static struct clk *zynqmp_register_clk_topology(char *clk_name,
 	return clk;
 }
 
-static int zynqmp_register_clocks(struct device_d *dev,
+static int zynqmp_register_clocks(struct device *dev,
 				  struct clk **clks, size_t num_clocks)
 {
 	unsigned int i;
@@ -518,7 +518,7 @@ static void zynqmp_fill_clock_info(struct zynqmp_clock_info *clock_info,
 	}
 }
 
-static int zynqmp_clock_probe(struct device_d *dev)
+static int zynqmp_clock_probe(struct device *dev)
 {
 	int err;
 	u32 api_version;
diff --git a/drivers/clocksource/arm_architected_timer.c b/drivers/clocksource/arm_architected_timer.c
index d5948fe948..f8a60e4439 100644
--- a/drivers/clocksource/arm_architected_timer.c
+++ b/drivers/clocksource/arm_architected_timer.c
@@ -22,7 +22,7 @@ static struct clocksource cs = {
 	.priority = 70,
 };
 
-static int arm_arch_timer_probe(struct device_d *dev)
+static int arm_arch_timer_probe(struct device *dev)
 {
 	cs.mult = clocksource_hz2mult(get_cntfrq(), cs.shift);
 
diff --git a/drivers/clocksource/arm_global_timer.c b/drivers/clocksource/arm_global_timer.c
index 65bfca3558..11039f7472 100644
--- a/drivers/clocksource/arm_global_timer.c
+++ b/drivers/clocksource/arm_global_timer.c
@@ -63,7 +63,7 @@ static struct clocksource cs = {
 	.priority = 70,
 };
 
-static int arm_global_timer_probe(struct device_d *dev)
+static int arm_global_timer_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct clk *clk;
diff --git a/drivers/clocksource/arm_smp_twd.c b/drivers/clocksource/arm_smp_twd.c
index 1ad754bb2b..407d0e4052 100644
--- a/drivers/clocksource/arm_smp_twd.c
+++ b/drivers/clocksource/arm_smp_twd.c
@@ -40,7 +40,7 @@ static struct clocksource smp_twd_clksrc = {
 
 #define SMP_TWD_MAX_FREQ (25 *1000 * 1000)
 
-static int smp_twd_probe(struct device_d *dev)
+static int smp_twd_probe(struct device *dev)
 {
 	struct resource *iores;
 	u32 tick_rate;
diff --git a/drivers/clocksource/armv7m_systick.c b/drivers/clocksource/armv7m_systick.c
index 9eb292ee94..4167e97655 100644
--- a/drivers/clocksource/armv7m_systick.c
+++ b/drivers/clocksource/armv7m_systick.c
@@ -37,7 +37,7 @@ static struct clocksource cs = {
 	.priority = 70,
 };
 
-static int armv7m_systick_probe(struct device_d *dev)
+static int armv7m_systick_probe(struct device *dev)
 {
 	struct clk *clk = NULL;
 	u32 rate, cal;
diff --git a/drivers/clocksource/bcm2835.c b/drivers/clocksource/bcm2835.c
index 26c1382738..5e3f0c0618 100644
--- a/drivers/clocksource/bcm2835.c
+++ b/drivers/clocksource/bcm2835.c
@@ -32,7 +32,7 @@ static struct clocksource bcm2835_stc = {
 	.priority = IS_ENABLED(CONFIG_CPU_V8) ? 60 : 80,
 };
 
-static int bcm2835_cs_probe(struct device_d *dev)
+static int bcm2835_cs_probe(struct device *dev)
 {
 	struct resource *iores;
 	static struct clk *stc_clk;
diff --git a/drivers/clocksource/clps711x.c b/drivers/clocksource/clps711x.c
index e96924b750..43d7d4de70 100644
--- a/drivers/clocksource/clps711x.c
+++ b/drivers/clocksource/clps711x.c
@@ -22,7 +22,7 @@ static struct clocksource clps711x_cs = {
 	.priority = 60,
 };
 
-static int clps711x_cs_probe(struct device_d *dev)
+static int clps711x_cs_probe(struct device *dev)
 {
 	struct resource *iores;
 	u32 rate;
diff --git a/drivers/clocksource/digic.c b/drivers/clocksource/digic.c
index 234985aece..cece33b582 100644
--- a/drivers/clocksource/digic.c
+++ b/drivers/clocksource/digic.c
@@ -29,7 +29,7 @@ static struct clocksource digic_cs = {
 	.priority = 60,
 };
 
-static int digic_timer_probe(struct device_d *dev)
+static int digic_timer_probe(struct device *dev)
 {
 	struct resource *iores;
 	/* use only one timer */
diff --git a/drivers/clocksource/dw_apb_timer.c b/drivers/clocksource/dw_apb_timer.c
index d0be26b380..62382b9105 100644
--- a/drivers/clocksource/dw_apb_timer.c
+++ b/drivers/clocksource/dw_apb_timer.c
@@ -97,7 +97,7 @@ static struct clocksource dw_apb_clksrc = {
 	.priority = 50,
 };
 
-static int dw_apb_timer_probe(struct device_d *dev)
+static int dw_apb_timer_probe(struct device *dev)
 {
 	struct device_node *np = dev->of_node;
 	struct resource *iores;
diff --git a/drivers/clocksource/efi.c b/drivers/clocksource/efi.c
index 9df5226573..4f9fbc3975 100644
--- a/drivers/clocksource/efi.c
+++ b/drivers/clocksource/efi.c
@@ -96,7 +96,7 @@ static struct clocksource efi_cs = {
 	.priority = 80,
 };
 
-static int efi_cs_probe(struct device_d *dev)
+static int efi_cs_probe(struct device *dev)
 {
 	return init_clock(&efi_cs);
 }
diff --git a/drivers/clocksource/efi_x86.c b/drivers/clocksource/efi_x86.c
index c9b6c44a1e..bce75351ab 100644
--- a/drivers/clocksource/efi_x86.c
+++ b/drivers/clocksource/efi_x86.c
@@ -62,7 +62,7 @@ static struct clocksource efi_x86_cs = {
 	.init   = efi_x86_cs_init,
 };
 
-static int efi_x86_cs_probe(struct device_d *dev)
+static int efi_x86_cs_probe(struct device *dev)
 {
 	return init_clock(&efi_x86_cs);
 }
diff --git a/drivers/clocksource/kvx_timer.c b/drivers/clocksource/kvx_timer.c
index 259755eacd..77ecd64d41 100644
--- a/drivers/clocksource/kvx_timer.c
+++ b/drivers/clocksource/kvx_timer.c
@@ -24,7 +24,7 @@ static struct clocksource kvx_clksrc = {
 	.priority = 70,
 };
 
-static int kvx_timer_probe(struct device_d *dev)
+static int kvx_timer_probe(struct device *dev)
 {
 	struct clk *clk;
 	uint32_t clk_freq;
diff --git a/drivers/clocksource/mvebu.c b/drivers/clocksource/mvebu.c
index 47a4e379c1..27bb324a2e 100644
--- a/drivers/clocksource/mvebu.c
+++ b/drivers/clocksource/mvebu.c
@@ -45,7 +45,7 @@ static struct clocksource cs = {
 	.priority = 70,
 };
 
-static int mvebu_timer_probe(struct device_d *dev)
+static int mvebu_timer_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct clk *clk;
diff --git a/drivers/clocksource/nomadik.c b/drivers/clocksource/nomadik.c
index 7cf10352ea..6707fc2cc4 100644
--- a/drivers/clocksource/nomadik.c
+++ b/drivers/clocksource/nomadik.c
@@ -90,7 +90,7 @@ static void nmdk_timer_reset(void)
 	writel(cr | MTU_CRn_ENA, mtu_base + MTU_CR(0));
 }
 
-static int nmdk_mtu_probe(struct device_d *dev)
+static int nmdk_mtu_probe(struct device *dev)
 {
 	struct resource *iores;
 	static struct clk *mtu_clk;
diff --git a/drivers/clocksource/orion.c b/drivers/clocksource/orion.c
index 4a56849800..634ec022fa 100644
--- a/drivers/clocksource/orion.c
+++ b/drivers/clocksource/orion.c
@@ -34,7 +34,7 @@ static struct clocksource clksrc = {
 	.priority = 70,
 };
 
-static int orion_timer_probe(struct device_d *dev)
+static int orion_timer_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct clk *tclk;
diff --git a/drivers/clocksource/rk_timer.c b/drivers/clocksource/rk_timer.c
index e941030771..00c884949e 100644
--- a/drivers/clocksource/rk_timer.c
+++ b/drivers/clocksource/rk_timer.c
@@ -35,7 +35,7 @@ static struct clocksource rkcs = {
 	.priority = 80,
 };
 
-static int rockchip_timer_probe(struct device_d *dev)
+static int rockchip_timer_probe(struct device *dev)
 {
 	struct resource *iores;
 
diff --git a/drivers/clocksource/timer-atmel-pit.c b/drivers/clocksource/timer-atmel-pit.c
index a133e384d7..72fe1368a1 100644
--- a/drivers/clocksource/timer-atmel-pit.c
+++ b/drivers/clocksource/timer-atmel-pit.c
@@ -56,7 +56,7 @@ static void at91sam926x_pit_reset(void)
 	pit_write(AT91_PIT_MR, 0xfffff | AT91_PIT_PITEN);
 }
 
-static int at91_pit_probe(struct device_d *dev)
+static int at91_pit_probe(struct device *dev)
 {
 	struct clk *clk;
 	u32 pit_rate;
diff --git a/drivers/clocksource/timer-clint.c b/drivers/clocksource/timer-clint.c
index d48b5bcba0..b5ac16e9bf 100644
--- a/drivers/clocksource/timer-clint.c
+++ b/drivers/clocksource/timer-clint.c
@@ -60,7 +60,7 @@ static struct clocksource clint_clocksource = {
 	.priority	= 200,
 };
 
-static int clint_timer_init_dt(struct device_d* dev)
+static int clint_timer_init_dt(struct device * dev)
 {
 	struct resource *iores;
 
diff --git a/drivers/clocksource/timer-imx-gpt.c b/drivers/clocksource/timer-imx-gpt.c
index 7ca879f4f0..6a2fb3f335 100644
--- a/drivers/clocksource/timer-imx-gpt.c
+++ b/drivers/clocksource/timer-imx-gpt.c
@@ -77,7 +77,7 @@ static struct notifier_block imx_clock_notifier = {
 	.notifier_call = imx_clocksource_clock_change,
 };
 
-static int imx_gpt_probe(struct device_d *dev)
+static int imx_gpt_probe(struct device *dev)
 {
 	struct resource *iores;
 	int i;
diff --git a/drivers/clocksource/timer-riscv.c b/drivers/clocksource/timer-riscv.c
index c7af54fc8f..22dfe6539f 100644
--- a/drivers/clocksource/timer-riscv.c
+++ b/drivers/clocksource/timer-riscv.c
@@ -48,7 +48,7 @@ static struct clocksource riscv_clocksource = {
 	.priority	= 100,
 };
 
-static int riscv_timer_init(struct device_d* dev)
+static int riscv_timer_init(struct device * dev)
 {
 	struct device_node *cpu;
 
diff --git a/drivers/clocksource/timer-stm32.c b/drivers/clocksource/timer-stm32.c
index dec48fccf5..4d1ca1080d 100644
--- a/drivers/clocksource/timer-stm32.c
+++ b/drivers/clocksource/timer-stm32.c
@@ -61,7 +61,7 @@ static struct clocksource cs = {
 	.priority = 100,
 };
 
-static int stm32_timer_probe(struct device_d *dev)
+static int stm32_timer_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct clk *clk;
diff --git a/drivers/clocksource/timer-ti-32k.c b/drivers/clocksource/timer-ti-32k.c
index 21cb686369..bf31e46270 100644
--- a/drivers/clocksource/timer-ti-32k.c
+++ b/drivers/clocksource/timer-ti-32k.c
@@ -59,7 +59,7 @@ static struct clocksource s32k_cs = {
  *
  * @return result of @ref init_clock
  */
-static int omap_32ktimer_probe(struct device_d *dev)
+static int omap_32ktimer_probe(struct device *dev)
 {
 	struct resource *iores;
 
diff --git a/drivers/clocksource/timer-ti-dm.c b/drivers/clocksource/timer-ti-dm.c
index cdd297f10c..0fea2221da 100644
--- a/drivers/clocksource/timer-ti-dm.c
+++ b/drivers/clocksource/timer-ti-dm.c
@@ -65,7 +65,7 @@ static struct clocksource dmtimer_cs = {
 	.priority = 70,
 };
 
-static int omap_dmtimer_probe(struct device_d *dev)
+static int omap_dmtimer_probe(struct device *dev)
 {
 	struct resource *iores;
 	u64 clk_speed;
diff --git a/drivers/clocksource/uemd.c b/drivers/clocksource/uemd.c
index a763eadc0c..54c79c29be 100644
--- a/drivers/clocksource/uemd.c
+++ b/drivers/clocksource/uemd.c
@@ -55,7 +55,7 @@ static struct clocksource uemd_cs = {
 	.priority = 60,
 };
 
-static int uemd_timer_probe(struct device_d *dev)
+static int uemd_timer_probe(struct device *dev)
 {
 	struct resource *iores;
 	int mode;
diff --git a/drivers/crypto/caam/caam-blobgen.c b/drivers/crypto/caam/caam-blobgen.c
index be4696f58c..5ab7ad3a6e 100644
--- a/drivers/crypto/caam/caam-blobgen.c
+++ b/drivers/crypto/caam/caam-blobgen.c
@@ -88,7 +88,7 @@ static void jr_jobdesc_blob_encap(struct blob_priv *ctx, u8 modlen, u16 input_si
 	append_operation(desc, OP_TYPE_ENCAP_PROTOCOL | OP_PCLID_BLOB);
 }
 
-static void blob_job_done(struct device_d *dev, u32 *desc, u32 err, void *arg)
+static void blob_job_done(struct device *dev, u32 *desc, u32 err, void *arg)
 {
 	struct blob_job_result *res = arg;
 
@@ -106,7 +106,7 @@ static int caam_blob_decrypt(struct blobgen *bg, const char *modifier,
 			     int *plainsize)
 {
 	struct blob_priv *ctx = to_blob_priv(bg);
-	struct device_d *jrdev = bg->dev.parent;
+	struct device *jrdev = bg->dev.parent;
 	struct blob_job_result testres;
 	int modifier_len = strlen(modifier);
 	u32 *desc = ctx->desc;
@@ -162,7 +162,7 @@ static int caam_blob_encrypt(struct blobgen *bg, const char *modifier,
 			     int *blobsize)
 {
 	struct blob_priv *ctx = to_blob_priv(bg);
-	struct device_d *jrdev = bg->dev.parent;
+	struct device *jrdev = bg->dev.parent;
 	struct blob_job_result testres;
 	int modifier_len = strlen(modifier);
 	u32 *desc = ctx->desc;
@@ -206,7 +206,7 @@ static int caam_blob_encrypt(struct blobgen *bg, const char *modifier,
 	return ret;
 }
 
-int caam_blob_gen_probe(struct device_d *dev, struct device_d *jrdev)
+int caam_blob_gen_probe(struct device *dev, struct device *jrdev)
 {
 	struct blob_priv *ctx;
 	struct blobgen *bg;
diff --git a/drivers/crypto/caam/caamrng.c b/drivers/crypto/caam/caamrng.c
index 3283e5f321..240a440c76 100644
--- a/drivers/crypto/caam/caamrng.c
+++ b/drivers/crypto/caam/caamrng.c
@@ -67,7 +67,7 @@ struct buf_data {
 
 /* rng per-device context */
 struct caam_rng_ctx {
-	struct device_d *jrdev;
+	struct device *jrdev;
 	dma_addr_t sh_desc_dma;
 	u32 sh_desc[DESC_RNG_LEN];
 	unsigned int cur_buf_idx;
@@ -78,7 +78,7 @@ struct caam_rng_ctx {
 
 static struct caam_rng_ctx *rng_ctx;
 
-static void rng_done(struct device_d *jrdev, u32 *desc, u32 err, void *context)
+static void rng_done(struct device *jrdev, u32 *desc, u32 err, void *context)
 {
 	struct buf_data *bd;
 
@@ -99,7 +99,7 @@ static void rng_done(struct device_d *jrdev, u32 *desc, u32 err, void *context)
 static inline int submit_job(struct caam_rng_ctx *ctx, int to_current)
 {
 	struct buf_data *bd = &ctx->bufs[!(to_current ^ ctx->current_buf)];
-	struct device_d *jrdev = ctx->jrdev;
+	struct device *jrdev = ctx->jrdev;
 	u32 *desc = bd->hw_desc;
 	int err;
 
@@ -222,7 +222,7 @@ static int caam_init_buf(struct caam_rng_ctx *ctx, int buf_id)
 	return submit_job(ctx, buf_id == ctx->current_buf);
 }
 
-static int caam_init_rng(struct caam_rng_ctx *ctx, struct device_d *jrdev)
+static int caam_init_rng(struct caam_rng_ctx *ctx, struct device *jrdev)
 {
 	int err;
 
@@ -242,7 +242,7 @@ static int caam_init_rng(struct caam_rng_ctx *ctx, struct device_d *jrdev)
 	return caam_init_buf(ctx, 1);
 }
 
-int caam_rng_probe(struct device_d *dev, struct device_d *jrdev)
+int caam_rng_probe(struct device *dev, struct device *jrdev)
 {
 	int err;
 
diff --git a/drivers/crypto/caam/ctrl.c b/drivers/crypto/caam/ctrl.c
index 3a86c5f9a3..72a422eb7c 100644
--- a/drivers/crypto/caam/ctrl.c
+++ b/drivers/crypto/caam/ctrl.c
@@ -75,7 +75,7 @@ static void build_instantiation_desc(u32 *desc, int handle, int do_sk)
  *	   - -ENODEV if the DECO couldn't be acquired
  *	   - -EAGAIN if an error occurred while executing the descriptor
  */
-static inline int run_descriptor_deco0(struct device_d *ctrldev, u32 *desc,
+static inline int run_descriptor_deco0(struct device *ctrldev, u32 *desc,
 					u32 *status)
 {
 	struct caam_drv_private *ctrlpriv = ctrldev->priv;
@@ -171,7 +171,7 @@ static inline int run_descriptor_deco0(struct device_d *ctrldev, u32 *desc,
  *	      f.i. there was a RNG hardware error due to not "good enough"
  *	      entropy being aquired.
  */
-static int instantiate_rng(struct device_d *ctrldev, int state_handle_mask,
+static int instantiate_rng(struct device *ctrldev, int state_handle_mask,
 			   int gen_sk)
 {
 	struct caam_drv_private *ctrlpriv = ctrldev->priv;
@@ -222,7 +222,7 @@ static int instantiate_rng(struct device_d *ctrldev, int state_handle_mask,
 	return ret;
 }
 
-static void caam_remove(struct device_d *dev)
+static void caam_remove(struct device *dev)
 {
 	struct caam_drv_private *ctrlpriv = dev->priv;
 
@@ -241,7 +241,7 @@ static void caam_remove(struct device_d *dev)
  * @pdev - pointer to the platform device
  * @ent_delay - Defines the length (in system clocks) of each entropy sample.
  */
-static void kick_trng(struct device_d *ctrldev, int ent_delay)
+static void kick_trng(struct device *ctrldev, int ent_delay)
 {
 	struct caam_drv_private *ctrlpriv = ctrldev->priv;
 	struct caam_ctrl __iomem *ctrl;
@@ -350,7 +350,7 @@ static int caam_get_era(struct caam_ctrl __iomem *ctrl)
 }
 
 /* Probe routine for CAAM top (controller) level */
-static int caam_probe(struct device_d *dev)
+static int caam_probe(struct device *dev)
 {
 	int ret, ring, rspec, gen_sk, ent_delay = RTSDCTL_ENT_DLY_MIN;
 	u64 caam_id;
@@ -525,14 +525,14 @@ static int caam_probe(struct device_d *dev)
 		    of_device_is_compatible(np, "fsl,sec4.0-job-ring"))
 			rspec++;
 
-	ctrlpriv->jrpdev = xzalloc(sizeof(struct device_d *) * rspec);
+	ctrlpriv->jrpdev = xzalloc(sizeof(struct device *) * rspec);
 
 	ring = 0;
 	ctrlpriv->total_jobrs = 0;
 	for_each_available_child_of_node(nprop, np) {
 		if (of_device_is_compatible(np, "fsl,sec-v4.0-job-ring") ||
 		    of_device_is_compatible(np, "fsl,sec4.0-job-ring")) {
-			struct device_d *jrdev;
+			struct device *jrdev;
 
 			jrdev = of_platform_device_create(np, dev);
 			if (!jrdev)
diff --git a/drivers/crypto/caam/error.c b/drivers/crypto/caam/error.c
index b737e5b0a9..de7a64b630 100644
--- a/drivers/crypto/caam/error.c
+++ b/drivers/crypto/caam/error.c
@@ -115,14 +115,14 @@ static const char * const rng_err_id_list[] = {
 	"Secure key generation",
 };
 
-static void report_invalid_status(struct device_d *jrdev, const u32 status,
+static void report_invalid_status(struct device *jrdev, const u32 status,
 				  const char *error)
 {
 	dev_err(jrdev, "%08x: %s: %s() not implemented\n",
 		status, error, __func__);
 }
 
-static void report_ccb_status(struct device_d *jrdev, const u32 status,
+static void report_ccb_status(struct device *jrdev, const u32 status,
 			      const char *error)
 {
 	u8 cha_id = (status & JRSTA_CCBERR_CHAID_MASK) >>
@@ -166,14 +166,14 @@ static void report_ccb_status(struct device_d *jrdev, const u32 status,
 			err_str, err_err_code);
 }
 
-static void report_jump_status(struct device_d *jrdev, const u32 status,
+static void report_jump_status(struct device *jrdev, const u32 status,
 			       const char *error)
 {
 	dev_err(jrdev, "%08x: %s: %s() not implemented\n",
 		status, error, __func__);
 }
 
-static void report_deco_status(struct device_d *jrdev, const u32 status,
+static void report_deco_status(struct device *jrdev, const u32 status,
 			       const char *error)
 {
 	u8 err_id = status & JRSTA_DECOERR_ERROR_MASK;
@@ -202,24 +202,24 @@ static void report_deco_status(struct device_d *jrdev, const u32 status,
 		status, error, idx_str, idx, err_str, err_err_code);
 }
 
-static void report_jr_status(struct device_d *jrdev, const u32 status,
+static void report_jr_status(struct device *jrdev, const u32 status,
 			     const char *error)
 {
 	dev_err(jrdev, "%08x: %s: %s() not implemented\n",
 		status, error, __func__);
 }
 
-static void report_cond_code_status(struct device_d *jrdev, const u32 status,
+static void report_cond_code_status(struct device *jrdev, const u32 status,
 				    const char *error)
 {
 	dev_err(jrdev, "%08x: %s: %s() not implemented\n",
 		status, error, __func__);
 }
 
-void caam_jr_strstatus(struct device_d *jrdev, u32 status)
+void caam_jr_strstatus(struct device *jrdev, u32 status)
 {
 	static const struct stat_src {
-		void (*report_ssed)(struct device_d *jrdev, const u32 status,
+		void (*report_ssed)(struct device *jrdev, const u32 status,
 				    const char *error);
 		const char *error;
 	} status_src[16] = {
diff --git a/drivers/crypto/caam/error.h b/drivers/crypto/caam/error.h
index faaf62aec8..9f164cb92c 100644
--- a/drivers/crypto/caam/error.h
+++ b/drivers/crypto/caam/error.h
@@ -8,5 +8,5 @@
 #ifndef CAAM_ERROR_H
 #define CAAM_ERROR_H
 #define CAAM_ERROR_STR_MAX 302
-void caam_jr_strstatus(struct device_d *jrdev, u32 status);
+void caam_jr_strstatus(struct device *jrdev, u32 status);
 #endif /* CAAM_ERROR_H */
diff --git a/drivers/crypto/caam/intern.h b/drivers/crypto/caam/intern.h
index 5064974ff3..3d13fa8f02 100644
--- a/drivers/crypto/caam/intern.h
+++ b/drivers/crypto/caam/intern.h
@@ -18,7 +18,7 @@
  * Each entry on an output ring needs one of these
  */
 struct caam_jrentry_info {
-	void (*callbk)(struct device_d *dev, u32 *desc, u32 status, void *arg);
+	void (*callbk)(struct device *dev, u32 *desc, u32 status, void *arg);
 	void *cbkarg;	/* Argument per ring entry */
 	u32 *desc_addr_virt;	/* Stored virt addr for postprocessing */
 	dma_addr_t desc_addr_dma;	/* Stored bus addr for done matching */
@@ -28,7 +28,7 @@ struct caam_jrentry_info {
 /* Private sub-storage for a single JobR */
 struct caam_drv_private_jr {
 	struct list_head	list_node;	/* Job Ring device list */
-	struct device_d		*dev;
+	struct device		*dev;
 	int ridx;
 	struct caam_job_ring __iomem *rregs;	/* JobR's register space */
 	int irq;			/* One per queue */
@@ -54,8 +54,8 @@ struct caam_drv_private_jr {
  */
 struct caam_drv_private {
 
-	struct device_d **jrpdev; /* Alloc'ed array per sub-device */
-	struct device_d *pdev;
+	struct device **jrpdev; /* Alloc'ed array per sub-device */
+	struct device *pdev;
 
 	/* Physical-presence section */
 	struct caam_ctrl __iomem *ctrl; /* controller region */
@@ -88,7 +88,7 @@ struct caam_drv_private {
 	struct clk *caam_emi_slow;
 };
 
-int caam_rng_probe(struct device_d *dev, struct device_d *jrdev);
-int caam_blob_gen_probe(struct device_d *dev, struct device_d *jrdev);
-int caam_jr_probe(struct device_d *dev);
+int caam_rng_probe(struct device *dev, struct device *jrdev);
+int caam_blob_gen_probe(struct device *dev, struct device *jrdev);
+int caam_jr_probe(struct device *dev);
 #endif /* INTERN_H */
diff --git a/drivers/crypto/caam/jr.c b/drivers/crypto/caam/jr.c
index 6c48679147..f159028669 100644
--- a/drivers/crypto/caam/jr.c
+++ b/drivers/crypto/caam/jr.c
@@ -22,7 +22,7 @@
 #include "desc.h"
 #include "intern.h"
 
-static int caam_reset_hw_jr(struct device_d *dev)
+static int caam_reset_hw_jr(struct device *dev)
 {
 	struct caam_drv_private_jr *jrp = dev->priv;
 	uint64_t start;
@@ -59,7 +59,7 @@ static int caam_reset_hw_jr(struct device_d *dev)
 static int caam_jr_dequeue(struct caam_drv_private_jr *jrp)
 {
 	int hw_idx, sw_idx, i, head, tail;
-	void (*usercall)(struct device_d *dev, u32 *desc, u32 status, void *arg);
+	void (*usercall)(struct device *dev, u32 *desc, u32 status, void *arg);
 	u32 *userdesc, userstatus;
 	void *userarg;
 	int found;
@@ -183,8 +183,8 @@ static int caam_jr_interrupt(struct caam_drv_private_jr *jrp)
  * @areq: optional pointer to a user argument for use at callback
  *        time.
  **/
-int caam_jr_enqueue(struct device_d *dev, u32 *desc,
-		    void (*cbk)(struct device_d *dev, u32 *desc,
+int caam_jr_enqueue(struct device *dev, u32 *desc,
+		    void (*cbk)(struct device *dev, u32 *desc,
 				u32 status, void *areq),
 		    void *areq)
 {
@@ -237,7 +237,7 @@ EXPORT_SYMBOL(caam_jr_enqueue);
 /*
  * Init JobR independent of platform property detection
  */
-static int caam_jr_init(struct device_d *dev)
+static int caam_jr_init(struct device *dev)
 {
 	struct caam_drv_private_jr *jrp;
 	dma_addr_t dma_inpring;
@@ -287,7 +287,7 @@ static int caam_jr_init(struct device_d *dev)
 /*
  * Probe routine for each detected JobR subsystem.
  */
-int caam_jr_probe(struct device_d *dev)
+int caam_jr_probe(struct device *dev)
 {
 	struct caam_job_ring __iomem *ctrl;
 	struct caam_drv_private_jr *jrpriv;
diff --git a/drivers/crypto/caam/jr.h b/drivers/crypto/caam/jr.h
index 684511affe..60f221f948 100644
--- a/drivers/crypto/caam/jr.h
+++ b/drivers/crypto/caam/jr.h
@@ -9,8 +9,8 @@
 #define JR_H
 
 /* Prototypes for backend-level services exposed to APIs */
-int caam_jr_enqueue(struct device_d *dev, u32 *desc,
-		    void (*cbk)(struct device_d *dev, u32 *desc, u32 status,
+int caam_jr_enqueue(struct device *dev, u32 *desc,
+		    void (*cbk)(struct device *dev, u32 *desc, u32 status,
 				void *areq),
 		    void *areq);
 
diff --git a/drivers/crypto/caam/rng_self_test.c b/drivers/crypto/caam/rng_self_test.c
index ed3017d828..c02f4072df 100644
--- a/drivers/crypto/caam/rng_self_test.c
+++ b/drivers/crypto/caam/rng_self_test.c
@@ -120,7 +120,8 @@ static void construct_rng_self_test_jobdesc(u32 *desc, const u32 *rng_st_dsc, u8
 }
 
 /* rng_self_test_done() - callback for caam_jr_enqueue */
-static void rng_self_test_done(struct device_d *dev, u32 *desc, u32 err, void *arg)
+static void rng_self_test_done(struct device *dev, u32 *desc, u32 err,
+			       void *arg)
 {
 	int * job_err = arg;
 	*job_err = err;
@@ -145,7 +146,8 @@ static void rng_self_test_done(struct device_d *dev, u32 *desc, u32 err, void *a
  * * i.MX67SD silicon revision 1.3
  *
  */
-int caam_rng_self_test(struct device_d *dev, const u8 caam_era, const u8 rngvid, const u8 rngrev)
+int caam_rng_self_test(struct device *dev, const u8 caam_era, const u8 rngvid,
+		       const u8 rngrev)
 {
 	int ret, desc_size = 0, result_size = 0, job_err = 0;
 	const u32 *rng_st_dsc;
diff --git a/drivers/crypto/caam/rng_self_test.h b/drivers/crypto/caam/rng_self_test.h
index ba688f7e39..1c1011466f 100644
--- a/drivers/crypto/caam/rng_self_test.h
+++ b/drivers/crypto/caam/rng_self_test.h
@@ -9,6 +9,7 @@
 #ifndef RNG_SELF_TEST_H
 #define RNG_SELF_TEST_H
 
-int caam_rng_self_test(struct device_d *dev, const u8 caam_era, const u8 rngvid, const u8 rngrev);
+int caam_rng_self_test(struct device *dev, const u8 caam_era, const u8 rngvid,
+		       const u8 rngrev);
 
 #endif /* RNG_SELF_TEST_H */
diff --git a/drivers/crypto/imx-scc/scc-blobgen.c b/drivers/crypto/imx-scc/scc-blobgen.c
index 7554cbce37..530d0840f8 100644
--- a/drivers/crypto/imx-scc/scc-blobgen.c
+++ b/drivers/crypto/imx-scc/scc-blobgen.c
@@ -137,7 +137,7 @@ out:
 	return ret;
 }
 
-int imx_scc_blob_gen_probe(struct device_d *dev)
+int imx_scc_blob_gen_probe(struct device *dev)
 {
 	struct blobgen *bg;
 	int ret;
diff --git a/drivers/crypto/imx-scc/scc.c b/drivers/crypto/imx-scc/scc.c
index f2c004f7fd..cf9613ec15 100644
--- a/drivers/crypto/imx-scc/scc.c
+++ b/drivers/crypto/imx-scc/scc.c
@@ -115,7 +115,7 @@
 static char scc_block_padding[8] = { 0x80, 0, 0, 0, 0, 0, 0, 0 };
 
 struct imx_scc {
-	struct device_d	*dev;
+	struct device	*dev;
 	void __iomem		*base;
 	struct clk		*clk;
 	struct ablkcipher_request *req;
@@ -417,7 +417,7 @@ static int imx_scc_get_state(struct imx_scc *scc)
 	return ret;
 }
 
-static int imx_scc_probe(struct device_d *dev)
+static int imx_scc_probe(struct device *dev)
 {
 	struct imx_scc *scc;
 	int ret;
diff --git a/drivers/crypto/imx-scc/scc.h b/drivers/crypto/imx-scc/scc.h
index 77161d25a4..77333f67c5 100644
--- a/drivers/crypto/imx-scc/scc.h
+++ b/drivers/crypto/imx-scc/scc.h
@@ -7,4 +7,4 @@ struct ablkcipher_request;
 
 int imx_scc_cbc_des_encrypt(struct ablkcipher_request *req);
 int imx_scc_cbc_des_decrypt(struct ablkcipher_request *req);
-int imx_scc_blob_gen_probe(struct device_d *dev);
+int imx_scc_blob_gen_probe(struct device *dev);
diff --git a/drivers/dma/apbh_dma.c b/drivers/dma/apbh_dma.c
index 767c095314..f03391fb89 100644
--- a/drivers/dma/apbh_dma.c
+++ b/drivers/dma/apbh_dma.c
@@ -137,7 +137,7 @@ int mxs_dma_go(int chan, struct mxs_dma_cmd *cmd, int ncmds)
 /*
  * Initialize the DMA hardware
  */
-static int apbh_dma_probe(struct device_d *dev)
+static int apbh_dma_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct apbh_dma *apbh;
diff --git a/drivers/dma/map.c b/drivers/dma/map.c
index a3e1b3b5b5..a00abf6421 100644
--- a/drivers/dma/map.c
+++ b/drivers/dma/map.c
@@ -3,7 +3,8 @@
 
 #include <dma.h>
 
-static inline dma_addr_t cpu_to_dma(struct device_d *dev, unsigned long cpu_addr)
+static inline dma_addr_t cpu_to_dma(struct device *dev,
+				    unsigned long cpu_addr)
 {
 	dma_addr_t dma_addr = cpu_addr;
 
@@ -13,7 +14,7 @@ static inline dma_addr_t cpu_to_dma(struct device_d *dev, unsigned long cpu_addr
 	return dma_addr;
 }
 
-static inline unsigned long dma_to_cpu(struct device_d *dev, dma_addr_t addr)
+static inline unsigned long dma_to_cpu(struct device *dev, dma_addr_t addr)
 {
 	unsigned long cpu_addr = addr;
 
@@ -23,7 +24,7 @@ static inline unsigned long dma_to_cpu(struct device_d *dev, dma_addr_t addr)
 	return cpu_addr;
 }
 
-dma_addr_t dma_map_single(struct device_d *dev, void *ptr, size_t size,
+dma_addr_t dma_map_single(struct device *dev, void *ptr, size_t size,
 			  enum dma_data_direction dir)
 {
 	unsigned long addr = (unsigned long)ptr;
@@ -33,7 +34,7 @@ dma_addr_t dma_map_single(struct device_d *dev, void *ptr, size_t size,
 	return cpu_to_dma(dev, addr);
 }
 
-void dma_unmap_single(struct device_d *dev, dma_addr_t dma_addr, size_t size,
+void dma_unmap_single(struct device *dev, dma_addr_t dma_addr, size_t size,
 		      enum dma_data_direction dir)
 {
 	unsigned long addr = dma_to_cpu(dev, dma_addr);
diff --git a/drivers/eeprom/at24.c b/drivers/eeprom/at24.c
index 88be3098cc..1a7acedf57 100644
--- a/drivers/eeprom/at24.c
+++ b/drivers/eeprom/at24.c
@@ -366,7 +366,7 @@ static const struct nvmem_bus at24_nvmem_bus = {
 	.read  = at24_nvmem_read,
 };
 
-static int at24_probe(struct device_d *dev)
+static int at24_probe(struct device *dev)
 {
 	struct i2c_client *client = to_i2c_client(dev);
 	struct at24_platform_data chip;
diff --git a/drivers/eeprom/at25.c b/drivers/eeprom/at25.c
index 21dea33fbd..e91bfc2980 100644
--- a/drivers/eeprom/at25.c
+++ b/drivers/eeprom/at25.c
@@ -233,7 +233,7 @@ static struct cdev_operations at25_fops = {
 	.write	= at25_ee_write,
 };
 
-static int at25_np_to_chip(struct device_d *dev,
+static int at25_np_to_chip(struct device *dev,
 			   struct device_node *np,
 			   struct spi_eeprom *chip)
 {
@@ -291,7 +291,7 @@ static int at25_np_to_chip(struct device_d *dev,
 	return 0;
 }
 
-static int at25_probe(struct device_d *dev)
+static int at25_probe(struct device *dev)
 {
 	int err, sr;
 	int addrlen;
diff --git a/drivers/efi/efi-device.c b/drivers/efi/efi-device.c
index defde70186..9fbdc4e16d 100644
--- a/drivers/efi/efi-device.c
+++ b/drivers/efi/efi-device.c
@@ -55,7 +55,7 @@ static int efi_locate_handle(enum efi_locate_search_type search_type,
 
 static struct efi_device *efi_find_device(efi_handle_t *handle)
 {
-	struct device_d *dev;
+	struct device *dev;
 	struct efi_device *efidev;
 
 	bus_for_each_device(&efi_bus, dev) {
@@ -68,7 +68,7 @@ static struct efi_device *efi_find_device(efi_handle_t *handle)
 	return NULL;
 }
 
-static void efi_devinfo(struct device_d *dev)
+static void efi_devinfo(struct device *dev)
 {
 	struct efi_device *efidev = to_efi_device(dev);
 	int i;
@@ -304,7 +304,7 @@ int efi_connect_all(void)
 	return 0;
 }
 
-static int efi_bus_match(struct device_d *dev, struct driver_d *drv)
+static int efi_bus_match(struct device *dev, struct driver_d *drv)
 {
 	struct efi_driver *efidrv = to_efi_driver(drv);
 	struct efi_device *efidev = to_efi_device(dev);
@@ -321,7 +321,7 @@ static int efi_bus_match(struct device_d *dev, struct driver_d *drv)
 	return 1;
 }
 
-static int efi_bus_probe(struct device_d *dev)
+static int efi_bus_probe(struct device *dev)
 {
 	struct efi_driver *efidrv = to_efi_driver(dev->driver);
 	struct efi_device *efidev = to_efi_device(dev);
@@ -329,7 +329,7 @@ static int efi_bus_probe(struct device_d *dev)
 	return efidrv->probe(efidev);
 }
 
-static void efi_bus_remove(struct device_d *dev)
+static void efi_bus_remove(struct device *dev)
 {
 	struct efi_driver *efidrv = to_efi_driver(dev->driver);
 	struct efi_device *efidev = to_efi_device(dev);
@@ -345,7 +345,7 @@ struct bus_type efi_bus = {
 	.remove = efi_bus_remove,
 };
 
-static void efi_businfo(struct device_d *dev)
+static void efi_businfo(struct device *dev)
 {
 	efi_config_table_t *t;
 	int i = 0;
@@ -466,7 +466,7 @@ core_initcall(efi_init_devices);
 
 void efi_pause_devices(void)
 {
-	struct device_d *dev;
+	struct device *dev;
 
 	bus_for_each_device(&efi_bus, dev) {
 		struct driver_d *drv = dev->driver;
@@ -485,7 +485,7 @@ void efi_pause_devices(void)
 
 void efi_continue_devices(void)
 {
-	struct device_d *dev;
+	struct device *dev;
 
 	bus_for_each_device(&efi_bus, dev) {
 		struct driver_d *drv = dev->driver;
diff --git a/drivers/firmware/altera_serial.c b/drivers/firmware/altera_serial.c
index 27eb367a68..c6be89caae 100644
--- a/drivers/firmware/altera_serial.c
+++ b/drivers/firmware/altera_serial.c
@@ -48,7 +48,7 @@ struct fpga_spi {
 	int nstat_gpio; /* input GPIO to read the status line */
 	int confd_gpio; /* input GPIO to read the config done line */
 	int nconfig_gpio; /* output GPIO to start the FPGA's config */
-	struct device_d *dev;
+	struct device *dev;
 	struct spi_device *spi;
 	const struct altera_ps_data *data;
 	bool padding_done;
@@ -83,7 +83,7 @@ static struct altera_ps_data a10_data = {
 static int altera_spi_open(struct firmware_handler *fh)
 {
 	struct fpga_spi *this = container_of(fh, struct fpga_spi, fh);
-	struct device_d *dev = this->dev;
+	struct device *dev = this->dev;
 	int ret;
 
 	dev_dbg(dev, "Initiating programming\n");
@@ -151,7 +151,7 @@ static int altera_spi_open(struct firmware_handler *fh)
 static int altera_spi_write(struct firmware_handler *fh, const void *buf, size_t sz)
 {
 	struct fpga_spi *this = container_of(fh, struct fpga_spi, fh);
-	struct device_d *dev = this->dev;
+	struct device *dev = this->dev;
 	struct spi_transfer t[2];
 	struct spi_message m;
 	u32 dummy;
@@ -205,7 +205,7 @@ static int altera_spi_write(struct firmware_handler *fh, const void *buf, size_t
 static int altera_spi_close(struct firmware_handler *fh)
 {
 	struct fpga_spi *this = container_of(fh, struct fpga_spi, fh);
-	struct device_d *dev = this->dev;
+	struct device *dev = this->dev;
 	struct spi_transfer t;
 	struct spi_message m;
 	u32 dummy = 0;
@@ -265,7 +265,7 @@ static int altera_spi_close(struct firmware_handler *fh)
 	return -EIO;
 }
 
-static int altera_spi_of(struct device_d *dev, struct fpga_spi *this)
+static int altera_spi_of(struct device *dev, struct fpga_spi *this)
 {
 	struct device_node *n = dev->of_node;
 	const char *name;
@@ -329,7 +329,7 @@ static void altera_spi_init_mode(struct spi_device *spi, int spi_bits_per_word)
 	spi->mode = SPI_MODE_0 | SPI_LSB_FIRST;
 }
 
-static int altera_spi_probe(struct device_d *dev)
+static int altera_spi_probe(struct device *dev)
 {
 	int rc;
 	struct fpga_spi *this;
diff --git a/drivers/firmware/arm_scmi/base.c b/drivers/firmware/arm_scmi/base.c
index d4af40c40c..06dd3ec135 100644
--- a/drivers/firmware/arm_scmi/base.c
+++ b/drivers/firmware/arm_scmi/base.c
@@ -157,7 +157,7 @@ scmi_base_implementation_list_get(const struct scmi_protocol_handle *ph,
 	struct scmi_xfer *t;
 	__le32 *num_skip, *num_ret;
 	u32 tot_num_ret = 0, loop_num_ret;
-	struct device_d *dev = ph->dev;
+	struct device *dev = ph->dev;
 
 	ret = ph->xops->xfer_get_init(ph, BASE_DISCOVER_LIST_PROTOCOLS,
 				      sizeof(*num_skip), 0, &t);
@@ -235,7 +235,7 @@ static int scmi_base_protocol_init(const struct scmi_protocol_handle *ph)
 	u8 *prot_imp;
 	u32 version;
 	char name[SCMI_MAX_STR_SIZE];
-	struct device_d *dev = ph->dev;
+	struct device *dev = ph->dev;
 	struct scmi_revision_info *rev = scmi_revision_area_get(ph);
 
 	ret = ph->xops->version_get(ph, &version);
diff --git a/drivers/firmware/arm_scmi/bus.c b/drivers/firmware/arm_scmi/bus.c
index 1f6338aa2f..7431489cb4 100644
--- a/drivers/firmware/arm_scmi/bus.c
+++ b/drivers/firmware/arm_scmi/bus.c
@@ -36,7 +36,7 @@ scmi_dev_match_id(struct scmi_device *scmi_dev, struct scmi_driver *scmi_drv)
 	return NULL;
 }
 
-static int scmi_dev_match(struct device_d *dev, struct driver_d *drv)
+static int scmi_dev_match(struct device *dev, struct driver_d *drv)
 {
 	struct scmi_driver *scmi_drv = to_scmi_driver(drv);
 	struct scmi_device *scmi_dev = to_scmi_dev(dev);
@@ -49,7 +49,7 @@ static int scmi_dev_match(struct device_d *dev, struct driver_d *drv)
 	return -1;
 }
 
-static int scmi_match_by_id_table(struct device_d *dev, void *data)
+static int scmi_match_by_id_table(struct device *dev, void *data)
 {
 	struct scmi_device *sdev = to_scmi_dev(dev);
 	struct scmi_device_id *id_table = data;
@@ -58,11 +58,11 @@ static int scmi_match_by_id_table(struct device_d *dev, void *data)
 		!strcmp(sdev->name, id_table->name);
 }
 
-struct scmi_device *scmi_child_dev_find(struct device_d *parent,
+struct scmi_device *scmi_child_dev_find(struct device *parent,
 					int prot_id, const char *name)
 {
 	struct scmi_device_id id_table;
-	struct device_d *dev;
+	struct device *dev;
 
 	id_table.protocol_id = prot_id;
 	id_table.name = name;
@@ -89,7 +89,7 @@ const struct scmi_protocol *scmi_protocol_get(int protocol_id)
 	return proto;
 }
 
-static int scmi_dev_probe(struct device_d *dev)
+static int scmi_dev_probe(struct device *dev)
 {
 	struct scmi_driver *scmi_drv = to_scmi_driver(dev->driver);
 	struct scmi_device *scmi_dev = to_scmi_dev(dev);
@@ -105,7 +105,7 @@ static int scmi_dev_probe(struct device_d *dev)
 	return scmi_drv->probe(scmi_dev);
 }
 
-static void scmi_dev_remove(struct device_d *dev)
+static void scmi_dev_remove(struct device *dev)
 {
 	struct scmi_driver *scmi_drv = to_scmi_driver(dev->driver);
 	struct scmi_device *scmi_dev = to_scmi_dev(dev);
@@ -141,7 +141,7 @@ int scmi_driver_register(struct scmi_driver *driver)
 EXPORT_SYMBOL_GPL(scmi_driver_register);
 
 struct scmi_device *
-scmi_device_alloc(struct device_node *np, struct device_d *parent, int protocol,
+scmi_device_alloc(struct device_node *np, struct device *parent, int protocol,
 		   const char *name)
 {
 	struct scmi_device *scmi_dev;
diff --git a/drivers/firmware/arm_scmi/common.h b/drivers/firmware/arm_scmi/common.h
index 5004a71dc9..b10ebaf4ac 100644
--- a/drivers/firmware/arm_scmi/common.h
+++ b/drivers/firmware/arm_scmi/common.h
@@ -164,7 +164,7 @@ struct scmi_xfer_ops;
  *   the protocol.
  */
 struct scmi_protocol_handle {
-	struct device_d *dev;
+	struct device *dev;
 	const struct scmi_xfer_ops *xops;
 	int (*set_priv)(const struct scmi_protocol_handle *ph, void *priv);
 	void *(*get_priv)(const struct scmi_protocol_handle *ph);
@@ -202,7 +202,7 @@ struct scmi_xfer_ops {
 struct scmi_revision_info *
 scmi_revision_area_get(const struct scmi_protocol_handle *ph);
 int scmi_handle_put(const struct scmi_handle *handle);
-struct scmi_handle *scmi_handle_get(struct device_d *dev);
+struct scmi_handle *scmi_handle_get(struct device *dev);
 void scmi_set_handle(struct scmi_device *scmi_dev);
 void scmi_setup_protocol_implemented(const struct scmi_protocol_handle *ph,
 				     u8 *prot_imp);
@@ -259,7 +259,7 @@ void scmi_protocol_release(const struct scmi_handle *handle, u8 protocol_id);
  * @transport_info: Transport layer related information
  */
 struct scmi_chan_info {
-	struct device_d *dev;
+	struct device *dev;
 	struct scmi_handle *handle;
 	void *transport_info;
 };
@@ -277,8 +277,8 @@ struct scmi_chan_info {
  * @poll_done: Callback to poll transfer status
  */
 struct scmi_transport_ops {
-	bool (*chan_available)(struct device_d *dev, int idx);
-	int (*chan_setup)(struct scmi_chan_info *cinfo, struct device_d *dev,
+	bool (*chan_available)(struct device *dev, int idx);
+	int (*chan_setup)(struct scmi_chan_info *cinfo, struct device *dev,
 			  bool tx);
 	int (*chan_free)(int id, void *p, void *data);
 	int (*send_message)(struct scmi_chan_info *cinfo,
@@ -292,7 +292,7 @@ struct scmi_transport_ops {
 
 int scmi_protocol_device_request(const struct scmi_device_id *id_table);
 void scmi_protocol_device_unrequest(const struct scmi_device_id *id_table);
-struct scmi_device *scmi_child_dev_find(struct device_d *parent,
+struct scmi_device *scmi_child_dev_find(struct device *parent,
 					int prot_id, const char *name);
 
 /**
diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
index a74746ac30..abccaf2a1b 100644
--- a/drivers/firmware/arm_scmi/driver.c
+++ b/drivers/firmware/arm_scmi/driver.c
@@ -117,7 +117,7 @@ struct scmi_protocol_instance {
  * @users: Number of users of this instance
  */
 struct scmi_info {
-	struct device_d *dev;
+	struct device *dev;
 	const struct scmi_desc *desc;
 	struct scmi_revision_info version;
 	struct scmi_handle handle;
@@ -163,7 +163,7 @@ static inline int scmi_to_linux_errno(int errno)
  * @dev: Device pointer corresponding to the SCMI entity
  * @hdr: pointer to header.
  */
-static inline void scmi_dump_header_dbg(struct device_d *dev,
+static inline void scmi_dump_header_dbg(struct device *dev,
 					struct scmi_msg_hdr *hdr)
 {
 	dev_dbg(dev, "Message ID: %x Sequence ID: %x Protocol: %x\n",
@@ -224,7 +224,7 @@ static void scmi_handle_response(struct scmi_chan_info *cinfo,
 				 u16 xfer_id, u8 msg_type)
 {
 	struct scmi_xfer *xfer;
-	struct device_d *dev = cinfo->dev;
+	struct device *dev = cinfo->dev;
 	struct scmi_info *info = handle_to_scmi_info(cinfo->handle);
 	struct scmi_xfers_info *minfo = &info->tx_minfo;
 
@@ -323,7 +323,7 @@ static int do_xfer(const struct scmi_protocol_handle *ph,
 	int ret;
 	const struct scmi_protocol_instance *pi = ph_to_pi(ph);
 	struct scmi_info *info = handle_to_scmi_info(pi->handle);
-	struct device_d *dev = info->dev;
+	struct device *dev = info->dev;
 	struct scmi_chan_info *cinfo;
 	u64 start;
 
@@ -437,7 +437,7 @@ static int xfer_get_init(const struct scmi_protocol_handle *ph,
 	const struct scmi_protocol_instance *pi = ph_to_pi(ph);
 	struct scmi_info *info = handle_to_scmi_info(pi->handle);
 	struct scmi_xfers_info *minfo = &info->tx_minfo;
-	struct device_d *dev = info->dev;
+	struct device *dev = info->dev;
 
 	/* Ensure we have sane transfer sizes */
 	if (rx_size > info->desc->max_msg_size ||
@@ -728,7 +728,7 @@ struct scmi_handle *scmi_handle_get_from_info_unlocked(struct scmi_info *info)
  *
  * Return: pointer to handle if successful, NULL on error
  */
-struct scmi_handle *scmi_handle_get(struct device_d *dev)
+struct scmi_handle *scmi_handle_get(struct device *dev)
 {
 	struct list_head *p;
 	struct scmi_info *info;
@@ -776,7 +776,7 @@ static int __scmi_xfer_info_init(struct scmi_info *sinfo,
 {
 	int i;
 	struct scmi_xfer *xfer;
-	struct device_d *dev = sinfo->dev;
+	struct device *dev = sinfo->dev;
 	const struct scmi_desc *desc = sinfo->desc;
 
 	/* Pre-allocated messages, no more than what hdr.seq can support */
@@ -819,7 +819,7 @@ static int scmi_xfer_info_init(struct scmi_info *sinfo)
 	return ret;
 }
 
-static int scmi_chan_setup(struct scmi_info *info, struct device_d *dev,
+static int scmi_chan_setup(struct scmi_info *info, struct device *dev,
 			   int prot_id, bool tx)
 {
 	int ret, idx;
@@ -864,7 +864,7 @@ idr_alloc:
 }
 
 static inline int
-scmi_txrx_setup(struct scmi_info *info, struct device_d *dev, int prot_id)
+scmi_txrx_setup(struct scmi_info *info, struct device *dev, int prot_id)
 {
 	int ret = scmi_chan_setup(info, dev, prot_id, true);
 
@@ -1133,7 +1133,7 @@ void scmi_protocol_device_unrequest(const struct scmi_device_id *id_table)
 	}
 }
 
-static void version_info(struct device_d *dev)
+static void version_info(struct device *dev)
 {
 	struct scmi_info *info = dev->priv;
 
@@ -1148,7 +1148,7 @@ static void version_info(struct device_d *dev)
 	       info->version.sub_vendor_id);
 }
 
-static int scmi_probe(struct device_d *dev)
+static int scmi_probe(struct device *dev)
 {
 	int ret;
 	struct scmi_handle *handle;
diff --git a/drivers/firmware/arm_scmi/smc.c b/drivers/firmware/arm_scmi/smc.c
index fd45d55b2e..98f9277ddc 100644
--- a/drivers/firmware/arm_scmi/smc.c
+++ b/drivers/firmware/arm_scmi/smc.c
@@ -29,15 +29,15 @@ struct scmi_smc {
 	u32 func_id;
 };
 
-static bool smc_chan_available(struct device_d *dev, int idx)
+static bool smc_chan_available(struct device *dev, int idx)
 {
 	return of_parse_phandle(dev->of_node, "shmem", 0) != NULL;
 }
 
-static int smc_chan_setup(struct scmi_chan_info *cinfo, struct device_d *dev,
+static int smc_chan_setup(struct scmi_chan_info *cinfo, struct device *dev,
 			  bool tx)
 {
-	struct device_d *cdev = cinfo->dev;
+	struct device *cdev = cinfo->dev;
 	struct scmi_smc *scmi_info;
 	resource_size_t size;
 	struct resource res;
diff --git a/drivers/firmware/arm_scmi/voltage.c b/drivers/firmware/arm_scmi/voltage.c
index a3d78db28f..63583c7885 100644
--- a/drivers/firmware/arm_scmi/voltage.c
+++ b/drivers/firmware/arm_scmi/voltage.c
@@ -80,7 +80,7 @@ static int scmi_protocol_attributes_get(const struct scmi_protocol_handle *ph,
 	return ret;
 }
 
-static int scmi_init_voltage_levels(struct device_d *dev,
+static int scmi_init_voltage_levels(struct device *dev,
 				    struct scmi_voltage_info *v,
 				    u32 num_returned, u32 num_remaining,
 				    bool segmented)
@@ -115,7 +115,7 @@ static int scmi_voltage_descriptors_get(const struct scmi_protocol_handle *ph,
 {
 	int ret, dom;
 	struct scmi_xfer *td, *tl;
-	struct device_d *dev = ph->dev;
+	struct device *dev = ph->dev;
 	struct scmi_msg_resp_domain_attributes *resp_dom;
 	struct scmi_msg_resp_describe_levels *resp_levels;
 
diff --git a/drivers/firmware/socfpga.c b/drivers/firmware/socfpga.c
index 4ab41cbf79..d875726ee6 100644
--- a/drivers/firmware/socfpga.c
+++ b/drivers/firmware/socfpga.c
@@ -377,7 +377,7 @@ static int programmed_get(struct param_d *p, void *priv)
 	return 0;
 }
 
-static int socfpga_fpgamgr_probe(struct device_d *dev)
+static int socfpga_fpgamgr_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct fpgamgr *mgr;
diff --git a/drivers/firmware/zynqmp-fpga.c b/drivers/firmware/zynqmp-fpga.c
index 0c40522ddf..8729991578 100644
--- a/drivers/firmware/zynqmp-fpga.c
+++ b/drivers/firmware/zynqmp-fpga.c
@@ -58,7 +58,7 @@ enum xilinx_byte_order {
 
 struct fpgamgr {
 	struct firmware_handler fh;
-	struct device_d dev;
+	struct device dev;
 	const struct zynqmp_eemi_ops *eemi_ops;
 	int programmed;
 	char *buf;
@@ -158,8 +158,8 @@ static int get_header_length(const char *header, size_t size)
 	return -EINVAL;
 }
 
-static void zynqmp_fpga_show_header(const struct device_d *dev,
-			 struct bs_header *header, size_t size)
+static void zynqmp_fpga_show_header(const struct device *dev,
+				    struct bs_header *header, size_t size)
 {
 	struct bs_header_entry *entry;
 	unsigned int i;
@@ -326,7 +326,7 @@ static int programmed_get(struct param_d *p, void *priv)
 	return 0;
 }
 
-static int zynqmp_fpga_probe(struct device_d *dev)
+static int zynqmp_fpga_probe(struct device *dev)
 {
 	struct fpgamgr *mgr;
 	struct firmware_handler *fh;
diff --git a/drivers/fpga/fpga-bridge.c b/drivers/fpga/fpga-bridge.c
index 022498cd32..5db24cb5bd 100644
--- a/drivers/fpga/fpga-bridge.c
+++ b/drivers/fpga/fpga-bridge.c
@@ -56,7 +56,7 @@ EXPORT_SYMBOL_GPL(fpga_bridge_disable);
 struct fpga_bridge *of_fpga_bridge_get(struct device_node *np)
 
 {
-	struct device_d *dev;
+	struct device *dev;
 	struct fpga_bridge *bridge;
 	int ret = -EPROBE_DEFER;
 
@@ -179,7 +179,7 @@ static int set_enable(struct param_d *p, void *priv)
  *
  * Return: 0 for success, error code otherwise.
  */
-int fpga_bridge_register(struct device_d *dev, const char *name,
+int fpga_bridge_register(struct device *dev, const char *name,
 			 const struct fpga_bridge_ops *br_ops, void *priv)
 {
 	struct fpga_bridge *bridge;
diff --git a/drivers/fpga/socfpga-fpga2sdram-bridge.c b/drivers/fpga/socfpga-fpga2sdram-bridge.c
index 0b4ec39ee3..d4297d5b8e 100644
--- a/drivers/fpga/socfpga-fpga2sdram-bridge.c
+++ b/drivers/fpga/socfpga-fpga2sdram-bridge.c
@@ -52,7 +52,7 @@
 #define F2S_BRIDGE_NAME "fpga2sdram"
 
 struct alt_fpga2sdram_data {
-	struct device_d *dev;
+	struct device *dev;
 	int mask;
 };
 
@@ -96,7 +96,7 @@ static struct of_device_id altera_fpga_of_match[] = {
 	{},
 };
 
-static int alt_fpga_bridge_probe(struct device_d *dev)
+static int alt_fpga_bridge_probe(struct device *dev)
 {
 	struct alt_fpga2sdram_data *priv;
 	int ret = 0;
diff --git a/drivers/fpga/socfpga-hps2fpga-bridge.c b/drivers/fpga/socfpga-hps2fpga-bridge.c
index 0eaaabf6c6..af33f283c7 100644
--- a/drivers/fpga/socfpga-hps2fpga-bridge.c
+++ b/drivers/fpga/socfpga-hps2fpga-bridge.c
@@ -39,7 +39,7 @@
 #define FPGA2HPS_BRIDGE_NAME			"fpga2hps"
 
 struct altera_hps2fpga_data {
-	struct device_d *dev;
+	struct device *dev;
 	const char *name;
 	struct reset_control *bridge_reset;
 	unsigned int remap_mask;
@@ -113,7 +113,7 @@ static struct of_device_id altera_fpga_of_match[] = {
 	{ /* sentinel */ },
 };
 
-static int alt_fpga_bridge_probe(struct device_d *dev)
+static int alt_fpga_bridge_probe(struct device *dev)
 {
 	struct altera_hps2fpga_data *priv;
 	const struct of_device_id *of_id;
diff --git a/drivers/gpio/gpio-74164.c b/drivers/gpio/gpio-74164.c
index 2e8ecf6b53..84dc30069a 100644
--- a/drivers/gpio/gpio-74164.c
+++ b/drivers/gpio/gpio-74164.c
@@ -94,7 +94,7 @@ static struct platform_device_id gpio_74164_ids[] = {
 	{ }
 };
 
-static int gpio_74164_probe(struct device_d *dev)
+static int gpio_74164_probe(struct device *dev)
 {
 	struct spi_device *spi = (struct spi_device *)dev->type_data;
 	struct gpio_74164 *priv;
diff --git a/drivers/gpio/gpio-74xx-mmio.c b/drivers/gpio/gpio-74xx-mmio.c
index 5b688f4766..8c7d60939b 100644
--- a/drivers/gpio/gpio-74xx-mmio.c
+++ b/drivers/gpio/gpio-74xx-mmio.c
@@ -120,7 +120,7 @@ static int mmio_74xx_dir_out(struct gpio_chip *gc, unsigned int gpio, int val)
 	return -ENOTSUPP;
 }
 
-static int mmio_74xx_gpio_probe(struct device_d *dev)
+static int mmio_74xx_gpio_probe(struct device *dev)
 {
 	struct mmio_74xx_gpio_priv *priv;
 	void __iomem *dat;
diff --git a/drivers/gpio/gpio-ath79.c b/drivers/gpio/gpio-ath79.c
index 08d19c2a7c..083a942869 100644
--- a/drivers/gpio/gpio-ath79.c
+++ b/drivers/gpio/gpio-ath79.c
@@ -103,7 +103,7 @@ static const struct of_device_id ath79_gpio_of_match[] = {
 	{},
 };
 
-static int ath79_gpio_probe(struct device_d *dev)
+static int ath79_gpio_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct device_node *np = dev->of_node;
diff --git a/drivers/gpio/gpio-clps711x.c b/drivers/gpio/gpio-clps711x.c
index 1c5f714aa5..190ff2115a 100644
--- a/drivers/gpio/gpio-clps711x.c
+++ b/drivers/gpio/gpio-clps711x.c
@@ -7,7 +7,7 @@
 #include <linux/err.h>
 #include <linux/basic_mmio_gpio.h>
 
-static int clps711x_gpio_probe(struct device_d *dev)
+static int clps711x_gpio_probe(struct device *dev)
 {
 	struct resource *iores;
 	int err, id = of_alias_get_id(dev->of_node, "gpio");
diff --git a/drivers/gpio/gpio-davinci.c b/drivers/gpio/gpio-davinci.c
index 655621b179..899bb2e578 100644
--- a/drivers/gpio/gpio-davinci.c
+++ b/drivers/gpio/gpio-davinci.c
@@ -133,7 +133,7 @@ static struct gpio_ops davinci_gpio_ops = {
 	.set = davinci_gpio_set,
 };
 
-static int davinci_gpio_probe(struct device_d *dev)
+static int davinci_gpio_probe(struct device *dev)
 {
 	struct resource *iores;
 	void __iomem *gpio_base;
diff --git a/drivers/gpio/gpio-digic.c b/drivers/gpio/gpio-digic.c
index 5a6dd95aae..2cfa728a6b 100644
--- a/drivers/gpio/gpio-digic.c
+++ b/drivers/gpio/gpio-digic.c
@@ -106,7 +106,7 @@ static struct gpio_ops digic_gpio_ops = {
 	.set = digic_gpio_set_value,
 };
 
-static int digic_gpio_probe(struct device_d *dev)
+static int digic_gpio_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct digic_gpio_chip *chip;
diff --git a/drivers/gpio/gpio-dw.c b/drivers/gpio/gpio-dw.c
index 0d810310ce..bdb840f8d0 100644
--- a/drivers/gpio/gpio-dw.c
+++ b/drivers/gpio/gpio-dw.c
@@ -104,7 +104,7 @@ static struct gpio_ops dw_gpio_ops = {
 	.set = dw_gpio_set,
 };
 
-static int dw_gpio_add_port(struct device_d *dev, struct device_node *node,
+static int dw_gpio_add_port(struct device *dev, struct device_node *node,
 			    struct dw_gpio *parent)
 {
 	struct dw_gpio_instance *chip;
@@ -150,7 +150,7 @@ static int dw_gpio_add_port(struct device_d *dev, struct device_node *node,
 	return 0;
 }
 
-static int dw_gpio_probe(struct device_d *dev)
+static int dw_gpio_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct dw_gpio *gpio;
diff --git a/drivers/gpio/gpio-generic.c b/drivers/gpio/gpio-generic.c
index 49b5b2bf8d..cdb15d8639 100644
--- a/drivers/gpio/gpio-generic.c
+++ b/drivers/gpio/gpio-generic.c
@@ -239,7 +239,7 @@ static int bgpio_dir_out_val_first(struct gpio_chip *gc, unsigned int gpio,
 	return 0;
 }
 
-static int bgpio_setup_accessors(struct device_d *dev,
+static int bgpio_setup_accessors(struct device *dev,
 				 struct bgpio_chip *bgc,
 				 bool byte_be)
 {
@@ -404,7 +404,7 @@ static int bgpio_request(struct gpio_chip *chip, unsigned gpio_pin)
  * @flags: Different flags that will affect the behaviour of the device, such as
  *	endianness etc.
  */
-int bgpio_init(struct bgpio_chip *bgc, struct device_d *dev,
+int bgpio_init(struct bgpio_chip *bgc, struct device *dev,
 	       unsigned int sz, void __iomem *dat, void __iomem *set,
 	       void __iomem *clr, void __iomem *dirout, void __iomem *dirin,
 	       unsigned long flags)
@@ -478,7 +478,7 @@ EXPORT_SYMBOL_GPL(bgpio_remove);
 
 #ifdef CONFIG_GPIO_GENERIC_PLATFORM
 
-static void __iomem *bgpio_map(struct device_d *dev,
+static void __iomem *bgpio_map(struct device *dev,
 			       const char *name,
 			       resource_size_t sane_sz)
 {
@@ -498,7 +498,7 @@ static void __iomem *bgpio_map(struct device_d *dev,
 
 static const struct of_device_id bgpio_of_match[];
 
-static struct bgpio_pdata *bgpio_parse_dt(struct device_d *dev,
+static struct bgpio_pdata *bgpio_parse_dt(struct device *dev,
 					  unsigned long *flags)
 {
 	struct bgpio_pdata *pdata;
@@ -519,7 +519,7 @@ static struct bgpio_pdata *bgpio_parse_dt(struct device_d *dev,
 	return pdata;
 }
 
-static int bgpio_dev_probe(struct device_d *dev)
+static int bgpio_dev_probe(struct device *dev)
 {
 	struct resource *r;
 	void __iomem *dat;
@@ -580,7 +580,7 @@ static int bgpio_dev_probe(struct device_d *dev)
 	return gpiochip_add(&bgc->gc);
 }
 
-static void bgpio_dev_remove(struct device_d *dev)
+static void bgpio_dev_remove(struct device *dev)
 {
 	struct bgpio_chip *bgc = dev->priv;
 
diff --git a/drivers/gpio/gpio-imx.c b/drivers/gpio/gpio-imx.c
index f670d109ac..b4f0fbfbfe 100644
--- a/drivers/gpio/gpio-imx.c
+++ b/drivers/gpio/gpio-imx.c
@@ -117,7 +117,7 @@ static struct gpio_ops imx_gpio_ops = {
 	.get_direction = imx_get_direction,
 };
 
-static int imx_gpio_probe(struct device_d *dev)
+static int imx_gpio_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct imx_gpio_chip *imxgpio;
diff --git a/drivers/gpio/gpio-jz4740.c b/drivers/gpio/gpio-jz4740.c
index cf1afb9f1d..bce240aa61 100644
--- a/drivers/gpio/gpio-jz4740.c
+++ b/drivers/gpio/gpio-jz4740.c
@@ -78,7 +78,7 @@ static struct gpio_ops jz4740_gpio_ops = {
 	.set = jz4740_gpio_set_value,
 };
 
-static int jz4740_gpio_probe(struct device_d *dev)
+static int jz4740_gpio_probe(struct device *dev)
 {
 	struct resource *iores;
 	void __iomem *base;
diff --git a/drivers/gpio/gpio-latch.c b/drivers/gpio/gpio-latch.c
index fbb86a953f..c6ba584537 100644
--- a/drivers/gpio/gpio-latch.c
+++ b/drivers/gpio/gpio-latch.c
@@ -94,7 +94,7 @@ static struct gpio_ops gpio_latch_gpio_ops = {
 	.get_direction = gpio_latch_get_direction,
 };
 
-static int gpio_latch_probe(struct device_d *dev)
+static int gpio_latch_probe(struct device *dev)
 {
 	struct gpio_latch_priv *priv;
 	int n_latches, i, ret;
diff --git a/drivers/gpio/gpio-libftdi1.c b/drivers/gpio/gpio-libftdi1.c
index fbbb4d3944..043faefbf5 100644
--- a/drivers/gpio/gpio-libftdi1.c
+++ b/drivers/gpio/gpio-libftdi1.c
@@ -66,7 +66,7 @@ static struct gpio_ops libftdi1_gpio_ops = {
 	.set = libftdi1_gpio_set_value,
 };
 
-static int libftdi1_gpio_probe(struct device_d *dev)
+static int libftdi1_gpio_probe(struct device *dev)
 {
 	struct libftdi1_gpio_chip *gpio;
 	struct ft2232_bitbang *ftbb;
@@ -113,7 +113,7 @@ static __maybe_unused const struct of_device_id libftdi1_gpio_dt_ids[] = {
 	},
 };
 
-static void libftdi1_gpio_remove(struct device_d *dev)
+static void libftdi1_gpio_remove(struct device *dev)
 {
 	barebox_libftdi1_close();
 }
diff --git a/drivers/gpio/gpio-malta-fpga-i2c.c b/drivers/gpio/gpio-malta-fpga-i2c.c
index e835c3e4ab..28ccf31cd6 100644
--- a/drivers/gpio/gpio-malta-fpga-i2c.c
+++ b/drivers/gpio/gpio-malta-fpga-i2c.c
@@ -116,7 +116,7 @@ static struct gpio_ops malta_i2c_gpio_ops = {
 	.set = malta_i2c_gpio_set_value,
 };
 
-static int malta_i2c_gpio_probe(struct device_d *dev)
+static int malta_i2c_gpio_probe(struct device *dev)
 {
 	struct resource *iores;
 	void __iomem *gpio_base;
diff --git a/drivers/gpio/gpio-mpc8xxx.c b/drivers/gpio/gpio-mpc8xxx.c
index b41a11aac2..c12ba2a3ae 100644
--- a/drivers/gpio/gpio-mpc8xxx.c
+++ b/drivers/gpio/gpio-mpc8xxx.c
@@ -34,7 +34,7 @@ struct mpc8xxx_gpio_devtype {
 	int (*gpio_get)(struct bgpio_chip *, unsigned int);
 };
 
-static int mpc8xxx_probe(struct device_d *dev)
+static int mpc8xxx_probe(struct device *dev)
 {
 	struct device_node *np;
 	struct resource *iores;
diff --git a/drivers/gpio/gpio-mxs.c b/drivers/gpio/gpio-mxs.c
index 1a49a2b3dd..8ca6e676ea 100644
--- a/drivers/gpio/gpio-mxs.c
+++ b/drivers/gpio/gpio-mxs.c
@@ -98,7 +98,7 @@ static struct gpio_ops mxs_gpio_ops = {
 	.get_direction = mxs_get_direction,
 };
 
-static int mxs_gpio_probe(struct device_d *dev)
+static int mxs_gpio_probe(struct device *dev)
 {
 	struct mxs_gpio_chip *mxsgpio;
 	struct mxs_gpio_regs *regs;
diff --git a/drivers/gpio/gpio-omap.c b/drivers/gpio/gpio-omap.c
index ad23810467..3b3e589baf 100644
--- a/drivers/gpio/gpio-omap.c
+++ b/drivers/gpio/gpio-omap.c
@@ -115,7 +115,7 @@ static struct gpio_ops omap_gpio_ops = {
 	.set = omap_gpio_set_value,
 };
 
-static int omap_gpio_probe(struct device_d *dev)
+static int omap_gpio_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct omap_gpio_chip *omapgpio;
diff --git a/drivers/gpio/gpio-orion.c b/drivers/gpio/gpio-orion.c
index cd9a4fb638..4c02c9a41d 100644
--- a/drivers/gpio/gpio-orion.c
+++ b/drivers/gpio/gpio-orion.c
@@ -78,7 +78,7 @@ static struct gpio_ops orion_gpio_ops = {
 	.set = orion_gpio_set_value,
 };
 
-static int orion_gpio_probe(struct device_d *dev)
+static int orion_gpio_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct orion_gpio_chip *gpio;
diff --git a/drivers/gpio/gpio-pca953x.c b/drivers/gpio/gpio-pca953x.c
index 8d8cd21310..656fcd0492 100644
--- a/drivers/gpio/gpio-pca953x.c
+++ b/drivers/gpio/gpio-pca953x.c
@@ -406,7 +406,7 @@ out:
 	return ret;
 }
 
-static int pca953x_probe(struct device_d *dev)
+static int pca953x_probe(struct device *dev)
 {
 	struct i2c_client *client = to_i2c_client(dev);
 	unsigned long driver_data;
diff --git a/drivers/gpio/gpio-pcf857x.c b/drivers/gpio/gpio-pcf857x.c
index 58a2f7e1ba..613c0cb47d 100644
--- a/drivers/gpio/gpio-pcf857x.c
+++ b/drivers/gpio/gpio-pcf857x.c
@@ -145,7 +145,7 @@ static struct gpio_ops pcf857x_gpio_ops = {
 	.set = pcf857x_set,
 };
 
-static int pcf857x_probe(struct device_d *dev)
+static int pcf857x_probe(struct device *dev)
 {
 	struct i2c_client		*client = to_i2c_client(dev);
 	struct device_node		*np = dev->of_node;
diff --git a/drivers/gpio/gpio-raspberrypi-exp.c b/drivers/gpio/gpio-raspberrypi-exp.c
index b68f19bfd0..86440a7cec 100644
--- a/drivers/gpio/gpio-raspberrypi-exp.c
+++ b/drivers/gpio/gpio-raspberrypi-exp.c
@@ -233,7 +233,7 @@ static struct gpio_ops rpi_exp_gpio_ops = {
 	.set = rpi_exp_gpio_set,
 };
 
-static int rpi_exp_gpio_probe(struct device_d *dev)
+static int rpi_exp_gpio_probe(struct device *dev)
 {
 	struct rpi_exp_gpio *rpi_gpio;
 	int ret;
diff --git a/drivers/gpio/gpio-sifive.c b/drivers/gpio/gpio-sifive.c
index 70a07ff0f7..c56672d2a0 100644
--- a/drivers/gpio/gpio-sifive.c
+++ b/drivers/gpio/gpio-sifive.c
@@ -28,7 +28,7 @@ static int __of_irq_count(struct device_node *np)
 	return npins / sizeof(__be32);
 }
 
-static int sifive_gpio_probe(struct device_d *dev)
+static int sifive_gpio_probe(struct device *dev)
 {
 	struct bgpio_chip *bgc;
 	struct resource *res;
diff --git a/drivers/gpio/gpio-starfive-vic.c b/drivers/gpio/gpio-starfive-vic.c
index a20fe0f346..d34ab6a602 100644
--- a/drivers/gpio/gpio-starfive-vic.c
+++ b/drivers/gpio/gpio-starfive-vic.c
@@ -111,7 +111,7 @@ static struct gpio_ops starfive_gpio_ops = {
 	.set = starfive_set_value,
 };
 
-static int starfive_gpio_probe(struct device_d *dev)
+static int starfive_gpio_probe(struct device *dev)
 {
 	struct starfive_gpio *chip;
 	struct resource *res;
diff --git a/drivers/gpio/gpio-stmpe.c b/drivers/gpio/gpio-stmpe.c
index 4b572800a7..e4ec77936a 100644
--- a/drivers/gpio/gpio-stmpe.c
+++ b/drivers/gpio/gpio-stmpe.c
@@ -105,7 +105,7 @@ static struct gpio_ops stmpe_gpio_ops = {
 	.set = stmpe_gpio_set_value,
 };
 
-static int stmpe_gpio_probe(struct device_d *dev)
+static int stmpe_gpio_probe(struct device *dev)
 {
 	struct stmpe_gpio_chip *stmpegpio;
 	struct stmpe_client_info *ci;
diff --git a/drivers/gpio/gpio-sx150x.c b/drivers/gpio/gpio-sx150x.c
index 75c0be519d..af4530e639 100644
--- a/drivers/gpio/gpio-sx150x.c
+++ b/drivers/gpio/gpio-sx150x.c
@@ -227,7 +227,7 @@ static struct gpio_ops sx150x_gpio_ops = {
 	.set		   = sx150x_gpio_set,
 };
 
-static int sx150x_probe(struct device_d *dev)
+static int sx150x_probe(struct device *dev)
 {
 	struct i2c_client *client = to_i2c_client(dev);
 	struct sx150x_gpio *sx150x;
diff --git a/drivers/gpio/gpio-tegra.c b/drivers/gpio/gpio-tegra.c
index 8ce4df4661..6ee7bc9399 100644
--- a/drivers/gpio/gpio-tegra.c
+++ b/drivers/gpio/gpio-tegra.c
@@ -125,7 +125,7 @@ static struct gpio_chip tegra_gpio_chip = {
 	.base	= 0,
 };
 
-static int tegra_gpio_probe(struct device_d *dev)
+static int tegra_gpio_probe(struct device *dev)
 {
 	struct resource *iores;
 	int i, j, ret;
diff --git a/drivers/gpio/gpio-vf610.c b/drivers/gpio/gpio-vf610.c
index 1438a74785..bf9bf32cf9 100644
--- a/drivers/gpio/gpio-vf610.c
+++ b/drivers/gpio/gpio-vf610.c
@@ -88,7 +88,7 @@ static struct gpio_ops vf610_gpio_ops = {
 	.get_direction = vf610_gpio_get_direction,
 };
 
-static int vf610_gpio_probe(struct device_d *dev)
+static int vf610_gpio_probe(struct device *dev)
 {
 	int ret, size;
 	struct resource *iores;
diff --git a/drivers/gpio/gpio-zynq.c b/drivers/gpio/gpio-zynq.c
index c53c3da059..be27f9d282 100644
--- a/drivers/gpio/gpio-zynq.c
+++ b/drivers/gpio/gpio-zynq.c
@@ -360,7 +360,7 @@ static struct gpio_ops zynq_gpio_ops = {
 	.get_direction = zynq_gpio_get_direction,
 };
 
-static int zynqmp_gpio_probe(struct device_d *dev)
+static int zynqmp_gpio_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct zynq_gpio *gpio;
diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index 944cb1cb2a..773d07c130 100644
--- a/drivers/gpio/gpiolib.c
+++ b/drivers/gpio/gpiolib.c
@@ -543,7 +543,7 @@ static const char *gpio_suffixes[] = {
 };
 
 /* Linux compatibility helper: Get a GPIO descriptor from device tree */
-int gpiod_get(struct device_d *dev, const char *_con_id, enum gpiod_flags flags)
+int gpiod_get(struct device *dev, const char *_con_id, enum gpiod_flags flags)
 {
 	struct device_node *np = dev->of_node;
 	enum of_gpio_flags of_flags;
@@ -637,7 +637,7 @@ static int of_gpio_simple_xlate(struct gpio_chip *chip,
 	return chip->base + gpiospec->args[0];
 }
 
-struct gpio_chip *gpio_get_chip_by_dev(struct device_d *dev)
+struct gpio_chip *gpio_get_chip_by_dev(struct device *dev)
 {
 	struct gpio_chip *chip;
 
@@ -649,7 +649,8 @@ struct gpio_chip *gpio_get_chip_by_dev(struct device_d *dev)
 	return NULL;
 }
 
-int gpio_of_xlate(struct device_d *dev, struct of_phandle_args *gpiospec, int *flags)
+int gpio_of_xlate(struct device *dev, struct of_phandle_args *gpiospec,
+		  int *flags)
 {
 	struct gpio_chip *chip;
 
@@ -683,7 +684,7 @@ static int do_gpiolib(int argc, char *argv[])
 		return COMMAND_ERROR_USAGE;
 
 	if (argc > 1) {
-		struct device_d *dev;
+		struct device *dev;
 
 		dev = find_device(argv[1]);
 		if (!dev)
diff --git a/drivers/hw_random/core.c b/drivers/hw_random/core.c
index 4b6a403337..89b979ade8 100644
--- a/drivers/hw_random/core.c
+++ b/drivers/hw_random/core.c
@@ -64,7 +64,7 @@ static struct cdev_operations rng_chrdev_ops = {
 
 static int hwrng_register_cdev(struct hwrng *rng)
 {
-	struct device_d *dev = rng->dev;
+	struct device *dev = rng->dev;
 	const char *alias;
 	char *devname;
 	int err;
@@ -103,7 +103,7 @@ struct hwrng *hwrng_get_first(void)
 		return list_first_entry(&hwrngs, struct hwrng, list);
 }
 
-int hwrng_register(struct device_d *dev, struct hwrng *rng)
+int hwrng_register(struct device *dev, struct hwrng *rng)
 {
 	int err;
 
diff --git a/drivers/hw_random/dev-random.c b/drivers/hw_random/dev-random.c
index d25cf681a4..5290c1e4f6 100644
--- a/drivers/hw_random/dev-random.c
+++ b/drivers/hw_random/dev-random.c
@@ -33,7 +33,7 @@ static int devrandom_rnd_init(struct hwrng *hwrng)
 	return 0;
 }
 
-static int devrandom_rnd_probe(struct device_d *dev)
+static int devrandom_rnd_probe(struct device *dev)
 {
 	struct devrandom_rnd *rnd;
 	int ret;
diff --git a/drivers/hw_random/mxc-rngc.c b/drivers/hw_random/mxc-rngc.c
index 9bc29de1c2..8fdb00f163 100644
--- a/drivers/hw_random/mxc-rngc.c
+++ b/drivers/hw_random/mxc-rngc.c
@@ -101,7 +101,7 @@
 #define RNG_ADDR_RANGE				0x34
 
 struct mxc_rngc {
-	struct device_d		*dev;
+	struct device		*dev;
 	struct clk		*clk;
 	void __iomem		*base;
 	struct hwrng		rng;
@@ -240,7 +240,7 @@ static int mxc_rngc_init(struct hwrng *rng)
 	return 0;
 }
 
-static int mxc_rngc_probe(struct device_d *dev)
+static int mxc_rngc_probe(struct device *dev)
 {
 	struct mxc_rngc *rngc;
 	int ret;
diff --git a/drivers/hw_random/starfive-vic-rng.c b/drivers/hw_random/starfive-vic-rng.c
index d90b495dd8..bf96ff25ed 100644
--- a/drivers/hw_random/starfive-vic-rng.c
+++ b/drivers/hw_random/starfive-vic-rng.c
@@ -72,7 +72,7 @@
 #define to_vic_rng(p)	container_of(p, struct vic_rng, rng)
 
 struct vic_rng {
-	struct device_d	*dev;
+	struct device	*dev;
 	void __iomem	*base;
 	struct hwrng	rng;
 };
@@ -170,7 +170,7 @@ static int vic_rng_read(struct hwrng *rng, void *buf, size_t max, bool wait)
 	return max;
 }
 
-static int vic_rng_probe(struct device_d *dev)
+static int vic_rng_probe(struct device *dev)
 {
 	struct vic_rng *hrng;
 	struct resource *res;
diff --git a/drivers/hw_random/stm32-rng.c b/drivers/hw_random/stm32-rng.c
index 9b28f37ecd..5dbd12bf04 100644
--- a/drivers/hw_random/stm32-rng.c
+++ b/drivers/hw_random/stm32-rng.c
@@ -104,7 +104,7 @@ static int stm32_rng_init(struct hwrng *hwrng)
 	return 0;
 }
 
-static void stm32_rng_remove(struct device_d *dev)
+static void stm32_rng_remove(struct device *dev)
 {
 	struct stm32_rng *rng = dev->priv;
 
@@ -112,7 +112,7 @@ static void stm32_rng_remove(struct device_d *dev)
 	clk_disable(rng->clk);
 }
 
-static int stm32_rng_probe(struct device_d *dev)
+static int stm32_rng_probe(struct device *dev)
 {
 	struct stm32_rng *rng;
 	struct resource *res;
diff --git a/drivers/i2c/algos/i2c-algo-bit.c b/drivers/i2c/algos/i2c-algo-bit.c
index 2d6010869d..9b7e5d96f0 100644
--- a/drivers/i2c/algos/i2c-algo-bit.c
+++ b/drivers/i2c/algos/i2c-algo-bit.c
@@ -245,7 +245,7 @@ static int i2c_inb(struct i2c_adapter *i2c_adap)
 static int test_bus(struct i2c_adapter *i2c_adap)
 {
 	struct i2c_algo_bit_data *adap = i2c_adap->algo_data;
-	struct device_d *dev = &i2c_adap->dev;
+	struct device *dev = &i2c_adap->dev;
 	int scl, sda, ret;
 
 	if (adap->pre_xfer) {
diff --git a/drivers/i2c/busses/i2c-at91.c b/drivers/i2c/busses/i2c-at91.c
index 49f0338df3..a1a37980d5 100644
--- a/drivers/i2c/busses/i2c-at91.c
+++ b/drivers/i2c/busses/i2c-at91.c
@@ -82,7 +82,7 @@ struct at91_twi_pdata {
 };
 
 struct at91_twi_dev {
-	struct device_d *dev;
+	struct device *dev;
 	void __iomem *base;
 	struct clk *clk;
 	u8 *buf;
@@ -500,7 +500,7 @@ static struct of_device_id at91_twi_dt_ids[] = {
 	}
 };
 
-static int at91_twi_probe(struct device_d *dev)
+static int at91_twi_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct at91_twi_dev *i2c_at91;
diff --git a/drivers/i2c/busses/i2c-bcm283x.c b/drivers/i2c/busses/i2c-bcm283x.c
index 63380d632e..1dc542f984 100644
--- a/drivers/i2c/busses/i2c-bcm283x.c
+++ b/drivers/i2c/busses/i2c-bcm283x.c
@@ -74,7 +74,7 @@ static inline struct bcm283x_i2c *to_bcm283x_i2c(struct i2c_adapter *adapter)
 
 static inline int bcm283x_i2c_init(struct bcm283x_i2c *bcm_i2c)
 {
-	struct device_d *dev = bcm_i2c->adapter.dev.parent;
+	struct device *dev = bcm_i2c->adapter.dev.parent;
 	u32 mclk_rate, cdiv, redl, fedl;
 
 	/*
@@ -130,7 +130,7 @@ static int bcm283x_i2c_msg_xfer(struct bcm283x_i2c *bcm_i2c,
 {
 	int ret;
 	u32 reg_c, reg_s, reg_dlen, timeout;
-	struct device_d *dev = &bcm_i2c->adapter.dev;
+	struct device *dev = &bcm_i2c->adapter.dev;
 	bool msg_read = (msg->flags & I2C_M_RD) > 0;
 	bool msg_10bit = (msg->flags & I2C_M_TEN) > 0;
 	u16 buf_pos = 0;
@@ -266,7 +266,7 @@ out:
 	return ret;
 }
 
-static int bcm283x_i2c_probe(struct device_d *dev)
+static int bcm283x_i2c_probe(struct device *dev)
 {
 	int ret;
 	struct resource *iores;
diff --git a/drivers/i2c/busses/i2c-cadence.c b/drivers/i2c/busses/i2c-cadence.c
index 255e085d90..7c8beb61e4 100644
--- a/drivers/i2c/busses/i2c-cadence.c
+++ b/drivers/i2c/busses/i2c-cadence.c
@@ -396,7 +396,7 @@ static int cdns_i2c_xfer(struct i2c_adapter *adapter, struct i2c_msg *msg,
 	return nmsgs;
 }
 
-static int cdns_i2c_probe(struct device_d *dev)
+static int cdns_i2c_probe(struct device *dev)
 {
 	struct device_node *np = dev->of_node;
 	struct resource *iores;
diff --git a/drivers/i2c/busses/i2c-designware.c b/drivers/i2c/busses/i2c-designware.c
index 70bb0dc4cc..e8ece4a2e2 100644
--- a/drivers/i2c/busses/i2c-designware.c
+++ b/drivers/i2c/busses/i2c-designware.c
@@ -504,7 +504,7 @@ static int i2c_dw_xfer(struct i2c_adapter *adapter,
 }
 
 
-static int i2c_dw_probe(struct device_d *pdev)
+static int i2c_dw_probe(struct device *pdev)
 {
 	struct resource *iores;
 	struct dw_i2c_dev *dw;
diff --git a/drivers/i2c/busses/i2c-gpio.c b/drivers/i2c/busses/i2c-gpio.c
index abe3b804dd..6da80e9f0c 100644
--- a/drivers/i2c/busses/i2c-gpio.c
+++ b/drivers/i2c/busses/i2c-gpio.c
@@ -126,7 +126,7 @@ static int of_i2c_gpio_probe(struct device_node *np,
 	return 0;
 }
 
-static int i2c_gpio_probe(struct device_d *dev)
+static int i2c_gpio_probe(struct device *dev)
 {
 	struct i2c_gpio_private_data *priv;
 	struct i2c_gpio_platform_data *pdata;
diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
index 8145990716..d739a3250a 100644
--- a/drivers/i2c/busses/i2c-imx.c
+++ b/drivers/i2c/busses/i2c-imx.c
@@ -525,7 +525,8 @@ static void i2c_fsl_unprepare_recovery(struct i2c_adapter *adapter)
 		dev_err(adapter->dev.parent, "pinctrl failed: %s\n", strerror(-ret));
 }
 
-static void i2c_fsl_init_recovery(struct fsl_i2c_struct *i2c_fsl, struct device_d *dev)
+static void i2c_fsl_init_recovery(struct fsl_i2c_struct *i2c_fsl,
+				  struct device *dev)
 {
 	if (!dev->of_node)
 		return;
@@ -552,7 +553,7 @@ static void i2c_fsl_init_recovery(struct fsl_i2c_struct *i2c_fsl, struct device_
 	dev_dbg(dev, "initialized recovery info\n");
 }
 
-static int __init i2c_fsl_probe(struct device_d *pdev)
+static int __init i2c_fsl_probe(struct device *pdev)
 {
 	struct resource *iores;
 	struct fsl_i2c_struct *i2c_fsl;
diff --git a/drivers/i2c/busses/i2c-mv64xxx.c b/drivers/i2c/busses/i2c-mv64xxx.c
index 20b262e081..33e46f540e 100644
--- a/drivers/i2c/busses/i2c-mv64xxx.c
+++ b/drivers/i2c/busses/i2c-mv64xxx.c
@@ -528,7 +528,7 @@ mv64xxx_find_baud_factors(const u32 req_freq, const u32 tclk, u32 *best_n,
 
 static int
 mv64xxx_of_config(struct mv64xxx_i2c_data *drv_data,
-		  struct device_d *pd)
+		  struct device *pd)
 {
 	struct device_node *np = pd->of_node;
 	u32 bus_freq, tclk;
@@ -596,7 +596,7 @@ out:
 }
 
 static int
-mv64xxx_i2c_probe(struct device_d *pd)
+mv64xxx_i2c_probe(struct device *pd)
 {
 	struct resource *iores;
 	struct mv64xxx_i2c_data		*drv_data;
diff --git a/drivers/i2c/busses/i2c-omap.c b/drivers/i2c/busses/i2c-omap.c
index 74161288ae..79821be6f7 100644
--- a/drivers/i2c/busses/i2c-omap.c
+++ b/drivers/i2c/busses/i2c-omap.c
@@ -1059,7 +1059,7 @@ static struct i2c_bus_recovery_info omap_i2c_bus_recovery_info = {
 };
 
 static int __init
-i2c_omap_probe(struct device_d *pdev)
+i2c_omap_probe(struct device *pdev)
 {
 	struct resource *iores;
 	struct omap_i2c_struct	*i2c_omap;
diff --git a/drivers/i2c/busses/i2c-rockchip.c b/drivers/i2c/busses/i2c-rockchip.c
index df71a8a733..0d3fd2c6bb 100644
--- a/drivers/i2c/busses/i2c-rockchip.c
+++ b/drivers/i2c/busses/i2c-rockchip.c
@@ -108,7 +108,7 @@ static inline void rk_i2c_get_div(int div, int *divh, int *divl)
  */
 static void rk_i2c_set_clk(struct rk_i2c *i2c, uint32_t scl_rate)
 {
-	struct device_d *dev = i2c->adapter.dev.parent;
+	struct device *dev = i2c->adapter.dev.parent;
 	uint32_t i2c_rate;
 	int div, divl, divh;
 
@@ -130,7 +130,7 @@ static void rk_i2c_set_clk(struct rk_i2c *i2c, uint32_t scl_rate)
 
 static void rk_i2c_show_regs(struct rk_i2c *i2c)
 {
-	struct device_d *dev = &i2c->adapter.dev;
+	struct device *dev = &i2c->adapter.dev;
 	struct i2c_regs *regs = i2c->regs;
 	int i;
 
@@ -152,7 +152,7 @@ static void rk_i2c_show_regs(struct rk_i2c *i2c)
 
 static int rk_i2c_send_start_bit(struct rk_i2c *i2c)
 {
-	struct device_d *dev = &i2c->adapter.dev;
+	struct device *dev = &i2c->adapter.dev;
 	struct i2c_regs *regs = i2c->regs;
 	u32 val;
 	int err;
@@ -176,7 +176,7 @@ static int rk_i2c_send_start_bit(struct rk_i2c *i2c)
 
 static int rk_i2c_send_stop_bit(struct rk_i2c *i2c)
 {
-	struct device_d *dev = &i2c->adapter.dev;
+	struct device *dev = &i2c->adapter.dev;
 	struct i2c_regs *regs = i2c->regs;
 	u32 val;
 	int err;
@@ -206,7 +206,7 @@ static inline void rk_i2c_disable(struct rk_i2c *i2c)
 static int rk_i2c_read(struct rk_i2c *i2c, uchar chip, uint reg, uint r_len,
 		       uchar *buf, uint b_len)
 {
-	struct device_d *dev = &i2c->adapter.dev;
+	struct device *dev = &i2c->adapter.dev;
 	struct i2c_regs *regs = i2c->regs;
 	uchar *pbuf = buf;
 	uint bytes_remain_len = b_len;
@@ -302,7 +302,7 @@ i2c_exit:
 static int rk_i2c_write(struct rk_i2c *i2c, uchar chip, uint reg, uint r_len,
 			uchar *buf, uint b_len)
 {
-	struct device_d *dev = &i2c->adapter.dev;
+	struct device *dev = &i2c->adapter.dev;
 	struct i2c_regs *regs = i2c->regs;
 	u32 val;
 	int err;
@@ -379,7 +379,7 @@ static int rockchip_i2c_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs,
 			     int nmsgs)
 {
 	struct rk_i2c *i2c = to_rk_i2c(adapter);
-	struct device_d *dev = &adapter->dev;
+	struct device *dev = &adapter->dev;
 	int i, ret = 0;
 
 	dev_dbg(dev, "i2c_xfer: %d messages\n", nmsgs);
@@ -408,7 +408,7 @@ static int rockchip_i2c_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs,
 	return ret < 0 ? ret : nmsgs;
 }
 
-static int rk_i2c_probe(struct device_d *dev)
+static int rk_i2c_probe(struct device *dev)
 {
 	struct device_node *np = dev->of_node;
 	struct resource *iores;
diff --git a/drivers/i2c/busses/i2c-stm32.c b/drivers/i2c/busses/i2c-stm32.c
index 7825b50d9e..9a0e374be2 100644
--- a/drivers/i2c/busses/i2c-stm32.c
+++ b/drivers/i2c/busses/i2c-stm32.c
@@ -316,7 +316,7 @@ static int stm32_i2c_check_end_of_message(struct stm32_i2c *i2c_priv)
 	struct stm32_i2c_regs *regs = i2c_priv->regs;
 	u32 mask = STM32_I2C_ISR_ERRORS | STM32_I2C_ISR_NACKF |
 		   STM32_I2C_ISR_STOPF;
-	struct device_d *dev = &i2c_priv->adapter.dev;
+	struct device *dev = &i2c_priv->adapter.dev;
 	u32 status;
 	int ret;
 
@@ -616,7 +616,7 @@ static int stm32_i2c_compute_timing(struct stm32_i2c *i2c_priv,
 				    struct stm32_i2c_setup *setup,
 				    struct stm32_i2c_timings *output)
 {
-	struct device_d *dev = &i2c_priv->adapter.dev;
+	struct device *dev = &i2c_priv->adapter.dev;
 	struct stm32_i2c_timings *v, *_v;
 	struct list_head solutions;
 	int ret;
@@ -681,7 +681,7 @@ static int stm32_i2c_setup_timing(struct stm32_i2c *i2c_priv,
 				  enum stm32_i2c_speed speed,
 				  struct stm32_i2c_timings *timing)
 {
-	struct device_d *dev = &i2c_priv->adapter.dev;
+	struct device *dev = &i2c_priv->adapter.dev;
 	struct stm32_i2c_setup *setup = &i2c_priv->setup;
 	int ret = 0;
 
@@ -760,7 +760,7 @@ static int stm32_i2c_hw_config(struct stm32_i2c *i2c_priv,
 
 static int stm32_i2c_set_bus_speed(struct stm32_i2c *i2c_priv, unsigned speed)
 {
-	struct device_d *parent_dev = i2c_priv->adapter.dev.parent;
+	struct device *parent_dev = i2c_priv->adapter.dev.parent;
 	enum stm32_i2c_speed stm32_speed;
 	switch (speed) {
 	case STANDARD_RATE:
@@ -780,7 +780,7 @@ static int stm32_i2c_set_bus_speed(struct stm32_i2c *i2c_priv, unsigned speed)
 	return stm32_i2c_hw_config(i2c_priv, stm32_speed);
 }
 
-static int __init stm32_i2c_probe(struct device_d *dev)
+static int __init stm32_i2c_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct stm32_i2c *stm32_i2c;
diff --git a/drivers/i2c/busses/i2c-tegra.c b/drivers/i2c/busses/i2c-tegra.c
index eec377fc8a..117bc8154c 100644
--- a/drivers/i2c/busses/i2c-tegra.c
+++ b/drivers/i2c/busses/i2c-tegra.c
@@ -137,7 +137,7 @@ struct tegra_i2c_hw_feature {
  * @bus_clk_rate: current i2c bus clock rate
  */
 struct tegra_i2c_dev {
-	struct device_d *dev;
+	struct device *dev;
 	const struct tegra_i2c_hw_feature *hw;
 	struct i2c_adapter adapter;
 	struct clk *div_clk;
@@ -594,7 +594,7 @@ static const struct tegra_i2c_hw_feature tegra114_i2c_hw = {
 	.clk_divisor_std_fast_mode = 0x19,
 };
 
-static int tegra_i2c_probe(struct device_d *dev)
+static int tegra_i2c_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct tegra_i2c_dev *i2c_dev;
diff --git a/drivers/i2c/busses/i2c-versatile.c b/drivers/i2c/busses/i2c-versatile.c
index 998d69422b..2348631870 100644
--- a/drivers/i2c/busses/i2c-versatile.c
+++ b/drivers/i2c/busses/i2c-versatile.c
@@ -63,7 +63,7 @@ static struct i2c_algo_bit_data i2c_versatile_algo = {
 	.timeout_ms = 100,
 };
 
-static int i2c_versatile_probe(struct device_d *dev)
+static int i2c_versatile_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct i2c_versatile *i2c;
diff --git a/drivers/i2c/i2c-mux.c b/drivers/i2c/i2c-mux.c
index 1e5fd1e552..6695ec0411 100644
--- a/drivers/i2c/i2c-mux.c
+++ b/drivers/i2c/i2c-mux.c
@@ -31,7 +31,7 @@ struct i2c_mux_priv {
 	struct i2c_adapter adap;
 
 	struct i2c_adapter *parent;
-	struct device_d *mux_dev;
+	struct device *mux_dev;
 	void *mux_priv;
 	u32 chan_id;
 
@@ -58,7 +58,7 @@ static int i2c_mux_master_xfer(struct i2c_adapter *adap,
 }
 
 struct i2c_adapter *i2c_add_mux_adapter(struct i2c_adapter *parent,
-				struct device_d *mux_dev,
+				struct device *mux_dev,
 				void *mux_priv, u32 force_nr, u32 chan_id,
 				int (*select) (struct i2c_adapter *,
 					       void *, u32),
diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
index ffcc866ad0..a7b5cb94ff 100644
--- a/drivers/i2c/i2c.c
+++ b/drivers/i2c/i2c.c
@@ -253,7 +253,7 @@ int i2c_get_sda_gpio_value(struct i2c_adapter *adap)
 static int i2c_get_gpios_for_recovery(struct i2c_adapter *adap)
 {
 	struct i2c_bus_recovery_info *bri = adap->bus_recovery_info;
-	struct device_d *dev = &adap->dev;
+	struct device *dev = &adap->dev;
 	int ret = 0;
 
 	ret = gpio_request_one(bri->scl_gpio, GPIOF_IN, "i2c-scl");
@@ -359,7 +359,7 @@ int i2c_recover_bus(struct i2c_adapter *adap)
 	return adap->bus_recovery_info->recover_bus(adap);
 }
 
-static void i2c_info(struct device_d *dev)
+static void i2c_info(struct device *dev)
 {
 	const struct i2c_client *client = to_i2c_client(dev);
 
@@ -586,7 +586,7 @@ struct i2c_adapter *of_find_i2c_adapter_by_node(struct device_node *node)
 
 struct i2c_client *of_find_i2c_device_by_node(struct device_node *node)
 {
-	struct device_d *dev = of_find_device_by_node(node);
+	struct device *dev = of_find_device_by_node(node);
 
 	if (!dev)
 		return NULL;
@@ -610,8 +610,9 @@ int of_i2c_device_enable_and_register_by_alias(const char *alias)
 }
 
 
-static void i2c_parse_timing(struct device_d *dev, char *prop_name, u32 *cur_val_p,
-			    u32 def_val, bool use_def)
+static void i2c_parse_timing(struct device *dev, char *prop_name,
+			     u32 *cur_val_p,
+			     u32 def_val, bool use_def)
 {
 	int ret;
 
@@ -638,7 +639,8 @@ static void i2c_parse_timing(struct device_d *dev, char *prop_name, u32 *cur_val
  * to switch to this function. New drivers almost always should use the defaults.
  */
 
-void i2c_parse_fw_timings(struct device_d *dev, struct i2c_timings *t, bool use_defaults)
+void i2c_parse_fw_timings(struct device *dev, struct i2c_timings *t,
+			  bool use_defaults)
 {
 	bool u = use_defaults;
 	u32 d;
@@ -714,12 +716,12 @@ int i2c_add_numbered_adapter(struct i2c_adapter *adapter)
 }
 EXPORT_SYMBOL(i2c_add_numbered_adapter);
 
-static int i2c_probe(struct device_d *dev)
+static int i2c_probe(struct device *dev)
 {
 	return dev->driver->probe(dev);
 }
 
-static void i2c_remove(struct device_d *dev)
+static void i2c_remove(struct device *dev)
 {
 	if (dev->driver->remove)
 		dev->driver->remove(dev);
diff --git a/drivers/i2c/muxes/i2c-mux-pca954x.c b/drivers/i2c/muxes/i2c-mux-pca954x.c
index a05d25f344..9efee55d15 100644
--- a/drivers/i2c/muxes/i2c-mux-pca954x.c
+++ b/drivers/i2c/muxes/i2c-mux-pca954x.c
@@ -180,7 +180,7 @@ static int pca954x_deselect_chan(struct i2c_adapter *adap,
 /*
  * I2C init/probing/exit functions
  */
-static int pca954x_probe(struct device_d *dev)
+static int pca954x_probe(struct device *dev)
 {
 	struct i2c_client *client = to_i2c_client(dev);
 	struct i2c_adapter *adap = to_i2c_adapter(client->dev.parent);
diff --git a/drivers/input/gpio_keys.c b/drivers/input/gpio_keys.c
index c188cf34bd..f3639e744d 100644
--- a/drivers/input/gpio_keys.c
+++ b/drivers/input/gpio_keys.c
@@ -31,7 +31,7 @@ struct gpio_keys {
 
 	struct poller_struct poller;
 	struct input_device input;
-	struct device_d *dev;
+	struct device *dev;
 };
 
 static inline struct gpio_keys *
@@ -66,7 +66,7 @@ static void gpio_key_poller(struct poller_struct *poller)
 	}
 }
 
-static int gpio_keys_probe_pdata(struct gpio_keys *gk, struct device_d *dev)
+static int gpio_keys_probe_pdata(struct gpio_keys *gk, struct device *dev)
 {
 	struct gpio_keys_platform_data *pdata;
 	int i;
@@ -92,7 +92,7 @@ static int gpio_keys_probe_pdata(struct gpio_keys *gk, struct device_d *dev)
 	return 0;
 }
 
-static int gpio_keys_probe_dt(struct gpio_keys *gk, struct device_d *dev)
+static int gpio_keys_probe_dt(struct gpio_keys *gk, struct device *dev)
 {
 	struct device_node *npkey, *np = dev->of_node;
 	int i = 0, ret;
@@ -131,7 +131,7 @@ static int gpio_keys_probe_dt(struct gpio_keys *gk, struct device_d *dev)
 	return 0;
 }
 
-static int __init gpio_keys_probe(struct device_d *dev)
+static int __init gpio_keys_probe(struct device *dev)
 {
 	int ret, i, gpio;
 	struct gpio_keys *gk;
diff --git a/drivers/input/imx_keypad.c b/drivers/input/imx_keypad.c
index 9fac770421..b46d1f8106 100644
--- a/drivers/input/imx_keypad.c
+++ b/drivers/input/imx_keypad.c
@@ -72,7 +72,7 @@
 struct imx_keypad {
 	struct input_device input;
 	struct clk *clk;
-	struct device_d *dev;
+	struct device *dev;
 	void __iomem *mmio_base;
 
 	struct poller_struct poller;
@@ -358,7 +358,7 @@ static void imx_keypad_inhibit(struct imx_keypad *keypad)
 	writew(0xff00, keypad->mmio_base + KPCR);
 }
 
-static int __init imx_keypad_probe(struct device_d *dev)
+static int __init imx_keypad_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct imx_keypad *keypad;
diff --git a/drivers/input/matrix-keymap.c b/drivers/input/matrix-keymap.c
index 1d974f7f7a..f0c030fc3a 100644
--- a/drivers/input/matrix-keymap.c
+++ b/drivers/input/matrix-keymap.c
@@ -3,7 +3,7 @@
 #include <common.h>
 #include <input/matrix_keypad.h>
 
-static int matrix_keypad_parse_of_keymap(struct device_d *dev,
+static int matrix_keypad_parse_of_keymap(struct device *dev,
 					 unsigned int row_shift,
 					 unsigned short *keymap)
 {
@@ -55,9 +55,10 @@ static int matrix_keypad_parse_of_keymap(struct device_d *dev,
  * an array of keycodes that is suitable for using in a standard matrix
  * keyboard driver that uses row and col as indices.
  */
-int matrix_keypad_build_keymap(struct device_d *dev, const struct matrix_keymap_data *keymap_data,
-			   unsigned int row_shift,
-			   unsigned short *keymap)
+int matrix_keypad_build_keymap(struct device *dev,
+			       const struct matrix_keymap_data *keymap_data,
+			       unsigned int row_shift,
+			       unsigned short *keymap)
 {
 	int i;
 
diff --git a/drivers/input/qt1070.c b/drivers/input/qt1070.c
index 120fec4841..fb0e0ded33 100644
--- a/drivers/input/qt1070.c
+++ b/drivers/input/qt1070.c
@@ -177,7 +177,7 @@ static int qt1070_getc(struct console_device *cdev)
 	return code;
 }
 
-static int qt1070_pdata_init(struct device_d *dev, struct qt1070_data *data)
+static int qt1070_pdata_init(struct device *dev, struct qt1070_data *data)
 {
 	struct qt1070_platform_data *pdata = dev->platform_data;
 	int ret;
@@ -207,7 +207,7 @@ err:
 	return ret;
 }
 
-static int qt1070_probe(struct device_d *dev)
+static int qt1070_probe(struct device *dev)
 {
 	struct console_device *cdev;
 	struct qt1070_data *data;
diff --git a/drivers/input/twl6030_pwrbtn.c b/drivers/input/twl6030_pwrbtn.c
index 656316fc34..41a039f752 100644
--- a/drivers/input/twl6030_pwrbtn.c
+++ b/drivers/input/twl6030_pwrbtn.c
@@ -57,7 +57,7 @@ static int twl6030_pwrbtn_getc(struct console_device *cdev)
 	return code;
 }
 
-static int __init twl6030_pwrbtn_probe(struct device_d *dev)
+static int __init twl6030_pwrbtn_probe(struct device *dev)
 {
 	struct twl6030_pwrbtn_internal_data *idata;
 	struct twl6030_pwrbtn_platform_data *pdata;
diff --git a/drivers/input/virtio_input.c b/drivers/input/virtio_input.c
index b5430886ab..5c6849b561 100644
--- a/drivers/input/virtio_input.c
+++ b/drivers/input/virtio_input.c
@@ -32,7 +32,7 @@ static void virtinput_queue_evtbuf(struct virtio_input *vi,
 
 static int virtinput_recv_events(struct virtio_input *vi)
 {
-	struct device_d *dev = &vi->vdev->dev;
+	struct device *dev = &vi->vdev->dev;
 	struct virtio_input_event *event;
 	unsigned int len;
 	int i = 0;
diff --git a/drivers/led/led-gpio.c b/drivers/led/led-gpio.c
index 1458ca0bac..3daaf33aee 100644
--- a/drivers/led/led-gpio.c
+++ b/drivers/led/led-gpio.c
@@ -192,7 +192,7 @@ void led_gpio_rgb_unregister(struct gpio_rgb_led *led)
 #endif /* CONFIG_LED_GPIO_RGB */
 
 #ifdef CONFIG_LED_GPIO_OF
-static int led_gpio_of_probe(struct device_d *dev)
+static int led_gpio_of_probe(struct device *dev)
 {
 	struct device_node *child;
 	struct gpio_led *leds;
diff --git a/drivers/led/led-pca955x.c b/drivers/led/led-pca955x.c
index 8eeef60fb1..80354c2cdf 100644
--- a/drivers/led/led-pca955x.c
+++ b/drivers/led/led-pca955x.c
@@ -326,7 +326,7 @@ static const struct of_device_id of_pca955x_match[] = {
 	{},
 };
 
-static int led_pca955x_probe(struct device_d *dev)
+static int led_pca955x_probe(struct device *dev)
 {
 	struct pca955x *pca955x;
 	struct pca955x_led *pca955x_led;
diff --git a/drivers/led/led-pwm.c b/drivers/led/led-pwm.c
index 9dbf510dc6..74cc31e7fb 100644
--- a/drivers/led/led-pwm.c
+++ b/drivers/led/led-pwm.c
@@ -39,7 +39,7 @@ static void led_pwm_set(struct led *led, unsigned int brightness)
 	pwm_apply_state(pwmled->pwm, &state);
 }
 
-static int led_pwm_of_probe(struct device_d *dev)
+static int led_pwm_of_probe(struct device *dev)
 {
 	struct device_node *child;
 	int ret;
diff --git a/drivers/mci/arasan-sdhci.c b/drivers/mci/arasan-sdhci.c
index 460d1df709..60a2785e2d 100644
--- a/drivers/mci/arasan-sdhci.c
+++ b/drivers/mci/arasan-sdhci.c
@@ -93,7 +93,7 @@ static int arasan_sdhci_reset(struct arasan_sdhci_host *host, u8 mask)
 	return 0;
 }
 
-static int arasan_sdhci_init(struct mci_host *mci, struct device_d *dev)
+static int arasan_sdhci_init(struct mci_host *mci, struct device *dev)
 {
 	struct arasan_sdhci_host *host = to_arasan_sdhci_host(mci);
 	int ret;
@@ -233,7 +233,7 @@ error:
 	return ret;
 }
 
-static int arasan_sdhci_probe(struct device_d *dev)
+static int arasan_sdhci_probe(struct device *dev)
 {
 	struct device_node *np = dev->of_node;
 	struct arasan_sdhci_host *arasan_sdhci;
diff --git a/drivers/mci/atmel-mci-regs.h b/drivers/mci/atmel-mci-regs.h
index 045c1a9f38..44db8a9dff 100644
--- a/drivers/mci/atmel-mci-regs.h
+++ b/drivers/mci/atmel-mci-regs.h
@@ -155,7 +155,7 @@ struct atmel_mci_caps {
 struct atmel_mci {
 	struct mci_host		mci;
 	void  __iomem		*regs;
-	struct device_d		*hw_dev;
+	struct device		*hw_dev;
 	struct clk		*clk;
 
 	u32			datasize;
@@ -190,7 +190,7 @@ static inline unsigned int atmci_convert_chksize(unsigned int maxburst)
 }
 
 void atmci_common_set_ios(struct atmel_mci *host, struct mci_ios *ios);
-int atmci_reset(struct mci_host *mci, struct device_d *mci_dev);
+int atmci_reset(struct mci_host *mci, struct device *mci_dev);
 int atmci_common_request(struct atmel_mci *host, struct mci_cmd *cmd,
 			 struct mci_data *data);
 void atmci_get_cap(struct atmel_mci *host);
diff --git a/drivers/mci/atmel-sdhci.c b/drivers/mci/atmel-sdhci.c
index 059a21d774..02af3c487f 100644
--- a/drivers/mci/atmel-sdhci.c
+++ b/drivers/mci/atmel-sdhci.c
@@ -40,7 +40,7 @@ static void at91_sdhci_mci_set_ios(struct mci_host *mci, struct mci_ios *ios)
 	at91_sdhci_set_ios(&to_priv(mci)->host, ios);
 }
 
-static int at91_sdhci_mci_init(struct mci_host *mci, struct device_d *dev)
+static int at91_sdhci_mci_init(struct mci_host *mci, struct device *dev)
 {
 	struct at91_sdhci_priv *priv = to_priv(mci);
 	struct sdhci *sdhci = &priv->host.sdhci;
@@ -99,7 +99,7 @@ static int at91_sdhci_card_present(struct mci_host *mci)
 	return at91_sdhci_is_card_inserted(&to_priv(mci)->host);
 }
 
-static int at91_sdhci_probe(struct device_d *dev)
+static int at91_sdhci_probe(struct device *dev)
 {
 	struct at91_sdhci_priv *priv;
 	struct resource *iores;
diff --git a/drivers/mci/atmel-sdhci.h b/drivers/mci/atmel-sdhci.h
index 7032294647..8f07de340d 100644
--- a/drivers/mci/atmel-sdhci.h
+++ b/drivers/mci/atmel-sdhci.h
@@ -11,7 +11,7 @@
 
 struct at91_sdhci {
 	struct sdhci	sdhci;
-	struct device_d *dev;
+	struct device *dev;
 	void __iomem	*base;
 	u32		caps_max_clock;
 };
diff --git a/drivers/mci/atmel_mci.c b/drivers/mci/atmel_mci.c
index 8835f0eda5..4975c3a306 100644
--- a/drivers/mci/atmel_mci.c
+++ b/drivers/mci/atmel_mci.c
@@ -31,7 +31,7 @@ static int atmci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 	return atmci_common_request(host, cmd, data);
 }
 
-static void atmci_info(struct device_d *mci_dev)
+static void atmci_info(struct device *mci_dev)
 {
 	struct atmel_mci *host = mci_dev->priv;
 
@@ -67,7 +67,7 @@ static int atmci_card_present(struct mci_host *mci)
 	return ret == 0 ? 1 : 0;
 }
 
-static int atmci_probe(struct device_d *hw_dev)
+static int atmci_probe(struct device *hw_dev)
 {
 	struct resource *iores;
 	struct atmel_mci *host;
diff --git a/drivers/mci/atmel_mci_common.c b/drivers/mci/atmel_mci_common.c
index 5c9e6f9c4d..c8e21933fe 100644
--- a/drivers/mci/atmel_mci_common.c
+++ b/drivers/mci/atmel_mci_common.c
@@ -329,7 +329,7 @@ static int atmci_start_cmd(struct atmel_mci *host, struct mci_cmd *cmd,
 }
 
 /** init the host interface */
-int atmci_reset(struct mci_host *mci, struct device_d *mci_dev)
+int atmci_reset(struct mci_host *mci, struct device *mci_dev)
 {
 	struct atmel_mci *host = to_mci_host(mci);
 
diff --git a/drivers/mci/bcm2835-sdhost.c b/drivers/mci/bcm2835-sdhost.c
index 7e19c6eb1e..c3b844f28e 100644
--- a/drivers/mci/bcm2835-sdhost.c
+++ b/drivers/mci/bcm2835-sdhost.c
@@ -135,7 +135,7 @@ static inline struct bcm2835_host *to_bcm2835_host(struct mci_host *mci)
 	return container_of(mci, struct bcm2835_host, mci);
 }
 
-static int bcm2835_sdhost_init(struct mci_host *mci, struct device_d *dev)
+static int bcm2835_sdhost_init(struct mci_host *mci, struct device *dev)
 {
 	struct bcm2835_host *host = to_bcm2835_host(mci);
 	u32 temp;
@@ -579,7 +579,7 @@ static void bcm2835_set_ios(struct mci_host *mci, struct mci_ios *ios)
 	writel(hcfg, host->regs + SDHCFG);
 }
 
-static int bcm2835_sdhost_probe(struct device_d *dev)
+static int bcm2835_sdhost_probe(struct device *dev)
 {
 	struct bcm2835_host *host;
 	struct resource *iores;
diff --git a/drivers/mci/dove-sdhci.c b/drivers/mci/dove-sdhci.c
index 7581511285..308195303d 100644
--- a/drivers/mci/dove-sdhci.c
+++ b/drivers/mci/dove-sdhci.c
@@ -218,7 +218,7 @@ static void dove_sdhci_mci_set_ios(struct mci_host *mci, struct mci_ios *ios)
 	sdhci_write16(&host->sdhci, SDHCI_CLOCK_CONTROL, val | SDHCI_CLOCK_CARD_EN);
 }
 
-static int dove_sdhci_mci_init(struct mci_host *mci, struct device_d *dev)
+static int dove_sdhci_mci_init(struct mci_host *mci, struct device *dev)
 {
 	u64 start;
 	struct dove_sdhci *host = priv_from_mci_host(mci);
@@ -271,7 +271,7 @@ static void dove_sdhci_set_mci_caps(struct dove_sdhci *host)
 		host->mci.host_caps &= ~MMC_CAP_8_BIT_DATA;
 }
 
-static int dove_sdhci_probe(struct device_d *dev)
+static int dove_sdhci_probe(struct device *dev)
 {
 	struct dove_sdhci *host;
 	int ret;
diff --git a/drivers/mci/dw_mmc.c b/drivers/mci/dw_mmc.c
index 46a69808e9..1f05e86740 100644
--- a/drivers/mci/dw_mmc.c
+++ b/drivers/mci/dw_mmc.c
@@ -26,7 +26,7 @@
 
 struct dwmci_host {
 	struct mci_host mci;
-	struct device_d *dev;
+	struct device *dev;
 	struct clk *clk_biu, *clk_ciu;
 	void *ioaddr;
 	unsigned int fifo_size_bytes;
@@ -496,7 +496,7 @@ static int dwmci_card_present(struct mci_host *mci)
 	return 1;
 }
 
-static int dwmci_init(struct mci_host *mci, struct device_d *dev)
+static int dwmci_init(struct mci_host *mci, struct device *dev)
 {
 	struct dwmci_host *host = to_dwmci_host(mci);
 	uint32_t fifo_size;
@@ -547,7 +547,7 @@ static int dwmci_init(struct mci_host *mci, struct device_d *dev)
 	return 0;
 }
 
-static int dw_mmc_probe(struct device_d *dev)
+static int dw_mmc_probe(struct device *dev)
 {
 	struct reset_control	*rst;
 	struct resource *iores;
diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 9dcad3bb5d..c593b301d8 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -186,7 +186,7 @@ static int esdhc_reset(struct fsl_esdhc_host *host)
 	return 0;
 }
 
-static int esdhc_init(struct mci_host *mci, struct device_d *dev)
+static int esdhc_init(struct mci_host *mci, struct device *dev)
 {
 	struct fsl_esdhc_host *host = to_fsl_esdhc(mci);
 	int ret;
@@ -225,7 +225,7 @@ static int esdhc_init(struct mci_host *mci, struct device_d *dev)
 	return ret;
 }
 
-static int fsl_esdhc_probe(struct device_d *dev)
+static int fsl_esdhc_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct fsl_esdhc_host *host;
diff --git a/drivers/mci/imx-esdhc.h b/drivers/mci/imx-esdhc.h
index f1685eac06..0d8f157a76 100644
--- a/drivers/mci/imx-esdhc.h
+++ b/drivers/mci/imx-esdhc.h
@@ -100,7 +100,7 @@ struct esdhc_soc_data {
 struct fsl_esdhc_host {
 	struct mci_host		mci;
 	struct clk		*clk;
-	struct device_d		*dev;
+	struct device		*dev;
 	const struct esdhc_soc_data *socdata;
 	struct sdhci	sdhci;
 };
diff --git a/drivers/mci/imx.c b/drivers/mci/imx.c
index 9910b55ed5..9197509489 100644
--- a/drivers/mci/imx.c
+++ b/drivers/mci/imx.c
@@ -465,7 +465,7 @@ static void mxcmci_set_ios(struct mci_host *mci, struct mci_ios *ios)
 	host->clock = ios->clock;
 }
 
-static int mxcmci_init(struct mci_host *mci, struct device_d *dev)
+static int mxcmci_init(struct mci_host *mci, struct device *dev)
 {
 	struct mxcmci_host *host = to_mxcmci(mci);
 
@@ -486,7 +486,7 @@ static int mxcmci_init(struct mci_host *mci, struct device_d *dev)
 	return 0;
 }
 
-static int mxcmci_probe(struct device_d *dev)
+static int mxcmci_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct mxcmci_host *host;
diff --git a/drivers/mci/mci-bcm2835.c b/drivers/mci/mci-bcm2835.c
index f092156f9a..3c7bf5ad21 100644
--- a/drivers/mci/mci-bcm2835.c
+++ b/drivers/mci/mci-bcm2835.c
@@ -30,7 +30,7 @@ static int twoticks_delay;
 struct bcm2835_mci_host {
 	struct mci_host mci;
 	void __iomem *regs;
-	struct device_d *hw_dev;
+	struct device *hw_dev;
 	int bus_width;
 	u32 clock;
 	u32 max_clock;
@@ -301,7 +301,7 @@ static void bcm2835_mci_set_ios(struct mci_host *mci, struct mci_ios *ios)
 			host->bus_width, host->clock);
 }
 
-static int bcm2835_mci_reset(struct mci_host *mci, struct device_d *mci_dev)
+static int bcm2835_mci_reset(struct mci_host *mci, struct device *mci_dev)
 {
 	struct bcm2835_mci_host *host;
 	u32 ret = 0;
@@ -353,7 +353,7 @@ static int bcm2835_mci_reset(struct mci_host *mci, struct device_d *mci_dev)
 	return 0;
 }
 
-static int bcm2835_mci_probe(struct device_d *hw_dev)
+static int bcm2835_mci_probe(struct device *hw_dev)
 {
 	struct resource *iores;
 	struct bcm2835_mci_host *host;
diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 7dcbae9951..3ad9601258 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1570,7 +1570,7 @@ static void mci_print_caps(unsigned caps)
  * Output some valuable information when the user runs 'devinfo' on an MCI device
  * @param mci MCI device instance
  */
-static void mci_info(struct device_d *dev)
+static void mci_info(struct device *dev)
 {
 	struct mci *mci = container_of(dev, struct mci, dev);
 	struct mci_host *host = mci->host;
@@ -1742,7 +1742,7 @@ static int mci_register_partition(struct mci_part *part)
 static int of_broken_cd_fixup(struct device_node *root, void *ctx)
 {
 	struct mci_host *host = ctx;
-	struct device_d *hw_dev = host->hw_dev;
+	struct device *hw_dev = host->hw_dev;
 	struct device_node *np;
 	char *name;
 
@@ -1916,14 +1916,14 @@ int mci_detect_card(struct mci_host *host)
 	return mci_card_probe(host->mci);
 }
 
-static int mci_detect(struct device_d *dev)
+static int mci_detect(struct device *dev)
 {
 	struct mci *mci = container_of(dev, struct mci, dev);
 
 	return mci_detect_card(mci->host);
 }
 
-static int mci_hw_detect(struct device_d *dev)
+static int mci_hw_detect(struct device *dev)
 {
 	struct mci *mci;
 
@@ -1943,7 +1943,7 @@ static int mci_hw_detect(struct device_d *dev)
 int mci_register(struct mci_host *host)
 {
 	struct mci *mci;
-	struct device_d *hw_dev;
+	struct device *hw_dev;
 	struct param_d *param_probe, *param_broken_cd;
 	int ret;
 
diff --git a/drivers/mci/mci_spi.c b/drivers/mci/mci_spi.c
index 6ae2824edd..815cca0383 100644
--- a/drivers/mci/mci_spi.c
+++ b/drivers/mci/mci_spi.c
@@ -48,7 +48,7 @@
 struct mmc_spi_host {
 	struct mci_host	mci;
 	struct spi_device	*spi;
-	struct device_d	*dev;
+	struct device	*dev;
 	int detect_pin;
 
 	/* for bulk data transfers */
@@ -314,7 +314,7 @@ static void mmc_spi_set_ios(struct mci_host *mci, struct mci_ios *ios)
 	}
 }
 
-static int mmc_spi_init(struct mci_host *mci, struct device_d *mci_dev)
+static int mmc_spi_init(struct mci_host *mci, struct device *mci_dev)
 {
 	struct mmc_spi_host	*host = to_spi_host(mci);
 	mmc_spi_readbytes(host, 10, NULL);
@@ -368,7 +368,7 @@ static int spi_mci_card_present(struct mci_host *mci)
 	return ret == 0 ? 1 : 0;
 }
 
-static int spi_mci_probe(struct device_d *dev)
+static int spi_mci_probe(struct device *dev)
 {
 	struct device_node	*np = dev_of_node(dev);
 	struct spi_device	*spi = (struct spi_device *)dev->type_data;
diff --git a/drivers/mci/mmci.c b/drivers/mci/mmci.c
index 8c1e8dc7fd..a16deba854 100644
--- a/drivers/mci/mmci.c
+++ b/drivers/mci/mmci.c
@@ -96,7 +96,7 @@ static struct variant_data variant_ux500v2 = {
 struct mmci_host {
 	struct mci_host		mci;
 	void __iomem		*base;
-	struct device_d		*hw_dev;
+	struct device		*hw_dev;
 	struct mmci_platform_data *plat;
 	struct clk		*clk;
 	unsigned long		mclk;
@@ -434,7 +434,7 @@ static int mci_request(struct mci_host *mci, struct mci_cmd *cmd, struct mci_dat
 }
 
 /* MMC uses open drain drivers in the enumeration phase */
-static int mci_reset(struct mci_host *mci, struct device_d *mci_dev)
+static int mci_reset(struct mci_host *mci, struct device *mci_dev)
 {
 	struct mmci_host *host = to_mci_host(mci);
 	struct variant_data *variant = host->variant;
@@ -551,7 +551,7 @@ static int mmci_of_parse(struct device_node *np,
 
 static int mmci_probe(struct amba_device *dev, const struct amba_id *id)
 {
-	struct device_d *hw_dev = &dev->dev;
+	struct device *hw_dev = &dev->dev;
 	struct device_node *np = hw_dev->of_node;
 	struct mmci_platform_data *plat = hw_dev->platform_data;
 	struct variant_data *variant = id->data;
diff --git a/drivers/mci/mxs.c b/drivers/mci/mxs.c
index 5d6511f958..f9084fda7c 100644
--- a/drivers/mci/mxs.c
+++ b/drivers/mci/mxs.c
@@ -433,7 +433,7 @@ static unsigned mxs_mci_setup_clock_speed(struct mxs_mci_host *mxs_mci, unsigned
  * @param mci_dev MCI device instance
  * @return 0 on success, negative value else
  */
-static int mxs_mci_initialize(struct mci_host *host, struct device_d *mci_dev)
+static int mxs_mci_initialize(struct mci_host *host, struct device *mci_dev)
 {
 	struct mxs_mci_host *mxs_mci = to_mxs_mci(host);
 
@@ -517,7 +517,7 @@ static void mxs_mci_set_ios(struct mci_host *host, struct mci_ios *ios)
 
 const unsigned char bus_width[3] = { 1, 4, 8 };
 
-static void mxs_mci_info(struct device_d *hw_dev)
+static void mxs_mci_info(struct device *hw_dev)
 {
 	struct mxs_mci_host *mxs_mci = hw_dev->priv;
 
@@ -529,7 +529,7 @@ static void mxs_mci_info(struct device_d *hw_dev)
 	printf("\n");
 }
 
-static int mxs_mci_probe(struct device_d *hw_dev)
+static int mxs_mci_probe(struct device *hw_dev)
 {
 	struct resource *iores;
 	struct mxs_mci_platform_data *pd = hw_dev->platform_data;
diff --git a/drivers/mci/omap_hsmmc.c b/drivers/mci/omap_hsmmc.c
index 61a1f46805..0c326c7818 100644
--- a/drivers/mci/omap_hsmmc.c
+++ b/drivers/mci/omap_hsmmc.c
@@ -170,7 +170,7 @@ static struct omap_mmc_driver_data omap4_data = {
 
 struct omap_hsmmc {
 	struct mci_host		mci;
-	struct device_d		*dev;
+	struct device		*dev;
 	struct hsmmc		*base;
 	void __iomem		*iobase;
 };
@@ -207,7 +207,7 @@ static int mmc_init_stream(struct omap_hsmmc *hsmmc)
 	return 0;
 }
 
-static int mmc_init_setup(struct mci_host *mci, struct device_d *dev)
+static int mmc_init_setup(struct mci_host *mci, struct device *dev)
 {
 	struct omap_hsmmc *hsmmc = to_hsmmc(mci);
 	struct hsmmc *mmc_base = hsmmc->base;
@@ -568,7 +568,7 @@ static void mmc_set_ios(struct mci_host *mci, struct mci_ios *ios)
 	writel(readl(&mmc_base->sysctl) | CEN_ENABLE, &mmc_base->sysctl);
 }
 
-static int omap_mmc_probe(struct device_d *dev)
+static int omap_mmc_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct omap_hsmmc *hsmmc;
diff --git a/drivers/mci/pxamci.c b/drivers/mci/pxamci.c
index 1ec871afbf..9227f1537a 100644
--- a/drivers/mci/pxamci.c
+++ b/drivers/mci/pxamci.c
@@ -319,7 +319,7 @@ static void pxamci_set_ios(struct mci_host *mci, struct mci_ios *ios)
 	mmc_writel(host->clkrt, MMC_CLKRT);
 }
 
-static int pxamci_init(struct mci_host *mci, struct device_d *dev)
+static int pxamci_init(struct mci_host *mci, struct device *dev)
 {
 	struct pxamci_host *host = to_pxamci(mci);
 
@@ -328,7 +328,7 @@ static int pxamci_init(struct mci_host *mci, struct device_d *dev)
 	return 0;
 }
 
-static int pxamci_probe(struct device_d *dev)
+static int pxamci_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct pxamci_host *host;
diff --git a/drivers/mci/rockchip-dwcmshc-sdhci.c b/drivers/mci/rockchip-dwcmshc-sdhci.c
index 164f662552..ccf4b4183d 100644
--- a/drivers/mci/rockchip-dwcmshc-sdhci.c
+++ b/drivers/mci/rockchip-dwcmshc-sdhci.c
@@ -101,7 +101,7 @@ static int rk_sdhci_reset(struct rk_sdhci_host *host, u8 mask)
 	return 0;
 }
 
-static int rk_sdhci_init(struct mci_host *mci, struct device_d *dev)
+static int rk_sdhci_init(struct mci_host *mci, struct device *dev)
 {
 	struct rk_sdhci_host *host = to_rk_sdhci_host(mci);
 	int ret;
@@ -307,7 +307,7 @@ error:
 	return ret;
 }
 
-static int rk_sdhci_probe(struct device_d *dev)
+static int rk_sdhci_probe(struct device *dev)
 {
 	struct rk_sdhci_host *host;
 	struct resource *iores;
diff --git a/drivers/mci/s3c.c b/drivers/mci/s3c.c
index 1de57a608f..496714b167 100644
--- a/drivers/mci/s3c.c
+++ b/drivers/mci/s3c.c
@@ -208,7 +208,8 @@ static void s3c_mci_reset(struct s3c_mci_host *host_data)
  * @param hw_dev Host interface instance
  * @param mci_dev MCI device instance (might be NULL)
  */
-static int s3c_mci_initialize(struct s3c_mci_host *host_data, struct device_d *mci_dev)
+static int s3c_mci_initialize(struct s3c_mci_host *host_data,
+			      struct device *mci_dev)
 {
 	s3c_mci_reset(host_data);
 
@@ -612,7 +613,7 @@ static int s3c_mci_adtc(struct s3c_mci_host *host_data, struct mci_cmd *cmd,
  * @param mci_dev MCI device instance
  * @return 0 on success, negative value else
  */
-static int mci_reset(struct mci_host *host, struct device_d *mci_dev)
+static int mci_reset(struct mci_host *host, struct device *mci_dev)
 {
 	struct s3c_mci_host *host_data = to_s3c_host(host);
 
@@ -688,7 +689,7 @@ static void mci_set_ios(struct mci_host *host, struct mci_ios *ios)
 
 /* ----------------------------------------------------------------------- */
 
-static void s3c_info(struct device_d *hw_dev)
+static void s3c_info(struct device *hw_dev)
 {
 	struct s3c_mci_host *host = hw_dev->priv;
 	struct s3c_mci_platform_data *pd = hw_dev->platform_data;
@@ -708,7 +709,7 @@ static void s3c_info(struct device_d *hw_dev)
 		pd->gpio_detect != 0 ? "yes" : "no");
 }
 
-static int s3c_mci_probe(struct device_d *hw_dev)
+static int s3c_mci_probe(struct device *hw_dev)
 {
 	struct resource *iores;
 	struct s3c_mci_host *s3c_host;
diff --git a/drivers/mci/sdhci.c b/drivers/mci/sdhci.c
index 2ec38cb93f..2cdd3c3c8f 100644
--- a/drivers/mci/sdhci.c
+++ b/drivers/mci/sdhci.c
@@ -136,7 +136,7 @@ void sdhci_setup_data_pio(struct sdhci *sdhci, struct mci_data *data)
 void sdhci_setup_data_dma(struct sdhci *sdhci, struct mci_data *data,
 			  dma_addr_t *dma)
 {
-	struct device_d *dev = sdhci->mci->hw_dev;
+	struct device *dev = sdhci->mci->hw_dev;
 	int nbytes;
 
 	if (!data)
@@ -167,7 +167,7 @@ void sdhci_setup_data_dma(struct sdhci *sdhci, struct mci_data *data,
 int sdhci_transfer_data_dma(struct sdhci *sdhci, struct mci_data *data,
 			    dma_addr_t dma)
 {
-	struct device_d *dev = sdhci->mci->hw_dev;
+	struct device *dev = sdhci->mci->hw_dev;
 	int nbytes;
 	u32 irqstat;
 	int ret;
@@ -263,7 +263,7 @@ int sdhci_transfer_data_pio(struct sdhci *sdhci, struct mci_data *data)
 
 int sdhci_transfer_data(struct sdhci *sdhci, struct mci_data *data, dma_addr_t dma)
 {
-	struct device_d *dev = sdhci->mci->hw_dev;
+	struct device *dev = sdhci->mci->hw_dev;
 
 	if (!data)
 		return 0;
diff --git a/drivers/mci/stm32_sdmmc2.c b/drivers/mci/stm32_sdmmc2.c
index af01c9b47b..b7bf41ee50 100644
--- a/drivers/mci/stm32_sdmmc2.c
+++ b/drivers/mci/stm32_sdmmc2.c
@@ -176,7 +176,7 @@
 struct stm32_sdmmc2_priv {
 	void __iomem *base;
 	struct mci_host mci;
-	struct device_d	*dev;
+	struct device	*dev;
 	struct clk *clk;
 	struct reset_control *reset_ctl;
 	u32 clk_reg_msk;
@@ -185,7 +185,7 @@ struct stm32_sdmmc2_priv {
 
 #define to_mci_host(mci)	container_of(mci, struct stm32_sdmmc2_priv, mci)
 
-static int stm32_sdmmc2_reset(struct mci_host *mci, struct device_d *mci_dev)
+static int stm32_sdmmc2_reset(struct mci_host *mci, struct device *mci_dev)
 {
 	struct stm32_sdmmc2_priv *priv = to_mci_host(mci);
 
@@ -574,7 +574,7 @@ static void stm32_sdmmc2_set_ios(struct mci_host *mci, struct mci_ios *ios)
 static int stm32_sdmmc2_probe(struct amba_device *adev,
 			      const struct amba_id *id)
 {
-	struct device_d *dev = &adev->dev;
+	struct device *dev = &adev->dev;
 	struct device_node *np = dev->of_node;
 	struct stm32_sdmmc2_priv *priv;
 	struct mci_host *mci;
diff --git a/drivers/mci/tegra-sdmmc.c b/drivers/mci/tegra-sdmmc.c
index 9ff43440fb..1f6cdf90b1 100644
--- a/drivers/mci/tegra-sdmmc.c
+++ b/drivers/mci/tegra-sdmmc.c
@@ -282,7 +282,7 @@ static void tegra_sdmmc_set_ios(struct mci_host *mci, struct mci_ios *ios)
 	sdhci_write32(&host->sdhci, TEGRA_SDMMC_PWR_CNTL, val);
 }
 
-static int tegra_sdmmc_init(struct mci_host *mci, struct device_d *dev)
+static int tegra_sdmmc_init(struct mci_host *mci, struct device *dev)
 {
 	struct tegra_sdmmc_host *host = to_tegra_sdmmc_host(mci);
 	void __iomem *regs = host->regs;
@@ -373,7 +373,7 @@ static void tegra_sdmmc_parse_dt(struct tegra_sdmmc_host *host)
 	mci_of_parse(&host->mci);
 }
 
-static int tegra_sdmmc_probe(struct device_d *dev)
+static int tegra_sdmmc_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct tegra_sdmmc_host *host;
diff --git a/drivers/memory/mc-tegra124.c b/drivers/memory/mc-tegra124.c
index 9a06fd03d8..0254bf3212 100644
--- a/drivers/memory/mc-tegra124.c
+++ b/drivers/memory/mc-tegra124.c
@@ -23,7 +23,7 @@ static int tegra124_mc_of_fixup(struct device_node *root, void *context)
 	return 0;
 }
 
-static int tegra124_mc_probe(struct device_d *dev)
+static int tegra124_mc_probe(struct device *dev)
 {
 	struct resource *iores;
 	void __iomem *base;
diff --git a/drivers/mfd/act8846.c b/drivers/mfd/act8846.c
index 0e2ac8471e..a9eee8c155 100644
--- a/drivers/mfd/act8846.c
+++ b/drivers/mfd/act8846.c
@@ -110,7 +110,7 @@ static struct cdev_operations act8846_fops = {
 	.write	= act8846_write,
 };
 
-static int act8846_probe(struct device_d *dev)
+static int act8846_probe(struct device *dev)
 {
 	if (act8846_dev)
 		return -EBUSY;
diff --git a/drivers/mfd/atmel-flexcom.c b/drivers/mfd/atmel-flexcom.c
index 13b648f903..0f111f9c22 100644
--- a/drivers/mfd/atmel-flexcom.c
+++ b/drivers/mfd/atmel-flexcom.c
@@ -20,7 +20,7 @@
 #define FLEX_MR_OPMODE(opmode)	(((opmode) << FLEX_MR_OPMODE_OFFSET) &	\
 				 FLEX_MR_OPMODE_MASK)
 
-static int atmel_flexcom_probe(struct device_d *dev)
+static int atmel_flexcom_probe(struct device *dev)
 {
 	struct resource *res;
 	struct clk *clk;
diff --git a/drivers/mfd/axp20x-i2c.c b/drivers/mfd/axp20x-i2c.c
index d1bb96e735..14899caba9 100644
--- a/drivers/mfd/axp20x-i2c.c
+++ b/drivers/mfd/axp20x-i2c.c
@@ -21,7 +21,7 @@
 #include <linux/mfd/axp20x.h>
 #include <regmap.h>
 
-static int axp20x_i2c_probe(struct device_d *dev)
+static int axp20x_i2c_probe(struct device *dev)
 {
 	struct i2c_client *client = to_i2c_client(dev);
 	struct axp20x_dev *axp20x;
diff --git a/drivers/mfd/axp20x.c b/drivers/mfd/axp20x.c
index 3004a9b1fa..c61a6e0024 100644
--- a/drivers/mfd/axp20x.c
+++ b/drivers/mfd/axp20x.c
@@ -248,7 +248,7 @@ static void axp20x_power_off(struct poweroff_handler *handler)
 
 int axp20x_match_device(struct axp20x_dev *axp20x)
 {
-	struct device_d *dev = axp20x->dev;
+	struct device *dev = axp20x->dev;
 	const struct of_device_id *of_id;
 
 	of_id = of_match_device(dev->driver->of_compatible, dev);
diff --git a/drivers/mfd/core.c b/drivers/mfd/core.c
index 495427ae9c..0868bbb905 100644
--- a/drivers/mfd/core.c
+++ b/drivers/mfd/core.c
@@ -3,9 +3,10 @@
 #include <linux/mfd/core.h>
 #include <driver.h>
 
-int mfd_add_devices(struct device_d *parent, const struct mfd_cell *cells, int n_devs)
+int mfd_add_devices(struct device *parent, const struct mfd_cell *cells,
+		    int n_devs)
 {
-	struct device_d *dev;
+	struct device *dev;
 	int ret, i;
 
 	for (i = 0; i < n_devs; i++) {
diff --git a/drivers/mfd/da9053.c b/drivers/mfd/da9053.c
index 4115551911..f7c3bd89dd 100644
--- a/drivers/mfd/da9053.c
+++ b/drivers/mfd/da9053.c
@@ -77,7 +77,7 @@
 struct da9053_priv {
 	struct watchdog		wd;
 	struct i2c_client	*client;
-	struct device_d		*dev;
+	struct device		*dev;
 	struct restart_handler	restart;
 };
 
@@ -137,7 +137,7 @@ static int da9053_enable_multiwrite(struct da9053_priv *da9053)
 static int da9053_set_timeout(struct watchdog *wd, unsigned timeout)
 {
 	struct da9053_priv *da9053 = wd_to_da9053_priv(wd);
-	struct device_d *dev = da9053->dev;
+	struct device *dev = da9053->dev;
 	unsigned scale = 0;
 	int ret;
 	u8 val;
@@ -251,7 +251,7 @@ static void __noreturn da9053_force_system_reset(struct restart_handler *rst)
 	hang();
 }
 
-static int da9053_probe(struct device_d *dev)
+static int da9053_probe(struct device *dev)
 {
 	struct da9053_priv *da9053;
 	int ret;
diff --git a/drivers/mfd/da9063.c b/drivers/mfd/da9063.c
index b30f55a6ff..5df29ef1d8 100644
--- a/drivers/mfd/da9063.c
+++ b/drivers/mfd/da9063.c
@@ -22,7 +22,7 @@ struct da9063 {
 	struct i2c_client	*client;
 	/* dummy client for accessing bank #1 */
 	struct i2c_client	*client1;
-	struct device_d		*dev;
+	struct device		*dev;
 	unsigned int		timeout;
 	uint64_t		last_ping;
 };
@@ -253,7 +253,7 @@ static int da9063_watchdog_ping(struct da9063 *priv)
 static int da9063_watchdog_set_timeout(struct watchdog *wd, unsigned timeout)
 {
 	struct da9063 *priv = container_of(wd, struct da9063, wd);
-	struct device_d *dev = priv->dev;
+	struct device *dev = priv->dev;
 	unsigned int scale = 0;
 	int ret;
 
@@ -356,7 +356,7 @@ static struct da906x_device_data const	da9062_device_data = {
 	.init	= da9062_device_init,
 };
 
-static int da9063_probe(struct device_d *dev)
+static int da9063_probe(struct device *dev)
 {
 	struct da9063 *priv = NULL;
 	struct da906x_device_data const *dev_data;
diff --git a/drivers/mfd/lp3972.c b/drivers/mfd/lp3972.c
index 934c4fe038..6758f166a7 100644
--- a/drivers/mfd/lp3972.c
+++ b/drivers/mfd/lp3972.c
@@ -63,7 +63,7 @@ static struct cdev_operations lp_fops = {
 	.read	= lp_read,
 };
 
-static int lp_probe(struct device_d *dev)
+static int lp_probe(struct device *dev)
 {
 	if (lp_dev)
 		return -EBUSY;
diff --git a/drivers/mfd/mc13xxx.c b/drivers/mfd/mc13xxx.c
index 057224855f..727ed65bb0 100644
--- a/drivers/mfd/mc13xxx.c
+++ b/drivers/mfd/mc13xxx.c
@@ -22,7 +22,7 @@
 #define MC13XXX_NUMREGS		0x3f
 
 struct mc13xxx {
-	struct device_d			*dev;
+	struct device			*dev;
 	struct regmap			*map;
 	union {
 		struct i2c_client	*client;
@@ -300,7 +300,7 @@ static const struct regmap_config mc13xxx_regmap_i2c_config = {
 };
 #endif
 
-static int __init mc13xxx_probe(struct device_d *dev)
+static int __init mc13xxx_probe(struct device *dev)
 {
 	struct mc13xxx_devtype *devtype;
 	int ret, rev;
diff --git a/drivers/mfd/mc34704.c b/drivers/mfd/mc34704.c
index 732542e34f..28765453ea 100644
--- a/drivers/mfd/mc34704.c
+++ b/drivers/mfd/mc34704.c
@@ -93,7 +93,7 @@ static struct cdev_operations mc34704_fops = {
 	.write	= mc34704_write,
 };
 
-static int mc34704_probe(struct device_d *dev)
+static int mc34704_probe(struct device *dev)
 {
 	if (mc34704_dev)
 		return -EBUSY;
diff --git a/drivers/mfd/mc9sdz60.c b/drivers/mfd/mc9sdz60.c
index f55733dae9..0f8ded11d8 100644
--- a/drivers/mfd/mc9sdz60.c
+++ b/drivers/mfd/mc9sdz60.c
@@ -105,7 +105,7 @@ static struct cdev_operations mc_fops = {
 	.write	= mc_write,
 };
 
-static int mc_probe(struct device_d *dev)
+static int mc_probe(struct device *dev)
 {
 	if (mc_dev)
 		return -EBUSY;
diff --git a/drivers/mfd/rave-sp.c b/drivers/mfd/rave-sp.c
index e323c49716..26a0fa3fbd 100644
--- a/drivers/mfd/rave-sp.c
+++ b/drivers/mfd/rave-sp.c
@@ -185,7 +185,7 @@ struct rave_sp_variant {
  * @part_number_bootloader:	Bootloader version
  */
 struct rave_sp {
-	struct device_d dev;
+	struct device dev;
 	struct serdev_device *serdev;
 	struct rave_sp_deframer deframer;
 	unsigned int ackid;
@@ -310,7 +310,7 @@ int rave_sp_exec(struct rave_sp *sp,
 		 void *__data,  size_t data_size,
 		 void *reply_data, size_t reply_data_size)
 {
-	struct device_d *dev = sp->serdev->dev;
+	struct device *dev = sp->serdev->dev;
 	struct rave_sp_reply reply = {
 		.data     = reply_data,
 		.length   = reply_data_size,
@@ -366,7 +366,7 @@ static void rave_sp_receive_event(struct rave_sp *sp,
 static void rave_sp_receive_reply(struct rave_sp *sp,
 				  const unsigned char *data, size_t length)
 {
-	struct device_d *dev = sp->serdev->dev;
+	struct device *dev = sp->serdev->dev;
 	struct rave_sp_reply *reply;
 	const  size_t payload_length = length - 2;
 
@@ -402,7 +402,7 @@ static void rave_sp_receive_frame(struct rave_sp *sp,
 	const size_t checksum_length = sp->variant->checksum->length;
 	const size_t payload_length  = length - checksum_length;
 	const u8 *crc_reported       = &data[payload_length];
-	struct device_d *dev         = sp->serdev->dev;
+	struct device *dev         = sp->serdev->dev;
 	u8 crc_calculated[checksum_length];
 
 	print_hex_dump_debug("rave-sp rx: ", DUMP_PREFIX_NONE, 16, 1,
@@ -430,7 +430,7 @@ static void rave_sp_receive_frame(struct rave_sp *sp,
 static int rave_sp_receive_buf(struct serdev_device *serdev,
 			       const unsigned char *buf, size_t size)
 {
-	struct device_d *dev = serdev->dev;
+	struct device *dev = serdev->dev;
 	struct rave_sp *sp = dev->priv;
 	struct rave_sp_deframer *deframer = &sp->deframer;
 	const unsigned char *src = buf;
@@ -603,7 +603,7 @@ static int rave_sp_default_cmd_translate(enum rave_sp_command command)
 	}
 }
 
-static const char *devm_rave_sp_version(struct device_d *dev,
+static const char *devm_rave_sp_version(struct device *dev,
 					struct rave_sp_version *version)
 {
        /*
@@ -666,7 +666,7 @@ static int rave_sp_emulated_get_status(struct rave_sp *sp,
 
 static int rave_sp_get_status(struct rave_sp *sp)
 {
-	struct device_d *dev = sp->serdev->dev;
+	struct device *dev = sp->serdev->dev;
 	struct rave_sp_status status;
 	const char *mode;
 	int ret;
@@ -766,7 +766,7 @@ static int rave_sp_req_ip_addr(struct param_d *p, void *context)
 
 static int rave_sp_add_params(struct rave_sp *sp)
 {
-	struct device_d *dev = &sp->dev;
+	struct device *dev = &sp->dev;
 	struct param_d *p;
 	int ret;
 
@@ -788,7 +788,7 @@ static int rave_sp_add_params(struct rave_sp *sp)
 	return PTR_ERR_OR_ZERO(p);
 }
 
-static int rave_sp_probe(struct device_d *dev)
+static int rave_sp_probe(struct device *dev)
 {
 	struct serdev_device *serdev = to_serdev_device(dev->parent);
 	struct rave_sp *sp;
diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
index 53eadde4cb..d7f1e659e2 100644
--- a/drivers/mfd/rk808.c
+++ b/drivers/mfd/rk808.c
@@ -246,7 +246,7 @@ static void rk808_poweroff(struct poweroff_handler *handler)
 	hang();
 }
 
-static int rk808_probe(struct device_d *dev)
+static int rk808_probe(struct device *dev)
 {
 	struct i2c_client *client = to_i2c_client(dev);
 	struct device_node *np = dev->of_node;
diff --git a/drivers/mfd/rn5t568.c b/drivers/mfd/rn5t568.c
index 6e40105e32..a5b116c6b8 100644
--- a/drivers/mfd/rn5t568.c
+++ b/drivers/mfd/rn5t568.c
@@ -52,7 +52,8 @@ static void rn5t568_restart(struct restart_handler *rst)
 	regmap_write(rn5t568->regmap, RN5T568_SLPCNT, RN5T568_SLPCNT_SWPPWROFF);
 }
 
-static int rn5t568_reset_reason_detect(struct device_d *dev, struct regmap *regmap)
+static int rn5t568_reset_reason_detect(struct device *dev,
+				       struct regmap *regmap)
 {
 	unsigned int reg;
 	int ret;
@@ -111,7 +112,7 @@ static const struct regmap_config rn5t568_regmap_config = {
 	.max_register	= RN5T568_MAX_REG,
 };
 
-static int __init rn5t568_i2c_probe(struct device_d *dev)
+static int __init rn5t568_i2c_probe(struct device *dev)
 {
 	struct rn5t568 *pmic_instance;
 	unsigned char reg[2];
diff --git a/drivers/mfd/stm32-timers.c b/drivers/mfd/stm32-timers.c
index 294860613f..e3bf8469e7 100644
--- a/drivers/mfd/stm32-timers.c
+++ b/drivers/mfd/stm32-timers.c
@@ -34,7 +34,7 @@ static void stm32_timers_get_arr_size(struct stm32_timers *ddata)
 	regmap_write(ddata->regmap, TIM_ARR, 0x0);
 }
 
-static int stm32_timers_probe(struct device_d *dev)
+static int stm32_timers_probe(struct device *dev)
 {
 	struct stm32_timers *ddata;
 	struct resource *res;
diff --git a/drivers/mfd/stmpe-i2c.c b/drivers/mfd/stmpe-i2c.c
index 55a794d75f..916c22e48a 100644
--- a/drivers/mfd/stmpe-i2c.c
+++ b/drivers/mfd/stmpe-i2c.c
@@ -95,7 +95,7 @@ static struct cdev_operations stmpe_fops = {
 	.write	= stmpe_write,
 };
 
-static struct stmpe_platform_data *stmpe_of_probe(struct device_d *dev)
+static struct stmpe_platform_data *stmpe_of_probe(struct device *dev)
 {
 	struct stmpe_platform_data *pdata;
 	struct device_node *node;
@@ -114,7 +114,7 @@ static struct stmpe_platform_data *stmpe_of_probe(struct device_d *dev)
 	return pdata;
 }
 
-static int stmpe_probe(struct device_d *dev)
+static int stmpe_probe(struct device *dev)
 {
 	struct stmpe_platform_data *pdata = dev->platform_data;
 	struct stmpe *stmpe_dev;
diff --git a/drivers/mfd/stpmic1.c b/drivers/mfd/stpmic1.c
index 68c1b70b2a..69cfd07682 100644
--- a/drivers/mfd/stpmic1.c
+++ b/drivers/mfd/stpmic1.c
@@ -18,7 +18,7 @@ static const struct regmap_config stpmic1_regmap_i2c_config = {
 	.max_register = 0xB3,
 };
 
-static int __init stpmic1_probe(struct device_d *dev)
+static int __init stpmic1_probe(struct device *dev)
 {
 	struct regmap *regmap;
 	u32 reg;
diff --git a/drivers/mfd/superio.c b/drivers/mfd/superio.c
index bfb2f15dd2..bd16b79011 100644
--- a/drivers/mfd/superio.c
+++ b/drivers/mfd/superio.c
@@ -9,9 +9,9 @@
 #include <superio.h>
 #include <regmap.h>
 
-struct device_d *superio_func_add(struct superio_chip *siochip, const char *name)
+struct device *superio_func_add(struct superio_chip *siochip, const char *name)
 {
-	struct device_d *dev;
+	struct device *dev;
 	int ret;
 
 	dev = device_alloc(name, DEVICE_ID_DYNAMIC);
diff --git a/drivers/mfd/syscon.c b/drivers/mfd/syscon.c
index d0f2f0917e..585d2ecc9c 100644
--- a/drivers/mfd/syscon.c
+++ b/drivers/mfd/syscon.c
@@ -145,7 +145,7 @@ static void __iomem *syscon_node_to_base(struct device_node *np)
 void __iomem *syscon_base_lookup_by_pdevname(const char *s)
 {
 	struct syscon *syscon;
-	struct device_d *dev;
+	struct device *dev;
 
 	for_each_device(dev) {
 		if (!strcmp(dev_name(dev), s)) {
@@ -231,7 +231,7 @@ struct regmap *syscon_regmap_lookup_by_phandle(struct device_node *np,
 	return regmap;
 }
 
-static int syscon_probe(struct device_d *dev)
+static int syscon_probe(struct device *dev)
 {
 	struct syscon *syscon;
 	struct resource *res;
diff --git a/drivers/mfd/twl4030.c b/drivers/mfd/twl4030.c
index 072a49cb62..4db15b802d 100644
--- a/drivers/mfd/twl4030.c
+++ b/drivers/mfd/twl4030.c
@@ -26,7 +26,7 @@ struct twl4030 *twl4030_get(void)
 }
 EXPORT_SYMBOL(twl4030_get);
 
-static int twl_probe(struct device_d *dev)
+static int twl_probe(struct device *dev)
 {
 	if (twl_dev)
 		return -EBUSY;
diff --git a/drivers/mfd/twl6030.c b/drivers/mfd/twl6030.c
index 1ed0e25c3a..11eef883cf 100644
--- a/drivers/mfd/twl6030.c
+++ b/drivers/mfd/twl6030.c
@@ -23,7 +23,7 @@ struct twl6030 *twl6030_get(void)
 }
 EXPORT_SYMBOL(twl6030_get);
 
-static int twl_probe(struct device_d *dev)
+static int twl_probe(struct device *dev)
 {
 	if (twl_dev)
 		return -EBUSY;
diff --git a/drivers/misc/jtag.c b/drivers/misc/jtag.c
index 433e22fd2c..ab241106af 100644
--- a/drivers/misc/jtag.c
+++ b/drivers/misc/jtag.c
@@ -256,7 +256,7 @@ static struct cdev_operations jtag_operations = {
 	.ioctl = jtag_ioctl,
 };
 
-static void jtag_info(struct device_d *pdev)
+static void jtag_info(struct device *pdev)
 {
 	int dn, ret;
 	struct jtag_rd_id jid;
@@ -275,7 +275,7 @@ static void jtag_info(struct device_d *pdev)
 	}
 }
 
-static int jtag_probe(struct device_d *pdev)
+static int jtag_probe(struct device *pdev)
 {
 	int i, ret;
 	struct jtag_info *info;
@@ -348,7 +348,7 @@ fail_devfs_create:
 	return ret;
 }
 
-static void jtag_remove(struct device_d *pdev)
+static void jtag_remove(struct device *pdev)
 {
 	struct jtag_info *info = (struct jtag_info *) pdev->priv;
 
diff --git a/drivers/misc/mem.c b/drivers/misc/mem.c
index 1bf240c0a7..e1eabbffdb 100644
--- a/drivers/misc/mem.c
+++ b/drivers/misc/mem.c
@@ -13,7 +13,7 @@ static struct cdev_operations memops = {
 	.memmap = generic_memmap_rw,
 };
 
-static int mem_probe(struct device_d *dev)
+static int mem_probe(struct device *dev)
 {
 	struct cdev *cdev;
 
@@ -48,7 +48,7 @@ static struct driver_d mem_drv = {
 
 static int mem_init(void)
 {
-	struct device_d *dev;
+	struct device *dev;
 	struct resource res = {
 		.start = 0,
 		.end = ~0,
diff --git a/drivers/misc/sram.c b/drivers/misc/sram.c
index f4a7551fc7..7e4e8dcdd9 100644
--- a/drivers/misc/sram.c
+++ b/drivers/misc/sram.c
@@ -22,7 +22,7 @@ static struct cdev_operations memops = {
 	.memmap = generic_memmap_rw,
 };
 
-static int sram_probe(struct device_d *dev)
+static int sram_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct sram *sram;
diff --git a/drivers/misc/starfive-pwrseq.c b/drivers/misc/starfive-pwrseq.c
index 62c36f3e5b..e8b52b57bb 100644
--- a/drivers/misc/starfive-pwrseq.c
+++ b/drivers/misc/starfive-pwrseq.c
@@ -13,7 +13,7 @@ struct starfive_pwrseq {
 	const char **names;
 };
 
-static int starfive_pwrseq_probe(struct device_d *dev)
+static int starfive_pwrseq_probe(struct device *dev)
 {
 	int ret;
 
diff --git a/drivers/misc/state.c b/drivers/misc/state.c
index 2e393505d1..3dbfe7dd20 100644
--- a/drivers/misc/state.c
+++ b/drivers/misc/state.c
@@ -12,7 +12,7 @@
 
 #include <linux/err.h>
 
-static int state_probe(struct device_d *dev)
+static int state_probe(struct device *dev)
 {
 	struct device_node *np = dev->of_node;
 	struct state *state;
diff --git a/drivers/misc/storage-by-uuid.c b/drivers/misc/storage-by-uuid.c
index 13efb9d01f..6434a077ea 100644
--- a/drivers/misc/storage-by-uuid.c
+++ b/drivers/misc/storage-by-uuid.c
@@ -11,7 +11,7 @@ static LIST_HEAD(sbu_list);
 
 struct sbu {
 	char *uuid;
-	struct device_d *dev;
+	struct device *dev;
 	struct cdev *rcdev;
 	struct cdev cdev;
 	struct list_head list;
@@ -147,7 +147,7 @@ static void check_exist(struct sbu *sbu)
 	}
 }
 
-static int sbu_detect(struct device_d *dev)
+static int sbu_detect(struct device *dev)
 {
 	struct sbu *sbu = dev->priv;
 
@@ -158,7 +158,7 @@ static int sbu_detect(struct device_d *dev)
 	return 0;
 }
 
-static int storage_by_uuid_probe(struct device_d *dev)
+static int storage_by_uuid_probe(struct device *dev)
 {
 	struct sbu *sbu;
 	int ret;
diff --git a/drivers/misc/ubootvar.c b/drivers/misc/ubootvar.c
index 1c291343d1..059059c92f 100644
--- a/drivers/misc/ubootvar.c
+++ b/drivers/misc/ubootvar.c
@@ -35,7 +35,7 @@ struct ubootvar_data {
 
 static int ubootvar_flush(struct cdev *cdev)
 {
-	struct device_d *dev = cdev->dev;
+	struct device *dev = cdev->dev;
 	struct ubootvar_data *ubdata = dev->priv;
 	const char *path = ubdata->path[!ubdata->current];
 	uint32_t crc = 0xffffffff;
@@ -125,7 +125,7 @@ static ssize_t
 ubootvar_read(struct cdev *cdev, void *buf, size_t count, loff_t offset,
 	      unsigned long flags)
 {
-	struct device_d *dev = cdev->dev;
+	struct device *dev = cdev->dev;
 	struct ubootvar_data *ubdata = dev->priv;
 
 	WARN_ON(flags & O_RWSIZE_MASK);
@@ -139,7 +139,7 @@ static ssize_t
 ubootvar_write(struct cdev *cdev, const void *buf, size_t count,
 	       loff_t offset, unsigned long flags)
 {
-	struct device_d *dev = cdev->dev;
+	struct device *dev = cdev->dev;
 	struct ubootvar_data *ubdata = dev->priv;
 
 	WARN_ON(flags & O_RWSIZE_MASK);
@@ -151,7 +151,7 @@ ubootvar_write(struct cdev *cdev, const void *buf, size_t count,
 
 static int ubootvar_memmap(struct cdev *cdev, void **map, int flags)
 {
-	struct device_d *dev = cdev->dev;
+	struct device *dev = cdev->dev;
 	struct ubootvar_data *ubdata = dev->priv;
 
 	*map = ubdata->data;
@@ -166,7 +166,7 @@ static struct cdev_operations ubootvar_ops = {
 	.flush = ubootvar_flush,
 };
 
-static void ubootenv_info(struct device_d *dev)
+static void ubootenv_info(struct device *dev)
 {
 	struct ubootvar_data *ubdata = dev->priv;
 
@@ -174,7 +174,7 @@ static void ubootenv_info(struct device_d *dev)
 	       ubdata->path[ubdata->current]);
 }
 
-static int ubootenv_probe(struct device_d *dev)
+static int ubootenv_probe(struct device *dev)
 {
 	struct ubootvar_data *ubdata;
 	unsigned int crc_ok = 0;
diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index 14a4f336c8..513ae38ab8 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -590,7 +590,7 @@ static int mtd_part_compare(struct list_head *a, struct list_head *b)
 	return 0;
 }
 
-static int mtd_detect(struct device_d *dev)
+static int mtd_detect(struct device *dev)
 {
 	struct mtd_info *mtd = container_of(dev, struct mtd_info, dev);
 	int bufsize = 512;
diff --git a/drivers/mtd/devices/docg3.c b/drivers/mtd/devices/docg3.c
index 4b243a7fb1..feda38fefc 100644
--- a/drivers/mtd/devices/docg3.c
+++ b/drivers/mtd/devices/docg3.c
@@ -1071,7 +1071,7 @@ static void __init doc_set_driver_info(int chip_id, struct mtd_info *mtd)
 }
 
 static struct mtd_info *doc_probe_device(void __iomem *base, int floor,
-					 struct device_d *dev)
+					 struct device *dev)
 {
 	int ret, bbt_nbpages;
 	u16 chip_id, chip_id_inv;
@@ -1131,7 +1131,7 @@ nomem1:
 	return ERR_PTR(ret);
 }
 
-static int __init docg3_probe(struct device_d *dev)
+static int __init docg3_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct mtd_info *mtd;
diff --git a/drivers/mtd/devices/docg3.h b/drivers/mtd/devices/docg3.h
index afdcd7c8be..f917dc4a1e 100644
--- a/drivers/mtd/devices/docg3.h
+++ b/drivers/mtd/devices/docg3.h
@@ -254,7 +254,7 @@
 #define DOC_LAYOUT_DPS_KEY_LENGTH	8
 
 struct docg3 {
-	struct device_d *dev;
+	struct device *dev;
 	void __iomem *base;
 	unsigned int device_id:4;
 	unsigned int if_cfg:1;
diff --git a/drivers/mtd/devices/m25p80.c b/drivers/mtd/devices/m25p80.c
index 5bbe4cec01..35c4ff3911 100644
--- a/drivers/mtd/devices/m25p80.c
+++ b/drivers/mtd/devices/m25p80.c
@@ -201,7 +201,7 @@ static const struct platform_device_id m25p_ids[] = {
  * matches what the READ command supports, at least until this driver
  * understands FAST_READ (for clocks over 25 MHz).
  */
-static int m25p_probe(struct device_d *dev)
+static int m25p_probe(struct device *dev)
 {
 	struct spi_device *spi = (struct spi_device *)dev->type_data;
 	struct spi_mem *spimem = spi->mem;
diff --git a/drivers/mtd/devices/mtd_dataflash.c b/drivers/mtd/devices/mtd_dataflash.c
index c1af1feb36..32801d3cb1 100644
--- a/drivers/mtd/devices/mtd_dataflash.c
+++ b/drivers/mtd/devices/mtd_dataflash.c
@@ -816,7 +816,7 @@ static struct flash_info * jedec_probe(struct spi_device *spi)
  *   AT45DB0642  64Mbit  (8M)    xx111xxx (0x3c)   8192   1056     11
  *   AT45DB1282  128Mbit (16M)   xx0100xx (0x10)  16384   1056     11
  */
-static int dataflash_probe(struct device_d *dev)
+static int dataflash_probe(struct device *dev)
 {
 	struct spi_device *spi = (struct spi_device *)dev->type_data;
 	int status;
diff --git a/drivers/mtd/devices/mtdram.c b/drivers/mtd/devices/mtdram.c
index 2f81c4f766..f80e34ee82 100644
--- a/drivers/mtd/devices/mtdram.c
+++ b/drivers/mtd/devices/mtdram.c
@@ -36,7 +36,7 @@ static int ram_read(struct mtd_info *mtd, loff_t from, size_t len, size_t *retle
 	return 0;
 }
 
-static int mtdram_probe(struct device_d *dev)
+static int mtdram_probe(struct device *dev)
 {
 	long type;
 	struct resource *iores;
diff --git a/drivers/mtd/nand/atmel_nand.c b/drivers/mtd/nand/atmel_nand.c
index 7541eeb302..302d5cb2ae 100644
--- a/drivers/mtd/nand/atmel_nand.c
+++ b/drivers/mtd/nand/atmel_nand.c
@@ -75,7 +75,7 @@ struct atmel_nand_host {
 	struct nand_chip	nand_chip;
 	void __iomem		*io_base;
 	struct atmel_nand_data	*board;
-	struct device_d		*dev;
+	struct device		*dev;
 	void __iomem		*ecc;
 
 	int			pmecc_bytes_per_sector;
@@ -835,8 +835,8 @@ static int pmecc_build_galois_table(unsigned int mm, int16_t *index_of,
 	return 0;
 }
 
-static int __init atmel_pmecc_nand_init_params(struct device_d *dev,
-					 struct atmel_nand_host *host)
+static int __init atmel_pmecc_nand_init_params(struct device *dev,
+					       struct atmel_nand_host *host)
 {
 	struct resource *iores;
 	struct nand_chip *nand_chip = &host->nand_chip;
@@ -1195,7 +1195,7 @@ static int atmel_nand_of_init(struct atmel_nand_host *host, struct device_node *
 	return 0;
 }
 
-static int atmel_hw_nand_init_params(struct device_d *dev,
+static int atmel_hw_nand_init_params(struct device *dev,
 					 struct atmel_nand_host *host)
 {
 	struct resource *iores;
@@ -1253,7 +1253,7 @@ static int atmel_hw_nand_init_params(struct device_d *dev,
 /*
  * Probe for the NAND device.
  */
-static int __init atmel_nand_probe(struct device_d *dev)
+static int __init atmel_nand_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct atmel_nand_data *pdata = NULL;
diff --git a/drivers/mtd/nand/denali.h b/drivers/mtd/nand/denali.h
index 7a721ffbbc..ed489d010b 100644
--- a/drivers/mtd/nand/denali.h
+++ b/drivers/mtd/nand/denali.h
@@ -356,7 +356,7 @@ struct denali_chip {
  */
 struct denali_controller {
 	struct nand_controller controller;
-	struct device_d *dev;
+	struct device *dev;
 	struct list_head chips;
 	unsigned long clk_rate;
 	unsigned long clk_x_rate;
diff --git a/drivers/mtd/nand/nand_denali_dt.c b/drivers/mtd/nand/nand_denali_dt.c
index bd4dd4cffd..3a0e56bc91 100644
--- a/drivers/mtd/nand/nand_denali_dt.c
+++ b/drivers/mtd/nand/nand_denali_dt.c
@@ -128,7 +128,7 @@ static int denali_dt_chip_init(struct denali_controller *denali,
 	return denali_chip_init(denali, dchip);
 }
 
-static int denali_dt_probe(struct device_d *ofdev)
+static int denali_dt_probe(struct device *ofdev)
 {
 	struct resource *iores;
 	struct denali_dt *dt;
diff --git a/drivers/mtd/nand/nand_fsl_ifc.c b/drivers/mtd/nand/nand_fsl_ifc.c
index d5ff3b0141..8fba4c2e10 100644
--- a/drivers/mtd/nand/nand_fsl_ifc.c
+++ b/drivers/mtd/nand/nand_fsl_ifc.c
@@ -46,7 +46,7 @@ struct fsl_ifc_ctrl {
 
 /* mtd information per set */
 struct fsl_ifc_mtd {
-	struct device_d *dev;
+	struct device *dev;
 	struct nand_chip chip;
 	struct fsl_ifc_ctrl *ctrl;
 	uint32_t cs;		/* On which chipsel NAND is connected    */
@@ -979,7 +979,7 @@ static int fsl_ifc_chip_init(struct fsl_ifc_mtd *priv)
 	return 0;
 }
 
-static int fsl_ifc_nand_probe(struct device_d *dev)
+static int fsl_ifc_nand_probe(struct device *dev)
 {
 	struct fsl_ifc_mtd *priv;
 	struct resource *iores;
diff --git a/drivers/mtd/nand/nand_imx.c b/drivers/mtd/nand/nand_imx.c
index 09e26a6910..a250741657 100644
--- a/drivers/mtd/nand/nand_imx.c
+++ b/drivers/mtd/nand/nand_imx.c
@@ -27,7 +27,7 @@
 struct imx_nand_host {
 	struct nand_chip	nand;
 	struct mtd_partition	*parts;
-	struct device_d		*dev;
+	struct device		*dev;
 
 	void			*spare0;
 	void			*main_area0;
@@ -1240,7 +1240,7 @@ out:
  * @return  The function always returns 0.
  */
 
-static int __init imxnd_probe(struct device_d *dev)
+static int __init imxnd_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct nand_chip *this;
diff --git a/drivers/mtd/nand/nand_mrvl_nfc.c b/drivers/mtd/nand/nand_mrvl_nfc.c
index fe2cd2c865..ff3e350a7f 100644
--- a/drivers/mtd/nand/nand_mrvl_nfc.c
+++ b/drivers/mtd/nand/nand_mrvl_nfc.c
@@ -137,7 +137,7 @@ struct mrvl_nand_variant {
 struct mrvl_nand_host {
 	struct nand_chip	chip;
 	struct mtd_partition	*parts;
-	struct device_d		*dev;
+	struct device		*dev;
 	struct clk		*core_clk;
 
 	/* calculated from mrvl_nand_flash data */
@@ -1123,7 +1123,7 @@ static int mrvl_nand_scan(struct nand_chip *chip)
 	return nand_scan_tail(chip);
 }
 
-static struct mrvl_nand_host *alloc_nand_resource(struct device_d *dev)
+static struct mrvl_nand_host *alloc_nand_resource(struct device *dev)
 {
 	struct resource *iores;
 	struct mrvl_nand_platform_data *pdata;
@@ -1219,7 +1219,7 @@ static int mrvl_nand_probe_dt(struct mrvl_nand_host *host)
 	return 0;
 }
 
-static int mrvl_nand_probe(struct device_d *dev)
+static int mrvl_nand_probe(struct device *dev)
 {
 	struct mrvl_nand_host *host;
 	struct nand_chip *chip;
diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
index 9387cd7a3a..434849bc82 100644
--- a/drivers/mtd/nand/nand_mxs.c
+++ b/drivers/mtd/nand/nand_mxs.c
@@ -76,7 +76,7 @@ struct nand_timing {
 };
 
 struct mxs_nand_info {
-	struct device_d		*dev;
+	struct device		*dev;
 	struct nand_chip	nand_chip;
 	void __iomem		*io_base;
 	void __iomem		*bch_base;
@@ -1400,7 +1400,8 @@ static int mxs_nand_hw_init(struct mxs_nand_info *info)
 	return 0;
 }
 
-static void mxs_nand_probe_dt(struct device_d *dev, struct mxs_nand_info *nand_info)
+static void mxs_nand_probe_dt(struct device *dev,
+		              struct mxs_nand_info *nand_info)
 {
 	struct nand_chip *chip = &nand_info->nand_chip;
 
@@ -2157,7 +2158,7 @@ static void mxs_nand_setup_timing(struct mxs_nand_info *info)
 	}
 }
 
-static int mxs_nand_probe(struct device_d *dev)
+static int mxs_nand_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct mxs_nand_info *nand_info;
diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index 9c4f267196..349b569939 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -109,7 +109,7 @@ static const char *ecc_mode_strings[] = {
 
 /** internal structure maintained for nand information */
 struct gpmc_nand_info {
-	struct device_d *pdev;
+	struct device *pdev;
 	struct gpmc_nand_platform_data *pdata;
 	struct nand_chip nand;
 	int gpmc_cs;
@@ -1184,7 +1184,7 @@ static int gpmc_set_buswidth(struct nand_chip *chip, int buswidth)
  *
  * @return -failure reason or give 0
  */
-static int gpmc_nand_probe(struct device_d *pdev)
+static int gpmc_nand_probe(struct device *pdev)
 {
 	struct resource *iores;
 	struct gpmc_nand_info *oinfo;
diff --git a/drivers/mtd/nand/nand_orion.c b/drivers/mtd/nand/nand_orion.c
index 63c7aa461f..16238ad588 100644
--- a/drivers/mtd/nand/nand_orion.c
+++ b/drivers/mtd/nand/nand_orion.c
@@ -73,7 +73,7 @@ static void orion_nand_read_buf(struct nand_chip *chip, uint8_t *buf, int len)
 		buf[i++] = readb(io_base);
 }
 
-static int orion_nand_probe(struct device_d *dev)
+static int orion_nand_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct device_node *dev_node = dev->of_node;
diff --git a/drivers/mtd/nand/nand_s3c24xx.c b/drivers/mtd/nand/nand_s3c24xx.c
index b0f16f1d62..c1ac6404c3 100644
--- a/drivers/mtd/nand/nand_s3c24xx.c
+++ b/drivers/mtd/nand/nand_s3c24xx.c
@@ -82,7 +82,7 @@
 struct s3c24x0_nand_host {
 	struct nand_chip	nand;
 	struct mtd_partition	*parts;
-	struct device_d		*dev;
+	struct device		*dev;
 
 	void __iomem		*base;
 };
@@ -390,7 +390,7 @@ static int s3c24x0_nand_inithw(struct s3c24x0_nand_host *host)
 	return 0;
 }
 
-static int s3c24x0_nand_probe(struct device_d *dev)
+static int s3c24x0_nand_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct nand_chip *chip;
diff --git a/drivers/mtd/nand/nomadik_nand.c b/drivers/mtd/nand/nomadik_nand.c
index 8f58f5997c..d44170bafb 100644
--- a/drivers/mtd/nand/nomadik_nand.c
+++ b/drivers/mtd/nand/nomadik_nand.c
@@ -158,7 +158,7 @@ static void nomadik_cmd_ctrl(struct nand_chip *nand, int cmd, unsigned int ctrl)
 		writeb(cmd, host->addr_va);
 }
 
-static int nomadik_nand_probe(struct device_d *dev)
+static int nomadik_nand_probe(struct device *dev)
 {
 	struct nomadik_nand_platform_data *pdata = dev->platform_data;
 	struct nomadik_nand_host *host;
diff --git a/drivers/mtd/nand/omap_elm.c b/drivers/mtd/nand/omap_elm.c
index 583235fc78..aedcd710bf 100644
--- a/drivers/mtd/nand/omap_elm.c
+++ b/drivers/mtd/nand/omap_elm.c
@@ -66,7 +66,7 @@ struct elm_registers {
 };
 
 struct elm_info {
-	struct device_d *dev;
+	struct device *dev;
 	void __iomem *elm_base;
 	struct list_head list;
 	enum bch_ecc bch_type;
@@ -376,7 +376,7 @@ int elm_decode_bch_error_page(u8 *ecc_calc, struct elm_errorvec *err_vec)
 	return 0;
 }
 
-static int elm_probe(struct device_d *dev)
+static int elm_probe(struct device *dev)
 {
 	struct resource *res;
 	struct elm_info *info;
diff --git a/drivers/mtd/nor/cfi_flash.c b/drivers/mtd/nor/cfi_flash.c
index 179f2c718b..ef48ae68e1 100644
--- a/drivers/mtd/nor/cfi_flash.c
+++ b/drivers/mtd/nor/cfi_flash.c
@@ -758,7 +758,7 @@ static void cfi_info_one(struct flash_info *info)
 	return;
 }
 
-static void cfi_info(struct device_d *dev)
+static void cfi_info(struct device *dev)
 {
 	struct cfi_priv *priv = dev->priv;
 	int i;
@@ -984,7 +984,7 @@ static int cfi_probe_one(struct flash_info *info, int num)
 	return 0;
 }
 
-static int cfi_probe(struct device_d *dev)
+static int cfi_probe(struct device *dev)
 {
 	struct cfi_priv *priv;
 	int i, ret;
diff --git a/drivers/mtd/nor/cfi_flash.h b/drivers/mtd/nor/cfi_flash.h
index b8428206b9..5d3053f971 100644
--- a/drivers/mtd/nor/cfi_flash.h
+++ b/drivers/mtd/nor/cfi_flash.h
@@ -35,7 +35,7 @@ struct cfi_cmd_set;
  */
 
 struct flash_info {
-	struct device_d *dev;
+	struct device *dev;
 	unsigned long size;		/* total bank size in bytes		*/
 	unsigned int sector_count;	/* number of erase units		*/
 	unsigned long flash_id;		/* combined device & manufacturer code	*/
diff --git a/drivers/mtd/spi-nor/cadence-quadspi.c b/drivers/mtd/spi-nor/cadence-quadspi.c
index c7c5f21efd..1ecf7ccc45 100644
--- a/drivers/mtd/spi-nor/cadence-quadspi.c
+++ b/drivers/mtd/spi-nor/cadence-quadspi.c
@@ -40,7 +40,7 @@ struct cqspi_flash_pdata {
 };
 
 struct cqspi_st {
-	struct device_d	*dev;
+	struct device	*dev;
 	struct clk	*l4_mp_clk;
 	struct clk	*qspi_clk;
 	unsigned int	sclk;
@@ -1001,7 +1001,7 @@ static int cqspi_write_reg(struct spi_nor *nor, u8 opcode, u8 *buf, int len)
 	return ret;
 }
 
-static int cqspi_of_get_flash_pdata(struct device_d *dev,
+static int cqspi_of_get_flash_pdata(struct device *dev,
 				    struct cqspi_flash_pdata *f_pdata,
 				    struct device_node *np)
 {
@@ -1059,7 +1059,7 @@ static int cqspi_of_get_flash_pdata(struct device_d *dev,
 static int cqspi_parse_dt(struct cqspi_st *cqspi)
 {
 	struct device_node *np = cqspi->dev->of_node;
-	struct device_d *dev = cqspi->dev;
+	struct device *dev = cqspi->dev;
 
 	cqspi->is_decoded_cs = of_property_read_bool(np, "cdns,is-decoded-cs");
 
@@ -1071,7 +1071,7 @@ static int cqspi_parse_dt(struct cqspi_st *cqspi)
 	return 0;
 }
 
-static int cqspi_setup_flash(struct device_d *dev,
+static int cqspi_setup_flash(struct device *dev,
 			     struct cqspi_flash_pdata *f_pdata,
 			     struct device_node *np)
 {
@@ -1152,7 +1152,7 @@ static void cqspi_controller_init(struct cqspi_st *cqspi)
 	cqspi_controller_enable(cqspi);
 }
 
-static int cqspi_probe(struct device_d *dev)
+static int cqspi_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct device_node *np = dev->of_node;
diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index ab5aff6a57..f83c3f02a0 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -1370,7 +1370,7 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
 	struct spi_nor_flash_parameter params;
 	const struct spi_device_id	*id = NULL;
 	struct flash_info		*info;
-	struct device_d *dev = nor->dev;
+	struct device *dev = nor->dev;
 	struct mtd_info *mtd = nor->mtd;
 	struct device_node *np = dev->of_node;
 	int ret;
diff --git a/drivers/mtd/ubi/ubi.h b/drivers/mtd/ubi/ubi.h
index 59aa5a3c7f..fd64790fb8 100644
--- a/drivers/mtd/ubi/ubi.h
+++ b/drivers/mtd/ubi/ubi.h
@@ -319,7 +319,7 @@ struct ubi_eba_leb_desc {
  * the moment or is damaged because of an unclean reboot.
  */
 struct ubi_volume {
-	struct device_d dev;
+	struct device dev;
 	struct cdev cdev;
 	struct ubi_device *ubi;
 	int vol_id;
@@ -516,7 +516,7 @@ struct ubi_debug_info {
  */
 struct ubi_device {
 	struct cdev cdev;
-	struct device_d dev;
+	struct device dev;
 	int ubi_num;
 	char ubi_name[sizeof(UBI_NAME_STR)+5];
 	int vol_count;
diff --git a/drivers/net/ag71xx.c b/drivers/net/ag71xx.c
index 70aaa60f1a..36d77752d8 100644
--- a/drivers/net/ag71xx.c
+++ b/drivers/net/ag71xx.c
@@ -211,7 +211,7 @@ typedef struct {
 #define MAX_WAIT        1000
 
 struct ag71xx {
-	struct device_d *dev;
+	struct device *dev;
 	struct eth_device netdev;
 	void __iomem *regs;
 	void __iomem *regs_gmac;
@@ -287,7 +287,7 @@ static inline void ag71xx_wr(struct ag71xx *priv, int reg, u32 val)
 
 static int ag71xx_mii_wait(struct ag71xx *priv, int write)
 {
-	struct device_d *dev = priv->dev;
+	struct device *dev = priv->dev;
 	uint64_t start;
 
 	start = get_time_ns();
@@ -371,7 +371,7 @@ static int ag71xx_ether_get_ethaddr(struct eth_device *edev, unsigned char *adr)
 static void ag71xx_ether_halt(struct eth_device *edev)
 {
 	struct ag71xx *priv = edev->priv;
-	struct device_d *dev = priv->dev;
+	struct device *dev = priv->dev;
 	uint64_t start;
 
 	ag71xx_wr(priv, AG71XX_REG_RX_CTRL, 0);
@@ -425,7 +425,7 @@ static int ag71xx_ether_rx(struct eth_device *edev)
 static int ag71xx_ether_send(struct eth_device *edev, void *packet, int length)
 {
 	struct ag71xx *priv = edev->priv;
-	struct device_d *dev = priv->dev;
+	struct device *dev = priv->dev;
 	ag7240_desc_t *f = &priv->fifo_tx[priv->next_tx];
 	uint64_t start;
 	int ret = 0;
@@ -549,7 +549,7 @@ static struct ag71xx_cfg ag71xx_cfg_ar9344_gmac0 = {
 	.init_mii = ag71xx_ar9344_gmac0_mii_init,
 };
 
-static int ag71xx_probe(struct device_d *dev)
+static int ag71xx_probe(struct device *dev)
 {
 	void __iomem *regs, *regs_gmac;
 	struct mii_bus *miibus;
@@ -659,7 +659,7 @@ static int ag71xx_probe(struct device_d *dev)
 	return 0;
 }
 
-static void ag71xx_remove(struct device_d *dev)
+static void ag71xx_remove(struct device *dev)
 {
 	struct eth_device *edev = dev->priv;
 
diff --git a/drivers/net/ar231x.c b/drivers/net/ar231x.c
index 6d1a90684c..83e4f2814e 100644
--- a/drivers/net/ar231x.c
+++ b/drivers/net/ar231x.c
@@ -357,7 +357,7 @@ static int ar231x_mdiibus_reset(struct mii_bus *bus)
 	return 0;
 }
 
-static int ar231x_eth_probe(struct device_d *dev)
+static int ar231x_eth_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct ar231x_eth_priv *priv;
diff --git a/drivers/net/arc_emac.c b/drivers/net/arc_emac.c
index 28ec5e31fb..2b4419d792 100644
--- a/drivers/net/arc_emac.c
+++ b/drivers/net/arc_emac.c
@@ -381,7 +381,7 @@ static int arc_emac_mdio_write(struct mii_bus *bus, int phy_addr, int reg_num,
 
 #define DEFAULT_EMAC_CLOCK_FREQUENCY 50000000UL;
 
-static int arc_emac_probe(struct device_d *dev)
+static int arc_emac_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct eth_device *edev;
diff --git a/drivers/net/at91_ether.c b/drivers/net/at91_ether.c
index e69a300a6b..e97ff69718 100644
--- a/drivers/net/at91_ether.c
+++ b/drivers/net/at91_ether.c
@@ -284,7 +284,7 @@ static int at91_ether_init(struct eth_device *edev)
 	return 0;
 }
 
-static int at91_ether_probe(struct device_d *dev)
+static int at91_ether_probe(struct device *dev)
 {
 	unsigned int mac_cfg;
 	struct ether_device *ether_dev;
diff --git a/drivers/net/bcmgenet.c b/drivers/net/bcmgenet.c
index cc951c7ddb..4730a80099 100644
--- a/drivers/net/bcmgenet.c
+++ b/drivers/net/bcmgenet.c
@@ -174,7 +174,7 @@ struct bcmgenet_eth_priv {
 	u32 interface;
 	struct mii_bus miibus;
 	struct eth_device edev;
-	struct device_d *dev;
+	struct device *dev;
 	unsigned char addr[6];
 };
 
@@ -518,7 +518,7 @@ static int bcmgenet_mdio_read(struct mii_bus *bus, int addr, int reg)
 	return val & 0xffff;
 }
 
-static int bcmgenet_probe(struct device_d *dev)
+static int bcmgenet_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct bcmgenet_eth_priv *priv;
@@ -600,7 +600,7 @@ static void bcmgenet_gmac_eth_stop(struct bcmgenet_eth_priv *priv)
 	bcmgenet_disable_dma(priv);
 }
 
-static void bcmgenet_remove(struct device_d *dev)
+static void bcmgenet_remove(struct device *dev)
 {
 	struct bcmgenet_eth_priv *priv = dev->priv;
 
diff --git a/drivers/net/cpsw.c b/drivers/net/cpsw.c
index ec464e5c03..bf6e7dbe02 100644
--- a/drivers/net/cpsw.c
+++ b/drivers/net/cpsw.c
@@ -175,7 +175,7 @@ struct cpsw_slave {
 	phy_interface_t			phy_if;
 	struct eth_device		edev;
 	struct cpsw_priv		*cpsw;
-	struct device_d			dev;
+	struct device			dev;
 };
 
 struct cpdma_desc {
@@ -195,7 +195,7 @@ struct cpdma_chan {
 };
 
 struct cpsw_priv {
-	struct device_d			*dev;
+	struct device			*dev;
 
 	u32				version;
 	struct cpsw_platform_data	data;
@@ -223,7 +223,7 @@ struct cpsw_priv {
 };
 
 struct cpsw_mdio_priv {
-	struct device_d			*dev;
+	struct device			*dev;
 	struct mii_bus			miibus;
 	struct cpsw_mdio_regs		*mdio_regs;
 };
@@ -581,7 +581,7 @@ static int cpsw_mdio_write(struct mii_bus *bus, int phy_id, int phy_reg, u16 val
 	return 0;
 }
 
-static int cpsw_mdio_probe(struct device_d *dev)
+static int cpsw_mdio_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct cpsw_mdio_priv *priv;
@@ -915,7 +915,7 @@ static int cpsw_open(struct eth_device *edev)
 	return 0;
 }
 
-static int cpsw_setup(struct device_d *dev)
+static int cpsw_setup(struct device *dev)
 {
 	struct cpsw_priv *priv = dev->priv;
 	int i, ret;
@@ -1062,7 +1062,7 @@ static int cpsw_slave_setup(struct cpsw_slave *slave, int slave_num,
 {
 	void			*regs = priv->regs;
 	struct eth_device	*edev = &slave->edev;
-	struct device_d		*dev = &slave->dev;
+	struct device		*dev = &slave->dev;
 	int ret;
 
 	edev->parent = dev;
@@ -1237,7 +1237,7 @@ static void cpsw_add_slave(struct cpsw_slave *slave, struct device_node *child,
 
 static int cpsw_legacy_probe_dt(struct cpsw_priv *priv)
 {
-	struct device_d *dev = priv->dev;
+	struct device *dev = priv->dev;
 	struct device_node *np = dev->of_node, *child;
 	int ret, i = 0;
 
@@ -1265,7 +1265,7 @@ static int cpsw_legacy_probe_dt(struct cpsw_priv *priv)
 
 static int cpsw_switch_probe_dt(struct cpsw_priv *priv)
 {
-	struct device_d *dev = priv->dev;
+	struct device *dev = priv->dev;
 	struct device_node *np = dev->of_node, *child;
 	struct device_node *ports = NULL;
 	int ret, i = 0;
@@ -1298,7 +1298,7 @@ static int cpsw_switch_probe_dt(struct cpsw_priv *priv)
 
 static int cpsw_probe_dt(struct cpsw_priv *priv)
 {
-	struct device_d *dev = priv->dev;
+	struct device *dev = priv->dev;
 	struct device_node *physel;
 	int (*probe_slaves_dt)(struct cpsw_priv *priv);
 	int ret, i = 0;
@@ -1326,7 +1326,7 @@ static int cpsw_probe_dt(struct cpsw_priv *priv)
 	return 0;
 }
 
-static int cpsw_probe(struct device_d *dev)
+static int cpsw_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct cpsw_platform_data *data = (struct cpsw_platform_data *)dev->platform_data;
@@ -1410,7 +1410,7 @@ out:
 	return ret;
 }
 
-static void cpsw_remove(struct device_d *dev)
+static void cpsw_remove(struct device *dev)
 {
 	struct cpsw_priv	*priv = dev->priv;
 	int i;
diff --git a/drivers/net/cs8900.c b/drivers/net/cs8900.c
index 16e1d498c7..9717df91ea 100644
--- a/drivers/net/cs8900.c
+++ b/drivers/net/cs8900.c
@@ -350,7 +350,7 @@ static const char *yesno_str(int v)
 	return v ? "yes" : "no";
 }
 
-static void cs8900_info(struct device_d *dev)
+static void cs8900_info(struct device *dev)
 {
 	struct eth_device *edev = dev_to_edev(dev);
 	struct cs8900_priv *priv = (struct cs8900_priv *)edev->priv;
@@ -425,7 +425,7 @@ static int cs8900_check_id(struct cs8900_priv *priv)
 	return result;
 }
 
-static int cs8900_probe(struct device_d *dev)
+static int cs8900_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct eth_device *edev;
diff --git a/drivers/net/davinci_emac.c b/drivers/net/davinci_emac.c
index 463c5fc11e..8237530ba3 100644
--- a/drivers/net/davinci_emac.c
+++ b/drivers/net/davinci_emac.c
@@ -36,7 +36,7 @@
 #include "davinci_emac.h"
 
 struct davinci_emac_priv {
-	struct device_d *dev;
+	struct device *dev;
 	struct eth_device edev;
 
 	/* EMAC Addresses */
@@ -83,7 +83,7 @@ static inline void __iomem *HW_TO_BD(uint32_t x)
 #endif
 
 struct davinci_mdio_priv {
-	struct device_d *dev;
+	struct device *dev;
 	struct mii_bus miibus;
 	void __iomem *adap_mdio; /* = EMAC_MDIO_BASE_ADDR */
 };
@@ -533,7 +533,7 @@ out:
 	return ret;
 }
 
-static int davinci_emac_probe(struct device_d *dev)
+static int davinci_emac_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct davinci_emac_priv *priv;
@@ -588,7 +588,7 @@ static int davinci_emac_probe(struct device_d *dev)
 	return 0;
 }
 
-static void davinci_emac_remove(struct device_d *dev)
+static void davinci_emac_remove(struct device *dev)
 {
 	struct davinci_emac_priv *priv = dev->priv;
 
@@ -611,7 +611,7 @@ static struct driver_d davinci_emac_driver = {
 };
 device_platform_driver(davinci_emac_driver);
 
-static int davinci_mdio_probe(struct device_d *dev)
+static int davinci_mdio_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct davinci_mdio_priv *priv;
diff --git a/drivers/net/designware.c b/drivers/net/designware.c
index c0683bfec4..e9bc46da00 100644
--- a/drivers/net/designware.c
+++ b/drivers/net/designware.c
@@ -410,7 +410,7 @@ static int dwc_ether_set_ethaddr(struct eth_device *dev, const unsigned char *ad
 	return 0;
 }
 
-static void dwc_version(struct device_d *dev, u32 hwid)
+static void dwc_version(struct device *dev, u32 hwid)
 {
 	u32 uid = ((hwid & 0x0000ff00) >> 8);
 	u32 synid = (hwid & 0x000000ff);
@@ -419,7 +419,7 @@ static void dwc_version(struct device_d *dev, u32 hwid)
 		uid, synid);
 }
 
-static int dwc_probe_dt(struct device_d *dev, struct dw_eth_dev *priv)
+static int dwc_probe_dt(struct device *dev, struct dw_eth_dev *priv)
 {
 	struct device_node *child;
 
@@ -440,7 +440,7 @@ static int dwc_probe_dt(struct device_d *dev, struct dw_eth_dev *priv)
 	return 0;
 }
 
-struct dw_eth_dev *dwc_drv_probe(struct device_d *dev)
+struct dw_eth_dev *dwc_drv_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct dw_eth_dev *priv;
@@ -526,7 +526,7 @@ struct dw_eth_dev *dwc_drv_probe(struct device_d *dev)
 	return priv;
 }
 
-void dwc_drv_remove(struct device_d *dev)
+void dwc_drv_remove(struct device *dev)
 {
 	struct eth_device *edev = dev->priv;
 
diff --git a/drivers/net/designware.h b/drivers/net/designware.h
index 8f6234aec5..5b587fa59e 100644
--- a/drivers/net/designware.h
+++ b/drivers/net/designware.h
@@ -57,8 +57,8 @@ static inline dma_addr_t rx_dma_addr(struct dw_eth_dev *priv,
 		+ ((u8 *)desc - (u8 *)priv->rx_mac_descrtable_cpu);
 }
 
-struct dw_eth_dev *dwc_drv_probe(struct device_d *dev);
-void dwc_drv_remove(struct device_d *dev);
+struct dw_eth_dev *dwc_drv_probe(struct device *dev);
+void dwc_drv_remove(struct device *dev);
 
 #define CONFIG_TX_DESCR_NUM	16
 #define CONFIG_RX_DESCR_NUM	16
diff --git a/drivers/net/designware_eqos.c b/drivers/net/designware_eqos.c
index e998d35d5c..c255d74eff 100644
--- a/drivers/net/designware_eqos.c
+++ b/drivers/net/designware_eqos.c
@@ -194,7 +194,7 @@ struct eqos_desc {
 
 #define MII_BUSY		(1 << 0)
 
-static int eqos_phy_reset(struct device_d *dev, struct eqos *eqos)
+static int eqos_phy_reset(struct device *dev, struct eqos *eqos)
 {
 	int phy_reset;
 	u32 delays[3] = { 0, 0, 0 };
@@ -668,7 +668,7 @@ static void eqos_stop(struct eth_device *edev)
 static int eqos_send(struct eth_device *edev, void *packet, int length)
 {
 	struct eqos *eqos = edev->priv;
-	struct device_d *dev = &eqos->netdev.dev;
+	struct device *dev = &eqos->netdev.dev;
 	struct eqos_desc *tx_desc;
 	dma_addr_t dma;
 	u32 des3;
@@ -745,7 +745,7 @@ static int eqos_recv(struct eth_device *edev)
 
 static int eqos_init_resources(struct eqos *eqos)
 {
-	struct device_d *dev = eqos->netdev.parent;
+	struct device *dev = eqos->netdev.parent;
 	int ret = -ENOMEM;
 	void *descs;
 	void *p;
@@ -788,7 +788,7 @@ err:
 	return ret;
 }
 
-static int eqos_init(struct device_d *dev, struct eqos *eqos)
+static int eqos_init(struct device *dev, struct eqos *eqos)
 {
 	int ret;
 
@@ -804,7 +804,7 @@ static int eqos_init(struct device_d *dev, struct eqos *eqos)
 	return ret;
 }
 
-static void eqos_probe_dt(struct device_d *dev, struct eqos *eqos)
+static void eqos_probe_dt(struct device *dev, struct eqos *eqos)
 {
 	struct device_node *child;
 
@@ -821,7 +821,7 @@ static void eqos_probe_dt(struct device_d *dev, struct eqos *eqos)
 	}
 }
 
-int eqos_probe(struct device_d *dev, const struct eqos_ops *ops, void *priv)
+int eqos_probe(struct device *dev, const struct eqos_ops *ops, void *priv)
 {
 	struct device_node *np = dev->of_node;
 	struct mii_bus *miibus;
@@ -882,7 +882,7 @@ int eqos_probe(struct device_d *dev, const struct eqos_ops *ops, void *priv)
 	return eth_register(edev);
 }
 
-void eqos_remove(struct device_d *dev)
+void eqos_remove(struct device *dev)
 {
 	struct eqos *eqos = dev->priv;
 
diff --git a/drivers/net/designware_eqos.h b/drivers/net/designware_eqos.h
index 1b6b0400e1..31d0dc8632 100644
--- a/drivers/net/designware_eqos.h
+++ b/drivers/net/designware_eqos.h
@@ -10,7 +10,7 @@ struct eqos;
 struct eth_device;
 
 struct eqos_ops {
-	int (*init)(struct device_d *dev, struct eqos *priv);
+	int (*init)(struct device *dev, struct eqos *priv);
 	int (*get_ethaddr)(struct eth_device *dev, unsigned char *mac);
 	int (*set_ethaddr)(struct eth_device *edev, const unsigned char *mac);
 	void (*adjust_link)(struct eth_device *edev);
@@ -62,9 +62,9 @@ struct eqos {
 	void *priv;
 };
 
-struct device_d;
-int eqos_probe(struct device_d *dev, const struct eqos_ops *ops, void *priv);
-void eqos_remove(struct device_d *dev);
+struct device;
+int eqos_probe(struct device *dev, const struct eqos_ops *ops, void *priv);
+void eqos_remove(struct device *dev);
 
 int eqos_get_ethaddr(struct eth_device *edev, unsigned char *mac);
 int eqos_set_ethaddr(struct eth_device *edev, const unsigned char *mac);
diff --git a/drivers/net/designware_generic.c b/drivers/net/designware_generic.c
index 90fca1951d..f7ea13791a 100644
--- a/drivers/net/designware_generic.c
+++ b/drivers/net/designware_generic.c
@@ -16,7 +16,7 @@ static struct dw_eth_drvdata dwmac_370a_drvdata = {
 	.enh_desc = 1,
 };
 
-static int dwc_ether_probe(struct device_d *dev)
+static int dwc_ether_probe(struct device *dev)
 {
 	struct dw_eth_dev *dwc;
 
diff --git a/drivers/net/designware_rockchip.c b/drivers/net/designware_rockchip.c
index fbb6be5fa1..9b5e60448c 100644
--- a/drivers/net/designware_rockchip.c
+++ b/drivers/net/designware_rockchip.c
@@ -33,7 +33,7 @@ struct eqos_rk_gmac {
 	int bus_id;
 	u32 tx_delay;
 	u32 rx_delay;
-	struct device_d *dev;
+	struct device *dev;
 };
 
 enum {
@@ -101,7 +101,7 @@ static void rk3568_set_to_rgmii(struct eqos *eqos,
 				int tx_delay, int rx_delay)
 {
 	struct eqos_rk_gmac *priv = to_rk_gmac(eqos);
-	struct device_d *dev = priv->dev;
+	struct device *dev = priv->dev;
 	u32 offset_con0, offset_con1;
 
 	if (IS_ERR(priv->grf)) {
@@ -127,7 +127,7 @@ static void rk3568_set_to_rgmii(struct eqos *eqos,
 static void rk3568_set_to_rmii(struct eqos *eqos)
 {
 	struct eqos_rk_gmac *priv = to_rk_gmac(eqos);
-	struct device_d *dev = priv->dev;
+	struct device *dev = priv->dev;
 	u32 offset_con1;
 
 	if (IS_ERR(priv->grf)) {
@@ -145,7 +145,7 @@ static void rk3568_set_to_rmii(struct eqos *eqos)
 static void rk3568_set_gmac_speed(struct eqos *eqos, int speed)
 {
 	struct eqos_rk_gmac *priv = to_rk_gmac(eqos);
-	struct device_d *dev = priv->dev;
+	struct device *dev = priv->dev;
 	unsigned long rate;
 	int ret;
 
@@ -185,7 +185,7 @@ static const struct rk_gmac_ops rk3568_ops = {
 static int rk_gmac_powerup(struct eqos *eqos)
 {
 	struct eqos_rk_gmac *priv = to_rk_gmac(eqos);
-	struct device_d *dev = priv->dev;
+	struct device *dev = priv->dev;
 
 	/*rmii or rgmii*/
 	switch (eqos->interface) {
@@ -230,7 +230,7 @@ static void eqos_rk_adjust_link(struct eth_device *edev)
 	eqos_adjust_link(edev);
 }
 
-static int eqos_init_rk_gmac(struct device_d *dev, struct eqos *eqos)
+static int eqos_init_rk_gmac(struct device *dev, struct eqos *eqos)
 {
 	struct device_node *np = dev->of_node;
 	struct eqos_rk_gmac *priv = to_rk_gmac(eqos);
@@ -306,7 +306,7 @@ static struct eqos_ops rk_gmac_ops = {
 	.config_mac = EQOS_MAC_RXQ_CTRL0_RXQ0EN_ENABLED_AV,
 };
 
-static int rk_gmac_probe(struct device_d *dev)
+static int rk_gmac_probe(struct device *dev)
 {
 	return eqos_probe(dev, &rk_gmac_ops, xzalloc(sizeof(struct eqos_rk_gmac)));
 }
diff --git a/drivers/net/designware_socfpga.c b/drivers/net/designware_socfpga.c
index 0c2bc5797d..efc170ba9e 100644
--- a/drivers/net/designware_socfpga.c
+++ b/drivers/net/designware_socfpga.c
@@ -154,7 +154,8 @@ static int socfpga_gen10_set_phy_mode(struct socfpga_dwc_dev *dwc_dev)
 }
 
 
-static int socfpga_dwc_probe_dt(struct device_d *dev, struct socfpga_dwc_dev *priv)
+static int socfpga_dwc_probe_dt(struct device *dev,
+				struct socfpga_dwc_dev *priv)
 {
 	u32 reg_offset, reg_shift;
 	int ret;
@@ -186,7 +187,7 @@ static int socfpga_dwc_probe_dt(struct device_d *dev, struct socfpga_dwc_dev *pr
 	return 0;
 }
 
-static int socfpga_dwc_ether_probe(struct device_d *dev)
+static int socfpga_dwc_ether_probe(struct device *dev)
 {
 	struct socfpga_dwc_dev *dwc_dev;
 	struct dw_eth_dev *priv;
diff --git a/drivers/net/designware_starfive.c b/drivers/net/designware_starfive.c
index c6acb94644..25e69ab2c4 100644
--- a/drivers/net/designware_starfive.c
+++ b/drivers/net/designware_starfive.c
@@ -56,7 +56,7 @@ static struct dw_eth_drvdata starfive_drvdata = {
 	.fix_mac_speed = dwmac_fixed_speed,
 };
 
-static int starfive_dwc_ether_probe(struct device_d *dev)
+static int starfive_dwc_ether_probe(struct device *dev)
 {
 	struct dw_eth_dev *dwc;
 	struct regmap *regmap;
diff --git a/drivers/net/designware_stm32.c b/drivers/net/designware_stm32.c
index a8e5bfbfad..ad2a0324b2 100644
--- a/drivers/net/designware_stm32.c
+++ b/drivers/net/designware_stm32.c
@@ -112,7 +112,7 @@ static int eqos_set_mode_stm32(struct eqos_stm32 *priv, phy_interface_t interfac
 	return 0;
 }
 
-static int eqos_init_stm32(struct device_d *dev, struct eqos *eqos)
+static int eqos_init_stm32(struct device *dev, struct eqos *eqos)
 {
 	struct device_node *np = dev->of_node;
 	struct eqos_stm32 *priv = to_stm32(eqos);
@@ -177,12 +177,12 @@ static struct eqos_ops stm32_ops = {
 	.config_mac = EQOS_MAC_RXQ_CTRL0_RXQ0EN_ENABLED_AV,
 };
 
-static int eqos_probe_stm32(struct device_d *dev)
+static int eqos_probe_stm32(struct device *dev)
 {
 	return eqos_probe(dev, &stm32_ops, xzalloc(sizeof(struct eqos_stm32)));
 }
 
-static void eqos_remove_stm32(struct device_d *dev)
+static void eqos_remove_stm32(struct device *dev)
 {
 	struct eqos_stm32 *priv = to_stm32(dev->priv);
 
diff --git a/drivers/net/designware_tegra186.c b/drivers/net/designware_tegra186.c
index 78818a1ed6..0fe253581f 100644
--- a/drivers/net/designware_tegra186.c
+++ b/drivers/net/designware_tegra186.c
@@ -203,7 +203,7 @@ static int eqos_set_ethaddr_tegra186(struct eth_device *edev, const unsigned cha
 	return eqos_set_ethaddr(edev, mac);
 }
 
-static int eqos_init_tegra186(struct device_d *dev, struct eqos *eqos)
+static int eqos_init_tegra186(struct device *dev, struct eqos *eqos)
 {
 	struct eqos_tegra186 *priv = to_tegra186(eqos);
 	int phy_reset;
@@ -283,12 +283,12 @@ static const struct eqos_ops tegra186_ops = {
 	.config_mac = EQOS_MAC_RXQ_CTRL0_RXQ0EN_ENABLED_DCB,
 };
 
-static int eqos_probe_tegra186(struct device_d *dev)
+static int eqos_probe_tegra186(struct device *dev)
 {
 	return eqos_probe(dev, &tegra186_ops, xzalloc(sizeof(struct eqos_tegra186)));
 }
 
-static void eqos_remove_tegra186(struct device_d *dev)
+static void eqos_remove_tegra186(struct device *dev)
 {
 	struct eqos_tegra186 *priv = to_tegra186(dev->priv);
 
diff --git a/drivers/net/dm9k.c b/drivers/net/dm9k.c
index a13e94e164..1e9038db65 100644
--- a/drivers/net/dm9k.c
+++ b/drivers/net/dm9k.c
@@ -349,7 +349,7 @@ static int dm9k_phy_read(struct mii_bus *bus, int addr, int reg)
 {
 	unsigned val;
 	struct dm9k *priv = bus->priv;
-	struct device_d *dev = &bus->dev;
+	struct device *dev = &bus->dev;
 
 	/* only internal phy supported by now, so show only one phy on miibus */
 	if (addr != 0) {
@@ -373,7 +373,7 @@ static int dm9k_phy_read(struct mii_bus *bus, int addr, int reg)
 static int dm9k_phy_write(struct mii_bus *bus, int addr, int reg, u16 val)
 {
 	struct dm9k *priv = bus->priv;
-	struct device_d *dev = &bus->dev;
+	struct device *dev = &bus->dev;
 
 	/* only internal phy supported by now, so show only one phy on miibus */
 	if (addr != 0) {
@@ -397,7 +397,7 @@ static int dm9k_phy_write(struct mii_bus *bus, int addr, int reg, u16 val)
 
 static int dm9k_check_id(struct dm9k *priv)
 {
-	struct device_d *dev = priv->miibus.parent;
+	struct device *dev = priv->miibus.parent;
 	u32 id;
 	char c;
 
@@ -461,7 +461,7 @@ static void dm9k_enable(struct dm9k *priv)
 
 static void dm9k_reset(struct dm9k *priv)
 {
-	struct device_d *dev = priv->miibus.parent;
+	struct device *dev = priv->miibus.parent;
 
 	dev_dbg(dev, "%s\n", __func__);
 
@@ -504,7 +504,7 @@ static void dm9k_write_length(struct dm9k *priv, unsigned length)
 
 static int dm9k_wait_for_trans_end(struct dm9k *priv)
 {
-	struct device_d *dev = priv->miibus.parent;
+	struct device *dev = priv->miibus.parent;
 	static const uint64_t toffs = 1 * SECOND;
 	uint8_t status;
 	uint64_t start = get_time_ns();
@@ -530,7 +530,7 @@ static int dm9k_wait_for_trans_end(struct dm9k *priv)
 static int dm9k_eth_send(struct eth_device *edev, void *packet, int length)
 {
 	struct dm9k *priv = (struct dm9k *)edev->priv;
-	struct device_d *dev = priv->miibus.parent;
+	struct device *dev = priv->miibus.parent;
 
 	dev_dbg(dev, "%s: %d bytes\n", __func__, length);
 
@@ -556,7 +556,7 @@ static int dm9k_eth_send(struct eth_device *edev, void *packet, int length)
 static int dm9k_check_for_rx_packet(struct dm9k *priv)
 {
 	uint8_t status;
-	struct device_d *dev = priv->miibus.parent;
+	struct device *dev = priv->miibus.parent;
 
 	status = dm9k_ior(priv, DM9K_ISR);
 	if (!(status & ISR_PR))
@@ -568,7 +568,7 @@ static int dm9k_check_for_rx_packet(struct dm9k *priv)
 
 static int dm9k_validate_entry(struct dm9k *priv)
 {
-	struct device_d *dev = priv->miibus.parent;
+	struct device *dev = priv->miibus.parent;
 
 	uint8_t p_stat;
 	/*
@@ -600,7 +600,7 @@ static int dm9k_validate_entry(struct dm9k *priv)
 static int dm9k_eth_rx(struct eth_device *edev)
 {
 	struct dm9k *priv = (struct dm9k *)edev->priv;
-	struct device_d *dev = edev->parent;
+	struct device *dev = edev->parent;
 	unsigned rx_stat = 0, rx_len = 0;
 	bool p_valid;
 
@@ -720,7 +720,7 @@ static int dm9k_init_dev(struct eth_device *edev)
 	return 0;
 }
 
-static int dm9000_parse_dt(struct device_d *dev, struct dm9k *priv)
+static int dm9000_parse_dt(struct device *dev, struct dm9k *priv)
 {
 	struct device_node *np = dev->of_node;
 	uint32_t prop;
@@ -757,7 +757,7 @@ static int dm9000_parse_dt(struct device_d *dev, struct dm9k *priv)
 	return 0;
 }
 
-static int dm9000_parse_pdata(struct device_d *dev, struct dm9k *priv)
+static int dm9000_parse_pdata(struct device *dev, struct dm9k *priv)
 {
 	struct dm9000_platform_data *pdata = dev->platform_data;
 
@@ -768,7 +768,7 @@ static int dm9000_parse_pdata(struct device_d *dev, struct dm9k *priv)
 	return 0;
 }
 
-static int dm9k_probe(struct device_d *dev)
+static int dm9k_probe(struct device *dev)
 {
 	struct resource *iores;
 	unsigned io_mode;
diff --git a/drivers/net/dsa.c b/drivers/net/dsa.c
index 1d34221dcb..d633bdf15d 100644
--- a/drivers/net/dsa.c
+++ b/drivers/net/dsa.c
@@ -239,7 +239,7 @@ static int dsa_switch_register_edev(struct dsa_switch *ds,
 				    struct device_node *dn, int port)
 {
 	struct eth_device *edev;
-	struct device_d *dev;
+	struct device *dev;
 	struct dsa_port *dp;
 
 	ds->dp[port] = xzalloc(sizeof(*dp));
diff --git a/drivers/net/e1000/e1000.h b/drivers/net/e1000/e1000.h
index 3a5ee9988e..558a4ac271 100644
--- a/drivers/net/e1000/e1000.h
+++ b/drivers/net/e1000/e1000.h
@@ -2150,7 +2150,7 @@ struct e1000_hw {
 	struct eth_device edev;
 
 	struct pci_dev *pdev;
-	struct device_d *dev;
+	struct device *dev;
 
 	void __iomem *hw_addr;
 
@@ -2163,7 +2163,7 @@ struct e1000_hw {
 
 	struct {
 		struct cdev cdev;
-		struct device_d dev;
+		struct device dev;
 		int line;
 	} invm;
 
diff --git a/drivers/net/efi-snp.c b/drivers/net/efi-snp.c
index d30da820a0..7e94b613a1 100644
--- a/drivers/net/efi-snp.c
+++ b/drivers/net/efi-snp.c
@@ -117,7 +117,7 @@ struct efi_simple_network {
 };
 
 struct efi_snp_priv {
-	struct device_d *dev;
+	struct device *dev;
 	struct eth_device edev;
 	struct efi_simple_network *snp;
 	void *rx_buf;
diff --git a/drivers/net/enc28j60.c b/drivers/net/enc28j60.c
index b3cfb65c1c..1afd17d1dc 100644
--- a/drivers/net/enc28j60.c
+++ b/drivers/net/enc28j60.c
@@ -670,7 +670,7 @@ static void enc28j60_hw_disable(struct enc28j60_net *priv)
 static inline void enc28j60_dump_rsv(struct enc28j60_net *priv, const char *msg,
 			      u16 pk_ptr, int len, u16 sts)
 {
-	struct device_d *dev = &priv->edev.dev;
+	struct device *dev = &priv->edev.dev;
 
 	dev_dbg(dev, "%s - NextPk: 0x%04x - RSV:\n",
 		msg, pk_ptr);
@@ -922,7 +922,7 @@ static void enc28j60_eth_halt(struct eth_device *edev)
 	enc28j60_lowpower(priv, true);
 }
 
-static int enc28j60_probe(struct device_d *dev)
+static int enc28j60_probe(struct device *dev)
 {
 	struct eth_device *edev;
 	struct enc28j60_net *priv;
diff --git a/drivers/net/ep93xx.c b/drivers/net/ep93xx.c
index f8b281093d..5ff5df21dc 100644
--- a/drivers/net/ep93xx.c
+++ b/drivers/net/ep93xx.c
@@ -466,7 +466,7 @@ static int ep93xx_eth_set_ethaddr(struct eth_device *edev,
 	return 0;
 }
 
-static int ep93xx_eth_probe(struct device_d *dev)
+static int ep93xx_eth_probe(struct device *dev)
 {
 	struct ep93xx_eth_platform_data *pdata = (struct ep93xx_eth_platform_data *)dev->platform_data;
 	struct eth_device *edev;
diff --git a/drivers/net/ethoc.c b/drivers/net/ethoc.c
index f24120ce72..38fc7cdd74 100644
--- a/drivers/net/ethoc.c
+++ b/drivers/net/ethoc.c
@@ -529,7 +529,7 @@ static int ethoc_mdio_write(struct mii_bus *bus, int phy, int reg, u16 val)
 	return 0;
 }
 
-static int ethoc_probe(struct device_d *dev)
+static int ethoc_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct eth_device *edev;
diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 5e34357371..0a87f8f9b7 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -652,7 +652,7 @@ static void fec_free_receive_packets(struct fec_priv *fec, int count, int size)
 }
 
 #ifdef CONFIG_OFDEVICE
-static int fec_probe_dt(struct device_d *dev, struct fec_priv *fec)
+static int fec_probe_dt(struct device *dev, struct fec_priv *fec)
 {
 	struct device_node *mdiobus;
 	int ret;
@@ -670,7 +670,7 @@ static int fec_probe_dt(struct device_d *dev, struct fec_priv *fec)
 	return 0;
 }
 #else
-static int fec_probe_dt(struct device_d *dev, struct fec_priv *fec)
+static int fec_probe_dt(struct device *dev, struct fec_priv *fec)
 {
 	return -ENODEV;
 }
@@ -757,7 +757,7 @@ static int fec_clk_get(struct fec_priv *fec)
 	return err;
 }
 
-static int fec_probe(struct device_d *dev)
+static int fec_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct fec_platform_data *pdata = (struct fec_platform_data *)dev->platform_data;
@@ -928,7 +928,7 @@ err_free:
 	return ret;
 }
 
-static void fec_remove(struct device_d *dev)
+static void fec_remove(struct device *dev)
 {
 	struct fec_priv *fec = dev->priv;
 
diff --git a/drivers/net/fec_imx.h b/drivers/net/fec_imx.h
index 9bb1c64b55..1aaff87fdd 100644
--- a/drivers/net/fec_imx.h
+++ b/drivers/net/fec_imx.h
@@ -139,7 +139,7 @@ enum fec_opt_clock {
  */
 struct fec_priv {
 	struct eth_device edev;
-	struct device_d *dev;
+	struct device *dev;
 	void __iomem *regs;
 	struct buffer_descriptor __iomem *rbd_base;	/* RBD ring                  */
 	int rbd_index;				/* next receive BD to read   */
diff --git a/drivers/net/fec_mpc5200.c b/drivers/net/fec_mpc5200.c
index 4025664d0d..1abd4c5a8a 100644
--- a/drivers/net/fec_mpc5200.c
+++ b/drivers/net/fec_mpc5200.c
@@ -637,7 +637,7 @@ static int mpc5xxx_fec_recv(struct eth_device *dev)
 	return len;
 }
 
-static int mpc5xxx_fec_probe(struct device_d *dev)
+static int mpc5xxx_fec_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct fec_platform_data *pdata = dev->platform_data;
@@ -680,7 +680,7 @@ static int mpc5xxx_fec_probe(struct device_d *dev)
 	return 0;
 }
 
-static void mpc5xxx_fec_remove(struct device_d *dev)
+static void mpc5xxx_fec_remove(struct device *dev)
 {
 	struct eth_device *edev = dev->priv;
 
diff --git a/drivers/net/fsl-fman.c b/drivers/net/fsl-fman.c
index 617fd11e25..8928f91a9b 100644
--- a/drivers/net/fsl-fman.c
+++ b/drivers/net/fsl-fman.c
@@ -101,7 +101,7 @@ struct fm_eth {
 	struct fm_bmi_rx_port *rx_port;
 	phy_interface_t enet_if;
 	struct eth_device edev;
-	struct device_d *dev;
+	struct device *dev;
 	struct fm_port_global_pram *rx_pram; /* Rx parameter table */
 	struct fm_port_global_pram *tx_pram; /* Tx parameter table */
 	struct fm_port_bd *rx_bd_ring;	/* Rx BD ring base */
@@ -207,7 +207,7 @@ static int fm_upload_ucode(struct fm_imem *imem,
 	return 0;
 }
 
-static int fman_upload_firmware(struct device_d *dev, struct fm_imem *fm_imem)
+static int fman_upload_firmware(struct device *dev, struct fm_imem *fm_imem)
 {
 	int i, size, ret;
 	const struct qe_firmware *firmware;
@@ -398,7 +398,7 @@ static void fm_init_qmi(struct fm_qmi_common *qmi)
 	out_be32(&qmi->fmqm_ie, FMQM_IE_CLEAR_ALL);
 }
 
-static int fm_init_common(struct device_d *dev, struct ccsr_fman *reg)
+static int fm_init_common(struct device *dev, struct ccsr_fman *reg)
 {
 	int ret;
 
@@ -1058,7 +1058,7 @@ static int fm_eth_startup(struct fm_eth *fm_eth)
 	return 0;
 }
 
-static int fsl_fman_mdio_probe(struct device_d *dev)
+static int fsl_fman_mdio_probe(struct device *dev)
 {
 	struct resource *iores;
 	int ret;
@@ -1087,7 +1087,7 @@ static int fsl_fman_mdio_probe(struct device_d *dev)
 	return 0;
 }
 
-static int fsl_fman_port_probe(struct device_d *dev)
+static int fsl_fman_port_probe(struct device *dev)
 {
 	struct resource *iores;
 	int ret;
@@ -1123,7 +1123,7 @@ static int fsl_fman_memac_port_bind(struct fm_eth *fm_eth, enum fman_port_type t
 {
 	struct device_node *macnp = fm_eth->dev->of_node;
 	struct device_node *portnp;
-	struct device_d *portdev;
+	struct device *portdev;
 	struct fsl_fman_port *port;
 
 	portnp = of_parse_phandle(macnp, "fsl,fman-ports", type);
@@ -1149,7 +1149,7 @@ static int fsl_fman_memac_port_bind(struct fm_eth *fm_eth, enum fman_port_type t
 	return 0;
 }
 
-static int fsl_fman_memac_probe(struct device_d *dev)
+static int fsl_fman_memac_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct fm_eth *fm_eth;
@@ -1209,14 +1209,14 @@ static int fsl_fman_memac_probe(struct device_d *dev)
 	return 0;
 }
 
-static void fsl_fman_memac_remove(struct device_d *dev)
+static void fsl_fman_memac_remove(struct device *dev)
 {
 	struct fm_eth *fm_eth = dev->priv;
 
 	fm_eth_halt(&fm_eth->edev);
 }
 
-static int fsl_fman_muram_probe(struct device_d *dev)
+static int fsl_fman_muram_probe(struct device *dev)
 {
 	struct resource *iores;
 
@@ -1291,7 +1291,7 @@ static struct driver_d fman_muram_driver = {
 	.of_compatible = DRV_OF_COMPAT(fsl_fman_muram_dt_ids),
 };
 
-static int fsl_fman_probe(struct device_d *dev)
+static int fsl_fman_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct ccsr_fman *reg;
diff --git a/drivers/net/gianfar.c b/drivers/net/gianfar.c
index 8571d4f92c..4117faec2a 100644
--- a/drivers/net/gianfar.c
+++ b/drivers/net/gianfar.c
@@ -361,7 +361,7 @@ static int gfar_send(struct eth_device *edev, void *packet, int length)
 {
 	struct gfar_private *priv = edev->priv;
 	void __iomem *regs = priv->regs;
-	struct device_d *dev = edev->parent;
+	struct device *dev = edev->parent;
 	uint64_t start;
 	uint tidx;
 	uint16_t status;
@@ -401,7 +401,7 @@ static int gfar_send(struct eth_device *edev, void *packet, int length)
 static int gfar_recv(struct eth_device *edev)
 {
 	struct gfar_private *priv = edev->priv;
-	struct device_d *dev = edev->parent;
+	struct device *dev = edev->parent;
 	void __iomem *regs = priv->regs;
 	uint16_t status, length;
 
@@ -468,12 +468,12 @@ static int gfar_miiphy_write(struct mii_bus *bus, int addr, int reg,
  * Initialize device structure. Returns success if
  * initialization succeeded.
  */
-static int gfar_probe(struct device_d *dev)
+static int gfar_probe(struct device *dev)
 {
 	struct gfar_info_struct *gfar_info = dev->platform_data;
 	struct eth_device *edev;
 	struct gfar_private *priv;
-	struct device_d *mdev;
+	struct device *mdev;
 	size_t size;
 	char devname[16];
 	char *p;
@@ -542,7 +542,7 @@ static struct driver_d gfar_eth_driver = {
 };
 device_platform_driver(gfar_eth_driver);
 
-static int gfar_phy_probe(struct device_d *dev)
+static int gfar_phy_probe(struct device *dev)
 {
 	struct gfar_phy *phy;
 	int ret;
@@ -573,7 +573,7 @@ static struct driver_d gfar_phy_driver = {
 };
 register_driver_macro(coredevice, platform, gfar_phy_driver);
 
-static int gfar_tbiphy_probe(struct device_d *dev)
+static int gfar_tbiphy_probe(struct device *dev)
 {
 	struct gfar_phy *phy;
 	int ret;
diff --git a/drivers/net/gianfar.h b/drivers/net/gianfar.h
index 081230189a..cea41218a7 100644
--- a/drivers/net/gianfar.h
+++ b/drivers/net/gianfar.h
@@ -261,7 +261,7 @@ struct rxbd8 {
 
 struct gfar_phy {
 	void __iomem *regs;
-	struct device_d *dev;
+	struct device *dev;
 	struct mii_bus miibus;
 };
 
diff --git a/drivers/net/ks8851_mll.c b/drivers/net/ks8851_mll.c
index 7609623ad1..3d45eddd9d 100644
--- a/drivers/net/ks8851_mll.c
+++ b/drivers/net/ks8851_mll.c
@@ -593,7 +593,7 @@ static void ks_soft_reset(struct ks_net *ks, unsigned op)
  */
 static int ks_read_selftest(struct ks_net *ks)
 {
-	struct device_d *dev = &ks->edev.dev;
+	struct device *dev = &ks->edev.dev;
 	unsigned both_done = MBIR_TXMBF | MBIR_RXMBF;
 	int ret = 0;
 	unsigned rd;
@@ -659,7 +659,7 @@ static void ks_setup(struct ks_net *ks)
 
 static int ks8851_rx_frame(struct ks_net *ks)
 {
-	struct device_d *dev = &ks->edev.dev;
+	struct device *dev = &ks->edev.dev;
 	u16 RxStatus, RxLen = 0;
 	u16 tmp_rxqcr;
 
@@ -712,7 +712,7 @@ static int ks8851_rx_frame(struct ks_net *ks)
 static int ks8851_eth_rx(struct eth_device *edev)
 {
 	struct ks_net *ks = (struct ks_net *)edev->priv;
-	struct device_d *dev = &edev->dev;
+	struct device *dev = &edev->dev;
 	u16 frame_cnt;
 
 	if (!(ks_rdreg16(ks, KS_ISR) & IRQ_RXI))
@@ -733,7 +733,7 @@ static int ks8851_eth_send(struct eth_device *edev,
 		void *packet, int length)
 {
 	struct ks_net *ks = (struct ks_net *)edev->priv;
-	struct device_d *dev = &edev->dev;
+	struct device *dev = &edev->dev;
 	uint64_t tmo;
 	u16 tmp_rxqcr;
 
@@ -769,7 +769,7 @@ static int ks8851_eth_send(struct eth_device *edev,
 static int ks8851_eth_open(struct eth_device *edev)
 {
 	struct ks_net *priv = (struct ks_net *)edev->priv;
-	struct device_d *dev = &edev->dev;
+	struct device *dev = &edev->dev;
 	int ret;
 
 	ks_enable_qmu(priv);
@@ -792,14 +792,14 @@ static int ks8851_init_dev(struct eth_device *edev)
 static void ks8851_eth_halt(struct eth_device *edev)
 {
 	struct ks_net *priv = (struct ks_net *)edev->priv;
-	struct device_d *dev = &edev->dev;
+	struct device *dev = &edev->dev;
 
 	ks_disable_qmu(priv);
 
 	dev_dbg(dev, "eth_halt\n");
 }
 
-static int ks8851_probe(struct device_d *dev)
+static int ks8851_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct eth_device *edev;
diff --git a/drivers/net/ksz8864rmn.c b/drivers/net/ksz8864rmn.c
index 72ab86579b..e6734786c9 100644
--- a/drivers/net/ksz8864rmn.c
+++ b/drivers/net/ksz8864rmn.c
@@ -122,7 +122,7 @@ static struct cdev_operations micrel_switch_ops = {
 	.write = micel_switch_write,
 };
 
-static int micrel_switch_probe(struct device_d *dev)
+static int micrel_switch_probe(struct device *dev)
 {
 	struct micrel_switch_priv *priv;
 	int ret = 0;
diff --git a/drivers/net/ksz8873.c b/drivers/net/ksz8873.c
index 38f61ed43e..eb0a2a5759 100644
--- a/drivers/net/ksz8873.c
+++ b/drivers/net/ksz8873.c
@@ -64,7 +64,7 @@ struct ksz8873_dcfg {
 struct ksz8873_switch {
 	struct phy_device *mdiodev;
 	struct dsa_switch ds;
-	struct device_d *dev;
+	struct device *dev;
 	const struct ksz8873_dcfg *dcfg;
 	struct regmap *regmap;
 };
@@ -277,7 +277,7 @@ static void ksz8_w_phy(struct ksz8873_switch *priv, u16 phy, u16 reg, u16 val)
 
 static int ksz8873_phy_read16(struct dsa_switch *ds, int addr, int reg)
 {
-	struct device_d *dev = ds->dev;
+	struct device *dev = ds->dev;
 	struct ksz8873_switch *priv = dev_get_priv(dev);
 	u16 val = 0xffff;
 
@@ -292,7 +292,7 @@ static int ksz8873_phy_read16(struct dsa_switch *ds, int addr, int reg)
 static int ksz8873_phy_write16(struct dsa_switch *ds, int addr, int reg,
 			       u16 val)
 {
-	struct device_d *dev = ds->dev;
+	struct device *dev = ds->dev;
 	struct ksz8873_switch *priv = dev_get_priv(dev);
 
 	/* No real PHY after this. */
@@ -365,7 +365,7 @@ static int ksz8873_default_setup(struct ksz8873_switch *priv)
 
 static int ksz8873_probe_mdio(struct phy_device *mdiodev)
 {
-	struct device_d *dev = &mdiodev->dev;
+	struct device *dev = &mdiodev->dev;
 	const struct ksz8873_dcfg *dcfg;
 	struct ksz8873_switch *priv;
 	struct dsa_switch *ds;
diff --git a/drivers/net/ksz9477.c b/drivers/net/ksz9477.c
index 779762fad5..382de4e127 100644
--- a/drivers/net/ksz9477.c
+++ b/drivers/net/ksz9477.c
@@ -24,7 +24,7 @@
 struct ksz_switch {
 	struct spi_device *spi;
 	struct dsa_switch ds;
-	struct device_d *dev;
+	struct device *dev;
 	int phy_port_cnt;
 	u32 chip_id;
 	u8 features;
@@ -145,7 +145,7 @@ static int ksz_pwrite32(struct ksz_switch *priv, int port, int reg, u32 val)
 
 static int ksz9477_phy_read16(struct dsa_switch *ds, int addr, int reg)
 {
-	struct device_d *dev = ds->dev;
+	struct device *dev = ds->dev;
 	struct ksz_switch *priv = dev_get_priv(dev);
 	u16 val = 0xffff;
 
@@ -160,7 +160,7 @@ static int ksz9477_phy_read16(struct dsa_switch *ds, int addr, int reg)
 static int ksz9477_phy_write16(struct dsa_switch *ds, int addr, int reg,
 			       u16 val)
 {
-	struct device_d *dev = ds->dev;
+	struct device *dev = ds->dev;
 	struct ksz_switch *priv = dev_get_priv(dev);
 
 	/* No real PHY after this. */
@@ -431,7 +431,7 @@ static int ksz_port_setup(struct ksz_switch *priv, int port,
 static int ksz_port_enable(struct dsa_port *dp, int port,
 			   struct phy_device *phy)
 {
-	struct device_d *dev = dp->ds->dev;
+	struct device *dev = dp->ds->dev;
 	struct ksz_switch *priv = dev_get_priv(dev);
 	u8 data8;
 	int ret;
@@ -503,7 +503,7 @@ static int ksz_default_setup(struct ksz_switch *priv)
 	return 0;
 }
 
-static int microchip_switch_probe(struct device_d *dev)
+static int microchip_switch_probe(struct device *dev)
 {
 	struct ksz_switch *priv;
 	int ret = 0, gpio;
diff --git a/drivers/net/liteeth.c b/drivers/net/liteeth.c
index c713d3412f..ea9ec18d41 100644
--- a/drivers/net/liteeth.c
+++ b/drivers/net/liteeth.c
@@ -53,7 +53,7 @@
 #define MAX_PKT_SIZE			LITEETH_BUFFER_SIZE
 
 struct liteeth {
-	struct device_d *dev;
+	struct device *dev;
 	struct eth_device edev;
 	void __iomem *base;
 	void __iomem *mdio_base;
@@ -272,7 +272,7 @@ static int liteeth_set_ethaddr(struct eth_device *edev,
 	return 0;
 }
 
-static int liteeth_probe(struct device_d *dev)
+static int liteeth_probe(struct device *dev)
 {
 	struct device_node *np = dev->of_node;
 	struct eth_device *edev;
diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index 7ccc112c0c..e15b4dadc5 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -53,7 +53,7 @@
 #define GEM_Q1_DESC_BYTES	(sizeof(struct macb_dma_desc) * GEM_Q1_DESCS)
 
 struct macb_config {
-	int (*txclk_init)(struct device_d *dev, struct clk **tx_clk);
+	int (*txclk_init)(struct device *dev, struct clk **tx_clk);
 };
 
 struct macb_device {
@@ -75,7 +75,7 @@ struct macb_device {
 	int			phy_addr;
 
 	struct clk		*pclk, *hclk, *txclk, *rxclk;
-	const struct device_d	*dev;
+	const struct device	*dev;
 	struct eth_device	netdev;
 
 	phy_interface_t		interface;
@@ -730,7 +730,7 @@ static const struct clk_ops fu540_c000_ops = {
 	.set_rate = fu540_macb_tx_set_rate,
 };
 
-static int fu540_c000_txclk_init(struct device_d *dev, struct clk **tx_clk)
+static int fu540_c000_txclk_init(struct device *dev, struct clk **tx_clk)
 {
 	struct clk *clk;
 	struct resource *res;
@@ -766,13 +766,13 @@ static int fu540_c000_txclk_init(struct device_d *dev, struct clk **tx_clk)
 	return 0;
 }
 #else
-static int fu540_c000_txclk_init(struct device_d *dev, struct clk **tx_clk)
+static int fu540_c000_txclk_init(struct device *dev, struct clk **tx_clk)
 {
 	return -ENOSYS;
 }
 #endif
 
-static int macb_probe(struct device_d *dev)
+static int macb_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct eth_device *edev;
@@ -918,7 +918,7 @@ static int macb_probe(struct device_d *dev)
 	return 0;
 }
 
-static void macb_remove(struct device_d *dev)
+static void macb_remove(struct device *dev)
 {
 	struct macb_device *macb = dev->priv;
 
diff --git a/drivers/net/mvneta.c b/drivers/net/mvneta.c
index 6dc0ceeafc..575f0c12bb 100644
--- a/drivers/net/mvneta.c
+++ b/drivers/net/mvneta.c
@@ -198,7 +198,7 @@ struct txdesc {
 
 struct mvneta_port {
 	void __iomem *reg;
-	struct device_d dev;
+	struct device dev;
 	struct eth_device edev;
 	struct clk *clk;
 
@@ -706,7 +706,7 @@ static int mvneta_port_config(struct mvneta_port *priv)
 	return 0;
 }
 
-static int mvneta_probe(struct device_d *dev)
+static int mvneta_probe(struct device *dev)
 {
 	struct mvneta_port *priv;
 	int ret;
diff --git a/drivers/net/orion-gbe.c b/drivers/net/orion-gbe.c
index 99fde13f3e..70e18a3165 100644
--- a/drivers/net/orion-gbe.c
+++ b/drivers/net/orion-gbe.c
@@ -42,7 +42,7 @@ struct txdesc {
 };
 
 struct port_priv {
-	struct device_d dev;
+	struct device dev;
 	struct eth_device edev;
 	void __iomem *regs;
 	struct device_node *np;
@@ -387,10 +387,10 @@ static int port_open(struct eth_device *edev)
 	return 0;
 }
 
-static int port_probe(struct device_d *parent, struct port_priv *port)
+static int port_probe(struct device *parent, struct port_priv *port)
 {
 	struct orion_gbe *gbe = parent->priv;
-	struct device_d *dev = &port->dev;
+	struct device *dev = &port->dev;
 	u32 reg;
 	int ret;
 
@@ -473,7 +473,7 @@ static int port_probe(struct device_d *parent, struct port_priv *port)
 	return 0;
 }
 
-static int orion_gbe_probe(struct device_d *dev)
+static int orion_gbe_probe(struct device *dev)
 {
 	struct orion_gbe *gbe;
 	struct port_priv *ppriv;
@@ -518,7 +518,7 @@ static int orion_gbe_probe(struct device_d *dev)
 	return 0;
 }
 
-static void orion_gbe_remove(struct device_d *dev)
+static void orion_gbe_remove(struct device *dev)
 {
 	struct orion_gbe *gbe = dev->priv;
 	int n;
diff --git a/drivers/net/phy/ar8327.c b/drivers/net/phy/ar8327.c
index f13d574b30..7717861c74 100644
--- a/drivers/net/phy/ar8327.c
+++ b/drivers/net/phy/ar8327.c
@@ -132,7 +132,7 @@ static int ar8327n_phy_is_link_alive(struct phy_device *phydev, int phy_addr)
 
 static int ar8327n_phy_setup(struct phy_device *phydev)
 {
-	struct device_d *dev = &phydev->dev;
+	struct device *dev = &phydev->dev;
 	int phy_addr;
 
 	/* start auto negotiation on each phy */
@@ -194,7 +194,7 @@ static int ar8327n_get_link(struct phy_device *phydev)
 
 static int ar8327n_config_init(struct phy_device *phydev)
 {
-	struct device_d *dev = &phydev->dev;
+	struct device *dev = &phydev->dev;
 	int phy_addr = 0;
 
 	if (phydev->interface != PHY_INTERFACE_MODE_RGMII_TXID)
diff --git a/drivers/net/phy/at803x.c b/drivers/net/phy/at803x.c
index 2e62d03bf9..18182bffc2 100644
--- a/drivers/net/phy/at803x.c
+++ b/drivers/net/phy/at803x.c
@@ -138,7 +138,7 @@ static bool at803x_match_phy_id(struct phy_device *phydev, u32 phy_id)
 
 static int at803x_parse_dt(struct phy_device *phydev)
 {
-	const struct device_d *dev = &phydev->dev;
+	const struct device *dev = &phydev->dev;
 	const struct device_node *node = dev->of_node;
 	struct at803x_priv *priv = phydev->priv;
 	unsigned int sel;
diff --git a/drivers/net/phy/dp83867.c b/drivers/net/phy/dp83867.c
index df6ab74de6..375dcd0753 100644
--- a/drivers/net/phy/dp83867.c
+++ b/drivers/net/phy/dp83867.c
@@ -164,7 +164,7 @@ static int dp83867_config_port_mirroring(struct phy_device *phydev)
 static int dp83867_of_init(struct phy_device *phydev)
 {
 	struct dp83867_private *dp83867 = phydev->priv;
-	struct device_d *dev = &phydev->dev;
+	struct device *dev = &phydev->dev;
 	struct device_node *of_node = dev->of_node;
 	int ret;
 
diff --git a/drivers/net/phy/mdio-gpio.c b/drivers/net/phy/mdio-gpio.c
index f161685715..06846c03ff 100644
--- a/drivers/net/phy/mdio-gpio.c
+++ b/drivers/net/phy/mdio-gpio.c
@@ -42,7 +42,7 @@ struct mdio_gpio_info {
 	int mdc_active_low, mdio_active_low, mdo_active_low;
 };
 
-static struct mdio_gpio_info *mdio_gpio_of_get_info(struct device_d *dev)
+static struct mdio_gpio_info *mdio_gpio_of_get_info(struct device *dev)
 {
 	int ret;
 	enum of_gpio_flags flags;
@@ -142,7 +142,7 @@ static struct mdiobb_ops mdio_gpio_ops = {
 	.get_mdio_data = mdio_get,
 };
 
-static int mdio_gpio_probe(struct device_d *dev)
+static int mdio_gpio_probe(struct device *dev)
 {
 	int ret;
 	struct device_node *np = dev->of_node;
diff --git a/drivers/net/phy/mdio-mux-gpio.c b/drivers/net/phy/mdio-mux-gpio.c
index 7d93fb2aa0..8fcff8fb70 100644
--- a/drivers/net/phy/mdio-mux-gpio.c
+++ b/drivers/net/phy/mdio-mux-gpio.c
@@ -67,7 +67,7 @@ static int mdio_mux_gpio_switch_fn(int current_child, int desired_child,
 	return 0;
 }
 
-static int mdio_mux_gpio_probe(struct device_d *dev)
+static int mdio_mux_gpio_probe(struct device *dev)
 {
 	struct mdio_mux_gpio_state *s;
 	int i, r;
diff --git a/drivers/net/phy/mdio-mux.c b/drivers/net/phy/mdio-mux.c
index 67d5664de9..c4088c16ca 100644
--- a/drivers/net/phy/mdio-mux.c
+++ b/drivers/net/phy/mdio-mux.c
@@ -56,7 +56,7 @@ static int mdio_mux_write(struct mii_bus *bus, int phy_id,
 	return mdio_mux_read_or_write(bus, phy_id, regnum, &val);
 }
 
-int mdio_mux_init(struct device_d *dev,
+int mdio_mux_init(struct device *dev,
 		  struct device_node *mux_node,
 		  int (*switch_fn)(int cur, int desired, void *data),
 		  void *data,
diff --git a/drivers/net/phy/mdio-mvebu.c b/drivers/net/phy/mdio-mvebu.c
index 0672481fea..025212f92f 100644
--- a/drivers/net/phy/mdio-mvebu.c
+++ b/drivers/net/phy/mdio-mvebu.c
@@ -103,7 +103,7 @@ static int mvebu_mdio_write(struct mii_bus *bus, int addr, int reg, u16 data)
 	return 0;
 }
 
-static int mvebu_mdio_probe(struct device_d *dev)
+static int mvebu_mdio_probe(struct device *dev)
 {
 	struct mdio_priv *priv;
 
@@ -128,7 +128,7 @@ static int mvebu_mdio_probe(struct device_d *dev)
 	return mdiobus_register(&priv->miibus);
 }
 
-static void mvebu_mdio_remove(struct device_d *dev)
+static void mvebu_mdio_remove(struct device *dev)
 {
 	struct mdio_priv *priv = dev->priv;
 
diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
index ee38143096..9679d701ac 100644
--- a/drivers/net/phy/mdio_bus.c
+++ b/drivers/net/phy/mdio_bus.c
@@ -80,7 +80,7 @@ int mdio_driver_register(struct phy_driver *phydrv)
 	return register_driver(&phydrv->drv);
 }
 
-int mdiobus_detect(struct device_d *dev)
+int mdiobus_detect(struct device *dev)
 {
 	struct mii_bus *mii = to_mii_bus(dev);
 	int i, ret;
@@ -415,7 +415,7 @@ EXPORT_SYMBOL(of_mdio_find_bus);
  * Description: Given a PHY device, and a PHY driver, return 0 if
  *   the driver supports the device.  Otherwise, return 1.
  */
-static int mdio_bus_match(struct device_d *dev, struct driver_d *drv)
+static int mdio_bus_match(struct device *dev, struct driver_d *drv)
 {
 	struct phy_device *phydev = to_phy_device(dev);
 	struct phy_driver *phydrv = to_phy_driver(drv);
@@ -540,7 +540,7 @@ static void of_set_phy_supported(struct phy_device *phydev)
 	}
 }
 
-static int mdio_bus_probe(struct device_d *_dev)
+static int mdio_bus_probe(struct device *_dev)
 {
 	struct phy_device *dev = to_phy_device(_dev);
 	struct phy_driver *drv = to_phy_driver(_dev->driver);
@@ -594,7 +594,7 @@ err:
 	return ret;
 }
 
-static void mdio_bus_remove(struct device_d *_dev)
+static void mdio_bus_remove(struct device *_dev)
 {
 	struct phy_device *dev = to_phy_device(_dev);
 	struct phy_driver *drv = to_phy_driver(_dev->driver);
diff --git a/drivers/net/phy/micrel.c b/drivers/net/phy/micrel.c
index 7b551969ab..ef1f919ae7 100644
--- a/drivers/net/phy/micrel.c
+++ b/drivers/net/phy/micrel.c
@@ -128,7 +128,7 @@ static int kszphy_rmii_clk_sel(struct phy_device *phydev, bool val)
 /* Handle LED mode, shift = position of first led mode bit, usually 4 or 14 */
 static int kszphy_led_mode(struct phy_device *phydev, int reg, int shift)
 {
-	const struct device_d *dev = &phydev->dev;
+	const struct device *dev = &phydev->dev;
 	const struct device_node *of_node = dev->of_node ? : dev->parent->of_node;
 	u32 val;
 
@@ -144,7 +144,7 @@ static int kszphy_led_mode(struct phy_device *phydev, int reg, int shift)
 
 static int kszphy_setup_led(struct phy_device *phydev, u32 reg, int val)
 {
-	const struct device_d *dev = &phydev->dev;
+	const struct device *dev = &phydev->dev;
 	int rc, temp, shift;
 
 	switch (reg) {
@@ -179,7 +179,7 @@ out:
  */
 static int kszphy_broadcast_disable(struct phy_device *phydev)
 {
-	const struct device_d *dev = &phydev->dev;
+	const struct device *dev = &phydev->dev;
 	int ret;
 
 	ret = phy_read(phydev, MII_KSZPHY_OMSO);
@@ -196,7 +196,7 @@ out:
 
 static int kszphy_nand_tree_disable(struct phy_device *phydev)
 {
-	const struct device_d *dev = &phydev->dev;
+	const struct device *dev = &phydev->dev;
 	int ret;
 
 	ret = phy_read(phydev, MII_KSZPHY_OMSO);
@@ -278,7 +278,7 @@ static int ksz9021_load_values_from_of(struct phy_device *phydev,
 
 static int ksz9021_config_init(struct phy_device *phydev)
 {
-	const struct device_d *dev = &phydev->dev;
+	const struct device *dev = &phydev->dev;
 	const struct device_node *of_node = dev->of_node;
 	const char *clk_pad_skew_names[] = {
 		"txen-skew-ps", "txc-skew-ps",
@@ -471,7 +471,7 @@ static int ksz9031_config_rgmii_delay(struct phy_device *phydev)
 
 static int ksz9031_config_init(struct phy_device *phydev)
 {
-	const struct device_d *dev = &phydev->dev;
+	const struct device *dev = &phydev->dev;
 	const struct device_node *of_node = dev->of_node;
 	static const char *clk_skews[2] = {"rxc-skew-ps", "txc-skew-ps"};
 	static const char *rx_data_skews[4] = {
@@ -611,7 +611,7 @@ static int ksz8873mll_config_init(struct phy_device *phydev)
 
 static int kszphy_probe(struct phy_device *phydev)
 {
-	struct device_d *dev = &phydev->dev;
+	struct device *dev = &phydev->dev;
 	struct device_node *np = dev->of_node;
 	struct phy_driver *drv = to_phy_driver(dev->driver);
 	const struct kszphy_type *type = drv->driver_data;
diff --git a/drivers/net/phy/mv88e6xxx/chip.c b/drivers/net/phy/mv88e6xxx/chip.c
index 07df19e99b..dad0ba9b3d 100644
--- a/drivers/net/phy/mv88e6xxx/chip.c
+++ b/drivers/net/phy/mv88e6xxx/chip.c
@@ -837,7 +837,7 @@ static const struct nvmem_bus mv88e6xxx_eeprom_nvmem_bus = {
 	.read  = mv88e6xxx_eeprom_read,
 };
 
-static int mv88e6xxx_probe(struct device_d *dev)
+static int mv88e6xxx_probe(struct device *dev)
 {
 	struct device_node *np = dev->of_node;
 	struct device_node *mdio_node;
diff --git a/drivers/net/phy/mv88e6xxx/chip.h b/drivers/net/phy/mv88e6xxx/chip.h
index 30fdac9a9f..aec6c2891f 100644
--- a/drivers/net/phy/mv88e6xxx/chip.h
+++ b/drivers/net/phy/mv88e6xxx/chip.h
@@ -50,7 +50,7 @@ struct mv88e6xxx_chip {
 	const struct mv88e6xxx_info *info;
 	struct mii_bus *parent_miibus;
 	struct mii_bus miibus;
-	struct device_d *dev;
+	struct device *dev;
 	int reset;
 
 	/* Array of port structures. */
diff --git a/drivers/net/phy/mv88e6xxx/port.c b/drivers/net/phy/mv88e6xxx/port.c
index 5a00802361..9e538b1718 100644
--- a/drivers/net/phy/mv88e6xxx/port.c
+++ b/drivers/net/phy/mv88e6xxx/port.c
@@ -564,7 +564,7 @@ device_phy_driver(mv88e6xxx_port_driver);
 
 int mv88e6xxx_port_probe(struct mv88e6xxx_chip *chip)
 {
-	struct device_d *dev = chip->dev;
+	struct device *dev = chip->dev;
 	struct device_node *np = dev->of_node;
 	struct device_node *port_node, *switch_node;
 	struct device_node *port_nodes[DSA_MAX_PORTS] = { NULL };
diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index 7377cb014d..2c3a96bfc5 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -330,7 +330,7 @@ struct phy_device *of_phy_register_fixed_link(struct device_node *np,
 
 static struct phy_device *of_mdio_find_phy(struct eth_device *edev)
 {
-	struct device_d *dev;
+	struct device *dev;
 	struct device_node *phy_node;
 	struct mii_bus *bus;
 	int addr;
diff --git a/drivers/net/phy/realtek.c b/drivers/net/phy/realtek.c
index 4df3db1387..6e064c8f49 100644
--- a/drivers/net/phy/realtek.c
+++ b/drivers/net/phy/realtek.c
@@ -80,7 +80,7 @@ static int rtl8211c_config_init(struct phy_device *phydev)
 
 static int rtl8211f_config_init(struct phy_device *phydev)
 {
-	struct device_d *dev = &phydev->dev;
+	struct device *dev = &phydev->dev;
 	u16 val_txdly, val_rxdly;
 	int ret;
 
diff --git a/drivers/net/rtl8139.c b/drivers/net/rtl8139.c
index c133a542dc..bea888f08d 100644
--- a/drivers/net/rtl8139.c
+++ b/drivers/net/rtl8139.c
@@ -531,7 +531,7 @@ static int rtl8139_probe(struct pci_dev *pdev, const struct pci_device_id *id)
 	struct eth_device *edev;
 	struct rtl8139_priv *priv;
 	int ret;
-	struct device_d *dev = &pdev->dev;
+	struct device *dev = &pdev->dev;
 
 	/* enable pci device */
 	pci_enable_device(pdev);
diff --git a/drivers/net/rtl8169.c b/drivers/net/rtl8169.c
index e923e179bf..ffc4ef238b 100644
--- a/drivers/net/rtl8169.c
+++ b/drivers/net/rtl8169.c
@@ -494,7 +494,7 @@ static void rtl8169_eth_halt(struct eth_device *edev)
 
 static int rtl8169_probe(struct pci_dev *pdev, const struct pci_device_id *id)
 {
-	struct device_d *dev = &pdev->dev;
+	struct device *dev = &pdev->dev;
 	struct eth_device *edev;
 	struct rtl8169_priv *priv;
 	int ret;
diff --git a/drivers/net/sja1105.c b/drivers/net/sja1105.c
index e1161df31f..1b36ba748e 100644
--- a/drivers/net/sja1105.c
+++ b/drivers/net/sja1105.c
@@ -297,7 +297,7 @@ struct sja1105_private {
 	u16 pvid[SJA1105_MAX_NUM_PORTS];
 	struct sja1105_xpcs_cfg xpcs_cfg[SJA1105_MAX_NUM_PORTS];
 	const struct sja1105_dcfg *dcfg;
-	struct device_d *dev;
+	struct device *dev;
 	struct dsa_switch ds;
 	struct spi_device *spidev;
 	size_t max_xfer_len;
@@ -1963,7 +1963,7 @@ static int sja1105_rgmii_clocking_setup(struct sja1105_private *priv, int port,
 					enum sja1105_mii_role role)
 {
 	struct sja1105_mac_config_entry *mac;
-	struct device_d *dev = priv->dev;
+	struct device *dev = priv->dev;
 	u64 speed;
 	int rc = -EINVAL;
 
@@ -2660,7 +2660,7 @@ static int sja1105_static_config_reload(struct sja1105_private *priv)
 static int sja1105_port_set_mode(struct dsa_port *dp, int port,
 				 phy_interface_t phy_mode)
 {
-	struct device_d *dev = dp->ds->dev;
+	struct device *dev = dp->ds->dev;
 	struct sja1105_private *priv = dev_get_priv(dev);
 	struct sja1105_xmii_params_entry *mii;
 
@@ -2716,7 +2716,7 @@ unsupported:
 static int sja1105_port_pre_enable(struct dsa_port *dp, int port,
 				   phy_interface_t phy_mode)
 {
-	struct device_d *dev = dp->ds->dev;
+	struct device *dev = dp->ds->dev;
 	struct sja1105_private *priv = dev_get_priv(dev);
 	int ret;
 
@@ -2730,7 +2730,7 @@ static int sja1105_port_pre_enable(struct dsa_port *dp, int port,
 static int sja1105_port_enable(struct dsa_port *dp, int port,
 			       struct phy_device *phy)
 {
-	struct device_d *dev = dp->ds->dev;
+	struct device *dev = dp->ds->dev;
 	struct sja1105_private *priv = dev_get_priv(dev);
 	phy_interface_t phy_mode = phy->interface;
 	struct sja1105_xmii_params_entry *mii;
@@ -2871,7 +2871,7 @@ static int sja1105_check_device_id(struct sja1105_private *priv)
 }
 
 /* Configure the optional reset pin and bring up switch */
-static int sja1105_hw_reset(struct device_d *dev, unsigned int pulse_len,
+static int sja1105_hw_reset(struct device *dev, unsigned int pulse_len,
 			    unsigned int startup_delay)
 {
 	int gpio;
@@ -2890,7 +2890,7 @@ static int sja1105_hw_reset(struct device_d *dev, unsigned int pulse_len,
 	return 0;
 }
 
-static int sja1105_probe(struct device_d *dev)
+static int sja1105_probe(struct device *dev)
 {
 	struct spi_device *spi = dev->type_data;
 	const struct sja1105_dcfg *dcfg;
diff --git a/drivers/net/smc91111.c b/drivers/net/smc91111.c
index 3b23bfedfd..9a3cfde3a3 100644
--- a/drivers/net/smc91111.c
+++ b/drivers/net/smc91111.c
@@ -1434,7 +1434,7 @@ static int smc91c111_init_dev(struct eth_device *edev)
 	return 0;
 }
 
-static int smc91c111_probe(struct device_d *dev)
+static int smc91c111_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct eth_device *edev;
diff --git a/drivers/net/smc911x.c b/drivers/net/smc911x.c
index c660b1d13f..97a209ad2d 100644
--- a/drivers/net/smc911x.c
+++ b/drivers/net/smc911x.c
@@ -481,7 +481,7 @@ static int smc911x_init_dev(struct eth_device *edev)
 	return 0;
 }
 
-static int smc911x_probe(struct device_d *dev)
+static int smc911x_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct eth_device *edev;
diff --git a/drivers/net/tap.c b/drivers/net/tap.c
index 8a659c125e..10c91e6b37 100644
--- a/drivers/net/tap.c
+++ b/drivers/net/tap.c
@@ -59,7 +59,7 @@ static int tap_set_ethaddr(struct eth_device *edev, const unsigned char *adr)
 	return 0;
 }
 
-static int tap_probe(struct device_d *dev)
+static int tap_probe(struct device *dev)
 {
 	struct eth_device *edev;
 	struct tap_priv *priv;
diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 4966fc199d..79a5f9325e 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -601,7 +601,7 @@ EXPORT_SYMBOL_GPL(nvme_init_identify);
  * earliest initialization so that we have the initialized structured around
  * during probing.
  */
-int nvme_init_ctrl(struct nvme_ctrl *ctrl, struct device_d *dev,
+int nvme_init_ctrl(struct nvme_ctrl *ctrl, struct device *dev,
 		   const struct nvme_ctrl_ops *ops)
 {
 	static int instance = 0;
diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
index 80c988632f..90121bd7a3 100644
--- a/drivers/nvme/host/nvme.h
+++ b/drivers/nvme/host/nvme.h
@@ -30,7 +30,7 @@ struct nvme_request {
 
 struct nvme_ctrl {
 	const struct nvme_ctrl_ops *ops;
-	struct device_d *dev;
+	struct device *dev;
 	int instance;
 
 	u32 ctrl_config;
@@ -104,7 +104,7 @@ static inline void nvme_end_request(struct nvme_request *rq, __le16 status,
 int nvme_disable_ctrl(struct nvme_ctrl *ctrl, u64 cap);
 int nvme_enable_ctrl(struct nvme_ctrl *ctrl, u64 cap);
 int nvme_shutdown_ctrl(struct nvme_ctrl *ctrl);
-int nvme_init_ctrl(struct nvme_ctrl *ctrl, struct device_d *dev,
+int nvme_init_ctrl(struct nvme_ctrl *ctrl, struct device *dev,
 		   const struct nvme_ctrl_ops *ops);
 void nvme_start_ctrl(struct nvme_ctrl *ctrl);
 int nvme_init_identify(struct nvme_ctrl *ctrl);
diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index e513deff25..68280fe4a8 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -46,7 +46,7 @@ struct nvme_queue {
 struct nvme_dev {
 	struct nvme_queue queues[NVME_QID_NUM];
 	u32 __iomem *dbs;
-	struct device_d *dev;
+	struct device *dev;
 	unsigned online_queues;
 	unsigned max_qid;
 	int q_depth;
diff --git a/drivers/nvmem/bsec.c b/drivers/nvmem/bsec.c
index 937a1b223c..1bda25cd10 100644
--- a/drivers/nvmem/bsec.c
+++ b/drivers/nvmem/bsec.c
@@ -21,7 +21,7 @@
 #define BSEC_OTP_SERIAL	13
 
 struct bsec_priv {
-	struct device_d dev;
+	struct device dev;
 	u32 svc_id;
 	struct regmap_config map_config;
 	int permanent_write_enable;
@@ -108,7 +108,7 @@ static int stm32_bsec_read_mac(struct bsec_priv *priv, int offset, u8 *mac)
 	return 0;
 }
 
-static void stm32_bsec_init_dt(struct bsec_priv *priv, struct device_d *dev,
+static void stm32_bsec_init_dt(struct bsec_priv *priv, struct device *dev,
 			       struct regmap *map)
 {
 	struct device_node *node = dev->of_node;
@@ -141,7 +141,7 @@ static void stm32_bsec_init_dt(struct bsec_priv *priv, struct device_d *dev,
 	of_eth_register_ethaddr(rnode, mac);
 }
 
-static int stm32_bsec_probe(struct device_d *dev)
+static int stm32_bsec_probe(struct device *dev)
 {
 	struct regmap *map;
 	struct bsec_priv *priv;
diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
index c056b3b63a..cd3328a650 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -15,7 +15,7 @@
 
 struct nvmem_device {
 	const char		*name;
-	struct device_d		dev;
+	struct device		dev;
 	const struct nvmem_bus	*bus;
 	struct list_head	node;
 	int			stride;
@@ -95,7 +95,7 @@ static struct cdev_operations nvmem_chrdev_ops = {
 
 static int nvmem_register_cdev(struct nvmem_device *nvmem, const char *name)
 {
-	struct device_d *dev = &nvmem->dev;
+	struct device *dev = &nvmem->dev;
 	struct cdev *cdev = &nvmem->cdev;
 	const char *alias;
 	int ret;
@@ -325,7 +325,8 @@ EXPORT_SYMBOL_GPL(of_nvmem_device_get);
  * Return: ERR_PTR() on error or a valid pointer to a struct nvmem_device
  * on success.
  */
-struct nvmem_device *nvmem_device_get(struct device_d *dev, const char *dev_name)
+struct nvmem_device *nvmem_device_get(struct device *dev,
+				      const char *dev_name)
 {
 	if (dev->of_node) { /* try dt first */
 		struct nvmem_device *nvmem;
@@ -463,7 +464,7 @@ EXPORT_SYMBOL_GPL(of_nvmem_cell_get);
  * to a struct nvmem_cell.  The nvmem_cell will be freed by the
  * nvmem_cell_put().
  */
-struct nvmem_cell *nvmem_cell_get(struct device_d *dev, const char *cell_id)
+struct nvmem_cell *nvmem_cell_get(struct device *dev, const char *cell_id)
 {
 	struct nvmem_cell *cell;
 
@@ -817,7 +818,7 @@ EXPORT_SYMBOL_GPL(nvmem_cell_get_and_read);
  *
  * Return: 0 on success or negative errno.
  */
-int nvmem_cell_read_variable_le_u32(struct device_d *dev, const char *cell_id,
+int nvmem_cell_read_variable_le_u32(struct device *dev, const char *cell_id,
 				    u32 *val)
 {
 	size_t len;
diff --git a/drivers/nvmem/eeprom_93xx46.c b/drivers/nvmem/eeprom_93xx46.c
index 0340697f2a..b4aad88de3 100644
--- a/drivers/nvmem/eeprom_93xx46.c
+++ b/drivers/nvmem/eeprom_93xx46.c
@@ -367,7 +367,7 @@ static const struct nvmem_bus eeprom_93xx46_nvmem_bus = {
 	.read  = eeprom_93xx46_read,
 };
 
-static int eeprom_93xx46_probe(struct device_d *dev)
+static int eeprom_93xx46_probe(struct device *dev)
 {
 	struct spi_device *spi = (struct spi_device *)dev->type_data;
 	struct eeprom_93xx46_platform_data *pd;
diff --git a/drivers/nvmem/kvx-otp-nv.c b/drivers/nvmem/kvx-otp-nv.c
index d614c16e1e..5f3e71afda 100644
--- a/drivers/nvmem/kvx-otp-nv.c
+++ b/drivers/nvmem/kvx-otp-nv.c
@@ -58,7 +58,7 @@ static const struct of_device_id kvx_otp_nv_match[] = {
 	{ /* sentinel */},
 };
 
-static int kvx_otp_nv_probe(struct device_d *dev)
+static int kvx_otp_nv_probe(struct device *dev)
 {
 	struct resource *res;
 	struct nvmem_device *nvmem;
diff --git a/drivers/nvmem/ocotp.c b/drivers/nvmem/ocotp.c
index d3d05fe46f..b420b3b68f 100644
--- a/drivers/nvmem/ocotp.c
+++ b/drivers/nvmem/ocotp.c
@@ -123,7 +123,7 @@ struct ocotp_priv {
 	struct regmap *map;
 	void __iomem *base;
 	struct clk *clk;
-	struct device_d dev;
+	struct device dev;
 	int permanent_write_enable;
 	int sense_enable;
 	struct ocotp_priv_ethaddr ethaddr[MAX_MAC_OFFSETS];
@@ -714,7 +714,7 @@ static const struct nvmem_bus imx_ocotp_nvmem_bus = {
 	.read  = imx_ocotp_read,
 };
 
-static int imx_ocotp_probe(struct device_d *dev)
+static int imx_ocotp_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct ocotp_priv *priv;
diff --git a/drivers/nvmem/rave-sp-eeprom.c b/drivers/nvmem/rave-sp-eeprom.c
index 7aef0d90a9..987ab1a4f5 100644
--- a/drivers/nvmem/rave-sp-eeprom.c
+++ b/drivers/nvmem/rave-sp-eeprom.c
@@ -285,7 +285,7 @@ static const struct nvmem_bus rave_sp_eeprom_nvmem_bus = {
 	.read  = rave_sp_eeprom_read,
 };
 
-static int rave_sp_eeprom_probe(struct device_d *dev)
+static int rave_sp_eeprom_probe(struct device *dev)
 {
 	struct rave_sp *sp = dev->parent->priv;
 	struct nvmem_config config = { 0 };
diff --git a/drivers/nvmem/rmem.c b/drivers/nvmem/rmem.c
index b9331f48ff..19b404402a 100644
--- a/drivers/nvmem/rmem.c
+++ b/drivers/nvmem/rmem.c
@@ -9,7 +9,7 @@
 #include <init.h>
 
 struct rmem {
-	struct device_d *dev;
+	struct device *dev;
 	const struct resource *mem;
 };
 
@@ -25,7 +25,7 @@ static struct nvmem_bus rmem_nvmem_bus = {
 	.read = rmem_read,
 };
 
-static int rmem_probe(struct device_d *dev)
+static int rmem_probe(struct device *dev)
 {
 	struct nvmem_config config = { };
 	struct resource *mem;
diff --git a/drivers/nvmem/snvs_lpgpr.c b/drivers/nvmem/snvs_lpgpr.c
index 4d0d5779c0..d67d94fcd0 100644
--- a/drivers/nvmem/snvs_lpgpr.c
+++ b/drivers/nvmem/snvs_lpgpr.c
@@ -27,7 +27,7 @@ struct snvs_lpgpr_cfg {
 };
 
 struct snvs_lpgpr_priv {
-	struct device_d			*dev;
+	struct device			*dev;
 	struct regmap			*regmap;
 	struct nvmem_config		cfg;
 	const struct snvs_lpgpr_cfg	*dcfg;
@@ -78,7 +78,7 @@ static const struct nvmem_bus snvs_lpgpr_nvmem_bus = {
 	.read  = snvs_lpgpr_read,
 };
 
-static int snvs_lpgpr_probe(struct device_d *dev)
+static int snvs_lpgpr_probe(struct device *dev)
 {
 	struct device_node *node = dev->of_node;
 	struct device_node *syscon_node;
diff --git a/drivers/nvmem/starfive-otp.c b/drivers/nvmem/starfive-otp.c
index 0f668abdcc..06ede3510c 100644
--- a/drivers/nvmem/starfive-otp.c
+++ b/drivers/nvmem/starfive-otp.c
@@ -138,7 +138,7 @@ static struct regmap_bus starfive_otp_regmap_bus = {
 	.reg_write = starfive_otp_write,
 };
 
-static int starfive_otp_probe(struct device_d *dev)
+static int starfive_otp_probe(struct device *dev)
 {
 	struct starfive_otp *priv;
 	struct regmap_config config = {};
diff --git a/drivers/of/barebox.c b/drivers/of/barebox.c
index 23319c336a..a605d2445d 100644
--- a/drivers/of/barebox.c
+++ b/drivers/of/barebox.c
@@ -18,7 +18,7 @@
 /* If dev describes a file on a fs, mount the fs and change devpath to
  * point to the file's path.  Otherwise leave devpath alone.  Does
  * nothing in env in a file support isn't enabled.  */
-static int environment_check_mount(struct device_d *dev, char **devpath)
+static int environment_check_mount(struct device *dev, char **devpath)
 {
 	const char *filepath;
 	int ret;
@@ -52,7 +52,7 @@ static int environment_check_mount(struct device_d *dev, char **devpath)
 	return 0;
 }
 
-static int environment_probe(struct device_d *dev)
+static int environment_probe(struct device *dev)
 {
 	char *path;
 	int ret;
diff --git a/drivers/of/base.c b/drivers/of/base.c
index 447cbb0e2f..189349f89b 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -739,7 +739,7 @@ struct device_node *of_find_matching_node_and_match(struct device_node *from,
 }
 EXPORT_SYMBOL(of_find_matching_node_and_match);
 
-int of_match(struct device_d *dev, struct driver_d *drv)
+int of_match(struct device *dev, struct driver_d *drv)
 {
 	const struct of_device_id *id;
 
@@ -2514,7 +2514,7 @@ mem_initcall(of_probe_memory);
 
 static void of_platform_device_create_root(struct device_node *np)
 {
-	static struct device_d *dev;
+	static struct device *dev;
 	int ret;
 
 	if (dev)
@@ -2698,7 +2698,7 @@ struct device_node *of_get_stdoutpath(unsigned int *baudrate)
 	return dn;
 }
 
-int of_device_is_stdout_path(struct device_d *dev, unsigned int *baudrate)
+int of_device_is_stdout_path(struct device *dev, unsigned int *baudrate)
 {
 	unsigned int tmp = *baudrate;
 
diff --git a/drivers/of/device.c b/drivers/of/device.c
index 5d3d016e03..77c027b57e 100644
--- a/drivers/of/device.c
+++ b/drivers/of/device.c
@@ -12,7 +12,7 @@
  * system is in its list of supported devices.
  */
 const struct of_device_id *of_match_device(const struct of_device_id *matches,
-					   const struct device_d *dev)
+					   const struct device *dev)
 {
 	if ((!matches) || (!dev->of_node))
 		return NULL;
@@ -21,7 +21,7 @@ const struct of_device_id *of_match_device(const struct of_device_id *matches,
 }
 EXPORT_SYMBOL(of_match_device);
 
-const void *of_device_get_match_data(const struct device_d *dev)
+const void *of_device_get_match_data(const struct device *dev)
 {
 	const struct of_device_id *match;
 
@@ -33,7 +33,7 @@ const void *of_device_get_match_data(const struct device_d *dev)
 }
 EXPORT_SYMBOL(of_device_get_match_data);
 
-const char *of_device_get_match_compatible(const struct device_d *dev)
+const char *of_device_get_match_compatible(const struct device *dev)
 {
 	const struct of_device_id *match;
 
diff --git a/drivers/of/of_gpio.c b/drivers/of/of_gpio.c
index c23923b425..b662563742 100644
--- a/drivers/of/of_gpio.c
+++ b/drivers/of/of_gpio.c
@@ -61,7 +61,7 @@ int of_get_named_gpio_flags(struct device_node *np, const char *propname,
 			   int index, enum of_gpio_flags *flags)
 {
 	struct of_phandle_args out_args;
-	struct device_d *dev;
+	struct device *dev;
 	int of_flags;
 	int ret;
 
diff --git a/drivers/of/of_path.c b/drivers/of/of_path.c
index bac95a6edf..1268cf36ee 100644
--- a/drivers/of/of_path.c
+++ b/drivers/of/of_path.c
@@ -12,9 +12,9 @@
 
 #include <linux/mtd/mtd.h>
 
-struct device_d *of_find_device_by_node_path(const char *path)
+struct device *of_find_device_by_node_path(const char *path)
 {
-	struct device_d *dev;
+	struct device *dev;
 
 	for_each_device(dev) {
 		if (!dev->of_node)
@@ -39,7 +39,7 @@ struct device_d *of_find_device_by_node_path(const char *path)
  */
 static int __of_find_path(struct device_node *node, const char *part, char **outpath, unsigned flags)
 {
-	struct device_d *dev;
+	struct device *dev;
 	struct cdev *cdev;
 	bool add_bb = false;
 
diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index ac51a6f8e1..725ceeb150 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -19,9 +19,9 @@
  *
  * Returns platform_device pointer, or NULL if not found
  */
-struct device_d *of_find_device_by_node(struct device_node *np)
+struct device *of_find_device_by_node(struct device_node *np)
 {
-	struct device_d *dev;
+	struct device *dev;
 	int ret;
 
 	ret = of_device_ensure_probed(np);
@@ -46,7 +46,7 @@ EXPORT_SYMBOL(of_find_device_by_node);
  * derive a unique name. If it cannot, then it will prepend names from
  * parent nodes until a unique name can be derived.
  */
-static void of_device_make_bus_id(struct device_d *dev)
+static void of_device_make_bus_id(struct device *dev)
 {
 	struct device_node *node = dev->of_node;
 	const __be32 *reg;
@@ -114,7 +114,7 @@ bool of_dma_is_coherent(struct device_node *node)
 }
 EXPORT_SYMBOL_GPL(of_dma_is_coherent);
 
-static void of_dma_configure(struct device_d *dev, struct device_node *np)
+static void of_dma_configure(struct device *dev, struct device_node *np)
 {
 	u64 dma_addr, paddr, size = 0;
 	unsigned long offset;
@@ -138,10 +138,10 @@ static void of_dma_configure(struct device_d *dev, struct device_node *np)
  * Returns pointer to created platform device, or NULL if a device was not
  * registered. Unavailable devices will not get registered.
  */
-struct device_d *of_platform_device_create(struct device_node *np,
-						struct device_d *parent)
+struct device *of_platform_device_create(struct device_node *np,
+						struct device *parent)
 {
-	struct device_d *dev;
+	struct device *dev;
 	struct resource *res = NULL, temp_res;
 	resource_size_t resinval;
 	int i, ret, num_reg = 0;
@@ -209,7 +209,7 @@ struct driver_d dummy_driver = {
 	.name = "dummy-driver",
 };
 
-void of_platform_device_dummy_drv(struct device_d *dev)
+void of_platform_device_dummy_drv(struct device *dev)
 {
 	dev->driver = &dummy_driver;
 }
@@ -221,9 +221,9 @@ void of_platform_device_dummy_drv(struct device_d *dev)
  * Returns pointer to created platform device, or NULL if a device was not
  * registered. Unavailable devices will not get registered.
  */
-struct device_d *of_device_enable_and_register(struct device_node *np)
+struct device *of_device_enable_and_register(struct device_node *np)
 {
-	struct device_d *dev;
+	struct device *dev;
 
 	of_device_enable(np);
 
@@ -242,7 +242,7 @@ EXPORT_SYMBOL(of_device_enable_and_register);
  * Returns pointer to created platform device, or NULL if a device was not
  * registered. Unavailable devices will not get registered.
  */
-struct device_d *of_device_enable_and_register_by_name(const char *name)
+struct device *of_device_enable_and_register_by_name(const char *name)
 {
 	struct device_node *node;
 
@@ -264,7 +264,7 @@ EXPORT_SYMBOL(of_device_enable_and_register_by_name);
  * Returns pointer to created platform device, or NULL if a device was not
  * registered. Unavailable devices will not get registered.
  */
-struct device_d *of_device_enable_and_register_by_alias(const char *alias)
+struct device *of_device_enable_and_register_by_alias(const char *alias)
 {
 	struct device_node *node;
 
@@ -277,7 +277,7 @@ struct device_d *of_device_enable_and_register_by_alias(const char *alias)
 EXPORT_SYMBOL(of_device_enable_and_register_by_alias);
 
 #ifdef CONFIG_ARM_AMBA
-static struct device_d *of_amba_device_create(struct device_node *np)
+static struct device *of_amba_device_create(struct device_node *np)
 {
 	struct amba_device *dev;
 	int ret;
@@ -327,7 +327,7 @@ amba_err_free:
 	return NULL;
 }
 #else /* CONFIG_ARM_AMBA */
-static inline struct device_d *of_amba_device_create(struct device_node *np)
+static inline struct device *of_amba_device_create(struct device_node *np)
 {
 	return NULL;
 }
@@ -344,10 +344,10 @@ static inline struct device_d *of_amba_device_create(struct device_node *np)
  */
 static int of_platform_bus_create(struct device_node *bus,
 				const struct of_device_id *matches,
-				struct device_d *parent)
+				struct device *parent)
 {
 	struct device_node *child;
-	struct device_d *dev;
+	struct device *dev;
 	int rc = 0;
 
 	/* Make sure it has a compatible property */
@@ -390,7 +390,7 @@ static int of_platform_bus_create(struct device_node *bus,
  */
 int of_platform_populate(struct device_node *root,
 			const struct of_device_id *matches,
-			struct device_d *parent)
+			struct device *parent)
 {
 	struct device_node *child;
 	int rc = 0;
@@ -410,10 +410,10 @@ int of_platform_populate(struct device_node *root,
 }
 EXPORT_SYMBOL_GPL(of_platform_populate);
 
-static struct device_d *of_device_create_on_demand(struct device_node *np)
+static struct device *of_device_create_on_demand(struct device_node *np)
 {
 	struct device_node *parent;
-	struct device_d *parent_dev, *dev;
+	struct device *parent_dev, *dev;
 
 	parent = of_get_parent(np);
 	if (!parent)
@@ -457,7 +457,7 @@ static struct device_d *of_device_create_on_demand(struct device_node *np)
  */
 int of_device_ensure_probed(struct device_node *np)
 {
-	struct device_d *dev;
+	struct device *dev;
 
 	if (!deep_probe_is_supported())
 		return 0;
diff --git a/drivers/pci/bus.c b/drivers/pci/bus.c
index e238b24c02..e812c1bb8d 100644
--- a/drivers/pci/bus.c
+++ b/drivers/pci/bus.c
@@ -50,7 +50,7 @@ const struct pci_device_id *pci_match_id(const struct pci_device_id *ids,
 }
 EXPORT_SYMBOL(pci_match_id);
 
-static int pci_match(struct device_d *dev, struct driver_d *drv)
+static int pci_match(struct device *dev, struct driver_d *drv)
 {
 	struct pci_dev *pdev = to_pci_dev(dev);
 	struct pci_driver *pdrv = to_pci_driver(drv);
@@ -65,7 +65,7 @@ static int pci_match(struct device_d *dev, struct driver_d *drv)
 	return -1;
 }
 
-static int pci_probe(struct device_d *dev)
+static int pci_probe(struct device *dev)
 {
 	struct pci_dev *pdev = to_pci_dev(dev);
 	struct pci_driver *pdrv = to_pci_driver(dev->driver);
@@ -73,7 +73,7 @@ static int pci_probe(struct device_d *dev)
 	return pdrv->probe(pdev, pdev->id);
 }
 
-static void pci_remove(struct device_d *dev)
+static void pci_remove(struct device *dev)
 {
 	struct pci_dev *pdev = to_pci_dev(dev);
 	struct pci_driver *pdrv = to_pci_driver(dev->driver);
@@ -111,7 +111,7 @@ int pci_register_driver(struct pci_driver *pdrv)
 int pci_register_device(struct pci_dev *pdev)
 {
 	char str[6];
-	struct device_d *dev = &pdev->dev;
+	struct device *dev = &pdev->dev;
 	int ret;
 
 	dev_set_name(dev, "pci-%04x:%04x.", pdev->vendor, pdev->device);
diff --git a/drivers/pci/pci-ecam-generic.c b/drivers/pci/pci-ecam-generic.c
index 61de58f7d8..a5ae69dbad 100644
--- a/drivers/pci/pci-ecam-generic.c
+++ b/drivers/pci/pci-ecam-generic.c
@@ -128,7 +128,7 @@ static inline bool is_64bit(const struct resource *res)
 
 static int pcie_ecam_parse_dt(struct generic_ecam_pcie *ecam)
 {
-	struct device_d *dev = ecam->pci.parent;
+	struct device *dev = ecam->pci.parent;
 	struct device_node *np = dev->of_node;
 	struct of_pci_range_parser parser;
 	struct of_pci_range range;
@@ -167,7 +167,7 @@ static int pcie_ecam_parse_dt(struct generic_ecam_pcie *ecam)
 	return 0;
 }
 
-static int pcie_ecam_probe(struct device_d *dev)
+static int pcie_ecam_probe(struct device *dev)
 {
 	struct generic_ecam_pcie *ecam;
 	struct resource *iores;
diff --git a/drivers/pci/pci-efi.c b/drivers/pci/pci-efi.c
index d107ff548d..67868d09b6 100644
--- a/drivers/pci/pci-efi.c
+++ b/drivers/pci/pci-efi.c
@@ -17,7 +17,7 @@
 
 struct efi_pci_priv {
 	struct efi_pci_root_bridge_io_protocol *protocol;
-	struct device_d *dev;
+	struct device *dev;
 	struct pci_controller pci;
 	struct resource mem;
 	struct resource mem_pref;
@@ -34,7 +34,7 @@ struct pci_child_id {
 
 struct pci_child {
 	struct efi_pci_io_protocol *protocol;
-	struct device_d *dev;
+	struct device *dev;
 	struct list_head list;
 	struct pci_child_id id;
 };
@@ -268,7 +268,7 @@ DECLARE_PCI_FIXUP_EARLY(PCI_ANY_ID, PCI_ANY_ID, efi_pci_fixup_dev_parent);
 
 static int efi_pci_probe(struct efi_device *efidev)
 {
-	struct device_d *child;
+	struct device *child;
 	struct efi_pci_priv *priv;
 	efi_status_t efiret;
 	void *resources;
diff --git a/drivers/pci/pci-imx6.c b/drivers/pci/pci-imx6.c
index a65c251669..ad44cedef0 100644
--- a/drivers/pci/pci-imx6.c
+++ b/drivers/pci/pci-imx6.c
@@ -297,7 +297,7 @@ static unsigned int imx6_pcie_grp_offset(const struct imx6_pcie *imx6_pcie)
 
 static int imx6_pcie_enable_ref_clk(struct imx6_pcie *imx6_pcie)
 {
-	struct device_d *dev = imx6_pcie->pci->dev;
+	struct device *dev = imx6_pcie->pci->dev;
 	u32 gpr1, gpr1x;
 	unsigned int offset;
 	int ret;
@@ -351,7 +351,7 @@ static void imx7d_pcie_wait_for_phy_pll_lock(struct imx6_pcie *imx6_pcie)
 {
 	u32 val;
 	unsigned int retries;
-	struct device_d *dev = imx6_pcie->pci->dev;
+	struct device *dev = imx6_pcie->pci->dev;
 
 	for (retries = 0; retries < PHY_PLL_LOCK_WAIT_MAX_RETRIES; retries++) {
 		val = readl(imx6_pcie->iomuxc_gpr + IOMUXC_GPR22);
@@ -367,7 +367,7 @@ static void imx7d_pcie_wait_for_phy_pll_lock(struct imx6_pcie *imx6_pcie)
 
 static void imx6_pcie_deassert_core_reset(struct imx6_pcie *imx6_pcie)
 {
-	struct device_d *dev = imx6_pcie->pci->dev;
+	struct device *dev = imx6_pcie->pci->dev;
 	int ret;
 	u32 gpr1;
 
@@ -525,7 +525,7 @@ static int imx6_pcie_wait_for_link(struct imx6_pcie *imx6_pcie)
 static int imx6_pcie_wait_for_speed_change(struct imx6_pcie *imx6_pcie)
 {
 	struct dw_pcie *pci = imx6_pcie->pci;
-	struct device_d *dev = pci->dev;
+	struct device *dev = pci->dev;
 	uint32_t tmp;
 	uint64_t start = get_time_ns();
 
@@ -540,7 +540,7 @@ static int imx6_pcie_wait_for_speed_change(struct imx6_pcie *imx6_pcie)
 	return -EINVAL;
 }
 
-static void imx6_pcie_ltssm_enable(struct device_d *dev)
+static void imx6_pcie_ltssm_enable(struct device *dev)
 {
 	struct imx6_pcie *imx6_pcie = dev->priv;
 	u32 gpr12;
@@ -562,7 +562,7 @@ static void imx6_pcie_ltssm_enable(struct device_d *dev)
 static int imx6_pcie_establish_link(struct imx6_pcie *imx6_pcie)
 {
 	struct dw_pcie *pci = imx6_pcie->pci;
-	struct device_d *dev = pci->dev;
+	struct device *dev = pci->dev;
 	uint32_t tmp;
 	int ret;
 
@@ -669,7 +669,7 @@ static const struct dw_pcie_host_ops imx6_pcie_host_ops = {
 };
 
 static int imx6_add_pcie_port(struct imx6_pcie *imx6_pcie,
-			      struct device_d *dev)
+			      struct device *dev)
 {
 	struct dw_pcie *pci = imx6_pcie->pci;
 	struct pcie_port *pp = &pci->pp;
@@ -686,7 +686,7 @@ static int imx6_add_pcie_port(struct imx6_pcie *imx6_pcie,
 	return 0;
 }
 
-static int imx6_pcie_probe(struct device_d *dev)
+static int imx6_pcie_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct dw_pcie *pci;
@@ -814,7 +814,7 @@ static int imx6_pcie_probe(struct device_d *dev)
 	return 0;
 }
 
-static void imx6_pcie_remove(struct device_d *dev)
+static void imx6_pcie_remove(struct device *dev)
 {
 	struct imx6_pcie *imx6_pcie = dev->priv;
 
diff --git a/drivers/pci/pci-layerscape.c b/drivers/pci/pci-layerscape.c
index 130d1dccdb..1bf9695c71 100644
--- a/drivers/pci/pci-layerscape.c
+++ b/drivers/pci/pci-layerscape.c
@@ -217,7 +217,7 @@ static int ls1021_pcie_host_init(struct pcie_port *pp)
 {
 	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
 	struct ls_pcie *pcie = to_ls_pcie(pci);
-	struct device_d *dev = pci->dev;
+	struct device *dev = pci->dev;
 	u32 index[2];
 	int ret;
 
@@ -317,7 +317,7 @@ static int __init ls_add_pcie_port(struct ls_pcie *pcie)
 {
 	struct dw_pcie *pci = &pcie->pci;
 	struct pcie_port *pp = &pci->pp;
-	struct device_d *dev = pci->dev;
+	struct device *dev = pci->dev;
 	int ret;
 
 	pp->ops = pcie->drvdata->ops;
@@ -369,7 +369,7 @@ BAREBOX_MAGICVAR(global.layerscape_pcie.share_stream_ids,
 static int ls_pcie_of_fixup(struct device_node *root, void *ctx)
 {
 	struct ls_pcie *pcie = ctx;
-	struct device_d *dev = pcie->pci.dev;
+	struct device *dev = pcie->pci.dev;
 	struct device_node *np;
 	phandle iommu_handle = 0;
 	char *name;
@@ -479,7 +479,7 @@ out:
 	return ret;
 }
 
-static int __init ls_pcie_probe(struct device_d *dev)
+static int __init ls_pcie_probe(struct device *dev)
 {
 	struct dw_pcie *pci;
 	struct ls_pcie *pcie;
diff --git a/drivers/pci/pci-mvebu.c b/drivers/pci/pci-mvebu.c
index ea07aa734f..6ce64afd5d 100644
--- a/drivers/pci/pci-mvebu.c
+++ b/drivers/pci/pci-mvebu.c
@@ -262,7 +262,7 @@ static int mvebu_get_target_attr(struct device_node *np, int devfn,
 	return -ENOENT;
 }
 
-static struct mvebu_pcie *mvebu_pcie_port_probe(struct device_d *dev,
+static struct mvebu_pcie *mvebu_pcie_port_probe(struct device *dev,
 						struct device_node *np)
 {
 	struct mvebu_pcie *pcie;
@@ -396,7 +396,7 @@ static struct of_device_id mvebu_pcie_dt_ids[] = {
 	{ },
 };
 
-static int mvebu_pcie_probe(struct device_d *dev)
+static int mvebu_pcie_probe(struct device *dev)
 {
 	struct device_node *np = dev->of_node;
 	const struct of_device_id *match = of_match_node(mvebu_pcie_dt_ids, np);
diff --git a/drivers/pci/pci-tegra.c b/drivers/pci/pci-tegra.c
index 272f16d6d3..c518e6f88f 100644
--- a/drivers/pci/pci-tegra.c
+++ b/drivers/pci/pci-tegra.c
@@ -214,7 +214,7 @@ struct tegra_pcie_soc_data {
 };
 
 struct tegra_pcie {
-	struct device_d *dev;
+	struct device *dev;
 	struct pci_controller pci;
 
 	void __iomem *pads;
@@ -827,7 +827,7 @@ static int tegra_pcie_resets_get(struct tegra_pcie *pcie)
 
 static int tegra_pcie_get_resources(struct tegra_pcie *pcie)
 {
-	struct device_d *dev = pcie->dev;
+	struct device *dev = pcie->dev;
 	int err;
 
 	err = tegra_pcie_clocks_get(pcie);
@@ -1231,7 +1231,7 @@ static __maybe_unused struct of_device_id tegra_pcie_of_match[] = {
 	},
 };
 
-static int tegra_pcie_probe(struct device_d *dev)
+static int tegra_pcie_probe(struct device *dev)
 {
 	struct tegra_pcie *pcie;
 	int err;
diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index d46d996efd..53e8faeb3e 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -341,7 +341,7 @@ static void postscan_setup_bridge(struct pci_dev *dev)
 }
 
 static struct device_node *
-pci_of_match_device(struct device_d *parent, unsigned int devfn)
+pci_of_match_device(struct device *parent, unsigned int devfn)
 {
 	struct device_node *np;
 	u32 reg;
diff --git a/drivers/pci/pcie-designware-host.c b/drivers/pci/pcie-designware-host.c
index 34a6dd06d8..c143de4eef 100644
--- a/drivers/pci/pcie-designware-host.c
+++ b/drivers/pci/pcie-designware-host.c
@@ -71,7 +71,7 @@ static void dw_pcie_set_local_bus_nr(struct pci_controller *host, int busno)
 int __init dw_pcie_host_init(struct pcie_port *pp)
 {
 	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
-	struct device_d *dev = pci->dev;
+	struct device *dev = pci->dev;
 	struct device_node *np = dev->of_node;
 	struct of_pci_range range;
 	struct of_pci_range_parser parser;
diff --git a/drivers/pci/pcie-designware.c b/drivers/pci/pcie-designware.c
index 2b3a01c7b6..9c8bc772f9 100644
--- a/drivers/pci/pcie-designware.c
+++ b/drivers/pci/pcie-designware.c
@@ -281,7 +281,7 @@ void dw_pcie_setup(struct dw_pcie *pci)
 	int ret;
 	u32 val;
 	u32 lanes;
-	struct device_d *dev = pci->dev;
+	struct device *dev = pci->dev;
 	struct device_node *np = dev->of_node;
 
 	if (pci->version >= 0x480A || (!pci->version &&
diff --git a/drivers/pci/pcie-designware.h b/drivers/pci/pcie-designware.h
index 7a4516dd1b..4bb0795d06 100644
--- a/drivers/pci/pcie-designware.h
+++ b/drivers/pci/pcie-designware.h
@@ -180,7 +180,7 @@ struct dw_pcie_ops {
 };
 
 struct dw_pcie {
-	struct device_d         *dev;
+	struct device         *dev;
 	void __iomem            *dbi_base;
 	/* Used when iatu_unroll_enabled is true */
 	void __iomem            *atu_base;
diff --git a/drivers/phy/freescale/phy-fsl-imx8mq-usb.c b/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
index fc5fb006b5..7ad6ca41a8 100644
--- a/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
+++ b/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
@@ -142,7 +142,7 @@ static const struct of_device_id imx8mq_usb_phy_of_match[] = {
 	{ }
 };
 
-static struct phy *imx8mq_usb_phy_xlate(struct device_d *dev,
+static struct phy *imx8mq_usb_phy_xlate(struct device *dev,
 					struct of_phandle_args *args)
 {
 	struct imx8mq_usb_phy *imx_phy = dev->priv;
@@ -150,7 +150,7 @@ static struct phy *imx8mq_usb_phy_xlate(struct device_d *dev,
 	return imx_phy->phy;
 }
 
-static int imx8mq_usb_phy_probe(struct device_d *dev)
+static int imx8mq_usb_phy_probe(struct device *dev)
 {
 	struct phy_provider *phy_provider;
 	struct imx8mq_usb_phy *imx_phy;
diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index 1e6fa4d6c2..d3a7847ee8 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -24,7 +24,7 @@ static int phy_ida;
  *
  * Called to create a phy using phy framework.
  */
-struct phy *phy_create(struct device_d *dev, struct device_node *node,
+struct phy *phy_create(struct device *dev, struct device_node *node,
 		       const struct phy_ops *ops)
 {
 	int ret;
@@ -79,9 +79,9 @@ free_ida:
  * This is used in the case of dt boot for finding the phy instance from
  * phy provider.
  */
-struct phy_provider *__of_phy_provider_register(struct device_d *dev,
-	struct phy * (*of_xlate)(struct device_d *dev,
-	struct of_phandle_args *args))
+struct phy_provider *__of_phy_provider_register(struct device *dev,
+						struct phy * (*of_xlate)(struct device *dev,
+									 struct of_phandle_args *args))
 {
 	struct phy_provider *phy_provider;
 
@@ -295,7 +295,7 @@ struct phy *of_phy_get(struct device_node *np, const char *con_id)
  * -ENODEV if there is no such phy. The caller is responsible for
  * calling phy_put() to release that count.
  */
-struct phy *of_phy_get_by_phandle(struct device_d *dev, const char *phandle,
+struct phy *of_phy_get_by_phandle(struct device *dev, const char *phandle,
 				  u8 index)
 {
 	struct device_node *np;
@@ -331,7 +331,7 @@ struct phy *of_phy_get_by_phandle(struct device_d *dev, const char *phandle,
  * -ENODEV if there is no such phy.  The caller is responsible for
  * calling phy_put() to release that count.
  */
-struct phy *phy_get(struct device_d *dev, const char *string)
+struct phy *phy_get(struct device *dev, const char *string)
 {
 	int index = 0;
 	struct phy *phy = ERR_PTR(-ENODEV);
@@ -360,7 +360,7 @@ struct phy *phy_get(struct device_d *dev, const char *string)
  * NULL if there is no such phy.  The caller is responsible for
  * calling phy_put() to release that count.
  */
-struct phy *phy_optional_get(struct device_d *dev, const char *string)
+struct phy *phy_optional_get(struct device *dev, const char *string)
 {
 	struct phy *phy = phy_get(dev, string);
 
@@ -377,7 +377,7 @@ struct phy *phy_optional_get(struct device_d *dev, const char *string)
  *
  * Gets the phy using _of_phy_get()
  */
-struct phy *phy_get_by_index(struct device_d *dev, int index)
+struct phy *phy_get_by_index(struct device *dev, int index)
 {
 	if (!dev->of_node)
 		return ERR_PTR(-ENODEV);
diff --git a/drivers/phy/phy-stm32-usbphyc.c b/drivers/phy/phy-stm32-usbphyc.c
index 93547243b8..bf092907c6 100644
--- a/drivers/phy/phy-stm32-usbphyc.c
+++ b/drivers/phy/phy-stm32-usbphyc.c
@@ -62,7 +62,7 @@ struct stm32_usbphyc_phy {
 };
 
 struct stm32_usbphyc {
-	struct device_d *dev;
+	struct device *dev;
 	void __iomem *base;
 	struct clk *clk;
 	struct stm32_usbphyc_phy **phys;
@@ -306,7 +306,7 @@ static void stm32_usbphyc_switch_setup(struct stm32_usbphyc *usbphyc,
 	usbphyc->switch_setup = utmi_switch;
 }
 
-static struct phy *stm32_usbphyc_of_xlate(struct device_d *dev,
+static struct phy *stm32_usbphyc_of_xlate(struct device *dev,
 					  struct of_phandle_args *args)
 {
 	struct stm32_usbphyc *usbphyc = dev->priv;
@@ -348,7 +348,7 @@ static struct phy *stm32_usbphyc_of_xlate(struct device_d *dev,
 	return usbphyc_phy->phy;
 }
 
-static int stm32_usbphyc_probe(struct device_d *dev)
+static int stm32_usbphyc_probe(struct device *dev)
 {
 	struct stm32_usbphyc *usbphyc;
 	struct device_node *child, *np = dev->of_node;
@@ -423,7 +423,7 @@ static int stm32_usbphyc_probe(struct device_d *dev)
 
 	for_each_child_of_node(np, child) {
 		struct stm32_usbphyc_phy *usbphyc_phy;
-		struct device_d *phydev;
+		struct device *phydev;
 		struct phy *phy;
 		u32 index;
 
@@ -486,7 +486,7 @@ release_region:
 	return ret;
 }
 
-static void stm32_usbphyc_remove(struct device_d *dev)
+static void stm32_usbphyc_remove(struct device *dev)
 {
 	struct stm32_usbphyc *usbphyc = dev->priv;
 	int port;
diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
index f20477cd67..e8d48905fd 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
@@ -166,7 +166,7 @@ struct rockchip_usb2phy {
 	struct phy_provider *provider;
 	struct clk *clk480m;
 	struct clk_hw clk480m_hw;
-	struct device_d *dev;
+	struct device *dev;
 	struct clk *clk;
 };
 
@@ -255,8 +255,8 @@ static int rockchip_usb2phy_power_off(struct phy *phy)
 	return 0;
 }
 
-static struct phy *rockchip_usb2phy_of_xlate(struct device_d *dev,
-				     struct of_phandle_args *args)
+static struct phy *rockchip_usb2phy_of_xlate(struct device *dev,
+					     struct of_phandle_args *args)
 {
 	struct rockchip_usb2phy *rphy = dev->priv;
 	struct device_node *phynode = args->np;
@@ -379,7 +379,7 @@ err_ret:
 	return ret;
 }
 
-static int rockchip_usb2phy_probe(struct device_d *dev)
+static int rockchip_usb2phy_probe(struct device *dev)
 {
 	const struct rockchip_usb2phy_cfg *phy_cfgs;
 	struct rockchip_usb2phy *rphy;
@@ -431,7 +431,7 @@ static int rockchip_usb2phy_probe(struct device_d *dev)
 	for_each_child_of_node(np, child) {
 		struct rockchip_usb2phy_phy *p;
 		struct phy *phy;
-		struct device_d *phydev;
+		struct device *phydev;
 
 		if (!strcmp(child->name, "host-port")) {
 			port = USB2PHY_PORT_OTG;
diff --git a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
index 4d0fec6e7a..092ef2928a 100644
--- a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
+++ b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
@@ -79,7 +79,7 @@ struct rockchip_combphy_priv {
 	void __iomem *mmio;
 	int num_clks;
 	struct clk_bulk_data *clks;
-	struct device_d *dev;
+	struct device *dev;
 	struct regmap *pipe_grf;
 	struct regmap *phy_grf;
 	struct phy *phy;
@@ -265,7 +265,7 @@ static const struct phy_ops rochchip_combphy_ops = {
 	.exit = rockchip_combphy_exit,
 };
 
-static struct phy *rockchip_combphy_xlate(struct device_d *dev,
+static struct phy *rockchip_combphy_xlate(struct device *dev,
 					  struct of_phandle_args *args)
 {
 	struct rockchip_combphy_priv *priv = dev->priv;
@@ -284,7 +284,7 @@ static struct phy *rockchip_combphy_xlate(struct device_d *dev,
 	return priv->phy;
 }
 
-static int rockchip_combphy_parse_dt(struct device_d *dev,
+static int rockchip_combphy_parse_dt(struct device *dev,
 				     struct rockchip_combphy_priv *priv)
 {
 	struct device_node *np = dev->of_node;
@@ -329,7 +329,7 @@ static int rockchip_combphy_parse_dt(struct device_d *dev,
 	return reset_control_assert(priv->phy_rst);
 }
 
-static int rockchip_combphy_probe(struct device_d *dev)
+static int rockchip_combphy_probe(struct device *dev)
 {
 	struct phy_provider *phy_provider;
 	struct rockchip_combphy_priv *priv;
diff --git a/drivers/phy/usb-nop-xceiv.c b/drivers/phy/usb-nop-xceiv.c
index 86849120b8..ab50d97048 100644
--- a/drivers/phy/usb-nop-xceiv.c
+++ b/drivers/phy/usb-nop-xceiv.c
@@ -24,7 +24,7 @@ struct nop_usbphy {
 	int reset;
 };
 
-static struct phy *nop_usbphy_xlate(struct device_d *dev,
+static struct phy *nop_usbphy_xlate(struct device *dev,
 				    struct of_phandle_args *args)
 {
 	struct nop_usbphy *nopphy = dev->priv;
@@ -64,7 +64,7 @@ static const struct phy_ops nop_phy_ops = {
 	.init = nop_usbphy_init,
 };
 
-static int nop_usbphy_probe(struct device_d *dev)
+static int nop_usbphy_probe(struct device *dev)
 {
 	int ret;
 	struct nop_usbphy *nopphy;
diff --git a/drivers/pinctrl/imx-iomux-v1.c b/drivers/pinctrl/imx-iomux-v1.c
index c276f51cb3..f7fc2ae35a 100644
--- a/drivers/pinctrl/imx-iomux-v1.c
+++ b/drivers/pinctrl/imx-iomux-v1.c
@@ -251,7 +251,7 @@ static struct pinctrl_ops imx_iomux_v1_ops = {
 	.set_state = imx_iomux_v1_set_state,
 };
 
-static int imx_pinctrl_dt(struct device_d *dev, void __iomem *base)
+static int imx_pinctrl_dt(struct device *dev, void __iomem *base)
 {
 	struct imx_iomux_v1 *iomux;
 	int ret;
@@ -270,7 +270,7 @@ static int imx_pinctrl_dt(struct device_d *dev, void __iomem *base)
 	return ret;
 }
 
-static int imx_iomux_v1_probe(struct device_d *dev)
+static int imx_iomux_v1_probe(struct device *dev)
 {
 	int ret = 0;
 	void __iomem *base;
diff --git a/drivers/pinctrl/imx-iomux-v2.c b/drivers/pinctrl/imx-iomux-v2.c
index 35772d13a8..f1f6486930 100644
--- a/drivers/pinctrl/imx-iomux-v2.c
+++ b/drivers/pinctrl/imx-iomux-v2.c
@@ -105,7 +105,7 @@ int imx_iomux_setup_multiple_pins(const unsigned int *pin_list, unsigned count)
 	return 0;
 }
 
-static int imx_iomux_probe(struct device_d *dev)
+static int imx_iomux_probe(struct device *dev)
 {
 	struct resource *iores;
 	iores = dev_request_mem_resource(dev, 0);
diff --git a/drivers/pinctrl/imx-iomux-v3.c b/drivers/pinctrl/imx-iomux-v3.c
index e09934fe85..5331bb90c5 100644
--- a/drivers/pinctrl/imx-iomux-v3.c
+++ b/drivers/pinctrl/imx-iomux-v3.c
@@ -156,7 +156,7 @@ static struct pinctrl_ops imx_iomux_v3_ops = {
 	.set_state = imx_iomux_v3_set_state,
 };
 
-static int imx_pinctrl_dt(struct device_d *dev, void __iomem *base)
+static int imx_pinctrl_dt(struct device *dev, void __iomem *base)
 {
 	struct imx_iomux_v3 *iomux;
 	const struct imx_iomux_v3_data *drvdata;
@@ -179,7 +179,7 @@ static int imx_pinctrl_dt(struct device_d *dev, void __iomem *base)
 	return ret;
 }
 
-static int imx_iomux_v3_probe(struct device_d *dev)
+static int imx_iomux_v3_probe(struct device *dev)
 {
 	void __iomem *base;
 	struct resource *iores;
diff --git a/drivers/pinctrl/mvebu/armada-370.c b/drivers/pinctrl/mvebu/armada-370.c
index 23000986ff..017982adf3 100644
--- a/drivers/pinctrl/mvebu/armada-370.c
+++ b/drivers/pinctrl/mvebu/armada-370.c
@@ -385,7 +385,7 @@ static struct of_device_id armada_370_pinctrl_of_match[] = {
 	{ },
 };
 
-static int armada_370_pinctrl_probe(struct device_d *dev)
+static int armada_370_pinctrl_probe(struct device *dev)
 {
 	struct resource *iores;
 	const struct of_device_id *match =
diff --git a/drivers/pinctrl/mvebu/armada-xp.c b/drivers/pinctrl/mvebu/armada-xp.c
index f0761c4d3d..d6abf1cc7f 100644
--- a/drivers/pinctrl/mvebu/armada-xp.c
+++ b/drivers/pinctrl/mvebu/armada-xp.c
@@ -367,7 +367,7 @@ static struct of_device_id armada_xp_pinctrl_of_match[] = {
 	{ },
 };
 
-static int armada_xp_pinctrl_probe(struct device_d *dev)
+static int armada_xp_pinctrl_probe(struct device *dev)
 {
 	struct resource *iores;
 	const struct of_device_id *match =
diff --git a/drivers/pinctrl/mvebu/common.c b/drivers/pinctrl/mvebu/common.c
index 265e57aaa3..6ff8023b2c 100644
--- a/drivers/pinctrl/mvebu/common.c
+++ b/drivers/pinctrl/mvebu/common.c
@@ -93,7 +93,7 @@ static struct pinctrl_ops mvebu_pinctrl_ops = {
 	.set_state = mvebu_pinctrl_set_state,
 };
 
-int mvebu_pinctrl_probe(struct device_d *dev,
+int mvebu_pinctrl_probe(struct device *dev,
 			struct mvebu_pinctrl_soc_info *soc)
 {
 	struct mvebu_pinctrl *pctl;
diff --git a/drivers/pinctrl/mvebu/common.h b/drivers/pinctrl/mvebu/common.h
index 079a47679e..203b0530d8 100644
--- a/drivers/pinctrl/mvebu/common.h
+++ b/drivers/pinctrl/mvebu/common.h
@@ -136,7 +136,7 @@ static inline int default_mpp_ctrl_set(void __iomem *base, unsigned int pid,
 	return 0;
 }
 
-int mvebu_pinctrl_probe(struct device_d *dev,
+int mvebu_pinctrl_probe(struct device *dev,
 			struct mvebu_pinctrl_soc_info *soc);
 
 #endif
diff --git a/drivers/pinctrl/mvebu/dove.c b/drivers/pinctrl/mvebu/dove.c
index 5177abed3b..a21fda2cfc 100644
--- a/drivers/pinctrl/mvebu/dove.c
+++ b/drivers/pinctrl/mvebu/dove.c
@@ -690,7 +690,7 @@ static struct of_device_id dove_pinctrl_of_match[] = {
 	{ }
 };
 
-static int dove_pinctrl_probe(struct device_d *dev)
+static int dove_pinctrl_probe(struct device *dev)
 {
 	struct resource *iores;
 	const struct of_device_id *match =
diff --git a/drivers/pinctrl/mvebu/kirkwood.c b/drivers/pinctrl/mvebu/kirkwood.c
index bceb561c5f..067cfe2897 100644
--- a/drivers/pinctrl/mvebu/kirkwood.c
+++ b/drivers/pinctrl/mvebu/kirkwood.c
@@ -426,7 +426,7 @@ static struct of_device_id kirkwood_pinctrl_of_match[] = {
 	{ }
 };
 
-static int kirkwood_pinctrl_probe(struct device_d *dev)
+static int kirkwood_pinctrl_probe(struct device *dev)
 {
 	struct resource *iores;
 	const struct of_device_id *match =
diff --git a/drivers/pinctrl/pinctrl-at91-pio4.c b/drivers/pinctrl/pinctrl-at91-pio4.c
index afe74a12c0..0262429fdf 100644
--- a/drivers/pinctrl/pinctrl-at91-pio4.c
+++ b/drivers/pinctrl/pinctrl-at91-pio4.c
@@ -226,7 +226,7 @@ static struct gpio_ops at91_gpio4_ops = {
 	.set = at91_gpio4_set,
 };
 
-static int pinctrl_at91_pio4_gpiochip_add(struct device_d *dev,
+static int pinctrl_at91_pio4_gpiochip_add(struct device *dev,
 					  struct pinctrl_at91_pio4 *pinctrl)
 {
 	const struct at91_pinctrl_data *drvdata;
@@ -269,7 +269,7 @@ static struct pinctrl_ops pinctrl_at91_pio4_ops = {
 	.set_state = pinctrl_at91_pio4_set_state,
 };
 
-static int pinctrl_at91_pio4_probe(struct device_d *dev)
+static int pinctrl_at91_pio4_probe(struct device *dev)
 {
 	struct device_node *np = dev->of_node;
 	struct pinctrl_at91_pio4 *pinctrl;
diff --git a/drivers/pinctrl/pinctrl-at91.c b/drivers/pinctrl/pinctrl-at91.c
index 1551b0eda9..197ee54f56 100644
--- a/drivers/pinctrl/pinctrl-at91.c
+++ b/drivers/pinctrl/pinctrl-at91.c
@@ -96,7 +96,7 @@ int at91_mux_pin(unsigned pin, enum at91_mux mux, int use_pullup)
 {
 	struct at91_gpio_chip *at91_gpio = pin_to_controller(pin);
 	void __iomem *pio;
-	struct device_d *dev;
+	struct device *dev;
 	unsigned mask = pin_to_mask(pin);
 	int bank = pin_to_bank(pin);
 
@@ -371,7 +371,7 @@ static struct of_device_id at91_pinctrl_dt_ids[] = {
 	}
 };
 
-static struct at91_pinctrl_mux_ops *at91_pinctrl_get_driver_data(struct device_d *dev)
+static struct at91_pinctrl_mux_ops *at91_pinctrl_get_driver_data(struct device *dev)
 {
 	struct at91_pinctrl_mux_ops *ops_data = NULL;
 	int rc;
@@ -469,7 +469,7 @@ static struct pinctrl_ops at91_pinctrl_ops = {
 	.set_state = at91_pinctrl_set_state,
 };
 
-static int at91_pinctrl_probe(struct device_d *dev)
+static int at91_pinctrl_probe(struct device *dev)
 {
 	struct at91_pinctrl *info;
 	int ret;
@@ -616,7 +616,7 @@ static struct of_device_id at91_gpio_dt_ids[] = {
 	},
 };
 
-static int at91_gpio_probe(struct device_d *dev)
+static int at91_gpio_probe(struct device *dev)
 {
 	struct at91_gpio_chip *at91_gpio;
 	struct clk *clk;
diff --git a/drivers/pinctrl/pinctrl-bcm2835.c b/drivers/pinctrl/pinctrl-bcm2835.c
index 933445294f..aed679ffc6 100644
--- a/drivers/pinctrl/pinctrl-bcm2835.c
+++ b/drivers/pinctrl/pinctrl-bcm2835.c
@@ -141,7 +141,7 @@ static struct pinctrl_ops bcm2835_pinctrl_ops = {
 	.set_state = bcm2835_pinctrl_set_state,
 };
 
-static int bcm2835_gpio_probe(struct device_d *dev)
+static int bcm2835_gpio_probe(struct device *dev)
 {
 	const struct plat_data *plat_data;
 	struct resource *iores;
diff --git a/drivers/pinctrl/pinctrl-mxs.c b/drivers/pinctrl/pinctrl-mxs.c
index acee8178a5..c70e2f943e 100644
--- a/drivers/pinctrl/pinctrl-mxs.c
+++ b/drivers/pinctrl/pinctrl-mxs.c
@@ -119,7 +119,7 @@ static struct pinctrl_ops mxs_pinctrl_ops = {
 	.set_state = mxs_pinctrl_set_state,
 };
 
-static int mxs_pinctrl_probe(struct device_d *dev)
+static int mxs_pinctrl_probe(struct device *dev)
 {
 	struct mxs_pinctrl *iomux;
 	int ret = 0;
diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index bd780399fe..d7ded69675 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -324,7 +324,7 @@ static struct gpio_ops rockchip_gpio_ops = {
 	.get_direction = rockchip_gpiov2_get_direction,
 };
 
-static int rockchip_gpio_probe(struct device_d *dev)
+static int rockchip_gpio_probe(struct device *dev)
 {
 	struct rockchip_pinctrl *info = dev->parent->priv;
 	struct rockchip_pin_ctrl *ctrl = info->ctrl;
@@ -836,7 +836,7 @@ static struct pinctrl_ops rockchip_pinctrl_ops = {
 };
 
 static int rockchip_get_bank_data(struct rockchip_pin_bank *bank,
-				  struct device_d *dev)
+				  struct device *dev)
 {
 	struct resource node_res, *res;
 
@@ -870,7 +870,7 @@ static int rockchip_get_bank_data(struct rockchip_pin_bank *bank,
 static struct of_device_id rockchip_pinctrl_dt_match[];
 
 static struct rockchip_pin_ctrl *rockchip_pinctrl_get_soc_data(
-	struct rockchip_pinctrl *d, struct device_d *dev)
+	struct rockchip_pinctrl *d, struct device *dev)
 {
 	const struct of_device_id *match;
 	struct device_node *node = dev->of_node;
@@ -995,7 +995,7 @@ static struct rockchip_pin_ctrl *rockchip_pinctrl_get_soc_data(
 	return ctrl;
 }
 
-static int rockchip_pinctrl_probe(struct device_d *dev)
+static int rockchip_pinctrl_probe(struct device *dev)
 {
 	struct rockchip_pinctrl *info;
 	struct rockchip_pin_ctrl *ctrl;
diff --git a/drivers/pinctrl/pinctrl-single.c b/drivers/pinctrl/pinctrl-single.c
index f45948a447..18af3a4034 100644
--- a/drivers/pinctrl/pinctrl-single.c
+++ b/drivers/pinctrl/pinctrl-single.c
@@ -119,7 +119,7 @@ static struct pinctrl_ops pcs_ops = {
 	.set_state = pcs_set_state,
 };
 
-int pinctrl_single_probe(struct device_d *dev)
+int pinctrl_single_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct pinctrl_single *pcs;
diff --git a/drivers/pinctrl/pinctrl-stm32.c b/drivers/pinctrl/pinctrl-stm32.c
index deaec56b16..4badb6bb25 100644
--- a/drivers/pinctrl/pinctrl-stm32.c
+++ b/drivers/pinctrl/pinctrl-stm32.c
@@ -86,7 +86,8 @@ static inline u32 stm32_gpio_get_alt(u32 function)
 	return 0;
 }
 
-static int __stm32_pinctrl_set_state(struct device_d *dev, struct device_node *pins)
+static int __stm32_pinctrl_set_state(struct device *dev,
+				     struct device_node *pins)
 {
 	int ret;
 
@@ -178,7 +179,7 @@ static int __stm32_pinctrl_set_state(struct device_d *dev, struct device_node *p
 static int stm32_pinctrl_set_state(struct pinctrl_device *pdev, struct device_node *np)
 {
 	struct stm32_pinctrl *pinctrl = to_stm32_pinctrl(pdev);
-	struct device_d *dev = pdev->dev;
+	struct device *dev = pdev->dev;
 	struct device_node *pins;
 	void *prop;
 	int ret;
@@ -268,9 +269,9 @@ static struct gpio_ops stm32_gpio_ops = {
 
 static int stm32_gpiochip_add(struct stm32_gpio_bank *bank,
 			      struct device_node *np,
-			      struct device_d *parent)
+			      struct device *parent)
 {
-	struct device_d *dev;
+	struct device *dev;
 	struct resource *iores;
 	enum { PINCTRL_PHANDLE, GPIOCTRL_OFFSET, PINCTRL_OFFSET, PINCOUNT, GPIO_RANGE_NCELLS };
 	const __be32 *gpio_ranges;
@@ -339,7 +340,7 @@ static struct pinctrl_ops stm32_pinctrl_ops = {
 	.set_state = stm32_pinctrl_set_state,
 };
 
-static int stm32_pinctrl_probe(struct device_d *dev)
+static int stm32_pinctrl_probe(struct device *dev)
 {
 	struct stm32_pinctrl *pinctrl;
 	unsigned nbanks = 0;
diff --git a/drivers/pinctrl/pinctrl-tegra-xusb.c b/drivers/pinctrl/pinctrl-tegra-xusb.c
index b288689154..f40da72a9c 100644
--- a/drivers/pinctrl/pinctrl-tegra-xusb.c
+++ b/drivers/pinctrl/pinctrl-tegra-xusb.c
@@ -62,7 +62,7 @@ struct tegra_xusb_padctl_lane {
 };
 
 struct tegra_xusb_padctl {
-	struct device_d *dev;
+	struct device *dev;
 	void __iomem *regs;
 	struct reset_control *rst;
 
@@ -268,7 +268,7 @@ static const struct phy_ops sata_phy_ops = {
 	.power_off = sata_phy_power_off,
 };
 
-static struct phy *tegra_xusb_padctl_xlate(struct device_d *dev,
+static struct phy *tegra_xusb_padctl_xlate(struct device *dev,
 					   struct of_phandle_args *args)
 {
 	struct tegra_xusb_padctl *padctl = dev->priv;
@@ -365,7 +365,7 @@ static struct pinctrl_ops pinctrl_tegra_xusb_ops = {
 	.set_state = pinctrl_tegra_xusb_set_state,
 };
 
-static int pinctrl_tegra_xusb_probe(struct device_d *dev)
+static int pinctrl_tegra_xusb_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct tegra_xusb_padctl *padctl;
diff --git a/drivers/pinctrl/pinctrl-tegra20.c b/drivers/pinctrl/pinctrl-tegra20.c
index 53254d073e..cb24e84b19 100644
--- a/drivers/pinctrl/pinctrl-tegra20.c
+++ b/drivers/pinctrl/pinctrl-tegra20.c
@@ -282,7 +282,7 @@ static struct pinctrl_ops pinctrl_tegra20_ops = {
 	.set_state = pinctrl_tegra20_set_state,
 };
 
-static int pinctrl_tegra20_probe(struct device_d *dev)
+static int pinctrl_tegra20_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct pinctrl_tegra20 *ctrl;
diff --git a/drivers/pinctrl/pinctrl-tegra30.c b/drivers/pinctrl/pinctrl-tegra30.c
index 71c0a1357d..771dc9c23f 100644
--- a/drivers/pinctrl/pinctrl-tegra30.c
+++ b/drivers/pinctrl/pinctrl-tegra30.c
@@ -857,7 +857,7 @@ static struct pinctrl_ops pinctrl_tegra30_ops = {
 	.set_state = pinctrl_tegra30_set_state,
 };
 
-static int pinctrl_tegra30_probe(struct device_d *dev)
+static int pinctrl_tegra30_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct pinctrl_tegra30 *ctrl;
diff --git a/drivers/pinctrl/pinctrl-vf610.c b/drivers/pinctrl/pinctrl-vf610.c
index 28474ed278..36d877578c 100644
--- a/drivers/pinctrl/pinctrl-vf610.c
+++ b/drivers/pinctrl/pinctrl-vf610.c
@@ -113,7 +113,7 @@ static struct pinctrl_ops pinctrl_vf610_ops = {
 	.get_direction = pinctrl_vf610_get_direction,
 };
 
-static int pinctrl_vf610_probe(struct device_d *dev)
+static int pinctrl_vf610_probe(struct device *dev)
 {
 	int ret;
 	struct resource *io;
diff --git a/drivers/pinctrl/pinctrl.c b/drivers/pinctrl/pinctrl.c
index a441adaf08..1f272daef7 100644
--- a/drivers/pinctrl/pinctrl.c
+++ b/drivers/pinctrl/pinctrl.c
@@ -161,7 +161,7 @@ int of_pinctrl_select_state_default(struct device_node *np)
 	return of_pinctrl_select_state(np, "default");
 }
 
-int pinctrl_select_state(struct device_d *dev, const char *name)
+int pinctrl_select_state(struct device *dev, const char *name)
 {
 	struct device_node *np;
 
@@ -172,7 +172,7 @@ int pinctrl_select_state(struct device_d *dev, const char *name)
 	return of_pinctrl_select_state(np, name);
 }
 
-int pinctrl_select_state_default(struct device_d *dev)
+int pinctrl_select_state_default(struct device *dev)
 {
 	return pinctrl_select_state(dev, "default");
 }
diff --git a/drivers/power/reset/gpio-poweroff.c b/drivers/power/reset/gpio-poweroff.c
index 0cda8ceef6..78ac74336d 100644
--- a/drivers/power/reset/gpio-poweroff.c
+++ b/drivers/power/reset/gpio-poweroff.c
@@ -43,7 +43,7 @@ static void gpio_poweroff_do_poweroff(struct poweroff_handler *handler)
 
 static struct poweroff_handler handler;
 
-static int gpio_poweroff_probe(struct device_d *dev)
+static int gpio_poweroff_probe(struct device *dev)
 {
 	struct device_node *np = dev->of_node;
 	bool input = false;
diff --git a/drivers/power/reset/gpio-restart.c b/drivers/power/reset/gpio-restart.c
index 65a4407a7d..058c772622 100644
--- a/drivers/power/reset/gpio-restart.c
+++ b/drivers/power/reset/gpio-restart.c
@@ -43,7 +43,7 @@ static void __noreturn gpio_restart_handle(struct restart_handler *this)
 	panic("Unable to restart system\n");
 }
 
-static int gpio_restart_probe(struct device_d *dev)
+static int gpio_restart_probe(struct device *dev)
 {
 	struct device_node *np = dev->of_node;
 	struct gpio_restart *gpio_restart;
diff --git a/drivers/power/reset/htif-poweroff.c b/drivers/power/reset/htif-poweroff.c
index 8df060d507..106bc44daa 100644
--- a/drivers/power/reset/htif-poweroff.c
+++ b/drivers/power/reset/htif-poweroff.c
@@ -19,7 +19,7 @@ static void __noreturn riscvemu_poweroff(struct poweroff_handler *pwr)
 	__builtin_unreachable();
 }
 
-static int htif_poweroff_probe(struct device_d *dev)
+static int htif_poweroff_probe(struct device *dev)
 {
 	struct resource *iores;
 
diff --git a/drivers/power/reset/nvmem-reboot-mode.c b/drivers/power/reset/nvmem-reboot-mode.c
index c2233d0f3a..afc72958ee 100644
--- a/drivers/power/reset/nvmem-reboot-mode.c
+++ b/drivers/power/reset/nvmem-reboot-mode.c
@@ -34,7 +34,7 @@ static int nvmem_reboot_mode_write(struct reboot_mode_driver *reboot,
 	return ret;
 }
 
-static int nvmem_reboot_mode_probe(struct device_d *dev)
+static int nvmem_reboot_mode_probe(struct device *dev)
 {
 	struct nvmem_reboot_mode *nvmem_rbm;
 	struct nvmem_cell *cell;
diff --git a/drivers/power/reset/reboot-mode.c b/drivers/power/reset/reboot-mode.c
index 70be774be0..375ef0adcb 100644
--- a/drivers/power/reset/reboot-mode.c
+++ b/drivers/power/reset/reboot-mode.c
@@ -23,7 +23,7 @@ static int reboot_mode_param_set(struct param_d *p, void *priv)
 	return reboot->write(reboot, &reboot->magics[i]);
 }
 
-static int reboot_mode_add_param(struct device_d *dev,
+static int reboot_mode_add_param(struct device *dev,
 				 const char *prefix,
 				 struct reboot_mode_driver *reboot)
 {
diff --git a/drivers/power/reset/stm32-reboot.c b/drivers/power/reset/stm32-reboot.c
index 6789b52d57..ffe8dd96ac 100644
--- a/drivers/power/reset/stm32-reboot.c
+++ b/drivers/power/reset/stm32-reboot.c
@@ -109,7 +109,7 @@ static void stm32_set_reset_reason(struct stm32_reset *priv,
 		reset_source_to_string(type), reg);
 }
 
-void stm32mp_system_restart_init(struct device_d *dev)
+void stm32mp_system_restart_init(struct device *dev)
 {
 	struct stm32_reset *priv;
 	struct device_node *np = dev_of_node(dev);
diff --git a/drivers/power/reset/syscon-poweroff.c b/drivers/power/reset/syscon-poweroff.c
index 239e549819..5998f4e914 100644
--- a/drivers/power/reset/syscon-poweroff.c
+++ b/drivers/power/reset/syscon-poweroff.c
@@ -26,7 +26,7 @@ static void syscon_poweroff(struct poweroff_handler *handler)
 	pr_emerg("Unable to poweroff system\n");
 }
 
-static int syscon_poweroff_probe(struct device_d *dev)
+static int syscon_poweroff_probe(struct device *dev)
 {
 	int mask_err, value_err;
 
diff --git a/drivers/power/reset/syscon-reboot-mode.c b/drivers/power/reset/syscon-reboot-mode.c
index 69530a409e..c5fa9b29e6 100644
--- a/drivers/power/reset/syscon-reboot-mode.c
+++ b/drivers/power/reset/syscon-reboot-mode.c
@@ -46,7 +46,7 @@ static int syscon_reboot_mode_write(struct reboot_mode_driver *reboot,
 	return ret;
 }
 
-static int syscon_reboot_mode_probe(struct device_d *dev)
+static int syscon_reboot_mode_probe(struct device *dev)
 {
 	int ret, i, nelems;
 	struct syscon_reboot_mode *syscon_rbm;
diff --git a/drivers/power/reset/syscon-reboot.c b/drivers/power/reset/syscon-reboot.c
index 1c3f7666ee..93d05d9c2b 100644
--- a/drivers/power/reset/syscon-reboot.c
+++ b/drivers/power/reset/syscon-reboot.c
@@ -32,7 +32,7 @@ static void __noreturn syscon_restart_handle(struct restart_handler *this)
 	panic("Unable to restart system\n");
 }
 
-static int syscon_reboot_probe(struct device_d *dev)
+static int syscon_reboot_probe(struct device *dev)
 {
 	struct syscon_reboot_context *ctx;
 	int mask_err, value_err;
diff --git a/drivers/pwm/core.c b/drivers/pwm/core.c
index e61050050c..2237dad453 100644
--- a/drivers/pwm/core.c
+++ b/drivers/pwm/core.c
@@ -35,8 +35,8 @@ struct pwm_device {
 	unsigned long		flags;
 #define FLAG_REQUESTED	0
 	struct list_head	node;
-	struct device_d		*hwdev;
-	struct device_d		dev;
+	struct device		*hwdev;
+	struct device		dev;
 
 	struct pwm_state	params;
 	struct pwm_args		args;
@@ -82,7 +82,7 @@ static int set_enable(struct param_d *p, void *priv)
  * register a new pwm. pwm->devname must be initialized, usually
  * from dev_name(dev) from the hardware driver.
  */
-int pwmchip_add(struct pwm_chip *chip, struct device_d *dev)
+int pwmchip_add(struct pwm_chip *chip, struct device *dev)
 {
 	struct pwm_device *pwm;
 	struct param_d *p;
diff --git a/drivers/pwm/pwm-atmel.c b/drivers/pwm/pwm-atmel.c
index 21d07913ce..dce039ff66 100644
--- a/drivers/pwm/pwm-atmel.c
+++ b/drivers/pwm/pwm-atmel.c
@@ -77,7 +77,7 @@ struct atmel_pwm_chip {
 	struct pwm_chip chips[PWM_CHANNELS];
 	struct clk *clk;
 	void __iomem *base;
-	struct device_d *dev;
+	struct device *dev;
 	const struct atmel_pwm_data *data;
 
 	/*
@@ -413,7 +413,7 @@ static const struct of_device_id atmel_pwm_dt_ids[] = {
 
 static int id = -1;
 
-static int atmel_pwm_probe(struct device_d *dev)
+static int atmel_pwm_probe(struct device *dev)
 {
 	const struct atmel_pwm_data *data;
 	struct atmel_pwm_chip *atmel_pwm;
diff --git a/drivers/pwm/pwm-imx.c b/drivers/pwm/pwm-imx.c
index d6ddcc28a2..ceaa521e3b 100644
--- a/drivers/pwm/pwm-imx.c
+++ b/drivers/pwm/pwm-imx.c
@@ -201,7 +201,7 @@ static struct of_device_id imx_pwm_dt_ids[] = {
 	{ /* sentinel */ }
 };
 
-static int imx_pwm_probe(struct device_d *dev)
+static int imx_pwm_probe(struct device *dev)
 {
 	struct resource *iores;
 	const struct imx_pwm_data *data;
diff --git a/drivers/pwm/pwm-mxs.c b/drivers/pwm/pwm-mxs.c
index 007ff1cfee..dc32011179 100644
--- a/drivers/pwm/pwm-mxs.c
+++ b/drivers/pwm/pwm-mxs.c
@@ -93,7 +93,7 @@ static struct pwm_ops mxs_pwm_ops = {
 	.apply = mxs_pwm_apply,
 };
 
-static int mxs_pwm_probe(struct device_d *dev)
+static int mxs_pwm_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct device_node *np = dev->of_node;
diff --git a/drivers/pwm/pwm-stm32.c b/drivers/pwm/pwm-stm32.c
index 69baa88753..251128c677 100644
--- a/drivers/pwm/pwm-stm32.c
+++ b/drivers/pwm/pwm-stm32.c
@@ -335,7 +335,7 @@ static int stm32_pwm_detect_channels(struct stm32_pwm *priv)
 
 static int id = -1;
 
-static int stm32_pwm_probe(struct device_d *dev)
+static int stm32_pwm_probe(struct device *dev)
 {
 	struct device_node *np = dev->of_node;
 	struct stm32_timers *ddata = dev->parent->priv;
diff --git a/drivers/pwm/pxa_pwm.c b/drivers/pwm/pxa_pwm.c
index 61c4b8da43..1c2f384f8e 100644
--- a/drivers/pwm/pxa_pwm.c
+++ b/drivers/pwm/pxa_pwm.c
@@ -128,7 +128,7 @@ static struct pwm_ops pxa_pwm_ops = {
 	.apply = pxa_pwm_apply,
 };
 
-static int pxa_pwm_probe(struct device_d *dev)
+static int pxa_pwm_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct pxa_pwm_chip *chip;
diff --git a/drivers/regulator/anatop-regulator.c b/drivers/regulator/anatop-regulator.c
index 6d54129523..210e064099 100644
--- a/drivers/regulator/anatop-regulator.c
+++ b/drivers/regulator/anatop-regulator.c
@@ -33,7 +33,7 @@ static struct regulator_ops anatop_rops = {
 	.list_voltage = regulator_list_voltage_linear,
 };
 
-static int anatop_regulator_probe(struct device_d *dev)
+static int anatop_regulator_probe(struct device *dev)
 {
 	struct device_node *np = dev->of_node;
 	struct device_node *anatop_np;
diff --git a/drivers/regulator/bcm2835.c b/drivers/regulator/bcm2835.c
index 71a1d1a55d..bda5a74fd1 100644
--- a/drivers/regulator/bcm2835.c
+++ b/drivers/regulator/bcm2835.c
@@ -110,7 +110,7 @@ const static struct regulator_ops bcm2835_ops = {
 	.is_enabled = regulator_bcm2835_is_enabled,
 };
 
-static int regulator_bcm2835_probe(struct device_d *dev)
+static int regulator_bcm2835_probe(struct device *dev)
 {
 	struct regulator_bcm2835 *rb;
 	int ret, i;
diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
index d25aea8d62..3eb4746fb7 100644
--- a/drivers/regulator/core.c
+++ b/drivers/regulator/core.c
@@ -29,7 +29,7 @@ struct regulator_internal {
 struct regulator {
 	struct regulator_internal *ri;
 	struct list_head list;
-	struct device_d *dev;
+	struct device *dev;
 };
 
 static int regulator_map_voltage(struct regulator_dev *rdev, int min_uV,
@@ -245,7 +245,8 @@ int of_regulator_register(struct regulator_dev *rd, struct device_node *node)
 	return 0;
 }
 
-static struct regulator_internal *of_regulator_get(struct device_d *dev, const char *supply)
+static struct regulator_internal *of_regulator_get(struct device *dev,
+						   const char *supply)
 {
 	char *propname;
 	struct regulator_internal *ri;
@@ -323,7 +324,8 @@ out:
 	return ri;
 }
 #else
-static struct regulator_internal *of_regulator_get(struct device_d *dev, const char *supply)
+static struct regulator_internal *of_regulator_get(struct device *dev,
+						   const char *supply)
 {
 	return NULL;
 }
@@ -340,7 +342,8 @@ int dev_regulator_register(struct regulator_dev *rd, const char * name, const ch
 	return 0;
 }
 
-static struct regulator_internal *dev_regulator_get(struct device_d *dev, const char *supply)
+static struct regulator_internal *dev_regulator_get(struct device *dev,
+						    const char *supply)
 {
 	struct regulator_internal *ri;
 	struct regulator_internal *ret = NULL;
@@ -382,7 +385,7 @@ static struct regulator_internal *dev_regulator_get(struct device_d *dev, const
  *
  * Return: a regulator object or an error pointer
  */
-struct regulator *regulator_get(struct device_d *dev, const char *supply)
+struct regulator *regulator_get(struct device *dev, const char *supply)
 {
 	struct regulator_internal *ri = NULL;
 	struct regulator *r;
@@ -500,7 +503,7 @@ int regulator_set_voltage(struct regulator *r, int min_uV, int max_uV)
  * acquired then any regulators that were allocated will be freed
  * before returning to the caller.
  */
-int regulator_bulk_get(struct device_d *dev, int num_consumers,
+int regulator_bulk_get(struct device *dev, int num_consumers,
 		       struct regulator_bulk_data *consumers)
 {
 	int i;
diff --git a/drivers/regulator/fixed.c b/drivers/regulator/fixed.c
index 65b0fba2fe..9a88a72925 100644
--- a/drivers/regulator/fixed.c
+++ b/drivers/regulator/fixed.c
@@ -44,7 +44,7 @@ const static struct regulator_ops fixed_ops = {
 	.disable = regulator_fixed_disable,
 };
 
-static int regulator_fixed_probe(struct device_d *dev)
+static int regulator_fixed_probe(struct device *dev)
 {
 	struct device_node *np = dev->of_node;
 	struct regulator_fixed *fix;
diff --git a/drivers/regulator/of_regulator.c b/drivers/regulator/of_regulator.c
index c536a82c43..10f75a4f1c 100644
--- a/drivers/regulator/of_regulator.c
+++ b/drivers/regulator/of_regulator.c
@@ -33,7 +33,7 @@ struct devm_of_regulator_matches {
  *
  * Returns the number of matches found or a negative error code on failure.
  */
-int of_regulator_match(struct device_d *dev, struct device_node *node,
+int of_regulator_match(struct device *dev, struct device_node *node,
 		       struct of_regulator_match *matches,
 		       unsigned int num_matches)
 {
diff --git a/drivers/regulator/pfuze.c b/drivers/regulator/pfuze.c
index d9450711e3..cec9ca41a5 100644
--- a/drivers/regulator/pfuze.c
+++ b/drivers/regulator/pfuze.c
@@ -41,7 +41,7 @@
 #define PFUZE100_VGENxSTBY	BIT(5)
 
 struct pfuze {
-	struct device_d			*dev;
+	struct device			*dev;
 	struct regmap			*map;
 	struct i2c_client		*client;
 	int				revision;
@@ -144,7 +144,7 @@ static const struct regmap_config pfuze_regmap_i2c_config = {
 	.max_register = 127,
 };
 
-static int __init pfuze_probe(struct device_d *dev)
+static int __init pfuze_probe(struct device *dev)
 {
 	int ret;
 
diff --git a/drivers/regulator/rk808-regulator.c b/drivers/regulator/rk808-regulator.c
index e0e06acad4..53927e3617 100644
--- a/drivers/regulator/rk808-regulator.c
+++ b/drivers/regulator/rk808-regulator.c
@@ -770,7 +770,7 @@ static int rk808_regulator_register(struct rk808 *rk808, int id,
 				    struct of_regulator_match *match,
 				    struct rk_regulator_cfg *cfg)
 {
-	struct device_d *dev = &rk808->i2c->dev;
+	struct device *dev = &rk808->i2c->dev;
 	int ret;
 
 	if (!match->of_node) {
@@ -885,7 +885,7 @@ static struct of_regulator_match rk818_reg_matches[] = {
 };
 static_assert(ARRAY_SIZE(rk818_reg_matches) == RK818_NUM_REGULATORS);
 
-static int rk808_regulator_dt_parse(struct device_d *dev,
+static int rk808_regulator_dt_parse(struct device *dev,
 				    struct of_regulator_match *matches,
 				    int nregulators)
 {
@@ -898,7 +898,7 @@ static int rk808_regulator_dt_parse(struct device_d *dev,
 	return of_regulator_match(dev, np, matches, nregulators);
 }
 
-static int rk808_regulator_probe(struct device_d *dev)
+static int rk808_regulator_probe(struct device *dev)
 {
 	struct rk808 *rk808 = dev->parent->priv;
 	struct rk_regulator_cfg *regulators;
diff --git a/drivers/regulator/scmi-regulator.c b/drivers/regulator/scmi-regulator.c
index 5bab296102..22813ce662 100644
--- a/drivers/regulator/scmi-regulator.c
+++ b/drivers/regulator/scmi-regulator.c
@@ -213,7 +213,7 @@ scmi_config_discrete_regulator_mappings(struct scmi_regulator *sreg,
 static int scmi_regulator_common_init(struct scmi_regulator *sreg)
 {
 	int ret;
-	struct device_d *dev = &sreg->sdev->dev;
+	struct device *dev = &sreg->sdev->dev;
 	const struct scmi_voltage_info *vinfo;
 	struct scmi_reg_desc *sdesc = &sreg->sdesc;
 
diff --git a/drivers/regulator/stm32-pwr.c b/drivers/regulator/stm32-pwr.c
index ac738b4ee9..6014c66a5d 100644
--- a/drivers/regulator/stm32-pwr.c
+++ b/drivers/regulator/stm32-pwr.c
@@ -141,7 +141,7 @@ static const struct stm32_pwr_desc stm32_pwr_desc[] = {
 	PWR_REG(PWR_USB33, "usb33", 3300000, USB_3_3_EN, "vdd_3v3_usbfs"),
 };
 
-static int stm32_pwr_regulator_probe(struct device_d *dev)
+static int stm32_pwr_regulator_probe(struct device *dev)
 {
 	struct stm32_pwr_reg *priv;
 	struct device_node *child;
diff --git a/drivers/regulator/stm32-vrefbuf.c b/drivers/regulator/stm32-vrefbuf.c
index 80733fed3d..586329eddc 100644
--- a/drivers/regulator/stm32-vrefbuf.c
+++ b/drivers/regulator/stm32-vrefbuf.c
@@ -27,7 +27,7 @@
 struct stm32_vrefbuf {
 	void __iomem *base;
 	struct clk *clk;
-	struct device_d *dev;
+	struct device *dev;
 	struct regulator_dev rdev;
 };
 
@@ -140,7 +140,7 @@ static const struct stm32_vrefbuf_desc stm32_vrefbuf_regu = {
 	.supply_name = "vdda",
 };
 
-static int stm32_vrefbuf_probe(struct device_d *dev)
+static int stm32_vrefbuf_probe(struct device *dev)
 {
 	struct stm32_vrefbuf *priv;
 	struct regulator_dev *rdev;
@@ -192,7 +192,7 @@ err_clk_dis:
 	return ret;
 }
 
-static void stm32_vrefbuf_remove(struct device_d *dev)
+static void stm32_vrefbuf_remove(struct device *dev)
 {
 	struct stm32_vrefbuf *priv = dev->priv;
 
diff --git a/drivers/regulator/stpmic1_regulator.c b/drivers/regulator/stpmic1_regulator.c
index ee4abb5b81..066ad8d7ae 100644
--- a/drivers/regulator/stpmic1_regulator.c
+++ b/drivers/regulator/stpmic1_regulator.c
@@ -376,7 +376,7 @@ static struct of_regulator_match stpmic1_matches[] = {
 	MATCH(pwr_sw2, SW_OUT),
 };
 
-static int stpmic1_regulator_register(struct device_d *dev, int id,
+static int stpmic1_regulator_register(struct device *dev, int id,
 				      struct of_regulator_match *match,
 				      struct stpmic1_regulator_cfg *cfg)
 {
@@ -404,7 +404,7 @@ static int stpmic1_regulator_register(struct device_d *dev, int id,
 	return 0;
 }
 
-static int stpmic1_regulator_probe(struct device_d *dev)
+static int stpmic1_regulator_probe(struct device *dev)
 {
 	int i, ret;
 
diff --git a/drivers/remoteproc/imx_rproc.c b/drivers/remoteproc/imx_rproc.c
index 5e575bac5c..6e45a84589 100644
--- a/drivers/remoteproc/imx_rproc.c
+++ b/drivers/remoteproc/imx_rproc.c
@@ -79,7 +79,7 @@ struct imx_rproc_dcfg {
 };
 
 struct imx_rproc {
-	struct device_d			*dev;
+	struct device			*dev;
 	struct regmap			*regmap;
 	struct regmap			*gpr;
 	struct rproc			*rproc;
@@ -384,7 +384,7 @@ static const struct rproc_ops imx_rproc_ops = {
 };
 
 static int imx_rproc_addr_init(struct imx_rproc *priv,
-			       struct device_d *dev)
+			       struct device *dev)
 {
 	const struct imx_rproc_dcfg *dcfg = priv->dcfg;
 	struct device_node *np = dev->of_node;
@@ -449,7 +449,7 @@ static int imx_rproc_addr_init(struct imx_rproc *priv,
 	return 0;
 }
 
-static int imx_rproc_probe(struct device_d *dev)
+static int imx_rproc_probe(struct device *dev)
 {
 	struct device_node *np = dev->of_node;
 	struct imx_rproc *priv;
diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
index 8dff3c72ae..7590c1f930 100644
--- a/drivers/remoteproc/remoteproc_core.c
+++ b/drivers/remoteproc/remoteproc_core.c
@@ -35,7 +35,7 @@ void *rproc_da_to_va(struct rproc *rproc, u64 da, int len)
 
 static int rproc_start(struct rproc *rproc, const struct firmware *fw)
 {
-	struct device_d *dev = &rproc->dev;
+	struct device *dev = &rproc->dev;
 	int ret;
 
 	/* load the ELF segments to memory */
@@ -85,7 +85,7 @@ static int rproc_firmware_finish(struct firmware_handler *fh)
 {
 	struct rproc *rproc = container_of(fh, struct rproc, fh);
 	struct firmware fw;
-	struct device_d *dev;
+	struct device *dev;
 	int ret;
 
 	if (!rproc) {
@@ -122,7 +122,7 @@ static int rproc_register_dev(struct rproc *rproc, const char *alias)
 
 int rproc_add(struct rproc *rproc)
 {
-	struct device_d *dev = &rproc->dev;
+	struct device *dev = &rproc->dev;
 	struct firmware_handler *fh;
 	const char *alias = NULL;
 	int ret;
@@ -150,7 +150,7 @@ int rproc_add(struct rproc *rproc)
 	return ret;
 }
 
-struct rproc *rproc_alloc(struct device_d *dev, const char *name,
+struct rproc *rproc_alloc(struct device *dev, const char *name,
 			  const struct rproc_ops *ops, int len)
 {
 	struct rproc *rproc;
diff --git a/drivers/remoteproc/remoteproc_elf_loader.c b/drivers/remoteproc/remoteproc_elf_loader.c
index 45d52db5c1..f3bf93df2c 100644
--- a/drivers/remoteproc/remoteproc_elf_loader.c
+++ b/drivers/remoteproc/remoteproc_elf_loader.c
@@ -23,7 +23,7 @@
 
 int rproc_elf_load_segments(struct rproc *rproc, const struct firmware *fw)
 {
-	struct device_d *dev = &rproc->dev;
+	struct device *dev = &rproc->dev;
 	struct elf32_hdr *ehdr;
 	struct elf32_phdr *phdr;
 	int i, ret = 0;
diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/stm32_rproc.c
index fbbc7dff89..1fd2054248 100644
--- a/drivers/remoteproc/stm32_rproc.c
+++ b/drivers/remoteproc/stm32_rproc.c
@@ -37,7 +37,7 @@ struct stm32_rproc {
 static void *stm32_rproc_da_to_va(struct rproc *rproc, u64 da, int len)
 {
 	__be32 in_addr = cpu_to_be32(da);
-	struct device_d *dev = &rproc->dev;
+	struct device *dev = &rproc->dev;
 	u64 paddr;
 
 	paddr = of_translate_dma_address(dev->parent->of_node, &in_addr);
@@ -128,7 +128,7 @@ out:
 	return err;
 }
 
-static int stm32_rproc_parse_dt(struct device_d *dev, struct stm32_rproc *ddata)
+static int stm32_rproc_parse_dt(struct device *dev, struct stm32_rproc *ddata)
 {
 	struct device_node *np = dev->of_node;
 	struct stm32_syscon tz;
@@ -169,7 +169,7 @@ static int stm32_rproc_parse_dt(struct device_d *dev, struct stm32_rproc *ddata)
 	return 0;
 }
 
-static int stm32_rproc_probe(struct device_d *dev)
+static int stm32_rproc_probe(struct device *dev)
 {
 	struct rproc *rproc;
 	int ret;
diff --git a/drivers/reset/core.c b/drivers/reset/core.c
index fe9a6ea7cf..31fac2de03 100644
--- a/drivers/reset/core.c
+++ b/drivers/reset/core.c
@@ -29,7 +29,7 @@ struct reset_control {
 	int gpio;
 	int gpio_active_high;
 
-	struct device_d *dev;
+	struct device *dev;
 	unsigned int id;
 };
 
@@ -162,7 +162,7 @@ EXPORT_SYMBOL_GPL(reset_control_deassert);
  *
  * Returns number of resets, 0 if none specified
  */
-int reset_control_get_count(struct device_d *dev)
+int reset_control_get_count(struct device *dev)
 {
 	return of_count_phandle_with_args(dev->of_node, "resets",
 					  "#reset-cells");
@@ -247,7 +247,7 @@ struct reset_control *of_reset_control_get(struct device_node *node,
 }
 
 static struct reset_control *
-gpio_reset_control_get(struct device_d *dev, const char *id)
+gpio_reset_control_get(struct device *dev, const char *id)
 {
 	struct reset_control *rc;
 	int gpio;
@@ -279,7 +279,7 @@ gpio_reset_control_get(struct device_d *dev, const char *id)
  *
  * Use of id names is optional.
  */
-struct reset_control *reset_control_get(struct device_d *dev, const char *id)
+struct reset_control *reset_control_get(struct device *dev, const char *id)
 {
 	struct reset_control *rstc;
 
@@ -332,7 +332,7 @@ EXPORT_SYMBOL_GPL(reset_control_put);
  * This is useful for the common case of devices with single, dedicated reset
  * lines.
  */
-int device_reset(struct device_d *dev)
+int device_reset(struct device *dev)
 {
 	struct reset_control *rstc;
 	int ret;
@@ -353,7 +353,7 @@ int device_reset(struct device_d *dev)
 }
 EXPORT_SYMBOL_GPL(device_reset);
 
-int device_reset_all(struct device_d *dev)
+int device_reset_all(struct device *dev)
 {
 	struct reset_control *rstc;
 	int ret, i;
@@ -386,7 +386,7 @@ int device_reset_all(struct device_d *dev)
 }
 EXPORT_SYMBOL_GPL(device_reset_all);
 
-int device_reset_us(struct device_d *dev, int us)
+int device_reset_us(struct device *dev, int us)
 {
 	struct reset_control *rstc;
 	int ret;
diff --git a/drivers/reset/reset-imx7.c b/drivers/reset/reset-imx7.c
index 23d371f0c5..e42a964437 100644
--- a/drivers/reset/reset-imx7.c
+++ b/drivers/reset/reset-imx7.c
@@ -253,7 +253,7 @@ static const struct imx7_src_variant variant_imx8mq = {
 	},
 };
 
-static int imx7_reset_probe(struct device_d *dev)
+static int imx7_reset_probe(struct device *dev)
 {
 	struct imx7_src *imx7src;
 	const struct imx7_src_variant *variant = of_device_get_match_data(dev);
diff --git a/drivers/reset/reset-scmi.c b/drivers/reset/reset-scmi.c
index 5f8473690d..311972fd16 100644
--- a/drivers/reset/reset-scmi.c
+++ b/drivers/reset/reset-scmi.c
@@ -89,7 +89,7 @@ static const struct reset_control_ops scmi_reset_ops = {
 static int scmi_reset_probe(struct scmi_device *sdev)
 {
 	struct scmi_reset_data *data;
-	struct device_d *dev = &sdev->dev;
+	struct device *dev = &sdev->dev;
 	struct device_node *np = dev->of_node;
 	const struct scmi_handle *handle = sdev->handle;
 	struct scmi_protocol_handle *ph;
diff --git a/drivers/reset/reset-simple.c b/drivers/reset/reset-simple.c
index 0f3f6a53fe..a72fa43012 100644
--- a/drivers/reset/reset-simple.c
+++ b/drivers/reset/reset-simple.c
@@ -147,7 +147,7 @@ static const struct of_device_id reset_simple_dt_ids[] = {
 	{ /* sentinel */ },
 };
 
-static int reset_simple_probe(struct device_d *dev)
+static int reset_simple_probe(struct device *dev)
 {
 	const struct reset_simple_devdata *devdata;
 	struct reset_simple_data *data;
diff --git a/drivers/reset/reset-socfpga.c b/drivers/reset/reset-socfpga.c
index c33e4d3c51..6904aacecd 100644
--- a/drivers/reset/reset-socfpga.c
+++ b/drivers/reset/reset-socfpga.c
@@ -74,7 +74,7 @@ static const struct reset_control_ops socfpga_reset_ops = {
 	.deassert	= socfpga_reset_deassert,
 };
 
-static int socfpga_reset_probe(struct device_d *dev)
+static int socfpga_reset_probe(struct device *dev)
 {
 	struct socfpga_reset_data *data;
 	struct resource *res;
diff --git a/drivers/reset/reset-starfive-vic.c b/drivers/reset/reset-starfive-vic.c
index 01765b00d0..0f4fa090c5 100644
--- a/drivers/reset/reset-starfive-vic.c
+++ b/drivers/reset/reset-starfive-vic.c
@@ -196,7 +196,7 @@ static const struct reset_control_ops starfive_rstgen_ops = {
 	.reset		= starfive_reset,
 };
 
-static int starfive_rstgen_probe(struct device_d *dev)
+static int starfive_rstgen_probe(struct device *dev)
 {
 	struct starfive_rstgen *priv;
 	struct resource *iores;
diff --git a/drivers/rtc/class.c b/drivers/rtc/class.c
index 12751c8a3c..3edb294ed7 100644
--- a/drivers/rtc/class.c
+++ b/drivers/rtc/class.c
@@ -51,7 +51,7 @@ EXPORT_SYMBOL(rtc_set_time);
 
 int rtc_register(struct rtc_device *rtcdev)
 {
-	struct device_d *dev = &rtcdev->class_dev;
+	struct device *dev = &rtcdev->class_dev;
 
 	if (!rtcdev->ops)
 		return -EINVAL;
diff --git a/drivers/rtc/rtc-abracon.c b/drivers/rtc/rtc-abracon.c
index 585b95c4a7..b6c0c63de0 100644
--- a/drivers/rtc/rtc-abracon.c
+++ b/drivers/rtc/rtc-abracon.c
@@ -80,7 +80,7 @@ static const struct rtc_class_ops ds13xx_rtc_ops = {
 	.set_time	= abracon_set_time,
 };
 
-static int abracon_probe(struct device_d *dev)
+static int abracon_probe(struct device *dev)
 {
 	struct i2c_client *client = to_i2c_client(dev);
 	struct abracon *abracon;
diff --git a/drivers/rtc/rtc-ds1307.c b/drivers/rtc/rtc-ds1307.c
index 680611fea7..92cffff717 100644
--- a/drivers/rtc/rtc-ds1307.c
+++ b/drivers/rtc/rtc-ds1307.c
@@ -193,7 +193,7 @@ static inline struct ds1307 *to_ds1307_priv(struct rtc_device *rtcdev)
 
 static int ds1307_get_time(struct rtc_device *rtcdev, struct rtc_time *t)
 {
-	struct device_d *dev = rtcdev->dev;
+	struct device *dev = rtcdev->dev;
 	struct ds1307 *ds1307 = to_ds1307_priv(rtcdev);
 	int		tmp;
 
@@ -231,7 +231,7 @@ static int ds1307_get_time(struct rtc_device *rtcdev, struct rtc_time *t)
 
 static int ds1307_set_time(struct rtc_device *rtcdev, struct rtc_time *t)
 {
-	struct device_d *dev = rtcdev->dev;
+	struct device *dev = rtcdev->dev;
 	struct ds1307 *ds1307 = to_ds1307_priv(rtcdev);
 	int		result;
 	int		tmp;
@@ -280,7 +280,7 @@ static const struct rtc_class_ops ds13xx_rtc_ops = {
 	.set_time	= ds1307_set_time,
 };
 
-static int ds1307_probe(struct device_d *dev)
+static int ds1307_probe(struct device *dev)
 {
 	struct i2c_client *client = to_i2c_client(dev);
 	struct ds1307		*ds1307;
diff --git a/drivers/rtc/rtc-imxdi.c b/drivers/rtc/rtc-imxdi.c
index 297fdc17b9..d196d25558 100644
--- a/drivers/rtc/rtc-imxdi.c
+++ b/drivers/rtc/rtc-imxdi.c
@@ -102,7 +102,7 @@
  * @dsr: copy of the DSR register
  */
 struct imxdi_dev {
-	struct device_d *dev;
+	struct device *dev;
 	struct rtc_device rtc;
 	void __iomem *ioaddr;
 	struct clk *clk;
@@ -542,7 +542,7 @@ static struct nvmem_config nvstore_nvmem_config = {
 	.bus = &nvstore_nvmem_bus,
 };
 
-static int __init dryice_rtc_probe(struct device_d *dev)
+static int __init dryice_rtc_probe(struct device *dev)
 {
 	struct resource *res;
 	struct imxdi_dev *imxdi;
diff --git a/drivers/rtc/rtc-jz4740.c b/drivers/rtc/rtc-jz4740.c
index 52f52349e6..16d3e66c09 100644
--- a/drivers/rtc/rtc-jz4740.c
+++ b/drivers/rtc/rtc-jz4740.c
@@ -106,7 +106,7 @@ static struct rtc_class_ops jz4740_rtc_ops = {
 	.set_time	= jz4740_rtc_set_time,
 };
 
-static int jz4740_rtc_probe(struct device_d *dev)
+static int jz4740_rtc_probe(struct device *dev)
 {
 	struct resource *iores;
 	int ret;
diff --git a/drivers/rtc/rtc-pcf85363.c b/drivers/rtc/rtc-pcf85363.c
index b9f0fc6012..d4906bb65d 100644
--- a/drivers/rtc/rtc-pcf85363.c
+++ b/drivers/rtc/rtc-pcf85363.c
@@ -55,7 +55,7 @@ static inline struct pcf85363 *to_pcf85363_priv(struct rtc_device *rtcdev)
 static int pcf85363_rtc_read_time(struct rtc_device *rtcdev,
 					struct rtc_time *tm)
 {
-	struct device_d *dev = rtcdev->dev;
+	struct device *dev = rtcdev->dev;
 	struct pcf85363 *pcf85363 = to_pcf85363_priv(rtcdev);
 	unsigned char buf[DT_YEARS + 1];
 	int ret, len = sizeof(buf);
@@ -126,7 +126,7 @@ static const struct regmap_config pcf85363_regmap_i2c_config = {
 	.max_register = 0x7f,
 };
 
-static int pcf85363_probe(struct device_d *dev)
+static int pcf85363_probe(struct device *dev)
 {
 	struct i2c_client *client = to_i2c_client(dev);
 	struct pcf85363 *pcf85363;
diff --git a/drivers/serial/arm_dcc.c b/drivers/serial/arm_dcc.c
index db0ee7fe09..5ac2da167c 100644
--- a/drivers/serial/arm_dcc.c
+++ b/drivers/serial/arm_dcc.c
@@ -108,7 +108,7 @@ static int arm_dcc_tstc(struct console_device *cdev)
 
 static struct console_device arm_dcc_dev;
 
-static int arm_dcc_probe(struct device_d *dev)
+static int arm_dcc_probe(struct device *dev)
 {
 	struct console_device *cdev;
 
@@ -131,7 +131,7 @@ static struct driver_d arm_dcc_driver = {
 };
 console_platform_driver(arm_dcc_driver);
 
-static struct device_d arm_dcc_device = {
+static struct device arm_dcc_device = {
 	.id	= DEVICE_ID_DYNAMIC,
 	.name	= "arm_dcc",
 };
diff --git a/drivers/serial/atmel.c b/drivers/serial/atmel.c
index 9e20754998..69ab60bca2 100644
--- a/drivers/serial/atmel.c
+++ b/drivers/serial/atmel.c
@@ -384,7 +384,7 @@ static int atmel_serial_set_mode(struct console_device *cdev, enum console_mode
  */
 static int atmel_serial_init_port(struct console_device *cdev)
 {
-	struct device_d *dev = cdev->dev;
+	struct device *dev = cdev->dev;
 	struct atmel_uart_port *uart = to_atmel_uart_port(cdev);
 
 	uart->base = dev_request_mem_region_err_null(dev, 0);
@@ -412,7 +412,7 @@ static int atmel_serial_init_port(struct console_device *cdev)
 	return 0;
 }
 
-static int atmel_serial_probe(struct device_d *dev)
+static int atmel_serial_probe(struct device *dev)
 {
 	struct atmel_uart_port *uart;
 	struct console_device *cdev;
diff --git a/drivers/serial/efi-stdio.c b/drivers/serial/efi-stdio.c
index 2e2aa57227..eae9df72c3 100644
--- a/drivers/serial/efi-stdio.c
+++ b/drivers/serial/efi-stdio.c
@@ -412,7 +412,7 @@ static void efi_set_mode(struct efi_console_priv *priv)
 				       priv->mode_names, n, priv);
 }
 
-static int efi_console_probe(struct device_d *dev)
+static int efi_console_probe(struct device *dev)
 {
 	efi_guid_t inex_guid = EFI_SIMPLE_TEXT_INPUT_EX_PROTOCOL_GUID;
 	struct efi_simple_text_input_ex_protocol *inex;
diff --git a/drivers/serial/linux_console.c b/drivers/serial/linux_console.c
index a8e9c52125..7e5838b972 100644
--- a/drivers/serial/linux_console.c
+++ b/drivers/serial/linux_console.c
@@ -15,7 +15,7 @@
 
 static void linux_console_putc(struct console_device *cdev, char c)
 {
-	struct device_d *dev = cdev->dev;
+	struct device *dev = cdev->dev;
 	struct linux_console_data *d = dev->platform_data;
 
 	linux_write(d->stdoutfd, &c, 1);
@@ -23,7 +23,7 @@ static void linux_console_putc(struct console_device *cdev, char c)
 
 static int linux_console_tstc(struct console_device *cdev)
 {
-	struct device_d *dev = cdev->dev;
+	struct device *dev = cdev->dev;
 	struct linux_console_data *d = dev->platform_data;
 
 	return linux_tstc(d->stdinfd);
@@ -31,7 +31,7 @@ static int linux_console_tstc(struct console_device *cdev)
 
 static int linux_console_getc(struct console_device *cdev)
 {
-	struct device_d *dev = cdev->dev;
+	struct device *dev = cdev->dev;
 	struct linux_console_data *d = dev->platform_data;
 	static char old_c;
 	char c;
@@ -45,7 +45,7 @@ static int linux_console_getc(struct console_device *cdev)
 	return c;
 }
 
-static int linux_console_probe(struct device_d *dev)
+static int linux_console_probe(struct device *dev)
 {
 	struct console_device *cdev;
 	struct linux_console_data *data = dev->platform_data;
diff --git a/drivers/serial/serial_altera.c b/drivers/serial/serial_altera.c
index 55f4443862..ccc90c4a78 100644
--- a/drivers/serial/serial_altera.c
+++ b/drivers/serial/serial_altera.c
@@ -63,7 +63,7 @@ static int altera_serial_getc(struct console_device *cdev)
 	return readw(&uart->rxdata) & 0x000000FF;
 }
 
-static int altera_serial_probe(struct device_d *dev)
+static int altera_serial_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct console_device *cdev;
diff --git a/drivers/serial/serial_altera_jtag.c b/drivers/serial/serial_altera_jtag.c
index b6720545ce..4ca3eb5ed5 100644
--- a/drivers/serial/serial_altera_jtag.c
+++ b/drivers/serial/serial_altera_jtag.c
@@ -68,7 +68,7 @@ static int altera_serial_jtag_getc(struct console_device *cdev)
 	return val & 0xFF;
 }
 
-static int altera_serial_jtag_probe(struct device_d *dev) {
+static int altera_serial_jtag_probe(struct device *dev) {
 	struct resource *iores;
 
 	struct console_device *cdev;
diff --git a/drivers/serial/serial_ar933x.c b/drivers/serial/serial_ar933x.c
index 29e1151db3..360bd2c4d3 100644
--- a/drivers/serial/serial_ar933x.c
+++ b/drivers/serial/serial_ar933x.c
@@ -141,7 +141,7 @@ static int ar933x_serial_getc(struct console_device *cdev)
 	return rdata & AR933X_UART_DATA_TX_RX_MASK;
 }
 
-static int ar933x_serial_probe(struct device_d *dev)
+static int ar933x_serial_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct console_device *cdev;
diff --git a/drivers/serial/serial_auart.c b/drivers/serial/serial_auart.c
index d8e31fae30..163b6fe5ba 100644
--- a/drivers/serial/serial_auart.c
+++ b/drivers/serial/serial_auart.c
@@ -168,7 +168,7 @@ static void auart_serial_init_port(struct auart_priv *priv)
 	writel(0x0, priv->base + HW_UARTAPP_INTR);
 }
 
-static int auart_serial_probe(struct device_d *dev)
+static int auart_serial_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct auart_priv *priv;
diff --git a/drivers/serial/serial_cadence.c b/drivers/serial/serial_cadence.c
index 84dcd1b76b..88b1806ca1 100644
--- a/drivers/serial/serial_cadence.c
+++ b/drivers/serial/serial_cadence.c
@@ -173,7 +173,7 @@ static int cadence_clocksource_clock_change(struct notifier_block *nb,
 	return 0;
 }
 
-static int cadence_serial_probe(struct device_d *dev)
+static int cadence_serial_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct console_device *cdev;
diff --git a/drivers/serial/serial_clps711x.c b/drivers/serial/serial_clps711x.c
index a348c625f3..de83a8c601 100644
--- a/drivers/serial/serial_clps711x.c
+++ b/drivers/serial/serial_clps711x.c
@@ -127,7 +127,7 @@ static void clps711x_flush(struct console_device *cdev)
 	} while (tmp & SYSFLG_UBUSY);
 }
 
-static int clps711x_probe(struct device_d *dev)
+static int clps711x_probe(struct device *dev)
 {
 	struct device_node *syscon;
 	struct clps711x_uart *s;
diff --git a/drivers/serial/serial_digic.c b/drivers/serial/serial_digic.c
index 74c9c9c7e2..1188cd2052 100644
--- a/drivers/serial/serial_digic.c
+++ b/drivers/serial/serial_digic.c
@@ -89,7 +89,7 @@ static int digic_serial_tstc(struct console_device *cdev)
 	*/
 }
 
-static int digic_serial_probe(struct device_d *dev)
+static int digic_serial_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct console_device *cdev;
diff --git a/drivers/serial/serial_imx.c b/drivers/serial/serial_imx.c
index 225049e52a..d29c3f8a5b 100644
--- a/drivers/serial/serial_imx.c
+++ b/drivers/serial/serial_imx.c
@@ -197,7 +197,7 @@ static int imx_clocksource_clock_change(struct notifier_block *nb,
         return 0;
 }
 
-static int imx_serial_probe(struct device_d *dev)
+static int imx_serial_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct console_device *cdev;
diff --git a/drivers/serial/serial_litex.c b/drivers/serial/serial_litex.c
index 554fee71a3..6802743ac5 100644
--- a/drivers/serial/serial_litex.c
+++ b/drivers/serial/serial_litex.c
@@ -58,7 +58,7 @@ static int litex_serial_tstc(struct console_device *cdev)
 	return !litex_serial_readb(cdev, UART_RXEMPTY);
 }
 
-static int litex_serial_probe(struct device_d *dev)
+static int litex_serial_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct console_device *cdev;
diff --git a/drivers/serial/serial_lpuart.c b/drivers/serial/serial_lpuart.c
index 2f51221a03..0f37aab68f 100644
--- a/drivers/serial/serial_lpuart.c
+++ b/drivers/serial/serial_lpuart.c
@@ -113,7 +113,7 @@ static int lpuart_clocksource_clock_change(struct notifier_block *nb,
 	return lpuart_serial_setbaudrate(&lpuart->cdev, lpuart->baudrate);
 }
 
-static int lpuart_serial_probe(struct device_d *dev)
+static int lpuart_serial_probe(struct device *dev)
 {
 	int ret;
 	struct console_device *cdev;
diff --git a/drivers/serial/serial_mpc5xxx.c b/drivers/serial/serial_mpc5xxx.c
index 38248dfd82..a77780d7c9 100644
--- a/drivers/serial/serial_mpc5xxx.c
+++ b/drivers/serial/serial_mpc5xxx.c
@@ -46,7 +46,7 @@ static int __mpc5xxx_serial_setbaudrate(struct mpc5xxx_psc *psc, int baudrate)
 
 static int mpc5xxx_serial_setbaudrate(struct console_device *cdev, int baudrate)
 {
-	struct device_d *dev = cdev->dev;
+	struct device *dev = cdev->dev;
 	struct mpc5xxx_psc *psc = dev->priv;
 
 	__mpc5xxx_serial_setbaudrate(psc, baudrate);
@@ -90,7 +90,7 @@ static int __mpc5xxx_serial_init(struct mpc5xxx_psc *psc)
 
 static int mpc5xxx_serial_init(struct console_device *cdev)
 {
-	struct device_d *dev = cdev->dev;
+	struct device *dev = cdev->dev;
 	struct mpc5xxx_psc *psc = dev->priv;
 
 	__mpc5xxx_serial_init(psc);
@@ -100,7 +100,7 @@ static int mpc5xxx_serial_init(struct console_device *cdev)
 
 static void mpc5xxx_serial_putc (struct console_device *cdev, const char c)
 {
-	struct device_d *dev = cdev->dev;
+	struct device *dev = cdev->dev;
 	struct mpc5xxx_psc *psc = dev->priv;
 
 	/* Wait for last character to go. */
@@ -112,7 +112,7 @@ static void mpc5xxx_serial_putc (struct console_device *cdev, const char c)
 
 static int mpc5xxx_serial_getc (struct console_device *cdev)
 {
-	struct device_d *dev = cdev->dev;
+	struct device *dev = cdev->dev;
 	struct mpc5xxx_psc *psc = dev->priv;
 
 	/* Wait for a character to arrive. */
@@ -124,13 +124,13 @@ static int mpc5xxx_serial_getc (struct console_device *cdev)
 
 static int mpc5xxx_serial_tstc (struct console_device *cdev)
 {
-	struct device_d *dev = cdev->dev;
+	struct device *dev = cdev->dev;
 	struct mpc5xxx_psc *psc = dev->priv;
 
 	return (psc->psc_status & PSC_SR_RXRDY);
 }
 
-static int mpc5xxx_serial_probe(struct device_d *dev)
+static int mpc5xxx_serial_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct console_device *cdev;
diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index e5cbc3624e..ee8b1d0d3c 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -307,7 +307,7 @@ static void ns16550_flush(struct console_device *cdev)
 	while ((ns16550_read(cdev, lsr) & LSR_TEMT) == 0) ;
 }
 
-static void ns16550_probe_dt(struct device_d *dev, struct ns16550_priv *priv)
+static void ns16550_probe_dt(struct device *dev, struct ns16550_priv *priv)
 {
 	struct device_node *np = dev_of_node(dev);
 	u32 offset;
@@ -385,7 +385,7 @@ static __maybe_unused struct ns16550_drvdata rpi_drvdata = {
 	.linux_earlycon_name = "bcm2835aux",
 };
 
-static int ns16550_init_iomem(struct device_d *dev, struct ns16550_priv *priv)
+static int ns16550_init_iomem(struct device *dev, struct ns16550_priv *priv)
 {
 	struct resource *iores;
 	struct resource *res;
@@ -422,7 +422,7 @@ static int ns16550_init_iomem(struct device_d *dev, struct ns16550_priv *priv)
 	return 0;
 }
 
-static int ns16550_init_ioport(struct device_d *dev, struct ns16550_priv *priv)
+static int ns16550_init_ioport(struct device *dev, struct ns16550_priv *priv)
 {
 	struct resource *res;
 	int width;
@@ -467,7 +467,7 @@ static int ns16550_init_ioport(struct device_d *dev, struct ns16550_priv *priv)
  *	   ENOMEM if calloc failed
  *	   else return result of console_register
  */
-static int ns16550_probe(struct device_d *dev)
+static int ns16550_probe(struct device *dev)
 {
 	struct ns16550_priv *priv;
 	struct console_device *cdev;
diff --git a/drivers/serial/serial_ns16550_pci.c b/drivers/serial/serial_ns16550_pci.c
index 0d7b686fef..f82b5797ce 100644
--- a/drivers/serial/serial_ns16550_pci.c
+++ b/drivers/serial/serial_ns16550_pci.c
@@ -3656,7 +3656,7 @@ pciserial_init_ports(struct pci_dev *dev, const struct pciserial_board *board)
 	uart.pdata->clock = board->base_baud * 16;
 
 	for (i = 0; i < nr_ports; i++) {
-		struct device_d *ns16550_dev;
+		struct device *ns16550_dev;
 		struct resource *res;
 
 		rc = quirk->setup(priv, board, &uart, i);
diff --git a/drivers/serial/serial_omap4_usbboot.c b/drivers/serial/serial_omap4_usbboot.c
index d0d01d585f..75634b7b8c 100644
--- a/drivers/serial/serial_omap4_usbboot.c
+++ b/drivers/serial/serial_omap4_usbboot.c
@@ -46,7 +46,7 @@ static int serial_omap4_usbboot_getc(struct console_device *cdev)
 	return priv->val;
 }
 
-static int serial_omap4_usbboot_probe(struct device_d *dev)
+static int serial_omap4_usbboot_probe(struct device *dev)
 {
 	struct serial_omap4_usbboot_priv *priv;
 	priv = xzalloc(sizeof(*priv));
diff --git a/drivers/serial/serial_pl010.c b/drivers/serial/serial_pl010.c
index f2cf944e8f..717bf7a9f9 100644
--- a/drivers/serial/serial_pl010.c
+++ b/drivers/serial/serial_pl010.c
@@ -115,7 +115,7 @@ static int pl010_tstc(struct console_device *cdev)
 	return !(readl(&pl010->flag) & UART_PL010_FR_RXFE);
 }
 
-static int pl010_probe(struct device_d *dev)
+static int pl010_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct console_device *cdev;
diff --git a/drivers/serial/serial_pxa.c b/drivers/serial/serial_pxa.c
index c9f612dbeb..8dae25966f 100644
--- a/drivers/serial/serial_pxa.c
+++ b/drivers/serial/serial_pxa.c
@@ -149,7 +149,7 @@ static int pxa_serial_setbaudrate(struct console_device *cdev, int baudrate)
 	return 0;
 }
 
-static int pxa_serial_probe(struct device_d *dev)
+static int pxa_serial_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct console_device *cdev;
diff --git a/drivers/serial/serial_s3c.c b/drivers/serial/serial_s3c.c
index 4080079d42..696dbf9b7d 100644
--- a/drivers/serial/serial_s3c.c
+++ b/drivers/serial/serial_s3c.c
@@ -163,7 +163,7 @@ static void s3c_serial_flush(struct console_device *cdev)
 		;
 }
 
-static int s3c_serial_probe(struct device_d *dev)
+static int s3c_serial_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct s3c_uart *priv;
diff --git a/drivers/serial/serial_sbi.c b/drivers/serial/serial_sbi.c
index 343fcda4dc..ec2728345d 100644
--- a/drivers/serial/serial_sbi.c
+++ b/drivers/serial/serial_sbi.c
@@ -36,7 +36,7 @@ static int sbi_serial_tstc(struct console_device *cdev)
 	return priv->head != priv->tail;
 }
 
-static int sbi_serial_probe(struct device_d *dev)
+static int sbi_serial_probe(struct device *dev)
 {
 	struct sbi_serial_priv *priv;
 
diff --git a/drivers/serial/serial_sifive.c b/drivers/serial/serial_sifive.c
index 9257363fd1..93b118cb32 100644
--- a/drivers/serial/serial_sifive.c
+++ b/drivers/serial/serial_sifive.c
@@ -116,7 +116,7 @@ static void sifive_serial_flush(struct console_device *cdev)
 		;
 }
 
-static int sifive_serial_probe(struct device_d *dev)
+static int sifive_serial_probe(struct device *dev)
 {
 	struct sifive_serial_priv *priv;
 	struct resource *iores;
diff --git a/drivers/serial/serial_stm32.c b/drivers/serial/serial_stm32.c
index f0571f986b..2e45f383d3 100644
--- a/drivers/serial/serial_stm32.c
+++ b/drivers/serial/serial_stm32.c
@@ -138,7 +138,7 @@ static void stm32_serial_init(struct console_device *cdev)
 	writel(cr1, base + CR1_OFFSET(stm32f4));
 }
 
-static int stm32_serial_probe(struct device_d *dev)
+static int stm32_serial_probe(struct device *dev)
 {
 	int ret;
 	struct console_device *cdev;
diff --git a/drivers/serial/stm-serial.c b/drivers/serial/stm-serial.c
index b4b2c4cc8f..0c4e68f0e7 100644
--- a/drivers/serial/stm-serial.c
+++ b/drivers/serial/stm-serial.c
@@ -132,7 +132,7 @@ static int stm_serial_init_port(struct stm_priv *priv)
 	return 0;
 }
 
-static int stm_serial_probe(struct device_d *dev)
+static int stm_serial_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct stm_priv *priv;
diff --git a/drivers/soc/imx/gpcv2.c b/drivers/soc/imx/gpcv2.c
index 248763db54..a3a2719bc7 100644
--- a/drivers/soc/imx/gpcv2.c
+++ b/drivers/soc/imx/gpcv2.c
@@ -302,7 +302,7 @@ struct imx_pgc_domain {
 
 	const int voltage;
 	const bool keep_clocks;
-	struct device_d *dev;
+	struct device *dev;
 
 	unsigned int pgc_sw_pup_reg;
 	unsigned int pgc_sw_pdn_reg;
@@ -1136,7 +1136,7 @@ static const struct imx_pgc_domain_data imx8mn_pgc_domain_data = {
 	.pgc_regs = &imx7_pgc_regs,
 };
 
-static int imx_pgc_domain_probe(struct device_d *dev)
+static int imx_pgc_domain_probe(struct device *dev)
 {
 	struct imx_pgc_domain *domain = dev->priv;
 	int ret;
@@ -1206,7 +1206,7 @@ static struct driver_d imx_pgc_domain_driver = {
 };
 coredevice_platform_driver(imx_pgc_domain_driver);
 
-static int imx_gpcv2_probe(struct device_d *dev)
+static int imx_gpcv2_probe(struct device *dev)
 {
 	const struct imx_pgc_domain_data *domain_data =
 			of_device_get_match_data(dev);
@@ -1247,7 +1247,7 @@ again:
 	for_each_child_of_node(pgc_np, np) {
 		bool child_domain = of_property_read_bool(np, "power-domains");
 		struct imx_pgc_domain *domain;
-		struct device_d *pd_dev;
+		struct device *pd_dev;
 		u32 domain_index;
 
 		if ((pass == 0 && child_domain) || (pass == 1 && !child_domain))
diff --git a/drivers/soc/imx/imx8m-featctrl.c b/drivers/soc/imx/imx8m-featctrl.c
index f2c57ac136..9a2b66555d 100644
--- a/drivers/soc/imx/imx8m-featctrl.c
+++ b/drivers/soc/imx/imx8m-featctrl.c
@@ -33,7 +33,7 @@ static inline bool is_fused(u32 val, u32 bitmask)
 	return bitmask && (val & bitmask) == bitmask;
 }
 
-int imx8m_feat_ctrl_init(struct device_d *dev, u32 tester4,
+int imx8m_feat_ctrl_init(struct device *dev, u32 tester4,
 			 const struct imx8m_featctrl_data *data)
 {
 	unsigned long *features;
diff --git a/drivers/soc/kvx/kvx_socinfo.c b/drivers/soc/kvx/kvx_socinfo.c
index 9e3a167fc7..a623a6c2e4 100644
--- a/drivers/soc/kvx/kvx_socinfo.c
+++ b/drivers/soc/kvx/kvx_socinfo.c
@@ -121,7 +121,7 @@ static int kvx_read_serial(struct device_node *socinfo)
 	return 0;
 }
 
-static int kvx_socinfo_probe(struct device_d *dev)
+static int kvx_socinfo_probe(struct device *dev)
 {
 	kvx_soc_info_read_revision();
 
diff --git a/drivers/soc/rockchip/io-domain.c b/drivers/soc/rockchip/io-domain.c
index 7ff6bd38a2..2d9f71b961 100644
--- a/drivers/soc/rockchip/io-domain.c
+++ b/drivers/soc/rockchip/io-domain.c
@@ -53,7 +53,7 @@ struct rockchip_iodomain_soc_data {
 };
 
 struct rockchip_iodomain {
-	struct device_d *dev;
+	struct device *dev;
 	struct regmap *grf;
 	const struct rockchip_iodomain_soc_data *soc_data;
 	struct rockchip_iodomain_supply supplies[MAX_SUPPLIES];
@@ -126,7 +126,7 @@ static const struct of_device_id rockchip_iodomain_match[] = {
 	{ /* sentinel */ },
 };
 
-static int rockchip_iodomain_probe(struct device_d *dev)
+static int rockchip_iodomain_probe(struct device *dev)
 {
 	struct device_node *np = dev->of_node, *parent;
 	struct rockchip_iodomain *iod;
diff --git a/drivers/soc/sifive/sifive_l2_cache.c b/drivers/soc/sifive/sifive_l2_cache.c
index 74eab8df0a..5a272ec7b3 100644
--- a/drivers/soc/sifive/sifive_l2_cache.c
+++ b/drivers/soc/sifive/sifive_l2_cache.c
@@ -48,7 +48,7 @@
 
 static void __iomem *l2_base = NULL;
 
-static void sifive_l2_config_read(struct device_d *dev)
+static void sifive_l2_config_read(struct device *dev)
 {
 	u32 regval, val;
 
@@ -101,7 +101,7 @@ static void sifive_l2_enable_ways(void)
 	mb();
 }
 
-static int sifive_l2_probe(struct device_d *dev)
+static int sifive_l2_probe(struct device *dev)
 {
 	struct resource *iores;
 
diff --git a/drivers/sound/gpio-beeper.c b/drivers/sound/gpio-beeper.c
index 714bbee3c3..5be525b30a 100644
--- a/drivers/sound/gpio-beeper.c
+++ b/drivers/sound/gpio-beeper.c
@@ -22,7 +22,7 @@ static int gpio_beeper_beep(struct sound_card *card, unsigned freq, unsigned dur
 	return 0;
 }
 
-static int gpio_beeper_probe(struct device_d *dev)
+static int gpio_beeper_probe(struct device *dev)
 {
 	struct device_node *np = dev->of_node;
 	struct gpio_beeper *beeper;
@@ -46,7 +46,7 @@ static int gpio_beeper_probe(struct device_d *dev)
 	return sound_card_register(card);
 }
 
-static void gpio_beeper_suspend(struct device_d *dev)
+static void gpio_beeper_suspend(struct device *dev)
 {
 	struct gpio_beeper *beeper = dev->priv;
 
diff --git a/drivers/sound/pwm-beeper.c b/drivers/sound/pwm-beeper.c
index 83401f5dad..448c813964 100644
--- a/drivers/sound/pwm-beeper.c
+++ b/drivers/sound/pwm-beeper.c
@@ -49,7 +49,7 @@ pwm_disable:
 	return error;
 }
 
-static int pwm_beeper_probe(struct device_d *dev)
+static int pwm_beeper_probe(struct device *dev)
 {
 	struct pwm_beeper *beeper;
 	struct sound_card *card;
@@ -104,7 +104,7 @@ static int pwm_beeper_probe(struct device_d *dev)
 	return sound_card_register(card);
 }
 
-static void pwm_beeper_suspend(struct device_d *dev)
+static void pwm_beeper_suspend(struct device *dev)
 {
 	struct pwm_beeper *beeper = dev->priv;
 
diff --git a/drivers/sound/sdl.c b/drivers/sound/sdl.c
index 118d774295..b71151de96 100644
--- a/drivers/sound/sdl.c
+++ b/drivers/sound/sdl.c
@@ -40,7 +40,7 @@ static int sandbox_sound_beep(struct sound_card *card, unsigned freq, unsigned d
     return ret;
 }
 
-static int sandbox_sound_probe(struct device_d *dev)
+static int sandbox_sound_probe(struct device *dev)
 {
 	struct sandbox_sound *priv;
 	struct sound_card *card;
diff --git a/drivers/spi/altera_spi.c b/drivers/spi/altera_spi.c
index 3db8af5415..e160c65d10 100644
--- a/drivers/spi/altera_spi.c
+++ b/drivers/spi/altera_spi.c
@@ -17,7 +17,7 @@ static void altera_spi_cs_inactive(struct spi_device *spi);
 static int altera_spi_setup(struct spi_device *spi)
 {
 	struct spi_master *master = spi->master;
-	struct device_d spi_dev = spi->dev;
+	struct device spi_dev = spi->dev;
 	struct altera_spi *altera_spi = container_of(master, struct altera_spi, master);
 
 	if (spi->bits_per_word != altera_spi->databits) {
@@ -193,7 +193,7 @@ static int altera_spi_transfer(struct spi_device *spi, struct spi_message *mesg)
 	return 0;
 }
 
-static int altera_spi_probe(struct device_d *dev)
+static int altera_spi_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct spi_master *master;
diff --git a/drivers/spi/ath79_spi.c b/drivers/spi/ath79_spi.c
index 5b1f984be4..802c9d5539 100644
--- a/drivers/spi/ath79_spi.c
+++ b/drivers/spi/ath79_spi.c
@@ -126,7 +126,7 @@ static inline void ath79_spi_chipselect(struct ath79_spi *sp, int chipselect)
 static int ath79_spi_setup(struct spi_device *spi)
 {
 	struct spi_master *master = spi->master;
-	struct device_d spi_dev = spi->dev;
+	struct device spi_dev = spi->dev;
 
 	if (spi->bits_per_word != 8) {
 		dev_err(master->dev, "master doesn't support %d bits per word requested by %s\n",
@@ -220,7 +220,7 @@ static void ath79_spi_disable(struct ath79_spi *sp)
 	ath79_spi_wr(sp, 0, AR71XX_SPI_REG_FS);
 }
 
-static int ath79_spi_probe(struct device_d *dev)
+static int ath79_spi_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct spi_master *master;
@@ -269,7 +269,7 @@ static int ath79_spi_probe(struct device_d *dev)
 	return 0;
 }
 
-static void ath79_spi_remove(struct device_d *dev)
+static void ath79_spi_remove(struct device *dev)
 {
 	struct ath79_spi *sp = dev->priv;
 
diff --git a/drivers/spi/atmel-quadspi.c b/drivers/spi/atmel-quadspi.c
index 55ebccc877..9b5c488a0c 100644
--- a/drivers/spi/atmel-quadspi.c
+++ b/drivers/spi/atmel-quadspi.c
@@ -414,7 +414,7 @@ static int atmel_qspi_init(struct atmel_qspi *aq)
 	return 0;
 }
 
-static int atmel_qspi_probe(struct device_d *dev)
+static int atmel_qspi_probe(struct device *dev)
 {
 	struct spi_controller *ctrl;
 	struct atmel_qspi *aq;
diff --git a/drivers/spi/atmel_spi.c b/drivers/spi/atmel_spi.c
index 6c2809cfff..2dcf394427 100644
--- a/drivers/spi/atmel_spi.c
+++ b/drivers/spi/atmel_spi.c
@@ -383,7 +383,7 @@ static void atmel_get_caps(struct atmel_spi *as)
 	as->caps.is_spi2 = version > 0x121;
 }
 
-static int atmel_spi_probe(struct device_d *dev)
+static int atmel_spi_probe(struct device *dev)
 {
 	struct resource *iores;
 	int ret = 0;
diff --git a/drivers/spi/dspi_spi.c b/drivers/spi/dspi_spi.c
index 6e498dd67e..52c1340016 100644
--- a/drivers/spi/dspi_spi.c
+++ b/drivers/spi/dspi_spi.c
@@ -93,7 +93,7 @@ static struct fsl_dspi *to_dspi(struct spi_master *master)
 	return container_of(master, struct fsl_dspi, master);
 }
 
-static void hz_to_spi_baud(struct device_d *dev,
+static void hz_to_spi_baud(struct device *dev,
 			   char *pbr, char *br, int speed_hz,
 			   unsigned long clkrate)
 {
@@ -132,7 +132,7 @@ static void hz_to_spi_baud(struct device_d *dev,
 	}
 }
 
-static void ns_delay_scale(struct device_d *dev,
+static void ns_delay_scale(struct device *dev,
 			   char *psc, char *sc, int delay_ns,
 			   unsigned long clkrate)
 {
@@ -314,7 +314,7 @@ static int dspi_setup(struct spi_device *spi)
 	return 0;
 }
 
-static int dspi_probe(struct device_d *dev)
+static int dspi_probe(struct device *dev)
 {
 	struct resource *io;
 	struct fsl_dspi *dspi;
diff --git a/drivers/spi/gpio_spi.c b/drivers/spi/gpio_spi.c
index 8434c37cc9..fab8d6c4ff 100644
--- a/drivers/spi/gpio_spi.c
+++ b/drivers/spi/gpio_spi.c
@@ -126,7 +126,7 @@ static int gpio_spi_setup(struct spi_device *spi)
 	return 0;
 }
 
-static int gpio_spi_of_probe(struct device_d *dev)
+static int gpio_spi_of_probe(struct device *dev)
 {
 	struct device_node *np = dev->of_node;
 	struct gpio_spi_pdata *pdata;
@@ -166,7 +166,7 @@ static int gpio_spi_of_probe(struct device_d *dev)
 	return 0;
 }
 
-static int gpio_spi_probe(struct device_d *dev)
+static int gpio_spi_probe(struct device *dev)
 {
 	struct gpio_spi *priv;
 	struct gpio_spi_pdata *pdata;
diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
index f70b543b4c..d7caa71752 100644
--- a/drivers/spi/imx_spi.c
+++ b/drivers/spi/imx_spi.c
@@ -577,7 +577,7 @@ static int imx_spi_dt_probe(struct imx_spi *imx)
 	return 0;
 }
 
-static int imx_spi_probe(struct device_d *dev)
+static int imx_spi_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct spi_master *master;
diff --git a/drivers/spi/litex_spiflash.c b/drivers/spi/litex_spiflash.c
index e1fc5a4d3f..896b71ae84 100644
--- a/drivers/spi/litex_spiflash.c
+++ b/drivers/spi/litex_spiflash.c
@@ -93,7 +93,7 @@ static inline void litex_spiflash_spi_chipselect(struct litex_spiflash_spi *sc,
 static int litex_spiflash_spi_setup(struct spi_device *spi)
 {
 	struct spi_master *master = spi->master;
-	struct device_d spi_dev = spi->dev;
+	struct device spi_dev = spi->dev;
 
 	if (spi->bits_per_word != 8) {
 		dev_err(master->dev, "master doesn't support %d bits per word requested by %s\n",
@@ -184,7 +184,7 @@ static void litex_spiflash_spi_disable(struct litex_spiflash_spi *sp)
 	litex_spiflash_spi_wr(sp, 0, SPIFLASH_BITBANG_EN);
 }
 
-static int litex_spiflash_spi_probe(struct device_d *dev)
+static int litex_spiflash_spi_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct spi_master *master;
@@ -216,7 +216,7 @@ static int litex_spiflash_spi_probe(struct device_d *dev)
 	return 0;
 }
 
-static void litex_spiflash_spi_remove(struct device_d *dev)
+static void litex_spiflash_spi_remove(struct device *dev)
 {
 	struct litex_spiflash_spi *sp = dev->priv;
 
diff --git a/drivers/spi/mvebu_spi.c b/drivers/spi/mvebu_spi.c
index 8584adfd07..50c0a12fc3 100644
--- a/drivers/spi/mvebu_spi.c
+++ b/drivers/spi/mvebu_spi.c
@@ -348,7 +348,7 @@ static struct of_device_id mvebu_spi_dt_ids[] = {
 	{ }
 };
 
-static int mvebu_spi_probe(struct device_d *dev)
+static int mvebu_spi_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct spi_master *master;
diff --git a/drivers/spi/mxs_spi.c b/drivers/spi/mxs_spi.c
index 071622bd54..3a7bf18001 100644
--- a/drivers/spi/mxs_spi.c
+++ b/drivers/spi/mxs_spi.c
@@ -243,7 +243,7 @@ static int mxs_spi_transfer(struct spi_device *spi, struct spi_message *mesg)
 	return 0;
 }
 
-static int mxs_spi_probe(struct device_d *dev)
+static int mxs_spi_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct spi_master *master;
diff --git a/drivers/spi/omap3_spi.c b/drivers/spi/omap3_spi.c
index ca79eaf111..d770b07d36 100644
--- a/drivers/spi/omap3_spi.c
+++ b/drivers/spi/omap3_spi.c
@@ -332,7 +332,8 @@ static int omap3_spi_setup(struct spi_device *spi)
 	return 0;
 }
 
-static int omap3_spi_probe_dt(struct device_d *dev, struct omap3_spi_master *omap3_master)
+static int omap3_spi_probe_dt(struct device *dev,
+			      struct omap3_spi_master *omap3_master)
 {
 	if (!IS_ENABLED(CONFIG_OFDEVICE) || !dev->of_node)
 		return -ENODEV;
@@ -343,7 +344,7 @@ static int omap3_spi_probe_dt(struct device_d *dev, struct omap3_spi_master *oma
 	return 0;
 }
 
-static int omap3_spi_probe(struct device_d *dev)
+static int omap3_spi_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct spi_master *master;
diff --git a/drivers/spi/spi-fsl-dspi.c b/drivers/spi/spi-fsl-dspi.c
index 5c8469576b..76b2b8102c 100644
--- a/drivers/spi/spi-fsl-dspi.c
+++ b/drivers/spi/spi-fsl-dspi.c
@@ -132,7 +132,7 @@ static const struct fsl_dspi_devtype_data ls2085a_data = {
 
 struct fsl_dspi {
 	struct spi_controller			ctlr;
-	struct device_d				*dev;
+	struct device				*dev;
 
 	struct regmap				*regmap;
 	struct regmap				*regmap_pushr;
@@ -553,7 +553,7 @@ static void dspi_init(struct fsl_dspi *dspi)
 			     SPI_CTARE_FMSZE(0) | SPI_CTARE_DTCP(1));
 }
 
-static int dspi_probe(struct device_d *dev)
+static int dspi_probe(struct device *dev)
 {
 	struct device_node *np = dev->of_node;
 	const struct regmap_config *regmap_config;
diff --git a/drivers/spi/spi-fsl-qspi.c b/drivers/spi/spi-fsl-qspi.c
index 835c93565c..4c86ff07cc 100644
--- a/drivers/spi/spi-fsl-qspi.c
+++ b/drivers/spi/spi-fsl-qspi.c
@@ -239,7 +239,7 @@ struct fsl_qspi {
 	void __iomem *ahb_addr;
 	u32 memmap_phy;
 	struct clk *clk, *clk_en;
-	struct device_d *dev;
+	struct device *dev;
 	struct spi_controller ctlr;
 	const struct fsl_qspi_devtype_data *devtype_data;
 	struct mutex lock;
@@ -743,7 +743,7 @@ static int fsl_qspi_setup(struct spi_device *spi)
 static const char *fsl_qspi_get_name(struct spi_mem *mem)
 {
 	struct fsl_qspi *q = spi_controller_get_devdata(mem->spi->controller);
-	struct device_d *dev = &mem->spi->dev;
+	struct device *dev = &mem->spi->dev;
 	const char *name;
 
 	/*
@@ -770,7 +770,7 @@ static const struct spi_controller_mem_ops fsl_qspi_mem_ops = {
 	.get_name = fsl_qspi_get_name,
 };
 
-static int fsl_qspi_probe(struct device_d *dev)
+static int fsl_qspi_probe(struct device *dev)
 {
 	struct spi_controller *ctlr;
 	struct resource *res;
diff --git a/drivers/spi/spi-nxp-fspi.c b/drivers/spi/spi-nxp-fspi.c
index b0378126a3..768f739972 100644
--- a/drivers/spi/spi-nxp-fspi.c
+++ b/drivers/spi/spi-nxp-fspi.c
@@ -355,7 +355,7 @@ struct nxp_fspi {
 	u32 memmap_start;
 	u32 memmap_len;
 	struct clk *clk, *clk_en;
-	struct device_d *dev;
+	struct device *dev;
 	struct spi_controller ctlr;
 	const struct nxp_fspi_devtype_data *devtype_data;
 	struct mutex lock;
@@ -544,7 +544,7 @@ static void nxp_fspi_prepare_lut(struct nxp_fspi *f,
 	for (i = 0; i < ARRAY_SIZE(lutval); i++)
 		fspi_writel(f, lutval[i], base + FSPI_LUT_REG(i));
 
-	dev_dbg((const struct device_d *)f->dev,
+	dev_dbg((const struct device *)f->dev,
 		"CMD[%x] lutval[0:%x \t 1:%x \t 2:%x \t 3:%x], size: 0x%08x\n",
 		op->cmd.opcode, lutval[0], lutval[1], lutval[2], lutval[3],
 		op->data.nbytes);
@@ -642,7 +642,8 @@ static void nxp_fspi_select_mem(struct nxp_fspi *f, struct spi_device *spi)
 	fspi_writel(f, size_kb, f->iobase + FSPI_FLSHA1CR0 +
 		    4 * spi->chip_select);
 
-	dev_dbg((const struct device_d *)f->dev, "Slave device [CS:%x] selected\n",
+	dev_dbg((const struct device *)f->dev,
+			"Slave device [CS:%x] selected\n",
 			spi->chip_select);
 
 	nxp_fspi_clk_disable_unprep(f);
@@ -937,7 +938,7 @@ static int nxp_fspi_setup(struct spi_device *spi)
 static const char *nxp_fspi_get_name(struct spi_mem *mem)
 {
 	struct nxp_fspi *f = spi_controller_get_devdata(mem->spi->master);
-	struct device_d *dev = (struct device_d *)&mem->spi->dev;
+	struct device *dev = (struct device *)&mem->spi->dev;
 	const char *name;
 
 	/* Set custom name derived from the platform_device of the controller.
@@ -961,7 +962,7 @@ static const struct spi_controller_mem_ops nxp_fspi_mem_ops = {
 	.get_name = nxp_fspi_get_name,
 };
 
-static int nxp_fspi_probe(struct device_d *dev)
+static int nxp_fspi_probe(struct device *dev)
 {
 	struct spi_controller *ctlr;
 	struct resource *res;
diff --git a/drivers/spi/spi-sifive.c b/drivers/spi/spi-sifive.c
index eb87ba1d8c..53709092b5 100644
--- a/drivers/spi/spi-sifive.c
+++ b/drivers/spi/spi-sifive.c
@@ -301,7 +301,7 @@ static int sifive_spi_exec_op(struct spi_mem *mem,
 			      const struct spi_mem_op *op)
 {
 	struct spi_device *spi_dev = mem->spi;
-	struct device_d *dev = &spi_dev->dev;
+	struct device *dev = &spi_dev->dev;
 	struct sifive_spi *spi = spi_controller_get_devdata(spi_dev->controller);
 	u8 opcode = op->cmd.opcode;
 	int ret;
@@ -415,7 +415,7 @@ static int sifive_spi_setup(struct spi_device *spi_dev)
 
 static void sifive_spi_init_hw(struct sifive_spi *spi)
 {
-	struct device_d *dev = spi->ctlr.dev;
+	struct device *dev = spi->ctlr.dev;
 	u32 cs_bits;
 
 	/* probe the number of CS lines */
@@ -466,7 +466,7 @@ static void sifive_spi_dt_probe(struct sifive_spi *spi)
 	of_property_read_u32(node, "sifive,max-bits-per-word", &spi->bits_per_word);
 }
 
-static int sifive_spi_probe(struct device_d *dev)
+static int sifive_spi_probe(struct device *dev)
 {
 	struct sifive_spi *spi;
 	struct resource *iores;
diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index 15c8a9f447..d6f939e51c 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -383,12 +383,12 @@ int spi_write_then_read(struct spi_device *spi,
 }
 EXPORT_SYMBOL(spi_write_then_read);
 
-static int spi_probe(struct device_d *dev)
+static int spi_probe(struct device *dev)
 {
 	return dev->driver->probe(dev);
 }
 
-static void spi_remove(struct device_d *dev)
+static void spi_remove(struct device *dev)
 {
 	if (dev->driver->remove)
 		dev->driver->remove(dev);
diff --git a/drivers/spi/stm32_spi.c b/drivers/spi/stm32_spi.c
index 639c4f1740..08cb71aa79 100644
--- a/drivers/spi/stm32_spi.c
+++ b/drivers/spi/stm32_spi.c
@@ -190,7 +190,7 @@ static void stm32_spi_disable(struct stm32_spi_priv *priv)
 
 static void stm32_spi_stopxfer(struct stm32_spi_priv *priv)
 {
-	struct device_d *dev = priv->master.dev;
+	struct device *dev = priv->master.dev;
 	u32 cr1, sr;
 	int ret;
 
@@ -339,7 +339,7 @@ out:
 static int stm32_spi_transfer_one(struct stm32_spi_priv *priv,
 				  struct spi_transfer *t)
 {
-	struct device_d *dev = priv->master.dev;
+	struct device *dev = priv->master.dev;
 	u32 sr;
 	u32 ifcr = 0;
 	u32 mode;
@@ -521,7 +521,7 @@ static void stm32_spi_dt_probe(struct stm32_spi_priv *priv)
 		priv->cs_gpios[i] = of_get_named_gpio(node, "cs-gpios", i);
 }
 
-static int stm32_spi_probe(struct device_d *dev)
+static int stm32_spi_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct spi_master *master;
@@ -588,7 +588,7 @@ static int stm32_spi_probe(struct device_d *dev)
 	return spi_register_master(master);
 }
 
-static void stm32_spi_remove(struct device_d *dev)
+static void stm32_spi_remove(struct device *dev)
 {
 	struct stm32_spi_priv *priv = dev->priv;
 
diff --git a/drivers/spi/zynq_qspi.c b/drivers/spi/zynq_qspi.c
index f8073d8f90..8d9ef21694 100644
--- a/drivers/spi/zynq_qspi.c
+++ b/drivers/spi/zynq_qspi.c
@@ -125,7 +125,7 @@
  */
 struct zynq_qspi {
 	struct spi_controller ctlr;
-	struct device_d *dev;
+	struct device *dev;
 	void __iomem *regs;
 	struct clk *refclk;
 	struct clk *pclk;
@@ -539,7 +539,7 @@ static const struct spi_controller_mem_ops zynq_qspi_mem_ops = {
 	.exec_op = zynq_qspi_exec_mem_op,
 };
 
-static int zynq_qspi_probe(struct device_d *dev)
+static int zynq_qspi_probe(struct device *dev)
 {
 	struct device_node *np = dev->of_node;
 	struct spi_controller *ctlr;
diff --git a/drivers/usb/core/hub.c b/drivers/usb/core/hub.c
index 6fbe37fccf..8c85b93420 100644
--- a/drivers/usb/core/hub.c
+++ b/drivers/usb/core/hub.c
@@ -660,7 +660,7 @@ static int usb_hub_configure_ports(struct usb_device *dev)
 	return usb_device_list_scan();
 }
 
-static int usb_hub_detect(struct device_d *dev)
+static int usb_hub_detect(struct device *dev)
 {
 	struct usb_device *usbdev = container_of(dev, struct usb_device, dev);
 	int i;
diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index ed3a96cb9e..037bf1bd94 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -77,7 +77,7 @@ static inline void usb_host_release(struct usb_host *host)
 	slice_release(&host->slice);
 }
 
-static int usb_hw_detect(struct device_d *dev)
+static int usb_hw_detect(struct device *dev)
 {
 	struct usb_host *host;
 
@@ -1102,7 +1102,7 @@ static const struct usb_device_id *usb_match_id(struct usb_device *usbdev,
 }
 EXPORT_SYMBOL(usb_match_id);
 
-static int usb_match(struct device_d *dev, struct driver_d *drv)
+static int usb_match(struct device *dev, struct driver_d *drv)
 {
 	struct usb_device *usbdev = container_of(dev, struct usb_device, dev);
 	struct usb_driver *usbdrv = container_of(dev->driver, struct usb_driver, driver);
@@ -1119,7 +1119,7 @@ static int usb_match(struct device_d *dev, struct driver_d *drv)
 	return 1;
 }
 
-static int usb_probe(struct device_d *dev)
+static int usb_probe(struct device *dev)
 {
 	struct usb_device *usbdev = container_of(dev, struct usb_device, dev);
 	struct usb_driver *usbdrv = container_of(dev->driver, struct usb_driver, driver);
@@ -1130,7 +1130,7 @@ static int usb_probe(struct device_d *dev)
 	return usbdrv->probe(usbdev, id);
 }
 
-static void usb_remove(struct device_d *dev)
+static void usb_remove(struct device *dev)
 {
 	struct usb_device *usbdev = container_of(dev, struct usb_device, dev);
 	struct usb_driver *usbdrv = container_of(dev->driver, struct usb_driver, driver);
diff --git a/drivers/usb/dwc2/core.h b/drivers/usb/dwc2/core.h
index 84cb698dc8..a9526a8c5d 100644
--- a/drivers/usb/dwc2/core.h
+++ b/drivers/usb/dwc2/core.h
@@ -460,7 +460,7 @@ enum dwc2_ep0_state {
 #define DWC2_CTRL_BUFF_SIZE 8
 
 struct dwc2 {
-	struct device_d *dev;
+	struct device *dev;
 	void __iomem *regs;
 	enum usb_dr_mode dr_mode;
 	struct dwc2_hw_params hw_params;
diff --git a/drivers/usb/dwc2/dwc2.c b/drivers/usb/dwc2/dwc2.c
index 8cb99446e4..6c71efee8e 100644
--- a/drivers/usb/dwc2/dwc2.c
+++ b/drivers/usb/dwc2/dwc2.c
@@ -85,7 +85,7 @@ static int dwc2_set_mode(void *ctx, enum usb_dr_mode mode)
 
 typedef void (*set_params_cb)(struct dwc2 *dwc2);
 
-static int dwc2_probe(struct device_d *dev)
+static int dwc2_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct dwc2 *dwc2;
@@ -180,7 +180,7 @@ release_region:
 	return ret;
 }
 
-static void dwc2_remove(struct device_d *dev)
+static void dwc2_remove(struct device *dev)
 {
 	struct dwc2 *dwc2 = dev->priv;
 
diff --git a/drivers/usb/dwc2/host.c b/drivers/usb/dwc2/host.c
index bf9366273d..344f058be2 100644
--- a/drivers/usb/dwc2/host.c
+++ b/drivers/usb/dwc2/host.c
@@ -616,7 +616,7 @@ static void dwc2_config_fifos(struct dwc2 *dwc2)
  * @param regs Programming view of DWC2 controller
  *
  */
-static void dwc2_core_host_init(struct device_d *dev,
+static void dwc2_core_host_init(struct device *dev,
 				   struct dwc2 *dwc2)
 {
 	uint32_t hcchar, hcfg, hprt0, hotgctl, usbcfg;
@@ -721,7 +721,7 @@ static void dwc2_core_host_init(struct device_d *dev,
 static int dwc2_host_init(struct usb_host *host)
 {
 	struct dwc2 *dwc2 = to_dwc2(host);
-	struct device_d *dev = dwc2->dev;
+	struct device *dev = dwc2->dev;
 	uint32_t hprt0, gusbcfg;
 	int i, j;
 
diff --git a/drivers/usb/dwc3/core.c b/drivers/usb/dwc3/core.c
index 77e225e47a..66947c97a9 100644
--- a/drivers/usb/dwc3/core.c
+++ b/drivers/usb/dwc3/core.c
@@ -35,7 +35,7 @@ struct dwc3_match_data {
 static int dwc3_get_dr_mode(struct dwc3 *dwc)
 {
 	enum usb_dr_mode mode;
-	struct device_d *dev = dwc->dev;
+	struct device *dev = dwc->dev;
 	unsigned int hw_mode;
 
 	if (dwc->dr_mode == USB_DR_MODE_UNKNOWN)
@@ -634,7 +634,7 @@ static int dwc3_core_get_phy(struct dwc3 *dwc);
 /* set global incr burst type configuration registers */
 static void dwc3_set_incr_burst_type(struct dwc3 *dwc)
 {
-	struct device_d *dev = dwc->dev;
+	struct device *dev = dwc->dev;
 	/* incrx_mode : for INCR burst type. */
 	bool incrx_mode;
 	/* incrx_size : for size of INCRX burst. */
@@ -904,7 +904,7 @@ err0:
 
 static int dwc3_core_get_phy(struct dwc3 *dwc)
 {
-	struct device_d		*dev = dwc->dev;
+	struct device		*dev = dwc->dev;
 	int ret;
 
 	dwc->usb2_generic_phy = phy_get(dev, "usb2-phy");
@@ -939,7 +939,7 @@ static int dwc3_core_get_phy(struct dwc3 *dwc)
 static int dwc3_set_mode(void *ctx, enum usb_dr_mode mode)
 {
 	struct dwc3 *dwc = ctx;
-	struct device_d *dev = dwc->dev;
+	struct device *dev = dwc->dev;
 	int ret;
 
 	switch (mode) {
@@ -980,7 +980,7 @@ static int dwc3_core_init_mode(struct dwc3 *dwc)
 
 static void dwc3_get_properties(struct dwc3 *dwc)
 {
-	struct device_d		*dev = dwc->dev;
+	struct device		*dev = dwc->dev;
 	u8			lpm_nyet_threshold;
 	u8			tx_de_emphasis;
 	u8			hird_threshold;
@@ -1031,7 +1031,7 @@ bool dwc3_has_imod(struct dwc3 *dwc)
 
 static void dwc3_check_params(struct dwc3 *dwc)
 {
-	struct device_d *dev = dwc->dev;
+	struct device *dev = dwc->dev;
 
 	/* Check for proper value of imod_interval */
 	if (dwc->imod_interval && !dwc3_has_imod(dwc)) {
@@ -1097,7 +1097,7 @@ static void dwc3_coresoft_reset(struct dwc3 *dwc)
 	dwc3_writel(dwc->regs, DWC3_GCTL, reg);
 }
 
-static int dwc3_probe(struct device_d *dev)
+static int dwc3_probe(struct device *dev)
 {
 	const struct dwc3_match_data *match;
 	struct dwc3		*dwc;
@@ -1172,7 +1172,7 @@ static int dwc3_probe(struct device_d *dev)
 	return 0;
 }
 
-static void dwc3_remove(struct device_d *dev)
+static void dwc3_remove(struct device *dev)
 {
 	struct dwc3 *dwc = dev->priv;
 
diff --git a/drivers/usb/dwc3/core.h b/drivers/usb/dwc3/core.h
index 96e8d0d250..5ad1fea8e0 100644
--- a/drivers/usb/dwc3/core.h
+++ b/drivers/usb/dwc3/core.h
@@ -990,9 +990,9 @@ struct dwc3 {
 	dma_addr_t			scratch_addr;
 	struct dwc3_request		ep0_usb_req;
 
-	struct device_d		*dev;
+	struct device		*dev;
 
-	struct device_d		*xhci;
+	struct device		*xhci;
 
 	struct dwc3_event_buffer	*ev_buf;
 	struct dwc3_ep			*eps[DWC3_ENDPOINTS_NUM];
diff --git a/drivers/usb/dwc3/dwc3-of-simple.c b/drivers/usb/dwc3/dwc3-of-simple.c
index c2785a5336..f470e916eb 100644
--- a/drivers/usb/dwc3/dwc3-of-simple.c
+++ b/drivers/usb/dwc3/dwc3-of-simple.c
@@ -20,12 +20,12 @@
 #include <of.h>
 
 struct dwc3_of_simple {
-	struct device_d		*dev;
+	struct device		*dev;
 	struct clk_bulk_data	*clks;
 	int			num_clocks;
 };
 
-static int dwc3_of_simple_probe(struct device_d *dev)
+static int dwc3_of_simple_probe(struct device *dev)
 {
 	struct dwc3_of_simple	*simple;
 	struct device_node	*np = dev->of_node;
@@ -57,7 +57,7 @@ static int dwc3_of_simple_probe(struct device_d *dev)
 	return 0;
 }
 
-static void dwc3_of_simple_remove(struct device_d *dev)
+static void dwc3_of_simple_remove(struct device *dev)
 {
 	struct dwc3_of_simple	*simple = dev->priv;
 
diff --git a/drivers/usb/dwc3/gadget.c b/drivers/usb/dwc3/gadget.c
index e911bba85e..8ec1268a22 100644
--- a/drivers/usb/dwc3/gadget.c
+++ b/drivers/usb/dwc3/gadget.c
@@ -2990,7 +2990,7 @@ int dwc3_gadget_init(struct dwc3 *dwc)
 	if (ret)
 		goto err4;
 
-	ret = usb_add_gadget_udc((struct device_d *)dwc->dev, &dwc->gadget);
+	ret = usb_add_gadget_udc((struct device *)dwc->dev, &dwc->gadget);
 	if (ret) {
 		dev_err(dwc->dev, "failed to register udc\n");
 		goto err4;
diff --git a/drivers/usb/dwc3/host.c b/drivers/usb/dwc3/host.c
index 0c5e1527b5..a3a27db6fb 100644
--- a/drivers/usb/dwc3/host.c
+++ b/drivers/usb/dwc3/host.c
@@ -16,7 +16,7 @@
 int dwc3_host_init(struct dwc3 *dwc)
 {
 	struct resource *io;
-	struct device_d *dev = dwc->dev;
+	struct device *dev = dwc->dev;
 
 	io = dev_get_resource(dev, IORESOURCE_MEM, 0);
 	if (IS_ERR(io)) {
diff --git a/drivers/usb/gadget/at91_udc.c b/drivers/usb/gadget/at91_udc.c
index c026e49dd9..74ab40bb6c 100644
--- a/drivers/usb/gadget/at91_udc.c
+++ b/drivers/usb/gadget/at91_udc.c
@@ -1389,7 +1389,7 @@ static void __init at91udc_of_init(struct at91_udc *udc, struct device_node *np)
 
 /*-------------------------------------------------------------------------*/
 
-static int __init at91udc_probe(struct device_d *dev)
+static int __init at91udc_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct at91_udc	*udc = &controller;
diff --git a/drivers/usb/gadget/at91_udc.h b/drivers/usb/gadget/at91_udc.h
index 9e2b976e57..cecaa5b52e 100644
--- a/drivers/usb/gadget/at91_udc.h
+++ b/drivers/usb/gadget/at91_udc.h
@@ -127,7 +127,7 @@ struct at91_udc {
 	u32				gpio_vbus_val;
 	struct at91_udc_data		board;
 	struct clk			*iclk, *fclk;
-	struct device_d			*dev;
+	struct device			*dev;
 	void __iomem			*udp_baseaddr;
 	int				udp_irq;
 };
diff --git a/drivers/usb/gadget/fsl_udc.c b/drivers/usb/gadget/fsl_udc.c
index e8bdab5765..3d8e1ece70 100644
--- a/drivers/usb/gadget/fsl_udc.c
+++ b/drivers/usb/gadget/fsl_udc.c
@@ -1670,7 +1670,7 @@ static int fsl_udc_stop(struct usb_gadget *gadget, struct usb_gadget_driver *dri
 }
 
 static int struct_udc_setup(struct fsl_udc *udc,
-		struct device_d *dev)
+		struct device *dev)
 {
 	struct fsl_usb2_platform_data *pdata = dev->platform_data;
 	size_t size;
@@ -1853,7 +1853,7 @@ static int __init struct_ep_setup(struct fsl_udc *udc, unsigned char index,
 	return 0;
 }
 
-struct fsl_udc *ci_udc_register(struct device_d *dev, void __iomem *regs)
+struct fsl_udc *ci_udc_register(struct device *dev, void __iomem *regs)
 {
 	struct fsl_udc *udc_controller;
 	int ret, i;
@@ -1935,7 +1935,7 @@ void ci_udc_unregister(struct fsl_udc *udc)
 	free(udc);
 }
 
-static int fsl_udc_probe(struct device_d *dev)
+static int fsl_udc_probe(struct device *dev)
 {
 	struct fsl_udc *udc;
 	void __iomem *regs = dev_request_mem_region(dev, 0);
@@ -1952,7 +1952,7 @@ static int fsl_udc_probe(struct device_d *dev)
 	return 0;
 }
 
-static void fsl_udc_remove(struct device_d *dev)
+static void fsl_udc_remove(struct device *dev)
 {
 	struct fsl_udc *udc = dev->priv;
 
diff --git a/drivers/usb/gadget/pxa27x_udc.c b/drivers/usb/gadget/pxa27x_udc.c
index e598057564..940a836cd4 100644
--- a/drivers/usb/gadget/pxa27x_udc.c
+++ b/drivers/usb/gadget/pxa27x_udc.c
@@ -1437,7 +1437,7 @@ static struct pxa_udc memory = {
 	}
 };
 
-static int __init pxa_udc_probe(struct device_d *dev)
+static int __init pxa_udc_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct pxa_udc *udc = &memory;
diff --git a/drivers/usb/gadget/pxa27x_udc.h b/drivers/usb/gadget/pxa27x_udc.h
index b7f05f46f9..80a93cdcf9 100644
--- a/drivers/usb/gadget/pxa27x_udc.h
+++ b/drivers/usb/gadget/pxa27x_udc.h
@@ -336,7 +336,7 @@ struct pxa_udc {
 	void __iomem				*regs;
 	int					irq;
 	struct clk				*clk;
-	struct device_d				*dev;
+	struct device				*dev;
 
 	struct usb_gadget			gadget;
 	struct usb_gadget_driver		*driver;
diff --git a/drivers/usb/gadget/storage_common.h b/drivers/usb/gadget/storage_common.h
index 61ed5b1ded..bd499c9e03 100644
--- a/drivers/usb/gadget/storage_common.h
+++ b/drivers/usb/gadget/storage_common.h
@@ -136,7 +136,7 @@ struct fsg_lun {
 	u32		sense_data_info;
 	u32		unit_attention_data;
 
-	struct device_d	dev;
+	struct device	dev;
 };
 
 #define fsg_lun_is_open(curlun)	((curlun)->filp != NULL)
diff --git a/drivers/usb/gadget/udc-core.c b/drivers/usb/gadget/udc-core.c
index e37a39977a..30b17dbc5a 100644
--- a/drivers/usb/gadget/udc-core.c
+++ b/drivers/usb/gadget/udc-core.c
@@ -26,7 +26,7 @@
 struct usb_udc {
 	struct usb_gadget_driver	*driver;
 	struct usb_gadget		*gadget;
-	struct device_d			dev;
+	struct device			dev;
 	struct list_head		list;
 	struct poller_struct		poller;
 };
@@ -118,8 +118,9 @@ int usb_gadget_poll(void)
  *
  * Returns zero on success, negative errno otherwise.
  */
-int usb_add_gadget_udc_release(struct device_d *parent, struct usb_gadget *gadget,
-		void (*release)(struct device_d *dev))
+int usb_add_gadget_udc_release(struct device *parent,
+			       struct usb_gadget *gadget,
+			       void (*release)(struct device *dev))
 {
 	struct usb_udc		*udc;
 	int			ret = -ENOMEM;
@@ -178,7 +179,7 @@ EXPORT_SYMBOL_GPL(usb_add_gadget_udc_release);
  *
  * Returns zero on success, negative errno otherwise.
  */
-int usb_add_gadget_udc(struct device_d *parent, struct usb_gadget *gadget)
+int usb_add_gadget_udc(struct device *parent, struct usb_gadget *gadget)
 {
 	return usb_add_gadget_udc_release(parent, gadget, NULL);
 }
diff --git a/drivers/usb/host/ehci-atmel.c b/drivers/usb/host/ehci-atmel.c
index 914c0486de..89a1be7bd3 100644
--- a/drivers/usb/host/ehci-atmel.c
+++ b/drivers/usb/host/ehci-atmel.c
@@ -18,7 +18,7 @@
 
 struct atmel_ehci_priv {
 	struct ehci_host *ehci;
-	struct device_d *dev;
+	struct device *dev;
 	struct clk *iclk;
 	struct clk *uclk;
 };
@@ -47,7 +47,7 @@ static void atmel_stop_clock(struct atmel_ehci_priv *atehci)
 	clk_disable(atehci->uclk);
 }
 
-static int atmel_ehci_probe(struct device_d *dev)
+static int atmel_ehci_probe(struct device *dev)
 {
 	int ret;
 	struct resource *iores;
@@ -97,7 +97,7 @@ static int atmel_ehci_probe(struct device_d *dev)
 	return 0;
 }
 
-static void atmel_ehci_remove(struct device_d *dev)
+static void atmel_ehci_remove(struct device *dev)
 {
 	struct atmel_ehci_priv *atehci = dev->priv;
 
diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index 8989c57f4c..142404b7e4 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -29,7 +29,7 @@
 
 struct ehci_host {
 	int rootdev;
-	struct device_d *dev;
+	struct device *dev;
 	struct ehci_hccr *hccr;
 	struct ehci_hcor *hcor;
 	struct usb_host host;
@@ -242,7 +242,7 @@ static int ehci_td_buffer(struct qTD *td, dma_addr_t addr, size_t sz)
 	return 0;
 }
 
-static int ehci_prepare_qtd(struct device_d *dev,
+static int ehci_prepare_qtd(struct device *dev,
 			    struct qTD *td, uint32_t token,
 			    void *buffer, size_t length,
 			    dma_addr_t *buffer_dma,
@@ -1341,7 +1341,7 @@ submit_int_msg(struct usb_device *dev, unsigned long pipe, void *buffer,
 	return result;
 }
 
-struct ehci_host *ehci_register(struct device_d *dev, struct ehci_data *data)
+struct ehci_host *ehci_register(struct device *dev, struct ehci_data *data)
 {
 	struct usb_host *host;
 	struct ehci_host *ehci;
@@ -1398,7 +1398,7 @@ void ehci_unregister(struct ehci_host *ehci)
 	free(ehci);
 }
 
-static int ehci_probe(struct device_d *dev)
+static int ehci_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct ehci_data data = {};
@@ -1465,7 +1465,7 @@ static int ehci_probe(struct device_d *dev)
 	return 0;
 }
 
-static void ehci_remove(struct device_d *dev)
+static void ehci_remove(struct device *dev)
 {
 	struct ehci_host *ehci = dev->priv;
 
diff --git a/drivers/usb/host/ohci-at91.c b/drivers/usb/host/ohci-at91.c
index 8fd55b4cdf..1157c63912 100644
--- a/drivers/usb/host/ohci-at91.c
+++ b/drivers/usb/host/ohci-at91.c
@@ -23,7 +23,7 @@
 
 
 struct ohci_at91_priv {
-	struct device_d *dev;
+	struct device *dev;
 	struct clk *iclk;
 	struct clk *fclk;
 	struct ohci_regs __iomem *regs;
@@ -54,7 +54,7 @@ static void at91_stop_clock(struct ohci_at91_priv *ohci_at91)
 	clk_disable(ohci_at91->iclk);
 }
 
-static int at91_ohci_probe_dt(struct device_d *dev)
+static int at91_ohci_probe_dt(struct device *dev)
 {
 	u32 ports;
 	int i, ret, gpio;
@@ -107,7 +107,7 @@ static int at91_ohci_probe_dt(struct device_d *dev)
 	return 0;
 }
 
-static int at91_ohci_probe(struct device_d *dev)
+static int at91_ohci_probe(struct device *dev)
 {
 	int ret;
 	struct resource *io;
@@ -159,7 +159,7 @@ static int at91_ohci_probe(struct device_d *dev)
 	return 0;
 }
 
-static void at91_ohci_remove(struct device_d *dev)
+static void at91_ohci_remove(struct device *dev)
 {
 	struct at91_usbh_data *pdata = dev->platform_data;
 	struct ohci_at91_priv *ohci_at91 = dev->priv;
diff --git a/drivers/usb/host/ohci-hcd.c b/drivers/usb/host/ohci-hcd.c
index ce5d39166b..2049675f5d 100644
--- a/drivers/usb/host/ohci-hcd.c
+++ b/drivers/usb/host/ohci-hcd.c
@@ -1775,7 +1775,7 @@ static int ohci_init(struct usb_host *host)
 	return 0;
 }
 
-static int ohci_probe(struct device_d *dev)
+static int ohci_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct usb_host *host;
diff --git a/drivers/usb/host/xhci.c b/drivers/usb/host/xhci.c
index ce93d345f9..a5d47346d7 100644
--- a/drivers/usb/host/xhci.c
+++ b/drivers/usb/host/xhci.c
@@ -1344,7 +1344,7 @@ static __maybe_unused int xhci_get_max_xfer_size(size_t *size)
 int xhci_register(struct xhci_ctrl *ctrl)
 {
 	struct usb_host *host;
-	struct device_d *dev = ctrl->dev;
+	struct device *dev = ctrl->dev;
 	int ret;
 
 	dev_dbg(dev, "%s: hccr=%p, hcor=%p\n", __func__, ctrl->hccr, ctrl->hcor);
@@ -1394,7 +1394,7 @@ int xhci_deregister(struct xhci_ctrl *ctrl)
  * xHCI platform driver
  */
 
-static int xhci_probe(struct device_d *dev)
+static int xhci_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct xhci_ctrl *ctrl;
@@ -1415,7 +1415,7 @@ static int xhci_probe(struct device_d *dev)
 	return xhci_register(ctrl);
 }
 
-static void xhci_remove(struct device_d *dev)
+static void xhci_remove(struct device *dev)
 {
 	struct xhci_ctrl *ctrl = dev->priv;
 
diff --git a/drivers/usb/host/xhci.h b/drivers/usb/host/xhci.h
index e445438e81..a6a0483245 100644
--- a/drivers/usb/host/xhci.h
+++ b/drivers/usb/host/xhci.h
@@ -1203,7 +1203,7 @@ void xhci_hcd_stop(int index);
 
 struct xhci_ctrl {
 	struct usb_host host;
-	struct device_d *dev;
+	struct device *dev;
 	struct xhci_hccr *hccr;	/* R/O registers, not need for volatile */
 	struct xhci_hcor *hcor;
 	struct xhci_doorbell_array *dba;
diff --git a/drivers/usb/imx/chipidea-imx.c b/drivers/usb/imx/chipidea-imx.c
index 75fe81f068..e509775fc7 100644
--- a/drivers/usb/imx/chipidea-imx.c
+++ b/drivers/usb/imx/chipidea-imx.c
@@ -27,13 +27,13 @@ struct imx_chipidea_data {
 };
 
 struct imx_chipidea {
-	struct device_d *dev;
+	struct device *dev;
 	void __iomem *base;
 	struct ehci_data data;
 	unsigned long flags;
 	enum usb_dr_mode mode;
 	int portno;
-	struct device_d *usbmisc;
+	struct device *usbmisc;
 	enum usb_phy_interface phymode;
 	struct param_d *param_mode;
 	struct regulator *vbus;
@@ -213,7 +213,7 @@ static int ci_set_mode(void *ctx, enum usb_dr_mode mode)
 	return 0;
 }
 
-static int imx_chipidea_probe(struct device_d *dev)
+static int imx_chipidea_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct imx_chipidea_data *imx_data;
@@ -330,7 +330,7 @@ static int imx_chipidea_probe(struct device_d *dev)
 	return ret;
 };
 
-static void imx_chipidea_remove(struct device_d *dev)
+static void imx_chipidea_remove(struct device *dev)
 {
 	struct imx_chipidea *ci = dev->priv;
 
diff --git a/drivers/usb/imx/imx-usb-misc.c b/drivers/usb/imx/imx-usb-misc.c
index 71164af3e8..7ca782ed34 100644
--- a/drivers/usb/imx/imx-usb-misc.c
+++ b/drivers/usb/imx/imx-usb-misc.c
@@ -623,7 +623,7 @@ static __maybe_unused struct of_device_id imx_usbmisc_dt_ids[] = {
 	},
 };
 
-int imx_usbmisc_port_init(struct device_d *dev, int port, unsigned flags)
+int imx_usbmisc_port_init(struct device *dev, int port, unsigned flags)
 {
 	struct imx_usb_misc_priv *usbmisc = dev->priv;
 
@@ -636,7 +636,7 @@ int imx_usbmisc_port_init(struct device_d *dev, int port, unsigned flags)
 	return usbmisc->data->init(usbmisc->base, port, flags);
 }
 
-int imx_usbmisc_port_post_init(struct device_d *dev, int port, unsigned flags)
+int imx_usbmisc_port_post_init(struct device *dev, int port, unsigned flags)
 {
 	struct imx_usb_misc_priv *usbmisc = dev->priv;
 
@@ -649,7 +649,7 @@ int imx_usbmisc_port_post_init(struct device_d *dev, int port, unsigned flags)
 	return usbmisc->data->post_init(usbmisc->base, port, flags);
 }
 
-static int imx_usbmisc_probe(struct device_d *dev)
+static int imx_usbmisc_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct imx_usb_misc_data *devtype;
diff --git a/drivers/usb/imx/imx-usb-phy.c b/drivers/usb/imx/imx-usb-phy.c
index e3c6832cc8..8e13aa7aa5 100644
--- a/drivers/usb/imx/imx-usb-phy.c
+++ b/drivers/usb/imx/imx-usb-phy.c
@@ -108,7 +108,7 @@ static int imx_usbphy_notify_disconnect(struct usb_phy *phy,
 	return 0;
 }
 
-static struct phy *imx_usbphy_xlate(struct device_d *dev,
+static struct phy *imx_usbphy_xlate(struct device *dev,
 				    struct of_phandle_args *args)
 {
 	struct imx_usbphy *imxphy = dev->priv;
@@ -143,7 +143,7 @@ static int imx_usbphy_get_vbus_state(struct param_d *p, void *priv)
 	return 0;
 }
 
-static int imx_usbphy_probe(struct device_d *dev)
+static int imx_usbphy_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct device_node *np = dev->of_node;
diff --git a/drivers/usb/misc/usb251xb.c b/drivers/usb/misc/usb251xb.c
index b5b5e97c06..d6ff0f4c1e 100644
--- a/drivers/usb/misc/usb251xb.c
+++ b/drivers/usb/misc/usb251xb.c
@@ -116,7 +116,7 @@
 #define DRIVER_DESC	"Microchip USB 2.0 Hi-Speed Hub Controller"
 
 struct usb251xb {
-	struct device_d *dev;
+	struct device *dev;
 	struct i2c_client *i2c;
 	u8 skip_config;
 	int gpio_reset;
@@ -241,7 +241,7 @@ static void usb251xb_reset(struct usb251xb *hub, int state)
 
 static int usb251xb_connect(struct usb251xb *hub)
 {
-	struct device_d *dev = hub->dev;
+	struct device *dev = hub->dev;
 	int err, i;
 	char i2c_wb[USB251XB_I2C_REG_SZ];
 
@@ -337,7 +337,7 @@ out_err:
 static int usb251xb_get_ofdata(struct usb251xb *hub,
 			       struct usb251xb_data *data)
 {
-	struct device_d *dev = hub->dev;
+	struct device *dev = hub->dev;
 	struct device_node *np = dev->of_node;
 	int len, i;
 	u32 port, property_u32 = 0;
@@ -618,7 +618,7 @@ static int usb251xb_get_ofdata(struct usb251xb *hub,
 
 static int usb251xb_probe(struct usb251xb *hub)
 {
-	struct device_d *dev = hub->dev;
+	struct device *dev = hub->dev;
 	struct device_node *np = dev->of_node;
 	const struct of_device_id *of_id = of_match_device(usb251xb_of_match,
 							   dev);
@@ -644,7 +644,7 @@ static int usb251xb_probe(struct usb251xb *hub)
 	return 0;
 }
 
-static int usb251xb_i2c_probe(struct device_d *dev)
+static int usb251xb_i2c_probe(struct device *dev)
 {
 	struct i2c_client *i2c = to_i2c_client(dev);
 	struct usb251xb *hub;
diff --git a/drivers/usb/musb/am35x-phy-control.h b/drivers/usb/musb/am35x-phy-control.h
index c10d595a9e..b4eb585e71 100644
--- a/drivers/usb/musb/am35x-phy-control.h
+++ b/drivers/usb/musb/am35x-phy-control.h
@@ -17,6 +17,6 @@ static inline void phy_ctrl_wkup(struct phy_control *phy_ctrl, u32 id, bool on)
 	phy_ctrl->phy_wkup(phy_ctrl, id, on);
 }
 
-struct phy_control *am335x_get_phy_control(struct device_d *dev);
+struct phy_control *am335x_get_phy_control(struct device *dev);
 
 #endif
diff --git a/drivers/usb/musb/musb_am335x.c b/drivers/usb/musb/musb_am335x.c
index 14307c95d5..0e0665c7b1 100644
--- a/drivers/usb/musb/musb_am335x.c
+++ b/drivers/usb/musb/musb_am335x.c
@@ -3,7 +3,7 @@
 #include <init.h>
 #include <linux/clk.h>
 
-static int am335x_child_probe(struct device_d *dev)
+static int am335x_child_probe(struct device *dev)
 {
 	int ret;
 
diff --git a/drivers/usb/musb/musb_core.h b/drivers/usb/musb/musb_core.h
index 999ea5519f..a0467ff3c4 100644
--- a/drivers/usb/musb/musb_core.h
+++ b/drivers/usb/musb/musb_core.h
@@ -308,7 +308,7 @@ struct musb {
 
 	struct dma_controller	*dma_controller;
 
-	struct device_d		*controller;
+	struct device		*controller;
 	void __iomem		*ctrl_base;
 	void __iomem		*mregs;
 
diff --git a/drivers/usb/musb/musb_dsps.c b/drivers/usb/musb/musb_dsps.c
index 397a5792e2..974601e4fb 100644
--- a/drivers/usb/musb/musb_dsps.c
+++ b/drivers/usb/musb/musb_dsps.c
@@ -99,7 +99,7 @@ struct dsps_musb_wrapper {
  * DSPS glue structure.
  */
 struct dsps_glue {
-	struct device_d *dev;
+	struct device *dev;
 	void __iomem *base;
 	unsigned long flags;
 	enum musb_mode mode;
@@ -108,7 +108,7 @@ struct dsps_glue {
 	const struct dsps_musb_wrapper *wrp; /* wrapper register offsets */
 	struct poller_async timer;	/* otg_workaround timer */
 	uint64_t last_timer;    /* last timer data for each instance */
-	struct device_d otg_dev;
+	struct device otg_dev;
 	uint32_t otgmode;
 	struct musb_hdrc_platform_data pdata;
 };
@@ -260,7 +260,7 @@ static int get_int_prop(struct device_node *dn, const char *s)
 	return val;
 }
 
-static int get_musb_port_mode(struct device_d *dev)
+static int get_musb_port_mode(struct device *dev)
 {
 	enum usb_dr_mode mode;
 
@@ -297,7 +297,7 @@ static int dsps_set_mode(void *ctx, enum usb_dr_mode mode)
 	return musb_init_controller(&glue->musb, &glue->pdata);
 }
 
-static int dsps_probe(struct device_d *dev)
+static int dsps_probe(struct device *dev)
 {
 	struct resource *iores[2];
 	struct musb_hdrc_platform_data *pdata;
@@ -305,7 +305,7 @@ static int dsps_probe(struct device_d *dev)
 	struct device_node *dn = dev->of_node;
 	const struct dsps_musb_wrapper *wrp;
 	struct device_node *phy_node;
-	struct device_d *phy_dev;
+	struct device *phy_dev;
 	struct dsps_glue *glue;
 	int ret;
 
diff --git a/drivers/usb/musb/phy-am335x-control.c b/drivers/usb/musb/phy-am335x-control.c
index 2cdf8a2105..4156a6d071 100644
--- a/drivers/usb/musb/phy-am335x-control.c
+++ b/drivers/usb/musb/phy-am335x-control.c
@@ -8,7 +8,7 @@
 #include "am35x-phy-control.h"
 
 struct am335x_control_usb {
-	struct device_d *dev;
+	struct device *dev;
 	void __iomem *phy_reg;
 	void __iomem *wkup;
 	spinlock_t lock;
@@ -103,7 +103,7 @@ static __maybe_unused struct of_device_id omap_control_usb_dt_ids[] = {
 	},
 };
 
-struct phy_control *am335x_get_phy_control(struct device_d *dev)
+struct phy_control *am335x_get_phy_control(struct device *dev)
 {
 	struct device_node *node;
 	struct am335x_control_usb *ctrl_usb;
@@ -125,7 +125,7 @@ struct phy_control *am335x_get_phy_control(struct device_d *dev)
 EXPORT_SYMBOL(am335x_get_phy_control);
 
 
-static int am335x_control_usb_probe(struct device_d *dev)
+static int am335x_control_usb_probe(struct device *dev)
 {
 	struct resource *iores;
 	/*struct resource	*res;*/
diff --git a/drivers/usb/musb/phy-am335x.c b/drivers/usb/musb/phy-am335x.c
index aa0aec70d4..3f34e202cc 100644
--- a/drivers/usb/musb/phy-am335x.c
+++ b/drivers/usb/musb/phy-am335x.c
@@ -22,7 +22,7 @@ static int am335x_init(struct usb_phy *phy)
 	return 0;
 }
 
-static int am335x_phy_probe(struct device_d *dev)
+static int am335x_phy_probe(struct device *dev)
 {
 	struct am335x_usbphy *am_usbphy;
 	struct resource *iores;
diff --git a/drivers/usb/otg/otgdev.c b/drivers/usb/otg/otgdev.c
index 29cb0d362b..1ac1b642ac 100644
--- a/drivers/usb/otg/otgdev.c
+++ b/drivers/usb/otg/otgdev.c
@@ -5,7 +5,7 @@
 #include <usb/usb.h>
 
 struct otg_mode {
-	struct device_d dev;
+	struct device dev;
 	unsigned int var_mode;
 	unsigned int cur_mode;
 	int (*set_mode_callback)(void *ctx, enum usb_dr_mode mode);
@@ -42,7 +42,7 @@ static const char *otg_mode_names[] = {
 	[USB_DR_MODE_OTG] = "otg",
 };
 
-static int register_otg_device(struct device_d *dev, struct otg_mode *otg)
+static int register_otg_device(struct device *dev, struct otg_mode *otg)
 {
 	struct param_d *param_mode;
 	int ret;
@@ -58,12 +58,12 @@ static int register_otg_device(struct device_d *dev, struct otg_mode *otg)
 	return PTR_ERR_OR_ZERO(param_mode);
 }
 
-static struct device_d otg_device = {
+static struct device otg_device = {
 	.name = "otg",
 	.id = DEVICE_ID_SINGLE,
 };
 
-int usb_register_otg_device(struct device_d *parent,
+int usb_register_otg_device(struct device *parent,
 			    int (*set_mode)(void *ctx, enum usb_dr_mode mode), void *ctx)
 {
 	int ret;
diff --git a/drivers/usb/storage/transport.c b/drivers/usb/storage/transport.c
index 82e0d21ae5..ad347dfce5 100644
--- a/drivers/usb/storage/transport.c
+++ b/drivers/usb/storage/transport.c
@@ -49,7 +49,7 @@ static int usb_stor_Bulk_clear_endpt_stall(struct us_data *us, unsigned int pipe
 /* Determine what the maximum LUN supported is */
 int usb_stor_Bulk_max_lun(struct us_data *us)
 {
-	struct device_d *dev = &us->pusb_dev->dev;
+	struct device *dev = &us->pusb_dev->dev;
 	int len, ret = 0;
 	unsigned char *iobuf = dma_alloc(1);
 
@@ -85,7 +85,7 @@ int usb_stor_Bulk_transport(struct us_blk_dev *usb_blkdev,
 			    void *data, u32 datalen)
 {
 	struct us_data *us = usb_blkdev->us;
-	struct device_d *dev = &us->pusb_dev->dev;
+	struct device *dev = &us->pusb_dev->dev;
 	struct bulk_cb_wrap cbw;
 	struct bulk_cs_wrap csw;
 	int actlen, data_actlen;
@@ -203,7 +203,7 @@ int usb_stor_Bulk_transport(struct us_blk_dev *usb_blkdev,
  */
 int usb_stor_Bulk_reset(struct us_data *us)
 {
-	struct device_d *dev = &us->pusb_dev->dev;
+	struct device *dev = &us->pusb_dev->dev;
 	int result;
 	int result2;
 	unsigned int pipe;
diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index 2962d08983..5699fc14b0 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -30,7 +30,7 @@
 static int usb_stor_request_sense(struct us_blk_dev *usb_blkdev)
 {
 	struct us_data *us = usb_blkdev->us;
-	struct device_d *dev = &us->pusb_dev->dev;
+	struct device *dev = &us->pusb_dev->dev;
 	u8 cmd[6];
 	const u8 datalen = 18;
 	u8 *data = xzalloc(datalen);
@@ -73,7 +73,7 @@ static int usb_stor_transport(struct us_blk_dev *usb_blkdev,
 			      int retries, int request_sense_delay_ms)
 {
 	struct us_data *us = usb_blkdev->us;
-	struct device_d *dev = &us->pusb_dev->dev;
+	struct device *dev = &us->pusb_dev->dev;
 	int i, ret;
 
 	for (i = 0; i <= retries; i++) {
@@ -100,7 +100,7 @@ static int usb_stor_transport(struct us_blk_dev *usb_blkdev,
 
 static int usb_stor_inquiry(struct us_blk_dev *usb_blkdev)
 {
-	struct device_d *dev = &usb_blkdev->us->pusb_dev->dev;
+	struct device *dev = &usb_blkdev->us->pusb_dev->dev;
 	int ret;
 	u8 cmd[6];
 	const u16 datalen = 36;
@@ -151,7 +151,7 @@ static int usb_stor_test_unit_ready(struct us_blk_dev *usb_blkdev, u64 timeout_n
 
 static int read_capacity_16(struct us_blk_dev *usb_blkdev)
 {
-	struct device_d *dev = &usb_blkdev->us->pusb_dev->dev;
+	struct device *dev = &usb_blkdev->us->pusb_dev->dev;
 	unsigned char cmd[16];
 	const u8 datalen = 32;
 	u8 *data = xzalloc(datalen);
@@ -192,7 +192,7 @@ static int read_capacity_16(struct us_blk_dev *usb_blkdev)
 
 static int read_capacity_10(struct us_blk_dev *usb_blkdev)
 {
-	struct device_d *dev = &usb_blkdev->us->pusb_dev->dev;
+	struct device *dev = &usb_blkdev->us->pusb_dev->dev;
 	unsigned char cmd[16];
 	const u32 datalen = 8;
 	__be32 *data = xzalloc(datalen);
@@ -269,7 +269,7 @@ static int usb_stor_blk_io(struct block_device *disk_dev,
 						   struct us_blk_dev,
 						   blk);
 	struct us_data *us = pblk_dev->us;
-	struct device_d *dev = &us->pusb_dev->dev;
+	struct device *dev = &us->pusb_dev->dev;
 	int result;
 
 	/* ensure unit ready */
@@ -342,7 +342,7 @@ static struct block_device_ops usb_mass_storage_ops = {
 static int usb_stor_init_blkdev(struct us_blk_dev *pblk_dev)
 {
 	struct us_data *us = pblk_dev->us;
-	struct device_d *dev = &us->pusb_dev->dev;
+	struct device *dev = &us->pusb_dev->dev;
 	int result;
 
 	/* get device info */
@@ -388,7 +388,7 @@ static int usb_stor_init_blkdev(struct us_blk_dev *pblk_dev)
 /* Create and register a disk device for the specified LUN */
 static int usb_stor_add_blkdev(struct us_data *us, unsigned char lun)
 {
-	struct device_d *dev = &us->pusb_dev->dev;
+	struct device *dev = &us->pusb_dev->dev;
 	struct us_blk_dev *pblk_dev;
 	int result;
 
@@ -443,7 +443,7 @@ BadDevice:
 /* Get the transport settings */
 static void get_transport(struct us_data *us)
 {
-	struct device_d *dev = &us->pusb_dev->dev;
+	struct device *dev = &us->pusb_dev->dev;
 	switch (us->protocol) {
 	case US_PR_BULK:
 		us->transport_name = "Bulk";
@@ -458,7 +458,7 @@ static void get_transport(struct us_data *us)
 /* Get the endpoint settings */
 static int get_pipes(struct us_data *us, struct usb_interface *intf)
 {
-	struct device_d *dev = &us->pusb_dev->dev;
+	struct device *dev = &us->pusb_dev->dev;
 	unsigned int i;
 	struct usb_endpoint_descriptor *ep;
 	struct usb_endpoint_descriptor *ep_in = NULL;
@@ -499,7 +499,7 @@ static int get_pipes(struct us_data *us, struct usb_interface *intf)
 /* Scan device's LUNs, registering a disk device for each LUN */
 static int usb_stor_scan(struct usb_device *usbdev, struct us_data *us)
 {
-	struct device_d *dev = &usbdev->dev;
+	struct device *dev = &usbdev->dev;
 	unsigned char lun;
 	int num_devs = 0;
 
@@ -523,7 +523,7 @@ static int usb_stor_scan(struct usb_device *usbdev, struct us_data *us)
 static int usb_stor_probe(struct usb_device *usbdev,
 			 const struct usb_device_id *id)
 {
-	struct device_d *dev = &usbdev->dev;
+	struct device *dev = &usbdev->dev;
 	struct us_data *us;
 	int result;
 	int ifno;
diff --git a/drivers/video/atmel_hlcdfb.c b/drivers/video/atmel_hlcdfb.c
index 4c05ac5821..0ca3dce8d9 100644
--- a/drivers/video/atmel_hlcdfb.c
+++ b/drivers/video/atmel_hlcdfb.c
@@ -260,7 +260,7 @@ struct atmel_lcdfb_devdata atmel_hlcdfb_data = {
 	.dma_desc_size = sizeof(struct atmel_hlcd_dma_desc),
 };
 
-static int atmel_hlcdc_probe(struct device_d *dev)
+static int atmel_hlcdc_probe(struct device *dev)
 {
 	return atmel_lcdc_register(dev, &atmel_hlcdfb_data);
 }
diff --git a/drivers/video/atmel_lcdfb.c b/drivers/video/atmel_lcdfb.c
index 38b4b8df39..f65b1797b3 100644
--- a/drivers/video/atmel_lcdfb.c
+++ b/drivers/video/atmel_lcdfb.c
@@ -223,7 +223,7 @@ struct atmel_lcdfb_devdata atmel_lcdfb_data = {
 	.limit_screeninfo = atmel_lcdfb_limit_screeninfo,
 };
 
-static int atmel_lcdc_probe(struct device_d *dev)
+static int atmel_lcdc_probe(struct device *dev)
 {
 	return atmel_lcdc_register(dev, &atmel_lcdfb_data);
 }
diff --git a/drivers/video/atmel_lcdfb.h b/drivers/video/atmel_lcdfb.h
index 110c71bdb2..7aa058e198 100644
--- a/drivers/video/atmel_lcdfb.h
+++ b/drivers/video/atmel_lcdfb.h
@@ -24,7 +24,7 @@ struct atmel_lcdfb_devdata {
 struct atmel_lcdfb_info {
 	struct fb_info		info;
 	void __iomem		*mmio;
-	struct device_d		*device;
+	struct device		*device;
 
 	unsigned int		guard_time;
 	unsigned int		smem_len;
@@ -49,4 +49,4 @@ struct atmel_lcdfb_info {
 
 #define ATMEL_LCDC_STOP_NOWAIT (1 << 0)
 
-int atmel_lcdc_register(struct device_d *dev, struct atmel_lcdfb_devdata *data);
+int atmel_lcdc_register(struct device *dev, struct atmel_lcdfb_devdata *data);
diff --git a/drivers/video/atmel_lcdfb_core.c b/drivers/video/atmel_lcdfb_core.c
index f6ff9ab8fa..158fe8bbf9 100644
--- a/drivers/video/atmel_lcdfb_core.c
+++ b/drivers/video/atmel_lcdfb_core.c
@@ -62,7 +62,7 @@ static void atmel_lcdc_disable_controller(struct fb_info *fb_info)
 
 static int atmel_lcdfb_check_var(struct fb_info *info)
 {
-	struct device_d *dev = &info->dev;
+	struct device *dev = &info->dev;
 	struct atmel_lcdfb_info *sinfo = info->priv;
 	struct fb_videomode *mode = info->mode;
 	unsigned long clk_value_khz;
@@ -237,7 +237,7 @@ static struct fb_ops atmel_lcdc_ops = {
 	.fb_disable = atmel_lcdc_disable_controller,
 };
 
-static int power_control_init(struct device_d *dev,
+static int power_control_init(struct device *dev,
 			      struct atmel_lcdfb_info *sinfo,
 			      int gpio,
 			      bool active_low)
@@ -294,7 +294,7 @@ static int of_get_wiring_mode(struct device_node *np,
 	return 0;
 }
 
-static int of_get_power_control(struct device_d *dev,
+static int of_get_power_control(struct device *dev,
 				struct device_node *np,
 				struct atmel_lcdfb_info *sinfo)
 {
@@ -311,7 +311,7 @@ static int of_get_power_control(struct device_d *dev,
 	return power_control_init(dev, sinfo, gpio, active_low);
 }
 
-static int lcdfb_of_init(struct device_d *dev, struct atmel_lcdfb_info *sinfo)
+static int lcdfb_of_init(struct device *dev, struct atmel_lcdfb_info *sinfo)
 {
 	struct fb_info *info = &sinfo->info;
 	struct display_timings *modes;
@@ -378,7 +378,8 @@ err:
 	return ret;
 }
 
-static int lcdfb_pdata_init(struct device_d *dev, struct atmel_lcdfb_info *sinfo)
+static int lcdfb_pdata_init(struct device *dev,
+			    struct atmel_lcdfb_info *sinfo)
 {
 	struct atmel_lcdfb_platform_data *pdata;
 	struct fb_info *info;
@@ -422,7 +423,7 @@ err:
 	return ret;
 }
 
-int atmel_lcdc_register(struct device_d *dev, struct atmel_lcdfb_devdata *data)
+int atmel_lcdc_register(struct device *dev, struct atmel_lcdfb_devdata *data)
 {
 	struct atmel_lcdfb_info *sinfo;
 	const char *bus_clk_name;
diff --git a/drivers/video/backlight-pwm.c b/drivers/video/backlight-pwm.c
index bbacddec87..65a621015d 100644
--- a/drivers/video/backlight-pwm.c
+++ b/drivers/video/backlight-pwm.c
@@ -101,8 +101,8 @@ static int backlight_pwm_set(struct backlight_device *backlight,
 		return backlight_pwm_disable(pwm_backlight);
 }
 
-static int pwm_backlight_parse_dt(struct device_d *dev,
-		struct pwm_backlight *pwm_backlight)
+static int pwm_backlight_parse_dt(struct device *dev,
+				  struct pwm_backlight *pwm_backlight)
 {
 	struct device_node *node = dev->of_node;
 	struct property *prop;
@@ -164,7 +164,7 @@ static int pwm_backlight_parse_dt(struct device_d *dev,
 	return 0;
 }
 
-static int backlight_pwm_of_probe(struct device_d *dev)
+static int backlight_pwm_of_probe(struct device *dev)
 {
 	int ret;
 	struct pwm_backlight *pwm_backlight;
diff --git a/drivers/video/bcm2835.c b/drivers/video/bcm2835.c
index 14735fe465..d0b15782a7 100644
--- a/drivers/video/bcm2835.c
+++ b/drivers/video/bcm2835.c
@@ -54,7 +54,7 @@ static struct fb_ops bcm2835fb_ops = {
 	.fb_disable		= bcm2835fb_disable,
 };
 
-static int bcm2835fb_probe(struct device_d *dev)
+static int bcm2835fb_probe(struct device *dev)
 {
 	BCM2835_MBOX_STACK_ALIGN(struct msg_fb_query, msg_query);
 	BCM2835_MBOX_STACK_ALIGN(struct msg_fb_setup, msg_setup);
diff --git a/drivers/video/bochs/bochs_hw.c b/drivers/video/bochs/bochs_hw.c
index debdd36941..f31020acd4 100644
--- a/drivers/video/bochs/bochs_hw.c
+++ b/drivers/video/bochs/bochs_hw.c
@@ -149,7 +149,8 @@ static int bochs_hw_read_version(struct bochs *bochs)
 	return ver & 0xF;
 }
 
-int bochs_hw_probe(struct device_d *dev, void __iomem *fb_map, void __iomem *mmio)
+int bochs_hw_probe(struct device *dev, void __iomem *fb_map,
+		   void __iomem *mmio)
 {
 	struct bochs *bochs;
 	struct fb_info *fb;
diff --git a/drivers/video/bochs/bochs_hw.h b/drivers/video/bochs/bochs_hw.h
index 420b58f4da..e01ef13d47 100644
--- a/drivers/video/bochs/bochs_hw.h
+++ b/drivers/video/bochs/bochs_hw.h
@@ -8,8 +8,8 @@
 #define VBE_DISPI_IOPORT_INDEX           0x01CE
 #define VBE_DISPI_IOPORT_DATA            0x01CF
 
-struct device_d;
+struct device;
 
-int bochs_hw_probe(struct device_d *dev, void *fb_map, void __iomem *mmio);
+int bochs_hw_probe(struct device *dev, void *fb_map, void __iomem *mmio);
 
 #endif
diff --git a/drivers/video/bochs/bochs_isa.c b/drivers/video/bochs/bochs_isa.c
index f273ac5f74..3cedb5c345 100644
--- a/drivers/video/bochs/bochs_isa.c
+++ b/drivers/video/bochs/bochs_isa.c
@@ -11,7 +11,7 @@
 
 static int bochs_isa_detect(void)
 {
-	struct device_d *dev;
+	struct device *dev;
 	int ret;
 
 	outw(0, VBE_DISPI_IOPORT_INDEX);
diff --git a/drivers/video/efi_gop.c b/drivers/video/efi_gop.c
index 5e9bc406e1..cd2506c04b 100644
--- a/drivers/video/efi_gop.c
+++ b/drivers/video/efi_gop.c
@@ -63,7 +63,7 @@ struct efi_graphics_output_protocol {
 };
 
 struct efi_gop_priv {
-	struct device_d *dev;
+	struct device *dev;
 	struct fb_info fb;
 
 	uint32_t mode;
diff --git a/drivers/video/fb.c b/drivers/video/fb.c
index 1c93dafbc9..44754065e7 100644
--- a/drivers/video/fb.c
+++ b/drivers/video/fb.c
@@ -158,7 +158,7 @@ static struct fb_videomode *fb_num_to_mode(struct fb_info *info, int num)
 
 static int fb_setup_mode(struct fb_info *info)
 {
-	struct device_d *dev = &info->dev;
+	struct device *dev = &info->dev;
 	int ret;
 	struct fb_videomode *mode;
 
@@ -251,7 +251,7 @@ static void fb_print_modes(struct display_timings *modes)
 		fb_print_mode(&modes->modes[i]);
 }
 
-static void fb_info(struct device_d *dev)
+static void fb_info(struct device *dev)
 {
 	struct fb_info *info = dev->priv;
 
@@ -279,7 +279,7 @@ static int fb_set_shadowfb(struct param_d *p, void *priv)
 int register_framebuffer(struct fb_info *info)
 {
 	int id = get_free_deviceid("fb");
-	struct device_d *dev;
+	struct device *dev;
 	int ret, num_modes, i;
 	const char **names;
 
diff --git a/drivers/video/imx-ipu-fb.c b/drivers/video/imx-ipu-fb.c
index d158c68c25..a525032873 100644
--- a/drivers/video/imx-ipu-fb.c
+++ b/drivers/video/imx-ipu-fb.c
@@ -29,7 +29,7 @@ struct ipu_fb_info {
 
 	struct fb_info		info;
 	struct fb_info		overlay;
-	struct device_d		*dev;
+	struct device		*dev;
 
 	unsigned int		alpha;
 	int			disable_fractional_divider;
@@ -974,7 +974,7 @@ static int sdc_fb_register_overlay(struct ipu_fb_info *fbi, void *fb)
 
 #endif
 
-static int imxfb_probe(struct device_d *dev)
+static int imxfb_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct ipu_fb_info *fbi;
diff --git a/drivers/video/imx-ipu-v3/imx-hdmi.c b/drivers/video/imx-ipu-v3/imx-hdmi.c
index 285034270d..21dfc929d8 100644
--- a/drivers/video/imx-ipu-v3/imx-hdmi.c
+++ b/drivers/video/imx-ipu-v3/imx-hdmi.c
@@ -113,7 +113,7 @@ struct hdmi_data_info {
 
 struct dw_hdmi {
 	enum dw_hdmi_devtype dev_type;
-	struct device_d *dev;
+	struct device *dev;
 	struct clk *isfr_clk;
 	struct clk *iahb_clk;
 
@@ -1248,7 +1248,7 @@ static int dw_hdmi_ioctl(struct vpl *vpl, unsigned int port,
 	return 0;
 }
 
-static int dw_hdmi_probe(struct device_d *dev)
+static int dw_hdmi_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct device_node *np = dev->of_node;
diff --git a/drivers/video/imx-ipu-v3/imx-ldb.c b/drivers/video/imx-ipu-v3/imx-ldb.c
index 08b5e5950c..01aa7f3683 100644
--- a/drivers/video/imx-ipu-v3/imx-ldb.c
+++ b/drivers/video/imx-ipu-v3/imx-ldb.c
@@ -61,7 +61,7 @@ struct imx_ldb_data {
 };
 
 struct imx_ldb {
-	struct device_d *dev;
+	struct device *dev;
 	u32 bus_format;
 	int mode_valid;
 	struct imx_ldb_channel channel[2];
@@ -302,7 +302,7 @@ static int imx_ldb_ioctl(struct vpl *vpl, unsigned int port,
 	return 0;
 }
 
-static int imx_ldb_probe(struct device_d *dev)
+static int imx_ldb_probe(struct device *dev)
 {
 	struct device_node *np = dev->of_node;
 	struct device_node *child;
diff --git a/drivers/video/imx-ipu-v3/imx-pd.c b/drivers/video/imx-ipu-v3/imx-pd.c
index ee30d3b57d..e5b6d9122b 100644
--- a/drivers/video/imx-ipu-v3/imx-pd.c
+++ b/drivers/video/imx-ipu-v3/imx-pd.c
@@ -22,7 +22,7 @@
 #define IMX_PD_OUTPUT_PORT	1
 
 struct imx_pd {
-	struct device_d *dev;
+	struct device *dev;
 	struct display_timings *timings;
 	u32 bus_format;
 	struct vpl vpl;
@@ -61,7 +61,7 @@ static int imx_pd_ioctl(struct vpl *vpl, unsigned int port,
 	return 0;
 }
 
-static int imx_pd_probe(struct device_d *dev)
+static int imx_pd_probe(struct device *dev)
 {
 	struct device_node *node = dev->of_node;
 	struct imx_pd *imx_pd;
diff --git a/drivers/video/imx-ipu-v3/ipu-common.c b/drivers/video/imx-ipu-v3/ipu-common.c
index 556f737fc5..095f1d3564 100644
--- a/drivers/video/imx-ipu-v3/ipu-common.c
+++ b/drivers/video/imx-ipu-v3/ipu-common.c
@@ -611,7 +611,7 @@ static struct of_device_id imx_ipu_dt_ids[] = {
 };
 
 static int ipu_submodules_init(struct ipu_soc *ipu,
-		struct device_d *dev, void __iomem *ipu_base,
+		struct device *dev, void __iomem *ipu_base,
 		struct clk *ipu_clk)
 {
 	char *unit;
@@ -705,10 +705,10 @@ static struct ipu_platform_reg client_reg[] = {
 
 static int ipu_client_id;
 
-static int ipu_add_subdevice_pdata(struct device_d *ipu_dev,
-		struct ipu_platform_reg *reg)
+static int ipu_add_subdevice_pdata(struct device *ipu_dev,
+				   struct ipu_platform_reg *reg)
 {
-	struct device_d *dev;
+	struct device *dev;
 	int ret;
 
 	dev = device_alloc(reg->name, ipu_client_id++);
@@ -740,7 +740,7 @@ err_register:
 	return ret;
 }
 
-static int ipu_probe(struct device_d *dev)
+static int ipu_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct ipu_soc *ipu;
diff --git a/drivers/video/imx-ipu-v3/ipu-dc.c b/drivers/video/imx-ipu-v3/ipu-dc.c
index d069d78ab3..a0292fc4a1 100644
--- a/drivers/video/imx-ipu-v3/ipu-dc.c
+++ b/drivers/video/imx-ipu-v3/ipu-dc.c
@@ -96,7 +96,7 @@ struct ipu_dc_priv {
 	void __iomem		*dc_reg;
 	void __iomem		*dc_tmpl_reg;
 	struct ipu_soc		*ipu;
-	struct device_d		*dev;
+	struct device		*dev;
 	struct ipu_dc		channels[IPU_DC_NUM_CHANNELS];
 };
 
@@ -312,7 +312,7 @@ void ipu_dc_put(struct ipu_dc *dc)
 }
 EXPORT_SYMBOL_GPL(ipu_dc_put);
 
-int ipu_dc_init(struct ipu_soc *ipu, struct device_d *dev,
+int ipu_dc_init(struct ipu_soc *ipu, struct device *dev,
 		void __iomem *base, void __iomem *template_base)
 {
 	struct ipu_dc_priv *priv;
diff --git a/drivers/video/imx-ipu-v3/ipu-di.c b/drivers/video/imx-ipu-v3/ipu-di.c
index d63613c842..6156911bfc 100644
--- a/drivers/video/imx-ipu-v3/ipu-di.c
+++ b/drivers/video/imx-ipu-v3/ipu-di.c
@@ -700,7 +700,7 @@ void ipu_di_put(struct ipu_di *di)
 }
 EXPORT_SYMBOL_GPL(ipu_di_put);
 
-int ipu_di_init(struct ipu_soc *ipu, struct device_d *dev, int id,
+int ipu_di_init(struct ipu_soc *ipu, struct device *dev, int id,
 		void __iomem *base,
 		u32 module, struct clk *clk_ipu)
 {
diff --git a/drivers/video/imx-ipu-v3/ipu-dmfc.c b/drivers/video/imx-ipu-v3/ipu-dmfc.c
index e879f97a33..4be6a15eef 100644
--- a/drivers/video/imx-ipu-v3/ipu-dmfc.c
+++ b/drivers/video/imx-ipu-v3/ipu-dmfc.c
@@ -100,7 +100,7 @@ struct dmfc_channel {
 
 struct ipu_dmfc_priv {
 	struct ipu_soc *ipu;
-	struct device_d *dev;
+	struct device *dev;
 	struct dmfc_channel channels[DMFC_NUM_CHANNELS];
 	unsigned long bandwidth_per_slot;
 	void __iomem *base;
@@ -340,8 +340,8 @@ void ipu_dmfc_put(struct dmfc_channel *dmfc)
 }
 EXPORT_SYMBOL_GPL(ipu_dmfc_put);
 
-int ipu_dmfc_init(struct ipu_soc *ipu, struct device_d *dev, void __iomem *base,
-		struct clk *ipu_clk)
+int ipu_dmfc_init(struct ipu_soc *ipu, struct device *dev, void __iomem *base,
+		  struct clk *ipu_clk)
 {
 	struct ipu_dmfc_priv *priv;
 	int i;
diff --git a/drivers/video/imx-ipu-v3/ipu-dp.c b/drivers/video/imx-ipu-v3/ipu-dp.c
index 67f93c0d55..68b45c11c7 100644
--- a/drivers/video/imx-ipu-v3/ipu-dp.c
+++ b/drivers/video/imx-ipu-v3/ipu-dp.c
@@ -56,7 +56,7 @@ struct ipu_flow {
 
 struct ipu_dp_priv {
 	struct ipu_soc *ipu;
-	struct device_d *dev;
+	struct device *dev;
 	void __iomem *base;
 	struct ipu_flow flow[IPUV3_NUM_FLOWS];
 	int use_count;
@@ -277,7 +277,7 @@ void ipu_dp_put(struct ipu_dp *dp)
 }
 EXPORT_SYMBOL_GPL(ipu_dp_put);
 
-int ipu_dp_init(struct ipu_soc *ipu, struct device_d *dev, void __iomem *base)
+int ipu_dp_init(struct ipu_soc *ipu, struct device *dev, void __iomem *base)
 {
 	struct ipu_dp_priv *priv;
 	int i;
diff --git a/drivers/video/imx-ipu-v3/ipu-prv.h b/drivers/video/imx-ipu-v3/ipu-prv.h
index 15aed7a943..4465711ee4 100644
--- a/drivers/video/imx-ipu-v3/ipu-prv.h
+++ b/drivers/video/imx-ipu-v3/ipu-prv.h
@@ -140,7 +140,7 @@ struct ipu_di;
 struct ipu_devtype;
 
 struct ipu_soc {
-	struct device_d		*dev;
+	struct device		*dev;
 	const struct ipu_devtype	*devtype;
 	enum ipuv3_type		ipu_type;
 	spinlock_t		lock;
@@ -172,22 +172,23 @@ void ipu_srm_dp_sync_update(struct ipu_soc *ipu);
 int ipu_module_enable(struct ipu_soc *ipu, u32 mask);
 int ipu_module_disable(struct ipu_soc *ipu, u32 mask);
 
-int ipu_di_init(struct ipu_soc *ipu, struct device_d *dev, int id,
+int ipu_di_init(struct ipu_soc *ipu, struct device *dev, int id,
 		void __iomem *base, u32 module, struct clk *ipu_clk);
 void ipu_di_exit(struct ipu_soc *ipu, int id);
 
-int ipu_dmfc_init(struct ipu_soc *ipu, struct device_d *dev, void __iomem *base,
-		struct clk *ipu_clk);
+int ipu_dmfc_init(struct ipu_soc *ipu, struct device *dev, void __iomem *base,
+		  struct clk *ipu_clk);
 void ipu_dmfc_exit(struct ipu_soc *ipu);
 
-int ipu_dp_init(struct ipu_soc *ipu, struct device_d *dev, void __iomem *base);
+int ipu_dp_init(struct ipu_soc *ipu, struct device *dev, void __iomem *base);
 void ipu_dp_exit(struct ipu_soc *ipu);
 
-int ipu_dc_init(struct ipu_soc *ipu, struct device_d *dev, void __iomem *base,
+int ipu_dc_init(struct ipu_soc *ipu, struct device *dev, void __iomem *base,
 		void __iomem *template_base);
 void ipu_dc_exit(struct ipu_soc *ipu);
 
-int ipu_cpmem_init(struct ipu_soc *ipu, struct device_d *dev, void __iomem *base);
+int ipu_cpmem_init(struct ipu_soc *ipu, struct device *dev,
+		   void __iomem *base);
 void ipu_cpmem_exit(struct ipu_soc *ipu);
 
 #endif				/* __IPU_PRV_H__ */
diff --git a/drivers/video/imx-ipu-v3/ipufb.c b/drivers/video/imx-ipu-v3/ipufb.c
index f880622787..27e1edb48c 100644
--- a/drivers/video/imx-ipu-v3/ipufb.c
+++ b/drivers/video/imx-ipu-v3/ipufb.c
@@ -45,7 +45,7 @@ struct ipufb_info {
 	struct fb_videomode	*mode;
 
 	struct fb_info		info;
-	struct device_d		*dev;
+	struct device		*dev;
 
 	/* plane[0] is the full plane, plane[1] is the partial plane */
 	struct ipu_plane	*plane[2];
@@ -269,7 +269,7 @@ err_out:
 	return ret;
 }
 
-static int ipufb_probe(struct device_d *dev)
+static int ipufb_probe(struct device *dev)
 {
 	struct ipufb_info *fbi;
 	struct fb_info *info;
@@ -342,7 +342,7 @@ static int ipufb_probe(struct device_d *dev)
 	return ret;
 }
 
-static void ipufb_remove(struct device_d *dev)
+static void ipufb_remove(struct device *dev)
 {
 }
 
diff --git a/drivers/video/imx-ipu-v3/ipuv3-plane.c b/drivers/video/imx-ipu-v3/ipuv3-plane.c
index a54bdab78b..aed7a46963 100644
--- a/drivers/video/imx-ipu-v3/ipuv3-plane.c
+++ b/drivers/video/imx-ipu-v3/ipuv3-plane.c
@@ -55,7 +55,7 @@ int ipu_plane_mode_set(struct ipu_plane *ipu_plane,
 		       uint32_t src_w, uint32_t src_h)
 {
 	struct ipu_ch_param __iomem *cpmem;
-	struct device_d *dev = &info->dev;
+	struct device *dev = &info->dev;
 	int ret;
 
 	/* no scaling */
diff --git a/drivers/video/imx.c b/drivers/video/imx.c
index 615836d47e..43198ad5ce 100644
--- a/drivers/video/imx.c
+++ b/drivers/video/imx.c
@@ -150,7 +150,7 @@ struct imxfb_info {
 				unused:30;
 
 	struct fb_info		info;
-	struct device_d		*dev;
+	struct device		*dev;
 
 	void			(*enable)(int enable);
 
@@ -378,7 +378,7 @@ static struct fb_ops imxfb_ops = {
 	.fb_activate_var = imxfb_activate_var,
 };
 
-static int imxfb_allocate_fbbuffer(const struct device_d *dev,
+static int imxfb_allocate_fbbuffer(const struct device *dev,
 				   struct fb_info *info, void *forcefb)
 {
 	size_t fbsize = info->xres * info->yres * (info->bits_per_pixel >> 3);
@@ -525,7 +525,7 @@ static int imxfb_register_overlay(struct imxfb_info *fbi, void *fb)
 }
 #endif
 
-static int imxfb_probe(struct device_d *dev)
+static int imxfb_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct imxfb_info *fbi;
diff --git a/drivers/video/mipi_dbi.c b/drivers/video/mipi_dbi.c
index 48b1110f72..50d2fc4b29 100644
--- a/drivers/video/mipi_dbi.c
+++ b/drivers/video/mipi_dbi.c
@@ -394,7 +394,7 @@ static int mipi_dbi_typec3_command(struct mipi_dbi *dbi, u8 *cmd,
 int mipi_dbi_spi_init(struct spi_device *spi, struct mipi_dbi *dbi,
 		      int dc)
 {
-	struct device_d *dev = &spi->dev;
+	struct device *dev = &spi->dev;
 
 	dbi->spi = spi;
 	dbi->read_commands = mipi_dbi_dcs_read_commands;
diff --git a/drivers/video/mtl017.c b/drivers/video/mtl017.c
index f5b6178967..8d0c5da7f8 100644
--- a/drivers/video/mtl017.c
+++ b/drivers/video/mtl017.c
@@ -16,7 +16,7 @@
 
 struct mtl017 {
 	struct vpl vpl;
-	struct device_d *dev;
+	struct device *dev;
 	struct i2c_client *client;
 	u8 *regs;
 	int enable_gpio;
@@ -218,7 +218,7 @@ forward:
 	return vpl_ioctl(&mtl017->vpl, 1, cmd, ptr);
 }
 
-static int mtl017_probe(struct device_d *dev)
+static int mtl017_probe(struct device *dev)
 {
 	struct mtl017 *mtl017;
 	int ret;
diff --git a/drivers/video/omap.c b/drivers/video/omap.c
index 189b95d241..c959285a62 100644
--- a/drivers/video/omap.c
+++ b/drivers/video/omap.c
@@ -27,7 +27,7 @@
 
 struct omapfb_device {
 	struct fb_info info;
-	struct device_d *dev;
+	struct device *dev;
 
 	struct omapfb_display const *cur_display;
 
@@ -410,7 +410,7 @@ static struct fb_ops omapfb_ops = {
 	.fb_activate_var	= omapfb_activate_var,
 };
 
-static int omapfb_probe(struct device_d *dev)
+static int omapfb_probe(struct device *dev)
 {
 	struct omapfb_platform_data const *pdata = dev->platform_data;
 	struct omapfb_device *fbi;
diff --git a/drivers/video/panel-ilitek-ili9341.c b/drivers/video/panel-ilitek-ili9341.c
index dde9a61d59..b3cb6389be 100644
--- a/drivers/video/panel-ilitek-ili9341.c
+++ b/drivers/video/panel-ilitek-ili9341.c
@@ -159,7 +159,7 @@ struct ili9341_config {
 };
 
 struct ili9341 {
-	struct device_d *dev;
+	struct device *dev;
 	struct vpl vpl;
 	const struct ili9341_config *conf;
 	int reset_gpio;
@@ -280,7 +280,7 @@ static inline struct ili9341 *vpl_to_ili9341(struct vpl *vpl)
 
 static void ili9341_dpi_init(struct ili9341 *ili)
 {
-	struct device_d *dev = ili->dev;
+	struct device *dev = ili->dev;
 	struct mipi_dbi *dbi = ili->dbi;
 	struct ili9341_config *cfg = (struct ili9341_config *)ili->conf;
 
@@ -344,7 +344,7 @@ static void ili9341_dpi_init(struct ili9341 *ili)
 
 static int ili9341_dpi_power_on(struct ili9341 *ili)
 {
-	struct device_d *dev = ili->dev;
+	struct device *dev = ili->dev;
 	int ret = 0;
 
 	/* Assert RESET */
@@ -460,7 +460,7 @@ static int ili9341_ioctl(struct vpl *vpl, unsigned int port,
 
 static int ili9341_dpi_probe(struct spi_device *spi, int dc, int reset)
 {
-	struct device_d *dev = &spi->dev;
+	struct device *dev = &spi->dev;
 	struct ili9341 *ili;
 	int ret;
 
@@ -505,7 +505,7 @@ static int ili9341_dpi_probe(struct spi_device *spi, int dc, int reset)
 	return vpl_register(&ili->vpl);
 }
 
-static int ili9341_probe(struct device_d *dev)
+static int ili9341_probe(struct device *dev)
 {
 	struct spi_device *spi = to_spi_device(dev);
 	int dc, reset;
diff --git a/drivers/video/pxa.c b/drivers/video/pxa.c
index 7e2905f279..784a3d2c85 100644
--- a/drivers/video/pxa.c
+++ b/drivers/video/pxa.c
@@ -74,7 +74,7 @@ struct pxafb_info {
 
 	struct pxafb_videomode	*mode;
 	struct fb_info		info;
-	struct device_d		*dev;
+	struct device		*dev;
 
 	void			(*lcd_power)(int);
 	void			(*backlight_power)(int);
@@ -476,7 +476,7 @@ static struct fb_ops pxafb_ops = {
 	.fb_disable	= pxafb_disable_controller,
 };
 
-static int pxafb_probe(struct device_d *dev)
+static int pxafb_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct pxafb_platform_data *pdata = dev->platform_data;
diff --git a/drivers/video/rave-sp-backlight.c b/drivers/video/rave-sp-backlight.c
index ca6c5aa3e3..7a074b3a83 100644
--- a/drivers/video/rave-sp-backlight.c
+++ b/drivers/video/rave-sp-backlight.c
@@ -27,7 +27,7 @@ static int rave_sp_backlight_set(struct backlight_device *bd, int brightness)
 	return rave_sp_exec(sp, cmd, sizeof(cmd), NULL, 0);
 }
 
-static int rave_sp_backlight_probe(struct device_d *dev)
+static int rave_sp_backlight_probe(struct device *dev)
 {
 	struct backlight_device *bd;
 	int ret;
diff --git a/drivers/video/s3c24xx.c b/drivers/video/s3c24xx.c
index 6de2d7be98..151b0f769a 100644
--- a/drivers/video/s3c24xx.c
+++ b/drivers/video/s3c24xx.c
@@ -96,7 +96,7 @@ struct s3cfb_info {
 	void __iomem *base;
 	unsigned memory_size;
 	struct fb_info info;
-	struct device_d *hw_dev;
+	struct device *hw_dev;
 	int passive_display;
 	void (*enable)(int enable);
 };
@@ -310,7 +310,7 @@ static int s3cfb_activate_var(struct fb_info *fb_info)
  * Print some information about the current hardware state
  * @param hw_dev S3C video device
  */
-static void s3cfb_info(struct device_d *hw_dev)
+static void s3cfb_info(struct device *hw_dev)
 {
 	uint32_t con1, addr1, addr2, addr3;
 	struct s3cfb_info *fbi = hw_dev->priv;
@@ -345,7 +345,7 @@ static struct s3cfb_info fbi = {
 	},
 };
 
-static int s3cfb_probe(struct device_d *hw_dev)
+static int s3cfb_probe(struct device *hw_dev)
 {
 	struct resource *iores;
 	struct s3c_fb_platform_data *pdata = hw_dev->platform_data;
diff --git a/drivers/video/sdl.c b/drivers/video/sdl.c
index 28a41916eb..c4d09e59dd 100644
--- a/drivers/video/sdl.c
+++ b/drivers/video/sdl.c
@@ -38,7 +38,7 @@ static struct fb_ops sdlfb_ops = {
 	.fb_disable	= sdlfb_disable,
 };
 
-static int sdlfb_probe(struct device_d *dev)
+static int sdlfb_probe(struct device *dev)
 {
 	struct fb_info *fb;
 	int ret = -EIO;
@@ -81,7 +81,7 @@ static int sdlfb_probe(struct device_d *dev)
 	return ret;
 }
 
-static void sdlfb_remove(struct device_d *dev)
+static void sdlfb_remove(struct device *dev)
 {
 	struct fb_info *fb = dev->priv;
 
diff --git a/drivers/video/simple-panel.c b/drivers/video/simple-panel.c
index ffbfa067d2..27b42dcd25 100644
--- a/drivers/video/simple-panel.c
+++ b/drivers/video/simple-panel.c
@@ -17,7 +17,7 @@
 #include <i2c/i2c.h>
 
 struct simple_panel {
-	struct device_d *dev;
+	struct device *dev;
 	struct vpl vpl;
 	int enable_gpio;
 	int enable_active_high;
@@ -129,7 +129,7 @@ static int simple_panel_ioctl(struct vpl *vpl, unsigned int port,
 	}
 }
 
-static int simple_panel_probe(struct device_d *dev)
+static int simple_panel_probe(struct device *dev)
 {
 	struct simple_panel *panel;
 	struct device_node *node = dev->of_node;
diff --git a/drivers/video/simplefb-client.c b/drivers/video/simplefb-client.c
index e89bf22681..6bb160a97f 100644
--- a/drivers/video/simplefb-client.c
+++ b/drivers/video/simplefb-client.c
@@ -35,8 +35,8 @@ struct simplefb {
 	struct fb_videomode mode;
 };
 
-static int simplefb_parse_dt(struct device_d *dev,
-			   struct simplefb_params *params)
+static int simplefb_parse_dt(struct device *dev,
+			     struct simplefb_params *params)
 {
 	struct device_node *np = dev->of_node;
 	int ret;
@@ -81,7 +81,7 @@ static int simplefb_parse_dt(struct device_d *dev,
 	return 0;
 }
 
-static int simplefb_probe(struct device_d *dev)
+static int simplefb_probe(struct device *dev)
 {
 	int ret;
 	struct simplefb_params params;
diff --git a/drivers/video/ssd1307fb.c b/drivers/video/ssd1307fb.c
index 4e98b4277b..d2dd67c634 100644
--- a/drivers/video/ssd1307fb.c
+++ b/drivers/video/ssd1307fb.c
@@ -424,7 +424,7 @@ static const struct of_device_id ssd1307fb_of_match[] = {
 	{},
 };
 
-static int ssd1307fb_probe(struct device_d *dev)
+static int ssd1307fb_probe(struct device *dev)
 {
 	struct fb_info *info;
 	struct device_node *node = dev->of_node;
diff --git a/drivers/video/stm.c b/drivers/video/stm.c
index 154145bd1d..3ece96c09d 100644
--- a/drivers/video/stm.c
+++ b/drivers/video/stm.c
@@ -139,7 +139,7 @@ struct imxfb_info {
 	void __iomem *base;
 	unsigned memory_size;
 	struct fb_info info;
-	struct device_d *hw_dev;
+	struct device *hw_dev;
 	struct clk *clk;
 	void *fixed_screen;
 	unsigned fixed_screen_size;
@@ -494,7 +494,7 @@ static struct imxfb_info fbi = {
 	},
 };
 
-static int stmfb_probe(struct device_d *hw_dev)
+static int stmfb_probe(struct device *hw_dev)
 {
 	struct resource *iores;
 	struct imx_fb_platformdata *pdata = hw_dev->platform_data;
diff --git a/drivers/video/stm32_ltdc.c b/drivers/video/stm32_ltdc.c
index 5bbf9c1093..e5064503ba 100644
--- a/drivers/video/stm32_ltdc.c
+++ b/drivers/video/stm32_ltdc.c
@@ -21,7 +21,7 @@
 
 struct ltdc_hw {
 	void __iomem *regs;
-	struct device_d *dev;
+	struct device *dev;
 	struct clk *pclk;
 	bool claimed;
 };
@@ -252,7 +252,7 @@ static struct fb_ops ltdc_ops = {
 	.fb_disable		= ltdc_disable,
 };
 
-static int ltdc_probe(struct device_d *dev)
+static int ltdc_probe(struct device *dev)
 {
 	struct device_node *np;
 	struct resource *iores;
diff --git a/drivers/video/tc358767.c b/drivers/video/tc358767.c
index ad0d753235..8e473f607f 100644
--- a/drivers/video/tc358767.c
+++ b/drivers/video/tc358767.c
@@ -204,7 +204,7 @@ struct tc_edp_link {
 
 struct tc_data {
 	struct i2c_client	*client;
-	struct device_d		*dev;
+	struct device		*dev;
 	/* DP AUX channel */
 	struct i2c_adapter	adapter;
 	struct vpl		vpl;
@@ -880,7 +880,7 @@ err:
 
 static int tc_main_link_setup(struct tc_data *tc)
 {
-	struct device_d *dev = tc->dev;
+	struct device *dev = tc->dev;
 	unsigned int rate;
 	u32 dp_phy_ctrl;
 	int timeout;
@@ -1334,7 +1334,7 @@ static int tc_ioctl(struct vpl *vpl, unsigned int port,
 	return ret;
 }
 
-static int tc_probe(struct device_d *dev)
+static int tc_probe(struct device *dev)
 {
 	struct i2c_client *client = to_i2c_client(dev);
 	struct tc_data *tc;
diff --git a/drivers/virtio/virtio.c b/drivers/virtio/virtio.c
index c96c465e87..b40281cc69 100644
--- a/drivers/virtio/virtio.c
+++ b/drivers/virtio/virtio.c
@@ -47,7 +47,7 @@ static inline int virtio_id_match(const struct virtio_device *dev,
 
 /* This looks through all the IDs a driver claims to support.  If any of them
  * match, we return 1 and the kernel will call virtio_dev_probe(). */
-static int virtio_dev_match(struct device_d *_dv, struct driver_d *_dr)
+static int virtio_dev_match(struct device *_dv, struct driver_d *_dr)
 {
 	unsigned int i;
 	struct virtio_device *dev = dev_to_virtio(_dv);
@@ -166,7 +166,7 @@ int virtio_find_vqs(struct virtio_device *vdev, unsigned int nvqs,
 }
 EXPORT_SYMBOL_GPL(virtio_find_vqs);
 
-static int virtio_dev_probe(struct device_d *_d)
+static int virtio_dev_probe(struct device *_d)
 {
 	int err, i;
 	struct virtio_device *dev = dev_to_virtio(_d);
@@ -241,7 +241,7 @@ err:
 
 }
 
-static void virtio_dev_remove(struct device_d *_d)
+static void virtio_dev_remove(struct device *_d)
 {
 	struct virtio_device *dev = dev_to_virtio(_d);
 	struct virtio_driver *drv = drv_to_virtio(dev->dev.driver);
@@ -324,7 +324,7 @@ out:
 }
 EXPORT_SYMBOL_GPL(register_virtio_device);
 
-bool is_virtio_device(struct device_d *dev)
+bool is_virtio_device(struct device *dev)
 {
 	return dev->bus == &virtio_bus;
 }
diff --git a/drivers/virtio/virtio_mmio.c b/drivers/virtio/virtio_mmio.c
index 4a689495b8..9054d66eb1 100644
--- a/drivers/virtio/virtio_mmio.c
+++ b/drivers/virtio/virtio_mmio.c
@@ -378,7 +378,7 @@ static const struct virtio_config_ops virtio_mmio_config_ops = {
 
 /* Platform device */
 
-static int virtio_mmio_probe(struct device_d *dev)
+static int virtio_mmio_probe(struct device *dev)
 {
 	struct virtio_mmio_device *vm_dev;
 	struct resource *res;
@@ -430,7 +430,7 @@ static int virtio_mmio_probe(struct device_d *dev)
 	return register_virtio_device(&vm_dev->vdev);
 }
 
-static void virtio_mmio_remove(struct device_d *dev)
+static void virtio_mmio_remove(struct device *dev)
 {
 	struct virtio_mmio_device *vm_dev = dev->priv;
 	unregister_virtio_device(&vm_dev->vdev);
diff --git a/drivers/virtio/virtio_pci_modern.c b/drivers/virtio/virtio_pci_modern.c
index f816baf18e..5cdea79fbc 100644
--- a/drivers/virtio/virtio_pci_modern.c
+++ b/drivers/virtio/virtio_pci_modern.c
@@ -355,7 +355,7 @@ static const struct virtio_config_ops virtio_pci_config_ops = {
 int virtio_pci_modern_probe(struct virtio_pci_device *vp_dev)
 {
 	struct pci_dev *pci_dev = vp_dev->pci_dev;
-	struct device_d *dev = &pci_dev->dev;
+	struct device *dev = &pci_dev->dev;
 	int common, notify, device;
 	int offset;
 
diff --git a/drivers/virtio/virtio_ring.c b/drivers/virtio/virtio_ring.c
index 326fd22d3f..fd21d3adcd 100644
--- a/drivers/virtio/virtio_ring.c
+++ b/drivers/virtio/virtio_ring.c
@@ -22,7 +22,7 @@
 #define vq_info(vq, fmt, ...) \
 	dev_info(&vq->vdev->dev, fmt, ##__VA_ARGS__)
 
-static inline struct device_d *vring_dma_dev(const struct virtqueue *vq)
+static inline struct device *vring_dma_dev(const struct virtqueue *vq)
 {
 	return vq->vdev->dev.parent;
 }
diff --git a/drivers/w1/masters/w1-gpio.c b/drivers/w1/masters/w1-gpio.c
index 9e38dc361c..64090edb5f 100644
--- a/drivers/w1/masters/w1-gpio.c
+++ b/drivers/w1/masters/w1-gpio.c
@@ -39,7 +39,7 @@ static u8 w1_gpio_read_bit(struct w1_bus *bus)
 	return gpio_get_value(pdata->pin) ? 1 : 0;
 }
 
-static int w1_gpio_probe_dt(struct device_d *dev)
+static int w1_gpio_probe_dt(struct device *dev)
 {
 	struct w1_gpio_platform_data *pdata;
 	struct device_node *np = dev->of_node;
@@ -79,7 +79,7 @@ free_pdata:
 	return gpio;
 }
 
-static int __init w1_gpio_probe(struct device_d *dev)
+static int __init w1_gpio_probe(struct device *dev)
 {
 	struct w1_bus *master;
 	struct w1_gpio_platform_data *pdata;
diff --git a/drivers/w1/w1.c b/drivers/w1/w1.c
index 3f21cae5e6..88258c5acb 100644
--- a/drivers/w1/w1.c
+++ b/drivers/w1/w1.c
@@ -362,7 +362,7 @@ int w1_reset_select_slave(struct w1_device *dev)
 #define to_w1_device(d)	container_of(d, struct w1_device, dev)
 #define to_w1_driver(d) container_of(d, struct w1_driver, drv)
 
-static int w1_bus_match(struct device_d *_dev, struct driver_d *_drv)
+static int w1_bus_match(struct device *_dev, struct driver_d *_drv)
 {
 	struct w1_device *dev = to_w1_device(_dev);
 	struct w1_driver *drv = to_w1_driver(_drv);
@@ -370,7 +370,7 @@ static int w1_bus_match(struct device_d *_dev, struct driver_d *_drv)
 	return !(drv->fid == dev->fid);
 }
 
-static int w1_bus_probe(struct device_d *_dev)
+static int w1_bus_probe(struct device *_dev)
 {
 	struct w1_driver *drv = to_w1_driver(_dev->driver);
 	struct w1_device *dev = to_w1_device(_dev);
@@ -378,7 +378,7 @@ static int w1_bus_probe(struct device_d *_dev)
 	return drv->probe(dev);
 }
 
-static void w1_bus_remove(struct device_d *_dev)
+static void w1_bus_remove(struct device *_dev)
 {
 	struct w1_driver *drv = to_w1_driver(_dev->driver);
 	struct w1_device *dev = to_w1_device(_dev);
@@ -396,7 +396,7 @@ struct bus_type w1_bustype= {
 
 static bool w1_is_registered(struct w1_bus *bus, u64 rn)
 {
-	struct device_d *dev = NULL;
+	struct device *dev = NULL;
 	struct w1_device *w1_dev;
 
 	bus_for_each_device(&w1_bustype, dev) {
diff --git a/drivers/w1/w1.h b/drivers/w1/w1.h
index 1e8f6137d4..3bf88909f3 100644
--- a/drivers/w1/w1.h
+++ b/drivers/w1/w1.h
@@ -19,7 +19,7 @@ struct w1_device {
 	u8	crc;
 
 	struct w1_bus	*bus;
-	struct device_d dev;
+	struct device dev;
 };
 
 struct w1_driver {
@@ -58,8 +58,8 @@ extern struct bus_type w1_bustype;
  */
 struct w1_bus
 {
-	struct device_d	dev;
-	struct device_d	*parent;
+	struct device	dev;
+	struct device	*parent;
 
 	/**
 	 * Sample the line level
diff --git a/drivers/watchdog/ar9344_wdt.c b/drivers/watchdog/ar9344_wdt.c
index 3dd3197393..64bb591f55 100644
--- a/drivers/watchdog/ar9344_wdt.c
+++ b/drivers/watchdog/ar9344_wdt.c
@@ -29,7 +29,7 @@
 struct ar9344_wd {
 	struct watchdog		wd;
 	void __iomem		*base;
-	struct device_d		*dev;
+	struct device		*dev;
 	unsigned int		rate;
 };
 
@@ -65,7 +65,7 @@ static void ar9344_watchdog_detect_reset_source(struct ar9344_wd *priv)
 	/* else keep the default 'unknown' state */
 }
 
-static int ar9344_wdt_probe(struct device_d *dev)
+static int ar9344_wdt_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct ar9344_wd *priv;
diff --git a/drivers/watchdog/at91sam9_wdt.c b/drivers/watchdog/at91sam9_wdt.c
index 1bad10ee53..cd7703a4dd 100644
--- a/drivers/watchdog/at91sam9_wdt.c
+++ b/drivers/watchdog/at91sam9_wdt.c
@@ -54,7 +54,7 @@ static inline bool at91sam9x_wdt_is_disabled(struct at91sam9x_wdt *wdt)
 	return readl(wdt->base + AT91_WDT_MR) & AT91_WDT_WDDIS;
 }
 
-static int at91sam9x_wdt_probe(struct device_d *dev)
+static int at91sam9x_wdt_probe(struct device *dev)
 {
 	struct at91sam9x_wdt *wdt;
 	struct resource *iores;
diff --git a/drivers/watchdog/bcm2835_wdt.c b/drivers/watchdog/bcm2835_wdt.c
index c6e6a289f2..78b5292c8a 100644
--- a/drivers/watchdog/bcm2835_wdt.c
+++ b/drivers/watchdog/bcm2835_wdt.c
@@ -21,7 +21,7 @@
 struct bcm2835_wd {
 	struct watchdog wd;
 	void __iomem *base;
-	struct device_d *dev;
+	struct device *dev;
 	struct restart_handler restart;
 };
 
@@ -60,7 +60,7 @@ static int bcm2835_wd_set_timeout(struct watchdog *wd, unsigned timeout)
 	return 0;
 }
 
-static int bcm2835_wd_probe(struct device_d *dev)
+static int bcm2835_wd_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct bcm2835_wd *priv;
diff --git a/drivers/watchdog/davinci_wdt.c b/drivers/watchdog/davinci_wdt.c
index d632573ba7..f5bc83d662 100644
--- a/drivers/watchdog/davinci_wdt.c
+++ b/drivers/watchdog/davinci_wdt.c
@@ -127,7 +127,7 @@ static int davinci_wdt_set_timeout(struct watchdog *wd, unsigned timeout)
 	return 0;
 }
 
-static int davinci_wdt_probe(struct device_d *dev)
+static int davinci_wdt_probe(struct device *dev)
 {
 	struct resource *iores;
 	int ret = 0;
diff --git a/drivers/watchdog/dw_wdt.c b/drivers/watchdog/dw_wdt.c
index ad95b4a57e..3c26eef8e2 100644
--- a/drivers/watchdog/dw_wdt.c
+++ b/drivers/watchdog/dw_wdt.c
@@ -128,7 +128,7 @@ static void __noreturn dw_wdt_restart_handle(struct restart_handler *rst)
 	hang();
 }
 
-static int dw_wdt_drv_probe(struct device_d *dev)
+static int dw_wdt_drv_probe(struct device *dev)
 {
 	struct watchdog *wdd;
 	struct dw_wdt *dw_wdt;
diff --git a/drivers/watchdog/efi_wdt.c b/drivers/watchdog/efi_wdt.c
index eb50f24aed..2203d6dfbc 100644
--- a/drivers/watchdog/efi_wdt.c
+++ b/drivers/watchdog/efi_wdt.c
@@ -12,7 +12,7 @@
 
 struct efi_wdt_priv {
 	struct watchdog		wd;
-	struct device_d		*dev;
+	struct device		*dev;
 };
 
 #define to_efi_wdt(h) container_of(h, struct efi_wdt_priv, wd)
@@ -31,7 +31,7 @@ static int efi_wdt_set_timeout(struct watchdog *wd, unsigned timeout)
 	return 0;
 }
 
-static int efi_wdt_probe(struct device_d *dev)
+static int efi_wdt_probe(struct device *dev)
 {
 	struct efi_wdt_priv *priv;
 	int ret;
diff --git a/drivers/watchdog/f71808e_wdt.c b/drivers/watchdog/f71808e_wdt.c
index b2cf0f8ddd..543f535151 100644
--- a/drivers/watchdog/f71808e_wdt.c
+++ b/drivers/watchdog/f71808e_wdt.c
@@ -239,7 +239,7 @@ static int f71808e_wdt_set_timeout(struct watchdog *wdd, unsigned int new_timeou
 	return 0;
 }
 
-static int f71808e_wdt_init(struct f71808e_wdt *wd, struct device_d *dev)
+static int f71808e_wdt_init(struct f71808e_wdt *wd, struct device *dev)
 {
 	struct watchdog *wdd = &wd->wdd;
 	const char * const *names = pulse_width_names;
@@ -376,7 +376,7 @@ static struct platform_device_id f71808e_wdt_ids[] = {
 	{ /* sentinel */ },
 };
 
-static int f71808e_probe(struct device_d *dev)
+static int f71808e_probe(struct device *dev)
 {
 	struct f71808e_wdt *wd;
 	struct resource *res;
diff --git a/drivers/watchdog/gpio_wdt.c b/drivers/watchdog/gpio_wdt.c
index c5da28467b..7e5203a261 100644
--- a/drivers/watchdog/gpio_wdt.c
+++ b/drivers/watchdog/gpio_wdt.c
@@ -81,7 +81,7 @@ static int gpio_wdt_set_timeout(struct watchdog *wdd, unsigned int new_timeout)
 	return 0;
 }
 
-static int gpio_wdt_probe(struct device_d *dev)
+static int gpio_wdt_probe(struct device *dev)
 {
 	struct device_node *np = dev->of_node;
 	struct gpio_wdt_priv *priv;
diff --git a/drivers/watchdog/im28wd.c b/drivers/watchdog/im28wd.c
index efe26f42d8..c1b4b933d3 100644
--- a/drivers/watchdog/im28wd.c
+++ b/drivers/watchdog/im28wd.c
@@ -175,7 +175,7 @@ static void __maybe_unused imx28_detect_reset_source(const struct imx28_wd *p)
 	reset_source_set(RESET_RST);
 }
 
-static int imx28_wd_probe(struct device_d *dev)
+static int imx28_wd_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct imx28_wd *priv;
@@ -213,7 +213,7 @@ on_error:
 	return rc;
 }
 
-static void imx28_wd_remove(struct device_d *dev)
+static void imx28_wd_remove(struct device *dev)
 {
 	struct imx28_wd *priv= dev->priv;
 	watchdog_deregister(&priv->wd);
diff --git a/drivers/watchdog/imxwd.c b/drivers/watchdog/imxwd.c
index 0cc1d07ba2..a29999cbca 100644
--- a/drivers/watchdog/imxwd.c
+++ b/drivers/watchdog/imxwd.c
@@ -27,7 +27,7 @@ struct imx_wd_ops {
 struct imx_wd {
 	struct watchdog wd;
 	void __iomem *base;
-	struct device_d *dev;
+	struct device *dev;
 	const struct imx_wd_ops *ops;
 	struct restart_handler restart;
 	struct restart_handler restart_warm;
@@ -237,7 +237,7 @@ static int imx21_wd_init(struct imx_wd *priv)
 	return imx21_wd_init_no_warm_reset(priv);
 }
 
-static int imx_wd_probe(struct device_d *dev)
+static int imx_wd_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct imx_wd *priv;
diff --git a/drivers/watchdog/jz4740.c b/drivers/watchdog/jz4740.c
index ed38ba7bd8..a8afbbf00a 100644
--- a/drivers/watchdog/jz4740.c
+++ b/drivers/watchdog/jz4740.c
@@ -60,7 +60,7 @@ static void __noreturn jz4740_reset_soc(struct restart_handler *rst)
 	hang();
 }
 
-static int jz4740_wdt_probe(struct device_d *dev)
+static int jz4740_wdt_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct jz4740_wdt_drvdata *priv;
diff --git a/drivers/watchdog/kvx_wdt.c b/drivers/watchdog/kvx_wdt.c
index df9430769b..56bc851675 100644
--- a/drivers/watchdog/kvx_wdt.c
+++ b/drivers/watchdog/kvx_wdt.c
@@ -48,7 +48,7 @@ static int kvx_wdt_set_timeout(struct watchdog *wdd, unsigned int timeout)
 
 static int count;
 
-static int kvx_wdt_drv_probe(struct device_d *dev)
+static int kvx_wdt_drv_probe(struct device *dev)
 {
 	struct watchdog *wdd;
 	struct clk *clk;
diff --git a/drivers/watchdog/omap_wdt.c b/drivers/watchdog/omap_wdt.c
index b61d77aaee..80006bfb3d 100644
--- a/drivers/watchdog/omap_wdt.c
+++ b/drivers/watchdog/omap_wdt.c
@@ -150,7 +150,7 @@ static int omap_wdt_set_timeout(struct watchdog *wdog,
 	return 0;
 }
 
-static int omap_wdt_probe(struct device_d *dev)
+static int omap_wdt_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct omap_wdt_dev *wdev;
diff --git a/drivers/watchdog/orion_wdt.c b/drivers/watchdog/orion_wdt.c
index 6b7614ef7c..ba69933009 100644
--- a/drivers/watchdog/orion_wdt.c
+++ b/drivers/watchdog/orion_wdt.c
@@ -68,7 +68,7 @@ static int armada_xp_set_timeout(struct watchdog *wd, unsigned timeout)
 	return 0;
 }
 
-static int orion_wdt_probe(struct device_d *dev)
+static int orion_wdt_probe(struct device *dev)
 {
 	struct orion_wdt_ddata* ddata;
 	struct resource *res_timer, *res_rstout;
diff --git a/drivers/watchdog/rave-sp-wdt.c b/drivers/watchdog/rave-sp-wdt.c
index f5531d9d37..0e41655024 100644
--- a/drivers/watchdog/rave-sp-wdt.c
+++ b/drivers/watchdog/rave-sp-wdt.c
@@ -302,7 +302,7 @@ static int rave_sp_wdt_add_params(struct rave_sp_wdt *sp_wd)
 	return PTR_ERR_OR_ZERO(p);
 }
 
-static int rave_sp_wdt_probe(struct device_d *dev)
+static int rave_sp_wdt_probe(struct device *dev)
 {
 	struct rave_sp_wdt *sp_wd;
 	const char *reset_reason;
diff --git a/drivers/watchdog/rn5t568_wdt.c b/drivers/watchdog/rn5t568_wdt.c
index a6443609e2..e7db8f088d 100644
--- a/drivers/watchdog/rn5t568_wdt.c
+++ b/drivers/watchdog/rn5t568_wdt.c
@@ -107,7 +107,7 @@ static int rn5t568_wdt_set_timeout(struct watchdog *wdd, unsigned int timeout)
 	return ret;
 }
 
-static int rn5t568_wdt_probe(struct device_d *dev)
+static int rn5t568_wdt_probe(struct device *dev)
 {
 	struct rn5t568_wdt *wdt;
 	struct watchdog *wdd;
diff --git a/drivers/watchdog/starfive_wdt.c b/drivers/watchdog/starfive_wdt.c
index 6779566fd6..354e62ea47 100644
--- a/drivers/watchdog/starfive_wdt.c
+++ b/drivers/watchdog/starfive_wdt.c
@@ -44,7 +44,7 @@ static int starfive_wdt_set_timeout(struct watchdog *wdd, unsigned int timeout)
 	return 0;
 }
 
-static int starfive_wdt_drv_probe(struct device_d *dev)
+static int starfive_wdt_drv_probe(struct device *dev)
 {
 	struct starfive_wdt *wd;
 	struct resource *iores;
diff --git a/drivers/watchdog/stm32_iwdg.c b/drivers/watchdog/stm32_iwdg.c
index 4d7a263b7e..3f589d485a 100644
--- a/drivers/watchdog/stm32_iwdg.c
+++ b/drivers/watchdog/stm32_iwdg.c
@@ -126,7 +126,7 @@ static const struct of_device_id stm32_iwdg_of_match[] = {
 	{ /* sentinel */ }
 };
 
-static int stm32_iwdg_probe(struct device_d *dev)
+static int stm32_iwdg_probe(struct device *dev)
 {
 	struct stm32_iwdg_data *data;
 	struct stm32_iwdg *wd;
diff --git a/drivers/watchdog/stpmic1_wdt.c b/drivers/watchdog/stpmic1_wdt.c
index 105ba39fb7..fea01c0a04 100644
--- a/drivers/watchdog/stpmic1_wdt.c
+++ b/drivers/watchdog/stpmic1_wdt.c
@@ -157,7 +157,7 @@ static int stpmic1_set_reset_reason(struct regmap *map)
 	return 0;
 }
 
-static int stpmic1_wdt_probe(struct device_d *dev)
+static int stpmic1_wdt_probe(struct device *dev)
 {
 	struct stpmic1_wdt *wdt;
 	struct watchdog *wdd;
diff --git a/drivers/watchdog/wd_core.c b/drivers/watchdog/wd_core.c
index a872580d78..89e4f1d1ea 100644
--- a/drivers/watchdog/wd_core.c
+++ b/drivers/watchdog/wd_core.c
@@ -139,7 +139,7 @@ static int watchdog_register_dev(struct watchdog *wd, const char *name, int id)
  *
  * return: The priority
  */
-static unsigned int dev_get_watchdog_priority(struct device_d *dev)
+static unsigned int dev_get_watchdog_priority(struct device *dev)
 {
 	unsigned int priority = WATCHDOG_DEFAULT_PRIORITY;
 
@@ -329,7 +329,7 @@ EXPORT_SYMBOL(watchdog_get_alias_id_from);
 struct watchdog *watchdog_get_by_name(const char *name)
 {
 	struct watchdog *tmp;
-	struct device_d *dev = get_device_by_name(name);
+	struct device *dev = get_device_by_name(name);
 	if (!dev)
 		return NULL;
 
diff --git a/drivers/watchdog/wdat_wdt.c b/drivers/watchdog/wdat_wdt.c
index f58aee1283..522f1c25f1 100644
--- a/drivers/watchdog/wdat_wdt.c
+++ b/drivers/watchdog/wdat_wdt.c
@@ -382,7 +382,7 @@ static int wdat_wdt_enable_reboot(struct wdat_wdt *wdat)
 	return 0;
 }
 
-static int wdat_wdt_probe(struct device_d *const dev)
+static int wdat_wdt_probe(struct device *const dev)
 {
 	const struct acpi_wdat_entry *entries;
 	struct acpi_table_wdat *tbl;
diff --git a/fs/bpkfs.c b/fs/bpkfs.c
index 147f4735d9..bab989c4c0 100644
--- a/fs/bpkfs.c
+++ b/fs/bpkfs.c
@@ -127,7 +127,7 @@ static struct bpkfs_handle_data *bpkfs_get_by_type(
 	return NULL;
 }
 
-static int bpkfs_open(struct device_d *dev, FILE *f, const char *filename)
+static int bpkfs_open(struct device *dev, FILE *f, const char *filename)
 {
 	struct bpkfs_handle *priv = dev->priv;
 	struct bpkfs_handle_data *d;
@@ -171,7 +171,7 @@ out:
 	return ret;
 }
 
-static int bpkfs_close(struct device_d *dev, FILE *file)
+static int bpkfs_close(struct device *dev, FILE *file)
 {
 	struct bpkfs_handle_data *d = file->priv;
 
@@ -180,7 +180,8 @@ static int bpkfs_close(struct device_d *dev, FILE *file)
 	return 0;
 }
 
-static int bpkfs_read(struct device_d *dev, FILE *file, void *buf, size_t insize)
+static int bpkfs_read(struct device *dev, FILE *file, void *buf,
+		      size_t insize)
 {
 	struct bpkfs_handle_data *d = file->priv;
 
@@ -192,7 +193,7 @@ static int bpkfs_read(struct device_d *dev, FILE *file, void *buf, size_t insize
 	}
 }
 
-static int bpkfs_lseek(struct device_d *dev, FILE *file, loff_t pos)
+static int bpkfs_lseek(struct device *dev, FILE *file, loff_t pos)
 {
 	struct bpkfs_handle_data *d = file->priv;
 
@@ -211,7 +212,7 @@ struct somfy_readdir {
 	DIR dir;
 };
 
-static DIR *bpkfs_opendir(struct device_d *dev, const char *pathname)
+static DIR *bpkfs_opendir(struct device *dev, const char *pathname)
 {
 	struct bpkfs_handle *priv = dev->priv;
 	struct somfy_readdir *sdir;
@@ -242,7 +243,7 @@ static DIR *bpkfs_opendir(struct device_d *dev, const char *pathname)
 	return dir;
 }
 
-static struct dirent *bpkfs_readdir(struct device_d *dev, DIR *dir)
+static struct dirent *bpkfs_readdir(struct device *dev, DIR *dir)
 {
 	struct bpkfs_handle *priv = dev->priv;
 	struct somfy_readdir *sdir = dir->priv;
@@ -269,7 +270,7 @@ static struct dirent *bpkfs_readdir(struct device_d *dev, DIR *dir)
 	return &dir->d;
 }
 
-static int bpkfs_closedir(struct device_d *dev, DIR *dir)
+static int bpkfs_closedir(struct device *dev, DIR *dir)
 {
 	struct somfy_readdir *sdir = dir->priv;
 
@@ -277,7 +278,8 @@ static int bpkfs_closedir(struct device_d *dev, DIR *dir)
 	return 0;
 }
 
-static int bpkfs_stat(struct device_d *dev, const char *filename, struct stat *s)
+static int bpkfs_stat(struct device *dev, const char *filename,
+		      struct stat *s)
 {
 	struct bpkfs_handle *priv = dev->priv;
 	struct bpkfs_handle_data *d;
@@ -335,7 +337,7 @@ static void bpkfs_remove_data(struct bpkfs_handle_hw *h)
 	}
 }
 
-static void bpkfs_remove(struct device_d *dev)
+static void bpkfs_remove(struct device *dev)
 {
 	struct bpkfs_handle *priv = dev->priv;
 	struct bpkfs_handle_hw *h, *tmp;
@@ -349,7 +351,7 @@ static void bpkfs_remove(struct device_d *dev)
 	free(priv);
 }
 
-static int bpkfs_probe(struct device_d *dev)
+static int bpkfs_probe(struct device *dev)
 {
 	struct fs_device_d *fsdev = dev_to_fs_device(dev);
 	struct bpkfs_handle *priv;
diff --git a/fs/cramfs/cramfs.c b/fs/cramfs/cramfs.c
index 3ea6bd437e..6da8757888 100644
--- a/fs/cramfs/cramfs.c
+++ b/fs/cramfs/cramfs.c
@@ -161,7 +161,7 @@ static int cramfs_read_file(struct inode *inode, unsigned long offset,
 	return outsize;
 }
 
-static int cramfs_read(struct device_d *_dev, FILE *f, void *buf, size_t size)
+static int cramfs_read(struct device *_dev, FILE *f, void *buf, size_t size)
 {
 	return cramfs_read_file(f->f_inode, f->pos, buf, size);
 }
@@ -439,7 +439,7 @@ static const struct super_operations cramfs_ops = {
 	.destroy_inode = cramfs_destroy_inode,
 };
 
-static int cramfs_probe(struct device_d *dev)
+static int cramfs_probe(struct device *dev)
 {
 	struct fs_device_d *fsdev;
 	struct cramfs_priv *priv;
@@ -485,7 +485,7 @@ err_out:
 	return ret;
 }
 
-static void cramfs_remove(struct device_d *dev)
+static void cramfs_remove(struct device *dev)
 {
 	struct cramfs_priv *priv = dev->priv;
 
diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index 93de976fb6..2a259c2fe0 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -127,10 +127,10 @@ struct cdev *cdev_by_diskuuid(const char *diskuuid)
  * @dev: the device which should be searched for partitions
  * @name: the partition name
  */
-struct cdev *device_find_partition(struct device_d *dev, const char *name)
+struct cdev *device_find_partition(struct device *dev, const char *name)
 {
 	struct cdev *cdev;
-	struct device_d *child;
+	struct device *child;
 
 	list_for_each_entry(cdev, &dev->cdevs, devices_list) {
 		struct cdev *cdevl;
@@ -655,7 +655,7 @@ void cdev_remove_loop(struct cdev *cdev)
 	free(cdev);
 }
 
-ssize_t mem_copy(struct device_d *dev, void *dst, const void *src,
+ssize_t mem_copy(struct device *dev, void *dst, const void *src,
 			resource_size_t count, resource_size_t offset,
 			unsigned long flags)
 {
@@ -706,7 +706,7 @@ out:
 ssize_t mem_read(struct cdev *cdev, void *buf, size_t count, loff_t offset,
 		 unsigned long flags)
 {
-	struct device_d *dev = cdev->dev;
+	struct device *dev = cdev->dev;
 
 	if (!dev)
 		return -1;
@@ -719,7 +719,7 @@ EXPORT_SYMBOL(mem_read);
 ssize_t mem_write(struct cdev *cdev, const void *buf, size_t count,
 		  loff_t offset, unsigned long flags)
 {
-	struct device_d *dev = cdev->dev;
+	struct device *dev = cdev->dev;
 
 	if (!dev)
 		return -1;
diff --git a/fs/devfs.c b/fs/devfs.c
index 3e9d68e91e..08ce8b7bdd 100644
--- a/fs/devfs.c
+++ b/fs/devfs.c
@@ -35,14 +35,15 @@ struct devfs_inode {
 	struct cdev *cdev;
 };
 
-static int devfs_read(struct device_d *_dev, FILE *f, void *buf, size_t size)
+static int devfs_read(struct device *_dev, FILE *f, void *buf, size_t size)
 {
 	struct cdev *cdev = f->priv;
 
 	return cdev_read(cdev, buf, size, f->pos, f->flags);
 }
 
-static int devfs_write(struct device_d *_dev, FILE *f, const void *buf, size_t size)
+static int devfs_write(struct device *_dev, FILE *f, const void *buf,
+		       size_t size)
 {
 	struct cdev *cdev = f->priv;
 
@@ -52,14 +53,15 @@ static int devfs_write(struct device_d *_dev, FILE *f, const void *buf, size_t s
 	return cdev_write(cdev, buf, size, f->pos, f->flags);
 }
 
-static int devfs_lseek(struct device_d *_dev, FILE *f, loff_t pos)
+static int devfs_lseek(struct device *_dev, FILE *f, loff_t pos)
 {
 	struct cdev *cdev = f->priv;
 
 	return cdev_lseek(cdev, pos);
 }
 
-static int devfs_erase(struct device_d *_dev, FILE *f, loff_t count, loff_t offset)
+static int devfs_erase(struct device *_dev, FILE *f, loff_t count,
+		       loff_t offset)
 {
 	struct cdev *cdev = f->priv;
 
@@ -72,14 +74,15 @@ static int devfs_erase(struct device_d *_dev, FILE *f, loff_t count, loff_t offs
 	return cdev_erase(cdev, count, offset);
 }
 
-static int devfs_protect(struct device_d *dev, FILE *f, size_t count, loff_t offset, int prot)
+static int devfs_protect(struct device *dev, FILE *f, size_t count,
+			 loff_t offset, int prot)
 {
 	struct cdev *cdev = f->priv;
 
 	return cdev_protect(cdev, count, offset, prot);
 }
 
-static int devfs_discard_range(struct device_d *dev, FILE *f, loff_t count,
+static int devfs_discard_range(struct device *dev, FILE *f, loff_t count,
 			       loff_t offset)
 {
 	struct cdev *cdev = f->priv;
@@ -87,14 +90,14 @@ static int devfs_discard_range(struct device_d *dev, FILE *f, loff_t count,
 	return cdev_discard_range(cdev, count, offset);
 }
 
-static int devfs_memmap(struct device_d *_dev, FILE *f, void **map, int flags)
+static int devfs_memmap(struct device *_dev, FILE *f, void **map, int flags)
 {
 	struct cdev *cdev = f->priv;
 
 	return cdev_memmap(cdev, map, flags);
 }
 
-static int devfs_open(struct device_d *_dev, FILE *f, const char *filename)
+static int devfs_open(struct device *_dev, FILE *f, const char *filename)
 {
 	struct inode *inode = f->f_inode;
 	struct devfs_inode *node = container_of(inode, struct devfs_inode, inode);
@@ -116,7 +119,7 @@ static int devfs_open(struct device_d *_dev, FILE *f, const char *filename)
 	return 0;
 }
 
-static int devfs_close(struct device_d *_dev, FILE *f)
+static int devfs_close(struct device *_dev, FILE *f)
 {
 	struct cdev *cdev = f->priv;
 	int ret;
@@ -132,21 +135,21 @@ static int devfs_close(struct device_d *_dev, FILE *f)
 	return 0;
 }
 
-static int devfs_flush(struct device_d *_dev, FILE *f)
+static int devfs_flush(struct device *_dev, FILE *f)
 {
 	struct cdev *cdev = f->priv;
 
 	return cdev_flush(cdev);
 }
 
-static int devfs_ioctl(struct device_d *_dev, FILE *f, int request, void *buf)
+static int devfs_ioctl(struct device *_dev, FILE *f, int request, void *buf)
 {
 	struct cdev *cdev = f->priv;
 
 	return cdev_ioctl(cdev, request, buf);
 }
 
-static int devfs_truncate(struct device_d *dev, FILE *f, loff_t size)
+static int devfs_truncate(struct device *dev, FILE *f, loff_t size)
 {
 	struct cdev *cdev = f->priv;
 
@@ -292,7 +295,7 @@ static const struct super_operations devfs_ops = {
 	.destroy_inode = devfs_destroy_inode,
 };
 
-static int devfs_probe(struct device_d *dev)
+static int devfs_probe(struct device *dev)
 {
 	struct inode *inode;
 	struct fs_device_d *fsdev = dev_to_fs_device(dev);
@@ -307,7 +310,7 @@ static int devfs_probe(struct device_d *dev)
 	return 0;
 }
 
-static void devfs_delete(struct device_d *dev)
+static void devfs_delete(struct device *dev)
 {
 }
 
diff --git a/fs/efi.c b/fs/efi.c
index ca43cf6c48..4afd139623 100644
--- a/fs/efi.c
+++ b/fs/efi.c
@@ -128,7 +128,7 @@ static wchar_t *path_to_efi(const char *path)
 	return ret;
 }
 
-static int efifs_create(struct device_d *dev, const char *pathname, mode_t mode)
+static int efifs_create(struct device *dev, const char *pathname, mode_t mode)
 {
 	struct efifs_priv *priv = dev->priv;
 	wchar_t *efi_path = path_to_efi(pathname);
@@ -151,7 +151,7 @@ static int efifs_create(struct device_d *dev, const char *pathname, mode_t mode)
 	return 0;
 }
 
-static int efifs_unlink(struct device_d *dev, const char *pathname)
+static int efifs_unlink(struct device *dev, const char *pathname)
 {
 	struct efifs_priv *priv = dev->priv;
 	wchar_t *efi_path = path_to_efi(pathname);
@@ -173,7 +173,7 @@ static int efifs_unlink(struct device_d *dev, const char *pathname)
 	return 0;
 }
 
-static int efifs_mkdir(struct device_d *dev, const char *pathname)
+static int efifs_mkdir(struct device *dev, const char *pathname)
 {
 	struct efifs_priv *priv = dev->priv;
 	wchar_t *efi_path = path_to_efi(pathname);
@@ -196,12 +196,12 @@ static int efifs_mkdir(struct device_d *dev, const char *pathname)
 	return 0;
 }
 
-static int efifs_rmdir(struct device_d *dev, const char *pathname)
+static int efifs_rmdir(struct device *dev, const char *pathname)
 {
 	return efifs_unlink(dev, pathname);
 }
 
-static int efifs_open(struct device_d *dev, FILE *f, const char *filename)
+static int efifs_open(struct device *dev, FILE *f, const char *filename)
 {
 	struct efifs_priv *priv = dev->priv;
 	efi_status_t efiret;
@@ -249,7 +249,7 @@ out:
 	return ret;
 }
 
-static int efifs_close(struct device_d *dev, FILE *f)
+static int efifs_close(struct device *dev, FILE *f)
 {
 	struct efifs_file *ufile = f->priv;
 
@@ -260,7 +260,7 @@ static int efifs_close(struct device_d *dev, FILE *f)
 	return 0;
 }
 
-static int efifs_read(struct device_d *_dev, FILE *f, void *buf, size_t insize)
+static int efifs_read(struct device *_dev, FILE *f, void *buf, size_t insize)
 {
 	struct efifs_file *ufile = f->priv;
 	efi_status_t efiret;
@@ -274,7 +274,8 @@ static int efifs_read(struct device_d *_dev, FILE *f, void *buf, size_t insize)
 	return bufsize;
 }
 
-static int efifs_write(struct device_d *_dev, FILE *f, const void *buf, size_t insize)
+static int efifs_write(struct device *_dev, FILE *f, const void *buf,
+		       size_t insize)
 {
 	struct efifs_file *ufile = f->priv;
 	efi_status_t efiret;
@@ -289,7 +290,7 @@ static int efifs_write(struct device_d *_dev, FILE *f, const void *buf, size_t i
 	return bufsize;
 }
 
-static int efifs_lseek(struct device_d *dev, FILE *f, loff_t pos)
+static int efifs_lseek(struct device *dev, FILE *f, loff_t pos)
 {
 	struct efifs_file *ufile = f->priv;
 	efi_status_t efiret;
@@ -302,7 +303,7 @@ static int efifs_lseek(struct device_d *dev, FILE *f, loff_t pos)
 	return 0;
 }
 
-static int efifs_truncate(struct device_d *dev, FILE *f, loff_t size)
+static int efifs_truncate(struct device *dev, FILE *f, loff_t size)
 {
 	struct efifs_file *ufile = f->priv;
 	efi_status_t efiret;
@@ -336,7 +337,7 @@ out:
 	return ret;
 }
 
-static DIR *efifs_opendir(struct device_d *dev, const char *pathname)
+static DIR *efifs_opendir(struct device *dev, const char *pathname)
 {
 	struct efifs_priv *priv = dev->priv;
 	efi_status_t efiret;
@@ -356,7 +357,7 @@ static DIR *efifs_opendir(struct device_d *dev, const char *pathname)
 	return &udir->dir;
 }
 
-static struct dirent *efifs_readdir(struct device_d *dev, DIR *dir)
+static struct dirent *efifs_readdir(struct device *dev, DIR *dir)
 {
 	struct efifs_dir *udir = container_of(dir, struct efifs_dir, dir);
 	efi_status_t efiret;
@@ -375,7 +376,7 @@ static struct dirent *efifs_readdir(struct device_d *dev, DIR *dir)
 	return &dir->d;
 }
 
-static int efifs_closedir(struct device_d *dev, DIR *dir)
+static int efifs_closedir(struct device *dev, DIR *dir)
 {
 	struct efifs_dir *udir = container_of(dir, struct efifs_dir, dir);
 
@@ -386,7 +387,8 @@ static int efifs_closedir(struct device_d *dev, DIR *dir)
 	return 0;
 }
 
-static int efifs_stat(struct device_d *dev, const char *filename, struct stat *s)
+static int efifs_stat(struct device *dev, const char *filename,
+		      struct stat *s)
 {
 	struct efifs_priv *priv = dev->priv;
 	wchar_t *efi_path;
@@ -435,25 +437,25 @@ out_free:
 	return ret;
 }
 
-static int efifs_symlink(struct device_d *dev, const char *pathname,
-		       const char *newpath)
+static int efifs_symlink(struct device *dev, const char *pathname,
+			 const char *newpath)
 {
 	return -EROFS;
 }
 
-static int efifs_readlink(struct device_d *dev, const char *pathname,
-			char *buf, size_t bufsiz)
+static int efifs_readlink(struct device *dev, const char *pathname,
+			  char *buf, size_t bufsiz)
 {
 	return -ENOENT;
 }
 
-static int efifs_probe(struct device_d *dev)
+static int efifs_probe(struct device *dev)
 {
 	struct fs_device_d *fsdev = dev_to_fs_device(dev);
 	struct efifs_priv *priv;
 	efi_status_t efiret;
 	struct efi_file_handle *file;
-	struct device_d *efi = get_device_by_name(fsdev->backingstore);
+	struct device *efi = get_device_by_name(fsdev->backingstore);
 	struct efi_device *udev = container_of(efi, struct efi_device, dev);
 
 	priv = xzalloc(sizeof(struct efifs_priv));
@@ -472,7 +474,7 @@ static int efifs_probe(struct device_d *dev)
 	return 0;
 }
 
-static void efifs_remove(struct device_d *dev)
+static void efifs_remove(struct device *dev)
 {
 	free(dev->priv);
 }
diff --git a/fs/efivarfs.c b/fs/efivarfs.c
index 2e72bb8852..bba2c33340 100644
--- a/fs/efivarfs.c
+++ b/fs/efivarfs.c
@@ -47,7 +47,8 @@ struct efivarfs_priv {
 	struct list_head inodes;
 };
 
-static int efivars_create(struct device_d *dev, const char *pathname, mode_t mode)
+static int efivars_create(struct device *dev, const char *pathname,
+			  mode_t mode)
 {
 	struct efivarfs_priv *priv = dev->priv;
 	struct efivarfs_inode *inode;
@@ -93,7 +94,7 @@ static int efivars_create(struct device_d *dev, const char *pathname, mode_t mod
 	return 0;
 }
 
-static int efivars_unlink(struct device_d *dev, const char *pathname)
+static int efivars_unlink(struct device *dev, const char *pathname)
 {
 	struct efivarfs_priv *priv = dev->priv;
 	struct efivarfs_inode *inode, *tmp;
@@ -124,7 +125,7 @@ struct efivars_file {
 	u32 attributes;
 };
 
-static int efivarfs_open(struct device_d *dev, FILE *f, const char *filename)
+static int efivarfs_open(struct device *dev, FILE *f, const char *filename)
 {
 	struct efivars_file *efile;
 	efi_status_t efiret;
@@ -169,7 +170,7 @@ out:
 	return ret;
 }
 
-static int efivarfs_close(struct device_d *dev, FILE *f)
+static int efivarfs_close(struct device *dev, FILE *f)
 {
 	struct efivars_file *efile = f->priv;
 
@@ -179,7 +180,8 @@ static int efivarfs_close(struct device_d *dev, FILE *f)
 	return 0;
 }
 
-static int efivarfs_read(struct device_d *_dev, FILE *f, void *buf, size_t insize)
+static int efivarfs_read(struct device *_dev, FILE *f, void *buf,
+			 size_t insize)
 {
 	struct efivars_file *efile = f->priv;
 
@@ -188,7 +190,8 @@ static int efivarfs_read(struct device_d *_dev, FILE *f, void *buf, size_t insiz
 	return insize;
 }
 
-static int efivarfs_write(struct device_d *_dev, FILE *f, const void *buf, size_t insize)
+static int efivarfs_write(struct device *_dev, FILE *f, const void *buf,
+			  size_t insize)
 {
 	struct efivars_file *efile = f->priv;
 	efi_status_t efiret;
@@ -209,7 +212,7 @@ static int efivarfs_write(struct device_d *_dev, FILE *f, const void *buf, size_
 	return insize;
 }
 
-static int efivarfs_truncate(struct device_d *dev, FILE *f, loff_t size)
+static int efivarfs_truncate(struct device *dev, FILE *f, loff_t size)
 {
 	struct efivars_file *efile = f->priv;
 	efi_status_t efiret;
@@ -228,7 +231,7 @@ static int efivarfs_truncate(struct device_d *dev, FILE *f, loff_t size)
 	return 0;
 }
 
-static DIR *efivarfs_opendir(struct device_d *dev, const char *pathname)
+static DIR *efivarfs_opendir(struct device *dev, const char *pathname)
 {
 	struct efivarfs_priv *priv = dev->priv;
 	struct efivarfs_dir *edir;
@@ -239,7 +242,7 @@ static DIR *efivarfs_opendir(struct device_d *dev, const char *pathname)
 	return &edir->dir;
 }
 
-static struct dirent *efivarfs_readdir(struct device_d *dev, DIR *dir)
+static struct dirent *efivarfs_readdir(struct device *dev, DIR *dir)
 {
 	struct efivarfs_priv *priv = dev->priv;
 	struct efivarfs_dir *edir = container_of(dir, struct efivarfs_dir, dir);
@@ -257,7 +260,7 @@ static struct dirent *efivarfs_readdir(struct device_d *dev, DIR *dir)
 	return &dir->d;
 }
 
-static int efivarfs_closedir(struct device_d *dev, DIR *dir)
+static int efivarfs_closedir(struct device *dev, DIR *dir)
 {
 	struct efivarfs_dir *edir = container_of(dir, struct efivarfs_dir, dir);
 
@@ -266,7 +269,8 @@ static int efivarfs_closedir(struct device_d *dev, DIR *dir)
 	return 0;
 }
 
-static int efivarfs_stat(struct device_d *dev, const char *filename, struct stat *s)
+static int efivarfs_stat(struct device *dev, const char *filename,
+			 struct stat *s)
 {
 	efi_guid_t vendor;
 	s16 *name;
@@ -291,7 +295,7 @@ static int efivarfs_stat(struct device_d *dev, const char *filename, struct stat
 	return 0;
 }
 
-static int efivarfs_probe(struct device_d *dev)
+static int efivarfs_probe(struct device *dev)
 {
 	efi_status_t efiret;
 	efi_guid_t vendor;
@@ -330,7 +334,7 @@ static int efivarfs_probe(struct device_d *dev)
 	return 0;
 }
 
-static void efivarfs_remove(struct device_d *dev)
+static void efivarfs_remove(struct device *dev)
 {
 	struct efivarfs_priv *priv = dev->priv;
 	struct efivarfs_inode *inode, *tmp;
diff --git a/fs/ext4/ext4fs.h b/fs/ext4/ext4fs.h
index 83ae9b87a4..707565e671 100644
--- a/fs/ext4/ext4fs.h
+++ b/fs/ext4/ext4fs.h
@@ -84,7 +84,7 @@ struct ext_filesystem {
 
 	struct ext2_data *data;
 
-	struct device_d *dev;
+	struct device *dev;
 };
 
 struct ext2fs_node;
diff --git a/fs/ext4/ext_barebox.c b/fs/ext4/ext_barebox.c
index 6c7c9885c4..9e91288b8e 100644
--- a/fs/ext4/ext_barebox.c
+++ b/fs/ext4/ext_barebox.c
@@ -48,7 +48,7 @@ static inline struct ext2fs_node *to_ext2_node(struct inode *inode)
 	return container_of(inode, struct ext2fs_node, i);
 }
 
-static int ext_read(struct device_d *_dev, FILE *f, void *buf, size_t insize)
+static int ext_read(struct device *_dev, FILE *f, void *buf, size_t insize)
 {
 	struct inode *inode = f->f_inode;
 	struct ext2fs_node *node = to_ext2_node(inode);
@@ -249,7 +249,7 @@ struct inode *ext_get_inode(struct super_block *sb, int ino)
 	return inode;
 }
 
-static int ext_probe(struct device_d *dev)
+static int ext_probe(struct device *dev)
 {
 	struct fs_device_d *fsdev = dev_to_fs_device(dev);
 	int ret;
@@ -290,7 +290,7 @@ err:
 	return ret;
 }
 
-static void ext_remove(struct device_d *dev)
+static void ext_remove(struct device *dev)
 {
 	struct ext_filesystem *fs = dev->priv;
 
diff --git a/fs/fat/fat.c b/fs/fat/fat.c
index 7d888817c1..b9c0a6e7fa 100644
--- a/fs/fat/fat.c
+++ b/fs/fat/fat.c
@@ -68,7 +68,7 @@ DRESULT disk_write(FATFS *fat, const BYTE *buf, DWORD sector, BYTE count)
 /* ---------------------------------------------------------------*/
 
 #ifdef CONFIG_FS_FAT_WRITE
-static int fat_create(struct device_d *dev, const char *pathname, mode_t mode)
+static int fat_create(struct device *dev, const char *pathname, mode_t mode)
 {
 	struct fat_priv *priv = dev->priv;
 	FIL f_file;
@@ -83,7 +83,7 @@ static int fat_create(struct device_d *dev, const char *pathname, mode_t mode)
 	return 0;
 }
 
-static int fat_unlink(struct device_d *dev, const char *pathname)
+static int fat_unlink(struct device *dev, const char *pathname)
 {
 	struct fat_priv *priv = dev->priv;
 	int ret;
@@ -97,7 +97,7 @@ static int fat_unlink(struct device_d *dev, const char *pathname)
 	return 0;
 }
 
-static int fat_mkdir(struct device_d *dev, const char *pathname)
+static int fat_mkdir(struct device *dev, const char *pathname)
 {
 	struct fat_priv *priv = dev->priv;
 	int ret;
@@ -111,7 +111,7 @@ static int fat_mkdir(struct device_d *dev, const char *pathname)
 	return 0;
 }
 
-static int fat_rmdir(struct device_d *dev, const char *pathname)
+static int fat_rmdir(struct device *dev, const char *pathname)
 {
 	struct fat_priv *priv = dev->priv;
 	int ret;
@@ -125,7 +125,8 @@ static int fat_rmdir(struct device_d *dev, const char *pathname)
 	return 0;
 }
 
-static int fat_write(struct device_d *_dev, FILE *f, const void *buf, size_t insize)
+static int fat_write(struct device *_dev, FILE *f, const void *buf,
+		     size_t insize)
 {
 	FIL *f_file = f->priv;
 	int outsize;
@@ -143,7 +144,7 @@ static int fat_write(struct device_d *_dev, FILE *f, const void *buf, size_t ins
 	return outsize;
 }
 
-static int fat_truncate(struct device_d *dev, FILE *f, loff_t size)
+static int fat_truncate(struct device *dev, FILE *f, loff_t size)
 {
 	FIL *f_file = f->priv;
 	unsigned long lastofs;
@@ -167,7 +168,7 @@ static int fat_truncate(struct device_d *dev, FILE *f, loff_t size)
 }
 #endif /* CONFIG_FS_FAT_WRITE */
 
-static int fat_open(struct device_d *dev, FILE *file, const char *filename)
+static int fat_open(struct device *dev, FILE *file, const char *filename)
 {
 	struct fat_priv *priv = dev->priv;
 	FIL *f_file;
@@ -209,7 +210,7 @@ static int fat_open(struct device_d *dev, FILE *file, const char *filename)
 	return 0;
 }
 
-static int fat_close(struct device_d *dev, FILE *f)
+static int fat_close(struct device *dev, FILE *f)
 {
 	struct fat_priv *priv = dev->priv;
 	FIL *f_file = f->priv;
@@ -223,7 +224,7 @@ static int fat_close(struct device_d *dev, FILE *f)
 	return 0;
 }
 
-static int fat_read(struct device_d *_dev, FILE *f, void *buf, size_t insize)
+static int fat_read(struct device *_dev, FILE *f, void *buf, size_t insize)
 {
 	int ret;
 	FIL *f_file = f->priv;
@@ -239,7 +240,7 @@ static int fat_read(struct device_d *_dev, FILE *f, void *buf, size_t insize)
 	return outsize;
 }
 
-static int fat_lseek(struct device_d *dev, FILE *f, loff_t pos)
+static int fat_lseek(struct device *dev, FILE *f, loff_t pos)
 {
 	FIL *f_file = f->priv;
 	int ret;
@@ -251,7 +252,7 @@ static int fat_lseek(struct device_d *dev, FILE *f, loff_t pos)
 	return 0;
 }
 
-static DIR* fat_opendir(struct device_d *dev, const char *pathname)
+static DIR* fat_opendir(struct device *dev, const char *pathname)
 {
 	struct fat_priv *priv = dev->priv;
 	DIR *dir;
@@ -276,7 +277,7 @@ static DIR* fat_opendir(struct device_d *dev, const char *pathname)
 	return dir;
 }
 
-static struct dirent* fat_readdir(struct device_d *dev, DIR *dir)
+static struct dirent* fat_readdir(struct device *dev, DIR *dir)
 {
 	FF_DIR *ff_dir = dir->priv;
 	FILINFO finfo;
@@ -306,7 +307,7 @@ static struct dirent* fat_readdir(struct device_d *dev, DIR *dir)
 	return &dir->d;
 }
 
-static int fat_closedir(struct device_d *dev, DIR *dir)
+static int fat_closedir(struct device *dev, DIR *dir)
 {
 	FF_DIR *ff_dir = dir->priv;
 
@@ -316,7 +317,7 @@ static int fat_closedir(struct device_d *dev, DIR *dir)
 	return 0;
 }
 
-static int fat_stat(struct device_d *dev, const char *filename, struct stat *s)
+static int fat_stat(struct device *dev, const char *filename, struct stat *s)
 {
 	struct fat_priv *priv = dev->priv;
 	FILINFO finfo;
@@ -339,7 +340,7 @@ static int fat_stat(struct device_d *dev, const char *filename, struct stat *s)
 	return 0;
 }
 
-static int fat_probe(struct device_d *dev)
+static int fat_probe(struct device *dev)
 {
 	struct fs_device_d *fsdev = dev_to_fs_device(dev);
 	struct fat_priv *priv = xzalloc(sizeof(struct fat_priv));
@@ -367,7 +368,7 @@ err_open:
 	return ret;
 }
 
-static void fat_remove(struct device_d *dev)
+static void fat_remove(struct device *dev)
 {
 	free(dev->priv);
 }
diff --git a/fs/fs.c b/fs/fs.c
index b5a0912405..4f6e7f8607 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -311,7 +311,7 @@ int creat(const char *pathname, mode_t mode)
 }
 EXPORT_SYMBOL(creat);
 
-static int fsdev_truncate(struct device_d *dev, FILE *f, loff_t length)
+static int fsdev_truncate(struct device *dev, FILE *f, loff_t length)
 {
 	struct fs_driver_d *fsdrv = f->fsdev->driver;
 
@@ -726,12 +726,12 @@ int close(int fd)
 }
 EXPORT_SYMBOL(close);
 
-static int fs_match(struct device_d *dev, struct driver_d *drv)
+static int fs_match(struct device *dev, struct driver_d *drv)
 {
 	return strcmp(dev->name, drv->name) ? -1 : 0;
 }
 
-static int fs_probe(struct device_d *dev)
+static int fs_probe(struct device *dev)
 {
 	struct fs_device_d *fsdev = dev_to_fs_device(dev);
 	struct driver_d *drv = dev->driver;
@@ -791,7 +791,7 @@ static void destroy_inode(struct inode *inode)
 		free(inode);
 }
 
-static void fs_remove(struct device_d *dev)
+static void fs_remove(struct device *dev)
 {
 	struct fs_device_d *fsdev = dev_to_fs_device(dev);
 	struct super_block *sb = &fsdev->sb;
@@ -1141,7 +1141,7 @@ const char *cdev_mount(struct cdev *cdev)
  */
 void mount_all(void)
 {
-	struct device_d *dev;
+	struct device *dev;
 	struct block_device *bdev;
 
 	if (!IS_ENABLED(CONFIG_BLOCK))
diff --git a/fs/jffs2/fs.c b/fs/jffs2/fs.c
index 15bb63990b..3a56094b3c 100644
--- a/fs/jffs2/fs.c
+++ b/fs/jffs2/fs.c
@@ -40,7 +40,7 @@ static inline void i_gid_write(struct inode *inode, gid_t gid)
 const struct file_operations jffs2_file_operations;
 const struct inode_operations jffs2_file_inode_operations;
 
-static int jffs2_open(struct device_d *dev, FILE *file, const char *filename)
+static int jffs2_open(struct device *dev, FILE *file, const char *filename)
 {
 	struct inode *inode = file->f_inode;
 	struct jffs2_file *jf;
@@ -56,7 +56,7 @@ static int jffs2_open(struct device_d *dev, FILE *file, const char *filename)
 	return 0;
 }
 
-static int jffs2_close(struct device_d *dev, FILE *f)
+static int jffs2_close(struct device *dev, FILE *f)
 {
 	struct jffs2_file *jf = f->priv;
 
@@ -86,7 +86,7 @@ static int jffs2_get_block(struct jffs2_file *jf, unsigned int pos)
 	return 0;
 }
 
-static int jffs2_read(struct device_d *_dev, FILE *f, void *buf,
+static int jffs2_read(struct device *_dev, FILE *f, void *buf,
 		      size_t insize)
 {
 	struct jffs2_file *jf = f->priv;
@@ -401,7 +401,7 @@ void jffs2_flash_cleanup(struct jffs2_sb_info *c) {
 
 static int jffs2_probe_cnt;
 
-static int jffs2_probe(struct device_d *dev)
+static int jffs2_probe(struct device *dev)
 {
 	struct fs_device_d *fsdev;
 	struct super_block *sb;
@@ -448,7 +448,7 @@ err_out:
 	return ret;
 }
 
-static void jffs2_remove(struct device_d *dev)
+static void jffs2_remove(struct device *dev)
 {
 	struct fs_device_d *fsdev;
 	struct super_block *sb;
diff --git a/fs/nfs.c b/fs/nfs.c
index fae7b722f5..5a1b7b6531 100644
--- a/fs/nfs.c
+++ b/fs/nfs.c
@@ -1059,7 +1059,7 @@ static void nfs_handler(void *ctx, char *p, unsigned len)
 	list_add_tail(&packet->list, &npriv->packets);
 }
 
-static int nfs_truncate(struct device_d *dev, FILE *f, loff_t size)
+static int nfs_truncate(struct device *dev, FILE *f, loff_t size)
 {
 	return -ENOSYS;
 }
@@ -1150,7 +1150,7 @@ static const char *nfs_get_link(struct dentry *dentry, struct inode *inode)
 	return inode->i_link;
 }
 
-static int nfs_open(struct device_d *dev, FILE *file, const char *filename)
+static int nfs_open(struct device *dev, FILE *file, const char *filename)
 {
 	struct inode *inode = file->f_inode;
 	struct nfs_inode *ninode = nfsi(inode);
@@ -1172,7 +1172,7 @@ static int nfs_open(struct device_d *dev, FILE *file, const char *filename)
 	return 0;
 }
 
-static int nfs_close(struct device_d *dev, FILE *file)
+static int nfs_close(struct device *dev, FILE *file)
 {
 	struct file_priv *priv = file->priv;
 
@@ -1181,13 +1181,13 @@ static int nfs_close(struct device_d *dev, FILE *file)
 	return 0;
 }
 
-static int nfs_write(struct device_d *_dev, FILE *file, const void *inbuf,
-		size_t insize)
+static int nfs_write(struct device *_dev, FILE *file, const void *inbuf,
+		     size_t insize)
 {
 	return -ENOSYS;
 }
 
-static int nfs_read(struct device_d *dev, FILE *file, void *buf, size_t insize)
+static int nfs_read(struct device *dev, FILE *file, void *buf, size_t insize)
 {
 	struct file_priv *priv = file->priv;
 
@@ -1203,7 +1203,7 @@ static int nfs_read(struct device_d *dev, FILE *file, void *buf, size_t insize)
 	return kfifo_get(priv->fifo, buf, insize);
 }
 
-static int nfs_lseek(struct device_d *dev, FILE *file, loff_t pos)
+static int nfs_lseek(struct device *dev, FILE *file, loff_t pos)
 {
 	struct file_priv *priv = file->priv;
 
@@ -1419,7 +1419,7 @@ static void nfs_set_rootarg(struct nfs_priv *npriv, struct fs_device_d *fsdev)
 	free(str);
 }
 
-static int nfs_probe(struct device_d *dev)
+static int nfs_probe(struct device *dev)
 {
 	struct fs_device_d *fsdev = dev_to_fs_device(dev);
 	struct nfs_priv *npriv = xzalloc(sizeof(struct nfs_priv));
@@ -1519,7 +1519,7 @@ err:
 	return ret;
 }
 
-static void nfs_remove(struct device_d *dev)
+static void nfs_remove(struct device *dev)
 {
 	struct nfs_priv *npriv = dev->priv;
 
diff --git a/fs/omap4_usbbootfs.c b/fs/omap4_usbbootfs.c
index 4f159210d1..1ccfe14182 100644
--- a/fs/omap4_usbbootfs.c
+++ b/fs/omap4_usbbootfs.c
@@ -30,8 +30,9 @@ struct file_priv {
 	u32 size;
 };
 
-static struct file_priv *omap4_usbbootfs_do_open(
-	struct device_d *dev, int accmode, const char *filename)
+static struct file_priv *omap4_usbbootfs_do_open(struct device *dev,
+						 int accmode,
+						 const char *filename)
 {
 	struct file_priv *priv;
 	u32 data;
@@ -60,8 +61,8 @@ static struct file_priv *omap4_usbbootfs_do_open(
 	return priv;
 }
 
-static int omap4_usbbootfs_open(
-	struct device_d *dev, FILE *file, const char *filename)
+static int omap4_usbbootfs_open(struct device *dev, FILE *file,
+				const char *filename)
 {
 	struct file_priv *priv;
 
@@ -86,14 +87,14 @@ static int omap4_usbbootfs_do_close(struct file_priv *priv)
 	return 0;
 }
 
-static int omap4_usbbootfs_close(struct device_d *dev, FILE *f)
+static int omap4_usbbootfs_close(struct device *dev, FILE *f)
 {
 	struct file_priv *priv = f->priv;
 	return omap4_usbbootfs_do_close(priv);
 }
 
-static int omap4_usbbootfs_read(
-	struct device_d *dev, FILE *f, void *buf, size_t size)
+static int omap4_usbbootfs_read(struct device *dev, FILE *f, void *buf,
+				size_t size)
 {
 	struct file_priv *priv = f->priv;
 	u32 data;
@@ -116,13 +117,13 @@ static int omap4_usbbootfs_read(
 	return size;
 }
 
-static DIR *omap4_usbbootfs_opendir(struct device_d *dev, const char *pathname)
+static DIR *omap4_usbbootfs_opendir(struct device *dev, const char *pathname)
 {
 	return NULL;
 }
 
-static int omap4_usbbootfs_stat(
-	struct device_d *dev, const char *filename, struct stat *s)
+static int omap4_usbbootfs_stat(struct device *dev, const char *filename,
+				struct stat *s)
 {
 	struct file_priv *priv;
 
@@ -140,11 +141,11 @@ static int omap4_usbbootfs_stat(
 	return 0;
 }
 
-static int omap4_usbbootfs_probe(struct device_d *dev)
+static int omap4_usbbootfs_probe(struct device *dev)
 {
 	return 0;
 }
-static void omap4_usbbootfs_remove(struct device_d *dev)
+static void omap4_usbbootfs_remove(struct device *dev)
 {
 }
 
diff --git a/fs/pstore/fs.c b/fs/pstore/fs.c
index b41c87665c..24b5306d15 100644
--- a/fs/pstore/fs.c
+++ b/fs/pstore/fs.c
@@ -138,7 +138,7 @@ static struct pstore_private *pstore_get_by_name(struct list_head *head,
 	return NULL;
 }
 
-static int pstore_open(struct device_d *dev, FILE *file, const char *filename)
+static int pstore_open(struct device *dev, FILE *file, const char *filename)
 {
 	struct list_head *head = dev->priv;
 	struct pstore_private *d;
@@ -157,12 +157,12 @@ static int pstore_open(struct device_d *dev, FILE *file, const char *filename)
 	return 0;
 }
 
-static int pstore_close(struct device_d *dev, FILE *file)
+static int pstore_close(struct device *dev, FILE *file)
 {
 	return 0;
 }
 
-static int pstore_read(struct device_d *dev, FILE *file, void *buf,
+static int pstore_read(struct device *dev, FILE *file, void *buf,
 		       size_t insize)
 {
 	struct pstore_private *d = file->priv;
@@ -173,7 +173,7 @@ static int pstore_read(struct device_d *dev, FILE *file, void *buf,
 	return insize;
 }
 
-static int pstore_lseek(struct device_d *dev, FILE *file, loff_t pos)
+static int pstore_lseek(struct device *dev, FILE *file, loff_t pos)
 {
 	struct pstore_private *d = file->priv;
 
@@ -182,7 +182,7 @@ static int pstore_lseek(struct device_d *dev, FILE *file, loff_t pos)
 	return 0;
 }
 
-static DIR *pstore_opendir(struct device_d *dev, const char *pathname)
+static DIR *pstore_opendir(struct device *dev, const char *pathname)
 {
 	DIR *dir;
 
@@ -196,7 +196,7 @@ static DIR *pstore_opendir(struct device_d *dev, const char *pathname)
 	return dir;
 }
 
-static struct dirent *pstore_readdir(struct device_d *dev, DIR *dir)
+static struct dirent *pstore_readdir(struct device *dev, DIR *dir)
 {
 	struct pstore_private *d = dir->priv;
 
@@ -209,14 +209,14 @@ static struct dirent *pstore_readdir(struct device_d *dev, DIR *dir)
 	return &dir->d;
 }
 
-static int pstore_closedir(struct device_d *dev, DIR *dir)
+static int pstore_closedir(struct device *dev, DIR *dir)
 {
 	free(dir);
 
 	return 0;
 }
 
-static int pstore_stat(struct device_d *dev, const char *filename,
+static int pstore_stat(struct device *dev, const char *filename,
 		       struct stat *s)
 {
 	struct pstore_private *d;
@@ -234,7 +234,7 @@ static int pstore_stat(struct device_d *dev, const char *filename,
 	return 0;
 }
 
-static void pstore_remove(struct device_d *dev)
+static void pstore_remove(struct device *dev)
 {
 	struct pstore_private *d, *tmp;
 
@@ -243,7 +243,7 @@ static void pstore_remove(struct device_d *dev)
 	}
 }
 
-static int pstore_probe(struct device_d *dev)
+static int pstore_probe(struct device *dev)
 {
 	struct list_head *priv = &allpstore;
 
diff --git a/fs/pstore/ram.c b/fs/pstore/ram.c
index c1c8b0caab..6a57586543 100644
--- a/fs/pstore/ram.c
+++ b/fs/pstore/ram.c
@@ -410,7 +410,7 @@ static int ramoops_init_prz(const char *name,
 	return 0;
 }
 
-static int ramoops_parse_dt_size(struct device_d *dev,
+static int ramoops_parse_dt_size(struct device *dev,
 				 const char *propname, u32 *value)
 {
 	u32 val32 = 0;
@@ -432,7 +432,7 @@ static int ramoops_parse_dt_size(struct device_d *dev,
 	return 0;
 }
 
-static int ramoops_parse_dt(struct device_d *dev,
+static int ramoops_parse_dt(struct device *dev,
 			    struct ramoops_platform_data *pdata)
 {
 	struct device_node *of_node = dev->of_node;
@@ -517,7 +517,7 @@ static int ramoops_of_fixup(struct device_node *root, void *data)
 	return 0;
 }
 
-static int ramoops_probe(struct device_d *dev)
+static int ramoops_probe(struct device *dev)
 {
 	struct ramoops_platform_data *pdata = dummy_data;
 	struct ramoops_context *cxt = &oops_cxt;
diff --git a/fs/ramfs.c b/fs/ramfs.c
index bdaa91dd9e..127ff7de82 100644
--- a/fs/ramfs.c
+++ b/fs/ramfs.c
@@ -221,7 +221,7 @@ static struct ramfs_chunk *ramfs_find_chunk(struct ramfs_inode *node,
 	return NULL;
 }
 
-static int ramfs_read(struct device_d *_dev, FILE *f, void *buf, size_t insize)
+static int ramfs_read(struct device *_dev, FILE *f, void *buf, size_t insize)
 {
 	struct inode *inode = f->f_inode;
 	struct ramfs_inode *node = to_ramfs_inode(inode);
@@ -251,7 +251,8 @@ static int ramfs_read(struct device_d *_dev, FILE *f, void *buf, size_t insize)
 	return insize;
 }
 
-static int ramfs_write(struct device_d *_dev, FILE *f, const void *buf, size_t insize)
+static int ramfs_write(struct device *_dev, FILE *f, const void *buf,
+		       size_t insize)
 {
 	struct inode *inode = f->f_inode;
 	struct ramfs_inode *node = to_ramfs_inode(inode);
@@ -355,7 +356,7 @@ out:
 	return -ENOSPC;
 }
 
-static int ramfs_truncate(struct device_d *dev, FILE *f, loff_t size)
+static int ramfs_truncate(struct device *dev, FILE *f, loff_t size)
 {
 	struct inode *inode = f->f_inode;
 	struct ramfs_inode *node = to_ramfs_inode(inode);
@@ -387,7 +388,7 @@ static int ramfs_truncate(struct device_d *dev, FILE *f, loff_t size)
 	return 0;
 }
 
-static int ramfs_memmap(struct device_d *_dev, FILE *f, void **map, int flags)
+static int ramfs_memmap(struct device *_dev, FILE *f, void **map, int flags)
 {
 	struct inode *inode = f->f_inode;
 	struct ramfs_inode *node = to_ramfs_inode(inode);
@@ -431,7 +432,7 @@ static const struct super_operations ramfs_ops = {
 	.destroy_inode = ramfs_destroy_inode,
 };
 
-static int ramfs_probe(struct device_d *dev)
+static int ramfs_probe(struct device *dev)
 {
 	struct inode *inode;
 	struct fs_device_d *fsdev = dev_to_fs_device(dev);
@@ -445,7 +446,7 @@ static int ramfs_probe(struct device_d *dev)
 	return 0;
 }
 
-static void ramfs_remove(struct device_d *dev)
+static void ramfs_remove(struct device *dev)
 {
 }
 
diff --git a/fs/ratpfs.c b/fs/ratpfs.c
index b6857c6016..684bc68f74 100644
--- a/fs/ratpfs.c
+++ b/fs/ratpfs.c
@@ -48,25 +48,25 @@ struct ratpfs_dir {
 	DIR dir;
 };
 
-static int ratpfs_create(struct device_d __always_unused *dev,
-			const char __always_unused *pathname,
-			mode_t __always_unused mode)
+static int ratpfs_create(struct device __always_unused *dev,
+			 const char __always_unused *pathname,
+			 mode_t __always_unused mode)
 {
 	pr_debug("%s\n", __func__);
 
 	return 0;
 }
 
-static int ratpfs_mkdir(struct device_d __always_unused *dev,
-		       const char __always_unused *pathname)
+static int ratpfs_mkdir(struct device __always_unused *dev,
+			const char __always_unused *pathname)
 {
 	pr_debug("%s\n", __func__);
 
 	return -ENOSYS;
 }
 
-static int ratpfs_rm(struct device_d __always_unused *dev,
-		    const char *pathname)
+static int ratpfs_rm(struct device __always_unused *dev,
+		     const char *pathname)
 {
 	pr_debug("%s\n", __func__);
 
@@ -76,8 +76,8 @@ static int ratpfs_rm(struct device_d __always_unused *dev,
 	return 0;
 }
 
-static int ratpfs_truncate(struct device_d __always_unused *dev,
-			  FILE *f, loff_t size)
+static int ratpfs_truncate(struct device __always_unused *dev,
+			   FILE *f, loff_t size)
 {
 	int len_tx = 1 /* type */
 		+ 4 /* handle */
@@ -114,8 +114,8 @@ out:
 	return ret;
 }
 
-static int ratpfs_open(struct device_d __always_unused *dev,
-		      FILE *file, const char *filename)
+static int ratpfs_open(struct device __always_unused *dev,
+		       FILE *file, const char *filename)
 {
 	int len_name = strlen(filename);
 	int len_tx = 1 /* type */
@@ -163,7 +163,7 @@ out:
 	return ret;
 }
 
-static int ratpfs_close(struct device_d __always_unused *dev,
+static int ratpfs_close(struct device __always_unused *dev,
 			FILE *f)
 {
 	int len_tx = 1 /* type */
@@ -198,7 +198,7 @@ out:
 	return ret;
 }
 
-static int ratpfs_write(struct device_d __always_unused *dev,
+static int ratpfs_write(struct device __always_unused *dev,
 			FILE *f, const void *buf, size_t orig_size)
 {
 	int size = min((int)orig_size, 4096);
@@ -241,7 +241,7 @@ out:
 	return ret;
 }
 
-static int ratpfs_read(struct device_d __always_unused *dev,
+static int ratpfs_read(struct device __always_unused *dev,
 		       FILE *f, void *buf, size_t orig_size)
 {
 	int size = min((int)orig_size, 4096);
@@ -284,8 +284,8 @@ out:
 	return ret;
 }
 
-static DIR* ratpfs_opendir(struct device_d __always_unused *dev,
-			  const char *pathname)
+static DIR* ratpfs_opendir(struct device __always_unused *dev,
+			   const char *pathname)
 {
 	int len_name = strlen(pathname);
 	int len_tx = 1 /* type */
@@ -318,7 +318,7 @@ static DIR* ratpfs_opendir(struct device_d __always_unused *dev,
 	}
 }
 
-static struct dirent *ratpfs_readdir(struct device_d *dev, DIR *dir)
+static struct dirent *ratpfs_readdir(struct device *dev, DIR *dir)
 {
 	struct ratpfs_dir *rdir = container_of(dir, struct ratpfs_dir, dir);
 	int i;
@@ -338,7 +338,7 @@ static struct dirent *ratpfs_readdir(struct device_d *dev, DIR *dir)
 	return &dir->d;
 }
 
-static int ratpfs_closedir(struct device_d *dev, DIR *dir)
+static int ratpfs_closedir(struct device *dev, DIR *dir)
 {
 	struct ratpfs_dir *rdir = container_of(dir, struct ratpfs_dir, dir);
 
@@ -350,8 +350,8 @@ static int ratpfs_closedir(struct device_d *dev, DIR *dir)
 	return 0;
 }
 
-static int ratpfs_stat(struct device_d __always_unused *dev,
-		      const char *filename, struct stat *s)
+static int ratpfs_stat(struct device __always_unused *dev,
+		       const char *filename, struct stat *s)
 {
 	int len_name = strlen(filename);
 	int len_tx = 1 /* type */
@@ -395,7 +395,7 @@ out:
 	return ret;
 }
 
-static int ratpfs_probe(struct device_d *dev)
+static int ratpfs_probe(struct device *dev)
 {
 	int len_tx = 1; /* type */
 	struct ratp_bb_pkt *pkt_tx = xzalloc(sizeof(*pkt_tx) + len_tx);
@@ -431,7 +431,7 @@ out:
 	return ret;
 }
 
-static void ratpfs_remove(struct device_d __always_unused *dev)
+static void ratpfs_remove(struct device __always_unused *dev)
 {
 	pr_debug("%s\n", __func__);
 
diff --git a/fs/smhfs.c b/fs/smhfs.c
index 2e99b05979..6431b894f6 100644
--- a/fs/smhfs.c
+++ b/fs/smhfs.c
@@ -29,20 +29,20 @@ static int file_to_fd(const FILE *f)
 	return (int)f->priv;
 }
 
-static int smhfs_create(struct device_d __always_unused *dev,
+static int smhfs_create(struct device __always_unused *dev,
 			const char __always_unused *pathname,
 			mode_t __always_unused mode)
 {
 	return 0;
 }
 
-static int smhfs_mkdir(struct device_d __always_unused *dev,
+static int smhfs_mkdir(struct device __always_unused *dev,
 		       const char __always_unused *pathname)
 {
 	return -ENOSYS;
 }
 
-static int smhfs_rm(struct device_d __always_unused *dev,
+static int smhfs_rm(struct device __always_unused *dev,
 		    const char *pathname)
 {
 	/* Get rid of leading '/' */
@@ -54,14 +54,14 @@ static int smhfs_rm(struct device_d __always_unused *dev,
 		return 0;
 }
 
-static int smhfs_truncate(struct device_d __always_unused *dev,
+static int smhfs_truncate(struct device __always_unused *dev,
 			  FILE __always_unused *f,
 			  loff_t __always_unused size)
 {
 	return 0;
 }
 
-static int smhfs_open(struct device_d __always_unused *dev,
+static int smhfs_open(struct device __always_unused *dev,
 		      FILE *file, const char *filename)
 {
 	int fd;
@@ -82,7 +82,7 @@ error:
 	return -semihosting_errno();
 }
 
-static int smhfs_close(struct device_d __always_unused *dev,
+static int smhfs_close(struct device __always_unused *dev,
 		       FILE *f)
 {
 	if (semihosting_close(file_to_fd(f)))
@@ -91,7 +91,7 @@ static int smhfs_close(struct device_d __always_unused *dev,
 		return 0;
 }
 
-static int smhfs_write(struct device_d __always_unused *dev,
+static int smhfs_write(struct device __always_unused *dev,
 		       FILE *f, const void *inbuf, size_t insize)
 {
 	if (semihosting_write(file_to_fd(f), inbuf, insize))
@@ -100,7 +100,7 @@ static int smhfs_write(struct device_d __always_unused *dev,
 		return insize;
 }
 
-static int smhfs_read(struct device_d __always_unused *dev,
+static int smhfs_read(struct device __always_unused *dev,
 		      FILE *f, void *buf, size_t insize)
 {
 	if (!semihosting_read(file_to_fd(f), buf, insize))
@@ -109,7 +109,7 @@ static int smhfs_read(struct device_d __always_unused *dev,
 		return -semihosting_errno();
 }
 
-static int smhfs_lseek(struct device_d __always_unused *dev,
+static int smhfs_lseek(struct device __always_unused *dev,
 			  FILE *f, loff_t pos)
 {
 	if (semihosting_seek(file_to_fd(f), pos))
@@ -118,13 +118,13 @@ static int smhfs_lseek(struct device_d __always_unused *dev,
 	return 0;
 }
 
-static DIR* smhfs_opendir(struct device_d __always_unused *dev,
+static DIR* smhfs_opendir(struct device __always_unused *dev,
 			  const char __always_unused *pathname)
 {
 	return NULL;
 }
 
-static int smhfs_stat(struct device_d __always_unused *dev,
+static int smhfs_stat(struct device __always_unused *dev,
 		      const char *filename, struct stat *s)
 {
 	FILE file;
@@ -138,13 +138,13 @@ static int smhfs_stat(struct device_d __always_unused *dev,
 	return 0;
 }
 
-static int smhfs_probe(struct device_d __always_unused *dev)
+static int smhfs_probe(struct device __always_unused *dev)
 {
 	/* TODO: Add provisions to detect if debugger is connected */
 	return 0;
 }
 
-static void smhfs_remove(struct device_d __always_unused *dev)
+static void smhfs_remove(struct device __always_unused *dev)
 {
 }
 
diff --git a/fs/squashfs/squashfs.c b/fs/squashfs/squashfs.c
index 030be57887..96531be0f6 100644
--- a/fs/squashfs/squashfs.c
+++ b/fs/squashfs/squashfs.c
@@ -90,7 +90,7 @@ static const struct super_operations squashfs_super_ops = {
 	.destroy_inode = squashfs_destroy_inode,
 };
 
-static int squashfs_probe(struct device_d *dev)
+static int squashfs_probe(struct device *dev)
 {
 	struct fs_device_d *fsdev;
 	int ret;
@@ -120,7 +120,7 @@ err_out:
 	return ret;
 }
 
-static void squashfs_remove(struct device_d *dev)
+static void squashfs_remove(struct device *dev)
 {
 	struct fs_device_d *fsdev;
 	struct super_block *sb;
@@ -131,7 +131,7 @@ static void squashfs_remove(struct device_d *dev)
 	squashfs_put_super(sb);
 }
 
-static int squashfs_open(struct device_d *dev, FILE *file, const char *filename)
+static int squashfs_open(struct device *dev, FILE *file, const char *filename)
 {
 	struct inode *inode = file->f_inode;
 	struct squashfs_page *page;
@@ -165,7 +165,7 @@ error:
 	return -ENOMEM;
 }
 
-static int squashfs_close(struct device_d *dev, FILE *f)
+static int squashfs_close(struct device *dev, FILE *f)
 {
 	struct squashfs_page *page = f->priv;
 	int i;
@@ -197,8 +197,8 @@ static int squashfs_read_buf(struct squashfs_page *page, int pos, void **buf)
 	return 0;
 }
 
-static int squashfs_read(struct device_d *_dev, FILE *f, void *buf,
-		size_t insize)
+static int squashfs_read(struct device *_dev, FILE *f, void *buf,
+			 size_t insize)
 {
 	unsigned int size = insize;
 	unsigned int pos = f->pos;
diff --git a/fs/squashfs/squashfs_fs_sb.h b/fs/squashfs/squashfs_fs_sb.h
index 2b6f81d33a..c6fc37d48f 100644
--- a/fs/squashfs/squashfs_fs_sb.h
+++ b/fs/squashfs/squashfs_fs_sb.h
@@ -77,6 +77,6 @@ struct squashfs_sb_info {
 	unsigned int				inodes;
 	int					xattr_ids;
 	struct cdev				*cdev;
-	struct device_d				*dev;
+	struct device				*dev;
 };
 #endif
diff --git a/fs/tftp.c b/fs/tftp.c
index 4e5ccff57b..e41b5da4c0 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -178,7 +178,7 @@ static int tftp_window_cache_insert(struct tftp_cache *cache, uint16_t id,
 	return 0;
 }
 
-static int tftp_truncate(struct device_d *dev, FILE *f, loff_t size)
+static int tftp_truncate(struct device *dev, FILE *f, loff_t size)
 {
 	return 0;
 }
@@ -647,8 +647,9 @@ static int tftp_start_transfer(struct file_priv *priv)
 	return 0;
 }
 
-static struct file_priv *tftp_do_open(struct device_d *dev,
-		int accmode, struct dentry *dentry, bool is_getattr)
+static struct file_priv *tftp_do_open(struct device *dev,
+				      int accmode, struct dentry *dentry,
+				      bool is_getattr)
 {
 	struct fs_device_d *fsdev = dev_to_fs_device(dev);
 	struct file_priv *priv;
@@ -752,7 +753,7 @@ out:
 	return ERR_PTR(ret);
 }
 
-static int tftp_open(struct device_d *dev, FILE *file, const char *filename)
+static int tftp_open(struct device *dev, FILE *file, const char *filename)
 {
 	struct file_priv *priv;
 
@@ -805,15 +806,15 @@ static int tftp_do_close(struct file_priv *priv)
 	return 0;
 }
 
-static int tftp_close(struct device_d *dev, FILE *f)
+static int tftp_close(struct device *dev, FILE *f)
 {
 	struct file_priv *priv = f->priv;
 
 	return tftp_do_close(priv);
 }
 
-static int tftp_write(struct device_d *_dev, FILE *f, const void *inbuf,
-		size_t insize)
+static int tftp_write(struct device *_dev, FILE *f, const void *inbuf,
+		      size_t insize)
 {
 	struct file_priv *priv = f->priv;
 	size_t size, now;
@@ -848,7 +849,7 @@ static int tftp_write(struct device_d *_dev, FILE *f, const void *inbuf,
 	return insize;
 }
 
-static int tftp_read(struct device_d *dev, FILE *f, void *buf, size_t insize)
+static int tftp_read(struct device *dev, FILE *f, void *buf, size_t insize)
 {
 	struct file_priv *priv = f->priv;
 	size_t outsize = 0, now;
@@ -888,7 +889,7 @@ static int tftp_read(struct device_d *dev, FILE *f, void *buf, size_t insize)
 	return outsize;
 }
 
-static int tftp_lseek(struct device_d *dev, FILE *f, loff_t pos)
+static int tftp_lseek(struct device *dev, FILE *f, loff_t pos)
 {
 	/* We cannot seek backwards without reloading or caching the file */
 	loff_t f_pos = f->pos;
@@ -1014,7 +1015,7 @@ static const struct inode_operations tftp_dir_inode_operations =
 
 static const struct super_operations tftp_ops;
 
-static int tftp_probe(struct device_d *dev)
+static int tftp_probe(struct device *dev)
 {
 	struct fs_device_d *fsdev = dev_to_fs_device(dev);
 	struct tftp_priv *priv = xzalloc(sizeof(struct tftp_priv));
@@ -1043,7 +1044,7 @@ err:
 	return ret;
 }
 
-static void tftp_remove(struct device_d *dev)
+static void tftp_remove(struct device *dev)
 {
 	struct tftp_priv *priv = dev->priv;
 
diff --git a/fs/ubifs/super.c b/fs/ubifs/super.c
index 6a0074bd1a..37d5584454 100644
--- a/fs/ubifs/super.c
+++ b/fs/ubifs/super.c
@@ -1207,7 +1207,8 @@ out_shrinker:
 /* late_initcall to let compressors initialize first */
 late_initcall(ubifs_init);
 
-int ubifs_get_super(struct device_d *dev, struct ubi_volume_desc *ubi, int silent)
+int ubifs_get_super(struct device *dev, struct ubi_volume_desc *ubi,
+		    int silent)
 {
 	struct fs_device_d *fsdev = dev_to_fs_device(dev);
 	struct super_block *sb;
diff --git a/fs/ubifs/ubifs.c b/fs/ubifs/ubifs.c
index 6f2ea14d0e..95d5dbaff8 100644
--- a/fs/ubifs/ubifs.c
+++ b/fs/ubifs/ubifs.c
@@ -340,7 +340,7 @@ struct ubifs_file {
 	struct ubifs_data_node *dn;
 };
 
-static int ubifs_open(struct device_d *dev, FILE *file, const char *filename)
+static int ubifs_open(struct device *dev, FILE *file, const char *filename)
 {
 	struct inode *inode = file->f_inode;
 	struct ubifs_file *uf;
@@ -358,7 +358,7 @@ static int ubifs_open(struct device_d *dev, FILE *file, const char *filename)
 	return 0;
 }
 
-static int ubifs_close(struct device_d *dev, FILE *f)
+static int ubifs_close(struct device *dev, FILE *f)
 {
 	struct ubifs_file *uf = f->priv;
 
@@ -384,7 +384,7 @@ static int ubifs_get_block(struct ubifs_file *uf, unsigned int pos)
 	return 0;
 }
 
-static int ubifs_read(struct device_d *_dev, FILE *f, void *buf, size_t insize)
+static int ubifs_read(struct device *_dev, FILE *f, void *buf, size_t insize)
 {
 	struct ubifs_file *uf = f->priv;
 	unsigned int pos = f->pos;
@@ -451,7 +451,7 @@ static void ubifs_set_rootarg(struct ubifs_priv *priv, struct fs_device_d *fsdev
 	free(str);
 }
 
-static int ubifs_probe(struct device_d *dev)
+static int ubifs_probe(struct device *dev)
 {
 	struct fs_device_d *fsdev = dev_to_fs_device(dev);
 	struct ubifs_priv *priv = xzalloc(sizeof(struct ubifs_priv));
@@ -488,7 +488,7 @@ err_free:
 	return ret;
 }
 
-static void ubifs_remove(struct device_d *dev)
+static void ubifs_remove(struct device *dev)
 {
 	struct ubifs_priv *priv = dev->priv;
 	struct super_block *sb = priv->sb;
diff --git a/fs/ubifs/ubifs.h b/fs/ubifs/ubifs.h
index bffaa26fb3..598614efea 100644
--- a/fs/ubifs/ubifs.h
+++ b/fs/ubifs/ubifs.h
@@ -1512,7 +1512,7 @@ struct ubifs_info {
 	struct rb_root size_tree;
 	struct ubifs_mount_opts mount_opts;
 
-	struct device_d *dev;
+	struct device *dev;
 	struct ubifs_debug_info *dbg;
 };
 
@@ -2060,7 +2060,8 @@ int ubifs_decompress(const struct ubifs_info *c, const void *buf, int len,
 /* barebox specific */
 void ubifs_umount(struct ubifs_info *c);
 /* barebox specific */
-int ubifs_get_super(struct device_d *dev, struct ubi_volume_desc *ubi, int silent);
+int ubifs_get_super(struct device *dev, struct ubi_volume_desc *ubi,
+		    int silent);
 
 #ifndef CONFIG_UBIFS_FS_ENCRYPTION
 static inline int ubifs_encrypt(const struct inode *inode,
diff --git a/fs/ubootvarfs.c b/fs/ubootvarfs.c
index 147fee1ea6..b70ad99e07 100644
--- a/fs/ubootvarfs.c
+++ b/fs/ubootvarfs.c
@@ -333,7 +333,7 @@ static const struct super_operations ubootvarfs_ops = {
 	.destroy_inode = ubootvarfs_destroy_inode,
 };
 
-static int ubootvarfs_io(struct device_d *dev, FILE *f, void *buf,
+static int ubootvarfs_io(struct device *dev, FILE *f, void *buf,
 			 size_t insize, bool read)
 {
 	struct inode *inode = f->f_inode;
@@ -348,19 +348,19 @@ static int ubootvarfs_io(struct device_d *dev, FILE *f, void *buf,
 	return insize;
 }
 
-static int ubootvarfs_read(struct device_d *dev, FILE *f, void *buf,
+static int ubootvarfs_read(struct device *dev, FILE *f, void *buf,
 			   size_t insize)
 {
 	return ubootvarfs_io(dev, f, buf, insize, true);
 }
 
-static int ubootvarfs_write(struct device_d *dev, FILE *f, const void *buf,
+static int ubootvarfs_write(struct device *dev, FILE *f, const void *buf,
 			    size_t insize)
 {
 	return ubootvarfs_io(dev, f, (void *)buf, insize, false);
 }
 
-static int ubootvarfs_truncate(struct device_d *dev, FILE *f, loff_t size)
+static int ubootvarfs_truncate(struct device *dev, FILE *f, loff_t size)
 {
 	struct inode *inode = f->f_inode;
 	struct ubootvarfs_inode *node = inode_to_node(inode);
@@ -423,7 +423,7 @@ static void ubootvarfs_parse(struct ubootvarfs_data *data, char *blob,
 	data->end = blob;
 }
 
-static int ubootvarfs_probe(struct device_d *dev)
+static int ubootvarfs_probe(struct device *dev)
 {
 	struct inode *inode;
 	struct ubootvarfs_data *data = xzalloc(sizeof(*data));
@@ -472,7 +472,7 @@ free_data:
 	return ret;
 }
 
-static void ubootvarfs_remove(struct device_d *dev)
+static void ubootvarfs_remove(struct device *dev)
 {
 	struct ubootvarfs_data *data = dev->priv;
 
diff --git a/fs/uimagefs.c b/fs/uimagefs.c
index 8de2b8881f..0b7fed0f63 100644
--- a/fs/uimagefs.c
+++ b/fs/uimagefs.c
@@ -68,7 +68,7 @@ static struct uimagefs_handle_data *uimagefs_get_by_name(
 	return NULL;
 }
 
-static int uimagefs_open(struct device_d *dev, FILE *file, const char *filename)
+static int uimagefs_open(struct device *dev, FILE *file, const char *filename)
 {
 	struct uimagefs_handle *priv = dev->priv;
 	struct uimagefs_handle_data *d;
@@ -94,7 +94,7 @@ static int uimagefs_open(struct device_d *dev, FILE *file, const char *filename)
 	return 0;
 }
 
-static int uimagefs_close(struct device_d *dev, FILE *file)
+static int uimagefs_close(struct device *dev, FILE *file)
 {
 	struct uimagefs_handle_data *d = file->priv;
 
@@ -103,7 +103,8 @@ static int uimagefs_close(struct device_d *dev, FILE *file)
 	return 0;
 }
 
-static int uimagefs_read(struct device_d *dev, FILE *file, void *buf, size_t insize)
+static int uimagefs_read(struct device *dev, FILE *file, void *buf,
+			 size_t insize)
 {
 	struct uimagefs_handle_data *d = file->priv;
 
@@ -115,7 +116,7 @@ static int uimagefs_read(struct device_d *dev, FILE *file, void *buf, size_t ins
 	}
 }
 
-static int uimagefs_lseek(struct device_d *dev, FILE *file, loff_t pos)
+static int uimagefs_lseek(struct device *dev, FILE *file, loff_t pos)
 {
 	struct uimagefs_handle_data *d = file->priv;
 
@@ -127,7 +128,7 @@ static int uimagefs_lseek(struct device_d *dev, FILE *file, loff_t pos)
 	return 0;
 }
 
-static DIR *uimagefs_opendir(struct device_d *dev, const char *pathname)
+static DIR *uimagefs_opendir(struct device *dev, const char *pathname)
 {
 	struct uimagefs_handle *priv = dev->priv;
 	DIR *dir;
@@ -142,7 +143,7 @@ static DIR *uimagefs_opendir(struct device_d *dev, const char *pathname)
 	return dir;
 }
 
-static struct dirent *uimagefs_readdir(struct device_d *dev, DIR *dir)
+static struct dirent *uimagefs_readdir(struct device *dev, DIR *dir)
 {
 	struct uimagefs_handle *priv = dev->priv;
 	struct uimagefs_handle_data *d = dir->priv;
@@ -155,13 +156,14 @@ static struct dirent *uimagefs_readdir(struct device_d *dev, DIR *dir)
 	return &dir->d;
 }
 
-static int uimagefs_closedir(struct device_d *dev, DIR *dir)
+static int uimagefs_closedir(struct device *dev, DIR *dir)
 {
 	free(dir);
 	return 0;
 }
 
-static int uimagefs_stat(struct device_d *dev, const char *filename, struct stat *s)
+static int uimagefs_stat(struct device *dev, const char *filename,
+			 struct stat *s)
 {
 	struct uimagefs_handle *priv = dev->priv;
 	struct uimagefs_handle_data *d;
@@ -179,7 +181,7 @@ static int uimagefs_stat(struct device_d *dev, const char *filename, struct stat
 	return 0;
 }
 
-static int uimagefs_ioctl(struct device_d *dev, FILE *f, int request, void *buf)
+static int uimagefs_ioctl(struct device *dev, FILE *f, int request, void *buf)
 {
 	struct uimagefs_handle *priv = dev->priv;
 
@@ -191,7 +193,7 @@ static int uimagefs_ioctl(struct device_d *dev, FILE *f, int request, void *buf)
 	return 0;
 }
 
-static void uimagefs_remove(struct device_d *dev)
+static void uimagefs_remove(struct device *dev)
 {
 	struct uimagefs_handle *priv = dev->priv;
 	struct uimagefs_handle_data *d, *tmp;
@@ -493,7 +495,7 @@ err_out:
 	return ret;
 }
 
-static int uimagefs_probe(struct device_d *dev)
+static int uimagefs_probe(struct device *dev)
 {
 	struct fs_device_d *fsdev = dev_to_fs_device(dev);
 	struct uimagefs_handle *priv;
diff --git a/include/aiodev.h b/include/aiodev.h
index f0c26d7c58..56bd2da9f5 100644
--- a/include/aiodev.h
+++ b/include/aiodev.h
@@ -23,8 +23,8 @@ struct aiochannel {
 struct aiodevice {
 	const char *name;
 	int (*read)(struct aiochannel *, int *val);
-	struct device_d dev;
-	struct device_d *hwdev;
+	struct device dev;
+	struct device *hwdev;
 	struct aiochannel **channels;
 	int num_channels;
 	struct list_head list;
@@ -32,7 +32,7 @@ struct aiodevice {
 
 int aiodevice_register(struct aiodevice *aiodev);
 
-struct aiochannel *aiochannel_get(struct device_d *dev, int index);
+struct aiochannel *aiochannel_get(struct device *dev, int index);
 /* Find aiochannel by channel name, e.g. "aiodev0.in_value0_mV" */
 struct aiochannel *aiochannel_by_name(const char *name);
 
diff --git a/include/ata_drive.h b/include/ata_drive.h
index e11172ba39..47b7482686 100644
--- a/include/ata_drive.h
+++ b/include/ata_drive.h
@@ -128,8 +128,8 @@ struct ata_port_operations {
 
 struct ata_port {
 	struct ata_port_operations *ops;
-	struct device_d *dev;
-	struct device_d class_dev;
+	struct device *dev;
+	struct device class_dev;
 	const char *devname;
 	void *drvdata;
 	struct block_device blk;
@@ -148,7 +148,7 @@ int ide_port_register(struct ide_port *ide);
 int ata_port_register(struct ata_port *port);
 int ata_port_detect(struct ata_port *port);
 
-struct device_d;
+struct device;
 
 /**
  * @file
diff --git a/include/blobgen.h b/include/blobgen.h
index 09a6637b77..9f8876cee0 100644
--- a/include/blobgen.h
+++ b/include/blobgen.h
@@ -28,7 +28,7 @@ enum access_rights {
 #define BLOCKSIZE_BYTES		8
 
 struct blobgen {
-	struct device_d dev;
+	struct device dev;
 	int (*encrypt)(struct blobgen *bg, const char *modifier,
 		       const void *plain, int plainsize, void *blob,
 		       int *blobsize);
@@ -42,7 +42,7 @@ struct blobgen {
 	struct list_head list;
 };
 
-int blob_gen_register(struct device_d *dev, struct blobgen *bg);
+int blob_gen_register(struct device *dev, struct blobgen *bg);
 
 struct blobgen *blobgen_get(const char *name);
 
diff --git a/include/block.h b/include/block.h
index 8740a03d36..4dd2aa1f80 100644
--- a/include/block.h
+++ b/include/block.h
@@ -17,7 +17,7 @@ struct block_device_ops {
 struct chunk;
 
 struct block_device {
-	struct device_d *dev;
+	struct device *dev;
 	struct list_head list;
 	struct block_device_ops *ops;
 	int blockbits;
diff --git a/include/blspec.h b/include/blspec.h
index 8f2556f662..8297b9fdc1 100644
--- a/include/blspec.h
+++ b/include/blspec.h
@@ -20,7 +20,7 @@ const char *blspec_entry_var_get(struct blspec_entry *entry, const char *name);
 
 int blspec_scan_devices(struct bootentries *bootentries);
 
-int blspec_scan_device(struct bootentries *bootentries, struct device_d *dev);
+int blspec_scan_device(struct bootentries *bootentries, struct device *dev);
 int blspec_scan_devicename(struct bootentries *bootentries, const char *devname);
 int blspec_scan_directory(struct bootentries *bootentries, const char *root);
 int blspec_scan_file(struct bootentries *bootentries, const char *root,
diff --git a/include/console.h b/include/console.h
index d3b62f3f9f..d3b08722b0 100644
--- a/include/console.h
+++ b/include/console.h
@@ -26,8 +26,8 @@ enum console_mode {
 };
 
 struct console_device {
-	struct device_d *dev;
-	struct device_d class_dev;
+	struct device *dev;
+	struct device class_dev;
 
 	int (*tstc)(struct console_device *cdev);
 	void (*putc)(struct console_device *cdev, char c);
@@ -62,7 +62,7 @@ struct console_device {
 	struct serdev_device serdev;
 };
 
-static inline struct serdev_device *to_serdev_device(struct device_d *d)
+static inline struct serdev_device *to_serdev_device(struct device *d)
 {
 	struct console_device *cdev =
 		container_of(d, struct console_device, class_dev);
@@ -78,7 +78,7 @@ to_console_device(struct serdev_device *serdev)
 static inline struct device_node *
 console_is_serdev_node(struct console_device *cdev)
 {
-	struct device_d *dev = cdev->dev;
+	struct device *dev = cdev->dev;
 	if (dev && dev->of_node &&
 	    of_get_child_count(dev->of_node))
 		return dev->of_node;
@@ -89,7 +89,7 @@ console_is_serdev_node(struct console_device *cdev)
 int console_register(struct console_device *cdev);
 int console_unregister(struct console_device *cdev);
 
-struct console_device *console_get_by_dev(struct device_d *dev);
+struct console_device *console_get_by_dev(struct device *dev);
 struct console_device *console_get_by_name(const char *name);
 struct console_device *of_console_get_by_alias(const char *alias);
 
diff --git a/include/dirent.h b/include/dirent.h
index 285074e9f7..b8fbfafe3c 100644
--- a/include/dirent.h
+++ b/include/dirent.h
@@ -9,7 +9,7 @@ struct dirent {
 };
 
 typedef struct dir {
-	struct device_d *dev;
+	struct device *dev;
 	struct fs_driver_d *fsdrv;
 	struct dirent d;
 	void *priv; /* private data for the fs driver */
diff --git a/include/dma.h b/include/dma.h
index 2c4bdfc98f..26c71d812e 100644
--- a/include/dma.h
+++ b/include/dma.h
@@ -34,23 +34,23 @@ static inline void dma_free(void *mem)
 }
 #endif
 
-dma_addr_t dma_map_single(struct device_d *dev, void *ptr, size_t size,
+dma_addr_t dma_map_single(struct device *dev, void *ptr, size_t size,
 			  enum dma_data_direction dir);
-void dma_unmap_single(struct device_d *dev, dma_addr_t addr, size_t size,
+void dma_unmap_single(struct device *dev, dma_addr_t addr, size_t size,
 		      enum dma_data_direction dir);
 
 #define DMA_BIT_MASK(n)	(((n) == 64) ? ~0ULL : ((1ULL<<(n))-1))
 
 #define DMA_MASK_NONE	0x0ULL
 
-static inline void dma_set_mask(struct device_d *dev, u64 dma_mask)
+static inline void dma_set_mask(struct device *dev, u64 dma_mask)
 {
 	dev->dma_mask = dma_mask;
 }
 
 #define DMA_ERROR_CODE  (~(dma_addr_t)0)
 
-static inline int dma_mapping_error(struct device_d *dev, dma_addr_t dma_addr)
+static inline int dma_mapping_error(struct device *dev, dma_addr_t dma_addr)
 {
 	return dma_addr == DMA_ERROR_CODE ||
 		(dev->dma_mask && dma_addr > dev->dma_mask);
diff --git a/include/driver.h b/include/driver.h
index b52b5c47cf..dbbb48cbf9 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -24,7 +24,7 @@ struct platform_device_id {
 };
 
 /** @brief Describes a particular device present in the system */
-struct device_d {
+struct device {
 	/*! This member (and 'type' described below) is used to match
 	 * with a driver. This is a descriptive name and could be
 	 * MPC5XXX_ether or imx_serial. Unless absolutely necessary,
@@ -63,7 +63,7 @@ struct device_d {
 	struct list_head sibling;
 	struct list_head active;   /* The list of all devices which have a driver */
 
-	struct device_d *parent;   /* our parent, NULL if not present */
+	struct device *parent;   /* our parent, NULL if not present */
 
 	struct bus_type *bus;
 
@@ -82,12 +82,12 @@ struct device_d {
 
 	unsigned long dma_offset;
 
-	void    (*info) (struct device_d *);
+	void    (*info) (struct device *);
 	/*
 	 * For devices which take longer to probe this is called
 	 * when the driver should actually detect client devices
 	 */
-	int     (*detect) (struct device_d *);
+	int     (*detect) (struct device *);
 
 	/*
 	 * if a driver probe is deferred, this stores the last error
@@ -105,10 +105,10 @@ struct driver_d {
 	struct list_head bus_list; /* our bus            */
 
 	/*! Called if an instance of a device is found */
-	int     (*probe) (struct device_d *);
+	int     (*probe) (struct device *);
 
 	/*! Called if an instance of a device is gone. */
-	void     (*remove)(struct device_d *);
+	void     (*remove)(struct device *);
 
 	struct bus_type *bus;
 
@@ -129,25 +129,25 @@ struct driver_d {
 /* Register devices and drivers.
  */
 int register_driver(struct driver_d *);
-int register_device(struct device_d *);
+int register_device(struct device *);
 
 /* manualy probe a device
  * the driver need to be specified
  */
-int device_probe(struct device_d *dev);
+int device_probe(struct device *dev);
 
 /* detect devices attached to this device (cards, disks,...) */
-int device_detect(struct device_d *dev);
+int device_detect(struct device *dev);
 int device_detect_by_name(const char *devname);
 void device_detect_all(void);
 
 /* Unregister a device. This function can fail, e.g. when the device
  * has children.
  */
-int unregister_device(struct device_d *);
+int unregister_device(struct device *);
 
-void free_device_res(struct device_d *dev);
-void free_device(struct device_d *dev);
+void free_device_res(struct device *dev);
+void free_device(struct device *dev);
 
 
 /* Iterate over a devices children
@@ -165,14 +165,14 @@ void free_device(struct device_d *dev);
  * 'last' to get the next device. This functions returns NULL if no
  * more devices are found.
  */
-struct device_d *get_device_by_type(ulong type, struct device_d *last);
-struct device_d *get_device_by_id(const char *id);
-struct device_d *get_device_by_name(const char *name);
+struct device *get_device_by_type(ulong type, struct device *last);
+struct device *get_device_by_id(const char *id);
+struct device *get_device_by_name(const char *name);
 
 /* Find a device by name and if not found look up by device tree path
  * or alias
  */
-struct device_d *find_device(const char *str);
+struct device *find_device(const char *str);
 
 /* Find a free device id from the given template. This is archieved by
  * appending a number to the template. Dynamically created devices should
@@ -182,58 +182,59 @@ int get_free_deviceid(const char *name_template);
 
 char *deviceid_from_spec_str(const char *str, char **endp);
 
-static inline const char *dev_id(const struct device_d *dev)
+static inline const char *dev_id(const struct device *dev)
 {
 	if (!dev)
 		return NULL;
 	return (dev->id != DEVICE_ID_SINGLE) ? dev->unique_name : dev->name;
 }
 
-static inline const char *dev_name(const struct device_d *dev)
+static inline const char *dev_name(const struct device *dev)
 {
 	return dev_id(dev);
 }
 
-int dev_set_name(struct device_d *dev, const char *fmt, ...);
+int dev_set_name(struct device *dev, const char *fmt, ...);
 
 /*
  * get resource 'num' for a device
  */
-struct resource *dev_get_resource(struct device_d *dev, unsigned long type,
+struct resource *dev_get_resource(struct device *dev, unsigned long type,
 				  int num);
 /*
  * get resource base 'name' for a device
  */
-struct resource *dev_get_resource_by_name(struct device_d *dev,
+struct resource *dev_get_resource_by_name(struct device *dev,
 					  unsigned long type,
 					  const char *name);
 
 /*
  * exlusively request register base 'name' for a device
  */
-void __iomem *dev_request_mem_region_by_name(struct device_d *dev,
+void __iomem *dev_request_mem_region_by_name(struct device *dev,
 					     const char *name);
 
 /*
  * get register base 'num' for a device
  */
-void *dev_get_mem_region(struct device_d *dev, int num);
+void *dev_get_mem_region(struct device *dev, int num);
 
 /*
  * exlusively request register base 'num' for a device
  * deprecated, use dev_request_mem_resource instead
  */
-void __iomem *dev_request_mem_region(struct device_d *dev, int num);
+void __iomem *dev_request_mem_region(struct device *dev, int num);
 
 /*
  * exlusively request resource 'num' for a device
  */
-struct resource *dev_request_mem_resource(struct device_d *dev, int num);
+struct resource *dev_request_mem_resource(struct device *dev, int num);
 
 /*
  * exlusively request resource 'name' for a device
  */
-struct resource *dev_request_mem_resource_by_name(struct device_d *dev, const char *name);
+struct resource *dev_request_mem_resource_by_name(struct device *dev,
+						  const char *name);
 
 /*
  * exlusively request register base 'num' for a device
@@ -241,22 +242,24 @@ struct resource *dev_request_mem_resource_by_name(struct device_d *dev, const ch
  * only used on platform like at91 where the Ressource address collision with
  * PTR errno
  */
-void __iomem *dev_request_mem_region_err_null(struct device_d *dev, int num);
+void __iomem *dev_request_mem_region_err_null(struct device *dev, int num);
 
-struct device_d *device_alloc(const char *devname, int id);
+struct device *device_alloc(const char *devname, int id);
 
-int device_add_resources(struct device_d *dev, const struct resource *res, int num);
+int device_add_resources(struct device *dev, const struct resource *res,
+			 int num);
 
-int device_add_resource(struct device_d *dev, const char *resname,
-		resource_size_t start, resource_size_t size, unsigned int flags);
+int device_add_resource(struct device *dev, const char *resname,
+			resource_size_t start, resource_size_t size,
+			unsigned int flags);
 
-int device_add_data(struct device_d *dev, const void *data, size_t size);
+int device_add_data(struct device *dev, const void *data, size_t size);
 
 /*
  * register a generic device
  * with only one resource
  */
-struct device_d *add_generic_device(const char* devname, int id, const char *resname,
+struct device *add_generic_device(const char* devname, int id, const char *resname,
 		resource_size_t start, resource_size_t size, unsigned int flags,
 		void *pdata);
 
@@ -264,20 +267,20 @@ struct device_d *add_generic_device(const char* devname, int id, const char *res
  * register a generic device
  * with multiple resources
  */
-struct device_d *add_generic_device_res(const char* devname, int id,
+struct device *add_generic_device_res(const char* devname, int id,
 		struct resource *res, int nb, void *pdata);
 
 /*
  * register a memory device
  */
-static inline struct device_d *add_mem_device(const char *name, resource_size_t start,
+static inline struct device *add_mem_device(const char *name, resource_size_t start,
 		resource_size_t size, unsigned int flags)
 {
 	return add_generic_device("mem", DEVICE_ID_DYNAMIC, name, start, size,
 				  IORESOURCE_MEM | flags, NULL);
 }
 
-static inline struct device_d *add_cfi_flash_device(int id, resource_size_t start,
+static inline struct device *add_cfi_flash_device(int id, resource_size_t start,
 		resource_size_t size, unsigned int flags)
 {
 	return add_generic_device("cfi_flash", id, NULL, start, size,
@@ -285,7 +288,7 @@ static inline struct device_d *add_cfi_flash_device(int id, resource_size_t star
 }
 
 struct NS16550_plat;
-static inline struct device_d *add_ns16550_device(int id, resource_size_t start,
+static inline struct device *add_ns16550_device(int id, resource_size_t start,
 		resource_size_t size, int flags, struct NS16550_plat *pdata)
 {
 	return add_generic_device("ns16550_serial", id, NULL, start, size,
@@ -293,10 +296,10 @@ static inline struct device_d *add_ns16550_device(int id, resource_size_t start,
 }
 
 #ifdef CONFIG_DRIVER_NET_DM9K
-struct device_d *add_dm9000_device(int id, resource_size_t base,
+struct device *add_dm9000_device(int id, resource_size_t base,
 		resource_size_t data, int flags, void *pdata);
 #else
-static inline struct device_d *add_dm9000_device(int id, resource_size_t base,
+static inline struct device *add_dm9000_device(int id, resource_size_t base,
 		resource_size_t data, int flags, void *pdata)
 {
 	return NULL;
@@ -304,10 +307,10 @@ static inline struct device_d *add_dm9000_device(int id, resource_size_t base,
 #endif
 
 #ifdef CONFIG_USB_EHCI
-struct device_d *add_usb_ehci_device(int id, resource_size_t hccr,
+struct device *add_usb_ehci_device(int id, resource_size_t hccr,
 		resource_size_t hcor, void *pdata);
 #else
-static inline struct device_d *add_usb_ehci_device(int id, resource_size_t hccr,
+static inline struct device *add_usb_ehci_device(int id, resource_size_t hccr,
 		resource_size_t hcor, void *pdata)
 {
 	return NULL;
@@ -315,23 +318,23 @@ static inline struct device_d *add_usb_ehci_device(int id, resource_size_t hccr,
 #endif
 
 #ifdef CONFIG_DRIVER_NET_KS8851_MLL
-struct device_d *add_ks8851_device(int id, resource_size_t addr,
+struct device *add_ks8851_device(int id, resource_size_t addr,
 		resource_size_t addr_cmd, int flags, void *pdata);
 #else
-static inline struct device_d *add_ks8851_device(int id, resource_size_t addr,
+static inline struct device *add_ks8851_device(int id, resource_size_t addr,
 		resource_size_t addr_cmd, int flags, void *pdata)
 {
 	return NULL;
 }
 #endif
 
-static inline struct device_d *add_generic_usb_ehci_device(int id,
+static inline struct device *add_generic_usb_ehci_device(int id,
 		resource_size_t base, void *pdata)
 {
 	return add_usb_ehci_device(id, base + 0x100, base + 0x140, pdata);
 }
 
-static inline struct device_d *add_gpio_keys_device(int id, void *pdata)
+static inline struct device *add_gpio_keys_device(int id, void *pdata)
 {
 	return add_generic_device_res("gpio_keys", id, 0, 0, pdata);
 }
@@ -367,30 +370,30 @@ struct cdev;
 /* These are used by drivers which work with direct memory accesses */
 ssize_t mem_read(struct cdev *cdev, void *buf, size_t count, loff_t offset, ulong flags);
 ssize_t mem_write(struct cdev *cdev, const void *buf, size_t count, loff_t offset, ulong flags);
-ssize_t mem_copy(struct device_d *dev, void *dst, const void *src,
+ssize_t mem_copy(struct device *dev, void *dst, const void *src,
 		 resource_size_t count, resource_size_t offset,
 		 unsigned long flags);
 
 int generic_memmap_ro(struct cdev *dev, void **map, int flags);
 int generic_memmap_rw(struct cdev *dev, void **map, int flags);
 
-static inline int dev_open_default(struct device_d *dev, struct filep *f)
+static inline int dev_open_default(struct device *dev, struct filep *f)
 {
 	return 0;
 }
 
-static inline int dev_close_default(struct device_d *dev, struct filep *f)
+static inline int dev_close_default(struct device *dev, struct filep *f)
 {
 	return 0;
 }
 
 struct bus_type {
 	char *name;
-	int (*match)(struct device_d *dev, struct driver_d *drv);
-	int (*probe)(struct device_d *dev);
-	void (*remove)(struct device_d *dev);
+	int (*match)(struct device *dev, struct driver_d *drv);
+	int (*probe)(struct device *dev);
+	void (*remove)(struct device *dev);
 
-	struct device_d *dev;
+	struct device *dev;
 
 	struct list_head list;
 	struct list_head device_list;
@@ -398,7 +401,7 @@ struct bus_type {
 };
 
 int bus_register(struct bus_type *bus);
-int device_match(struct device_d *dev, struct driver_d *drv);
+int device_match(struct device *dev, struct driver_d *drv);
 
 extern struct list_head bus_list;
 
@@ -446,7 +449,7 @@ int platform_driver_register(struct driver_d *drv);
 #define late_platform_driver(drv)	\
 	register_driver_macro(late,platform,drv)
 
-int platform_device_register(struct device_d *new_device);
+int platform_device_register(struct device *new_device);
 
 struct cdev_operations {
 	/*! Called in response of reading from this device. Required */
@@ -472,7 +475,7 @@ struct cdev_operations {
 struct cdev {
 	const struct cdev_operations *ops;
 	void *priv;
-	struct device_d *dev;
+	struct device *dev;
 	struct device_node *device_node;
 	struct list_head list;
 	struct list_head devices_list;
@@ -498,7 +501,7 @@ int devfs_create(struct cdev *);
 int devfs_create_link(struct cdev *, const char *name);
 int devfs_remove(struct cdev *);
 int cdev_find_free_index(const char *);
-struct cdev *device_find_partition(struct device_d *dev, const char *name);
+struct cdev *device_find_partition(struct device *dev, const char *name);
 struct cdev *cdev_by_name(const char *filename);
 struct cdev *lcdev_by_name(const char *filename);
 struct cdev *cdev_readlink(struct cdev *cdev);
@@ -595,7 +598,7 @@ int devfs_create_partitions(const char *devname,
  * DEPRECATED: use device_get_match_data instead, which avoids
  * common pitfalls due to explicit pointer casts
  */
-int dev_get_drvdata(struct device_d *dev, const void **data);
+int dev_get_drvdata(struct device *dev, const void **data);
 
 /**
  * device_get_match_data - get driver match data associated with device
@@ -603,24 +606,24 @@ int dev_get_drvdata(struct device_d *dev, const void **data);
  *
  * Returns match data on success and NULL otherwise
  */
-const void *device_get_match_data(struct device_d *dev);
+const void *device_get_match_data(struct device *dev);
 
-int device_match_of_modalias(struct device_d *dev, struct driver_d *drv);
+int device_match_of_modalias(struct device *dev, struct driver_d *drv);
 
-struct device_d *device_find_child(struct device_d *parent, void *data,
-				 int (*match)(struct device_d *dev, void *data));
+struct device *device_find_child(struct device *parent, void *data,
+				 int (*match)(struct device *dev, void *data));
 
-static inline struct device_node *dev_of_node(struct device_d *dev)
+static inline struct device_node *dev_of_node(struct device *dev)
 {
 	return IS_ENABLED(CONFIG_OFDEVICE) ? dev->of_node : NULL;
 }
 
-static inline void *dev_get_priv(struct device_d *dev)
+static inline void *dev_get_priv(struct device *dev)
 {
 	return dev->priv;
 }
 
-static inline bool dev_is_probed(struct device_d *dev)
+static inline bool dev_is_probed(struct device *dev)
 {
 	return dev->driver ? true : false;
 }
diff --git a/include/dsa.h b/include/dsa.h
index f428aa74a5..25821e114a 100644
--- a/include/dsa.h
+++ b/include/dsa.h
@@ -58,7 +58,7 @@ struct dsa_ops {
 };
 
 struct dsa_port {
-	struct device_d *dev;
+	struct device *dev;
 	struct dsa_switch *ds;
 	unsigned int index;
 	struct eth_device edev;
@@ -68,7 +68,7 @@ struct dsa_port {
 };
 
 struct dsa_switch {
-	struct device_d *dev;
+	struct device *dev;
 	const struct dsa_ops *ops;
 	size_t num_ports;
 	u32 cpu_port;
diff --git a/include/efi/efi-device.h b/include/efi/efi-device.h
index b9714ffb74..937f4a0ff0 100644
--- a/include/efi/efi-device.h
+++ b/include/efi/efi-device.h
@@ -3,7 +3,7 @@
 #define __EFI_EFI_DEVICE_H
 
 struct efi_device {
-	struct device_d dev;
+	struct device dev;
 	efi_guid_t *guids;
 	int num_guids;
 	efi_handle_t handle;
@@ -23,7 +23,7 @@ struct efi_driver {
 
 extern struct bus_type efi_bus;
 
-static inline struct efi_device *to_efi_device(struct device_d *dev)
+static inline struct efi_device *to_efi_device(struct device *dev)
 {
 	return container_of(dev, struct efi_device, dev);
 }
diff --git a/include/fb.h b/include/fb.h
index e17d07ae0c..bf5f688342 100644
--- a/include/fb.h
+++ b/include/fb.h
@@ -117,7 +117,7 @@ struct fb_info {
 	struct display_timings edid_modes;
 
 	struct fb_ops *fbops;
-	struct device_d dev;		/* This is this fb device */
+	struct device dev;		/* This is this fb device */
 
 	void *screen_base;
 	void *screen_base_shadow;
diff --git a/include/featctrl.h b/include/featctrl.h
index fb9e4156bd..6f99c96b8a 100644
--- a/include/featctrl.h
+++ b/include/featctrl.h
@@ -8,7 +8,7 @@ struct feature_controller;
 struct device_node;
 
 struct feature_controller {
-	struct device_d *dev;
+	struct device *dev;
 	int (*check)(struct feature_controller *, int idx);
 	struct list_head list;
 };
diff --git a/include/firmware.h b/include/firmware.h
index cfb8899322..05433f2f78 100644
--- a/include/firmware.h
+++ b/include/firmware.h
@@ -16,7 +16,7 @@
 struct firmware_handler {
 	char *id; /* unique identifier for this firmware device */
 	char *model; /* description for this device */
-	struct device_d *dev;
+	struct device *dev;
 	void *priv;
 	struct device_node *device_node;
 	/* called once to prepare the firmware's programming cycle */
diff --git a/include/fpga-bridge.h b/include/fpga-bridge.h
index 300ab17b25..4c56941c08 100644
--- a/include/fpga-bridge.h
+++ b/include/fpga-bridge.h
@@ -29,7 +29,7 @@ struct fpga_bridge_ops {
  * @priv: low level driver private date
  */
 struct fpga_bridge {
-	struct device_d dev;
+	struct device dev;
 	const struct fpga_bridge_ops *br_ops;
 	struct list_head node;
 	unsigned int enable;
@@ -69,7 +69,7 @@ static inline void fpga_bridges_put(struct list_head *bridge_list)
 };
 #endif
 
-int fpga_bridge_register(struct device_d *dev, const char *name,
+int fpga_bridge_register(struct device *dev, const char *name,
 			 const struct fpga_bridge_ops *br_ops, void *priv);
 
 #endif /* _LINUX_FPGA_BRIDGE_H */
diff --git a/include/fpga-mgr.h b/include/fpga-mgr.h
index a120b39189..ca7aad4112 100644
--- a/include/fpga-mgr.h
+++ b/include/fpga-mgr.h
@@ -91,7 +91,7 @@ struct fpga_image_info {
 
 struct fpgamgr {
 	struct firmware_handler fh;
-	struct device_d dev;
+	struct device dev;
 	void *priv;
 	void __iomem *regs;
 	void __iomem *regs_data;
diff --git a/include/fs.h b/include/fs.h
index f96839f9eb..f3f95334f7 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -40,43 +40,44 @@ typedef struct filep {
 #define FS_DRIVER_NO_DEV	1
 
 struct fs_driver_d {
-	int (*probe) (struct device_d *dev);
+	int (*probe) (struct device *dev);
 
 	/* create a file. The file is guaranteed to not exist */
-	int (*create)(struct device_d *dev, const char *pathname, mode_t mode);
-	int (*unlink)(struct device_d *dev, const char *pathname);
+	int (*create)(struct device *dev, const char *pathname, mode_t mode);
+	int (*unlink)(struct device *dev, const char *pathname);
 
 	/* Truncate a file to given size */
-	int (*truncate)(struct device_d *dev, FILE *f, loff_t size);
-
-	int (*open)(struct device_d *dev, FILE *f, const char *pathname);
-	int (*close)(struct device_d *dev, FILE *f);
-	int (*read)(struct device_d *dev, FILE *f, void *buf, size_t size);
-	int (*write)(struct device_d *dev, FILE *f, const void *buf, size_t size);
-	int (*flush)(struct device_d *dev, FILE *f);
-	int (*lseek)(struct device_d *dev, FILE *f, loff_t pos);
-
-	int (*ioctl)(struct device_d *dev, FILE *f, int request, void *buf);
-	int (*erase)(struct device_d *dev, FILE *f, loff_t count,
+	int (*truncate)(struct device *dev, FILE *f, loff_t size);
+
+	int (*open)(struct device *dev, FILE *f, const char *pathname);
+	int (*close)(struct device *dev, FILE *f);
+	int (*read)(struct device *dev, FILE *f, void *buf, size_t size);
+	int (*write)(struct device *dev, FILE *f, const void *buf,
+		     size_t size);
+	int (*flush)(struct device *dev, FILE *f);
+	int (*lseek)(struct device *dev, FILE *f, loff_t pos);
+
+	int (*ioctl)(struct device *dev, FILE *f, int request, void *buf);
+	int (*erase)(struct device *dev, FILE *f, loff_t count,
 			loff_t offset);
-	int (*protect)(struct device_d *dev, FILE *f, size_t count,
+	int (*protect)(struct device *dev, FILE *f, size_t count,
 			loff_t offset, int prot);
-	int (*discard_range)(struct device_d *dev, FILE *f, loff_t count,
-			loff_t offset);
+	int (*discard_range)(struct device *dev, FILE *f, loff_t count,
+			     loff_t offset);
 
-	int (*memmap)(struct device_d *dev, FILE *f, void **map, int flags);
+	int (*memmap)(struct device *dev, FILE *f, void **map, int flags);
 
 	/* legacy */
-	int (*mkdir)(struct device_d *dev, const char *pathname);
-	int (*rmdir)(struct device_d *dev, const char *pathname);
-	int (*symlink)(struct device_d *dev, const char *pathname,
+	int (*mkdir)(struct device *dev, const char *pathname);
+	int (*rmdir)(struct device *dev, const char *pathname);
+	int (*symlink)(struct device *dev, const char *pathname,
 		       const char *newpath);
-	int (*readlink)(struct device_d *dev, const char *pathname, char *name,
+	int (*readlink)(struct device *dev, const char *pathname, char *name,
 			size_t size);
-	struct dir* (*opendir)(struct device_d *dev, const char *pathname);
-	struct dirent* (*readdir)(struct device_d *dev, struct dir *dir);
-	int (*closedir)(struct device_d *dev, DIR *dir);
-	int (*stat)(struct device_d *dev, const char *file, struct stat *stat);
+	struct dir* (*opendir)(struct device *dev, const char *pathname);
+	struct dirent* (*readdir)(struct device *dev, struct dir *dir);
+	int (*closedir)(struct device *dev, DIR *dir);
+	int (*stat)(struct device *dev, const char *file, struct stat *stat);
 
 	struct driver_d drv;
 
@@ -94,7 +95,7 @@ extern struct bus_type fs_bus;
 
 struct fs_device_d {
 	char *backingstore; /* the device we are associated with */
-	struct device_d dev; /* our own device */
+	struct device dev; /* our own device */
 
 	struct fs_driver_d *driver;
 
diff --git a/include/globalvar.h b/include/globalvar.h
index ff1da6c927..36a7c7006c 100644
--- a/include/globalvar.h
+++ b/include/globalvar.h
@@ -7,7 +7,7 @@
 #include <linux/err.h>
 #include <stringlist.h>
 
-extern struct device_d global_device;
+extern struct device global_device;
 
 #ifdef CONFIG_GLOBALVAR
 int globalvar_add_simple(const char *name, const char *value);
@@ -37,7 +37,7 @@ int nvvar_add(const char *name, const char *value);
 int nvvar_remove(const char *name);
 void globalvar_print(void);
 
-void dev_param_init_from_nv(struct device_d *dev, const char *name);
+void dev_param_init_from_nv(struct device *dev, const char *name);
 void globalvar_alias_deprecated(const char *newname, const char *oldname);
 
 #else
@@ -125,7 +125,8 @@ static inline int nvvar_save(void)
 	return 0;
 }
 
-static inline void dev_param_init_from_nv(struct device_d *dev, const char *name)
+static inline void dev_param_init_from_nv(struct device *dev,
+					  const char *name)
 {
 }
 
diff --git a/include/gpio.h b/include/gpio.h
index d396435aa0..10ac7fd7c4 100644
--- a/include/gpio.h
+++ b/include/gpio.h
@@ -34,7 +34,7 @@ static inline int gpio_direction_input(unsigned gpio)
 void gpio_set_active(unsigned gpio, bool state);
 int gpio_is_active(unsigned gpio);
 int gpio_direction_active(unsigned gpio, bool state);
-struct gpio_chip *gpio_get_chip_by_dev(struct device_d *);
+struct gpio_chip *gpio_get_chip_by_dev(struct device *);
 
 /**
  * gpio_poll_timeout_us - Poll till GPIO reaches requested active state
@@ -63,7 +63,7 @@ static inline int gpio_direction_active(unsigned gpio, int value)
 	return -EINVAL;
 }
 
-static inline struct gpio_chip *gpio_get_chip_by_dev(struct device_d *dev)
+static inline struct gpio_chip *gpio_get_chip_by_dev(struct device *dev)
 {
 	return NULL;
 }
@@ -181,7 +181,7 @@ struct gpio_ops {
 };
 
 struct gpio_chip {
-	struct device_d *dev;
+	struct device *dev;
 
 	int base;
 	int ngpio;
@@ -194,7 +194,8 @@ struct gpio_chip {
 int gpiochip_add(struct gpio_chip *chip);
 void gpiochip_remove(struct gpio_chip *chip);
 
-int gpio_of_xlate(struct device_d *dev, struct of_phandle_args *gpiospec, int *flags);
+int gpio_of_xlate(struct device *dev, struct of_phandle_args *gpiospec,
+		  int *flags);
 struct gpio_chip *gpio_get_chip(int gpio);
 
 #endif /* __GPIO_H */
diff --git a/include/gpiod.h b/include/gpiod.h
index adac50b4c3..32180337dc 100644
--- a/include/gpiod.h
+++ b/include/gpiod.h
@@ -21,7 +21,7 @@ enum gpiod_flags {
 };
 
 /* returned gpio descriptor can be passed to any normal gpio_* function */
-int gpiod_get(struct device_d *dev, const char *_con_id, enum gpiod_flags flags);
+int gpiod_get(struct device *dev, const char *_con_id, enum gpiod_flags flags);
 
 static inline void gpiod_set_value(unsigned gpio, bool value)
 {
diff --git a/include/hwspinlock.h b/include/hwspinlock.h
index ba21c6d296..250553b2c7 100644
--- a/include/hwspinlock.h
+++ b/include/hwspinlock.h
@@ -8,7 +8,7 @@
 
 struct hwspinlock { /* TODO to be implemented */ };
 
-static inline int hwspinlock_get_by_index(struct device_d *dev,
+static inline int hwspinlock_get_by_index(struct device *dev,
 					  int index,
 					  struct hwspinlock *hws)
 {
diff --git a/include/i2c/i2c-mux.h b/include/i2c/i2c-mux.h
index 80223996da..d45093db46 100644
--- a/include/i2c/i2c-mux.h
+++ b/include/i2c/i2c-mux.h
@@ -28,7 +28,7 @@
  * mux control.
  */
 struct i2c_adapter *i2c_add_mux_adapter(struct i2c_adapter *parent,
-				struct device_d *mux_dev,
+				struct device *mux_dev,
 				void *mux_priv, u32 force_nr, u32 chan_id,
 				int (*select) (struct i2c_adapter *,
 					       void *mux_dev, u32 chan_id),
diff --git a/include/i2c/i2c.h b/include/i2c/i2c.h
index e37a1770dc..757e800daf 100644
--- a/include/i2c/i2c.h
+++ b/include/i2c/i2c.h
@@ -120,7 +120,7 @@ int i2c_generic_scl_recovery(struct i2c_adapter *adap);
  *
  */
 struct i2c_adapter {
-	struct device_d		dev;	/* ptr to device */
+	struct device		dev;	/* ptr to device */
 	int			nr;	/* bus number */
 	int (*master_xfer)(struct i2c_adapter *adap, struct i2c_msg *msgs, int num);
 	struct list_head	list;
@@ -133,7 +133,7 @@ struct i2c_adapter {
 #define to_i2c_adapter(d) container_of(d, struct i2c_adapter, dev)
 
 struct i2c_client {
-	struct device_d		dev;
+	struct device		dev;
 	struct i2c_adapter	*adapter;
 	unsigned short		addr;
 	void			*driver_data;	/* Driver data, set and get with
@@ -299,7 +299,8 @@ int of_i2c_register_devices_by_node(struct device_node *node);
 struct i2c_client *of_find_i2c_device_by_node(struct device_node *node);
 int of_i2c_device_enable_and_register_by_alias(const char *alias);
 
-void i2c_parse_fw_timings(struct device_d *dev, struct i2c_timings *t, bool use_defaults);
+void i2c_parse_fw_timings(struct device *dev, struct i2c_timings *t,
+			  bool use_defaults);
 
 extern struct list_head i2c_adapter_list;
 #define for_each_i2c_adapter(adap) \
diff --git a/include/input/matrix_keypad.h b/include/input/matrix_keypad.h
index 7b78944f9b..7f52768bdb 100644
--- a/include/input/matrix_keypad.h
+++ b/include/input/matrix_keypad.h
@@ -30,7 +30,7 @@ struct matrix_keymap_data {
 	unsigned int	keymap_size;
 };
 
-int matrix_keypad_build_keymap(struct device_d *dev,
+int matrix_keypad_build_keymap(struct device *dev,
 			       const struct matrix_keymap_data *keymap_data,
 			       unsigned int row_shift, unsigned short *keymap);
 
diff --git a/include/linux/amba/bus.h b/include/linux/amba/bus.h
index 390220a3de..a324c41d90 100644
--- a/include/linux/amba/bus.h
+++ b/include/linux/amba/bus.h
@@ -37,7 +37,7 @@ struct amba_id {
 struct clk;
 
 struct amba_device {
-	struct device_d		dev;
+	struct device		dev;
 	struct resource		res;
 	void __iomem		*base;
 	struct clk		*pclk;
@@ -75,12 +75,12 @@ int amba_device_add(struct amba_device *);
 int amba_device_register(struct amba_device *, struct resource *);
 
 struct amba_device *
-amba_aphb_device_add(struct device_d *parent, const char *name, int id,
+amba_aphb_device_add(struct device *parent, const char *name, int id,
 		     resource_size_t base, size_t size,
 		     void *pdata, unsigned int periphid);
 
 static inline struct amba_device *
-amba_apb_device_add(struct device_d *parent, const char *name, int id,
+amba_apb_device_add(struct device *parent, const char *name, int id,
 		    resource_size_t base, size_t size,
 		    void *pdata, unsigned int periphid)
 {
@@ -89,7 +89,7 @@ amba_apb_device_add(struct device_d *parent, const char *name, int id,
 }
 
 static inline struct amba_device *
-amba_ahb_device_add(struct device_d *parent, const char *name, int id,
+amba_ahb_device_add(struct device *parent, const char *name, int id,
 		    resource_size_t base, size_t size,
 		    void *pdata, unsigned int periphid)
 {
diff --git a/include/linux/basic_mmio_gpio.h b/include/linux/basic_mmio_gpio.h
index 34e2f470fb..8917f99ccb 100644
--- a/include/linux/basic_mmio_gpio.h
+++ b/include/linux/basic_mmio_gpio.h
@@ -60,7 +60,7 @@ static inline struct bgpio_chip *to_bgpio_chip(struct gpio_chip *gc)
 	return container_of(gc, struct bgpio_chip, gc);
 }
 
-int bgpio_init(struct bgpio_chip *bgc, struct device_d *dev,
+int bgpio_init(struct bgpio_chip *bgc, struct device *dev,
 	       unsigned int sz, void __iomem *dat, void __iomem *set,
 	       void __iomem *clr, void __iomem *dirout, void __iomem *dirin,
 	       unsigned long flags);
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 42c64d650d..4cece8ba5e 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -15,7 +15,7 @@
 #include <linux/stringify.h>
 #include <xfuncs.h>
 
-struct device_d;
+struct device;
 
 /*
  * The base API.
@@ -60,7 +60,7 @@ struct clk_bulk_data {
  *
  * clk_get should not be called from within interrupt context.
  */
-struct clk *clk_get(struct device_d *dev, const char *id);
+struct clk *clk_get(struct device *dev, const char *id);
 
 /**
  * clk_enable - inform the system when the clock source should be running.
@@ -169,11 +169,11 @@ struct clk *clk_get_sys(const char *dev_id, const char *con_id);
  * Assumes clkdev, see clkdev.h for more info.
  */
 int clk_add_alias(const char *alias, const char *alias_dev_name, char *id,
-			struct device_d *dev);
+			struct device *dev);
 
 #else
 
-static inline struct clk *clk_get(struct device_d *dev, const char *id)
+static inline struct clk *clk_get(struct device *dev, const char *id)
 {
 	return NULL;
 }
@@ -306,9 +306,11 @@ struct clk *clk_register_fixed_rate(const char *name,
 				    const char *parent_name, unsigned long flags,
 				    unsigned long fixed_rate);
 
-struct clk_hw *clk_hw_register_fixed_rate(struct device_d *dev, const char *name,
-				    const char *parent_name, unsigned long flags,
-				    unsigned long rate);
+struct clk_hw *clk_hw_register_fixed_rate(struct device *dev,
+					  const char *name,
+					  const char *parent_name,
+					  unsigned long flags,
+					  unsigned long rate);
 
 static inline struct clk *clk_fixed(const char *name, int rate)
 {
@@ -363,10 +365,10 @@ void clk_divider_free(struct clk *clk_divider);
 struct clk *clk_divider(const char *name, const char *parent,
 			unsigned clk_flags, void __iomem *reg, u8 shift,
 			u8 width, unsigned div_flags);
-struct clk *clk_register_divider(struct device_d *dev, const char *name,
-		const char *parent_name, unsigned long flags,
-		void __iomem *reg, u8 shift, u8 width,
-		u8 clk_divider_flags, spinlock_t *lock);
+struct clk *clk_register_divider(struct device *dev, const char *name,
+				 const char *parent_name, unsigned long flags,
+				 void __iomem *reg, u8 shift, u8 width,
+				 u8 clk_divider_flags, spinlock_t *lock);
 struct clk *clk_divider_one_based(const char *name, const char *parent,
 				  unsigned clk_flags, void __iomem *reg,
 				  u8 shift, u8 width, unsigned div_flags);
@@ -374,22 +376,29 @@ struct clk *clk_divider_table(const char *name, const char *parent,
 			      unsigned clk_flags, void __iomem *reg, u8 shift,
 			      u8 width, const struct clk_div_table *table,
 			      unsigned div_flags);
-struct clk *clk_register_divider_table(struct device_d *dev, const char *name,
-		const char *parent_name, unsigned long flags,
-		void __iomem *reg, u8 shift, u8 width,
-		u8 clk_divider_flags, const struct clk_div_table *table,
-		spinlock_t *lock);
-
-struct clk_hw *clk_hw_register_divider_table(struct device_d *dev, const char *name,
-		const char *parent_name, unsigned long flags,
-		void __iomem *reg, u8 shift, u8 width,
-		u8 clk_divider_flags, const struct clk_div_table *table,
-		spinlock_t *lock);
-
-struct clk_hw *clk_hw_register_divider(struct device_d *dev, const char *name,
-		const char *parent_name, unsigned long flags,
-		void __iomem *reg, u8 shift, u8 width,
-		u8 clk_divider_flags, spinlock_t *lock);
+struct clk *clk_register_divider_table(struct device *dev, const char *name,
+				       const char *parent_name,
+				       unsigned long flags,
+				       void __iomem *reg, u8 shift, u8 width,
+				       u8 clk_divider_flags,
+				       const struct clk_div_table *table,
+				       spinlock_t *lock);
+
+struct clk_hw *clk_hw_register_divider_table(struct device *dev,
+					     const char *name,
+					     const char *parent_name,
+					     unsigned long flags,
+					     void __iomem *reg, u8 shift,
+					     u8 width,
+					     u8 clk_divider_flags,
+					     const struct clk_div_table *table,
+					     spinlock_t *lock);
+
+struct clk_hw *clk_hw_register_divider(struct device *dev, const char *name,
+				       const char *parent_name,
+				       unsigned long flags,
+				       void __iomem *reg, u8 shift, u8 width,
+				       u8 clk_divider_flags, spinlock_t *lock);
 
 struct clk_fixed_factor {
 	struct clk_hw hw;
@@ -408,13 +417,17 @@ extern struct clk_ops clk_fixed_factor_ops;
 struct clk *clk_fixed_factor(const char *name,
 		const char *parent, unsigned int mult, unsigned int div,
 		unsigned flags);
-struct clk *clk_register_fixed_factor(struct device_d *dev, const char *name,
-		const char *parent_name, unsigned long flags,
-		unsigned int mult, unsigned int div);
-
-struct clk_hw *clk_hw_register_fixed_factor(struct device_d *dev,
-		const char *name, const char *parent_name, unsigned long flags,
-		unsigned int mult, unsigned int div);
+struct clk *clk_register_fixed_factor(struct device *dev, const char *name,
+				      const char *parent_name,
+				      unsigned long flags,
+				      unsigned int mult, unsigned int div);
+
+struct clk_hw *clk_hw_register_fixed_factor(struct device *dev,
+					    const char *name,
+					    const char *parent_name,
+					    unsigned long flags,
+					    unsigned int mult,
+					    unsigned int div);
 
 /**
  * struct clk_fractional_divider - adjustable fractional divider clock
@@ -493,17 +506,19 @@ void clk_mux_free(struct clk *clk_mux);
 struct clk *clk_mux(const char *name, unsigned clk_flags, void __iomem *reg,
 		    u8 shift, u8 width, const char * const *parents,
 		    u8 num_parents, unsigned mux_flags);
-struct clk *clk_register_mux(struct device_d *dev, const char *name,
-		const char * const *parent_names, u8 num_parents,
-		unsigned long flags,
-		void __iomem *reg, u8 shift, u8 width,
-		u8 clk_mux_flags, spinlock_t *lock);
-
-struct clk_hw *__clk_hw_register_mux(struct device_d *dev,
-		const char *name, u8 num_parents,
-		const char * const *parent_names,
-		unsigned long flags, void __iomem *reg, u8 shift, u32 mask,
-		u8 clk_mux_flags, u32 *table, spinlock_t *lock);
+struct clk *clk_register_mux(struct device *dev, const char *name,
+			     const char * const *parent_names, u8 num_parents,
+			     unsigned long flags,
+			     void __iomem *reg, u8 shift, u8 width,
+			     u8 clk_mux_flags, spinlock_t *lock);
+
+struct clk_hw *__clk_hw_register_mux(struct device *dev,
+				     const char *name, u8 num_parents,
+				     const char * const *parent_names,
+				     unsigned long flags, void __iomem *reg,
+				     u8 shift, u32 mask,
+				     u8 clk_mux_flags, u32 *table,
+				     spinlock_t *lock);
 
 #define clk_hw_register_mux(dev, name, parent_names,                  \
 		num_parents, flags, reg, shift, mask,                 \
@@ -553,15 +568,19 @@ struct clk *clk_gate_inverted(const char *name, const char *parent, void __iomem
 		u8 shift, unsigned flags);
 struct clk *clk_gate_shared(const char *name, const char *parent, const char *shared,
 			    unsigned flags);
-struct clk *clk_register_gate(struct device_d *dev, const char *name,
-		const char *parent_name, unsigned long flags,
-		void __iomem *reg, u8 bit_idx,
-		u8 clk_gate_flags, spinlock_t *lock);
-
-static inline struct clk_hw *clk_hw_register_gate(struct device_d *dev,
-		const char *name, const char *parent_name,
-		unsigned long flags, void __iomem *reg, u8 bit_idx,
-		u8 clk_gate_flags, spinlock_t *lock)
+struct clk *clk_register_gate(struct device *dev, const char *name,
+			      const char *parent_name, unsigned long flags,
+			      void __iomem *reg, u8 bit_idx,
+			      u8 clk_gate_flags, spinlock_t *lock);
+
+static inline struct clk_hw *clk_hw_register_gate(struct device *dev,
+						  const char *name,
+						  const char *parent_name,
+						  unsigned long flags,
+						  void __iomem *reg,
+						  u8 bit_idx,
+						  u8 clk_gate_flags,
+						  spinlock_t *lock)
 {
 	return clk_to_clk_hw(clk_register_gate(dev, xstrdup(name), xstrdup(parent_name),
 					       flags, reg, bit_idx,
@@ -578,9 +597,9 @@ int clk_parent_set_rate(struct clk_hw *hw, unsigned long rate,
 				unsigned long parent_rate);
 
 int bclk_register(struct clk *clk);
-struct clk *clk_register(struct device_d *dev, struct clk_hw *hw);
+struct clk *clk_register(struct device *dev, struct clk_hw *hw);
 
-static inline int clk_hw_register(struct device_d *dev, struct clk_hw *hw)
+static inline int clk_hw_register(struct device *dev, struct clk_hw *hw)
 {
 	return PTR_ERR_OR_ZERO(clk_register(dev, hw));
 }
@@ -597,13 +616,17 @@ struct clk *clk_register_composite(const char *name,
 			struct clk *gate_clk,
 			unsigned long flags);
 
-struct clk_hw *clk_hw_register_composite(struct device_d *dev,
-		const char *name, const char * const *parent_names,
-		int num_parents,
-		struct clk_hw *mux_hw, const struct clk_ops *mux_ops,
-		struct clk_hw *rate_hw, const struct clk_ops *rate_ops,
-		struct clk_hw *gate_hw, const struct clk_ops *gate_ops,
-		unsigned long flags);
+struct clk_hw *clk_hw_register_composite(struct device *dev,
+					 const char *name,
+					 const char * const *parent_names,
+					 int num_parents,
+					 struct clk_hw *mux_hw,
+					 const struct clk_ops *mux_ops,
+					 struct clk_hw *rate_hw,
+					 const struct clk_ops *rate_ops,
+					 struct clk_hw *gate_hw,
+					 const struct clk_ops *gate_ops,
+					 unsigned long flags);
 
 static inline const char *clk_hw_get_name(struct clk_hw *hw)
 {
@@ -773,7 +796,7 @@ static inline void clk_unregister(struct clk *clk)
  *
  * clk_bulk_get should not be called from within interrupt context.
  */
-int __must_check clk_bulk_get(struct device_d *dev, int num_clks,
+int __must_check clk_bulk_get(struct device *dev, int num_clks,
 			      struct clk_bulk_data *clks);
 
 /**
@@ -786,7 +809,7 @@ int __must_check clk_bulk_get(struct device_d *dev, int num_clks,
  * In this case, instead of returning -ENOENT, the function returns 0 and
  * NULL for a clk for which a clock producer could not be determined.
  */
-int __must_check clk_bulk_get_optional(struct device_d *dev, int num_clks,
+int __must_check clk_bulk_get_optional(struct device *dev, int num_clks,
 				       struct clk_bulk_data *clks);
 
 /**
@@ -807,7 +830,7 @@ int __must_check clk_bulk_get_optional(struct device_d *dev, int num_clks,
  *
  * clk_bulk_get should not be called from within interrupt context.
  */
-int __must_check clk_bulk_get_all(struct device_d *dev,
+int __must_check clk_bulk_get_all(struct device *dev,
 				  struct clk_bulk_data **clks);
 
 /**
@@ -867,20 +890,20 @@ int __must_check clk_bulk_enable(int num_clks,
 void clk_bulk_disable(int num_clks, const struct clk_bulk_data *clks);
 
 #else
-static inline int __must_check clk_bulk_get(struct device_d *dev, int num_clks,
+static inline int __must_check clk_bulk_get(struct device *dev, int num_clks,
 					    struct clk_bulk_data *clks)
 {
 	return 0;
 }
 
-static inline int __must_check clk_bulk_get_optional(struct device_d *dev,
+static inline int __must_check clk_bulk_get_optional(struct device *dev,
 						     int num_clks,
 						     struct clk_bulk_data *clks)
 {
 	return 0;
 }
 
-static inline int __must_check clk_bulk_get_all(struct device_d *dev,
+static inline int __must_check clk_bulk_get_all(struct device *dev,
 						struct clk_bulk_data **clks)
 {
 	return 0;
diff --git a/include/linux/clkdev.h b/include/linux/clkdev.h
index eeadcfefa7..65edbd760b 100644
--- a/include/linux/clkdev.h
+++ b/include/linux/clkdev.h
@@ -13,7 +13,7 @@
 #define __CLKDEV_H
 
 struct clk;
-struct device_d;
+struct device;
 
 struct clk_lookup {
 	struct list_head	node;
@@ -30,7 +30,7 @@ void clkdev_add(struct clk_lookup *cl);
 void clkdev_drop(struct clk_lookup *cl);
 
 void clkdev_add_table(struct clk_lookup *, size_t);
-int clk_add_alias(const char *, const char *, char *, struct device_d *);
+int clk_add_alias(const char *, const char *, char *, struct device *);
 int clk_register_clkdev(struct clk *, const char *, const char *, ...);
 
 int clkdev_add_physbase(struct clk *clk, unsigned long base, const char *id);
diff --git a/include/linux/font.h b/include/linux/font.h
index feeab97191..5c4bcd151d 100644
--- a/include/linux/font.h
+++ b/include/linux/font.h
@@ -32,10 +32,10 @@ struct font_desc {
 
 extern int find_font_index(const struct font_desc *font, int ch);
 extern const struct font_desc *find_font_enum(int n);
-extern struct param_d *add_param_font(struct device_d *dev,
-		int (*set)(struct param_d *p, void *priv),
-		int (*get)(struct param_d *p, void *priv),
-		int *value, void *priv);
+extern struct param_d *add_param_font(struct device *dev,
+				      int (*set)(struct param_d *p, void *priv),
+				      int (*get)(struct param_d *p, void *priv),
+				      int *value, void *priv);
 
 int font_register(struct font_desc *font);
 
diff --git a/include/linux/hw_random.h b/include/linux/hw_random.h
index e541abfa17..fad41b6880 100644
--- a/include/linux/hw_random.h
+++ b/include/linux/hw_random.h
@@ -30,12 +30,12 @@ struct hwrng {
 	struct list_head list;
 
 	struct cdev cdev;
-	struct device_d *dev;
+	struct device *dev;
 	void *buf;
 };
 
 /* Register a new Hardware Random Number Generator driver. */
-int hwrng_register(struct device_d *dev, struct hwrng *rng);
+int hwrng_register(struct device *dev, struct hwrng *rng);
 
 #ifdef CONFIG_HWRNG
 struct hwrng *hwrng_get_first(void);
diff --git a/include/linux/mdio-mux.h b/include/linux/mdio-mux.h
index 1730939bfc..c35220a62d 100644
--- a/include/linux/mdio-mux.h
+++ b/include/linux/mdio-mux.h
@@ -19,7 +19,7 @@
  * @data	Private data used by switch_fn()
  * @mux_bus	An optional parent bus (Other case are to use parent_bus property)
  */
-int mdio_mux_init(struct device_d *dev,
+int mdio_mux_init(struct device *dev,
 		  struct device_node *mux_node,
 		  int (*switch_fn) (int cur, int desired, void *data),
 		  void *data,
diff --git a/include/linux/mfd/axp20x.h b/include/linux/mfd/axp20x.h
index 150ff063b8..b406c019e4 100644
--- a/include/linux/mfd/axp20x.h
+++ b/include/linux/mfd/axp20x.h
@@ -449,7 +449,7 @@ enum {
 };
 
 struct axp20x_dev {
-	struct device_d			*dev;
+	struct device			*dev;
 	struct regmap			*regmap;
 	long				variant;
 	int                             nr_cells;
diff --git a/include/linux/mfd/core.h b/include/linux/mfd/core.h
index 2b3b51c69e..5175bbe370 100644
--- a/include/linux/mfd/core.h
+++ b/include/linux/mfd/core.h
@@ -7,7 +7,7 @@
 #ifndef MFD_CORE_H
 #define MFD_CORE_H
 
-struct device_d;
+struct device;
 
 /*
  * This struct describes the MFD part ("cell").
@@ -18,6 +18,7 @@ struct mfd_cell {
 	const char		*name;
 };
 
-int mfd_add_devices(struct device_d *parent, const struct mfd_cell *cells, int n_devs);
+int mfd_add_devices(struct device *parent, const struct mfd_cell *cells,
+		    int n_devs);
 
 #endif
diff --git a/include/linux/mtd/mtd.h b/include/linux/mtd/mtd.h
index 3fe3bdb678..6b539a9ece 100644
--- a/include/linux/mtd/mtd.h
+++ b/include/linux/mtd/mtd.h
@@ -225,7 +225,7 @@ struct mtd_info {
 	int (*_get_device) (struct mtd_info *mtd);
 	void (*_put_device) (struct mtd_info *mtd);
 
-	struct device_d dev;
+	struct device dev;
 	struct cdev cdev;
 
 	struct cdev *cdev_bb;
diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
index 1c6f442866..fc7cefb55e 100644
--- a/include/linux/mtd/spi-nor.h
+++ b/include/linux/mtd/spi-nor.h
@@ -222,7 +222,7 @@ enum spi_nor_option_flags {
 struct spi_nor {
 	struct mtd_info		*mtd;
 	struct mutex		lock;
-	struct device_d		*dev;
+	struct device		*dev;
 	const struct flash_info	*info;
 	u32			page_size;
 	u8			addr_width;
diff --git a/include/linux/nvmem-consumer.h b/include/linux/nvmem-consumer.h
index 1fce7e1ae0..397c4c29da 100644
--- a/include/linux/nvmem-consumer.h
+++ b/include/linux/nvmem-consumer.h
@@ -12,7 +12,7 @@
 #ifndef _LINUX_NVMEM_CONSUMER_H
 #define _LINUX_NVMEM_CONSUMER_H
 
-struct device_d;
+struct device;
 struct device_node;
 /* consumer cookie */
 struct nvmem_cell;
@@ -29,18 +29,18 @@ struct nvmem_cell_info {
 #if IS_ENABLED(CONFIG_NVMEM)
 
 /* Cell based interface */
-struct nvmem_cell *nvmem_cell_get(struct device_d *dev, const char *name);
+struct nvmem_cell *nvmem_cell_get(struct device *dev, const char *name);
 void nvmem_cell_put(struct nvmem_cell *cell);
 void *nvmem_cell_read(struct nvmem_cell *cell, size_t *len);
 void *nvmem_cell_get_and_read(struct device_node *np, const char *cell_name,
 			      size_t bytes);
-int nvmem_cell_read_variable_le_u32(struct device_d *dev, const char *cell_id,
+int nvmem_cell_read_variable_le_u32(struct device *dev, const char *cell_id,
 				    u32 *val);
 
 int nvmem_cell_write(struct nvmem_cell *cell, void *buf, size_t len);
 
 /* direct nvmem device read/write interface */
-struct nvmem_device *nvmem_device_get(struct device_d *dev, const char *name);
+struct nvmem_device *nvmem_device_get(struct device *dev, const char *name);
 void nvmem_device_put(struct nvmem_device *nvmem);
 int nvmem_device_read(struct nvmem_device *nvmem, unsigned int offset,
 		      size_t bytes, void *buf);
@@ -55,7 +55,7 @@ void nvmem_devices_print(void);
 
 #else
 
-static inline struct nvmem_cell *nvmem_cell_get(struct device_d *dev,
+static inline struct nvmem_cell *nvmem_cell_get(struct device *dev,
 						const char *name)
 {
 	return ERR_PTR(-EOPNOTSUPP);
@@ -77,7 +77,7 @@ static inline void *nvmem_cell_get_and_read(struct device_node *np,
 	return ERR_PTR(-EOPNOTSUPP);
 }
 
-static inline int nvmem_cell_read_variable_le_u32(struct device_d *dev,
+static inline int nvmem_cell_read_variable_le_u32(struct device *dev,
 						  const char *cell_id,
 						  u32 *val)
 {
@@ -90,7 +90,7 @@ static inline int nvmem_cell_write(struct nvmem_cell *cell,
 	return -EOPNOTSUPP;
 }
 
-static inline struct nvmem_device *nvmem_device_get(struct device_d *dev,
+static inline struct nvmem_device *nvmem_device_get(struct device *dev,
 						    const char *name)
 {
 	return ERR_PTR(-EOPNOTSUPP);
diff --git a/include/linux/nvmem-provider.h b/include/linux/nvmem-provider.h
index a293f60c1e..1d4e1b75b2 100644
--- a/include/linux/nvmem-provider.h
+++ b/include/linux/nvmem-provider.h
@@ -23,7 +23,7 @@ struct nvmem_bus {
 };
 
 struct nvmem_config {
-	struct device_d		*dev;
+	struct device		*dev;
 	const char		*name;
 	bool			read_only;
 	struct cdev		*cdev;
diff --git a/include/linux/pci.h b/include/linux/pci.h
index 269e7b354c..a97124a5a9 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -102,7 +102,7 @@ struct pci_dev {
 	struct pci_slot	*slot;		/* Physical slot this device is in */
 	const struct pci_device_id *id;	/* the id this device matches */
 
-	struct device_d dev;
+	struct device dev;
 
 	unsigned int	devfn;		/* encoded device & function index */
 	unsigned short	vendor;
@@ -141,7 +141,7 @@ enum {
 };
 struct pci_bus {
 	struct pci_controller *host;	/* associated host controller */
-	struct device_d *parent;
+	struct device *parent;
 	struct pci_bus *parent_bus;	/* parent bus */
 	struct list_head node;		/* node in list of buses */
 	struct list_head children;	/* list of child buses */
@@ -173,7 +173,7 @@ extern struct pci_ops *pci_ops;
  */
 struct pci_controller {
 	struct pci_controller *next;
-	struct device_d *parent;
+	struct device *parent;
 	struct pci_bus *bus;
 
 	const struct pci_ops *pci_ops;
diff --git a/include/linux/phy.h b/include/linux/phy.h
index ba1740ff55..39f2faa38d 100644
--- a/include/linux/phy.h
+++ b/include/linux/phy.h
@@ -100,9 +100,9 @@ struct mii_bus {
 	int (*write)(struct mii_bus *bus, int phy_id, int regnum, u16 val);
 	int (*reset)(struct mii_bus *bus);
 
-	struct device_d *parent;
+	struct device *parent;
 
-	struct device_d dev;
+	struct device dev;
 
 	/* list of all PHYs on bus */
 	struct phy_device *phy_map[PHY_MAX_ADDR];
@@ -129,7 +129,7 @@ struct phy_device *mdiobus_scan(struct mii_bus *bus, int addr);
 
 extern struct list_head mii_bus_list;
 
-int mdiobus_detect(struct device_d *dev);
+int mdiobus_detect(struct device *dev);
 
 #define for_each_mii_bus(mii) \
 	list_for_each_entry(mii, &mii_bus_list, list)
@@ -156,7 +156,7 @@ int mdiobus_write(struct mii_bus *bus, int addr, u32 regnum, u16 val);
 struct phy_device {
 	struct mii_bus *bus;
 
-	struct device_d dev;
+	struct device dev;
 
 	u32 phy_id;
 
diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
index 321e546f90..5dcc5b108a 100644
--- a/include/linux/phy/phy.h
+++ b/include/linux/phy/phy.h
@@ -55,7 +55,7 @@ struct phy_attrs {
  * @phy_attrs: used to specify PHY specific attributes
  */
 struct phy {
-	struct device_d		dev;
+	struct device		dev;
 	int			id;
 	const struct phy_ops	*ops;
 	int			init_count;
@@ -72,10 +72,10 @@ struct phy {
  * @list: to maintain a linked list of PHY providers
  */
 struct phy_provider {
-	struct device_d		*dev;
+	struct device		*dev;
 	struct list_head	list;
-	struct phy * (*of_xlate)(struct device_d *dev,
-		struct of_phandle_args *args);
+	struct phy * (*of_xlate)(struct device *dev,
+				 struct of_phandle_args *args);
 };
 
 /**
@@ -133,21 +133,21 @@ static inline void phy_set_bus_width(struct phy *phy, int bus_width)
 {
 	phy->attrs.bus_width = bus_width;
 }
-struct phy *phy_get(struct device_d *dev, const char *string);
-struct phy *phy_optional_get(struct device_d *dev, const char *string);
-struct phy *of_phy_get_by_phandle(struct device_d *dev, const char *phandle,
+struct phy *phy_get(struct device *dev, const char *string);
+struct phy *phy_optional_get(struct device *dev, const char *string);
+struct phy *of_phy_get_by_phandle(struct device *dev, const char *phandle,
 				  u8 index);
 void phy_put(struct phy *phy);
 struct phy *of_phy_get(struct device_node *np, const char *con_id);
-struct phy *phy_create(struct device_d *dev, struct device_node *node,
+struct phy *phy_create(struct device *dev, struct device_node *node,
 		       const struct phy_ops *ops);
 void phy_destroy(struct phy *phy);
-struct phy_provider *__of_phy_provider_register(struct device_d *dev,
-	struct phy * (*of_xlate)(struct device_d *dev,
-	struct of_phandle_args *args));
+struct phy_provider *__of_phy_provider_register(struct device *dev,
+						struct phy * (*of_xlate)(struct device *dev,
+									 struct of_phandle_args *args));
 void of_phy_provider_unregister(struct phy_provider *phy_provider);
 struct usb_phy *phy_to_usbphy(struct phy *phy);
-struct phy *phy_get_by_index(struct device_d *dev, int index);
+struct phy *phy_get_by_index(struct device *dev, int index);
 #else
 static inline int phy_init(struct phy *phy)
 {
@@ -187,18 +187,18 @@ static inline void phy_set_bus_width(struct phy *phy, int bus_width)
 	return;
 }
 
-static inline struct phy *phy_get(struct device_d *dev, const char *string)
+static inline struct phy *phy_get(struct device *dev, const char *string)
 {
 	return ERR_PTR(-ENOSYS);
 }
 
-static inline struct phy *phy_optional_get(struct device_d *dev,
+static inline struct phy *phy_optional_get(struct device *dev,
 					   const char *string)
 {
 	return NULL;
 }
 
-static inline struct phy *of_phy_get_by_phandle(struct device_d *dev,
+static inline struct phy *of_phy_get_by_phandle(struct device *dev,
 						const char *phandle, u8 index)
 {
 	return ERR_PTR(-ENOSYS);
@@ -213,7 +213,7 @@ static inline struct phy *of_phy_get(struct device_node *np, const char *con_id)
 	return ERR_PTR(-ENOSYS);
 }
 
-static inline struct phy *phy_create(struct device_d *dev,
+static inline struct phy *phy_create(struct device *dev,
 				     struct device_node *node,
 				     const struct phy_ops *ops)
 {
@@ -224,9 +224,8 @@ static inline void phy_destroy(struct phy *phy)
 {
 }
 
-static inline struct phy_provider *__of_phy_provider_register(
-	struct device_d *dev, struct phy * (*of_xlate)(
-	struct device_d *dev, struct of_phandle_args *args))
+static inline struct phy_provider *__of_phy_provider_register(struct device *dev,
+							      struct phy * (*of_xlate)(struct device *dev, struct of_phandle_args *args))
 {
 	return ERR_PTR(-ENOSYS);
 }
@@ -240,7 +239,7 @@ static inline struct usb_phy *phy_to_usbphy(struct phy *phy)
 	return NULL;
 }
 
-static inline struct phy *phy_get_by_index(struct device_d *dev, int index)
+static inline struct phy *phy_get_by_index(struct device *dev, int index)
 {
 	return ERR_PTR(-ENODEV);
 }
diff --git a/include/linux/printk.h b/include/linux/printk.h
index e21e859bf0..2fd6551e0c 100644
--- a/include/linux/printk.h
+++ b/include/linux/printk.h
@@ -25,13 +25,14 @@
 #endif
 
 /* debugging and troubleshooting/diagnostic helpers. */
-struct device_d;
+struct device;
 
 #ifndef CONFIG_CONSOLE_NONE
-int dev_printf(int level, const struct device_d *dev, const char *format, ...)
+int dev_printf(int level, const struct device *dev, const char *format, ...)
 	__attribute__ ((format(__printf__, 3, 4)));
 #else
-static inline int dev_printf(int level, const struct device_d *dev, const char *format, ...)
+static inline int dev_printf(int level, const struct device *dev,
+			     const char *format, ...)
 {
 	return 0;
 }
@@ -76,12 +77,13 @@ static inline int pr_print(int level, const char *format, ...)
 	__dev_printf(8, (dev) , format , ## arg)
 
 #if LOGLEVEL >= MSG_ERR
-int dev_err_probe(struct device_d *dev, int err, const char *fmt, ...)
+int dev_err_probe(struct device *dev, int err, const char *fmt, ...)
 	__attribute__ ((format(__printf__, 3, 4)));
 #elif !defined(dev_err_probe)
-static int dev_err_probe(struct device_d *dev, int err, const char *fmt, ...)
+static int dev_err_probe(struct device *dev, int err, const char *fmt, ...)
 	__attribute__ ((format(__printf__, 3, 4)));
-static inline int dev_err_probe(struct device_d *dev, int err, const char *fmt, ...)
+static inline int dev_err_probe(struct device *dev, int err, const char *fmt,
+				...)
 {
 	return err;
 }
diff --git a/include/linux/reboot-mode.h b/include/linux/reboot-mode.h
index 9d9ce19c0e..66e7768fdf 100644
--- a/include/linux/reboot-mode.h
+++ b/include/linux/reboot-mode.h
@@ -4,11 +4,11 @@
 
 #include <linux/types.h>
 
-struct device_d;
+struct device;
 
 #ifdef CONFIG_REBOOT_MODE
 struct reboot_mode_driver {
-	struct device_d *dev;
+	struct device *dev;
 	int (*write)(struct reboot_mode_driver *reboot, const u32 *magic);
 	int priority;
 	bool no_fixup;
diff --git a/include/linux/regulator/of_regulator.h b/include/linux/regulator/of_regulator.h
index de6d053e26..649e11db9f 100644
--- a/include/linux/regulator/of_regulator.h
+++ b/include/linux/regulator/of_regulator.h
@@ -8,7 +8,7 @@
 
 #include <linux/types.h>
 
-struct device_d;
+struct device;
 struct regulator_desc;
 
 struct of_regulator_match {
@@ -19,11 +19,11 @@ struct of_regulator_match {
 };
 
 #if defined(CONFIG_OFDEVICE)
-extern int of_regulator_match(struct device_d *dev, struct device_node *node,
+extern int of_regulator_match(struct device *dev, struct device_node *node,
 			      struct of_regulator_match *matches,
 			      unsigned int num_matches);
 #else
-static inline int of_regulator_match(struct device_d *dev,
+static inline int of_regulator_match(struct device *dev,
 				     struct device_node *node,
 				     struct of_regulator_match *matches,
 				     unsigned int num_matches)
diff --git a/include/linux/remoteproc.h b/include/linux/remoteproc.h
index c6264d1c0a..170fff7987 100644
--- a/include/linux/remoteproc.h
+++ b/include/linux/remoteproc.h
@@ -37,13 +37,13 @@ struct rproc {
 	const char *name;
 	void *priv;
 	struct rproc_ops *ops;
-	struct device_d dev;
+	struct device dev;
 
 	void *fw_buf;
 	size_t fw_buf_ofs;
 };
 
-struct rproc *rproc_alloc(struct device_d *dev, const char *name,
+struct rproc *rproc_alloc(struct device *dev, const char *name,
 			  const struct rproc_ops *ops, int len);
 int rproc_add(struct rproc *rproc);
 
diff --git a/include/linux/reset.h b/include/linux/reset.h
index 2d788547f4..7a08b8f945 100644
--- a/include/linux/reset.h
+++ b/include/linux/reset.h
@@ -3,7 +3,7 @@
 #ifndef _LINUX_RESET_H_
 #define _LINUX_RESET_H_
 
-struct device_d;
+struct device;
 struct reset_control;
 
 #ifdef CONFIG_RESET_CONTROLLER
@@ -13,18 +13,18 @@ int reset_control_reset(struct reset_control *rstc);
 int reset_control_assert(struct reset_control *rstc);
 int reset_control_deassert(struct reset_control *rstc);
 
-struct reset_control *reset_control_get(struct device_d *dev, const char *id);
+struct reset_control *reset_control_get(struct device *dev, const char *id);
 struct reset_control *of_reset_control_get(struct device_node *node,
 					   const char *id);
 void reset_control_put(struct reset_control *rstc);
 
-int __must_check device_reset(struct device_d *dev);
+int __must_check device_reset(struct device *dev);
 
-int __must_check device_reset_us(struct device_d *dev, int us);
+int __must_check device_reset_us(struct device *dev, int us);
 
-int __must_check device_reset_all(struct device_d *dev);
+int __must_check device_reset_all(struct device *dev);
 
-int reset_control_get_count(struct device_d *dev);
+int reset_control_get_count(struct device *dev);
 
 #else
 
@@ -55,7 +55,7 @@ of_reset_control_get(struct device_node *node, const char *id)
 }
 
 static inline struct reset_control *
-reset_control_get(struct device_d *dev, const char *id)
+reset_control_get(struct device *dev, const char *id)
 {
 	return NULL;
 }
@@ -64,29 +64,30 @@ static inline void reset_control_put(struct reset_control *rstc)
 {
 }
 
-static inline int device_reset_us(struct device_d *dev, int us)
+static inline int device_reset_us(struct device *dev, int us)
 {
 	return 0;
 }
 
-static inline int device_reset(struct device_d *dev)
+static inline int device_reset(struct device *dev)
 {
 	return 0;
 }
 
-static inline int device_reset_all(struct device_d *dev)
+static inline int device_reset_all(struct device *dev)
 {
 	return 0;
 }
 
-static inline int reset_control_get_count(struct device_d *dev)
+static inline int reset_control_get_count(struct device *dev)
 {
 	return 0;
 }
 
 #endif /* CONFIG_RESET_CONTROLLER */
 
-static inline struct reset_control *reset_control_get_optional(struct device_d *dev, const char *id)
+static inline struct reset_control *reset_control_get_optional(struct device *dev,
+							       const char *id)
 {
 	struct reset_control *rstc = reset_control_get(dev, id);
 	return rstc == ERR_PTR(-ENOENT) ? NULL : rstc;
diff --git a/include/linux/rtc.h b/include/linux/rtc.h
index 632bc9b7bc..def07548c5 100644
--- a/include/linux/rtc.h
+++ b/include/linux/rtc.h
@@ -24,8 +24,8 @@ extern void rtc_time_to_tm(unsigned long time, struct rtc_time *tm);
 struct rtc_class_ops;
 
 struct rtc_device {
-	struct device_d *dev;
-	struct device_d class_dev;
+	struct device *dev;
+	struct device class_dev;
 	struct list_head list;
 
 	const struct rtc_class_ops *ops;
diff --git a/include/linux/scmi_protocol.h b/include/linux/scmi_protocol.h
index 5b6de7bb87..82c2930ce8 100644
--- a/include/linux/scmi_protocol.h
+++ b/include/linux/scmi_protocol.h
@@ -110,11 +110,11 @@ struct scmi_perf_proto_ops {
 			 u32 level, bool poll);
 	int (*level_get)(const struct scmi_protocol_handle *ph, u32 domain,
 			 u32 *level, bool poll);
-	int (*device_domain_id)(struct device_d *dev);
+	int (*device_domain_id)(struct device *dev);
 	int (*transition_latency_get)(const struct scmi_protocol_handle *ph,
-				      struct device_d *dev);
+				      struct device *dev);
 	int (*device_opps_add)(const struct scmi_protocol_handle *ph,
-			       struct device_d *dev);
+			       struct device *dev);
 	int (*freq_set)(const struct scmi_protocol_handle *ph, u32 domain,
 			unsigned long rate, bool poll);
 	int (*freq_get)(const struct scmi_protocol_handle *ph, u32 domain,
@@ -122,7 +122,7 @@ struct scmi_perf_proto_ops {
 	int (*est_power_get)(const struct scmi_protocol_handle *ph, u32 domain,
 			     unsigned long *rate, unsigned long *power);
 	bool (*fast_switch_possible)(const struct scmi_protocol_handle *ph,
-				     struct device_d *dev);
+				     struct device *dev);
 	bool (*power_scale_mw_get)(const struct scmi_protocol_handle *ph);
 };
 
@@ -549,7 +549,7 @@ struct scmi_voltage_proto_ops {
  *		       operations and a dedicated protocol handler
  */
 struct scmi_handle {
-	struct device_d *dev;
+	struct device *dev;
 	struct scmi_revision_info *version;
 
 	const void __must_check *
@@ -580,14 +580,14 @@ enum scmi_system_events {
 struct scmi_device {
 	u8 protocol_id;
 	const char *name;
-	struct device_d dev;
+	struct device dev;
 	struct scmi_handle *handle;
 };
 
 #define to_scmi_dev(d) container_of(d, struct scmi_device, dev)
 
 struct scmi_device *
-scmi_device_alloc(struct device_node *np, struct device_d *parent, int protocol,
+scmi_device_alloc(struct device_node *np, struct device *parent, int protocol,
 		  const char *name);
 void scmi_device_destroy(struct scmi_device *scmi_dev);
 
diff --git a/include/linux/virtio.h b/include/linux/virtio.h
index 719f45c975..6f7c670bfe 100644
--- a/include/linux/virtio.h
+++ b/include/linux/virtio.h
@@ -52,7 +52,7 @@ struct virtio_device {
 	bool failed;
 	bool config_enabled;
 	bool config_change_pending;
-	struct device_d dev;
+	struct device dev;
 	struct virtio_device_id id;
 	const struct virtio_config_ops *config;
 	struct list_head vqs;
@@ -61,7 +61,7 @@ struct virtio_device {
 	u32 status_param;
 };
 
-static inline struct virtio_device *dev_to_virtio(struct device_d *_dev)
+static inline struct virtio_device *dev_to_virtio(struct device *_dev)
 {
 	return container_of(_dev, struct virtio_device, dev);
 }
@@ -69,7 +69,7 @@ static inline struct virtio_device *dev_to_virtio(struct device_d *_dev)
 void virtio_add_status(struct virtio_device *dev, unsigned int status);
 int register_virtio_device(struct virtio_device *dev);
 void unregister_virtio_device(struct virtio_device *dev);
-bool is_virtio_device(struct device_d *dev);
+bool is_virtio_device(struct device *dev);
 
 void virtio_break_device(struct virtio_device *dev);
 
diff --git a/include/mci.h b/include/mci.h
index d949310fac..90d0a76347 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -391,7 +391,7 @@ struct mci;
 
 /** host information */
 struct mci_host {
-	struct device_d *hw_dev;	/**< the host MCI hardware device */
+	struct device *hw_dev;	/**< the host MCI hardware device */
 	struct mci *mci;
 	const char *devname;		/**< the devicename for the card, defaults to disk%d */
 	unsigned voltages;
@@ -411,7 +411,7 @@ struct mci_host {
 	struct regulator *supply;
 
 	/** init the host interface */
-	int (*init)(struct mci_host*, struct device_d*);
+	int (*init)(struct mci_host*, struct device*);
 	/** change host interface settings */
 	void (*set_ios)(struct mci_host*, struct mci_ios *);
 	/** handle a command */
@@ -443,7 +443,7 @@ struct mci_part {
 /** MMC/SD and interface instance information */
 struct mci {
 	struct mci_host *host;		/**< the host for this card */
-	struct device_d dev;		/**< the device for our disk (mcix) */
+	struct device dev;		/**< the device for our disk (mcix) */
 	unsigned version;
 	/** != 0 when a high capacity card is connected (OCR -> OCR_HCS) */
 	int high_capacity;
diff --git a/include/mfd/mc13xxx.h b/include/mfd/mc13xxx.h
index b38918084d..c8ccd1f0b3 100644
--- a/include/mfd/mc13xxx.h
+++ b/include/mfd/mc13xxx.h
@@ -216,9 +216,10 @@ static inline int mc13xxx_register_init_callback(void(*callback)(struct mc13xxx
 #endif
 
 #ifdef CONFIG_MC13XXX_ADC
-int mc13xxx_adc_probe(struct device_d *dev, struct mc13xxx *mc_dev);
+int mc13xxx_adc_probe(struct device *dev, struct mc13xxx *mc_dev);
 #else
-static inline int mc13xxx_adc_probe(struct device_d *dev, struct mc13xxx *mc_dev)
+static inline int mc13xxx_adc_probe(struct device *dev,
+				    struct mc13xxx *mc_dev)
 {
 	return 0;
 }
diff --git a/include/net.h b/include/net.h
index f9d1fbfc18..27dea3a12d 100644
--- a/include/net.h
+++ b/include/net.h
@@ -32,7 +32,7 @@
 /* The number of receive packet buffers */
 #define PKTBUFSRX	4
 
-struct device_d;
+struct device;
 
 struct eth_device {
 	int active;
@@ -59,9 +59,9 @@ struct eth_device {
 	/* phy device may attach itself for hardware timestamping */
 	struct phy_device *phydev;
 
-	struct device_d dev;
+	struct device dev;
 	char *devname;
-	struct device_d *parent;
+	struct device *parent;
 	char *nodepath;
 
 	struct list_head list;
diff --git a/include/of.h b/include/of.h
index c19a17584e..f3384b52a2 100644
--- a/include/of.h
+++ b/include/of.h
@@ -35,7 +35,7 @@ struct device_node {
 	struct list_head parent_list;
 	struct list_head list;
 	phandle phandle;
-	struct device_d *dev;
+	struct device *dev;
 };
 
 struct of_device_id {
@@ -61,13 +61,13 @@ int of_add_reserve_entry(resource_size_t start, resource_size_t end);
 void of_clean_reserve_map(void);
 void fdt_add_reserve_map(void *fdt);
 
-struct device_d;
+struct device;
 struct driver_d;
 struct resource;
 
 int of_fix_tree(struct device_node *);
 
-int of_match(struct device_d *dev, struct driver_d *drv);
+int of_match(struct device *dev, struct driver_d *drv);
 
 int of_add_initrd(struct device_node *root, resource_size_t start,
 		resource_size_t end);
@@ -286,16 +286,16 @@ extern int of_set_root_node(struct device_node *node);
 extern int barebox_register_of(struct device_node *root);
 extern int barebox_register_fdt(const void *dtb);
 
-extern struct device_d *of_platform_device_create(struct device_node *np,
-						struct device_d *parent);
-extern void of_platform_device_dummy_drv(struct device_d *dev);
+extern struct device *of_platform_device_create(struct device_node *np,
+						struct device *parent);
+extern void of_platform_device_dummy_drv(struct device *dev);
 extern int of_platform_populate(struct device_node *root,
 				const struct of_device_id *matches,
-				struct device_d *parent);
-extern struct device_d *of_find_device_by_node(struct device_node *np);
-extern struct device_d *of_device_enable_and_register(struct device_node *np);
-extern struct device_d *of_device_enable_and_register_by_name(const char *name);
-extern struct device_d *of_device_enable_and_register_by_alias(
+				struct device *parent);
+extern struct device *of_find_device_by_node(struct device_node *np);
+extern struct device *of_device_enable_and_register(struct device_node *np);
+extern struct device *of_device_enable_and_register_by_name(const char *name);
+extern struct device *of_device_enable_and_register_by_alias(
 							const char *alias);
 
 extern int of_device_ensure_probed(struct device_node *np);
@@ -310,13 +310,13 @@ int of_parse_partitions(struct cdev *cdev, struct device_node *node);
 int of_fixup_partitions(struct device_node *np, struct cdev *cdev);
 int of_partitions_register_fixup(struct cdev *cdev);
 struct device_node *of_get_stdoutpath(unsigned int *);
-int of_device_is_stdout_path(struct device_d *dev, unsigned int *baudrate);
+int of_device_is_stdout_path(struct device *dev, unsigned int *baudrate);
 const char *of_get_model(void);
 void *of_flatten_dtb(struct device_node *node);
 int of_add_memory(struct device_node *node, bool dump);
 int of_add_memory_bank(struct device_node *node, bool dump, int r,
 		u64 base, u64 size);
-struct device_d *of_find_device_by_node_path(const char *path);
+struct device *of_find_device_by_node_path(const char *path);
 #define OF_FIND_PATH_FLAGS_BB 1		/* return .bb device if available */
 int of_find_path(struct device_node *node, const char *propname, char **outpath, unsigned flags);
 int of_find_path_by_node(struct device_node *node, char **outpath, unsigned flags);
@@ -364,7 +364,8 @@ static inline struct device_node *of_get_stdoutpath(unsigned int *rate)
 	return NULL;
 }
 
-static inline int of_device_is_stdout_path(struct device_d *dev, unsigned int *baudrate)
+static inline int of_device_is_stdout_path(struct device *dev,
+					   unsigned int *baudrate)
 {
 	return 0;
 }
@@ -394,13 +395,13 @@ static inline int of_set_root_node(struct device_node *node)
 	return -ENOSYS;
 }
 
-static inline struct device_d *of_platform_device_create(struct device_node *np,
-							 struct device_d *parent)
+static inline struct device *of_platform_device_create(struct device_node *np,
+							 struct device *parent)
 {
 	return NULL;
 }
 
-static inline void of_platform_device_dummy_drv(struct device_d *dev)
+static inline void of_platform_device_dummy_drv(struct device *dev)
 {
 }
 
@@ -830,29 +831,29 @@ static inline int of_modalias_node(struct device_node *node, char *modalias,
 
 static inline int of_platform_populate(struct device_node *root,
 				const struct of_device_id *matches,
-				struct device_d *parent)
+				struct device *parent)
 {
 	return -ENOSYS;
 }
 
-static inline struct device_d *of_find_device_by_node(struct device_node *np)
+static inline struct device *of_find_device_by_node(struct device_node *np)
 {
 	return NULL;
 }
 
-static inline struct device_d *of_device_enable_and_register(
+static inline struct device *of_device_enable_and_register(
 				struct device_node *np)
 {
 	return NULL;
 }
 
-static inline struct device_d *of_device_enable_and_register_by_name(
+static inline struct device *of_device_enable_and_register_by_name(
 				const char *name)
 {
 	return NULL;
 }
 
-static inline struct device_d *of_device_enable_and_register_by_alias(
+static inline struct device *of_device_enable_and_register_by_alias(
 				const char *alias)
 {
 	return NULL;
diff --git a/include/of_device.h b/include/of_device.h
index cef6d5b5cc..eec9c90368 100644
--- a/include/of_device.h
+++ b/include/of_device.h
@@ -8,42 +8,42 @@
 
 #ifdef CONFIG_OFTREE
 extern const struct of_device_id *of_match_device(
-	const struct of_device_id *matches, const struct device_d *dev);
+	const struct of_device_id *matches, const struct device *dev);
 
 /**
  * of_driver_match_device - Tell if a driver's of_match_table matches a device.
  * @drv: the device_driver structure to test
  * @dev: the device structure to match against
  */
-static inline int of_driver_match_device(struct device_d *dev,
+static inline int of_driver_match_device(struct device *dev,
 					 const struct driver_d *drv)
 {
 	return of_match_device(drv->of_compatible, dev) != NULL;
 }
 
-extern const void *of_device_get_match_data(const struct device_d *dev);
-extern const char *of_device_get_match_compatible(const struct device_d *dev);
+extern const void *of_device_get_match_data(const struct device *dev);
+extern const char *of_device_get_match_compatible(const struct device *dev);
 
 #else /* CONFIG_OFTREE */
 
-static inline int of_driver_match_device(struct device_d *dev,
-					 const struct device_d *drv)
+static inline int of_driver_match_device(struct device *dev,
+					 const struct device *drv)
 {
 	return 0;
 }
 
-static inline const void *of_device_get_match_data(const struct device_d *dev)
+static inline const void *of_device_get_match_data(const struct device *dev)
 {
 	return NULL;
 }
 
-static inline const char *of_device_get_match_compatible(const struct device_d *dev)
+static inline const char *of_device_get_match_compatible(const struct device *dev)
 {
 	return NULL;
 }
 
 static inline const struct of_device_id *__of_match_device(
-		const struct of_device_id *matches, const struct device_d *dev)
+		const struct of_device_id *matches, const struct device *dev)
 {
 	return NULL;
 }
diff --git a/include/param.h b/include/param.h
index 4835be4d25..76a077fd75 100644
--- a/include/param.h
+++ b/include/param.h
@@ -9,7 +9,7 @@
 #define PARAM_FLAG_RO	(1 << 0)
 #define PARAM_GLOBALVAR_UNQUALIFIED	(1 << 1)
 
-struct device_d;
+struct device;
 struct file_list;
 typedef uint32_t          IPaddr_t;
 
@@ -28,13 +28,13 @@ enum param_type {
 };
 
 struct param_d {
-	const char* (*get)(struct device_d *, struct param_d *param);
-	int (*set)(struct device_d *, struct param_d *param, const char *val);
+	const char* (*get)(struct device *, struct param_d *param);
+	int (*set)(struct device *, struct param_d *param, const char *val);
 	void (*info)(struct param_d *param);
 	unsigned int flags;
 	char *name;
 	char *value;
-	struct device_d *dev;
+	struct device *dev;
 	void *driver_priv;
 	struct list_head list;
 	enum param_type type;
@@ -44,163 +44,189 @@ enum param_tristate { PARAM_TRISTATE_UNKNOWN, PARAM_TRISTATE_TRUE, PARAM_TRISTAT
 
 #ifdef CONFIG_PARAMETER
 const char *get_param_type(struct param_d *param);
-const char *dev_get_param(struct device_d *dev, const char *name);
-int dev_set_param(struct device_d *dev, const char *name, const char *val);
-struct param_d *get_param_by_name(struct device_d *dev, const char *name);
-
-struct param_d *dev_add_param(struct device_d *dev, const char *name,
-		int (*set)(struct device_d *dev, struct param_d *p, const char *val),
-		const char *(*get)(struct device_d *, struct param_d *p),
-		unsigned long flags);
-
-struct param_d *dev_add_param_string(struct device_d *dev, const char *name,
-		int (*set)(struct param_d *p, void *priv),
-		int (*get)(struct param_d *p, void *priv),
-		char **value, void *priv);
-
-struct param_d *__dev_add_param_int(struct device_d *dev, const char *name,
-		int (*set)(struct param_d *p, void *priv),
-		int (*get)(struct param_d *p, void *priv),
-		void *value, enum param_type type, const char *format, void *priv);
-
-struct param_d *dev_add_param_enum(struct device_d *dev, const char *name,
-		int (*set)(struct param_d *p, void *priv),
-		int (*get)(struct param_d *p, void *priv),
-		int *value, const char * const *names, int max, void *priv);
-
-struct param_d *dev_add_param_tristate(struct device_d *dev, const char *name,
-		int (*set)(struct param_d *p, void *priv),
-		int (*get)(struct param_d *p, void *priv),
-		int *value, void *priv);
-
-struct param_d *dev_add_param_tristate_ro(struct device_d *dev, const char *name,
-		int *value);
-
-struct param_d *dev_add_param_bitmask(struct device_d *dev, const char *name,
-		int (*set)(struct param_d *p, void *priv),
-		int (*get)(struct param_d *p, void *priv),
-		unsigned long *value, const char * const *names, int max, void *priv);
-
-struct param_d *dev_add_param_ip(struct device_d *dev, const char *name,
-		int (*set)(struct param_d *p, void *priv),
-		int (*get)(struct param_d *p, void *priv),
-		IPaddr_t *ip, void *priv);
-
-struct param_d *dev_add_param_mac(struct device_d *dev, const char *name,
-		int (*set)(struct param_d *p, void *priv),
-		int (*get)(struct param_d *p, void *priv),
-		u8 *mac, void *priv);
-
-struct param_d *dev_add_param_file_list(struct device_d *dev, const char *name,
-		int (*set)(struct param_d *p, void *priv),
-		int (*get)(struct param_d *p, void *priv),
-		struct file_list **file_list, void *priv);
-
-struct param_d *dev_add_param_fixed(struct device_d *dev, const char *name, const char *value);
+const char *dev_get_param(struct device *dev, const char *name);
+int dev_set_param(struct device *dev, const char *name, const char *val);
+struct param_d *get_param_by_name(struct device *dev, const char *name);
+
+struct param_d *dev_add_param(struct device *dev, const char *name,
+			      int (*set)(struct device *dev, struct param_d *p, const char *val),
+			      const char *(*get)(struct device *, struct param_d *p),
+			      unsigned long flags);
+
+struct param_d *dev_add_param_string(struct device *dev, const char *name,
+				     int (*set)(struct param_d *p, void *priv),
+				     int (*get)(struct param_d *p, void *priv),
+				     char **value, void *priv);
+
+struct param_d *__dev_add_param_int(struct device *dev, const char *name,
+				    int (*set)(struct param_d *p, void *priv),
+				    int (*get)(struct param_d *p, void *priv),
+				    void *value, enum param_type type,
+				    const char *format, void *priv);
+
+struct param_d *dev_add_param_enum(struct device *dev, const char *name,
+				   int (*set)(struct param_d *p, void *priv),
+				   int (*get)(struct param_d *p, void *priv),
+				   int *value, const char * const *names,
+				   int max, void *priv);
+
+struct param_d *dev_add_param_tristate(struct device *dev, const char *name,
+				       int (*set)(struct param_d *p, void *priv),
+				       int (*get)(struct param_d *p, void *priv),
+				       int *value, void *priv);
+
+struct param_d *dev_add_param_tristate_ro(struct device *dev,
+					  const char *name,
+					  int *value);
+
+struct param_d *dev_add_param_bitmask(struct device *dev, const char *name,
+				      int (*set)(struct param_d *p, void *priv),
+				      int (*get)(struct param_d *p, void *priv),
+				      unsigned long *value,
+				      const char * const *names, int max,
+				      void *priv);
+
+struct param_d *dev_add_param_ip(struct device *dev, const char *name,
+				 int (*set)(struct param_d *p, void *priv),
+				 int (*get)(struct param_d *p, void *priv),
+				 IPaddr_t *ip, void *priv);
+
+struct param_d *dev_add_param_mac(struct device *dev, const char *name,
+				  int (*set)(struct param_d *p, void *priv),
+				  int (*get)(struct param_d *p, void *priv),
+				  u8 *mac, void *priv);
+
+struct param_d *dev_add_param_file_list(struct device *dev, const char *name,
+					int (*set)(struct param_d *p, void *priv),
+					int (*get)(struct param_d *p, void *priv),
+					struct file_list **file_list,
+					void *priv);
+
+struct param_d *dev_add_param_fixed(struct device *dev, const char *name,
+				    const char *value);
 
 void dev_remove_param(struct param_d *p);
 
-void dev_remove_parameters(struct device_d *dev);
+void dev_remove_parameters(struct device *dev);
 
-int dev_param_set_generic(struct device_d *dev, struct param_d *p,
-		const char *val);
+int dev_param_set_generic(struct device *dev, struct param_d *p,
+			  const char *val);
 
 #else
-static inline const char *dev_get_param(struct device_d *dev, const char *name)
+static inline const char *dev_get_param(struct device *dev, const char *name)
 {
 	return NULL;
 }
-static inline int dev_set_param(struct device_d *dev, const char *name,
+static inline int dev_set_param(struct device *dev, const char *name,
 				const char *val)
 {
 	return 0;
 }
-static inline struct param_d *get_param_by_name(struct device_d *dev,
+static inline struct param_d *get_param_by_name(struct device *dev,
 						const char *name)
 {
 	return NULL;
 }
 
-static inline struct param_d *dev_add_param(struct device_d *dev, const char *name,
-		int (*set)(struct device_d *dev, struct param_d *p, const char *val),
-		const char *(*get)(struct device_d *, struct param_d *p),
-		unsigned long flags)
+static inline struct param_d *dev_add_param(struct device *dev,
+					    const char *name,
+					    int (*set)(struct device *dev, struct param_d *p, const char *val),
+					    const char *(*get)(struct device *, struct param_d *p),
+					    unsigned long flags)
 {
 	return NULL;
 }
 
-static inline struct param_d *dev_add_param_string(struct device_d *dev, const char *name,
-		int (*set)(struct param_d *p, void *priv),
-		int (*get)(struct param_d *p, void *priv),
-		char **value, void *priv)
+static inline struct param_d *dev_add_param_string(struct device *dev,
+						   const char *name,
+						   int (*set)(struct param_d *p, void *priv),
+						   int (*get)(struct param_d *p, void *priv),
+						   char **value, void *priv)
 {
 	return NULL;
 }
 
-static inline struct param_d *__dev_add_param_int(struct device_d *dev, const char *name,
-		int (*set)(struct param_d *p, void *priv),
-		int (*get)(struct param_d *p, void *priv),
-		void *value, enum param_type type, const char *format, void *priv)
+static inline struct param_d *__dev_add_param_int(struct device *dev,
+						  const char *name,
+						  int (*set)(struct param_d *p, void *priv),
+						  int (*get)(struct param_d *p, void *priv),
+						  void *value,
+						  enum param_type type,
+						  const char *format,
+						  void *priv)
 {
 	return NULL;
 }
 
-static inline struct param_d *dev_add_param_enum(struct device_d *dev, const char *name,
-		int (*set)(struct param_d *p, void *priv),
-		int (*get)(struct param_d *p, void *priv),
-		int *value, const char * const *names, int max, void *priv)
+static inline struct param_d *dev_add_param_enum(struct device *dev,
+						 const char *name,
+						 int (*set)(struct param_d *p, void *priv),
+						 int (*get)(struct param_d *p, void *priv),
+						 int *value,
+						 const char * const *names,
+						 int max, void *priv)
 
 {
 	return NULL;
 }
 
-static inline struct param_d *dev_add_param_bitmask(struct device_d *dev, const char *name,
-                int (*set)(struct param_d *p, void *priv),
-                int (*get)(struct param_d *p, void *priv),
-                unsigned long *value, const char * const *names, int max, void *priv)
+static inline struct param_d *dev_add_param_bitmask(struct device *dev,
+						    const char *name,
+						    int (*set)(struct param_d *p, void *priv),
+						    int (*get)(struct param_d *p, void *priv),
+						    unsigned long *value,
+						    const char * const *names,
+						    int max, void *priv)
 {
 	return NULL;
 }
 
-static inline struct param_d *dev_add_param_tristate(struct device_d *dev, const char *name,
-		int (*set)(struct param_d *p, void *priv),
-		int (*get)(struct param_d *p, void *priv),
-		int *value, void *priv)
+static inline struct param_d *dev_add_param_tristate(struct device *dev,
+						     const char *name,
+						     int (*set)(struct param_d *p, void *priv),
+						     int (*get)(struct param_d *p, void *priv),
+						     int *value, void *priv)
 {
 	return NULL;
 }
 
-static inline struct param_d *dev_add_param_tristate_ro(struct device_d *dev, const char *name,
-		int *value)
+static inline struct param_d *dev_add_param_tristate_ro(struct device *dev,
+							const char *name,
+							int *value)
 {
 	return NULL;
 }
 
-static inline struct param_d *dev_add_param_ip(struct device_d *dev, const char *name,
-		int (*set)(struct param_d *p, void *priv),
-		int (*get)(struct param_d *p, void *priv),
-		IPaddr_t *ip, void *priv)
+static inline struct param_d *dev_add_param_ip(struct device *dev,
+					       const char *name,
+					       int (*set)(struct param_d *p, void *priv),
+					       int (*get)(struct param_d *p, void *priv),
+					       IPaddr_t *ip, void *priv)
 {
 	return NULL;
 }
 
-static inline struct param_d *dev_add_param_mac(struct device_d *dev, const char *name,
-		int (*set)(struct param_d *p, void *priv),
-		int (*get)(struct param_d *p, void *priv),
-		u8 *mac, void *priv)
+static inline struct param_d *dev_add_param_mac(struct device *dev,
+						const char *name,
+						int (*set)(struct param_d *p, void *priv),
+						int (*get)(struct param_d *p, void *priv),
+						u8 *mac, void *priv)
 {
 	return NULL;
 }
 
-static inline struct param_d *dev_add_param_file_list(struct device_d *dev, const char *name,
-		int (*set)(struct param_d *p, void *priv),
-		int (*get)(struct param_d *p, void *priv),
-		struct file_list **file_list, void *priv)
+static inline struct param_d *dev_add_param_file_list(struct device *dev,
+						      const char *name,
+						      int (*set)(struct param_d *p, void *priv),
+						      int (*get)(struct param_d *p, void *priv),
+						      struct file_list **file_list,
+						      void *priv)
 {
 	return NULL;
 }
 
-static inline struct param_d *dev_add_param_fixed(struct device_d *dev, const char *name,
+static inline struct param_d *dev_add_param_fixed(struct device *dev,
+						  const char *name,
 						  const char *value)
 {
 	return NULL;
@@ -208,10 +234,10 @@ static inline struct param_d *dev_add_param_fixed(struct device_d *dev, const ch
 
 static inline void dev_remove_param(struct param_d *p) {}
 
-static inline void dev_remove_parameters(struct device_d *dev) {}
+static inline void dev_remove_parameters(struct device *dev) {}
 
-static inline int dev_param_set_generic(struct device_d *dev, struct param_d *p,
-		const char *val)
+static inline int dev_param_set_generic(struct device *dev, struct param_d *p,
+					const char *val)
 {
 	return 0;
 }
@@ -227,7 +253,7 @@ int param_set_readonly(struct param_d *p, void *priv);
  * dev_add_param_uint64
  */
 #define DECLARE_PARAM_INT(intname, inttype, paramtype) \
-	static inline struct param_d *dev_add_param_##intname(struct device_d *dev, const char *name,	\
+	static inline struct param_d *dev_add_param_##intname(struct device *dev, const char *name,	\
 			int (*set)(struct param_d *p, void *priv),					\
 			int (*get)(struct param_d *p, void *priv),					\
 			inttype *value, const char *format, void *priv)					\
@@ -249,7 +275,7 @@ DECLARE_PARAM_INT(uint64, uint64_t, PARAM_TYPE_UINT64)
  * dev_add_param_uint64_fixed
  */
 #define DECLARE_PARAM_INT_FIXED(intname, inttype, paramtype) \
-	static inline struct param_d *dev_add_param_##intname##_fixed(struct device_d *dev, const char *name,	\
+	static inline struct param_d *dev_add_param_##intname##_fixed(struct device *dev, const char *name,	\
 			inttype value, const char *format)							\
 	{													\
 		return __dev_add_param_int(dev, name, ERR_PTR(-EROFS), NULL, &value, paramtype, format, NULL);	\
@@ -269,7 +295,7 @@ DECLARE_PARAM_INT_FIXED(uint64, uint64_t, PARAM_TYPE_UINT64)
  * dev_add_param_uint64_ro
  */
 #define DECLARE_PARAM_INT_RO(intname, inttype, paramtype) \
-	static inline struct param_d *dev_add_param_##intname##_ro(struct device_d *dev, const char *name,		\
+	static inline struct param_d *dev_add_param_##intname##_ro(struct device *dev, const char *name,		\
 			inttype *value, const char *format)								\
 	{														\
 		return __dev_add_param_int(dev, name, param_set_readonly, NULL, value, paramtype, format, NULL);	\
@@ -281,49 +307,61 @@ DECLARE_PARAM_INT_RO(uint32, uint32_t, PARAM_TYPE_UINT32)
 DECLARE_PARAM_INT_RO(int64, int64_t, PARAM_TYPE_INT64)
 DECLARE_PARAM_INT_RO(uint64, uint64_t, PARAM_TYPE_UINT64)
 
-static inline struct param_d *dev_add_param_bool(struct device_d *dev, const char *name,
-		int (*set)(struct param_d *p, void *priv),
-		int (*get)(struct param_d *p, void *priv),
-		uint32_t *value, void *priv)
+static inline struct param_d *dev_add_param_bool(struct device *dev,
+						 const char *name,
+						 int (*set)(struct param_d *p, void *priv),
+						 int (*get)(struct param_d *p, void *priv),
+						 uint32_t *value, void *priv)
 {
 	return __dev_add_param_int(dev, name, set, get, value, PARAM_TYPE_BOOL, "%u", priv);
 }
 
-static inline struct param_d *dev_add_param_bool_fixed(struct device_d *dev, const char *name,
-		uint32_t value)
+static inline struct param_d *dev_add_param_bool_fixed(struct device *dev,
+						       const char *name,
+						       uint32_t value)
 {
 	return __dev_add_param_int(dev, name, ERR_PTR(-EROFS), NULL, &value, PARAM_TYPE_BOOL,
 				   "%u", NULL);
 }
 
-static inline struct param_d *dev_add_param_bool_ro(struct device_d *dev, const char *name,
-		uint32_t *value)
+static inline struct param_d *dev_add_param_bool_ro(struct device *dev,
+						    const char *name,
+						    uint32_t *value)
 {
 	return __dev_add_param_int(dev, name, param_set_readonly, NULL, value, PARAM_TYPE_BOOL,
 				   "%u", NULL);
 }
 
-static inline struct param_d *dev_add_param_string_ro(struct device_d *dev, const char *name,
-		char **value, void *priv)
+static inline struct param_d *dev_add_param_string_ro(struct device *dev,
+						      const char *name,
+						      char **value,
+						      void *priv)
 {
 	return dev_add_param_string(dev, name, param_set_readonly, NULL, value, NULL);
 }
 
-static inline struct param_d *dev_add_param_string_fixed(struct device_d *dev, const char *name,
-		const char *value)
+static inline struct param_d *dev_add_param_string_fixed(struct device *dev,
+							 const char *name,
+							 const char *value)
 {
 	return dev_add_param_fixed(dev, name, value);
 }
 
-static inline struct param_d *dev_add_param_enum_ro(struct device_d *dev, const char *name,
-		int *value, const char * const *names, int max)
+static inline struct param_d *dev_add_param_enum_ro(struct device *dev,
+						    const char *name,
+						    int *value,
+						    const char * const *names,
+						    int max)
 {
 	return dev_add_param_enum(dev, name, param_set_readonly, NULL,
 				  value, names, max, NULL);
 }
 
-static inline struct param_d *dev_add_param_bitmask_ro(struct device_d *dev, const char *name,
-		unsigned long *value, const char * const *names, int max)
+static inline struct param_d *dev_add_param_bitmask_ro(struct device *dev,
+						       const char *name,
+						       unsigned long *value,
+						       const char * const *names,
+						       int max)
 {
 	return dev_add_param_bitmask(dev, name, param_set_readonly, NULL,
 				     value, names, max, NULL);
diff --git a/include/pinctrl.h b/include/pinctrl.h
index a628c3aac9..f0f7c2cc8b 100644
--- a/include/pinctrl.h
+++ b/include/pinctrl.h
@@ -11,7 +11,7 @@ struct pinctrl_ops {
 };
 
 struct pinctrl_device {
-	struct device_d *dev;
+	struct device *dev;
 	struct pinctrl_ops *ops;
 	struct list_head list;
 	struct device_node *node;
@@ -22,21 +22,21 @@ int pinctrl_register(struct pinctrl_device *pdev);
 void pinctrl_unregister(struct pinctrl_device *pdev);
 
 #ifdef CONFIG_PINCTRL
-int pinctrl_select_state(struct device_d *dev, const char *state);
-int pinctrl_select_state_default(struct device_d *dev);
+int pinctrl_select_state(struct device *dev, const char *state);
+int pinctrl_select_state_default(struct device *dev);
 int of_pinctrl_select_state(struct device_node *np, const char *state);
 int of_pinctrl_select_state_default(struct device_node *np);
 int pinctrl_gpio_direction_input(unsigned pin);
 int pinctrl_gpio_direction_output(unsigned int pin);
 int pinctrl_gpio_get_direction(unsigned pin);
-int pinctrl_single_probe(struct device_d *dev);
+int pinctrl_single_probe(struct device *dev);
 #else
-static inline int pinctrl_select_state(struct device_d *dev, const char *state)
+static inline int pinctrl_select_state(struct device *dev, const char *state)
 {
 	return -ENODEV;
 }
 
-static inline int pinctrl_select_state_default(struct device_d *dev)
+static inline int pinctrl_select_state_default(struct device *dev)
 {
 	return -ENODEV;
 }
@@ -66,7 +66,7 @@ static inline int pinctrl_gpio_get_direction(unsigned pin)
 	return -ENOTSUPP;
 }
 
-static inline int pinctrl_single_probe(struct device_d *dev)
+static inline int pinctrl_single_probe(struct device *dev)
 {
 	return -ENOSYS;
 }
diff --git a/include/pm_domain.h b/include/pm_domain.h
index ff1aa37511..fac7f99227 100644
--- a/include/pm_domain.h
+++ b/include/pm_domain.h
@@ -23,7 +23,7 @@ typedef struct generic_pm_domain *(*genpd_xlate_t)(struct of_phandle_args *args,
 
 #ifdef CONFIG_PM_GENERIC_DOMAINS
 
-int genpd_dev_pm_attach(struct device_d *dev);
+int genpd_dev_pm_attach(struct device *dev);
 
 /**
  * dev_pm_domain_attach - Attach a device to its PM domain.
@@ -44,7 +44,7 @@ int genpd_dev_pm_attach(struct device_d *dev);
  *
  * Returns 0 on successfully attached PM domain or negative error code.
  */
-static inline int dev_pm_domain_attach(struct device_d *dev, bool power_on)
+static inline int dev_pm_domain_attach(struct device *dev, bool power_on)
 {
 	return genpd_dev_pm_attach(dev);
 }
@@ -64,12 +64,12 @@ static inline int pm_genpd_init(struct generic_pm_domain *genpd,
 	return -ENOSYS;
 }
 
-static inline int genpd_dev_pm_attach(struct device_d *dev)
+static inline int genpd_dev_pm_attach(struct device *dev)
 {
 	return 0;
 }
 
-static inline int dev_pm_domain_attach(struct device_d *dev, bool power_on)
+static inline int dev_pm_domain_attach(struct device *dev, bool power_on)
 {
 	return 0;
 }
diff --git a/include/printk.h b/include/printk.h
index b313b408a9..90c45afd9f 100644
--- a/include/printk.h
+++ b/include/printk.h
@@ -4,7 +4,7 @@
 
 #include <linux/types.h>
 
-struct device_d;
+struct device;
 
 #define KERN_EMERG      ""   /* system is unusable                   */
 #define KERN_ALERT      ""   /* action must be taken immediately     */
@@ -49,7 +49,7 @@ enum {
 extern int hex_dump_to_buffer(const void *buf, size_t len, int rowsize,
 			      int groupsize, char *linebuf, size_t linebuflen,
 			      bool ascii);
-extern void dev_print_hex_dump(struct device_d *dev, const char *level,
+extern void dev_print_hex_dump(struct device *dev, const char *level,
 			       const char *prefix_str, int prefix_type,
 			       int rowsize, int groupsize, const void *buf,
 			       size_t len, bool ascii);
diff --git a/include/pwm.h b/include/pwm.h
index 2bd59fb8d3..643ef4d7ee 100644
--- a/include/pwm.h
+++ b/include/pwm.h
@@ -6,7 +6,7 @@
 #include <errno.h>
 
 struct pwm_device;
-struct device_d;
+struct device;
 
 #define	PWM_POLARITY_NORMAL	0
 
@@ -139,7 +139,7 @@ struct pwm_chip {
 	struct pwm_state	state;
 };
 
-int pwmchip_add(struct pwm_chip *chip, struct device_d *dev);
+int pwmchip_add(struct pwm_chip *chip, struct device *dev);
 int pwmchip_remove(struct pwm_chip *chip);
 
 #endif /* __PWM_H */
diff --git a/include/regmap.h b/include/regmap.h
index 5bedb30d8a..44dd8f38c8 100644
--- a/include/regmap.h
+++ b/include/regmap.h
@@ -51,10 +51,10 @@ struct regmap_bus {
 	enum regmap_endian val_format_endian_default;
 };
 
-struct device_d;
+struct device;
 struct device_node;
 
-struct regmap *regmap_init(struct device_d *dev,
+struct regmap *regmap_init(struct device *dev,
 			     const struct regmap_bus *bus,
 			     void *bus_context,
 			     const struct regmap_config *config);
@@ -72,7 +72,7 @@ struct clk;
  * The return value will be an ERR_PTR() on error or a valid pointer to
  * a struct regmap.
  */
-struct regmap *regmap_init_mmio_clk(struct device_d *dev, const char *clk_id,
+struct regmap *regmap_init_mmio_clk(struct device *dev, const char *clk_id,
 				    void __iomem *regs,
 				    const struct regmap_config *config);
 
@@ -111,8 +111,8 @@ void regmap_mmio_detach_clk(struct regmap *map);
 
 void regmap_exit(struct regmap *map);
 
-struct regmap *dev_get_regmap(struct device_d *dev, const char *name);
-struct device_d *regmap_get_device(struct regmap *map);
+struct regmap *dev_get_regmap(struct device *dev, const char *name);
+struct device *regmap_get_device(struct regmap *map);
 
 int regmap_register_cdev(struct regmap *map, const char *name);
 
diff --git a/include/regulator.h b/include/regulator.h
index 1ae31ad7cf..b0a500434c 100644
--- a/include/regulator.h
+++ b/include/regulator.h
@@ -2,7 +2,7 @@
 #ifndef __REGULATOR_H
 #define __REGULATOR_H
 
-struct device_d;
+struct device;
 
 /* struct regulator is an opaque object for consumers */
 struct regulator;
@@ -90,7 +90,7 @@ struct regulator_dev {
 	bool boot_on;
 	bool always_on;
 	/* the device this regulator device belongs to */
-	struct device_d *dev;
+	struct device *dev;
 	/* The regulator powering this device */
 	struct regulator *supply;
 };
@@ -152,7 +152,7 @@ void regulators_print(void);
 
 #ifdef CONFIG_REGULATOR
 
-struct regulator *regulator_get(struct device_d *, const char *);
+struct regulator *regulator_get(struct device *, const char *);
 struct regulator *regulator_get_name(const char *name);
 int regulator_enable(struct regulator *);
 int regulator_disable(struct regulator *);
@@ -172,7 +172,7 @@ int regulator_list_voltage_linear_range(struct regulator_dev *rdev,
 int regulator_get_voltage_sel_regmap(struct regulator_dev *rdev);
 int regulator_map_voltage_iterate(struct regulator_dev *rdev,
 				  int min_uV, int max_uV);
-int regulator_bulk_get(struct device_d *dev, int num_consumers,
+int regulator_bulk_get(struct device *dev, int num_consumers,
 		       struct regulator_bulk_data *consumers);
 int regulator_bulk_enable(int num_consumers,
 			  struct regulator_bulk_data *consumers);
@@ -203,7 +203,8 @@ int regulator_list_voltage_table(struct regulator_dev *rdev,
 				  unsigned int selector);
 #else
 
-static inline struct regulator *regulator_get(struct device_d *dev, const char *id)
+static inline struct regulator *regulator_get(struct device *dev,
+					      const char *id)
 {
 	return NULL;
 }
@@ -229,7 +230,7 @@ static inline int regulator_set_voltage(struct regulator *regulator,
 	return 0;
 }
 
-static inline int regulator_bulk_get(struct device_d *dev, int num_consumers,
+static inline int regulator_bulk_get(struct device *dev, int num_consumers,
 				     struct regulator_bulk_data *consumers)
 {
 	return 0;
diff --git a/include/reset_source.h b/include/reset_source.h
index a98c61ae0e..3766208b6d 100644
--- a/include/reset_source.h
+++ b/include/reset_source.h
@@ -26,9 +26,9 @@ enum reset_src_type {
 enum reset_src_type reset_source_get(void);
 const char *reset_source_to_string(enum reset_src_type st);
 int reset_source_get_instance(void);
-struct device_d *reset_source_get_device(void);
+struct device *reset_source_get_device(void);
 
-void reset_source_set_device(struct device_d *dev, enum reset_src_type st);
+void reset_source_set_device(struct device *dev, enum reset_src_type st);
 void reset_source_set_prinst(enum reset_src_type,
 			     unsigned int priority, int instance);
 
@@ -49,12 +49,12 @@ static inline int reset_source_get_instance(void)
 	return -1;
 }
 
-static inline struct device_d *reset_source_get_device(void)
+static inline struct device *reset_source_get_device(void)
 {
 	return NULL;
 }
 
-static inline void reset_source_set_device(struct device_d *dev,
+static inline void reset_source_set_device(struct device *dev,
 					   enum reset_src_type st)
 {
 }
diff --git a/include/serdev.h b/include/serdev.h
index 0d020b8e82..b402325f39 100644
--- a/include/serdev.h
+++ b/include/serdev.h
@@ -20,7 +20,7 @@
  *			returns number of bytes accepted;
  */
 struct serdev_device {
-	struct device_d *dev;
+	struct device *dev;
 	struct kfifo *fifo;
 	unsigned char *buf;
 	struct poller_async poller;
diff --git a/include/soc/imx8m/featctrl.h b/include/soc/imx8m/featctrl.h
index b3eb1a56a5..9c494f071d 100644
--- a/include/soc/imx8m/featctrl.h
+++ b/include/soc/imx8m/featctrl.h
@@ -15,10 +15,10 @@ struct imx8m_featctrl_data {
 };
 
 #ifdef CONFIG_IMX8M_FEATCTRL
-int imx8m_feat_ctrl_init(struct device_d *dev, u32 tester4,
+int imx8m_feat_ctrl_init(struct device *dev, u32 tester4,
 			 const struct imx8m_featctrl_data *data);
 #else
-static inline int imx8m_feat_ctrl_init(struct device_d *dev, u32 tester4,
+static inline int imx8m_feat_ctrl_init(struct device *dev, u32 tester4,
 				       const struct imx8m_featctrl_data *data)
 {
 	return -ENODEV;
diff --git a/include/soc/stm32/reboot.h b/include/soc/stm32/reboot.h
index cf0d0286e7..c067c27229 100644
--- a/include/soc/stm32/reboot.h
+++ b/include/soc/stm32/reboot.h
@@ -5,12 +5,12 @@
 
 #include <linux/compiler.h>
 
-struct device_d;
+struct device;
 
 #ifdef CONFIG_RESET_STM32
-void stm32mp_system_restart_init(struct device_d *rcc);
+void stm32mp_system_restart_init(struct device *rcc);
 #else
-static inline void stm32mp_system_restart_init(struct device_d *rcc)
+static inline void stm32mp_system_restart_init(struct device *rcc)
 {
 }
 #endif
diff --git a/include/spi/spi.h b/include/spi/spi.h
index b6d08592a3..fb397e807a 100644
--- a/include/spi/spi.h
+++ b/include/spi/spi.h
@@ -64,7 +64,7 @@ struct spi_board_info {
  * information about how this particular board wires the chip's pins.
  */
 struct spi_device {
-	struct device_d		dev;
+	struct device		dev;
 	struct spi_controller	*controller;
 	struct spi_controller	*master;	/* compatibility layer */
 	struct spi_mem		*mem;
@@ -108,7 +108,7 @@ struct spi_device {
 	 */
 };
 
-static inline struct spi_device *to_spi_device(struct device_d *dev)
+static inline struct spi_device *to_spi_device(struct device *dev)
 {
         return dev ? container_of(dev, struct spi_device, dev) : NULL;
 }
@@ -153,7 +153,7 @@ struct spi_message;
  * message's completion function when the transaction completes.
  */
 struct spi_controller {
-	struct device_d *dev;
+	struct device *dev;
 
 	/* other than negative (== assign one dynamically), bus_num is fully
 	 * board-specific.  usually that simplifies to being SOC-specific.
diff --git a/include/superio.h b/include/superio.h
index 12bff58b6b..342fdc486c 100644
--- a/include/superio.h
+++ b/include/superio.h
@@ -50,7 +50,7 @@ static inline void superio_clear_bit(u16 base, u8 reg, unsigned bit)
 }
 
 struct superio_chip {
-	struct device_d *dev;
+	struct device *dev;
 	u16 vid;
 	u16 devid;
 	u16 sioaddr;
@@ -59,6 +59,6 @@ struct superio_chip {
 };
 
 void superio_chip_add(struct superio_chip *chip);
-struct device_d *superio_func_add(struct superio_chip *chip, const char *name);
+struct device *superio_func_add(struct superio_chip *chip, const char *name);
 
 #endif
diff --git a/include/usb/chipidea-imx.h b/include/usb/chipidea-imx.h
index 772f48c631..b0b75d3bcb 100644
--- a/include/usb/chipidea-imx.h
+++ b/include/usb/chipidea-imx.h
@@ -46,15 +46,15 @@ struct imxusb_platformdata {
 };
 
 #ifdef CONFIG_USB_IMX_CHIPIDEA_USBMISC
-int imx_usbmisc_port_init(struct device_d *dev, int port, unsigned flags);
-int imx_usbmisc_port_post_init(struct device_d *dev, int port, unsigned flags);
+int imx_usbmisc_port_init(struct device *dev, int port, unsigned flags);
+int imx_usbmisc_port_post_init(struct device *dev, int port, unsigned flags);
 #else
-static inline int imx_usbmisc_port_init(struct device_d *dev, int port,
+static inline int imx_usbmisc_port_init(struct device *dev, int port,
 					unsigned flags)
 {
 	return 0;
 }
-static inline int imx_usbmisc_port_post_init(struct device_d *dev, int port,
+static inline int imx_usbmisc_port_post_init(struct device *dev, int port,
 					     unsigned flags)
 {
 	return 0;
diff --git a/include/usb/ehci.h b/include/usb/ehci.h
index d937146b4d..9ce6c98ace 100644
--- a/include/usb/ehci.h
+++ b/include/usb/ehci.h
@@ -24,10 +24,10 @@ struct ehci_data {
 struct ehci_host;
 
 #ifdef CONFIG_USB_EHCI
-struct ehci_host *ehci_register(struct device_d *dev, struct ehci_data *data);
+struct ehci_host *ehci_register(struct device *dev, struct ehci_data *data);
 void ehci_unregister(struct ehci_host *);
 #else
-static inline struct ehci_host *ehci_register(struct device_d *dev,
+static inline struct ehci_host *ehci_register(struct device *dev,
 					      struct ehci_data *data)
 {
 	return ERR_PTR(-ENOSYS);
diff --git a/include/usb/fsl_usb2.h b/include/usb/fsl_usb2.h
index 01232da4f9..1d5effb0d6 100644
--- a/include/usb/fsl_usb2.h
+++ b/include/usb/fsl_usb2.h
@@ -27,7 +27,7 @@ struct fsl_usb2_platform_data {
 
 struct fsl_udc;
 
-struct fsl_udc *ci_udc_register(struct device_d *dev, void __iomem *regs);
+struct fsl_udc *ci_udc_register(struct device *dev, void __iomem *regs);
 void ci_udc_unregister(struct fsl_udc *);
 
 #endif /* __USB_FSL_USB2_H */
diff --git a/include/usb/gadget.h b/include/usb/gadget.h
index 431f316c46..296b2b7481 100644
--- a/include/usb/gadget.h
+++ b/include/usb/gadget.h
@@ -545,7 +545,7 @@ struct usb_gadget {
 	enum usb_device_speed		max_speed;
 	enum usb_device_state		state;
 	const char			*name;
-	struct device_d			dev;
+	struct device			dev;
 	unsigned			out_epnum;
 	unsigned			in_epnum;
 
@@ -575,7 +575,7 @@ static inline void *get_gadget_data(struct usb_gadget *gadget)
 	return gadget->dev.priv;
 }
 
-static inline struct usb_gadget *dev_to_usb_gadget(struct device_d *dev)
+static inline struct usb_gadget *dev_to_usb_gadget(struct device *dev)
 {
 	return container_of(dev, struct usb_gadget, dev);
 }
@@ -923,9 +923,11 @@ int usb_gadget_probe_driver(struct usb_gadget_driver *driver);
  */
 int usb_gadget_unregister_driver(struct usb_gadget_driver *driver);
 
-extern int usb_add_gadget_udc_release(struct device_d *parent,
-		struct usb_gadget *gadget, void (*release)(struct device_d *dev));
-extern int usb_add_gadget_udc(struct device_d *parent, struct usb_gadget *gadget);
+extern int usb_add_gadget_udc_release(struct device *parent,
+				      struct usb_gadget *gadget,
+				      void (*release)(struct device *dev));
+extern int usb_add_gadget_udc(struct device *parent,
+			      struct usb_gadget *gadget);
 extern void usb_del_gadget_udc(struct usb_gadget *gadget);
 extern int udc_attach_driver(const char *name,
 		struct usb_gadget_driver *driver);
diff --git a/include/usb/musb.h b/include/usb/musb.h
index c21428dbf1..fb846dd30b 100644
--- a/include/usb/musb.h
+++ b/include/usb/musb.h
@@ -97,7 +97,7 @@ struct musb_hdrc_platform_data {
 	const char	*clock;
 
 	/* (HOST or OTG) switch VBUS on/off */
-	int		(*set_vbus)(struct device_d *dev, int is_on);
+	int		(*set_vbus)(struct device *dev, int is_on);
 
 	/* (HOST or OTG) mA/2 power supplied on (default = 8mA) */
 	u8		power;
diff --git a/include/usb/phy.h b/include/usb/phy.h
index 8f11e70dfd..98a4ce087f 100644
--- a/include/usb/phy.h
+++ b/include/usb/phy.h
@@ -50,7 +50,7 @@ struct usb_phy_io_ops {
 };
 
 struct usb_phy {
-	struct device_d		*dev;
+	struct device		*dev;
 	const char		*label;
 	unsigned int		 flags;
 
diff --git a/include/usb/usb.h b/include/usb/usb.h
index 04b433ba73..47d3c0fb6a 100644
--- a/include/usb/usb.h
+++ b/include/usb/usb.h
@@ -116,7 +116,7 @@ struct usb_device {
 	struct usb_device *parent;
 	struct usb_device *children[USB_MAXCHILDREN];
 
-	struct device_d dev;
+	struct device dev;
 
 	struct usb_host *host;
 
@@ -161,7 +161,7 @@ struct usb_host {
 
 	struct list_head list;
 
-	struct device_d *hw_dev;
+	struct device *hw_dev;
 	int busnum;
 	struct usb_device *root_dev;
 	struct usb_phy *usbphy;
@@ -477,7 +477,7 @@ enum usb_phy_interface of_usb_get_phy_mode(struct device_node *np,
 enum usb_device_speed of_usb_get_maximum_speed(struct device_node *np,
 		const char *propname);
 
-int usb_register_otg_device(struct device_d *parent,
+int usb_register_otg_device(struct device *parent,
 			    int (*set_mode)(void *ctx, enum usb_dr_mode mode), void *ctx);
 
 extern struct list_head usb_device_list;
diff --git a/include/video/backlight.h b/include/video/backlight.h
index 7810ec998e..b510de9d29 100644
--- a/include/video/backlight.h
+++ b/include/video/backlight.h
@@ -12,7 +12,7 @@ struct backlight_device {
 	int slew_time_ms; /* time to stretch brightness changes */
 	int (*brightness_set)(struct backlight_device *, int brightness);
 	struct list_head list;
-	struct device_d dev;
+	struct device dev;
 	struct device_node *node;
 };
 
diff --git a/include/video/mipi_dbi.h b/include/video/mipi_dbi.h
index 92fdc500d1..5452600693 100644
--- a/include/video/mipi_dbi.h
+++ b/include/video/mipi_dbi.h
@@ -89,7 +89,7 @@ int mipi_dbi_command_stackbuf(struct mipi_dbi *dbi, u8 cmd, const u8 *data,
 #define mipi_dbi_command(dbi, cmd, seq...) \
 ({ \
 	const u8 d[] = { seq }; \
-	struct device_d *dev = &(dbi)->spi->dev;	\
+	struct device *dev = &(dbi)->spi->dev;	\
 	int ret; \
 	ret = mipi_dbi_command_stackbuf(dbi, cmd, d, ARRAY_SIZE(d)); \
 	if (ret) \
diff --git a/include/watchdog.h b/include/watchdog.h
index 281885686e..2a0e9d1b41 100644
--- a/include/watchdog.h
+++ b/include/watchdog.h
@@ -18,8 +18,8 @@ struct device_node;
 struct watchdog {
 	int (*set_timeout)(struct watchdog *, unsigned);
 	const char *name;
-	struct device_d *hwdev;
-	struct device_d dev;
+	struct device *hwdev;
+	struct device dev;
 	unsigned int priority;
 	unsigned int timeout_max;
 	unsigned int timeout_cur;
diff --git a/lib/blobgen.c b/lib/blobgen.c
index 5a556a68ce..0a4e192a27 100644
--- a/lib/blobgen.c
+++ b/lib/blobgen.c
@@ -29,7 +29,7 @@ static struct blobgen *bg_default;
  * This registers a blob device. Returns 0 for success or a negative error
  * code otherwise.
  */
-int blob_gen_register(struct device_d *dev, struct blobgen *bg)
+int blob_gen_register(struct device *dev, struct blobgen *bg)
 {
 	int ret;
 
@@ -56,7 +56,7 @@ int blob_gen_register(struct device_d *dev, struct blobgen *bg)
  */
 struct blobgen *blobgen_get(const char *name)
 {
-	struct device_d *dev;
+	struct device *dev;
 	struct blobgen *bg;
 
 	if (!name)
diff --git a/lib/fonts/fonts.c b/lib/fonts/fonts.c
index 926f880128..e08b75fbcc 100644
--- a/lib/fonts/fonts.c
+++ b/lib/fonts/fonts.c
@@ -69,10 +69,10 @@ const struct font_desc *find_font_enum(int n)
 	return NULL;
 }
 
-struct param_d *add_param_font(struct device_d *dev,
-		int (*set)(struct param_d *p, void *priv),
-		int (*get)(struct param_d *p, void *priv),
-		int *value, void *priv)
+struct param_d *add_param_font(struct device *dev,
+			       int (*set)(struct param_d *p, void *priv),
+			       int (*get)(struct param_d *p, void *priv),
+			       int *value, void *priv)
 {
 	struct font_desc *f;
 	int num_fonts = 0;
diff --git a/lib/hexdump.c b/lib/hexdump.c
index a71474a553..ae078536e3 100644
--- a/lib/hexdump.c
+++ b/lib/hexdump.c
@@ -237,7 +237,7 @@ EXPORT_SYMBOL(hex_dump_to_buffer);
  * Example output using %DUMP_PREFIX_ADDRESS and 4-byte mode:
  * ffffffff88089af0: 73727170 77767574 7b7a7978 7f7e7d7c  pqrstuvwxyz{|}~.
  */
-void dev_print_hex_dump(struct device_d *dev, const char *level,
+void dev_print_hex_dump(struct device *dev, const char *level,
 			const char *prefix_str, int prefix_type, int rowsize,
 			int groupsize, const void *buf, size_t len, bool ascii)
 {
diff --git a/lib/parameter.c b/lib/parameter.c
index 6642d73b6c..aac33e3a19 100644
--- a/lib/parameter.c
+++ b/lib/parameter.c
@@ -49,7 +49,7 @@ const char *get_param_type(struct param_d *param)
 	return param_type_string[param->type];
 }
 
-struct param_d *get_param_by_name(struct device_d *dev, const char *name)
+struct param_d *get_param_by_name(struct device *dev, const char *name)
 {
 	struct param_d *p;
 
@@ -67,7 +67,7 @@ struct param_d *get_param_by_name(struct device_d *dev, const char *name)
  * @param name	The name of the parameter
  * @return	The value
  */
-const char *dev_get_param(struct device_d *dev, const char *name)
+const char *dev_get_param(struct device *dev, const char *name)
 {
 	struct param_d *param = get_param_by_name(dev, name);
 
@@ -85,7 +85,7 @@ const char *dev_get_param(struct device_d *dev, const char *name)
  * @param name	The name of the parameter
  * @param val	The new value of the parameter
  */
-int dev_set_param(struct device_d *dev, const char *name, const char *val)
+int dev_set_param(struct device *dev, const char *name, const char *val)
 {
 	struct param_d *param;
 	int ret;
@@ -125,8 +125,8 @@ int dev_set_param(struct device_d *dev, const char *name, const char *val)
  * used during deregistration of the parameter to free the alloctated
  * memory.
  */
-int dev_param_set_generic(struct device_d *dev, struct param_d *p,
-		const char *val)
+int dev_param_set_generic(struct device *dev, struct param_d *p,
+			  const char *val)
 {
 	free(p->value);
 	if (!val) {
@@ -137,7 +137,7 @@ int dev_param_set_generic(struct device_d *dev, struct param_d *p,
 	return p->value ? 0 : -ENOMEM;
 }
 
-static const char *param_get_generic(struct device_d *dev, struct param_d *p)
+static const char *param_get_generic(struct device *dev, struct param_d *p)
 {
 	return p->value ? p->value : "";
 }
@@ -150,10 +150,11 @@ static int compare(struct list_head *a, struct list_head *b)
 	return strcmp(na, nb);
 }
 
-static int __dev_add_param(struct param_d *param, struct device_d *dev, const char *name,
-		int (*set)(struct device_d *dev, struct param_d *p, const char *val),
-		const char *(*get)(struct device_d *dev, struct param_d *p),
-		unsigned long flags)
+static int __dev_add_param(struct param_d *param, struct device *dev,
+			   const char *name,
+			   int (*set)(struct device *dev, struct param_d *p, const char *val),
+			   const char *(*get)(struct device *dev, struct param_d *p),
+			   unsigned long flags)
 {
 	if (get_param_by_name(dev, name))
 		return -EEXIST;
@@ -193,10 +194,10 @@ static int __dev_add_param(struct param_d *param, struct device_d *dev, const ch
  * expect the parameter value to be a string which can be freed with free(). Do
  * not use static arrays when using the generic functions.
  */
-struct param_d *dev_add_param(struct device_d *dev, const char *name,
-		int (*set)(struct device_d *dev, struct param_d *p, const char *val),
-		const char *(*get)(struct device_d *dev, struct param_d *param),
-		unsigned long flags)
+struct param_d *dev_add_param(struct device *dev, const char *name,
+			      int (*set)(struct device *dev, struct param_d *p, const char *val),
+			      const char *(*get)(struct device *dev, struct param_d *param),
+			      unsigned long flags)
 {
 	struct param_d *param;
 	int ret;
@@ -218,7 +219,8 @@ struct param_d *dev_add_param(struct device_d *dev, const char *name,
  * @param name	The name of the parameter
  * @param value	The value of the parameter
  */
-struct param_d *dev_add_param_fixed(struct device_d *dev, const char *name, const char *value)
+struct param_d *dev_add_param_fixed(struct device *dev, const char *name,
+				    const char *value)
 {
 	struct param_d *param;
 	int ret;
@@ -248,7 +250,8 @@ static inline struct param_string *to_param_string(struct param_d *p)
 	return container_of(p, struct param_string, param);
 }
 
-static int param_string_set(struct device_d *dev, struct param_d *p, const char *val)
+static int param_string_set(struct device *dev, struct param_d *p,
+			    const char *val)
 {
 	struct param_string *ps = to_param_string(p);
 	int ret;
@@ -278,7 +281,7 @@ static int param_string_set(struct device_d *dev, struct param_d *p, const char
 	return ret;
 }
 
-static const char *param_string_get(struct device_d *dev, struct param_d *p)
+static const char *param_string_get(struct device *dev, struct param_d *p)
 {
 	struct param_string *ps = to_param_string(p);
 	int ret;
@@ -292,10 +295,10 @@ static const char *param_string_get(struct device_d *dev, struct param_d *p)
 	return *ps->value;
 }
 
-struct param_d *dev_add_param_string(struct device_d *dev, const char *name,
-		int (*set)(struct param_d *p, void *priv),
-		int (*get)(struct param_d *p, void *priv),
-		char **value, void *priv)
+struct param_d *dev_add_param_string(struct device *dev, const char *name,
+				     int (*set)(struct param_d *p, void *priv),
+				     int (*get)(struct param_d *p, void *priv),
+				     char **value, void *priv)
 {
 	struct param_string *ps;
 	struct param_d *p;
@@ -332,7 +335,8 @@ static inline struct param_int *to_param_int(struct param_d *p)
 	return container_of(p, struct param_int, param);
 }
 
-static int param_int_set(struct device_d *dev, struct param_d *p, const char *val)
+static int param_int_set(struct device *dev, struct param_d *p,
+			 const char *val)
 {
 	struct param_int *pi = to_param_int(p);
 	u8 value_save[pi->dsize];
@@ -373,7 +377,7 @@ static int param_int_set(struct device_d *dev, struct param_d *p, const char *va
 	return ret;
 }
 
-static const char *param_int_get(struct device_d *dev, struct param_d *p)
+static const char *param_int_get(struct device *dev, struct param_d *p)
 {
 	struct param_int *pi = to_param_int(p);
 	int ret;
@@ -423,10 +427,11 @@ int param_set_readonly(struct param_d *p, void *priv)
  * The set function can be used as a notifer when the variable is about
  * to be written. Can also be used to limit the value.
  */
-struct param_d *__dev_add_param_int(struct device_d *dev, const char *name,
-		int (*set)(struct param_d *p, void *priv),
-		int (*get)(struct param_d *p, void *priv),
-		void *value, enum param_type type, const char *format, void *priv)
+struct param_d *__dev_add_param_int(struct device *dev, const char *name,
+				    int (*set)(struct param_d *p, void *priv),
+				    int (*get)(struct param_d *p, void *priv),
+				    void *value, enum param_type type,
+				    const char *format, void *priv)
 {
 	struct param_int *pi;
 	struct param_d *p;
@@ -492,7 +497,8 @@ static inline struct param_enum *to_param_enum(struct param_d *p)
 	return container_of(p, struct param_enum, param);
 }
 
-static int param_enum_set(struct device_d *dev, struct param_d *p, const char *val)
+static int param_enum_set(struct device *dev, struct param_d *p,
+			  const char *val)
 {
 	struct param_enum *pe = to_param_enum(p);
 	int value_save = *pe->value;
@@ -520,7 +526,7 @@ static int param_enum_set(struct device_d *dev, struct param_d *p, const char *v
 	return ret;
 }
 
-static const char *param_enum_get(struct device_d *dev, struct param_d *p)
+static const char *param_enum_get(struct device *dev, struct param_d *p)
 {
 	struct param_enum *pe = to_param_enum(p);
 	int ret;
@@ -559,10 +565,11 @@ static void param_enum_info(struct param_d *p)
 	}
 }
 
-struct param_d *dev_add_param_enum(struct device_d *dev, const char *name,
-		int (*set)(struct param_d *p, void *priv),
-		int (*get)(struct param_d *p, void *priv),
-		int *value, const char * const *names, int num_names, void *priv)
+struct param_d *dev_add_param_enum(struct device *dev, const char *name,
+				   int (*set)(struct param_d *p, void *priv),
+				   int (*get)(struct param_d *p, void *priv),
+				   int *value, const char * const *names,
+				   int num_names, void *priv)
 {
 	struct param_enum *pe;
 	struct param_d *p;
@@ -596,17 +603,18 @@ static const char *const tristate_names[] = {
 	[PARAM_TRISTATE_FALSE] = "0",
 };
 
-struct param_d *dev_add_param_tristate(struct device_d *dev, const char *name,
-		int (*set)(struct param_d *p, void *priv),
-		int (*get)(struct param_d *p, void *priv),
-		int *value, void *priv)
+struct param_d *dev_add_param_tristate(struct device *dev, const char *name,
+				       int (*set)(struct param_d *p, void *priv),
+				       int (*get)(struct param_d *p, void *priv),
+				       int *value, void *priv)
 {
 	return dev_add_param_enum(dev, name, set, get, value, tristate_names,
 				  ARRAY_SIZE(tristate_names), priv);
 }
 
-struct param_d *dev_add_param_tristate_ro(struct device_d *dev, const char *name,
-		int *value)
+struct param_d *dev_add_param_tristate_ro(struct device *dev,
+					  const char *name,
+					  int *value)
 {
 	return dev_add_param_enum_ro(dev, name, value, tristate_names,
 				     ARRAY_SIZE(tristate_names));
@@ -626,7 +634,8 @@ static inline struct param_bitmask *to_param_bitmask(struct param_d *p)
 	return container_of(p, struct param_bitmask, param);
 }
 
-static int param_bitmask_set(struct device_d *dev, struct param_d *p, const char *val)
+static int param_bitmask_set(struct device *dev, struct param_d *p,
+			     const char *val)
 {
 	struct param_bitmask *pb = to_param_bitmask(p);
 	void *value_save;
@@ -672,7 +681,7 @@ out:
 	return ret;
 }
 
-static const char *param_bitmask_get(struct device_d *dev, struct param_d *p)
+static const char *param_bitmask_get(struct device *dev, struct param_d *p)
 {
 	struct param_bitmask *pb = to_param_bitmask(p);
 	int ret, bit;
@@ -711,10 +720,12 @@ static void param_bitmask_info(struct param_d *p)
 	}
 }
 
-struct param_d *dev_add_param_bitmask(struct device_d *dev, const char *name,
-		int (*set)(struct param_d *p, void *priv),
-		int (*get)(struct param_d *p, void *priv),
-		unsigned long *value, const char * const *names, int max, void *priv)
+struct param_d *dev_add_param_bitmask(struct device *dev, const char *name,
+				      int (*set)(struct param_d *p, void *priv),
+				      int (*get)(struct param_d *p, void *priv),
+				      unsigned long *value,
+				      const char * const *names, int max,
+				      void *priv)
 {
 	struct param_bitmask *pb;
 	struct param_d *p;
@@ -760,7 +771,8 @@ static inline struct param_ip *to_param_ip(struct param_d *p)
 	return container_of(p, struct param_ip, param);
 }
 
-static int param_ip_set(struct device_d *dev, struct param_d *p, const char *val)
+static int param_ip_set(struct device *dev, struct param_d *p,
+			const char *val)
 {
 	struct param_ip *pi = to_param_ip(p);
 	IPaddr_t ip_save = *pi->ip;
@@ -783,7 +795,7 @@ static int param_ip_set(struct device_d *dev, struct param_d *p, const char *val
 	return ret;
 }
 
-static const char *param_ip_get(struct device_d *dev, struct param_d *p)
+static const char *param_ip_get(struct device *dev, struct param_d *p)
 {
 	struct param_ip *pi = to_param_ip(p);
 	int ret;
@@ -800,10 +812,10 @@ static const char *param_ip_get(struct device_d *dev, struct param_d *p)
 	return p->value;
 }
 
-struct param_d *dev_add_param_ip(struct device_d *dev, const char *name,
-		int (*set)(struct param_d *p, void *priv),
-		int (*get)(struct param_d *p, void *priv),
-		IPaddr_t *ip, void *priv)
+struct param_d *dev_add_param_ip(struct device *dev, const char *name,
+				 int (*set)(struct param_d *p, void *priv),
+				 int (*get)(struct param_d *p, void *priv),
+				 IPaddr_t *ip, void *priv)
 {
 	struct param_ip *pi;
 	int ret;
@@ -841,7 +853,8 @@ static inline struct param_mac *to_param_mac(struct param_d *p)
 	return container_of(p, struct param_mac, param);
 }
 
-static int param_mac_set(struct device_d *dev, struct param_d *p, const char *val)
+static int param_mac_set(struct device *dev, struct param_d *p,
+			 const char *val)
 {
 	struct param_mac *pm = to_param_mac(p);
 	char mac_save[6];
@@ -870,7 +883,7 @@ out:
 	return ret;
 }
 
-static const char *param_mac_get(struct device_d *dev, struct param_d *p)
+static const char *param_mac_get(struct device *dev, struct param_d *p)
 {
 	struct param_mac *pm = to_param_mac(p);
 	int ret;
@@ -886,10 +899,10 @@ static const char *param_mac_get(struct device_d *dev, struct param_d *p)
 	return p->value;
 }
 
-struct param_d *dev_add_param_mac(struct device_d *dev, const char *name,
-		int (*set)(struct param_d *p, void *priv),
-		int (*get)(struct param_d *p, void *priv),
-		u8 *mac, void *priv)
+struct param_d *dev_add_param_mac(struct device *dev, const char *name,
+				  int (*set)(struct param_d *p, void *priv),
+				  int (*get)(struct param_d *p, void *priv),
+				  u8 *mac, void *priv)
 {
 	struct param_mac *pm;
 	int ret;
@@ -925,7 +938,8 @@ static inline struct param_file_list *to_param_file_list(struct param_d *p)
 	return container_of(p, struct param_file_list, param);
 }
 
-static int param_file_list_set(struct device_d *dev, struct param_d *p, const char *val)
+static int param_file_list_set(struct device *dev, struct param_d *p,
+			       const char *val)
 {
 	struct param_file_list *pfl = to_param_file_list(p);
 	struct file_list *file_list_save = *pfl->file_list;
@@ -955,7 +969,7 @@ out:
 	return ret;
 }
 
-static const char *param_file_list_get(struct device_d *dev, struct param_d *p)
+static const char *param_file_list_get(struct device *dev, struct param_d *p)
 {
 	struct param_file_list *pfl = to_param_file_list(p);
 	int ret;
@@ -971,10 +985,11 @@ static const char *param_file_list_get(struct device_d *dev, struct param_d *p)
 	return p->value;
 }
 
-struct param_d *dev_add_param_file_list(struct device_d *dev, const char *name,
-		int (*set)(struct param_d *p, void *priv),
-		int (*get)(struct param_d *p, void *priv),
-		struct file_list **file_list, void *priv)
+struct param_d *dev_add_param_file_list(struct device *dev, const char *name,
+					int (*set)(struct param_d *p, void *priv),
+					int (*get)(struct param_d *p, void *priv),
+					struct file_list **file_list,
+					void *priv)
 {
 	struct param_file_list *pfl;
 	int ret;
@@ -1015,7 +1030,7 @@ void dev_remove_param(struct param_d *p)
  * memory
  * @param dev	The device
  */
-void dev_remove_parameters(struct device_d *dev)
+void dev_remove_parameters(struct device *dev)
 {
 	struct param_d *p, *n;
 
diff --git a/net/eth.c b/net/eth.c
index 82fd629905..863d0a0466 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -385,7 +385,7 @@ static const char * const eth_mode_names[] = {
 
 int eth_register(struct eth_device *edev)
 {
-	struct device_d *dev = &edev->dev;
+	struct device *dev = &edev->dev;
 	unsigned char ethaddr[ETH_ALEN];
 	int ret, found = 0;
 
-- 
2.30.2



