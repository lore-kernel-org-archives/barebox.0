Delivery-date: Fri, 08 Nov 2024 14:15:39 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t9Opt-006Kmr-2w
	for lore@lore.pengutronix.de;
	Fri, 08 Nov 2024 14:15:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t9Ops-0003lD-F6
	for lore@pengutronix.de; Fri, 08 Nov 2024 14:15:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=baxgNc38QG+wkj0mKHKqPl+1K95OzbjCXWsob0DnP7Q=; b=VPiYFXMM6mon0hsKFpIgezJrfm
	N2/bSN08f/RNFVySHbS5eeMc1dV/l3ZcAv30S77fZD7H0y862LFm6EFmDr6wAW3eW7edd4N85f0RV
	NGRu51x4Qb70P6m+K+KrW/yH5EEuM7Mxkpr7AuqMqPFdPu7jwDB8PTbP7BPzMcwYMqZR74A2pJNor
	8ign1rzQ0xPfFHVozLxvauqx8ByBRv1cgscI/TWorkgz+Yaeciqf/kFdZECxzwKnPnV5RiuPzTOrb
	v3fwSbpYxQpztzk3yx5b/gksr2bAsMRQ07ogYJKNqUh+aKvHPj74cwKQbKL/T6iTp3riW68LuhOZf
	sSW1cR/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t9OpN-0000000Adgo-2dCV;
	Fri, 08 Nov 2024 13:15:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t9OpK-0000000AdfG-2H0W
	for barebox@lists.infradead.org;
	Fri, 08 Nov 2024 13:15:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t9OpJ-0003X7-4l; Fri, 08 Nov 2024 14:15:01 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t9OpI-002cw0-2s;
	Fri, 08 Nov 2024 14:15:00 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t9OpI-00AFXY-2Y;
	Fri, 08 Nov 2024 14:15:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 08 Nov 2024 14:14:58 +0100
Message-Id: <20241108-network-k3-v1-0-ee71bff15eb7@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIANMOLmcC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxNDQwML3bzUkvL8omzdbGPd1ERTA1ML40QDEyNjJaCGgqLUtMwKsGHRsbW
 1ACMiqAZcAAAA
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1731071700; l=2248;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=uHEVhS0BzPKZLuRY+jz8FtEuwqclPXXvpz2/t9YmjBs=;
 b=e1nWTRqVpvAgvJMiUx59Ybhl6WumFlPu5H4jbGYtZpHuk82rRR6pQGQ+SYgkczDHETUoT/zL9
 QdKUQHsmgYkByKOBRwkxbexexXRdMXwwpXwNsLlqz3ZoiwHo4fXTNwK
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241108_051502_627064_89643DBC 
X-CRM114-Status: GOOD (  10.94  )
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
Subject: [PATCH 0/7] ARM: K3: add AM625 ethernet support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This series adds ethernet support for TI K3 SoCs. The driver has been
tested on the TI AM625 based Beagleplay board. The driver needs an
external DMA engine and also some TI specific units, so this series is
longer than it should be for just an ethernet driver.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (7):
      net: davinci_mdio: separate driver
      firmware: ti_sci: update from U-Boot
      ARM: K3: add navss-ringacc driver
      dma: add dma-devices support
      dma-devices: add k3-udma support
      ARM: k3: am625: add syscon compatible to phy_gmii_sel
      net: add am65-cpsw-nuss driver

 arch/arm/dts/k3-am625-beagleplay.dts |    1 +
 arch/arm/dts/k3-am625.dtsi           |    5 +
 drivers/dma/Kconfig                  |   13 +
 drivers/dma/Makefile                 |    3 +
 drivers/dma/dma-devices.c            |  210 +++
 drivers/dma/ti/Kconfig               |    6 +
 drivers/dma/ti/Makefile              |    1 +
 drivers/dma/ti/k3-psil-priv.h        |   49 +
 drivers/dma/ti/k3-psil.c             |   89 +
 drivers/dma/ti/k3-psil.h             |   83 +
 drivers/dma/ti/k3-udma-hwdef.h       |  185 +++
 drivers/dma/ti/k3-udma.c             | 2984 ++++++++++++++++++++++++++++++++++
 drivers/firmware/ti_sci.c            |  276 +++-
 drivers/firmware/ti_sci.h            |    2 +-
 drivers/net/Kconfig                  |   17 +
 drivers/net/Makefile                 |    2 +
 drivers/net/am65-cpsw-nuss.c         |  785 +++++++++
 drivers/net/cpsw.c                   |  178 --
 drivers/net/davinci_mdio.c           |  188 +++
 drivers/soc/Makefile                 |    1 +
 drivers/soc/ti/Makefile              |    1 +
 drivers/soc/ti/k3-navss-ringacc.c    | 1163 +++++++++++++
 include/dma-devices.h                |  172 ++
 include/soc/ti/cppi5.h               |  996 ++++++++++++
 include/soc/ti/k3-navss-ringacc.h    |  252 +++
 include/soc/ti/ti-udma.h             |   45 +
 include/soc/ti/ti_sci_protocol.h     |   38 +-
 27 files changed, 7515 insertions(+), 230 deletions(-)
---
base-commit: 351a306c0d712a9f09032e26273f38ab9b38f35f
change-id: 20241108-network-k3-ea50583a0423

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



