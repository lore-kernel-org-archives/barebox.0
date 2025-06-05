Delivery-date: Thu, 05 Jun 2025 23:14:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNHv1-0049Ok-2j
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 23:14:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNHuw-0005zX-Bl
	for lore@pengutronix.de; Thu, 05 Jun 2025 23:14:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=lmG7KP9EPzg8q6bVkN7MjKD5wYKFY1gDKVcsaiSCTvw=; b=GvsaoQ9BQRMGANF5TLCE66ighK
	8AtXY/s8Umrl1yFNvR+CgWRVgduTcKy4v33NX/7DFhjfIe/WfsQAM5uhj54URoS0fNK1DGfI4uICD
	EntnkNc4S4N3+k5vfZ0oMYu5XTNrrVnHaCe2cYaZ0hJ1kC80NHWP21A/K3FaR2aEG4ShKV9SrrM9e
	NkGQTmdUeA3wKPKq7KZ9TMC9a3i0ckYLQEu80nyiuteyiwhxonmqTxV5JHSA/aY+quJHdEIL8V5xv
	bqYGEV2OG6mpPON9svHfA3H+uwxf+2Po16GMiRAiLJJEOFthKDzPqyuYedTPFUr6qpb8PGg+ADQdt
	3o3GFfRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNHuA-0000000Geqe-1iRt;
	Thu, 05 Jun 2025 21:13:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNHo8-0000000GeDh-39SA
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 21:07:29 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uNHo7-00079B-GD
	for barebox@lists.infradead.org; Thu, 05 Jun 2025 23:07:27 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Date: Thu,  5 Jun 2025 23:07:10 +0200
Message-Id: <20250605210726.1916656-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_140728_787190_0D273ED7 
X-CRM114-Status: UNSURE (   8.89  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 00/16] ARM: stm32mp: add MIPI DSI support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This enables barebox to make use of the MIPI DSI display on the DK2.
The RK35xx also has a Designware MIPI-DSI host and there's already VOP2
support, so that will likely follow in future.

Ahmad Fatoum (16):
  driver: bus: embed bus driver node into bus
  driver: switch busses to device class
  driver: factor out bus definitions into separate header
  driver: bus: add helpers for finding devices in busses
  drive: bus: make use of new bus_find_device helper
  of: implement of_alias_from_compatible
  video: vpl: fix potential read of uninitialized variable
  video: vpl: factor out vpl_for_each
  video: vpl: handle missing struct vpl::ioctl gracefully
  video: vpl: add vpl_bridge abstraction
  video: factor out drm_mode_vrefresh
  video: add base MIPI DSI support
  video: add Designware MIPI-DSI support
  video: add STM32 MIPI DSI video driver
  video: add support for Orise Technology otm8009a panel
  ARM: stm32mp: dk2: enable MIPI-DSI display by default

 arch/arm/boards/stm32mp15xx-dkx/Makefile      |    1 +
 arch/arm/boards/stm32mp15xx-dkx/board.c       |    3 +
 .../defaultenv-stm32mp15xx-dkx/init/splash    |   18 +
 arch/arm/configs/stm32mp_defconfig            |   18 +-
 commands/devinfo.c                            |    2 +-
 common/tlv/bus.c                              |    4 +-
 drivers/amba/bus.c                            |    2 +-
 drivers/base/bus.c                            |   68 +-
 drivers/base/driver.c                         |    2 +-
 drivers/efi/efi-device.c                      |   17 +-
 drivers/i2c/i2c.c                             |    6 +-
 drivers/mci/mci-core.c                        |   14 +-
 drivers/net/phy/mdio_bus.c                    |    6 +-
 drivers/net/phy/phy.c                         |    7 +-
 drivers/of/base.c                             |   31 +
 drivers/tee/tee_core.c                        |    7 +-
 drivers/tee/tee_private.h                     |    2 -
 drivers/usb/gadget/udc/core.c                 |    3 +
 drivers/video/Kconfig                         |   35 +
 drivers/video/Makefile                        |    5 +
 drivers/video/backlight.c                     |    7 +-
 drivers/video/drm/Makefile                    |    2 +
 drivers/video/drm/drm_modes.c                 |   67 +
 drivers/video/dw_mipi_dsi.c                   | 1042 ++++++++++
 drivers/video/mipi_dsi.c                      | 1730 +++++++++++++++++
 drivers/video/panel-orisetech-otm8009a.c      |  505 +++++
 drivers/video/rockchip/rockchip_drm_vop2.c    |   13 -
 drivers/video/stm32_dsi.c                     |  457 +++++
 drivers/video/vpl.c                           |   91 +-
 drivers/w1/w1.c                               |    4 +-
 include/driver.h                              |   33 +-
 include/i2c/i2c.h                             |    5 +-
 include/linux/device.h                        |   22 -
 include/linux/device/bus.h                    |   80 +
 include/linux/gpio/consumer.h                 |    3 +
 include/linux/phy.h                           |    6 +-
 include/module.h                              |   26 +
 include/of.h                                  |    1 +
 include/video/backlight.h                     |   15 +-
 include/video/drm/drm_connector.h             |    2 +
 include/video/drm/drm_modes.h                 |    2 +
 include/video/dw_mipi_dsi.h                   |   81 +
 include/video/mipi_dsi.h                      |  618 ++++++
 include/video/vpl.h                           |   15 +
 44 files changed, 4946 insertions(+), 132 deletions(-)
 create mode 100755 arch/arm/boards/stm32mp15xx-dkx/defaultenv-stm32mp15xx-dkx/init/splash
 create mode 100644 drivers/video/drm/Makefile
 create mode 100644 drivers/video/drm/drm_modes.c
 create mode 100644 drivers/video/dw_mipi_dsi.c
 create mode 100644 drivers/video/mipi_dsi.c
 create mode 100644 drivers/video/panel-orisetech-otm8009a.c
 create mode 100644 drivers/video/stm32_dsi.c
 create mode 100644 include/linux/device/bus.h
 create mode 100644 include/video/dw_mipi_dsi.h
 create mode 100644 include/video/mipi_dsi.h

-- 
2.39.5



