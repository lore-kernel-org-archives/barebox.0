Delivery-date: Fri, 20 Oct 2023 09:20:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qtjoA-00FGXy-NS
	for lore@lore.pengutronix.de; Fri, 20 Oct 2023 09:20:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qtjo9-0006nJ-3T
	for lore@pengutronix.de; Fri, 20 Oct 2023 09:20:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=efLii1izhWkTIbvheeEUo+Iy60QuPVX9zT3JCZV0JIs=; b=yUC8yTDN9zYxZpk2WScPCzLm1j
	pYBSMbG3n12RyAeor2aA51nHLxRUK2iqnn1ySiYNV21LSiqfjmQM0OJEcUgH+XmX6dNN84gKw4214
	fTMMSpjxEKvdLAZgJKmuGmmC9B2rZY512GwFZzqwKMZNjj21H3r2pf3PpP6Tv3A7dbJ86/WrVSlcN
	G5op/mwYSVjkBypVl5dDlECmopU/gdkNN0bVUO9a9d8H1XNtsJ2tZ/hJ+KDlXo34YOEZ6am5x0HUn
	/zYMdr418xq+SrAF7eYtr1+EFugdSlyvmaafyMJ4w2JjFKnr1fgpl9H382EGk5LlaKdSGO5EgCBEW
	nkl00Mpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qtjmv-001P1V-17;
	Fri, 20 Oct 2023 07:19:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qtjmk-001OvQ-0d
	for barebox@lists.infradead.org;
	Fri, 20 Oct 2023 07:19:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qtjmg-0006DY-1H
	for barebox@lists.infradead.org; Fri, 20 Oct 2023 09:19:02 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qtjmf-002yLg-By
	for barebox@lists.infradead.org; Fri, 20 Oct 2023 09:19:01 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qtjmf-00BrR9-14
	for barebox@lists.infradead.org;
	Fri, 20 Oct 2023 09:19:01 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 20 Oct 2023 09:18:42 +0200
Message-Id: <20231020071853.2826528-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231020_001906_387946_5FCB66FC 
X-CRM114-Status: GOOD (  11.49  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 00/11] regmap: align regmap_bulk_read/write API with Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Since its inception in 2016, barebox regmap_bulk_read and
regmap_bulk_write expected the last argument to be the total
length of data to access in bytes.

Its namesake Linux version has the same prototype, but interprets the
last argument as number of elements to write, i.e.
bytes / regmap_get_val_bytes(map).

This went unnoticed so far, because barebox users are either using
1-byte regmaps, the code was written specifically for barebox
or the code is yet unused such as the KSZ switch 64-bit accessors.

Avoid nasty future surprises by switching implementation and users
to the Linux interpretation of the last argument. As courtesy for
out-of-tree board code, we poison the symbol when regmap.h is included,
so out of tree code doesn't silently run into the inverse issue.

AFAICS, this doesn't fix any bugs, so it doesn't need to go into master.

Ahmad Fatoum (11):
  regmap: add support for bulk 64-bit reads and writes
  nvmem: regmap: do not use regmap_bulk_read
  regmap: move regmap.h content to linux/regmap.h
  regmap: align regmap_bulk_read/write API with Linux
  mfd: syscon: do not include regmap.h from mfd/syscon.h
  mfd: axp20x: remove dependency on regmap.h
  mfd: pfuze: disable mfd/pfuze.h dependency on regmap.h
  mfd: atmel-smc: remove dependency of mfd/syscon/atmel-smc.h on
    regmap.h
  mfd: atmel-smc: include needed headers directly
  mfd: stm32-timers: remove dependency of mfd/stm32-timers.h on regmap.h
  treewide: switch regmap.h include to linux/regmap.h

 arch/arm/boards/phytec-som-imx8mq/board.c     |   1 +
 arch/arm/boards/protonic-imx6/board.c         |   2 +-
 arch/arm/mach-imx/iim.c                       |   2 +-
 arch/arm/mach-rockchip/dmc.c                  |   2 +-
 arch/kvx/cpu/reset.c                          |   2 +-
 drivers/base/regmap/regmap-fmt.c              |   2 +-
 drivers/base/regmap/regmap-i2c.c              |   2 +-
 drivers/base/regmap/regmap-mmio.c             |   2 +-
 drivers/base/regmap/regmap-multi.c            |   6 +-
 drivers/base/regmap/regmap-spi.c              |   2 +-
 drivers/base/regmap/regmap.c                  |  39 ++-
 drivers/clk/at91/at91rm9200.c                 |   2 +-
 drivers/clk/at91/at91sam9260.c                |   2 +-
 drivers/clk/at91/at91sam9g45.c                |   2 +-
 drivers/clk/at91/at91sam9n12.c                |   2 +-
 drivers/clk/at91/at91sam9rl.c                 |   2 +-
 drivers/clk/at91/at91sam9x5.c                 |   2 +-
 drivers/clk/at91/clk-audio-pll.c              |   2 +-
 drivers/clk/at91/clk-generated.c              |   2 +-
 drivers/clk/at91/clk-h32mx.c                  |   2 +-
 drivers/clk/at91/clk-i2s-mux.c                |   2 +-
 drivers/clk/at91/clk-main.c                   |   2 +-
 drivers/clk/at91/clk-master.c                 |   2 +-
 drivers/clk/at91/clk-peripheral.c             |   2 +-
 drivers/clk/at91/clk-pll.c                    |   2 +-
 drivers/clk/at91/clk-plldiv.c                 |   2 +-
 drivers/clk/at91/clk-programmable.c           |   2 +-
 drivers/clk/at91/clk-sam9x60-pll.c            |   2 +-
 drivers/clk/at91/clk-slow.c                   |   2 +-
 drivers/clk/at91/clk-smd.c                    |   2 +-
 drivers/clk/at91/clk-system.c                 |   2 +-
 drivers/clk/at91/clk-usb.c                    |   2 +-
 drivers/clk/at91/clk-utmi.c                   |   2 +-
 drivers/clk/at91/pmc.c                        |   2 +-
 drivers/clk/at91/sam9x60.c                    |   2 +-
 drivers/clk/at91/sama5d2.c                    |   2 +-
 drivers/clk/at91/sama5d3.c                    |   2 +-
 drivers/clk/at91/sama5d4.c                    |   2 +-
 drivers/clk/at91/sckc.c                       |   2 +-
 drivers/clk/clk-stm32f4.c                     |   2 +-
 drivers/clk/rockchip/clk-inverter.c           |   2 +-
 drivers/clk/rockchip/clk-muxgrf.c             |   2 +-
 drivers/clk/rockchip/clk-pll.c                |   2 +-
 drivers/clk/rockchip/clk.c                    |   2 +-
 drivers/clk/socfpga/clk-gate-a10.c            |   2 +-
 drivers/gpio/gpio-sx150x.c                    |   2 +-
 drivers/hab/hab.c                             |   2 +-
 drivers/i2c/busses/i2c-cadence.c              |   2 +-
 drivers/i2c/busses/i2c-rockchip.c             |   2 +-
 drivers/i2c/busses/i2c-stm32.c                |   2 +-
 drivers/memory/atmel-ebi.c                    |   2 +-
 drivers/mfd/atmel-smc.c                       |   2 +
 drivers/mfd/axp20x-i2c.c                      |   2 +-
 drivers/mfd/axp20x.c                          |   2 +-
 drivers/mfd/mc13xxx.c                         |   2 +-
 drivers/mfd/rk808.c                           |   2 +-
 drivers/mfd/rn5t568.c                         |   2 +-
 drivers/mfd/rohm-bd718x7.c                    |   2 +-
 drivers/mfd/stm32-timers.c                    |   1 +
 drivers/mfd/stpmic1.c                         |   2 +-
 drivers/mfd/superio.c                         |   2 +-
 drivers/mfd/syscon.c                          |   1 +
 drivers/mtd/nand/atmel/nand-controller.c      |   2 +-
 drivers/net/designware_imx8.c                 |   2 +-
 drivers/net/designware_rockchip.c             |   2 +-
 drivers/net/designware_starfive.c             |   1 +
 drivers/net/designware_stm32.c                |   1 +
 drivers/net/ksz8873.c                         |   2 +-
 drivers/net/ksz_common.h                      |   2 +-
 drivers/net/realtek-dsa/realtek-mdio.c        |   2 +-
 drivers/net/realtek-dsa/realtek-smi.c         |   2 +-
 drivers/net/realtek-dsa/rtl8365mb.c           |   2 +-
 drivers/net/realtek-dsa/rtl8366rb.c           |   2 +-
 drivers/nvmem/bsec.c                          |   4 +-
 drivers/nvmem/ocotp.c                         |   8 +-
 drivers/nvmem/regmap.c                        |  16 +-
 drivers/nvmem/snvs_lpgpr.c                    |   6 +-
 drivers/nvmem/starfive-otp.c                  |   2 +-
 drivers/pci/pci-layerscape.c                  |   2 +-
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c |   1 +
 .../rockchip/phy-rockchip-naneng-combphy.c    |   1 +
 drivers/pinctrl/pinctrl-rockchip.c            |   1 +
 drivers/power/reset/syscon-poweroff.c         |   1 +
 drivers/power/reset/syscon-reboot-mode.c      |   2 +-
 drivers/power/reset/syscon-reboot.c           |   1 +
 drivers/pwm/pwm-stm32.c                       |   1 +
 drivers/regulator/anatop-regulator.c          |   2 +-
 drivers/regulator/helpers.c                   |   2 +-
 drivers/regulator/pfuze.c                     |   2 +-
 drivers/regulator/rk808-regulator.c           |   2 +-
 drivers/regulator/stpmic1_regulator.c         |   2 +-
 drivers/remoteproc/imx_rproc.c                |   2 +-
 drivers/remoteproc/stm32_rproc.c              |   2 +-
 drivers/reset/reset-imx7.c                    |   2 +-
 drivers/rtc/rtc-pcf85363.c                    |   2 +-
 drivers/serial/serial_clps711x.c              |   1 +
 drivers/soc/imx/gpcv2.c                       |   2 +-
 drivers/soc/rockchip/io-domain.c              |   2 +-
 drivers/spi/spi-fsl-dspi.c                    |   2 +-
 drivers/spi/spi-nxp-fspi.c                    |   2 +-
 drivers/usb/typec/tusb320.c                   |   2 +-
 drivers/watchdog/rn5t568_wdt.c                |   2 +-
 drivers/watchdog/stpmic1_wdt.c                |   1 +
 include/linux/mfd/axp20x.h                    |  26 +-
 include/linux/mfd/stm32-timers.h              |   3 +-
 include/linux/mfd/syscon/atmel-smc.h          |   3 +-
 include/linux/regmap.h                        | 260 ++++++++++++++++++
 include/mfd/pfuze.h                           |   2 +-
 include/mfd/syscon.h                          |   2 +-
 include/regmap.h                              | 256 ++---------------
 110 files changed, 436 insertions(+), 376 deletions(-)
 create mode 100644 include/linux/regmap.h

-- 
2.39.2



