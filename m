Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZD6CM-0000dn-Jz
 for barebox@lists.infradead.org; Thu, 09 Jul 2015 07:24:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  9 Jul 2015 09:24:07 +0200
Message-Id: <1436426657-5266-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1436426657-5266-1-git-send-email-s.hauer@pengutronix.de>
References: <1436426657-5266-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 03/13] of_graph: add of_graph_port_is_available
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/base.c  | 22 ++++++++++++++++++++++
 include/of_graph.h |  1 +
 2 files changed, 23 insertions(+)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index b2c4b23..334b8a2 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2210,3 +2210,25 @@ struct device_node *of_graph_get_remote_port(const struct device_node *node)
 	return np->parent;
 }
 EXPORT_SYMBOL(of_graph_get_remote_port);
+
+int of_graph_port_is_available(struct device_node *node)
+{
+	struct device_node *endpoint;
+	int available = 0;
+
+	for_each_child_of_node(node, endpoint) {
+		struct device_node *remote_parent;
+
+		remote_parent = of_graph_get_remote_port_parent(endpoint);
+		if (!remote_parent)
+			continue;
+
+		if (!of_device_is_available(remote_parent))
+			continue;
+
+		available = 1;
+	}
+
+	return available;
+}
+EXPORT_SYMBOL(of_graph_port_is_available);
diff --git a/include/of_graph.h b/include/of_graph.h
index fa037db..254dd2c 100644
--- a/include/of_graph.h
+++ b/include/of_graph.h
@@ -45,5 +45,6 @@ struct device_node *of_graph_get_next_endpoint(const struct device_node *parent,
 struct device_node *of_graph_get_remote_port_parent(
 					const struct device_node *node);
 struct device_node *of_graph_get_remote_port(const struct device_node *node);
+int of_graph_port_is_available(struct device_node *node);
 
 #endif /* __LINUX_OF_GRAPH_H */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
