Delivery-date: Wed, 13 Mar 2024 12:07:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkMSa-004IPc-29
	for lore@lore.pengutronix.de;
	Wed, 13 Mar 2024 12:07:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkMSZ-0002nk-Vr
	for lore@pengutronix.de; Wed, 13 Mar 2024 12:07:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=w2zAg5jZgRkdcATDgZkcxj9otTboLuxEDsZo6cOw2do=; b=nBN7mqullyPWtNtMXNTnjbDVqx
	Llkw1IzxpsJUZljINFfM1PudNLdZhEQVdANDRT+mYn9HlbG+ksPboxweoh03CigF9YD5RjJa05mrG
	tPOZLuyRmIZ6gC60fhTOjP1bqjrqqeC4vN2iDir1yQMUuzjtcFdu2gMk3XlvyAQFHfD9g5Gyj8j3A
	4+5pvKKUMfM1c8nFZnQwa4i9+1t+wQHpMaPLOj8j1pfSO/FU6iIQtZkJ8GPbJ9m80/000rVJhf5sD
	J83/TNerBDMvxM34YHw8V7FLEB1RtZNi/wfcD5VVJvFqGmqfcksnaQN6ehOmxr75aaRsR+nM2W95x
	QanUDbNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkMS4-00000009pN0-3vvK;
	Wed, 13 Mar 2024 11:07:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkMRv-00000009pFh-0cI1
	for barebox@lists.infradead.org;
	Wed, 13 Mar 2024 11:07:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkMRt-0001sq-Vr; Wed, 13 Mar 2024 12:07:05 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkMRt-00665x-Iv; Wed, 13 Mar 2024 12:07:05 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkMRs-004dIp-3B;
	Wed, 13 Mar 2024 12:07:05 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 13 Mar 2024 12:07:02 +0100
Message-Id: <20240313110704.1095554-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240313110704.1095554-1-a.fatoum@pengutronix.de>
References: <20240313110704.1095554-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240313_040707_303435_B58284AA 
X-CRM114-Status: GOOD (  12.43  )
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
Subject: [PATCH 5/7] net: ethoc: replace global NetRxPackets with per-interface allocation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

NetRxPackets is a remnant of times, where a board had at most one
Ethernet controller. This is outdated and we should drop NetRxPackets.

Switch over the driver to allocate the receive buffers needed.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/ethoc.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethoc.c b/drivers/net/ethoc.c
index c878f498a447..a31d3bb52173 100644
--- a/drivers/net/ethoc.c
+++ b/drivers/net/ethoc.c
@@ -178,6 +178,8 @@ struct ethoc {
 	u32 cur_rx;
 
 	struct mii_bus miibus;
+
+	void *rx_buffer[PKTBUFSRX];
 };
 
 /**
@@ -266,7 +268,7 @@ static int ethoc_init_ring(struct ethoc *dev)
 		if (i == dev->num_rx - 1)
 			bd.stat |= RX_BD_WRAP;
 
-		bd.addr = (u32)NetRxPackets[i];
+		bd.addr = (u32)dev->rx_buffer[i];
 		ethoc_write_bd(dev, dev->num_tx + i, &bd);
 
 		flush_dcache_range(bd.addr, bd.addr + PKTSIZE);
@@ -534,12 +536,18 @@ static int ethoc_probe(struct device *dev)
 	struct resource *iores;
 	struct eth_device *edev;
 	struct ethoc *priv;
+	int ret;
 
 	edev = xzalloc(sizeof(struct eth_device) +
 		       sizeof(struct ethoc));
 	edev->priv = (struct ethoc *)(edev + 1);
 
 	priv = edev->priv;
+
+	ret = net_alloc_packets(priv->rx_buffer, ARRAY_SIZE(priv->rx_buffer));
+	if (ret)
+		return ret;
+
 	iores = dev_request_mem_resource(dev, 0);
 	if (IS_ERR(iores))
 		return PTR_ERR(iores);
-- 
2.39.2



