Delivery-date: Wed, 13 Mar 2024 12:07:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkMSX-004IOQ-0O
	for lore@lore.pengutronix.de;
	Wed, 13 Mar 2024 12:07:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkMSU-0002eA-0p
	for lore@pengutronix.de; Wed, 13 Mar 2024 12:07:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=joGvl0hfJ3aM8Z+nURkuJhNP2nKv21RRrdLvMGBZKRU=; b=CeimcDQGI0SytJEsRcrU6PHPay
	hoXwqmLeIcGWBw3DO7y95z2UnsNK/aKDZQ3bvdBAcsGdsHg4HdOk9vJTJzBM+KNLMbLH6YBWNu9yF
	mhQ0zvmLW3Sczv4Dy+/gcj5dICGA5hNnKwdaeMPVyK1kkCdvqOIL9xlyOTIG70YbMJyFK6FAR5hOa
	bZG0ApS3L8pr4lrlbQLqqebe71y+3eDDYKaQSiOFuk8FRIhGo+jnpweYJ9Vj63twnff6gFsaQ8akl
	AXWOszf88/ES+orQd3JAY4uDz7URyyGUgSTcQTSQq7/CC5O+0/JR77b4uRURg0p6bNUuNuy3ktCRO
	2JAZ7uuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkMS1-00000009pKK-1bIk;
	Wed, 13 Mar 2024 11:07:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkMRu-00000009pFc-3syc
	for barebox@lists.infradead.org;
	Wed, 13 Mar 2024 11:07:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkMRt-0001si-Q0; Wed, 13 Mar 2024 12:07:05 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkMRt-00665l-D5; Wed, 13 Mar 2024 12:07:05 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkMRs-004dIp-2b;
	Wed, 13 Mar 2024 12:07:05 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 13 Mar 2024 12:06:58 +0100
Message-Id: <20240313110704.1095554-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240313110704.1095554-1-a.fatoum@pengutronix.de>
References: <20240313110704.1095554-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240313_040706_986008_612E8A30 
X-CRM114-Status: GOOD (  13.17  )
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
Subject: [PATCH 1/7] net: add net_alloc_packets helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We have a number of drivers that call net_alloc_packet in a loop and
will gain some more in the quest to drop NetRxPackets.
Let's provide a helper that can be used for this and a function to free
the packets as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/net.h |  8 ++++++++
 net/net.c     | 27 ++++++++++++++++++++++++---
 2 files changed, 32 insertions(+), 3 deletions(-)

diff --git a/include/net.h b/include/net.h
index ffc1093ae6e7..38fd6f8d3c41 100644
--- a/include/net.h
+++ b/include/net.h
@@ -551,6 +551,14 @@ static inline char *net_alloc_packet(void)
 	return dma_alloc(PKTSIZE);
 }
 
+static inline void net_free_packet(char *pkt)
+{
+	return dma_free(pkt);
+}
+
+int net_alloc_packets(void **packets, int count);
+void net_free_packets(void **packets, unsigned count);
+
 struct net_connection *net_udp_new(IPaddr_t dest, uint16_t dport,
 		rx_handler_f *handler, void *ctx);
 
diff --git a/net/net.c b/net/net.c
index d72ed81e10a0..6f418df0538b 100644
--- a/net/net.c
+++ b/net/net.c
@@ -789,12 +789,33 @@ int net_receive(struct eth_device *edev, unsigned char *pkt, int len)
 	return ret;
 }
 
-static int net_init(void)
+void net_free_packets(void **packets, unsigned count)
 {
+	while (count-- > 0)
+		net_free_packet(packets[count]);
+}
+
+int net_alloc_packets(void **packets, int count)
+{
+	void *packet;
 	int i;
 
-	for (i = 0; i < PKTBUFSRX; i++)
-		NetRxPackets[i] = net_alloc_packet();
+	for (i = 0; i < count; i++) {
+		packet = net_alloc_packet();
+		if (!packet)
+			goto free;
+		packets[i] = packet;
+	}
+
+	return 0;
+free:
+	net_free_packets(packets, i);
+	return -ENOMEM;
+}
+
+static int net_init(void)
+{
+	net_alloc_packets((void **)NetRxPackets, PKTBUFSRX);
 
 	globalvar_add_simple_ip("net.nameserver", &net_nameserver);
 	globalvar_add_simple_string("net.domainname", &net_domainname);
-- 
2.39.2



