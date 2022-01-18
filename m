Delivery-date: Tue, 18 Jan 2022 15:06:39 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9p8B-005cwc-VB
	for lore@lore.pengutronix.de; Tue, 18 Jan 2022 15:06:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9p8A-0006ME-Kl
	for lore@pengutronix.de; Tue, 18 Jan 2022 15:06:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=baRr3ImtmElmP8V5PHFcQbsoFCMDuLu2FQYH351NVBE=; b=RbmlbcerEmhiGY
	Ku90hvAaM8MkHR1nccXuPXnkEA+tpqG8V9HT9HQykAn02PKbwNVHrj7Nj1M2CXDTFgSlozW/vJs+9
	goymD5pZekOl/e47Ts3QQo+Uek7pQ0h27VYpb15R+argYbRLHpfvJNJGjmqFVWUZ7NHJtRnn5SoJ1
	zkaEy8cpi0fdAfpVqptmHUzWs6FpSQxoZjeRAWShopTooaQllED3/1UV7wOjoIHPZhB7MhlGW+qxJ
	a/jY/tfUy9cocCjTn+bPvfRXuOdogCSptFvzQdz3uVaqsOZOLqkN9KfiyVE7r+AVXRO52xv91iWrt
	2pN0udVfFTsWptC+uM4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n9p6r-001lAy-8C; Tue, 18 Jan 2022 14:05:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n9p6i-001l6r-Bh
 for barebox@lists.infradead.org; Tue, 18 Jan 2022 14:05:09 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <str@pengutronix.de>)
 id 1n9p6e-0005ob-Ay; Tue, 18 Jan 2022 15:05:04 +0100
Received: from str by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <str@pengutronix.de>)
 id 1n9p6d-009kLQ-P4; Tue, 18 Jan 2022 15:05:03 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 18 Jan 2022 15:04:47 +0100
Message-Id: <20220118140453.1860909-1-s.trumtrar@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220118_060508_470538_CE8F2601 
X-CRM114-Status: GOOD (  12.46  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/6] sata_mv: cleanup and error handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Steffen Trumtrar <str@pengutronix.de>

Hi!

The sata_mv driver in barebox only supports the ARMADA-XP and there are
not really that many users. Therefore only copy mv6-specific setup from
the kernel to the barebox driver.

We have some specific hardware combination of ARDAMA-XP and SATA drive
that fails in probing the drive on a cold start. Not always but at least
in 2 of 10 boots.

When the error occurs, the error registers and/or the documentation
wheren't really that helpful. The only way out is hard-resetting
everything and trying again to enumerate the ATA drive. That's what we
do now.

While at it, get the phy errata from the kernel and flip some bits in
the initial setup that are also set in the kernel driver. Sadly this
wasn't enough to fix the probe error.

This series was tested on the specific, broken HW combo and with a
different combo that didn't (and still doesn't) fail probing.

Steffen Trumtrar (6):
  ata: sata_mv: cleanup alignment
  ata: sata_mv: clear SERROR and en/disable EDMA
  ata: sata_mv: handle the phy errata
  ata: sata_mv: enable Generation 2 speed support
  ata: sata_mv: issue hard-reset on probe
  ata: sata_mv: try probing multiple times

 drivers/ata/sata_mv.c | 111 +++++++++++++++++++++++++++++++++++++++---
 1 file changed, 104 insertions(+), 7 deletions(-)

-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

