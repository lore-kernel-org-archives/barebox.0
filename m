Delivery-date: Thu, 17 Jul 2025 16:17:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ucPQm-000sTQ-0g
	for lore@lore.pengutronix.de;
	Thu, 17 Jul 2025 16:17:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ucPQl-0008Fj-Kl
	for lore@pengutronix.de; Thu, 17 Jul 2025 16:17:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=maKz+Ud2r6nn+qcRTsoh1TIoc4hGdaFWV2G6Hjcp8Ng=; b=j097WwnWlEGMbgLFdnf4tZt80Q
	N0jxFF+6DQKLf4H5oTm6MAwK8/kN4MPoBR01QmJ1gV3jFHedFSqCnVPnwGHfYIG9K7pjgwVlWA6Ml
	HpWe6Sgn2H4MUr+BmGqQS8J2j0VY/48LlR9gDKUKJR0LLDCscd1vUBz4TOGp7MogXvfst9Dd0HEF2
	K41LuuS5xpHvT7LBuI7wzk10i1Q7yKsfvVqXFQuEYq/qj0IFZvXl1YZ/uopSsZv7oMWAWRUWW8ZeI
	kgE+6Y2jR2myIhjjBjJcWEHkRUBz2Je6Hft8nvO8udh0suFVyxwpkJr6NpnDf5C59bUnyk0iA8WoG
	8xlAsfwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucPQ3-0000000ALPU-08XO;
	Thu, 17 Jul 2025 14:17:07 +0000
Received: from mail-108-mta159.mxroute.com ([136.175.108.159])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucORc-0000000AE3A-33Ox
	for barebox@lists.infradead.org;
	Thu, 17 Jul 2025 13:14:41 +0000
Received: from filter006.mxroute.com ([136.175.111.3] filter006.mxroute.com)
 (Authenticated sender: mN4UYu2MZsgR)
 by mail-108-mta159.mxroute.com (ZoneMTA) with ESMTPSA id 1981885c8ef0008631.001
 for <barebox@lists.infradead.org>
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
 Thu, 17 Jul 2025 13:14:37 +0000
X-Zone-Loop: 32ebf13be02c10fcbe2455b75aadfcc203474524426d
X-Originating-IP: [136.175.111.3]
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mboxify.com
	; s=x; h=Content-Transfer-Encoding:MIME-Version:Date:Subject:To:From:Sender:
	Reply-To:Cc:Content-Type:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
	List-Owner:List-Archive; bh=maKz+Ud2r6nn+qcRTsoh1TIoc4hGdaFWV2G6Hjcp8Ng=; b=g
	b/+z66oL9KvTbo+pMTVednTjXVJA6QGbYGkjU5G1nky8qqZhMptMPOMIiiVa8jF+qIWvsIUh8QKaV
	0GyAdabNjGyC+eDb7hI78/jdebJT8mxy1ENnbs4UsE7VXGIWy2KusIEDuuVNDpDdMR8vFMCKM6j7n
	X61lFiEFofO7Fg8jz8186i/kKhLvpvVEIwxI3eg4cgiTBihxD7V19jtUdh/uWZWw3DVt1R9xc5bOj
	LKFeMY+1Y4G9vw0YppGmaxsBBhe8xt8t2+ahoVy6fWgwrHYBCA4sAsgM7A+Ndj64ioDDYgUzJB6eW
	BmRyYglD2X/4krJz44SDt9N58SvMdgRQQ==;
From: Bo Sun <bo@mboxify.com>
To: barebox@lists.infradead.org
Date: Thu, 17 Jul 2025 21:14:31 +0800
Message-Id: <20250717131431.1127636-1-bo@mboxify.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authenticated-Id: bo@mboxify.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250717_061440_852565_17F8D0EC 
X-CRM114-Status: GOOD (  10.12  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] of: platform: rename parameter 'bus' to 'node' in of_platform_bus_create()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The parameter represents a device tree node, not specifically a bus.
Use more accurate naming following device tree conventions.

Signed-off-by: Bo Sun <bo@mboxify.com>
---
 drivers/of/platform.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index 3600b5f9c1..092ec39b05 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -399,14 +399,14 @@ static inline struct device *of_amba_device_create(struct device_node *np)
 
 /**
  * of_platform_bus_create() - Create a device for a node and its children.
- * @bus: device node of the bus to instantiate
+ * @node: device node of the bus to instantiate
  * @matches: match table for bus nodes
  * @parent: parent for new device, or NULL for top level.
  *
  * Creates a platform_device for the provided device_node, and optionally
  * recursively create devices for all the child nodes.
  */
-static int of_platform_bus_create(struct device_node *bus,
+static int of_platform_bus_create(struct device_node *node,
 				const struct of_device_id *matches,
 				struct device *parent)
 {
@@ -415,22 +415,22 @@ static int of_platform_bus_create(struct device_node *bus,
 	int rc = 0;
 
 	/* Make sure it has a compatible property */
-	if (!of_get_property(bus, "compatible", NULL)) {
+	if (!of_get_property(node, "compatible", NULL)) {
 		pr_debug("%s() - skipping %pOF, no compatible prop\n",
-			__func__, bus);
+			__func__, node);
 		return 0;
 	}
 
-	if (of_device_is_compatible(bus, "arm,primecell")) {
-		if (of_amba_device_create(bus))
+	if (of_device_is_compatible(node, "arm,primecell")) {
+		if (of_amba_device_create(node))
 			return 0;
 	}
 
-	dev = of_platform_device_create(bus, parent);
-	if (!dev || !of_match_node(matches, bus))
+	dev = of_platform_device_create(node, parent);
+	if (!dev || !of_match_node(matches, node))
 		return 0;
 
-	for_each_child_of_node(bus, child) {
+	for_each_child_of_node(node, child) {
 		pr_debug("   create child: %pOF\n", child);
 		rc = of_platform_bus_create(child, matches, dev);
 		if (rc)


