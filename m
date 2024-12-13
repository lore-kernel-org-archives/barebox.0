Delivery-date: Fri, 13 Dec 2024 21:59:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tMClB-007jIg-03
	for lore@lore.pengutronix.de;
	Fri, 13 Dec 2024 21:59:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tMClB-00007F-0y
	for lore@pengutronix.de; Fri, 13 Dec 2024 21:59:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=qe1aKs6SftWfHNu017NrkBsvnLpQzK/JxvqA/oLFauE=; b=jtDmgcvUDmqYYJxBv0O5Yr2lYq
	obttDNsDudfZJiN/Hh6/0l3gBAQbaYHX/e0br/jtdqoBT6R/zZqLY7DGy97tY76dksRa4ymMiaPHp
	AvXM3M11OaKxoOn/CGUd1itfkGtp/GSieheFkgR2YAc+iBBrHeXpklbVHQ2t2vbXSCfoWQvec700Q
	y0KckRvCc5jIcr4xmoA2NMLsiCwyASnNlrZoMjhy/A/jqNTJotfw80xDE/cRK0d9S33HmZoutWAL/
	BTuFOYsleP/Cp9/W65xP6FKxFyKtqBxLe6sUkjssk3fdlq2TbUJGotFMzMAmfbCDt5TvUFms9NmxT
	Ha7L7GnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tMCkQ-000000051LX-3sEF;
	Fri, 13 Dec 2024 20:58:54 +0000
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tMCkO-000000051L1-0Z7A
	for barebox@lists.infradead.org;
	Fri, 13 Dec 2024 20:58:53 +0000
Received: by lynxeye.de (Postfix, from userid 501)
	id 73593E74071; Fri, 13 Dec 2024 21:58:19 +0100 (CET)
Received: from astat.fritz.box (a89-182-99-197.net-htp.de [89.182.99.197])
	by lynxeye.de (Postfix) with ESMTPA id C318AE74012
	for <barebox@lists.infradead.org>; Fri, 13 Dec 2024 21:58:18 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
To: barebox@lists.infradead.org
Date: Fri, 13 Dec 2024 21:58:15 +0100
Message-ID: <20241213205815.356903-1-dev@lynxeye.de>
X-Mailer: git-send-email 2.47.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241213_125852_318187_4B164487 
X-CRM114-Status: GOOD (  13.62  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] mci: sdhci: initialize dma state on non-data commands
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Commands without data will leave the dma parameter uninitialized
in sdhci_setup_data_dma(). Drivers then decide whether to set
SDHCI_DMA_EN based on this uninitialized data. This seems to be
mostly harmless as the host controllers seem to ignore this bit
on non-data commands, but it's still a bit confusing. Make sure
to always return a valid state.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/mci/sdhci.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/mci/sdhci.c b/drivers/mci/sdhci.c
index f1bb7f45d810..2c12f00ab967 100644
--- a/drivers/mci/sdhci.c
+++ b/drivers/mci/sdhci.c
@@ -478,8 +478,11 @@ void sdhci_setup_data_dma(struct sdhci *sdhci, struct mci_data *data,
 	struct device *dev = sdhci_dev(sdhci);
 	int nbytes;
 
-	if (!data)
+	if (!data) {
+		if (dma)
+			*dma = SDHCI_NO_DMA;
 		return;
+	}
 
 	sdhci_setup_data_pio(sdhci, data);
 
-- 
2.47.1



