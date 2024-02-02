Delivery-date: Fri, 02 Feb 2024 16:12:39 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rVvDZ-0001VE-2u
	for lore@lore.pengutronix.de;
	Fri, 02 Feb 2024 16:12:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rVvDZ-0002ur-06
	for lore@pengutronix.de; Fri, 02 Feb 2024 16:12:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JAgjG74tlEmD7RK6LjbQRFCED061j3Ieu4vJSszDX4w=; b=z+ysC5okRTYH8FDHPYccHSCMel
	ql9LZseGkZr7suu1FEpJQu4fTe6+TpdjBf3pwnRfGVL7fPQ4QwIsCQKI1UhbQ12nRVXvchdmRPoJX
	hw91wUgMY4CCLWK5wwy/QSOXQXsywgKdzbRq2OKSKEa2nEhsWqMYxkdReMexiAEJNpFGPhg8IKRmo
	Gi9cwj4687qXq+yHBXvxNwy98oMvLomjpJO+K5GA8kwDvDXFWPdUJTEwCobFSBAmGi7Bx2O3FmrKL
	Ot0Se0Lz+1EFxA1npDZ9TcPLhFucU7XHT3aGaRspO4axmunDJkF1fP4I0ZcZnIgLlGMSgw9kfSBXr
	By5xwntQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVvCw-0000000BvwP-3Sid;
	Fri, 02 Feb 2024 15:11:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVvCs-0000000Bvty-0i79
	for barebox@lists.infradead.org;
	Fri, 02 Feb 2024 15:11:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rVvCn-0002Yt-PG; Fri, 02 Feb 2024 16:11:49 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rVvCn-0045UK-Cj; Fri, 02 Feb 2024 16:11:49 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rVvCn-000x2z-0v;
	Fri, 02 Feb 2024 16:11:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  2 Feb 2024 16:11:47 +0100
Message-Id: <20240202151147.226876-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240202151147.226876-1-s.hauer@pengutronix.de>
References: <20240202151147.226876-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240202_071154_244463_FE632C69 
X-CRM114-Status: GOOD (  13.52  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/2] eth: replace ethaddr_to_string() with %pM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Now that we can print MAC addresses using the %pM format specifier we
can get rid of ethaddr_to_string(). Do this treewide.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/protonic-imx6/board.c |  5 +----
 arch/arm/boards/skov-imx6/board.c     |  5 +----
 include/net.h                         |  1 -
 lib/parameter.c                       |  3 +--
 net/eth.c                             | 13 +++++--------
 net/lib.c                             |  7 -------
 net/net.c                             |  8 ++------
 7 files changed, 10 insertions(+), 32 deletions(-)

diff --git a/arch/arm/boards/protonic-imx6/board.c b/arch/arm/boards/protonic-imx6/board.c
index 5c5e7d6155..9e62dc1544 100644
--- a/arch/arm/boards/protonic-imx6/board.c
+++ b/arch/arm/boards/protonic-imx6/board.c
@@ -200,10 +200,7 @@ static int prt_imx6_set_mac(struct prt_imx6_priv *priv,
 		return 0;
 
 	if (!is_valid_ether_addr(&rfid->mac[0])) {
-		unsigned char ethaddr_str[sizeof("xx:xx:xx:xx:xx:xx")];
-
-		ethaddr_to_string(&rfid->mac[0], ethaddr_str);
-		dev_err(dev, "bad MAC addr: %s\n", ethaddr_str);
+		dev_err(dev, "bad MAC addr: %pM\n", &rfid->mac[0]);
 
 		return -EILSEQ;
 	}
diff --git a/arch/arm/boards/skov-imx6/board.c b/arch/arm/boards/skov-imx6/board.c
index b3f170cfdf..8ebb4a6e58 100644
--- a/arch/arm/boards/skov-imx6/board.c
+++ b/arch/arm/boards/skov-imx6/board.c
@@ -30,10 +30,7 @@ static int eth_of_fixup_node(struct device_node *root, const char *node_path,
 	int ret;
 
 	if (!is_valid_ether_addr(ethaddr)) {
-		unsigned char ethaddr_str[sizeof("xx:xx:xx:xx:xx:xx")];
-
-		ethaddr_to_string(ethaddr, ethaddr_str);
-		dev_err(skov_priv->dev, "The mac-address %s is invalid.\n", ethaddr_str);
+		dev_err(skov_priv->dev, "The mac-address %pM is invalid.\n", ethaddr);
 		return -EINVAL;
 	}
 
diff --git a/include/net.h b/include/net.h
index 40287a3503..ffc1093ae6 100644
--- a/include/net.h
+++ b/include/net.h
@@ -358,7 +358,6 @@ IPaddr_t getenv_ip(const char *name);
 int setenv_ip(const char *name, IPaddr_t ip);
 
 int string_to_ethaddr(const char *str, u8 enetaddr[6]);
-void ethaddr_to_string(const u8 enetaddr[6], char *str);
 
 #ifdef CONFIG_NET_RESOLV
 int resolv(const char *host, IPaddr_t *ip);
diff --git a/lib/parameter.c b/lib/parameter.c
index aac33e3a19..dc80f3f858 100644
--- a/lib/parameter.c
+++ b/lib/parameter.c
@@ -846,7 +846,6 @@ struct param_mac {
 };
 
 int string_to_ethaddr(const char *str, u8 enetaddr[6]);
-void ethaddr_to_string(const u8 enetaddr[6], char *str);
 
 static inline struct param_mac *to_param_mac(struct param_d *p)
 {
@@ -894,7 +893,7 @@ static const char *param_mac_get(struct device *dev, struct param_d *p)
 			return NULL;
 	}
 
-	ethaddr_to_string(pm->mac, p->value);
+	sprintf(p->value, "%pM", pm->mac);
 
 	return p->value;
 }
diff --git a/net/eth.c b/net/eth.c
index d1474ec57d..28961e868b 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -55,11 +55,8 @@ int eth_set_ethaddr(struct eth_device *edev, const char *ethaddr)
 
 static void register_preset_mac_address(struct eth_device *edev, const char *ethaddr)
 {
-	unsigned char ethaddr_str[sizeof("xx:xx:xx:xx:xx:xx")];
-
 	if (is_valid_ether_addr(ethaddr)) {
-		ethaddr_to_string(ethaddr, ethaddr_str);
-		dev_info(&edev->dev, "got preset MAC address: %s\n", ethaddr_str);
+		dev_info(&edev->dev, "got preset MAC address: %pM\n", ethaddr);
 		eth_set_ethaddr(edev, ethaddr);
 	}
 }
@@ -557,7 +554,6 @@ void eth_open_all(void)
 
 static int populate_ethaddr(void)
 {
-	char str[sizeof("xx:xx:xx:xx:xx:xx")];
 	struct eth_device *edev;
 	bool generated = false;
 	int ret;
@@ -575,11 +571,12 @@ static int populate_ethaddr(void)
 		if (ret)
 			continue;
 
-		ethaddr_to_string(edev->ethaddr, str);
 		if (generated)
-			dev_notice(&edev->dev, "Generated MAC address from unique id: %s\n", str);
+			dev_notice(&edev->dev, "Generated MAC address from unique id: %pM\n",
+				   edev->ethaddr);
 		else
-			dev_info(&edev->dev, "Got preset MAC address from NVMEM: %s\n", str);
+			dev_info(&edev->dev, "Got preset MAC address from NVMEM: %pM\n",
+				 edev->ethaddr);
 		eth_set_ethaddr(edev, edev->ethaddr);
 	}
 
diff --git a/net/lib.c b/net/lib.c
index d4536441bd..dc6e138f39 100644
--- a/net/lib.c
+++ b/net/lib.c
@@ -37,13 +37,6 @@ int string_to_ethaddr(const char *str, u8 enetaddr[ETH_ALEN])
 	return 0;
 }
 
-void ethaddr_to_string(const u8 enetaddr[ETH_ALEN], char *str)
-{
-	sprintf(str, "%02x:%02x:%02x:%02x:%02x:%02x",
-		 enetaddr[0], enetaddr[1], enetaddr[2], enetaddr[3],
-		 enetaddr[4], enetaddr[5]);
-}
-
 int string_to_ip(const char *s, IPaddr_t *ip)
 {
 	IPaddr_t addr = 0;
diff --git a/net/net.c b/net/net.c
index e38179491d..d72ed81e10 100644
--- a/net/net.c
+++ b/net/net.c
@@ -418,17 +418,13 @@ static struct net_connection *net_new(struct eth_device *edev, IPaddr_t dest,
 	}
 
 	if (!is_valid_ether_addr(edev->ethaddr)) {
-		char str[sizeof("xx:xx:xx:xx:xx:xx")];
-
 		ret = generate_ether_addr(edev->ethaddr, edev->dev.id);
 		if (ret)
 			random_ether_addr(edev->ethaddr);
 
-		ethaddr_to_string(edev->ethaddr, str);
-
-		dev_warn(&edev->dev, "No MAC address set. Using %s %s\n",
+		dev_warn(&edev->dev, "No MAC address set. Using %s %pM\n",
 			 ret == 1 ? "address computed from unique ID" : "random address",
-			 str);
+			 edev->ethaddr);
 		eth_set_ethaddr(edev, edev->ethaddr);
 	}
 
-- 
2.39.2



