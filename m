Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YsTes-0000Dl-Gk
 for barebox@lists.infradead.org; Wed, 13 May 2015 10:13:01 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Wed, 13 May 2015 12:12:31 +0200
Message-Id: <1431511952-32124-6-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1431511952-32124-1-git-send-email-mkl@pengutronix.de>
References: <1431511952-32124-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 6/7] state: add fixup to copy state from barebox to kernel
 device tree
To: barebox@lists.infradead.org

This patch registers a DT fixup, that copies the state nodes from the active
to the kernel DT. The backend reference will be a phandles.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 common/state.c | 92 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 92 insertions(+)

diff --git a/common/state.c b/common/state.c
index d6060bb7dff4..ca691d2827fa 100644
--- a/common/state.c
+++ b/common/state.c
@@ -676,6 +676,93 @@ static int state_from_node(struct state *state, struct device_node *node,
 	return ret;
 }
 
+static int of_state_fixup(struct device_node *root, void *ctx)
+{
+	struct state *state = ctx;
+	const char *compatible = "barebox,state";
+	struct device_node *new_node, *node, *parent, *backend_node;
+	struct property *p;
+	int ret;
+	phandle phandle;
+
+	node = of_find_node_by_path_from(root, state->root->full_name);
+	if (node) {
+		/* replace existing node - it will be deleted later */
+		parent = node->parent;
+	} else {
+		char *of_path, *c;
+
+		/* look for parent, remove last '/' from path */
+		of_path = xstrdup(state->root->full_name);
+		c = strrchr(of_path, '/');
+		if (!c)
+			return -ENODEV;
+		*c = '0';
+		parent = of_find_node_by_path(of_path);
+		if (!parent)
+			parent = root;
+
+		free(of_path);
+	}
+
+	/* serialize variable definitions */
+	new_node = state_to_node(state, parent, STATE_CONVERT_FIXUP);
+	if (IS_ERR(new_node))
+		return PTR_ERR(new_node);
+
+	/* compatible */
+	p = of_new_property(new_node, "compatible", compatible,
+			    strlen(compatible) + 1);
+	if (!p) {
+		ret = -ENOMEM;
+		goto out;
+	}
+
+	/* backend-type */
+	if (!state->backend) {
+		ret = -ENODEV;
+		goto out;
+	}
+
+	p = of_new_property(new_node, "backend-type", state->backend->name,
+			    strlen(state->backend->name) + 1);
+	if (!p) {
+		ret = -ENOMEM;
+		goto out;
+	}
+
+	/* backend phandle */
+	backend_node = of_find_node_by_path_from(root, state->backend->of_path);
+	if (!backend_node) {
+		ret = -ENODEV;
+		goto out;
+	}
+
+	phandle = of_node_create_phandle(backend_node);
+	ret = of_property_write_u32(new_node, "backend", phandle);
+	if (ret)
+		goto out;
+
+	/* address-cells + size-cells */
+	ret = of_property_write_u32(root, "#address-cells", 1);
+	if (ret)
+		goto out;
+
+	ret = of_property_write_u32(root, "#size-cells", 1);
+	if (ret)
+		goto out;
+
+	/* delete existing node */
+	if (node)
+		of_delete_node(node);
+
+	return 0;
+
+ out:
+	of_delete_node(new_node);
+	return ret;
+}
+
 /*
  * state_new_from_node - create a new state instance from a device_node
  *
@@ -697,6 +784,11 @@ struct state *state_new_from_node(const char *name, struct device_node *node)
 		return ERR_PTR(ret);
 	}
 
+	ret = of_register_fixup(of_state_fixup, state);
+	if (ret) {
+		state_release(state);
+		return ERR_PTR(ret);
+	}
 
 	return state;
 }
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
