Delivery-date: Fri, 10 Nov 2023 13:59:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1R6h-005rRA-0Z
	for lore@lore.pengutronix.de;
	Fri, 10 Nov 2023 13:59:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1R6g-00039B-Rl
	for lore@pengutronix.de; Fri, 10 Nov 2023 13:59:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=zakCL4xiyG65xL/a6zNqxDoWcPXc7p+gxnrGicsrmR8=; b=Dnn5Kofvc5Q+focyASJpDBwlmk
	OUHPV2bxDeUoYlwnvSCjRuOq57JFOFekL9VG6PGi7j5ANZBZNTGKtBQ/Xb+/oAgmhrCa25S3Gqodq
	7OcCEb4n+I67lP2O64I1X3M6cBq6lQkT1UbSeCcq/TtkUu6+trBqHhwy4JKWzZcQJVvzLTJa7PUED
	nGe393oBwDdnqrf2tG60+QVP2ivBGSsrtWbou7bN8juytZvXjjKdTeWpzW2A2Eaws4qL+RE+HqWUK
	GWJ/W8aHeEapFIcxxUxM7akBoVx5OyUrFJQP3yRbLzxLzT1/D+cEwgSDtRuQcDso4SWKsQIxQZ+sR
	bND0e4xA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R5Q-008jsd-09;
	Fri, 10 Nov 2023 12:58:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R5J-008jny-33
	for barebox@lists.infradead.org;
	Fri, 10 Nov 2023 12:58:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R5H-00026J-3g; Fri, 10 Nov 2023 13:58:03 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R5G-0081X2-M9; Fri, 10 Nov 2023 13:58:02 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R5G-008ryQ-21;
	Fri, 10 Nov 2023 13:58:02 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 10 Nov 2023 13:57:35 +0100
Message-Id: <20231110125800.1901232-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_045805_982953_6CC44557 
X-CRM114-Status: GOOD (  13.11  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 00/25] Add i.MX93 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This series adds support for the NXP i.MX93 SoC along with board
support for the TQ TQMa93xxCA board.

Currently supported are:
- Pinctrl
- GPIO
- clock
- watchdog
- UART
- I2C
- SPI
- FEC ethernet

DDR support is not part of this series, I'll send it shortly in a
separate series.

Sascha

Sascha Hauer (25):
  ARM: initial i.MX9 support
  ARM: i.MX: Add i.MX93 s4mu support
  ARM: i.MX: Add i.MX93 trdc support
  scripts: Add imx9image tool
  scripts: imx9image: Add PBL size option
  clk: Add i.MX93 clock support
  clk: imx: clk-fracn-gppll: make usable from PBL
  gpio-vf610: Add i.MX93 support
  iomux: Add i.MX93 support
  watchdog: Add ULP wdog support
  I2c: Add i2c_8bit_addr_from_msg()
  i2c: Add lpi2c support
  ARM: Add imx93.dtsi for USB
  serial: Add lpuart32 driver
  ARM: i.MX: add i.MX9 debug_ll support
  ARM: Add TQ MBA9XXXCA board support
  ARM: i.MX93: Add DDR size read support
  ARM: i.MX: romapi: rename functions to *romapi*
  ARM: i.MX: romapi: Implement i.MX93 support
  ARM: i.MX: atf: add imx93_load_and_start_image_via_tfa()
  imx-usb-loader: Add i.MX9 support
  spi: spi-nxp-fspi: Enable for i.MX9
  usb: i.MX chipidea: Enable usbmisc driver for i.MX9
  ARM: Update imx_v8_defconfig
  ARM: multi_v8_defconfig: enable i.MX9 boards

 arch/arm/boards/Makefile                      |    1 +
 arch/arm/boards/tqmba9xxxca/Makefile          |    2 +
 arch/arm/boards/tqmba9xxxca/board.c           |   58 +
 arch/arm/boards/tqmba9xxxca/lowlevel.c        |   43 +
 .../tqmba9xxxca/lpddr4x_tqma93xxca_timing.c   | 1480 +++++++++++
 arch/arm/configs/imx_v8_defconfig             |    9 +-
 arch/arm/configs/multi_v8_defconfig           |    7 +
 arch/arm/dts/Makefile                         |    1 +
 arch/arm/dts/imx93-tqma9352-mba93xxca.dts     |  826 +++++++
 arch/arm/dts/imx93.dtsi                       |   62 +
 arch/arm/mach-imx/Kconfig                     |   26 +
 arch/arm/mach-imx/Makefile                    |    6 +-
 arch/arm/mach-imx/atf.c                       |   38 +-
 arch/arm/mach-imx/cpu_init.c                  |   42 +
 arch/arm/mach-imx/esdctl.c                    |   42 +
 arch/arm/mach-imx/imx-bbu-internal.c          |    5 +
 arch/arm/mach-imx/imx93-s4mu.c                |   97 +
 arch/arm/mach-imx/imx93-trdc.c                |  364 +++
 arch/arm/mach-imx/romapi.c                    |  166 +-
 common/Kconfig                                |    5 +
 drivers/clk/imx/Makefile                      |    1 +
 drivers/clk/imx/clk-composite-93.c            |  216 ++
 drivers/clk/imx/clk-fracn-gppll.c             |  297 +++
 drivers/clk/imx/clk-gate-93.c                 |  186 ++
 drivers/clk/imx/clk-imx93.c                   |  331 +++
 drivers/clk/imx/clk.h                         |   16 +
 drivers/gpio/Kconfig                          |    3 +-
 drivers/gpio/gpio-vf610.c                     |   78 +-
 drivers/i2c/busses/Kconfig                    |    7 +
 drivers/i2c/busses/Makefile                   |    1 +
 drivers/i2c/busses/i2c-imx-lpi2c.c            |  518 ++++
 drivers/pinctrl/imx-iomux-v3.c                |    2 +
 drivers/serial/Kconfig                        |    4 +
 drivers/serial/Makefile                       |    1 +
 drivers/serial/serial_lpuart32.c              |  185 ++
 drivers/spi/Kconfig                           |    2 +-
 drivers/usb/imx/imx-usb-misc.c                |    2 +-
 drivers/watchdog/Kconfig                      |    6 +
 drivers/watchdog/Makefile                     |    1 +
 drivers/watchdog/imxulp-wdt.c                 |  161 ++
 firmware/Kconfig                              |    3 +
 firmware/Makefile                             |    1 +
 images/Makefile.imx                           |   11 +
 include/i2c/i2c.h                             |    4 +
 include/mach/imx/atf.h                        |    2 +
 include/mach/imx/bbu.h                        |    9 +
 include/mach/imx/debug_ll.h                   |   13 +
 include/mach/imx/generic.h                    |    1 +
 include/mach/imx/imx9-regs.h                  |   24 +
 include/mach/imx/romapi.h                     |    5 +-
 include/mach/imx/xload.h                      |    1 +
 include/serial/lpuart32.h                     |  168 ++
 include/soc/imx/clk-fracn-gppll.h             |  144 ++
 include/soc/imx9/flash_header.h               |   88 +
 include/soc/imx9/mu_hal.h                     |   12 +
 include/soc/imx9/s400_api.h                   |  124 +
 include/soc/imx9/trdc.h                       |   11 +
 scripts/Kconfig                               |    7 +
 scripts/Makefile                              |    1 +
 scripts/imx/imx-usb-loader.c                  |   29 +
 scripts/imx9image.c                           | 2179 +++++++++++++++++
 61 files changed, 8110 insertions(+), 25 deletions(-)
 create mode 100644 arch/arm/boards/tqmba9xxxca/Makefile
 create mode 100644 arch/arm/boards/tqmba9xxxca/board.c
 create mode 100644 arch/arm/boards/tqmba9xxxca/lowlevel.c
 create mode 100644 arch/arm/boards/tqmba9xxxca/lpddr4x_tqma93xxca_timing.c
 create mode 100644 arch/arm/dts/imx93-tqma9352-mba93xxca.dts
 create mode 100644 arch/arm/dts/imx93.dtsi
 create mode 100644 arch/arm/mach-imx/imx93-s4mu.c
 create mode 100644 arch/arm/mach-imx/imx93-trdc.c
 create mode 100644 drivers/clk/imx/clk-composite-93.c
 create mode 100644 drivers/clk/imx/clk-fracn-gppll.c
 create mode 100644 drivers/clk/imx/clk-gate-93.c
 create mode 100644 drivers/clk/imx/clk-imx93.c
 create mode 100644 drivers/i2c/busses/i2c-imx-lpi2c.c
 create mode 100644 drivers/serial/serial_lpuart32.c
 create mode 100644 drivers/watchdog/imxulp-wdt.c
 create mode 100644 include/mach/imx/imx9-regs.h
 create mode 100644 include/serial/lpuart32.h
 create mode 100644 include/soc/imx/clk-fracn-gppll.h
 create mode 100644 include/soc/imx9/flash_header.h
 create mode 100644 include/soc/imx9/mu_hal.h
 create mode 100644 include/soc/imx9/s400_api.h
 create mode 100644 include/soc/imx9/trdc.h
 create mode 100644 scripts/imx9image.c

-- 
2.39.2



