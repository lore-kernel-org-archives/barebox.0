Delivery-date: Wed, 22 Mar 2023 09:33:59 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1petuw-00AE0R-51
	for lore@lore.pengutronix.de; Wed, 22 Mar 2023 09:33:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1petus-0001iX-Io
	for lore@pengutronix.de; Wed, 22 Mar 2023 09:33:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=g2q3pIZplz6fnj7WyniFJ8Gpmtw20ndE/aSFv5zXFaA=; b=s5yJav/wEZBBC3xAgk/QFrLA0G
	cW6qh/cilaDdOdm0XCo9o3tPUjCOT0k+RFMyvx9VHB0KtGQz6NftV04CtPhv9FNp32t7K7BfzRyc5
	RQuD044U42SFydh0r//bOa8SHv4VQ1x7sS0B573YgrLtaxWNcLYFPVZG1HLxaQD1pAtkwQs3Tevdt
	/5fauTUSQ3kGac79eFMbPHgyebz9zC/sKLJoEYjTZXKx5RhZOjDYybrfn9GQ4fNDzNHyMmyFEA/ZH
	YKB8yeNr2oC5H99C3upOudCWy704sATr/ZpjDhtbDecfPDOaduxTCm818qPWSqUs6p9atHHeuJKFL
	/PYbl9qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pettw-00FCGv-1j;
	Wed, 22 Mar 2023 08:32:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pettp-00FCDN-0O
	for barebox@lists.infradead.org;
	Wed, 22 Mar 2023 08:32:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pettn-0001Sj-Sn; Wed, 22 Mar 2023 09:32:47 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pettn-005sSc-5u; Wed, 22 Mar 2023 09:32:47 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pettm-001D9q-3v; Wed, 22 Mar 2023 09:32:46 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 22 Mar 2023 09:32:41 +0100
Message-Id: <20230322083245.251340-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230322_013249_163036_F2727657 
X-CRM114-Status: GOOD (  11.26  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/4] Allow to probe clks added in overlays
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We recently gained support for applying overlays to the barebox live
tree and to probe devices from it. This works well for most devices
but not for clks declared with CLK_OF_DECLARE. This series adds support
for these as well.

Sascha Hauer (4):
  clk: clk-gpio: Turn into driver
  clk: of: drop arguments from of_clk_init()
  clk: of: make of_clk_init() safe for being called multiple times
  commands: of_overlay: Allow to register clocks from overlay

 commands/of_overlay.c  |  8 ++++++--
 drivers/clk/clk-gpio.c | 20 ++++++++++----------
 drivers/clk/clk.c      | 30 +++++++++++++++++++++---------
 drivers/of/base.c      |  2 +-
 include/linux/clk.h    |  5 ++---
 5 files changed, 40 insertions(+), 25 deletions(-)

-- 
2.30.2



