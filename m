Delivery-date: Sun, 28 Feb 2021 20:09:12 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGRRI-0003SY-4P
	for lore@lore.pengutronix.de; Sun, 28 Feb 2021 20:09:12 +0100
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGRRD-0000jK-RT
	for lore@pengutronix.de; Sun, 28 Feb 2021 20:09:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe
	:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qUbnMf13Dj+4WQoku/6MVrURzQcQfemTRhNUZ9D3s6E=; b=VaG2nAEBuWZydakVBw94p1K6ja
	NtL8lsV8kxT9OWLM7LFkkRBq/Oj5/f9R8i22fxFNOsXbZwNsZtbBYhoUxDGiFpQi1aUO8AN8w3lh7
	A0C/ZNTOLySdxb1UHBCFr28XAlsztknd/WvW54pABFZ0PJZYV7yvlS+OHRr10zExm6YSfAa1Kvljd
	Xjgeqf/67vqkoLhwkPSNRjAAT/wMOyhrfXmMAYF+b+ZQJgItEPGXOlMEIniK9WsuIY871Eq+irzvJ
	1+TmRczUnX65zt/d6zH3Q0aMbtKw1NgNYbarDlg9EZL3YlhRDSdIP+cpT/jzf5JsIpJERj6BmP8qd
	2FBVA36w==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lGRPe-0005vu-3U; Sun, 28 Feb 2021 19:07:30 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lGRPX-0005uO-MX
 for barebox@lists.infradead.org; Sun, 28 Feb 2021 19:07:24 +0000
X-Originating-IP: 87.123.101.180
Received: from geraet.fritz.box (unknown [87.123.101.180])
 (Authenticated sender: ahmad@a3f.at)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id AB423E0003
 for <barebox@lists.infradead.org>; Sun, 28 Feb 2021 19:07:18 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Date: Sun, 28 Feb 2021 20:07:06 +0100
Message-Id: <20210228190707.1451161-2-ahmad@a3f.at>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210228190707.1451161-1-ahmad@a3f.at>
References: <20210228190707.1451161-1-ahmad@a3f.at>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210228_140723_882214_9F22BCE3 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.29
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1231::1
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] usb: dwc2: fix mismatching argument to printf format
 specifier
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

%pad prints a DMA address out of a pointer to dma_addr_t.
Casting the dma_addr_t itself to void *, will lead to printf
dereferencing it and printing the first sizeof(dma_addr_t).

The dwc2 driver is the only one using %pad. Fix it.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/usb/dwc2/gadget.c | 2 +-
 drivers/usb/dwc2/host.c   | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/dwc2/gadget.c b/drivers/usb/dwc2/gadget.c
index b8ec37be78b8..053a243d64c3 100644
--- a/drivers/usb/dwc2/gadget.c
+++ b/drivers/usb/dwc2/gadget.c
@@ -307,7 +307,7 @@ static void dwc2_gadget_start_req(struct dwc2 *dwc2,
 		dwc2_writel(dwc2, ureq->dma, dma_reg);
 
 		dwc2_dbg(dwc2, "%s: 0x%pad => 0x%08x\n",
-			 __func__, (void *)ureq->dma, dma_reg);
+			 __func__, &ureq->dma, dma_reg);
 	}
 
 	if (hs_ep->isochronous && hs_ep->interval == 1) {
diff --git a/drivers/usb/dwc2/host.c b/drivers/usb/dwc2/host.c
index 7a070d91f3bc..b5a51f566804 100644
--- a/drivers/usb/dwc2/host.c
+++ b/drivers/usb/dwc2/host.c
@@ -181,7 +181,7 @@ static int transfer_chunk(struct dwc2 *dwc2, u8 hc,
 	}
 
 	dwc2_dbg(dwc2, "chunk: pid=%d xfer_len=%u pkts=%u dma_addr=%pad\n",
-		 *pid, xfer_len, num_packets, (void *)dma_addr);
+		 *pid, xfer_len, num_packets, &dma_addr);
 
 	dwc2_writel(dwc2, dma_addr, HCDMA(hc));
 
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

