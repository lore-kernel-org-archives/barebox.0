Delivery-date: Thu, 02 Apr 2026 08:37:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w8BgC-007kpn-1b
	for lore@lore.pengutronix.de;
	Thu, 02 Apr 2026 08:37:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w8BgB-0007pK-SL
	for lore@pengutronix.de; Thu, 02 Apr 2026 08:37:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qIOGOq01G5j8b4g+MXVMsWdpZgSYgd+ibmpJLhBugYA=; b=fDBPUfnukXysqOpQfDLcWgQDyE
	52VdefodMCaJqk19gBmegVFTUsFvvGvcCXYB3h6yOzfOCjqTzj0j/uJcG9MArevGuNoES1t8aDyeR
	bDLB7gr0MoKCd3pvJNyfUXwILBEKRMf/MxMNyJuyjALkj5STPrCt2Ve+xXxV78pz3UiGf+wl2OdkT
	LYa1Rwmb5WsO9Cl08dlCJeeBqAIA178dyBHDwtgUhrEr5e3ZGcmB30xiG9mqA1SZtV9Jo895ERfSg
	0yEpOyxXsV9ER/qvc62zkRmCd4gJWObT2ycfR842CTjvU8NUX59lT0AU0L7EkCfOrkjqvk8LxDvXh
	Zwh0L2JQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8Bfd-0000000Gu3j-3MPW;
	Thu, 02 Apr 2026 06:36:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8BfZ-0000000Gu0J-1bsX
	for barebox@lists.infradead.org;
	Thu, 02 Apr 2026 06:36:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8BfX-0007Ol-C6; Thu, 02 Apr 2026 08:36:43 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8BfW-003KcD-2g;
	Thu, 02 Apr 2026 08:36:42 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8BfW-00000003MbV-2w9x;
	Thu, 02 Apr 2026 08:36:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 02 Apr 2026 08:36:45 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260402-net-eth-do-udp-v1-6-af5d9fd6beec@pengutronix.de>
References: <20260402-net-eth-do-udp-v1-0-af5d9fd6beec@pengutronix.de>
In-Reply-To: <20260402-net-eth-do-udp-v1-0-af5d9fd6beec@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1775111802; l=1316;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=3fuHQYrAkMJgcc4e61ZokNFhhPWJoHa0IcMEL83a1rY=;
 b=SMJpaOjYWR7EL9sJIYpt+Uz/Wg6FOsqJm4AikwYBhKpiAxh7MQznVfNEaAxah/39oepwqCe2O
 i4wHzzrKCRDBYp1kzG47eZNYfbhIXO+BIcxs7JMLXsZj04OV3XYmF/Y
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260401_233645_455054_A2D36100 
X-CRM114-Status: GOOD (  10.35  )
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
Subject: [PATCH 06/10] net: sntp: use net_eth_to_udp() for packet parsing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Replace the separate net_eth_to_udp_payload() and net_eth_to_udplen()
calls with the new consolidated net_eth_to_udp() helper.

The direct net_eth_to_iphdr() call is kept because SNTP needs to check
the source IP address before processing the UDP payload.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
---
 net/sntp.c | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/net/sntp.c b/net/sntp.c
index be361f625d..c7441bc312 100644
--- a/net/sntp.c
+++ b/net/sntp.c
@@ -75,19 +75,23 @@ static int sntp_send(void)
 
 static void sntp_handler(void *ctx, char *pkt, unsigned len)
 {
-	IPaddr_t ip_addr;
 	struct iphdr *ip = net_eth_to_iphdr(pkt);
-	struct ntp_packet *ntp =
-	    (struct ntp_packet *)net_eth_to_udp_payload(pkt);
+	struct net_udp_pkt udp;
+	struct ntp_packet *ntp;
+	IPaddr_t ip_addr;
 
 	ip_addr = net_read_ip((void *)&ip->saddr);
 	if (ip_addr != net_sntp_ip)
 		return;
 
-	len = net_eth_to_udplen(pkt);
-	if (len < sizeof(struct ntp_packet))
+	if (net_eth_to_udp(pkt, len, &udp))
 		return;
 
+	if (udp.len < sizeof(struct ntp_packet))
+		return;
+
+	ntp = udp.payload;
+
 	pr_debug("received SNTP response\n");
 
 	if (ntp->version != VERSION)

-- 
2.47.3



