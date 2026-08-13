Delivery-date: Thu, 13 Aug 2026 10:16:04 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wuQbb-002cPH-2U
	for lore@lore.pengutronix.de;
	Thu, 13 Aug 2026 10:16:04 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 1D4B9201EC5
	for <lore@pengutronix.de>; Thu, 13 Aug 2026 10:16:03 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=iskCHHVm;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Sq3gZxoHzJt71hg7YlDIfAYTPgGoiHTMyhAEt7k/u/k=; b=iskCHHVm+OYI3vc3WNZvyBawWU
	FOc45H6K7wzkcac/xLzjUb+NOUYWD+V5DA2/nWUpwypDfKIOpuI3rrTDr0H86r4npJw7iFcFI5We+
	0+WJ1PP6+VEZFoDXQ971GEKY83yNiuxji0sNxiPIQf7s4mWEE71kbZKdxyatSRS50w8dyT4clsxY9
	HcX9lLZ4cy32hr7fNlLqPUN2Nx9xDCH9KNpahqbgmEvL8R6BsFKLRhWNNnZuDwgF1YBtR/Ai3Z5I2
	8SjggajzOdllF838K1WQwpNRN+3BqicQ216Y9sLzSESR577U8LaOWEDbEdMp4zl3zsF4HynfeE5dk
	ib5/vODg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuQaW-000000006GL-0Zry;
	Thu, 13 Aug 2026 08:14:56 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuQaT-000000006D4-0q3u
	for barebox@lists.infradead.org;
	Thu, 13 Aug 2026 08:14:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id B1AD1201EBF;
	Thu, 13 Aug 2026 10:14:45 +0200 (CEST)
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac] helo=dude04)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1wuQaL-001Fmg-1L;
	Thu, 13 Aug 2026 10:14:45 +0200
Received: from ore by dude04 with local (Exim 4.98.2)
	(envelope-from <ore@pengutronix.de>)
	id 1wuQaL-00000007sp5-1SYG;
	Thu, 13 Aug 2026 10:14:45 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: robert.marko@sartura.hr,
	Oleksij Rempel <o.rempel@pengutronix.de>
Subject: [PATCH v2 0/9] ARM: add Microchip LAN9696 (LAN969X) SoC and EV23X71A board
Date: Thu, 13 Aug 2026 10:14:30 +0200
Message-ID: <20260813081444.1879009-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260813_011453_383666_EE64637C 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  This series adds barebox support for the Microchip LAN9696
    (LAN969X family) SoC and the EV23X71A evaluation board, a 28-port Ethernet
    switch platform with an ARM64 Cortex-A53 and AT91/SAMA5 compatible [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: c4ojcmdojbk97pebrhewr8irgmdjht1k
X-Spamd-Result: default: False [-6.01 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[o.rempel@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 1D4B9201EC5

This series adds barebox support for the Microchip LAN9696 (LAN969X
family) SoC and the EV23X71A evaluation board, a 28-port Ethernet switch
platform with an ARM64 Cortex-A53 and AT91/SAMA5 compatible peripherals.
barebox runs as BL33 in a TF-A boot chain.

Link to v1: https://lore.barebox.org/barebox/20260612055930.635833-1-o.rempel@pengutronix.de/

Each patch carries its own changelog.

Ahmad Fatoum (1):
  clk: tolerate clocks registered without a name

Oleksij Rempel (8):
  ARM: introduce ARCH_MICROCHIP for ARM64 Microchip SoCs
  serial: atmel: add lan9696 (Microchip LAN969X) support
  clk: add Microchip LAN966X / LAN969X generic clock controller driver
  pinctrl: ocelot: port Microsemi/Microchip Ocelot pinctrl from Linux
  gpio: add Microchip SGPIO (serial GPIO) driver
  reset: add Microchip sparx5 / LAN969X / LAN966X switch reset driver
  spi: atmel-quadspi: add Microchip LAN966X / LAN969X support
  ARM: add Novarq Tactical 1000 board

 arch/arm/Kconfig                              |  36 ++
 arch/arm/boards/Makefile                      |   1 +
 arch/arm/boards/novarq-tactical-1000/Makefile |   4 +
 arch/arm/boards/novarq-tactical-1000/board.c  |  45 ++
 .../boards/novarq-tactical-1000/lowlevel.c    |  52 ++
 arch/arm/configs/multi_v8_defconfig           |   4 +
 arch/arm/dts/Makefile                         |   1 +
 arch/arm/dts/lan9691-bb.dtsi                  |  48 ++
 arch/arm/dts/novarq-tactical-1000.dts         |  51 ++
 drivers/clk/Kconfig                           |   9 +
 drivers/clk/Makefile                          |   1 +
 drivers/clk/clk-lan966x.c                     | 319 ++++++++++
 drivers/clk/clk.c                             |   3 +
 drivers/gpio/Kconfig                          |   8 +
 drivers/gpio/Makefile                         |   1 +
 drivers/gpio/gpio-microchip-sgpio.c           | 463 ++++++++++++++
 drivers/pinctrl/Kconfig                       |  10 +
 drivers/pinctrl/Makefile                      |   1 +
 drivers/pinctrl/pinctrl-ocelot.c              | 575 ++++++++++++++++++
 drivers/reset/Kconfig                         |  10 +
 drivers/reset/Makefile                        |   1 +
 drivers/reset/reset-microchip-sparx5.c        | 171 ++++++
 drivers/serial/Kconfig                        |   8 +-
 drivers/serial/atmel.c                        |   3 +-
 drivers/spi/Kconfig                           |   2 +-
 drivers/spi/atmel-quadspi.c                   | 105 ++++
 images/Makefile                               |   1 +
 images/Makefile.microchip                     |   9 +
 28 files changed, 1938 insertions(+), 4 deletions(-)
 create mode 100644 arch/arm/boards/novarq-tactical-1000/Makefile
 create mode 100644 arch/arm/boards/novarq-tactical-1000/board.c
 create mode 100644 arch/arm/boards/novarq-tactical-1000/lowlevel.c
 create mode 100644 arch/arm/dts/lan9691-bb.dtsi
 create mode 100644 arch/arm/dts/novarq-tactical-1000.dts
 create mode 100644 drivers/clk/clk-lan966x.c
 create mode 100644 drivers/gpio/gpio-microchip-sgpio.c
 create mode 100644 drivers/pinctrl/pinctrl-ocelot.c
 create mode 100644 drivers/reset/reset-microchip-sparx5.c
 create mode 100644 images/Makefile.microchip

--
2.47.3



