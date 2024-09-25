Delivery-date: Wed, 25 Sep 2024 16:01:49 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stSaS-002cNE-2g
	for lore@lore.pengutronix.de;
	Wed, 25 Sep 2024 16:01:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stSaT-0002lP-2y
	for lore@pengutronix.de; Wed, 25 Sep 2024 16:01:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Txo7f66vWdS5P9AlpIizNSQ3by0ca4hHg6kHjJNtAuI=; b=bI9HzJunA3egGcHEbQ5s+3I/Ov
	4HsghDPIq5royPOil9W7qL3CYGu4vfmn3EyRlG1Z/kSREfVxd501g+YV5AN8+7FNImJRKXZ6nkT32
	ypAVnm7tdZbN+o6ezlDigc6bwIK1Edq0cWHO/WwxYDAriGtMdVwfB0WSPa2epNctrtbTqdi0JO3PW
	D8BZovQp9hZzeJQPEKeIBUktKuIcJGh0QCEAu6myg52jTSnGNSCiCiy8btdosCf7GUWV+ZB4ciTo9
	IyF5pqj6lX0SYnp/wuMIwOkk1h3uyYwJpEUXWU8sAe7Hzse7WpVa0wd9+o2XcBp7BA8u9ZtJSPnh1
	/ITBoSVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stSZy-00000005VZz-2A8m;
	Wed, 25 Sep 2024 14:01:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stSZu-00000005VWg-03Lp
	for barebox@lists.infradead.org;
	Wed, 25 Sep 2024 14:01:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stSZs-0002JQ-Op; Wed, 25 Sep 2024 16:01:12 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stSZs-001SlH-7r; Wed, 25 Sep 2024 16:01:12 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stSZs-00DCyS-1y;
	Wed, 25 Sep 2024 16:01:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 25 Sep 2024 16:01:13 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240925-of-graph-fixes-v1-3-c0a3ac989b0c@pengutronix.de>
References: <20240925-of-graph-fixes-v1-0-c0a3ac989b0c@pengutronix.de>
In-Reply-To: <20240925-of-graph-fixes-v1-0-c0a3ac989b0c@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1727272872; l=1064;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=E3ldnGien64iy+uS7AtAYk9Mr+0Cuh1b4Mz0eqnkFyg=;
 b=iac8cOoa+LEUNliBwJ/CMq7RxE8yg6wk+bOQUKr8otQF93TAolPGlRjIiwRzB7LIHLKTd/k+z
 WH3HpA/B1nlAhF3ODGuqIIUabv4VWyQUDwKZc8z6Vww2ICb+7V/ulxD
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240925_070114_196406_71738596 
X-CRM114-Status: GOOD (  10.32  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 3/5] of: of_graph: honour ports subnode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The of_graph ports of a node nowadays are usually collected under a
'ports' subnode instead of being directly under the devices node.
Handle this case correctly.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/base.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index fbbc3316fc..398e39340f 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -3271,11 +3271,14 @@ EXPORT_SYMBOL(of_graph_parse_endpoint);
  *
  * Return: A 'port' node pointer with refcount incremented.
  */
-struct device_node *of_graph_get_port_by_id(struct device_node *node, u32 id)
+struct device_node *of_graph_get_port_by_id(struct device_node *parent, u32 id)
 {
-	struct device_node *port;
+	struct device_node *port, *node = of_get_child_by_name(parent, "ports");
+
+	if (node)
+		parent = node;
 
-	for_each_child_of_node(node, port) {
+	for_each_child_of_node(parent, port) {
 		u32 port_id = 0;
 
 		if (strncmp(port->name, "port", 4) != 0)

-- 
2.39.5



