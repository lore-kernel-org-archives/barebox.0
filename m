Delivery-date: Wed, 03 May 2023 12:20:39 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pu9bD-0033TQ-RP
	for lore@lore.pengutronix.de; Wed, 03 May 2023 12:20:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pu9bC-0006Yu-3D
	for lore@pengutronix.de; Wed, 03 May 2023 12:20:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=U1CWn5z7Yhe7u+WaVQGLlT7T4bRWtCoOdeygJDebfRU=; b=1SJfwZ8npeuGAZ1ZhXfQFVCgsg
	Rp/KedxFhk3q6oHtCnmCskNWWq1zMCiKZsRfqThc8TeDVp4CMBFdPSK5lLPuqLg6zG76sW64OSfnC
	aM12IaJgb/LlnuELbFJpvt7ZvB+1ptDN009Wbklp8vcq3WhcmyiuJl8d7OhSgqfUqAJIO4/VjViUW
	6vtIxz6OKaaC8MsWHCPIUPSG2GmYoTz4VRxOWItkzw/B3rYQozkTj/E6iHS3dhOlWe1piSLR5Ec9X
	eeM46MIJKsd3mG3FUH+p7O+sotBw9FE5yy9VfpaT+yF6NvjrmXrGaclYZuhNuOoMEmSMtOyZAFj9f
	66NfLmpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pu9a8-0046q0-0P;
	Wed, 03 May 2023 10:19:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pu9a2-0046nd-2v
	for barebox@lists.infradead.org;
	Wed, 03 May 2023 10:19:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1pu9Zz-00065B-EV; Wed, 03 May 2023 12:19:23 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1pu9Zy-000nxK-46; Wed, 03 May 2023 12:19:22 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1pu9Zw-007f5I-KC; Wed, 03 May 2023 12:19:20 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed,  3 May 2023 12:19:17 +0200
Message-Id: <20230503101919.1826193-3-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230503101919.1826193-1-o.rempel@pengutronix.de>
References: <20230503101919.1826193-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230503_031926_952239_00DAD9D6 
X-CRM114-Status: GOOD (  13.01  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v1 2/4] usb: dwc2: Port FIFO configuration sync from Linux v6.3
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This patch ports the FIFO configuration from Linux kernel v6.3. The
change mainly syncs the code with the kernel and removes an unused
register read and value assignment in the first step of the loop
(txfsz = dwc2_readl(dwc2, DPTXFSIZN(ep));).

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/usb/dwc2/gadget.c | 29 +++++++++++++----------------
 1 file changed, 13 insertions(+), 16 deletions(-)

diff --git a/drivers/usb/dwc2/gadget.c b/drivers/usb/dwc2/gadget.c
index 028f3c877a..bb55888abf 100644
--- a/drivers/usb/dwc2/gadget.c
+++ b/drivers/usb/dwc2/gadget.c
@@ -1549,9 +1549,8 @@ static void dwc2_gadget_setup_fifo(struct dwc2 *dwc2)
 	u32 np_tx_fifo_size = dwc2->params.g_np_tx_fifo_size;
 	u32 rx_fifo_size = dwc2->params.g_rx_fifo_size;
 	u32 fifo_size = dwc2->hw_params.total_fifo_size;
-	u32 *tx_fifo_size = dwc2->params.g_tx_fifo_size;
-	u32 size, depth;
-	u32 txfsz;
+	u32 *txfsz = dwc2->params.g_tx_fifo_size;
+	u32 size, val;
 
 	/* Reset fifo map if not correctly cleared during previous session */
 	WARN_ON(dwc2->fifo_map);
@@ -1578,19 +1577,17 @@ static void dwc2_gadget_setup_fifo(struct dwc2 *dwc2)
 	 * them to endpoints dynamically according to maxpacket size value of
 	 * given endpoint.
 	 */
-
-	for (ep = 1; ep < dwc2->num_eps; ep++) {
-		txfsz = dwc2_readl(dwc2, DPTXFSIZN(ep));
-		depth = tx_fifo_size[ep];
-
-		if (addr + depth > fifo_size)
-			dwc2_err(dwc2, "insufficient fifo memory\n");
-
-		txfsz = depth << FIFOSIZE_DEPTH_SHIFT;
-		txfsz |= addr & 0xffff;
-		dwc2_writel(dwc2, txfsz, DPTXFSIZN(ep));
-
-		addr += depth;
+	for (ep = 1; ep < DWC2_MAX_EPS_CHANNELS; ep++) {
+		if (!txfsz[ep])
+			continue;
+		val = addr;
+		val |= txfsz[ep] << FIFOSIZE_DEPTH_SHIFT;
+		WARN_ONCE(addr + txfsz[ep] > fifo_size,
+			  "insufficient fifo memory");
+		addr += txfsz[ep];
+
+		dwc2_writel(dwc2, val, DPTXFSIZN(ep));
+		val = dwc2_readl(dwc2, DPTXFSIZN(ep));
 	}
 
 	dwc2_writel(dwc2, dwc2->hw_params.total_fifo_size |
-- 
2.39.2



