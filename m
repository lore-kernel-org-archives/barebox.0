Delivery-date: Mon, 19 Sep 2022 10:03:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oaBkM-009OEf-Iy
	for lore@lore.pengutronix.de; Mon, 19 Sep 2022 10:03:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oaBkK-0000Vy-Cr
	for lore@pengutronix.de; Mon, 19 Sep 2022 10:03:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=r/BmVq+m+A8M/xmyuo+lJAYSrieI/N7oFaDIAhWqfEo=; b=3DrzeetULvbtF7+RgHHsLG2eir
	RocITbknivmPYPOACNj8SUg7LkmPuebGzD5w8n4T39evnPPRJ6axeTiQ8XVPIM4lI3pXichF0sev1
	RU+gRvlMwaVp/7J6mlAutnLtLi3XPqkTzZuJvUty7gKDMGypmqYH2BUkY8/H3zELFjSxdJztY/nRZ
	H10Bjk1cVQaRz7op3OiD1Dcn6oKJCIO+Fvg1Ck5WIY3jmiIpO2w+dZlf83EmtdcPJB+aLcHdgDdrY
	GBq7ZOKRYUKluWtpqstyTlRkgTPsvnzDSdvMhCrUWCxpxNCA+NtxWD3j4FFOxzjudGPy2swegh9Qa
	14xuFAAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaBj5-009fq3-SI; Mon, 19 Sep 2022 08:01:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaBik-009fNz-3r
	for barebox@lists.infradead.org; Mon, 19 Sep 2022 08:01:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oaBii-0008Kx-3x; Mon, 19 Sep 2022 10:01:36 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oaBii-001cXL-PV; Mon, 19 Sep 2022 10:01:35 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oaBig-003gev-ED; Mon, 19 Sep 2022 10:01:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 19 Sep 2022 10:01:26 +0200
Message-Id: <20220919080133.877651-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220919080133.877651-1-s.hauer@pengutronix.de>
References: <20220919080133.877651-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220919_010138_265608_EA1808CE 
X-CRM114-Status: GOOD (  12.87  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/9] net: macb: Allocate own receive buffer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Use a driver private buffer as network receive buffer rather than the
globally allocated ones which will be removed soon.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/macb.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index 511846122a..5dbca1553e 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -64,6 +64,7 @@ struct macb_device {
 
 	void			*rx_buffer;
 	void			*tx_buffer;
+	void			*rx_packet_buf;
 	struct macb_dma_desc	*rx_ring;
 	struct macb_dma_desc	*tx_ring;
 	struct macb_dma_desc	*gem_q1_descs;
@@ -230,16 +231,15 @@ static int macb_recv(struct eth_device *edev)
 				taillen = length - headlen;
 				dma_sync_single_for_cpu((unsigned long)buffer,
 							headlen, DMA_FROM_DEVICE);
-				memcpy((void *)NetRxPackets[0], buffer, headlen);
+				memcpy(macb->rx_packet_buf, buffer, headlen);
 				dma_sync_single_for_cpu((unsigned long)macb->rx_buffer,
 							taillen, DMA_FROM_DEVICE);
-				memcpy((void *)NetRxPackets[0] + headlen,
-					macb->rx_buffer, taillen);
+				memcpy(macb->rx_packet_buf + headlen, macb->rx_buffer, taillen);
 				dma_sync_single_for_device((unsigned long)buffer,
 							headlen, DMA_FROM_DEVICE);
 				dma_sync_single_for_device((unsigned long)macb->rx_buffer,
 							taillen, DMA_FROM_DEVICE);
-				net_receive(edev, NetRxPackets[0], length);
+				net_receive(edev, macb->rx_packet_buf, length);
 			} else {
 				dma_sync_single_for_cpu((unsigned long)buffer, length,
 							DMA_FROM_DEVICE);
@@ -898,6 +898,8 @@ static int macb_probe(struct device_d *dev)
 		macb->gem_q1_descs = dma_alloc_coherent(GEM_Q1_DESC_BYTES,
 				DMA_ADDRESS_BROKEN);
 
+	macb->rx_packet_buf = xmalloc(PKTSIZE);
+
 	macb_reset_hw(macb);
 	ncfgr = macb_mdc_clk_div(macb);
 	ncfgr |= MACB_BIT(PAE);		/* PAuse Enable */
@@ -921,6 +923,8 @@ static void macb_remove(struct device_d *dev)
 	struct macb_device *macb = dev->priv;
 
 	macb_halt(&macb->netdev);
+
+	free(macb->rx_packet_buf);
 }
 
 static const struct macb_config fu540_c000_config = {
-- 
2.30.2



