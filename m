Delivery-date: Wed, 21 Feb 2024 16:04:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rco8k-00HNmM-02
	for lore@lore.pengutronix.de;
	Wed, 21 Feb 2024 16:04:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rco8j-00056q-BD
	for lore@pengutronix.de; Wed, 21 Feb 2024 16:04:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Thl10rSgCbmo37r/Q3E9uEkLd+a4BrXZdr3cO422RcQ=; b=wLvR03FBRQ3kgwn0UHuP5K79QW
	o+HzwxeuAi5IU9tTnW2AET5oUiSp1rMu33rPjagFvcyOuj8zKGR+BiexCUCXzKcG7PQdQ8DmVt/Su
	RGyqc6q0N7lJsTwOG629NGOvqchL154E1rW2U2JpBhV9SvemDatJyBBd7bcUIRyd4l6UVV/4+zUl/
	W2HUHas1aUFv83TRJzbYDJ0Hq6Ye3qTPf//B70qgikW7TwZln+0cr+bU210Pe5Jk98coSIe9Y/PDa
	2vd35fYT/CwJjvs0QUMfphHMa1QZ3QtIrXJudj18NQRu/NeFfbTrVNiusxSUMekf0dUrmxWAiAUGb
	Ismkv4PA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rco8B-00000001OPN-0XMA;
	Wed, 21 Feb 2024 15:03:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rco86-00000001OM4-207Z
	for barebox@lists.infradead.org;
	Wed, 21 Feb 2024 15:03:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rco84-0004gT-JT; Wed, 21 Feb 2024 16:03:24 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rco84-0023iw-4c; Wed, 21 Feb 2024 16:03:24 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rco84-00BYvn-07;
	Wed, 21 Feb 2024 16:03:24 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 21 Feb 2024 16:03:15 +0100
Message-Id: <20240221150323.2715164-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240221_070326_596604_B28F2B5C 
X-CRM114-Status: GOOD (  12.69  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 0/8] Update TQMa6UL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The TQMa6UL uses a downstream device tree, but there also appeared
device trees for it upstream. Use the upstream device trees and add
support for reading the board EEPROM to pick the right device tree
for a particular board type.

Sascha Hauer (8):
  board: tq: add missing select
  board: tq: fix format specifier
  board: tq: add support for 16bit eeprom
  ARM: i.MX6: add i2c4 base address
  ARM: tqma6ul: add pr_fmt string
  ARM: tqma6ul: enable enet_ref_125m clk
  net: phy: fix miibus parent device of_node not matching phy node
  ARM: tqma6ul: use upstream device trees

 arch/arm/boards/tqma6ulx/board.c              |  16 +-
 arch/arm/boards/tqma6ulx/lowlevel.c           |  46 ++-
 arch/arm/boards/tqma93xx/lowlevel.c           |   2 +-
 arch/arm/dts/Makefile                         |   5 +-
 arch/arm/dts/imx6ul-mba6ulx.dtsi              | 333 ------------------
 ...mba6ulx.dts => imx6ul-tqma6ul-common.dtsi} |   5 -
 arch/arm/dts/imx6ul-tqma6ul2-mba6ulx.dts      |   4 +
 arch/arm/dts/imx6ul-tqma6ul2l-mba6ulx.dts     |   4 +
 arch/arm/dts/imx6ull-tqma6ull2-mba6ulx.dts    |   4 +
 arch/arm/dts/imx6ull-tqma6ull2l-mba6ulx.dts   |   4 +
 arch/arm/dts/tqma6ul-common.dtsi              | 191 ----------
 arch/arm/dts/tqma6ulx-common.dtsi             |  28 --
 arch/arm/mach-imx/Kconfig                     |   3 +
 common/boards/Kconfig                         |   1 +
 common/boards/tq/tq_eeprom.c                  |   6 +-
 drivers/net/phy/mdio_bus.c                    |  10 +-
 drivers/net/phy/phy.c                         |   2 +-
 include/boards/tq/tq_eeprom.h                 |   2 +-
 include/mach/imx/imx6-regs.h                  |   1 +
 19 files changed, 93 insertions(+), 574 deletions(-)
 delete mode 100644 arch/arm/dts/imx6ul-mba6ulx.dtsi
 rename arch/arm/dts/{imx6ul-mba6ulx.dts => imx6ul-tqma6ul-common.dtsi} (96%)
 create mode 100644 arch/arm/dts/imx6ul-tqma6ul2-mba6ulx.dts
 create mode 100644 arch/arm/dts/imx6ul-tqma6ul2l-mba6ulx.dts
 create mode 100644 arch/arm/dts/imx6ull-tqma6ull2-mba6ulx.dts
 create mode 100644 arch/arm/dts/imx6ull-tqma6ull2l-mba6ulx.dts
 delete mode 100644 arch/arm/dts/tqma6ul-common.dtsi
 delete mode 100644 arch/arm/dts/tqma6ulx-common.dtsi

-- 
2.39.2



