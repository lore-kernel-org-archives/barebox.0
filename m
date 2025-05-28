Delivery-date: Wed, 28 May 2025 16:36:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKHsv-001DdB-0y
	for lore@lore.pengutronix.de;
	Wed, 28 May 2025 16:36:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKHsu-0001wx-3y
	for lore@pengutronix.de; Wed, 28 May 2025 16:36:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5Y1XldcXCu91jT0XGttHCA+8n1sUiSPPeHIeWUSugVM=; b=bEGsJzD24lEPBrnmWu5eXX0T23
	5FDSjyZxQ3/X0e5wVr1sz89YYPUwmgRXcRG0Owbnmbi36ViVP5R4CSMbK/fRVKtkqYtjlDUyAYDUL
	3VLkab9w2IkpW6mU6lc9h/xo5RyGbHEGiJlknhk8AwlD0igcdU9sFdWwJHA6+9SmU1WcQKiRo72oi
	hnU30Mplis/aQy/y6aBngkiDCIPDWRxJofuwyKTZTo9dCc6s9HvHWoBcruZYpnG0MRl4vpXc219CH
	fUVNJ6PwbAYghu15gJXcBdpXor+5kqcxXTqysUs5uJSyOqphTu/gqa3vSDInTm77AvxGvbRbms4C0
	syU8/3og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKHsP-0000000DQGb-0RWJ;
	Wed, 28 May 2025 14:35:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKHns-0000000DPDU-0Ohr
	for barebox@lists.infradead.org;
	Wed, 28 May 2025 14:30:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uKHnp-0006Ey-Cc; Wed, 28 May 2025 16:30:45 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uKHnp-000bXg-0d;
	Wed, 28 May 2025 16:30:45 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uKHnp-001qOC-0L;
	Wed, 28 May 2025 16:30:45 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 28 May 2025 16:30:35 +0200
Message-Id: <20250528143043.434446-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250528143043.434446-1-a.fatoum@pengutronix.de>
References: <20250528143043.434446-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_073048_140478_8ECAAD84 
X-CRM114-Status: GOOD (  12.96  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 02/10] net: export list of registered ethernet addresses
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Network stack keeps an ethaddr_list of Ethernet addresses that were
registered by drivers and board code.

The list currently lacks ethernet devices for which a net_device already
existed. If a net_device is added later on, the list is consulted, but
the element is not removed.

This means ethaddr_list is "the list of registered Ethernet addresses
that were added before the relevant device has been probed". Make it more
useful by genericising it to be "the list of registered Ethernet addresses".

This introduces no functional change (only consumer is fixup code that
handles both cases already), but it allows future board code to consult
the list to check which Ethernet addresses were actually assigned.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/net.h |  9 +++++++++
 net/eth.c     | 11 ++---------
 2 files changed, 11 insertions(+), 9 deletions(-)

diff --git a/include/net.h b/include/net.h
index 356f23d1d11d..b0fc8727a000 100644
--- a/include/net.h
+++ b/include/net.h
@@ -613,4 +613,13 @@ void ifdown_all(void);
 
 extern struct class eth_class;
 
+struct eth_ethaddr {
+	struct list_head list;
+	u8 ethaddr[ETH_ALEN];
+	int ethid;
+	struct device_node *node;
+};
+
+extern struct list_head ethaddr_list;
+
 #endif /* __NET_H__ */
diff --git a/net/eth.c b/net/eth.c
index fedccf33db07..857bd2ee70dd 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -23,14 +23,7 @@
 
 DEFINE_DEV_CLASS(eth_class, "eth");
 
-struct eth_ethaddr {
-	struct list_head list;
-	u8 ethaddr[ETH_ALEN];
-	int ethid;
-	struct device_node *node;
-};
-
-static LIST_HEAD(ethaddr_list);
+LIST_HEAD(ethaddr_list);
 
 int eth_set_promisc(struct eth_device *edev, bool enable)
 {
@@ -102,7 +95,7 @@ void eth_register_ethaddr(int ethid, const char *ethaddr)
 	for_each_netdev(edev) {
 		if (edev->dev.id == ethid) {
 			register_preset_mac_address(edev, ethaddr);
-			return;
+			break;
 		}
 	}
 
-- 
2.39.5



