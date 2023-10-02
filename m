Delivery-date: Mon, 02 Oct 2023 12:18:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qnG0c-001uIb-CX
	for lore@lore.pengutronix.de; Mon, 02 Oct 2023 12:18:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qnG0a-00046D-HW
	for lore@pengutronix.de; Mon, 02 Oct 2023 12:18:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ylMEiKZM6hM48/bNX4RblhxOOpeh0njv4yNoevCTxx0=; b=vgg3twMwW/i0JIsB0WSgicyIkQ
	I/FwktPNP43MKJVDnaJBnY1JGmVSmhQdu1ICPnV8zh+U+4+6KUyUljvQm07CWPRc7U7UnEmlTtJs+
	yEumHug8A1PB56WAkrxV+S2wsiXvFUibJUeNq9ApbTFLdGcQg7l8vu95Xi8rCe0+Rood2rzYShE/r
	3GnbMyACgezTuZfAdbrZHGa8RcM2GyhtMEe5ldl1XUmxd60Qw2MHjKlHPHc4+G2+uzFW+UYLfVBdR
	lzgC+GLncn94dLJA5BKN4kAFNZTGOub0ITbgi6AlWu8gG/pFwvLP33EechByFqPP7iwXwajgtTCCp
	zPINkZLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qnFzF-00CIkM-2H;
	Mon, 02 Oct 2023 10:17:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qnFz8-00CIh4-2m
	for barebox@lists.infradead.org;
	Mon, 02 Oct 2023 10:17:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1qnFz6-0003TP-CB; Mon, 02 Oct 2023 12:17:04 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1qnFz5-00AV2K-L8; Mon, 02 Oct 2023 12:17:03 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1qnFz5-009xKw-1o;
	Mon, 02 Oct 2023 12:17:03 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon,  2 Oct 2023 12:16:44 +0200
Message-Id: <20231002101654.2373000-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231002_031706_913847_7AB4E4D4 
X-CRM114-Status: UNSURE (   6.96  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 00/10] SKOV maintenance
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

changes v2:
- add skov,imx8mp-board-version fixup
- add Ethernet addresses configuration
- drop cell size changes for SD card
- drop DT based partition for SD card

Oleksij Rempel (10):
  arm: dts: imx8mp-skov: Add reserved-memory for ramoops pstore
  arm: dts: imx8mp-skov: Add pins for hardware variant detection
  arm: dts: imx8mp-skov: Switch to GPT for eMMC partitioning
  arm: dts: imx8mp-skov: Switch to GPT for SD partitioning
  arm: dts: imx8mp-skov: Add barebox state backend in DTS
  ARM: i.MX8MP: skov: refactor bootsource and BBU handlers
  ARM: i.MX8MP: skov: Add hardware variant support
  ARM: i.MX8MP: skov: fixup skov,imx8mp-board-version DT property for
    the kernel
  net: lib: add ether_addr_inc() helper
  ARM: i.MX8MP: skov: assign Ethernet addresses to all ports

 arch/arm/boards/skov-imx8mp/board.c | 367 +++++++++++++++++++++++++++-
 arch/arm/dts/imx8mp-skov.dts        | 157 +++++++++---
 include/net.h                       |   1 +
 net/lib.c                           |  25 ++
 4 files changed, 510 insertions(+), 40 deletions(-)

-- 
2.39.2



