Delivery-date: Fri, 26 Jun 2026 10:47:42 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wd2Du-00A15k-2R
	for lore@lore.pengutronix.de;
	Fri, 26 Jun 2026 10:47:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wd2Dt-0007AV-Vg
	for lore@pengutronix.de; Fri, 26 Jun 2026 10:47:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PtPzRCmrSkN4CxleDQEQF6fzbbf2GDTayJdN0bOdaio=; b=bQryjs1mCe0knbTYDl+9lL8t9s
	oG4LqCXgINOcXV09OyVftgo0BA070saVTwDEQYXrgYctyN/6o/EpNYtz+IdrmUe39dGDB8FvhFc4Q
	A9X3bMZfIWr9q+PZHd0iYkFkNHPmCTJWQYBv4ZH3Y/kF1vzU9KulC/ZQrLrpAhZJUB2S2ntYpWSmo
	go3HTWPHbDEWJ+gN68Q1F4ADpMbpgDzQx6ba0ePd8ZePIBXzAoQoERd2n4+ov4HFqiVS6PLNbmYI8
	bFrr9DpEJcBaKqMEVPYJGXmCceK3u+eMPGThEfTyaxtINE/9n0iQbZsmv0VtWYRuayHF23B4XVmO5
	0Y8gPC5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd2Cb-0000000AtDu-2KGl;
	Fri, 26 Jun 2026 08:46:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd2CV-0000000At87-3zxY
	for barebox@lists.infradead.org;
	Fri, 26 Jun 2026 08:46:19 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wd2CS-0003ZP-02; Fri, 26 Jun 2026 10:46:12 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri, 26 Jun 2026 10:42:12 +0200
Message-ID: <20260626084608.1388806-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260626084608.1388806-1-a.fatoum@barebox.org>
References: <20260626084608.1388806-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260626_014616_016985_8E7A53BF 
X-CRM114-Status: GOOD (  10.50  )
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
Subject: [PATCH 01/26] nvme: use barebox-appropriate 64-bit type for timeouts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The unsigned timeout that is used across the nvme support is in terms of
jiffies in Linux, where unsigned as type makes sense.

barebox has no jiffies though and we use the parameter to hold a nanosecond
time duration instead, which already overflows for ADMIN_TIMEOUT and
SHUTDOWN_TIMEOUT (60s and 5s, respectively) as they exceed the ~4s max.

Switch over to passing ktime_t around to fix this.

Fixes: aedcb568afe4 ("drivers: Import a very basic NVME implementation from Linux")
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/nvme/host/core.c | 2 +-
 drivers/nvme/host/nvme.h | 4 ++--
 drivers/nvme/host/pci.c  | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index fcc21677638a..98731ffe7cb2 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -8,7 +8,7 @@ int __nvme_submit_sync_cmd(struct nvme_ctrl *ctrl,
 			   struct nvme_command *cmd,
 			   union nvme_result *result,
 			   void *buffer, unsigned bufflen,
-			   unsigned timeout, int qid)
+			   ktime_t timeout, int qid)
 {
 	return ctrl->ops->submit_sync_cmd(ctrl, cmd, result, buffer, bufflen,
 					  timeout, qid);
diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
index 90121bd7a3e0..11942140ce32 100644
--- a/drivers/nvme/host/nvme.h
+++ b/drivers/nvme/host/nvme.h
@@ -77,7 +77,7 @@ struct nvme_ctrl_ops {
 			       union nvme_result *result,
 			       void *buffer,
 			       unsigned bufflen,
-			       unsigned timeout, int qid);
+			       ktime_t timeout, int qid);
 };
 
 static inline bool nvme_ctrl_ready(struct nvme_ctrl *ctrl)
@@ -120,7 +120,7 @@ int __nvme_submit_sync_cmd(struct nvme_ctrl *ctrl,
 			   struct nvme_command *cmd,
 			   union nvme_result *result,
 			   void *buffer, unsigned bufflen,
-			   unsigned timeout, int qid);
+			   ktime_t timeout, int qid);
 int nvme_submit_sync_cmd(struct nvme_ctrl *ctrl,
 			 struct nvme_command *cmd,
 			 void *buffer, unsigned bufflen);
diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 672c4cc2331a..765821aa0a65 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -384,7 +384,7 @@ static int nvme_pci_submit_sync_cmd(struct nvme_ctrl *ctrl,
 				    union nvme_result *result,
 				    void *buffer,
 				    unsigned int buffer_len,
-				    unsigned timeout, int qid)
+				    ktime_t timeout, int qid)
 {
 	struct nvme_dev *dev = to_nvme_dev(ctrl);
 	struct nvme_queue *nvmeq = &dev->queues[qid];
-- 
2.47.3



