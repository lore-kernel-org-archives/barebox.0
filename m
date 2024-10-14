Delivery-date: Mon, 14 Oct 2024 15:57:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0LZJ-004HXd-22
	for lore@lore.pengutronix.de;
	Mon, 14 Oct 2024 15:57:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0LZI-0006Sx-K2
	for lore@pengutronix.de; Mon, 14 Oct 2024 15:57:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XUiG6XyXGCEys0+cKuUaxX8PL0u0pK1czI+zYrzsEUA=; b=b1p82HMiVttYwEzVrCmnWH9ZHE
	WV5vp2HTj96Y/4lYQYR1rGHoF1uvMoRzwYbYyTg/6P75ApGsbd089JF96qt1WSJTDiKRUZnZ0dH1J
	3T+AIEfAKSRxkRGqpTfe0DbBjQhsC9Orbid7dFLnGH40l4t9K0Gd3yCA3DbB4uxNIVG9bmfl3v8k4
	4phL3GL+gu8NiaGLv+0IRYv+AkOZqJtOuPhWQvxVlTR0SMZZ7gmmFEAjHvLbxmz7H+mnxMpoxdQSg
	V/xVWxAiyv3JxEeTB0jYmjDc4CxDJuaH5LFqf9sUHsJ20IiFVqr8cU1xOevw09+FFbFCItwLgZUT1
	yQjYG33w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0LYg-00000005NOq-0VxB;
	Mon, 14 Oct 2024 13:56:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0Kes-00000005AcT-1eTO
	for barebox@lists.infradead.org;
	Mon, 14 Oct 2024 12:58:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0Ker-0007L9-3G; Mon, 14 Oct 2024 14:58:45 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0Keq-001nNd-MU; Mon, 14 Oct 2024 14:58:44 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0Keq-00A8vm-1w;
	Mon, 14 Oct 2024 14:58:44 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Denis Orlov <denorl2009@gmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Oct 2024 14:58:41 +0200
Message-Id: <20241014125843.2064532-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241014125843.2064532-1-a.fatoum@pengutronix.de>
References: <20241014125843.2064532-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_055846_472951_283C0436 
X-CRM114-Status: GOOD (  14.03  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/6] net: designware: don't use dma_mapping_error for non-streaming DMA
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Streaming DMA operates at already allocated memory and the mapping needs
to be checked for errors with dma_mapping_error().

Calling it on the DMA address resulting from dma_alloc_coherent is
wrong, because error is indicated by returning a NULL pointer as CPU
address; The DMA address may not be set at all in that case.

While fixing this I wondered why priv->[tr]x_mac_descrtable_dev appear
to be unused. That's not the case, because they are used indirectly via
a helper function defined in a header, so add a comment about this while
we are at it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/designware.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/net/designware.c b/drivers/net/designware.c
index 66f28b429dea..e7735a014cf4 100644
--- a/drivers/net/designware.c
+++ b/drivers/net/designware.c
@@ -480,18 +480,20 @@ struct dw_eth_dev *dwc_drv_probe(struct device *dev)
 	dwc_version(dev, readl(&priv->mac_regs_p->version));
 	priv->dma_regs_p = base + DW_DMA_BASE_OFFSET;
 
+	/* [tr]x_mac_descrtable_dev will be used by the [tr]x_dma_addr helpers */
+
 	priv->tx_mac_descrtable_cpu = dma_alloc_coherent(
 		CONFIG_TX_DESCR_NUM * sizeof(struct dmamacdescr),
 		&priv->tx_mac_descrtable_dev);
 
-	if (dma_mapping_error(dev, priv->tx_mac_descrtable_dev))
+	if (!priv->tx_mac_descrtable_cpu)
 		return ERR_PTR(-EFAULT);
 
 	priv->rx_mac_descrtable_cpu = dma_alloc_coherent(
 		CONFIG_RX_DESCR_NUM * sizeof(struct dmamacdescr),
 		&priv->rx_mac_descrtable_dev);
 
-	if (dma_mapping_error(dev, priv->rx_mac_descrtable_dev))
+	if (!priv->rx_mac_descrtable_cpu)
 		return ERR_PTR(-EFAULT);
 
 	priv->txbuffs = dma_alloc(TX_TOTAL_BUFSIZE);
-- 
2.39.5



