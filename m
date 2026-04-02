Delivery-date: Thu, 02 Apr 2026 08:37:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w8BgE-007krO-2U
	for lore@lore.pengutronix.de;
	Thu, 02 Apr 2026 08:37:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w8BgE-0007rU-6g
	for lore@pengutronix.de; Thu, 02 Apr 2026 08:37:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=n5kvJI/tIYuX6F/zJzDFN5Lhwv+uuPT4s+KTlARc3Uw=; b=VC4/aphk4SiKvyZ41Y85HTFlfF
	jH/gCyrIXmhQYceWAv3n+RQCQCTbAqOGu4rhluD6aGl2xRBqymbF5MOKouOTsBFIQ/56ZH/T8DxiO
	JAQxLS0731yyf2oC1zrAwprID5fyOoKZfQ3TM5tIltbPBQL21QHWCIzKI1JrFWsOuiRRK9ZsRpEYw
	ZLYua0Uy9ncilf1Fsl+N36CEkGIlEju8HuXbmQCZxk0Nw2zeYCf3Kf5Wz2qiN4fU3YNRlP6GXMoqd
	ELC/wZXQU4jHHaDFfUiwEBVu8wqmVi8qjDGLd51XpMIs5T2D0YzWd1LDU2QfTjoHaFwhgrcVMzU4H
	0+aCcnjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8Bfe-0000000Gu3q-0KvP;
	Thu, 02 Apr 2026 06:36:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8BfZ-0000000Gu0I-1bRw
	for barebox@lists.infradead.org;
	Thu, 02 Apr 2026 06:36:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8BfX-0007Oe-9X; Thu, 02 Apr 2026 08:36:43 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8BfW-003Kc8-2c;
	Thu, 02 Apr 2026 08:36:42 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8BfW-00000003MbV-2sU4;
	Thu, 02 Apr 2026 08:36:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 02 Apr 2026 08:36:42 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260402-net-eth-do-udp-v1-3-af5d9fd6beec@pengutronix.de>
References: <20260402-net-eth-do-udp-v1-0-af5d9fd6beec@pengutronix.de>
In-Reply-To: <20260402-net-eth-do-udp-v1-0-af5d9fd6beec@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1775111802; l=1396;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=qcZkyY20YmjiPnp+/AoZN7tXZns83weZUV0GVUmZVRc=;
 b=KOpGexT/bUkRu+8FXsA++Ip1cG8GCzm/sOP4KhicdUT4C68K+0VuwdhJsypXlWY4VdrXeUeIn
 Xk+mN0Y7BXYCza7Gr7cvVZNVxQ5sJ3eI1Lr80jRkOWdUpvg7RzZJ5fo
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260401_233645_471459_281A7072 
X-CRM114-Status: UNSURE (   9.40  )
X-CRM114-Notice: Please train this message.
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
Subject: [PATCH 03/10] net: dhcp: use net_eth_to_udp() for packet parsing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Replace the separate net_eth_to_udp_payload(), net_eth_to_udphdr() and
net_eth_to_udplen() calls with the new consolidated net_eth_to_udp()
helper.  This validates the packet length before accessing any headers.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
---
 net/dhcp.c | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/net/dhcp.c b/net/dhcp.c
index e25b64842d..39168a2d53 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -391,16 +391,18 @@ static void dhcp_send_request_packet(struct bootp *bp_offer)
  */
 static void dhcp_handler(void *ctx, char *packet, unsigned int len)
 {
-	char *pkt = net_eth_to_udp_payload(packet);
-	struct udphdr *udp = net_eth_to_udphdr(packet);
-	struct bootp *bp = (struct bootp *)pkt;
+	struct net_udp_pkt udp;
+	struct bootp *bp;
+
+	if (net_eth_to_udp(packet, len, &udp))
+		return;
 
-	len = net_eth_to_udplen(packet);
+	bp = udp.payload;
 
-	debug("DHCPHandler: got packet: (len=%d) state: %d\n",
-		len, dhcp_state);
+	debug("DHCPHandler: got packet: (len=%u) state: %d\n",
+		udp.len, dhcp_state);
 
-	if (bootp_check_packet(pkt, ntohs(udp->uh_sport), len)) /* Filter out pkts we don't want */
+	if (bootp_check_packet(udp.payload, ntohs(udp.udp->uh_sport), udp.len))
 		return;
 
 	switch (dhcp_state) {

-- 
2.47.3



