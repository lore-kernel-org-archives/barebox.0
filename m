Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZD6Cb-0000gu-K8
 for barebox@lists.infradead.org; Thu, 09 Jul 2015 07:25:02 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  9 Jul 2015 09:24:06 +0200
Message-Id: <1436426657-5266-3-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/13] of: import of_graph functions
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/base.c  | 167 +++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/of_graph.h |  49 ++++++++++++++++
 2 files changed, 216 insertions(+)
 create mode 100644 include/of_graph.h

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 0eb1d6b..b2c4b23 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -25,6 +25,7 @@
 #include <init.h>
 #include <memory.h>
 #include <linux/sizes.h>
+#include <of_graph.h>
 #include <linux/ctype.h>
 #include <linux/amba/bus.h>
 #include <linux/err.h>
@@ -2043,3 +2044,169 @@ int of_device_disable_path(const char *path)
 
 	return of_device_disable(node);
 }
+
+/**
+ * of_graph_parse_endpoint() - parse common endpoint node properties
+ * @node: pointer to endpoint device_node
+ * @endpoint: pointer to the OF endpoint data structure
+ *
+ * The caller should hold a reference to @node.
+ */
+int of_graph_parse_endpoint(const struct device_node *node,
+			    struct of_endpoint *endpoint)
+{
+	struct device_node *port_node = of_get_parent(node);
+
+	if (!port_node)
+		pr_warn("%s(): endpoint %s has no parent node\n",
+			__func__, node->full_name);
+
+	memset(endpoint, 0, sizeof(*endpoint));
+
+	endpoint->local_node = node;
+	/*
+	 * It doesn't matter whether the two calls below succeed.
+	 * If they don't then the default value 0 is used.
+	 */
+	of_property_read_u32(port_node, "reg", &endpoint->port);
+	of_property_read_u32(node, "reg", &endpoint->id);
+
+	return 0;
+}
+EXPORT_SYMBOL(of_graph_parse_endpoint);
+
+/**
+ * of_graph_get_port_by_id() - get the port matching a given id
+ * @parent: pointer to the parent device node
+ * @id: id of the port
+ *
+ * Return: A 'port' node pointer with refcount incremented.
+ */
+struct device_node *of_graph_get_port_by_id(struct device_node *node, u32 id)
+{
+	struct device_node *port;
+
+	for_each_child_of_node(node, port) {
+		u32 port_id = 0;
+
+		if (strncmp(port->name, "port", 4) != 0)
+			continue;
+		of_property_read_u32(port, "reg", &port_id);
+		if (id == port_id)
+			return port;
+	}
+
+	return NULL;
+}
+EXPORT_SYMBOL(of_graph_get_port_by_id);
+
+/**
+ * of_graph_get_next_endpoint() - get next endpoint node
+ * @parent: pointer to the parent device node
+ * @prev: previous endpoint node, or NULL to get first
+ *
+ * Return: An 'endpoint' node pointer with refcount incremented. Refcount
+ * of the passed @prev node is decremented.
+ */
+struct device_node *of_graph_get_next_endpoint(const struct device_node *parent,
+					struct device_node *prev)
+{
+	struct device_node *endpoint;
+	struct device_node *port;
+
+	if (!parent)
+		return NULL;
+
+	/*
+	 * Start by locating the port node. If no previous endpoint is specified
+	 * search for the first port node, otherwise get the previous endpoint
+	 * parent port node.
+	 */
+	if (!prev) {
+		struct device_node *node;
+
+		node = of_get_child_by_name(parent, "ports");
+		if (node)
+			parent = node;
+
+		port = of_get_child_by_name(parent, "port");
+		if (!port) {
+			pr_err("%s(): no port node found in %s\n",
+			       __func__, parent->full_name);
+			return NULL;
+		}
+	} else {
+		port = of_get_parent(prev);
+		if (!port) {
+			pr_warn("%s(): endpoint %s has no parent node\n",
+			      __func__, prev->full_name);
+			return NULL;
+		}
+	}
+
+	while (1) {
+		/*
+		 * Now that we have a port node, get the next endpoint by
+		 * getting the next child. If the previous endpoint is NULL this
+		 * will return the first child.
+		 */
+		endpoint = of_get_next_child(port, prev);
+		if (endpoint)
+			return endpoint;
+
+		/* No more endpoints under this port, try the next one. */
+		prev = NULL;
+
+		do {
+			port = of_get_next_child(parent, port);
+			if (!port)
+				return NULL;
+		} while (of_node_cmp(port->name, "port"));
+	}
+}
+EXPORT_SYMBOL(of_graph_get_next_endpoint);
+
+/**
+ * of_graph_get_remote_port_parent() - get remote port's parent node
+ * @node: pointer to a local endpoint device_node
+ *
+ * Return: Remote device node associated with remote endpoint node linked
+ *	   to @node.
+ */
+struct device_node *of_graph_get_remote_port_parent(
+			       const struct device_node *node)
+{
+	struct device_node *np;
+	unsigned int depth;
+
+	/* Get remote endpoint node. */
+	np = of_parse_phandle(node, "remote-endpoint", 0);
+
+	/* Walk 3 levels up only if there is 'ports' node. */
+	for (depth = 3; depth && np; depth--) {
+		np = np->parent;
+		if (depth == 2 && of_node_cmp(np->name, "ports"))
+			break;
+	}
+	return np;
+}
+EXPORT_SYMBOL(of_graph_get_remote_port_parent);
+
+/**
+ * of_graph_get_remote_port() - get remote port node
+ * @node: pointer to a local endpoint device_node
+ *
+ * Return: Remote port node associated with remote endpoint node linked
+ *	   to @node.
+ */
+struct device_node *of_graph_get_remote_port(const struct device_node *node)
+{
+	struct device_node *np;
+
+	/* Get remote endpoint node. */
+	np = of_parse_phandle(node, "remote-endpoint", 0);
+	if (!np)
+		return NULL;
+	return np->parent;
+}
+EXPORT_SYMBOL(of_graph_get_remote_port);
diff --git a/include/of_graph.h b/include/of_graph.h
new file mode 100644
index 0000000..fa037db
--- /dev/null
+++ b/include/of_graph.h
@@ -0,0 +1,49 @@
+/*
+ * OF graph binding parsing helpers
+ *
+ * Copyright (C) 2012 - 2013 Samsung Electronics Co., Ltd.
+ * Author: Sylwester Nawrocki <s.nawrocki@samsung.com>
+ *
+ * Copyright (C) 2012 Renesas Electronics Corp.
+ * Author: Guennadi Liakhovetski <g.liakhovetski@gmx.de>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of version 2 of the GNU General Public License as
+ * published by the Free Software Foundation.
+ */
+#ifndef __LINUX_OF_GRAPH_H
+#define __LINUX_OF_GRAPH_H
+
+/**
+ * struct of_endpoint - the OF graph endpoint data structure
+ * @port: identifier (value of reg property) of a port this endpoint belongs to
+ * @id: identifier (value of reg property) of this endpoint
+ * @local_node: pointer to device_node of this endpoint
+ */
+struct of_endpoint {
+	unsigned int port;
+	unsigned int id;
+	const struct device_node *local_node;
+};
+
+/**
+ * for_each_endpoint_of_node - iterate over every endpoint in a device node
+ * @parent: parent device node containing ports and endpoints
+ * @child: loop variable pointing to the current endpoint node
+ *
+ * When breaking out of the loop, of_node_put(child) has to be called manually.
+ */
+#define for_each_endpoint_of_node(parent, child) \
+	for (child = of_graph_get_next_endpoint(parent, NULL); child != NULL; \
+	     child = of_graph_get_next_endpoint(parent, child))
+
+int of_graph_parse_endpoint(const struct device_node *node,
+				struct of_endpoint *endpoint);
+struct device_node *of_graph_get_port_by_id(struct device_node *node, u32 id);
+struct device_node *of_graph_get_next_endpoint(const struct device_node *parent,
+					struct device_node *previous);
+struct device_node *of_graph_get_remote_port_parent(
+					const struct device_node *node);
+struct device_node *of_graph_get_remote_port(const struct device_node *node);
+
+#endif /* __LINUX_OF_GRAPH_H */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
