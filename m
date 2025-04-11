Delivery-date: Fri, 11 Apr 2025 09:44:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u393l-00BA3J-1C
	for lore@lore.pengutronix.de;
	Fri, 11 Apr 2025 09:44:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u393k-00065w-CH
	for lore@pengutronix.de; Fri, 11 Apr 2025 09:44:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3sI4MPrAYjojCt3ps2pn7SzRFbb5m20ujM92g6XO7Zs=; b=SWMB6htsHH2/T3Bn/HoHuhLIHb
	O/aLiSjFF+04NI8bDAnO7Hd1tMoe6b56FX/kTkye/gEmY0janJSHeIRwxa1snyRFTOPMWtrZ50efB
	FeB1U3eYKpHF7ipwTJHCg73NivuGz3m3OVtM7TmMSgun4BC38nvhHYwbPW2xPji9cwfcj2R9tbCnB
	ht0gHujK1Dj/z4VcLj/ltJr7sTX4bO9xtTYchJgRkHthycLSkOYNuZ6L0V8Xf5RQlY76D2K2tBQW1
	bBDqOpi1vjkrdS48Y6bnXFmJSSIJfCijiZ/flfFrp4s8kXOcF7c4PbZ5/dR99UVcJSCG6QO/tKklC
	Xb8so1Rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u393B-0000000Cv2R-199q;
	Fri, 11 Apr 2025 07:43:45 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u390P-0000000CuKV-48U0
	for barebox@bombadil.infradead.org;
	Fri, 11 Apr 2025 07:40:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=3sI4MPrAYjojCt3ps2pn7SzRFbb5m20ujM92g6XO7Zs=; b=VEE58DhbOmI3fIb4xL2fAGPxlr
	fv+okWksT0FKl7gtChy/QoCOLVTGuTS0qgBFg0tEOwINMX2/dwcOh4phkZlBhN+WQrhab+U/A4LG5
	vfTjWoZRRueqLIYO92mUNKRzHFlIp1gVJR81smEeyn2obdK+saL+xUKZK3IniSL2aHOMnjimhol09
	Twr86zjPJAOPX811zsAQyKfwqJNPS86usr2gIE+tyL6fuRw9onTjLy5SAvLBBwEunGqhwgle7zSz+
	4PCq6uI2ZxC/ydrc5991q21OU1Tt/HpUz9uzpxqO8Ryw5HVmhHqueo/QO719jPKulvqy5DTfxlfCx
	///y6lkA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u390M-00000008y0v-3mkx
	for barebox@lists.infradead.org;
	Fri, 11 Apr 2025 07:40:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u390I-0004uT-Nf; Fri, 11 Apr 2025 09:40:46 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u390I-004OjC-1l;
	Fri, 11 Apr 2025 09:40:46 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u390I-008WBo-1S;
	Fri, 11 Apr 2025 09:40:46 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 11 Apr 2025 09:40:36 +0200
Message-Id: <20250411074045.2019372-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250411074045.2019372-1-a.fatoum@pengutronix.de>
References: <20250411074045.2019372-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250411_084051_267458_DB7FD9FD 
X-CRM114-Status: GOOD (  11.74  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 01/10] net: factor out eth_of_get_fixup_node
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
index a3c466784630..b742e9499434 100644
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
index bc2527de3670..16857ac838dd 100644
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



