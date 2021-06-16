Delivery-date: Wed, 16 Jun 2021 09:41:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltQB8-00011D-59
	for lore@lore.pengutronix.de; Wed, 16 Jun 2021 09:41:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltQB7-0000AL-B0
	for lore@pengutronix.de; Wed, 16 Jun 2021 09:41:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Vx/pWph0go0VuBH2CRglUG/04PgGnofFdRaLrqSnfiY=; b=KmjxDNrpYTe9TS
	vcM6ibxHZ/13yRJEMoQN/Vn2y6FKKSCsLHAKxXJ+mOGoy8EFf8HavT9xQQ+qfsC6rOx35HwUjmFK3
	F+vwbrT4cmfW2lVucSfGL/hxpm3fxqo5MCniozCsr+v23jQ9rKsTaCw+EW50dtKNQpwhktTayB+Ul
	P79yAwkRYi8YORdF3xxLP3vt7B5oIC8pQBv2P6yXM5uCpX9MrQ8bOpglh1JT5SaOlPGt/ytYtzUhW
	PpSbuJP5oZuh2R9gyVh/F5AT2RqtOitmVntIDo/UGfqDRyZigjk1ceY0GVaW7wk6ff0madA1ZdejI
	XMygngdzOnFaLw8jOkMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltQ9t-005EU1-Kg; Wed, 16 Jun 2021 07:40:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ltQ9a-005EMj-3s
 for barebox@lists.infradead.org; Wed, 16 Jun 2021 07:40:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1ltQ9W-0007z9-EV; Wed, 16 Jun 2021 09:39:58 +0200
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1ltQ9V-0001q7-RJ; Wed, 16 Jun 2021 09:39:57 +0200
Received: from mtr by dude03.red.stw.pengutronix.de with local (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1ltQ9V-007rFs-QY; Wed, 16 Jun 2021 09:39:57 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Michael Graichen <michael.graichen@hotmail.com>
Date: Wed, 16 Jun 2021 09:39:52 +0200
Message-Id: <20210616073957.1872965-1-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210616_004002_242090_8C6D8441 
X-CRM114-Status: UNSURE (   8.03  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/5] Cleanup and fix arasan-sdhci
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

These are a few misc patches for the arasan sd controller. Nothing particular
stands out and each patch is useful on its own. I put them into a single
series, because all of them affect the arasan driver.

Michael

Michael Tretter (5):
  mci: mci-core: respect disable-wp property
  mci: arasan: fix most checkpatch warnings
  mci: arasan: remove duplicate stop clock
  mci: arasan: wait for XFER_COMPLETE for busy response
  ARM: zynqmp: defconfig: enable MCI_ARASAN

 arch/arm/configs/zynqmp_defconfig |  2 ++
 drivers/mci/arasan-sdhci.c        | 51 ++++++++++++++++++-------------
 drivers/mci/mci-core.c            |  4 ++-
 include/mci.h                     |  1 +
 4 files changed, 35 insertions(+), 23 deletions(-)

-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

