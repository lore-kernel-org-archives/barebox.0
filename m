Delivery-date: Mon, 05 May 2025 14:39:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uBv6B-002SVl-34
	for lore@lore.pengutronix.de;
	Mon, 05 May 2025 14:39:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uBv64-0006fp-SD
	for lore@pengutronix.de; Mon, 05 May 2025 14:39:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SVSuw5s/lYT6Z93m7BWv/bskIQ8nUWIa01KLVplB6hA=; b=bkIEbP6s/lXejYDeZTGPblJVyN
	xEOQzXLpvWC8wh0AM9oMXgXunE+PvZRwG4nLVgjCP7T9ABrHE6SYML/AjqXDdgsHrMLm92l4TJBMd
	LuyiIKENpAXtxRu35i5hjKZ83Jf/hdTF3ePAd2on4YuPtqsCaBFVag1/YGBrLi/E2DXXjqA4VvYR2
	uKKj2+vie8NxhqL7l35pGaUEwW01kbDHEhGhCnPVTHva5HhyFHQ2L8aPi3a5Lzmozq5wpdvps3Iwz
	j6UAwkG+7B9N/F0yUU8WzbbmcVLpPDJ056XS+N26YkyeJA+Hs5O4IJhPajVtJcAwxzkMsaCAEvxfu
	emtnttaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBv5M-00000007LZx-3ROH;
	Mon, 05 May 2025 12:38:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBv29-00000007Kad-3B60
	for barebox@lists.infradead.org;
	Mon, 05 May 2025 12:35:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uBv28-0004qZ-FX; Mon, 05 May 2025 14:34:56 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uBv28-001EQP-0u;
	Mon, 05 May 2025 14:34:56 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uBuah-00Fb9X-0h;
	Mon, 05 May 2025 14:06:34 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 May 2025 14:06:19 +0200
Message-Id: <20250505120633.3717186-17-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250505120633.3717186-1-a.fatoum@pengutronix.de>
References: <20250505120633.3717186-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250505_053457_799537_49DEDC1C 
X-CRM114-Status: GOOD (  10.98  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 16/30] mci: arasan: introduce mmc_op_tuning helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Instead of duplicating the check most tuning related places, add a
helper like Linux does that checks if a command is sending a tuning
block.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/arasan-sdhci.c | 2 +-
 include/mci.h              | 6 ++++++
 2 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/mci/arasan-sdhci.c b/drivers/mci/arasan-sdhci.c
index 5774928e5a97..ceef0b63a8b9 100644
--- a/drivers/mci/arasan-sdhci.c
+++ b/drivers/mci/arasan-sdhci.c
@@ -280,7 +280,7 @@ static int arasan_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 	sdhci_write16(&host->sdhci, SDHCI_COMMAND, command);
 
 	/* CMD19/21 generate _only_ Buffer Read Ready interrupt */
-	if (cmd->cmdidx == MMC_SEND_TUNING_BLOCK || cmd->cmdidx == MMC_SEND_TUNING_BLOCK_HS200)
+	if (mmc_op_tuning(cmd->cmdidx))
 		mask = SDHCI_INT_DATA_AVAIL;
 
 	ret = sdhci_wait_for_done(&host->sdhci, mask);
diff --git a/include/mci.h b/include/mci.h
index d3b855f530fc..af56f453704e 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -504,6 +504,12 @@ static inline void mci_setup_cmd(struct mci_cmd *p, unsigned cmd,
 	p->resp_type = response;
 }
 
+static inline bool mmc_op_tuning(u32 cmdidx)
+{
+	return cmdidx == MMC_SEND_TUNING_BLOCK ||
+	       cmdidx == MMC_SEND_TUNING_BLOCK_HS200;
+}
+
 /** data information to be used with some SD/MMC commands */
 struct mci_data {
 	union {
-- 
2.39.5



