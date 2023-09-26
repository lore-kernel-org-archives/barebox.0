Delivery-date: Tue, 26 Sep 2023 20:40:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qlCyd-00CK1A-3W
	for lore@lore.pengutronix.de; Tue, 26 Sep 2023 20:40:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qlCya-0001rD-T0
	for lore@pengutronix.de; Tue, 26 Sep 2023 20:40:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=4QzKmX3/WMKhrjJhObeP2t0MrHs0z3ciLUdq5wnQTPM=; b=MHfebbmOI1jGNtUddcqGR5c47h
	Mu4+Xkt/2albnx1iEmE220NYXXaYvgvstfDWI8lkNAGfVp5HF4iZDQfeJCKZkx2dYWtWTOmQRcby3
	VDqQfsT32SpthJ3xXH7nGSi2zZic1/0dMknyQKKp6uI8IibIWICWYULquIY4prLam3FZ1+GkiQ53o
	8Qgy/gg10vVqMhRaC8NpHD03HGWPwbD/sorBcPf0jHuEDccJQfi7XhRft9WfmgQ9plxX2pjQrGrcz
	wS+yEhMK9gjzB9y5Vfnd8doENsHME5YyG66JQf2B++PYOmZ4MWOaI2Neh++wN6hTB4JufBOhmQvU3
	vsrUfDnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qlCxJ-00GrLg-0i;
	Tue, 26 Sep 2023 18:38:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qlCxF-00GrJm-2s
	for barebox@lists.infradead.org;
	Tue, 26 Sep 2023 18:38:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qlCxB-0000od-0d; Tue, 26 Sep 2023 20:38:37 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qlCxA-009AQD-J3; Tue, 26 Sep 2023 20:38:36 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qlCxA-00Az2q-1k;
	Tue, 26 Sep 2023 20:38:36 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: wsa@kernel.org
Date: Tue, 26 Sep 2023 20:38:30 +0200
Message-Id: <20230926183835.2617909-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230926_113841_929945_EF54B1B8 
X-CRM114-Status: GOOD (  14.23  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/5] ARM: at91: add first DT support for Calao usb/tny boards
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We have a lot of defconfigs for ARM9 AT91 boards, that we want to get
rid off after migrating the boards to at91_multi_defconfig.

Thanks to a temporarily donated Calao USB-A9G20 by Wolfram, we start by
switching the Calao boards to DT.

This is not yet a complete replacement:

  - We use the legacy NAND driver instead of the newly backported driver
    that Linux uses with the hardware, presumably without issues

  - OHCI hangs during probe, so it's disabled for now

  - A barebox with comparative functionality to the non-DT version
    exceeds the 256K partition size

These can be resolved separately though, so add here first DT support.

Ahmad Fatoum (5):
  Revert "mtd: nand: drop DT support in legacy driver"
  ARM: at91: add SDRAMC driver for memory detection
  ARM: at91: at91sam9_rst: add DT support for at91sam9260
  ARM: at91: sam9260: don't build non-DT device support when unneeded
  ARM: at91: add first DT support for Calao usb/tny boards

 arch/arm/boards/Makefile              |   1 +
 arch/arm/boards/calao/Makefile        |   4 +
 arch/arm/boards/calao/board.c         |  13 ++++
 arch/arm/boards/calao/lowlevel.c      |  30 ++++++++
 arch/arm/configs/at91_multi_defconfig |   4 +-
 arch/arm/dts/Makefile                 |   3 +
 arch/arm/dts/at91sam9260.dtsi         |  33 ++++++++
 arch/arm/dts/at91sam9g20.dtsi         |   2 +
 arch/arm/dts/calao_nand.dtsi          |  48 ++++++++++++
 arch/arm/dts/tny_a9260.dts            |   4 +
 arch/arm/dts/tny_a9g20.dts            |   4 +
 arch/arm/dts/usb_a9260.dts            |   4 +
 arch/arm/dts/usb_a9g20.dts            |   4 +
 arch/arm/mach-at91/Kconfig            |  13 ++++
 arch/arm/mach-at91/Makefile           |   3 +-
 arch/arm/mach-at91/at91sam9_rst.c     |  18 ++++-
 arch/arm/mach-at91/sdramc.c           |  47 ++++++++++++
 drivers/mtd/nand/Kconfig              |   8 +-
 drivers/mtd/nand/atmel/legacy.c       | 104 +++++++++++++++++++++++++-
 images/Makefile.at91                  |   9 +++
 include/mach/at91/at91sam9260.h       |   1 +
 include/mach/at91/at91sam9_sdramc.h   |   4 +
 include/mach/at91/at91sam9g45.h       |   1 +
 23 files changed, 353 insertions(+), 9 deletions(-)
 create mode 100644 arch/arm/boards/calao/Makefile
 create mode 100644 arch/arm/boards/calao/board.c
 create mode 100644 arch/arm/boards/calao/lowlevel.c
 create mode 100644 arch/arm/dts/at91sam9260.dtsi
 create mode 100644 arch/arm/dts/at91sam9g20.dtsi
 create mode 100644 arch/arm/dts/calao_nand.dtsi
 create mode 100644 arch/arm/dts/tny_a9260.dts
 create mode 100644 arch/arm/dts/tny_a9g20.dts
 create mode 100644 arch/arm/dts/usb_a9260.dts
 create mode 100644 arch/arm/dts/usb_a9g20.dts
 create mode 100644 arch/arm/mach-at91/sdramc.c

-- 
2.39.2



