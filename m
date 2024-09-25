Delivery-date: Wed, 25 Sep 2024 16:01:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stSaT-002cNt-15
	for lore@lore.pengutronix.de;
	Wed, 25 Sep 2024 16:01:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stSaT-0002lw-FX
	for lore@pengutronix.de; Wed, 25 Sep 2024 16:01:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lWNYlyAKS1Tb9khzT3j8KWZfbf/inkg91SkUIWig7o4=; b=VGLMljpBUsf02r/rd9wnJpYvTm
	WI8Y9fLPc1qicS0UfA8EopxIwqYnRzu37zwXaGzjY74A3vcko5jP06xVHBSqR7JwA+Kt4QdZvGkHr
	IhoYTXl2SmGfVpHT97FSW6inxHgMLrBNjsumBlVWuFsavlbYKtgC3tJX0vcgVqyVWDUMEVqLYbbLR
	o3P2j+5Z2iq+7IO9x+glSPtn13dJRkquWyBFC9M8YXE0PO45Hh54lIJ3P4oNXiNhP39E3eWbmzFij
	R8g3MhF4/T7NDVm4iIQAthSPJWAhdQB0hUTME+CNihjGSNS82PxhpVu3I11uYS4cT+2AbvC9HuPFn
	vjIvblXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stSa1-00000005Vbl-3k8O;
	Wed, 25 Sep 2024 14:01:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stSZu-00000005VWe-02jl
	for barebox@lists.infradead.org;
	Wed, 25 Sep 2024 14:01:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stSZs-0002JO-Na; Wed, 25 Sep 2024 16:01:12 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stSZs-001SlJ-7g; Wed, 25 Sep 2024 16:01:12 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stSZs-00DCyS-20;
	Wed, 25 Sep 2024 16:01:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 25 Sep 2024 16:01:15 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240925-of-graph-fixes-v1-5-c0a3ac989b0c@pengutronix.de>
References: <20240925-of-graph-fixes-v1-0-c0a3ac989b0c@pengutronix.de>
In-Reply-To: <20240925-of-graph-fixes-v1-0-c0a3ac989b0c@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1727272872; l=3864;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=3MwzWq3wOGpqvuBqztk/iyaEvtWs82fRjhVb+QBlMjE=;
 b=Lg0SgCs/khiQ0EGK8gK9FUomeN7hdx1/1I/g+Jll6DdZqwnlh+v37fIgGO9ZDon/c5LMO7NwJ
 lpejB0OOMWqC6FDkRjvN+cALxbbk7HJA7a2gSqCozbFx1cu/C209Wrs
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240925_070114_228572_CE3FB3C7 
X-CRM114-Status: GOOD (  14.52  )
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
Subject: [PATCH 5/5] of: of_graph: add missing functions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds of_graph_get_endpoint_by_regs() and of_graph_get_remote_node()
as-is from Linux.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/base.c  | 64 ++++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/of_graph.h |  4 ++++
 2 files changed, 68 insertions(+)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 5981650f2a..960a9327ae 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -3358,6 +3358,32 @@ struct device_node *of_graph_get_next_endpoint(const struct device_node *parent,
 }
 EXPORT_SYMBOL(of_graph_get_next_endpoint);
 
+/**
+ * of_graph_get_endpoint_by_regs() - get endpoint node of specific identifiers
+ * @parent: pointer to the parent device node
+ * @port_reg: identifier (value of reg property) of the parent port node
+ * @reg: identifier (value of reg property) of the endpoint node
+ *
+ * Return: An 'endpoint' node pointer which is identified by reg and at the same
+ * is the child of a port node identified by port_reg. reg and port_reg are
+ * ignored when they are -1. Use of_node_put() on the pointer when done.
+ */
+struct device_node *of_graph_get_endpoint_by_regs(
+	const struct device_node *parent, int port_reg, int reg)
+{
+	struct of_endpoint endpoint;
+	struct device_node *node = NULL;
+
+	for_each_endpoint_of_node(parent, node) {
+		of_graph_parse_endpoint(node, &endpoint);
+		if (((port_reg == -1) || (endpoint.port == port_reg)) &&
+			((reg == -1) || (endpoint.id == reg)))
+			return node;
+	}
+	return NULL;
+}
+EXPORT_SYMBOL(of_graph_get_endpoint_by_regs);
+
 /**
  * of_graph_get_remote_port_parent() - get remote port's parent node
  * @node: pointer to a local endpoint device_node
@@ -3403,6 +3429,44 @@ struct device_node *of_graph_get_remote_port(const struct device_node *node)
 }
 EXPORT_SYMBOL(of_graph_get_remote_port);
 
+/**
+ * of_graph_get_remote_node() - get remote parent device_node for given port/endpoint
+ * @node: pointer to parent device_node containing graph port/endpoint
+ * @port: identifier (value of reg property) of the parent port node
+ * @endpoint: identifier (value of reg property) of the endpoint node
+ *
+ * Return: Remote device node associated with remote endpoint node linked
+ * to @node. Use of_node_put() on it when done.
+ */
+struct device_node *of_graph_get_remote_node(const struct device_node *node,
+					     u32 port, u32 endpoint)
+{
+	struct device_node *endpoint_node, *remote;
+
+	endpoint_node = of_graph_get_endpoint_by_regs(node, port, endpoint);
+	if (!endpoint_node) {
+		pr_debug("no valid endpoint (%d, %d) for node %pOF\n",
+			 port, endpoint, node);
+		return NULL;
+	}
+
+	remote = of_graph_get_remote_port_parent(endpoint_node);
+	of_node_put(endpoint_node);
+	if (!remote) {
+		pr_debug("no valid remote node\n");
+		return NULL;
+	}
+
+	if (!of_device_is_available(remote)) {
+		pr_debug("not available for remote node\n");
+		of_node_put(remote);
+		return NULL;
+	}
+
+	return remote;
+}
+EXPORT_SYMBOL(of_graph_get_remote_node);
+
 int of_graph_port_is_available(struct device_node *node)
 {
 	struct device_node *endpoint;
diff --git a/include/of_graph.h b/include/of_graph.h
index ef3fb8b94a..bd25643e25 100644
--- a/include/of_graph.h
+++ b/include/of_graph.h
@@ -43,5 +43,9 @@ struct device_node *of_graph_get_remote_port_parent(
 					const struct device_node *node);
 struct device_node *of_graph_get_remote_port(const struct device_node *node);
 int of_graph_port_is_available(struct device_node *node);
+struct device_node *of_graph_get_remote_node(const struct device_node *node,
+					     u32 port, u32 endpoint);
+struct device_node *of_graph_get_endpoint_by_regs(
+	const struct device_node *parent, int port_reg, int reg);
 
 #endif /* __LINUX_OF_GRAPH_H */

-- 
2.39.5



