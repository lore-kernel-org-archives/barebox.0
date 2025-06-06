Delivery-date: Fri, 06 Jun 2025 07:58:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNQ6U-004HIj-2R
	for lore@lore.pengutronix.de;
	Fri, 06 Jun 2025 07:58:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNQ6P-0004tS-3i
	for lore@pengutronix.de; Fri, 06 Jun 2025 07:58:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=u50kuTJqCw8i1f7wFOrkSP5i8OgvWPVvHc1sbgnUC4o=; b=OEcoMZjj7gOFqrRivOdSVxtrhe
	CMJCcWwEj93rYBgB7ptNGzOIFnxZK0bdMyJc9AaZBfqgpKuYLpMUJVrOn01KFt4PACP81czC9pw6f
	PkhvhN9Iibs/H8RDLNXB/ygeL6ge+/TG9GG7tJ5RlvluoSM3HF0bnllXiMtZO3DoEeh6xWcfLJ1q9
	iQuk/rGkSUe91SibtNwH6HYyb16oYXM24QcZhkWhxMhEuJrnPmyKOArFm81IqCLVSwHfN15DuPbcV
	QetEuLaEgzP4rfiP7o+ykTXHVVI3Rg+LCnKcQJtoSJdiDrUXysXEjtqQruflDa4jtkNy0OzrWK0P4
	uxfyIIqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNQ5U-0000000H9IA-2Mbq;
	Fri, 06 Jun 2025 05:57:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNQ5Q-0000000H9DL-2mrN
	for barebox@lists.infradead.org;
	Fri, 06 Jun 2025 05:57:54 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uNQ5O-0003r4-9b
	for barebox@lists.infradead.org; Fri, 06 Jun 2025 07:57:50 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Date: Fri,  6 Jun 2025 07:57:32 +0200
Message-Id: <20250606055748.1990383-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_225752_715386_C9E09340 
X-CRM114-Status: GOOD (  10.57  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 00/16] ARM: stm32mp: add MIPI DSI support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This enables barebox to make use of the MIPI DSI display on the DK2.
The RK35xx also has a Designware MIPI-DSI host and there's already VOP2
support, so that will likely follow in future.

v1 -> v2:
  - fix breakage for ACPI/EFI, because struct bus_type::dev
    change
  - add various header includes to fix allyesconfig sandbox
    build. Now everything is green

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
 drivers/bus/acpi.c                            |   12 +-
 drivers/efi/efi-device.c                      |   31 +-
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
 drivers/video/dw_mipi_dsi.c                   | 1043 ++++++++++
 drivers/video/mipi_dsi.c                      | 1731 +++++++++++++++++
 drivers/video/panel-orisetech-otm8009a.c      |  506 +++++
 drivers/video/rockchip/rockchip_drm_vop2.c    |   13 -
 drivers/video/stm32_dsi.c                     |  458 +++++
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
 include/video/mipi_dsi.h                      |  619 ++++++
 include/video/vpl.h                           |   15 +
 45 files changed, 4964 insertions(+), 145 deletions(-)
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



