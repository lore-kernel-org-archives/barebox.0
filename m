Delivery-date: Tue, 09 Jan 2024 10:17:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rN8Es-00A667-2x
	for lore@lore.pengutronix.de;
	Tue, 09 Jan 2024 10:17:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rN8Es-0000ws-BK
	for lore@pengutronix.de; Tue, 09 Jan 2024 10:17:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=gdIEH4inboQLiv5xuClXom/tkIMTGWc6IyQHdvxQ+R4=; b=O8Zl4x5Kka9KoBLk+1uUZuVhNE
	mqeRf9JhO9kZIVvZxoHwfBGqvKs/yQfbCOHRrLGDsie525lthPMycokFm1jZVYUS+v5uqsA6xXuVf
	P/bRg0gBhDBNom0XIcPygr6wqzVlCZgCLoiU0ZFYoJ0y6DcW3HgZzgFIXcKkZCG+3KENMwj/Re6mI
	ydrQHRy8GH2/eN+ro6Aeh1oBtImDLNSmmQFk7I1cB6h9igIw7HtE8P/Ev3t5YPDEcFAsL9BCTiQmQ
	rGih8l8WNKG4J6KbKIvckQYdb8yC6T4XPlUBfedsBfA+rtZ8svZksS6yY2mvVGJNsEtEP23JWS0r0
	DHj4mfUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rN8DY-007SMU-0j;
	Tue, 09 Jan 2024 09:16:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rN8DR-007SIg-2k
	for barebox@lists.infradead.org;
	Tue, 09 Jan 2024 09:16:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rN8DO-0000Oi-SP; Tue, 09 Jan 2024 10:16:06 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rN8DO-001RWU-F1; Tue, 09 Jan 2024 10:16:06 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rN8DO-001A8c-1I;
	Tue, 09 Jan 2024 10:16:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  9 Jan 2024 10:15:53 +0100
Message-Id: <20240109091603.235589-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240109_011609_943827_AC248677 
X-CRM114-Status: UNSURE (   8.82  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 00/10] Add more Layerscape LS1028a stuff
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This series has some additions to the recently merged LS1028a support.
Like on the LS1046a we have to fixup several iommu related device tree
properties to make DMA work under Linux. Also the upstream dts files do
not have a psci node, so add one in order to bring up the secondary CPU
core.

Sascha Hauer (10):
  ARM: Layerscape: consolidate initcalls into one
  ARM: Layerscape: LS1028a: reserve DDR region for TF-A
  ARM: Layerscape: icid: make readonly arrays const
  ARM: Layerscape: icid: rename functions
  ARM: Layerscape: icid: move re-usable code to separate functions
  ARM: Layerscape: icids: factor out setup_icid_offsets()
  immap_lsch3: Add more stuff
  ARM: Layerscape: LS1028a: fixup icids
  ARM: psci: make header self contained
  ARM: Layerscape: LS1028a: fixup psci node

 arch/arm/include/asm/psci.h                  |   2 +
 arch/arm/mach-layerscape/Kconfig             |   1 +
 arch/arm/mach-layerscape/boot.c              |  13 +-
 arch/arm/mach-layerscape/icid.c              | 361 +++++++++++++++----
 arch/arm/mach-layerscape/ls102xa_stream_id.c |   8 +-
 arch/arm/mach-layerscape/pblimage.c          |   6 +-
 arch/arm/mach-layerscape/restart.c           |   8 +-
 arch/arm/mach-layerscape/soc.c               |  96 +++++
 drivers/mci/imx-esdhc-pbl.c                  |   3 +-
 include/mach/layerscape/layerscape.h         |  20 +
 include/soc/fsl/immap_lsch3.h                | 119 ++++++
 11 files changed, 547 insertions(+), 90 deletions(-)

-- 
2.39.2



