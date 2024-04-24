Delivery-date: Wed, 24 Apr 2024 09:09:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzWke-00ER3r-1K
	for lore@lore.pengutronix.de;
	Wed, 24 Apr 2024 09:09:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzWkc-0006N4-GX
	for lore@pengutronix.de; Wed, 24 Apr 2024 09:09:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=T2C9k4vEXiDp31rJPXGsJ0AoFJuDeKhY6gMj4IqDHYs=; b=Z8kSVnTRvwsIfuMOQW+UAH2JoS
	wRB501XAJg0VDGeKSn5OAF26pWE5MflDGgiuHzTiS85F/zy4bhAmMT6fwYz3GctPeM/AQXFB/XdST
	z4kTA0GtJde161cl2UrR0gz3lxfZnH/8agMAKznvFMfAUBukTzjw+6Ch3qAtxyqO/6YnLKYUwnRTD
	X9Aa9RSIm73s5PVPekWPnvVLg6g6eerEtwQ5TPY8D28Rlox9oo4lStpXZqLsORCHr88V30/W+df8g
	eo3tjKUA0e9r4KiYwzL4wt3sK62I8lUa6xE/BPYESATiET9G2+LlnkMcPvDs+LocX8c3yxzP4Y+NJ
	HOSzDqWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzWk5-0000000320m-3JTG;
	Wed, 24 Apr 2024 07:08:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzWjx-000000031t8-0kg9
	for barebox@lists.infradead.org;
	Wed, 24 Apr 2024 07:08:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rzWjv-0005ca-QS; Wed, 24 Apr 2024 09:08:23 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rzWjv-00E24e-DK; Wed, 24 Apr 2024 09:08:23 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rzWJT-00F8kt-1v;
	Wed, 24 Apr 2024 08:41:03 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 24 Apr 2024 08:40:49 +0200
Message-Id: <20240424064058.3608016-15-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240424064058.3608016-1-a.fatoum@pengutronix.de>
References: <20240424064058.3608016-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240424_000825_649263_E7E3EA3B 
X-CRM114-Status: GOOD (  11.21  )
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
Subject: [PATCH master 14/23] net: macb: use DMA-capable memory for receive buffer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The driver supports older MACB-compatible NICs as well as the newer
GEM-compatible NICs. Both use DMA, but the older MACB support failed to
allocate the single receive buffer with suitable alignment.

Use net_alloc_packet() to fix that.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/macb.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index f5b2fa74dc23..bcad88f60e7a 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -910,7 +910,7 @@ static int macb_probe(struct device *dev)
 		macb->gem_q1_descs = dma_alloc_coherent(GEM_Q1_DESC_BYTES,
 				DMA_ADDRESS_BROKEN);
 
-	macb->rx_packet_buf = xmalloc(PKTSIZE);
+	macb->rx_packet_buf = net_alloc_packet();
 
 	macb_reset_hw(macb);
 	ncfgr = macb_mdc_clk_div(macb);
@@ -938,7 +938,7 @@ static void macb_remove(struct device *dev)
 
 	macb_halt(&macb->netdev);
 
-	free(macb->rx_packet_buf);
+	net_free_packet(macb->rx_packet_buf);
 }
 
 static const struct macb_config fu540_c000_config = {
-- 
2.39.2



