Delivery-date: Tue, 18 Jan 2022 15:06:43 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9p8F-005cxW-7z
	for lore@lore.pengutronix.de; Tue, 18 Jan 2022 15:06:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9p8E-0006Nj-3K
	for lore@pengutronix.de; Tue, 18 Jan 2022 15:06:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=llkV4p/gLreWcEdEHr002lUdjEdV+TxXYgI86yNHVMc=; b=xcopyt4T3LjQ58
	2SobqaBwd7Cs42Y9Xah5OhXJFi5+Z+zj2b5nREjjhOyYXxxC+Ku1mzPKFPHUtgQ7VuZq8p1icNtCI
	G+L5sgp3gDw5aYpMrWaMsyvdehcPSeMoswT0V+IPi4BY5vMHLvHgewWCHW+RTMbjyuruBZpt49EaS
	0IM4svxhrf1tB1qTtFnYeKeqm/5+nmcqGk/VZP17K81gkHThoxA5/s77oci0TMgTLl8XDXZOdJFdQ
	sBCQZwvv4hIEwdX9mktEnqc+ruDZ6+X8ut/gegC/5wM71tmTqDTlIw5V6WsurogKta8eqsPGpzj0j
	9mT8ED87sTWm15eOz6OQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n9p6o-001l9z-Ai; Tue, 18 Jan 2022 14:05:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n9p6i-001l70-Bw
 for barebox@lists.infradead.org; Tue, 18 Jan 2022 14:05:09 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <str@pengutronix.de>)
 id 1n9p6e-0005og-H2; Tue, 18 Jan 2022 15:05:04 +0100
Received: from str by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <str@pengutronix.de>)
 id 1n9p6d-009kMl-RG; Tue, 18 Jan 2022 15:05:03 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Tue, 18 Jan 2022 15:04:52 +0100
Message-Id: <20220118140453.1860909-6-s.trumtrar@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220118140453.1860909-1-s.trumtrar@pengutronix.de>
References: <20220118140453.1860909-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220118_060508_452960_D96475B7 
X-CRM114-Status: GOOD (  10.24  )
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
Subject: [PATCH 5/6] ata: sata_mv: issue hard-reset on probe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

When strobing the EATARST signal, the core will generate a hard-reset
instead of a soft-reset. Use this to have the core and ATA drive in a
better defined state.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/ata/sata_mv.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/ata/sata_mv.c b/drivers/ata/sata_mv.c
index dd326428f4..49205d24d8 100644
--- a/drivers/ata/sata_mv.c
+++ b/drivers/ata/sata_mv.c
@@ -136,6 +136,8 @@ static int mv_sata_probe(struct device_d *dev)
 
 	mv_soc_65n_phy_errata(base);
 
+	/* strobe for hard-reset */
+	writel(REG_EDMA_COMMAND__EATARST, base + REG_EDMA_COMMAND(0));
 	writel(REG_EDMA_COMMAND__EATARST, base + REG_EDMA_COMMAND(0));
 	udelay(25);
 	writel(0x0, base + REG_EDMA_COMMAND(0));
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

