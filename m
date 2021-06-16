Delivery-date: Wed, 16 Jun 2021 08:34:45 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltP8P-0000Dr-LJ
	for lore@lore.pengutronix.de; Wed, 16 Jun 2021 08:34:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltP8O-0000D7-8X
	for lore@pengutronix.de; Wed, 16 Jun 2021 08:34:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0K07zVeeWpQzqYBy7aHoWIiGlDJauFMGquAiQA+IpWk=; b=akVSL3tihSPkWd
	zUxVEvU0Lhgh11o+uhwoCnl+zcmNgvAtf0BtqHPniDMdocmV5qshwclUDAs3JT4ZD2qQOhbp6xk89
	6msRtQq5OVmFFxh5UaAvwKirvykAknsAF6mJNla7NLD14otm57c3TTihnC41MsTisksTSePsH70g5
	Eskhhjsw7XZQFPFpOCOPqLblTjgebus/hIyUN+r1V2t0vRdDmZFgtKLbv8pfzvYEriEpwNPj6LGjW
	TeF3UZlLeilLKKCYZmq9WuIhli1/h5TQCa06DA9vkWboMwQ+KhvQ7LD+/z3YAawy4pi0m4mnYthSO
	G63aQcYV1xmREWdFj/zA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltP6t-0055rK-BU; Wed, 16 Jun 2021 06:33:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ltP6m-0055o8-3h
 for barebox@lists.infradead.org; Wed, 16 Jun 2021 06:33:05 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1ltP6i-0008Ig-Az
 for barebox@lists.infradead.org; Wed, 16 Jun 2021 08:33:00 +0200
Received: from str by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1ltP6h-00049v-Ll
 for barebox@lists.infradead.org; Wed, 16 Jun 2021 08:32:59 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 16 Jun 2021 08:32:45 +0200
Message-Id: <20210616063246.14900-9-s.trumtrar@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210616063246.14900-1-s.trumtrar@pengutronix.de>
References: <20210616063246.14900-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210615_233304_192929_E66294D4 
X-CRM114-Status: UNSURE (   9.25  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v4 09/10] drivers: firmware: socfpga: remove bridges shutdown
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The bridges are now handled via the bridges driver. There is no
need to hardcode the memory writes anymore.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/firmware/socfpga.c | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/drivers/firmware/socfpga.c b/drivers/firmware/socfpga.c
index 605c931604c9..eb3fc557c7fe 100644
--- a/drivers/firmware/socfpga.c
+++ b/drivers/firmware/socfpga.c
@@ -294,15 +294,6 @@ static int socfpga_fpgamgr_program_start(struct firmware_handler *fh)
 	/* disable all signals from hps peripheral controller to fpga */
 	writel(0, SYSMGR_FPGAINTF_MODULE);
 
-	/* disable all signals from fpga to hps sdram */
-	writel(0, (CYCLONE5_SDR_ADDRESS + SDR_CTRLGRP_FPGAPORTRST_ADDRESS));
-
-	/* disable all axi bridge (hps2fpga, lwhps2fpga & fpga2hps) */
-	writel(~0, CYCLONE5_RSTMGR_ADDRESS + RESET_MGR_BRG_MOD_RESET_OFS);
-
-	/* unmap the bridges from NIC-301 */
-	writel(0x1, CYCLONE5_L3REGS_ADDRESS);
-
 	dev_dbg(&mgr->dev, "start programming...\n");
 
 	/* initialize the FPGA Manager */
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

