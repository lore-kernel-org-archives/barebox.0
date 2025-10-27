Delivery-date: Mon, 27 Oct 2025 08:02:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDHFg-00CFlF-25
	for lore@lore.pengutronix.de;
	Mon, 27 Oct 2025 08:02:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDHFg-0003mw-4x
	for lore@pengutronix.de; Mon, 27 Oct 2025 08:02:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=8CRr5wiYYF5kzSamSxdPqs9UH1xcCBznSgDz2aupC5A=; b=FrgSZPp/NSjNDjPrI3LnIori+v
	9m3Y4hW5fNdljlYbVO5PX8HScnuUQE6+5Qt4LDFffM2CznXEK3+MceX0x3l1fbKPlHvjRLSyZNjgn
	bU6Qb1kaNqUl6V590qK+WirHK+drF6FCqWv8hC5bnW68YN9C2CEg3HjzUVGbg6Us9c7mKdUvXCwHh
	05bir+GvhTltR+Qfm3LUqiCl0gpx6yxdT6zwceZyVVa/qtZRK2W7e/9Fcf2dNOxDub+NHOzzqe0+g
	HcA0slt6gl6lAnca+sjKSClHvOUKFDLcS5vfxLdvQeFdy/9OdD9D4yQ5nYjjBQtco+LHc3brzDaTI
	2Ns6I8Cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDHFE-0000000DF9S-2vxz;
	Mon, 27 Oct 2025 07:02:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDHFC-0000000DF7s-1RSF
	for barebox@lists.infradead.org;
	Mon, 27 Oct 2025 07:02:19 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vDHFA-0003Rs-PV
	for barebox@lists.infradead.org; Mon, 27 Oct 2025 08:02:16 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Date: Mon, 27 Oct 2025 08:00:52 +0100
Message-ID: <20251027070214.2425834-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_000218_400956_84F5F0EA 
X-CRM114-Status: UNSURE (   8.35  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 0/4] phy: rockchip: add MIPI-DSI phy driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This is a prerequisite for VOP2 MIPI-DSI support that I am porting[1] for
RK3566.

The VOP2 bits need some attention still, but the PHY patches here are
good to go.

[1]: https://github.com/a3f/barebox/tree/rgb30-display

Ahmad Fatoum (4):
  phy: add support for generic MIPI D-PHY
  phy: add devinfo callback
  phy: add phy_configure operation
  phy: rockchip: add Innosilicon MIPI/LVDS/TTL PHY driver

 drivers/phy/Kconfig                           |   8 +
 drivers/phy/Makefile                          |   1 +
 drivers/phy/phy-core-mipi-dphy.c              | 187 +++++
 drivers/phy/phy-core.c                        |  84 ++
 drivers/phy/rockchip/Kconfig                  |   9 +
 drivers/phy/rockchip/Makefile                 |   1 +
 .../phy/rockchip/phy-rockchip-inno-dsidphy.c  | 764 ++++++++++++++++++
 include/linux/phy/phy-mipi-dphy.h             | 287 +++++++
 include/linux/phy/phy.h                       |  33 +
 include/linux/time64.h                        |  17 +
 10 files changed, 1391 insertions(+)
 create mode 100644 drivers/phy/phy-core-mipi-dphy.c
 create mode 100644 drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c
 create mode 100644 include/linux/phy/phy-mipi-dphy.h
 create mode 100644 include/linux/time64.h

-- 
2.47.3



