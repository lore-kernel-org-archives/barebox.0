Delivery-date: Wed, 13 Mar 2024 12:07:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkMSX-004IOb-14
	for lore@lore.pengutronix.de;
	Wed, 13 Mar 2024 12:07:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkMSW-0002kM-At
	for lore@pengutronix.de; Wed, 13 Mar 2024 12:07:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lPAzxZvyoO5MImdRiOys/sqSgCv67lBY1wuznfYrAt8=; b=htLiE1mWyPX9jaIHWqDcW+sE0n
	44F1o8UuO4fgX9HO+ZxWiF9A0BVP1msUB27rAyKXjCv7oWnGdkz4Uyf4q+tipH5BkxF3vDYQ67Lvd
	U3dx2/hX2XymCyh5V2RQt8XNN2ixe0TJlhDQ8sWtgZj03D0rXD0/HFzDGsg8Xq3rT9QsO3uvQqVnD
	OZcm9P0y3ySNbYWhfQgUwcpbc5rJVhJfKYEbs2cds78bQNXqxEjdR05ZCsj1ptikYGYwRFRuMW/sQ
	at8+mhVhppJyXht+URQitmaBPP4+W+SHbGxV/s//sXQ55mLiN2rf1nWKrPKXohpOYBQBHBY296/yk
	9jTALnyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkMS2-00000009pLA-1sxk;
	Wed, 13 Mar 2024 11:07:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkMRu-00000009pFe-48oS
	for barebox@lists.infradead.org;
	Wed, 13 Mar 2024 11:07:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkMRt-0001sj-RM; Wed, 13 Mar 2024 12:07:05 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkMRt-00665o-EY; Wed, 13 Mar 2024 12:07:05 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkMRs-004dIp-2k;
	Wed, 13 Mar 2024 12:07:05 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 13 Mar 2024 12:06:59 +0100
Message-Id: <20240313110704.1095554-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240313110704.1095554-1-a.fatoum@pengutronix.de>
References: <20240313110704.1095554-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240313_040707_058193_AF45476C 
X-CRM114-Status: GOOD (  14.15  )
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
Subject: [PATCH 2/7] net: ep93xx: replace global NetRxPackets with per-interface allocation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

NetRxPackets is a remnant of times, where a board had at most one
Ethernet controller. This is outdated and we should drop NetRxPackets.

The driver already had an unused rx_buffer, so let's make use of it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/ep93xx.c | 16 +++++++++++++---
 1 file changed, 13 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ep93xx.c b/drivers/net/ep93xx.c
index 77f8aa63db76..bd954e7a17b0 100644
--- a/drivers/net/ep93xx.c
+++ b/drivers/net/ep93xx.c
@@ -62,7 +62,7 @@ static void dump_dev(struct eth_device *edev)
 	printf("  rx_sq.end	     %p\n", priv->rx_sq.end);
 
 	for (i = 0; i < NUMRXDESC; i++)
-		printf("  rx_buffer[%2.d]      %p\n", i, NetRxPackets[i]);
+		printf("  rx_buffer[%2.d]      %p\n", i, priv->rx_buffer[i]);
 
 	printf("  tx_dq.base	     %p\n", priv->tx_dq.base);
 	printf("  tx_dq.current	     %p\n", priv->tx_dq.current);
@@ -258,7 +258,7 @@ static int ep93xx_eth_open(struct eth_device *edev)
 	 */
 	for (i = 0; i < NUMRXDESC; i++) {
 		/* set buffer address */
-		(priv->rx_dq.base + i)->word1 = (uint32_t)NetRxPackets[i];
+		(priv->rx_dq.base + i)->word1 = (uint32_t)priv->rx_buffer[i];
 
 		/* set buffer length, clear buffer index and NSOF */
 		(priv->rx_dq.base + i)->word2 = EP93XX_MAX_PKT_SIZE;
@@ -324,7 +324,7 @@ static int ep93xx_eth_rcv_packet(struct eth_device *edev)
 			/*
 			 * We have a good frame. Extract the frame's length
 			 * from the current rx_status_queue entry, and copy
-			 * the frame's data into NetRxPackets[] of the
+			 * the frame's data into priv->rx_buffer of the
 			 * protocol stack. We track the total number of
 			 * bytes in the frame (nbytes_frame) which will be
 			 * used when we pass the data off to the protocol
@@ -532,6 +532,12 @@ static int ep93xx_eth_probe(struct device *dev)
 		goto eth_probe_failed_3;
 	}
 
+	ret = net_alloc_packets(priv->rx_buffer, NUMRXDESC);
+	if (ret) {
+		pr_err("net_alloc_packet() failed: rx_buffer");
+		goto eth_probe_failed_4;
+	}
+
 	mdiobus_register(&priv->miibus);
 	eth_register(edev);
 
@@ -539,6 +545,10 @@ static int ep93xx_eth_probe(struct device *dev)
 
 	goto eth_probe_done;
 
+eth_probe_failed_4:
+	free(priv->rx_sq.base);
+	/* Fall through */
+
 eth_probe_failed_3:
 	free(priv->rx_dq.base);
 	/* Fall through */
-- 
2.39.2



