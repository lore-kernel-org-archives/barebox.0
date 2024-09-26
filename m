Delivery-date: Thu, 26 Sep 2024 15:15:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stoLZ-0030qC-30
	for lore@lore.pengutronix.de;
	Thu, 26 Sep 2024 15:15:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stoLZ-0005fd-NP
	for lore@pengutronix.de; Thu, 26 Sep 2024 15:15:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=LmVJrNRYlCB+ivBNkljYCzLrimC1tCaFjHgls/N6g+g=; b=tIGBw5gnr8+tYedmKn136rqfbn
	H/4S6WjSzWEt7uTCIS8CCsKOLvGhnVAde5OQVO1WRHrG2jivTjFNxPdjNud+Vyuhqzun0gUEugdXM
	/BSm/VTmBAsEL3JiC5G1N7q59qM1lK+v1QoE6gd9wkg6QH+5ojB9b6afs4GD+PlO2V0kceWwKsPJM
	QeDCV106J2tPhy+g76WEZ5wQXydZlNySLVSJVssSbAIvtFoXcbE5o5oQ1Cu9eHFoU3kDmRB2klmeH
	Xlpf0EzU6Delf35EONB7dG8j8cPan5PHvqf1CdUTkpsHzrV1qQ2vrTSDwC9VoghnGUSccbm0fTREr
	TL/P4z+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stoL0-00000008R1J-1aCu;
	Thu, 26 Sep 2024 13:15:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stoKu-00000008QyZ-3jYZ
	for barebox@lists.infradead.org;
	Thu, 26 Sep 2024 13:15:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stoKl-0004ul-Lq; Thu, 26 Sep 2024 15:15:03 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stoKl-001h79-3V; Thu, 26 Sep 2024 15:15:03 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stoKl-00GZyn-1b;
	Thu, 26 Sep 2024 15:15:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 26 Sep 2024 15:14:58 +0200
Message-Id: <20240926-vop2-v1-0-fe0581f2020b@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAFJe9WYC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxMDSyMz3bL8AiNd8yQTyzTDJJNkU3NTJaDSgqLUtMwKsDHRsbW1ADNlJrV
 WAAAA
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1727356502; l=3696;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=eun78+awyAs53hL57PoHElHpUXRlo1UUheUd6nr/3UE=;
 b=RyAZrAgkEDIxO7EgzFH/hadQzJNNvo1HlDmp4FMoY8FT0UIt+XhkOdlZePjWf4MF/TZ86oxTk
 tjLg1DLpm/ZB7iAfNONCcdLY6KrmYsmYYp2WXX8zmzrkwNTiVU96o91
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240926_061512_973770_8F0292B8 
X-CRM114-Status: GOOD (  13.19  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 00/13] video: Add Rockchip VOP2 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This series adds support for the VOP2 controller found on the newer
Rockchip SoCs like RK3566, RK3568 and RK3588. It has been tested on a
RK3568 based ROCK3a board using HDMI and a RK3568 based custom board
using HDMI and RGB output.

The driver has support for a base plane and one or more overlay planes
which makes it possible to have a background image and a transparent
framebuffer console on an overlay.

Before adding the driver we have to add some headers from the Linux DRM
subsystem for easier inclusion of this DRM based driver.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (13):
      clk: rockchip: rk3568: Fix HDMI clocks
      video: add videomode helpers
      media-bus-format: update from kernel
      regmap: add regfield support
      video: add include/video/drm/drm_connector.h
      fb: add fb_rect functions
      video: Add Sitronix st7789v panel driver
      video: add dw-hdmi driver
      video: i.MX ipuv3: switch to upstream hdmi driver
      fb: Accept overlay framebuffers without modes
      fb: print more information on devinfo
      ARM: ARM64: implement dma_alloc_writecombine()
      video: Rockchip: Add VOP2 driver

 arch/arm/cpu/mmu_64.c                              |   11 +-
 arch/arm/cpu/mmu_64.h                              |   15 +-
 drivers/base/regmap/internal.h                     |   11 +
 drivers/base/regmap/regmap.c                       |  131 ++
 drivers/clk/rockchip/clk-rk3568.c                  |    8 +-
 drivers/video/Kconfig                              |   18 +
 drivers/video/Makefile                             |    5 +-
 drivers/video/dw-hdmi.c                            | 2286 ++++++++++++++++++++
 drivers/video/{imx-ipu-v3/imx-hdmi.h => dw-hdmi.h} |  245 ++-
 drivers/video/fb.c                                 |   11 +-
 drivers/video/imx-ipu-v3/Kconfig                   |    1 +
 drivers/video/imx-ipu-v3/Makefile                  |    2 +-
 drivers/video/imx-ipu-v3/dw_hdmi-imx.c             |  223 ++
 drivers/video/imx-ipu-v3/imx-hdmi.c                | 1360 ------------
 drivers/video/mode-helpers.c                       |  174 ++
 drivers/video/panel-sitronix-st7789v.c             |  652 ++++++
 drivers/video/rockchip/Kconfig                     |   18 +
 drivers/video/rockchip/Makefile                    |    2 +
 drivers/video/rockchip/dw_hdmi-rockchip.c          |  372 ++++
 drivers/video/rockchip/rockchip_drm_drv.h          |   66 +
 drivers/video/rockchip/rockchip_drm_vop.h          |  424 ++++
 drivers/video/rockchip/rockchip_drm_vop2.c         | 2042 +++++++++++++++++
 drivers/video/rockchip/rockchip_drm_vop2.h         |  541 +++++
 drivers/video/rockchip/rockchip_vop2_reg.c         |  280 +++
 drivers/video/rockchip/rockchip_vop_reg.c          | 1290 +++++++++++
 include/fb.h                                       |   24 +
 include/linux/hdmi.h                               |  445 ++++
 include/linux/regmap.h                             |   39 +
 include/uapi/drm/drm_mode.h                        |   93 +
 include/video/drm/drm_connector.h                  |  502 +++++
 include/video/drm/drm_modes.h                      |  409 ++++
 include/video/dw_hdmi.h                            |  203 ++
 include/video/media-bus-format.h                   |   55 +-
 include/video/videomode.h                          |   40 +
 include/video/vpl.h                                |    1 +
 35 files changed, 10566 insertions(+), 1433 deletions(-)
---
base-commit: 46cb3f1ac62430d3fa662a4055c3a1c289ec3c86
change-id: 20240926-vop2-7b49f1b4c575

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



