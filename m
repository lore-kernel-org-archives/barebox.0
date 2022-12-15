Delivery-date: Thu, 15 Dec 2022 10:16:46 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p5kM9-004Wpb-Ot
	for lore@lore.pengutronix.de; Thu, 15 Dec 2022 10:16:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p5kM7-0007eS-Fo
	for lore@pengutronix.de; Thu, 15 Dec 2022 10:16:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=emGyq4T4NJq00EC0tFVTfOiLwGWeZF+r6AovpnFGWs8=; b=IaXUhbuRrbAwGg28KoLH/ziEm0
	NQ+To4218oTdEvCxmstU14Ui7ELvWRK2uQEJeZ+xH1mW6vlBj8lWtCf1dwIvN5Ai7E49lWnTOjgvC
	AcETuIQByeFct93GAFcA3x2On9pnzWTZRPrkPgXt1Ld/9KqHOR6+BPsxRHLhXEr3XPQAYcDaZnhVF
	bc0FtTZJl58mingBCPGoYA2aH6GzzdLTKQyrI8gvmHYYeZrt/4vSAX2TWoJXac5gBocKJfHeAjgIp
	Yd+NWGTTvBZIJisX38KWublwhL2EeUpyqSSP2vIaZrgAqUIrO1btgOmoQUuYr8XFKS8tgsBjePXSM
	TXq84iwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5kKK-0087Z5-5i; Thu, 15 Dec 2022 09:14:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5kKD-0087VN-LM
	for barebox@lists.infradead.org; Thu, 15 Dec 2022 09:14:49 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1p5kKB-0007BJ-R1; Thu, 15 Dec 2022 10:14:43 +0100
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1p5kKB-0001ee-Jz; Thu, 15 Dec 2022 10:14:43 +0100
Date: Thu, 15 Dec 2022 10:14:43 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20221215091443.cgumnplufkfvy62k@pengutronix.de>
References: <20221214123512.189688-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221214123512.189688-1-s.hauer@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221215_011446_243597_56CAEDAC 
X-CRM114-Status: GOOD (  13.29  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/5] Rename some structs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Sascha,

On 22-12-14, Sascha Hauer wrote:
> Several barebox struct names have a '_d' suffix. The suffix was
> originally added to struct device_d in case we may want to import
> Linux struct device as a separate struct. That never happened, instead
> barebox struct device_d basically is the same as Linux struct device,
> so rename it accordingly. While at it remove the unnecessary '_d'
> suffixes from other struct names as well.
> 
> Also, Linux uses 'of_node' for the device_node * inside struct device.
> Rename this in barebox to match the Linux name to make porting code
> from Linux easier.

Thanks for this nice series :)

> Sascha
> 
> Sascha Hauer (5):
>   Rename device_d::device_node to device_d::of_node
>   Rename struct device_d to device
>   Rename struct driver_d to driver
>   Rename struct fs_device_d to fs_device
>   Rename struct fs_driver_d to fs_driver

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

>  Documentation/devel/porting.rst               |   3 +-
>  arch/arm/boards/animeo_ip/init.c              |   4 +-
>  arch/arm/boards/at91sam9m10ihd/hw_version.c   |   2 +-
>  arch/arm/boards/at91sam9x5ek/hw_version.c     |   2 +-
>  arch/arm/boards/embest-marsboard/board.c      |   4 +-
>  .../boards/freescale-mx6-sabrelite/board.c    |   4 +-
>  arch/arm/boards/grinn-liteboard/board.c       |   2 +-
>  arch/arm/boards/innocomm-imx8mm-wb15/board.c  |   4 +-
>  arch/arm/boards/kindle-mx50/board.c           |   2 +-
>  arch/arm/boards/lxa-mc1/board.c               |   4 +-
>  arch/arm/boards/mnt-reform/board.c            |   4 +-
>  arch/arm/boards/nhk8815/setup.c               |   2 +-
>  arch/arm/boards/nxp-imx8mm-evk/board.c        |   4 +-
>  arch/arm/boards/nxp-imx8mn-evk/board.c        |   4 +-
>  arch/arm/boards/nxp-imx8mp-evk/board.c        |   4 +-
>  arch/arm/boards/phytec-phycore-imx27/pcm970.c |   2 +-
>  .../boards/phytec-phycore-stm32mp1/board.c    |   4 +-
>  arch/arm/boards/phytec-som-imx6/board.c       |   4 +-
>  arch/arm/boards/pine64-quartz64/board.c       |   4 +-
>  arch/arm/boards/protonic-imx6/board.c         |  22 +-
>  arch/arm/boards/protonic-imx8m/board.c        |   4 +-
>  arch/arm/boards/protonic-stm32mp1/board.c     |   4 +-
>  arch/arm/boards/radxa-rock3/board.c           |   4 +-
>  arch/arm/boards/raspberry-pi/rpi-common.c     |   6 +-
>  .../boards/rockchip-rk3568-bpi-r2pro/board.c  |   4 +-
>  arch/arm/boards/rockchip-rk3568-evb/board.c   |   4 +-
>  arch/arm/boards/sama5d3_xplained/board.c      |   4 +-
>  arch/arm/boards/sama5d3xek/hw_version.c       |   2 +-
>  arch/arm/boards/seeed-odyssey/board.c         |   4 +-
>  arch/arm/boards/skov-arm9cpu/board.c          |   4 +-
>  arch/arm/boards/skov-imx6/board.c             |  10 +-
>  arch/arm/boards/stm32mp15x-ev1/board.c        |   4 +-
>  arch/arm/boards/stm32mp15xx-dkx/board.c       |   4 +-
>  arch/arm/boards/tqma6ulx/board.c              |   4 +-
>  arch/arm/boards/tqma8mpxl/board.c             |   4 +-
>  arch/arm/boards/usb-a926x/init.c              |   2 +-
>  arch/arm/boards/vexpress/init.c               |   4 +-
>  arch/arm/boards/webasto-ccbv2/board.c         |   4 +-
>  arch/arm/boards/zii-common/board.c            |   2 +-
>  arch/arm/boards/zii-common/switch-cmd.c       |   2 +-
>  arch/arm/boards/zii-imx8mq-dev/board.c        |   2 +-
>  arch/arm/cpu/psci-client.c                    |   6 +-
>  arch/arm/mach-at91/at91sam9260_devices.c      |   2 +-
>  arch/arm/mach-at91/at91sam9261_devices.c      |   2 +-
>  arch/arm/mach-at91/at91sam9_rst.c             |   6 +-
>  arch/arm/mach-at91/ddramc.c                   |   4 +-
>  arch/arm/mach-at91/generic.h                  |   8 +-
>  arch/arm/mach-at91/include/mach/board.h       |   4 +-
>  arch/arm/mach-at91/sam9_smc.c                 |   4 +-
>  arch/arm/mach-at91/setup.c                    |   2 +-
>  arch/arm/mach-clps711x/clock.c                |   6 +-
>  arch/arm/mach-clps711x/common.c               |  14 +-
>  arch/arm/mach-imx/devices.c                   |  36 +--
>  arch/arm/mach-imx/esdctl.c                    |   4 +-
>  arch/arm/mach-imx/iim.c                       |  12 +-
>  arch/arm/mach-imx/include/mach/devices-imx1.h |   4 +-
>  .../arm/mach-imx/include/mach/devices-imx21.h |  12 +-
>  .../arm/mach-imx/include/mach/devices-imx25.h |  32 +-
>  .../arm/mach-imx/include/mach/devices-imx27.h |  34 +--
>  .../arm/mach-imx/include/mach/devices-imx31.h |  36 +--
>  .../arm/mach-imx/include/mach/devices-imx35.h |  28 +-
>  .../arm/mach-imx/include/mach/devices-imx50.h |  32 +-
>  .../arm/mach-imx/include/mach/devices-imx51.h |  38 +--
>  .../arm/mach-imx/include/mach/devices-imx53.h |  34 +--
>  arch/arm/mach-imx/include/mach/devices-imx6.h |  36 +--
>  arch/arm/mach-imx/include/mach/devices.h      |  34 +--
>  arch/arm/mach-imx/src.c                       |   4 +-
>  arch/arm/mach-mxs/include/mach/devices.h      |   8 +-
>  arch/arm/mach-mxs/ocotp.c                     |   6 +-
>  arch/arm/mach-omap/am33xx_generic.c           |   2 +-
>  arch/arm/mach-omap/am33xx_scrm.c              |   4 +-
>  arch/arm/mach-omap/include/mach/devices.h     |   4 +-
>  .../mach-omap/include/mach/omap3-devices.h    |  30 +-
>  .../mach-omap/include/mach/omap4-devices.h    |  26 +-
>  arch/arm/mach-omap/omap_devices.c             |   6 +-
>  arch/arm/mach-pxa/devices.c                   |  12 +-
>  arch/arm/mach-pxa/include/mach/devices.h      |  10 +-
>  arch/arm/mach-pxa/include/mach/mci_pxa2xx.h   |   4 +-
>  arch/arm/mach-socfpga/cyclone5-generic.c      |   6 +-
>  arch/arm/mach-stm32mp/ddrctrl.c               |   4 +-
>  arch/arm/mach-tegra/tegra20-pmc.c             |   4 +-
>  arch/arm/mach-tegra/tegra20-timer.c           |   4 +-
>  arch/arm/mach-zynqmp/firmware-zynqmp.c        |   8 +-
>  arch/kvx/lib/poweroff.c                       |   4 +-
>  arch/mips/mach-ar231x/ar231x_reset.c          |   4 +-
>  arch/mips/mach-ath79/art.c                    |  12 +-
>  arch/mips/mach-xburst/include/mach/devices.h  |   2 +-
>  arch/riscv/boards/beaglev/board.c             |   4 +-
>  arch/riscv/boards/riscvemu/board.c            |   6 +-
>  arch/riscv/cpu/core.c                         |  12 +-
>  arch/sandbox/board/board.c                    |  10 +-
>  arch/sandbox/board/console.c                  |   4 +-
>  arch/sandbox/board/devices.c                  |   4 +-
>  arch/sandbox/board/hostfile.c                 |   8 +-
>  arch/sandbox/board/led.c                      |   8 +-
>  arch/sandbox/board/power.c                    |   7 +-
>  arch/sandbox/board/watchdog.c                 |   9 +-
>  .../sandbox/mach-sandbox/include/mach/linux.h |   4 +-
>  arch/x86/mach-efi/clocksource.c               |   2 +-
>  commands/detect.c                             |   2 +-
>  commands/devinfo.c                            |  12 +-
>  commands/devunbind.c                          |   2 +-
>  commands/drvinfo.c                            |   4 +-
>  commands/gpio.c                               |   2 +-
>  commands/miitool.c                            |   2 +-
>  commands/mount.c                              |   6 +-
>  common/blspec.c                               |  12 +-
>  common/boards/qemu-virt/board.c               |   6 +-
>  common/complete.c                             |   6 +-
>  common/console.c                              |   6 +-
>  common/console_common.c                       |   6 +-
>  common/efi/payload/init.c                     |   2 +-
>  common/env.c                                  |   4 +-
>  common/globalvar.c                            |  32 +-
>  common/oftree.c                               |   6 +-
>  common/partitions/efi.c                       |   3 +-
>  common/reset_source.c                         |  10 +-
>  common/serdev.c                               |   4 +-
>  common/state/backend_bucket_circular.c        |   4 +-
>  common/state/backend_bucket_direct.c          |   4 +-
>  common/state/backend_format_dtb.c             |   4 +-
>  common/state/backend_format_raw.c             |   4 +-
>  common/state/state.h                          |  14 +-
>  common/usbgadget.c                            |   2 +-
>  drivers/aiodev/am335x_adc.c                   |   6 +-
>  drivers/aiodev/core.c                         |  12 +-
>  drivers/aiodev/imx7d_adc.c                    |  14 +-
>  drivers/aiodev/imx_thermal.c                  |   8 +-
>  drivers/aiodev/lm75.c                         |   6 +-
>  drivers/aiodev/mc13xxx_adc.c                  |   2 +-
>  drivers/aiodev/qoriq_thermal.c                |  10 +-
>  drivers/aiodev/rockchip_saradc.c              |   4 +-
>  drivers/aiodev/st_gyro.c                      |   4 +-
>  drivers/aiodev/stm32-adc-core.c               |   8 +-
>  drivers/aiodev/stm32-adc.c                    |  22 +-
>  drivers/amba/bus.c                            |   8 +-
>  drivers/ata/ahci.c                            |   8 +-
>  drivers/ata/ahci.h                            |   4 +-
>  drivers/ata/disk_ata_drive.c                  |   6 +-
>  drivers/ata/intf_platform_ide.c               |   6 +-
>  drivers/ata/pata-imx.c                        |   8 +-
>  drivers/ata/sata-imx.c                        |   4 +-
>  drivers/ata/sata_mv.c                         |   4 +-
>  drivers/base/bus.c                            |  10 +-
>  drivers/base/driver.c                         |  95 +++---
>  drivers/base/platform.c                       |   8 +-
>  drivers/base/power.c                          |  10 +-
>  drivers/base/regmap/internal.h                |   4 +-
>  drivers/base/regmap/regmap-mmio.c             |   8 +-
>  drivers/base/regmap/regmap.c                  |  12 +-
>  drivers/base/resource.c                       |  28 +-
>  drivers/block/efi-block-io.c                  |   8 +-
>  drivers/bus/acpi.c                            |  16 +-
>  drivers/bus/imx-weim.c                        |  12 +-
>  drivers/bus/omap-gpmc.c                       |  16 +-
>  drivers/bus/ti-sysc.c                         |   8 +-
>  drivers/clk/bcm/clk-bcm2835-aux.c             |   8 +-
>  drivers/clk/clk-ar933x.c                      |   6 +-
>  drivers/clk/clk-ar9344.c                      |   6 +-
>  drivers/clk/clk-bulk.c                        |  10 +-
>  drivers/clk/clk-composite.c                   |  18 +-
>  drivers/clk/clk-divider.c                     |  44 +--
>  drivers/clk/clk-fixed-factor.c                |  16 +-
>  drivers/clk/clk-fixed.c                       |   2 +-
>  drivers/clk/clk-gate.c                        |   8 +-
>  drivers/clk/clk-mux.c                         |  22 +-
>  drivers/clk/clk-rpi.c                         |  10 +-
>  drivers/clk/clk-scmi.c                        |   9 +-
>  drivers/clk/clk-stm32f4.c                     |  23 +-
>  drivers/clk/clk-stm32mp1.c                    |  50 +--
>  drivers/clk/clk.c                             |   2 +-
>  drivers/clk/clkdev.c                          |   8 +-
>  drivers/clk/imx/clk-imx1.c                    |   4 +-
>  drivers/clk/imx/clk-imx21.c                   |   4 +-
>  drivers/clk/imx/clk-imx25.c                   |   4 +-
>  drivers/clk/imx/clk-imx27.c                   |   4 +-
>  drivers/clk/imx/clk-imx31.c                   |   4 +-
>  drivers/clk/imx/clk-imx35.c                   |   4 +-
>  drivers/clk/imx/clk-imx5.c                    |  27 +-
>  drivers/clk/imx/clk-imx6.c                    |   8 +-
>  drivers/clk/imx/clk-imx6sl.c                  |   6 +-
>  drivers/clk/imx/clk-imx6sx.c                  |   6 +-
>  drivers/clk/imx/clk-imx6ul.c                  |   6 +-
>  drivers/clk/imx/clk-imx7.c                    |   8 +-
>  drivers/clk/loongson/clk-ls1b200.c            |   6 +-
>  drivers/clk/mvebu/common.c                    |  12 +-
>  drivers/clk/mvebu/corediv.c                   |   6 +-
>  drivers/clk/mxs/clk-imx23.c                   |   4 +-
>  drivers/clk/mxs/clk-imx28.c                   |  11 +-
>  drivers/clk/rockchip/clk-rk3399.c             |   6 +-
>  drivers/clk/rockchip/clk-rk3568.c             |   6 +-
>  drivers/clk/sifive/sifive-prci.c              |  10 +-
>  drivers/clk/socfpga/clk.c                     |   9 +-
>  drivers/clk/starfive/jh7100-clkgen.c          |   8 +-
>  drivers/clk/tegra/clk-tegra124.c              |   8 +-
>  drivers/clk/tegra/clk-tegra20.c               |   8 +-
>  drivers/clk/tegra/clk-tegra30.c               |   8 +-
>  drivers/clk/zynq/clkc.c                       |   8 +-
>  drivers/clk/zynqmp/clkc.c                     |  10 +-
>  drivers/clocksource/arm_architected_timer.c   |   4 +-
>  drivers/clocksource/arm_global_timer.c        |   4 +-
>  drivers/clocksource/arm_smp_twd.c             |   4 +-
>  drivers/clocksource/armv7m_systick.c          |   6 +-
>  drivers/clocksource/bcm2835.c                 |   6 +-
>  drivers/clocksource/clps711x.c                |   6 +-
>  drivers/clocksource/digic.c                   |   4 +-
>  drivers/clocksource/dw_apb_timer.c            |   6 +-
>  drivers/clocksource/efi.c                     |   4 +-
>  drivers/clocksource/efi_x86.c                 |   4 +-
>  drivers/clocksource/kvx_timer.c               |   4 +-
>  drivers/clocksource/mvebu.c                   |   6 +-
>  drivers/clocksource/nomadik.c                 |   4 +-
>  drivers/clocksource/orion.c                   |   4 +-
>  drivers/clocksource/rk_timer.c                |   4 +-
>  drivers/clocksource/timer-atmel-pit.c         |   4 +-
>  drivers/clocksource/timer-clint.c             |   4 +-
>  drivers/clocksource/timer-imx-gpt.c           |   4 +-
>  drivers/clocksource/timer-riscv.c             |   4 +-
>  drivers/clocksource/timer-stm32.c             |   4 +-
>  drivers/clocksource/timer-ti-32k.c            |   4 +-
>  drivers/clocksource/timer-ti-dm.c             |   4 +-
>  drivers/clocksource/uemd.c                    |   4 +-
>  drivers/crypto/caam/caam-blobgen.c            |   8 +-
>  drivers/crypto/caam/caamrng.c                 |  10 +-
>  drivers/crypto/caam/ctrl.c                    |  18 +-
>  drivers/crypto/caam/error.c                   |  16 +-
>  drivers/crypto/caam/error.h                   |   2 +-
>  drivers/crypto/caam/intern.h                  |  14 +-
>  drivers/crypto/caam/jr.c                      |  12 +-
>  drivers/crypto/caam/jr.h                      |   4 +-
>  drivers/crypto/caam/rng_self_test.c           |   6 +-
>  drivers/crypto/caam/rng_self_test.h           |   3 +-
>  drivers/crypto/imx-scc/scc-blobgen.c          |   2 +-
>  drivers/crypto/imx-scc/scc.c                  |   6 +-
>  drivers/crypto/imx-scc/scc.h                  |   2 +-
>  drivers/dma/apbh_dma.c                        |   4 +-
>  drivers/dma/map.c                             |   9 +-
>  drivers/eeprom/at24.c                         |  18 +-
>  drivers/eeprom/at25.c                         |  12 +-
>  drivers/efi/efi-device.c                      |  20 +-
>  drivers/firmware/altera_serial.c              |  22 +-
>  drivers/firmware/arm_scmi/base.c              |   4 +-
>  drivers/firmware/arm_scmi/bus.c               |  16 +-
>  drivers/firmware/arm_scmi/common.h            |  12 +-
>  drivers/firmware/arm_scmi/driver.c            |  26 +-
>  drivers/firmware/arm_scmi/smc.c               |  12 +-
>  drivers/firmware/arm_scmi/voltage.c           |   4 +-
>  drivers/firmware/socfpga.c                    |  10 +-
>  drivers/firmware/zynqmp-fpga.c                |  16 +-
>  drivers/fpga/fpga-bridge.c                    |   8 +-
>  drivers/fpga/socfpga-fpga2sdram-bridge.c      |   6 +-
>  drivers/fpga/socfpga-hps2fpga-bridge.c        |  10 +-
>  drivers/gpio/gpio-74164.c                     |  10 +-
>  drivers/gpio/gpio-74xx-mmio.c                 |   4 +-
>  drivers/gpio/gpio-ath79.c                     |   6 +-
>  drivers/gpio/gpio-clps711x.c                  |   6 +-
>  drivers/gpio/gpio-davinci.c                   |   6 +-
>  drivers/gpio/gpio-digic.c                     |   4 +-
>  drivers/gpio/gpio-dw.c                        |  10 +-
>  drivers/gpio/gpio-generic.c                   |  18 +-
>  drivers/gpio/gpio-imx.c                       |   6 +-
>  drivers/gpio/gpio-jz4740.c                    |   4 +-
>  drivers/gpio/gpio-latch.c                     |   6 +-
>  drivers/gpio/gpio-libftdi1.c                  |  12 +-
>  drivers/gpio/gpio-malta-fpga-i2c.c            |   4 +-
>  drivers/gpio/gpio-mpc8xxx.c                   |   8 +-
>  drivers/gpio/gpio-mxs.c                       |   6 +-
>  drivers/gpio/gpio-omap.c                      |   6 +-
>  drivers/gpio/gpio-orion.c                     |   8 +-
>  drivers/gpio/gpio-pca953x.c                   |   4 +-
>  drivers/gpio/gpio-pcf857x.c                   |   6 +-
>  drivers/gpio/gpio-raspberrypi-exp.c           |   4 +-
>  drivers/gpio/gpio-sifive.c                    |   6 +-
>  drivers/gpio/gpio-starfive-vic.c              |   4 +-
>  drivers/gpio/gpio-stmpe.c                     |   4 +-
>  drivers/gpio/gpio-sx150x.c                    |   4 +-
>  drivers/gpio/gpio-tegra.c                     |   4 +-
>  drivers/gpio/gpio-vf610.c                     |  10 +-
>  drivers/gpio/gpio-zynq.c                      |   6 +-
>  drivers/gpio/gpiolib.c                        |  24 +-
>  drivers/hw_random/core.c                      |   6 +-
>  drivers/hw_random/dev-random.c                |   4 +-
>  drivers/hw_random/mxc-rngc.c                  |   6 +-
>  drivers/hw_random/starfive-vic-rng.c          |   6 +-
>  drivers/hw_random/stm32-rng.c                 |   6 +-
>  drivers/i2c/algos/i2c-algo-bit.c              |   2 +-
>  drivers/i2c/busses/i2c-at91.c                 |   8 +-
>  drivers/i2c/busses/i2c-bcm283x.c              |  12 +-
>  drivers/i2c/busses/i2c-cadence.c              |   8 +-
>  drivers/i2c/busses/i2c-designware.c           |   8 +-
>  drivers/i2c/busses/i2c-gpio.c                 |  10 +-
>  drivers/i2c/busses/i2c-imx.c                  |  23 +-
>  drivers/i2c/busses/i2c-mv64xxx.c              |  12 +-
>  drivers/i2c/busses/i2c-omap.c                 |  10 +-
>  drivers/i2c/busses/i2c-rockchip.c             |  22 +-
>  drivers/i2c/busses/i2c-stm32.c                |  14 +-
>  drivers/i2c/busses/i2c-tegra.c                |  12 +-
>  drivers/i2c/busses/i2c-versatile.c            |   6 +-
>  drivers/i2c/i2c-mux.c                         |  10 +-
>  drivers/i2c/i2c.c                             |  28 +-
>  drivers/i2c/muxes/i2c-mux-pca954x.c           |   8 +-
>  drivers/input/gpio_keys.c                     |  14 +-
>  drivers/input/imx_keypad.c                    |   6 +-
>  drivers/input/matrix-keymap.c                 |  13 +-
>  drivers/input/qt1070.c                        |   6 +-
>  drivers/input/twl6030_pwrbtn.c                |   4 +-
>  drivers/input/virtio_input.c                  |   2 +-
>  drivers/led/led-gpio.c                        |   8 +-
>  drivers/led/led-pca955x.c                     |   6 +-
>  drivers/led/led-pwm.c                         |   6 +-
>  drivers/mci/arasan-sdhci.c                    |   8 +-
>  drivers/mci/atmel-mci-regs.h                  |   4 +-
>  drivers/mci/atmel-sdhci.c                     |   8 +-
>  drivers/mci/atmel-sdhci.h                     |   2 +-
>  drivers/mci/atmel_mci.c                       |   8 +-
>  drivers/mci/atmel_mci_common.c                |   2 +-
>  drivers/mci/bcm2835-sdhost.c                  |   6 +-
>  drivers/mci/dove-sdhci.c                      |   6 +-
>  drivers/mci/dw_mmc.c                          |  27 +-
>  drivers/mci/imx-esdhc.c                       |   6 +-
>  drivers/mci/imx-esdhc.h                       |   2 +-
>  drivers/mci/imx.c                             |   6 +-
>  drivers/mci/mci-bcm2835.c                     |   8 +-
>  drivers/mci/mci-core.c                        |  22 +-
>  drivers/mci/mci_spi.c                         |   8 +-
>  drivers/mci/mmci.c                            |   8 +-
>  drivers/mci/mxs.c                             |   8 +-
>  drivers/mci/omap_hsmmc.c                      |   8 +-
>  drivers/mci/pxamci.c                          |   6 +-
>  drivers/mci/rockchip-dwcmshc-sdhci.c          |   6 +-
>  drivers/mci/s3c.c                             |  11 +-
>  drivers/mci/sdhci.c                           |   8 +-
>  drivers/mci/stm32_sdmmc2.c                    |   8 +-
>  drivers/mci/tegra-sdmmc.c                     |  12 +-
>  drivers/memory/mc-tegra124.c                  |   4 +-
>  drivers/mfd/act8846.c                         |   4 +-
>  drivers/mfd/atmel-flexcom.c                   |   8 +-
>  drivers/mfd/axp20x-i2c.c                      |   4 +-
>  drivers/mfd/axp20x.c                          |   6 +-
>  drivers/mfd/core.c                            |   5 +-
>  drivers/mfd/da9053.c                          |  10 +-
>  drivers/mfd/da9063.c                          |  14 +-
>  drivers/mfd/lp3972.c                          |   4 +-
>  drivers/mfd/mc13xxx.c                         |  10 +-
>  drivers/mfd/mc34704.c                         |   4 +-
>  drivers/mfd/mc9sdz60.c                        |   4 +-
>  drivers/mfd/rave-sp.c                         |  24 +-
>  drivers/mfd/rk808.c                           |   6 +-
>  drivers/mfd/rn5t568.c                         |  11 +-
>  drivers/mfd/stm32-timers.c                    |   6 +-
>  drivers/mfd/stmpe-i2c.c                       |  10 +-
>  drivers/mfd/stpmic1.c                         |   6 +-
>  drivers/mfd/superio.c                         |   4 +-
>  drivers/mfd/syscon.c                          |   6 +-
>  drivers/mfd/twl4030.c                         |   4 +-
>  drivers/mfd/twl6030.c                         |   4 +-
>  drivers/misc/jtag.c                           |   8 +-
>  drivers/misc/mem.c                            |   6 +-
>  drivers/misc/sram.c                           |   4 +-
>  drivers/misc/starfive-pwrseq.c                |   6 +-
>  drivers/misc/state.c                          |   6 +-
>  drivers/misc/storage-by-uuid.c                |  12 +-
>  drivers/misc/ubootvar.c                       |  20 +-
>  drivers/mtd/core.c                            |   2 +-
>  drivers/mtd/devices/docg3.c                   |   6 +-
>  drivers/mtd/devices/docg3.h                   |   2 +-
>  drivers/mtd/devices/m25p80.c                  |  12 +-
>  drivers/mtd/devices/mtd_dataflash.c           |   4 +-
>  drivers/mtd/devices/mtdram.c                  |   8 +-
>  drivers/mtd/nand/atmel_nand.c                 |  16 +-
>  drivers/mtd/nand/denali.h                     |   2 +-
>  drivers/mtd/nand/nand_denali_dt.c             |   6 +-
>  drivers/mtd/nand/nand_fsl_ifc.c               |   8 +-
>  drivers/mtd/nand/nand_imx.c                   |   8 +-
>  drivers/mtd/nand/nand_mrvl_nfc.c              |  10 +-
>  drivers/mtd/nand/nand_mxs.c                   |  11 +-
>  drivers/mtd/nand/nand_omap_gpmc.c             |   6 +-
>  drivers/mtd/nand/nand_orion.c                 |   6 +-
>  drivers/mtd/nand/nand_s3c24xx.c               |   6 +-
>  drivers/mtd/nand/nomadik_nand.c               |   4 +-
>  drivers/mtd/nand/omap_elm.c                   |   6 +-
>  drivers/mtd/nor/cfi_flash.c                   |   8 +-
>  drivers/mtd/nor/cfi_flash.h                   |   2 +-
>  drivers/mtd/spi-nor/cadence-quadspi.c         |  22 +-
>  drivers/mtd/spi-nor/spi-nor.c                 |   4 +-
>  drivers/mtd/ubi/ubi.h                         |   4 +-
>  drivers/net/ag71xx.c                          |  14 +-
>  drivers/net/ar231x.c                          |   4 +-
>  drivers/net/arc_emac.c                        |   4 +-
>  drivers/net/at91_ether.c                      |   4 +-
>  drivers/net/bcmgenet.c                        |  14 +-
>  drivers/net/cpsw.c                            |  36 +--
>  drivers/net/cs8900.c                          |   6 +-
>  drivers/net/davinci_emac.c                    |  16 +-
>  drivers/net/designware.c                      |  14 +-
>  drivers/net/designware.h                      |   4 +-
>  drivers/net/designware_eqos.c                 |  30 +-
>  drivers/net/designware_eqos.h                 |   8 +-
>  drivers/net/designware_generic.c              |   4 +-
>  drivers/net/designware_rockchip.c             |  18 +-
>  drivers/net/designware_socfpga.c              |  16 +-
>  drivers/net/designware_starfive.c             |   7 +-
>  drivers/net/designware_stm32.c                |  14 +-
>  drivers/net/designware_tegra186.c             |  10 +-
>  drivers/net/dm9k.c                            |  28 +-
>  drivers/net/dsa.c                             |  10 +-
>  drivers/net/e1000/e1000.h                     |   4 +-
>  drivers/net/e1000/eeprom.c                    |   3 +-
>  drivers/net/efi-snp.c                         |   2 +-
>  drivers/net/enc28j60.c                        |   6 +-
>  drivers/net/ep93xx.c                          |   4 +-
>  drivers/net/ethoc.c                           |   4 +-
>  drivers/net/fec_imx.c                         |  25 +-
>  drivers/net/fec_imx.h                         |   2 +-
>  drivers/net/fec_mpc5200.c                     |   6 +-
>  drivers/net/fsl-fman.c                        |  36 +--
>  drivers/net/gianfar.c                         |  18 +-
>  drivers/net/gianfar.h                         |   2 +-
>  drivers/net/ks8851_mll.c                      |  16 +-
>  drivers/net/ksz8864rmn.c                      |   4 +-
>  drivers/net/ksz8873.c                         |   8 +-
>  drivers/net/ksz9477.c                         |  12 +-
>  drivers/net/liteeth.c                         |   8 +-
>  drivers/net/macb.c                            |  22 +-
>  drivers/net/mvneta.c                          |   8 +-
>  drivers/net/orion-gbe.c                       |  18 +-
>  drivers/net/phy/ar8327.c                      |   4 +-
>  drivers/net/phy/at803x.c                      |   4 +-
>  drivers/net/phy/dp83867.c                     |   4 +-
>  drivers/net/phy/marvell.c                     |   4 +-
>  drivers/net/phy/mdio-gpio.c                   |  16 +-
>  drivers/net/phy/mdio-mux-gpio.c               |  10 +-
>  drivers/net/phy/mdio-mux.c                    |   4 +-
>  drivers/net/phy/mdio-mvebu.c                  |   8 +-
>  drivers/net/phy/mdio_bus.c                    |  24 +-
>  drivers/net/phy/micrel.c                      |  30 +-
>  drivers/net/phy/mv88e6xxx/chip.c              |   8 +-
>  drivers/net/phy/mv88e6xxx/chip.h              |   2 +-
>  drivers/net/phy/mv88e6xxx/port.c              |   6 +-
>  drivers/net/phy/phy.c                         |  18 +-
>  drivers/net/phy/realtek.c                     |   2 +-
>  drivers/net/rtl8139.c                         |   2 +-
>  drivers/net/rtl8169.c                         |   2 +-
>  drivers/net/sja1105.c                         |  16 +-
>  drivers/net/smc91111.c                        |   4 +-
>  drivers/net/smc911x.c                         |  14 +-
>  drivers/net/tap.c                             |   4 +-
>  drivers/nvme/host/core.c                      |   2 +-
>  drivers/nvme/host/nvme.h                      |   4 +-
>  drivers/nvme/host/pci.c                       |   2 +-
>  drivers/nvmem/bsec.c                          |  10 +-
>  drivers/nvmem/core.c                          |  31 +-
>  drivers/nvmem/eeprom_93xx46.c                 |   8 +-
>  drivers/nvmem/kvx-otp-nv.c                    |   4 +-
>  drivers/nvmem/ocotp.c                         |   8 +-
>  drivers/nvmem/rave-sp-eeprom.c                |   8 +-
>  drivers/nvmem/rmem.c                          |   6 +-
>  drivers/nvmem/snvs_lpgpr.c                    |   8 +-
>  drivers/nvmem/starfive-otp.c                  |   6 +-
>  drivers/of/barebox.c                          |  11 +-
>  drivers/of/base.c                             |  12 +-
>  drivers/of/device.c                           |  10 +-
>  drivers/of/of_gpio.c                          |   2 +-
>  drivers/of/of_path.c                          |  10 +-
>  drivers/of/platform.c                         |  50 +--
>  drivers/pci/bus.c                             |  10 +-
>  drivers/pci/pci-ecam-generic.c                |   8 +-
>  drivers/pci/pci-efi.c                         |   6 +-
>  drivers/pci/pci-imx6.c                        |  22 +-
>  drivers/pci/pci-layerscape.c                  |  16 +-
>  drivers/pci/pci-mvebu.c                       |  12 +-
>  drivers/pci/pci-tegra.c                       |  12 +-
>  drivers/pci/pci.c                             |  12 +-
>  drivers/pci/pcie-designware-host.c            |   4 +-
>  drivers/pci/pcie-designware.c                 |   4 +-
>  drivers/pci/pcie-designware.h                 |   2 +-
>  drivers/phy/freescale/phy-fsl-imx8mq-usb.c    |   6 +-
>  drivers/phy/phy-core.c                        |  40 +--
>  drivers/phy/phy-stm32-usbphyc.c               |  16 +-
>  drivers/phy/rockchip/phy-rockchip-inno-usb2.c |  20 +-
>  .../rockchip/phy-rockchip-naneng-combphy.c    |  14 +-
>  drivers/phy/usb-nop-xceiv.c                   |   8 +-
>  drivers/pinctrl/imx-iomux-v1.c                |  10 +-
>  drivers/pinctrl/imx-iomux-v2.c                |   4 +-
>  drivers/pinctrl/imx-iomux-v3.c                |   8 +-
>  drivers/pinctrl/mvebu/armada-370.c            |   6 +-
>  drivers/pinctrl/mvebu/armada-xp.c             |   6 +-
>  drivers/pinctrl/mvebu/common.c                |   2 +-
>  drivers/pinctrl/mvebu/common.h                |   2 +-
>  drivers/pinctrl/mvebu/dove.c                  |   6 +-
>  drivers/pinctrl/mvebu/kirkwood.c              |   6 +-
>  drivers/pinctrl/pinctrl-at91-pio4.c           |   8 +-
>  drivers/pinctrl/pinctrl-at91.c                |  20 +-
>  drivers/pinctrl/pinctrl-bcm2835.c             |   4 +-
>  drivers/pinctrl/pinctrl-mxs.c                 |   4 +-
>  drivers/pinctrl/pinctrl-rockchip.c            |  22 +-
>  drivers/pinctrl/pinctrl-single.c              |   6 +-
>  drivers/pinctrl/pinctrl-stm32.c               |  15 +-
>  drivers/pinctrl/pinctrl-tegra-xusb.c          |   8 +-
>  drivers/pinctrl/pinctrl-tegra20.c             |   6 +-
>  drivers/pinctrl/pinctrl-tegra30.c             |   6 +-
>  drivers/pinctrl/pinctrl-vf610.c               |   4 +-
>  drivers/pinctrl/pinctrl.c                     |  10 +-
>  drivers/power/reset/gpio-poweroff.c           |   6 +-
>  drivers/power/reset/gpio-restart.c            |   8 +-
>  drivers/power/reset/htif-poweroff.c           |   4 +-
>  drivers/power/reset/nvmem-reboot-mode.c       |   4 +-
>  drivers/power/reset/reboot-mode.c             |   6 +-
>  drivers/power/reset/stm32-reboot.c            |   2 +-
>  drivers/power/reset/syscon-poweroff.c         |  12 +-
>  drivers/power/reset/syscon-reboot-mode.c      |   8 +-
>  drivers/power/reset/syscon-reboot.c           |  16 +-
>  drivers/pwm/core.c                            |   8 +-
>  drivers/pwm/pwm-atmel.c                       |   8 +-
>  drivers/pwm/pwm-imx.c                         |   8 +-
>  drivers/pwm/pwm-mxs.c                         |   6 +-
>  drivers/pwm/pwm-stm32.c                       |   8 +-
>  drivers/pwm/pxa_pwm.c                         |   4 +-
>  drivers/regulator/anatop-regulator.c          |   8 +-
>  drivers/regulator/bcm2835.c                   |   4 +-
>  drivers/regulator/core.c                      |  23 +-
>  drivers/regulator/fixed.c                     |   8 +-
>  drivers/regulator/of_regulator.c              |   2 +-
>  drivers/regulator/pfuze.c                     |   8 +-
>  drivers/regulator/rk808-regulator.c           |  10 +-
>  drivers/regulator/scmi-regulator.c            |   4 +-
>  drivers/regulator/stm32-pwr.c                 |   6 +-
>  drivers/regulator/stm32-vrefbuf.c             |  10 +-
>  drivers/regulator/stpmic1_regulator.c         |   8 +-
>  drivers/remoteproc/imx_rproc.c                |  12 +-
>  drivers/remoteproc/remoteproc_core.c          |  12 +-
>  drivers/remoteproc/remoteproc_elf_loader.c    |   2 +-
>  drivers/remoteproc/stm32_rproc.c              |  12 +-
>  drivers/reset/core.c                          |  25 +-
>  drivers/reset/reset-imx7.c                    |   8 +-
>  drivers/reset/reset-scmi.c                    |   4 +-
>  drivers/reset/reset-simple.c                  |   6 +-
>  drivers/reset/reset-socfpga.c                 |   6 +-
>  drivers/reset/reset-starfive-vic.c            |   6 +-
>  drivers/rtc/class.c                           |   2 +-
>  drivers/rtc/rtc-abracon.c                     |   4 +-
>  drivers/rtc/rtc-ds1307.c                      |  10 +-
>  drivers/rtc/rtc-imxdi.c                       |   6 +-
>  drivers/rtc/rtc-jz4740.c                      |   4 +-
>  drivers/rtc/rtc-pcf85363.c                    |   6 +-
>  drivers/serial/arm_dcc.c                      |   6 +-
>  drivers/serial/atmel.c                        |   6 +-
>  drivers/serial/efi-stdio.c                    |   4 +-
>  drivers/serial/linux_console.c                |  10 +-
>  drivers/serial/serial_altera.c                |   4 +-
>  drivers/serial/serial_altera_jtag.c           |   4 +-
>  drivers/serial/serial_ar933x.c                |   4 +-
>  drivers/serial/serial_auart.c                 |   4 +-
>  drivers/serial/serial_cadence.c               |   4 +-
>  drivers/serial/serial_clps711x.c              |   8 +-
>  drivers/serial/serial_digic.c                 |   4 +-
>  drivers/serial/serial_imx.c                   |  14 +-
>  drivers/serial/serial_litex.c                 |   4 +-
>  drivers/serial/serial_lpuart.c                |   8 +-
>  drivers/serial/serial_mpc5xxx.c               |  14 +-
>  drivers/serial/serial_ns16550.c               |  10 +-
>  drivers/serial/serial_ns16550_pci.c           |   2 +-
>  drivers/serial/serial_omap4_usbboot.c         |   4 +-
>  drivers/serial/serial_pl010.c                 |   4 +-
>  drivers/serial/serial_pxa.c                   |   4 +-
>  drivers/serial/serial_s3c.c                   |   4 +-
>  drivers/serial/serial_sbi.c                   |   4 +-
>  drivers/serial/serial_sifive.c                |   7 +-
>  drivers/serial/serial_stm32.c                 |   8 +-
>  drivers/serial/stm-serial.c                   |   4 +-
>  drivers/soc/imx/gpcv2.c                       |  20 +-
>  drivers/soc/imx/imx8m-featctrl.c              |   2 +-
>  drivers/soc/kvx/kvx_socinfo.c                 |   6 +-
>  drivers/soc/rockchip/io-domain.c              |   8 +-
>  drivers/soc/sifive/sifive_l2_cache.c          |   6 +-
>  drivers/sound/gpio-beeper.c                   |   8 +-
>  drivers/sound/pwm-beeper.c                    |  13 +-
>  drivers/sound/sdl.c                           |   4 +-
>  drivers/spi/altera_spi.c                      |   6 +-
>  drivers/spi/ath79_spi.c                       |  10 +-
>  drivers/spi/atmel-quadspi.c                   |   4 +-
>  drivers/spi/atmel_spi.c                       |   6 +-
>  drivers/spi/dspi_spi.c                        |  14 +-
>  drivers/spi/gpio_spi.c                        |   8 +-
>  drivers/spi/imx_spi.c                         |   8 +-
>  drivers/spi/litex_spiflash.c                  |   8 +-
>  drivers/spi/mvebu_spi.c                       |   6 +-
>  drivers/spi/mxs_spi.c                         |   4 +-
>  drivers/spi/omap3_spi.c                       |  11 +-
>  drivers/spi/spi-fsl-dspi.c                    |  12 +-
>  drivers/spi/spi-fsl-qspi.c                    |  10 +-
>  drivers/spi/spi-nxp-fspi.c                    |  15 +-
>  drivers/spi/spi-sifive.c                      |  10 +-
>  drivers/spi/spi.c                             |  12 +-
>  drivers/spi/stm32_spi.c                       |  10 +-
>  drivers/spi/zynq_qspi.c                       |   8 +-
>  drivers/usb/core/hub.c                        |   2 +-
>  drivers/usb/core/usb.c                        |   8 +-
>  drivers/usb/dwc2/core.h                       |   2 +-
>  drivers/usb/dwc2/dwc2.c                       |   6 +-
>  drivers/usb/dwc2/host.c                       |   4 +-
>  drivers/usb/dwc3/core.c                       |  40 +--
>  drivers/usb/dwc3/core.h                       |   4 +-
>  drivers/usb/dwc3/dwc3-of-simple.c             |  10 +-
>  drivers/usb/dwc3/gadget.c                     |   2 +-
>  drivers/usb/dwc3/host.c                       |   2 +-
>  drivers/usb/gadget/at91_udc.c                 |   8 +-
>  drivers/usb/gadget/at91_udc.h                 |   2 +-
>  drivers/usb/gadget/fsl_udc.c                  |  10 +-
>  drivers/usb/gadget/pxa27x_udc.c               |   4 +-
>  drivers/usb/gadget/pxa27x_udc.h               |   2 +-
>  drivers/usb/gadget/storage_common.h           |   2 +-
>  drivers/usb/gadget/udc-core.c                 |   9 +-
>  drivers/usb/host/ehci-atmel.c                 |  10 +-
>  drivers/usb/host/ehci-hcd.c                   |  14 +-
>  drivers/usb/host/ohci-at91.c                  |  14 +-
>  drivers/usb/host/ohci-hcd.c                   |   4 +-
>  drivers/usb/host/xhci.c                       |   8 +-
>  drivers/usb/host/xhci.h                       |   2 +-
>  drivers/usb/imx/chipidea-imx.c                |  30 +-
>  drivers/usb/imx/imx-usb-misc.c                |   8 +-
>  drivers/usb/imx/imx-usb-phy.c                 |   8 +-
>  drivers/usb/misc/usb251xb.c                   |  16 +-
>  drivers/usb/musb/am35x-phy-control.h          |   2 +-
>  drivers/usb/musb/musb_am335x.c                |   6 +-
>  drivers/usb/musb/musb_core.h                  |   2 +-
>  drivers/usb/musb/musb_dsps.c                  |  16 +-
>  drivers/usb/musb/phy-am335x-control.c         |  10 +-
>  drivers/usb/musb/phy-am335x.c                 |   6 +-
>  drivers/usb/otg/otgdev.c                      |   8 +-
>  drivers/usb/storage/transport.c               |   6 +-
>  drivers/usb/storage/usb.c                     |  24 +-
>  drivers/video/atmel_hlcdfb.c                  |   4 +-
>  drivers/video/atmel_lcdfb.c                   |   4 +-
>  drivers/video/atmel_lcdfb.h                   |   4 +-
>  drivers/video/atmel_lcdfb_core.c              |  17 +-
>  drivers/video/backlight-pwm.c                 |  14 +-
>  drivers/video/bcm2835.c                       |   4 +-
>  drivers/video/bochs/bochs_hw.c                |   3 +-
>  drivers/video/bochs/bochs_hw.h                |   4 +-
>  drivers/video/bochs/bochs_isa.c               |   2 +-
>  drivers/video/efi_gop.c                       |   2 +-
>  drivers/video/fb.c                            |   6 +-
>  drivers/video/imx-ipu-fb.c                    |   6 +-
>  drivers/video/imx-ipu-v3/imx-hdmi.c           |   8 +-
>  drivers/video/imx-ipu-v3/imx-ldb.c            |   8 +-
>  drivers/video/imx-ipu-v3/imx-pd.c             |   8 +-
>  drivers/video/imx-ipu-v3/ipu-common.c         |  14 +-
>  drivers/video/imx-ipu-v3/ipu-dc.c             |   4 +-
>  drivers/video/imx-ipu-v3/ipu-di.c             |   2 +-
>  drivers/video/imx-ipu-v3/ipu-dmfc.c           |   6 +-
>  drivers/video/imx-ipu-v3/ipu-dp.c             |   4 +-
>  drivers/video/imx-ipu-v3/ipu-prv.h            |  15 +-
>  drivers/video/imx-ipu-v3/ipufb.c              |  17 +-
>  drivers/video/imx-ipu-v3/ipuv3-plane.c        |   2 +-
>  drivers/video/imx.c                           |   8 +-
>  drivers/video/mipi_dbi.c                      |   2 +-
>  drivers/video/mtl017.c                        |  17 +-
>  drivers/video/omap.c                          |   6 +-
>  drivers/video/panel-ilitek-ili9341.c          |  14 +-
>  drivers/video/pxa.c                           |   6 +-
>  drivers/video/rave-sp-backlight.c             |   4 +-
>  drivers/video/s3c24xx.c                       |   8 +-
>  drivers/video/sdl.c                           |   6 +-
>  drivers/video/simple-panel.c                  |  10 +-
>  drivers/video/simplefb-client.c               |  12 +-
>  drivers/video/ssd1307fb.c                     |  10 +-
>  drivers/video/stm.c                           |  10 +-
>  drivers/video/stm32_ltdc.c                    |  10 +-
>  drivers/video/tc358767.c                      |  20 +-
>  drivers/virtio/virtio.c                       |   8 +-
>  drivers/virtio/virtio_mmio.c                  |   6 +-
>  drivers/virtio/virtio_pci_modern.c            |   2 +-
>  drivers/virtio/virtio_ring.c                  |   2 +-
>  drivers/w1/masters/w1-gpio.c                  |   8 +-
>  drivers/w1/w1.c                               |   8 +-
>  drivers/w1/w1.h                               |   8 +-
>  drivers/watchdog/ar9344_wdt.c                 |   6 +-
>  drivers/watchdog/at91sam9_wdt.c               |   4 +-
>  drivers/watchdog/bcm2835_wdt.c                |   6 +-
>  drivers/watchdog/davinci_wdt.c                |   4 +-
>  drivers/watchdog/dw_wdt.c                     |   4 +-
>  drivers/watchdog/efi_wdt.c                    |   6 +-
>  drivers/watchdog/f71808e_wdt.c                |   6 +-
>  drivers/watchdog/gpio_wdt.c                   |   6 +-
>  drivers/watchdog/im28wd.c                     |   6 +-
>  drivers/watchdog/imxwd.c                      |  10 +-
>  drivers/watchdog/jz4740.c                     |   4 +-
>  drivers/watchdog/kvx_wdt.c                    |   4 +-
>  drivers/watchdog/omap_wdt.c                   |   4 +-
>  drivers/watchdog/orion_wdt.c                  |   4 +-
>  drivers/watchdog/rave-sp-wdt.c                |   6 +-
>  drivers/watchdog/rn5t568_wdt.c                |   4 +-
>  drivers/watchdog/starfive_wdt.c               |   4 +-
>  drivers/watchdog/stm32_iwdg.c                 |   4 +-
>  drivers/watchdog/stpmic1_wdt.c                |   4 +-
>  drivers/watchdog/wd_core.c                    |  12 +-
>  drivers/watchdog/wdat_wdt.c                   |   2 +-
>  fs/bpkfs.c                                    |  26 +-
>  fs/cramfs/cramfs.c                            |  19 +-
>  fs/devfs-core.c                               |  12 +-
>  fs/devfs.c                                    |  35 ++-
>  fs/efi.c                                      |  48 +--
>  fs/efivarfs.c                                 |  32 +-
>  fs/ext4/ext4fs.h                              |   2 +-
>  fs/ext4/ext_barebox.c                         |  14 +-
>  fs/fat/fat.c                                  |  37 +--
>  fs/fs.c                                       | 100 +++---
>  fs/jffs2/fs.c                                 |  16 +-
>  fs/jffs2/os-linux.h                           |   4 +-
>  fs/jffs2/super.c                              |   2 +-
>  fs/legacy.c                                   |  20 +-
>  fs/nfs.c                                      |  24 +-
>  fs/omap4_usbbootfs.c                          |  27 +-
>  fs/pstore/fs.c                                |  22 +-
>  fs/pstore/ram.c                               |  12 +-
>  fs/ramfs.c                                    |  17 +-
>  fs/ratpfs.c                                   |  48 +--
>  fs/smhfs.c                                    |  28 +-
>  fs/squashfs/squashfs.c                        |  20 +-
>  fs/squashfs/squashfs.h                        |   4 +-
>  fs/squashfs/squashfs_fs_sb.h                  |   2 +-
>  fs/squashfs/super.c                           |   4 +-
>  fs/tftp.c                                     |  31 +-
>  fs/ubifs/super.c                              |   5 +-
>  fs/ubifs/ubifs.c                              |  17 +-
>  fs/ubifs/ubifs.h                              |   5 +-
>  fs/ubootvarfs.c                               |  22 +-
>  fs/uimagefs.c                                 |  28 +-
>  include/acpi.h                                |   4 +-
>  include/aiodev.h                              |   6 +-
>  include/ata_drive.h                           |   6 +-
>  include/blobgen.h                             |   4 +-
>  include/block.h                               |   2 +-
>  include/blspec.h                              |   2 +-
>  include/console.h                             |  16 +-
>  include/dirent.h                              |   4 +-
>  include/dma.h                                 |   8 +-
>  include/driver.h                              | 145 ++++-----
>  include/dsa.h                                 |   4 +-
>  include/efi/efi-device.h                      |   8 +-
>  include/fb.h                                  |   2 +-
>  include/featctrl.h                            |   2 +-
>  include/firmware.h                            |   2 +-
>  include/fpga-bridge.h                         |   4 +-
>  include/fpga-mgr.h                            |   2 +-
>  include/fs.h                                  |  77 ++---
>  include/globalvar.h                           |   7 +-
>  include/gpio.h                                |   9 +-
>  include/gpiod.h                               |   2 +-
>  include/hwspinlock.h                          |   2 +-
>  include/i2c/i2c-mux.h                         |   2 +-
>  include/i2c/i2c.h                             |   9 +-
>  include/input/matrix_keypad.h                 |   2 +-
>  include/linux/amba/bus.h                      |  10 +-
>  include/linux/basic_mmio_gpio.h               |   2 +-
>  include/linux/clk.h                           | 161 +++++-----
>  include/linux/clkdev.h                        |   4 +-
>  include/linux/font.h                          |   8 +-
>  include/linux/hw_random.h                     |   4 +-
>  include/linux/mdio-mux.h                      |   2 +-
>  include/linux/mfd/axp20x.h                    |   2 +-
>  include/linux/mfd/core.h                      |   5 +-
>  include/linux/mtd/mtd.h                       |  10 +-
>  include/linux/mtd/spi-nor.h                   |   2 +-
>  include/linux/nvmem-consumer.h                |  14 +-
>  include/linux/nvmem-provider.h                |   2 +-
>  include/linux/pci.h                           |   8 +-
>  include/linux/phy.h                           |  10 +-
>  include/linux/phy/phy.h                       |  39 ++-
>  include/linux/printk.h                        |  14 +-
>  include/linux/reboot-mode.h                   |   4 +-
>  include/linux/regulator/of_regulator.h        |   6 +-
>  include/linux/remoteproc.h                    |   4 +-
>  include/linux/reset.h                         |  25 +-
>  include/linux/rtc.h                           |   4 +-
>  include/linux/scmi_protocol.h                 |  16 +-
>  include/linux/spi/spi-mem.h                   |   2 +-
>  include/linux/virtio.h                        |  10 +-
>  include/mci.h                                 |   6 +-
>  include/mfd/mc13xxx.h                         |   5 +-
>  include/net.h                                 |   6 +-
>  include/of.h                                  |  47 +--
>  include/of_device.h                           |  20 +-
>  include/param.h                               | 286 ++++++++++--------
>  include/pinctrl.h                             |  14 +-
>  include/pm_domain.h                           |   8 +-
>  include/printk.h                              |   4 +-
>  include/pwm.h                                 |   4 +-
>  include/regmap.h                              |  10 +-
>  include/regulator.h                           |  13 +-
>  include/reset_source.h                        |   8 +-
>  include/serdev.h                              |   2 +-
>  include/soc/imx8m/featctrl.h                  |   4 +-
>  include/soc/stm32/reboot.h                    |   6 +-
>  include/spi/spi.h                             |   8 +-
>  include/superio.h                             |   4 +-
>  include/usb/chipidea-imx.h                    |   8 +-
>  include/usb/ehci.h                            |   4 +-
>  include/usb/fsl_usb2.h                        |   2 +-
>  include/usb/gadget.h                          |  14 +-
>  include/usb/musb.h                            |   2 +-
>  include/usb/phy.h                             |   2 +-
>  include/usb/usb.h                             |   8 +-
>  include/video/backlight.h                     |   2 +-
>  include/video/mipi_dbi.h                      |   2 +-
>  include/watchdog.h                            |   4 +-
>  lib/blobgen.c                                 |   4 +-
>  lib/fonts/fonts.c                             |   8 +-
>  lib/hexdump.c                                 |   2 +-
>  lib/parameter.c                               | 143 +++++----
>  net/eth.c                                     |  22 +-
>  812 files changed, 4126 insertions(+), 3931 deletions(-)
> 
> -- 
> 2.30.2
> 
> 
> 


