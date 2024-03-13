Delivery-date: Wed, 13 Mar 2024 18:50:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkSke-004fv9-0P
	for lore@lore.pengutronix.de;
	Wed, 13 Mar 2024 18:50:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkSkd-0002Ne-EI
	for lore@pengutronix.de; Wed, 13 Mar 2024 18:50:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=iqrZmgxN80xIz/dJmdKAw3ztdtDzBP7Jq7C0OjERuFM=; b=zVDNWw13hPXIPvLdSv+DkLAnRb
	MS2MY3H48mOGlU2pThJx9sEdxI/Ixi+LTqvFGfO0qPRZvtUaPFqnx4I/+vaJBPt/Rys5espEc0ITB
	3lR6bDTlceQ9/xvktzKxR6kwmtSFtNv6RSuRwBY1NQ7JbvedW+zbTdLIQl43paSvB/f4f6pIlhc/N
	nPlnUEApueCszvq/eiG2PfzMNFbtlzy8izsVEqmRh4G98RC9ne6zNDLZwKZn4XSrLaHfZb4SUEKF/
	BBpZ6ZmwbiueA3UHL7EZJHl+HYn2frpwWxWNTzW2PsqqtKyFxBxpYCbMSQ2bjZTI4UNbLaji3K/su
	Ca1mZKeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkSjx-0000000B8Hj-3S3e;
	Wed, 13 Mar 2024 17:50:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkSjt-0000000B8Fx-3NRq
	for barebox@lists.infradead.org;
	Wed, 13 Mar 2024 17:50:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkSjr-0001aU-G2; Wed, 13 Mar 2024 18:50:03 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkSjr-0069sW-3V; Wed, 13 Mar 2024 18:50:03 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkSjq-00DQZ1-1d;
	Wed, 13 Mar 2024 18:50:03 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 13 Mar 2024 18:50:02 +0100
Message-Id: <20240313175002.3200363-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240313_105005_870174_8310CA68 
X-CRM114-Status: GOOD (  12.12  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] net: cpsw: map/unmap buffers used for DMA
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This doesn't fix any bugs, but it allows CONFIG_DMA_API_DEBUG to check
for any future issues that may be introduced.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/cpsw.c | 46 ++++++++++++++++++++++++++++------------------
 1 file changed, 28 insertions(+), 18 deletions(-)

diff --git a/drivers/net/cpsw.c b/drivers/net/cpsw.c
index 3f24c21594c1..31ca61a230e9 100644
--- a/drivers/net/cpsw.c
+++ b/drivers/net/cpsw.c
@@ -804,7 +804,8 @@ static void cpdma_desc_free(struct cpsw_priv *priv, struct cpdma_desc *desc)
 }
 
 static int cpdma_submit(struct cpsw_priv *priv, struct cpdma_chan *chan,
-			void *buffer, int len, int port)
+			void *sw_buffer, dma_addr_t hw_buffer,
+			int len, int port)
 {
 	struct cpdma_desc *desc, *prev;
 	u32 mode;
@@ -823,10 +824,10 @@ static int cpdma_submit(struct cpsw_priv *priv, struct cpdma_chan *chan,
 			(port << CPDMA_FROM_TO_PORT_SHIFT);
 
 	writel(0, &desc->hw_next);
-	writel((u32)buffer, &desc->hw_buffer);
+	writel(hw_buffer, &desc->hw_buffer);
 	writel(len, &desc->hw_len);
 	writel(mode | len, &desc->hw_mode);
-	writel((u32)buffer, &desc->sw_buffer);
+	writel((u32)sw_buffer, &desc->sw_buffer);
 	writel((u32)len, &desc->sw_len);
 
 	if (!chan->head) {
@@ -853,7 +854,7 @@ static int cpdma_submit(struct cpsw_priv *priv, struct cpdma_chan *chan,
 }
 
 static int cpdma_process(struct cpsw_slave *slave, struct cpdma_chan *chan,
-			 void **buffer, int *len)
+			 void **buffer, dma_addr_t *dma, int *len)
 {
 	struct cpdma_desc *desc = chan->head;
 	struct cpsw_priv *priv = slave->cpsw;
@@ -867,6 +868,8 @@ static int cpdma_process(struct cpsw_slave *slave, struct cpdma_chan *chan,
 	if (len)
 		*len = status & 0x7ff;
 
+	if (dma)
+		*dma = readl(&desc->hw_buffer);
 	if (buffer)
 		*buffer = (void *)readl(&desc->sw_buffer);
 
@@ -982,8 +985,15 @@ static int cpsw_setup(struct device *dev)
 
 	/* submit rx descs */
 	for (i = 0; i < PKTBUFSRX - 2; i++) {
-		ret = cpdma_submit(priv, &priv->rx_chan, priv->rx_buffer[i],
-				   PKTSIZE, 0);
+		void *buffer = priv->rx_buffer[i];
+		unsigned len = PKTSIZE;
+		dma_addr_t dma;
+
+		dma = dma_map_single(priv->dev, buffer, len, DMA_FROM_DEVICE);
+		if (dma_mapping_error(priv->dev, dma))
+			return -EFAULT;
+
+		ret = cpdma_submit(priv, &priv->rx_chan, buffer, dma, len, 0);
 		if (ret < 0) {
 			dev_err(dev, "error %d submitting rx desc\n", ret);
 			break;
@@ -1014,20 +1024,21 @@ static int cpsw_send(struct eth_device *edev, void *packet, int length)
 {
 	struct cpsw_slave *slave = edev->priv;
 	struct cpsw_priv *priv = slave->cpsw;
-	void *buffer;
-	int ret, len;
+	dma_addr_t dma;
+	int ret;
 
 	dev_dbg(&slave->dev, "* %s slave %d\n", __func__, slave->slave_num);
 
 	/* first reap completed packets */
-	while (cpdma_process(slave, &priv->tx_chan, &buffer, &len) >= 0);
+	while (cpdma_process(slave, &priv->tx_chan, NULL, NULL, NULL) >= 0)
+		;
 
 	dev_dbg(&slave->dev, "%s: %i bytes @ 0x%p\n", __func__, length, packet);
 
-	dma_sync_single_for_device(priv->dev, (unsigned long)packet, length, DMA_TO_DEVICE);
-	ret = cpdma_submit(priv, &priv->tx_chan, packet,
+	dma = dma_map_single(priv->dev, packet, length, DMA_TO_DEVICE);
+	ret = cpdma_submit(priv, &priv->tx_chan, packet, dma,
 			   length, BIT(slave->slave_num));
-	dma_sync_single_for_cpu(priv->dev, (unsigned long)packet, length, DMA_TO_DEVICE);
+	dma_unmap_single(priv->dev, dma, length, DMA_TO_DEVICE);
 
 	return ret;
 }
@@ -1036,16 +1047,15 @@ static int cpsw_recv(struct eth_device *edev)
 {
 	struct cpsw_slave *slave = edev->priv;
 	struct cpsw_priv *priv = slave->cpsw;
+	dma_addr_t dma;
 	void *buffer;
 	int len;
 
-	while (cpdma_process(slave, &priv->rx_chan, &buffer, &len) >= 0) {
-		dma_sync_single_for_cpu(priv->dev, (unsigned long)buffer, len,
-				DMA_FROM_DEVICE);
+	while (cpdma_process(slave, &priv->rx_chan, &buffer, &dma, &len) >= 0) {
+		dma_sync_single_for_cpu(priv->dev, dma, len, DMA_FROM_DEVICE);
 		net_receive(edev, buffer, len);
-		dma_sync_single_for_device(priv->dev, (unsigned long)buffer, len,
-				DMA_FROM_DEVICE);
-		cpdma_submit(priv, &priv->rx_chan, buffer, PKTSIZE, 0);
+		dma_sync_single_for_device(priv->dev, dma, len, DMA_FROM_DEVICE);
+		cpdma_submit(priv, &priv->rx_chan, buffer, dma, PKTSIZE, 0);
 	}
 
 	return 0;
-- 
2.39.2



