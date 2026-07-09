Delivery-date: Thu, 09 Jul 2026 09:26:30 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1whj9S-001q1Y-0T
	for lore@lore.pengutronix.de;
	Thu, 09 Jul 2026 09:26:30 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id B9A95202761
	for <lore@pengutronix.de>; Thu, 09 Jul 2026 09:26:29 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=RTPqwI5T;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=V6ECbkLjOz16T1kbYjFWeX9fyHleRfbFhucJi5L1rx8=; b=RTPqwI5T57+n40CYu55phcrVU0
	hQTfvuXZG3Ptx1rqyCu1OcEnI1CzLKTSeq9pO7xiVm5Amzw3Rl34KTLIEHhJvpx+z/krRcvNaEylp
	rTQ4DuOatd1CVbC1soTmo7t2HHAFql4m3mlGjgEwyhrd2SCcOtO3DyY1FTgr1r+aMlupJXA+H2hz5
	H8YXNoi9QPB/h0dM7nUU4TMKtz+g5Lp2965oC9ybmkME599nKEYnAH8c8v17B3j54X6PR8r3hGsI4
	H3IBNu553oHfJpj08rcNv7VsUdmHXMrHCS8Zhzc0ZOaps4BU/ciaTCmw2l31Z5VxjuMkWBNppiQ4n
	uFPI3nBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whj67-00000001Gfe-3qzZ;
	Thu, 09 Jul 2026 07:23:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whj65-00000001GeQ-3yuh
	for barebox@lists.infradead.org;
	Thu, 09 Jul 2026 07:23:03 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1whj63-0002nf-Hc; Thu, 09 Jul 2026 09:22:59 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 2/2] nvme: pass device to dma dma_alloc/free_coherent
Date: Thu,  9 Jul 2026 09:22:52 +0200
Message-ID: <20260709072255.510962-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260709072255.510962-1-a.fatoum@barebox.org>
References: <20260709072255.510962-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@barebox.org
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260709_002301_987328_328386C8 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  We are already passing the device to the streaming DMA helpers,
    so do the same for consistent DMA as well. Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
    --- drivers/nvme/host/pci.c | 8 ++++---- 1 file changed, 4 insertions(+),
    4 deletions(-) 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a0a:edc0:2:b01:1d:0:0:104 listed in]
                             [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Spamd-Result: default: False [-5.11 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:900:1d::77:received];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	DMARC_NA(0.00)[barebox.org];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:2:b01:1d::104:received];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@barebox.org,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: B9A95202761
X-Stat-Signature: 4rj3wr67qus4qi5dx14yaa54jtnt6h1r

We are already passing the device to the streaming DMA helpers, so do
the same for consistent DMA as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/nvme/host/pci.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 29a6db76e0f6..ea582feb1403 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -95,7 +95,7 @@ static int nvme_pci_setup_prps(struct nvme_dev *dev,
 	if (nprps > dev->prp_pool_size) {
 		__le64 *prp_pool;
 
-		prp_pool = dma_realloc_coherent(DMA_DEVICE_BROKEN,
+		prp_pool = dma_realloc_coherent(dev->dev,
 						dev->prp_pool,
 						dev->prp_pool_size * sizeof(*prp_pool),
 						nprps * sizeof(*prp_pool),
@@ -164,13 +164,13 @@ static int nvme_alloc_queue(struct nvme_dev *dev, int qid, int depth)
 	if (dev->ctrl.queue_count > qid)
 		return 0;
 
-	nvmeq->cqes = dma_alloc_coherent(DMA_DEVICE_BROKEN,
+	nvmeq->cqes = dma_alloc_coherent(dev->dev,
 					 CQ_SIZE(depth),
 					 &nvmeq->cq_dma_addr);
 	if (!nvmeq->cqes)
 		goto free_nvmeq;
 
-	nvmeq->sq_cmds = dma_alloc_coherent(DMA_DEVICE_BROKEN,
+	nvmeq->sq_cmds = dma_alloc_coherent(dev->dev,
 					    SQ_SIZE(depth),
 					    &nvmeq->sq_dma_addr);
 	if (!nvmeq->sq_cmds)
@@ -187,7 +187,7 @@ static int nvme_alloc_queue(struct nvme_dev *dev, int qid, int depth)
 	return 0;
 
  free_cqdma:
-	dma_free_coherent(DMA_DEVICE_BROKEN,
+	dma_free_coherent(dev->dev,
 			  (void *)nvmeq->cqes, nvmeq->cq_dma_addr,
 			  CQ_SIZE(depth));
  free_nvmeq:
-- 
2.47.3



