Delivery-date: Fri, 26 Jun 2026 10:47:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wd2Dw-00A16A-2G
	for lore@lore.pengutronix.de;
	Fri, 26 Jun 2026 10:47:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wd2Dw-0007TI-1O
	for lore@pengutronix.de; Fri, 26 Jun 2026 10:47:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dSdtiOBgbl6faaAfjd+5t7Uh6KtJW35hnpoXB31DcBg=; b=oqjqjBBER1yS4+hdIv6zf9d4L4
	TuxjaQBVTVwHARLZNmE8NEH+ksdgPo25/b8oG+KjuwdScJHL+/7OGNdSsoTA7v0bEgCfJrkqQZerP
	hzfCDyDPWehOTmuKpFEaCOMrFJcxz8cOzQS/zk66/SsqxZe/vPsQOH3PNIB6pb0WqqdWthmmDwGW/
	PWU3CyS6b4jjPaSnJcNDPw67akEBK6tIgT8seEymkGiP1ctw6hccCw9JInvf7vSOJPZgbMnH8H8WG
	2ObDFN+DL1Zvki5B4eYcxQglk8PiYzSY5CE4AJ8tLGxPbkixIh4z3yvKQ2Ol17B9zkk9ysVsLJP1T
	pnsa1Wew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd2Cb-0000000AtDl-1lka;
	Fri, 26 Jun 2026 08:46:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd2CV-0000000At8A-3zXS
	for barebox@lists.infradead.org;
	Fri, 26 Jun 2026 08:46:19 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wd2CS-0003ZP-Kf; Fri, 26 Jun 2026 10:46:12 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri, 26 Jun 2026 10:42:15 +0200
Message-ID: <20260626084608.1388806-5-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260626084608.1388806-1-a.fatoum@barebox.org>
References: <20260626084608.1388806-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260626_014616_032616_47377D13 
X-CRM114-Status: UNSURE (   8.46  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 04/26] nvme: honor namespace block size for I/O
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The translation inside nvme_block_nr() is a no-op for 512-byte sectors
as it expands to a right shift by (9 - 9) == 0.

For other sector sizes, it will mangle the block number, which is wrong:
block_device_ops already have blocks as units and NVMe registers the
block device with blockbits == ns->lba_shift, so the unit coming from the
block layer is already correct.

Assisted-by: Codex:gpt-5.5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/nvme/host/core.c | 2 +-
 drivers/nvme/host/nvme.h | 5 -----
 2 files changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 21aeda78ebfb..345707ecfeaf 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -293,7 +293,7 @@ static void nvme_setup_rw(struct nvme_ns *ns, struct nvme_command *cmnd,
 			  sector_t block, blkcnt_t num_block)
 {
 	cmnd->rw.nsid = cpu_to_le32(ns->head->ns_id);
-	cmnd->rw.slba = cpu_to_le64(nvme_block_nr(ns, block));
+	cmnd->rw.slba = cpu_to_le64(block);
 	cmnd->rw.length = cpu_to_le16(num_block - 1);
 	cmnd->rw.control = 0;
 	cmnd->rw.dsmgmt = 0;
diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
index 11942140ce32..cb259b5216f1 100644
--- a/drivers/nvme/host/nvme.h
+++ b/drivers/nvme/host/nvme.h
@@ -89,11 +89,6 @@ static inline bool nvme_ctrl_ready(struct nvme_ctrl *ctrl)
 	return val & NVME_CSTS_RDY;
 }
 
-static inline u64 nvme_block_nr(struct nvme_ns *ns, sector_t sector)
-{
-	return (sector >> (ns->lba_shift - 9));
-}
-
 static inline void nvme_end_request(struct nvme_request *rq, __le16 status,
 		union nvme_result result)
 {
-- 
2.47.3



