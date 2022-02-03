Delivery-date: Thu, 03 Feb 2022 11:49:27 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nFZg7-004bbw-N0
	for lore@lore.pengutronix.de; Thu, 03 Feb 2022 11:49:27 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nFZg6-0006UA-7z
	for lore@pengutronix.de; Thu, 03 Feb 2022 11:49:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dLPdRJaB0p3v27IXUpZngE1etPbAd6EndbhleXyCFkE=; b=YvAHfI25YnRibP
	OghxT0UUekP7sUq9GTG1eSwIJc8C1kn/uLHeEwrTuR8q9dz6IcpGZD2/mgSmwHvG0Ik0UV+hAy6Gl
	mskkJojrNxajnB0i6EXwDEX+a1idFpc6WW7czuIl9MNirPBGZahBJ91czP6YlrO9RaK6OE9ELEYUp
	wSoeiAcNoyletL7kx9UPk4CQqfUTXfOA0sUceQzPfh0wLHqtrWo91QCQZicbncQ87riqo+2pMtS8X
	dTxuRGFP3pSI7woc4jsj6nd2Xrof95TLYeaNlDPiHEt7XDoNar/hePOkRlnPbQZv3BeHq1viua+su
	m4w6xYd624rD5bj7d6sQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nFZep-000qqa-Rh; Thu, 03 Feb 2022 10:48:07 +0000
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nFZef-000qQy-VW
 for barebox@lists.infradead.org; Thu, 03 Feb 2022 10:48:00 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1nFZcg-0005yD-7c; Thu, 03 Feb 2022 11:45:54 +0100
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1nFZcf-00DFee-M0; Thu, 03 Feb 2022 11:45:53 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu,  3 Feb 2022 11:45:46 +0100
Message-Id: <20220203104552.3158202-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220203_024758_071496_DCD985EE 
X-CRM114-Status: GOOD (  11.01  )
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
X-SA-Exim-Connect-IP: 198.137.202.133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v3 0/6] refactore rpi board code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

changes v3:
- make bcm2835 mbox to probe on first request solve dependency issue.
- remove phybases from clk driver
- move deep-probe to the separate patch

changes v2:
- rework clk driver to properly support deep-probe
- remove currently not supported compatibles from board code
- reduce struct size
- rework rpi_get_dcfg to return *dcfg directly

Oleksij Rempel (6):
  ARM: rpi: convert board code to a driver
  ARM: bcm2835 mbox: drop driver mode and probe on first request
  ARM: rpi: move clk support to a separate driver
  ARM: rpi: validate devicetree compatible instead of changing model
    name
  ARM: rpi: set host name based on DT compatible
  ARM: rpi: enable deep-probe support

 arch/arm/boards/raspberry-pi/rpi-common.c | 486 +++++++++++++---------
 arch/arm/mach-bcm283x/mbox.c              |  52 +--
 drivers/clk/Makefile                      |   1 +
 drivers/clk/clk-rpi.c                     |  85 ++++
 4 files changed, 394 insertions(+), 230 deletions(-)
 create mode 100644 drivers/clk/clk-rpi.c

-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

