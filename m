Delivery-date: Wed, 14 Dec 2022 11:59:59 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p5PUV-003YK6-7P
	for lore@lore.pengutronix.de; Wed, 14 Dec 2022 11:59:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p5PUU-0005nk-Ai
	for lore@pengutronix.de; Wed, 14 Dec 2022 11:59:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=FMcSYm4vZp+8SkpVlfcCc+0578rJLZ9LiCtyYtmp5HI=; b=vmQr8dz8i1hNX+mHUFDMGefO/C
	2z50F5rhE7l/8mXVXXsvrRt7WEn8DBldTBARjqNVP92qFgvkZcd+r5ILvj8tiWpmjy52BW4gJHrhT
	z8z8LRZODeN9T+pMJ7wwWFf0m6EHZpnPPhCn9/RLK45HiorXPzvgo8hRXs4rN8MxS2wSMaAGwBBhJ
	HWpH0R00vZwJo9jGVL5f596fPpvHOD9Cq02g9bWcmLscJdXREYvQ35xHpvl+PVFsZXp2qILymYOw0
	JE8f7L0w+QkzjV6Kuo0HIMryJzieLslR7EfSi7oS4Z/tLPoXUEsWTdutTuLFR380wPHocHSGP757P
	bszxVgZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5PTK-00FlVl-9j; Wed, 14 Dec 2022 10:58:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5PTA-00FlPh-4c
	for barebox@lists.infradead.org; Wed, 14 Dec 2022 10:58:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1p5PT8-0005D2-IF
	for barebox@lists.infradead.org; Wed, 14 Dec 2022 11:58:34 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1p5PT7-004Rui-3z
	for barebox@lists.infradead.org; Wed, 14 Dec 2022 11:58:33 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1p5PT6-003Xh0-DS
	for barebox@lists.infradead.org; Wed, 14 Dec 2022 11:58:32 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 14 Dec 2022 11:58:20 +0100
Message-Id: <20221214105831.844421-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221214_025836_219161_90903A30 
X-CRM114-Status: GOOD (  11.17  )
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
Subject: [PATCH 00/11] ARM: at91: sama5d4: add basic Wifx L1 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The Wifx L1 is a SAMA5D4 LoRaWAN gateway. It boots from NAND, but this
can be overridden by inserting a bootable SD-Card.

This first port only provides second-stage SD-Card support. It enables
use of UART, I2C/EEPROM, Ethernet and SD-Card. For NAND use on SAMA5D4,
an updated Linux driver was ported to barebox.
This will follow separately.

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
 arch/arm/mach-at91/include/mach/barebox-arm.h |  22 +-
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
 30 files changed, 571 insertions(+), 48 deletions(-)
 create mode 100644 arch/arm/boards/sama5d4_wifx/Makefile
 create mode 100644 arch/arm/boards/sama5d4_wifx/board.c
 create mode 100644 arch/arm/boards/sama5d4_wifx/lowlevel.c
 create mode 100644 arch/arm/dts/at91-sama5d4_wifx_l1.dts
 create mode 100644 arch/arm/dts/sama5d4.dtsi
 create mode 100644 arch/arm/mach-at91/sama5_bootsource.c

-- 
2.30.2



