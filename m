Delivery-date: Thu, 02 Apr 2026 08:37:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w8BgE-007krD-1o
	for lore@lore.pengutronix.de;
	Thu, 02 Apr 2026 08:37:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w8BgD-0007rN-Ti
	for lore@pengutronix.de; Thu, 02 Apr 2026 08:37:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DEGyEgtj1g/np+qYCLky5UoXac5JPGSAdYZsSxZR8dQ=; b=3Ydpnkx/SmtHM5neYL2cdjEI5Z
	nGGV/fzdMirlboTOJngXy11LYIgJFqxYaQkX+GLV33LmcyGz4160P/ka97+pW62zfdq6uIaEVofTa
	iQNAjyZI8HmEnYicjR6r2PewYyUYtJwhzc2d5L3Qj9Gbxwd3xusT9M4DcJyQRRIjWYiJHNjpRjNFC
	5J8f/VCyeECXL0gVvkTRxzmM38USRLHbLOgcfgX2GhBKRvGxMqLALp4vQ2IoFNjN0DUsb2P8e6Nrp
	yJNDb/gZ2JPNJWMEdJl4HGqM990xI8S99evoSNNuO/zD7Wmljy5jXGVxpGXTW+JYuSs6uqchKVmst
	GFgqDnBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8Bfc-0000000Gu30-2HgQ;
	Thu, 02 Apr 2026 06:36:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8BfZ-0000000Gu0G-1bge
	for barebox@lists.infradead.org;
	Thu, 02 Apr 2026 06:36:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8BfX-0007Of-9W; Thu, 02 Apr 2026 08:36:43 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8BfW-003KcF-2j;
	Thu, 02 Apr 2026 08:36:42 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8BfW-00000003MbV-2yaT;
	Thu, 02 Apr 2026 08:36:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 02 Apr 2026 08:36:47 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260402-net-eth-do-udp-v1-8-af5d9fd6beec@pengutronix.de>
References: <20260402-net-eth-do-udp-v1-0-af5d9fd6beec@pengutronix.de>
In-Reply-To: <20260402-net-eth-do-udp-v1-0-af5d9fd6beec@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1775111802; l=2470;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=9yWBrSghXmuXzUYgY0tcuzOcz323Jn22A4qzNzlGc6g=;
 b=5iiqHXsh8vOr+9tmnMG48kKcIDyGR1U7rDYYw5FHUYjFjVhdtZu5ZnFIeat6253mdXNvJoaVS
 mJ1JbHfBEhlC6DE+HE/XIGPlAVwXt5FDhHXO7Iq0ICQtydI2/vG0fUM
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260401_233645_460176_AFA5749C 
X-CRM114-Status: GOOD (  11.30  )
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
Cc: "Claude Opus 4.6" <noreply@anthropic.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 08/10] net: fastboot: use net_eth_to_udp() for packet
 parsing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Replace the separate net_eth_to_udplen(), net_eth_to_udphdr() and
net_eth_to_udp_payload() calls with the new consolidated
net_eth_to_udp() helper.

The direct net_eth_to_iphdr() call is kept because fastboot needs
access to the IP header for source address handling and tot_len based
fragment detection.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
---
 net/fastboot.c | 21 ++++++++++++++-------
 1 file changed, 14 insertions(+), 7 deletions(-)

diff --git a/net/fastboot.c b/net/fastboot.c
index 263d8abaa2..506af00cb8 100644
--- a/net/fastboot.c
+++ b/net/fastboot.c
@@ -351,17 +351,24 @@ static void fastboot_check_retransmit(struct fastboot_net *fbn,
 
 static void fastboot_handler(void *ctx, char *packet, unsigned int raw_len)
 {
-	unsigned int len = net_eth_to_udplen(packet);
 	struct ethernet *eth_header = (struct ethernet *)packet;
 	struct iphdr *ip_header = net_eth_to_iphdr(packet);
-	struct udphdr *udp_header = net_eth_to_udphdr(packet);
-	char *payload = net_eth_to_udp_payload(packet);
 	struct fastboot_net *fbn = ctx;
+	struct net_udp_pkt udp;
 	struct fastboot_header header;
-	char *fastboot_data = payload + sizeof(header);
-	u16 tot_len = ntohs(ip_header->tot_len);
+	char *payload, *fastboot_data;
+	unsigned int len;
+	u16 tot_len;
 	int ret;
 
+	if (net_eth_to_udp(packet, raw_len, &udp))
+		return;
+
+	payload = udp.payload;
+	len = udp.len;
+	fastboot_data = payload + sizeof(header);
+	tot_len = ntohs(ip_header->tot_len);
+
 	/* catch bogus tot_len values */
 	if ((char *)ip_header - packet + tot_len > raw_len)
 		return;
@@ -392,7 +399,7 @@ static void fastboot_handler(void *ctx, char *packet, unsigned int raw_len)
 
 	memcpy(fbn->net_con->et->et_dest, eth_header->et_src, ETH_ALEN);
 	net_copy_ip(&fbn->net_con->ip->daddr, &ip_header->saddr);
-	fbn->net_con->udp->uh_dport = udp_header->uh_sport;
+	fbn->net_con->udp->uh_dport = udp.udp->uh_sport;
 
 	switch (header.id) {
 	case FASTBOOT_QUERY:
@@ -404,7 +411,7 @@ static void fastboot_handler(void *ctx, char *packet, unsigned int raw_len)
 			break;
 		}
 		fbn->host_addr = net_read_ip(&ip_header->saddr);
-		fbn->host_port = udp_header->uh_sport;
+		fbn->host_port = udp.udp->uh_sport;
 		memcpy(fbn->host_mac, eth_header->et_src, ETH_ALEN);
 		fastboot_net_abort(fbn);
 		/* poller just unregistered in fastboot_net_abort() */

-- 
2.47.3



