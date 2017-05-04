Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d6EX2-000805-A8
 for barebox@lists.infradead.org; Thu, 04 May 2017 11:02:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  4 May 2017 13:02:18 +0200
Message-Id: <20170504110219.17929-4-s.hauer@pengutronix.de>
In-Reply-To: <20170504110219.17929-1-s.hauer@pengutronix.de>
References: <20170504110219.17929-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] state: Make an alias mandatory
To: Barebox List <barebox@lists.infradead.org>

The userspace barebox-state utility gets confused when no alias exists.
Make the alias mandatory, so that people make it right^tm without having
to ask.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/devicetree/bindings/barebox/barebox,state.rst | 6 ++++++
 common/state/state.c                                        | 6 ++++--
 2 files changed, 10 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/barebox/barebox,state.rst b/Documentation/devicetree/bindings/barebox/barebox,state.rst
index 51b874a8be..06a0d100c8 100644
--- a/Documentation/devicetree/bindings/barebox/barebox,state.rst
+++ b/Documentation/devicetree/bindings/barebox/barebox,state.rst
@@ -32,6 +32,8 @@ Required properties:
 * ``backend``: contains a phandle to the device/partition which holds the
   actual state data.
 * ``backend-type``: should be ``raw`` or ``dtb``.
+* additionally a state node must have an alias in the /aliases/ node pointing
+  to it.
 
 Optional properties:
 
@@ -74,6 +76,10 @@ Optional properties:
 
 Example::
 
+  /aliases {
+  	state = &state;
+  };
+
   state: state {
   	magic = <0x27031977>;
   	compatible = "barebox,state";
diff --git a/common/state/state.c b/common/state/state.c
index c3c8b768c7..41bee0fdc5 100644
--- a/common/state/state.c
+++ b/common/state/state.c
@@ -567,8 +567,10 @@ struct state *state_new_from_node(struct device_node *node, char *path,
 	uint32_t stridesize;
 
 	alias = of_alias_get(node);
-	if (!alias)
-		alias = node->name;
+	if (!alias) {
+		pr_err("State node %s does not have an alias in the /aliases/ node\n", node->full_name);
+		return ERR_PTR(-EINVAL);
+	}
 
 	state = state_new(alias);
 	if (IS_ERR(state))
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
