Delivery-date: Thu, 04 Jan 2024 13:20:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rLMhy-003W9T-07
	for lore@lore.pengutronix.de;
	Thu, 04 Jan 2024 13:20:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rLMhw-0007jO-Tq
	for lore@pengutronix.de; Thu, 04 Jan 2024 13:20:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=E0VmGSRXfRgkTKv8oJS9JKgzXVFgrdWBlnaDoQfBpRA=; b=YTJrfvBfJLj3nphtC6OL+kI/JL
	9JKC0JL1nzklcVMBj3GY3Q9/ceK902KNwbfgtafljh7XxLPpcgXlXHdKb5QFp8csi42hqgLlxDhv9
	kZnVBs2WSyaca6VOCvuFZDSFnFadxlB9GC33703xv/iIct2Lsiyp4dFNaUqbCBT64cP2D0uXsYqBi
	tPoZH/ysZWijVz4KTCY96G7Trx2gPDJItgTtFyGDvV6l6KA/M+lXsocfTH4LIDEm2g6KYWLxSjNgu
	IKP7sPlHc0ymmWfSDnWgpgtCgqmdyhQJBwEOQdHflo1DIYwp1rnP6YGhZgRoV4bul12ZNHA2EmOOy
	nhOqZhOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLMgj-00DwoU-19;
	Thu, 04 Jan 2024 12:19:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLMgg-00Dwny-0z
	for barebox@lists.infradead.org;
	Thu, 04 Jan 2024 12:19:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rLMgc-0007Qc-KS; Thu, 04 Jan 2024 13:18:58 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rLMga-000LKH-HN; Thu, 04 Jan 2024 13:18:56 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rLMga-00AD7r-Ez; Thu, 04 Jan 2024 13:18:56 +0100
Date: Thu, 4 Jan 2024 13:18:56 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <20240104121856.GT1318922@pengutronix.de>
References: <20240104112241.989839-1-s.hauer@pengutronix.de>
 <20240104112241.989839-2-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240104112241.989839-2-s.hauer@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240104_041902_367959_C2D4DCDE 
X-CRM114-Status: GOOD (  25.10  )
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
X-Spam-Status: No, score=-6.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 2/2] net: Add fsl_enetc network driver support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Jan 04, 2024 at 12:22:41PM +0100, Sascha Hauer wrote:
> This adds support for the fsl_enetc network controller found on several
> Layerscape SoCs. The code is originally from U-Boot-2023.10-rc1.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
> 
> Notes:
>     Changes since v1:
>     
>     - Use get_unaligned to access unaligned pointers
>     - use physical address returned by dma_alloc_coherent()
>     - implement struct pci_driver::remove hook
>     - do not printf in poller function
>     - use write[lwq] to access rx/tx rings to avoid dmb()

Actually this last part is missing, here it is:

---------------------------------8<---------------------------

>From 3b312b7d501be3b0049de27582a26b19fdaf84e1 Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 3 Jan 2024 20:55:39 +0100
Subject: [PATCH] fixup! net: Add fsl_enetc network driver support

---
 drivers/net/fsl_enetc.c | 19 +++++++------------
 1 file changed, 7 insertions(+), 12 deletions(-)

diff --git a/drivers/net/fsl_enetc.c b/drivers/net/fsl_enetc.c
index eb90c526bb..07e9a6b7c8 100644
--- a/drivers/net/fsl_enetc.c
+++ b/drivers/net/fsl_enetc.c
@@ -454,13 +454,10 @@ static int enetc_send(struct eth_device *edev, void *packet, int length)
 	dma = dma_map_single(priv->dev, packet, length, DMA_TO_DEVICE);
 
 	/* prepare Tx BD */
-	memset(&priv->enetc_txbd[pi], 0x0, sizeof(struct enetc_tx_bd));
-	priv->enetc_txbd[pi].addr = cpu_to_le64(dma);
-	priv->enetc_txbd[pi].buf_len = cpu_to_le16(length);
-	priv->enetc_txbd[pi].frm_len = cpu_to_le16(length);
-	priv->enetc_txbd[pi].flags = cpu_to_le16(ENETC_TXBD_FLAGS_F);
-
-	dmb();
+	writeq(cpu_to_le64(dma), &priv->enetc_txbd[pi].addr);
+	writew(cpu_to_le16(length), &priv->enetc_txbd[pi].buf_len);
+	writew(cpu_to_le16(length), &priv->enetc_txbd[pi].frm_len);
+	writew(cpu_to_le16(ENETC_TXBD_FLAGS_F), &priv->enetc_txbd[pi].flags);
 
 	/* send frame: increment producer index */
 	pi = (pi + 1) % txr->bd_count;
@@ -508,9 +505,7 @@ static int enetc_recv(struct eth_device *edev)
 	if (!ENETC_RXBD_STATUS_R(status))
 		return 0;
 
-	dmb();
-
-	len = le16_to_cpu(priv->enetc_rxbd[pi].r.buf_len);
+	len = le16_to_cpu(readw(&priv->enetc_rxbd[pi].r.buf_len));
 
 	dev_dbg(&edev->dev, "RxBD[%d]: len=%d err=%d pkt=0x%p\n", pi, len,
 		  ENETC_RXBD_STATUS_ERRORS(status), pkg);
@@ -520,8 +515,8 @@ static int enetc_recv(struct eth_device *edev)
 	dma_sync_single_for_device(priv->dev, priv->rx_pkg_phys[pi], PKTSIZE, DMA_FROM_DEVICE);
 
 	/* BD clean up and advance to next in ring */
-	memset(&priv->enetc_rxbd[pi], 0, sizeof(union enetc_rx_bd));
-	priv->enetc_rxbd[pi].w.addr = priv->rx_pkg_phys[pi];
+	memset_io(&priv->enetc_rxbd[pi], 0, sizeof(union enetc_rx_bd));
+	writeq(priv->rx_pkg_phys[pi], &priv->enetc_rxbd[pi].w.addr);
 	rxr->next_prod_idx = (pi + 1) % rxr->bd_count;
 	ci = (ci + 1) % rxr->bd_count;
 	rxr->next_cons_idx = ci;
-- 
2.39.2


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


