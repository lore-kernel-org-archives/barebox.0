Delivery-date: Wed, 13 Mar 2024 12:07:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkMSg-004IRP-14
	for lore@lore.pengutronix.de;
	Wed, 13 Mar 2024 12:07:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkMSf-0002xz-OA
	for lore@pengutronix.de; Wed, 13 Mar 2024 12:07:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3c4XC4itnb0cuy/5S8Hyw+E1m0LlAx/eOmDFKANyI2Q=; b=qRXuqlAYNyZy3nXJRsQsKUEt0G
	LVsJ5sfpwv1RNFrEelItFF2sHuZEsmJwVUVsIgd49c3HZWISnp+5TlmaFaaJu3NmYlrHhzACwTEMn
	ikrS+Lj/hH27bODpDh/iZmlDtezQxVioFgcZb1nMHullmCOSkFmEPoDoHzdelh4qfz6NGMnW2kfSQ
	QPrj+e9UOs/GarCox38BvSxJ+dwBhsroHUZ70XdMLRaxvARHvfifMb0jDtHVGDNLzJzdjj/svjbeN
	7euvnVich6DXWk9i7wD/tAykaJJNMKBguIvkCgNaxi+ad8TSoa6a0RcaKdLlFCzZUU2iwNqdV5fl9
	4qiffxiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkMSA-00000009pQt-36vp;
	Wed, 13 Mar 2024 11:07:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkMRv-00000009pFi-0s2g
	for barebox@lists.infradead.org;
	Wed, 13 Mar 2024 11:07:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkMRu-0001t1-1s; Wed, 13 Mar 2024 12:07:06 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkMRt-006660-KU; Wed, 13 Mar 2024 12:07:05 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkMRt-004dIp-07;
	Wed, 13 Mar 2024 12:07:05 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 13 Mar 2024 12:07:03 +0100
Message-Id: <20240313110704.1095554-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240313110704.1095554-1-a.fatoum@pengutronix.de>
References: <20240313110704.1095554-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240313_040707_491162_488858A8 
X-CRM114-Status: GOOD (  13.12  )
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
Subject: [PATCH 6/7] net: cpsw: replace global NetRxPackets with per-interface allocation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

NetRxPackets is a remnant of times, where a board had at most one
Ethernet controller. This is outdated and we should drop NetRxPackets.

Switch over the driver to allocate the receive buffers needed.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/cpsw.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/net/cpsw.c b/drivers/net/cpsw.c
index 42fb32bde2f5..3f24c21594c1 100644
--- a/drivers/net/cpsw.c
+++ b/drivers/net/cpsw.c
@@ -215,6 +215,8 @@ struct cpsw_priv {
 	unsigned int			slave_size;
 	unsigned int			sliver_ofs;
 
+	void				*rx_buffer[PKTBUFSRX - 2];
+
 	struct cpdma_desc		*descs;
 	struct cpdma_desc		*desc_free;
 	struct cpdma_chan		rx_chan, tx_chan;
@@ -980,7 +982,7 @@ static int cpsw_setup(struct device *dev)
 
 	/* submit rx descs */
 	for (i = 0; i < PKTBUFSRX - 2; i++) {
-		ret = cpdma_submit(priv, &priv->rx_chan, NetRxPackets[i],
+		ret = cpdma_submit(priv, &priv->rx_chan, priv->rx_buffer[i],
 				   PKTSIZE, 0);
 		if (ret < 0) {
 			dev_err(dev, "error %d submitting rx desc\n", ret);
@@ -1350,6 +1352,10 @@ static int cpsw_probe(struct device *dev)
 	priv = xzalloc(sizeof(*priv));
 	priv->dev = dev;
 
+	ret = net_alloc_packets(priv->rx_buffer, ARRAY_SIZE(priv->rx_buffer));
+	if (ret)
+		goto out;
+
 	if (dev->of_node) {
 		ret = cpsw_probe_dt(priv);
 		if (ret)
-- 
2.39.2



