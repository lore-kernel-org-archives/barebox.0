Delivery-date: Thu, 04 May 2023 10:19:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1puUBM-004LM1-JJ
	for lore@lore.pengutronix.de; Thu, 04 May 2023 10:19:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1puUBK-0001xw-CW
	for lore@pengutronix.de; Thu, 04 May 2023 10:19:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=sjqqd7xIMJGqv6W+adCCsIt8DNm3dL/kx9SSViVqqqI=; b=FUCeRHrUHRDZt7UKDHv2mXeI/R
	RbHWGufTNuZluEdwTLe4AjUDl/TJNSbraqdSwNOv0qFTpRYTf9W9zPxGdB6orPqXZptAEJ5fj1izX
	+EUF3/3c3kIsuTCJvZlfWHe/MrwioEya/2W2LA8Q25Jr+LUzMXGyuTVrRVUZ9HqaULeHYDCrYw58a
	2ASVtfdi+ePtTmtewtg4oAZrQJ8PIIZpmeege2lmtUruAFU+/VBzuJIBSDvOqRF9BULUvOZhV4g4s
	QKbwzz0IOYk3tAVLBh44KVBro93UptoTcmN108tVTlgX6mQjCQbhke9P0bdvkoqSm5eFDmE/2qJnH
	qNVf/euw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puUA3-0074Xz-1q;
	Thu, 04 May 2023 08:17:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puU9w-0074Sg-1v
	for barebox@lists.infradead.org;
	Thu, 04 May 2023 08:17:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1puU9t-0001Fm-1m; Thu, 04 May 2023 10:17:49 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1puU9s-0011EZ-7m; Thu, 04 May 2023 10:17:48 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1puU9q-001Hat-Jm; Thu, 04 May 2023 10:17:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  4 May 2023 10:17:27 +0200
Message-Id: <20230504081745.305841-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230504_011752_642639_49811BAE 
X-CRM114-Status: GOOD (  15.67  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 00/18] Add Rockchip RK3588 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This adds support for the Rockchip RK3588 along with the Radxa ROCK 5B
board.

As the ROCK 5B has ethernet connected via PCIe this series adds support
for that as well. The existing r8169 driver needed a major update to
support the RTL8125 found on the board.

Unfortunately I didn't manage to get eMMC and SD working, so for now
the board has ethernet, but no storage at all.

Sascha

Sascha Hauer (18):
  firmware: make drivers/firmware/ obj-y
  stddef: add sizeof_field()
  pci: add pci_select_bars() helper
  pci: set upper word for 64bit base addresses
  ARM: SCMI: Use correct smc/hvc instructions on ARM64
  clk: rockchip: Add rk3588 support
  pinctrl: rockchip: Move struct definitions to separate header file
  pinctrl/gpio: rockchip: separate gpio from pinctrl driver
  pinctrl: Update pinctrl-rockchip from kernel
  phy: rockchip: naneng-combphy: add rk3588 support
  reset: Implement reset array support
  pci: designware: add rockchip support
  phy: realtek: Add RTL8125 internal phy support
  net: Update Realtek r8169 driver
  ARM: rockchip: Add rk3588 support
  ARM: dts: Add rk3588 device trees
  ARM: rockchip: rk3588: add memsize detection
  ARM: rockchip: Add Radxa ROCK 5B support

 arch/arm/Kconfig                              |    1 +
 arch/arm/boards/Makefile                      |    1 +
 arch/arm/boards/radxa-rock5/.gitignore        |    1 +
 arch/arm/boards/radxa-rock5/Makefile          |    3 +
 arch/arm/boards/radxa-rock5/board.c           |   55 +
 arch/arm/boards/radxa-rock5/lowlevel.c        |   25 +
 arch/arm/dts/Makefile                         |    1 +
 arch/arm/dts/rk3588-rock-5b.dts               |  110 +
 arch/arm/dts/rk3588.dtsi                      |  152 +
 arch/arm/dts/rk3588s.dtsi                     |  135 +
 arch/arm/mach-rockchip/Kconfig                |   12 +
 arch/arm/mach-rockchip/Makefile               |    1 +
 arch/arm/mach-rockchip/atf.c                  |   35 +
 arch/arm/mach-rockchip/dmc.c                  |   52 +-
 arch/arm/mach-rockchip/rk3588.c               |   20 +
 arch/arm/mach-rockchip/rockchip.c             |    5 +
 common/Kconfig                                |    9 +
 drivers/Makefile                              |    2 +-
 drivers/clk/rockchip/Makefile                 |    1 +
 drivers/clk/rockchip/clk-pll.c                |  226 +-
 drivers/clk/rockchip/clk-rk3588.c             | 2529 +++++++++++++
 drivers/clk/rockchip/clk.h                    |  145 +-
 drivers/clk/rockchip/rst-rk3588.c             |  855 +++++
 drivers/clk/rockchip/softrst.c                |   34 +-
 drivers/gpio/Kconfig                          |    7 +
 drivers/gpio/Makefile                         |    1 +
 drivers/gpio/gpio-rockchip.c                  |  196 +
 drivers/net/Kconfig                           |    1 +
 drivers/net/Makefile                          |    2 +-
 drivers/net/phy/realtek.c                     |    6 +
 drivers/net/r8169.h                           |   79 +
 drivers/net/r8169_firmware.c                  |  237 ++
 drivers/net/r8169_firmware.h                  |   36 +
 drivers/net/r8169_main.c                      | 3214 +++++++++++++++++
 drivers/net/r8169_phy_config.c                | 1156 ++++++
 drivers/net/rtl8169.c                         |  562 ---
 drivers/pci/Kconfig                           |    7 +
 drivers/pci/Makefile                          |    1 +
 drivers/pci/pci.c                             |   18 +-
 drivers/pci/pcie-dw-rockchip.c                |  299 ++
 .../rockchip/phy-rockchip-naneng-combphy.c    |  278 ++
 drivers/pinctrl/pinctrl-rockchip.c            | 3174 ++++++++++++----
 drivers/pinctrl/pinctrl-rockchip.h            |  452 +++
 drivers/reset/core.c                          |  127 +
 firmware/Makefile                             |    2 +
 images/Makefile.rockchip                      |    7 +
 include/linux/arm-smccc.h                     |    4 +-
 include/linux/pci.h                           |    1 +
 include/linux/reset.h                         |    7 +
 include/linux/stddef.h                        |    8 +
 include/mach/rockchip/atf.h                   |    6 +
 include/mach/rockchip/debug_ll.h              |    6 +
 include/mach/rockchip/dmc.h                   |    1 +
 include/mach/rockchip/rk3588-regs.h           |   20 +
 include/mach/rockchip/rockchip.h              |   10 +
 55 files changed, 12985 insertions(+), 1350 deletions(-)
 create mode 100644 arch/arm/boards/radxa-rock5/.gitignore
 create mode 100644 arch/arm/boards/radxa-rock5/Makefile
 create mode 100644 arch/arm/boards/radxa-rock5/board.c
 create mode 100644 arch/arm/boards/radxa-rock5/lowlevel.c
 create mode 100644 arch/arm/dts/rk3588-rock-5b.dts
 create mode 100644 arch/arm/dts/rk3588.dtsi
 create mode 100644 arch/arm/dts/rk3588s.dtsi
 create mode 100644 arch/arm/mach-rockchip/rk3588.c
 create mode 100644 drivers/clk/rockchip/clk-rk3588.c
 create mode 100644 drivers/clk/rockchip/rst-rk3588.c
 create mode 100644 drivers/gpio/gpio-rockchip.c
 create mode 100644 drivers/net/r8169.h
 create mode 100644 drivers/net/r8169_firmware.c
 create mode 100644 drivers/net/r8169_firmware.h
 create mode 100644 drivers/net/r8169_main.c
 create mode 100644 drivers/net/r8169_phy_config.c
 delete mode 100644 drivers/net/rtl8169.c
 create mode 100644 drivers/pci/pcie-dw-rockchip.c
 create mode 100644 drivers/pinctrl/pinctrl-rockchip.h
 create mode 100644 include/mach/rockchip/rk3588-regs.h

-- 
2.39.2



