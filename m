Delivery-date: Mon, 02 Mar 2026 18:27:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vx72u-007MFw-2x
	for lore@lore.pengutronix.de;
	Mon, 02 Mar 2026 18:27:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vx72v-0005w5-6v
	for lore@pengutronix.de; Mon, 02 Mar 2026 18:27:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=RT9LMp1b5MCKpA4gxhl301aIdlBN/py3eIjKvrNQ3Fc=; b=LcnukQoEe75UN8uAK0d6n6Vfzv
	GjHZdtOt5KiwosrJRDuJrtZTSV3kz7stYdaDKqJ4BkXYzHvOxF/1eKYZPBa+aywHnzudaKYnt9LFK
	xp0EWlZAmYmpGm6Txbhgb1E0zXacKORIB0gz/SDR5pSu7LsXxKuZ+9v8ghVVvwZjwSizTAZMIevkA
	YDj+8bUOGy9zhi1DkDH+HcZwDXxvL4yEManyb6VQBADCNHgtCe/RKAR+ZzHAEDw7zv/28ipo7pezB
	jzok9LOG4AS7Fi9efXJ/MvrNeWBRPaou+/YyGIQjLwUp30KjztkAp5j71OKDKLRlSOyqtwo+m5v5K
	51vOP37w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vx72S-0000000DaZ8-3gZp;
	Mon, 02 Mar 2026 17:26:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vx72Q-0000000DaYc-43bV
	for barebox@lists.infradead.org;
	Mon, 02 Mar 2026 17:26:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vx72N-0005qe-G3; Mon, 02 Mar 2026 18:26:31 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vx72L-003Psq-36;
	Mon, 02 Mar 2026 18:26:31 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vx72N-0000000BNxL-0oqk;
	Mon, 02 Mar 2026 18:26:31 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon,  2 Mar 2026 18:26:30 +0100
Message-ID: <20260302172630.2713540-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260302_092635_003755_87C5116F 
X-CRM114-Status: GOOD (  13.47  )
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
Subject: [PATCH] net: r8169: drain RX descriptor ring
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When not busy waiting for incoming packets we poll for new packets only
every 10ms. Each time only a single frame is fetched from the hardware.
On a network with many broadcast traffic there might be more than
100 packets/s incoming, which will sooner or later fill up our RX descriptor
ring. Unfortunately the Realtek Hardware has no way to gracefully handle
a RX queue overflow. Fix this by fetching multiple packets from the
hardware in each receive callback.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/r8169_main.c | 39 ++++++++++++++++++++-------------------
 1 file changed, 20 insertions(+), 19 deletions(-)

diff --git a/drivers/net/r8169_main.c b/drivers/net/r8169_main.c
index b74cc43ab0..bc2040a017 100644
--- a/drivers/net/r8169_main.c
+++ b/drivers/net/r8169_main.c
@@ -3013,14 +3013,19 @@ static void rtl8169_eth_rx(struct eth_device *edev)
 {
 	struct rtl8169_private *tp = edev->priv;
 	struct device *dev = &tp->pci_dev->dev;
-	unsigned int entry, pkt_size = 0;
-	u8 status;
+	unsigned int entry, pkt_size;
+	u32 opts;
+	int budget = NUM_RX_DESC;
 
-	entry = tp->cur_rx % NUM_RX_DESC;
+	while (budget-- > 0) {
+		entry = tp->cur_rx % NUM_RX_DESC;
+		opts = le32_to_cpu(tp->RxDescArray[entry].opts1);
 
-	if ((le32_to_cpu(tp->RxDescArray[entry].opts1) & DescOwn) == 0) {
-		if (!(le32_to_cpu(tp->RxDescArray[entry].opts1) & RxRES)) {
-			pkt_size = (le32_to_cpu(tp->RxDescArray[entry].opts1) & 0x1fff) - 4;
+		if (opts & DescOwn)
+			break;
+
+		if (!(opts & RxRES)) {
+			pkt_size = (opts & 0x1fff) - 4;
 
 			dma_sync_single_for_cpu(dev, tp->rx_buf_phys + entry * PKT_BUF_SIZE,
 						pkt_size, DMA_FROM_DEVICE);
@@ -3030,24 +3035,20 @@ static void rtl8169_eth_rx(struct eth_device *edev)
 
 			dma_sync_single_for_device(dev, tp->rx_buf_phys + entry * PKT_BUF_SIZE,
 						   pkt_size, DMA_FROM_DEVICE);
-
-			if (entry == NUM_RX_DESC - 1)
-				tp->RxDescArray[entry].opts1 = cpu_to_le32(DescOwn |
-					RingEnd | PKT_BUF_SIZE);
-			else
-				tp->RxDescArray[entry].opts1 =
-					cpu_to_le32(DescOwn | PKT_BUF_SIZE);
-			tp->RxDescArray[entry].addr = cpu_to_le64(tp->rx_buf_phys +
-					    entry * PKT_BUF_SIZE);
 		} else {
 			dev_err(&edev->dev, "rx error\n");
 		}
 
+		if (entry == NUM_RX_DESC - 1)
+			tp->RxDescArray[entry].opts1 = cpu_to_le32(DescOwn |
+				RingEnd | PKT_BUF_SIZE);
+		else
+			tp->RxDescArray[entry].opts1 =
+				cpu_to_le32(DescOwn | PKT_BUF_SIZE);
+		tp->RxDescArray[entry].addr = cpu_to_le64(tp->rx_buf_phys +
+				    entry * PKT_BUF_SIZE);
+
 		tp->cur_rx++;
-	} else {
-		status = RTL_R8(tp, IntrStatus);
-		RTL_W8(tp, IntrStatus, status & ~(TxErr | RxErr | SYSErr));
-		udelay(100);	/* wait */
 	}
 }
 
-- 
2.47.3



