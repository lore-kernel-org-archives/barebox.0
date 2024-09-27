Delivery-date: Fri, 27 Sep 2024 12:43:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1su8RF-003N0a-37
	for lore@lore.pengutronix.de;
	Fri, 27 Sep 2024 12:43:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1su8R6-0005Zj-EU
	for lore@pengutronix.de; Fri, 27 Sep 2024 12:43:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9ao0SZlHSGmkp+TU0Ktpt89DPPBrbx9XZdjIRNf7VTE=; b=CHBd9LL3cfEWBB
	rrARYVjOAOOqd1M+mEpwn3FsyfMSOAerv+IxoNi2/ipBSPjuX7bZBAtKvK3GRcD7LVHXzbnEY7rvD
	GWjgxRTixQygtYjzwQHv21fvgEo1Lqp/gr+rzCTg7U/tccn9zYfceB/lvcG6d2oTjATsA5+cz6Ss9
	wJ/0sky9wKthibCPT/AuIntWrpsGfZwC4MwlwD6cBCVY7UnAQURWphSc3iOPhr8R/ttsUW6n2uzgu
	5k9pae38sT3uBPUcVXoFJjMf+bZ8Q/WwKHnBCM4LRHkVm/fAq+TtrkLE7B/Yu/bL272DFxZX4tbx0
	Bhtiq5IKLJ11D8wxScig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1su8QE-0000000Aqk7-0BOP;
	Fri, 27 Sep 2024 10:42:02 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1su8M7-0000000Aq01-42iz
	for barebox@bombadil.infradead.org;
	Fri, 27 Sep 2024 10:37:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:From:Sender:Reply-To:
	Content-ID:Content-Description:In-Reply-To:References;
	bh=9ao0SZlHSGmkp+TU0Ktpt89DPPBrbx9XZdjIRNf7VTE=; b=o3EEWZpvLgrpADeu+hGp4sVQhr
	3MPFBMw43NIrky8vY0gMHG941j7pMQhb4AG7b6GjCJzoBSnr+07ouljn6MyRAT7bmYO4nKThjoyJv
	fAq3o5JH1Q+xOQQ7rFs3tjQlWMv9BQBFMjF711v2HXNSZYFXymWhjLFsXDEVvaIAOg7U5kKumfkCv
	QBRkJ3xf1rivactKh6wrmFJia0LqATk2NuTMK0CEQMDCLNti+fHwT/kHHBWKIWLdX2yISnYHGQJUP
	QG+HS4Q2rZ/4QDmWSf4t/B9njo7GJGEkvtlb4ULyjv/eumusjirY798oO/qTIUeElBbQBoiSswuxA
	uXHLgePA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1su8M4-00000002KZM-028m
	for barebox@lists.infradead.org;
	Fri, 27 Sep 2024 10:37:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1su8Lv-0002cy-Eo; Fri, 27 Sep 2024 12:37:35 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1su8Lv-001tyw-0m; Fri, 27 Sep 2024 12:37:35 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1su8Lv-000PJg-1J;
	Fri, 27 Sep 2024 12:37:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 27 Sep 2024 12:37:33 +0200
Message-Id: <20240927-vop2-v2-0-dc8dcfc651d5@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAO2K9mYC/12MwQ6DIBAFf8XsuTRAoNae/I/Gg+iiewEClmgM/
 17qscd5bzInJIyECV7NCREzJfKugrw1MK2jW5DRXBkkl4p38sGyD5K1RnVWGDXpVkNVQ0RL+5V
 5D5VXSpuPx1XN4rf+BbJgnFnk+ilsfbjpA7rls0XvaL/PCEMp5QuBOQZanQAAAA==
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1727433454; l=4424;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=HCGY5kTShCuhLDGavGuwLygcxeeI8kUlyXrNoFPe+X4=;
 b=B5u56OERUfrQfJJSiFu2JiKT92MSD2kV8IYoqoKU3eOnqx7ZACza1wsu40LCUSXNtYuEvuThN
 DvvSh4DKeS3BpMZlxmPcOBnlPsRtaEJt2Ga4r1WW6rPxNhw28xsqsPg
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240927_113744_581882_0125E8B5 
X-CRM114-Status: GOOD (  15.47  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 00/15] video: Add Rockchip VOP2 support
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
Changes in v2:
- remove unused file rockchip_vop_reg.c
- make vpl deep probe aware
- register overlay framebuffers with base framebuffer name + suffix
- use dev_err_probe where appropriate
- do not register unused windows on RK3566
- use device_get_match_data() instead of dev_get_drvdata()
- register vop2 with device_platform_driver() instead of late_platform_driver()
- remove debugging leftover
- select DRIVER_VIDEO_EDID and DRIVER_VIDEO_DW_HDMI rather than depending on it
- Link to v1: https://lore.barebox.org/20240926-vop2-v1-0-fe0581f2020b@pengutronix.de

---
Sascha Hauer (15):
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
      fbconsole: Adjust fbconsole names for overlays
      ARM: ARM64: implement dma_alloc_writecombine()
      vpl: make vpl deep probe aware
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
 drivers/video/fb.c                                 |   29 +-
 drivers/video/fbconsole.c                          |   22 +-
 drivers/video/imx-ipu-v3/Kconfig                   |    3 +-
 drivers/video/imx-ipu-v3/Makefile                  |    2 +-
 drivers/video/imx-ipu-v3/dw_hdmi-imx.c             |  223 ++
 drivers/video/imx-ipu-v3/imx-hdmi.c                | 1360 ------------
 drivers/video/mode-helpers.c                       |  174 ++
 drivers/video/panel-sitronix-st7789v.c             |  652 ++++++
 drivers/video/rockchip/Kconfig                     |   18 +
 drivers/video/rockchip/Makefile                    |    2 +
 drivers/video/rockchip/dw_hdmi-rockchip.c          |  365 ++++
 drivers/video/rockchip/rockchip_drm_drv.h          |   66 +
 drivers/video/rockchip/rockchip_drm_vop.h          |  424 ++++
 drivers/video/rockchip/rockchip_drm_vop2.c         | 2041 +++++++++++++++++
 drivers/video/rockchip/rockchip_drm_vop2.h         |  541 +++++
 drivers/video/rockchip/rockchip_vop2_reg.c         |  280 +++
 drivers/video/vpl.c                                |    2 +
 include/fb.h                                       |   25 +
 include/linux/hdmi.h                               |  445 ++++
 include/linux/regmap.h                             |   39 +
 include/uapi/drm/drm_mode.h                        |   93 +
 include/video/drm/drm_connector.h                  |  502 +++++
 include/video/drm/drm_modes.h                      |  409 ++++
 include/video/dw_hdmi.h                            |  203 ++
 include/video/media-bus-format.h                   |   55 +-
 include/video/videomode.h                          |   40 +
 include/video/vpl.h                                |    1 +
 36 files changed, 9305 insertions(+), 1441 deletions(-)
---
base-commit: 46cb3f1ac62430d3fa662a4055c3a1c289ec3c86
change-id: 20240926-vop2-7b49f1b4c575

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



