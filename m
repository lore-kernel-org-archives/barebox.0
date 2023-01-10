Delivery-date: Tue, 10 Jan 2023 19:03:01 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFIxi-0082Wq-FJ
	for lore@lore.pengutronix.de; Tue, 10 Jan 2023 19:03:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFIxg-0001uw-NU
	for lore@pengutronix.de; Tue, 10 Jan 2023 19:03:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=siNVjAfook6sg7o5Ios9u0AJOTCGDEoAm+MKvhJE9Ck=; b=yOnAQTNEMhvQhjULtZn19cf4PK
	IcpFF2lBGPIdsjamQ/vHH+KQ4vsTFC8qeLaiK7J/pHhqashEoYuTgdHocTyuDoGzkcvTQKwEZpKDP
	tS1YbcoCv+/JX2Z5gxbeFeBUUDUy3m8n6djUYBrVPeHmE9NTg7wVfBWsbOneaXl5lt1Y+vSpsW2jT
	1cn1Fz3g79o72auXB11fxJgOEf4VHxrdRzaAh5SX857Q7gzNkxHJeydB60OEh2pD4ZewsrKvqXmXh
	u2xV4jl185iPdkQKqssR8OBPTjLbFN8UFsasUMFZNADttxlKbyy54TrYTAB38Tzj7XJpGBuaoOfIX
	2+34bQog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFIwN-0085Jt-06; Tue, 10 Jan 2023 18:01:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFIwH-0085II-GR
	for barebox@lists.infradead.org; Tue, 10 Jan 2023 18:01:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pFIwF-0001ma-Ij; Tue, 10 Jan 2023 19:01:31 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFIwE-0058Ml-Tv; Tue, 10 Jan 2023 19:01:30 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFIwE-000JdY-1l; Tue, 10 Jan 2023 19:01:30 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 10 Jan 2023 19:01:25 +0100
Message-Id: <20230110180126.73739-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_100133_585859_BA62EAFB 
X-CRM114-Status: GOOD (  11.12  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] net: bcmgenet: fix warning when building for 32-bit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The driver readily works in 32-bit mode as it takes care there
to write zero to the DMA_DESC_ADDRESS_HI field of descriptors.
In the receive path, a 32-bit integer is shifted by 32 though
leading to a (harmless) warning. Adjust the type to silence it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/bcmgenet.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/bcmgenet.c b/drivers/net/bcmgenet.c
index 32ec36eff65a..3ae341a658a0 100644
--- a/drivers/net/bcmgenet.c
+++ b/drivers/net/bcmgenet.c
@@ -314,8 +314,8 @@ static int bcmgenet_gmac_eth_recv(struct eth_device *edev)
 	struct bcmgenet_eth_priv *priv = edev->priv;
 	void *desc_base = priv->mac_reg + GENET_RX_OFF + priv->rx_index * DMA_DESC_SIZE;
 	u32 prod_index = readl(priv->mac_reg + RDMA_PROD_INDEX);
-	u32 length;
-	unsigned long addr_lo, addr_hi, addr;
+	u32 length, addr_lo, addr_hi;
+	dma_addr_t addr;
 
 	if (prod_index == priv->c_index)
 		return -EAGAIN;
@@ -324,7 +324,7 @@ static int bcmgenet_gmac_eth_recv(struct eth_device *edev)
 	length = (length >> DMA_BUFLENGTH_SHIFT) & DMA_BUFLENGTH_MASK;
 	addr_lo = readl(desc_base + DMA_DESC_ADDRESS_LO);
 	addr_hi = readl(desc_base + DMA_DESC_ADDRESS_HI);
-	addr = addr_hi << 32 | addr_lo;
+	addr = (u64)addr_hi << 32 | addr_lo;
 
 	dma_sync_single_for_cpu(addr, length, DMA_FROM_DEVICE);
 
-- 
2.30.2



