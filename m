Delivery-date: Thu, 04 Apr 2024 20:40:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rsS17-00AYdn-1G
	for lore@lore.pengutronix.de;
	Thu, 04 Apr 2024 20:40:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rsS15-0003AE-Kl
	for lore@pengutronix.de; Thu, 04 Apr 2024 20:40:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YP3QzywKsN3zXpDSZncKrTwDTRY1uGXXxiMGupqNetA=; b=PPCrUfTLLM6d5M
	JcnjWLIy4nxXqbv33ZqzonXSWBbj3V0xn/CaDTS3kIygMLgaNnDyqkg5ttw4SCbjKxcwYAwIKIl2A
	pNEcy36x0UqvVNl1nxMzEm4tEU7nOHHoKIp5H0cNooHFJ7geTNZ6Vlkae7DJm3j2ATOhEg9ltnJyx
	bFrNlxFf/iKEs+d6STtyLrF6a2sbv6pGu8u56ccpMWYe3bCz8RS3NOJx4gfIfE51qinBBGfKh3QeH
	v0AZYflXL6xOhvDn5mhtNUfhn91ZCaJdi4y5FWg/mtaC2+VVcBSWK+l/G0w2/ZcrTtzredsj0mEzM
	IjlUicSkU1BgqzirsgUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsS0W-00000003sKo-3igi;
	Thu, 04 Apr 2024 18:40:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsS0N-00000003sG4-1Jk9
	for barebox@lists.infradead.org;
	Thu, 04 Apr 2024 18:40:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rsS0I-0001sC-St; Thu, 04 Apr 2024 20:40:02 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rsS0I-00AQQi-G2; Thu, 04 Apr 2024 20:40:02 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rsS0I-006VVt-1J;
	Thu, 04 Apr 2024 20:40:02 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu,  4 Apr 2024 20:39:54 +0200
Message-Id: <20240404184001.1532897-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240404184001.1532897-1-a.fatoum@pengutronix.de>
References: <20240404184001.1532897-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240404_114007_486062_45E8A0CF 
X-CRM114-Status: GOOD (  18.37  )
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
Cc: =?UTF-8?q?Bj=C3=B6rn=20L=C3=A4ssig?= <bla@pengutronix.de>, Ahmad Fatoum <a.fatoum@pengutronix.de>
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
Subject: [PATCH 03/10] net: icmp: don't blindly trust driver supplied frame size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The barebox network stack calls ping_reply() to handle ICMP echo
requests. The function copies destination addresses to source addresses,
fixes up some fields, recalculates checksums and then sends back the
ICMP echo response.

There are two checksums involved: The IP checksum over the IP header and
the ICMP header spanning the ICMP payload, which extends to the end of
packet.

The number of bytes that the ICMP checksum should be computed for was
being calculated as total_size_reported_by_nic - iphdr_size - ethhdr_size.

This is wrong as it assumes that the IP payload extends until the end of
packet. There are multiple reasons this may not be the case:

  - The packet is smaller than the minimum and is thus padded.
  - The sender adds trailing bytes after the IP payload for no reason.
  - The network driver reports a wrong size, because it doesn't
    correctly handle extra bytes added by hardware checksum offloading.

The last one affects the barebox cpsw and smsc95xx drivers, which will
be fixed up in follow-up commits.

The proper solution is to use the same length for the payload and
for its checksum. Do this by using the new ip_verify_size(), which will
take care to fix up the size discrepancy.

This issue was found by trying to ping a Raspberry Pi 3b running barebox
sitting behind a router employing conntrack, which apparently discarded
the ping responses due to the wrong ICMP checksum. These issues did not
occur without such a router in-beween, because the ping command itself
doesn't bother to verify the checksum.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Cc: Jan Lübbe <jlu@pengutronix.de>
Cc: Björn Lässig <bla@pengutronix.de>
---
 net/net.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/net/net.c b/net/net.c
index 56a599d0bc61..6745085635dc 100644
--- a/net/net.c
+++ b/net/net.c
@@ -686,7 +686,7 @@ static int ping_reply(struct eth_device *edev, unsigned char *pkt, int len)
 {
 	struct ethernet *et = (struct ethernet *)pkt;
 	struct icmphdr *icmp;
-	struct iphdr *ip = (struct iphdr *)(pkt + ETHER_HDR_SIZE);
+	struct iphdr *ip;
 	unsigned char *packet;
 	int ret;
 
@@ -696,6 +696,10 @@ static int ping_reply(struct eth_device *edev, unsigned char *pkt, int len)
 
 	icmp = net_eth_to_icmphdr(pkt);
 
+	ip = ip_verify_size(pkt, &len);
+	if (!ip)
+		return -EILSEQ;
+
 	icmp->type = ICMP_ECHO_REPLY;
 	icmp->checksum = 0;
 	icmp->checksum = ~net_checksum((unsigned char *)icmp,
-- 
2.39.2



