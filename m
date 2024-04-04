Delivery-date: Thu, 04 Apr 2024 20:40:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rsS17-00AYdk-0a
	for lore@lore.pengutronix.de;
	Thu, 04 Apr 2024 20:40:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rsS15-0003A9-FT
	for lore@pengutronix.de; Thu, 04 Apr 2024 20:40:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XOtkIvmA+GNgidGwRRt8eIFNkGilxQLn07PqfQjdw0I=; b=AdTlqO9pyQPD14cUwXN/TWoc/R
	Sq0takniUuyPG5rzmaAf0wR07t5Nq81QLZzN5p4PPsBOoA4Am3mfpW7PgjdDek0xQo4YNJotiBbxZ
	Cij39FBVhbHZQLmjlKFXFkRwqJzwfxe5ztI8xR6IIvngwlSTMijN8aM+fguXczB9Du9qB5uXl7F/l
	unPn/Vu5X4IduqwluGhxWjgcmESdYgeOdWFK10jsRQG2LcNnMIQY+xyhUrnkFvCK2TiMTOu3CaJ/J
	zyPhGZtSs49Z7m79fB8T0VTtZreyIo23PSJj/VSAEHR/rLBimWobt32k6aDexn+Qk/IFO4/Q1GQKQ
	5POhSLhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsS0Y-00000003sLu-25xP;
	Thu, 04 Apr 2024 18:40:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsS0N-00000003sG1-1Uvr
	for barebox@lists.infradead.org;
	Thu, 04 Apr 2024 18:40:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rsS0I-0001sA-PW; Thu, 04 Apr 2024 20:40:02 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rsS0I-00AQQc-Ct; Thu, 04 Apr 2024 20:40:02 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rsS0I-006VVt-10;
	Thu, 04 Apr 2024 20:40:02 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  4 Apr 2024 20:39:52 +0200
Message-Id: <20240404184001.1532897-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240404184001.1532897-1-a.fatoum@pengutronix.de>
References: <20240404184001.1532897-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240404_114007_559514_3242BE58 
X-CRM114-Status: GOOD (  10.29  )
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
Subject: [PATCH 01/10] net: free packets with net_free_packet
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

While ultimately the same (net_free_packet == dma_free == free), this
will not necessarily be always the case, so let's use the dedicated
net_free_packet function to free the packets.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 net/net.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/net/net.c b/net/net.c
index c06e88fe532d..2625fb8604fb 100644
--- a/net/net.c
+++ b/net/net.c
@@ -465,7 +465,7 @@ static struct net_connection *net_new(struct eth_device *edev, IPaddr_t dest,
 
 	return con;
 out:
-	free(con->packet);
+	net_free_packet(con->packet);
 	free(con);
 	return ERR_PTR(ret);
 }
@@ -510,7 +510,7 @@ struct net_connection *net_icmp_new(IPaddr_t dest, rx_handler_f *handler,
 void net_unregister(struct net_connection *con)
 {
 	list_del(&con->list);
-	free(con->packet);
+	net_free_packet(con->packet);
 	free(con);
 }
 
@@ -564,7 +564,7 @@ static int net_answer_arp(struct eth_device *edev, unsigned char *pkt, int len)
 		return 0;
 	memcpy(packet, pkt, ETHER_HDR_SIZE + ARP_HDR_SIZE);
 	ret = eth_send(edev, packet, ETHER_HDR_SIZE + ARP_HDR_SIZE);
-	free(packet);
+	net_free_packet(packet);
 
 	return ret;
 }
@@ -677,7 +677,7 @@ static int ping_reply(struct eth_device *edev, unsigned char *pkt, int len)
 
 	ret = eth_send(edev, packet, ETHER_HDR_SIZE + len);
 
-	free(packet);
+	net_free_packet(packet);
 
 	return ret;
 }
-- 
2.39.2



