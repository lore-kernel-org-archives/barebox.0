Delivery-date: Mon, 28 Oct 2024 15:41:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t5Qvg-001tjw-0t
	for lore@lore.pengutronix.de;
	Mon, 28 Oct 2024 15:41:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t5Qvf-00053Q-TY
	for lore@pengutronix.de; Mon, 28 Oct 2024 15:41:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=OyvcecBkvCi24UrIF26qnCpRKm4xipy397D72Pyyaxs=; b=H43Xqh9jJsx2liItITGcbfnR5s
	THWOW09F5dyIFmL0kuLKmnXtupocolq/+zF6FesKLbVL9mQjVF4haAdlTKELBK2rRh9F9QmfWYeMr
	5i1/vfcev3kU+A5X9bxhNSckR41HyJshTGAI91uE3WNR//vfDN8DeEVJBDaBZqNF6iM3YlnPiE8uc
	tk0138zSGFnYwfECjfPDgPSzfEo1T5bX9EObMs/mSt3ZIgy+11kiy7ov/YNGUIp93UYzJh8kuBk6+
	kLQ2nFNSvfBifnsN+OA2zcWXYMG3fWCOsqHrfrbeESnD7HJ0EcBW/mgtGFrj3PIxc+us0YHEPxpF1
	u5E23ywA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t5Quw-0000000B9ik-0teh;
	Mon, 28 Oct 2024 14:40:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t5Qb3-0000000B5of-0ZQ1
	for barebox@lists.infradead.org;
	Mon, 28 Oct 2024 14:19:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t5Qax-0002nk-1X; Mon, 28 Oct 2024 15:19:47 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t5Qaw-000s7J-25;
	Mon, 28 Oct 2024 15:19:46 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t5Qaw-00EMX2-1l;
	Mon, 28 Oct 2024 15:19:46 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 28 Oct 2024 15:19:45 +0100
Message-Id: <20241028-vop2-rk3588-v1-0-a54bf7c28adc@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAIGdH2cC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxNDAyML3bL8AiPdomxjUwsLXeNUI9PkFNNEk6TUZCWgjoKi1LTMCrBp0bG
 1tQCveQIHXQAAAA==
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1730125186; l=2726;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=ZPuIlH/uFqSrl7342eaxQqONrx5pWxOetyJnoRL6EcU=;
 b=OWM1n5eQZUYEuzHan++jNrYMa7jqIpP2mV7RvsmeFF/2oGWAh/p5njGFBL1aLK/ni8LvWJAXQ
 m99YDG5rU3nD+qM41yydBzSS3dK3dg39XAGaOInhx5Gaz/N0o+3g/MM
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241028_071953_427446_21596CC1 
X-CRM114-Status: GOOD (  13.12  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 00/12] video: rockchip: add vop2 rk3588 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This series adds the missing pieces to add RK3588 support to the vop2
driver. The RK3588 needs a different HDMI TX driver and also a HDMI/eDP
phy driver. The series contains some patches I picked from
https://gitlab.collabora.com/hardware-enablement/rockchip-3588/linux
which are marked as WIP. The patches register several clocks in the vop2
driver.Due to their experimental status I don't want to merge them now,
I'd rather give it some time until they hit Linux upstream.
Nevertheless I'd like to get the series out now in case someone finds
it useful, so here it is.
The first three patches shouldn't change though, so they can be merged
now.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (12):
      vop2: rk3588: make windows primary
      vop2: rk3588: pass clock to rk3588_calc_cru_cfg()
      clk: rockchip: rk3588: Update driver from Linux
      phy: add support for Rockchip Samsung HDMI/eDP Combo PHY driver
      video: add support for dw-hdmi-qp
      video: rockchip: add support for RK3588 HDMI
      video: rockchip vop2: fix uninitialized variables
      phy: rockchip-inno-usb2: add support for rk3588
      phy: phy-rockchip-samsung-hdptx: Add clock provider support
      drm/rockchip: vop2: Improve display modes handling on rk3588
      ARM: dts: Rockchip rk3588: add HDMI node
      ARM: dts: rockchip rk3588: adjustments for vop

 arch/arm/dts/rk3588-rock-5b.dts                   |   43 +
 arch/arm/dts/rk3588.dtsi                          |   65 ++
 drivers/clk/rockchip/clk-rk3588.c                 |   90 +-
 drivers/phy/rockchip/Kconfig                      |    8 +
 drivers/phy/rockchip/Makefile                     |    1 +
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c     |   46 +-
 drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 1135 +++++++++++++++++++++
 drivers/video/Kconfig                             |    9 +
 drivers/video/Makefile                            |    1 +
 drivers/video/dw-hdmi-qp.c                        |  470 +++++++++
 drivers/video/dw-hdmi-qp.h                        |  834 +++++++++++++++
 drivers/video/rockchip/Kconfig                    |   11 +
 drivers/video/rockchip/Makefile                   |    1 +
 drivers/video/rockchip/dw_hdmi_qp-rockchip.c      |  231 +++++
 drivers/video/rockchip/rockchip_drm_vop2.c        |  474 ++++++++-
 drivers/video/rockchip/rockchip_vop2_reg.c        |    8 +-
 include/video/dw_hdmi_qp.h                        |   32 +
 17 files changed, 3407 insertions(+), 52 deletions(-)
---
base-commit: 59658c877bcc605fe3ca36653b4f40f57856b81a
change-id: 20241028-vop2-rk3588-3e25cd5a4bec

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



