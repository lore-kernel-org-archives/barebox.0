Delivery-date: Tue, 21 Feb 2023 09:07:31 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pUNgR-00DefL-8C
	for lore@lore.pengutronix.de; Tue, 21 Feb 2023 09:07:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pUNgP-00076L-NR
	for lore@pengutronix.de; Tue, 21 Feb 2023 09:07:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wPDhlJNb5rIO/mGfb5roDEskRQs1KkP8PVNZF49Obvs=; b=nO1hVnNp86BPzudgXU504wwz6/
	g/egq+iWnGPswLpDqb3IU4OM/IA0ion99JJ6Nj/XrwqC/66MuDdps0hW8iJ4zvPTyObNRY/qUoF2X
	xH++KyrY2WHA+GevZYdopKDO5VIthKsyjBCeESMMAkfKhYDYPugyczlePOd7RAH0Z515MTRmhxu/1
	RV2/n9tz6MwCqqWRC+DSXMYzNaG9c5DG8TWeqpFvf/VODxAVzGCdM8bvvhZNvVX0/6n3LGks6NSVp
	U413s+xPHXxYd3TBkfIeAWvxj2s/MWqinE0scFvLYxfAdnOam93wGaC6YbDqILyvJbtMQayO5WD+r
	Iv1TbEug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUNfF-006ymA-EN; Tue, 21 Feb 2023 08:06:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUNeW-006yJD-5S
	for barebox@lists.infradead.org; Tue, 21 Feb 2023 08:05:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pUNeT-00063n-86; Tue, 21 Feb 2023 09:05:29 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pUNeR-006Rjh-DV; Tue, 21 Feb 2023 09:05:28 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pUNeP-002YHF-Pr; Tue, 21 Feb 2023 09:05:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: lst@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 21 Feb 2023 09:05:17 +0100
Message-Id: <20230221080524.607241-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230221080524.607241-1-a.fatoum@pengutronix.de>
References: <20230221080524.607241-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230221_000532_229344_DF6E9F78 
X-CRM114-Status: GOOD (  13.51  )
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
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH RFC 05/12] net: designware: eqos: pass physical device to DMA API
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
2.30.2



