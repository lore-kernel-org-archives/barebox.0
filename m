Delivery-date: Tue, 30 May 2023 13:19:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q3xOS-002jy2-9Q
	for lore@lore.pengutronix.de; Tue, 30 May 2023 13:19:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q3xOP-0001Wq-W7
	for lore@pengutronix.de; Tue, 30 May 2023 13:19:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=TQQ+1Ef16uSHK9E1kTdqzaanYMtfo7NzyBD/Log3t8Q=; b=3oRpyRUuhOxD1AYYbQmt6Nj1kV
	4ZRYSDg/WUPJ58uJ1j0xUg+soIikXz7bkyY+JdSMHIJbJ5n9aYAZ5Zy6mxFB1ViRcN7M22QONtsbp
	cEJGLEQWWxqRECOseTIT5VvBbrWIemg/tpt6QFwqt9OSGORFN+YgiroVAuVY0dp8LWcTMZjrhJ7XY
	nkkPmbdxkLwOSUmHv7zR5dvbrP1FCvDq+LNIRZRo7BHI+jYVNrNBepNobeDMjWAAV/omjqfUmcDGS
	rwBLmgSDexU0FmPkPbqO30HJUx/V/tzYBreZXT3AixgGj1BSGb6r/uRnyhcjmtrrbUnaNpaO1NAkb
	DIEHq62g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q3xNF-00Dbn1-1K;
	Tue, 30 May 2023 11:18:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q3xNA-00Dbiq-1e
	for barebox@lists.infradead.org;
	Tue, 30 May 2023 11:18:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q3xN6-00014c-Is; Tue, 30 May 2023 13:18:36 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1q3xN5-003rOg-UV; Tue, 30 May 2023 13:18:35 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1q3xN3-0082al-It; Tue, 30 May 2023 13:18:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 30 May 2023 13:18:22 +0200
Message-Id: <20230530111832.1916542-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230530_041840_592421_B67AE27E 
X-CRM114-Status: UNSURE (   9.23  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 00/10] ARM: Rockchip rk3588: eMMC/SD support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This series brings up eMMC/SD on Rockchip rk3588 SoCs. There were
multiple bugs that prevented them from working.

Additionally the CPU clock is now configured to 816MHz. This is not
particularly fast, but considerably faster than the original 24MHz.

Sascha Hauer (10):
  mci: rockchip-dwcmshc-sdhci: Add rk3588
  firmware: arm_scmi: fix async check
  clk: rockchip: add missing pll_rk3588_core handling
  clk: clk-divider: fix CLK_DIVIDER_HIWORD_MASK flag
  pinctrl: rockchip: fix bias settings
  ARM: dts: rk3588s: Set CPU clock to 816MHz
  mci: rockchip-dwcmshc-sdhci: enable DLL only for clock >= 52MHz
  ARM: rockchip_v8_defconfig: Enable SCMI support
  ARM: multi_v8_defconfig: Enable SCMI support
  ARM: rockchip rock 5b: drop no longer valid comments

 arch/arm/configs/multi_v8_defconfig    |  3 ++
 arch/arm/configs/rockchip_v8_defconfig |  3 ++
 arch/arm/dts/rk3588-rock-5b.dts        |  2 -
 arch/arm/dts/rk3588s.dtsi              |  5 ++-
 drivers/clk/clk-divider.c              |  2 +-
 drivers/clk/rockchip/clk-pll.c         |  3 +-
 drivers/firmware/arm_scmi/clock.c      |  2 +-
 drivers/mci/rockchip-dwcmshc-sdhci.c   | 54 ++++++++++++++++++++------
 drivers/pinctrl/pinctrl-rockchip.c     | 31 +++++++++++++--
 9 files changed, 83 insertions(+), 22 deletions(-)

-- 
2.39.2



