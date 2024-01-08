Delivery-date: Mon, 08 Jan 2024 11:15:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rMmfV-008gsD-0E
	for lore@lore.pengutronix.de;
	Mon, 08 Jan 2024 11:15:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rMmfU-0003Nf-Dp
	for lore@pengutronix.de; Mon, 08 Jan 2024 11:15:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=a3IidmiMg9WxaVeVbGTbxRp0XpjWes+7g+Wkm0YFPVI=; b=c84xqLHFe4IJrrKEyG67LJWm5q
	KUHQ3egGZGO4UtwEqcCL00Rsc44c0x+YESBMgJaAMFDnqwcmSZfZiHDj45a3kw7jJWqH8jkurAnRn
	qeEIcEv+5nSPtQA1NZ9OBlYUMEaq8nP1DCoCVCCl+vnUTJujMGzmCbzD0Num91qeBe9PGVlt1IZbO
	06HjYqH4yeza9CG3fbCMtAxjOjYByezlpXDVKtohTDKQJpSLR9yhCA3eRdoc9FX6TNAc7AChpQmKB
	LRshAzgZEeB5dTuQU7yO7sHO1vnNcNOiW+1lQSZ5AD8YXxZB9K9nrm4D+a/Ab7fPo0BX5Q3meFLvV
	fwLJmCZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rMmeI-004Znw-2x;
	Mon, 08 Jan 2024 10:14:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rMmeF-004ZnB-0m
	for barebox@lists.infradead.org;
	Mon, 08 Jan 2024 10:14:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rMmeD-00033x-97; Mon, 08 Jan 2024 11:14:21 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rMmeC-001Dvi-S3; Mon, 08 Jan 2024 11:14:20 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rMmeC-005Pp1-2X;
	Mon, 08 Jan 2024 11:14:20 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  8 Jan 2024 11:14:19 +0100
Message-Id: <20240108101419.1290778-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240108101419.1290778-1-a.fatoum@pengutronix.de>
References: <20240108101419.1290778-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240108_021423_313723_7843C290 
X-CRM114-Status: GOOD (  12.81  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master 2/2] net: fsl-fman: fix CONFIG_DMA_API_DEBUG warnings
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The first time a buffer is provided to a device, it needs to be mapped
with dma_map_single, before dma_sync_single_for_* may be called.

>From a cache coherence point of view, dma_map_single and
dma_sync_single_for_device have the same effect, but the former
is necessary, so DMA API debugging can catch issues.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/fsl-fman.c | 21 +++++++++++----------
 1 file changed, 11 insertions(+), 10 deletions(-)

diff --git a/drivers/net/fsl-fman.c b/drivers/net/fsl-fman.c
index baafe027c079..12cb240a37c0 100644
--- a/drivers/net/fsl-fman.c
+++ b/drivers/net/fsl-fman.c
@@ -583,7 +583,6 @@ static int fm_eth_rx_port_parameter_init(struct fm_eth *fm_eth)
 	void *rx_bd_ring_base;
 	void *rx_buf_pool;
 	u32 bd_ring_base_lo, bd_ring_base_hi;
-	u32 buf_lo, buf_hi;
 	struct fm_port_bd *rxbd;
 	struct fm_port_qd *rxqd;
 	struct fm_bmi_rx_port *bmi_rx_port = fm_eth->rx_port;
@@ -631,19 +630,21 @@ static int fm_eth_rx_port_parameter_init(struct fm_eth *fm_eth)
 
 	/* init Rx BDs ring */
 	for (i = 0; i < RX_BD_RING_SIZE; i++) {
+		dma_addr_t dma;
+
 		rxbd = &fm_eth->rx_bd_ring[i];
 
 		muram_writew(&rxbd->status, RxBD_EMPTY);
 		muram_writew(&rxbd->len, 0);
-		buf_hi = upper_32_bits(virt_to_phys(rx_buf_pool +
-					i * MAX_RXBUF_LEN));
-		buf_lo = lower_32_bits(virt_to_phys(rx_buf_pool +
-					i * MAX_RXBUF_LEN));
-		dma_sync_single_for_device(fm_eth->dev,
-					   (unsigned long)rx_buf_pool + i * MAX_RXBUF_LEN,
-					   MAX_RXBUF_LEN, DMA_FROM_DEVICE);
-		muram_writew(&rxbd->buf_ptr_hi, (u16)buf_hi);
-		out_be32(&rxbd->buf_ptr_lo, buf_lo);
+
+		dma = dma_map_single(fm_eth->dev,
+				     rx_buf_pool + i * MAX_RXBUF_LEN,
+				     MAX_RXBUF_LEN, DMA_FROM_DEVICE);
+		if (dma_mapping_error(fm_eth->dev, dma))
+			return -EFAULT;
+
+		muram_writew(&rxbd->buf_ptr_hi, (u16)upper_32_bits(dma));
+		out_be32(&rxbd->buf_ptr_lo, lower_32_bits(dma));
 	}
 
 	/* set the Rx queue descriptor */
-- 
2.39.2



