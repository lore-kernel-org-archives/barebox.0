Delivery-date: Fri, 30 Sep 2022 14:17:43 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oeExb-001POx-HH
	for lore@lore.pengutronix.de; Fri, 30 Sep 2022 14:17:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oeExZ-0003cL-NP
	for lore@pengutronix.de; Fri, 30 Sep 2022 14:17:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iW17KmUiw1NqhHtBxBAcullLfyLUa13lOINnE1oQD7M=; b=gTz8Le/VPbaFGk
	924j8sNEAbxOuKm0/okZE8tIBvkPYG12jqpcY0/5S6afnZjecQ8QuXGs1wmuCbLqMR/f5EgHqB0kt
	0nOmH2/3nIVilMtLvqU3k3q1s6EATA3Aj9XMvCWVObGMysp+lM//lY+VODIhI/Vq69BeLWG1PQ9Vr
	b3VTEW3cCvoTyVzYiU/2GuECoTUtufrjFSs/w3nkplzwK5mmATC8urX/C3L6bI1qXg3X6P4JH/lCf
	5bpU17WmWR8AZEYcd1/r95H9MpVcTyUQb8iZcC6T9r/gVdlJOl4/eQg2YQt7n+LzzfBx6AFoLMD6/
	4CHwx6LN3TNwTKKBsMGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeEw5-0094eT-DQ; Fri, 30 Sep 2022 12:16:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeEvv-0094Zd-GB
	for barebox@lists.infradead.org; Fri, 30 Sep 2022 12:16:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oeEvr-00030R-SR; Fri, 30 Sep 2022 14:15:55 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oeEvs-003nUa-LO; Fri, 30 Sep 2022 14:15:55 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oeEvq-001Qux-0q; Fri, 30 Sep 2022 14:15:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 30 Sep 2022 14:15:46 +0200
Message-Id: <20220930121553.335796-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220930_051559_653866_06703226 
X-CRM114-Status: UNSURE (   9.34  )
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
Cc: Johannes Zink <j.zink@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/7] Add i.MX7 NAND boot support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

NAND boot on i.MX7 is the same as on i.MX6, just a little different.
This series adds a barebox update handler to allow writing barebox
to NAND flash.

Sascha

Johannes Zink (4):
  mtd: nand-mxs: refactor flash layout configuration
  mtd: nand-mxs: add i.MX7 FCB write support
  imx-bbu-nand-fcb: isolate i.MX28 specific parts
  imx-bbu-nand-fcb: extend for i.MX7 support

Sascha Hauer (3):
  mtd: nand-mxs: Factor out a bch read function
  imx-bbu-nand-fcb: pass imx_handler further down
  imx-bbu-nand-fcb: add fcb_read/fcb_write function hooks

 arch/arm/mach-imx/include/mach/imx7-regs.h |   3 +
 common/Kconfig                             |   2 +-
 common/imx-bbu-nand-fcb.c                  | 267 ++++++++++++++----
 drivers/mtd/nand/nand_mxs.c                | 297 ++++++++++++++++++---
 include/bbu.h                              |   5 +
 include/linux/mtd/nand_mxs.h               |   4 +
 include/soc/imx/imx-nand-bcb.h             |  11 +
 7 files changed, 492 insertions(+), 97 deletions(-)

-- 
2.30.2



