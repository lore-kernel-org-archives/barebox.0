Delivery-date: Mon, 01 Dec 2025 22:19:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQBJG-006wXp-1P
	for lore@lore.pengutronix.de;
	Mon, 01 Dec 2025 22:19:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQBJF-00025Z-TQ
	for lore@pengutronix.de; Mon, 01 Dec 2025 22:19:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=afCZQrdhtS6sJ0PTgqhh6LpQjUhQ2fyhdL/AGZW/zCM=; b=LqcueUIp6UIwo50mtb7+pBsXcX
	OuObTdLvwseu6PVDZtdE56V9xz+eOqVQes+bhBWOt952zBH6PJC2M0ZV+UAiKfV4+8utM/m7qdyvZ
	rGcbwZWczHAswIrWgtHTn3+wZKiTMF4g4eG6cF11sP/XjmZaQ9NlLpK5hyw949DcS4pYir9oS7RKB
	ai3PvMdQa2y+9fvLD2/PDnC0LgRsf7qJpG92V5H1lw2bpMcm6vj5LrejZTUHj38YqTqofkPoP6Uw6
	u/NCg9dh6I+lEZB5YZ1n8Qsok+hSY/FcYxR3ZIF52K1YpMCzPzWaTvhO7ZNtH2p2G0G7kLI9MC6ub
	uxc9EwTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQBIj-00000004XDe-2dy8;
	Mon, 01 Dec 2025 21:19:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQBIg-00000004XCV-2oXP
	for barebox@lists.infradead.org;
	Mon, 01 Dec 2025 21:19:16 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vQBIe-0001xf-9p; Mon, 01 Dec 2025 22:19:12 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: chalianis1@gmail.com,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  1 Dec 2025 22:18:54 +0100
Message-ID: <20251201211911.1402617-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251201211911.1402617-1-a.fatoum@barebox.org>
References: <20251201211911.1402617-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251201_131914_733082_7B31C5D0 
X-CRM114-Status: UNSURE (   9.89  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH RFT 2/2] usb: xhci: pass hardware device to dma_alloc_coherent
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We already pass the hardware device to dma_map_single in xhci-ring.c, do
the same for the coherent allocation, so dma-ranges is taken into
account.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/usb/host/xhci-mem.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/host/xhci-mem.c b/drivers/usb/host/xhci-mem.c
index aca3920427f4..6324bab730ad 100644
--- a/drivers/usb/host/xhci-mem.c
+++ b/drivers/usb/host/xhci-mem.c
@@ -86,7 +86,7 @@ static void *xhci_malloc(struct xhci_ctrl *ctrl, unsigned int size, dma_addr_t *
 {
 	void *ptr;
 
-	ptr = dma_alloc_coherent(DMA_DEVICE_BROKEN, size, dma_addr);
+	ptr = dma_alloc_coherent(ctrl->host.hw_dev, size, dma_addr);
 	if (!ptr)
 		return NULL;
 
-- 
2.47.3



