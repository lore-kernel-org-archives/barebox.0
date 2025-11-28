Delivery-date: Fri, 28 Nov 2025 13:50:27 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOxvf-005mqS-1T
	for lore@lore.pengutronix.de;
	Fri, 28 Nov 2025 13:50:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOxve-0003ao-SL
	for lore@pengutronix.de; Fri, 28 Nov 2025 13:50:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oE6TdDRop0MibAuWZAnBOAs5uW7bi7QVLQR62Y675QU=; b=abZmES61xb9pqwncENLLpNgB+7
	5Nf8P+kD+R6h/ZmfbRROOLo0Y08pS0icDIS4BGNH9JgiIuoCa1Wyg4tRC4jq4Puh949IgjueTNClC
	oPmVEPXOW8THBSdXrEURXl8Wo+CJmQYaJck+ApOQs3k3LsUPjR1NGE/YATIHAwvguDi8KjqAsjgS4
	cxMEqjWD/UuJEEQlT1YPVA5Vw1ObPj1tl9IS9dU9IqcYc/fRkacCbRvk46Wohfx/wXFeY2I3/uPQl
	sGzMglI0bOX40p4UtmHuXVv93/aS2KzuJX+E7ONOYGCG2S5xqP9E1bOu0fy6Lpl8Xm8s6GOSgIMkT
	lQ8a8Vxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOxv7-00000000RMy-1kE1;
	Fri, 28 Nov 2025 12:49:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOxv5-00000000RMT-0L67
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 12:49:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vOxuv-0003RT-KU; Fri, 28 Nov 2025 13:49:41 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vOxuv-002xKo-0b;
	Fri, 28 Nov 2025 13:49:41 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vOxuv-00000000UY1-0Hym;
	Fri, 28 Nov 2025 13:49:41 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Sohaib Mohamed <sohaib.amhmd@gmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 28 Nov 2025 13:49:34 +0100
Message-ID: <20251128124939.108159-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251128124939.108159-1-a.fatoum@pengutronix.de>
References: <20251128124939.108159-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251128_044951_121857_05BCD2B4 
X-CRM114-Status: GOOD (  12.84  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/2] net: reset pending ARP state when request is done
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

net_new() creates a struct net_connection and calls arp_request()
to resolve unicast addresses. On success, arp_request() will
populate a buffer within the net_connection with the destination MAC
address.

If arp_request() aborts due to an error, it will leave the global
pending_arp.ether pointing at the buffer, which is promptly freed
leading to a dangling pointer and a use-after-free if we happen to get
an ARP response just after the error occurred.

Fix this memory safety issue by always clearing all of  pending_arp once
we are done with it, including error cases.

Reported-by: Sohaib Mohamed <sohaib.amhmd@gmail.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - no change
---
 net/net.c | 22 +++++++++++++++-------
 1 file changed, 15 insertions(+), 7 deletions(-)

diff --git a/net/net.c b/net/net.c
index 795afed159aa..9c5999604b67 100644
--- a/net/net.c
+++ b/net/net.c
@@ -220,24 +220,28 @@ static int arp_request(struct eth_device *edev, IPaddr_t dest, unsigned char *et
 
 	ret = eth_send(edev, arp_packet, ETHER_HDR_SIZE + ARP_HDR_SIZE);
 	if (ret)
-		return ret;
+		goto out;
 	arp_start = get_time_ns();
 
 	while (pending_arp.ip) {
-		if (ctrlc())
-			return -EINTR;
+		if (ctrlc()) {
+			ret = -EINTR;
+			goto out;
+		}
 
 		if (is_timeout(arp_start, 3 * SECOND)) {
 			printf("T ");
 			arp_start = get_time_ns();
 			ret = eth_send(edev, arp_packet, ETHER_HDR_SIZE + ARP_HDR_SIZE);
 			if (ret)
-				return ret;
+				goto out;
 			retries++;
 		}
 
-		if (retries > PKT_NUM_RETRIES)
-			return -ETIMEDOUT;
+		if (retries > PKT_NUM_RETRIES) {
+			ret = -ETIMEDOUT;
+			goto out;
+		}
 
 		net_poll();
 	}
@@ -245,7 +249,11 @@ static int arp_request(struct eth_device *edev, IPaddr_t dest, unsigned char *et
 	pr_debug("Got ARP REPLY for %pI4: %02x:%02x:%02x:%02x:%02x:%02x\n",
 		 &dest, ether[0], ether[1], ether[2], ether[3], ether[4],
 		 ether[5]);
-	return 0;
+
+out:
+	pending_arp.ip = 0;
+	pending_arp.ether = NULL;
+	return ret;
 }
 
 void net_poll(void)
-- 
2.47.3



