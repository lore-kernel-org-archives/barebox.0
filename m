Delivery-date: Thu, 02 Apr 2026 08:37:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w8BgD-007kqE-0o
	for lore@lore.pengutronix.de;
	Thu, 02 Apr 2026 08:37:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w8BgC-0007pV-Hj
	for lore@pengutronix.de; Thu, 02 Apr 2026 08:37:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4XV8TWrGoakpNZBVvRIerhggI4NTAoyu2aIeT8hkAwY=; b=KKEwAuoerk/HdGmMeN0d4FL2+p
	ME7qLV6Kxr9mBbiSBDgjVyuHeWIt8kL9cb0EwHI5Nf5iEM+duii8O+1KCYOQ2pQL30HJUAGE9MSeB
	FueTU39NYp7rjgsFdbfkjyQjZwqD3hoHsIFwPzSBnnLNpoDbzCVzuRtMfq5cM1kqKnXR7YW6va3Rg
	hVTTXjiR+2pYtjBJ9ilaQ1QbBUwhyylcl440NYXmcrbrAoE9NhsnLu5E/FC3uiXVfQnbkm0w9eeZf
	dXZyvSn/YCZWT98zU4u2rAFrAuyxtn156tXSjBfgbIzOOOIJ42/PJ7OWR27meZHEa9kDLIR81cPh8
	wM5TE+sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8Bfj-0000000Gu9R-34eQ;
	Thu, 02 Apr 2026 06:36:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8Bfg-0000000Gu4p-3U1j
	for barebox@lists.infradead.org;
	Thu, 02 Apr 2026 06:36:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8BfX-0007Ok-B7; Thu, 02 Apr 2026 08:36:43 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8BfW-003KcA-2g;
	Thu, 02 Apr 2026 08:36:42 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8BfW-00000003MbV-2r39;
	Thu, 02 Apr 2026 08:36:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 02 Apr 2026 08:36:40 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260402-net-eth-do-udp-v1-1-af5d9fd6beec@pengutronix.de>
References: <20260402-net-eth-do-udp-v1-0-af5d9fd6beec@pengutronix.de>
In-Reply-To: <20260402-net-eth-do-udp-v1-0-af5d9fd6beec@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1775111802; l=3024;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=Or6u82YGMQcG5tc/7AUuRoFaow3CdEzlyzueGJtNu0I=;
 b=TWwdPAxd7cVIxh8F94fEcM7tFQIEO7SE99CZcY5gXktcEj/fPCkHdyHKT4BFCPV2ZNyJssgh8
 cqYbjwfGLE4DfjO8jMZSvbESvGkS5mSrog94DSGs6jHIIkz+qOaP4NM
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260401_233652_883938_E830CD4F 
X-CRM114-Status: GOOD (  13.75  )
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
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH 01/10] net: add net_eth_to_udp() helper for validated UDP
 extraction
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The existing net_eth_to_udp_payload(), net_eth_to_udphdr() and
net_eth_to_udplen() helpers parse protocol headers by offset arithmetic
without checking the actual packet length. A short or malformed packet
can cause out-of-bounds reads.

Introduce net_eth_to_udp() which takes the frame pointer and the
NIC-reported length, validates that the packet is large enough to
contain ethernet + IP + UDP headers, cross-checks the UDP length field
against available bytes, and returns all three pieces of information
(udp header, payload pointer, payload length) callers typically need.

The old helpers are kept for now; callers will be converted in subsequent
commits.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
---
 include/net.h |  9 +++++++++
 net/net.c     | 40 ++++++++++++++++++++++++++++++++++++++++
 2 files changed, 49 insertions(+)

diff --git a/include/net.h b/include/net.h
index 43d718353a..bdf39bc531 100644
--- a/include/net.h
+++ b/include/net.h
@@ -308,6 +308,15 @@ static inline int net_eth_to_udplen(char *pkt)
 	return ntohs(udp->uh_ulen) - 8;
 }
 
+struct net_udp_pkt {
+	struct udphdr *udp;
+	void *payload;
+	unsigned int len;
+};
+
+int net_eth_to_udp(char *pkt, unsigned int framelen,
+		   struct net_udp_pkt *udp_pkt);
+
 int net_checksum_ok(unsigned char *, int);	/* Return true if cksum OK	*/
 uint16_t net_checksum(unsigned char *, int);	/* Calculate the checksum	*/
 
diff --git a/net/net.c b/net/net.c
index fc32c4562b..67c0eeb2ae 100644
--- a/net/net.c
+++ b/net/net.c
@@ -60,6 +60,46 @@ const char *net_get_domainname(void)
 	return net_domainname;
 }
 
+/**
+ * net_eth_to_udp - extract and validate UDP payload from an ethernet frame
+ * @pkt:	pointer to start of ethernet frame
+ * @framelen:	total frame length as reported by the NIC
+ * @udp_pkt:	output struct, filled on success
+ *
+ * Validates that the frame is large enough to contain the ethernet, IP and
+ * UDP headers and clamps the reported UDP payload length to what is actually
+ * available in the frame.
+ *
+ * Return: 0 on success, negative error code on malformed/short packets.
+ */
+int net_eth_to_udp(char *pkt, unsigned int framelen,
+		   struct net_udp_pkt *udp_pkt)
+{
+	unsigned int hdr_len = ETHER_HDR_SIZE + sizeof(struct iphdr) +
+			       sizeof(struct udphdr);
+	struct udphdr *udp;
+	unsigned int payload_len;
+
+	if (framelen < hdr_len)
+		return -EINVAL;
+
+	udp = (struct udphdr *)((struct iphdr *)(pkt + ETHER_HDR_SIZE) + 1);
+
+	if (ntohs(udp->uh_ulen) < sizeof(struct udphdr))
+		return -EINVAL;
+
+	payload_len = ntohs(udp->uh_ulen) - sizeof(struct udphdr);
+
+	if (payload_len > framelen - hdr_len)
+		return -EINVAL;
+
+	udp_pkt->udp = udp;
+	udp_pkt->payload = (char *)(udp + 1);
+	udp_pkt->len = payload_len;
+
+	return 0;
+}
+
 int net_checksum_ok(unsigned char *ptr, int len)
 {
 	return net_checksum(ptr, len) == 0xffff;

-- 
2.47.3



