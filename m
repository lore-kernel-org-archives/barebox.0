Delivery-date: Wed, 18 Dec 2024 07:09:44 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tNnFf-009WRr-1W
	for lore@lore.pengutronix.de;
	Wed, 18 Dec 2024 07:09:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tNnFf-0003L9-Ct
	for lore@pengutronix.de; Wed, 18 Dec 2024 07:09:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ITFNAA7kKmW0puY5U4Ynb6RMrTVRJyck5XeawlNapqc=; b=cZQmdP5ka1ipdYuHR/JHEw7/K7
	4Rx1qPdiqwo+m5AWfu7EXwx9wbYeo0DpxuOLaMEBAwjM5X/lRBG4aKJQrTHn8xSg+jbUgKdcAhtHB
	C9QN1Tcab+LQCJKoEUSvsbjhN67yJXJbU3PY0kMTjmWhjxp1nc+y21nQBSevfTkM7WSCUhi7JF9L1
	BZkXdyVgXQeJg9lmFlO75S94DYYYHUQ0nV1vFmTaqI2JP6eRlHVOkvB+rR33N64st/F3W2oG1y07k
	liMTgj5AmR85IzGQqlAjTGdIoTA6FlccnBJlCPAf7BjQptqZGtKYP6yF9czTBk5wuH82Da6BLuNoO
	P7Wfljag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tNnF5-0000000Fg6m-3PO5;
	Wed, 18 Dec 2024 06:09:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tNnF2-0000000Fg5I-2zWS
	for barebox@lists.infradead.org;
	Wed, 18 Dec 2024 06:09:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1tNnEz-00036p-FZ; Wed, 18 Dec 2024 07:09:01 +0100
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1tNnEy-003z4U-1c;
	Wed, 18 Dec 2024 07:09:01 +0100
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1tNnEz-00FG9H-0j;
	Wed, 18 Dec 2024 07:09:01 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed, 18 Dec 2024 07:08:57 +0100
Message-Id: <20241218060900.3636980-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241217_220904_748065_2FD9E723 
X-CRM114-Status: UNSURE (   7.89  )
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
Subject: [PATCH 0/3] Protonic maintenance
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Maintenance for protonic specific boards. Start using upstreamed kernel
devicetrees for MEC* boards. And add support for stm32mp13 based board variant.

Oleksij Rempel (2):
  ARM: stm32mp151-mecio1: use kernel dts
  ARM: stm32mp151-mect1s: use kernel dts

Roan van Dijk (1):
  ARM: protonic-stm32mp1: Add Add Priva E-Measuringbox board support

 arch/arm/boards/Makefile                      |   1 +
 arch/arm/boards/protonic-stm32mp13/Makefile   |   4 +
 arch/arm/boards/protonic-stm32mp13/board.c    | 285 ++++++++++
 arch/arm/boards/protonic-stm32mp13/lowlevel.c |  28 +
 arch/arm/configs/stm32mp_defconfig            |   1 +
 arch/arm/dts/Makefile                         |   1 +
 arch/arm/dts/stm32mp131.dtsi                  |   4 +
 arch/arm/dts/stm32mp133c-prihmb.dts           |  90 ++++
 arch/arm/dts/stm32mp133c-prihmb.dtsi          | 494 ++++++++++++++++++
 arch/arm/dts/stm32mp151-mecio1.dts            | 213 +-------
 arch/arm/dts/stm32mp151-mect1s.dts            | 319 +----------
 arch/arm/mach-stm32mp/Kconfig                 |   7 +
 images/Makefile.stm32mp                       |   1 +
 13 files changed, 919 insertions(+), 529 deletions(-)
 create mode 100644 arch/arm/boards/protonic-stm32mp13/Makefile
 create mode 100644 arch/arm/boards/protonic-stm32mp13/board.c
 create mode 100644 arch/arm/boards/protonic-stm32mp13/lowlevel.c
 create mode 100644 arch/arm/dts/stm32mp133c-prihmb.dts
 create mode 100644 arch/arm/dts/stm32mp133c-prihmb.dtsi

--
2.39.5



