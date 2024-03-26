Delivery-date: Tue, 26 Mar 2024 12:51:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rp5LG-005BWe-14
	for lore@lore.pengutronix.de;
	Tue, 26 Mar 2024 12:51:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rp5LF-0004q7-QG
	for lore@pengutronix.de; Tue, 26 Mar 2024 12:51:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5RniLWi3BJLl5kHuxmBbRFzVA3JFPaOKKTH0vhD/o/E=; b=muB5Tm8/YYrKOuWDFEeflU15TI
	VYz2LcH5eWEXtW/bmjgmP7WOTJ4iSyqPaU9xowzCuVOlVtfjqCLzfPVkbAu8bO5dW4FlKUKtsCKq6
	Pq1RpRGWMgm5X7t4S8L47uEQQ/J9VCtLmiguGsvFqQ4fTluCO3Zg7dJBvr0Y3CXCwoXD8TGcjZzyY
	ZmUnqtCblkPnKr2788HiiFipH7zTVFvPgIe4hzf+PC0/mlNA/GLFQ/Iqo1gE3wttZQgT9r/UC5aLi
	St3oEOZKc6JdY4s1yEN78DD/oouo5e43JQMgv6BOHzWOIZlLvTNSAy9clmtpOxbRsCFnP8hMN7/Ge
	BphHh9fA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rp5Kc-00000004L3X-2rav;
	Tue, 26 Mar 2024 11:51:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rp5KX-00000004L1C-3rB5
	for barebox@lists.infradead.org;
	Tue, 26 Mar 2024 11:51:04 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1rp5KU-0004KL-46
	for barebox@lists.infradead.org; Tue, 26 Mar 2024 12:50:58 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Tue, 26 Mar 2024 12:50:41 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240326-worktree-barebox-bosch-be-ppm4-v1-1-7ea75c487348@pengutronix.de>
References: <20240326-worktree-barebox-bosch-be-ppm4-v1-0-7ea75c487348@pengutronix.de>
In-Reply-To: <20240326-worktree-barebox-bosch-be-ppm4-v1-0-7ea75c487348@pengutronix.de>
To: barebox@lists.infradead.org
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1096;
 i=s.trumtrar@pengutronix.de; h=from:subject:message-id;
 bh=CCFkhw1rGGsrhlHd1toZkqxFREFqNs90dA7DX1CcPuc=;
 b=owGbwMvMwCUmvd38QH3grB+Mp9WSGNKYts201w/6F/+WYY/znfcsC2+2BceWXkk48X25YvnKn
 XIzks1bOkpZGMS4GGTFFFki1x7S2Cz8WefL8fMMMHNYmUCGMHBxCsBECrgZGZr2REx9fSNjzdId
 kanWD4JFIz2uq2zf7bjDaYlCS+eFZC+G/8mHEv4tlnj1R5fr2qnbGs+t1lRvv+psYRAhzvI9eX2
 dODMA
X-Developer-Key: i=s.trumtrar@pengutronix.de; a=openpgp;
 fpr=59ADC228B313F32CF4C7CF001BB737C07F519AF8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240326_045102_100172_F23942FB 
X-CRM114-Status: UNSURE (   9.10  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] mci: mci-core: fix mci_switch_status call
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

mci_switch_status needs to be called with a boolean instead of a u32.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/mci/mci-core.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 414bcf6f06..78c65c8614 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1431,8 +1431,6 @@ static int mmc_select_hs200(struct mci *mci)
 	/* find out maximum bus width and then try DDR if supported */
 	err = mci_mmc_select_bus_width(mci);
 	if (err > 0) {
-		u32 status;
-
 		/* TODO  actually set drive strength instead of 0. Currently unsupported. */
 		val = EXT_CSD_TIMING_HS200 | 0 << EXT_CSD_DRV_STR_SHIFT;
 		err = mci_switch(mci, EXT_CSD_HS_TIMING, val);
@@ -1452,7 +1450,7 @@ static int mmc_select_hs200(struct mci *mci)
 		mci_set_ios(mci);
 		mci_set_clock(mci, mci->host->hs_max_dtr);
 
-		err = mci_switch_status(mci, &status);
+		err = mci_switch_status(mci, true);
 
 		/*
 		 * mmc_select_timing() assumes timing has not changed if

-- 
2.43.2



