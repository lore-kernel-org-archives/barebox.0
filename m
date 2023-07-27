Delivery-date: Thu, 27 Jul 2023 12:11:43 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOxyC-00Bzae-Pt
	for lore@lore.pengutronix.de; Thu, 27 Jul 2023 12:11:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOxyA-0002Cv-CQ
	for lore@pengutronix.de; Thu, 27 Jul 2023 12:11:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t+vkhlCGAKQsQl+/fUtuQM5JqrZC6rvoG3WV5sY7YOw=; b=dbE5pqU4kEpY0d
	fEjscML9tfQzPZ7MWpEdXFgPqofws7jop0x1bFSbeJSzHHnfQsDjvK2cKySTKs5ZO72RbS02ITsGa
	dU3mFp4Sr2bMmMRRq6bbWa/beeA88bVnzXwsTxCF35uTcmfFDKHd5f2emdD+h8kkuHBeiRW2YzbGz
	SNX4fhEKK9srNMHdPzDGBonIyF9HzlZB/UnMu2ZH0Cm4+9/gRSbHzAJ9BF6l3m5Uqx2HTj2SEgmh6
	B1nsz3TQdYzM484POyDOufnlpPAG14W1SrP0DuB/HEayjNH2aNprDxV69CaPArtVTKVXD2lwAMHWC
	Yzb9OinfJ9K+JR5liJcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOxx4-00CwNs-2o;
	Thu, 27 Jul 2023 10:10:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOxx1-00CwKo-1B
	for barebox@lists.infradead.org;
	Thu, 27 Jul 2023 10:10:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qOxww-0001w3-By; Thu, 27 Jul 2023 12:10:26 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qOxwv-002S6I-NS; Thu, 27 Jul 2023 12:10:25 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qOxwu-00E4h6-Ui; Thu, 27 Jul 2023 12:10:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 27 Jul 2023 12:10:08 +0200
Message-Id: <20230727101008.3350548-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230727101008.3350548-1-s.hauer@pengutronix.de>
References: <20230727101008.3350548-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230727_031031_406750_E4CF2456 
X-CRM114-Status: GOOD (  10.63  )
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
Cc: Oliver Fendt <ofendt@googlemail.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] test/self/mmu.c: Fix typo in SPDX License Identifier
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Fix a typo.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Reported-by: Oliver Fendt <ofendt@googlemail.com>
---
 test/self/mmu.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/test/self/mmu.c b/test/self/mmu.c
index 5e630e708f..4ca10affdd 100644
--- a/test/self/mmu.c
+++ b/test/self/mmu.c
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0-onl
+// SPDX-License-Identifier: GPL-2.0-only
 
 #define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
 
-- 
2.39.2



