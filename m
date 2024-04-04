Delivery-date: Thu, 04 Apr 2024 20:40:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rsS18-00AYdz-17
	for lore@lore.pengutronix.de;
	Thu, 04 Apr 2024 20:40:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rsS16-0003AR-4Q
	for lore@pengutronix.de; Thu, 04 Apr 2024 20:40:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TgGoA4FQcwgEa1TJ80kRky4mX6P69i899IjHCas6FQM=; b=UPViYZoi2/6u2jLGF2unBVz4kx
	CRww+2apSg6THFlpHsmbszamPhOilqXa/WyQayw0XtVWnmcp6JCr4y/vfJpHVoIgpeH9wp4L6yw6e
	8mZvnLKLXZcp6Mp4d8ZOJOKSlRA20vyZg4Ytd82weWAOMnlDsbt3LUfYgsD6G3/t0zfUC8Vws2zVe
	PUl/CmVpF03ddmd0y7NGWlXd8+e+2cx5Y1d5YxPxwlfpcq9OoEnr6zAaswxMsjWYfSmmjOhhDZpaI
	w6Rsna1lUgWbT/OPHXezz/hYL2C5rPnOd3HLUiIZtBxzP2yhCTcpTPjBWUuZQOfimTBzSDQ+Oat7D
	oIo8JCzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsS0X-00000003sLT-3Vsw;
	Thu, 04 Apr 2024 18:40:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsS0N-00000003sG2-1PJP
	for barebox@lists.infradead.org;
	Thu, 04 Apr 2024 18:40:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rsS0I-0001sB-RC; Thu, 04 Apr 2024 20:40:02 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rsS0I-00AQQf-EP; Thu, 04 Apr 2024 20:40:02 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rsS0I-006VVt-19;
	Thu, 04 Apr 2024 20:40:02 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  4 Apr 2024 20:39:53 +0200
Message-Id: <20240404184001.1532897-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240404184001.1532897-1-a.fatoum@pengutronix.de>
References: <20240404184001.1532897-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240404_114007_502667_9E3BC784 
X-CRM114-Status: GOOD (  20.19  )
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
Subject: [PATCH 02/10] net: ip: don't blindly trust driver supplied frame size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We currently assume that the size reported by the network driver
reflects the number of bytes actually transmitted over the wire, but
this is apparently not always the case, at least for the barebox cpsw
and smc95xx drivers. These don't handle hardware checksum offloading
correctly and thus pass extraneous checksum bytes inserted by the
hardware to the network stack as if these were part of the transmitted
frame.

These drivers will be fixed in follow-up commits, but on the off-chance
more drivers are affected, let's use the size reported in the IP header
when doing IP packet processing.

As the old size is needed to dump the packet in net_bad_packet(), this
is moved inside the new function.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 net/net.c | 43 ++++++++++++++++++++++++++++++++++++++++---
 1 file changed, 40 insertions(+), 3 deletions(-)

diff --git a/net/net.c b/net/net.c
index 2625fb8604fb..56a599d0bc61 100644
--- a/net/net.c
+++ b/net/net.c
@@ -645,6 +645,43 @@ static int net_handle_udp(unsigned char *pkt, int len)
 	return -EINVAL;
 }
 
+static struct iphdr *ip_verify_size(unsigned char *pkt, int *total_len_nic)
+{
+	struct iphdr *ip = (struct iphdr *)(pkt + ETHER_HDR_SIZE);
+	int total_len_pkt;
+
+	total_len_pkt = ntohs(ip->tot_len) + ETHER_HDR_SIZE;
+
+	/* Only trust the packet's size if it's within bounds */
+	if (*total_len_nic < sizeof(struct ethernet) + sizeof(struct iphdr) ||
+	    *total_len_nic < total_len_pkt) {
+		net_bad_packet(pkt, *total_len_nic);
+		return NULL;
+	}
+
+#ifdef DEBUG
+	/* Hitting this warning means we have trailing bytes after the IP
+	 * payload that are not needed for padding.
+	 *
+	 * This may be an indication that the NIC driver is doing funny
+	 * offloading stuff it shouldn't, but can also mean that some sender
+	 * in the network likes to waste bit time for nought.
+	 *
+	 * We can't differentiate between the two, so we just print the
+	 * warning when DEBUG is defined, so developers may investigate the
+	 * reason without annoying users about something that might not even
+	 * be barebox's fault.
+	 */
+	if (WARN_ON_ONCE(*total_len_nic > total_len_pkt &&
+			 *total_len_nic > 64)) {
+		net_bad_packet(pkt, *total_len_nic);
+	}
+#endif
+
+	*total_len_nic = total_len_pkt;
+	return ip;
+}
+
 static int ping_reply(struct eth_device *edev, unsigned char *pkt, int len)
 {
 	struct ethernet *et = (struct ethernet *)pkt;
@@ -709,10 +746,10 @@ static int net_handle_ip(struct eth_device *edev, unsigned char *pkt, int len)
 
 	pr_debug("%s\n", __func__);
 
-	if (len < sizeof(struct ethernet) + sizeof(struct iphdr) ||
-		len < ETHER_HDR_SIZE + ntohs(ip->tot_len)) {
+	ip = ip_verify_size(pkt, &len);
+	if (!ip) {
 		pr_debug("%s: bad len\n", __func__);
-		goto bad;
+		return 0;
 	}
 
 	if ((ip->hl_v & 0xf0) != 0x40)
-- 
2.39.2



