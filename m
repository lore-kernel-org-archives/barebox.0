Delivery-date: Thu, 27 Apr 2023 15:20:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ps1Y2-002JLY-Kv
	for lore@lore.pengutronix.de; Thu, 27 Apr 2023 15:20:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ps1Y2-0000iU-AN
	for lore@pengutronix.de; Thu, 27 Apr 2023 15:20:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ijsKRcoKch4cGNJ/SIS/nHFOXNgMq05gkiPkQuEVKnc=; b=cj54Ke1kaC1AxhZBGrXBHIez6V
	QQeE6DGOFFSYRcG5HaWvGSwXLnBMlqeZG2p2PefJ/gVFCl+M0GvOZnxfUNrDaxt84ATMrWYq/mkCu
	Kk1cC4DfELXDLWvtOebs8g2Ch+AylPHuNkGXTYByenZQ6ZwWtxD9nSIR2y7sdCk0hKEcTK2/74JvU
	H0YZ77PFreiaEXuYQorX4dnH30/l6gcHOXBg4pn51dHsvt04zAd1zNtyTuHBJrD1R82gaqMv65FKA
	eus66Ixa/0RR2L0C5hLdwQ04DYUOUaYQhwdwP+5abXzD8x4ikJiyt58hindr6CBazmOCYr+O3Mk6g
	0Wffnt0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ps1WV-006ci7-2i;
	Thu, 27 Apr 2023 13:18:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ps1WS-006cfx-1g
	for barebox@lists.infradead.org;
	Thu, 27 Apr 2023 13:18:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ps1WK-0000Uv-2i; Thu, 27 Apr 2023 15:18:48 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ps1WJ-00EADu-Dv; Thu, 27 Apr 2023 15:18:47 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ps1WI-005Ysh-DF; Thu, 27 Apr 2023 15:18:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 27 Apr 2023 15:18:45 +0200
Message-Id: <20230427131845.1325365-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230427_061856_557654_AFA49357 
X-CRM114-Status: UNSURE (   9.16  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH] mci: dove: Add unhandled enumeration value
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Fixes:

drivers/mci/dove-sdhci.c: In function 'dove_sdhci_mci_set_ios':
drivers/mci/dove-sdhci.c:185:9: warning: enumeration value 'MMC_BUS_WIDTH_1' not handled in switch [-Wswitch]

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/dove-sdhci.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/mci/dove-sdhci.c b/drivers/mci/dove-sdhci.c
index ff75bb8059..0c73441d5a 100644
--- a/drivers/mci/dove-sdhci.c
+++ b/drivers/mci/dove-sdhci.c
@@ -189,6 +189,8 @@ static void dove_sdhci_mci_set_ios(struct mci_host *mci, struct mci_ios *ios)
 	case MMC_BUS_WIDTH_4:
 		val |= SDHCI_CTRL_4BITBUS;
 		break;
+	case MMC_BUS_WIDTH_1:
+		break;
 	}
 
 	if (ios->clock > 26000000)
-- 
2.39.2



