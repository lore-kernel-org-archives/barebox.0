Delivery-date: Mon, 05 Feb 2024 08:46:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rWtgh-003xMF-2z
	for lore@lore.pengutronix.de;
	Mon, 05 Feb 2024 08:46:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rWtgh-0003M7-E6
	for lore@pengutronix.de; Mon, 05 Feb 2024 08:46:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=6Pj6ntwvFMMvKlFgPnPSlOWoHlrLDpftpF74WX9gdaA=; b=qQcfAoTwrzGvO5kzyFvdnrWuFR
	cso/Jyp058yOc5FEtT23/JXK8VBmlUT/jkqFA7ituy+cxGQSvfTEE0tzZ1FsCANAou/wAr1LlPKzk
	OzYCXQUJ79QAAJBQhRIAmN8YG12w6jltGMFamNlLpWSbqi5dgSwA7DS1GSKOav0SjLnWew36uXI/I
	meNFD9W6A3kiWCE3slJME6jlRzNBPefEm0IJj5o0eQD9Mgg82Tz87Rm2Z6UzsNQq5XAb5mIgkvtbQ
	gx4e3YQh7qX1Da/rUhwliuni46dwjzWEgrE5u7T2D+gUBBkNsOqs5ToJlKxZKHrS5MEupBCqNp30Y
	EgJ78QGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWtg7-00000002Klm-1Swk;
	Mon, 05 Feb 2024 07:46:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWtfz-00000002KhL-1HIh
	for barebox@lists.infradead.org;
	Mon, 05 Feb 2024 07:46:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rWtfu-00031L-EM; Mon, 05 Feb 2024 08:45:54 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rWtfu-004aUI-1w; Mon, 05 Feb 2024 08:45:54 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rWtft-008PtL-35;
	Mon, 05 Feb 2024 08:45:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon,  5 Feb 2024 08:45:45 +0100
Message-Id: <20240205074553.2005284-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240204_234559_411180_97247148 
X-CRM114-Status: GOOD (  14.36  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 0/8] ARM: i.MX93: TQMA93xx: Add LGA variant
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
 arch/arm/boards/tqma93xx/lowlevel.c           |  109 ++
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
 common/boards/Kconfig                         |    3 +
 common/boards/Makefile                        |    1 +
 common/boards/tq/Makefile                     |    1 +
 common/boards/tq/tq_eeprom.c                  |  140 ++
 drivers/i2c/busses/Makefile                   |    2 +-
 drivers/i2c/busses/i2c-imx-lpi2c.c            |   70 +-
 images/Makefile.imx                           |    6 +-
 include/mach/imx/imx9-regs.h                  |    8 +
 include/pbl/eeprom.h                          |   11 +-
 include/pbl/i2c.h                             |    1 +
 include/tq_eeprom.h                           |  196 +++
 26 files changed, 2063 insertions(+), 113 deletions(-)
 create mode 100644 arch/arm/boards/tqma93xx/Makefile
 rename arch/arm/boards/{tqmba9xxxca => tqma93xx}/board.c (100%)
 create mode 100644 arch/arm/boards/tqma93xx/lowlevel.c
 rename arch/arm/boards/{tqmba9xxxca => tqma93xx}/lpddr4x_tqma93xxca_timing.c (100%)
 create mode 100644 arch/arm/boards/tqma93xx/lpddr4x_tqma93xxla_timing.c
 delete mode 100644 arch/arm/boards/tqmba9xxxca/Makefile
 delete mode 100644 arch/arm/boards/tqmba9xxxca/lowlevel.c
 create mode 100644 arch/arm/dts/imx93-tqma9352-mba93xxla.dts
 create mode 100644 arch/arm/dts/imx93-tqma93xx.dtsi
 create mode 100644 common/boards/tq/Makefile
 create mode 100644 common/boards/tq/tq_eeprom.c
 create mode 100644 include/tq_eeprom.h

-- 
2.39.2



