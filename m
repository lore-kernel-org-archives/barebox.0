Delivery-date: Fri, 14 Apr 2023 16:54:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pnKok-003Ob6-VP
	for lore@lore.pengutronix.de; Fri, 14 Apr 2023 16:54:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pnKok-0002AZ-SR
	for lore@pengutronix.de; Fri, 14 Apr 2023 16:54:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RvZK4Lq+QNTbxjG6kNYSUZCoru+8rtUIiTQiZfftCJY=; b=KSBE1AABKpqbEKlEbUUEAmFYH4
	d+duuE90fnDIGkppTI92JjgIZLV2AzQwEUKeFiOfJK6kp6++Y/dq44XxZ9ZomGX9sH+cW73Sf/Qpo
	T+cA5RCwaGp5VL+UGUzWE2YBEdV1Zdj+oJIwhG6lIebAT4zGE96/1CIy8Ii1PYALlsVwgwbKPo7iY
	jhuSC4uy5Rv0INWoc/DCqojgHDFPUbBqkqyHsWBgqVyZ9/iOjuV/O1dQutIDLL2NRCXdza6d85yxQ
	8m8GKSoqUgYIxxH6+yxun6wYOO7Otw61Vfxtl6eNIkssSgPVu7Gchx2yqyY+H8YP1WcKyUAdGxAtX
	pn7ox7xQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pnKnW-009sT2-1k;
	Fri, 14 Apr 2023 14:53:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pnKnS-009sQx-1L
	for barebox@lists.infradead.org;
	Fri, 14 Apr 2023 14:53:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pnKnQ-0001rC-V0; Fri, 14 Apr 2023 16:53:04 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pnKnQ-00BDou-9W; Fri, 14 Apr 2023 16:53:04 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pnKnO-00FM0J-T1; Fri, 14 Apr 2023 16:53:02 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 14 Apr 2023 16:52:59 +0200
Message-Id: <20230414145259.3644816-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230414145259.3644816-1-a.fatoum@pengutronix.de>
References: <20230414145259.3644816-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230414_075306_557197_E7C7C488 
X-CRM114-Status: GOOD (  13.77  )
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
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 5/5] net: designware: eqos: pass physical device to DMA API
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The Ethernet interface device is just a child of the physical device with
no DT node assigned. As such, it lacks all DMA settings that may be
set in the DT. Fix this by using the hardware device instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/designware_eqos.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/net/designware_eqos.c b/drivers/net/designware_eqos.c
index ee5a10a007e9..2e2a1cf8bff3 100644
--- a/drivers/net/designware_eqos.c
+++ b/drivers/net/designware_eqos.c
@@ -687,7 +687,6 @@ static void eqos_stop(struct eth_device *edev)
 static int eqos_send(struct eth_device *edev, void *packet, int length)
 {
 	struct eqos *eqos = edev->priv;
-	struct device *dev = &eqos->netdev.dev;
 	struct eqos_desc *tx_desc;
 	dma_addr_t dma;
 	u32 des3;
@@ -697,8 +696,8 @@ static int eqos_send(struct eth_device *edev, void *packet, int length)
 	eqos->tx_currdescnum++;
 	eqos->tx_currdescnum %= EQOS_DESCRIPTORS_TX;
 
-	dma = dma_map_single(dev, packet, length, DMA_TO_DEVICE);
-	if (dma_mapping_error(dev, dma))
+	dma = dma_map_single(edev->parent, packet, length, DMA_TO_DEVICE);
+	if (dma_mapping_error(edev->parent, dma))
 		return -EFAULT;
 
 	tx_desc->des0 = (unsigned long)dma;
@@ -717,7 +716,7 @@ static int eqos_send(struct eth_device *edev, void *packet, int length)
 				  !(des3 & EQOS_DESC3_OWN),
 				  100 * USEC_PER_MSEC);
 
-	dma_unmap_single(dev, dma, length, DMA_TO_DEVICE);
+	dma_unmap_single(edev->parent, dma, length, DMA_TO_DEVICE);
 
 	if (ret == -ETIMEDOUT)
 		eqos_dbg(eqos, "TX timeout\n");
@@ -764,7 +763,7 @@ static int eqos_recv(struct eth_device *edev)
 
 static int eqos_init_resources(struct eqos *eqos)
 {
-	struct device *dev = eqos->netdev.parent;
+	struct eth_device *edev = &eqos->netdev;
 	int ret = -ENOMEM;
 	void *descs;
 	void *p;
@@ -785,8 +784,8 @@ static int eqos_init_resources(struct eqos *eqos)
 		struct eqos_desc *rx_desc = &eqos->rx_descs[i];
 		dma_addr_t dma;
 
-		dma = dma_map_single(dev, p, EQOS_MAX_PACKET_SIZE, DMA_FROM_DEVICE);
-		if (dma_mapping_error(dev, dma)) {
+		dma = dma_map_single(edev->parent, p, EQOS_MAX_PACKET_SIZE, DMA_FROM_DEVICE);
+		if (dma_mapping_error(edev->parent, dma)) {
 			ret = -EFAULT;
 			goto err_free_rx_bufs;
 		}
-- 
2.39.2



