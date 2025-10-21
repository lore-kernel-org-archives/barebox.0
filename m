Delivery-date: Tue, 21 Oct 2025 13:03:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBA8q-00ADzU-1g
	for lore@lore.pengutronix.de;
	Tue, 21 Oct 2025 13:03:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBA8q-0000xd-0Y
	for lore@pengutronix.de; Tue, 21 Oct 2025 13:03:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bOEdf/5QuraD1COdYJnycWGpIPMYgsmIWb79/OgM3ZM=; b=iVM36ohQA9SYHbfQhn7g145/E5
	2GdWwvrHbI5JZV41v3Wt0XoZx5bSO+q9YL91aPkU95E9SeVT3KpytAkGITIOR1ohch4JBiXywlE7A
	ds0FW8Kied7+t1+mjs39aOOeCbiEu2JyAuU0Mg3ZWiTpp7XChCVhyi1Vntq/55MpKCnfxDYLER0E3
	X/J6LphIWUYlvk5FH3p9ei1IxNo+yEX/HwApupvZrtRaHa6udXLUAcz033bIHjeTSJQFdBaRVQkM6
	2TmQih72/UocjXiXwEL569vBdcnghzb6dmgAtaDgBzq3j8UDRY/dP+zyBsRP3ymBhd/TfvnNDSmM+
	owNxFgTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBA87-0000000Ghzo-3nG0;
	Tue, 21 Oct 2025 11:02:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBA85-0000000GhzB-22aN
	for barebox@lists.infradead.org;
	Tue, 21 Oct 2025 11:02:14 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1vBA82-0000gE-4Y; Tue, 21 Oct 2025 13:02:10 +0200
From: Fabian Pflug <f.pflug@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Fabian Pflug <f.pflug@pengutronix.de>
Date: Tue, 21 Oct 2025 12:59:38 +0200
Message-ID: <20251021110149.1151936-1-f.pflug@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20250527114241.325357-1-f.pflug@pengutronix.de>
References: <20250527114241.325357-1-f.pflug@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_040213_519828_702670E1 
X-CRM114-Status: UNSURE (   8.77  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 0/2] ARM: boards: i.MX93: Add NXP FRDM i.MX93 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add support for the i.MX93 FRDM board from NXP

v2:
- remove init from board.c
- use iomem in lowlevel.c

Fabian Pflug (2):
  common: deep-probe: include of for of_device_id
  ARM: boards: i.MX93: Add NXP FRDM i.MX93 support

 arch/arm/boards/Makefile                      |    1 +
 arch/arm/boards/nxp-imx93-frdm/Makefile       |    2 +
 arch/arm/boards/nxp-imx93-frdm/board.c        |   12 +
 arch/arm/boards/nxp-imx93-frdm/lowlevel.c     |   46 +
 .../nxp-imx93-frdm/lpddr4x_2gb_timing.c       | 1907 +++++++++++++++++
 arch/arm/dts/Makefile                         |    1 +
 arch/arm/dts/imx93-frdm.dts                   |  534 +++++
 arch/arm/mach-imx/Kconfig                     |    9 +
 images/Makefile.imx                           |    4 +
 include/deep-probe.h                          |    1 +
 10 files changed, 2517 insertions(+)
 create mode 100644 arch/arm/boards/nxp-imx93-frdm/Makefile
 create mode 100644 arch/arm/boards/nxp-imx93-frdm/board.c
 create mode 100644 arch/arm/boards/nxp-imx93-frdm/lowlevel.c
 create mode 100644 arch/arm/boards/nxp-imx93-frdm/lpddr4x_2gb_timing.c
 create mode 100644 arch/arm/dts/imx93-frdm.dts

-- 
2.47.3



