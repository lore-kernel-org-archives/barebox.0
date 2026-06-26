Delivery-date: Fri, 26 Jun 2026 10:47:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wd2DL-00A117-2f
	for lore@lore.pengutronix.de;
	Fri, 26 Jun 2026 10:47:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wd2DK-0005xz-Pb
	for lore@pengutronix.de; Fri, 26 Jun 2026 10:47:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IH6hEZCoViZEcqE/PW0KRxKtz/t7s1VkyNUjlk2iNBY=; b=eTyRnK9s3BuckbqcBRlwxIINBW
	SeangJk8JIRLPymIeAKqqMpqypA/b23dQVwofuYeO8695rRkP7OySVDRPKl6gPAb+bx2XSkVY1F84
	khyz/FGRGHRHeD7WJJ6IHbUS7xXhm9fyt1ijWmBrfVqKjzsWuqiWf4UMRpGRETWQke+VTBaxrDC0N
	oAGqcaK9ArBN7lCbyXDhtLBv52SIVyS6xbbnbnyjwSfkGFyUQTklITJOyZEzwGeYE476SJGzc88wg
	VEu8+sQYeCKuOka/sst7x58CPNyg/5i/ylWdVtTUu8iMWjHLV9uyTFvt873PX2WQiiCUpD36bSdFJ
	vphd9/hQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd2CZ-0000000AtCZ-38en;
	Fri, 26 Jun 2026 08:46:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd2CV-0000000At88-40Jm
	for barebox@lists.infradead.org;
	Fri, 26 Jun 2026 08:46:17 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wd2CS-0003ZP-Dz; Fri, 26 Jun 2026 10:46:12 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri, 26 Jun 2026 10:42:14 +0200
Message-ID: <20260626084608.1388806-4-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260626084608.1388806-1-a.fatoum@barebox.org>
References: <20260626084608.1388806-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260626_014616_035190_5D49198C 
X-CRM114-Status: UNSURE (   8.04  )
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
Subject: [PATCH 03/26] nvme: allow flush opcode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The NVMe flush opcode was already wired as block_device_ops::flush,
but it was doomed to fail as without a DMA direction set,
nvme_pci_submit_sync_cmd() would early exit with -EINVAL.

As the command isn't DMAng any data, set dma_dir to DMA_NONE to get the
flush command flushed.

Fixes: aedcb568afe4 ("drivers: Import a very basic NVME implementation from Linux")
Assisted-by: Codex:gpt-5.5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/nvme/host/pci.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 765821aa0a65..6343af25026b 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -414,6 +414,9 @@ static int nvme_pci_submit_sync_cmd(struct nvme_ctrl *ctrl,
 		break;
 	case NVME_QID_IO:
 		switch (cmd->rw.opcode) {
+		case nvme_cmd_flush:
+			dma_dir = DMA_NONE;
+			break;
 		case nvme_cmd_write:
 			dma_dir = DMA_TO_DEVICE;
 			break;
-- 
2.47.3



