Delivery-date: Tue, 08 Jun 2021 11:38:30 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqYBq-0003jM-Mu
	for lore@lore.pengutronix.de; Tue, 08 Jun 2021 11:38:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqYBm-0000eF-HR
	for lore@pengutronix.de; Tue, 08 Jun 2021 11:38:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9qMD+Pn2HOIZLJ4WR5BBfD9C6wGN3Ur1G8Jlqs/YR5U=; b=ElDn8Lrh6sKx3d
	i43LjkARGb7YfJC8cICYDExbmnBx2AWc3ikDmcYrJqmEnnqWp83i83bRollAuDs3TkuaCbA/kPS3j
	DPUKkm7rSVMMT6A3w/7unYHqUI5V+xR6FwGe+teAU4LW64il960895BSzhbdYnyLBBvmxNgvEp17S
	AOhRfokaLUIwrXhedZjmZBESkid81kRBgpZ8TlnixJ36HL+yEU65qzOYsjKBBkKN8cpcbsYp4sxE0
	NsYT9t+uuYWJ/B7CUArx69f/QEgLVwCmPUNsXFE7vX+OnQlqpnnba93ZLbMF0K8LwKehhgz+PM0S/
	aCGHUwmJtt/BLvR/rNTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqYAK-007SFS-Ag; Tue, 08 Jun 2021 09:36:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqYAA-007SCt-EA
 for barebox@lists.infradead.org; Tue, 08 Jun 2021 09:36:47 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lqYA1-0000QZ-52; Tue, 08 Jun 2021 11:36:37 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lqYA0-0004jd-Pi; Tue, 08 Jun 2021 11:36:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  8 Jun 2021 11:36:31 +0200
Message-Id: <20210608093635.5749-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210608_023646_507319_4E42245F 
X-CRM114-Status: UNSURE (   9.52  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 0/4] Rockchip eqos support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This adds Rockchip support to the designware eqos driver.

Changes since v1:
- Honour GPIO flags in snps,reset-gpio properties
- Add support for putting phy reset gpio properties into the phy node

Sascha Hauer (4):
  gpio: allow -gpio suffix for gpio property names
  net: designware: eqos: reset phy
  net: designware: eqos: set mdio bus device node
  net: eqos: Rockchip support

 drivers/gpio/gpiolib.c            |  30 ++-
 drivers/net/Kconfig               |   6 +
 drivers/net/Makefile              |   1 +
 drivers/net/designware_eqos.c     |  29 +++
 drivers/net/designware_rockchip.c | 311 ++++++++++++++++++++++++++++++
 drivers/of/of_gpio.c              |   7 +
 6 files changed, 375 insertions(+), 9 deletions(-)
 create mode 100644 drivers/net/designware_rockchip.c

-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

