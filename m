Delivery-date: Mon, 09 Jan 2023 14:11:02 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pErvb-006gK5-2X
	for lore@lore.pengutronix.de; Mon, 09 Jan 2023 14:11:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pErvY-00022b-74
	for lore@pengutronix.de; Mon, 09 Jan 2023 14:11:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=bouWmGClGn01e3bb/uQaPetgmnQeXD8Bqfu7MERyXAA=; b=Fc8aDvNKArR/H/I/AdW09gnvde
	rxnLuZ93ZO9oYZLHnbOssOK9qJ99shY5T++jab2UzKRKG1qOR4OEFigwqkgvf8NiVITXAjoDpbuky
	Vn0bBIhFLt8Ozfy6TA94d21B8b5Iak3N+xI9JKlHiGEJvm60XhAnzTeKBectjjT68nHSxQLjOA39+
	hJylbESkLAIzVkPfJGW3v2zqsX6S+R3nUBvjoWKPAKvAPbFf5PCNueDjPDIYWPtx5Jx8rz4W5gSiK
	h7mNsSzzAVShlkYCrcLeScrYUU4YltBDhr493LIAUCUf5lZSgy4vN/tfbijhxery15yK7mpuiFau8
	sE1+u3qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEru3-001Rrx-6q; Mon, 09 Jan 2023 13:09:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pErt9-001RLV-FP
	for barebox@lists.infradead.org; Mon, 09 Jan 2023 13:08:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pErt5-0000qd-12
	for barebox@lists.infradead.org; Mon, 09 Jan 2023 14:08:27 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pErt4-004qve-9g
	for barebox@lists.infradead.org; Mon, 09 Jan 2023 14:08:26 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pErt3-006zGR-DQ
	for barebox@lists.infradead.org; Mon, 09 Jan 2023 14:08:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon,  9 Jan 2023 14:08:11 +0100
Message-Id: <20230109130822.1657470-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230109_050831_756632_55327DD0 
X-CRM114-Status: GOOD (  12.66  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 00/11] ARM: at91: sama5d4: add basic Wifx L1 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The Wifx L1 is a SAMA5D4 LoRaWAN gateway. It boots from NAND, but this
can be overridden by inserting a bootable SD-Card.

This first port only provides second-stage SD-Card support. It enables
use of UART, I2C/EEPROM, Ethernet and SD-Card. For NAND use on SAMA5D4,
an updated Linux driver was ported to barebox.
This will follow separately.

v1 -> v2:
  - skip stack setup on SAMA5D2 (Sascha)
  - Add Sam's Acked-by
  - Rebase on upstream/next

Ahmad Fatoum (11):
  ARM: at91: sama5: switch to nonnaked entry functions
  ARM: at91: sama5d4: add entry point helpers
  ARM: at91: sama5d4: enable for DT use
  net: macb: match atmel,sama5d4-gem compatible
  i2c: at91: extend for SAMA5D4 support
  eeprom: at24: add 24mac402/602 support
  driver: always ensure probe of RAM registered with mem_platform_driver
  common: deep-probe: don't build without CONFIG_OFDEVICE
  pinctrl: at91: make deep-probe compatible
  ARM: at91: make bootsource code generic to all SAMA5
  ARM: at91: SAMA5D4: add Wifx L1 support

 arch/arm/boards/Makefile                      |   1 +
 .../boards/microchip-ksz9477-evb/lowlevel.c   |   6 +-
 .../arm/boards/sama5d27-giantboard/lowlevel.c |   4 +-
 arch/arm/boards/sama5d27-som1/lowlevel.c      |   4 +-
 arch/arm/boards/sama5d3_xplained/lowlevel.c   |   6 +-
 arch/arm/boards/sama5d4_wifx/Makefile         |   4 +
 arch/arm/boards/sama5d4_wifx/board.c          |  38 ++
 arch/arm/boards/sama5d4_wifx/lowlevel.c       |  18 +
 arch/arm/dts/Makefile                         |   1 +
 arch/arm/dts/at91-sama5d4_wifx_l1.dts         | 358 ++++++++++++++++++
 arch/arm/dts/sama5d4.dtsi                     |   9 +
 arch/arm/mach-at91/Kconfig                    |  11 +
 arch/arm/mach-at91/Makefile                   |   3 +-
 arch/arm/mach-at91/bootm-barebox.c            |   3 +-
 arch/arm/mach-at91/ddramc.c                   |   7 +
 arch/arm/mach-at91/include/mach/barebox-arm.h |  23 +-
 arch/arm/mach-at91/include/mach/cpu.h         |   1 -
 arch/arm/mach-at91/include/mach/ddramc.h      |   1 +
 .../mach-at91/include/mach/sama5_bootsource.h |   5 +
 arch/arm/mach-at91/sama5_bootsource.c         |  36 ++
 arch/arm/mach-at91/sama5d2.c                  |  15 -
 arch/arm/mach-at91/setup.c                    |   3 -
 common/Makefile                               |   2 +-
 drivers/eeprom/at24.c                         |   2 +
 drivers/i2c/busses/i2c-at91.c                 |  14 +-
 drivers/net/macb.c                            |   1 +
 drivers/pinctrl/pinctrl-at91.c                |  20 +-
 images/Makefile.at91                          |   4 +
 include/deep-probe.h                          |   7 +
 include/driver.h                              |  13 +-
 30 files changed, 572 insertions(+), 48 deletions(-)
 create mode 100644 arch/arm/boards/sama5d4_wifx/Makefile
 create mode 100644 arch/arm/boards/sama5d4_wifx/board.c
 create mode 100644 arch/arm/boards/sama5d4_wifx/lowlevel.c
 create mode 100644 arch/arm/dts/at91-sama5d4_wifx_l1.dts
 create mode 100644 arch/arm/dts/sama5d4.dtsi
 create mode 100644 arch/arm/mach-at91/sama5_bootsource.c

-- 
2.30.2



