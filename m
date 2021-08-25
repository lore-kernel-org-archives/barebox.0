Delivery-date: Wed, 25 Aug 2021 14:57:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mIsSl-0001Gi-9h
	for lore@lore.pengutronix.de; Wed, 25 Aug 2021 14:57:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mIsSf-0005bq-DB
	for lore@pengutronix.de; Wed, 25 Aug 2021 14:57:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uPr08KRcJ/XQSIgGdA5W//QBlDLoRSwABfOiGVkxyzo=; b=gXAAf4aXJTi8Ja
	9IGNKzfcgjKCbqF8as7PXgDaB9DfDnzU+aKsSlb9MVleHEDjRZ3V7AetOcpvcPaq+vXKxJLajXZlL
	4dRPA5m7BEOg3yKYCXzfDJqW9ZQ8PlZLbaqaIvaGOGscDmrPgoG3PelbOnYFe45QqkXVIR1q9ZrHN
	bkfSA2M/pGnRQrbhl/cOdy5x1YeRWAmlMxNiIOLBVHBH9G1Ae7BmI5J+/suGuGd7eZwUzY4FGYpNl
	soVitNwDo2/eZGUdm5o2pPKSFTYNC8+ZcYsvDsl889/AMbJAONWs9WsZvAAQkyAxXAmUAGpS7QmFZ
	/tBCX0eVJotHbjpySubA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mIsQc-006y5t-87; Wed, 25 Aug 2021 12:54:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mIsQU-006y3Y-SH
 for barebox@lists.infradead.org; Wed, 25 Aug 2021 12:54:44 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1mIsQL-00050l-7M; Wed, 25 Aug 2021 14:54:33 +0200
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1mIsQK-00070j-Rx; Wed, 25 Aug 2021 14:54:32 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed, 25 Aug 2021 14:54:26 +0200
Message-Id: <20210825125430.26901-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210825_055442_950940_3C794143 
X-CRM114-Status: GOOD (  10.26  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 0/6] protonic: maintaining and new board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This patch series contains fixes and updates for currently mainlined
protonic boards and one new board.

Please close one eye on the arch/arm/dts/imx6ull-jozacp.dtsi, it will be
reviewed and reworked on the kernel side.

Oleksij Rempel (2):
  ARM: boards: protonic-imx6: enable deep-probe support
  ARM: boards: protonic-imx6: use decode error values instead error
    numbers.

Robin van der Gracht (2):
  ARM: boards: protonic-imx6: Skip usb check on prtvt7 by default
  ARM: boards: protonic-imx6: Add support for jozacp board

 arch/arm/boards/protonic-imx6/board.c         | 109 +++-
 .../protonic-imx6/flash-header-jozacp.imxcfg  |  81 +++
 arch/arm/boards/protonic-imx6/lowlevel.c      |  20 +
 arch/arm/dts/Makefile                         |   3 +-
 arch/arm/dts/imx6ull-jozacp.dts               |  47 ++
 arch/arm/dts/imx6ull-jozacp.dtsi              | 525 ++++++++++++++++++
 images/Makefile.imx                           |   2 +
 7 files changed, 761 insertions(+), 26 deletions(-)
 create mode 100644 arch/arm/boards/protonic-imx6/flash-header-jozacp.imxcfg
 create mode 100644 arch/arm/dts/imx6ull-jozacp.dts
 create mode 100644 arch/arm/dts/imx6ull-jozacp.dtsi

-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

