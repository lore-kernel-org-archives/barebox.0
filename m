Delivery-date: Wed, 06 Oct 2021 10:45:24 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mY2YG-0003CT-N6
	for lore@lore.pengutronix.de; Wed, 06 Oct 2021 10:45:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mY2YF-0000lI-Pm
	for lore@pengutronix.de; Wed, 06 Oct 2021 10:45:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dtXmQN5Ss8sgcTcWrPZAkvnp5ZV5tBnmSSg2pU6f4LI=; b=Wk3EVS20dKzf6+
	3bRfcAU+sgY2THFQ91QZYNn9IsiNt+cFAA+DoL9rc3QPNqgbCADYapPCfmDlc2bHzvv9LgIC9w1o+
	3ktJgPP9NvhXdjEjU0PFREgnRp2P4fxY8ElVGDCpn3vHrKQ//znzvqg3FYXWgyAaxRYRuQShp7JO8
	bWLeoUyxqxV3lnZO/PRgK6Y8zLIBp9TeeY84Q34G/Icx7Yo53vtNlRzn+fsKomnQDc5H/BizedUMw
	4sbBoFbNl4jrYmUtewaykkzJ/aNTbXESuTkW1Lv8ImhHdazUvF9uD+WrHXd52tU3/XcW+f4gqKsuY
	p3pH20ThRzUAq3DKDmRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mY2Wo-00DVzE-3W; Wed, 06 Oct 2021 08:43:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mY2WO-00DVpU-Tq
 for barebox@lists.infradead.org; Wed, 06 Oct 2021 08:43:31 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1mY2WK-0000BJ-UQ; Wed, 06 Oct 2021 10:43:24 +0200
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1mY2WK-0003fW-GS; Wed, 06 Oct 2021 10:43:24 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed,  6 Oct 2021 10:43:15 +0200
Message-Id: <20211006084323.14051-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211006_014329_061618_F3157B9D 
X-CRM114-Status: GOOD (  11.68  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v4 0/8] add noswitch support for skov boards 
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

changes v4:
- rename skov_no_switch to skov_have_switch
- use xasprintf instead of xzallox + snprintf
- use alias for ethernet0 node detection and make it compatible with the
  old DTs versions.

changes v3:
- add missing byte in the switch path generation
- make sure it work with old devicetrees

Oleksij Rempel (8):
  ARM: dts: skov-imx6: add USB nodes
  ARM: boards: skov-imx6: fixup_machine_compatible() add optional root
    node
  ARM: boards: skov-imx6: add switch detection
  ARM: boards: skov-imx6: disable eth0 for barebox if no switch is
    detected
  ARM: boards: skov-imx6: fixup different DTS variants
  ARM: boards: skov-imx6: start using deep-probe
  ARM: boards: skov-imx6: add defaultenv with eth1-discover script
  ARM: boards: skov-imx6: use separate DTS for the iMX6 Solo variant

 arch/arm/boards/skov-imx6/Makefile            |   1 +
 arch/arm/boards/skov-imx6/board.c             | 228 +++++++++++++++---
 .../network/eth1-discover                     |   8 +
 arch/arm/boards/skov-imx6/lowlevel.c          |   6 +-
 arch/arm/dts/Makefile                         |   2 +-
 arch/arm/dts/imx6qdl-skov-imx6.dtsi           |  20 ++
 arch/arm/dts/imx6s-skov-imx6.dts              |  22 ++
 7 files changed, 253 insertions(+), 34 deletions(-)
 create mode 100644 arch/arm/boards/skov-imx6/defaultenv-skov-imx6/network/eth1-discover
 create mode 100644 arch/arm/dts/imx6s-skov-imx6.dts

-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

