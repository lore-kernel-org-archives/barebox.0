Delivery-date: Mon, 10 Jun 2024 09:51:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGZor-003ZsA-1U
	for lore@lore.pengutronix.de;
	Mon, 10 Jun 2024 09:51:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGZoq-0003an-PI
	for lore@pengutronix.de; Mon, 10 Jun 2024 09:51:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FMb+712w4Qu5oDXxZIkCXsdr2Da3RztVTjwEDvbxvJ4=; b=DurkuiiKjG/7Ea1kFIDhPbYqON
	dUtqdazMgzDt3uTGS5SBOCT9RDIQcylOFeMLAHLKd9YXv0WrblVfc1eTV5x85Y4j0+6MoP1b4yvoC
	jBvR+v4kuzoe8gRcl21X4GzhScLj6y124tNI49aD5Bd6GCrvNGioTVKfRSFxrYKpojfojW0oHHo3E
	4A/IG4njcQCtRJxGXXaOW95caZIp+hiYNbd5M8u2E9ImXCeg2QgulFvFkdPBnQpSxkO+l9fhPLGM8
	MC/ILdUN5jDC1ddra2V1Gx6UwYjRd7Jn+lev0wmG4jDVKnfind884oIrndwYQB3luQxAUjJPglo/H
	1agLMzSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGZoB-00000004824-44JU;
	Mon, 10 Jun 2024 07:51:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGZo6-0000000480C-2wXg
	for barebox@lists.infradead.org;
	Mon, 10 Jun 2024 07:51:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sGZo2-0003Jk-Vr; Mon, 10 Jun 2024 09:51:06 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sGZo2-001Feo-Ir; Mon, 10 Jun 2024 09:51:06 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sGZo2-003PNM-1Z;
	Mon, 10 Jun 2024 09:51:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 10 Jun 2024 09:51:03 +0200
Message-Id: <20240610075105.812496-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240610075105.812496-1-s.hauer@pengutronix.de>
References: <20240610075105.812496-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240610_005110_787260_4151469A 
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/5] net: add edev argument to net_set_gateway()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Although we currently can't handle multiple gateways, a gateway is
specific to a network device. Pass the struct eth_device * to
net_set_gateway() for better integration of a real network stack later.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/net.h | 2 +-
 net/dhcp.c    | 2 +-
 net/ifup.c    | 2 +-
 net/net.c     | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/include/net.h b/include/net.h
index 5a6dd9ca7b..1933623936 100644
--- a/include/net.h
+++ b/include/net.h
@@ -254,7 +254,7 @@ void net_set_serverip(IPaddr_t ip);
 const char *net_get_server(void);
 void net_set_serverip_empty(IPaddr_t ip);
 void net_set_netmask(struct eth_device *edev, IPaddr_t ip);
-void net_set_gateway(IPaddr_t ip);
+void net_set_gateway(struct eth_device *edev, IPaddr_t ip);
 void net_set_nameserver(IPaddr_t ip);
 void net_set_domainname(const char *name);
 IPaddr_t net_get_ip(struct eth_device *edev);
diff --git a/net/dhcp.c b/net/dhcp.c
index e1025bf91b..045ccc0183 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -574,7 +574,7 @@ int dhcp_set_result(struct eth_device *edev, struct dhcp_result *res)
 
 	net_set_ip(edev, res->ip);
 	net_set_netmask(edev, res->netmask);
-	net_set_gateway(res->gateway);
+	net_set_gateway(edev, res->gateway);
 	net_set_nameserver(res->nameserver);
 
 	set_res(&global_dhcp_bootfile, res->bootfile);
diff --git a/net/ifup.c b/net/ifup.c
index 2e1a5529a8..c79aa445f5 100644
--- a/net/ifup.c
+++ b/net/ifup.c
@@ -136,7 +136,7 @@ static int source_env_network(struct eth_device *edev)
 		net_set_ip(edev, ipaddr);
 		net_set_netmask(edev, netmask);
 		if (gateway)
-			net_set_gateway(gateway);
+			net_set_gateway(edev, gateway);
 		if (serverip)
 			net_set_serverip(serverip);
 	}
diff --git a/net/net.c b/net/net.c
index a9d1306354..4703842f43 100644
--- a/net/net.c
+++ b/net/net.c
@@ -353,7 +353,7 @@ void net_set_netmask(struct eth_device *edev, IPaddr_t nm)
 	edev->netmask = nm;
 }
 
-void net_set_gateway(IPaddr_t gw)
+void net_set_gateway(struct eth_device *edev, IPaddr_t gw)
 {
 	net_gateway = gw;
 }
-- 
2.39.2



