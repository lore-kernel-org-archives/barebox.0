Delivery-date: Wed, 28 May 2025 16:35:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKHsr-001Dc4-2A
	for lore@lore.pengutronix.de;
	Wed, 28 May 2025 16:35:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKHsq-0001te-C0
	for lore@pengutronix.de; Wed, 28 May 2025 16:35:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=V2OEAIfAbKr3WEvvZB35YaqMD7m23dKG5iQGy6fArAc=; b=m9uZUDht9YaaJKuxelelCVMxuG
	axurweXp2ej77h7l4/f7NROyg1WZfVFfct72LzSIoQ/xXSpAZUxdxCzvcRvKSLjGggRotvaahSc/X
	lWon+Bh9AdcAhfB9JG8w5YsU32WPFoUhOdU8Jpvq6bzjVMY4uAVpywWU5JVXm+F5+1Mj1UcllAgxC
	y0a/dCDR4ku4gfSdw+QgD0W0xzVKnW8/OmGX/JXv7y111Igb3TnDJJsV7i5nikb72yTU0OJ71cizQ
	akcZ1UH4oMfj5vtWVLyqeYOVxooPTCNV1Ry30i/dPNkJ4lLkwSNkwZMe64yCYUqnwaH9SIM2vWJX5
	qSCk7NOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKHsK-0000000DQCF-4AKV;
	Wed, 28 May 2025 14:35:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKHns-0000000DPDV-0UeH
	for barebox@lists.infradead.org;
	Wed, 28 May 2025 14:30:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uKHnp-0006Ex-As; Wed, 28 May 2025 16:30:45 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uKHnp-000bXd-0U;
	Wed, 28 May 2025 16:30:45 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uKHnp-001qOC-0C;
	Wed, 28 May 2025 16:30:45 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 28 May 2025 16:30:34 +0200
Message-Id: <20250528143043.434446-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250528143043.434446-1-a.fatoum@pengutronix.de>
References: <20250528143043.434446-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_073048_179190_E268A07A 
X-CRM114-Status: GOOD (  12.22  )
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
Subject: [PATCH v2 01/10] net: factor out eth_of_get_fixup_node
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We only know at fixup time, which MAC addresses were actually assigned
to interfaces. Factor out eth_of_get_fixup_node from the MAC address
assignment code, so board code can use this to retrace which MAC
addresses would be fixed up.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/net.h | 12 ++++++++++++
 net/eth.c     | 29 +++++++++++++++++++----------
 2 files changed, 31 insertions(+), 10 deletions(-)

diff --git a/include/net.h b/include/net.h
index 439e0a4c9b61..356f23d1d11d 100644
--- a/include/net.h
+++ b/include/net.h
@@ -128,6 +128,18 @@ static inline void of_eth_register_ethaddr(struct device_node *node,
 void eth_register_ethaddr(int ethid, const char *ethaddr);
 void of_eth_register_ethaddr(struct device_node *node, const char *ethaddr);
 #endif
+
+#ifdef CONFIG_OFTREE
+struct device_node *eth_of_get_fixup_node(struct device_node *root,
+					  const char *node_path, int ethid);
+#else
+static inline struct device_node *eth_of_get_fixup_node(struct device_node *root,
+							const char *node_path, int ethid)
+{
+	return NULL;
+}
+#endif
+
 /*
  *	Ethernet header
  */
diff --git a/net/eth.c b/net/eth.c
index cdacc5ab6b80..fedccf33db07 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -319,19 +319,11 @@ static int eth_param_set_ethaddr(struct param_d *param, void *priv)
 }
 
 #ifdef CONFIG_OFTREE
-static void eth_of_fixup_node(struct device_node *root,
-			      const char *node_path, int ethid,
-			      const u8 ethaddr[ETH_ALEN])
+struct device_node *eth_of_get_fixup_node(struct device_node *root,
+					  const char *node_path, int ethid)
 {
 	struct device_node *bb_node, *fixup_node;
 	char *name;
-	int ret;
-
-	if (!is_valid_ether_addr(ethaddr)) {
-		pr_debug("%s: no valid mac address, cannot fixup\n",
-			 __func__);
-		return;
-	}
 
 	if (node_path) {
 		bb_node = of_find_node_by_path_from(0, node_path);
@@ -344,6 +336,23 @@ static void eth_of_fixup_node(struct device_node *root,
 		fixup_node = of_find_node_by_alias(root, eth);
 	}
 
+	return fixup_node;
+}
+
+static void eth_of_fixup_node(struct device_node *root,
+			      const char *node_path, int ethid,
+			      const u8 ethaddr[ETH_ALEN])
+{
+	struct device_node *fixup_node;
+	int ret;
+
+	if (!is_valid_ether_addr(ethaddr)) {
+		pr_debug("%s: no valid mac address, cannot fixup\n",
+			 __func__);
+		return;
+	}
+
+	fixup_node = eth_of_get_fixup_node(root, node_path, ethid);
 	if (!fixup_node) {
 		pr_debug("%s: no node to fixup\n", __func__);
 		return;
-- 
2.39.5



