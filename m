Delivery-date: Thu, 12 Dec 2024 23:22:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tLrZs-007Lfg-0M
	for lore@lore.pengutronix.de;
	Thu, 12 Dec 2024 23:22:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tLrZs-00046D-1Z
	for lore@pengutronix.de; Thu, 12 Dec 2024 23:22:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=dEDh4KxJaG3HaYW4aejDHH+NTWRNnr0UMwoQ8OfDoyg=; b=f6irTA+jn1gFKeyu1/E8yiiyVo
	OgfGVDDABwVWkyKwl0HCr4l4WYTDEIHfXPIR9uLdXXG6inHg4JaQ5hDdzYAsCz6HE6Slq3PmeUOtr
	/o2uF8YhiPKumf4bIZJYO6pf35xzXiOdNp7MFRJxEAD06R/XzvqeYVxL4aZ4zCjGjyqr+jORlxsQs
	dcRrbTWU0j1R5U6H2zlIBOkE4t9dLkY/yBg3w/BJ+xgduMgZCYbh3Y10U/RtS4+FORxMdJER+8oJz
	yRAoxUqTAheGYxnpUi+eIHBDXOsxFFgiHT+U2lbyJFSVMlui78cLYbkAgyjX2e8GNbJgVy6FXCByO
	M4V4oLXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLrZG-0000000259w-3Fve;
	Thu, 12 Dec 2024 22:21:58 +0000
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLrZD-0000000257e-2ThK
	for barebox@lists.infradead.org;
	Thu, 12 Dec 2024 22:21:57 +0000
Received: by lynxeye.de (Postfix, from userid 501)
	id B886DE74073; Thu, 12 Dec 2024 23:10:38 +0100 (CET)
Received: from astat.fritz.box (a89-182-99-197.net-htp.de [89.182.99.197])
	by lynxeye.de (Postfix) with ESMTPA id CFEB4E74008
	for <barebox@lists.infradead.org>; Thu, 12 Dec 2024 23:10:37 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
To: barebox@lists.infradead.org
Date: Thu, 12 Dec 2024 23:10:33 +0100
Message-ID: <20241212221034.210933-1-dev@lynxeye.de>
X-Mailer: git-send-email 2.47.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241212_142155_773142_96E3BE32 
X-CRM114-Status: GOOD (  10.52  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] mci: sdhci: arasan: use correct input clock for divider calculation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Use the clock rate going into the core to calculate the divider.
Fixes broken SD card transfers on Zynq 7000.

Fixes: 2a879e436a5f ("mci: sdhci: arasan: Use sdhci_set_clock()")
Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/mci/arasan-sdhci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mci/arasan-sdhci.c b/drivers/mci/arasan-sdhci.c
index 37be06dffdfe..2af9ad10bed7 100644
--- a/drivers/mci/arasan-sdhci.c
+++ b/drivers/mci/arasan-sdhci.c
@@ -210,7 +210,7 @@ static void arasan_sdhci_set_clock(struct mci_host *mci, unsigned int clock)
 	clk_set_phase(clk_data->sdcardclk,
 		      clk_data->clk_phase_out[mci->mci->host->timing]);
 
-	sdhci_set_clock(&host->sdhci, clock, host->sdhci.max_clk);
+	sdhci_set_clock(&host->sdhci, clock, mci->f_max);
 }
 
 static void arasan_sdhci_set_ios(struct mci_host *mci, struct mci_ios *ios)
-- 
2.47.1



