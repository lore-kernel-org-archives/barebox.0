Delivery-date: Tue, 09 Aug 2022 15:22:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLPBd-00HPgG-Jy
	for lore@lore.pengutronix.de; Tue, 09 Aug 2022 15:22:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLPBc-0001vS-Mf
	for lore@pengutronix.de; Tue, 09 Aug 2022 15:22:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:
	To:From:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=HJpwMtRP3ifjjbvczitLc6pDgp4rodkRUP0X9sbdXJM=; b=3pFWvdJuOPNT/70yPUczax54mA
	LdTZFElCH5CfGrLl+jNESp4qLCKXnWBQF/FmoeXXDfxJyVFujKSAZTAgX30GsmUbr0eJpYOLxvu45
	6TuFx5mN89n3dEtkBAhiQxmpfQDb+A6wcoK/lISEXAqBEW9BF0kjRl1IxL9DCC+EZ0VAyztFtz1vb
	I8QXXTsM8amIJssu+h2ND31LUaQRPinEX7+a5S7rgKstxQsj/oJIvR/6BpcS9yCpgVVKRqCQZN51P
	nRf2d/mZe2nyToqHLC3pZlw//D6aY+gwFP7cpKV4zhfVXbK5LUQGmCslRam8oNgtAOOWvvD4cDMx4
	26DHDaUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLPAF-0044Ut-IZ; Tue, 09 Aug 2022 13:20:56 +0000
Received: from smtpout140.security-mail.net ([85.31.212.145])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLPA2-0044RY-FP
	for barebox@lists.infradead.org; Tue, 09 Aug 2022 13:20:46 +0000
Received: from localhost (localhost [127.0.0.1])
	by fx405.security-mail.net (Postfix) with ESMTP id AAFDA3236BD
	for <barebox@lists.infradead.org>; Tue,  9 Aug 2022 15:20:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
	s=sec-sig-email; t=1660051239;
	bh=yFjrOQmWN7JhXXDx/AoEX7Nn++ciygqjBX44LcIK/l0=;
	h=From:To:Cc:Subject:Date;
	b=Iz+EaEjyDaMbxA2jx5G8HqOtA2vvnnK3cLRx1+LtxpR5A3t4TlkCSTumAy7BXrFqB
	 BRP0bjDbMr8VS12ea8JD7WcqR+W4rKrm+GBKsHvA7jW1ekzAiROAe2dAitfmB++V0y
	 fuHE9gZ2ltCqBwRMyjuAiT3TsCMU+Gw6A/RNCW0g=
Received: from fx405 (localhost [127.0.0.1])
	by fx405.security-mail.net (Postfix) with ESMTP id 1C7BE323811
	for <barebox@lists.infradead.org>; Tue,  9 Aug 2022 15:20:31 +0200 (CEST)
X-Virus-Scanned: E-securemail
Secumail-id: <f403.62f25f1d.b620e.0>
Received: from zimbra2.kalray.eu (unknown [217.181.231.53])
	by fx405.security-mail.net (Postfix) with ESMTPS id B850F3235E5
	for <barebox@lists.infradead.org>; Tue,  9 Aug 2022 15:20:29 +0200 (CEST)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1])
	by zimbra2.kalray.eu (Postfix) with ESMTPS id 93EF727E0541;
	Tue,  9 Aug 2022 15:20:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by zimbra2.kalray.eu (Postfix) with ESMTP id 7D05B27E0545;
	Tue,  9 Aug 2022 15:20:29 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 7D05B27E0545
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
	s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1660051229;
	bh=HJpwMtRP3ifjjbvczitLc6pDgp4rodkRUP0X9sbdXJM=;
	h=From:To:Date:Message-Id;
	b=AbUhWrMAnNkZxeC8qBJ8M8ensRqmBwWiTcKfkPTfawmNf67XlI9rvQrvOWXyAVPy9
	 vYHfm6/Zkt8c0p09YYClB+uUuKW5W6goRdDOO/Pv4JzU+URxkS0ryUvdQtvBziUhlJ
	 sYLGlX+mHK9bGjarD5s7RnrB+WEW77qoaiAxk0B4=
Received: from zimbra2.kalray.eu ([127.0.0.1])
	by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id Z1UshfaEy49f; Tue,  9 Aug 2022 15:20:29 +0200 (CEST)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
	by zimbra2.kalray.eu (Postfix) with ESMTPSA id 6401927E0541;
	Tue,  9 Aug 2022 15:20:29 +0200 (CEST)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
Date: Tue,  9 Aug 2022 15:20:17 +0200
Message-Id: <20220809132021.7110-1-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: by Secumail
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220809_062042_841047_5E187689 
X-CRM114-Status: GOOD (  11.97  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [RFC PATCH 1/5] net: Add a function to retrieve UDP connection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add a function that search for a UDP connection based on it's source
port. This function can be easily extended to do the same for TCP.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 net/net.c | 29 ++++++++++++++++++++---------
 1 file changed, 20 insertions(+), 9 deletions(-)

diff --git a/net/net.c b/net/net.c
index eae45e1843..c01bf49b92 100644
--- a/net/net.c
+++ b/net/net.c
@@ -36,6 +36,22 @@ IPaddr_t net_gateway;
 static IPaddr_t net_nameserver;
 static char *net_domainname;
 
+static LIST_HEAD(connection_list);
+
+static struct net_connection *net_ip_get_con(int proto, uint16_t port)
+{
+	struct net_connection *con;
+
+	list_for_each_entry(con, &connection_list, list) {
+		if (con->proto != proto)
+			continue;
+		if (con->proto == IPPROTO_UDP && ntohs(con->udp->uh_sport) == port)
+			return con;
+	}
+
+	return NULL;
+}
+
 void net_set_nameserver(IPaddr_t nameserver)
 {
 	net_nameserver = nameserver;
@@ -358,8 +374,6 @@ IPaddr_t net_get_gateway(void)
 	return net_gateway;
 }
 
-static LIST_HEAD(connection_list);
-
 static struct net_connection *net_new(struct eth_device *edev, IPaddr_t dest,
 				      rx_handler_f *handler, void *ctx)
 {
@@ -587,15 +601,12 @@ static int net_handle_udp(unsigned char *pkt, int len)
 	struct iphdr *ip = (struct iphdr *)(pkt + ETHER_HDR_SIZE);
 	struct net_connection *con;
 	struct udphdr *udp;
-	int port;
 
 	udp = (struct udphdr *)(ip + 1);
-	port = ntohs(udp->uh_dport);
-	list_for_each_entry(con, &connection_list, list) {
-		if (con->proto == IPPROTO_UDP && port == ntohs(con->udp->uh_sport)) {
-			con->handler(con->priv, pkt, len);
-			return 0;
-		}
+	con = net_ip_get_con(IPPROTO_UDP, ntohs(udp->uh_dport));
+	if (con) {
+		con->handler(con->priv, pkt, len);
+		return 0;
 	}
 	return -EINVAL;
 }
-- 
2.17.1



