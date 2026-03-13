Delivery-date: Fri, 13 Mar 2026 14:34:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12ed-000DNu-1o
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 14:34:15 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12eK-0008Ub-Lf
	for lore@pengutronix.de; Fri, 13 Mar 2026 14:34:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NX624ik//O42jmtE4YB5snNT8FKMqbpOfCQ4fnO47yk=; b=yIP0xRatAksZMJRjvh8rRASmTy
	BhQq93EHxwyCm094dNWWxyxFNExDGx5hG3HXjU9bb76jmZJxTtnOFA7rXt+iceYwIwY2CnULQ7TML
	TqOH/pfLycVQwCSDJJQfm+/P5+A9x0qPLCyLVk49nInRCqsTMYOyiwiGLUPX9ubzYg+tupFANp/dm
	sIpWSmWrGI44dMKMZ6HkSyvcHCaQ5EX+es2l3KjVotzNNWK5IRxhQ2P8EmEJKeTFk8YPO+zne+8KW
	nrukoveoZxtu0ZYOjQi0B4UCDN6Lo9CyCAbNn/EX9/k0mormEk6lUx6p0cbM0wHkM4EibNvyirSpZ
	7fnFPFSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12d8-00000000FXq-097l;
	Fri, 13 Mar 2026 13:32:42 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12d5-00000000FVZ-1SxG
	for barebox@bombadil.infradead.org;
	Fri, 13 Mar 2026 13:32:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=NX624ik//O42jmtE4YB5snNT8FKMqbpOfCQ4fnO47yk=; b=V3cLzm0yMlFIH5YVNcCzBwLS22
	EafXYGZO+FYvjS5/n59ULErPSPlU187BXFLcUTMoLCAeCkQ0M9m/lXDLpVL65yA1TQ6+lRHVl0cNX
	32R8wNyquGRcHOsPJ9+OW36Fh9t4gPD+R3sgFr9jFJe2rn0fg5lpmJ0Nil/EfATg5PqdufCzJpSCr
	vsDtr0pf/SqA7NyxZqndiPZlFi6I6KNJA7hlQZT3ScnF7RkkjO8X7pX6P8TkM/P/7Hzi9xah0p8Tp
	20SkpUeWkWr4ZWZkspYdAywA81ghsqIU2UCa4g8AtdkyUgvXImFM7dA1h24caoAW68DOF6HjAgL5d
	eyG+F6rg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12cz-00000003OSk-0Ve5
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 13:32:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12cy-0006pL-OW; Fri, 13 Mar 2026 14:32:32 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12cy-0005TE-1g;
	Fri, 13 Mar 2026 14:32:32 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12XM-00000009ULB-32sJ;
	Fri, 13 Mar 2026 14:26:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 13 Mar 2026 14:25:39 +0100
Message-ID: <20260313132631.2257573-56-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
References: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_133234_061419_94A7F870 
X-CRM114-Status: GOOD (  13.28  )
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
X-SA-Exim-Connect-IP: 198.137.202.133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,RCVD_IN_VALIDITY_RPBL_BLOCKED,
	RCVD_IN_VALIDITY_SAFE_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=no
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 55/58] net: r8169: drain RX descriptor ring
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Sascha Hauer <s.hauer@pengutronix.de>

When not busy waiting for incoming packets we poll for new packets only
every 10ms. Each time only a single frame is fetched from the hardware.
On a network with many broadcast traffic there might be more than
100 packets/s incoming, which will sooner or later fill up our RX descriptor
ring. Unfortunately the Realtek Hardware has no way to gracefully handle
a RX queue overflow. Fix this by fetching multiple packets from the
hardware in each receive callback.

(cherry picked from commit ba8dab21987b75add872d7c0d4ca668c82f39e64)

Link: https://lore.barebox.org/20260302172630.2713540-1-s.hauer@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/r8169_main.c | 39 ++++++++++++++++++++-------------------
 1 file changed, 20 insertions(+), 19 deletions(-)

diff --git a/drivers/net/r8169_main.c b/drivers/net/r8169_main.c
index b74cc43ab064..bc2040a0173f 100644
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



