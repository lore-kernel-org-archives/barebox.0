Delivery-date: Wed, 24 Apr 2024 09:09:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzWkj-00ER5j-33
	for lore@lore.pengutronix.de;
	Wed, 24 Apr 2024 09:09:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzWke-0006P3-Gp
	for lore@pengutronix.de; Wed, 24 Apr 2024 09:09:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1SCW6tIg36BXRaCQGoAhMjzDi+qrHUVd6nU5oSXkbMY=; b=Yzjq/iMS+BwusPrPDYYGoyywCf
	uiwpHQVGQ5mjq2Y5if8rJ/ZS002pFTD8xEaMmqGKjcjp4HV1ogk6B+gIl1RyRlSAMOFSfmA/SAoP8
	fm2QcNpFCIUshh47hwrEyY1wH/zZ3cT+XKChD4NAruAvSebxp5ZvnhuudSXWOm/JW/R2UZkLix85g
	ERQLx1OXXyTaS554S04Bc3vCTpBLAEmphJgx735s5iBr8cqBAeHpqVaxMJlv58mf7IJwrGsH0Z6/T
	0Llheovx8yVl6kzbMJ5Z6i/RSeTBBk43hTtw0Tsl2OjBbrKBL+GOuFulZiF7y8gsFxC90iq7kj5ch
	9oDGKHMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzWk4-00000003209-07e4;
	Wed, 24 Apr 2024 07:08:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzWjw-000000031t4-4910
	for barebox@lists.infradead.org;
	Wed, 24 Apr 2024 07:08:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rzWjv-0005c5-JY; Wed, 24 Apr 2024 09:08:23 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rzWjv-00E24S-5o; Wed, 24 Apr 2024 09:08:23 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rzWJT-00F8kt-34;
	Wed, 24 Apr 2024 08:41:03 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 24 Apr 2024 08:40:57 +0200
Message-Id: <20240424064058.3608016-23-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240424064058.3608016-1-a.fatoum@pengutronix.de>
References: <20240424064058.3608016-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240424_000825_185394_35111B05 
X-CRM114-Status: GOOD (  11.81  )
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
Subject: [PATCH master 22/23] net: bcmgenet: map DMA buffers with dma_map_single
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We need to map DMA buffers first before handing them off to HW,
otherwise dirty cache lines may get evicted in the time window
between HW conducting DMA to rx_buffer and dma_sync_single_for_cpu
invalidating the CPU cache leading to corrupted packets.

This was detected by CONFIG_DMA_API_DEBUG, but needed adding a manual
!dev check into debug_dma_sync_single_for_cpu/device to silence the
not-yet fixed reports about the Rpi mailbox driver.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 drivers/net/bcmgenet.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/net/bcmgenet.c b/drivers/net/bcmgenet.c
index 9e0bacb31adf..acbb973a92f2 100644
--- a/drivers/net/bcmgenet.c
+++ b/drivers/net/bcmgenet.c
@@ -356,12 +356,13 @@ static void rx_descs_init(struct bcmgenet_eth_priv *priv)
 	len_stat = (RX_BUF_LENGTH << DMA_BUFLENGTH_SHIFT) | DMA_OWN;
 
 	for (i = 0; i < RX_DESCS; i++) {
-		writel(lower_32_bits((uintptr_t)&rxbuffs[i * RX_BUF_LENGTH]),
-		       desc_base + i * DMA_DESC_SIZE + DMA_DESC_ADDRESS_LO);
-		writel(upper_32_bits((uintptr_t)&rxbuffs[i * RX_BUF_LENGTH]),
-		       desc_base + i * DMA_DESC_SIZE + DMA_DESC_ADDRESS_HI);
-		writel(len_stat,
-		       desc_base + i * DMA_DESC_SIZE + DMA_DESC_LENGTH_STATUS);
+		dma_addr_t dma_addr = dma_map_single(priv->dev, &rxbuffs[i * RX_BUF_LENGTH],
+			   RX_BUF_LENGTH, DMA_FROM_DEVICE);
+		void *desc = desc_base + i * DMA_DESC_SIZE;
+
+		writel(lower_32_bits(dma_addr), desc + DMA_DESC_ADDRESS_LO);
+		writel(upper_32_bits(dma_addr), desc + DMA_DESC_ADDRESS_HI);
+		writel(len_stat, desc + DMA_DESC_LENGTH_STATUS);
 	}
 }
 
-- 
2.39.2



