Delivery-date: Wed, 12 Mar 2025 14:06:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsLnD-00D8A6-0e
	for lore@lore.pengutronix.de;
	Wed, 12 Mar 2025 14:06:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsLnA-00021X-KS
	for lore@pengutronix.de; Wed, 12 Mar 2025 14:06:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pk30KMkJggASoL3+ne8EHcFOu/2jga8+lJDCvARdrGg=; b=n4r++CU4fOIQ2L0kvOM719EMXt
	g1TMHbLB5yA4EhKZjTLlqqBIiS2udiSJqEL89mgrxmsNhcg9b/VtWcnMzqGKUvfK5k8eaBVgt9r+1
	umF5RnaAF9Gyci2elPh1sN5C9I2hgv8yRGs0VecCN632VwsFjI/qKiHBtmrwfmtQlNLl83AiP+yBY
	wnQctgdBl0e74krHqRGosKSpkxSPP7YyIJwiQucgelSRt8NqakoFwoPCuTkOABXucaVccKcEr/4Wk
	l3v0gWWQk/+7FkCNcJvSoI/QJIAVfAuvtdfSl7SeU/TmNikdCN6csjvBneqb3BJdxV1mDLgNFNUuK
	CuvGWXLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsLmc-00000008UpP-05ON;
	Wed, 12 Mar 2025 13:06:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsL0W-00000008NQf-0sFo
	for barebox@lists.infradead.org;
	Wed, 12 Mar 2025 12:16:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tsL0U-0003sI-T9; Wed, 12 Mar 2025 13:16:18 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tsL0U-005M8X-1t;
	Wed, 12 Mar 2025 13:16:18 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tsL0U-00AdfG-1d;
	Wed, 12 Mar 2025 13:16:18 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 12 Mar 2025 13:16:17 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250312-rpmb-v1-2-0f213382a3f3@pengutronix.de>
References: <20250312-rpmb-v1-0-0f213382a3f3@pengutronix.de>
In-Reply-To: <20250312-rpmb-v1-0-0f213382a3f3@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1741781778; l=1665;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=y7EHMne6j+Ddk7B7BV/EtuCjHqBA8XAwFLqKh7Ccr9s=;
 b=uIa87fbovu3SxbvWE6d+0NaRHR3Pwwp/8wx9vX6tVTbJr9QqEVzmFt3uldJATDPtxhlKTThcf
 cP15oxH3wQ0DSaXa9LoIM1JBZGHEt+Ic733yuTdJWWN6gL7NxKBbb8X
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250312_051620_252991_955C6330 
X-CRM114-Status: GOOD (  11.80  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/9] mci: export some functions for RPMB support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Export mci_send_cmd() and mci_blk_part_switch() in preparation for
adding RPMB support.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mci-core.c | 4 ++--
 include/mci.h          | 2 ++
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 6d8140f7b0..b7ea0df3cb 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -68,7 +68,7 @@ static inline unsigned mci_caps(struct mci *mci)
  * @param data The data according to the command (can be NULL)
  * @return Driver's answer (0 on success)
  */
-static int mci_send_cmd(struct mci *mci, struct mci_cmd *cmd, struct mci_data *data)
+int mci_send_cmd(struct mci *mci, struct mci_cmd *cmd, struct mci_data *data)
 {
 	struct mci_host *host = mci->host;
 
@@ -2030,7 +2030,7 @@ static int sd_send_if_cond(struct mci *mci)
 /**
  * Switch between hardware MMC partitions on demand
  */
-static int mci_blk_part_switch(struct mci_part *part)
+int mci_blk_part_switch(struct mci_part *part)
 {
 	struct mci *mci = part->mci;
 	int ret;
diff --git a/include/mci.h b/include/mci.h
index c6ee6ea50f..8084df813a 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -729,6 +729,8 @@ int mci_execute_tuning(struct mci *mci);
 int mci_send_abort_tuning(struct mci *mci, u32 opcode);
 int mmc_select_timing(struct mci *mci);
 int mci_set_blockcount(struct mci *mci, unsigned int cmdarg);
+int mci_blk_part_switch(struct mci_part *part);
+int mci_send_cmd(struct mci *mci, struct mci_cmd *cmd, struct mci_data *data);
 
 static inline bool mmc_card_hs200(struct mci *mci)
 {

-- 
2.39.5



