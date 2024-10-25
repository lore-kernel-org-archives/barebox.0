Delivery-date: Fri, 25 Oct 2024 10:51:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t4G2F-000Yrh-1b
	for lore@lore.pengutronix.de;
	Fri, 25 Oct 2024 10:51:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t4G2G-0001Nq-4j
	for lore@pengutronix.de; Fri, 25 Oct 2024 10:51:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=SD2oUyO3OvQKyQ6Tp8AIjZdkr21vkVBuQ3/UJj+Aavg=; b=Pkwn+m6iLUmDGo31XpEnOQr7XT
	noga9cGoFCRXga5Bze8HCIRbY8QoHE9dQuecuWr7APv3Y2Bjt9788ynrfbXQHGVGNFL2bh/9iddYo
	kQ5IDpkmu1O1Pruf8AKqvScbiP7kyvzk5OCeA3Y9MfkQdNLXJZRf1X2eXz8mnBlHx24TcTtsjcbFA
	yYFWfBxqCVIHE/cqj88m7N7pDlLCW1atvO4K9PXTLPQsYZO0m2W/tcmcVtuQCdpejKkAjjXBQgWWC
	Iy3mx0Rv6fB9Rhp81EIelVKUSsMhC/oT0gDCZ+REbiCQiF3PWhCz6mNVSDdJfiuX+iPWsqTmmzU7s
	Mwc+A9jQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t4G1q-000000032tv-3E2L;
	Fri, 25 Oct 2024 08:50:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t4G0D-000000032Ku-1SmY
	for barebox@lists.infradead.org;
	Fri, 25 Oct 2024 08:49:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t4G0C-0000zL-10; Fri, 25 Oct 2024 10:49:00 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t4G0B-000KrR-2f;
	Fri, 25 Oct 2024 10:48:59 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t4G0B-008U4a-2T;
	Fri, 25 Oct 2024 10:48:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 25 Oct 2024 10:48:58 +0200
Message-Id: <20241025-phy-class-v1-0-24bf51365a08@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAHpbG2cC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxNDAyNT3YKMSt3knMTiYl0LS0OLlDQLExOLVEMloPqCotS0zAqwWdGxtbU
 AMOJjHFsAAAA=
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1729846139; l=1133;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=9jg2xAvU10UcGrsS1xveevSMK1QXfCwP5/2kWcOURmk=;
 b=Cz+jUx30/OuNZ6eMP7zsb6XGvbycxwI4EMIixpudQ4nJUTGRIOx0qXhcOIvLaEi9BTjCJEXJz
 Utoulv0Ny/6BjrxLznVrTw1swKMGa4C3FJEKeFmFe9C1lynPqQ2wHgz
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241025_014901_426504_7B9B513B 
X-CRM114-Status: UNSURE (   6.51  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/3] phy: some updates
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Collect all phy devices in their own class and implement
of_phy_simple_xlate().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (3):
      phy: make of_phandle_args constant
      phy: put phy devices in class
      phy: add of_phy_simple_xlate()

 drivers/phy/freescale/phy-fsl-imx8mq-usb.c         |  2 +-
 drivers/phy/phy-core.c                             | 34 ++++++++++++++++++++--
 drivers/phy/phy-stm32-usbphyc.c                    |  2 +-
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c      |  2 +-
 drivers/phy/rockchip/phy-rockchip-naneng-combphy.c |  2 +-
 drivers/phy/rockchip/phy-rockchip-snps-pcie3.c     |  2 +-
 drivers/phy/usb-nop-xceiv.c                        |  2 +-
 drivers/pinctrl/pinctrl-tegra-xusb.c               |  2 +-
 drivers/usb/imx/imx-usb-phy.c                      |  2 +-
 include/linux/phy/phy.h                            |  7 +++--
 10 files changed, 44 insertions(+), 13 deletions(-)
---
base-commit: e55e492573e33823f25935ee00fe7fa7bf2c5c90
change-id: 20241025-phy-class-8918df8448e1

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



