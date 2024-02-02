Delivery-date: Fri, 02 Feb 2024 16:31:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rVvWE-0002Sa-0M
	for lore@lore.pengutronix.de;
	Fri, 02 Feb 2024 16:31:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rVvWC-0005mI-Kg
	for lore@pengutronix.de; Fri, 02 Feb 2024 16:31:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=fEQOF8IMZ/7SNAgbee1x9QeuFkgf6NCS2DzgRfEXce8=; b=qBwJokqGHVreYIF4UIL1pKa0Yp
	Gf1f+tTL7MENpJqDiEggXtciwgLnPOBJ12SMRG5PtufWsfP/BxcDzYf+OVjHPFhD48px5kOGV2YkH
	u8ri5DCZksLO6SQnPe7z9Zv/RyH9nXhsXV4/I8qcG/JrZ67l8QTZ/j7kT1/Khl0rmLtwNo0nTsAY1
	l++Ok21605R+BgO5FmKw3ZDmZLzvl0lt2OoYj29kuh11MaICBxn7zFWKILxK1wc9idevsW07xc5fr
	N8CtfP1DU5opopQTZToD3pJvjOiO343dLmqbik/LWdwpMu7YKweqCrYzUmGmQRr1zWi396PIaf6jB
	gPGGeyzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVvVf-0000000C11F-0lyJ;
	Fri, 02 Feb 2024 15:31:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVvVc-0000000C0yd-02wh
	for barebox@lists.infradead.org;
	Fri, 02 Feb 2024 15:31:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rVvVa-0005UB-OO; Fri, 02 Feb 2024 16:31:14 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rVvVa-0045XE-C9; Fri, 02 Feb 2024 16:31:14 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rVvVa-0015Pr-0t;
	Fri, 02 Feb 2024 16:31:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  2 Feb 2024 16:31:05 +0100
Message-Id: <20240202153113.245488-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240202_073116_204876_983817E6 
X-CRM114-Status: GOOD (  14.45  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 0/8] ARM: i.MX93: TQMA93xx: Add LGA variant
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The TQ i.MX93 boards come in different variants. This series adds
support for the LGA variant. Fortunately the TQ boards all have a
EEPROM equipped from which the variant can be read, so this series
adds the necessary pieces to to I2C in PBL on i.MX93 and also the
common EEPROM parsing code.
The EEPROM parsing code could be reused on other TQ boards barebox
has support for, like the tqmls1046a, tqma6ul and tqma8mp. Doing so
is left for the future, for now the code is only used to detect the
i.MX93 board variant.

Sascha Hauer (8):
  i2c: lpi2c: determine clk rate during probe
  i2c: lpi2c: use udelay for timeout loops
  i2c: lpi2c: add PBL support
  pbl: eeprom: return error from eeprom_read()
  common: add TQ EEPROM support
  ARM: i.MX9: add i2c base address defines
  ARM: i.MX9: rename TQ i.MX93 board to TQMA93XX
  ARM: i.MX: tqma93xx: Add LGA board variant

 arch/arm/boards/Makefile                      |    2 +-
 arch/arm/boards/tqma93xx/Makefile             |    2 +
 .../boards/{tqmba9xxxca => tqma93xx}/board.c  |    0
 arch/arm/boards/tqma93xx/lowlevel.c           |  107 ++
 .../lpddr4x_tqma93xxca_timing.c               |    0
 .../tqma93xx/lpddr4x_tqma93xxla_timing.c      | 1482 +++++++++++++++++
 arch/arm/boards/tqmba9xxxca/Makefile          |    2 -
 arch/arm/boards/tqmba9xxxca/lowlevel.c        |   46 -
 arch/arm/configs/imx_v8_defconfig             |    2 +-
 arch/arm/configs/multi_v8_defconfig           |    2 +-
 arch/arm/dts/Makefile                         |    3 +-
 arch/arm/dts/imx93-tqma9352-mba93xxca.dts     |   38 +-
 arch/arm/dts/imx93-tqma9352-mba93xxla.dts     |    5 +
 arch/arm/dts/imx93-tqma93xx.dtsi              |   37 +
 arch/arm/mach-imx/Kconfig                     |    7 +-
 common/Kconfig                                |    3 +
 common/Makefile                               |    1 +
 common/tq_eeprom.c                            |  140 ++
 drivers/i2c/busses/Makefile                   |    2 +-
 drivers/i2c/busses/i2c-imx-lpi2c.c            |   70 +-
 images/Makefile.imx                           |    6 +-
 include/mach/imx/imx9-regs.h                  |    8 +
 include/pbl/eeprom.h                          |    9 +-
 include/pbl/i2c.h                             |    1 +
 include/tq_eeprom.h                           |  196 +++
 25 files changed, 2058 insertions(+), 113 deletions(-)
 create mode 100644 arch/arm/boards/tqma93xx/Makefile
 rename arch/arm/boards/{tqmba9xxxca => tqma93xx}/board.c (100%)
 create mode 100644 arch/arm/boards/tqma93xx/lowlevel.c
 rename arch/arm/boards/{tqmba9xxxca => tqma93xx}/lpddr4x_tqma93xxca_timing.c (100%)
 create mode 100644 arch/arm/boards/tqma93xx/lpddr4x_tqma93xxla_timing.c
 delete mode 100644 arch/arm/boards/tqmba9xxxca/Makefile
 delete mode 100644 arch/arm/boards/tqmba9xxxca/lowlevel.c
 create mode 100644 arch/arm/dts/imx93-tqma9352-mba93xxla.dts
 create mode 100644 arch/arm/dts/imx93-tqma93xx.dtsi
 create mode 100644 common/tq_eeprom.c
 create mode 100644 include/tq_eeprom.h

-- 
2.39.2



