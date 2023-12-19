Delivery-date: Tue, 19 Dec 2023 13:58:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFZfc-004YHX-2p
	for lore@lore.pengutronix.de;
	Tue, 19 Dec 2023 13:58:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFZfc-0007uy-Af
	for lore@pengutronix.de; Tue, 19 Dec 2023 13:58:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=WkbnD+Nff/0naOhA4kryt4ntOWB+V+TV4/L1QUJfw3U=; b=GauaBQ9/H6h//jjE3HmULwy3Ho
	Fv/JZ8C/fBRdJ9pQ1738f3Z1fh5mH828f5mrZn9JYWtG4VDUs8fOzcitiPuLaGoad1N2/20BW3m0m
	QC2tx+qb7XMy3haQXF58OLXS8roLxvhpxFVs1/d8By/qRYum7fefUYBaaZ+tZR48VS69uEQOJh1GV
	W/M4RtcM2wudOvn5wsCrXknPCsIQMcQi2TpaAfmSjMqb3MEftx2Xy/aK3AA46Ysp1698POMkD5IiX
	zW5L1lAICQVhrF4ALfaXANHLVc7HO4mHRcB9yDW0UtQbEcHg0CtoH2PvEZ+vHnE+cnIat1wklyZRH
	RQ+wYEoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFZeN-00E6YO-2J;
	Tue, 19 Dec 2023 12:56:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFZeG-00E6P5-1E
	for barebox@lists.infradead.org;
	Tue, 19 Dec 2023 12:56:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rFZeB-00077B-Vf; Tue, 19 Dec 2023 13:56:32 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rFZeA-0001KA-CA; Tue, 19 Dec 2023 13:56:31 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rFZeB-0000y5-1H;
	Tue, 19 Dec 2023 13:56:31 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 19 Dec 2023 13:56:24 +0100
Message-Id: <20231219125630.3684-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_045636_462757_B0EA6A6F 
X-CRM114-Status: UNSURE (   6.85  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 0/6] PCI patches
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

These patches will be needed for upcoming Layerscape LS1028a support.
This SoC has the Ethernet Complex in an Integrated Endpoint Root
Complex.

Sascha Hauer (6):
  pci: remove duplicate definition of pci_resource_start
  pci: Do not register device tree disabled devices
  pci: layerscape: limit fixup to layerscape controllers
  pci: fix __pci_bus_find_cap_start
  pci: implement Enhanced Allocation support
  pci: implement function level reset

 drivers/pci/bus.c            |   3 +
 drivers/pci/pci-layerscape.c |   3 +
 drivers/pci/pci.c            | 222 ++++++++++++++++++++++++++++++++++-
 include/linux/pci.h          |   6 +-
 include/linux/pci_regs.h     |  50 +++++++-
 5 files changed, 277 insertions(+), 7 deletions(-)

-- 
2.39.2



