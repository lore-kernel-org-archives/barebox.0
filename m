Delivery-date: Fri, 17 Feb 2023 10:41:49 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pSxFV-00A1oX-Sa
	for lore@lore.pengutronix.de; Fri, 17 Feb 2023 10:41:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pSxFU-0007ed-H3
	for lore@pengutronix.de; Fri, 17 Feb 2023 10:41:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=VWpD3IP+er8e5LRtjbYG0IGfNgJVf2hIB2ekBgztOO0=; b=XhYBQN8koKvj2Rpph0y/wumlZ5
	vWFu2dO9AHyxPnqW1AIdKSeOidjlmoz4StnYp3pUewi9Q5x+do9yUugPrgSZjhMs0W5SGi4dex/53
	5VtzpNZKgrT2/i2Mm4rMiVSW7PcZMV2ccI9hq9H+0D1/khUFz1AIJ8LtD4287uJr251brkTughnzq
	cJOTsSBuwoLeg5Ce9srUSdeeqpfCJhLhj59crxsrRWBon+RXyub7WPD/Vb3iUxpHmBd0lHcr5K36g
	D3N5fqe5hiz/9YL7HozqUZwvgxYDh3GS02FaqTgSPPyaiE/hMVSPA3fKCN4pXKSLsEzAoyvgGnLjp
	/w8SEATw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSxEr-00DWPB-Ue; Fri, 17 Feb 2023 09:41:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSxEj-00DWMd-7C
	for barebox@lists.infradead.org; Fri, 17 Feb 2023 09:41:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pSxEi-0007QC-12; Fri, 17 Feb 2023 10:41:00 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pSxEg-005YC6-7D; Fri, 17 Feb 2023 10:40:59 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pSxEg-007yrU-85; Fri, 17 Feb 2023 10:40:58 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 17 Feb 2023 10:40:53 +0100
Message-Id: <20230217094056.1894461-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230217_014101_289617_35F98259 
X-CRM114-Status: UNSURE (   9.41  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/3] Fix MMC clocks on RK3568
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We observed that on RK3568 the eMMC does not work when the SD controller
is not registered. This goes down to wrong enable_count when reparenting
composite clocks due to a set_rate call. This series fixes it.

Sascha

Sascha Hauer (3):
  clk: composite: Give mux/div/gate clks names
  clk: composite: Fix enable_count when reparenting mux
  mci: rockchip-dwcmshc-sdhci: Print less errors

 drivers/clk/clk-composite.c          | 10 +++++++++-
 drivers/clk/rockchip/clk.c           |  3 +++
 drivers/mci/rockchip-dwcmshc-sdhci.c |  6 +++---
 3 files changed, 15 insertions(+), 4 deletions(-)

-- 
2.30.2



