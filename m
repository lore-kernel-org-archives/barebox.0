Delivery-date: Mon, 17 Mar 2025 13:29:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tu9aX-000c1C-0i
	for lore@lore.pengutronix.de;
	Mon, 17 Mar 2025 13:29:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tu9aW-0008PE-3l
	for lore@pengutronix.de; Mon, 17 Mar 2025 13:29:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=bi/OXFZMCtgLSaP2Bc/MkjhawMt2pZm0tMJEFY0yIic=; b=KSuhKi3qm9FdFOqsOSzUdmkFnk
	vwwiCN2At/ecOWmYyGHbbttnLUSF0bmOro/B98i6qFIYQ5m7/sGIyGiU7PB3mgEM4pSBMtBv8PLkL
	uKNIZ4g915BWt8YBbiBdK+o92Mw1qpE734NV2jLTUnEYGbX7HZHr0fwcBLclERvGKKlJXr1McNGlk
	C2dgNh6eectNkwfMQlwesdMkiG/glGFX9HTEvHSMsCEdallVTBl6mgCIdfl6MKjkHShc/8XGfiQp0
	xftmMFfJii1U8B99UkC2nGJtyqPmP/+hBUTNY3BMmmCNhSLm5HGD3WTFD/6J3o8ExV2rhGedZGtqy
	hqE2eLdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tu9a7-00000002ZHC-2vU2;
	Mon, 17 Mar 2025 12:28:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tu9a5-00000002ZGp-2STg
	for barebox@lists.infradead.org;
	Mon, 17 Mar 2025 12:28:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tu9a4-0008HR-DM; Mon, 17 Mar 2025 13:28:32 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tu9a3-000FEN-2Z;
	Mon, 17 Mar 2025 13:28:32 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tu9a4-00DSTT-0L;
	Mon, 17 Mar 2025 13:28:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 17 Mar 2025 13:28:31 +0100
Message-Id: <20250317122831.3207605-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250317_052833_622628_DDAE81B3 
X-CRM114-Status: GOOD (  10.97  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] net: am65-cpsw-nuss: remove unused variables
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In struct am65_cpsw_common the fields rx_next and rx_pend are set but
not used. Remove them.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/am65-cpsw-nuss.c | 10 +---------
 1 file changed, 1 insertion(+), 9 deletions(-)

diff --git a/drivers/net/am65-cpsw-nuss.c b/drivers/net/am65-cpsw-nuss.c
index 6b9432e2d4..1b90669fec 100644
--- a/drivers/net/am65-cpsw-nuss.c
+++ b/drivers/net/am65-cpsw-nuss.c
@@ -118,8 +118,6 @@ struct am65_cpsw_common {
 
 	struct dma		*dma_tx;
 	struct dma		*dma_rx;
-	u32			rx_next;
-	u32			rx_pend;
 	int			started;
 };
 
@@ -285,8 +283,6 @@ static int am65_cpsw_common_start(struct am65_cpsw_common *common)
 		goto err_off_pwrdm;
 	}
 
-	common->rx_next = 0;
-	common->rx_pend = 0;
 	common->dma_tx = dma_get_by_name(common->dev, "tx0");
 	if (IS_ERR(common->dma_tx)) {
 		ret = PTR_ERR(common->dma_tx);
@@ -465,7 +461,7 @@ static void am65_cpsw_recv(struct eth_device *edev)
 	struct ti_udma_drv_packet_data packet_data;
 	dma_addr_t pkt;
 	int ret;
-	u32 num, port_id;
+	u32 port_id;
 
 	if (!common->started)
 		return;
@@ -499,15 +495,11 @@ static void am65_cpsw_recv(struct eth_device *edev)
 
 	net_receive(&port->edev, (void *)pkt, ret);
 out:
-	num = common->rx_next % UDMA_RX_DESC_NUM;
-
 	dma_sync_single_for_device(common->dev, pkt, ret, DMA_FROM_DEVICE);
 
 	ret = dma_prepare_rcv_buf(common->dma_rx, pkt, PKTSIZE);
 	if (ret)
 		dev_err(common->dev, "RX dma free_pkt failed %d\n", ret);
-
-	common->rx_next++;
 }
 
 static void am65_cpsw_common_stop(struct am65_cpsw_common *common)
-- 
2.39.5



